CREATE TABLE `people`(
	`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(200) NOT NULL,
    `picture` BLOB,
    `height` DOUBLE(3, 2),
    `weight` DOUBLE(5, 2),
    `gender` CHAR(1) NOT NULL, 
    `birthdate` DATE NOT NULL,
    `biography` TEXT
);

INSERT INTO `people` (`id`, `name`, `picture`, `height`, `weight`, `gender`, `birthdate`, `biography`)
VALUES (1, 'Ivan', NULL, 1.80, 95.50, 'm', '1999-01-17', NULL),
		(2, 'Petar', NULL, 1.85, 103.64, 'm', '1978-10-12', 'My name is Petar...'),
		(3, 'Simeon', NULL, 1.70, 75.90, 'm', '2000-07-15', 'My name is Simeon...'),
		(4, 'Viktor', NULL, 1.81, 98.25, 'm', '1989-02-27', NULL),
		(5, 'Kalina', NULL, 1.60, 65.10, 'f', '1991-11-07', 'My name is Kalina...');
        