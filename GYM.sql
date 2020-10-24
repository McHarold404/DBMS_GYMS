
DROP DATABASE IF EXISTS `GYM2`;
CREATE SCHEMA `GYM2`;
USE `GYM2`;

CREATE TABLE `Employee` (
  `employee_id` varchar(255) PRIMARY KEY,
  `full_name` varchar(255),
  `salary` int,
  `dob` date,
  `phone_number` int,
  `address` varchar(255),
  `email` varchar(255),
  `works_in` int
);

CREATE TABLE `member` (
  `member_id` varchar(255) PRIMARY KEY,
  `f_name` varchar(255),
  `m_init` varchar(255),
  `l_name` varchar(255),
  `fee` int,
  `height` int,
  `weight` int,
  `email` varchar(255),
  `address` varchar(255),
  `works_out` int,
  `trainer_start` date,
  `trainer_end` date,
  `trainer_id` varchar(255)
);

CREATE TABLE `exercise` (
  `name` varchar(255) PRIMARY KEY,
  `description` varchar(255),
  `equip_code` varchar(255)
);

CREATE TABLE `equipment` (
  `barcode` varchar(255) PRIMARY KEY,
  `name` varchar(255)
);

CREATE TABLE `branch` (
  `b_num` int PRIMARY KEY,
  `street` varchar(255),
  `building` varchar(255),
  `city` varchar(255),
  `state` varchar(255),
  `country` varchar(255),
  `locality` varchar(255)
);

CREATE TABLE `dependent` (
  `name` varchar(255),
  `relationship` varchar(255),
  `emp_id` varchar(255),
  PRIMARY KEY (`name`, `relationship`, `emp_id`)
);

CREATE TABLE `body_part` (
  `name` varchar(255),
  `member_id` varchar(255),
  PRIMARY KEY (`name`, `member_id`)
);

CREATE TABLE `manager` (
  `manager_id` varchar(255) PRIMARY KEY
);

CREATE TABLE `staff` (
  `staff_id` varchar(255) PRIMARY KEY,
  `shift` varchar(255),
  `specilization` varchar(255),
  `superviser` varchar(255)
);

CREATE TABLE `trainer` (
  `trainer_id` varchar(255) PRIMARY KEY,
  `shift` varchar(255),
  `designation` varchar(255),
  `superviser` varchar(255)
);

CREATE TABLE `follows` (
  `member_id` varchar(255),
  `diet_plan` int,
  PRIMARY KEY (`member_id`, `diet_plan`)
);

CREATE TABLE `works_on` (
  `member_id` varchar(255),
  `trainer_id` varchar(255),
  `exercise` varchar(255),
  `body_part` varchar(255),
  PRIMARY KEY (`member_id`, `trainer_id`, `exercise`, `body_part`)
);

CREATE TABLE `diet_plan` (
  `index` int PRIMARY KEY,
  `calory_cnt` int
);

CREATE TABLE `supper_plan` (
  `diet_index` int,
  `supper` varchar(255),
  PRIMARY KEY (`diet_index`, `supper`)
);

CREATE TABLE `lunch_plan` (
  `diet_index` int,
  `lunch` varchar(255),
  PRIMARY KEY (`diet_index`, `lunch`)
);

CREATE TABLE `dinner_plan` (
  `diet_index` int,
  `dinner` varchar(255),
  PRIMARY KEY (`diet_index`, `dinner`)
);

CREATE TABLE `breakfast_plan` (
  `diet_index` int,
  `breakfast` varchar(255),
  PRIMARY KEY (`diet_index`, `breakfast`)
);

CREATE TABLE `exer_reps` (
  `name` varchar(255),
  `reps` int,
  PRIMARY KEY (`name`, `reps`)
);

ALTER TABLE `Employee` ADD FOREIGN KEY (`works_in`) REFERENCES `branch` (`b_num`);

ALTER TABLE `member` ADD FOREIGN KEY (`works_out`) REFERENCES `branch` (`b_num`);

ALTER TABLE `member` ADD FOREIGN KEY (`trainer_id`) REFERENCES `trainer` (`trainer_id`);

ALTER TABLE `exercise` ADD FOREIGN KEY (`equip_code`) REFERENCES `equipment` (`barcode`);

ALTER TABLE `dependent` ADD FOREIGN KEY (`emp_id`) REFERENCES `Employee` (`employee_id`);

ALTER TABLE `body_part` ADD FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);

ALTER TABLE `manager` ADD FOREIGN KEY (`manager_id`) REFERENCES `Employee` (`employee_id`);

ALTER TABLE `staff` ADD FOREIGN KEY (`staff_id`) REFERENCES `Employee` (`employee_id`);

ALTER TABLE `staff` ADD FOREIGN KEY (`superviser`) REFERENCES `manager` (`manager_id`);

ALTER TABLE `trainer` ADD FOREIGN KEY (`trainer_id`) REFERENCES `Employee` (`employee_id`);

ALTER TABLE `trainer` ADD FOREIGN KEY (`superviser`) REFERENCES `manager` (`manager_id`);

ALTER TABLE `follows` ADD FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);

ALTER TABLE `follows` ADD FOREIGN KEY (`diet_plan`) REFERENCES `diet_plan` (`index`);

ALTER TABLE `works_on` ADD FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);

ALTER TABLE `works_on` ADD FOREIGN KEY (`trainer_id`) REFERENCES `trainer` (`trainer_id`);

ALTER TABLE `works_on` ADD FOREIGN KEY (`exercise`) REFERENCES `exercise` (`name`);

ALTER TABLE `works_on` ADD FOREIGN KEY (`body_part`) REFERENCES `body_part` (`name`);

ALTER TABLE `supper_plan` ADD FOREIGN KEY (`diet_index`) REFERENCES `diet_plan` (`index`);

ALTER TABLE `lunch_plan` ADD FOREIGN KEY (`diet_index`) REFERENCES `diet_plan` (`index`);

ALTER TABLE `dinner_plan` ADD FOREIGN KEY (`diet_index`) REFERENCES `diet_plan` (`index`);

ALTER TABLE `breakfast_plan` ADD FOREIGN KEY (`diet_index`) REFERENCES `diet_plan` (`index`);

ALTER TABLE `exer_reps` ADD FOREIGN KEY (`name`) REFERENCES `exercise` (`name`);

