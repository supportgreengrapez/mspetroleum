-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 18, 2020 at 11:23 PM
-- Server version: 10.3.22-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `byowmbia_mspetrolium`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `pk_id` int(11) NOT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `balance` int(155) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`pk_id`, `account_type`, `account_name`, `description`, `balance`, `date`) VALUES
(2, 'Cash On Hand', 'Cash On Hand', 'Cash On Hand', 200, '2020-04-23'),
(3, 'Account Receivable', 'Account Receivable', 'Account Receivable', 400, '2020-04-23');

-- --------------------------------------------------------

--
-- Table structure for table `account_payable`
--

CREATE TABLE `account_payable` (
  `pk_id` int(11) NOT NULL,
  `supplier_name` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `amount_payed` int(11) DEFAULT NULL,
  `paying_method` varchar(255) DEFAULT NULL,
  `paying_account` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_payable`
--

INSERT INTO `account_payable` (`pk_id`, `supplier_name`, `date`, `amount_payed`, `paying_method`, `paying_account`) VALUES
(1, 4, '2020-04-30 04:00:00', 250, 'bank', NULL),
(2, 4, '2020-04-30 04:00:00', 250, 'bank', NULL),
(3, 4, '2020-04-30 04:00:00', 250, 'bank', NULL),
(4, 4, '2020-04-30 04:00:00', 200, 'cash', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `account_receivable`
--

CREATE TABLE `account_receivable` (
  `pk_id` int(11) NOT NULL,
  `customer_name` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `amount_received` int(11) DEFAULT NULL,
  `receiving_method` varchar(255) DEFAULT NULL,
  `receiving_account` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `pk_id` int(11) NOT NULL,
  `fname` varchar(155) NOT NULL,
  `lname` varchar(155) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`pk_id`, `fname`, `lname`, `username`, `password`) VALUES
(1, 'MS', 'Petroleum', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `pk_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `cnic` varchar(155) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `billing_address` varchar(355) DEFAULT NULL,
  `ntn` varchar(155) DEFAULT NULL,
  `strn` varchar(155) DEFAULT NULL,
  `opening_balance` int(255) DEFAULT NULL,
  `current_balance` int(255) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`pk_id`, `customer_name`, `cnic`, `phone`, `billing_address`, `ntn`, `strn`, `opening_balance`, `current_balance`, `date`) VALUES
