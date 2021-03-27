-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2021 at 01:47 PM
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
('17 РСОП', '17-то Републиканска студентска олимпиада по програмиране', 'СУ', '2005-05-01', ''),
('18 РСОП', '18-то Републиканска студентска олимпиада по програмиране', 'НБУ', '2006-05-14', 'http://nikolay.kirov.be/2006/Olympiad/index.html'),
('3 МТП', '3-ти Междууниверситетски турнир по програмиране', 'АУБ', '2000-06-01', 'https://infoman.musala.com/contests/139/1145/'),
('4 МТП', '4-ти Междууниверситетски турнир по програмиране', 'НБУ', '2001-01-01', ''),
('5 МТП', '5-ти Междууниверситетски турнир по програмиране', 'БСУ', '2002-05-19', 'http://nikolay.kirov.be/2002/5cp/cp.html'),
('6 МТП', '6-ти Междууниверситетски турнир по програмиране', 'ШУ', '2003-05-10', 'https://infoman.musala.com/contests/138/476/'),
('7 МТП', '7-ми Междууниверситетски турнир по програмиране', 'ПУ', '2004-05-08', 'https://infoman.musala.com/contests/137/475/');

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
  `team` varchar(255) NOT NULL,
  `olympiad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `participate`
--

INSERT INTO `participate` (`member`, `team`, `olympiad`) VALUES
(9, '01 БСУ-1', '5 МТП'),
(10, '01 БСУ-1', '5 МТП'),
(11, '01 БСУ-1', '5 МТП'),
(13, '02 БСУ-2', '5 МТП'),
(14, '02 БСУ-2', '5 МТП'),
(15, '02 БСУ-2', '5 МТП'),
(16, '03 БСУ-3', '5 МТП'),
(17, '03 БСУ-3', '5 МТП'),
(18, '04 СУ-1', '5 МТП'),
(19, '04 СУ-1', '5 МТП'),
(20, '04 СУ-1', '5 МТП'),
(21, '05 СУ-2', '5 МТП'),
(22, '05 СУ-2', '5 МТП'),
(23, '05 СУ-2', '5 МТП'),
(24, '06 СУ-3', '5 МТП'),
(25, '06 СУ-3', '5 МТП'),
(26, '06 СУ-3', '5 МТП'),
(27, '07 СУ-4', '5 МТП'),
(28, '07 СУ-4', '5 МТП'),
(29, '07 СУ-4', '5 МТП'),
(30, '08 НБУ-1', '5 МТП'),
(31, '08 НБУ-1', '5 МТП'),
(32, '08 НБУ-1', '5 МТП'),
(33, '09 НБУ-2', '5 МТП'),
(34, '09 НБУ-2', '5 МТП'),
(35, '09 НБУ-2', '5 МТП'),
(37, '10 АУБ', '5 МТП'),
(38, '10 АУБ', '5 МТП'),
(39, '11 ШУ-1', '5 МТП'),
(40, '11 ШУ-1', '5 МТП'),
(41, '11 ШУ-1', '5 МТП'),
(42, '12 ШУ-2', '5 МТП'),
(43, '12 ШУ-2', '5 МТП'),
(44, '12 ШУ-2', '5 МТП'),
(45, '13 ВТУ', '5 МТП'),
(46, '13 ВТУ', '5 МТП'),
(47, '13 ВТУ', '5 МТП'),
(48, '14 ИУВ-1', '5 МТП'),
(49, '14 ИУВ-1', '5 МТП'),
(50, '14 ИУВ-1', '5 МТП'),
(51, '15 ИУВ-2', '5 МТП'),
(52, '15 ИУВ-2', '5 МТП'),
(53, '15 ИУВ-2', '5 МТП'),
(54, '16 ЮЗУ-1', '5 МТП'),
(55, '16 ЮЗУ-1', '5 МТП'),
(56, '16 ЮЗУ-1', '5 МТП'),
(57, '17 ЮЗУ-2', '5 МТП'),
(58, '17 ЮЗУ-2', '5 МТП'),
(59, '17 ЮЗУ-2', '5 МТП'),
(60, '18 ПУ-1', '5 МТП'),
(61, '18 ПУ-1', '5 МТП'),
(62, '18 ПУ-1', '5 МТП'),
(63, '19 ПУ-2', '5 МТП'),
(64, '19 ПУ-2', '5 МТП'),
(65, '20 ТУГ', '5 МТП'),
(66, '20 ТУГ', '5 МТП'),
(67, '20 ТУГ', '5 МТП'),
(72, 'НБУ-1', '18 РСОП'),
(73, 'НБУ-1', '18 РСОП'),
(74, 'НБУ-1', '18 РСОП'),
(75, 'НБУ-2', '18 РСОП'),
(76, 'НБУ-2', '18 РСОП'),
(77, 'НБУ-2', '18 РСОП'),
(78, 'НБУ-3', '18 РСОП'),
(79, 'НБУ-3', '18 РСОП'),
(80, 'НБУ-3', '18 РСОП'),
(81, 'СУ-1', '18 РСОП'),
(82, 'СУ-1', '18 РСОП'),
(83, 'СУ-1', '18 РСОП'),
(84, 'СУ-2', '18 РСОП'),
(85, 'СУ-2', '18 РСОП'),
(86, 'СУ-2', '18 РСОП'),
(87, 'СУ-3', '18 РСОП'),
(88, 'СУ-3', '18 РСОП'),
(89, 'СУ-3', '18 РСОП'),
(90, 'ШУ-1', '18 РСОП'),
(91, 'ШУ-1', '18 РСОП'),
(92, 'ШУ-1', '18 РСОП'),
(93, 'ИУВ-2', '18 РСОП'),
(94, 'ШУ-7', '18 РСОП'),
(95, 'ШУ-7', '18 РСОП'),
(96, 'ШУ-2', '18 РСОП'),
(97, 'ШУ-2', '18 РСОП'),
(98, 'ШУ-2', '18 РСОП'),
(99, 'БСУ-1', '18 РСОП'),
(100, 'БСУ-1', '18 РСОП'),
(101, 'БСУ-1', '18 РСОП'),
(102, 'ПУ-1', '18 РСОП'),
(103, 'ПУ-1', '18 РСОП'),
(104, 'ПУ-1', '18 РСОП'),
(105, 'ПУ-2', '18 РСОП'),
(106, 'ПУ-2', '18 РСОП'),
(107, 'ПУ-2', '18 РСОП'),
(108, 'ВСУ-1', '18 РСОП'),
(109, 'ВСУ-1', '18 РСОП'),
(110, 'ВСУ-1', '18 РСОП'),
(111, 'ИУВ-1', '18 РСОП'),
(112, '12 ШУ-2', '18 РСОП'),
(113, 'ИУВ-1', '18 РСОП'),
(114, 'ТУ-1', '18 РСОП'),
(115, 'ТУ-1', '18 РСОП'),
(116, 'ТУ-1', '18 РСОП'),
(117, 'ЮЗУ-1', '18 РСОП'),
(118, 'ЮЗУ-1', '18 РСОП'),
(119, 'ЮЗУ-1', '18 РСОП'),
(120, 'ЮЗУ-2', '18 РСОП'),
(121, 'ЮЗУ-2', '18 РСОП'),
(122, 'ЮЗУ-2', '18 РСОП'),
(123, 'СУ-4', '18 РСОП'),
(124, 'СУ-4', '18 РСОП'),
(125, 'СУ-4', '18 РСОП'),
(126, 'СУ-5', '18 РСОП'),
(127, 'СУ-5', '18 РСОП'),
(128, 'СУ-5', '18 РСОП'),
(129, 'СУ-6', '18 РСОП'),
(130, 'СУ-6', '18 РСОП'),
(131, 'СУ-6', '18 РСОП'),
(132, 'СУ-7', '18 РСОП'),
(133, 'СУ-7', '18 РСОП'),
(134, 'СУ-7', '18 РСОП'),
(135, 'СУ-8', '18 РСОП'),
(136, 'СУ-8', '18 РСОП'),
(137, 'СУ-8', '18 РСОП');

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
(67, 'Николай', 'Николаев Чавдар'),
(68, 'Николай', 'Киров'),
(69, 'Динко', 'Гичев'),
(70, 'Галина', 'Момчева'),
(71, 'Иван ', 'Тренчев'),
(72, 'Дарин', 'Тодоров'),
(73, 'Тодор', 'Балабанов'),
(74, 'Христиан', 'Тодоров'),
(75, 'Клоди', 'Тирефор'),
(76, 'Георги', 'Георгиев'),
(77, 'Георги', 'Петров'),
(78, 'Иван', 'Харалампиев'),
(79, 'Христо', 'Грозданов'),
(80, 'Симеон', 'Илиев'),
(81, 'Валентин', 'Михов'),
(82, 'Светослав', 'Колев'),
(83, 'Иван', 'Анев'),
(84, 'Слави', 'Маринов'),
(85, 'Антон', 'Димитров'),
(86, 'Ангел', 'Джигаров'),
(87, 'Мартин', 'Гогов'),
(88, 'Антони', 'Средков'),
(89, 'Веселин', 'Георгиев'),
(90, 'Станислав Огнянов', ''),
(91, 'Пламен Марков', ''),
(92, 'Адриан Димитров', ''),
(93, 'Антония', 'Йовчева'),
(94, 'Петър', 'Петров'),
(95, 'Геннадий', 'Воробьов'),
(96, 'Петър', 'Иванов'),
(97, 'Юлиян', 'Димитров'),
(98, 'Симеон', 'Великов'),
(99, 'Илиян', 'Динев'),
(100, 'Семо', 'Кискинов'),
(101, 'Ася', 'Касидова'),
(102, 'Борис', 'Колев'),
(103, 'Антоан', 'Татеосян'),
(104, 'Георги', 'Стефанов'),
(105, 'Дамян', 'Митев'),
(106, 'Стефан', 'Джукелов'),
(107, 'Никола', 'Вълчанов'),
(108, 'Петър', 'Мичев'),
(109, 'Владимир', 'Блъсков'),
(110, 'Юри', 'Георгиев'),
(111, 'Милен', 'Станев'),
(112, 'Петър', 'Димитров'),
(113, 'Севгин', 'Гюджен'),
(114, 'Антония', 'Ташева'),
(115, 'Йордан', 'Иванов'),
(116, 'Мертол', 'Шахин'),
(117, 'Ибрахим', 'Топов'),
(118, 'Георги', 'Добринков'),
(119, 'Цветан', 'Тошев'),
(120, 'Атанас', 'Ташев'),
(121, 'Методи', 'Апостолов'),
(122, 'Радослав', 'Асенов'),
(123, 'Никола', 'Борисов'),
(124, 'Васил', 'Люцканов'),
(125, 'Точо', 'Точев'),
(126, 'Ивайло', 'Бояджиев'),
(127, 'Боррис', 'Даскалов'),
(128, 'Георги', 'Андреев'),
(129, 'Орлин', 'Тенчев'),
(130, 'Тодор', 'Петров'),
(131, 'Антон', 'Желязков'),
(132, 'Христо', 'Стефанов'),
(133, 'Веселин ', 'Георгиев'),
(134, 'Гико', 'Копев'),
(135, 'Йордан', 'Зайков'),
(136, 'Стефан', 'Цвятков'),
(137, 'Стефан', 'Драгнев'),
(138, 'Александрина', 'Мурджева'),
(139, 'Динко', 'Гичев'),
(140, 'Каталина', 'Григорова'),
(141, 'Коста', 'Гъров'),
(142, 'Кристиян', 'Хараламбиев'),
(143, 'Милослав', 'Средков'),
(144, 'Николай', 'Киров'),
(145, 'Петя', 'Асенова');

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
('17 РСОП', 'БСУ-1', 1, 0),
('17 РСОП', 'НБУ-1', 3, 0),
('17 РСОП', 'ПУ-1', 3, 0),
('17 РСОП', 'РУ-1', 3, 0),
('17 РСОП', 'СУ-1', 9, 0),
('17 РСОП', 'УНСС-1', 0, 0),
('17 РСОП', 'ШУ-1', 4, 0),
('18 РСОП', 'БСУ-1', 2, 232),
('18 РСОП', 'ВСУ-1', 2, 236),
('18 РСОП', 'ИУВ-1', 1, 34),
('18 РСОП', 'НБУ-1', 1, 18),
('18 РСОП', 'НБУ-2', 1, 151),
('18 РСОП', 'НБУ-3', 1, 170),
('18 РСОП', 'ПУ-1', 2, 159),
('18 РСОП', 'ПУ-2', 3, 534),
('18 РСОП', 'СУ-1', 8, 1123),
('18 РСОП', 'СУ-2', 8, 908),
('18 РСОП', 'СУ-3', 6, 776),
('18 РСОП', 'СУ-4', 8, 910),
('18 РСОП', 'СУ-5', 8, 1020),
('18 РСОП', 'СУ-6', 6, 1169),
('18 РСОП', 'СУ-7', 4, 725),
('18 РСОП', 'СУ-8', 3, 437),
('18 РСОП', 'ТУ-1', 3, 593),
('18 РСОП', 'ШУ-1', 3, 408),
('18 РСОП', 'ШУ-2', 3, 459),
('18 РСОП', 'ШУ-7', 4, 759),
('18 РСОП', 'ЮЗУ-1', 1, 195),
('18 РСОП', 'ЮЗУ-2', 0, 0),
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
('5 МТП', '20 ТУГ', 3, 490),
('6 МТП', '1 Shumen University Team-1', 2, 123),
('6 МТП', '10 Technical University of Gabrovo', 0, 0),
('6 МТП', '11 Plovdiv University Team-1', 3, 386),
('6 МТП', '12 New Bulgarian University', 1, 62),
('6 МТП', '13 Sofia University Team-2', 7, 1088),
('6 МТП', '14 Shumen University Team-2', 3, 324),
('6 МТП', '15 American University in Bulgaria', 5, 809),
('6 МТП', '16 Sofia University Team-3', 5, 339),
('6 МТП', '17 South-West University Blagoevgrad Team-1', 2, 603),
('6 МТП', '2 Sofia University Team-1', 7, 773),
('6 МТП', '3 Plovdiv University Team-2', 3, 522),
('6 МТП', '4 Varna Free University', 0, 0),
('6 МТП', '5 Shumen University Team-3', 0, 0),
('6 МТП', '6 Varna Economic University', 3, 460),
('6 МТП', '7 Rousse University', 1, 316),
('6 МТП', '8 South-West University Blagoevgrad Team-2', 0, 0),
('6 МТП', '9 Sofia University Team-4', 6, 809),
('7 МТП', 'АУБ-1', 2, 158),
('7 МТП', 'БСУ-1', 1, 180),
('7 МТП', 'ВСУ-1', 0, 0),
('7 МТП', 'ВСУ-2', 0, 0),
('7 МТП', 'ВУ-1', 0, 0),
('7 МТП', 'ИУВ-1', 2, 477),
('7 МТП', 'ИУВ-2', 1, 380),
('7 МТП', 'НБУ-1', 3, 349),
('7 МТП', 'ПУ-1', 6, 1144),
('7 МТП', 'ПУ-2', 1, 37),
('7 МТП', 'ПУ-3', 1, 74),
('7 МТП', 'РУ-1', 0, 0),
('7 МТП', 'СУ-1', 6, 810),
('7 МТП', 'СУ-2', 6, 406),
('7 МТП', 'СУ-3', 6, 723),
('7 МТП', 'СУ-4', 6, 810),
('7 МТП', 'ШУ-1', 2, 435),
('7 МТП', 'ШУ-2', 1, 76),
('7 МТП', 'ЮУ-1', 0, 0);

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
('5 МТП', 'shsh'),
('6 МТП', 'problems');

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
('1 Shumen University Team-1', 'ШУ', ''),
('10 Technical University of Gabrovo', 'ТУГ', ''),
('10 АУБ', 'АУБ', 'SVS000@aubg.bg'),
('11 Plovdiv University Team-1', 'ПУ', ''),
('11 ШУ-1', 'ШУ', 'ekp29@hotmail.com'),
('12 New Bulgarian University', 'НБУ', ''),
('12 ШУ-2', 'ШУ', ''),
('13 Sofia University Team-2', 'СУ', ''),
('13 ВТУ', 'ВТУ', 'nopcp@yahoo.com'),
('14 Shumen University Team-2', 'ШУ', ''),
('14 ИУВ-1', 'ИУВ', 'chapa@abv.bg'),
('15 American University in Bulgaria', 'АУБ', ''),
('15 ИУВ-2', 'ИУВ', 'starrboy_1999@yahoo.com'),
('16 Sofia University Team-3', 'СУ', ''),
('16 ЮЗУ-1', 'ЮЗУ', 'stp_bg@abv.bg'),
('17 South-West University Blagoevgrad Team-1', 'ЮЗУ', ''),
('17 ЮЗУ-2', 'ЮЗУ', 'isg@mail.bulgaria.com'),
('18 ПУ-1', 'ПУ', 'moni@kodar.net'),
('19 ПУ-2', 'ПУ', 'ptj_96640@yahoo.com'),
('2 Sofia University Team-1', 'СУ', ''),
('20 ТУГ', 'ПУ', ''),
('3 Plovdiv University Team-2', 'ПУ', ''),
('4 Varna Free University', 'ВСУ', ''),
('5 Shumen University Team-3', 'ШУ', ''),
('6 Varna Economic University', 'ИУВ', ''),
('7 Rousse University', 'РУ', ''),
('8 South-West University Blagoevgrad Team-2', 'ЮЗУ', ''),
('9 Sofia University Team-4', 'СУ', ''),
('АУБ-1', 'АУБ', ''),
('БСУ-1', 'БСУ', ''),
('ВСУ-1', 'ВСУ', ''),
('ВСУ-2', 'ВСУ', ''),
('ВУ-1', 'ВТУ', ''),
('ИУВ-1', 'ИУВ', ''),
('ИУВ-2', 'ИУВ', ''),
('НБУ-1', 'НБУ', ''),
('НБУ-2', 'НБУ', ''),
('НБУ-3', 'НБУ', ''),
('ПУ-1', 'ПУ', ''),
('ПУ-2', 'ПУ', ''),
('ПУ-3', 'ПУ', ''),
('РУ-1', 'РУ', ''),
('СУ-1', 'СУ', ''),
('СУ-2', 'СУ', ''),
('СУ-3', 'СУ', ''),
('СУ-4', 'СУ', ''),
('СУ-5', 'СУ', ''),
('СУ-6', 'СУ', ''),
('СУ-7', 'СУ', ''),
('СУ-8', 'СУ', ''),
('ТУ-1', 'ТУС', ''),
('УНСС-1', 'УНСС', ''),
('ШУ-1', 'ШУ', ''),
('ШУ-2', 'ШУ', ''),
('ШУ-7', 'ШУ', ''),
('ЮЗУ-1', 'ЮЗУ', ''),
('ЮЗУ-2', 'ЮЗУ', ''),
('ЮУ-1', 'ЮЗУ', '');

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
('АУБ', '17 РСОП', 3),
('АУБ', '5 МТП', 2),
('БСУ', '17 РСОП', 139),
('БСУ', '18 РСОП', 69),
('БСУ', '5 МТП', 1),
('ВСУ', '18 РСОП', 70),
('ВТУ', '5 МТП', 5),
('ИУВ', '18 РСОП', 6),
('ИУВ', '5 МТП', 6),
('НБУ', '17 РСОП', 144),
('НБУ', '17 РСОП', 145),
('НБУ', '18 РСОП', 68),
('НБУ', '5 МТП', 3),
('ПУ', '17 РСОП', 8),
('ПУ', '17 РСОП', 141),
('ПУ', '18 РСОП', 8),
('ПУ', '5 МТП', 8),
('РУ', '17 РСОП', 140),
('СУ', '17 РСОП', 2),
('СУ', '17 РСОП', 142),
('СУ', '17 РСОП', 143),
('СУ', '18 РСОП', 2),
('СУ', '5 МТП', 2),
('ТУГ', '17 РСОП', 9),
('ТУГ', '5 МТП', 9),
('УНСС', '17 РСОП', 138),
('ШУ', '17 РСОП', 4),
('ШУ', '18 РСОП', 4),
('ШУ', '5 МТП', 4),
('ЮЗУ', '17 РСОП', 144),
('ЮЗУ', '18 РСОП', 71),
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
  ADD PRIMARY KEY (`member`,`team`,`olympiad`),
  ADD KEY `olympiad` (`olympiad`),
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
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

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
  ADD CONSTRAINT `participate_ibfk_1` FOREIGN KEY (`member`) REFERENCES `person` (`pid`),
  ADD CONSTRAINT `participate_ibfk_2` FOREIGN KEY (`olympiad`) REFERENCES `olympiad` (`short_name`),
  ADD CONSTRAINT `participate_ibfk_3` FOREIGN KEY (`team`) REFERENCES `team` (`name`);

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
