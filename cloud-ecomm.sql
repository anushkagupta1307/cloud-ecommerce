create database cloud_ecomm;
USE cloud_ecomm;
DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ;

INSERT INTO `users` VALUES (1,'Anushka','anushka21114@iiitd.ac.in','123456');
INSERT INTO `users` VALUES (1,'Ramyanee','ramyanee21139@iiitd.ac.in','123456');
INSERT INTO `users` VALUES (1,'Ekta','ekta21025@iiitd.ac.in','123456');

select * from users;

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(450) NOT NULL,
  `category` varchar(450) NOT NULL,
  `price` double NOT NULL,
  `image` varchar(450) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO products VALUES (1,'New Arrival Female Shoes','Female Shoes',120,'https://shopingcart.s3.ap-northeast-1.amazonaws.com/ladies_heels.jpeg');
INSERT INTO products VALUES (2,'Ladies Pure PU Shoulder Bag','Ladies Bag',69.99,' https://shopingcart.s3.ap-northeast-1.amazonaws.com/ladies_bag.webp');
INSERT INTO products VALUES (3, 'Men Winter Blazer', 'Men Blazer', 140, 'https://shopingcart.s3.ap-northeast-1.amazonaws.com/men_blazer.jpeg');
INSERT INTO products VALUES (4, 'Necklace','Ladies Accessories', 90, 'https://shopingcart.s3.ap-northeast-1.amazonaws.com/ladies_necklace.jpeg');
INSERT INTO products VALUES (5, 'Men Shoes','Men footwear', 130, 'https://shopingcart.s3.ap-northeast-1.amazonaws.com/men_shoes.webp');
INSERT INTO products VALUES (6, 'Men Watch','Men Accessories', 190, 'https://shopingcart.s3.ap-northeast-1.amazonaws.com/men_watch.webp');



select * from products;

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `o_id` int NOT NULL AUTO_INCREMENT,
  `p_id` int NOT NULL,
  `u_id` int NOT NULL,
  `o_quantity` int NOT NULL,
  `o_date` varchar(450) NOT NULL,
  PRIMARY KEY (`o_id`)
);

INSERT INTO `orders` VALUES (25,3,1,3,'2021-05-15'),(26,2,1,1,'2021-05-15');
select * from orders;