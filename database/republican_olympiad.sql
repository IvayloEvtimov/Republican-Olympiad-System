-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2021 at 10:26 PM
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
  `member` int(11) NOT NULL,
  `team` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `participate`
--

INSERT INTO `participate` (`member`, `team`) VALUES
(9, '01 БСУ-1'),
(10, '01 БСУ-1'),
(11, '01 БСУ-1'),
(13, '02 БСУ-2'),
(14, '02 БСУ-2'),
(15, '02 БСУ-2'),
(16, '03 БСУ-3'),
(17, '03 БСУ-3'),
(18, '04 СУ-1'),
(19, '04 СУ-1'),
(20, '04 СУ-1'),
(21, '05 СУ-2'),
(22, '05 СУ-2'),
(23, '05 СУ-2'),
(24, '06 СУ-3'),
(25, '06 СУ-3'),
(26, '06 СУ-3'),
(27, '07 СУ-4'),
(28, '07 СУ-4'),
(29, '07 СУ-4'),
(30, '08 НБУ-1'),
(31, '08 НБУ-1'),
(32, '08 НБУ-1'),
(33, '09 НБУ-2'),
(34, '09 НБУ-2'),
(35, '09 НБУ-2'),
(37, '10 АУБ'),
(38, '10 АУБ'),
(39, '11 ШУ-1'),
(40, '11 ШУ-1'),
(41, '11 ШУ-1'),
(42, '12 ШУ-2'),
(43, '12 ШУ-2'),
(44, '12 ШУ-2'),
(45, '13 ВТУ'),
(46, '13 ВТУ'),
(47, '13 ВТУ'),
(48, '14 ИУВ-1'),
(49, '14 ИУВ-1'),
(50, '14 ИУВ-1'),
(51, '15 ИУВ-2'),
(52, '15 ИУВ-2'),
(53, '15 ИУВ-2'),
(54, '16 ЮЗУ-1'),
(55, '16 ЮЗУ-1'),
(56, '16 ЮЗУ-1'),
(57, '17 ЮЗУ-2'),
(58, '17 ЮЗУ-2'),
(59, '17 ЮЗУ-2'),
(60, '18 ПУ-1'),
(61, '18 ПУ-1'),
(62, '18 ПУ-1'),
(63, '19 ПУ-2'),
(64, '19 ПУ-2'),
(65, '20 ТУГ'),
(66, '20 ТУГ'),
(67, '20 ТУГ');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `pid` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`pid`, `first_name`, `last_name`) VALUES
(1, 'Веселина', 'Стоянова'),
(2, 'Красимир', 'Манев'),
(3, 'Емил', 'Келеведжиев'),
(4, 'Бисерка', 'Йовчева'),
(5, 'Валентин', 'Валентин Бакоев'),
(6, 'Стойчо', 'Стоев'),
(7, 'Светослав', 'Христов'),
(8, 'Ангел', 'Голев'),
(9, 'Стоян', 'Капралов'),
(10, 'Борислав', 'Пламенов Първанов'),
(11, 'Владимир', 'Николов Ганев'),
(12, 'Милен', 'Стоянов Стоянов'),
(13, 'Гергана', 'Господинова Георгиева'),
(14, 'Илиян', 'Николаев Трифонов'),
(15, 'Васил', 'Гочев Мартинов'),
(16, 'Иво', 'Валентинов Иванов'),
(17, 'Петьо', 'Петев Куртев'),
(18, 'Милослав', 'Антониев Средков'),
(19, 'Петко', 'Георгиев Минков '),
(20, 'Кирил', 'Георгиев Минков'),
(21, 'Цветан', 'Красимиров Богданов'),
(22, 'Петър', 'Стефанов Лефтеров'),
(23, 'Петър', 'Живков Петров'),
(24, 'Иван', 'Димитров Георгие'),
(25, 'Мартин', 'Вълканов Вълканов'),
(26, 'Александър', 'Димитров Мавров'),
(27, 'Тодор', 'Димитров Цанков'),
(28, 'Димитър', 'Антонов Ковачев'),
(29, 'Петър', 'Исак Леви'),
(30, 'Йонка', 'Василева Иванова'),
(31, 'Сергей', 'Сергеев Върбанов '),
(32, 'Владислав', 'Славов Съйков'),
(33, 'Ясен', 'Тодоров Михайлов '),
(34, 'Ласко', 'Маринов Ласков'),
(35, 'Янко', 'Василев Иванов'),
(36, 'Стоян', 'Стратев'),
(37, 'Юлиан', 'Киряков'),
(38, 'Владимир', 'Коловски'),
(39, 'Корнелия', 'Йорданова Златева'),
(40, 'Милен', 'Анков Соколов '),
(41, 'Милко', 'Иванов Янков'),
(42, 'Димитър', 'Пламенов Шуликов'),
(43, 'Красимир', 'Валентинов Харизанов'),
(44, 'Чавдар', 'Петров Чавдаров'),
(45, 'Атанас', 'Атанасов Колев'),
(46, 'Иво', 'Стефанов Митов'),
(47, 'Владимир', 'Йорданов Йотов'),
(48, 'Чавдар', 'Иванов Копоев'),
(49, 'Димитър', 'Радев Власев '),
(50, 'Венцислав', 'Красенов Кунев'),
(51, 'Стелиян', 'Петков Георгиев'),
(52, 'Янко', 'Жеков Жеков'),
(53, 'Николай', 'Иванов Колев'),
(54, 'Стойчо', 'Тодоров Петров'),
(55, 'Веселин', 'Тодоров Петров'),
(56, 'Атанас', 'Живков Ангов'),
(57, 'Иван', 'Симеонов Георгиев'),
(58, 'Стоян', 'Димитров Николов'),
(59, 'Светослав', 'Пенчев Василев'),
(60, 'Симеон', 'Монов'),
(61, 'Никола', 'Дачев'),
(62, 'Румен', 'Моралийски'),
(63, 'Петър', 'Събев'),
(64, 'Павел', 'Йорданов'),
(65, 'Радослав', 'Атанасов Атанасов'),
(66, 'Валери', 'Виртилиев Фрунзе'),
(67, 'Николай', 'Николаев Чавдар');

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

