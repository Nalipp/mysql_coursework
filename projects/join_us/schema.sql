DROP DATABASE join_us;
CREATE DATABASE join_us;
USE join_us;

CREATE TABLE users (
  email VARCHAR(250) PRIMARY KEY,
  created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO users(email) VALUES 
('nate@gmail.com'), ('amy@gmail.com');

SELECT * FROM users;