(4, 'sumra riaz', '31203-3333333-3', '03035555555', 'dha', '321030-3', '3210255-3', 45000, 13400, '2020-04-23 23:17:21'),
(5, 'mustafa', NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-04-27 19:43:44');

-- --------------------------------------------------------

--
-- Table structure for table `detail_purchase`
--

CREATE TABLE `detail_purchase` (
  `pk_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `item_name` varchar(355) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `rate` int(255) DEFAULT NULL,
  `amount` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_purchase`
--

INSERT INTO `detail_purchase` (`pk_id`, `purchase_id`, `sku`, `item_name`, `quantity`, `rate`, `amount`) VALUES
(16, 17, 'oi61-lu2-oi1', 'oilll', 4, 300, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `detail_sale`
--

CREATE TABLE `detail_sale` (
  `pk_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `sku` varchar(155) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_sale`
--

INSERT INTO `detail_sale` (`pk_id`, `sale_id`, `sku`, `item_name`, `quantity`, `rate`, `amount`) VALUES
(8, 12, 'oi61-lu2-oi1', 'oilll', 12, 300, 3600),
(9, 13, 'oi61-lu2-oi1', 'oilll', 3, 300, 900),
(10, 14, 'oi61-lu2-oi1', 'oilll', 4, 300, 1200),
(11, 15, 'oi61-lu2-oi1', 'oilll', 10, 20, 200),
(12, 16, 'oi61-lu2-oi1', 'oilll', 20, 20, 400);

-- --------------------------------------------------------

--
-- Table structure for table `detail_tax_purchase`
--

CREATE TABLE `detail_tax_purchase` (
  `pk_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `rate` int(255) DEFAULT NULL,
  `tax` int(255) DEFAULT NULL,
  `tax_amount` int(255) DEFAULT NULL,
  `amount` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail_tax_sale`
--

CREATE TABLE `detail_tax_sale` (
  `pk_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `tax_amount` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `pk_id` int(11) NOT NULL,
  `payment_account` varchar(255) DEFAULT NULL,
  `payee` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `pk_id` int(11) NOT NULL,
  `sku` varchar(155) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `sub_item` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `uom` varchar(155) DEFAULT NULL,
  `stock` int(155) DEFAULT NULL,
  `opening_balance` int(155) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`pk_id`, `sku`, `item`, `sub_item`, `name`, `uom`, `stock`, `opening_balance`, `description`) VALUES
(11, 'oi61-lu2-oi1', 'oil', 'lubricant', 'oilll', 'litre', -20, 2000, 'qwjhdbxiq');

-- --------------------------------------------------------

--
-- Table structure for table `machine`
--

CREATE TABLE `machine` (
  `pk_id` int(11) NOT NULL,
  `pump_id` int(11) DEFAULT NULL,
  `tank_id` int(11) DEFAULT NULL,
  `machine_name` varchar(255) DEFAULT NULL,
  `closing_reading` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `current_dip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `machine`
--

INSERT INTO `machine` (`pk_id`, `pump_id`, `tank_id`, `machine_name`, `closing_reading`, `rate`, `current_dip`) VALUES
(1, 3, 1, 'Machine 1', '25', '100', '20'),
(2, 3, 1, 'Machine 3', '30', '50', '5'),
(5, 7, 6, 'machine5', '25', '10', '60'),
(6, 7, 7, 'machine2', '35', '20', '70'),
(7, 7, 6, 'machine6', '25', '10', '60'),
(8, 7, 6, 'machine7', '35', '4', '50'),
(9, 8, 8, 'machine1', '25', '2500', '60'),
(10, 8, 8, 'machine2', '35', '3500', '70'),
(11, 9, 10, 'm1', '25', '2500', '14'),
(12, 10, 11, 'm1', '25', '200', '14'),
(13, 10, 11, 'm2', '25', '2000', '15'),
(14, 11, 13, 'm1', '5800', '120', '32'),
(15, 11, 13, 'm2', '5800', '100', '36');

-- --------------------------------------------------------

--
-- Table structure for table `main_category`
--

CREATE TABLE `main_category` (
  `SKU` int(11) NOT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  `main_category` varchar(35) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_category`
--

INSERT INTO `main_category` (`SKU`, `item_id`, `main_category`, `created_at`) VALUES
(38, NULL, 'Electronics Devices', '2018-12-07 10:41:00'),
(39, NULL, 'Electronics Accessories', '2018-12-07 10:41:35'),
(40, NULL, 'TV and Home Appliances', '2018-12-07 10:42:15'),
(41, NULL, 'Health & Beauty', '2018-12-07 10:42:53'),
(42, NULL, 'Babies & Toys', '2018-12-07 10:43:11'),
(43, NULL, 'Home & Lifestyle', '2018-12-07 10:45:50'),
(44, NULL, 'Women\'s Fashion', '2018-12-07 10:46:19'),
(45, NULL, 'Men\'s Fashion', '2018-12-07 10:46:34'),
(46, NULL, 'Watches & Accessories', '2018-12-07 10:58:55'),
(47, NULL, 'Sports & Outdoor', '2018-12-07 10:59:21'),
(48, NULL, 'Automotive & Motorbike', '2018-12-07 11:01:13'),
(49, NULL, 'Groceries & Pets', '2018-12-07 11:36:19'),
(53, NULL, 'comma\'s test', '2019-01-18 09:37:40'),
(54, NULL, 'comma & again', '2019-01-18 09:42:14'),
(57, NULL, 'Food & Drink', '2019-01-21 10:50:06'),
(58, NULL, 'Kids Collection', '2019-06-15 10:31:28'),
(59, NULL, 'Kitchen Dinning', '2019-09-05 09:13:45'),
(61, 'oi61', 'oil', '2020-01-21 13:08:00'),
(62, 'lu62', 'lubricant', '2020-01-21 15:40:48');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `pk_id` int(11) NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `main_category` varchar(255) DEFAULT NULL,
  `sub_category` varchar(255) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`pk_id`, `sku`, `main_category`, `sub_category`, `product_type`, `description`) VALUES
(1, 'oi61-lu2-ol1', 'oil', 'lubricant', 'ol', 'jhvj');

-- --------------------------------------------------------

--
-- Table structure for table `pump`
--

CREATE TABLE `pump` (
  `pk_id` int(11) NOT NULL,
  `pump_name` varchar(255) DEFAULT NULL,
  `pump_address` varchar(355) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `craeted_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pump`
--

INSERT INTO `pump` (`pk_id`, `pump_name`, `pump_address`, `status`, `craeted_at`) VALUES
(3, 'Hira', 'DHA, Lahore', 0, '2020-02-27 09:11:02'),
(7, 'Go', 'thokar niaz baig', 1, '2020-04-27 20:15:07'),
(8, 'CNG', 'DHA', 1, '2020-02-27 09:15:28'),
(9, 'test', 'testsssssssssss', 1, '2020-02-28 10:48:22'),
(10, 'multiple', 'hgvjuvj', 1, '2020-04-27 20:15:10'),
(11, 'Parco', 'lahore', 1, '2020-04-27 20:15:13');

-- --------------------------------------------------------

--
-- Table structure for table `pump_detail_purchase`
--

CREATE TABLE `pump_detail_purchase` (
  `pk_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `tank_id` int(11) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `item_name` varchar(355) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `rate` int(255) DEFAULT NULL,
  `amount` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pump_detail_purchase_tax`
--

CREATE TABLE `pump_detail_purchase_tax` (
  `pk_id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `tank_id` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `tax_amount` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pump_detail_purchase_tax`
--

INSERT INTO `pump_detail_purchase_tax` (`pk_id`, `purchase_id`, `tank_id`, `sku`, `item_name`, `quantity`, `rate`, `tax`, `tax_amount`, `amount`) VALUES
(1, 6, 1, 'oi61-lu2-oi1', 'oilll', 10, 20, 10, 20, 220);

-- --------------------------------------------------------

--
-- Table structure for table `pump_purchase`
--

CREATE TABLE `pump_purchase` (
  `pk_id` int(11) NOT NULL,
  `pump_id` int(11) DEFAULT NULL,
  `sti` varchar(255) DEFAULT NULL,
  `pump_purchase` varchar(255) NOT NULL,
  `supplier_name` varchar(155) DEFAULT NULL,
  `account_type` varchar(155) DEFAULT NULL,
  `purchase_type` varchar(155) DEFAULT NULL,
  `company_name` varchar(155) DEFAULT NULL,
  `vehicle_no` varchar(155) DEFAULT NULL,
  `total_amount` int(155) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pump_purchase`
--

INSERT INTO `pump_purchase` (`pk_id`, `pump_id`, `sti`, `pump_purchase`, `supplier_name`, `account_type`, `purchase_type`, `company_name`, `vehicle_no`, `total_amount`, `created_at`) VALUES
(1, 3, '112255', 'tax', '4', 'credit', 'purchase', 'GG', '1234', 110, '2020-04-18 11:36:07'),
(2, 3, '112255', 'tax', '4', 'credit', 'purchase', 'GG', '1234', 110, '2020-04-18 11:38:01'),
(3, 3, NULL, 'tax', '4', 'cash', 'purchase', NULL, NULL, 0, '2020-04-18 12:58:24'),
(4, 3, NULL, 'tax', '4', 'cash', 'purchase', 'GG', '1234', 220, '2020-04-18 13:00:39'),
(5, 3, NULL, 'tax', '4', 'cash', 'purchase', 'GG', '1234', 220, '2020-04-18 13:03:28'),
(6, 3, NULL, 'tax', '4', 'cash', 'purchase', 'GG', '1234', 220, '2020-04-18 13:10:44');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `pk_id` int(11) NOT NULL,
  `sti` varchar(255) DEFAULT NULL,
  `purchase` varchar(255) DEFAULT NULL,
  `supplier_name` varchar(155) DEFAULT NULL,
  `account_type` varchar(155) DEFAULT NULL,
  `purchase_type` varchar(155) DEFAULT NULL,
  `company_name` varchar(155) DEFAULT NULL,
  `vehicle_no` varchar(155) DEFAULT NULL,
  `total_amount` int(155) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`pk_id`, `sti`, `purchase`, `supplier_name`, `account_type`, `purchase_type`, `company_name`, `vehicle_no`, `total_amount`, `created_at`) VALUES
(17, NULL, 'kachi parchi', '4', 'credit', 'purchase', 'GG', '1234', 1200, '2020-04-07 12:56:50');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `pk_id` int(11) NOT NULL,
  `sti` varchar(255) DEFAULT NULL,
  `sale` varchar(255) DEFAULT NULL,
  `customer_name` varchar(155) DEFAULT NULL,
  `account_type` varchar(155) DEFAULT NULL,
  `sale_type` varchar(155) DEFAULT NULL,
  `company_name` varchar(155) DEFAULT NULL,
  `vehicle_no` varchar(155) DEFAULT NULL,
  `total_amount` int(155) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`pk_id`, `sti`, `sale`, `customer_name`, `account_type`, `sale_type`, `company_name`, `vehicle_no`, `total_amount`, `created_at`) VALUES
(12, NULL, 'kachi parchi', '4', 'cash', 'sale', 'GG', '1234', 3600, '2020-04-06 19:00:00'),
(13, NULL, 'kachi parchi', '4', 'cash', 'sale', 'GG', '1234', 900, '2020-04-07 12:11:43'),
(14, NULL, 'kachi parchi', '4', 'credit', 'sale', 'GG', '1234', 1200, '2020-04-07 19:00:00'),
(15, NULL, 'kachi parchi', '4', 'cash', 'sale', 'GG', '1234', 200, '2020-04-23 19:00:00'),
(16, NULL, 'kachi parchi', '4', 'credit', 'sale', 'GG', '1234', 400, '2020-04-23 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `SKU` int(11) NOT NULL,
  `sub_item_id` varchar(255) DEFAULT NULL,
  `main_category` varchar(255) DEFAULT NULL,
  `sub_category` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`SKU`, `sub_item_id`, `main_category`, `sub_category`, `created_at`) VALUES
(10, NULL, 'garments', 'garments category', '2018-05-04 05:47:25'),
(11, NULL, 'garments', 'kids category', '2018-05-04 05:47:58'),
(12, NULL, 'garments', 'leather category', '2018-05-04 05:48:29'),
(13, NULL, 'accessories', 'accessories', '2018-05-04 05:48:59'),
(15, NULL, 'Clothes', 'Jeans', '2018-09-19 09:29:48'),
(17, NULL, 'garments', 'Casual Shoes', '2018-09-25 10:04:43'),
(22, NULL, 'TOWELS', 'TOWELS', '2018-10-19 10:55:21'),
(23, NULL, 'APPLIANCES', 'SMALL APPLIANCES - HAND BLENDERS', '2018-10-19 11:01:41'),
(24, NULL, 'APPLIANCES', 'CHOPPERS', '2018-10-19 11:02:05'),
(25, NULL, 'APPLIANCES', 'FOOD FACTORY/PROCESSORS', '2018-10-19 11:03:10'),
(26, NULL, 'APPLIANCES', 'ICE CREAM MAKER', '2018-10-19 11:03:36'),
(27, NULL, 'APPLIANCES', 'IRON', '2018-10-19 11:04:06'),
(28, NULL, 'APPLIANCES', 'KETTLES', '2018-10-19 11:04:37'),
(29, NULL, 'APPLIANCES', 'OVENS', '2018-10-19 11:05:26'),
(30, NULL, 'APPLIANCES', 'PIZZA MAKER', '2018-10-19 11:05:56'),
(31, NULL, 'APPLIANCES', 'ROTI MAKER', '2018-10-19 11:07:32'),
(32, NULL, 'APPLIANCES', 'SANDWICH MAKER', '2018-10-19 11:07:45'),
(33, NULL, 'APPLIANCES', 'STEAMER/FACIAL', '2018-10-19 11:08:18'),
(34, NULL, 'APPLIANCES', 'TOASTER', '2018-10-19 11:09:49'),
(36, NULL, 'TOWELS', 'Towels', '2018-10-26 11:52:51'),
(37, NULL, 'APPLIANCES', 'KITCHEN APPLIANCES', '2018-10-26 11:54:20'),
(38, NULL, 'Stationary', 'Stationary items', '2018-10-29 07:47:58'),
(39, NULL, 'Stationary', 'Stationary items', '2018-10-29 07:49:38'),
(40, NULL, 'Food Products', 'Mouth Freshner', '2018-11-16 20:08:41'),
(41, NULL, 'KitchenWares', 'ThermoPots', '2018-11-22 15:10:13'),
(43, NULL, 'Electronics', 'Mobile', '2018-12-05 10:54:13'),
(44, NULL, 'Electronics', 'Mobile', '2018-12-05 11:05:23'),
(45, NULL, 'Electronics Devices', 'Mobiles', '2018-12-07 11:02:13'),
(46, NULL, 'Electronics Devices', 'Tablets', '2018-12-07 11:02:25'),
(47, NULL, 'Electronics Devices', 'Laptops', '2018-12-07 11:02:39'),
(48, NULL, 'Electronics Devices', 'Desktops', '2018-12-07 11:03:04'),
(49, NULL, 'Electronics Devices', 'Gaming Consoles', '2018-12-07 11:03:35'),
(50, NULL, 'Electronics Devices', 'Action/Video Cameras', '2018-12-07 11:06:46'),
(51, NULL, 'Electronics Devices', 'Security Cameras', '2018-12-07 11:07:13'),
(52, NULL, 'Electronics Devices', 'Digital Cameras', '2018-12-07 11:07:32'),
(53, NULL, 'Electronics Accessories', 'Mobile Accessories', '2018-12-07 11:09:47'),
(54, NULL, 'Electronics Accessories', 'Audio', '2018-12-07 11:10:03'),
(55, NULL, 'Electronics Accessories', 'Wearable', '2018-12-07 11:10:24'),
(56, NULL, 'Electronics Accessories', 'Consoles Accessories', '2018-12-07 11:10:41'),
(57, NULL, 'Electronics Accessories', 'Camera Accessories', '2018-12-07 11:11:22'),
(58, NULL, 'Electronics Accessories', 'Computer Accessories', '2018-12-07 11:11:41'),
(59, NULL, 'Electronics Accessories', 'Storage', '2018-12-07 11:11:58'),
(60, NULL, 'Electronics Accessories', 'Printers', '2018-12-07 11:12:22'),
(61, NULL, 'Electronics Accessories', 'Computer Components', '2018-12-07 11:12:47'),
(62, NULL, 'Electronics Accessories', 'Network Components', '2018-12-07 11:13:20'),
(63, NULL, 'TV and Home Appliances', 'TV and Video Devices', '2018-12-07 11:14:08'),
(64, NULL, 'TV & Home Appliances', 'Home Audio', '2018-12-07 11:14:42'),
(65, NULL, 'TV & Home Appliances', 'TV Accessories', '2018-12-07 11:15:07'),
(66, NULL, 'TV & Home Appliances', 'Large Appliances', '2018-12-07 11:15:29'),
(67, NULL, 'TV & Home Appliances', 'Small Kitchen Appliances', '2018-12-07 11:15:57'),
(68, NULL, 'TV & Home Appliances', 'Cooling & Air Treatment', '2018-12-07 11:16:46'),
(69, NULL, 'TV & Home Appliances', 'Vacuums & Floor Care', '2018-12-07 11:17:19'),
(70, NULL, 'TV & Home Appliances', 'Irons & Garments Care', '2018-12-07 11:17:46'),
(71, NULL, 'TV & Home Appliances', 'Personal Care Appliances', '2018-12-07 11:18:16'),
(72, NULL, 'Health & Beauty', 'Bath & Body', '2018-12-07 11:19:36'),
(73, NULL, 'Health & Beauty', 'Beauty Tools', '2018-12-07 11:20:02'),
(74, NULL, 'Health & Beauty', 'Fragrances', '2018-12-07 11:22:44'),
(75, NULL, 'Health & Beauty', 'Hair Care', '2018-12-07 11:22:59'),
(76, NULL, 'Health & Beauty', 'Makeup', '2018-12-07 11:23:26'),
(77, NULL, 'Health & Beauty', 'Men\'s Care', '2018-12-07 11:23:47'),
(78, NULL, 'Health & Beauty', 'Personal Care', '2018-12-07 11:24:12'),
(79, NULL, 'Health & Beauty', 'Skin Care', '2018-12-07 11:24:25'),
(80, NULL, 'Health & Beauty', 'Food Supplements', '2018-12-07 11:25:16'),
(81, NULL, 'Health & Beauty', 'Medical Supplies', '2018-12-07 11:25:36'),
(82, NULL, 'Babies & Toys', 'Baby Gear', '2018-12-07 11:26:14'),
(83, NULL, 'Babies & Toys', 'Baby Personal Care', '2018-12-07 11:26:34'),
(84, NULL, 'Babies & Toys', 'Clothing & Accessories', '2018-12-07 11:29:34'),
(85, NULL, 'Babies & Toys', 'Diapering & Potty', '2018-12-07 11:30:31'),
(86, NULL, 'Babies & Toys', 'Feeding', '2018-12-07 11:30:51'),
(87, NULL, 'Babies & Toys', 'Nursery', '2018-12-07 11:32:08'),
(88, NULL, 'Babies & Toys', 'Baby & Toddler Toys', '2018-12-07 11:32:57'),
(89, NULL, 'Babies & Toys', 'Toys & Games', '2018-12-07 11:33:23'),
(90, NULL, 'Babies & Toys', 'Remote Controls & Vehicles', '2018-12-07 11:34:06'),
(91, NULL, 'Babies & Toys', 'Sports & Outdoor Play', '2018-12-07 11:34:33'),
(92, NULL, 'Groceries & Pets', 'Beverages', '2018-12-07 11:36:47'),
(93, NULL, 'Groceries & Pets', 'Breakfast, Choco & Snacks', '2018-12-07 11:38:20'),
(94, NULL, 'Groceries & Pets', 'Food Staples', '2018-12-07 11:38:35'),
(95, NULL, 'Groceries & Pets', 'Dairy & Chilled', '2018-12-07 11:39:06'),
(96, NULL, 'Groceries & Pets', 'Laundry & Household', '2018-12-07 11:45:44'),
(97, NULL, 'Groceries & Pets', 'Cat', '2018-12-07 11:46:26'),
(98, NULL, 'Groceries & Pets', 'Dog', '2018-12-07 11:46:46'),
(99, NULL, 'Groceries & Pets', 'Fish', '2018-12-07 11:46:58'),
(100, NULL, 'Home & Lifestyle', 'Bath', '2018-12-07 11:48:50'),
(101, NULL, 'Home & Lifestyle', 'Bedding', '2018-12-07 11:49:10'),
(102, NULL, 'Health & Beauty', 'Decor', '2018-12-07 11:49:23'),
(103, NULL, 'Home & Lifestyle', 'Furniture', '2018-12-07 11:49:37'),
(104, NULL, 'garments', 'Kitchen & Dining', '2018-12-07 11:50:05'),
(105, NULL, 'Home & Lifestyle', 'Lighting', '2018-12-07 11:50:59'),
(106, NULL, 'Home & Lifestyle', 'Laundry & Cleanings', '2018-12-07 11:51:25'),
(107, NULL, 'Home & Lifestyle', 'Tools, DIY & Outdoor', '2018-12-07 11:51:57'),
(108, NULL, 'Home & Lifestyle', 'Stationery & Craft', '2018-12-07 11:52:26'),
(109, NULL, 'Home & Lifestyle', 'Media, Music & Books', '2018-12-07 11:53:05'),
(110, NULL, 'Home & Lifestyle', 'Charity & Donation', '2018-12-07 11:54:19'),
(111, NULL, 'Women\'s Fashion', 'Clothing', '2018-12-07 11:55:20'),
(112, NULL, 'Women\'s Fashion', 'Women\'s Bags', '2018-12-07 11:55:43'),
(113, NULL, 'Women\'s Fashion', 'Shoes', '2018-12-07 11:57:51'),
(114, NULL, 'Women\'s Fashion', 'Accessories', '2018-12-07 11:58:13'),
(115, NULL, 'Women\'s Fashion', 'Lingerie, Sleep & Lounge', '2018-12-07 12:03:01'),
(116, NULL, 'Women\'s Fashion', 'Girls Fashion', '2018-12-07 12:03:34'),
(117, NULL, 'Women\'s Fashion', 'Travel & Luggage', '2018-12-07 12:04:42'),
(118, NULL, 'Men\'s Fashion', 'Clothing', '2018-12-07 12:05:04'),
(119, NULL, 'Men\'s Fashion', 'Men\'s Bags', '2018-12-07 12:05:19'),
(120, NULL, 'Men\'s Fashion', 'Shoes', '2018-12-07 12:05:43'),
(121, NULL, 'Men\'s Fashion', 'Accessories', '2018-12-07 12:06:08'),
(122, NULL, 'Men\'s Fashion', 'Boys Fashion', '2018-12-07 12:06:25'),
(123, NULL, 'Men\'s Fashion', 'Travel & Luggage', '2018-12-07 12:06:48'),
(124, NULL, 'Watches & Accessories', 'Men\'s Watches', '2018-12-07 12:12:52'),
(125, NULL, 'Watches & Accessories', 'Women\'s Watches', '2018-12-07 12:14:14'),
(126, NULL, 'Watches & Accessories', 'Kids Watches', '2018-12-07 12:14:41'),
(127, NULL, 'Watches & Accessories', 'Sunglasses', '2018-12-07 12:15:01'),
(128, NULL, 'Watches & Accessories', 'Eyeglasses', '2018-12-07 12:15:24'),
(129, NULL, 'Watches & Accessories', 'Women Fashion Jewellery', '2018-12-07 12:16:00'),
(130, NULL, 'Watches & Accessories', 'Men Fashion Jewellery', '2018-12-07 12:16:24'),
(131, NULL, 'Sports & Outdoor', 'Men Shoes & Clothing', '2018-12-07 12:20:37'),
(132, NULL, 'Sports & Outdoor', 'Women Shoes & Clothing', '2018-12-07 12:20:58'),
(133, NULL, 'Sports & Outdoor', 'Outdoor Recreation', '2018-12-07 12:21:52'),
(134, NULL, 'Sports & Outdoor', 'Exercise & Fitness', '2018-12-07 12:22:36'),
(135, NULL, 'Sports & Outdoor', 'Water Sport', '2018-12-07 12:22:52'),
(136, NULL, 'Sports & Outdoor', 'Boxing & Martial Arts', '2018-12-07 12:23:23'),
(137, NULL, 'Sports & Outdoor', 'Racket Sports', '2018-12-07 12:23:54'),
(138, NULL, 'Sports & Outdoor', 'Team Sports', '2018-12-07 12:24:09'),
(139, NULL, 'Sports & Outdoor', 'Water Bottles', '2018-12-07 12:24:33'),
(140, NULL, 'Automotive & Motorbike', 'Automotive', '2018-12-07 12:25:01'),
(141, NULL, 'Automotive & Motorbike', 'Services & Installations', '2018-12-07 12:27:28'),
(142, NULL, 'Automotive & Motorbike', 'Auto Oils & Fluids', '2018-12-07 12:28:02'),
(143, NULL, 'Automotive & Motorbike', 'Auto Tires & Wheels', '2018-12-07 12:28:26'),
(144, NULL, 'Automotive & Motorbike', 'Auto Care', '2018-12-07 12:28:55'),
(145, NULL, 'Automotive & Motorbike', 'Auto Electronics', '2018-12-07 12:29:26'),
(146, NULL, 'Automotive & Motorbike', 'Motorcycle', '2018-12-07 12:29:58'),
(147, NULL, 'Automotive & Motorbike', 'Moto Parts & Accessories', '2018-12-07 12:30:31'),
(148, NULL, 'Automotive & Motorbike', 'Motorcycle Riding Gear', '2018-12-07 12:31:08'),
(149, NULL, 'garments', 'ego pret', '2018-12-20 13:33:54'),
(150, NULL, 'Women\'s Fashion', 'Tops', '2019-01-14 08:30:12'),
(151, NULL, 'Women\'s Fashion', 'Pants & Leggings', '2019-01-14 08:41:09'),
(152, NULL, 'Men\'s Fashion', 'T-Shirts', '2019-01-14 10:23:46'),
(153, NULL, 'Men\'s Fashion', 'Shirts', '2019-01-14 10:24:05'),
(154, NULL, 'Men\'s Fashion', 'Polo', '2019-01-14 10:24:17'),
(155, NULL, 'Men\'s Fashion', 'Shorts', '2019-01-14 10:24:54'),
(156, NULL, 'Men\'s Fashion', 'Traditional Clothing', '2019-01-14 10:25:18'),
(157, NULL, 'Men\'s Fashion', 'Jackets & coats', '2019-01-14 10:26:08'),
(158, NULL, 'Men\'s Fashion', 'Hoodies & sweatshirts', '2019-01-14 10:26:51'),
(159, NULL, 'Men\'s Fashion', 'Sweaters', '2019-01-14 10:27:12'),
(160, NULL, 'Men\'s Fashion', 'Underwear', '2019-01-14 10:27:34'),
(161, NULL, 'Men\'s Fashion', 'Pants', '2019-01-14 10:31:28'),
(162, NULL, 'Milk', 'whitener', '2019-01-16 08:59:50'),
(163, NULL, 'comma\'s test', 'sub comma\'s test', '2019-01-18 09:48:28'),
(164, NULL, 'comma & again', 'sub comma\'s & again', '2019-01-18 09:49:51'),
(166, NULL, 'Food & Drink', 'Soft Drink', '2019-01-21 10:50:50'),
(167, NULL, 'Kids Collection', 'Clothing', '2019-06-15 10:41:14'),
(168, NULL, 'Kitchen Dinning', 'Table Top', '2019-09-05 09:14:58'),
(169, NULL, 'Kitchen Dinning', 'Kitchen Appliances', '2019-09-05 09:15:28'),
(170, NULL, 'Kitchen Dinning', 'Kitchen Tiles', '2019-09-05 09:15:46'),
(171, 'oi61-fe1', 'oil', 'feul', '2020-01-21 15:33:43'),
(172, 'oi61-lu2', 'oil', 'lubricant', '2020-01-21 15:38:34'),
(173, 'oi61-ha3', 'oil', 'havolink', '2020-01-21 15:40:03'),
(174, 'lu62-oi1', 'lubricant', 'oil', '2020-01-21 15:41:21'),
(177, 'lu62-rx2', 'lubricant', 'rx', '2020-01-21 15:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `pk_id` int(11) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `cnic` varchar(155) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `billing_address` varchar(355) DEFAULT NULL,
  `ntn` varchar(155) DEFAULT NULL,
  `strn` varchar(155) DEFAULT NULL,
  `opening_balance` int(255) DEFAULT NULL,
  `current_balance` int(255) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`pk_id`, `supplier_name`, `cnic`, `phone`, `billing_address`, `ntn`, `strn`, `opening_balance`, `current_balance`, `date`) VALUES
(4, 'kiran riaz', '31203-3333333-3', '03035555555', 'dha', '321030-3', '3210255-3', 50000, 18800, '2020-04-07 12:56:50');

-- --------------------------------------------------------

--
-- Table structure for table `tank`
--

CREATE TABLE `tank` (
  `pk_id` int(11) NOT NULL,
  `pump_id` int(11) DEFAULT NULL,
  `tank_name` varchar(255) DEFAULT NULL,
  `total_capacity` varchar(255) DEFAULT NULL,
  `total_dip` varchar(255) DEFAULT NULL,
  `opening_stock` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `opening_balance` varchar(255) DEFAULT NULL,
  `opening_dip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tank`
--

INSERT INTO `tank` (`pk_id`, `pump_id`, `tank_name`, `total_capacity`, `total_dip`, `opening_stock`, `uom`, `opening_balance`, `opening_dip`) VALUES
(1, 3, 'tank 3', '25', NULL, '20', 'litre', '25000', 'dip chart'),
(6, 7, 'tank1', '2000', NULL, '3000', 'litre', '5000', '25'),
(7, 7, 'tank5', '3000', NULL, '4000', 'inch', '10000', '35'),
(8, 8, 'tank1', '20', NULL, '5200', 'inch', '2000', '35'),
(9, 8, 'tank2', '30', NULL, '6200', 'litre', '3000', '45'),
(10, 9, 'hgvwa', '20', '10', '2500', 'Litre', '25000', '46'),
(11, 10, 't1', '51', '251', '2500', 'Litre', '25000', '46'),
(12, 10, 't2', '15', '15', '25000', 'QTY', '25000', '45'),
(13, 11, 'T1', '5000', '2000', '2100', 'Litre', '25000', '260'),
(14, 11, 'T2', '35000', '350', '356', 'Litre', '346', '34646');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `account_payable`
--
ALTER TABLE `account_payable`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `account_receivable`
--
ALTER TABLE `account_receivable`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `detail_purchase`
--
ALTER TABLE `detail_purchase`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `detail_sale`
--
ALTER TABLE `detail_sale`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `detail_tax_purchase`
--
ALTER TABLE `detail_tax_purchase`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `detail_tax_sale`
--
ALTER TABLE `detail_tax_sale`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `main_category`
--
ALTER TABLE `main_category`
  ADD PRIMARY KEY (`SKU`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `pump`
--
ALTER TABLE `pump`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `pump_detail_purchase`
--
ALTER TABLE `pump_detail_purchase`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `pump_detail_purchase_tax`
--
ALTER TABLE `pump_detail_purchase_tax`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `pump_purchase`
--
ALTER TABLE `pump_purchase`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`SKU`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `tank`
--
ALTER TABLE `tank`
  ADD PRIMARY KEY (`pk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `account_payable`
--
ALTER TABLE `account_payable`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `account_receivable`
--
ALTER TABLE `account_receivable`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `detail_purchase`
--
ALTER TABLE `detail_purchase`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `detail_sale`
--
ALTER TABLE `detail_sale`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `detail_tax_purchase`
--
ALTER TABLE `detail_tax_purchase`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_tax_sale`
--
ALTER TABLE `detail_tax_sale`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `machine`
--
ALTER TABLE `machine`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `main_category`
--
ALTER TABLE `main_category`
  MODIFY `SKU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pump`
--
ALTER TABLE `pump`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pump_detail_purchase`
--
ALTER TABLE `pump_detail_purchase`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pump_detail_purchase_tax`
--
ALTER TABLE `pump_detail_purchase_tax`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pump_purchase`
--
ALTER TABLE `pump_purchase`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `SKU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tank`
--
ALTER TABLE `tank`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