--
-- Dumping data for table `submission`
--

INSERT INTO `submission` (`olympiad`, `team`, `completed_tasks`, `time_taken`) VALUES
('5 МТП', '01 БСУ-1', 3, 387),
('5 МТП', '02 БСУ-2', 1, 82),
('5 МТП', '03 БСУ-3', 1, 213),
('5 МТП', '04 СУ-1', 5, 419),
('5 МТП', '05 СУ-2', 4, 388),
('5 МТП', '06 СУ-3', 5, 683),
('5 МТП', '07 СУ-4', 4, 487),
('5 МТП', '08 НБУ-1', 2, 383),
('5 МТП', '09 НБУ-2', 1, 80),
('5 МТП', '10 АУБ', 5, 642),
('5 МТП', '11 ШУ-1', 1, 82),
('5 МТП', '12 ШУ-2', 0, 0),
('5 МТП', '13 ВТУ', 0, 0),
('5 МТП', '14 ИУВ-1', 2, 190),
('5 МТП', '15 ИУВ-2', 2, 222),
('5 МТП', '16 ЮЗУ-1', 2, 371),
('5 МТП', '17 ЮЗУ-2', 1, 216),
('5 МТП', '18 ПУ-1', 3, 411),
('5 МТП', '19 ПУ-2', 2, 157),
('5 МТП', '20 ТУГ', 3, 490);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `olympiad` varchar(255) NOT NULL,
  `task_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`olympiad`, `task_file`) VALUES
('5 МТП', 'happy'),
('5 МТП', 'lines'),
('5 МТП', 'pass'),
('5 МТП', 'period'),
('5 МТП', 'pic'),
('5 МТП', 'points'),
('5 МТП', 'prime'),
('5 МТП', 'shsh');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `name` varchar(255) NOT NULL,
  `university` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`name`, `university`, `email`) VALUES
('01 БСУ-1', 'БСУ', 'zerosoft@unacs.bg'),
('02 БСУ-2', 'БСУ', 'mgirl@abv.bg'),
('03 БСУ-3', 'БСУ', 'AVPBG@yahoo.com'),
('04 СУ-1', 'СУ', ''),
('05 СУ-2', 'СУ', ''),
('06 СУ-3', 'СУ', 'ivandg@yahoo.com'),
('07 СУ-4', 'СУ', ''),
('08 НБУ-1', 'НБУ', ''),
('09 НБУ-2', 'НБУ', 'lasko@abv.bg'),
('10 АУБ', 'АУБ', 'SVS000@aubg.bg'),
('11 ШУ-1', 'ШУ', 'ekp29@hotmail.com'),
('12 ШУ-2', 'ШУ', ''),
('13 ВТУ', 'ВТУ', 'nopcp@yahoo.com'),
('14 ИУВ-1', 'ИУВ', 'chapa@abv.bg'),
('15 ИУВ-2', 'ИУВ', 'starrboy_1999@yahoo.com'),
('16 ЮЗУ-1', 'ЮЗУ', 'stp_bg@abv.bg'),
('17 ЮЗУ-2', 'ЮЗУ', 'isg@mail.bulgaria.com'),
('18 ПУ-1', 'ПУ', 'moni@kodar.net'),
('19 ПУ-2', 'ПУ', 'ptj_96640@yahoo.com'),
('20 ТУГ', 'ПУ', '');

-- --------------------------------------------------------

--
-- Table structure for table `team_olympiad_leader`
--

CREATE TABLE `team_olympiad_leader` (
  `university` varchar(254) NOT NULL,
  `olympiad` varchar(254) NOT NULL,
  `leader` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team_olympiad_leader`
