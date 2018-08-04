-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2018 at 05:08 AM
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
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `first_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `contact_no` bigint(10) NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `customer_ID` int(4) NOT NULL,
  `RFID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(12) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`first_name`, `last_name`, `contact_no`, `address`, `customer_ID`, `RFID`, `password`) VALUES
('Chirayu', 'Kapoor', 9876543210, 'VIT university', 1000, 'csociety', 'chirayu'),
('Shivam', 'Kaushik', 8765437689, 'VIT Uhniversity', 1002, 'ieeevit1', 'crackajack'),
('Pradeep', 'Kumar', 9092343477, 'Vit university', 1003, 'Isoivit', 'foodie1'),
('Parth', 'Sharma', 9834672543, 'VIT university', 1005, 'csivit', 'yipeemag'),
('gurpreet', 'singh', 7894561230, 'punjab', 1012, 'gurpreet', 'gurpreet'),
('Shivam', '', 0, '', 1014, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE `Employee` (
  `first_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary` int(10) NOT NULL,
  `sex` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `employee_ID` int(4) NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`first_name`, `last_name`, `salary`, `sex`, `designation`, `employee_ID`, `password`) VALUES
('admin', NULL, 40000, 'MALE', 'ADMIN', 101, 'chirayu'),
('Gursimran', 'kalo', 30000, 'MALE', 'Sweeper', 102, 'gursimran'),
('Rohit', 'Sachdeva', 35000, 'MALE', 'Employee', 103, 'rohan'),
('Pradeep', 'Kumar', 20000, 'MALE', 'Employee', 104, 'pradeep'),
('Tina', 'Gupta', 32000, 'FEMALE', 'Cashier', 105, 'tina'),
('Vaibhav', 'Bansal', 20, 'MALE', 'Packer', 106, 'vaibhav'),
('Suresh', 'Garg', 25000, 'Male', 'Finance Manager', 107, 'honcruix'),
('Radheshyam', 'Sharma', 20000, 'Male', 'Cook', 116, 'astaalavista');

-- --------------------------------------------------------

--
-- Table structure for table `Item_ordered`
--

CREATE TABLE `Item_ordered` (
  `order_number` int(4) NOT NULL,
  `product_ID` int(4) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Order`
--

CREATE TABLE `Order` (
  `order_number` int(4) NOT NULL,
  `customer_ID` int(4) NOT NULL,
  `date` date NOT NULL,
  `total_amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `product_id` int(4) NOT NULL,
  `product_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(10) NOT NULL,
  `stock` int(10) NOT NULL,
  `category` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`product_id`, `product_name`, `price`, `stock`, `category`) VALUES
(1000, 'lays chips', 10, 100, 'Packed food');

-- --------------------------------------------------------

--
-- Table structure for table `Supplies`
--

CREATE TABLE `Supplies` (
  `vendor_ID` int(4) NOT NULL,
  `product_ID` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Vendors`
--

CREATE TABLE `Vendors` (
  `vendor_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `contact` int(10) NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `vendor_ID` int(4) NOT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`customer_ID`);

--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`employee_ID`);

--
-- Indexes for table `Item_ordered`
--
ALTER TABLE `Item_ordered`
  ADD KEY `fk_ordid` (`order_number`),
  ADD KEY `fk_prodid` (`product_ID`);

--
-- Indexes for table `Order`
--
ALTER TABLE `Order`
  ADD PRIMARY KEY (`order_number`),
  ADD KEY `fk_custid` (`customer_ID`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `Supplies`
--
ALTER TABLE `Supplies`
  ADD KEY `fk_venid` (`vendor_ID`),
  ADD KEY `fk_prdid` (`product_ID`);

--
-- Indexes for table `Vendors`
--
ALTER TABLE `Vendors`
  ADD PRIMARY KEY (`vendor_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Customer`
--
ALTER TABLE `Customer`
  MODIFY `customer_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1015;

--
-- AUTO_INCREMENT for table `Employee`
--
ALTER TABLE `Employee`
  MODIFY `employee_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `Item_ordered`
--
ALTER TABLE `Item_ordered`
  MODIFY `order_number` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Order`
--
ALTER TABLE `Order`
  MODIFY `order_number` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Products`
--
ALTER TABLE `Products`
  MODIFY `product_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `Vendors`
--
ALTER TABLE `Vendors`
  MODIFY `vendor_ID` int(4) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Item_ordered`
--
ALTER TABLE `Item_ordered`
  ADD CONSTRAINT `fk_ordid` FOREIGN KEY (`order_number`) REFERENCES `Order` (`order_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_prdid` FOREIGN KEY (`product_ID`) REFERENCES `Products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Order`
--
ALTER TABLE `Order`
  ADD CONSTRAINT `fk_custid` FOREIGN KEY (`customer_ID`) REFERENCES `Customer` (`customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Supplies`
--
ALTER TABLE `Supplies`
  ADD CONSTRAINT `fk_prodid` FOREIGN KEY (`product_ID`) REFERENCES `Products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_venid` FOREIGN KEY (`vendor_ID`) REFERENCES `Vendors` (`vendor_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
