CREATE DATABASE `car_rental`;

USE `car_rental`;

CREATE TABLE `categories`(
	`id` INT PRIMARY KEY NOT NULL,
    `category` VARCHAR(45) NOT NULL,
    `daily_rate` DECIMAL(19, 2) NOT NULL,
    `weekly_rate` DECIMAL(19, 2) NOT NULL,
    `monthly_rate` DECIMAL(19, 2) NOT NULL,
    `weekend_rate` DECIMAL(19, 2) NOT NULL
);

CREATE TABLE `cars`(
	`id` INT PRIMARY KEY NOT NULL,
    `plate_number` VARCHAR(10) NOT NULL UNIQUE,
	`make` VARCHAR(30) NOT NULL,
    `model` VARCHAR(30) NOT NULL,
    `car_year` YEAR NOT NULL,
    `category_id` INT NOT NULL,
    `doors` INT NOT NULL,
    `picture` BLOB,
    `car_condition` VARCHAR(25) NOT NULL,
    `available` VARCHAR(25) NOT NULL
);

CREATE TABLE `employees`(
	`id` INT PRIMARY KEY NOT NULL,
    `first_name` VARCHAR(20) NOT NULL,
    `last_name` VARCHAR(20) NOT NULL,
    `title` VARCHAR(30) NOT NULL,
    `notes` TEXT
);

CREATE TABLE `customers`(
	`id` INT PRIMARY KEY NOT NULL,
    `driver_licence_number` VARCHAR(40) NOT NULL,
    `full_name` VARCHAR(40) NOT NULL,
    `address` VARCHAR(50) NOT NULL,
    `city` VARCHAR(35) NOT NULL,
    `zip_code` VARCHAR(15) NOT NULL,
    `notes` TEXT
);

CREATE TABLE `rental_orders`(
	`id` INT PRIMARY KEY NOT NULL,
    `employee_id` INT NOT NULL,
    `customer_id` INT NOT NULL,
    `car_id` INT NOT NULL, 
    `car_condition` VARCHAR(25) NOT NULL,
	`tank_level` INT NOT NULL,
	`kilometrage_start` INT NOT NULL,
    `kilometrage_end` INT NOT NULL,
    `total_kilometrage` INT NOT NULL,
	`start_date` DATE NOT NULL,
	`end_date` DATE NOT NULL,
    `total_days` INT NOT NULL,
    `rate_applied` DECIMAL(19, 2) NOT NULL,
    `tax_rate` DECIMAL(19, 2) NOT NULL,
    `order_status` VARCHAR(25) NOT NULL,
    `notes` TEXT
);

INSERT INTO `categories`
VALUES (1, 'Sport', 10, 70, 300, 20),
		(2, 'Town', 5, 50, 200, 20),
		(3, 'SUV', 7, 65, 270, 22);
        
INSERT INTO `cars`
VALUES (1, 'B23560T', 'make', 'BMW', 1999, 1, 4, NULL, 'Brand New', 'YES'),
		(2, 'B23561T', 'make', 'BMW', 1999, 1, 4, NULL, 'Brand New', 'YES'),
		(3, 'B23562T', 'make', 'BMW', 1999, 1, 4, NULL, 'Brand New', 'YES');
        
INSERT INTO `employees`
VALUES (1, 'Ivan', 'Ivanov', 'title', 'Notes...'),
		(2, 'Ivan', 'Ivanov', 'title', 'Notes...'),
		(3, 'Ivan', 'Ivanov', 'title', 'Notes...');
        
INSERT INTO `customers`
VALUES (1, 'B2356OT', 'Ivan Ivanov', 'Address...', 'Varna', 9000, 'Notes...'),
		(2, 'B2356OT', 'Ivan Ivanov', 'Address...', 'Varna', 9000, 'Notes...'),
		(3, 'B2356OT', 'Ivan Ivanov', 'Address...', 'Varna', 9000, 'Notes...');
        
INSERT INTO `rental_orders`
VALUES (1, 1, 1, 1, 'Condition', 70, 0, 170, 270, '1999-09-18', '1999-10-18', 30, 7.5, 5.8, 'Status', 'Notes...'),
		(2, 1, 1, 1, 'Condition', 70, 0, 170, 270, '1999-09-18', '1999-10-18', 30, 7.5, 5.8, 'Status', 'Notes...'),
		(3, 1, 1, 1, 'Condition', 70, 0, 170, 270, '1999-09-18', '1999-10-18', 30, 7.5, 5.8, 'Status', 'Notes...');