--

INSERT INTO `team_olympiad_leader` (`university`, `olympiad`, `leader`) VALUES
('АУБ', '5 МТП', 2),
('БСУ', '5 МТП', 1),
('ВТУ', '5 МТП', 5),
('ИУВ', '5 МТП', 6),
('НБУ', '5 МТП', 3),
('ПУ', '5 МТП', 8),
('СУ', '5 МТП', 2),
('ТУГ', '5 МТП', 9),
('ШУ', '5 МТП', 4),
('ЮЗУ', '5 МТП', 7);

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
  ADD PRIMARY KEY (`member`,`team`),
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
  ADD PRIMARY KEY (`olympiad`,`task_file`) USING BTREE;

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`name`),
  ADD KEY `university` (`university`);

--
-- Indexes for table `team_olympiad_leader`
--
ALTER TABLE `team_olympiad_leader`
  ADD PRIMARY KEY (`university`,`olympiad`,`leader`),
  ADD KEY `olympiad` (`olympiad`),
  ADD KEY `leader` (`leader`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

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
  ADD CONSTRAINT `participate_ibfk_1` FOREIGN KEY (`team`) REFERENCES `team` (`name`),
  ADD CONSTRAINT `participate_ibfk_2` FOREIGN KEY (`member`) REFERENCES `person` (`pid`);

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
-- Constraints for table `team_olympiad_leader`
--
ALTER TABLE `team_olympiad_leader`
  ADD CONSTRAINT `team_olympiad_leader_ibfk_1` FOREIGN KEY (`olympiad`) REFERENCES `olympiad` (`short_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `team_olympiad_leader_ibfk_2` FOREIGN KEY (`university`) REFERENCES `university` (`short_form`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `team_olympiad_leader_ibfk_3` FOREIGN KEY (`leader`) REFERENCES `person` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

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
