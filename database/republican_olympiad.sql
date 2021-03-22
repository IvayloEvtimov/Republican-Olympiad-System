-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2021 at 08:34 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `republican_olympiad`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `olympiad`
--

CREATE TABLE `olympiad` (
  `short_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `participate`
--

CREATE TABLE `participate` (
  `team` varchar(255) NOT NULL,
  `olympiad` varchar(255) NOT NULL,
  `member` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `pid` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `submission`
--

CREATE TABLE `submission` (
  `olympiad` varchar(255) NOT NULL,
  `team` varchar(255) NOT NULL,
  `completed_tasks` int(11) NOT NULL,
  `time_taken` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `olympiad` varchar(255) NOT NULL,
  `task_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `name` varchar(255) NOT NULL,
  `university` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `team_leader`
--

CREATE TABLE `team_leader` (
  `leader` varchar(255) NOT NULL,
  `university` varchar(255) NOT NULL,
  `team` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `name` varchar(255) NOT NULL,
  `short_form` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `olympiad`
--
ALTER TABLE `olympiad`
  ADD PRIMARY KEY (`short_name`),
  ADD KEY `host` (`host`);

--
-- Indexes for table `participate`
--
ALTER TABLE `participate`
  ADD PRIMARY KEY (`team`,`olympiad`,`member`),
  ADD KEY `olympiad` (`olympiad`),
  ADD KEY `leader` (`member`),
  ADD KEY `team` (`team`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `submission`
--
ALTER TABLE `submission`
  ADD PRIMARY KEY (`olympiad`,`team`),
  ADD KEY `university` (`team`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`olympiad`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `team_leader`
--
ALTER TABLE `team_leader`
  ADD PRIMARY KEY (`leader`,`university`,`team`),
  ADD KEY `team` (`team`),
  ADD KEY `university` (`university`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`short_form`),
  ADD KEY `city` (`city`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `olympiad`
--
ALTER TABLE `olympiad`
  ADD CONSTRAINT `olympiad_ibfk_1` FOREIGN KEY (`host`) REFERENCES `university` (`short_form`);

--
-- Constraints for table `participate`
--
ALTER TABLE `participate`
  ADD CONSTRAINT `participate_ibfk_1` FOREIGN KEY (`olympiad`) REFERENCES `olympiad` (`short_name`),
  ADD CONSTRAINT `participate_ibfk_2` FOREIGN KEY (`team`) REFERENCES `team` (`name`),
  ADD CONSTRAINT `participate_ibfk_3` FOREIGN KEY (`member`) REFERENCES `person` (`pid`);

--
-- Constraints for table `submission`
--
ALTER TABLE `submission`
  ADD CONSTRAINT `submission_ibfk_1` FOREIGN KEY (`olympiad`) REFERENCES `olympiad` (`short_name`),
  ADD CONSTRAINT `submission_ibfk_2` FOREIGN KEY (`team`) REFERENCES `team` (`name`);

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`olympiad`) REFERENCES `olympiad` (`short_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `team_leader`
--
ALTER TABLE `team_leader`
  ADD CONSTRAINT `team_leader_ibfk_1` FOREIGN KEY (`leader`) REFERENCES `person` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `team_leader_ibfk_2` FOREIGN KEY (`team`) REFERENCES `team` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `team_leader_ibfk_3` FOREIGN KEY (`university`) REFERENCES `university` (`short_form`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `university`
--
ALTER TABLE `university`
  ADD CONSTRAINT `university_ibfk_1` FOREIGN KEY (`city`) REFERENCES `city` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
