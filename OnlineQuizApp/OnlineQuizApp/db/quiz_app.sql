CREATE DATABASE quiz_app;

USE quiz_app;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL
);

CREATE TABLE quizzes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL
);

CREATE TABLE questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    quiz_id INT,
    question_text TEXT NOT NULL,
    option_a VARCHAR(100),
    option_b VARCHAR(100),
    option_c VARCHAR(100),
    option_d VARCHAR(100),
    correct_option CHAR(1),
    FOREIGN KEY (quiz_id) REFERENCES quizzes(id)
);

CREATE TABLE results (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    quiz_id INT,
    score INT,
    taken_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (quiz_id) REFERENCES quizzes(id)
);

-- Insert sample quizzes
INSERT INTO quizzes (title) VALUES 
('Java Basics'),
('General Knowledge'),
('Math Fundamentals');

-- Insert questions for Java Basics (quiz_id = 1)
INSERT INTO questions (quiz_id, question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
(1, 'What is the size of int in Java?', '8 bytes', '4 bytes', '2 bytes', 'Depends on the system', 'B'),
(1, 'Which keyword is used to inherit a class in Java?', 'this', 'import', 'extends', 'super', 'C'),
(1, 'What is JVM?', 'Java Variable Method', 'Java Virtual Machine', 'Java Visual Model', 'Joint Virtual Manager', 'B');

-- Insert questions for General Knowledge (quiz_id = 2)
INSERT INTO questions (quiz_id, question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
(2, 'Who is the author of the Harry Potter series?', 'J.R.R. Tolkien', 'J.K. Rowling', 'Stephen King', 'Roald Dahl', 'B'),
(2, 'What is the capital of France?', 'Rome', 'Berlin', 'Paris', 'Madrid', 'C'),
(2, 'Which planet is known as the Red Planet?', 'Earth', 'Venus', 'Mars', 'Jupiter', 'C');

-- Insert questions for Math Fundamentals (quiz_id = 3)
INSERT INTO questions (quiz_id, question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
(3, 'What is 15 + 27?', '32', '42', '52', '40', 'C'),
(3, 'What is the square root of 144?', '12', '14', '11', '10', 'A'),
(3, 'Solve: 9 * 8', '72', '81', '63', '69', 'A');
