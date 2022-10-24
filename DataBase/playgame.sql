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
-- Database: `playgame`
--

-- --------------------------------------------------------

--
-- Table structure for table `gamelist`
--

CREATE TABLE `gamelist` (
  `id` int(11) NOT NULL,
  `nameofgame` varchar(15) NOT NULL,
  `link` varchar(200) NOT NULL,
  `photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gamelist`
--

INSERT INTO `gamelist` (`id`, `nameofgame`, `link`, `photo`) VALUES
(6, 'Moto-phycho', '<iframe width=\"100%\" height=\"700px\" src=\"https://www.addictinggames.com/embed/html5-games/23712\" scrolling=\"no\"></iframe>', 'moto-phycho.PNG'),
(7, 'Stunt-Park', '<iframe width=\"100%\" height=\"700px\" src=\"https://www.addictinggames.com/embed/html5-games/23687\" scrolling=\"no\"></iframe>', 'Stunt_park.PNG'),
(8, 'Sky War', '<iframe width=\"100%\" height=\"700px\" src=\"https://www.addictinggames.com/embed/html5-games/22886\" scrolling=\"no\"></iframe>', 'skywar.PNG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gamelist`
--
ALTER TABLE `gamelist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gamelist`
--
ALTER TABLE `gamelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
