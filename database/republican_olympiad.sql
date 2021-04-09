-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2021 at 08:08 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
('19 РСОП', '19 Републиканска Студентска Олимпиада по Програмиране', 'ВСУ', '2007-05-05', 'https://infoman.musala.com/contests/134/472/'),
('20 РСОП', '20-та Републиканска студентска олимпиада по програмиране', 'СУ', '2008-05-10', 'https://infoman.musala.com/contests/133/471/'),
('21 РСОП', '21-ва Републиканска Студентска Олимпиада по Програмиране', 'ИУВ', '2009-05-16', 'https://infoman.musala.com/contests/132/470/'),
('22 РСОП', '22-ра Републиканска Студентска Олимпиада по Програмиране', 'РУ', '2010-04-17', 'https://infoman.musala.com/contests/131/469/'),
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
(137, 'СУ-8', '18 РСОП'),
(146, 'СУ-1', '20 РСОП'),
(147, 'СУ-1', '20 РСОП'),
(148, 'СУ-1', '20 РСОП'),
(149, 'СУ-4', '20 РСОП'),
(150, 'СУ-4', '20 РСОП'),
(151, 'СУ-4', '20 РСОП'),
(152, 'СУ-6', '20 РСОП'),
(153, 'СУ-6', '20 РСОП'),
(154, 'СУ-6', '20 РСОП'),
(155, 'СУ-10', '20 РСОП'),
(156, 'СУ-10', '20 РСОП'),
(157, 'СУ-10', '20 РСОП'),
(158, 'СУ-2', '20 РСОП'),
(159, 'СУ-2', '20 РСОП'),
(160, 'СУ-2', '20 РСОП'),
(161, 'СУ-9', '20 РСОП'),
(162, 'СУ-9', '20 РСОП'),
(163, 'СУ-9', '20 РСОП'),
(164, 'СУ-5', '20 РСОП'),
(165, 'СУ-5', '20 РСОП'),
(166, 'СУ-5', '20 РСОП'),
(167, 'СУ-3', '20 РСОП'),
(168, 'СУ-3', '20 РСОП'),
(169, 'СУ-3', '20 РСОП'),
(170, 'СУ-8', '20 РСОП'),
(171, 'СУ-8', '20 РСОП'),
(172, 'СУ-8', '20 РСОП'),
(173, 'СУ-7', '20 РСОП'),
(174, 'СУ-7', '20 РСОП'),
(175, 'СУ-7', '20 РСОП'),
(175, 'ШУ-1', '20 РСОП'),
(176, 'ШУ-1', '20 РСОП'),
(178, 'ШУ-1', '20 РСОП'),
(179, 'РУ-1', '20 РСОП'),
(180, 'РУ-1', '20 РСОП'),
(181, 'РУ-1', '20 РСОП'),
(182, 'ТУ-1', '20 РСОП'),
(183, 'ТУ-1', '20 РСОП'),
(184, 'ТУ-1', '20 РСОП'),
(185, 'ПУ-1', '20 РСОП'),
(186, 'ПУ-1', '20 РСОП'),
(187, 'ПУ-1', '20 РСОП'),
(188, 'ШУ-2', '20 РСОП'),
(189, 'ШУ-2', '20 РСОП'),
(190, 'ШУ-2', '20 РСОП'),
(191, 'НБУ-1', '20 РСОП'),
(192, 'НБУ-1', '20 РСОП'),
(193, 'НБУ-1', '20 РСОП'),
(194, 'ШУ-4', '20 РСОП'),
(195, 'ШУ-4', '20 РСОП'),
(196, 'ШУ-4', '20 РСОП'),
(197, 'НБУ-2', '20 РСОП'),
(198, 'НБУ-2', '20 РСОП'),
(199, 'НБУ-2', '20 РСОП'),
(200, 'ВСУ-1', '20 РСОП'),
(201, 'ВСУ-1', '20 РСОП'),
(202, 'ВСУ-1', '20 РСОП'),
(203, 'БСУ-2', '20 РСОП'),
(204, 'БСУ-2', '20 РСОП'),
(205, 'БСУ-2', '20 РСОП'),
(206, 'РУ-2', '20 РСОП'),
(207, 'РУ-2', '20 РСОП'),
(208, 'РУ-2', '20 РСОП'),
(209, 'ВСУ-2', '20 РСОП'),
(210, 'ВСУ-2', '20 РСОП'),
(211, 'ВСУ-2', '20 РСОП'),
(212, 'АУБ-1', '20 РСОП'),
(213, 'АУБ-1', '20 РСОП'),
(214, 'АУБ-1', '20 РСОП'),
(215, 'ВУ-1', '20 РСОП'),
(216, 'ВУ-1', '20 РСОП'),
(217, 'ВУ-1', '20 РСОП'),
(218, 'ВСУ-1', '20 РСОП'),
(219, 'ВСУ-1', '20 РСОП'),
(220, 'ВСУ-1', '20 РСОП'),
(221, 'ВСУ-2', '20 РСОП'),
(222, 'ВСУ-2', '20 РСОП'),
(223, 'ВСУ-2', '20 РСОП'),
(224, 'БСУ-1', '20 РСОП'),
(225, 'БСУ-1', '20 РСОП'),
(226, 'БСУ-1', '20 РСОП'),
(227, 'ШУ-3', '20 РСОП'),
(228, 'ШУ-3', '20 РСОП'),
(229, 'ШУ-3', '20 РСОП'),
(230, 'ТУ-2', '20 РСОП'),
(231, 'ТУ-2', '20 РСОП'),
(232, 'ТУ-2', '20 РСОП'),
(233, 'ТУГ-1', '20 РСОП'),
(234, 'ТУГ-1', '20 РСОП'),
(235, 'ТУГ-1', '20 РСОП'),
(249, 'НБУ-1', '21 РСОП'),
(250, 'НБУ-1', '21 РСОП'),
(251, 'НБУ-1', '21 РСОП'),
(252, 'НБУ-2', '21 РСОП'),
(253, 'НБУ-2', '21 РСОП'),
(254, 'НБУ-2', '21 РСОП'),
(255, 'НБУ-3', '21 РСОП'),
(256, 'НБУ-3', '21 РСОП'),
(257, 'НБУ-3', '21 РСОП'),
(258, 'ЮЗУ-1', '21 РСОП'),
(259, 'ЮЗУ-1', '21 РСОП'),
(260, 'ЮЗУ-1', '21 РСОП'),
(261, 'ТУ-1', '21 РСОП'),
(262, 'ТУ-1', '21 РСОП'),
(263, 'ТУ-1', '21 РСОП'),
(264, 'ТУ-2', '21 РСОП'),
(265, 'ТУ-2', '21 РСОП'),
(266, 'ТУ-2', '21 РСОП'),
(267, 'ПУ-1', '21 РСОП'),
(268, 'ПУ-1', '21 РСОП'),
(269, 'ПУ-1', '21 РСОП'),
(270, 'ВСУ-1', '21 РСОП'),
(271, 'ВСУ-1', '21 РСОП'),
(272, 'ВСУ-1', '21 РСОП'),
(273, 'ВСУ-2', '21 РСОП'),
(274, 'ВСУ-2', '21 РСОП'),
(275, 'ВСУ-2', '21 РСОП'),
(276, 'ВСУ-3', '21 РСОП'),
(277, 'ВСУ-3', '21 РСОП'),
(278, 'ВСУ-3', '21 РСОП'),
(279, 'СУ-1', '21 РСОП'),
(280, 'СУ-1', '21 РСОП'),
(281, 'СУ-1', '21 РСОП'),
(282, 'СУ-2', '21 РСОП'),
(283, 'СУ-2', '21 РСОП'),
(284, 'СУ-2', '21 РСОП'),
(285, 'СУ-3', '21 РСОП'),
(286, 'СУ-3', '21 РСОП'),
(287, 'СУ-3', '21 РСОП'),
(288, 'СУ-4', '21 РСОП'),
(289, 'СУ-4', '21 РСОП'),
(290, 'СУ-4', '21 РСОП'),
(291, 'РУ-1', '21 РСОП'),
(292, 'РУ-1', '21 РСОП'),
(293, 'РУ-1', '21 РСОП'),
(294, 'РУ-2', '21 РСОП'),
(295, 'РУ-2', '21 РСОП'),
(296, 'РУ-2', '21 РСОП'),
(297, 'ШУ-1', '21 РСОП'),
(298, 'ШУ-1', '21 РСОП'),
(299, 'ШУ-1', '21 РСОП'),
(300, 'ШУ-2', '21 РСОП'),
(301, 'ШУ-2', '21 РСОП'),
(302, 'ШУ-2', '21 РСОП'),
(303, 'ШУ-3', '21 РСОП'),
(304, 'ШУ-3', '21 РСОП'),
(305, 'ШУ-3', '21 РСОП');

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
(145, 'Петя', 'Асенова'),
(146, 'Васил', 'Люцканов'),
(147, 'Преслав', 'Ле'),
(148, 'Искрен', 'Чернев'),
(149, 'Орлин', 'Тенчев'),
(150, 'Антон', 'Желязков'),
(151, 'Свилен', 'Марчев'),
(152, 'Емил', 'Ибришимов'),
(153, 'Емил', 'Баронов'),
(154, 'Деян', 'Симеонов'),
(155, 'Йосиф', 'Йосифов'),
(156, 'Момчил', 'Томов'),
(157, 'Господин', 'Бодуров'),
(158, 'Боян', 'Лазов'),
(159, 'Михаил', 'Минков'),
(160, 'Веселина', 'Буюклиева'),
(161, 'Деница', 'Генчева'),
(162, 'Десислава', 'Христова'),
(163, 'Петър', 'Иванов'),
(164, 'Боян', 'Лазов'),
(165, 'Михаил', 'Минков'),
(166, 'Веселина', 'Буюклиева'),
(167, 'Борис', 'Даскалов'),
(168, 'Ивайло', 'Бояджиев'),
(169, 'Матей', 'Нейков'),
(170, 'Кирил', 'Калчев'),
(171, 'Деян', 'Дойчев'),
(172, 'Момчил', 'Иванов'),
(173, 'Недялко', 'Присадников'),
(174, 'Васил', 'Раев'),
(175, 'Тодор', 'Цонков'),
(176, 'Пламен', 'Боянов Марков'),
(177, 'Георги', 'Господинов Димитров'),
(178, 'Виктор', 'Бориславов Балинов'),
(179, 'Христо', 'Илков Илиев'),
(180, 'Светослав', 'Ивайлов Касабов'),
(181, 'Станислав', 'Димчев Костадинов'),
(182, 'Антония', 'Тодорова Ташева'),
(183, 'Мертол', 'Шерифов Шахин'),
(184, 'Емануил', 'Красимиров Владев'),
(185, 'Траян', 'Атанасов Момков'),
(186, 'Георги', 'Димов Димов'),
(187, 'Тодор', 'Минков Рачовски'),
(188, 'Дафинка', 'Николаева Чирилкова'),
(189, 'Недялко', 'Василев Недялков'),
(190, 'Стефан', 'Боянов Стратиев'),
(191, 'Георги', 'Иванов Петров'),
(192, 'Владимир', 'Олегов Горчев'),
(193, 'Атанас', 'Андреев Андреев'),
(194, 'Адриан', 'Валентинов Атанасов'),
(195, 'Николай', 'Димитров Тихолов'),
(196, 'Димо', 'Миланов Малчев'),
(197, 'Лазар', 'Едуардов Лазаров'),
(198, 'Борис', 'Стоянов Тодоров'),
(199, 'Божидар', 'Златев Златев'),
(200, 'Петър', 'Бойков Мичев'),
(201, 'Владимир', 'Велинов Блъсков'),
(202, 'Димитър', 'Панчев Иванов'),
(203, 'Семо', 'Иванов Кискинов'),
(204, 'Антон', 'Емилов Калчев'),
(205, 'Иван', 'Александров Илиев'),
(206, 'Павел', 'Иванов Петков'),
(207, 'Ива', 'Божидарова Цветкова'),
(208, 'Венцилав', 'Красимиров Русев'),
(209, 'Крум', 'Валериев Крумов'),
(210, 'Николай', 'Драгомиров Николов'),
(211, 'Пламен', 'Димитров Иванов'),
(212, 'Атанас', 'Дюлгеров'),
(213, 'Борис', 'Трендафилов'),
(214, 'Филип', 'Минев'),
(215, 'Любомир', 'Русев'),
(216, 'Мария', 'Стефанова Джумалиева'),
(217, 'Мартин', 'Олегов Александров'),
(218, 'Димитър', 'Пламенов Янчев'),
(219, 'Цветан', 'Детелинов Смърдански'),
(220, 'Николай', 'Александров Стоянов'),
(221, 'Дани', 'Иванов Лазаров'),
(222, 'Пламена', 'Сашкова Маринова'),
(223, 'Милен', 'Маринов Стефанов'),
(224, 'Иван', 'Атанасов Миховски'),
(225, 'Димитър', 'Николов Тодоров'),
(226, 'Деян', 'Георгиев Мавров'),
(227, 'Мирослав', 'Пейчев Стойнов'),
(228, 'Владимир', 'Димов Стоянов'),
(229, 'Венцислав', 'Любомиров Попов'),
(230, 'Ангел', 'Благоев Чолаков'),
(231, 'Светлин', 'Николов Николов'),
(232, 'Станислав', 'Стефанов Асенов'),
(233, 'Ивайло', 'Тихомиров Беле'),
(234, 'Драгомир', 'Атанасов Иванов'),
(235, 'Георги', 'Спасов Цанев'),
(236, 'Стоян', 'Бонев'),
(237, 'Динко', 'Гичев'),
(238, 'Димитър', 'Минчев'),
(239, 'Стойчо', 'Стойчев'),
(240, 'Галина', 'Момчева'),
(241, 'Веселина', 'Спасова'),
(242, 'Николай', 'Киров'),
(243, 'Петя', 'Асенова'),
(244, 'Каталина', 'Григорова'),
(245, 'Станимир', 'Йорданов'),
(246, 'Надежда', 'Ангелова'),
(247, 'Милко', 'Янков'),
(248, 'Иван', 'Тренчев'),
(249, 'Георги', 'Петров'),
(250, 'Александър', 'Ненков'),
(251, 'Атанас', 'Андреев'),
(252, 'Лазар', 'Лазаров'),
(253, 'Борис', 'Тодоров'),
(254, 'Божидар', 'Златев'),
(255, 'Кръстин', 'Кръстев'),
(256, 'Борислав', 'Иванов'),
(257, 'Емануил', 'Дамянов'),
(258, 'Светослав', 'Славков'),
(259, 'Кирил', 'Гащеовски'),
(260, 'Благовест', 'Касабов'),
(261, 'Антония', 'Ташева'),
(262, 'Емануил', 'Владев'),
(263, 'Костадин', 'Костадинов'),
(264, 'Виктор', 'Попов'),
(265, 'Константин', 'Ангелов'),
(266, 'Валентин', 'Бахтев'),
(267, 'Борислав', 'Митрев'),
(268, 'Георги', 'Спасов'),
(269, 'Васил', 'Рангелов'),
(270, 'Владимир', 'Блъсков'),
(271, 'Петър', 'Мичев'),
(272, 'Константин', 'Щерев'),
(273, 'Преслав', 'Дудев'),
(274, 'Даниел', 'Желязков'),
(275, 'Добромир', 'Енчев'),
(276, 'Николай', 'Димитров'),
(277, 'Пламен', 'Иванов'),
(278, 'Слав', 'Кукенски'),
(279, 'Искрен', 'Чернев'),
(280, 'Преслав', 'Дат Ле'),
(281, 'Васил', 'Люцканов'),
(282, 'Александър', 'Георгиев'),
(283, 'Борис', 'Странджев'),
(284, 'Ивайло', 'Странджев'),
(285, 'Борис', 'Даскалов'),
(286, 'Веселин', 'Георгиев'),
(287, 'Матей', 'Нейков'),
(288, 'Свилен', 'Марчев'),
(289, 'Петър', 'Иванов'),
(290, 'Васил', 'Великов'),
(291, 'Венцислав', 'Русев'),
(292, 'Георги', 'Вачев'),
(293, 'Деян', 'Иванов'),
(294, 'Александър', 'Илиев'),
(295, 'Александър', 'Александров'),
(296, 'Илияна', 'Трифонова'),
(297, 'Адриан', 'Атанасов'),
(298, 'Калоян', 'Куртев'),
(299, 'Димо', 'Малчев'),
(300, 'Стефан', 'Стратиев'),
(301, 'Недялко', 'Недялков'),
(302, 'Дафинка', 'Чирилкова'),
(303, 'Пламен', 'Марков'),
(304, 'Георги', 'Димитров'),
(305, 'Виктор', 'Балинов');

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
('17 РСОП', 'СУ-6', 9, 906),
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
('19 РСОП', 'АУБ-1', 2, 0),
('19 РСОП', 'БСУ-1', 3, 0),
('19 РСОП', 'ВСУ-1', 2, 0),
('19 РСОП', 'ИУВ-1', 1, 0),
('19 РСОП', 'РУ-1', 2, 0),
('19 РСОП', 'СУ-1', 8, 0),
('19 РСОП', 'ТУ-1', 4, 0),
('19 РСОП', 'ТУГ-1', 2, 0),
('19 РСОП', 'ШУ-1', 3, 0),
('20 РСОП', 'АУБ-1', 1, 23),
('20 РСОП', 'БСУ-1', 1, 131),
('20 РСОП', 'БСУ-2', 3, 370),
('20 РСОП', 'ВИУ-1', 1, 113),
('20 РСОП', 'ВИУ-2', 1, 128),
('20 РСОП', 'ВСУ-1', 3, 303),
('20 РСОП', 'ВСУ-2', 2, 387),
('20 РСОП', 'ВУ-1', 1, 35),
('20 РСОП', 'НБУ-1', 2, 197),
('20 РСОП', 'НБУ-2', 2, 291),
('20 РСОП', 'ПУ-1', 3, 395),
('20 РСОП', 'РУ-1', 3, 346),
('20 РСОП', 'РУ-2', 2, 370),
('20 РСОП', 'СУ-1', 9, 475),
('20 РСОП', 'СУ-10', 8, 948),
('20 РСОП', 'СУ-2', 8, 1065),
('20 РСОП', 'СУ-3', 7, 578),
('20 РСОП', 'СУ-4', 9, 656),
('20 РСОП', 'СУ-5', 8, 1172),
('20 РСОП', 'СУ-7', 5, 547),
('20 РСОП', 'СУ-8', 5, 342),
('20 РСОП', 'СУ-9', 8, 1108),
('20 РСОП', 'ТУ-1', 3, 350),
('20 РСОП', 'ТУ-2', 1, 161),
('20 РСОП', 'ТУГ-1', 1, 233),
('20 РСОП', 'ШУ-1', 3, 77),
('20 РСОП', 'ШУ-2', 2, 161),
('20 РСОП', 'ШУ-3', 1, 132),
('20 РСОП', 'ШУ-4', 2, 202),
('21 РСОП', 'АУ-2', 2, 479),
('21 РСОП', 'БСУ-1', 1, 59),
('21 РСОП', 'БСУ-2', 1, 320),
('21 РСОП', 'ВСУ-1', 3, 441),
('21 РСОП', 'ВСУ-2', 1, 73),
('21 РСОП', 'ВСУ-3', 0, 0),
('21 РСОП', 'ИУ-3', 0, 0),
('21 РСОП', 'ИУ-4', 1, 75),
('21 РСОП', 'ИУВ-1', 2, 316),
('21 РСОП', 'ИУВ-2', 1, 86),
('21 РСОП', 'НБУ-1', 2, 277),
('21 РСОП', 'НБУ-2', 0, 0),
('21 РСОП', 'НБУ-3', 0, 0),
('21 РСОП', 'ПУ-1', 1, 365),
('21 РСОП', 'РУ-1', 2, 266),
('21 РСОП', 'РУ-2', 0, 0),
('21 РСОП', 'СУ-1', 10, 1361),
('21 РСОП', 'СУ-2', 9, 1295),
('21 РСОП', 'СУ-3', 8, 652),
('21 РСОП', 'СУ-4', 6, 1168),
('21 РСОП', 'ТУ-1', 3, 709),
('21 РСОП', 'ТУ-2', 3, 442),
('21 РСОП', 'ШУ-1', 4, 497),
('21 РСОП', 'ШУ-2', 4, 1038),
('21 РСОП', 'ШУ-3', 5, 404),
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
('15 American University in Bulgaria', 'АУБ'),
('АУ-2', 'АУБ'),
('АУБ-1', 'АУБ'),
('01 БСУ-1', 'БСУ'),
('02 БСУ-2', 'БСУ'),
('03 БСУ-3', 'БСУ'),
('БСУ-1', 'БСУ'),
('БСУ-2', 'БСУ'),
('ВИУ-1', 'ВИУ'),
('ВИУ-2', 'ВИУ'),
('4 Varna Free University', 'ВСУ'),
('ВСУ-1', 'ВСУ'),
('ВСУ-2', 'ВСУ'),
('ВСУ-3', 'ВСУ'),
('13 ВТУ', 'ВТУ'),
('ВУ-1', 'ВТУ'),
('14 ИУВ-1', 'ИУВ'),
('15 ИУВ-2', 'ИУВ'),
('6 Varna Economic University', 'ИУВ'),
('ИУ-3', 'ИУВ'),
('ИУ-4', 'ИУВ'),
('ИУВ-1', 'ИУВ'),
('ИУВ-2', 'ИУВ'),
('08 НБУ-1', 'НБУ'),
('09 НБУ-2', 'НБУ'),
('12 New Bulgarian University', 'НБУ'),
('НБУ-1', 'НБУ'),
('НБУ-2', 'НБУ'),
('НБУ-3', 'НБУ'),
('11 Plovdiv University Team-1', 'ПУ'),
('18 ПУ-1', 'ПУ'),
('19 ПУ-2', 'ПУ'),
('20 ТУГ', 'ПУ'),
('3 Plovdiv University Team-2', 'ПУ'),
('ПУ-1', 'ПУ'),
('ПУ-2', 'ПУ'),
('ПУ-3', 'ПУ'),
('7 Rousse University', 'РУ'),
('РУ-1', 'РУ'),
('РУ-2', 'РУ'),
('04 СУ-1', 'СУ'),
('05 СУ-2', 'СУ'),
('06 СУ-3', 'СУ'),
('07 СУ-4', 'СУ'),
('13 Sofia University Team-2', 'СУ'),
('16 Sofia University Team-3', 'СУ'),
('2 Sofia University Team-1', 'СУ'),
('9 Sofia University Team-4', 'СУ'),
('СУ-1', 'СУ'),
('СУ-10', 'СУ'),
('СУ-2', 'СУ'),
('СУ-3', 'СУ'),
('СУ-4', 'СУ'),
('СУ-5', 'СУ'),
('СУ-6', 'СУ'),
('СУ-7', 'СУ'),
('СУ-8', 'СУ'),
('СУ-9', 'СУ'),
('10 Technical University of Gabrovo', 'ТУГ'),
('ТУГ-1', 'ТУГ'),
('ТУ-1', 'ТУС'),
('ТУ-2', 'ТУС'),
('УНСС-1', 'УНСС'),
('1 Shumen University Team-1', 'ШУ'),
('11 ШУ-1', 'ШУ'),
('12 ШУ-2', 'ШУ'),
('14 Shumen University Team-2', 'ШУ'),
('5 Shumen University Team-3', 'ШУ'),
('ШУ-1', 'ШУ'),
('ШУ-2', 'ШУ'),
('ШУ-3', 'ШУ'),
('ШУ-4', 'ШУ'),
('ШУ-7', 'ШУ'),
('16 ЮЗУ-1', 'ЮЗУ'),
('17 South-West University Blagoevgrad Team-1', 'ЮЗУ'),
('17 ЮЗУ-2', 'ЮЗУ'),
('8 South-West University Blagoevgrad Team-2', 'ЮЗУ'),
('ЮЗУ-1', 'ЮЗУ'),
('ЮЗУ-2', 'ЮЗУ'),
('ЮУ-1', 'ЮЗУ');

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
('АУБ', '20 РСОП', 236),
('АУБ', '5 МТП', 2),
('БСУ', '17 РСОП', 139),
('БСУ', '18 РСОП', 69),
('БСУ', '20 РСОП', 237),
('БСУ', '20 РСОП', 238),
('БСУ', '5 МТП', 1),
('ВИУ', '20 РСОП', 239),
('ВСУ', '18 РСОП', 70),
('ВСУ', '20 РСОП', 240),
('ВСУ', '20 РСОП', 241),
('ВТУ', '20 РСОП', 5),
('ВТУ', '5 МТП', 5),
('ИУВ', '18 РСОП', 6),
('ИУВ', '5 МТП', 6),
('НБУ', '17 РСОП', 144),
('НБУ', '17 РСОП', 145),
('НБУ', '18 РСОП', 68),
('НБУ', '20 РСОП', 242),
('НБУ', '20 РСОП', 243),
('НБУ', '5 МТП', 3),
('ПУ', '17 РСОП', 8),
('ПУ', '17 РСОП', 141),
('ПУ', '18 РСОП', 8),
('ПУ', '20 РСОП', 8),
('ПУ', '5 МТП', 8),
('РУ', '17 РСОП', 140),
('РУ', '20 РСОП', 244),
('СУ', '17 РСОП', 2),
('СУ', '17 РСОП', 142),
('СУ', '17 РСОП', 143),
('СУ', '18 РСОП', 2),
('СУ', '20 РСОП', 2),
('СУ', '20 РСОП', 18),
('СУ', '5 МТП', 2),
('ТУГ', '17 РСОП', 9),
('ТУГ', '20 РСОП', 245),
('ТУГ', '5 МТП', 9),
('ТУС', '20 РСОП', 246),
('УНСС', '17 РСОП', 138),
('ШУ', '17 РСОП', 4),
('ШУ', '18 РСОП', 4),
('ШУ', '20 РСОП', 4),
('ШУ', '20 РСОП', 247),
('ШУ', '5 МТП', 4),
('ЮЗУ', '17 РСОП', 144),
('ЮЗУ', '18 РСОП', 71),
('ЮЗУ', '20 РСОП', 248),
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
('Варненски икономически университет', 'ВИУ', 'https://ue-varna.bg/', 'Варна', 'Икономически'),
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
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

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
