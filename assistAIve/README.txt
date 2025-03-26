assistAIve – Local Chatbot to Recommend AI Tools

Steps to run:

1. Install dependencies:
   pip install -r requirements.txt
   python -m spacy download en_core_web_sm

2. Setup MySQL Database:
   - Create a database named `assistAIve`
   - Run the following SQL:

     CREATE TABLE ai_tools (
         id INT AUTO_INCREMENT PRIMARY KEY,
         name VARCHAR(100),
         category VARCHAR(100),
         description TEXT,
         keywords TEXT,
         url VARCHAR(255)
     );

     INSERT INTO ai_tools (name, category, description, keywords, url) VALUES
     ('ChatGPT', 'Chatbot', 'Conversational AI that answers queries and writes content.', 'chatbot, text, conversation', 'https://chat.openai.com'),
     ('Remove.bg', 'Image Editing', 'Remove background from images instantly.', 'image, background removal, editing', 'https://www.remove.bg'),
     ('Copy.ai', 'Content Writing', 'AI tool for generating marketing copy and content.', 'marketing, writing, copy', 'https://www.copy.ai'),
     ('RunwayML', 'Video Editing', 'Create, edit, and remix video with AI tools.', 'video, editing, AI video', 'https://runwayml.com');

3. Run the app:
   python app.py

4. Open browser and go to:
   http://127.0.0.1:5000
