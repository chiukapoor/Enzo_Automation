-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2018 at 05:39 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id2860361_enzoautomation`
--

-- --------------------------------------------------------

--
-- Table structure for table `department_store`
--

CREATE TABLE `department_store` (
  `Dept_id` int(4) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Contact_no` int(10) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Manager_SSN` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department_store`
--

INSERT INTO `department_store` (`Dept_id`, `Name`, `Contact_no`, `Address`, `Manager_SSN`) VALUES
(1, 'ENZO', 1234511111, 'VIT', 104);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `first_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary` int(10) NOT NULL,
  `sex` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Emp_SSN` int(4) NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`first_name`, `last_name`, `salary`, `sex`, `designation`, `Emp_SSN`, `password`) VALUES
('admin', NULL, 40000, 'MALE', 'ADMIN', 101, 'chirayu');

-- --------------------------------------------------------

--
-- Table structure for table `item_ordered`
--

CREATE TABLE `item_ordered` (
  `order_number` int(4) NOT NULL,
  `product_ID` int(4) NOT NULL,
  `quantity` int(5) NOT NULL,
  `Total_Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order1`
--

CREATE TABLE `order1` (
  `order_number` int(4) NOT NULL,
  `customer_ID` int(4) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(15) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `Dept_id` int(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `qty`, `price`, `Dept_id`) VALUES
(1, 'ENZO1', 'Hotdog', 'The toppings include fresh cilantro, onion, as well as the more usual ketchup, mustard, and mayo.', 'hotdog.jpg', 20, 100.00, 1),
(2, 'ENZO2', 'Paneer Tikka Masala', 'Marinated cottage cheese grilled over charcoal, cooked in a tomato gravy with cream and herbs', 'paneertikkamasala.jpg', 20, 200.00, 1),
(3, 'ENZO3', 'Burger', 'Batter & breaded patty made of green peas, carrots, green beans, onions, potatoes, rice and spices, with eggless mayonnaise and lettuce, served in a sesame toasted bun', 'burger.jpg', 30, 100.00, 1),
(4, 'ENZO4', 'Chilli Baby Corn', 'Marinated baby corn sautéed with capsicum, chilli sauce, soy sauce and chilli flakes', 'chillibabycorn.jpg', 20, 200.00, 1),
(5, 'ENZO5', 'Mushroom Pasta', 'Sauteed mushrooms, fine chopped onions in danish butter with alfredo sauce and Italian herbs over fettuccine, accompanied with bread', 'mushroompasta.jpg', 15, 200.00, 1),
(6, 'ENZO6', 'Coco Nova Cake', '(1 kg) Option to make it eggless on next step', 'cake.jpg', 10, 500.00, 1),
(7, 'ENZO7', 'The Pinocchio', 'Feta cubes, fresh green bell pepper, pineapple chunks, red paprika, cilantro, herbed seasoning with mozzarella cheese', 'pinocchio.jpg', 15, 300.00, 1),
(8, 'ENZO8', 'Hot Vegas', 'A super spicy blend of American golden corns, edam cheese, green bell peppers, a hint of cheddar and mozzarella with fine chopped onion and cucumber', 'hotvegas.jpg', 30, 200.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `vendor_ID` int(4) NOT NULL,
  `id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `supplies`
--

INSERT INTO `supplies` (`vendor_ID`, `id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 3),
(3, 1),
(3, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` int(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `vendor_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `contact` bigint(10) NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `vendor_ID` int(4) NOT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department_store`
--
ALTER TABLE `department_store`
  ADD PRIMARY KEY (`Dept_id`),
  ADD KEY `FK_MGR` (`Manager_SSN`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Emp_SSN`);

--
-- Indexes for table `item_ordered`
--
ALTER TABLE `item_ordered`
  ADD PRIMARY KEY (`order_number`,`product_ID`),
  ADD KEY `fk_pro_jd` (`product_ID`);

--
-- Indexes for table `order1`
--
ALTER TABLE `order1`
  ADD PRIMARY KEY (`order_number`),
  ADD KEY `fk_cus_ID` (`customer_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`),
  ADD KEY `FK_DEPTID` (`Dept_id`);

--
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`vendor_ID`,`id`),
  ADD KEY `fk_venid` (`vendor_ID`),
  ADD KEY `fk_prdid` (`id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendor_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order1`
--
ALTER TABLE `order1`
  MODIFY `order_number` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendor_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department_store`
--
ALTER TABLE `department_store`
  ADD CONSTRAINT `FK_MGR` FOREIGN KEY (`Manager_SSN`) REFERENCES `employee` (`Emp_SSN`);

--
-- Constraints for table `item_ordered`
--
ALTER TABLE `item_ordered`
  ADD CONSTRAINT `fk_order_no` FOREIGN KEY (`order_number`) REFERENCES `order1` (`order_number`),
  ADD CONSTRAINT `fk_pro_jd` FOREIGN KEY (`product_ID`) REFERENCES `products` (`id`);

--
-- Constraints for table `order1`
--
ALTER TABLE `order1`
  ADD CONSTRAINT `fk_cus_ID` FOREIGN KEY (`customer_ID`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_DEPTID` FOREIGN KEY (`Dept_id`) REFERENCES `department_store` (`Dept_id`);

--
-- Constraints for table `supplies`
--
ALTER TABLE `supplies`
  ADD CONSTRAINT `fk_proid` FOREIGN KEY (`id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `fk_venid` FOREIGN KEY (`vendor_ID`) REFERENCES `vendors` (`vendor_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
