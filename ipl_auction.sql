-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2023 at 12:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ipl_auction`
--

-- --------------------------------------------------------

--
-- Table structure for table `bid`
--

CREATE TABLE `bid` (
  `bid_id` int(11) NOT NULL,
  `bid_price` int(11) DEFAULT NULL,
  `player_id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bid`
--

INSERT INTO `bid` (`bid_id`, `bid_price`, `player_id`, `team_id`) VALUES
(11, 150000000, 1001, 1),
(12, 150000000, 1002, 10),
(13, 100000000, 1003, 2),
(14, 110000000, 1004, 1),
(15, 120000000, 1005, 5),
(16, 130000000, 1006, 1),
(17, 100000000, 1007, 3),
(18, 110000000, 1008, 6),
(11, 100000000, 1009, 9),
(19, 90000000, 1010, 5),
(20, 80000000, 1011, 1),
(21, 70000000, 1012, 4),
(22, 40000000, 1013, 7),
(23, 1000000, 1014, 7),
(24, 20000000, 1015, 8),
(25, 120000000, 1016, 6),
(26, 50000000, 1017, 3),
(27, 60000000, 1018, 8),
(28, 40000000, 1019, 1),
(29, 50000000, 1020, 2),
(30, 50000000, 1022, 2),
(31, 50000000, 1024, 10),
(32, 40000000, 1025, 8),
(33, 30000000, 1026, 7),
(34, 50000000, 1027, 6),
(35, 20000000, 1028, 3),
(36, 40000000, 1030, 10),
(37, 40000000, 1031, 8),
(38, 40000000, 1033, 9),
(39, 30000000, 1034, 9),
(40, 30000000, 1035, 6),
(41, 40000000, 1037, 10),
(42, 20000000, 1038, 5),
(43, 40000000, 1039, 4);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `board` varchar(20) DEFAULT NULL,
  `country_name` varchar(20) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`board`, `country_name`, `country_id`, `admin_id`) VALUES
('BCCI', 'INDIA', 101, 10001),
('ECB', 'ENGLAND', 102, 10002),
('CA', 'AUSTRALIA', 103, 10003),
('NZC', 'NEWZEALAND', 104, 10004),
('CSA', 'SOUTHAFRICA', 105, 10005),
('WCB', 'WESTINDIES', 106, 10006),
('BCB', 'BANGLADESH', 107, 10007),
('SLC', 'SRILANKA', 108, 10008),
('PCB', 'PAKISTAN', 109, 10009),
('ACB', 'AFGHANISTAN', 110, 10010),
('ICB', 'IRELAND', 111, 10001),
('ZCB', 'ZIMBABWE', 112, 10003),
('SCA', 'SCOTLAND', 113, 10002);

-- --------------------------------------------------------

--
-- Table structure for table `ipl_admin`
--

CREATE TABLE `ipl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(20) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ipl_admin`
--

INSERT INTO `ipl_admin` (`admin_id`, `admin_name`, `title`) VALUES
(10001, 'saurav ganguly', 'chairman'),
(10002, 'jayshah', 'secretary'),
(10003, 'sarojini', 'chairwoman'),
(10004, 'vijay', 'secretary'),
(10005, 'Vishal rajpurohit', 'treasurer'),
(10006, 'jayavardhan rao', 'coach head'),
(10007, 'gopal reddy', 'media\r\nrepresentativ'),
(10008, 'nitheesh', 'chief refree'),
(10009, 'jimmy carter', 'ex-chairman'),
(10010, 'rajiv shukla', 'member');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `player_id` int(11) NOT NULL,
  `baseprice` int(11) DEFAULT NULL,
  `rolle` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `status` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`first_name`, `last_name`, `player_id`, `baseprice`, `rolle`, `dob`, `country_id`, `status`) VALUES
('Rohit', 'Sharma', 1001, 50000000, 'batsman', '0000-00-00', 101, 'yes'),
('Virat', 'Kohli', 1002, 50000000, 'batsman', '0000-00-00', 101, 'yes'),
('Rishabh', 'Pant', 1003, 40000000, 'wicketkeeper', '0000-00-00', 101, 'yes'),
('Jasprit', 'Bumrah', 1004, 50000000, 'bowler', '0000-00-00', 101, 'yes'),
('KL', 'Rahul', 1005, 50000000, 'wicketkeeper', '0000-00-00', 101, 'yes'),
('SuryaKumar', 'Yadav', 1006, 40000000, 'batsman', '0000-00-00', 101, 'yes'),
('Ravindra', 'Jadeja', 1007, 50000000, 'allrounder', '0000-00-00', 101, 'yes'),
('yuzi', 'chahal', 1008, 30000000, 'bowler', '0000-00-00', 101, 'yes'),
('Shreyas', 'Iyer', 1009, 30000000, 'batsman', '0000-00-00', 101, 'yes'),
('ayush', 'badoni', 1010, 5000000, 'batsman', '0000-00-00', 101, 'yes'),
('Tilak', 'Verma', 1011, 10000000, 'batsman', '0000-00-00', 101, 'yes'),
('hardik', 'pandya', 1012, 40000000, 'allrounder', '0000-00-00', 101, 'yes'),
('Bhuvaneshvar', 'kumar', 1013, 20000000, 'bowler', '0000-00-00', 101, 'yes'),
('nata', 'rajan', 1014, 5000000, 'bowler', '0000-00-00', 101, 'yes'),
('shivam', 'dubey', 1015, 10000000, 'allrounder', '0000-00-00', 101, 'yes'),
('Jos', 'Buttler', 1016, 40000000, 'wicketkeeper', '0000-00-00', 102, 'yes'),
('Moeen', 'ali', 1017, 10000000, 'allrounder', '0000-00-00', 102, 'yes'),
('Jonny', 'Bairstow', 1018, 20000000, 'wicketkeeper', '0000-00-00', 102, 'yes'),
('Jofra', 'Archer', 1019, 10000000, 'bowler', '0000-00-00', 102, 'yes'),
('david', 'warner', 1020, 40000000, 'batsman', '0000-00-00', 103, 'yes'),
('mitchell', 'marsh', 1021, 10000000, 'allrounder', '0000-00-00', 103, 'no'),
('glenn', 'Maxwelll', 1022, 5000000, 'allrounder', '0000-00-00', 103, 'yes'),
('Pat', 'cummins', 1023, 10000000, 'allrounder', '0000-00-00', 103, 'no'),
('josh', 'Hazlewood', 1024, 2000000, 'bowler', '0000-00-00', 103, 'yes'),
('liam', 'livingstone', 1025, 10000000, 'allrounder', '0000-00-00', 102, 'yes'),
('Kane', 'Williamson', 1026, 10000000, 'batsman', '0000-00-00', 104, 'yes'),
('trent', 'boult', 1027, 20000000, 'bowler', '0000-00-00', 104, 'yes'),
('devon', 'conway', 1028, 2000000, 'wicketkeeper', '0000-00-00', 104, 'yes'),
('Ab', 'devillers', 1029, 50000000, 'wicketkeeper', '0000-00-00', 105, 'no'),
('FAf', 'Duplessis', 1030, 20000000, 'batsman', '0000-00-00', 105, 'yes'),
('kagiso', 'rabada', 1031, 30000000, 'bowler', '0000-00-00', 105, 'yes'),
('kieron', 'pollard', 1032, 40000000, 'allrounder', '0000-00-00', 106, 'no'),
('Andre', 'Russel', 1033, 30000000, 'allrounder', '0000-00-00', 106, 'yes'),
('Sunil', 'Narine', 1034, 30000000, 'allrounder', '0000-00-00', 106, 'yes'),
('shimron', 'hetmeyer', 1035, 20000000, 'batsman', '0000-00-00', 106, 'yes'),
('mustafizur', 'rahmann', 1036, 2000000, 'bowler', '0000-00-00', 107, 'no'),
('wanindu', 'hasranga', 1037, 5000000, 'allrounder', '0000-00-00', 108, 'yes'),
('dusmanta', 'chameera', 1038, 2000000, 'bowler', '0000-00-00', 108, 'yes'),
('Rashid', 'khan', 1039, 20000000, 'allrounder', '0000-00-00', 110, 'yes'),
('mohammad', 'nabi', 1040, 2000000, 'allrounder', '0000-00-00', 110, 'no'),
('paul', 'stirling', 1041, 2000000, 'batsman', '0000-00-00', 111, 'no'),
('kevin', 'obrain', 1042, 1000000, 'allrounder', '0000-00-00', 111, 'no'),
('brendon', 'taylor', 1043, 2000000, 'wicketkeeper', '0000-00-00', 112, 'no'),
('gopal', 'rockesh', 1044, 4000000, 'allrounder', '0000-00-00', 113, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `player_stats`
--

CREATE TABLE `player_stats` (
  `internation` int(11) DEFAULT NULL,
  `domestic` int(11) DEFAULT NULL,
  `total_runs` int(11) DEFAULT NULL,
  `averag` int(11) DEFAULT NULL,
  `total_wickets` int(11) DEFAULT NULL,
  `economy` int(11) DEFAULT NULL,
  `strike_rate` int(11) DEFAULT NULL,
  `player_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player_stats`
--

INSERT INTO `player_stats` (`internation`, `domestic`, `total_runs`, `averag`, `total_wickets`, `economy`, `strike_rate`, `player_id`) VALUES
(200, 50, 12074, 65, 20, 8, 135, 1001),
(190, 30, 13074, 70, NULL, NULL, 125, 1002),
(50, 40, 2074, 45, NULL, NULL, 155, 1003),
(97, 45, 374, 15, 200, 5, 100, 1004),
(100, 30, 7074, 58, NULL, NULL, 137, 1005),
(40, 100, 8074, 58, NULL, NULL, 165, 1006),
(190, 90, 8074, 45, 220, 10, 125, 1007),
(111, 40, 578, 12, 135, 9, 78, 1008),
(45, 87, 5074, 55, 6, 11, 133, 1009),
(0, 120, 8074, 45, 10, 12, 139, 1010),
(0, 40, 3074, 45, 12, 9, 115, 1011),
(99, 43, 5074, 65, 67, 7, 145, 1012),
(143, 67, 1074, 23, 190, 9, 75, 1013),
(34, 50, 74, 4, 45, 8, 65, 1014),
(20, 70, 4064, 34, 30, 11, 147, 1015),
(148, 50, 12074, 65, 20, 8, 135, 1016),
(103, 67, 8074, 35, 87, 10, 153, 1017),
(130, 70, 5074, 34, NULL, NULL, 121, 1018),
(29, 30, 354, 11, 111, 6, 145, 1019),
(456, 234, 14574, 75, 10, 2, 119, 1020),
(143, 35, 4074, 34, 230, 7, 135, 1021),
(200, 160, 8074, 55, 110, 8, 145, 1022),
(200, 120, 1074, 12, 340, 6, 160, 1023),
(150, 30, 674, 9, 243, 6, 123, 1024),
(50, 40, 2074, 33, 23, 7, 155, 1025),
(256, 110, 11074, 57, NULL, NULL, 90, 1026),
(145, 130, 684, 8, 245, 6, 110, 1027),
(60, 30, 2074, 45, NULL, NULL, 105, 1028),
(300, 360, 16074, 76, NULL, NULL, 145, 1029),
(250, 150, 11074, 55, 6, 4, 125, 1030),
(120, 50, 1074, 25, 234, 7, 165, 1031),
(340, 230, 5073, 35, 112, 5, 132, 1032),
(280, 121, 3374, 45, 88, 6, 146, 1033),
(245, 43, 2035, 34, 222, 5, 134, 1034),
(23, 50, 1034, 32, NULL, NULL, 132, 1035),
(102, 203, 544, 25, 221, 5, 86, 1036),
(80, 103, 543, 12, 99, 5, 98, 1037),
(54, 23, 574, 15, 111, 5, 132, 1038),
(123, 30, 2074, 22, 245, 4, 149, 1039),
(114, 233, 2242, 26, 165, 8, 126, 1040),
(98, 78, 4343, 63, NULL, NULL, 141, 1041),
(77, 43, 1543, 33, 121, 9, 111, 1042),
(122, 32, 4321, 56, NULL, NULL, 129, 1043),
(54, 22, 1098, 43, 67, 5, 198, 1044);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `team_name` varchar(20) DEFAULT NULL,
  `team_id` int(11) NOT NULL,
  `sponsor` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`team_name`, `team_id`, `sponsor`) VALUES
('Mumbai Indians', 1, 'reliance'),
('Delhi capitals', 2, 'JSW group'),
('Chennai super kings', 3, 'Muthoot group'),
('Gujarat titans', 4, 'cvc group'),
('Lucknow super giants', 5, 'goenka groups'),
('Rajasthan royals', 6, 'rr group'),
('Sunrisers hyderabad', 7, 'Suntv group'),
('Punjab kings', 8, 'kfc'),
('KKR', 9, 'red chillies group'),
('RCB', 10, 'kingfisher');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bid`
--
ALTER TABLE `bid`
  ADD PRIMARY KEY (`player_id`,`bid_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `ipl_admin`
--
ALTER TABLE `ipl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `player_stats`
--
ALTER TABLE `player_stats`
  ADD PRIMARY KEY (`player_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`team_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bid`
--
ALTER TABLE `bid`
  ADD CONSTRAINT `bid_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`),
  ADD CONSTRAINT `bid_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`);

--
-- Constraints for table `country`
--
ALTER TABLE `country`
  ADD CONSTRAINT `country_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `ipl_admin` (`admin_id`);

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);

--
-- Constraints for table `player_stats`
--
ALTER TABLE `player_stats`
  ADD CONSTRAINT `player_stats_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
