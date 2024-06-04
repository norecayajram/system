-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2024 at 04:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `research`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminn`
--

CREATE TABLE `adminn` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminn`
--

INSERT INTO `adminn` (`admin_id`, `username`, `email`, `password`, `date_time`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$tTqVELenCpTCyTfLWd.3R.ydIL6KllUSsdyhc8sot/arNeRjBpYwS', '2024-05-09 16:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `adminproducts`
--

CREATE TABLE `adminproducts` (
  `id` int(11) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_color` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_notification`
--

CREATE TABLE `admin_notification` (
  `notification_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `actions` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_notification`
--

INSERT INTO `admin_notification` (`notification_id`, `customer_id`, `actions`) VALUES
(30, 2, 'Ordered a product'),
(47, 0, 'Cancelled an order');

-- --------------------------------------------------------

--
-- Table structure for table `audit_rel`
--

CREATE TABLE `audit_rel` (
  `audit_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `customer_actions` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_rel`
--

INSERT INTO `audit_rel` (`audit_id`, `customer_id`, `email`, `username`, `customer_actions`, `date_time`) VALUES
(1, 1, 'New user', 'New user', 'Created an account', '2024-05-09 15:41:20'),
(2, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Logged in', '2024-05-09 15:41:31'),
(3, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Added address', '2024-05-09 15:57:18'),
(4, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Logged out', '2024-05-09 16:00:18'),
(5, 1, 'New user', 'New user', 'Created an account', '2024-05-09 16:03:30'),
(6, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Logged in', '2024-05-09 16:03:39'),
(7, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Logged out', '2024-05-09 16:04:16'),
(8, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Logged in', '2024-05-09 16:04:25'),
(9, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Added address', '2024-05-09 16:11:47'),
(10, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Added address', '2024-05-09 16:58:00'),
(11, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Logged out', '2024-05-09 16:58:08'),
(12, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Logged in', '2024-05-11 10:39:04'),
(13, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Ordered a product', '2024-05-11 10:45:30'),
(14, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Ordered a product', '2024-05-11 10:46:45'),
(15, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Cancelled an order', '2024-05-11 10:55:27'),
(16, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Ordered a product', '2024-05-11 11:05:28'),
(17, 0, '', '', 'Cancelled an order', '2024-05-11 11:13:41'),
(18, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Ordered a product', '2024-05-11 11:20:08'),
(19, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Cancelled an order', '2024-05-11 11:20:20'),
(20, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Ordered a product', '2024-05-11 11:21:22'),
(21, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Cancelled an order', '2024-05-11 11:46:19'),
(22, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Ordered a product', '2024-05-11 11:47:55'),
(23, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Ordered a product', '2024-05-11 11:48:24'),
(24, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Cancelled an order', '2024-05-11 11:48:29'),
(25, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Cancelled an order', '2024-05-11 11:49:05'),
(26, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Cancelled an order', '2024-05-11 11:51:59'),
(27, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Ordered a product', '2024-05-11 11:52:26'),
(28, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Ordered a product', '2024-05-11 11:52:49'),
(29, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Cancelled an order', '2024-05-11 11:52:56'),
(30, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Cancelled an order', '2024-05-11 11:53:33'),
(31, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Ordered a product', '2024-05-11 11:54:25'),
(32, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Ordered a product', '2024-05-11 11:54:48'),
(33, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Ordered a product', '2024-05-11 11:55:10'),
(34, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Cancelled an order', '2024-05-11 11:55:37'),
(35, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Cancelled an order', '2024-05-11 11:57:16'),
(36, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Cancelled an order', '2024-05-11 11:57:58'),
(37, 1, 'Jaymaraceron@gmail.com', 'Jaymaraceron', 'Logged out', '2024-05-11 12:01:34');

-- --------------------------------------------------------

--
-- Table structure for table `cancelled`
--

CREATE TABLE `cancelled` (
  `cancelled_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `catalog_id` int(11) DEFAULT NULL,
  `merge_image` varchar(255) DEFAULT NULL,
  `merge_image2` varchar(255) DEFAULT NULL,
  `customer_upload_image` varchar(255) DEFAULT NULL,
  `customer_upload_image2` varchar(255) DEFAULT NULL,
  `customize_product` varchar(255) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `product_collar` varchar(255) DEFAULT NULL,
  `product_print_area` varchar(255) DEFAULT NULL,
  `product_print_area2` varchar(255) DEFAULT NULL,
  `small` int(255) DEFAULT NULL,
  `medium` int(255) DEFAULT NULL,
  `large` int(255) DEFAULT NULL,
  `xlarge` int(255) DEFAULT NULL,
  `receive_type` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `order_total` varchar(255) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `reference_id` int(255) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `names` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zipcode` int(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cancelled`
--

INSERT INTO `cancelled` (`cancelled_id`, `customer_id`, `catalog_id`, `merge_image`, `merge_image2`, `customer_upload_image`, `customer_upload_image2`, `customize_product`, `product_color`, `product_type`, `product_collar`, `product_print_area`, `product_print_area2`, `small`, `medium`, `large`, `xlarge`, `receive_type`, `payment_method`, `order_total`, `quantity`, `reference_id`, `date_time`, `names`, `phone_number`, `address`, `city`, `zipcode`, `country`) VALUES
(1, 1, 1, '../customer-finish-product/merged_image116.png', '', '../customer-image/suck una.png', '', 'Coinpurse', '', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', '215', 3, 50568771, '2024-05-11 10:55:27', 'Jaymar', '09187976714', '#12 Rose Street Barangay payatas A.', 'Quezon City', 1111, 'Philippines'),
(2, 0, 1, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '', '', '', 0, 0, '2024-05-11 11:13:41', '', '', '', '', 0, ''),
(3, 1, 1, '', '', '../customer-image/Advertise.png', '', 'Keyholder', '', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', '170', 2, 81394074, '2024-05-11 11:20:20', 'Jaymar', '09187976714', '#12 Rose Street Barangay payatas A.', 'Quezon City', 1111, 'Philippines'),
(4, 1, 1, '', '', '../customer-image/Advertise.png', '', 'Keyholder', '', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', '170', 2, 48177721, '2024-05-11 11:46:19', 'Jaymar', '09187976714', '#12 Rose Street Barangay payatas A.', 'Quezon City', 1111, 'Philippines'),
(5, 1, 1, '', '', '../customer-image/Advertise.png', '', 'Keyholder', '', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', '170', 2, 48177721, '2024-05-11 11:48:29', 'Jaymar', '09187976714', '#12 Rose Street Barangay payatas A.', 'Quezon City', 1111, 'Philippines'),
(6, 1, 1, '', '', '../customer-image/Advertise.png', '', 'Decal Sticker', '', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', '140', 2, 75179572, '2024-05-11 11:49:05', 'Jaymar', '09187976714', '#12 Rose Street Barangay payatas A.', 'Quezon City', 1111, 'Philippines'),
(7, 1, 1, '', '', '../customer-image/Advertise.png', '', 'Decal Sticker', '', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', '140', 2, 75179572, '2024-05-11 11:51:59', 'Jaymar', '09187976714', '#12 Rose Street Barangay payatas A.', 'Quezon City', 1111, 'Philippines'),
(8, 1, 1, '', '', '../customer-image/Explore.png', '', 'Decal Sticker', '', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', '140', 2, 76484931, '2024-05-11 11:52:56', 'Jaymar', '09187976714', '#12 Rose Street Barangay payatas A.', 'Quezon City', 1111, 'Philippines'),
(9, 1, 1, '', '', '../customer-image/Explore.png', '', 'Decal Sticker', '', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', '140', 2, 76484931, '2024-05-11 11:53:33', 'Jaymar', '09187976714', '#12 Rose Street Barangay payatas A.', 'Quezon City', 1111, 'Philippines'),
(10, 1, 1, '', '', '../customer-image/Customize.png', '', 'Keyholder', '', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', '305', 5, 62845258, '2024-05-11 11:55:37', 'Jaymar', '09187976714', '#12 Rose Street Barangay payatas A.', 'Quezon City', 1111, 'Philippines'),
(11, 1, 1, '', '', '../customer-image/Explore.png', '', 'Fridge Magnet', '', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', '230', 4, 37961419, '2024-05-11 11:57:16', 'Jaymar', '09187976714', '#12 Rose Street Barangay payatas A.', 'Quezon City', 1111, 'Philippines'),
(12, 1, 1, '', '', '../customer-image/Advertise.png', '', 'Decal Sticker', '', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', '140', 2, 46252827, '2024-05-11 11:57:58', 'Jaymar', '09187976714', '#12 Rose Street Barangay payatas A.', 'Quezon City', 1111, 'Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `checkout_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `merge_image` varchar(255) NOT NULL,
  `customer_upload_image` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customize_product` varchar(255) NOT NULL,
  `product_color` varchar(255) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `product_collar` varchar(255) NOT NULL,
  `product_print_area` varchar(255) NOT NULL,
  `small` int(255) NOT NULL,
  `medium` int(255) NOT NULL,
  `large` int(255) NOT NULL,
  `xlarge` int(255) NOT NULL,
  `receive-type` varchar(255) NOT NULL,
  `payment-method` varchar(255) NOT NULL,
  `order_total` int(255) NOT NULL,
  `quantity` int(255) DEFAULT NULL,
  `reference_id` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`checkout_id`, `customer_id`, `catalog_id`, `merge_image`, `customer_upload_image`, `customer_name`, `customize_product`, `product_color`, `product_type`, `product_collar`, `product_print_area`, `small`, `medium`, `large`, `xlarge`, `receive-type`, `payment-method`, `order_total`, `quantity`, `reference_id`) VALUES
(1, 1, 5, '../customer-finish-product/merged_image116.png', '../customer-image/suck una.png', '', 'Coinpurse', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', 215, 3, 50568771),
(2, 1, 3, '', '../customer-image/Advertise.png', '', 'Keyholder', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', 170, 2, 42545871),
(3, 1, 6, '', '../customer-image/Explore.png', '', 'Decal Sticker', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', 140, 2, 60557454),
(4, 1, 3, '', '../customer-image/Advertise.png', '', 'Keyholder', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', 170, 2, 81394074),
(5, 1, 3, '', '../customer-image/Advertise.png', '', 'Keyholder', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', 170, 2, 48177721),
(6, 1, 8, '', '../customer-image/Customize.png', '', 'Fridge Magnet', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', 430, 9, 41315322),
(7, 1, 6, '', '../customer-image/Advertise.png', '', 'Decal Sticker', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', 140, 2, 75179572),
(8, 1, 3, '', '../customer-image/Advertise.png', '', 'Keyholder', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', 125, 1, 23379729),
(9, 1, 6, '', '../customer-image/Explore.png', '', 'Decal Sticker', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', 140, 2, 76484931),
(10, 1, 3, '', '../customer-image/Customize.png', '', 'Keyholder', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', 305, 5, 62845258),
(11, 1, 6, '', '../customer-image/Advertise.png', '', 'Decal Sticker', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', 140, 2, 46252827),
(12, 1, 8, '', '../customer-image/Explore.png', '', 'Fridge Magnet', '', '', '', '', 0, 0, 0, 0, 'Delivery', 'COD', 230, 4, 37961419);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `username`, `email`, `first_name`, `last_name`, `phone_number`, `password`, `code`, `date_time`) VALUES
(1, 'Jaymaraceron', 'Jaymaraceron@gmail.com', 'Jaymar', 'Aceron', '09187976714', '$2y$10$/MrtzihUSbDUknogvmHCSeRRSE5l5xE/YOY/QzB28j8pBD/SEBocO', 0, '2024-05-09 16:03:30');

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `names` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zipcode` int(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_address`
--

INSERT INTO `customer_address` (`address_id`, `customer_id`, `names`, `phone_number`, `address`, `city`, `zipcode`, `country`) VALUES
(1, 1, 'Jaymar', '09187976714', '#12 Rose Street Barangay payatas A.', 'Quezon City', 1111, 'Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `customer_notification`
--

CREATE TABLE `customer_notification` (
  `notification_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `notifications` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `explore_add_to_cart`
--

CREATE TABLE `explore_add_to_cart` (
  `explore_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_color` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_price` double NOT NULL,
  `product_quantity` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product1`
--

CREATE TABLE `product1` (
  `process_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `catalog_image` varchar(255) NOT NULL,
  `catalog_name` varchar(255) NOT NULL,
  `product_color` varchar(255) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `product_collar` varchar(255) NOT NULL,
  `product_print_area_front` varchar(255) DEFAULT NULL,
  `product_print_area_back` varchar(255) DEFAULT NULL,
  `small` int(255) DEFAULT NULL,
  `medium` int(255) DEFAULT NULL,
  `large` int(255) DEFAULT NULL,
  `xlarge` int(255) DEFAULT NULL,
  `customer_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product2`
--

CREATE TABLE `product2` (
  `process_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `catalog_image` varchar(255) NOT NULL,
  `catalog_name` varchar(255) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `product_print_area` varchar(255) NOT NULL,
  `product_quantity` varchar(255) NOT NULL,
  `product_upload_image` varchar(255) NOT NULL,
  `reference_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product3`
--

CREATE TABLE `product3` (
  `process_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `catalog_image` varchar(255) NOT NULL,
  `catalog_name` varchar(255) NOT NULL,
  `product_quantity` int(255) NOT NULL,
  `product_upload_image` varchar(255) NOT NULL,
  `reference_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product3`
--

INSERT INTO `product3` (`process_id`, `customer_id`, `catalog_id`, `catalog_image`, `catalog_name`, `product_quantity`, `product_upload_image`, `reference_id`) VALUES
(1, 1, 3, 'images/keyholder.jpg', 'Keyholder', 3, '../customer-image/suck una (1).png', 0),
(2, 1, 3, 'images/keyholder.jpg', 'Keyholder', 2, '../customer-image/Advertise.png', 0),
(3, 1, 3, 'images/keyholder.jpg', 'Keyholder', 2, '../customer-image/Advertise.png', 0),
(4, 1, 3, 'images/keyholder.jpg', 'Keyholder', 2, '../customer-image/Advertise.png', 0),
(5, 1, 3, 'images/keyholder.jpg', 'Keyholder', 1, '../customer-image/Advertise.png', 0),
(6, 1, 3, 'images/keyholder.jpg', 'Keyholder', 5, '../customer-image/Customize.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product4`
--

CREATE TABLE `product4` (
  `process_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `catalog_image` varchar(255) NOT NULL,
  `catalog_name` varchar(255) NOT NULL,
  `product_quantity` int(255) NOT NULL,
  `product_upload_image` varchar(255) NOT NULL,
  `product_print_area` varchar(255) NOT NULL,
  `reference_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product5`
--

CREATE TABLE `product5` (
  `process_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `catalog_image` varchar(255) NOT NULL,
  `catalog_name` varchar(255) NOT NULL,
  `product_quantity` int(255) NOT NULL,
  `product_upload_image` varchar(255) NOT NULL,
  `reference_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product5`
--

INSERT INTO `product5` (`process_id`, `customer_id`, `catalog_id`, `catalog_image`, `catalog_name`, `product_quantity`, `product_upload_image`, `reference_id`) VALUES
(1, 1, 5, 'images/coinpurse.jpg', 'Coinpurse', 3, '../customer-image/suck una.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product6`
--

CREATE TABLE `product6` (
  `process_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `catalog_image` varchar(255) NOT NULL,
  `catalog_name` varchar(255) NOT NULL,
  `product_quantity` int(255) NOT NULL,
  `product_upload_image` varchar(255) NOT NULL,
  `reference_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product6`
--

INSERT INTO `product6` (`process_id`, `customer_id`, `catalog_id`, `catalog_image`, `catalog_name`, `product_quantity`, `product_upload_image`, `reference_id`) VALUES
(1, 1, 6, 'images/decalsticker.jpg', 'Decal Sticker', 2, '../customer-image/Explore.png', 0),
(2, 1, 6, 'images/decalsticker.jpg', 'Decal Sticker', 2, '../customer-image/Advertise.png', 0),
(3, 1, 6, 'images/decalsticker.jpg', 'Decal Sticker', 2, '../customer-image/Explore.png', 0),
(4, 1, 6, 'images/decalsticker.jpg', 'Decal Sticker', 2, '../customer-image/Advertise.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product7`
--

CREATE TABLE `product7` (
  `process_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `catalog_image` varchar(255) NOT NULL,
  `catalog_name` varchar(255) NOT NULL,
  `product_color` varchar(255) NOT NULL,
  `product_quantity` int(255) NOT NULL,
  `product_print_area` varchar(255) NOT NULL,
  `product_upload_image` varchar(255) NOT NULL,
  `reference_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product8`
--

CREATE TABLE `product8` (
  `process_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `catalog_image` varchar(255) NOT NULL,
  `catalog_name` varchar(255) NOT NULL,
  `product_quantity` int(255) NOT NULL,
  `product_upload_image` varchar(255) NOT NULL,
  `reference_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product8`
--

INSERT INTO `product8` (`process_id`, `customer_id`, `catalog_id`, `catalog_image`, `catalog_name`, `product_quantity`, `product_upload_image`, `reference_id`) VALUES
(1, 1, 8, 'images/fridgemagnet.jpg', 'Fridge Magnet', 9, '../customer-image/Customize.png', 0),
(2, 1, 8, 'images/fridgemagnet.jpg', 'Fridge Magnet', 4, '../customer-image/Explore.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_catalog`
--

CREATE TABLE `product_catalog` (
  `catalog_id` int(11) NOT NULL,
  `catalog_image` varchar(255) NOT NULL,
  `catalog_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_catalog`
--

INSERT INTO `product_catalog` (`catalog_id`, `catalog_image`, `catalog_name`) VALUES
(1, 'images/tshirt.jpg', 'T-shirt'),
(2, 'images/mugs.jpg', 'Mug'),
(3, 'images/keyholder.jpg', 'Keyholder'),
(4, 'images/totebag.jpg', 'Totebag'),
(5, 'images/coinpurse.jpg', 'Coinpurse'),
(6, 'images/decalsticker.jpg', 'Decal Sticker'),
(7, 'images/tumbler.jpg', 'Tumbler'),
(8, 'images/fridgemagnet.jpg', 'Fridge Magnet');

-- --------------------------------------------------------

--
-- Table structure for table `received`
--

CREATE TABLE `received` (
  `received_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `catalog_id` int(11) DEFAULT NULL,
  `merge_image` varchar(255) DEFAULT NULL,
  `merge_image2` varchar(255) DEFAULT NULL,
  `customer_upload_image` varchar(255) DEFAULT NULL,
  `customer_upload_image2` varchar(255) DEFAULT NULL,
  `customize_product` varchar(255) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `product_collar` varchar(255) DEFAULT NULL,
  `product_print_area` varchar(255) DEFAULT NULL,
  `product_print_area2` varchar(255) DEFAULT NULL,
  `small` int(255) DEFAULT NULL,
  `medium` int(255) DEFAULT NULL,
  `large` int(255) DEFAULT NULL,
  `xlarge` int(255) DEFAULT NULL,
  `receive_type` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `order_total` varchar(255) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `reference_id` int(255) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `names` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zipcode` int(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sana`
--

CREATE TABLE `sana` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `image_pick_front` varchar(255) DEFAULT NULL,
  `image_pick_back` varchar(255) DEFAULT NULL,
  `print_area` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `topay`
--

CREATE TABLE `topay` (
  `pay_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `catalog_id` int(11) DEFAULT NULL,
  `merge_image` varchar(255) DEFAULT NULL,
  `merge_image2` varchar(255) DEFAULT NULL,
  `customer_upload_image` varchar(255) DEFAULT NULL,
  `customer_upload_image2` varchar(255) DEFAULT NULL,
  `customize_product` varchar(255) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `product_collar` varchar(255) DEFAULT NULL,
  `product_print_area` varchar(255) DEFAULT NULL,
  `product_print_area2` varchar(255) DEFAULT NULL,
  `small` int(255) DEFAULT NULL,
  `medium` int(255) DEFAULT NULL,
  `large` int(255) DEFAULT NULL,
  `xlarge` int(255) DEFAULT NULL,
  `receive_type` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `order_total` varchar(255) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `reference_id` int(255) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `names` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zipcode` int(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `kk` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toprocess`
--

CREATE TABLE `toprocess` (
  `process_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `catalog_id` int(11) DEFAULT NULL,
  `merge_image` varchar(255) DEFAULT NULL,
  `merge_image2` varchar(255) DEFAULT NULL,
  `customer_upload_image` varchar(255) DEFAULT NULL,
  `customer_upload_image2` varchar(255) DEFAULT NULL,
  `customize_product` varchar(255) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `product_collar` varchar(255) DEFAULT NULL,
  `product_print_area` varchar(255) DEFAULT NULL,
  `product_print_area2` varchar(255) DEFAULT NULL,
  `small` int(255) DEFAULT NULL,
  `medium` int(255) DEFAULT NULL,
  `large` int(255) DEFAULT NULL,
  `xlarge` int(255) DEFAULT NULL,
  `receive_type` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `order_total` varchar(255) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `reference_id` int(255) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `names` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zipcode` int(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toreceive`
--

CREATE TABLE `toreceive` (
  `toreceive_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `catalog_id` int(11) DEFAULT NULL,
  `merge_image` varchar(255) DEFAULT NULL,
  `merge_image2` varchar(255) DEFAULT NULL,
  `customer_upload_image` varchar(255) DEFAULT NULL,
  `customer_upload_image2` varchar(255) DEFAULT NULL,
  `customize_product` varchar(255) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `product_collar` varchar(255) DEFAULT NULL,
  `product_print_area` varchar(255) DEFAULT NULL,
  `product_print_area2` varchar(255) DEFAULT NULL,
  `small` int(255) DEFAULT NULL,
  `medium` int(255) DEFAULT NULL,
  `large` int(255) DEFAULT NULL,
  `xlarge` int(255) DEFAULT NULL,
  `receive_type` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `order_total` varchar(255) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `reference_id` int(255) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `names` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zipcode` int(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toship`
--

CREATE TABLE `toship` (
  `ship_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `catalog_id` int(11) DEFAULT NULL,
  `merge_image` varchar(255) DEFAULT NULL,
  `merge_image2` varchar(255) DEFAULT NULL,
  `customer_upload_image` varchar(255) DEFAULT NULL,
  `customer_upload_image2` varchar(255) DEFAULT NULL,
  `customize_product` varchar(255) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `product_collar` varchar(255) DEFAULT NULL,
  `product_print_area` varchar(255) DEFAULT NULL,
  `product_print_area2` varchar(255) DEFAULT NULL,
  `small` int(255) DEFAULT NULL,
  `medium` int(255) DEFAULT NULL,
  `large` int(255) DEFAULT NULL,
  `xlarge` int(255) DEFAULT NULL,
  `receive_type` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `order_total` varchar(255) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `reference_id` int(255) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `names` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zipcode` int(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminn`
--
ALTER TABLE `adminn`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `adminproducts`
--
ALTER TABLE `adminproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_notification`
--
ALTER TABLE `admin_notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `audit_rel`
--
ALTER TABLE `audit_rel`
  ADD PRIMARY KEY (`audit_id`);

--
-- Indexes for table `cancelled`
--
ALTER TABLE `cancelled`
  ADD PRIMARY KEY (`cancelled_id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`checkout_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `customer_notification`
--
ALTER TABLE `customer_notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `explore_add_to_cart`
--
ALTER TABLE `explore_add_to_cart`
  ADD PRIMARY KEY (`explore_id`);

--
-- Indexes for table `product1`
--
ALTER TABLE `product1`
  ADD PRIMARY KEY (`process_id`);

--
-- Indexes for table `product2`
--
ALTER TABLE `product2`
  ADD PRIMARY KEY (`process_id`);

--
-- Indexes for table `product3`
--
ALTER TABLE `product3`
  ADD PRIMARY KEY (`process_id`);

--
-- Indexes for table `product4`
--
ALTER TABLE `product4`
  ADD PRIMARY KEY (`process_id`);

--
-- Indexes for table `product5`
--
ALTER TABLE `product5`
  ADD PRIMARY KEY (`process_id`);

--
-- Indexes for table `product6`
--
ALTER TABLE `product6`
  ADD PRIMARY KEY (`process_id`);

--
-- Indexes for table `product7`
--
ALTER TABLE `product7`
  ADD PRIMARY KEY (`process_id`);

--
-- Indexes for table `product8`
--
ALTER TABLE `product8`
  ADD PRIMARY KEY (`process_id`);

--
-- Indexes for table `product_catalog`
--
ALTER TABLE `product_catalog`
  ADD PRIMARY KEY (`catalog_id`);

--
-- Indexes for table `received`
--
ALTER TABLE `received`
  ADD PRIMARY KEY (`received_id`);

--
-- Indexes for table `sana`
--
ALTER TABLE `sana`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topay`
--
ALTER TABLE `topay`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `toprocess`
--
ALTER TABLE `toprocess`
  ADD PRIMARY KEY (`process_id`);

--
-- Indexes for table `toreceive`
--
ALTER TABLE `toreceive`
  ADD PRIMARY KEY (`toreceive_id`);

--
-- Indexes for table `toship`
--
ALTER TABLE `toship`
  ADD PRIMARY KEY (`ship_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminn`
--
ALTER TABLE `adminn`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminproducts`
--
ALTER TABLE `adminproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_notification`
--
ALTER TABLE `admin_notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `audit_rel`
--
ALTER TABLE `audit_rel`
  MODIFY `audit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `cancelled`
--
ALTER TABLE `cancelled`
  MODIFY `cancelled_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `checkout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_address`
--
ALTER TABLE `customer_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_notification`
--
ALTER TABLE `customer_notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `explore_add_to_cart`
--
ALTER TABLE `explore_add_to_cart`
  MODIFY `explore_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product1`
--
ALTER TABLE `product1`
  MODIFY `process_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product2`
--
ALTER TABLE `product2`
  MODIFY `process_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product3`
--
ALTER TABLE `product3`
  MODIFY `process_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product4`
--
ALTER TABLE `product4`
  MODIFY `process_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product5`
--
ALTER TABLE `product5`
  MODIFY `process_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product6`
--
ALTER TABLE `product6`
  MODIFY `process_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product7`
--
ALTER TABLE `product7`
  MODIFY `process_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product8`
--
ALTER TABLE `product8`
  MODIFY `process_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_catalog`
--
ALTER TABLE `product_catalog`
  MODIFY `catalog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `received`
--
ALTER TABLE `received`
  MODIFY `received_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sana`
--
ALTER TABLE `sana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topay`
--
ALTER TABLE `topay`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `toprocess`
--
ALTER TABLE `toprocess`
  MODIFY `process_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `toreceive`
--
ALTER TABLE `toreceive`
  MODIFY `toreceive_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `toship`
--
ALTER TABLE `toship`
  MODIFY `ship_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
