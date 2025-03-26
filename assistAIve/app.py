from flask import Flask, render_template, request, jsonify, session, redirect, url_for, flash
import mysql.connector
import spacy

app = Flask(__name__)
app.secret_key = 'your_secret_key_here'
nlp = spacy.load("en_core_web_sm")

def get_db_connection():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="ROY@2405",
        database="assistaive"
    )

def fetch_top_tools(user_input, top_n=3):
    doc = nlp(user_input.lower())
    keywords = [token.text for token in doc if token.is_alpha]
    query = "SELECT * FROM ai_tools"
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute(query)
    tools = cursor.fetchall()
    conn.close()

    scored = []
    for tool in tools:
        score = sum(kw in tool["keywords"].lower() for kw in keywords)
        if score > 0:
            scored.append((score, tool))

    # Sort by score and return top N
    scored.sort(reverse=True, key=lambda x: x[0])
    top_tools = [tool for score, tool in scored[:top_n]]
    return top_tools

@app.route("/")
def root():
    # Always start from registration
    return redirect(url_for('register'))

@app.route("/ask", methods=["POST"])
def ask():
    user_input = request.json["prompt"]
    greetings = ["hi", "hello", "hey", "yo", "hola"]
    if user_input.strip().lower() in greetings:
        return jsonify([{
            "name": "assistAIve",
            "description": "Hey there! 👋 I'm assistAIve. How can I help you explore the world of AI today?",
            "url": ""
        }])
    results = fetch_top_tools(user_input, top_n=3)
    return jsonify(results)

@app.route('/chat')
def chat():
    username = session.get('username', 'Guest')
    first_time = session.pop('first_time', False)
    return render_template('index.html', username=username, first_time=first_time)

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        conn = get_db_connection()
        cursor = conn.cursor()
        cursor.execute("SELECT * FROM users WHERE username = %s AND password = %s", (username, password))
        user = cursor.fetchone()
        conn.close()
        if user:
            session['username'] = username
            return redirect(url_for('chat'))
        else:
            flash('Invalid credentials!')
            return redirect(url_for('login'))
    return render_template('login.html')

@app.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        username = request.form['username']
        email = request.form['email']
        password = request.form['password']

        conn = get_db_connection()
        cursor = conn.cursor()
        cursor.execute("SELECT * FROM users WHERE username = %s", (username,))
        existing_user = cursor.fetchone()
        if existing_user:
            conn.close()
            flash('Username already exists! Please choose another one.')
            return redirect(url_for('register'))

        cursor.execute("INSERT INTO users (username, email, password) VALUES (%s, %s, %s)", (username, email, password))
        conn.commit()
        conn.close()
        session['username'] = username
        flash('Registered successfully!')
        return redirect(url_for('chat'))
    return render_template('register.html')

@app.route('/logout')
def logout():
    session.pop('username', None)
    flash('Logged out successfully!')
    return redirect(url_for('login'))

if __name__ == "__main__":
    app.run(debug=True)
