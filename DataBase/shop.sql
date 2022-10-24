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
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `shop_table`
--

CREATE TABLE `shop_table` (
  `id` int(11) NOT NULL,
  `gamename` varchar(100) NOT NULL,
  `price` varchar(10) NOT NULL,
  `imageup` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop_table`
--

INSERT INTO `shop_table` (`id`, `gamename`, `price`, `imageup`) VALUES
(19, 'GTA V', '49', 'header.jpg'),
(20, 'Mass Effect', '24', 'mass efect.jpg'),
(21, 'Far Cry 6 Standard Edition', '23.99', 'farcray.jpg'),
(22, 'Red Dead Redemption 2', '22.49', 'Red Dead.jpg'),
(23, 'Riders Republic', '11.99', '81CkXWxHDAL._SL1500_.jpg'),
(24, 'Shadow of the Tomb Raider', '0', 'Shadow_of_the_Tomb_Raider_cover.png'),
(25, 'Kena: Bridge of Spirits', '14.99', 'EGS_KenaBridgeofSpirits_EmberLab_S6-1200x1600-e701bd947727ee14b81626c7f9757e4f.jpg'),
(26, 'REPLIKATOR', '23.99', 'REPLIKATOR.webp'),
(27, 'Cyberpunk 2077', '30.00 $', 'cyberpunk_2077_patch_notes.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shop_table`
--
ALTER TABLE `shop_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shop_table`
--
ALTER TABLE `shop_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
