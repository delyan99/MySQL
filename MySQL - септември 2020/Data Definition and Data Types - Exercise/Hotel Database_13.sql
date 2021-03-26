CREATE DATABASE `Hotel`;

USE `Hotel`;

CREATE TABLE `employees`(
	`id` INT PRIMARY KEY NOT NULL,
    `first_name` VARCHAR(45) NOT NULL,
    `last_name` VARCHAR(45) NOT NULL,
    `title` VARCHAR(45) NOT NULL,
    `notes` VARCHAR(60) NOT NULL
);

CREATE TABLE `customers`(
	`account_number` INT PRIMARY KEY NOT NULL,
    `first_name` VARCHAR(45) NOT NULL,
    `last_name` VARCHAR(45) NOT NULL,
    `phone_number` VARCHAR(25) NOT NULL,
    `emergency_name` VARCHAR(45) NOT NULL,
    `emergency_number` VARCHAR(25) NOT NULL,
    `notes` VARCHAR(60) NOT NULL
);

CREATE TABLE `room_status`(
	`room_status` VARCHAR(45) PRIMARY KEY NOT NULL,
    `notes` VARCHAR(60) NOT NULL
);

CREATE TABLE `room_types`(
	`room_type` VARCHAR(45) PRIMARY KEY NOT NULL,
	`notes` VARCHAR(60) NOT NULL
);

CREATE TABLE `bed_types`(
	`bed_type` VARCHAR(45) PRIMARY KEY NOT NULL,
    `notes` VARCHAR(60) NOT NULL
);

CREATE TABLE `rooms`(
	`room_number` INT PRIMARY KEY NOT NULL,
    `room_type` VARCHAR(45) NOT NULL,
    `bed_type` VARCHAR(45) NOT NULL,
    `rate` DOUBLE NOT NULL,
    `room_status` VARCHAR(45) NOT NULL,
    `notes` VARCHAR(60) NOT NULL,
    FOREIGN KEY (`room_type`) REFERENCES `room_types`(`room_type`),
    FOREIGN KEY (`bed_type`) REFERENCES `bed_types`(`bed_type`),
    FOREIGN KEY (`room_status`) REFERENCES `room_status`(`room_status`)
);

CREATE TABLE `payments`(
	`id` INT PRIMARY KEY NOT NULL,
	`employee_id` INT NOT NULL,
    `payment_date` DATE NOT NULL,
    `account_number` INT NOT NULL,
    `first_date_occupied` DATE NOT NULL,
    `last_date_occupied` DATE NOT NULL,
    `total_days` INT NOT NULL,
    `amount_charged` DECIMAL NOT NULL,
    `tax_rate` DECIMAL NOT NULL,
    `tax_amount` DECIMAL NOT NULL,
    `payment_total` DECIMAL NOT NULL,
    `notes` VARCHAR(60) NOT NULL,
    FOREIGN KEY (`employee_id`) REFERENCES `employees`(`id`),
    FOREIGN KEY (`account_number`) REFERENCES `customers`(`account_number`)
);

CREATE TABLE `occupancies`(
	`id` INT PRIMARY KEY NOT NULL,
	`employee_id` INT NOT NULL,
    `date_occupied` DATE NOT NULL,
    `account_number` INT NOT NULL,
    `room_number` INT NOT NULL,
    `rate_applied` DECIMAL NOT NULL,
    `phone_charge` DECIMAL NOT NULL,
    `notes` VARCHAR(45),
    FOREIGN KEY (`employee_id`) REFERENCES `employees`(`id`),
    FOREIGN KEY (`account_number`) REFERENCES `customers`(`account_number`),
    FOREIGN KEY (`room_number`) REFERENCES `rooms`(`room_number`)
);