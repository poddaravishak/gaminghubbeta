-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2022 at 02:15 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payment`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `amount` int(255) DEFAULT NULL,
  `pay_to` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `name`, `email`, `phone`, `amount`, `pay_to`, `created_at`) VALUES
(1, 'SHUBHAM SINGH', 'priyadrashansingh@gmail.com', '8400840468', 100, 'Modi Care Releaf fund.', '2020-04-15 06:42:12'),
(2, 'KISHAN MAURYA', 'fullstack49kishan@gmail.com', '9598608579', 100, 'Modi Care Releaf fund.', '2020-04-15 06:42:16'),
(3, 'KISHAN MAURYA', 'fullstack49kishan@gmail.com', '9598608579', 100, 'Modi Care Releaf fund.', '2020-04-15 06:45:00'),
(4, 'Prateek Pandey', 'prateekpandey736@gmail.com', '8687767493', 101, 'Modi Care Releaf fund.', '2020-04-15 07:42:15'),
(5, 'Manpreet Singh', 'manpreetsinghmakhija@gmail.com', '7014913728', 500, 'Modi Care Releaf fund.', '2020-04-15 07:44:55'),
(6, 'KISHAN MAURYA', 'fullstack49kishan@gmail.com', '9598608579', 990, 'Modi Care Releaf fund.', '2020-04-15 14:05:48'),
(7, 'KISHAN MAURYA', 'fullstack49kishan@gmail.com', '9598608579', 4950, 'Modi Care Releaf fund.', '2020-04-15 14:08:47'),
(8, 'KISHAN MAURYA', 'fullstack49kishan@gmail.com', '9598608579', 9900, 'Modi Care Releaf fund.', '2020-04-15 14:18:52'),
(9, 'KISHAN MAURYA', 'fullstack49kishan@gmail.com', '9598608579', 1485, 'Modi Care Releaf fund.', '2020-04-15 14:22:03'),
(10, 'Devesh Pandey', 'deveshpandeyy007@gmail.com', '7398683627', 990, 'Modi Care Releaf fund.', '2020-04-15 14:33:46'),
(11, 'Rony', 'rksraisul@gmail.com', '0177036704', 99, 'MCA Foundation (Save Tree , Save India)', '2022-09-27 07:07:27'),
(12, 'Rony', 'rksraisul@gmail.com', '0770367045', 99, 'MCA Foundation (Save Tree , Save India)', '2022-09-27 07:07:41'),
(13, 'Rony', 'rksraisul@gmail.com', '9598608579', 99, 'MCA Foundation (Save Tree , Save India)', '2022-09-27 07:08:57'),
(14, 'Rony', 'rksraisul@gmail.com', '9598608579', 99, 'MCA Foundation (Save Tree , Save India)', '2022-09-27 07:49:46'),
(15, '?????? ????? ???', 'rksraisul@gmail.com', '0192990200', 99, 'MCA Foundation (Save Tree , Save India)', '2022-10-18 06:22:48'),
(16, '?????? ????? ???', 'rksraisul@gmail.com', '+998929902', 99, 'MCA Foundation (Save Tree , Save India)', '2022-10-18 06:23:10'),
(17, '?????? ????? ???', 'rksraisul@gmail.com', '7503907302', 99, 'MCA Foundation (Save Tree , Save India)', '2022-10-18 06:24:05'),
(18, '?????? ????? ???', 'rksraisul@gmail.com', '0192990200', 99, 'MCA Foundation (Save Tree , Save India)', '2022-10-18 07:34:14'),
(19, 'raisul', 'rksraisul@gmail.com', '11 6617 51', 99, 'MCA Foundation (Save Tree , Save India)', '2022-10-18 07:34:28'),
(20, 'Ronnie', 'rksraisul@gmail.com', '1245127845', 99, 'MCA Foundation (Save Tree , Save India)', '2022-10-18 07:50:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
