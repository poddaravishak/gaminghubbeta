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
-- Database: `upload_tur`
--

-- --------------------------------------------------------

--
-- Table structure for table `insert_tur`
--

CREATE TABLE `insert_tur` (
  `id` int(30) NOT NULL,
  `title` varchar(50) NOT NULL,
  `about` varchar(5000) NOT NULL,
  `photoup` varchar(255) NOT NULL,
  `turnamentid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `insert_tur`
--

INSERT INTO `insert_tur` (`id`, `title`, `about`, `photoup`, `turnamentid`) VALUES
(9, 'hello', 'fbgbgb', 'download.png', 'XS3bH7Yd'),
(10, 'FFL Latinoamerica', 'Text Demo ', 'FFL_2022_allmode.png', 'FGX54GgHCG'),
(13, 'Call of Duty League', 'The Call of Duty League is a professional esports league for the video game series Call of Duty, produced by its publisher Activision.The Call of Duty League returns in 2022 building off the epic success of 2021 to once again bring you the absolute pinnacle of Call of Duty Esports entertainment. This year Major Tournaments return and we introduce several brand new events and format changes, as all 12 teams within the Call of Duty League battle for the top spot, ultimate glory, and massive prizing.\r\n\r\nFor the 2022 season teams will compete in Call of Duty®: Vanguard on PC with any League approved controller, giving players an incredible level of input customization. Stay tuned for more information coming soon on dates and where to buy tickets.', 'Call_of_Duty_League_Logo.png', 'XS3bH7Yd'),
(15, 'Arena of Valor World Cup', 'All teams are competing online from their home venue\r\nGroup Stage: June 19th - 27th, 2021\r\n16 teams will be drawn into 4 groups of 4 teams\r\nTeams from the same region shall not be drawn into the same group\r\nDouble Round-Robin format, all matches are played in a Bo2 with Global Ban-Pick Rules\r\nWinning 2-0 grants 3 points\r\nDrawing 1-1 grants 1 point\r\nLosing 0-2 grants 0 points\r\nTop 2 teams in each group will advance to the Knockout Stage\r\nBottom 2 teams in each group will be eliminated\r\nKnockout Stage: June 30th - July 18th, 2021\r\nDouble Elimination Bracket (except the one-off grand finals)\r\nKnockout Stage Round 1 matches are played in a Bo5\r\nAll other matches are played in a Bo7\r\nAll matches are played with Global Ban-Pick Rules', 'AWC2021_whitemode.png', 'VAL8gvHK'),
(16, 'free fire tournament', 'text demo', 'FFBC_21.png', 'UCUV6ZR'),
(17, 'Free Fire India', 'edhc dcb dcbn c ', 'download.jfif', 'H1WQ3S4e'),
(18, 'PUBG Mobile', 'Online player unknown Battle Ground. 100 players will try to survive. But only one will prevail', 'com.tencent.ig.sc0.2022-08-02-19-45-37.jpg', 'beta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `insert_tur`
--
ALTER TABLE `insert_tur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `insert_tur`
--
ALTER TABLE `insert_tur`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
