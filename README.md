# Quizapp
**User Authentication**
  - User registration and login
  - Passwords securely stored with hashing and salting

- **Quiz Taking (Users)**
  - Browse and select from a list of available quizzes
  - Answer questions one at a time
  - Immediate feedback after each question
  - Final score display after quiz submission

- **Progress Tracking**
  - View past quiz attempts and scores
  - Track performance history over time

- **Leaderboard** *(optional)*
  - Rank users based on total or average scores
 
  **Data Persistence**
  - All data stored in a relational database (e.g., MySQL)
  - JDBC used for database interaction (CRUD operations)

- **Error Handling & Validation**
  - Form validations and graceful error messaging
 
  COMPILE: javac -cp "lib\mysql-connector-j-9.3.0.jar" -d bin src\Main.java src\dao\*.java src\model\*.java src\ui\*.java src\utils\*.java
  RUN: java -cp "lib\mysql-connector-j-9.3.0.jar;bin" Main
