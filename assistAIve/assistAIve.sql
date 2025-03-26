-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: assistaive
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ai_tools`
--

DROP TABLE IF EXISTS `ai_tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_tools` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` text,
  `keywords` text,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_tools`
--

LOCK TABLES `ai_tools` WRITE;
/*!40000 ALTER TABLE `ai_tools` DISABLE KEYS */;
INSERT INTO `ai_tools` VALUES (1,'ChatGPT','Chatbot','Conversational AI that answers queries and writes content.','chatbot, text, conversation, writing, question answering','https://chat.openai.com'),(2,'Remove.bg','Image Editing','Remove background from images instantly.','image, background removal, editing, cutout','https://www.remove.bg'),(3,'Copy.ai','Content Writing','AI tool for generating marketing copy and content.','marketing, writing, content generation, copywriting','https://www.copy.ai'),(4,'RunwayML','Video Editing','Create, edit, and remix video with AI tools.','video, editing, AI video, generative video','https://runwayml.com'),(5,'D-ID','Avatar Video','Generate talking avatars from text or audio.','avatar, talking head, lip sync, text to video','https://www.d-id.com'),(6,'Leonardo.ai','Image Generation','Generate stunning AI images using prompts.','image generation, prompts, creative, art','https://leonardo.ai'),(7,'Krisp.ai','Audio Enhancement','Removes background noise in calls and recordings.','audio, noise cancellation, meetings','https://krisp.ai'),(8,'Tome.app','Presentation','Create AI-powered slide decks from prompts.','presentation, slides, storytelling, ppt','https://tome.app'),(9,'Beautiful.ai','Presentation Design','Smart AI presentation builder.','presentation, slides, templates','https://www.beautiful.ai'),(10,'Durable.co','Website Builder','Generate a business website in 30 seconds using AI.','website, builder, startup, business','https://durable.co'),(11,'Pictory.ai','Video Editing','Turn scripts or articles into engaging videos.','video editing, script to video, summarizer','https://pictory.ai'),(12,'Descript','Audio/Video Editing','All-in-one editor for video, podcasting, and more.','editing, podcast, video, audio, screen recording','https://www.descript.com'),(13,'Cleanup.pictures','Photo Editing','Remove unwanted objects from photos.','photo, object removal, image editing','https://cleanup.pictures'),(14,'Scribbr','Citation Generator','Helps generate citations and references for academic writing.','citation, APA, MLA, Chicago, references','https://www.scribbr.com'),(15,'TTSMaker','Text to Speech','Free realistic text-to-speech voice generator.','text to speech, voice, tts, audio','https://ttsmaker.com'),(16,'ChatGPT','Text Generation','AI-powered chatbot for writing, brainstorming, and problem-solving.','chatbot, text generation, writing','https://chat.openai.com/'),(17,'Claude','Text Generation','AI assistant by Anthropic, great for conversational AI and writing tasks.','chatbot, writing, Claude, assistant','https://claude.ai/'),(18,'Jasper AI','Text Generation','AI writing assistant designed for marketing, SEO, and content generation.','writing, marketing, jasper','https://www.jasper.ai/'),(19,'Copy.ai','Text Generation','AI-powered tool for creating marketing copy, blog content, and more.','copywriting, text, blog','https://www.copy.ai/'),(20,'Cohere Generate','Text Generation','NLP-based AI model for generating high-quality text and business applications.','cohere, NLP, text generation','https://cohere.com/'),(21,'GitHub Copilot','Code Generation','AI-powered coding assistant supporting multiple languages.','code, github, copilot, programming','https://github.com/features/copilot'),(22,'Claude','Code Generation','AI model effective for code reviews and debugging.','code review, Claude, debugging','https://claude.ai/'),(23,'AskCodi','Code Generation','AI-powered coding assistant for real-time code suggestions.','coding, assistant, real-time','https://www.askcodi.com/'),(24,'Tabnine','Code Generation','AI code completion tool supporting multiple IDEs.','tabnine, IDE, code completion','https://www.tabnine.com/'),(25,'Cody AI','Code Generation','AI-powered assistant for debugging and autocompletion.','debugging, autocompletion, Cody','https://meetcody.ai/'),(26,'DataRobot','Data Analysis','AI platform for automated machine learning and predictive analytics.','AutoML, data analysis, predictions','https://www.datarobot.com/'),(27,'MonkeyLearn','Data Analysis','AI-driven tool for text analysis and sentiment detection.','text analysis, sentiment, monkeylearn','https://monkeylearn.com/'),(28,'BigML','Data Analysis','Machine learning platform for predictive modeling.','predictive modeling, BigML, ML','https://bigml.com/'),(29,'DeepSeek','Data Analysis','AI-powered research assistant for analyzing documents.','research, document analysis, DeepSeek','https://www.deepseek.com/'),(30,'Zotero','Data Analysis','AI-enhanced reference management tool.','references, citation, Zotero','https://www.zotero.org/'),(31,'MidJourney','Image Generation','AI tool for creating artistic visuals from text.','artistic visuals, MidJourney, images','https://www.midjourney.com/'),(32,'DALLÂ·E 2','Image Generation','AI model for generating high-quality images from text.','image generation, DALL-E, OpenAI','https://openai.com/dall-e-2/'),(33,'Runway ML','Image Generation','AI-powered tool for image and video editing.','image editing, RunwayML, visuals','https://runwayml.com/'),(34,'StyleGAN','Image Generation','GAN-based AI for generating realistic images.','GAN, realistic image, StyleGAN','https://stylegan.xyz/'),(35,'Artbreeder','Image Generation','AI tool for modifying and blending images.','Artbreeder, blend, modify','https://www.artbreeder.com/'),(36,'Otter.ai','Audio & Voice','AI transcription tool for converting speech to text.','speech to text, otter, audio','https://otter.ai/'),(37,'Descript','Audio & Voice','AI-powered audio and video transcription service.','transcription, descript, audio','https://www.descript.com/'),(38,'Murf AI','Audio & Voice','AI-based voice generator for lifelike text-to-speech synthesis.','voice generation, Murf, TTS','https://www.murf.ai/'),(39,'Sonix','Audio & Voice','AI transcription tool for audio and video files.','sonix, audio transcription','https://sonix.ai/'),(40,'Deepgram','Audio & Voice','AI-powered speech recognition for real-time voice processing.','speech recognition, Deepgram','https://www.deepgram.com/'),(41,'Synthesia','Video Editing','AI-powered video generation tool with virtual avatars.','video generation, avatars','https://www.synthesia.io/'),(42,'Pictory','Video Editing','AI video editing tool for turning text into video.','text to video, Pictory, editing','https://pictory.ai/'),(43,'Veed.io','Video Editing','Online AI-powered video editor.','Veed, video editing, online editor','https://www.veed.io/'),(44,'Deepbrain AI','Video Editing','AI-powered text-to-video creation tool.','Deepbrain, text to video, avatar','https://www.deepbrain.io/'),(45,'Rephrase.ai','Video Editing','AI video generation tool for personalized marketing.','Rephrase, personalized video, marketing','https://www.rephrase.ai/');
/*!40000 ALTER TABLE `ai_tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'test_user','psmit9258@gmail.com','pbkdf2:sha256:260000$yLP6xCYmg5fQl6UV$0ede6536781565b00ffce1a9650c99808bb68eff1235cc6d4913aad0c1f2b711');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'testuser','testpassword',NULL),(2,'test_user','Test@1234',NULL),(3,'d41143597','123',NULL),(5,'Smit ','123','psmit9258@gmail.com'),(6,'xyz','Abc@1234','psmit9258@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-25 13:15:28
