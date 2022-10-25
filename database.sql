CREATE DATABASE furniture_store DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
use furniture_store;

CREATE TABLE `role` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT '1'
);

CREATE TABLE `user` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone_number` varchar(20),
  `address` varchar(200),
  `password` varchar(62) NOT NULL,
  `role_id` int,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `category` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `parent_id` int DEFAULT '0',
  `status` tinyint(1) DEFAULT '1'
);

CREATE TABLE `designer` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image` varchar(500),
  `overview` varchar(255),
  `description` longtext
);

CREATE TABLE `tag` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(50),
  `description` varchar(255)
);

CREATE TABLE `product` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(100),
  `price` float,
  `sale_price` float,
  `image` varchar(500),
  `image_list` text,
  `status` tinyint(1),
  `overview` varchar(255),
  `description` longtext,
  `designer_id` int,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `feedback` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `email` varchar(150),
  `name` varchar(50),
  `comment` varchar(500),
  `rate` tinyint(1),
  `product_id` int
);

CREATE TABLE `order` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `email` varchar(150),
  `name` varchar(50),
  `address` varchar(255),
  `phone_number` varchar(20),
  `note` varchar(500),
  `user_id` int,
  `status` tinyint(1),
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `order_detail` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `order_id` int,
  `product_id` int,
  `quantity` int,
  `price` float
);

CREATE TABLE `blog` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(255),
  `image` varchar(500),
  `author` varchar(50),
  `overview` varchar(255),
  `content` longtext,
  `category_id` int,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `category_product` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `product_id` int,
  `category_id` int
);

CREATE TABLE `tag_product` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `tag_id` int,
  `product_id` int
);

ALTER TABLE `user` ADD FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

ALTER TABLE `product` ADD FOREIGN KEY (`designer_id`) REFERENCES `designer` (`id`);

ALTER TABLE `order_detail` ADD FOREIGN KEY (`order_id`) REFERENCES `order` (`id`);

ALTER TABLE `order_detail` ADD FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

ALTER TABLE `feedback` ADD FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

ALTER TABLE `category_product` ADD FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

ALTER TABLE `category_product` ADD FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

ALTER TABLE `blog` ADD FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

ALTER TABLE `tag_product` ADD FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`);

ALTER TABLE `tag_product` ADD FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

ALTER TABLE `order` ADD FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
