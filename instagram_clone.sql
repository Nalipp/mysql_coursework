DROP DATABASE instagram_clone;
CREATE DATABASE instagram_clone;
USE instagram_clone;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(100) UNIQUE NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE photos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  image_url VARCHAR(255) NOT NULL,
  user_id INT NOT NULL,
  created_at TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE comments (
  id INT AUTO_INCREMENT PRIMARY KEY,
  comment_text VARCHAR(255) NOT NULL,
  user_id INT NOT NULL,
  photo_id INT NOT NULL,
  created_at TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY(user_id) REFERENCES users(id),
  FOREIGN KEY(photo_id) REFERENCES photos(id)
);

CREATE TABLE likes (
  user_id INT NOT NULL,
  photo_id INT NOT NULL,
  created_at TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY(user_id) REFERENCES users(id),
  FOREIGN KEY(photo_id) REFERENCES photos(id),
  PRIMARY KEY(photo_id, user_id)
);

CREATE TABLE follows (
  follower_id INT NOT NULL,
  followee_id INT NOT NULL,
  created_at TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY(follower_id) REFERENCES users(id),
  FOREIGN KEY(followee_id) REFERENCES users(id),
  PRIMARY KEY(follower_id, followee_id)
);

CREATE TABLE hashtags (
  id INT AUTO_INCREMENT PRIMARY KEY,
  tag_name VARCHAR(50),
  user_id INT NOT NULL,
  photo_id INT NOT NULL,
  FOREIGN KEY(user_id)
    REFERENCES users(id),
  FOREIGN KEY(photo_id)
    REFERENCES photos(id)
);

INSERT INTO users(username) VALUES
('Billy02'),
('SarahWheel'),
('TraceCarv');

INSERT INTO photos(image_url, user_id) VALUES
('http://www.sohasdf9.com', 1),
('http://www.isoh2323sasdf9.com', 2),
('http://www.gohasdffasdhf9.com', 2),
('http://www.ohas9.com', 3);

INSERT INTO comments(comment_text, user_id, photo_id) VALUES
('What a great photo!', 1, 2),
('I really like this', 2, 1),
('I love the sunsets!', 3, 2),
('I can"t get enough of this photo!', 2, 4),
('That is the cutest baby ever!', 2, 3);

INSERT INTO likes(user_id, photo_id) VALUES
(1,2),
(2,3),
(2,1),
(3,1),
(3,4);

INSERT INTO follows(follower_id, followee_id) VALUES
(1,2),
(2,1),
(2,3),
(3,1);

