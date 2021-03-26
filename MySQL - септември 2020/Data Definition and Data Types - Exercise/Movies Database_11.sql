 CREATE DATABASE `Movies`;
 
 USE `Movies`;

CREATE TABLE `directors`(
	`id` INT PRIMARY KEY NOT NULL,
    `director_name` VARCHAR(30) NOT NULL, 
    `notes` VARCHAR(60) NOT NULL
);

CREATE TABLE `genres`(
	`id` INT PRIMARY KEY NOT NULL,
	`genre_name` VARCHAR(30) NOT NULL, 
    `notes` VARCHAR(60) NOT NULL
);

CREATE TABLE `categories`(
	`id` INT PRIMARY KEY NOT NULL,
	`category_name` VARCHAR(45) NOT NULL,
    `notes` VARCHAR(60) NOT NULL
);

CREATE TABLE `movies`(
	`id` INT PRIMARY KEY NOT NULL,
    `title` VARCHAR(45) NOT NULL,
    `director_id` INT NOT NULL,
    `copyright_year` YEAR NOT NULL,
    `length` TIME NOT NULL,
    `genre_id` INT NOT NULL,
    `category_id` INT NOT NULL,
    `rating` DECIMAL(19, 2) NOT NULL,
    `notes` VARCHAR(60) NOT NULL
);

INSERT INTO `directors`
VALUES (1, 'Filip', 'Some notes...'),
		(2, 'Ivan', 'Some notes...'),
		(3, 'Petar', 'Some notes...'),
		(4, 'Mitko', 'Some notes...'),
		(5, 'Jiko', 'Some notes...');
        
INSERT INTO `genres`
VALUES (1, 'Horror', 'Some notes...'),
		(2, 'Si-Fi', 'Some notes...'),
		(3, 'Comedy', 'Some notes...'),
		(4, 'Historical', 'Some notes...'),
		(5, 'Adventure', 'Some notes...');
        
INSERT INTO `categories`
VALUES (1, 'Educational film', 'Some notes...'),
		(2, 'Dance film', 'Some notes...'),
		(3, 'Short films', 'Some notes...'),
		(4, 'Anamated film', 'Some notes...'),
		(5, 'Film based on actual events', 'Some notes...');
        
INSERT INTO `movies`
VALUES (1, 'Borat', 1, 2020, '01:59:35', 3, 1, 8.9, 'Some notes...'),
		(2, 'Yes day', 2, 2010, '01:59:35', 4, 2, 6.9, 'Some notes...'),
		(3, '365 days', 4, 2021, '01:59:35', 2, 3, 7.1, 'Some notes...'),
		(4, 'Holidate', 2, 1999, '01:59:35', 1, 4, 6.6, 'Some notes...'),
		(5, 'Mank', 3, 1920, '01:59:35', 5, 2, 4.9, 'Some notes...');