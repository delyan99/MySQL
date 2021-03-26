CREATE TABLE `users`(
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `username` VARCHAR(30) NOT NULL UNIQUE,
    `password` VARCHAR(26) NOT NULL,
    `profile_picture` BLOB,
    `last_login_time` TIMESTAMP,
    `is_deleted` BOOL
); 

INSERT INTO `users`
VALUES (1, 'Delyan99', '123456', NULL, '2020-01-01', true), 
		(2, 'Ivan1', 'f34fws', NULL, DEFAULT, false),
		(3, 'GOSHO', '1234ew43qg56', NULL, '2012-11-21', true),
		(4, 'Koko77', '1fw34236', NULL, NULL, false),
		(5, 'Spas_09', '1eqt4at5', NULL, '1999-12-03', true);