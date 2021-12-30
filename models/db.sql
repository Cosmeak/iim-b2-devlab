CREATE TABLE player(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  money INT NOT NULL,
  resources INT NOT NULL,
  workforce INT NOT NULL,
  score INT NOT NULL,
  play_date DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
);

CREATE TABLE game_object(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  `level` TINYINT,
  img_url VARCHAR(255) NOT NULL
);

CREATE TABLE object_to_player(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  player_id INT NOT NULL,
  FOREIGN KEY (player_id) REFERENCES player(id),
  game_object_id INT NOT NULL,
  FOREIGN KEY (game_object_id) REFERENCES game_object(id)
);

CREATE TABLE `position`(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  game_object_id INT NOT NULL,
  FOREIGN KEY (game_object_id) REFERENCES game_object(id)
);

CREATE TABLE administrateur(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE scoreboard(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  player_name VARCHAR(255) NOT NULL,
  player_score INT NOT NULL,
  player_play_date DATETIME
);

CREATE TABLE rule(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  description TEXT NOT NULL
);

CREATE TABLE question(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  description TINYTEXT NOT NULL
);

CREATE TABLE answer(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  description TINYTEXT NOT NULL,
  question_id INT NOT NULL,
  FOREIGN KEY (question_id) REFERENCES question(id)
);

CREATE TABLE anecdote(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  description TINYTEXT NOT NULL,
  question_id INT NOT NULL,
  FOREIGN KEY (question_id) REFERENCES question(id)
);