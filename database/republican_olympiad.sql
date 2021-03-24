-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2021 at 09:48 PM
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

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`name`) VALUES
('Благоевград'),
('Бургас'),
('Варна'),
('Велико Търново'),
('Габрово'),
('Пловдив'),
('Русе'),
('София'),
('Шумен');

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

--
-- Dumping data for table `olympiad`
--

INSERT INTO `olympiad` (`short_name`, `name`, `host`, `date`, `url`) VALUES
('3 МТП', '3-ти Междууниверситетски турнир по програмиране', 'АУБ', '2000-06-01', 'https://infoman.musala.com/contests/139/1145/'),
('4 МТП', '4-ти Междууниверситетски турнир по програмиране', 'НБУ', '2001-01-01', ''),
('5 МТП', '5-ти Междууниверситетски турнир по програмиране', 'БСУ', '2002-05-19', 'http://nikolay.kirov.be/2002/5cp/cp.html');

-- --------------------------------------------------------

--
-- Table structure for table `olympiad_ranking`
--

CREATE TABLE `olympiad_ranking` (
  `olympiad` varchar(255) NOT NULL,
  `university` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `olympiad_ranking`
--

INSERT INTO `olympiad_ranking` (`olympiad`, `university`, `place`) VALUES
('3 МТП', 'АУБ', '3'),
('3 МТП', 'ВТУ', '4'),
('3 МТП', 'НБУ', '5'),
('3 МТП', 'СУ', '1'),
('3 МТП', 'ШУ', '6');

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

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`name`, `university`) VALUES
('10 АУБ', 'АУБ'),
('01 БСУ-1', 'БСУ'),
('02 БСУ-2', 'БСУ'),
('03 БСУ-3', 'БСУ'),
('13 ВТУ', 'ВТУ'),
('14 ИУВ-1', 'ИУВ'),
('15 ИУВ-2', 'ИУВ'),
('08 НБУ-1', 'НБУ'),
('09 НБУ-2', 'НБУ'),
('18 ПУ-1', 'ПУ'),
('19 ПУ-2', 'ПУ'),
('20 ТУГ', 'ПУ'),
('04 СУ-1', 'СУ'),
('05 СУ-2', 'СУ'),
('06 СУ-3', 'СУ'),
('07 СУ-4', 'СУ'),
('11 ШУ-1', 'ШУ'),
('12 ШУ-2', 'ШУ'),
('16 ЮЗУ-1', 'ЮЗУ'),
('17 ЮЗУ-2', 'ЮЗУ');

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
  `city` varchar(255) NOT NULL,
  `uni_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`name`, `short_form`, `url`, `city`, `uni_type`) VALUES
('Американски университет в България', 'АУБ', 'http://www.aubg.edu/', 'София', 'Частен'),
('Бургаски свободен университет', 'БСУ', 'http://www.bfu.bg/bg', 'Бургас', 'Частен'),
('Варненски свободен университет „Черноризец Храбър“', 'ВСУ', 'http://www.vfu.bg/', 'Варна', 'Частен'),
('Великотърновски университет \"Св.св. Кирил и Методий\"', 'ВТУ', 'http://www.uni-vt.bg/', 'Велико Търново', 'Класически'),
('Икономически университет - Варна', 'ИУВ', 'http://www.ue-varna.bg/', 'Варна', 'Икономически'),
('Нов български университет', 'НБУ', 'http://www.nbu.bg/', 'София', 'Частен'),
('Пловдивски университет \"Паисий Хилендарски\"', 'ПУ', 'https://uni-plovdiv.bg/', 'Пловдив', 'Класически'),
('Русенски университет \"Ангел Кънчев\"', 'РУ', 'https://www.uni-ruse.bg/', 'Русе', 'Класически'),
('Софийски университет \"Св. Климент Охридски\"', 'СУ', 'https://www.uni-sofia.bg/', 'София', 'Класически'),
('Технически университет - Варна', 'ТУВ', 'http://www.tu-varna.bg/', 'Варна', 'Технически'),
('Технически университет - Габрово', 'ТУГ', 'http://www.tugab.bg/', 'Габрово', 'Технически'),
('Технически университет - София', 'ТУС', 'http://www.tu-sofia.bg/', 'София', 'Технически'),
('Университет \"Проф. д-р Асен Златаров\" - Бургас', 'УАЗ', 'www.btu.bg', 'Бургас', 'Класически'),
('Университет по библиотекознание и информационни технологии', 'УниБИТ', 'http://www.unibit.bg/', 'София', 'Класически'),
('Университет за национално и световно стопанство', 'УНСС', 'http://www.unwe.bg/', 'София', 'Икономически'),
('Шуменски университет \"Еп. Константин Преславски\"', 'ШУ', 'http://shu.bg/', 'Шумен', 'Класически'),
('Югозападен университет \"Неофит Рилски\"	', 'ЮЗУ', 'http://www.swu.bg/', 'Благоевград', 'Класически');

-- --------------------------------------------------------

--
-- Table structure for table `uni_type`
--

CREATE TABLE `uni_type` (
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uni_type`
--

INSERT INTO `uni_type` (`type`) VALUES
('Икономически'),
('Класически'),
('Технически'),
('Частен');

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
-- Indexes for table `olympiad_ranking`
--
ALTER TABLE `olympiad_ranking`
  ADD PRIMARY KEY (`olympiad`,`university`,`place`),
  ADD KEY `university` (`university`);

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
  ADD PRIMARY KEY (`name`),
  ADD KEY `university` (`university`);

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
  ADD KEY `city` (`city`),
  ADD KEY `uni_type` (`uni_type`);

--
-- Indexes for table `uni_type`
--
ALTER TABLE `uni_type`
  ADD PRIMARY KEY (`type`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `olympiad`
--
ALTER TABLE `olympiad`
  ADD CONSTRAINT `olympiad_ibfk_1` FOREIGN KEY (`host`) REFERENCES `university` (`short_form`);

--
-- Constraints for table `olympiad_ranking`
--
ALTER TABLE `olympiad_ranking`
  ADD CONSTRAINT `olympiad_ranking_ibfk_1` FOREIGN KEY (`olympiad`) REFERENCES `olympiad` (`short_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `olympiad_ranking_ibfk_2` FOREIGN KEY (`university`) REFERENCES `university` (`short_form`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`university`) REFERENCES `university` (`short_form`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `university_ibfk_1` FOREIGN KEY (`city`) REFERENCES `city` (`name`),
  ADD CONSTRAINT `university_ibfk_2` FOREIGN KEY (`uni_type`) REFERENCES `uni_type` (`type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
