-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2022 at 05:39 PM
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
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$i4LMfeFPQpGSNPTaccIkKuwxAkJ4PhBr3JND7FpXwWFjRvchQn17C', 'sahabuddinriyaj984@gmail.com', 1, '2018-05-27 17:51:00', '2019-09-02 08:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Is_Active` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(11, 'Gaming  news', 'Here you get all kind of Gaming News', '2022-09-05 17:03:40', '2022-09-05 17:03:40', '1'),
(12, 'E-sport News', 'E-Sport', '2022-09-05 17:04:49', '2022-09-05 17:04:49', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">TEAM ETERCES</span></font>', '2018-06-30 18:01:03', '2022-09-05 17:02:10'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><font face=\"Hind Madurai, sans-serif\"><b>Hello BAUET</b></font></p>', '2018-06-30 18:01:36', '2022-09-05 17:01:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) NOT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(17, 'Ubisoft confirms The Division Heartland details and says it’s coming ‘soon’', 11, 10, '<p style=\"margin-bottom: 1rem; color: rgb(45, 45, 45); font-family: Lato, sans-serif; font-size: 17.6px;\">The publisher&nbsp;<a class=\"link-internal\" href=\"https://www.videogameschronicle.com/news/ubisoft-announces-the-division-spin-off-game-heartland/\" style=\"color: unset; transition: all 0.25s ease-out 0s; padding-bottom: 2px; border-bottom: 2px dotted rgba(244, 120, 32, 0.66); font-weight: 700;\">announced The Division Heartland in May 2021</a>, when it said development of the “standalone experience” was being led by&nbsp;<a class=\"link-relationship\" title=\"Companies > Red Storm Entertainment [5 articles]\" href=\"https://www.videogameschronicle.com/companies/ubisoft/red-storm-entertainment/\" style=\"color: unset; transition: all 0.25s ease-out 0s; padding-bottom: 2px; border-bottom: 2px dotted rgba(222, 222, 222, 0.66);\">Red Storm Entertainment</a>&nbsp;for release on&nbsp;<a class=\"link-relationship\" title=\"Platforms > PC [6,116 articles]\" href=\"https://www.videogameschronicle.com/platforms/pc/\" style=\"color: unset; transition: all 0.25s ease-out 0s; padding-bottom: 2px; border-bottom: 2px dotted rgba(222, 222, 222, 0.66);\">PC</a>,&nbsp;<a class=\"link-relationship\" title=\"Platforms > PlayStation [6,111 articles]\" href=\"https://www.videogameschronicle.com/platforms/playstation/\" style=\"color: unset; transition: all 0.25s ease-out 0s; padding-bottom: 2px; border-bottom: 2px dotted rgba(222, 222, 222, 0.66);\">PlayStation</a>&nbsp;and&nbsp;<a class=\"link-relationship\" title=\"Platforms > Xbox [5,637 articles]\" href=\"https://www.videogameschronicle.com/platforms/xbox/\" style=\"color: unset; transition: all 0.25s ease-out 0s; padding-bottom: 2px; border-bottom: 2px dotted rgba(222, 222, 222, 0.66);\">Xbox</a>&nbsp;consoles.</p><p style=\"margin-bottom: 1rem; color: rgb(45, 45, 45); font-family: Lato, sans-serif; font-size: 17.6px;\">According to a newly launched&nbsp;<a target=\"_blank\" rel=\"noopener\" class=\"link-external\" href=\"https://store.ubi.com/eu/game?lang=en-SK&amp;pid=61166bd10d253c389c2e3020&amp;dwvar_61166bd10d253c389c2e3020_Platform=pcdl&amp;edition=Free%20to%20Play&amp;source=detail\" style=\"color: unset; transition: all 0.25s ease-out 0s; padding-bottom: 2px; border-bottom: 2px solid rgba(222, 222, 222, 0.66); font-weight: 700;\">product page</a>&nbsp;on the Ubisoft Store, the title is developed by&nbsp;<a class=\"link-relationship\" title=\"Companies > Ubisoft Montreal [217 articles]\" href=\"https://www.videogameschronicle.com/companies/ubisoft/ubisoft-montreal/\" style=\"color: unset; transition: all 0.25s ease-out 0s; padding-bottom: 2px; border-bottom: 2px dotted rgba(222, 222, 222, 0.66);\">Ubisoft Montreal</a>&nbsp;and coming “soon”.</p>', '2022-09-05 17:11:43', NULL, 1, 'Ubisoft-confirms-The-Division-Heartland-details-and-says-it’s-coming-‘soon’', '30de35790105f1653087f78f6b44604f.jpg'),
(18, 'test news', 11, 10, '<p>hello&nbsp;</p>', '2022-09-05 17:13:46', NULL, 1, 'test-news', '52adfe58d8558e3f9f2fed965d1274e8.jpg'),
(19, 'A new Night City Wire event is coming next week to cover anime and ‘what’s next’ for Cyberpunk 2077', 11, 10, '<p class=\"MsoNormal\">CD Projekt Red has been pretty quiet about additional\r\ncontent for Cyberpunk 2077 these last few months. In fact, the previous\r\nsubstantial update came in February, and though it fixed plenty of problems,\r\nsome still remain. Either way, it’s clear that CD Projekt Red isn’t quite done\r\nwith the game yet. And thanks to an upcoming Night City Wire event, we should\r\nsoon find out what’s going on with Cyberpunk 2077.<o:p></o:p></p><p class=\"MsoNormal\">The Night City Wire is scheduled for September 6 at 11 AM\r\nET. Obviously, a chunk of this event will feature Cyberpunk: Edgerunners, the\r\nupcoming tie-in anime series. But CD Projekt Red has also promised that we’ll\r\nsee “what’s next” for Cyberpunk 2077. This could indicate another update\r\ntargeting bug fixes or perhaps a peek at an upcoming expansion.<o:p></o:p></p><p>\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\">We know that CD Projekt Red is currently developing an\r\nexpansion for Cyberpunk 2077. This was previously confirmed back in April, with\r\na rough date of 2023. But beyond that, we haven’t heard much else about it.\r\nHowever, as usual with gaming reveals that are kept under wraps, some apparent\r\nleaks did surface. In May, the story details for the next expansion were posted\r\non Reddit. These details have since been taken down, but they did point towards\r\nan intriguing expansion, one that we’ll hopefully see in the upcoming Night\r\nCity Wire for Cyberpunk 2077.<o:p></o:p></p>', '2022-09-05 17:28:10', NULL, 1, 'A-new-Night-City-Wire-event-is-coming-next-week-to-cover-anime-and-‘what’s-next’-for-Cyberpunk-2077', 'ea03ad32526235ae6a323334a7b02ba2.jpg'),
(20, 'Flintlock: The Siege of Dawn gameplay trailer showcases a mix of Souls-like and God of War-style combat', 11, 10, '<p class=\"MsoNormal\">It’s been a few months since Flintlock: The Siege of Dawn\r\nwas last seen. A combat trailer was shared during the Xbox &amp; Bethesda Games\r\nShowcase in June. Today, A44 Games and Kepler Interactive have brought a new\r\ntrailer, which takes an even deeper look at the weaponry and magic at your\r\ndisposal. If you’re a fan of Souls-likes and the hard-hitting combat of the\r\nlatest God of War, then this Flintlock gameplay may get you excited.<o:p></o:p></p><p>\r\n\r\n</p><p class=\"MsoNormal\">It’s fairly clear where Flintlock is taking its inspiration.\r\nWith the camera suited close to the protagonists back, we see how powerful\r\nswings, near-perfect dodges, and takedowns blend together during fights. The\r\ncamera even zooms in during these said takedowns, giving you a closer look at\r\nthe brutality. Of course, there’s also some Souls in the mix. Bloodborne-esque\r\nquickstepping looks like an important tool to avoid damage. It’s also hard to\r\nignore the panic rolls briefly made by whoever was recording this Flintlock\r\ngameplay. We’ve all been there, friend. Boss fights against some really\r\npowerful-looking enemies will also be the highlight of the game. The trailer\r\nbelow showcases a couple against some knights, one of whom blasts away with a\r\nmassive beam. This might be a challenging game, and I’m all there for it.<o:p></o:p></p>', '2022-09-05 17:29:18', NULL, 1, 'Flintlock:-The-Siege-of-Dawn-gameplay-trailer-showcases-a-mix-of-Souls-like-and-God-of-War-style-combat', 'aa34933d3f9a2592c523d1feef693946.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `Subcategory` varchar(255) NOT NULL,
  `SubCatDescription` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Is_Active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(10, 11, 'Pc Game', 'Pc game News', '2022-09-05 17:04:00', '2022-09-05 17:04:00', 1),
(11, 11, 'Mobile Game News', 'Mobile Game News ', '2022-09-05 17:04:17', '2022-09-05 17:04:17', 1),
(12, 11, 'X-Box', 'X-Box', '2022-09-05 17:04:29', '2022-09-05 17:04:29', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
