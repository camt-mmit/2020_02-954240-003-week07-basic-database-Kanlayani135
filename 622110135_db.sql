
use 622110135_db;
create schema 622110135_db;

CREATE TABLE `products` (
`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`created_at` timestamp NULL DEFAULT NULL,
`updated_at` timestamp NULL DEFAULT NULL,
`code` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
`name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
`price` decimal(15,2) NOT NULL,
`description` text COLLATE utf8mb4_unicode_ci NOT NULL,
PRIMARY KEY (`id`),
UNIQUE KEY `products_code_unique` (`code`),
KEY `products_created_at_index` (`created_at`),
KEY `products_updated_at_index` (`updated_at`)
) ;
INSERT INTO `products` 
(`created_at`, `updated_at`, `code`, `name`, `price`, `description`) 
VALUES ('2021-02-01 01:33:09', '2021-02-01 01:33:11', 'PD001', 'Programming PHP', 345.00, 'Why is PHP the most widely used programming language on the web?\r\nThis updated edition teaches everything you need to know to create\r\neffective web applications using the latest features in PHP 7.4.\r\nYou’ll start with the big picture and then dive into:\r\nlanguage syntax\r\nprogramming techniques\r\nand other details\r\nusing examples that illustrate both correct usage and common idioms.');
INSERT INTO `products` 
(`created_at`, `updated_at`, `code`, `name`, `price`, `description`) 
VALUES ('2021-02-01 01:35:51', '2021-02-01 01:35:52', 'PD002', 'JavaScript: The Definitive Guide', 250.00, 'JavaScript is the programming language of the web and is used by more\r\nsoftware developers today than any other programming language.\r\nFor nearly 25 years this best seller has been the go-to guide for\r\nJavaScript programmers. The seventh edition is fully updated to cover\r\nthe 2020 version of JavaScript, and new chapters cover:\r\nclasses\r\nmodules\r\niterators\r\ngenerators\r\nPromises\r\nasync/await\r\nand metaprogramming.\r\nYou’ll find illuminating and engaging example code throughout.');
INSERT INTO `products` 
(`created_at`, `updated_at`, `code`, `name`, `price`, `description`) 
VALUES ('2021-02-01 01:37:17', '2021-02-01 01:37:18', 'PD003', 'Learning PHP, MySQL & JavaScript', 450.00, 'Build interactive, data driven websites with the potent combination\r\nof open source technologies and web standards, even if you have only\r\nbasic HTML knowledge. In this update to this popular hands on guide,\r\nyou’ll tackle dynamic web programming with the latest versions of\r\ntoday’s core technologies:\r\nPHP\r\nMySQL\r\nJavaScript\r\nCSS\r\nHTML5\r\nand key jQuery libraries.');
INSERT INTO `products` 
(`created_at`, `updated_at`, `code`, `name`, `price`, `description`) VALUES ('2021-02-01 01:38:27', '2021-02-01 01:38:28', 'PD004', 'Python Crash Course, 2nd Edition', 560.00, 'In the first half of the book, you\'ll learn basic programming concepts,\r\nsuch as variables, lists, classes, and loops, and practice writing\r\nclean code with exercises for each topic. You\'ll also learn how to make\r\nyour programs interactive and test your code safely before adding it to\r\na project. In the second half, you\'ll put your new knowledge into\r\npractice with three substantial projects:\r\na Space Invaders-inspired arcade game\r\na set of data visualizations with Python\'s handy libraries\r\nand a simple web app you can deploy online.');

CREATE TABLE `shops` (
`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`created_at` timestamp NULL DEFAULT NULL,
`updated_at` timestamp NULL DEFAULT NULL,
`code` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
`name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
`owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
`latitude` double NOT NULL,
`longitude` double NOT NULL,
`address` text COLLATE utf8mb4_unicode_ci NOT NULL,
PRIMARY KEY (`id`),
UNIQUE KEY `shops_code_unique` (`code`),
KEY `shops_created_at_index` (`created_at`),
KEY `shops_updated_at_index` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

insert into `shops`(`code`,`name`,`owner`,`latitude`,`longitude`,`address`) values 
('SH001','Baifern Shop','Baifern',18.8004538,98.9488998,'College of Arts, Media and Technology\r\n239 Huaykaew Rd., Suthep, Muang, Chiang Mai 50200');

insert into `shops`(`code`,`name`,`owner`,`latitude`,`longitude`,`address`) values 
('SH002','Choompoo Shop','Choompoo',18.7921726,98.9575002,'College of Arts, Chiang Mai University Cooperative Store\r\n239 Huaykaew Rd., Suthep, Muang, Chiang Mai 50200');