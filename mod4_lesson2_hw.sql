CREATE DATABASE music_lib;

use music_lib;

-- Task 1: SQL Table Creation

-- Problem Statement: You need to create tables named Albums, Genre, and Artists that will store information about music. 
-- The Albums table should include columns for album ID, title, artist ID, genre ID, release year, and total tracks. 
-- You have to decide what data should be included in the Genre and Artist tables.

CREATE TABLE genre (
id INT AUTO_INCREMENT PRIMARY KEY, 
genre_name VARCHAR(75) NOT NULL
);


CREATE TABLE artist (
id INT AUTO_INCREMENT PRIMARY KEY, 
artist_name VARCHAR(75) NOT NULL,
phone INT NOT NULL,
email VARCHAR(150) NULL,
address VARCHAR(150),
genre_id INT,
FOREIGN KEY (genre_id) REFERENCES genre(id)
); -- relationship between artist and genre.


CREATE TABLE album (
id INT AUTO_INCREMENT PRIMARY KEY, 
title VARCHAR(75) NOT NULL,
total_tracks INT NOT NULL,
artist_id INT,
genre_id INT,
FOREIGN KEY (artist_id) REFERENCES artist(id)
); -- relationship between Albums and artist

-- Task 2: SQL Alteration

-- Problem Statement: After creating the Albums table, you realize that you need to add a column for the album's total duration in minutes.

ALTER TABLE album ADD durations INT;






