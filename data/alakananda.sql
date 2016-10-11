-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Oct 06, 2016 at 04:54 AM
-- Server version: 5.5.49-cll-lve
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `alakananda`
--

-- --------------------------------------------------------

--
-- Table structure for table `alak_budget`
--

CREATE TABLE IF NOT EXISTS `alak_budget` (
  `bNo` int(1) NOT NULL AUTO_INCREMENT,
  `bCode` varchar(3) DEFAULT NULL,
  `bDetails` varchar(200) DEFAULT NULL,
  `bAmount` int(5) DEFAULT NULL,
  `bDate` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`bNo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `alak_budget`
--

INSERT INTO `alak_budget` (`bNo`, `bCode`, `bDetails`, `bAmount`, `bDate`) VALUES
(11, 'GEN', 'Test\r\n', 14000, '07 Apr 2015'),
(12, 'GEN', 'check', 140, '07 Apr 2015'),
(13, 'SOC', 'Queen of Sheeba', 1000, '06 Oct 2016'),
(14, '', '', 0, '06 Oct 2016');

-- --------------------------------------------------------

--
-- Table structure for table `alak_forumInfo`
--

CREATE TABLE IF NOT EXISTS `alak_forumInfo` (
  `fId` int(1) NOT NULL AUTO_INCREMENT,
  `fName` varchar(20) DEFAULT NULL,
  `fRoll` varchar(8) DEFAULT NULL,
  `fRoom` int(3) DEFAULT NULL,
  `fEmail` varchar(50) DEFAULT NULL,
  `fSubject` varchar(50) DEFAULT NULL,
  `fDetails` varchar(500) DEFAULT NULL,
  `fDate` varchar(13) DEFAULT NULL,
  `fSec` varchar(3) DEFAULT NULL,
  `fStatus` int(1) DEFAULT NULL,
  `fReply` varchar(500) DEFAULT NULL,
  `fAccess` int(11) NOT NULL,
  PRIMARY KEY (`fId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `alak_gallery`
--

CREATE TABLE IF NOT EXISTS `alak_gallery` (
  `pId` int(11) NOT NULL AUTO_INCREMENT,
  `pSubject` varchar(100) NOT NULL,
  `pYear` int(11) NOT NULL,
  `pMonth` int(11) NOT NULL,
  `pContent` varchar(1000) NOT NULL,
  `pDate` varchar(30) NOT NULL,
  PRIMARY KEY (`pId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `alak_gallery`
--

INSERT INTO `alak_gallery` (`pId`, `pSubject`, `pYear`, `pMonth`, `pContent`, `pDate`) VALUES
(2, 'HMYHSS Started ', 1998, 6, 'Higher Secondary was started at HMYHS Manjeri by replacing the Pre-Degree System.', '23:09:15 02 Feb 2015'),
(3, 'Computer Science Batch Started', 2012, 5, 'First Computer Science batch was started as 4th option.', '23:12:51 02 Feb 2015'),
(4, 'Kunhali Sir Retires', 2014, 5, 'First ever principal of HMYHSS Manjeri retired from services.', '23:16:03 02 Feb 2015'),
(5, 'HMYHSS Website was released!', 2015, 2, 'A brand new website was launched for HMYHSS Manjeri. HMY Alumni Forum took the initiative for it.', '23:17:09 02 Feb 2015');

-- --------------------------------------------------------

--
-- Table structure for table `alak_likes`
--

CREATE TABLE IF NOT EXISTS `alak_likes` (
  `pId` int(11) NOT NULL,
  `pRoll` varchar(8) NOT NULL,
  `pName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alak_likes`
--

INSERT INTO `alak_likes` (`pId`, `pRoll`, `pName`) VALUES
(5, 'ED14B013', 'Fakheem '),
(1, 'EP14B020', 'Rahul B'),
(5, 'EP14B020', 'Rahul B'),
(5, 'CS11B003', 'Abhijith C S'),
(5, 'CH14B072', 'Zach Zajo'),
(1, 'CH14B072', 'Zach Zajo'),
(5, 'CH14B055', 'Roshan M S'),
(1, 'CH14B055', 'Roshan M S'),
(18, 'CH14B072', 'Zach Zajo'),
(18, 'CH14B055', 'Roshan M S'),
(18, 'MM14B007', 'Aslamah Rahman'),
(1, 'MM14B007', 'Aslamah Rahman'),
(18, 'ME14B005', 'Anand Joseph'),
(1, 'ME14B005', 'Anand Joseph'),
(18, 'EP14B020', 'Rahul B'),
(18, 'MM14B024', 'Azeem Jabir'),
(1, 'MM14B024', 'Azeem Jabir'),
(18, 'AE12B054', 'Aravind H M'),
(1, 'AE12B054', 'Aravind H M'),
(18, 'ED14B047', 'Ahammed Roshan'),
(18, 'CS11B003', 'Abhijith C S'),
(18, 'ME14B002', 'Aboobacker'),
(1, 'ME14B002', 'Aboobacker'),
(21, 'CS11B003', 'Abhijith C S'),
(18, 'ED14B005', 'Amal Sanjay'),
(18, 'ED14B004', 'Aleef'),
(1, 'ED14B004', 'Aleef'),
(18, 'ED14B013', 'Fakheem '),
(21, 'ED14B013', 'Fakheem '),
(1, 'ED14B013', 'Fakheem '),
(21, 'ME14B005', 'Anand Joseph'),
(27, 'CS11B003', 'Abhijith C S'),
(27, 'MM14B024', 'Azeem Jabir'),
(21, 'MM14B007', 'Aslamah Rahman'),
(21, 'EP14B020', 'Rahul B'),
(21, 'CH14B055', 'Roshan M S'),
(21, 'NA14B011', 'Febin'),
(18, 'NA14B011', 'Febin'),
(27, 'ED14B013', 'Fakheem '),
(27, 'ME13B108', 'Danish Nazer'),
(27, 'ME14B005', 'Anand Joseph'),
(21, 'MM14B024', 'Azeem Jabir'),
(21, 'ED14B004', 'Aleef'),
(27, 'ED14B004', 'Aleef'),
(27, 'CH14B055', 'Roshan M S'),
(27, 'MM14B007', 'Aslamah Rahman'),
(27, 'ME14B002', 'Aboobacker'),
(27, 'NA14B011', 'Febin'),
(1, 'NA14B011', 'Febin'),
(31, 'ME14B057', 'Sahid'),
(27, 'ME14B057', 'Sahid'),
(31, 'MM14B007', 'Aslamah Rahman'),
(31, 'MM14B024', 'Azeem Jabir'),
(31, 'ED14B057', 'Ajwahir'),
(27, 'ED14B057', 'Ajwahir'),
(1, 'ED14B057', 'Ajwahir'),
(31, 'HS14H043', 'Theertha Raj'),
(27, 'HS14H043', 'Theertha Raj'),
(31, 'CH14B055', 'Roshan M S'),
(31, 'CS11B003', 'Abhijith C S'),
(31, 'CH14B072', 'Zach Zajo'),
(31, 'EP14B020', 'Rahul B'),
(27, 'EP14B020', 'Rahul B'),
(31, 'ED14B013', 'Fakheem '),
(31, 'NA14B011', 'Febin'),
(27, 'AE12B054', 'Aravind H M'),
(34, 'AE12B054', 'Aravind H M'),
(34, 'ED14B004', 'Aleef'),
(34, 'MM14B007', 'Aslamah Rahman'),
(34, 'MM14B024', 'Azeem Jabir'),
(51, 'ME14B005', 'Anand Joseph'),
(51, 'MM14B024', 'Azeem Jabir'),
(34, 'ME14B005', 'Anand Joseph'),
(51, 'MM14B007', 'Aslamah Rahman'),
(51, 'HS14H043', 'Theertha Raj'),
(34, 'HS14H043', 'Theertha Raj'),
(51, 'ED14B057', 'Ajwahir'),
(34, 'ED14B057', 'Ajwahir'),
(63, 'ME14B005', 'Anand Joseph'),
(63, 'MM14B007', 'Aslamah Rahman'),
(63, 'ME14B057', 'Sahid'),
(63, 'MM14B024', 'Azeem Jabir'),
(63, 'CH14B055', 'Roshan M S'),
(63, 'ED14B013', 'Fakheem '),
(63, 'ED14B057', 'Ajwahir'),
(63, 'AE12B054', 'Aravind H M'),
(69, 'CS11B003', 'Abhijith C S'),
(69, 'MM14B007', 'Aslamah Rahman'),
(69, 'MM14B024', 'Azeem Jabir'),
(69, 'EP14B020', 'Rahul B'),
(63, 'EP14B020', 'Rahul B'),
(69, 'HS14H043', 'Theertha Raj'),
(63, 'HS14H043', 'Theertha Raj'),
(63, 'NA14B011', 'Febin'),
(69, 'NA14B011', 'Febin'),
(69, 'CH14B072', 'Zach Zajo'),
(69, 'NA14B013', 'Joel Jose'),
(63, 'NA14B013', 'Joel Jose'),
(69, 'ME14B002', 'Aboobacker'),
(73, 'ME14B002', 'Aboobacker'),
(63, 'ME14B002', 'Aboobacker'),
(73, 'MM14B024', 'Azeem Jabir'),
(73, 'CS11B003', 'Abhijith C S'),
(73, 'CS11B003', 'Abhijith C S'),
(73, 'MM14B007', 'Aslamah Rahman'),
(73, 'ME14B005', 'Anand Joseph'),
(69, 'ME14B005', 'Anand Joseph'),
(73, 'HS14H043', 'Theertha Raj'),
(69, 'CH14B055', 'Roshan M S'),
(73, 'CH14B055', 'Roshan M S'),
(73, 'CH14B072', 'Zach Zajo'),
(73, 'ED14B057', 'Ajwahir'),
(69, 'ED14B057', 'Ajwahir'),
(76, 'CS11B003', 'Abhijith C S'),
(76, 'ME14B002', 'Aboobacker'),
(76, 'MM14B024', 'Azeem Jabir'),
(76, 'MM14B007', 'Aslamah Rahman'),
(76, 'CH14B055', 'Roshan M S'),
(78, 'EP14B020', 'Rahul B'),
(76, 'EP14B020', 'Rahul B'),
(78, 'MM14B024', 'Azeem Jabir'),
(79, 'EP14B020', 'Rahul B'),
(78, 'CH14B055', 'Roshan M S'),
(79, 'CH14B055', 'Roshan M S'),
(76, 'HS14H043', 'Theertha Raj'),
(76, 'BE13B005', 'Anas Jafry'),
(79, 'ME14B002', 'Aboobacker'),
(78, 'ME14B002', 'Aboobacker'),
(78, 'BE13B005', 'Anas Jafry'),
(79, 'ED14B047', 'Ahammed Roshan'),
(79, 'ED14B047', 'Ahammed Roshan'),
(79, 'CS11B003', 'Abhijith C S'),
(78, 'MM14B007', 'Aslamah Rahman'),
(79, 'MM14B007', 'Aslamah Rahman'),
(81, 'MM14B007', 'Aslamah Rahman'),
(81, 'MM14B024', 'Azeem Jabir'),
(79, 'MM14B024', 'Azeem Jabir'),
(81, 'CH14B055', 'Roshan M S'),
(81, 'ME14B002', 'Aboobacker'),
(81, 'NA14B011', 'Febin'),
(79, 'NA14B011', 'Febin'),
(78, 'NA14B011', 'Febin'),
(81, 'BE13B005', 'Anas Jafry'),
(81, 'CH14B072', 'Zach Zajo'),
(79, 'CH14B072', 'Zach Zajo'),
(78, 'CH14B072', 'Zach Zajo'),
(81, 'NA14B013', 'Joel Jose'),
(79, 'NA14B013', 'Joel Jose'),
(78, 'NA14B013', 'Joel Jose'),
(81, 'ED14B047', 'Ahammed Roshan'),
(82, 'NA14B011', 'Febin'),
(81, 'ME14B005', 'Anand Joseph'),
(82, 'CH14B072', 'Zach Zajo'),
(82, 'MM14B024', 'Azeem Jabir'),
(82, 'ME14B005', 'Anand Joseph'),
(79, 'ME14B005', 'Anand Joseph'),
(82, 'CH14B055', 'Roshan M S'),
(82, 'ED14B013', 'Fakheem '),
(81, 'ED14B013', 'Fakheem '),
(79, 'ED14B013', 'Fakheem '),
(82, 'ME14B002', 'Aboobacker'),
(82, 'MM14B007', 'Aslamah Rahman'),
(79, 'AE12B054', 'Aravind H M'),
(81, 'AE12B054', 'Aravind H M'),
(82, 'AE12B054', 'Aravind H M'),
(82, 'HS14H043', 'Theertha Raj'),
(81, 'EP14B020', 'Rahul B'),
(88, 'CS11B003', 'Abhijith C S'),
(81, 'ED14B004', 'Aleef'),
(88, 'ED14B004', 'Aleef'),
(88, 'ED14B013', 'Fakheem '),
(88, 'MM14B024', 'Azeem Jabir'),
(89, 'ED14B004', 'Aleef'),
(89, 'ED14B005', 'Amal Sanjay'),
(89, 'ED14B057', 'Ajwahir'),
(89, 'NA14B011', 'Febin'),
(89, 'HS14H043', 'Theertha Raj'),
(81, 'HS14H043', 'Theertha Raj'),
(89, 'MM14B024', 'Azeem Jabir'),
(89, 'ED14B013', 'Fakheem '),
(88, 'EP14B020', 'Rahul B'),
(89, 'EP14B020', 'Rahul B'),
(89, 'MM14B007', 'Aslamah Rahman'),
(88, 'MM14B007', 'Aslamah Rahman'),
(100, 'MM14B024', 'Azeem Jabir'),
(88, 'CH14B055', 'Roshan M S'),
(100, 'CH14B055', 'Roshan M S'),
(100, 'CH14B072', 'Zach Zajo'),
(100, 'ED14B013', 'Fakheem '),
(100, 'HS14H043', 'Theertha Raj'),
(100, 'ME14B002', 'Aboobacker'),
(100, 'EP14B020', 'Rahul B'),
(100, 'AE12B054', 'Aravind H M'),
(106, 'ME14B002', 'Aboobacker'),
(106, 'CS11B003', 'Abhijith C S'),
(106, 'ED14B047', 'Ahammed Roshan'),
(106, 'ED14B013', 'Fakheem '),
(106, 'MM14B024', 'Azeem Jabir'),
(106, 'ED14B057', 'Ajwahir'),
(106, 'MM14B007', 'Aslamah Rahman'),
(106, 'BE13B005', 'Anas Jafry'),
(106, 'EP14B020', 'Rahul B'),
(108, 'ED14B057', 'Ajwahir'),
(108, 'BE13B005', 'Anas Jafry'),
(108, 'MM14B007', 'Aslamah Rahman'),
(108, 'MM14B024', 'Azeem Jabir'),
(108, 'HS14H043', 'Theertha Raj'),
(108, 'ME14B005', 'Anand Joseph'),
(108, 'EP14B020', 'Rahul B'),
(109, 'CS11B003', 'Abhijith C S'),
(109, 'BE13B005', 'Anas Jafry'),
(109, 'EP14B020', 'Rahul B'),
(109, 'MM14B024', 'Azeem Jabir'),
(109, 'ME14B002', 'Aboobacker'),
(109, 'ME13B108', 'Danish Nazer'),
(111, 'ED14B013', 'Fakheem '),
(111, 'MM14B024', 'Azeem Jabir'),
(109, 'CH14B072', 'Zach Zajo'),
(111, 'CH14B072', 'Zach Zajo'),
(111, 'CH14B055', 'Roshan M S'),
(111, 'MM14B007', 'Aslamah Rahman'),
(109, 'MM14B007', 'Aslamah Rahman'),
(111, 'EP14B020', 'Rahul B'),
(111, 'HS14H046', 'Zainab'),
(111, 'ED14B004', 'Aleef'),
(109, 'ED14B004', 'Aleef'),
(119, 'CH14B072', 'Zach Zajo'),
(119, 'MM14B024', 'Azeem Jabir'),
(119, 'ME14B002', 'Aboobacker'),
(111, 'ME14B002', 'Aboobacker'),
(119, 'HS14H043', 'Theertha Raj'),
(119, 'MM14B007', 'Aslamah Rahman'),
(119, 'ME14B005', 'Anand Joseph'),
(111, 'ME14B005', 'Anand Joseph'),
(109, 'ME14B005', 'Anand Joseph'),
(126, 'MM14B007', 'Aslamah Rahman'),
(126, 'MM14B024', 'Azeem Jabir'),
(126, 'ME14B002', 'Aboobacker'),
(119, 'NA14B013', 'Joel Jose'),
(126, 'NA14B013', 'Joel Jose'),
(109, 'NA14B013', 'Joel Jose'),
(126, 'NA14B011', 'Febin'),
(119, 'ED14B013', 'Fakheem '),
(126, 'ED14B013', 'Fakheem '),
(109, 'ED14B013', 'Fakheem '),
(119, 'NA14B011', 'Febin'),
(111, 'NA14B011', 'Febin'),
(109, 'NA14B011', 'Febin'),
(126, 'ED14B057', 'Ajwahir'),
(119, 'ED14B057', 'Ajwahir'),
(111, 'ED14B057', 'Ajwahir'),
(109, 'ED14B057', 'Ajwahir'),
(137, 'ME14B002', 'Aboobacker'),
(137, 'EP14B020', 'Rahul B'),
(137, 'ED14B013', 'Fakheem '),
(137, 'MM14B024', 'Azeem Jabir'),
(111, 'ME13B108', 'Danish Nazer'),
(139, 'MM14B024', 'Azeem Jabir'),
(139, 'ME14B005', 'Anand Joseph'),
(139, 'ED14B013', 'Fakheem '),
(139, 'NA14B011', 'Febin'),
(139, 'ME14B002', 'Aboobacker'),
(143, 'ME14B005', 'Anand Joseph'),
(143, 'MM14B024', 'Azeem Jabir'),
(143, 'HS14H043', 'Theertha Raj'),
(143, 'ED14B013', 'Fakheem '),
(143, 'ED14B005', 'Amal Sanjay'),
(143, 'MM14B007', 'Aslamah Rahman'),
(143, 'EP14B020', 'Rahul B'),
(143, 'NA14B013', 'Joel Jose'),
(143, 'CH14B055', 'Roshan M S'),
(143, 'NA14B011', 'Febin'),
(143, 'CH14B072', 'Zach Zajo'),
(143, 'ME14B002', 'Aboobacker'),
(144, 'MM14B024', 'Azeem Jabir'),
(144, 'NA14B011', 'Febin'),
(144, 'BE13B005', 'Anas Jafry'),
(144, 'ED14B013', 'Fakheem '),
(144, 'ME14B005', 'Anand Joseph'),
(144, 'CH14B072', 'Zach Zajo'),
(144, 'CS11B003', 'Abhijith C S'),
(144, 'HS14H043', 'Theertha Raj'),
(144, 'ME14B002', 'Aboobacker'),
(144, 'MM14B007', 'Aslamah Rahman'),
(144, 'EP14B020', 'Rahul B'),
(147, 'MM14B024', 'Azeem Jabir'),
(147, 'ME14B005', 'Anand Joseph'),
(147, 'BE13B005', 'Anas Jafry'),
(147, 'ME14B057', 'Sahid'),
(147, 'AE12B054', 'Aravind H M'),
(147, 'NA14B011', 'Febin'),
(147, 'NA14B011', 'Febin'),
(147, 'MM14B007', 'Aslamah Rahman'),
(166, 'ME14B005', 'Anand Joseph'),
(166, 'MM14B024', 'Azeem Jabir'),
(166, 'MM14B007', 'Aslamah Rahman'),
(166, 'CH14B072', 'Zach Zajo'),
(166, 'ME14B002', 'Aboobacker'),
(166, 'NA14B011', 'Febin'),
(166, 'CH14B055', 'Roshan M S'),
(166, 'HS14H043', 'Theertha Raj'),
(167, 'CS11B003', 'Surya'),
(172, 'CS11B003', 'Surya'),
(173, 'CS11B003', 'Surya'),
(178, 'AE11B022', 'Mohammed Shafeeq E T'),
(178, 'AE13B031', 'Shashwat Salgaocar'),
(189, 'CS11B003', 'Abhijith C S'),
(189, 'NA13B017', 'Nihal Abdussamad.P.M'),
(190, 'CS11B003', 'Abhijith C S'),
(190, 'AE11B039', 'Athul P G'),
(191, 'AE11B039', 'Athul P G'),
(189, 'AE11B039', 'Athul P G'),
(189, 'CE13M007', 'Muthu Karthikeyan M'),
(190, 'CE13M007', 'Muthu Karthikeyan M'),
(192, 'AE12B004', 'Dheepak N Khatri'),
(192, 'ME11B154', 'Addarsh C'),
(192, 'EE12B001', 'Abhiram G'),
(192, 'AE10B039', 'Akhil K T'),
(192, 'CS11B003', 'Abhijith C S'),
(192, 'AE13B035', 'Swapnil Kumar Singh'),
(190, 'AE13B035', 'Swapnil Kumar Singh'),
(191, 'BT11B039', 'Srikiran C'),
(192, 'BT11B039', 'Srikiran C'),
(190, 'CE11B033', 'Munagala Snehit'),
(194, 'CS11B003', 'Abhijith C S'),
(192, 'AE13B027', 'S Deepak Kiran'),
(194, 'AE13B027', 'S Deepak Kiran'),
(194, 'AE13B027', 'S Deepak Kiran'),
(192, 'ME12B085', 'Guntur Devanand'),
(190, 'AE13B001', 'Akkanapelli Pranith Kiran'),
(190, 'NA13B016', 'Mubeen A S'),
(192, 'AE12B005', 'Dillip Kumar Sahoo'),
(196, 'AE12B005', 'Dillip Kumar Sahoo'),
(196, 'CS11B003', 'Abhijith C S'),
(197, 'NA13B012', 'J J Jegadish'),
(199, 'AE13B027', 'S Deepak Kiran'),
(190, 'AE13B027', 'S Deepak Kiran'),
(190, 'AE13B027', 'S Deepak Kiran'),
(190, 'CS10B031', 'Aditya Uttam Sapate'),
(190, 'ED11B052', 'Roshan Santhosh'),
(199, 'AE11B023', 'Nandakishore M M'),
(190, 'AE11B023', 'Nandakishore M M'),
(201, 'AE11B022', 'Mohammed Shafeeq E T'),
(199, 'CS11B003', 'Abhijith C S'),
(190, 'NA13B005', 'ANAS MUSTHAFA');

-- --------------------------------------------------------

--
-- Table structure for table `alak_messages`
--

CREATE TABLE IF NOT EXISTS `alak_messages` (
  `mId` int(11) NOT NULL AUTO_INCREMENT,
  `mFrom` varchar(8) DEFAULT NULL,
  `mTo` varchar(8) DEFAULT NULL,
  `mTime` varchar(25) DEFAULT NULL,
  `mContent` varchar(200) DEFAULT NULL,
  `mHead` int(11) NOT NULL,
  PRIMARY KEY (`mId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=152 ;

--
-- Dumping data for table `alak_messages`
--

INSERT INTO `alak_messages` (`mId`, `mFrom`, `mTo`, `mTime`, `mContent`, `mHead`) VALUES
(132, 'NA13B017', 'NA13B016', '18:13:28 08 Apr 2015', '', 0),
(133, 'NA13B017', 'NA13B016', '18:13:45 08 Apr 2015', '', 0),
(134, 'NA13B017', 'NA13B016', '18:14:16 08 Apr 2015', 'Hello', 0),
(135, 'NA13B017', 'NA13B016', '18:15:12 08 Apr 2015', 'Hai', 1),
(136, 'CS11B003', 'NA13B016', '01:59:54 09 Apr 2015', 'Hello', 0),
(137, 'CS11B003', 'NA13B016', '02:00:01 09 Apr 2015', 'Dude!', 1),
(138, 'AE11B039', 'AE13B027', '22:47:10 12 Apr 2015', 'Hello', 0),
(139, 'AE11B039', 'AE13B027', '22:47:24 12 Apr 2015', 'I was just checking it.', 0),
(140, 'EP13B029', 'AE13B031', '13:22:57 13 Apr 2015', 'Yo what''s up', 1),
(141, 'CS11B003', 'NA13B012', '14:59:22 13 Apr 2015', 'What is happening with pass-out T-Shirts da?', 0),
(142, 'CS11B003', 'NA13B012', '14:59:40 13 Apr 2015', 'Are we actually getting it?', 1),
(143, 'NA13B018', 'NA13B012', '17:28:30 13 Apr 2015', 'Dude what''s up????', 1),
(144, 'NA13B018', 'NA13B016', '17:29:17 13 Apr 2015', 'yooo mannnn', 0),
(145, 'CS11B003', 'NA13B005', '02:35:38 14 Apr 2015', 'Poori mone.. treat evide mairaaa', 0),
(146, 'AE13B027', 'AE11B039', '03:20:32 14 Apr 2015', 'hello', 1),
(147, 'NA13B016', 'NA13B018', '22:46:41 15 Apr 2015', 'yoyo', 1),
(148, 'CS10B031', 'AE13B027', '15:17:11 26 May 2015', 'Oyy choot', 1),
(149, 'AE11B023', 'NA13B005', '15:42:16 10 Aug 2015', 'Hello Bunny! :P', 1),
(150, 'AE11B022', 'AE13B027', '16:12:52 28 Feb 2016', 'Hi', 1),
(151, 'CS11B003', 'NA13B005', '15:58:49 06 Oct 2016', 'Deyy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `alak_pageActivities`
--

CREATE TABLE IF NOT EXISTS `alak_pageActivities` (
  `paDate` varchar(20) DEFAULT NULL,
  `paFlag` int(11) NOT NULL,
  `paTitle` varchar(500) DEFAULT NULL,
  `paContent` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alak_pageActivities`
--

INSERT INTO `alak_pageActivities` (`paDate`, `paFlag`, `paTitle`, `paContent`) VALUES
('24 Jul 2014', 1, 'Technical', 'There has been a surge of Tech enthusiasm among the students of Alakananda in the recent years. Alakites have been actively contributing to technical activities be it through participation or taking up big projects like SOE. A keen interest in Robotics has been inculcated in the students thanks to technically brilliant seniors like Lokesh, Fuse who have been very keen mentors.\r\nStudents of Alakananda have been constantly winning competitions at Shaastra, Mechanica and other technical fests. Junkyard Wars, Pwned, Shock, Sim Champ, Make Things Work, Project X and Puzzle Championship to name a few are events Alakites have been winning at. Alakananda has also won the 3rd place in Fete-technical last year. To continue this tradition and to ensure the fresher''s continue the good work, a host of intra-hostel freshie events and fundae sessions have been planned. A series of fundae sessions are planned for after Quiz I which will cover a variety of events, from hands on events like Robotics to design events like Aesthetique. '),
('24 Jul 2014', 1, 'Literary And Arts', 'Lit Soc encompasses all the inter hostel literary and social activity and competitions that take place on the campus. The events range from speaking events like debate and the hugely entertaining JAM to the sober yet fiercely contested word games like Crossie and Scrabble; from the group music events which are held in front of packed audiences to the equally well followed conglomerate of quizzes- the similarity between the two? Well, both go well into the night; besides, like any other event here, are followed by the exultations and heartburn that characterize contests where pride and pride alone are at stake. Pride in representing one''s hostel, pride associated with the responsibility that one has been thrust upon by the legacy that has been set in the past, pride in building upon that foundation of glory and taking it continually to a whole new dimension. Alak has never been devoid of champion material and has a rich history of magnificent performers. LM, WM, Drams, Quizzing, you name it and we''ve won it. Every year, we put up a hell of a fight for each event, be it Queen Of Sheeba or Scrabble. Running on pure adrenaline, we managed to win Treasure Hunt last year by trumping all stalwarts in the arena. We thulped photography this year too, putting first after putting third last year. We also came up with a sterling performance in the Choreo Nite last year and have a well set and confident troupe eagerly waiting to maul the rest once again. While our performance, overall, in Lit Soc is going through a slump, it is just a matter of time before we rise to the zenith of our potential once again. Watch this space for updates. '),
('24 Jul 2014', 1, 'Sports', 'Sports at Alakananda is an integral part of our lifestyle and is much more than just a time pass activity. It is the primary mode of interaction between hostel mates and has provided some of the most memorable moments of our life at IIT.Sports in IIT Madras is played at three different levels; the intra-hostel, inter hostel and inter-IIT. Every year during December the Inter-IIT sports meet is held in one of the IITs. Representing your institute in the meet is the highest accolade any sportsperson can achieve. The Alakananda sports factory has churned out many institute players who have made us proud over the years. At present, Alakites are a very important part of the several institute teams.There is a huge passion for sports in Alak. Every evening after attending the soporific lectures, junta come down in huge numbers to play in the quadrangle. On one side the footer and hockey junta fight over getting more playing time in the quadi whereas on the other side you have the volley junta peacefully going about their business with no interference. Same is the case for basketball. Field games apart, Alak has two T.T tables and an upcoming and very talented table tennis team. The Fusball table has been a very welcome addition to our hostelâ€™s common room. As mentioned earlier the passion for sports is also evident in the huge turnout to watch cricket, EPL and tennis matches.This intro to sports at Alak will not be complete without mentioning Schroeter, the inter-hostel sports tournament. This highly competitive tournament provides an opportunity to fight it out with other hostel guys and in the process lets students have some of the best fun of their sporting career. Alak has done very well in schroeter over the past few years, coming in 4th place last year. We also have the deanâ€™s trophy held every year which includes games like ball badminton, chess, bridge and carom to mention a few. ');

-- --------------------------------------------------------

--
-- Table structure for table `alak_pageGallery`
--

CREATE TABLE IF NOT EXISTS `alak_pageGallery` (
  `pgDate` varchar(20) DEFAULT NULL,
  `pgFlag` int(11) NOT NULL,
  `pgTitle` varchar(500) DEFAULT NULL,
  `pgContent` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alak_pageGallery`
--

INSERT INTO `alak_pageGallery` (`pgDate`, `pgFlag`, `pgTitle`, `pgContent`) VALUES
('24 Jul 2014', 1, 'Tech Soc 2013 Champions', 'Alak won the Tech Soc title for the year 2012 - 2013 (inter hostel tech championship).'),
('11 Nov 2014', 1, 'Class of 2012', ' Amazing Energy, Superb Enthusiasm - Class of 2012!'),
('20 Mar 2015', 1, 'Alak wins GOLD in Footer Schroeter 2015!', 'From Alak vs Ganga Finals at Institute Ground on 19th March 2015. Mubeen a.k.a Hazard scored a goal and led the team to 1-0 victory over Ganga! Amazing team-play! Kudos to the Sports Sec Anand Babu, Captain Salam and the whole Team. Aneesh Bhagwat was not just a ''Defender'', he coordinated the team really well!');

-- --------------------------------------------------------

--
-- Table structure for table `alak_people`
--

CREATE TABLE IF NOT EXISTS `alak_people` (
  `mRoll` varchar(8) DEFAULT NULL,
  `mName` varchar(40) DEFAULT NULL,
  `mRoom` int(5) DEFAULT NULL,
  `mPass` varchar(32) NOT NULL,
  `mLast` varchar(52) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alak_people`
--

INSERT INTO `alak_people` (`mRoll`, `mName`, `mRoom`, `mPass`, `mLast`) VALUES
('BE12B008', 'B Arul Praveen', 103, 'password', 'Never Logged IN'),
('BE12B010', 'G Sreeharsha', 104, 'password', '22:58:44 15 Apr 2015'),
('BE12B006', 'Avula Dinesh Kumar', 106, 'dinudinu', '17:32:55 13 Apr 2015'),
('AE12B011', 'Lingala Mythreya Reddy', 107, 'password', 'Never Logged IN'),
('AE12B007', 'Gurazada Ajay Kumar', 108, 'password', 'Never Logged IN'),
('AE12B003', 'Bodhanapu Abhilash', 109, 'password', 'Never Logged IN'),
('AE12B009', 'Ishwar Chand Soni', 110, 'password', 'Never Logged IN'),
('AE12B002', 'Anandu Bhadran', 111, 'password', 'Never Logged IN'),
('AE12B001', 'Abhishek Deepak Shende', 112, 'password', 'Never Logged IN'),
('AE12B004', 'Dheepak N Khatri', 113, 'password', '02:32:21 13 Apr 2015'),
('AE12B005', 'Dillip Kumar Sahoo', 114, '^eJgP10~', '15:41:26 16 Apr 2015'),
('EE12B009', 'Baswagani Yashwanth', 117, 'password', 'Never Logged IN'),
('EE12B002', 'Acholu Praneeth Kumar Reddy', 118, 'password', 'Never Logged IN'),
('EE12B001', 'Abhiram G', 119, 'password', 'Never Logged IN'),
('EE12B010', 'Bellam Venkata Pavan Kumar', 120, 'password', 'Never Logged IN'),
('EE12B011', 'Bhargav Teja Kaki', 121, 'password', 'Never Logged IN'),
('NA12B009', 'Damarla Shanmukha Naga Rajesh', 122, 'password', 'Never Logged IN'),
('NA12B010', 'Dornadula Revanth Reddy', 123, 'password', 'Never Logged IN'),
('EP13B001', 'Aashish Lodhwal', 124, 'password', 'Never Logged IN'),
('EP13B002', 'Abhishikth Mallampalli', 125, 'password', 'Never Logged IN'),
('EP13B003', 'Anuj Anand Gagrai', 126, 'password', 'Never Logged IN'),
('EP13B004', 'Bharath Chandran', 127, 'password', 'Never Logged IN'),
('EP13B005', 'Anup', 128, 'password', 'Never Logged IN'),
('EP13B006', 'Deshmukh Rajat Prataprao', 129, 'password', 'Never Logged IN'),
('EP13B007', 'R. Dhinessh', 130, 'password', 'Never Logged IN'),
('EP13B008', 'M Harshavardhan', 131, 'password', 'Never Logged IN'),
('EP13B009', 'Jasbeer Noushad', 133, 'password', 'Never Logged IN'),
('AE13M006', 'Binuj A R', 134, 'password', 'Never Logged IN'),
('CA13M001', 'Jaganathan R', 135, 'password', 'Never Logged IN'),
('CA13M002', 'Suman Kumar', 136, 'password', 'Never Logged IN'),
('AM13M001', 'Ajay Kumar A J', 137, 'password', 'Never Logged IN'),
('AM13M009', 'Pratyaya Chakraborty', 138, 'password', 'Never Logged IN'),
('AM13M008', 'Nandulal K', 139, 'password', 'Never Logged IN'),
('AM13M013', 'Rohit K', 140, 'password', 'Never Logged IN'),
('EP13B011', 'Kadari Abhinav', 141, 'password', 'Never Logged IN'),
('AM13M021', 'Vignesh Kumar B', 142, 'password', 'Never Logged IN'),
('AM13M027', 'Kanopili Manohar', 143, 'password', 'Never Logged IN'),
('AM13M019', 'Sonu Krishnan G P', 144, 'password', 'Never Logged IN'),
('AM13M002', 'Akhil Varma', 145, 'password', 'Never Logged IN'),
('AM13M022', 'Vinayan E G', 146, 'password', 'Never Logged IN'),
('AM13M010', 'Praveen', 147, 'password', 'Never Logged IN'),
('EP13B012', 'Karthik V', 148, 'password', 'Never Logged IN'),
('ED11B053', 'Sriramoju Saneeth', 149, 'password', 'Never Logged IN'),
('CH11B091', 'Kuncham Venkata Sua2 Reddy', 150, 'password', 'Never Logged IN'),
('CE11B033', 'Munagala Snehit', 151, 'playboy1993', '22:59:38 13 Apr 2015'),
('ME11B018', 'Gali Giri Prasad', 152, 'password', 'Never Logged IN'),
('BT11B040', 'Srivatsava V V N S', 153, 'password', 'Never Logged IN'),
('BT11B045', 'Anil Kiran Chokkalla', 154, 'password', 'Never Logged IN'),
('CH11B056', 'Saketh Ram Reddy M', 155, 'password', 'Never Logged IN'),
('CH11B055', 'Sai Charan Reddy S', 156, 'password', 'Never Logged IN'),
('BT11B052', 'Kiritee G A K', 157, 'password', 'Never Logged IN'),
('AE11B010', 'Guntur Sanjay Kumar', 158, 'password', 'Never Logged IN'),
('EP13B013', 'Kelkar Varun Ajit', 159, 'password', 'Never Logged IN'),
('EP13B014', 'G Koushik', 160, 'password', 'Never Logged IN'),
('EP13B015', 'Lithin Reddy Marla', 161, 'password', 'Never Logged IN'),
('EP13B016', 'Mahizh Vannan E', 162, 'password', 'Never Logged IN'),
('AE13B031', 'Sinai Salgaocar Shashwat Nitin', 163, 'password', '01:45:41 07 Oct 2015'),
('AE13B034', 'Sunkara Raja', 164, 'password', 'Never Logged IN'),
('AE13B001', 'Akkanapelli Pranith Kiran', 201, 'password', '00:37:41 04 May 2015'),
('ME12B010', 'Binu George', 202, 'password', 'Never Logged IN'),
('ME12B004', 'Alanka Anil Kumar', 203, 'password', 'Never Logged IN'),
('ME12B001', 'A Venkata Pavan Siddartha Arvind', 204, 'password', 'Never Logged IN'),
('ME12B003', 'Akshya Kumar Meher', 205, 'password', 'Never Logged IN'),
('ME12B002', 'Aditya Vamsikrishna Mandalika', 206, 'password', '03:02:27 14 Apr 2015'),
('ME12B008', 'Bankupalli Bharadwaj', 207, 'password', 'Never Logged IN'),
('PH12B002', 'Gokul Ramesh', 208, '373208', '08:43:41 14 Apr 2015'),
('PH12B006', 'Ritesh Kumar', 209, 'password', 'Never Logged IN'),
('PH12B007', 'Tirth Shah', 210, 'password', 'Never Logged IN'),
('PH12B001', 'Anirudh Mohan', 211, 'password', 'Never Logged IN'),
('PH12B004', 'Mulukutla Pradyumna Kartheek', 212, 'password', 'Never Logged IN'),
('PH12B003', 'Kanukanti Aditya', 213, 'password', 'Never Logged IN'),
('PH12B009', 'Vinayak Vinod', 214, 'password', 'Never Logged IN'),
('NA10B003', 'Arun K', 215, 'password', 'Never Logged IN'),
('ME10B003', 'Anand V S', 216, 'password', 'Never Logged IN'),
('NA10B009', 'Harikrishnan V', 217, 'password', 'Never Logged IN'),
('AE10B042', 'Jadhav Dattatreya', 218, 'password', 'Never Logged IN'),
('AE10B045', 'Nigam Krishna A', 219, 'password', 'Never Logged IN'),
('AE10B060', 'Saida Naik Bhukya', 220, 'password', 'Never Logged IN'),
('AE10B043', 'Keerthi Bala Kumar', 221, 'password', 'Never Logged IN'),
('AE10B039', 'Akhil K T', 222, 'password', 'Never Logged IN'),
('MM10B048', 'Navin A', 223, 'password', 'Never Logged IN'),
('AE10B044', 'Manu N M', 224, 'password', 'Never Logged IN'),
('ED10B045', 'Vivekanandan S', 225, 'password', 'Never Logged IN'),
('AE10B041', 'Irfan Habeeb C N', 226, 'password', 'Never Logged IN'),
('AE10B040', 'Arjun B J', 227, 'password', 'Never Logged IN'),
('AE10B003', 'Ashwin Dev A', 228, 'password', 'Never Logged IN'),
('EE10B108', 'Nawin Krishna R K', 229, 'password', 'Never Logged IN'),
('PH09B001', 'Amitoz Azad', 230, 'password', 'Never Logged IN'),
('AE13B002', 'Akshay', 232, 'password', 'Never Logged IN'),
('AE13B003', 'Ankur Arya', 233, 'password', 'Never Logged IN'),
('AE13B004', 'Ankur', 234, 'password', 'Never Logged IN'),
('AE13B006', 'Bogolu Ranganath Reddy', 235, 'password', '22:01:31 13 Apr 2015'),
('ME12B007', 'Arun Krishna Das', 236, 'password', 'Never Logged IN'),
('EE12B067', 'Abdussalam T K', 237, 'password', 'Never Logged IN'),
('NA12B003', 'Alok B K', 238, 'password', 'Never Logged IN'),
('NA12B002', 'Ajin G K', 239, 'password', 'Never Logged IN'),
('BE12B013', 'Ibrahim Roshan K', 240, 'password', 'Never Logged IN'),
('ME12B006', 'Anzifer Abdul Latheef', 241, 'password', 'Never Logged IN'),
('ME12B005', 'Anand Babu A', 242, 'password', 'Never Logged IN'),
('ME12B076', 'Ali Ahammed Jasim', 243, 'password', 'Never Logged IN'),
('EE12B069', 'Adit Ravi', 244, 'password', 'Never Logged IN'),
('EE12B004', 'Ajil Jalal', 245, 'password', '22:52:19 13 Apr 2015'),
('EE12B006', 'Amandeep Kumar Jerriwal', 246, 'password', 'Never Logged IN'),
('EE12B005', 'Akshay Elencheran', 247, 'password', 'Never Logged IN'),
('BE12B011', 'G Venkata Subrahmanyan', 248, 'password', 'Never Logged IN'),
('EE12B003', 'Adarsh A Tadimari', 249, 'password', 'Never Logged IN'),
('EE12B079', 'Chavan Shubham Dinesh', 250, 'ee12b079', '00:50:07 14 Apr 2015'),
('EE12B074', 'Amal S S', 251, 'password', 'Never Logged IN'),
('EE12B068', 'Abhinash Mahor', 252, 'password', '22:49:06 12 Apr 2015'),
('EE12B077', 'Aroon Narayanan', 253, 'password', 'Never Logged IN'),
('ME12B083', 'Deokule Atharv Pandurang', 254, 'password', 'Never Logged IN'),
('EE12B070', 'Aditya Omprakash Deshmukh', 255, 'password', 'Never Logged IN'),
('EE12B072', 'Akash Kumar Singh', 256, 'password', 'Never Logged IN'),
('EE12B078', 'Ayush Khandelwal', 257, 'password', 'Never Logged IN'),
('EE12B075', 'Ankit Shukla', 258, 'password', '23:06:53 12 Apr 2015'),
('EE12B073', 'Akshat Dave', 259, 'password', 'Never Logged IN'),
('ME12B161', 'Baldev P', 260, 'password', 'Never Logged IN'),
('AE13B007', 'Guguloth Pavan Kumar', 261, 'password', 'Never Logged IN'),
('CE13M159', 'Karthick C', 262, 'password', 'Never Logged IN'),
('AE13B008', 'Guruprasad Kallanje', 263, 'password', '18:49:04 13 Apr 2015'),
('AE13B009', 'Hanut Vemulapalli', 264, 'password', 'Never Logged IN'),
('AE13B010', 'Koundinya Poluri', 265, 'alakisgreat', 'Never Logged IN'),
('AE13B011', 'Kulkarni Prashant Madhavrao', 265, 'password', 'Never Logged IN'),
('AE13B012', 'Mallella Suman', 266, 'password', 'Never Logged IN'),
('AE13B013', 'M.Mohamed Khalid', 266, 'password', 'Never Logged IN'),
('AE13B014', 'Mohammed Sahal E.V', 267, 'password', 'Never Logged IN'),
('AE13B015', 'Narani Shiva Bhushan', 267, 'password', '02:31:32 14 Apr 2015'),
('AE13B016', 'Nikhil Kumar Gupta', 268, 'Nike280695', '17:59:06 13 Apr 2015'),
('AE13B017', 'Nikunj Agrawal', 268, 'password', 'Never Logged IN'),
('AE13B019', 'Paramkusam Niranjan', 269, 'password', '12:19:46 13 Aug 2015'),
('AE13B020', 'Pentakota Hima Sai Phanindhra', 269, 'phani8996', 'Never Logged IN'),
('AE13B021', 'Pranjal', 270, 'password', 'Never Logged IN'),
('AE13B022', 'Punukolu Bhuvvaan Chandra', 270, 'password', 'Never Logged IN'),
('AE13B023', 'Raghav Sivaraman', 271, 'password', 'Never Logged IN'),
('AE13B024', 'Rangeeth.R', 271, 'password', '17:28:34 13 Apr 2015'),
('AE13B025', 'Ravi Rajkumar', 272, 'password', 'Never Logged IN'),
('AE13B026', 'R Sandeepkumar', 272, 'password', '22:43:28 12 Apr 2015'),
('AE13B027', 'Sandi Deepak Kiran Kumar', 273, 'password', '05:11:09 29 Aug 2015'),
('AE13B028', 'Sanjesh.H.J', 273, 'password', '10:20:09 13 Apr 2015'),
('AE13B029', 'Shree Vishnu Ak', 274, 'password', 'Never Logged IN'),
('AE13B030', 'Shreyas S', 274, 'password', 'Never Logged IN'),
('NA13B001', 'Abdul Wariz N', 301, 'password', 'Never Logged IN'),
('NA13B002', 'Adidala Yashwanth', 302, 'password', 'Never Logged IN'),
('ME12B148', 'Kushal M B', 303, 'password', 'Never Logged IN'),
('ME12B151', 'Ashwin S Pothen', 304, 'password', 'Never Logged IN'),
('CE12B005', 'Anish Rathi', 305, 'password', 'Never Logged IN'),
('CE12B009', 'B Akash', 306, 'password', 'Never Logged IN'),
('CE12B010', 'Banisetti Gayatri Venkata Puneeth', 307, 'password', 'Never Logged IN'),
('CE12B011', 'Bhairi Vinay Kumar', 308, 'password', 'Never Logged IN'),
('CE12B006', 'Ashish Jha', 309, 'password', 'Never Logged IN'),
('CE12B002', 'Ahire Pratik Chabu', 310, 'password', 'Never Logged IN'),
('CE12B014', 'Chennuru Anvesh Reddy', 311, 'password', 'Never Logged IN'),
('CE12B001', 'Abhignan Dande', 312, 'password', 'Never Logged IN'),
('CE12B003', 'Akhil V', 313, 'password', 'Never Logged IN'),
('AE12B008', 'H R Suraj', 314, 'password', 'Never Logged IN'),
('ME12B077', 'Ameer Hamza', 315, 'password', 'Never Logged IN'),
('NA12B011', 'Gaurav', 317, 'password', 'Never Logged IN'),
('ME12B079', 'Ashok Kumar Yadav', 318, 'ashoka', 'Never Logged IN'),
('CH10B080', 'Badavne Anay Chokhoba', 319, 'password', 'Never Logged IN'),
('CH10B008', 'Benuskar Kalpesh Sharad', 320, 'password', 'Never Logged IN'),
('ME10B076', 'Biwalkar Rohan Milind', 321, 'password', 'Never Logged IN'),
('ME10B075', 'Bhagwat Aneesh Sitaram', 322, 'password', 'Never Logged IN'),
('CH10B077', 'Abhinav Kumar', 323, 'password', 'Never Logged IN'),
('CS10B031', 'Aditya Uttam Sapate', 324, 'password', '15:17:43 26 May 2015'),
('ME12B078', 'Anuraag', 325, 'password', 'Never Logged IN'),
('BE12B001', 'Ankit Tandekar', 326, 'password', 'Never Logged IN'),
('BE12B005', 'Atram Shubham Satishrao', 328, 'password', 'Never Logged IN'),
('NA12B013', 'Kailash Ambekar', 329, 'password', 'Never Logged IN'),
('CE12B004', 'Aniket Kumar Sudhanshu', 330, 'password', 'Never Logged IN'),
('ME12B080', 'B Vignesh', 331, 'password', 'Never Logged IN'),
('NA13B003', 'M Aghamarshana', 332, '9343823090', '17:51:35 13 Apr 2015'),
('NA13B004', 'Amaldev E.S', 333, 'password', 'Never Logged IN'),
('NA13B005', 'Anas Musthafa', 334, 'password', '15:58:13 06 Oct 2016'),
('NA13B007', 'Arun Ramakrishnan', 335, 'password', 'Never Logged IN'),
('NA13B008', 'Desavath Tarun Kumar Naik', 336, 'password', 'Never Logged IN'),
('CE13M002', 'Bharath M S', 337, 'password', 'Never Logged IN'),
('CE13M003', 'Digant Sonwane', 338, 'password', 'Never Logged IN'),
('CE13M004', 'Himanshu Prakash Patil', 339, 'password', 'Never Logged IN'),
('CE13M007', 'Muthu Karthikeyan M', 340, '@alak3407', '18:53:40 13 Apr 2015'),
('AE11B038', 'Anuj Sanjay Vora', 341, 'password', 'Never Logged IN'),
('EE11B029', 'Nimit Jain', 342, 'password', 'Never Logged IN'),
('MM11B003', 'Aditya Sundar', 343, 'password', 'Never Logged IN'),
('MM11B001', 'Aaditya Lakshmanan', 344, 'password', 'Never Logged IN'),
('AE11B037', 'Akshay Seshadri', 345, 'password', 'Never Logged IN'),
('ME11B017', 'Gagan M Khandate', 346, 'password', 'Never Logged IN'),
('ME11B001', 'Abhishek Goyal', 347, 'password', 'Never Logged IN'),
('ME11B156', 'Ananthakrishnan G', 348, 'password', 'Never Logged IN'),
('NA13B009', 'Ganti Sai Sanjit', 349, 'ganti@SAI09', '15:00:16 14 Apr 2015'),
('ME12B009', 'Bhavik Rasyara', 350, 'password', 'Never Logged IN'),
('EE12B071', 'Aditya Uday Sant', 351, 'password', 'Never Logged IN'),
('EE10B052', 'Alfred Ajay Aureate R', 352, 'password', 'Never Logged IN'),
('EE10B053', 'Arjun Nitin Bhagoji', 353, 'password', 'Never Logged IN'),
('NA13B010', 'Goenka Parikshit Sanjay', 354, 'password', 'Never Logged IN'),
('PH10B009', 'Vishakh Hegde', 355, 'password', 'Never Logged IN'),
('EE10B104', 'Heda Manish Ghisulal', 356, 'password', 'Never Logged IN'),
('EE10B109', 'Prateek S Kolhar', 357, 'password', 'Never Logged IN'),
('EE10B113', 'Aditya Bharadwaj A', 358, 'password', 'Never Logged IN'),
('PH10B006', 'Pranay Kumar Reddy B', 359, 'password', 'Never Logged IN'),
('CS10B060', 'Abhiram R', 360, 'password', 'Never Logged IN'),
('AE10B028', 'Suhas S', 361, 'password', 'Never Logged IN'),
('NA13B011', 'Guru Prasad V', 362, 'password', 'Never Logged IN'),
('AE10B048', 'Sandeep B', 363, 'password', 'Never Logged IN'),
('NA13B056', 'Arshad Burhan T K', 364, 'password', 'Never Logged IN'),
('NA13B012', 'J J Jegadish', 365, 'password', '14:05:06 20 Apr 2015'),
('NA13B013', 'Karanam Gowtham Kumar', 365, 'password', 'Never Logged IN'),
('NA13B015', 'Md Afroz Alam', 366, 'password', 'Never Logged IN'),
('NA13B016', 'Mubeen A S', 366, 'password', '22:46:56 15 Apr 2015'),
('NA13B017', 'Nihal Abdussamad.P.M', 367, 'password', '18:15:56 08 Apr 2015'),
('NA13B018', 'Pamidipagu Sandeep', 367, 'password', '17:27:51 13 Apr 2015'),
('NA13B019', 'Parminder Singh', 368, 'password', 'Never Logged IN'),
('NA13B020', 'Poluboina Goutham', 368, 'password', 'Never Logged IN'),
('NA13B021', 'Prakhyat Shankesi', 369, 'password', 'Never Logged IN'),
('NA13B022', 'Puneet', 369, 'password', 'Never Logged IN'),
('NA13B024', 'T.Ramprabu', 370, 'password', 'Never Logged IN'),
('NA13B025', 'Rouzif Rasheed Moopan', 370, 'password', 'Never Logged IN'),
('NA13B026', 'L.Sai Manish', 371, 'password', 'Never Logged IN'),
('NA13B028', 'Sandeep Sathivada', 371, 'password', 'Never Logged IN'),
('NA13B030', 'B S S Srikar', 372, 'password', 'Never Logged IN'),
('NA13B031', 'Sunil Kumar J S', 372, 'password', '17:24:08 13 Apr 2015'),
('NA13B032', 'H Tejdeep Reddy', 373, 'pizza', '18:17:27 13 Apr 2015'),
('NA13B033', 'Rajshekhar Vinod Vannalwar', 373, 'password', 'Never Logged IN'),
('NA13B034', 'Vemula Krishna Vishal', 374, 'password', 'Never Logged IN'),
('NA13B035', 'Vivek Yadlapalli', 374, 'password', 'Never Logged IN'),
('CE11B087', 'Hisham Abdulla O P', 401, 'password', '15:52:35 06 May 2015'),
('CH11B054', 'Saad Mubarak K K', 402, 'password', 'Never Logged IN'),
('ME11B119', 'Salunke Rohit Ravindra', 403, 'password', 'Never Logged IN'),
('CS11B003', 'Abhijith C S', 404, 'password', '15:59:16 06 Oct 2016'),
('AE11B023', 'Nandakishore M M', 405, 'password', '12:10:43 02 Sep 2015'),
('ED11B002', 'Adithya R', 406, 'password', 'Never Logged IN'),
('AE11B022', 'Mohammed Shafeeq E T', 407, 'password', '16:18:51 28 Feb 2016'),
('CE10B048', 'Praveen A', 408, 'password', 'Never Logged IN'),
('CE10B101', 'Harikrishnan', 409, 'password', 'Never Logged IN'),
('CE10B067', 'Dhaval Bhati', 410, 'password', 'Never Logged IN'),
('CE10B066', 'Devarsh Kumar', 412, 'password', 'Never Logged IN'),
('ME11B003', 'Adhithya S', 413, 'password', 'Never Logged IN'),
('ME11B002', 'Abinash Deuri', 414, 'password', 'Never Logged IN'),
('ME11B016', 'Dontu Yaswanth', 415, 'password', 'Never Logged IN'),
('AE13B060', 'S Arun Keshav', 416, 'password', 'Never Logged IN'),
('ED11B052', 'Roshan Santhosh', 417, 'password', '02:49:59 13 Jun 2015'),
('AE11B001', 'Aditya Vijay Kumar', 418, 'password', 'Never Logged IN'),
('AE11B039', 'Athul P G', 419, 'password', '22:48:12 12 Apr 2015'),
('AE13B035', 'Swapnil Kumar Singh', 421, 'qwe007rty', '16:03:55 06 Aug 2015'),
('AE13B036', 'Vangapandu Pavan Sai', 422, 'password', 'Never Logged IN'),
('AE13B037', 'Vijaya Bhaskar Mamidi', 423, 'password', '12:02:08 13 Apr 2015'),
('ME10B120', 'Tati Krishna Chaitanya', 424, 'password', 'Never Logged IN'),
('ME10B077', 'Chenna Reddy Sarath Chandra Reddy', 425, 'password', 'Never Logged IN'),
('CE10B064', 'Andukuri Vijaya Rajendra', 426, 'password', 'Never Logged IN'),
('ED10B003', 'Ankit Kumar Jain', 427, 'password', 'Never Logged IN'),
('ED10B002', 'Alla Sudhakar Reddy', 428, 'password', 'Never Logged IN'),
('ED10B052', 'Ganesh M S', 429, 'password', 'Never Logged IN'),
('ED10B050', 'Ayush Maheshwari', 430, 'password', 'Never Logged IN'),
('ED10B048', 'Anant Kumar', 431, 'password', 'Never Logged IN'),
('AE13B059', 'Raghul M', 432, 'password', 'Never Logged IN'),
('EP13B019', 'Praveen Prashant', 433, 'password', 'Never Logged IN'),
('EE10B097', 'Tatiraju Sai Ram Prasanth', 434, 'password', 'Never Logged IN'),
('CH10B081', 'Balaga Ranadeep', 435, 'password', 'Never Logged IN'),
('ME10B135', 'Mohit Kumar Saini', 436, 'password', 'Never Logged IN'),
('ME10B121', 'Venkata Sagar V', 438, 'password', 'Never Logged IN'),
('ME10B131', 'Gadde Venkata Sai Kumar', 439, 'password', 'Never Logged IN'),
('BT10B068', 'Somagutta Maheswar Reddy', 440, 'password', 'Never Logged IN'),
('CH10B095', 'Paturu Venkata Avinash', 441, 'password', 'Never Logged IN'),
('EP13B021', 'Ravi Sai Shashanka', 442, 'password', 'Never Logged IN'),
('ME10B139', 'Pondugula Karthik', 443, 'password', 'Never Logged IN'),
('EE10B119', 'Sai Surya Teja S', 444, 'password', 'Never Logged IN'),
('EP13B022', 'Rohan Manoj Karkhanis', 445, 'password', 'Never Logged IN'),
('EE10B101', 'Avula Chinnivenkataramana Reddy', 446, 'password', 'Never Logged IN'),
('CE10B093', 'Myneni Venu Gopal', 447, 'password', 'Never Logged IN'),
('EE10B127', 'Raymond Joseph H', 448, 'password', 'Never Logged IN'),
('EP13B025', 'Shagesh.S', 449, 'password', 'Never Logged IN'),
('NA10B059', 'Kimudu Kurma Chandra', 450, 'password', 'Never Logged IN'),
('EE10B115', 'Nagandla Ravi Kiran Reddy', 451, 'password', 'Never Logged IN'),
('NA10B058', 'Siva Sai Chandra B', 452, 'password', 'Never Logged IN'),
('NA10B052', 'Bukka Sandeep Reddy', 453, 'password', 'Never Logged IN'),
('NA10B042', 'Galithotty Prasanth', 454, 'password', 'Never Logged IN'),
('CE11B002', 'Abhishek Basu', 456, 'password', 'Never Logged IN'),
('CE11B073', 'Gopindra S Nair', 457, 'password', 'Never Logged IN'),
('CE11B072', 'Chopperla Krishna Siva Teja', 458, 'password', 'Never Logged IN'),
('CE11B034', 'Mundlamuri Vinod Kumar', 459, 'password', '22:59:26 12 Apr 2015'),
('CE11B070', 'Botcha Pavana Kumar', 460, 'password', 'Never Logged IN'),
('EE11B030', 'Parimi Naga Venkata Sai Surya', 461, 'password', 'Never Logged IN'),
('EP13B027', 'Souvik Mazumder', 462, 'password', 'Never Logged IN'),
('EP13B029', 'Vishal Katariya', 463, 'password', 'Never Logged IN'),
('EP13B030', 'Vishav Rattu', 464, 'password', 'Never Logged IN'),
('ME12B081', 'Bangari Harikrishna', 1001, 'password', 'Never Logged IN'),
('ME12B085', 'Guntur Devanand', 1002, 'password', '04:54:15 14 Apr 2015'),
('NA12B001', 'Abbireddy Lakshmi Prasad Rayudu', 1003, 'password', '04:55:30 14 Apr 2015'),
('NA12B006', 'Chappagedda Vasu', 1004, 'password', 'Never Logged IN'),
('NA12B005', 'Badugu Jaychandra', 1005, 'password', '04:55:46 14 Apr 2015'),
('NA12B008', 'Chinthakunta Sanjeev', 1006, 'password', 'Never Logged IN'),
('NA12B007', 'Cheedella Venkata Sandeep Kumar', 1007, 'password', 'Never Logged IN'),
('NA12B012', 'Gujjula Vamsi Krishna Reddy', 1008, 'password', 'Never Logged IN'),
('AE13M001', 'Abubakker Sithick Basha A', 1011, 'password', 'Never Logged IN'),
('AE13M010', 'Deepak Varma R S', 1012, 'password', 'Never Logged IN'),
('AE13M025', 'Syam Sundar Kandukuri', 1013, 'password', 'Never Logged IN'),
('AE13M013', 'Jaswanth Chowdary U ', 1014, 'password', 'Never Logged IN'),
('AE13M015', 'Kaparthi Praneel Kumar', 1015, 'password', 'Never Logged IN'),
('CS10B033', 'Chandra Mouli S', 2001, 'password', 'Never Logged IN'),
('CS10B034', 'Chunduru Venkata Sai Manoj Kumar', 2002, 'password', 'Never Logged IN'),
('CS11B031', 'Addanki Raghavendra Kiran', 2003, 'password', 'Never Logged IN'),
('CS11B024', 'Sasidhar Sanapala', 2004, 'password', 'Never Logged IN'),
('CS11B005', 'Akiti Chandan Reddy', 2005, 'password', 'Never Logged IN'),
('CS11B032', 'Anuj Fulia', 2006, 'password', 'Never Logged IN'),
('CS11B030', 'Abhinav Garlapati', 2007, 'password', 'Never Logged IN'),
('EE11B010', 'Bharat Chandrahas Dandu', 2008, 'password', 'Never Logged IN'),
('EE11B028', 'Moningi Sai Ashish', 2009, 'password', '23:57:55 13 Apr 2015'),
('EE11B032', 'Ravi Teja Devara', 2010, 'password', 'Never Logged IN'),
('EE11B105', 'Tamminaina Sunil', 2011, 'password', '22:58:42 12 Apr 2015'),
('CH11B073', 'Amburi Shalemu Rajulu', 2012, 'password', 'Never Logged IN'),
('EP11B012', 'Malipeddi Aditya', 2013, 'password', 'Never Logged IN'),
('EP11B015', 'Prashanth S Hostel Change', 2014, 'password', 'Never Logged IN'),
('EE11B039', 'Srikalyan Yarlagadda', 2015, 'password', 'Never Logged IN'),
('AE13M003', 'Avimanya Naskar', 2016, 'password', 'Never Logged IN'),
('AE13B061', 'Rohit Reddy', 3001, 'password', 'Never Logged IN'),
('BT11B024', 'Piyush Uthra', 3002, 'password', 'Never Logged IN'),
('CE11B097', 'Akash', 3003, 'password', 'Never Logged IN'),
('CE11B005', 'Ankit Kumar Jain', 3004, 'password', 'Never Logged IN'),
('BT11B001', 'Akshit Ashok Salecha', 3005, 'password', 'Never Logged IN'),
('AE11B003', 'Alkanti Venkata Ratnakar Reddy', 3006, 'password', 'Never Logged IN'),
('CE11B035', 'Neeraj Yadav', 3007, 'password', 'Never Logged IN'),
('CE11B004', 'Amrithraj A', 3008, 'password', 'Never Logged IN'),
('ED11B001', 'Abhishek K', 3009, 'password', 'Never Logged IN'),
('ED11B003', 'Arun Raghupathy', 3010, 'password', 'Never Logged IN'),
('ME11B147', 'Sashank Vandrangi', 3011, 'ryukenden', '08:53:35 15 Apr 2015'),
('CS11B002', 'Aayush Agarwal', 3012, 'jetflap1', '00:48:48 13 Apr 2015'),
('BT11B007', 'Balaji K', 3013, 'password', 'Never Logged IN'),
('BT11B003', 'Arvindabharathi', 3014, 'password', 'Never Logged IN'),
('BT11B050', 'Dileep K', 3015, 'password', 'Never Logged IN'),
('BT11B039', 'Srikiran C', 3016, 'password', '21:02:40 13 Apr 2015'),
('CH11B001', 'Abhishek S', 4001, 'password', 'Never Logged IN'),
('ME11B154', 'Addarsh C', 4002, 'password', '09:00:38 13 Apr 2015'),
('EE11B001', 'Abhilash S', 4003, 'TrafalgarLaw', '23:48:37 12 Apr 2015'),
('EE11B003', 'Abiram Velan R', 4004, 'password', '10:27:49 13 Apr 2015'),
('EE11B002', 'Abhishek Namballa', 4005, 'password', 'Never Logged IN'),
('CH11B003', 'Adarsh Chavakula', 4006, 'password', '01:23:06 14 Apr 2015'),
('EE11B033', 'Rohan Jaishankar', 4007, 'password', 'Never Logged IN'),
('EP11B011', 'Mahajan Shashank Ravindra', 4008, 'password', 'Never Logged IN'),
('BT10B003', 'Aman Kumar', 4009, 'password', 'Never Logged IN'),
('BT10B045', 'Tolkappiyan P', 4010, 'password', 'Never Logged IN'),
('CE13M170', 'Ranjith K B', 4011, 'password', 'Never Logged IN'),
('CE13M174', 'Shyam Shankar', 4012, 'password', 'Never Logged IN'),
('CE13M163', 'Naz A Manaf', 4013, 'password', 'Never Logged IN'),
('EE11B013', 'Chitturi Sidhartha', 4014, 'password', 'Never Logged IN'),
('CE10B065', 'Chandranshu Nanda', 4015, 'password', 'Never Logged IN'),
('CH11B092', 'Swastik S S Dash', 4016, 'password', 'Never Logged IN'),
('ED11B001', 'Abhishek K', 3009, 'password', 'Never Logged IN'),
('ED11B003', 'Arun Raghupathy', 3010, 'password', 'Never Logged IN'),
('ME11B147', 'Sashank Vandrangi', 3011, 'ryukenden', '08:53:35 15 Apr 2015'),
('CS11B002', 'Aayush Agarwal', 3012, 'jetflap1', '00:48:48 13 Apr 2015'),
('BT11B007', 'Balaji K', 3013, 'password', 'Never Logged IN'),
('BT11B003', 'Arvindh Bharathi', 3014, 'password', 'Never Logged IN'),
('BT11B050', 'Dileep K', 3015, 'password', 'Never Logged IN'),
('CH11B092', 'Srikiran C', 3016, 'password', 'Never Logged IN'),
('CH11B001', 'Abhishek S', 4001, 'password', 'Never Logged IN'),
('ME11B154', 'Addarsh C', 4002, 'password', '09:00:38 13 Apr 2015'),
('EE11B001', 'Abhilash S', 4003, 'TrafalgarLaw', '23:48:37 12 Apr 2015'),
('EE11B003', 'Abiram Velan R', 4004, 'password', '10:27:49 13 Apr 2015'),
('EE11B002', 'Abhishek Namballa', 4005, 'password', 'Never Logged IN'),
('CH11B003', 'Adarsh Chavakula', 4006, 'password', '01:23:06 14 Apr 2015'),
('EE11B033', 'Rohan Jaishankar', 4007, 'password', 'Never Logged IN'),
('EP11B011', 'Mahajan Shashank Ravindra', 4008, 'password', 'Never Logged IN'),
('CH10B004', 'Ankit Nama', 4009, 'password', 'Never Logged IN'),
('CE10B006', 'Akshay Soni', 4010, 'password', 'Never Logged IN'),
('CE10B005', 'Adarsh R', 4011, 'password', 'Never Logged IN'),
('CE10B002', 'Abhinay Reddy Sarvayyagari', 4012, 'password', 'Never Logged IN'),
('CE10B007', 'Anshul Singh Bhadauria', 4013, 'password', 'Never Logged IN'),
('CE10B003', 'Abhishek Agrawal', 4014, 'password', 'Never Logged IN'),
('CE10B065', 'Chandranshu Nanda', 4015, 'password', 'Never Logged IN'),
('CE10B004', 'Abhishek Sharma', 4016, 'password', 'Never Logged IN');

-- --------------------------------------------------------

--
-- Table structure for table `alak_pointsTable`
--

CREATE TABLE IF NOT EXISTS `alak_pointsTable` (
  `h1` varchar(40) NOT NULL,
  `p1` int(11) NOT NULL,
  `h2` varchar(40) NOT NULL,
  `p2` int(11) NOT NULL,
  `h3` varchar(40) NOT NULL,
  `p3` int(11) NOT NULL,
  `posA` int(11) NOT NULL,
  `pA` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `title` varchar(40) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alak_pointsTable`
--

INSERT INTO `alak_pointsTable` (`h1`, `p1`, `h2`, `p2`, `h3`, `p3`, `posA`, `pA`, `type`, `title`, `date`) VALUES
('Ganga', 26, 'Godavari', 12, 'Mandakini & Tapti', 10, 0, 0, 1, 'Schroeter', '15 Mar 2015'),
('Sharavathi', 237, 'Alakananda', 234, 'Narmada', 148, 234, 2, 0, 'Lit Soc', '08 Apr 2015'),
('Narmada', 200, 'Mahanadhi', 64, 'Alakananda', 63, 63, 3, 2, 'Tech Soc', '07 Apr 2015');

-- --------------------------------------------------------

--
-- Table structure for table `alak_posts`
--

CREATE TABLE IF NOT EXISTS `alak_posts` (
  `pId` int(11) NOT NULL AUTO_INCREMENT,
  `pDisplay` int(11) NOT NULL,
  `pRoll` varchar(8) DEFAULT NULL,
  `pName` varchar(40) DEFAULT NULL,
  `pSubject` varchar(100) DEFAULT NULL,
  `pContent` varchar(3000) DEFAULT NULL,
  `pDate` varchar(30) DEFAULT NULL,
  `pReplyFlag` int(1) DEFAULT NULL,
  `pArchive` int(11) NOT NULL,
  `pReplyMail` varchar(100) NOT NULL,
  `pTag` varchar(5) NOT NULL,
  PRIMARY KEY (`pId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=208 ;

--
-- Dumping data for table `alak_posts`
--

INSERT INTO `alak_posts` (`pId`, `pDisplay`, `pRoll`, `pName`, `pSubject`, `pContent`, `pDate`, `pReplyFlag`, `pArchive`, `pReplyMail`, `pTag`) VALUES
(187, 0, 'CS11B003', 'Abhijith C S', 'Testtetste', 'ok', '11:36:53 08 Apr 2015', 1, 1, '', ''),
(189, 1, 'NA13B005', 'ANAS MUSTHAFA', 'Alak Hostel Night', 'Alakananda Hostel Night of the year 2015 will happen on 8th April 2015. "IPL" is the theme this time. All are welcome!', '12:58:45 08 Apr 2015', 0, 1, '', 'NIL'),
(190, 1, 'AE13B035', 'Swapnil Kumar Singh', 'New Inmates Forum', 'People can now login to the Inmates Forum and post any query or complaints. Check out the new Inmates Forum here - www.alakananda.in/forum', '13:20:50 08 Apr 2015', 0, 0, '', 'NIL'),
(191, 0, 'NA13B017', 'Nihal Abdussamad.P.M', 'Hostel jersey', 'Wen r we getting the remaining hostel jersies??', '18:12:32 08 Apr 2015', 0, 1, '', 'SPO'),
(192, 1, 'AE13B031', 'Shashwat Salgaocar', 'Alak places FIRST in SFM!', 'Alakananda Hostel places FIRST in Short Film Making. Congratulations to the team! And, we are Second in Lit-Soc Table, just 8 points behind Sharav.', '02:06:29 13 Apr 2015', 0, 1, '', 'NIL'),
(193, 0, 'AE12B004', 'Dheepak N Khatri', 'Alak places FIRST in SFM!', 'Cool... Lets thulp lit-soc this yr!', '02:30:44 13 Apr 2015', 1, 1, '', ''),
(194, 1, 'AE13B035', 'Swapnil Kumar Singh', 'SOLIDWORKS FUNDAE SESSION 14th April, 2PM', 'There is Solidworks Fundae Session tomorrow at 2pm in TechRoom. We need to start preparing for the next event "Desmod", requiring the knowledge of Solidworks! It''s the last event for this year and we need to put fight in order to come 2nd. ', '02:28:20 14 Apr 2015', 0, 1, 'swapnilkumarsingh15@gmail.com', 'NIL'),
(195, 0, 'NA13B016', 'Mubeen A S', 'Hostel jersey', 'We got it. Vols will distribute it soon.', '22:44:50 15 Apr 2015', 1, 1, '', ''),
(196, 1, 'NA13B016', 'Mubeen A S', 'Alak puts GOLD in Basketball', 'Alak puts GOLD in Basketball Schroeter after long six years, beating Godav in the finals! Kudos to the Team!', '22:46:22 15 Apr 2015', 0, 1, '', 'NIL'),
(197, 0, 'CS11B003', 'Abhijith C S', 'Pass-out T-Shirt?', 'When are we getting it?', '13:39:27 20 Apr 2015', 0, 1, '', 'ALU'),
(198, 0, 'NA13B012', 'J J Jegadish', 'Pass-out T-Shirt?', 'We are in the process and I will post updates soon.', '13:42:26 20 Apr 2015', 1, 1, '', ''),
(199, 0, 'CE11B087', 'Hisham Abdulla O P', 'For Urgent Attention', 'Pipe has been broken by the Monkeys in A4 Quadi Side bathroom. Please take immediate action!', '15:52:05 06 May 2015', 0, 0, '', 'GEN'),
(200, 0, 'AE13B027', 'S Deepak Kiran', 'For Urgent Attention', 'what is the rest room no ', '16:41:23 06 May 2015', 1, 0, '', ''),
(201, 0, 'CS11B003', 'Abhijith C S', 'Damn Important', 'How are you man?! :P', '01:41:00 07 Oct 2015', 0, 0, '', 'LIT'),
(202, 0, 'AE11B022', 'Mohammed Shafeeq E T', 'You never use this.', 'Why da', '16:15:23 28 Feb 2016', 0, 1, '', 'SPO'),
(203, 0, 'CS11B003', 'Abhijith C S', 'Testing ', 'Hello, Whats up man?', '15:41:04 06 Oct 2016', 0, 0, '', 'GEN'),
(204, 0, '', '', '', '', '15:41:04 06 Oct 2016', 0, 0, '', ''),
(205, 0, '', '', '', '', '15:41:05 06 Oct 2016', 0, 0, '', ''),
(206, 0, 'CS11B003', 'Abhijith C S', 'Test', 'tt', '15:47:12 06 Oct 2016', 0, 0, '', 'GEN'),
(207, 0, 'CS11B003', 'Abhijith C S', 'Test', 'Helo', '15:47:35 06 Oct 2016', 1, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `alak_reports`
--

CREATE TABLE IF NOT EXISTS `alak_reports` (
  `rId` int(11) NOT NULL AUTO_INCREMENT,
  `rDate` varchar(25) DEFAULT NULL,
  `rCode` varchar(5) NOT NULL,
  `rTitle` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`rId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `alak_secretaryDetails`
--

CREATE TABLE IF NOT EXISTS `alak_secretaryDetails` (
  `sCode` varchar(3) DEFAULT NULL,
  `sPass` varchar(28) DEFAULT NULL,
  `sName` varchar(50) DEFAULT NULL,
  `sRoll` varchar(8) DEFAULT NULL,
  `sPost` varchar(27) DEFAULT NULL,
  `sRoom` int(4) DEFAULT NULL,
  `sEmail` varchar(26) DEFAULT NULL,
  `sMobile` bigint(15) DEFAULT NULL,
  `sBudgetDate` varchar(20) DEFAULT NULL,
  `sUpdate` varchar(20) DEFAULT NULL,
  `sInfo` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alak_secretaryDetails`
--

INSERT INTO `alak_secretaryDetails` (`sCode`, `sPass`, `sName`, `sRoll`, `sPost`, `sRoom`, `sEmail`, `sMobile`, `sBudgetDate`, `sUpdate`, `sInfo`) VALUES
('GEN', 'password', 'S Deepak Kiran', 'AE13B027', 'General Secretary', 220, 'kiran1234527@gmail.com', 9003295681, '-', '05:11:09 29 Aug 2015', '*Not yet updated'),
('SPO', 'password', 'Mubeen A S', 'NA13B016', 'Sports Scretary', 366, 'abhijithcs1993@gmail.com', 9884988400, '-', '22:35:39 15 Apr 2015', '*Not yet updated'),
('LIT', 'password', 'Shashwat Salgaocar', 'AE13B031', 'Literary Affairs Secretary', 163, 'shashwat1611@gmail.com', 9884184060, '-', '01:44:12 07 Oct 2015', 'To bring Lit-Soc glory to Alak!'),
('ALU', 'password', 'J J Jegadish', 'NA13B012', 'Alumni Affairs Secretary', 365, 'jjjegadish@gmail.com', 9444044001, '-', '13:41:03 20 Apr 2015', 'Act as a medium of interaction between the hostel residents and our alumni'),
('SOC', 'password', 'ANAS MUSTHAFA', 'NA13B005', 'Social Affairs Secretary', 334, 'anasvanu@gmail.com', 9884180732, '06 Oct 2016', '15:57:20 06 Oct 2016', 'ï‚· Make the lives of residents more enjoyable through fun filled activiti'),
('HEL', 'password', 'L Sai Manish', 'NA13B026', 'Health and Hygiene Secretar', 371, 'saimanish12337@gmail.com', 9043243939, '-', '08:34:41 07 Apr 2015', 'To make sure that Alank and its premises are clean and hygienic'),
('TEC', 'qwe007rty', 'Swapnil Kumar Singh', 'AE13B035', 'Technical Affairs Secretary', 226, 'swapnilkumarsingh15@gmail.', 9962202861, '-', '16:03:55 06 Aug 2015', 'Alak will win TechSoc 2015-16');

-- --------------------------------------------------------

--
-- Table structure for table `alak_tasks`
--

CREATE TABLE IF NOT EXISTS `alak_tasks` (
  `tId` int(11) NOT NULL AUTO_INCREMENT,
  `tPost` varchar(100) NOT NULL,
  `tDate` varchar(11) DEFAULT NULL,
  `tTime` varchar(5) DEFAULT NULL,
  `tVenue` varchar(25) DEFAULT NULL,
  `tContent` varchar(500) DEFAULT NULL,
  `tAcknowledge` int(1) DEFAULT NULL,
  `tArchive` int(1) DEFAULT NULL,
  PRIMARY KEY (`tId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=240 ;

--
-- Dumping data for table `alak_tasks`
--

INSERT INTO `alak_tasks` (`tId`, `tPost`, `tDate`, `tTime`, `tVenue`, `tContent`, `tAcknowledge`, `tArchive`) VALUES
(237, 'Social Affairs Secretary', '08 Apr 2015', '18:30', 'Alakananda Hostel', 'The most awaited event of the year, the Alak Nite is here! Come and Enjoy!', 1, 1),
(238, 'Literary Affairs Secretary', '13 Apr 2015', '17:45', 'CRC 101', 'LitSoc Elocution', 1, 1),
(239, 'General Secretary', '29 Aug 2015', '21:30', 'common room', 'GBM', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `alak_wardenDetails`
--

CREATE TABLE IF NOT EXISTS `alak_wardenDetails` (
  `wName` varchar(100) NOT NULL,
  `wPhone` varchar(30) NOT NULL,
  `wEmail` varchar(50) NOT NULL,
  `wAddress` varchar(200) NOT NULL,
  `wWeb` varchar(500) NOT NULL,
  `wPhoto` varchar(500) NOT NULL,
  `wCode` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alak_wardenDetails`
--

INSERT INTO `alak_wardenDetails` (`wName`, `wPhone`, `wEmail`, `wAddress`, `wWeb`, `wPhoto`, `wCode`) VALUES
('Dr. Somashekhar S. Hiremath', '0442257 4681', 'somashekhar@iitm.ac.in', 'MSB 310, Department of Mechanical Engineering\r\nIIT Madras, Chennai - 600 036', 'http://mech.iitm.ac.in/PEIL%20HOME%20PAGE/Members/Prof.Somasekhar/Soma%20sekhar.html', 'http://mech.iitm.ac.in/PEIL%20HOME%20PAGE/Members/Prof.Somasekhar/somashekharweb.jpg', 'WAR');

-- --------------------------------------------------------

--
-- Table structure for table `entry`
--

CREATE TABLE IF NOT EXISTS `entry` (
  `name` varchar(30) DEFAULT NULL,
  `friend` varchar(100) DEFAULT NULL,
  `ans1` varchar(3000) DEFAULT NULL,
  `ans2` varchar(2000) DEFAULT NULL,
  `ans3` varchar(1000) DEFAULT NULL,
  `ans4` varchar(500) DEFAULT NULL,
  `ans5` varchar(1000) NOT NULL,
  `words` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entry`
--

INSERT INTO `entry` (`name`, `friend`, `ans1`, `ans2`, `ans3`, `ans4`, `ans5`, `words`) VALUES
('Abhijith', 'kk', 'ob chori :p', 'everything is happy memories. ', 'do whatever u want till u understand what u like to do', 'kundi', '', 'King of PJs, Jackass!,chorian'),
('Abhijith', 'Piyush', 'CS', 'His unique way of designing pages. :)', 'Dude, you are one of the very few CS guys who don''t concentrate just on CS. :P', 'Will miss you!', '', 'Smartass'),
('Abhijith', 'The girl who proposed to you and got rejected. *wink wink*', 'His wits. His never-carried-out treats. ', '100 rupa mappakiyathin nanniyunde. :)', 'CSeee I Loveee youuuuuu! Muah!! <3', 'A Badass Senior. But, a badass senior you can trust.', '', 'The Best Senior Ever!!'),
('Roshan', 'Preethi. :)', 'Your Awesome Photography!!!!!!', 'The nights spent playing wolf and pictionary with you and the others were definitely the best.', ':) Take care chettoi !!', 'nay. i plan to reveal my name so, :D', '', 'Intimidating ,respectful,awfully talented'),
('Abhijith', '', 'His cheerful nature, "interaction sessions" and the immense help after that and infi contacts :D', 'My first proper "interaction session"...and the friendship that followed!', 'Milder interaction sessions! ', '', '', 'King of PJs,Freshie stalker!,Scary'),
('Mohammed', 'Preethi. :)', 'Remarkable patience.', ';) shobanente kude ulla pic ith vare rahul thannilla alle? :P', 'Shafeeekaaa miss cheyyum tto.... take care :) nikahin vilikanam :D', 'nay. nammal eda poda bandham alle :P', '', 'The best core Saarang 2015 :)'),
('Abhijith', 'his miserable roomie', 'Smile', 'I don''t know any of his secrets. Although I suspect that he has a girl friend back at home. ;)', 'We will always be friends abhijith''e... but dude! who the hell is your gf?', 'Neva would I want to abuse Abhijith''e, Neva', '', 'Jackass!,Entertiner,goodboy,baby,silly,bighead,girlie'),
('Abhijith', 'Velmurugan!', 'This man''s weird way of knowing who you are,before you know him. When I came to insti I heard stories about him,when I met him he was creepier than the stories portrayed him as!', 'He still wants my keychain ,I guess.', 'No,I shall not part with my key chain!', '', '', 'King of PJs, Jackass!,Mallu'),
('Abhijith', 'Arjun (1st year ) navarch', 'Coming to pampa hostel too often! :P', 'Memories - Coming to pampa and beating Aryendra :D', 'Ask him in fact. How will you justify this coincidence that your name is Abhijith CS and you are from CS department? :P', 'Haha. No :P', '', 'jackass!'),
('Abhijith', 'Sashank', 'His friendliness. ', '', 'Stay the way you are. :D You''re infinitely friendly and nice to people. ', '', '', 'People''s man. :p'),
('Abhijith', 'Chekkuty..', 'His awesome irritating activities,his stupid yet funny jokes,his interactions with juniors,his greed for treats..,his contribution in birthday parties.(i hope he doesnt come to mine) ,etc', 'Him ragging me and making me dance to twinkle twinkle little star..', 'Do take leave from your job every year and come to IITM to rag freshers;and open a new fb page for your colleagues at office to continue spamming..', 'nothing much...peace...', '', 'irritating and caring senior'),
('Abhijith', 'Enn Swantham Sudev :P ', '"Chori. Para Chori".. That would be mallu term for "infinitely paining people without shame or regret". His consistent and persistent efforts to make life difficult for others is very infamous.But, you know.. That''s his way of spreading happiness. He will always be remembered to spread hilarious and contagious laughter.', 'An excellent leader, he has connections with all branch and batch students of institute. He goes well beyond himself to help and pain people - especially juniors. Abhijith vandalises his wing neighbours'' rooms when he is frustrated with his stressful CS curriculum. Once he came to room, took the talcum powder and completely squeezed it out on the guy to make him look like a polar bear. ', 'Bro... Stay awesome. And pain all that people in the company you are placed. You''ll probably become the most infamous guy there.Spread Happiness', '', '', 'Chori,KattaChori,ParaChori,Leader,AwesomeFriend,FrustratedMallu'),
('Yaswant', 'Snehith', 'his funny and crazy walking style. his stupid words in between of a quality convo', '', '', '', '', 'muggu max na koduku'),
('Abhijith', '', 'kundatharam', 'kundanism', 'always be a kundan', '', '', 'kundan'),
('Abhijith', 'I''m batman :p', 'CHORI', 'All nighters', 'Don''t change', 'naah :)', '', 'Kundam'),
('Abhijith', 'Green Rosh', 'For being the most "choriyan" insti has seen in the last 50 years.', 'What happened at NSS camp stays at NSS camp !!!', 'Don''t get fired. Be less of a "choriyan"', '', '', 'Chori'),
('Abhijith', 'Kishore ', 'Chori and Kundatharam! :p', 'Will take treats from everyone and won''t ever give treat to anyone! The evengreen freshie stalker of IITM! _/\\_', 'Please put a treat atleast once! Don''t chori @edgeverve...Pani Paalum! :p', '', '', 'The best senior I have met in IITM who have the ability to make good relations with everyone!'),
('Abhijith', 'Jeevan', 'Ragging', '', 'Put treat', '', '', 'The most popular senior'),
('Abhijith', 'Anas Jafry', 'KUNDATHARAM and CHORIJokes aside , one of the best senior and a true friend I''ve got, like a big brother for many of us. Your absence will be truly felt a gap that cannot be filled. We are gonna serously miss you.', 'Don''t remember any cause we''ve got so much :D', 'You were like more than just a good friend , may be like a big brother who was always there with me to guide me. Your gap can never be filled espacially all the choris :D', 'Kalla myraaa :DAbuses yes I would love to but I guess there''s a word limit :P', '', 'Kundan,Choriyan'),
('Yaswant', '', 'his spects :P', '', '', '', '', 'Maggu'),
('Abhijith', '', 'chori / itching !!!', 'This is a public secret he is gay.', 'Goodbye. Be gone4ever. Don''t even think of coming back.', '', '', 'There are no words to describe him.'),
('Abhijith', '', 'His Fair Skin', 'My Nigga', 'How about You go Fuck Yourself', 'Fuck this Cocksucker!', '', 'Bitch'),
('Abhijith', 'S Sreenath', 'Only senior befriended before coming to insti.', 'He is the bastard who asked me to clean his room and payed me an ever so generous amount of 1Re.', 'Nee onnum orukallathum nanagulada :P', 'Avishyathine mollil onde.', '', 'CHORIYAN,KUNDAN,Freshie Stalker'),
('Abhijith', 'Biyas.', 'His ragging, arrogance, wrong doings and influence.', 'I am delighted that he is leaving the insti. I hope another C.S doesn''t emerge.', 'Accommodate different opinions and people. Use your leadership skills wisely in the future. Have the heart to admit your mistakes-that makes you a much better person. There is more to life than money, masses and parties. Do forgive people. Don''t be the leader of a foolish mob.Finally, as you would now, many of the guys who smile at you and seem to enjoy spending time with you actually don''t like you. Just like the insti "culture" demands them to do, personal gain is what motivates them to obey or act friends with you. P.S- I admit that I know very little of you. Just my opinions...:)', 'No,thank you.', '', 'Strong but bad,Influential but bad,Modern capitalist,Leader of the mob'),
('Abhijith', 'vishakh v nadh', 'purathekk valya kadiyananenn kanikkana bhavam.....pavam manass athraykonnumilla...athond athinuvendi ulla overactionukala kanunnath muzhuvan', '', 'dont forget me....call me in between ....keep in touch', 'bro...', '', 'lukum jadeyilum valya simhama...but ullil oru poochaya..'),
('Abhijith', '', '', '', '', '', 'Ft', ''),
('Mohammed', '', 'For all the calls answered, dealt with and relationships saved. Ever grateful! But mostly for a golden heart. ', '', 'Good things happen to good people. So I have no worries for you. Period. ', '', '"Sree...njan ippo hostelil illa." :P', ''),
('Abhijith', 'obb arjun rakesh', 'HIS CHORIYAL!!`', 'KANADA CELLOTAPE ITTATHU -_-', 'enthu parayanappa.. webops nirthiyathu chathiyaypoyi', 'ehh moshalle', 'kure kkure karyangal..chuck!', 'A practical human being'),
('Abhijith', '', 'His unique appropriate name.', '', '', '', '', 'His build and humbleness contradict each other :P'),
('Abhijith', 'Nikhil', 'Ragging!!', 'Posed himself as MITR member and threatened d 2nd years', 'Nothing ...be the way you are', '', 'Poilchu :-)', 'CS'),
('Abhijith', '', 'What he is... (ob)', '', 'PUT TREAT :P', '!@#$%^&*()_+ Enthannu vacha oohichu pooripicho ;) :P', 'PUT TREAT!!!!!!!!!!!!!!!!!!!!!!', 'PainMaxxxx,Funny,Unforgettable,Friend'),
('Abhijith', 'Remil ', 'KATTA CHORI, KUNDATHARAM, PARA NAARI', 'This person has chased me several times from alak all the way to himalaya just for the sake of IRRITATING :D :D The scariest figure I had before joining IIT and the most friendly senior ever after joining ', 'Please FUCK OFF !!! :D you are awesome', 'Naah LOTS OF RESPECT MAHN!!! :P', 'THADIYAAA MAANAM VAANEEL ODIKKOOOO!!!', 'KUNDAN'),
('Abhijith', 'Rouzif', 'The endless torture anyone and everyone who has ever known him had to go through.', 'Nothing. If anything it would''ve been about his homo nature. But everybody knows that by now, I guess.', ':P', 'Too much. Nothing in particular.', '"put treat!" "light only!"', 'scratcher'),
('Abhijith', 'oru paavam', 'katta chori and chalo', 'ithvare illa', '', '', 'mmakk raamp aakaam', 'choriyan'),
('Mohammed', 'REMIL', 'KOOORA CORE', 'Verum valpatharam and Vedi Poka and all. Katta bhuji classmate in Marine Robotics......', 'bull shit ( chaanakam ) to the CORE!!!', 'Naah Lots of Respect !!!', 'Enna ingottu VAAYOOO!!!', 'AYYEEEEEE'),
('Abhijith', 'atho ....athe.....waitai waitai......', 'Father,mother,husband,wife of vic', 'He made jafry pregnent!!!yes the child is made in cs ', 'Ellaarkkum daivam Ellaam kodukkillalloo....ithokke oru vidhiyaayi kanakkaakiya mathi.....ithineekkaalum koravulla ethrayoo aalkaar und.....ithinum valuth entho varaanirunnathaa.....adutha janmathilenkilum oru MUDIYANAAya putranaayi maaratte!!!!', '#######', 'Put treat!!!', 'ningal choriyan chekkanmaare kandikka..ningla kundan chekkanmaate kandikka,...kandillenkil poor....alakileekk poirr...240kk poorr'),
('Mohammed', '', 'Echitharam. He has not even put a single treat till now. ', 'Yea, once Shafeeq was caught shagging in his room :D', 'Aa echitharam onn kurachaalu. GATE AIR 31 TREAT :D', 'Kalla panni ShafeeeqqeyyIf I start abusing it would fill this column up :D', 'Tries to troll others but ends up getting trolled himself !! :D"NGEeee " ', 'Echimaaaxx,Kanjoooss'),
('Abhijith', 'china, IF u know who i am then u should know that u where a great guy once i got to know u', 'SUBAI mathram mathi allo remember chayan, ', 'Rather die than share my secrets', 'Joli KIttan allavarum prarthichu, appom pinne banglore ill povkayalla??, enni chennai yilaku vararuthu', 'egarku equal aya abuses parayan enta manyatha samathikunnilla, athu kondu onnum parayunilla', 'Put treat da, appana appana, Yo bro', 'athrakum valiya CHETTA annu,CS ina varnikan pattilla,Only word to describe CS is "CS"'),
('Abhijith', 'Aaditya', 'Nuisance', 'For giving me a fake name on the nameboard I took his nameboard and threw it in dustbin.That is why his nameboard is not there at the entrance.', 'Act a little more mature for your size. :D', '', 'Put treat!...', 'Though a nuisance in case of a serious problem he will always be there in front for his friends.'),
('Abhijith', '', 'Chorichil', 'He will continue his chorichil, even if you and CD only there', 'Ell please continue your chorichil', 'His presence make everyone laugh, and if he is there in a crowd, he will be the center of attraction of the crowd.', 'nte mwoone......', ''),
('Abhijith', '', 'design core for our batchhelping nature', 'his name has cs which is so distince', 'be kind and helping the way u are', '', '', 'kind'),
('Abhijith', 'Zenin', 'Oru bellya sambavam thenne alle!', 'Aarodum parayanda, njan oru vellya sambhava.', 'Kore kaaryam undu. Type cheyyan ichiri budhimuttundu', 'Njan angane cheyyuo!', 'Mairanmar', 'Kalakaaran :p'),
('Abhijith', 'apo ith varey inney pidikitteeeelley :/ njn muth!! :) febin', 'the first senior that i get to know from this insti is you and the image some of the senior has given to you was totally bad!! that when i see you first time in person i was scared to come in front of you...... and my mind was totally changed after knowing you more!! more i came to know about that much i get closer to you... even my mother knows about you, its only because u were the one of my bestieee even though u r a senior!! so u will b there in my mind forever as a best fried in all my way :)', 'guess, we dont hav ny secrets in between :)', 'its the last few days of us in this insti..... feel really bad about some sort of naughty things i hav done!! never mean to put u out of ur temper or to hurt u... u knw what...i really didn''t meant anything... keep alive...a big sorry for--------------------------------!!!!!!!!! (i really want u to be in this insti) ', 'naaayeedey dashey!!! ethrey chorinjikku ingalinney!! kanakku vallathinum indo??!! illallo!! venel athntey peril inkoru treat okey tharua tto :D ;)', 'lite maxxxx!!!!', 'chori maxxxx!!! but lovable ;)'),
('Mohammed', 'APM', 'His good character. ', 'None.. Just acquaintance. At first you don''t seem to pay attention to anyone around. ', 'All the best for your future endeavours.. ', 'Eyy... Paavalle? ðŸ˜†ðŸ˜Š ', 'I haven''t listened to his talks yet.', ''),
('Roshan', 'The Undertaker', 'The photos he took and the girls he stalked before finally settling for Sreenidhi', 'He never shaves ( You know what I mean )', 'Get into lingerie photography. Win win for everyone. ', 'Stupid girl ', 'I won''t shave my moustache dude', 'The boy with a girl''s heart,Late bloomer'),
('Abhijith', 'Dan Brown', 'Being the person whom almost everyone gets awake at the mention of the name. Either it''s cuz they are scared of you or fond of you. ', 'None. We are just an acquaintance. ', 'Nothing much. You pretty much enjoyed being a boss in the campus. ', 'Not at all needed.', 'Kundan. I guess the campus started to say cuz of him. ', 'Most wanted ,Beware of him'),
('Mohammed', 'kk', 'high pitch voice(women touch) :pway of smiling.(its true)', 'iniyum undallo ivde one more year. sahikanallo padachone!! ', 'be good like this always.', 'ninghalum cs nteyum relation status enda??', 'saarang 2015', 'senior buddy'),
('Mohammed', '', 'All those philosophies and dreams!', 'The senior who, when sitting at Guru with a bunch of freshies at midnight, was ready to ponder out aloud how great friends he were with his juniors. ', '', '', '"Lite"', 'dreamer'),
('Abhijith', '', 'Self acclaimed freshie stalker " forever"! A little intimidating at times, but so much respect for this guy! :p', 'Can''t pick one :D', 'Thank you :)', '', '"Assalamu Alaikkum" :D , "muthee!"', 'boss B| '),
('Abhijith', 'Anand Joseph Michael', 'unexpected places and times at which we meet ', 'ippam kunnan buns enne iril parayan vayi varullu', 'cse you rock...Thanks for the memories', 'ngan ivide vallom ezhuthi vecha pinne per ezhuthan pattila', 'ðŸ‘ðŸ‘', 'awesome,exciting,intimidating at first sight'),
('Mohammed', 'ingal kandupidikkii', 'COREEEEE!!', 'enthappa!', 'ingal oru baliya manushyanatta!', 'naah enganaya oru corine theri vilikkya!', 'chelavo? aah bayankara chelav iy edayayi', 'kidu changayi'),
('Abhijith', 'Aditya Suresh', 'I started hearing your name the day I entered the campus.U were a nightmare for many of the freshies.You are one of the most crazy and scary guy I have met in my life.I was always scared to say a lie to you fearing about the consequences.', '', '', '', 'Thanks for the fundaes you have given .I was really shocked on that day.It made me realize many things.', 'Choriyan,Treat core '),
('Abhijith', '', 'If you have any problem, CS and his army of freshies will solve it for you.Highly resourceful. Has a habit taking compromising photos and videos of wing mates.', '', '', '', '', 'Commander of Freshies,Mallu Don'),
('Abhijith', 'Gosu', 'Mallu mallu mallu, mallu mallu mallu. ', 'YES, i have many but abijit is so big and scary and powerful that if i try to share secrets he will smash my face into the keyboard. So one day i saw abijit doindsfafafasfasfasfgsdhdfjgdjgdfplako;nfblas', 'Jafry is here, in Mandakini 123. Always. ', 'NO, he is big, strong and scary. .', 'Where''s Jafry?', 'Cool '),
('Nandakishore', '1013 :P', 'His coding skills!', 'Man, you have that pseud look!', 'Dude, it is hard to find an honest mallu friend like you. Don''t change this attitude of yours. :D', '', 'Whatsup?Why don''t you use Android.', 'Mallu Foodie!'),
('Abhijith', 'CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!', 'CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!', 'CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!', 'CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!', 'CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!', 'CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!', 'CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!CHORI!KUNDAN!!!!!'),
('Abhijith', 'Sami', 'nuisance !!!! ( CHORI !!!)', 'Still I didn''t get a treat from you.. :(', 'Continue what you are doing wherever you go... I mean "chori" !!!!', 'Katta mairan, parama chetta , nari... :P', 'lite only !!!!', 'Kundan,myran,friend'),
('Mohammed', 'Akhil', 'Kundaism', 'Saarang kattu mudippichu', 'katta bhujee (gate 31)', 'ey venda', 'Lite dudee (in malappuram accent)', 'Kallan finance core aayi'),
('Abhijith', 'Vaisakh Shankar', 'His kanjoos attitude towards people and making juniors buy drinks for him.', 'He lost his virginity to a girl in bengaluru and she left him taking away his pants(with his wallet) and he was seen trying to reach his pg wearing a curtain.', 'Macha, keep some cash with you at all times. Borrowing from girls(sisters), juniors and random people on street(read begging) is not going to work out for you in long run. If you have a chance to marry (a guy) then you will have to shell out some money also', 'BMCC, CCTV, ABCD, drink form BBC', 'What da, I have no money', 'Makkhi-Choos,Useless burger'),
('Abhijith', '', 'first senior to rag me', 'nah!', 'pls dont demotivate your juniors', 'poda TENDI NAAYE', 'TAKE LITE', 'demotivating asshole!'),
('Abhijith', 'Win Schroeter!! :P', 'His friendly relationship with everyone, the way he makes his juniors to put treat, and last but not the least his weird , crazy way of paining people(Chori)', 'He s a GAY :P', 'Love you loads macha!! Will miss you and the crazy shit that you do :''(', 'naayinda moone!! Poore!! ', 'Put treat!!', 'Chorian'),
('Aaditya', 'By now you should have known!', 'His teachings of how to put RG and lucky me being his mate and learnt all the tricks of the trade in the early semesters :D I will be thankful to him for patiently help me solve tutorials especially when he saved my ass for MA1020For all the treats he never gave me as part of losing the numerous bets since our first semester. Making my lazy ass work hard and study for exams by seeing him :D', 'In first year he was too excited about joining national core organizations and contribute for the development of the country. Now, after that DAAD trip he talks only about beer and partying and how he wants to go abroad. :PA rumor has it that all Aero B.Techs asked him to convert to dual so that their rank increases by one position which apparently has many placement benefits and wanting to pull off a "Schindler" feat, he couldn''t refuse their plea and converted to Dual degree! This is #AadityasListWondered why he closes his laptop screen when anyone goes to his room? You would have mistaken if you think he watches porn, instead, he stalks girls on Facebook! To cover that up he disables chat and let everyone think he is busy mugging but actually stalking girls. He had a crush on his school mate in first year and I don''t know what happened about that since moving into separate wings!!', 'Lower your voice when you speak on phone when there are people around you! I don''t know how good a football player or a violinist you were/are, but I felt you should have spent some time on some of those more than on Intro to Flight, Gas Dyn etc; But, yeah, it ''s your choice!Thanks for being an RG friend! :P Things would have been different for me, else!', '', 'mmch! mmch! sounds to express disappointment for everything! ''Dude what is this?'' Sir, increase 0.1 mark nooooo plzzz?? "Hey, did you do the assignment da? "', 'Muggumaxx,TreatCheater,EverydayClothWasher,Still a Kid,CriesForEverything'),
('Abhijith', 'atho....ath....', 'Google ''IIT Madras Kerala student'' and this guy''s name is the first result you get. No surprise there, since he is the face of undergraduate mallus in insti. His conceit in having got into the coveted CS branch of iit madras has made many wonder whether he added CS as his initials after getting in.He will be particularly remembered for his highly entertaining trolling, thanks to his mind-blowing photoshopping and video editing skills. A wide range of people from PhD scholars to freshies have had the misfortune to be featured in his very own troll page, ''vijrambicha iit chalikal'' fondly known as VIC among its fans.He possesses a unique skilled called "Treat Extraction" , wherein he approaches his target and utters "Put Treat" -this later became a meme- and if the target fails to comply, he proceeds to employ certain trademark tactics, including flattery or ''soaping'', blackmailing, and threatening with the prospect of trolling on VIC. His ''chori'' has earned him the nicks ''C''hori ''S''', 'He has a crush on a freshie girl, (yes, a girl) which started recently. Though he has great liking, his good slef-awareness has made him realize that she is out of his league. :D', 'Hope you achieve your dreams.Forget & forgive everythingExpecting ''Vijrambich Edgeverve Chalikal".', 'waiteyy waiteyy...', '"Put Treat""Put Treat""Lite Only""Put Treat""Mai...dash""Put Treat""Paisa mukkanam""Put Treat"', 'kundan,choriyan,chaliyan'),
('Mohammed', 'Nope', 'Studness', 'Nothing as such. ', 'Always have the same smile!', ':@', 'Eda! ', 'Polite guy. '),
('Abhijith', 'Njan', 'Chori', 'Athyam choriyum pinne maanthum pinnem choriyum ', 'Same as above', 'Choriyunna CS maanthoola ennu parayunnath thetta.....choriyunna CS maanthum', 'Fuck off', 'Kaatu Chorian'),
('Abhijith', 'Deeeepppttaa', 'unlimited incessant ''choriyal''ing', '', 'iniyenkilum enne onu veruthe vidu :P', 'Chetanayathukondu veruthe vidunnu', '"ente reimbursement"', 'choriyan'),
('Abhijith', 'Swaganand', 'Kundatharangal', 'Nights he spent at Jafry''s room. Samsaram mathramalla. ;p', 'Go spread chori to the world.', 'Katta-Kundan', 'Put treat', 'Choriyan,kundan'),
('Abhijith', 'I don''t know.u tell me', 'His hugeness(omg he is hugeeee).directness', 'Thanks for the treat Anna.', 'I don''t know.', 'Otha koothi.appu kunda', 'Speaks in mallu language', 'probably 6th question would answer it.'),
('Abhijith', 'Arun "The nightmare " Keshav', 'Biggest chutiya I have met in my life', 'Something tells me he is fucking gay. ', 'Well ...... Dont stay gay , come out of it .', 'C S Abhijeet ......,. Thats the worst swear word anyone can use', 'Put treat da......', 'Asshole,Bastard '),
('Abinash', 'Arun "The nightmare " Keshav', 'Swag , His girlfriend , and his sports abilities', 'The guy who gives best advice', 'wish we could have spent more time together. And stop showing off your physique by walking bare body all the time.', 'chutiya fucking asshole', 'Fixing my resume at 12 am in the night', 'Cool intelligent allrounder '),
('Aaditya', 'Arun"The nightmare "Keshav', 'Ultimate Maggu', 'Him stalking a girl on FB', 'Get a girlfriend and get a life bro!!!! And u are always my brother from another mother!!!', 'Dont feel like it', 'Dude She''s like my sister!!!!!', 'Friendzoned!!!!!'),
('Abhijith', 'PG', 'Represents the height of paining freshies, asking treat for random stuff, getting a selfie at every possible gathering and posting it to FB, knows the most Mallu junta among all of us, puts more enthu than anyone elsefor Birthday cake and bumps, Alak T-Shirt Designer. Despite all the ''pain'' inherent , he''s a down to earth caring guy, does not RG people , has good leadership and speaking skills and loves everyone around him.', '', 'You''ll do great in whatever you do, wherever you are!', '', '"Put Treat da!", "Lite Only", ', '"Put Treat da!"'),
('Abhijith', '', '', '', '', 'ass', '', ''),
('Abhijith', 'asshole', '', '', '', '', '', ''),
('Abhijith', 'Go. I won''t tell you. ', 'His freshie fetish.', 'Err no.', 'Patti thendi! :-P', 'Prandhan?', 'Yo <insert name here>!!!', 'CSey'),
('Mohammed', '', 'His extreme kindness especially in giving away extra coupons as a core to the fairer sex. :P', 'A smitten Shafeeq while watching Shobhana: Damn she''s hot!', '', '', '', 'Sweet :D'),
('Abhijith', 'I''m putting that video online...:)', 'For the pain in the ass that he was...', 'his video for a internship that he was applying for. Its hilarious!! Only me and Nandu have seen that... Thinking og publishing it soon under the RSK banner :P', 'Well if theres one good thing that I can take away from Insti , it would be the fact that I got to know you. The wing and the 4 years wouldnt have been the same at all without you and your constant perstering into matters that do not concern you. But still I dont think anyone ever regrets having you poking your nose in their "stuff". ', 'Choriyan Thendi !!', 'Whats more important than what he says is what he does ...and thats "chori"ng others most of the time... Plus nothing productive ever comes out of his mouth anyways !', 'Chori ,Bully'),
('Abhijith', 'yeah rite!', 'kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan ', 'I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.I never had contact with the kundan.', 'you are kundan max', 'kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kund', 'kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan ', 'kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kundan kund'),
('Abhijith', 'Ajmal Moochingal', 'sadism, ragging, ability to make friends out of nothing.', '#phoenix-Birthday :P (I see a pro hacker in that )', 'No CS, you are not at all a person I can accept . People have no use of you , but you know really well how to use them well. You have done nothing more than leading a foolish mob.Even-if you feels like having lot of people together with you, that''s a fallacy ... most of them ''acts'' like that, fearing you. And I also appreciate your mentality to socialize with people without any age difference- unlike your peers, but mostly it turns out to be a pain for them, that happens. Dear, you have the skills for using people , you could be a successful corporate.And at-last, what was that T-Shirt for Mr. CS ? You should have avoided at-least the people who rejected it.Anyway I swear I don''t wear it and I''m looking forward to donate it for the next DOS Collection. Let someone get something good via you at-least like that. I admit that I don''t know you completely , but still many of your doings are completely illogical and cannot be tolerated in any sense. Is that a', 'everyone does that ... doing that again doesn''t make a change.', 'nothing', 'sadist,iDontCare ,mob-leader '),
('Abhijith', 'Nevin', 'His choryal and kundatharam', 'Subahi', '', 'Iniyenkilum choriyal nirthikoode??', '"Put treat"', ''),
('Abhijith', '', 'aaaassss', '', '', '', '', ''),
('Sapate', 'he is awesome ', 'he is awesome ', 'he is awesome ', 'he is awesome ', 'he is awesome ', 'he is awesome ', 'he is awesome '),
('Sapate', '', 'His funny character and crazy chatter box.', 'Gen hanging out times, those stupid insane conversations about every shit in the world :) Not to forget "self awareness" class ;)', 'sorry for ditching you for salsa workshop :)', 'Short but sweet ;)', 'The only person who could describe how not to poke your nose.. ;) I still wonder how this random topic couldn''t escape becoming a conversation with him ;)', 'Jabberjay :P'),
('Sapate', 'Ex Room Neighbour', 'His smile and his ability to attract chicks ;)', 'One day I saw him texting chicks simultaneously in laptop ,mobile and tablet :O', 'I want to continue his legacy in snapdeal too ;)', 'Fuckerrrrrrrrrrrrrrrrrrrrrr', 'If you find a chick don''t just leave her ...Bang her :P', 'Bitch,Horse rider '),
('Abhijith', 'amrithraj', 'Insti Mallu Gang Leader', 'fucker always pains......... when you are going on a cycle, tries to make you lose balance.....when you are walking, tries to run you over', 'challenge you to get into a love marriage....', 'meh....', 'da........ee ankit myran aanallo....', 'overgrown baby'),
('Sapate', 'Fucker', 'Late night Compilers Lab shit, Computer Graphics.. ', 'We screwed all the compiler assignments. Copied them and were scared to even meet Nandivada. And failed the Lab.. :P ', 'Had a good time with you dude. Wish I could meet you again in this life. You encouraged me a lot bro.. ', 'Saale, stop looking at class girls in *different angles*.. :P :P ', 'Lite only.. ', 'last minute savior '),
('Roshan', 'Balussery ', 'Friend and Co-Core :P and yeah his photography skills too :D ', 'Nope ', 'It have been a pleasure to know you Bro :D and remember us (IIT Mallus) :) ', '', 'Special Mallu Accent :D :P ', 'Muggu,Photographer,Good Friend '),
('Abhijith', 'Ariyamenkil ariyam illenkil ariyilla', 'Mostly irritating(chorifying) nature and helping freshers to connect with other seniors and insti.', 'I hide my wallet before meeting you.', 'Stop getting all feely about everything i say.', 'Guess what? None.', 'Put treat.', 'Irritting(Chorifying :D),a good friend'),
('Yaswant', 'neeku thelisipoyi untundhi', 'His friendly and happy go lucky nature. He is the first person I look to approach, when it is about getting fundaes from seniors.', 'Yashwanth is a very hard working guy, the moments when we both sat together to create the stop motion animation video for shaastra, would be remembered for a long time.', 'All the best ', '', '', 'happy go lucky,hardworking ,approchable ,friendly,core enthu'),
('Mohammed', 'Oru paavam junior! :p', 'The fun times we had, the helps he did as a senior! :)', 'Kundan! :p', 'Cul Sec aakendathaayirunnu! :p', 'Shafeeqeey! :p', 'Eda, Ath anganeyalla!', '"Dual Core" :p'),
('Athul', '', 'Introducing new fashion trends. And for leaving us flabber gasted!!', 'This was the guy who declared infront of other 24 interns in Pune that pink was his favorite color.Any other guy would have been insecure, but this guy stood with it . #RESPECT', '', '', 'Nothing.. :P', 'Unpredictable'),
('Mohammed', 'Mallu Friend', 'Gentle Nature', 'He is such a Gay.', 'Nannayikkoode?', '', 'Lite.', 'Kundan'),
('Abhijith', 'lol guess if you can!!?? (you are smart enough to guess!) (3rd year undergraduate )', 'His annoying mallu posts on Facebook and for his ragging!!', 'Nooooooooooooooooooooo nothing ', 'Don''t annoy people :p', 'Asshole, shithole', 'Blabbers something in malayalam. ', 'kundan ,mayire '),
('Yaswant', 'This is the great Siva Teja :P', 'his childish character, his jokes! - sometimes they make u want to kill yourself :P , his design skills, our four year friendship', 'First two years he enjoyed well as others. In second year he tried for a girl and got failed. I think this made him to take his life more serious. He left love bullshit behind and started concentrating on graphic design. He excelled in that area. Later he got interest in his core subject and doing his best in this field. ', 'abhey you have very good commitment. Make use of that. Surely you will reach great heights in your life. Wish you all the best for your future.', 'Jaffa. You can get far better girls than the girls u tried for. I will kill you if u won''t be touch with me in future.', '"Thegipoyina chepputho kodthe inka thegudhi"arey fastfood is not good for health- "ask that guy to cook the food slowly"and many more', 'The guy with good commitment and good at heart '),
('Abinash', 'Debashis . your Super super super super senior in College but just a senior in Volleyball.', 'his laziness and constant bickering and "No-No" attitude before taking any new assignment in Sports ', 'Well , he is the guy who was never officially my junior in IITM as he cleared JEE when I was in my last semester. I heard about him from some Volleyball Junta of Insti as a perfect replacement for me in as a setter in the team. I rushed into IIT Roorkee to support IITM in inter IIT as an Alumni and there I met this fabled guy. This profile picture in this RG is in-fact taken by me. He told me about his numerous girlfriends in school and college and shared with me how confused and sad he was to pick one among them. When he posted this pic in FB, he constantly told me when the number of likes hit any milestone (50, 100 , 150 and 200) . In fact this photo gave him some additional female friend requests. I would never forget the late night laughs we used to share in his room in IIT roorkee with Akshay and Aman to add to the Chaos of laughter.', 'Keep your spirits always high as the "Schlum-Job" is gonna be a challenging one .', 'None as a senior does not abuse a Junior', 'Debaji. ', 'Lazily alive and Awesome'),
('Abhijith', 'RAMAKRISHNA', 'Writing in my room with toothpaste .', 'Ragging me in second year.', '../..', '', 'Sashi :P', 'Kundan'),
('Mohammed', 'Me hun Don!', 'He had a chance to become dual core in insti but rejected it because his own quad core version was coming up. He is also known for his rivalry with his wing mate CS. Series of battles in facebook was famous for his cup level english.', 'It is rumoured that he culted around 1000 t shirts during more than one saarang.', 'Start studying by yourself and leave poor KD to his alien friends', 'Put treat for your dual core performance in saarang!!! ', 'Scene Contra!', 'maggu,thendi,chetta'),
('Abhijith', '', '', 'Didn''t meet him yet..but I am pretty sure it will be ridiculous more than being a big deal if a meeting happens in the near future according to what I inferred about him so far..', '', '', '', ''),
('Abinash', 'Ketav', 'His North East Looks :P ..', 'Before every match.. some pray.. some feel pressurized.. But he goes to rest room to piss just before start of match.He differentiates monkeys also as teens, MILF etc ', 'All the best Deuri', '', '', 'Monkey Fucker'),
('Abinash', 'Daffa', 'Volley ball ', '', 'Put Schlum fundaes....and also GF fundaes', 'Nothing great', 'Zaffa Zaffa', 'Calm funny and determined'),
('Abinash', '', 'His personality...:P', 'IC engines lab experiments, especially the partially completed ones.....!!', 'Keep up the spirit', '', 'Experience shouldnt make you meaner but......', 'Channa boy.....:)'),
('Abinash', 'BSNL Admin', 'Volleyball, Schlumberger and his body building.', 'The contact of his ''girlfriend'' on his mobile phone is ''Vodafone Admin''. ', 'Man all the best for your life ahead. Be yourself and I''m sure you are gonna make it huge in life. Also in future whenever I find myself confused, low on confidence or something like that, I hope you will be that guy I could approach to cheer up and help me move forward.', 'I respect this guy a lot.', 'Indeed very motivational guy. His story of getting the Schlum intern is pretty inspirational.', 'Hardworking, Disciplined,Pragmatic,Sincere,Desperate about Girls'),
('Mohammed', 'Arjun Prasannan', 'Saarang Finance Core, as one of the helpful seniors ,buddy of choriyan ''CS'' ,one of the respected Malayalees of IITM', 'One of the first seniors who interacted with me .Do u remember after the interaction with ''CS'' I have to bring the cashews and badam that i brought from home to u people.But u guys gifted me with a Saarang T-shirt after that.', 'Continue to be nice and good to everyone.God bless u!', '', '', 'Helpful,Sincere,Hardworking'),
('Nandakishore', 'Athul P G', 'His passion for coding, intelligence and reasoning ability, math stud, heated arguments.', 'I guess he does not have any secrets, probably never got involved with any girl in insti. Talks very shy softly, like a girl. I must say thank you for getting Linux installed on my comp and repairing every time I screw up something on my comp. ', 'One of the most gifted coders I ve seen. You should have been in CS dude. If possible, please don;t settle for some job in india.App, do an MS in Computer Science in the USA and get an awesome job which is worth for you on the likes of Google or Facebook. If you had put in even a little bit of effort in coursework , you easily would be a nine pointer, but always slacked off and put peace. ', '', '"Unda Pori", "Manga Tholi", "Thenga Kola", "Olakkenda Mood", ', '"Pro Level Programmer","Footer Stud","Wing Computer Guy"'),
('Abhijith', 'U figured it by now! Haven''t yet? You asked me to fill! Still couldn''t figure it? Go fuck yourself t', 'Changing the damn boring Alak website to a different extreme :D his CS tag in his name. Destiny maxxxx', 'I always wonder what might be going on in his room (after knowing his sexcapades) on seeing n-sum number of people every night. One day I happened to be in his room during a so called interaction session where 3 freshies ended up ragging CS. Forced me to make out (3sum) with him and Vinci. I wondered if they are making money out of it, uploading it online!!! :O Lucky me, I escaped.Threatened me :O apparently after he heard from someone about commenting on him during wing allocation in first year! Didn''t seem to believe me when I explained that I didn''t. ', 'Don''t always believe what others say! Use your discretion', 'I don''t need this form to swear at your chut face!', 'Adey! What you did in ..... ? Put treat da! ', 'Peace Putter,BigBrother,Godfather,Asshole,Chutiya,Gaybhijeet,Vinci''sBoyfriend'),
('Abhijith', 'Someone sitting behind you. :)', 'Ithu vare theernnillaa!', 'Libraryilekku varunnathu padikkaanalla. RG feed nokkaaanaa!', 'You''re a lot creative than expected. :)', 'Eyy. Nothing!', 'Njangalkku volunteerinte vaka treat. B|', 'Pathu rupa ingedu kondaa!'),
('Abinash', 'Anirvan', 'He will be remembered as a sports secretary and a very good volley ball player. Also getting placed in Schlum is not an easy job. Kudos!', 'I am not sure, but every time I see him, I get a feeling that he is a playboy. Given fight he puts in to maintain his uber cool physique, he definitely comes across as a womanizer.', 'YO! Stay in touch bro :D I never asked him this, but yeah some random girl from assam (whom I didnt know) who sent me a request on FB had him as a mutual friend. He seems to know each and every chick available. This brings out the very obvious question which I havent asked you directly, how many flings so far brother ? :p !', 'No swear words. He has been kind to me.', '', 'Focused, Hardworking, Friendly ,Benevolent,Helpful,Relaxed'),
('Abhijith', 'à´žà´¾à´¨àµâ€ à´žà´¾à´¨à´¾à´£àµ , à´žà´¾à´¨àµâ€ IIT à´®à´¦àµà´°à´¾à´¸à´¿à´²àµ† à´’à´°àµ à´µà´', 'his à´•àµà´£àµà´Ÿà´¤à´°à´‚ and à´šàµŠà´±à´¿à´šàµà´šà´²àµâ€', 'memories ?? à´…à´¤àµ à´’à´°àµ à´ªà´Ÿà´®à´²àµà´²àµ‡ ???à´ªà´¿à´¨àµà´¨àµ† half psycho !!! ( à´¸à´¤àµà´¯à´‚+à´µà´²àµà´²à´¾à´¹à´¿ :P )', 'fuck à´¯àµ ...', 'à´®àµˆà´°à´¨àµâ€ , à´ªàµ‚à´±à´¿ , à´ªàµ‚à´¤àµà´¤à´¾à´™àµà´•à´¿à´°à´¿ , à´•àµà´£àµà´Ÿà´¿à´¤àµà´²à´¯à´¨àµâ€ , ', 'à´ªàµà´Ÿàµà´Ÿàµ à´²à´¿à´¨àµà´±àµ† à´Ÿà´¾!!', 'à´•àµà´£àµà´Ÿà´¨àµâ€ + à´šàµŠà´±à´¿à´¯à´¨àµâ€+à´šà´³à´¿à´¯à´¨àµâ€=kundichorichaliyan'),
('Yaswant', '', 'The way he discourages others to prove that he is a stud. And too much of GRE english in his conversation with non-gults :P ', 'So crazy about grades, asks doubts even in navarc classes to get prof''s attention. Coming to memories, countless nightwalks along with few reasonable but few stupid discussions.. ', 'Sorry, I think u know y.. ', '', 'Searched our whole fb chat, bt couldn''t find anything.. ;)', 'A trust-worthy frnd,muggu maxx'),
('Abinash', 'Athul P G', 'SPorts captain, volleyball', '', 'All the best in life!', '', '"Yo Fucker!" , ', 'Schlum Bitch,Gym Body'),
('Abhijith', '', 'His Choriyaan character. Anybody who meets him would always prefer to blow his face and crush his balls. ', 'I once know a time were he tried fingering and banging cow. Then instances of ogling at Girls. Extremely desperate and horny fucker', 'All the best for future man ! Please stop banging cows, and being so desperate. If possible try to reduce the amount of swear words that you hear from people. Also, try your best not to get beaten up. ', 'One number chuth you are and a uniball homo sexual fool.', '" Poi chaavada patti" " Kochu kallan " ', 'Mother chod,Bastard,Chetta ,Behan chod'),
('Abhijith', 'à´žà´¾à´¨àµâ€ à´žà´¾à´¨à´¾à´£àµ , à´žà´¾à´¨àµâ€ IIT à´®à´¦àµà´°à´¾à´¸à´¿à´²àµ† à´’à´°àµ à´µà´', 'his à´•àµà´£àµà´Ÿà´¤à´°à´‚ and à´šàµŠà´±à´¿à´šàµà´šà´²àµâ€', 'memories ?? à´…à´¤àµ à´’à´°àµ à´ªà´Ÿà´®à´²àµà´²àµ‡ ???à´ªà´¿à´¨àµà´¨àµ† half psycho !!! ( à´¸à´¤àµà´¯à´‚+à´µà´²àµà´²à´¾à´¹à´¿ :P )', 'fuck à´¯àµ ...', 'à´®àµˆà´°à´¨àµâ€ , à´ªàµ‚à´±à´¿ , à´ªàµ‚à´¤àµà´¤à´¾à´™àµà´•à´¿à´°à´¿ , à´•àµà´£àµà´Ÿà´¿à´¤àµà´²à´¯à´¨àµâ€ , ', 'à´ªàµà´Ÿàµà´Ÿàµ à´²à´¿à´¨àµà´±àµ† à´Ÿà´¾!!', 'à´•àµà´£àµà´Ÿà´¨àµâ€ + à´šàµŠà´±à´¿à´¯à´¨àµâ€+à´šà´³à´¿à´¯à´¨àµâ€=kundichorichaliyan'),
('Abinash', 'Error!!! Name not Found!', 'Wasteful boosting and putting the sad face he puts after doing a bad boost ...', 'Had a great time playing volleyball with him and hope he enjoyed the same way. Wanted to impresss a girl during inter-iit but eventually failed for some non-disclosable reason :P ... Junta please get name of the girl out of him', 'He has achieved great things in college and I wish him best of luck for the future', 'chutiye!!! boosting kab seekhega', 'I will boost well in the match- Alas! it never happens in the match though :)', 'Never give ups'),
('Roshan', '', 'Obviously Great photography and mis-hitting volleyball', '', 'Best of luck with your photography and career', '', 'When he is about to recieve volleyball - "I shall" ', ''),
('Abhijith', '', 'Enthu, energy and friendliness', 'U ragged me , u bitch. ', 'One thing i want to ask him. do u have a girlfriend? poor girl!', '', '', ''),
('Sapate', 'Baap tuza, bhadawya.', 'For all the fart he puts and his maverick sexual fantacies, which he basically kulted from some obscure sources. Yes exactly the way Chandan kults his facebook updates. And his perpetual luvv for Delhi and Delhi chics. Hope, vice versa is the case too. Insane bisexual tharki, who happens to lure girls and repel boys because of this exact qaulity. Never misses a single chance to put pseud and vomit out his readymade mugged up arguments from quora and similar sources. This is exactly why he never has any particular side. All he has is a set of kulted argumnets and a sexual frustration, despite of having many hot objects in this whatsapp contacts and around. This explains his a bisexual orientations too.', 'Well, if you do not know, his phone has photos in bras, short shirts and messages offering blow jobs, but you''ll hardly find any balance in his phone.', 'Don''t overshare private things with people in overenthu, unless you know they can be trusted.', 'Dhagala lagli kal, pani themb themb gal.', 'Aaichya Gaavat.Zavayala Porgi de na.', 'Aww my cute petite little lovely tharki. :P'),
('Sapate', ')(', 'shopping online . ... he we shop babes online ..!!', 'he loves a girls but don''t have guts to tell her ', 'tumse na ho payega ... purpose :P ', '(!@#$%^&*)', 'meri mar lo ... !!', 'mera bachcha... le le ...!!! '),
('Rohit', '', 'bhai tere gf ', 'bhai tere gf ', 'bhai tere gf ', 'bhai tere gf ', 'bhai tere gf ', 'bhai tere gf '),
('Rohit', 'Sure, I just called him and told.', 'He won''t be remembered, his miss supranational GF will be remembered though ! :P', 'Was(is) nerd for half of his life in insti ( and outside insti too ? ). God bless his GF.', 'Get rid of your nerdiness before your GF gets rid of you', 'nouff said', 'Never said to me', 'Solanki'),
('Rohit', '', 'Gayness', 'He is gay ', 'Yo gayboy', 'Motha fuckah ', 'Gay', 'Fucking gay gay gay'),
('Athul', 'still testing', 'test', 'test', 'how are you?', 'again testing', 'test', 'test'),
('Aditya', 'Abhinay Reddy', 'His frequency of getting stoned', '', 'If you feel like blacking out, ensure that you are near a bed and not a corridor. You scared me bad in Jamuna', '', '', 'Fighter, Stoner'),
('Rohit', 'Shara', 'His muscles that he like to keep flexing in class even though nobody gives a fuck', 'Trying to beat the shit out of him but end up breaking my hand', 'May boobs be upon your face', 'Cunt face with a cunt mouth', 'Bitch ', 'Free spirit,lazy ass ');
INSERT INTO `entry` (`name`, `friend`, `ans1`, `ans2`, `ans3`, `ans4`, `ans5`, `words`) VALUES
('Rohit', 'the oldest friend ( in campus ):P', 'the transformation ', '1. I still remember that naive innocent guy who used to sit on the first bench. He spoke less and interacted even lesser. To all those guys who see him now in campus, you imagination will fail you when it comes to the transformation this guy has undergone.2. If you really want to know how mellow or emotional this guy his, observe him while he talks with his parents or gf. ', 'Hard work and persistence can make you achieve anything, you are a proof of that. Keep it up.', 'tujya .......', 'I don''t think that this guy said a lot. But what he was good at was persistence. ', 'ambitious '),
('Abhijith', 'Adit Ravi', 'The freshie interrogation sessions. The tubelight switch next to his bed that he kept switching on and off, full disco feel. ', 'Mistaking CS for a first year in my first year, I had to learn a mallu song because of that.Breaking Amal''s window. You don''t mess with the CS', 'Thank you for greatly expanding my Malayalam vocab. ''Parayadha arriyadha nee poyadhalle maruvaku mindanya dalle'' (don''t get emotional, that''s just the lyrics of the song that I learnt)', 'I''ll wait till you actually pass out', '''poda patti''', 'Eda CSey'),
('Abinash', 'Deepjyoti Mech', 'keen for making a perfect physique :P', 'Secrets not to be disclosed :P and offcourse Mahab trip, esply in private beach while playing in water with an orange ball and of a sudden, a surfer board hit on my head.', 'TRY TO REDUCE YOUR IMPATIENCE.', 'Nothing to abuse him....he is my little brother with a little bit IMPATIENCE ;-).', '"Apunar(me) Biya khon khabo lagibo" :)...In English " have to attend your marriage".', 'Assimilator'),
('Mohammed', 'The one who musn''t be named.', 'His Love for Shobana. His incredible photo posing', 'As you might have seen none of the cores got pics with anyone, however our machchan has a pic with Shobana as well with Anjali Menon. Tells you how much work he actually did during Saarang :D ', 'Bro, you have been one awesome guy to work with and you have so much more to come. All the best!', 'Asshole, you should have put for CulSec :D', '', 'I want the bills da'),
('Mohammed', 'its me navaneeth p......', 'aaa mudi...aaa chiri.. aa nadatham....pnne CORE um !!!', 'secrets are alwayz secrets...cant reveal !!!', 'ingal adutha kollam alle ponullu....so parende okke oru kollam kond paranj theertholaa !!!', '#@$#$$%%%%$$#@@@ #@#%$%%$# $$%$%##% mwone....ingal ishttellad fill cheytho !!', 'anganathe oru quote ente arivil illa !!!', 'a simple guy(gay)'),
('Abhijith', 'navaneeth p', 'chori..katta chori.. =P !!!!', 'angane specificayitt choyikkuvanel ......aloyichitt paranjera....', 'banglore ile chekkanmarde karyam !!!! .....feeling pity :D', 'ingale theri vilicha theri kedayi ppoum...', 'lite ooooonly', 'just amazing gay(guy)'),
('Mohammed', '', 'The one who stunned others with his "mugging with music"', 'Being The Captain of hostel footer team was not allowed to play footer in schroeter.Student A,B,C..........', '', '', 'Sly da', 'Simple'),
('Abhijith', '', 'Chori...', 'gay,............', 'Grow up/....', '', 'Put treaaaaaaaatttttttttt', 'Chorian CS'),
('Sapate', 'It is obvious.', 'Stalking. Gen jokes. Deliberately made perverted remarks. Giving treats without reason.But above all, being level-headed and taking things in the right spirit :)', 'Too many. I see Sapate everywhere I go. There was a span of a month where I used to run into Sapate twice a day on an average. Stated thus, it sounds as though Sapate is a disease. ', 'Please give up your analogy of girls being items on the dinner menu :P', '', '"macha"', 'Creep,Stalker,nice guy(maybe)'),
('Abhijith', 'Hamdan ', 'Google ''IIT Madras Kerala student'' and this guy''s name is the first result you get. No surprise there, since he is probably the most prominent face of undergraduate mallus in insti. His conceit in having got into the coveted CS branch of iit madras has made many wonder whether he added CS as his initials after getting in. He will be particularly remembered for his highly entertaining trolling, thanks to his mind-blowing photoshopping and video editing skills. A wide range of people from PhD scholars to freshies have had the misfortune to be featured in his very own troll page, ''vijrambicha iit chalikal'' fondly known as VIC among its fans. He possesses a unique skilled called "Treat Extraction" , wherein he approaches his target and utters "Put Treat" -this later became a meme- and if the target fails to comply, he proceeds to employ certain trademark tactics, including flattery or ''soaping'', blackmailing, and threatening with the prospect of trolling on VIC. His ''chori'' has earned him the nicks ''C''hori ''S''ervice and ''C''hu**** ''S''aala and his repute in ''choriyal''ing is well established. I also admire him for his pocket-money-making skills which include T-shirt designing, Web designing, and other Local and National ''Service Schemes''. :P He is also a skilled organizer thanks to his ability to get any kind of work done, by the correct people. I remember hearing Sunil ''ettan'' say once " Assign Abhijith any event managing work, and he will do a neat job" when he wanted to make people participate in KKS events. On a more serious note, in spite of all the chori, he has been a great friend to a lot of his juniors apart from his own batch mates, and a special friend and like a cool elder brother to me and a couple of others in my batch. A few of us along with him are often referred to as "CS and his minions", probably for the mischief we cause. We had a LOT of fun together, and quite a few quarrels (and crazy boisterous wrestling which many times end up in tearing up of tshirts -pants too in my case- ), but more importantly, we always managed to get back together and keep our friend''ship'' afloat.', 'He has a crush on a freshie girl, (yes, a girl) which started recently. Though he has great liking, his good self-awareness has made him realize that she is out of his league. He came close to making a half attempt at proposing, but as soon as he felt that she is gonna reject him, he expressed disinterest before she could say no, saving his face. :D', 'Hope you achieve your dreams. Forget & forgive everything. Expecting ''Vijrambich Edgeverve Chalikal". Why you delete VIC? :''(', '''MPK''!! ', '"Put Treat" "Put Treat" "Lite Only" "Put Treat" "Mai...dash" "Put Treat" "Paisa mukkanam" "Put Treat"', 'kundan,choriyan ,chaliyan'),
('Athul', 'Right angle', 'He has a time table for his entire semester, the time to get up, what time to brush( how much time to brush for), How many hours a day to mug( starts with a minimum of 5-6). He is a cry baby, after having a CGPA of 9,always cribs about the grades he has got.', 'He is kind of a wannabe. Fell in love with a fresher in aero last semeter. Always kept telling how much he liked her,but gave up this girl to increase his CGPA . ( Not the story everyone wants to hear, eh ? :P)Recently, told me that ', 'Everyone knows you have got a lot of potential, please study less and go out there and have some fun da. I wish you very best for your future endeavors.', '', '"My CGPA is Just da"" I won''t get into a good university da"', '"A guy giving up a girl to Increase his CGPA"'),
('Mohammed', 'slowmo :P', 'ilinja chiri', 'little talks we had between mess and alak', 'padich nannayi vaa mone', 'pinnepparayam', 'always says i am slow', 'hard working'),
('Abhijith', 'slowmo :P(burhan)', 'chori,kundatharam', '2-3 hours long advise in midnight @ irctc :P', 'nannayikkooode??', 'korend...pinneparayam', 'nee moonchum orappa!!', 'talented,choriyan, kundan'),
('Athul', 'i think you know it...:)', 'his magguness and RG putting skills', 'he desperately wants to find a girl.. he is trying for a girl from 4th standard i heard..:p', 'All the best dude.. Good luck to get a girl :p', 'thendi, patti ...:p', '', 'PG is RG'),
('Mohammed', 'i think you know it...:)', 'quite lazy guy, always late to class, even for exams :p, copies every lab report and spends time on writing it neatly rather doing it on own.. :/', 'he does bulb sometimes :p', 'all the best!', '', '', ''),
('Nandakishore', 'i think you know it...:)', 'appears girlie, has a girlie voice.. he is wedded to Shafeeq i guess, both were spotted together always ;p', '', 'all the best!', '', '', 'he is a nice guy'),
('Abhijith', 'kundan kundan kundan kundan kundan kundan kundan', 'kundan kundan kundan kundan kundan kundan kundan', 'kundan kundan kundan kundan kundan kundan kundan', 'kundan kundan kundan kundan kundan kundan kundan', 'kundan kundan kundan kundan kundan kundan kundan', 'kundan kundan kundan kundan kundan kundan kundan', 'kundan kundan kundan kundan kundan kundan kundan'),
('Mohammed', '', 'Core!', '', '', '', 'the malappuram bhasha!', 'core'),
('Abhijith', 'Rathi', 'His maniacal, self aware antics! :P', 'Ah, he''d keep coming to my room and trashing the whole place! Why??Though I''ll probably miss that now..And he''d always give sli good advice when needed..And political god bey! Mallu leader ftw.', 'Stay mad! Stay smart! Stay in touch!', 'Madarchod, grow up bey! :P Or don''t, it''s fine!', '"Cupper!" "So ozum no? Ozum!" "Rathi Chutiye!"', 'Likable Jackass,Mallumax'),
('Aaditya', 'You know it!', 'His ability to consistently mug through these years, RGing the entire class , saying "I got raped dude" and topping the quiz later(consistently). ', 'After nearly four years of "girl-free" mind of his in insti,this guy likes an junior girl in Aero in his seventh semester. In an attempt to her heart, he can be seen routinely parking his cycle at one end of the workshop and walking to the department so that he could catch the girl in "parallel" walking and talk to her. Also gave away a ton of books to her, a guy who normally would say "Dude .I never saw that book in all my life" if somebody else had asked him for it. Always dreams of watching a movie with his love in OAT, sharing pop corn and ice cream etc. This love story continues as he still has a year left in insti.After being in Germany for 8 weeks, thinks German culture is better than that of India:DDoes not come for a batch trip in vacation citing "I''ve to do my DDP dude!" Did not know where Phoenix Mall was until 8th Sem.', 'Talk softer on the phone, respect others a little bit more. You should have involved in something in insti other than just mugging, teaches a lot of stuff not available in textbooks. Avoid being negative at all times, adopt a slightly positive approach in life, stop crying about everything. ', '', '"Shavam", "Enthu Myra", "Kopp", "I got raped in the quiz dude", "Sheey", "Poda koppe",', 'RG, Maggu Max,Despo,Aero Topper,"DAAD Fellow" '),
('Rohit', 'Oscy', 'His childish behavior. He is immature many times but hardly realizes it. If at all he does, its probably too late!', 'Call him ''zhandu'' and he will go nuts! :pJust try to listen when he is speaking with his gf. You will go roflmao. ''Mele shona ne khana khaya...jaanu ne saans li...'', yes, these lines are not just jokes, but you actually get to hear them!', 'Keep up your fitness enthu! Thoda dimaag bhi body ki tarah badhe to aur accha :D', 'Bose Da VinciZhandu (P.S.: just this time! :p)', 'All I can think of is ''jaanu'', ''shona'', ''baby'', while he is on the phone.', 'A monkey. Go out trekking with him and you will find him jumping here and there just like monkeys do from tree to tree.'),
('Athul', 'you should know now.', 'Extremely organised mugging strategies.Theories about maintaining girlfriends with mathematical basis.Ditching profs after promising DDP guide position.', 'He fell in love with a first year aero girl who ditched him for absolutely no reason after having free dinners with him.', 'Please live in the real world where things are not ideal like you think they are.Please show some value for friendships. Your friends may be more sincere than you think they are.', '', 'Every time he sees some couple he make desperate comments about him being single.', 'girlfriend-despo,maggu-max'),
('Athul', 'Sivaraman', 'Aero God. Crazy about planes, spacehips and anything space relatedSees life as a list of goals to be achieved', 'Brought Reshmi Suresh to his room in 1st year.One of his classmate made up a fantasy story in which Athul was the main antagonist with aim to subjugate the whole Aero batch.', 'Don''t worry too much about the future ', '', '"I want to join NASA"', 'Body-Builder,Pessimist,Studious,Quintessential-Maggu'),
('Nandakishore', '<b> &#78; &#65; &#78; &#68; &#85</b>', '', '', '', '', '', ''),
('Aaditya', 'YouKnowWho', 'Persistent mugging<br>Easy to make him psych out<br>and getting treats', 'Always keeps some movie open in another window, so that he can switch to it when someone comes to his room. When asked which movie the only two movies that he says are â€œ3 Idiotsâ€ and â€œAmerican pieâ€.<br><br>He is a stud in acads. Once after a class, an Mtech girl in the class asked him if he can take tuitions for her on Saturdays. So muchh Studness. <br><br>Always keeps some movie open in another window, so that he can switch to it when someone comes to his room. When asked which movie the only two movies that he says are â€œ3 Idiotsâ€ and â€œAmerican pieâ€.<br><br>Never been to a beach in Chennai before 8th sem.<br><br>PG has one failed story. Aaditya is in pursuit of one. Lets hope it succeeds.<br><br>How to get a treat from this guy? <br>step 1 - Take any point from above<br>step 2 - Tell him that you will put it as a meme on fb with his photo.<br>step 3 - Describe the consequences.<br>step 4 - settle for a place to put treat<br>', 'When it comes to acads please donâ€™t tell â€œiâ€™m nothing compared to youâ€ and â€œno one can reach your level of studnessâ€ (9 pointer saying to 7 pointer).<br>And yeah, importantly, god doesnâ€™t exist and we are just a bunch of particles, hehe :p', '', 'One day in his 3rd year after taking bath - â€œDude, the water is freezing coldâ€. (Never realised there were solar water heaters installed almost an year ago ).<br><br>â€œMy 6 packs are under a layer of fat. Thats why you canâ€™t see it.â€<br><br>Before quiz -<br>â€œDude, the exam was rape maxxxâ€.<br> After quiz (and topping it) -<br>â€œDude, the prof was simply giving away marksâ€ ( ...because the answers were right ).', 'Friendzoned senior ;),MTech tuition master,Maggu baddy player'),
('Abhijith', 'It''s pretty clear already. Anwesh Pokkuluri', 'You don''t need reasons to remember him. :D', 'He walks extra mile in doing things. I remember, in your NSS project, starting from the application to vol allocation, wintern (the memento), OH, you showed your mark in every single step. Kudos!', 'Though walking extra mile is good, it''s good only if it''s ethical! Be the same good person you are. :)', 'I know that you added winter camp credits to Anzifar though he didn''t go with you for the camp. You used the loophole on NSS website which allows you to change the timestamp while you award credits. I hope similar stuff is not happening still now that you are a PR again. Please, please be honest. No harm will happen to the world if one lazy guy learns lessons hard way.', 'I can''t comprehend Malayalam da, sorry :D', 'Choriyan (Though I don''t really know what it means :P)'),
('Nandakishore', 'one of your big admirer.', 'Studness.Arguments.Cute childish look.', 'You are a true stud.I am jealous of you about a lot of things.', 'Please don''t be too logical.Please try to also show human emotions.Though I have a higher cgpa we both know who amongst us is better.', 'Atheist idiot please understand the importance of life.', 'Unda pori.Olakeda moodu.', 'most practical guy.'),
('Athul', 'Rat', 'Solving the same PH1010 tutorial 1010 times before the end of the semester. He uses all sorts of symbols next to the question number/on walls/on books to mark the nth time he solved a question. Rumor has it that, a new font ''PG'' is being introduced in Office 16 His fight to get all aero junta together. I tried; I failed; I gave up. But, good luck (y)', 'He was speaking to me about the Structural Design course and how difficult that was and how the Prof screwed him with a bad grade and because of which he got a low CGPA. I was just cursing the prof only until he revealed that the prof gave him an ''A''. Are you fucking kidding me!? :O I always see him do something during the breaks and always wonder what! Always free to share his notes but most of the time it looks like a maze to me :DWrites the date and day in his notes in Russian/chineese etc. may be just practicing I thought. I learnt to fold the paper in half and write notes from him and it pretty effective. He used to chat with his girlfriend during our first year. Always gets away by saying that she is just a friend.', 'He has infi core enthu and wish he continues to do well in that field. ', '', 'I have to study. I have to finish the assignment. Lot of work', 'Maggu,Disciplined,Super Above Average RG putter'),
('Mohammed', 'Rat', 'His simplicity and down to earth camouflaging ability :D Coming late to class and getting proxies more than actual attendance', 'He is very tactical. Convinces everyone with his smooth words and makes them do what he wants. he starts worrying abt GATE everday in class and eventually thulps it. He still owes me n treats for all the proxies I put for him :D', 'Be cool the way you are! I know how much you wanted to go on an exchange, don''t worry, we will party the entire next year! :D', '', 'Pings me on whatsapp, macha put proxy da! ', 'Fighter,Awesome,InnocentLookingCunningChoot,Footballer,ContiesMaxx'),
('Abinash', 'Abhijith C S', 'He is the laziest ever Sport Sec of Alak.', 'He put N fight for making P.O.Rs. And put infi Peace after getting placed! :D Laziest Sport Sec!', 'Stop talkin in Hindi to people who doesnt understand Hindi. I never get what you say in Hind, "Abey.. #&%#U%#( "! :P', 'Chootiya Salaa! ', 'Fuckerrrrrrr!', 'Assole ,Lazy,Schlum Bitch'),
('Aditya', 'Abhijith C S', 'His arbit max Hair Style!', 'He is high 24x7. This guy culted a Drum from some other hostels'' common room, and usually plays it when he is high! One day brought his "weed-mates" from Ganga and put a lot of weed! Vomited like anything in the wing! All other "so decent" wingies had to buy room freshners! :P', 'Get down from the heights of highness of Weed! Prrrr! :P', 'Koothi... Thiruttu moonji! :P', '"What do you think about .... blah blah .." (When he is high!)', 'He lives on the Moutains - High all the time!'),
('Aaditya', 'Abhijith C S', 'RGying nature and Maggu Maxx culture', 'The one and only believer of Saibhabha. He prays to Saibhaba before going for exams. He says, he got foreign internship through DAAD because of Saibhabha''s belessings!', 'Machan! We''ll together go to GulfGate someday. Buy one get one offer! :P', 'Ninte maamante andi! :P', '"Deiiii...." "Mairrruuu" "ShhavvaM!" "Ninte maaman!"', 'Aaditya Maggu Saikumar!'),
('Athul', 'CS', 'PG means RG! :D', 'Only guy to put "S" grades in all the HS courses he took! He had a crush - a very late one - on Anjali Nair - 5ft 8in. The shared wifi router is installed in my room. PG usually comes to our wing (mostly half naked) walking here and there, to access wifi - on his costly 3k tablet! :P Makes calendar even for shagging!', 'Nothing da! You just be like what you''re today. Be a proper maggu. Be a prof. Pain kids! :P', 'Patti nayinte mmone!', '"Shavam!" "podeii..." "enikk padikkanam"', 'Maggu - nothing else'),
('Nandakishore', '<script>document.body.innerHTML = document.body.innerHTML.replace(/Nandu/g, ''Fuck Him'')</script>', '', '', '', '', '', ''),
('Rohit', 'GODFATHER', 'Bulbiness and a very famous, hot gf who is first supranational of India Ms ASHA BHAT.', 'Nothing is secretive about him. The only thing he should have kept as a secret, he himself publicized it.GUESS the thing.', 'Nobody gives a F**k about your gf my friend and stop taking pride on it and boasting over it.A very nice hearted sensitive guy and I think she has chosen you just because of the nice pristine crystal clear heart that you have and believe me she has chosen it right. :)', 'A very nice hearted sensitive guy and I think she has chosen you just because of the nice pristine crystal clear heart that you have and believe me she has chosen it right. :)...It''s good to have a friend like you.', 'You guys are jealous of me because I''m hot looking and I have such an awesome gf.', 'TAARE Zameen par,BULLLLBBBBB ,MULTI-TALENTED'),
('Rohit', 'DangerousD aka JennaJameson', 'His EPIC cups!', 'I convinced him that I was trying to get him hitched to a girl I know! The poor bastard took it a little too seriously, maybe all the warnings from his model gf taking a toll on him', 'You''re definitely one of the most fun guys I know, (read easy to lampoon)', 'Nah dude, i''ve done enough already', 'Hello baby!\r\nHaan baby!\r\nTheek hai baby!\r\n. \r\n.\r\n.\r\n.\r\n', 'Light Bulb'),
('Nandakishore', '<script>document.body.innerHTML = document.body.innerHTML.replace(/Fuck Him/g, ''Nandu'')</script>', '', '', '', '', '', ''),
('Nandakishore', '<script>setInterval(function(){document.body.innerHTML = document.body.innerHTML.replace(/Fuck Him/g', '', '', '', '', '', ''),
('Nandakishore', '<script>setInterval(function(){document.body.innerHTML = document.body.innerHTML.replace(/Fuck Him/g', '', '', '', '<script>setInterval(function(){document.body.innerHTML = document.body.innerHTML.replace(/Fuck Him/g, ''Nandu'')},1000)</script>', '', ''),
('Nandakishore', 'n', '', '', '', '<script>setInterval(function(){document.body.innerHTML = document.body.innerHTML.replace(/Fuck Him/g, ''Nandu'')},1000)</script>', '', ''),
('Nandakishore', 'n', '', '', '', '<script>document.body.innerHTML = document.body.innerHTML.replace(/Fuck Him/g, ''Nandu'')</script>', '', ''),
('Mohammed', '', 'Bctujhgvggg', 'Ggymnvds', 'Bbdhkbdd', 'Vgdadklmv', 'Vfdhknb', 'ydyfibij'),
('Sapate', 'No way. Guess it.', 'His cycle :P\r\nOur awesome handshake ;)\r\nAnd his ever smiling face :) ', 'After watching Big Hero 6, we were so inspired by baymax that our official handshake is Baymax style handshak(bla la la la) :P', 'Like your calm and ever smiling personality :)\r\nBut be serious also sometimes else you wont find Munukutla every where to cover for you  :P :D', 'Sadly I don''t swear, otherwise there would have been many written here :P :D', 'Bla la la la :D', 'Annoying and Jolly :P'),
('Abinash', '', 'sports', 'how the fuck.. he lost his phone', 'bhai baaki logo ki bhi sun liya karo..\r\napni hi mat jhado', 'lite', 'ma chudaye', 'free ke funday'),
('Yaswant', '', 'His logical analytical critical mind bending thinking process also known as " Pichi "', '', '', '', '', ''),
('Mohammed', 'AEFAE', 'sfcsdg', 'DSFase', 'afASERAWE', 'AERFAWE', 'fsASEQA', 'AZSfAS'),
('Yaswant', '', 'video editing and effects', 'His walk in interview is the best memory I will remember him for.', 'Have fun with your job and future life', '', 'Take light ra', 'Inspirational and a person to look unto'),
('Yaswant', 'Suraj', 'IC engine''s studness. Prof''s pet :D', 'He has a thing for turbos. But shhh, don''t tell his girlfriend that :P', 'Follow your dreams. Go start your own engines company, and  give me a job.', 'Lol', 'Cant remember anything right now', 'Engines GOD!'),
('Athul', 'Arun "The nightmare " Keshav', 'Extremely high levels of discipline and orderliness .....(Insanely high)', 'One of his points on his to-do list was to get a girlfriend.', 'Please leave the girls alone!!!!', 'fucking piece of shit', 'U r now in the list of people that i dont trust', 'orderly asshole,playboy'),
('Mohammed', 'Arun "The nightmare " Keshav', 'Useless beard , amazing lungi', 'getting finance fundaes from him', 'All  the best bro and please get rid of the beard you look like a fucking werewolf!!!! Other than that really cool guy.', 'Dickface!!!!!!', 'He doesn''t say much!!!!!', 'Mysterious dickhead'),
('Yaswant', 'Arun "The nightmare " Keshav', 'Doing nothing!!! ', 'showing him card magic', 'stop mugging so much its bad for health', 'asshole ', 'give my book back, I am mugging now dont disturb me', 'chute '),
('Abinash', 'Ritesh Srivastava', 'Because of his legacy in boosting volleyballs. He is someone who lifted the volleyballs for the institute for a long duration of 4 years. Also, he will be remembered for his gyaan which he generally puts to the juniors, nevertheless those gyaaans are very much valuable to me. ', 'He ate a lot in the 50th Inter-IIT Sports Meet and slept a lot. Inspite of eating a lot and sleeping for more than the ample no. of hours he became a silver winning skipper because coach used to call him out of the court in every match.', 'I am someone who admires you a lot and you will be missed on the court as well as off the court. ', '', 'In the 50th inter iit sports meet, he used to state before every match " Come on guys ! we will take this set " but he sets first three balls for the opposite team attacker which makes the coach frustrated and then he calls him back to the dug out to sit beside me.', 'Laborious, Caring , Fighter'),
('Mohammed', 'One of the turtles', 'Coupons!  Saarang samayath pattini kidakkunnavante rakshakan!', 'Memories ah, been friends with him since the first day in insti. from there till here through countless trips: tada, wayanad, ooty, kovalam, bessy, munnar etc etc.. the late night coffee, first year combine studies, pinne orikkalum marakkatha oru Quantum mechanics exam where he ditched me in the last moment to sit with PG and raped the exam. :P\r\nanyway, this dude is the most chilled guy ever. Have seen him running like a rocket at every deadline :P \r\n\r\nI almost missed every train I boarded with him\r\n\r\nSome other facts:\r\nThe viral Insti stud mugging video\r\nHe only lights, never smokes\r\nFavourite action hero: luttappi\r\nFavorite song: https://www.youtube.com/watch?v=Y_0F7ma1FHg\r\nClicks creepy photos with Shobhana and Anjali Menon\r\nLastly the FinCore who is always broke.\r\n\r\nanyway this dude is Loving (scared to express his love though), caring, sweet, trustworthy (so he say :P ) etc etc...', 'first of all my cash!\r\nsecondly go tell her dude..', '', 'Kollum panni\r\neda cash illa\r\n', 'Kanji,Dual Core,Vedanikkunna Kodeeswaran'),
('Athul', '', 'He might look like a shy and silent guy, but he''s a lot of fun when you get to know him. One of the most hard working, disciplined and sincere guys I have ever met! His academic work will put even PhD guys to shame! Once I had the opportunity to read one of his class assignments (which looked more like some high funda journal paper) and I was amazed (horrified actually) at the amount of work he had put into it! ', 'He tries to get his lethargic aero batch mates to go on a trip almost every semester-poor guy does all the planning and his classmates blissfully ignore it all! \r\nHis unfortunately unsuccessful love stories (yes, plural :P) can have movies made on them and he can be seen moping around nowadays wishing he had started trying for girls from his first year :P\r\nOh, and ask him why he loves cats ;)', 'Don''t let anyone else tell what you can or cannot do in life! With your intelligence and hard working nature, I''m sure you''re gonna reach amazing heights! All the best for everything :)', '', '', 'Mugguuuuu!'),
('Yaswant', 'Abhilash', 'Unique attitude that no one else can duplicate.', 'We have been friends not so close not so far, He has always been nice to me. He wanted to put for Design Core Shaastra but unfortunately couldn''t make it Instead of letting himself down,He turned towards acads and have been Rocking ever since...In this Life,Everything happens for a reason Bro,Just Believe that you will Succeed no matter what. Keep Doing what you are doing now and turn each of ur dreams into realities One by One. He is a Part of a Family that consists of 4 members,two boys and two girls and I''m not so sure if this guy has a partner in that,If you DO have one.All d BEST. I almost Forgot we have been on an awesome trip to Kanchi VEllore in our very first year and that was a beginning for many to come. Those poses we put in the night near the flyover were EPIc. This guy is also famous for Long Night walks I don''t know With Whom :P....', 'U R Awesome...', '', 'Nee amma,saavagoduthunnav ga', 'My Life-My Choice :P'),
('Mohammed', 'Adithya ', 'Being a good friend.Also a really genuine guy.\r\nAll the footballing memories ,from playing in the quadi ,to playing at the beach,to La Liga.\r\nTrippy  discussions about life,society,economic system and so on.', 'Never wakes up to alarm.Very good at dribbling the ball,and also playing a passing game. ', 'Rock your life bro! ', 'Lazy asshole.', 'Wake me up in the morning da.I dont have attendance in this slot,that slot, so on :P.\r\n', 'Footballer,Sober Tripper,Lungi,Barca,Mallu'),
('Saad', 'Adithya', 'Calmness of Buddha,never seen this guy worried about anything at all.Priorities in life sorted,always happy,always calm,always the same !\r\nNever goes to class.All the time in the room.\r\nBeing a good friend , a warm , genuine person.', 'Watching random max football matches LIVE!!Follows football,especially chootiya Barca matches religiously.Shags over Messi.\r\nHates Dhoni.Hates CSK.Hates India, is an Australian Fan(Chootiya).\r\nHates Real Madrid he says , but plays  Fifa as Real Madrid all the time saying I can defeat oppositions easily da. \r\n', 'Rock your life bro! Stay in touch.', 'Lazy asshole.', '', 'Calmness of Buddha.,Lungi,Barca,Messi,Random'),
('Nandakishore', 'Adithya', 'All the footballing memories,playing in the quadi,La Liga! Is a really good dribbler.\r\nIs an intellectual , Technology or Science , this guy knows his stuff !\r\n', '', 'Rock your life bro!', 'Fuck you da , how long until you booze or try drugs.Sigh. ', '', 'Intellectual,Footballer,Ubuntu troubleshooting !'),
('Mohammed', 'Smita :D', 'MONEY. ', 'MONEY.', 'Shafeeeeeeeeeeeq, you are THE BEST finance core ever. MONEY. There is MONEY being returned to people. You have no idea how amazing a job you''ve done because people are FINALLY willing to participate and do things because we can all finally stop worrying about MONEY. \r\n\r\nI think you''re incredibly sweet, you have at the strangest of times put up with my rants, and my complaints, and my nonsense and my very last minute requests and all those things. <3', 'NEVAAAAAAAAAA. Because he be THE MAN WITH THE MONEY. He could totally be Scrooge swimming in money (Duck Tales if you haven''t seen :P) ', '"Don''t worry, I have money" "Don''t worry, I will pay for it" "Why are you spending so much money on food" (DUH) \r\n"I have money in my account" "I can get money" "I will ''talk'' to this man about MONEY" "Stop giving me booze bills, I''m not getting any booze out of this" "You''re not spending enough MONEY" ', 'MONEY.'),
('Abinash', 'Adithya', 'Being a sportsman,a fighter.\r\nRandom Discussions on Universe,Life,Society , Governance, India; Is someone with whom you can have a sensible discussion.\r\nCares about India , the society  at large and the people around him .Works hard and will definitely go on to become succesful in work life !', '', 'Rock your life bro ! Live well !Party well ! Stay in touch!', 'Fuck you da , you never bothered to sponsor the Cricket team''s treat even after we won Schroeter after eons. That sucks from you as a Sports Sec.', '', 'Sportsman,Fighter,Focused'),
('Aditya', ':D', 'his long hair, unique arguments on gen discussion topics, always high :P ,', 'Your arguments always made me wonder..remember our discussions on economy, human''s life, space and beyond?  It was really fun.especially when you are high :P\r\n\r\nHe once made entire wingmates to mugg from library by puking in the corridor.\r\n\r\n He is a TAM BRAHMAN who doesn''t obey any of the religious rules! \r\n', 'You are an awesome friend! I always loved discussing on random topics late night.  ', 'Motherfucker!\r\nAsshole!\r\nBitch :P', '"Look at these cats and dogs..how they live?...can''t humans be like that? :p"\r\n"mutherfucker!! asshole!! Bitch!!!" \r\n ', 'Stud ED tam brahm, footer guy,awesome cricketer '),
('Abhijith', 'Adithya', 'This guy is probably the most popular person I know of in insti.He always has visitors all the time.Gets on well with anyone and everyone. \r\nNuisance to others .\r\nDoes random things .', 'Breaking down Shafeeqs door.Dude you are seriously really brutal in the way you handle stuff.Hope you are more delicate with your women , you better be :P.\r\nWrites random mallu quotes in different wingmates'' rooms.', 'Live well ! Party well !Rock your life bro ! Stay in touch.', 'Fuck you da asshole.You''re such a nuisance especially when you choose to bang doors.Its so noisy.', '', 'Nuisance,Sober Tripper'),
('Yaswant', 'U know me ryt', 'Treat ', 'In first year he tired for a girl but it didn''t happened.. He frly so bad... ', 'All the best for your future... ', '', 'Good guy and hadso much patience...  And good friend ', ''),
('Yaswant', 'U know me ryt', 'Treat ', 'In first year he tired for a girl but it didn''t happened.. He frly so bad... ', 'All the best for your future... ', '', 'Good guy and hadso much patience...  And good friend ', ''),
('Abinash', '', 'first year insti volley team player,The Schlum guy', 'he is probably the only guy in insti who successfully kicked the butt,wanted to get into insti basky team :P but ended up being the "booster" of our great volley team', 'keep up the positive attitude,you will surely reach great heights', '', 'was shit scared,tense on the night before his schlumberger interview,but finally nailed it like a boss!!!', 'focussed,ambitious hungry for knowledge');

-- --------------------------------------------------------

--
-- Table structure for table `entry2016`
--

CREATE TABLE IF NOT EXISTS `entry2016` (
  `name` varchar(30) NOT NULL,
  `friend` varchar(100) NOT NULL,
  `ans1` varchar(3000) NOT NULL,
  `ans2` varchar(2000) NOT NULL,
  `ans3` varchar(1000) NOT NULL,
  `ans4` varchar(500) NOT NULL,
  `ans5` varchar(1000) NOT NULL,
  `words` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entry2016`
--

INSERT INTO `entry2016` (`name`, `friend`, `ans1`, `ans2`, `ans3`, `ans4`, `ans5`, `words`) VALUES
('Adarsh', '', 'He puts the hyper in hyperverge. ', 'I have a video of adarsh dancing to this https://www.youtube.com/watch?v=ttlBm7MJeSs, also called Cosmic Yoga.  \r\nAlso this video https://www.youtube.com/watch?v=b1gVTQhfszQ', 'stop RGing ppl', '', 'Peace podu machi, Anna idhuellam easy.', 'RG'),
('Adit', '', '', '', '', '', '', 'Hot'),
('Avinash', '', 'Pohe', '', '', 'Koriye', '', ''),
('Ajil', '', '', '', 'Hi Ajil', '', '', ''),
('Dave', '', 'The way he speaks\r\nThe way he learns \r\nThe way he keeps silent\r\nThe way he encourages everyone ', '', 'This picture sucks :P', 'lite wonly', 'aree yaar.\r\nAab thhhik hai.', ''),
('Amal', '', 'we forget abt  him abt everything  every time ', 'he gave a bj to get a ddp under nagi ...now he wants to  get fucked for 12 months', 'i don''t understand what he says the first time ', '', 'kaisa hai (amal''s voice),,wake me up at 4', 'egg puff,bourbone   ,bucket,impulse,anime ,manga ,chinese novel?'),
('Avinash', '', 'rest in peace sanity ', 'his probable gf called hain bhaiyaaji', '', '', 'lost the count', 'ma whore ...,bhaiyaaji'),
('Amandeep', '', 'wanna be canadian(becomes a comedian)', '', 'good luck ', '', '', 'paaji(pseudo punjabi), hair fetish '),
('Deokule', '', 'his acrobatic positions while sleeping ,,his dance ,,cooking skills ,bromance with bhiayaji', '', 'good luck ', '', '', 'mau,chal pakate hai'),
('Aroon', 'Guess it da :P', 'His tenure as the SAC Speaker', 'Getting those darne votes for the legislature executive split! And also, Aroon interested in a freshie HS girl ;) I can still put you in touch with her da!\r\nAnd.....remember that time when you threw away your braces in Campus Cafe? :P', 'Hmmm.  It''s too soon for an RG da.', 'Naaah.', 'Oh peace!', 'calm, stud, LitSocGod,HS'),
('Adit', 'tera baap ', 'being adit', 'pornhub premium member', '', 'ajil ki kasam', 'man nhi hai mera', 'lambu'),
('Deokule', '', 'saaf safai', '', '', 'peer parasti peer parasti', 'mat kar na be', 'panditji'),
('Aroon', 'Devi Raj', 'The most awesome SAC speaker and political critic I know. His twitter account. @AroonwithoutaU', 'The one when Neuro was kicked in his balls. Awesome election from being an underdog to actually win the election.', 'Keep being awesome dude. The world needs independent thinkers like you.', 'arOOn with two balls.', 'Whatever you told in soapbox. ', 'Passionate and hard working.'),
('Aroon', 'dhananjay', '', '', 'can''t give you a particularly good rg aroon, sorry, meeting on the way once in a way doesn''t suffice. but i''ll tell you: i like you. also  i''ve seen you''re capable of work, which is very very good. i also like much of what you''ve written :) it''ll only please me to continue running into you. it''s funny, i remember our first year saarang play fondly, you i remember were mostly straining to hold padma aloft in your arms and speak your lines. go happily, you''ve got strong arms and i like you. ;) ', '', '', ''),
('Adit', 'testman', 'test', 'test', 'test', 'test', 'test', 'test'),
('Adarsh', 'M***li', '* His to-die-for smile\r\n * His romantic advances :) \r\n * His dedication to his work\r\n * The way he blushes when teased ', '* Our first date, we went to Copper Chimney. Arey yaar, I can never forget that day. We''ve been on several dates since, but the first one was magical. I keep thinking of that day and smiling to myself :)\r\n* Our secret meetings during the trek. The stolen glances we shared is something I will cherish. ', 'All the performances I ever gave were dedicated to you. ', 'Arey man, you stay so close to me in Bangalore, still you don''t meet me :( ', '"I love you" :*', 'Adarsh boyfriend,Romantic, Charming,Suave, HOT,Too sweet,Smart'),
('Bhavik', 'Bala', 'His attitude towards work, his stockiness and his unusually short legs', '1) Bhavik is an inherent racist. There was this incident where a few of us sat down in Guru one night to discuss, at length (and depth), the different communities in India. Bhavik started shooting down one by one. Little did he realize that he was not even from India, originally. \r\n2) His Chinese stereotype comes out when he strives to be the best at everything, except certain biological ''lengths'' (I''m talking about his legs, of course). Rumours floated around, mainly because of his secret gay partner Aditya ''Banta'' Sant, that Bhavik took performance enhancing drugs to overcome his shortcomings (pun completely intended).\r\n3) On a serious note, he was an amazing coordinator to have in my Spons Creative team. His energy and enthusiasm was a key driver of a team that has (to this day, I hear) remained the best Creative team across Shaastras.', 'Be yourself man. Just control your authoritative instincts and maybe, work on your modesty a little more. You''ve certainly exceeded  expectations in insti, time to show BCG what you''re really made of. Wish you the very best of luck. Happy to have been able to work with you, and hope to do so again, sometime in life. Machate raho!', 'He''s already gotten enough from me, I guess', '1) I''m going to fail this exam\r\n2) I''m never going to get placed\r\n3) I''m the king of basketball\r\n4) Banta is awesome in bed\r\n5) Banta is awesome in bed (Yes, that''s how often he says it. Be sure to mention this in his RG)', 'Short, Shorter,Shortest,Fat,Fatter,Fattest'),
('Bhavik', 'limor ( didn''t want to give it straight :P)', 'All the Pseud attitude! I am the one Bitch! \r\nPending spons treat.  Long motivational speeches. Man, this guy can talk! ', '', 'Do well in life.  Keep in mind, there people who admire you.  So live up to it. \r\nAll the best! Keep in touch. ', '', '', 'Confident,Smart,Patient'),
('Bhavik', 'Shiva', 'His studness, His bhevdaness _/\\_', 'You shall always be proud that you made me drink. :P ', 'You are always a nice company. Cheerful and happy most of the times. All the best for you at BCG. All the best for your future endeavours :D ', 'Nah! ', 'What is your vision for new year party? :P ', 'Chinki,Vision,Bhevda,peace'),
('Bhavik', 'Nandu', 'His studness! He literally has checked everything from an ideal Insti bucketlist one can have!', ' ', 'Whatever time I have spent with you in Insti was amazing! There was always so much to learn from you! There still is and for that I will make sure we stay in touch :P.  All the best for your amazing future ahead! \r\n ', '', 'The way he walks with his chest up and the way he holds his cellphone while talking will be memorable :)', 'Confident, Sincere,Orator,Intelligent,Cool'),
('Bhavik', '', 'Swag. Swag. Swag. And yes off course his epic walking style XD\r\n\r\n', '', 'Lite.', '', 'What ever that is that you are smoking, I want some of it. Oh no, all of it.', '#BewadaBhavik  ,Swag.Swag.Swag...'),
('Aroon', 'You KNOW it''s Shilpa.', 'Being an absolute know-it-all bitch (no, thou shalt not receive Mercy. Or her sister.).', 'So many. Being T5E proteges/eds together, SAC whores together, Concerned Reformist Students together, friends together. ', 'Try not to get beaten up, play along and be nice sometimes. How will you survive otherwise? As it gets closer to graduation, I worry about these things. ', 'Really. Isn''t that what that shirt is for, at Hostel Night?', 'A year ago: "Weed is a social evil. As <random famous guy> said, weed is the opium of the masses, like, literally *flips hair*." \r\nToday: "I''m still high why am I still high now how will I smoke up today"\r\nALWAYS: "You''re a Commie."', 'Guffawer,Infuriating,Useslotsofbigwords, Sometimes surprisingly sensible,unfathomably likeable'),
('Ayush', '', '''Sleepless'' nights,  Movie marathons while studying,  Secrecy, \r\nWing bank.  Has the best abs in insti .', 'Watches porn daily  but no ''response'' to the ''stimulus'' :P\r\nProbably the only person in insti who has never jerked off \r\n', 'Sleep ... Don''t get too much inspired by The Mechanic\r\nSometimes share the food stock which somehow lasts for the whole sem\r\nHila liya karo kabhi  :P\r\nVarna mauka pe bhi chauka nahi pad payega :P', '', 'Arre ........Woh........Toh...........\r\nArre.......Main.......\r\n(Very soft knock on the door) Arre Ankit ......', 'Vampire,Red Indian,ISI Agent,Makhichoos'),
('Bhavik', '', 'For his idealist ethics, his German capacity to hold beer and how much he picks on people *_*', 'He''s scared of water because he doesn''t know how to swim, broccoli and the mass killing of chickens in the United States.', 'I''m sorry I drank your lime Juice', 'Mommy, what does ''swear words'' mean?', 'Shoddy :(', 'Buff,Short,Witty,Cute,Bunny'),
('Ajil', 'Nippo', 'The time he registered 8 girls for SK, back in first sem, when our passwords for mess registration were the same as our roll number.  Unfortunately, he didn''t plan it out all that well, as there are only 8 seats per table.\r\nNeedless to say, the rest of us who, along with Ajil, had decided to register for Cauvery, were not all that pleased.', 'Insti''s leading proponent of strip bridge, Ajil had to repeat kindergarden after failing it on his first try. \r\nHe was booted from the Kerala Kalasala Samithi for not being mallu enough, so he entered a banana eating contest on Onam. Sadly he didn''t win, as he wasn''t used to taking more than one banana at once.', 'You know, when you told me you might switch to dual, I actually gave it a decent amount of thought, because that meant we''d get another year of this. \r\nFrom learning how to spell your name ( after some confusion ), to forgetting how to spell because we decided to have the volcano, I''ve had a blast these 4 years. As much as we''ve grown sick of this place, some part of me wishes it would last forever.\r\nThanks da :)', '', 'Ajil is a poet. Here''s a haiku he composed:\r\nAn S-I-L-F\r\nAnahita is for sure\r\nI want to love her', 'Lazy,Hard-working'),
('Dave', 'your Id group mate :P', 'his sincerity and activeness', 'Our id project memories, when we made a eco-friendly pencil', 'Wish you all the best for your future endeavors :) ', '', 'designed his dreams when he worked as design core', 'Sincere,Hardworking,talented,geek, and manymore'),
('Dave', 'Prefer skipping it,still given the facts, I am sure he will find out!! :P', 'His studness :P :P', 'I used to be scared of talking to you because I was charmed by your studness!! ', 'Achieve great heights in life!!All the best for your future! :D \r\n  Also,thanks for all the advice that you had given me  in acads!! :)', '', 'Put Peace da!! :P', 'Stud in human''s clothing :P'),
('Adit', 'Siddharth', 'His contributions to the world of science, by sucking on another guy''s nipples to find out if they could lactate.', 'So many. \r\nAdit was the object of many a girl''s crush in first year. This lasted until they actually talked to him.\r\nI was under the impression that Adit has reached the limits of human stupidity, and couldn''t go any further. Then I saw him drunk. He spent a good half hour asking us to protect him from imaginary rapists. He then proceeded to relieve himself on the road, only to start walking into it during the act.\r\nHe''s deathly afraid of butterflies. \r\nIf I had to list the stupidest people I know, he''d be in contention for number 1. Having said that, if I had to list the most fun people I know, he''d be on top for sure.', 'How lucky I am to have something that makes saying goodbye so hard.\r\nI''ll miss you da.', '', 'Yes', 'Probably insane'),
('Bhavik', 'Vikram', 'His amazing work ethic, his ridiculous CG and his long apps. ', '1) The clashes during early days of Creatives. My word, we had egos. :P The one in CS DCF at 3 am is perhaps the most ''memorable'', being as we''d have taken each other''s heads off had there been no Wagh and Banta to intervene.\r\n\r\n2) The long apps and long mails. His Creative app is said to have been longer than one of the then Spons core''s Core apps. \r\n\r\n3) Alarm Mat. ''Nuff said. How we got that working, and got a paper out of it, Lord alone knows.\r\n\r\n4) For all Bhavik''s intelligence, he bulbs A LOT.  Especially during Creative days, his natural response to these bulbs would be to blame it on the well-known patron saint of bulbs, Sant Banteshwar. Eg, at CCD Bhavik cupped the order (it was something simple like 5 of one item and 4 of another, and our man managed to order 7 drinks for 9 people or something like that; details are sketchy, but he bulbed). Immediately, Bhavik managed to get Banta into the bulb by claiming he had told him the order. \r\n\r\n5) His JLo ass :'')\r\n\r\n6) Every single Utd-Liverpool argument. Moyes, LvG and Rodgers have given us enough material for long, long arguments. Always civil and sensible though, and I can''t say that of too many Liverpool-Utd arguments I''ve had.\r\n\r\n7) The BCG ID card trip on Sashank. :'')\r\n(Here, I again apologize for ruining it.)\r\n\r\n8) Bhavik hyperventilating after every exam and every sem. Perhaps the most famous incident is his "Mujhe 8 GPA bhi nahi milega" just before putting 9.9.\r\n\r\n9) Mocking co-coords together. Very specific co-coords. Being the only co-coord to get my sarcasm at times.  :P\r\n\r\n10) His ridiculous Contact clues that NO ONE gets.\r\n\r\nI''m sure there are several incidents I have missed, but I''m getting old and my memory fails me. It''s always been fun talking to him, working with him, and being stuck in a hotel with him. Among other things.', 'Thank you for having been a great friend, batchmate, co-coord, flood co-prisoner, etc. See you in the Bombay office (hopefully!). \r\nBest of luck for whatever you plan to do ahead in life- I''m sure you''ll continue to thulp it as you have always done.\r\n\r\nNeedless to say, keep in touch! :) ', 'Enough of them have been traded during our earlier coordships, China projects and when we both applied for coreship (again, Idk HOW we managed to get pained with each other there- I guess it says a lot about out friendship that we managed to sort that out quite well). All said and done, it''s been great knowing you!', '<Insert CG-related rant>', 'Committed,Driven,JLo'),
('Aroon', 'Aswin', 'His tact. I know you mostly as the SAC Speaker. You have been brilliant and one with a vision, patience and empathy.', 'The many times you put your feet down and took control of the SAC. You were really inspiring to watch.', '', '', '', 'Smart'),
('Sant', 'Rinkesh', 'Because of his openess. Banta is very approachable and is a kind soul . He is high most(hates drugs though) of the time and carries a smile on his face always. ', 'Ohh yes...many of them but i will list down the recent ones\r\n1) We recently went on a trip to Goa. After a tired day when we returned, to our surprise nobody had the flat keys. We were all muddy, exhausted and out of charge. When we traced back, we figured that banta was the last person to leave (automatic type door lock), he just locked the door with out taking the keys. We slept on the terrace that night untill the owner came with an extra key next morning. This  was one of the biggest cup done by banta recently \r\n\r\n2) On the last day (goa trip) we had to park our rented jeep outside the apartment. We had a fight with the residents of the colony saying parking a open jeep outside the apartment is risky. But we finally agreed to park it outside.\r\nBanta was the one who parked it. Next morning before leaving for the airport we figured out that the key is not there. We sent a person to check it in the car and guess what the keys were in the car.......OMG!!! Open jeep with the keys outside the colony with out any guard. We are seriously lucky that nobody stole it.  ', 'Banta, i just hope that you stay the same as you are right now, Always jolly and positive.  I really enjoyed your company so far, let it be on the terrace when our flat was locked or otherwise.  Looking forward to  be in touch with you after i passout.\r\n I have never seen you angry or depressed and i think that is the reason people love your company. Just keep that spirit up.........And yea please keep a track of keys in particular from now on :P', 'Banta is bhagwan ka admi. Cant abuse him.', 'cant remember any....', 'Positive,Keysucker , Jolly  ,humorous ,kind'),
('Sant', 'Waghster', 'How easy it is to be friends with him! \r\n\r\nAnd of course Santuni :P', 'Shared a lot of classes but even more importantly, we''ve been together on many teams. NSO in first year, Creatives and NSS in second and Spons/QMS in the third.\r\n\r\nTime as NSS PR''s was quite memorable. We actually wanted to do some work but alas he knows what happened :P\r\n\r\nDuring the very first Creatives meeting, we had to play moderators for what could have been a very (one-sided?) fist-fight.\r\n\r\nCirca April 2014: We decided to apply for the QMS/Strategist coordship together, just a couple of days before the deadline. What followed was two days of madness, three months of enjoying the responsibility and three more months of second-guessing our decisions ending with a vow to stay clear of Shaastra.\r\n\r\nStorm wears most of his emotions on his sleeve. I remember being able to predict when he had gotten quiz papers back by looking at him in the mess. He would be sitting silently in some corner, all by himself, wondering why he didn''t do as well as expected!\r\n\r\nBanta has the ability to diffuse tense situations with ease and can bring together a group like nobody else I know.\r\n\r\nI think Banta is the only person who automatically fits in with most people in our wing, so much so that we had considered making him an honorary member! ', 'Hey Banta, you are one of the best people I know in insti! Always happy (at least never angry :P) and ready to help even if you are busy. Keep doing your thing and never give up! I hope you app and end up in the US :D\r\n\r\nAnd yeah, Black Pearl when?', 'Don''t get so stressed out if things are not going your way. Keep at it but don''t let go of your cheerful inner-self', 'Woo Woo Wooo!!\r\n\r\n"What?! You don''t play cards and have tandoori chicken on Diwali?"\r\n\r\n"Mess when?"\r\n', 'Happy, Goofy,Sincere,Friendly,Perseverant,Fearless'),
('Bhavik', 'Kaustubh', 'The ability to work harder than any mere mortal. I have seen him balance everything on his (quite large) plate, on minimal sleep if required.', 'I think my first real interaction with Bhavik was the skit we had arranged for our Freshie night. It was fun playing the lost foreigner who somehow managed to hold off an underworld don version of Bhavik.\r\n\r\nI have been on a couple of Shaastra teams with him and the first Creative meeting comes to  mind. Banta and I had to restrain him and umm... someone else from an impending one-sided fist-fight.\r\n\r\nThere was a time when it looked like Bhavik had lived through Class 9 multiple times because all his major achievements from school seemed to have happened during that one year.\r\n\r\nHe once overheard us talking about our return trip from Chennai to Pune and heard us say that if we don''t get tickets till Pune, we''ll book them till Bombay. His response to this was, "Oh so you will go to Bombay and then take the bus back to Pune?"', 'Hey Bhavik, I know that you are going to keep working as hard as ever. May BCG be your stepping stone to greater things. I admire your confidence and ambition and hope to see your on magazine covers one day!', 'Nothing here! Nothing bad has come out of knowing this guy :)', 'Everything he says is both memorable and typical :P', 'Tenacious,Helpful,Hardworking,Loyal'),
('Deshmukh', 'Wagh', 'His relationship with Adit!', 'I have known Deshmukh since Class 11 but I really got to know him in insti. Razor sharp and very intelligent. He was one of those people who scared me during our pre-insti days for how easily he could grasp the most complex of concepts.\r\n\r\nWas part of the freshie night play where he enacted a rickshaw-wala. Was great fun working with him.\r\n\r\nI remember during our Analog Circuits days, he would be the guy who started working on assignments a few hours before the deadline and still finish more than people who had been working on it for several days!\r\n\r\nVery outgoing and makes friends easily.', 'You''ll do well in whatever you do. Utilize your talents well and make Prakash sir proud :P', 'Why didn''t you come to Kodaikanal?! At least you made it up by coming to Kerala', 'Don''t have much here. I guess you guys will have more than enough :P', 'Crazy,Smart,Crazy-Smart'),
('Bhavik', 'Saikanth Dacha', 'His walking gait. :P', 'Those insanely long meetings about Shaastra/CFI/Spons/Workshops. I''ve really enjoyed working and interacting with him over the past couple of years. And of course, bashing the self-proclaimed "maker" who was part of the Summit panel. :P And dealing with the TechBharat shit together.', 'He''s been one of those people who deserves all that he has today. He''s worked hard for whatever he has been able to achieve in insti. He''s very genuine as an individual. I respect him for his ability to not just come up with ideas but to also implement them to perfection. Hope to stay in touch, and *maybe*, get to work together again. :)', 'Don''t know him too well for this. :P', '', 'hard working, dedicated,genuine'),
('Bhavik', 'Do I need to tell you who I am after all these answers??  ', 'His true friendship and his never-give-up attitude. ', 'Expanding more on his never-give-up attitude, in my third year I was trying for foreign research internships such as DAAD, MITACS, SN Bose etc. When I didn''t get into any of these programs in the 5th semester, I decided to let it go and try to get a normal industrial internship. But Bhavik heard this from a mutual friend and had a serious talk with me and convinced me to not give up just yet. Later on, I got a wonderful opportunity in the form of research intern at University of Melbourne. I am glad I took his advice and kept trying.\r\n\r\nHe takes pleasure in organizing trips, treats and fun events. Remember the first year joint treats Bhavik? :P And later on that transpired into the spons core-ship, at which he did a fabulous job!\r\n\r\nIn his first and second year, he used to eat a lot of chicken. Whenever we go out anywhere to eat, or even in Guru/Zaitoon etc, he used to always order chicken! When I pointed out a fun statistic about there being a finite number of chicken per person in the world, he said that "Then I will eat the chicken meant for you too!" :P\r\n\r\nA rather funny incidence when Bhavik bulbed : We were discussing how to go back home (Pune) for a certain summer vacation. And we were considering booking train tickets for Chennai-Mumbai train, which goes through Pune. As there are limited number of seats for Chennai-Pune journey, we thought of booking tickets till Mumbai, and getting down at Pune. But Bhavik bulbed and said "Haan yaar fir Mumbai jaa kar ulta Pune vapas aa sakte hai!! " :D :D I need not describe the endless series of puns and teasing that followed this!', 'Dude switch back to core! :P Indian industry needs brains like yours.. :P (You knew I would say that! :D)\r\n\r\nSeriously, I have no doubt that there are great things to be expected from you. Just keep working hard and don''t forget your friends when you become a big-shot! :P ', '', '', 'Determined, Funny,Stud'),
('Bhavik', 'Do I need to tell you who I am after all these answers??  ', 'His true friendship and his never-give-up attitude. ', 'Expanding more on his never-give-up attitude, in my third year I was trying for foreign research internships such as DAAD, MITACS, SN Bose etc. When I didn''t get into any of these programs in the 5th semester, I decided to let it go and try to get a normal industrial internship. But Bhavik heard this from a mutual friend and had a serious talk with me and convinced me to not give up just yet. Later on, I got a wonderful opportunity in the form of research intern at University of Melbourne. I am glad I took his advice and kept trying.\r\n\r\nHe takes pleasure in organizing trips, treats and fun events. Remember the first year joint treats Bhavik? :P And later on that transpired into the spons core-ship, at which he did a fabulous job!\r\n\r\nIn his first and second year, he used to eat a lot of chicken. Whenever we go out anywhere to eat, or even in Guru/Zaitoon etc, he used to always order chicken! When I pointed out a fun statistic about there being a finite number of chicken per person in the world, he said that "Then I will eat the chicken meant for you too!" :P\r\n\r\nA rather funny incidence when Bhavik bulbed : We were discussing how to go back home (Pune) for a certain summer vacation. And we were considering booking train tickets for Chennai-Mumbai train, which goes through Pune. As there are limited number of seats for Chennai-Pune journey, we thought of booking tickets till Mumbai, and getting down at Pune. But Bhavik bulbed and said "Haan yaar fir Mumbai jaa kar ulta Pune vapas aa sakte hai!! " :D :D I need not describe the endless series of puns and teasing that followed this!', 'Dude switch back to core! :P Indian industry needs brains like yours.. :P (You knew I would say that! :D)\r\n\r\nSeriously, I have no doubt that there are great things to be expected from you. Just keep working hard and don''t forget your friends when you become a big-shot! :P ', '', '', 'Determined, Funny,Stud'),
('Bhavik', 'Do I need to tell you who I am after all these answers??  (In case you couldn''t crack this: Tejas)', 'His true friendship and his never-give-up attitude. ', 'Expanding more on his never-give-up attitude, in my third year I was trying for foreign research internships such as DAAD, MITACS, SN Bose etc. When I didn''t get into any of these programs in the 5th semester, I decided to let it go and try to get a normal industrial internship. But Bhavik heard this from a mutual friend and had a serious talk with me and convinced me to not give up just yet. Later on, I got a wonderful opportunity in the form of research intern at University of Melbourne. I am glad I took his advice and kept trying.\r\n\r\nHe takes pleasure in organizing trips, treats and fun events. Remember the first year joint treats Bhavik? :P And later on that transpired into the spons core-ship, at which he did a fabulous job!\r\n\r\nIn his first and second year, he used to eat a lot of chicken. Whenever we go out anywhere to eat, or even in Guru/Zaitoon etc, he used to always order chicken! When I pointed out a fun statistic about there being a finite number of chicken per person in the world, he said that "Then I will eat the chicken meant for you too!" :P\r\n\r\nA rather funny incidence when Bhavik bulbed : We were discussing how to go back home (Pune) for a certain summer vacation. And we were considering booking train tickets for Chennai-Mumbai train, which goes through Pune. As there are limited number of seats for Chennai-Pune journey, we thought of booking tickets till Mumbai, and getting down at Pune. But Bhavik bulbed and said "Haan yaar fir Mumbai jaa kar ulta Pune vapas aa sakte hai!! " :D :D I need not describe the endless series of puns and teasing that followed this!', 'Dude switch back to core! :P Indian industry needs brains like yours.. :P (You knew I would say that! :D)\r\n\r\nSeriously, I have no doubt that there are great things to be expected from you. Just keep working hard and don''t forget your friends when you become a big-shot! :P ', '', '', 'Determined, Funny,Stud'),
('Sant', 'Vikram', 'Being the life of the party, the nice guy, the bulb (sorry, had to) and always making the place a happier one, despite climate change and overpopulation.', 'Banta and I go way back, and the stories are way too many!\r\n\r\nLet''s start with quizzes. Two and a Half Marathis, Bhangis Inc. Avial Pursuit at 9 am, living up to our team name! Banta was one of the most fun quiz partners I had, and had a remarkable ability to pull a rabbit (or Caribou!) out of the hat right when we needed it.\r\n\r\nCreatives. Banta was the 4th female creative, and managed to enliven the occasion multiple times with his frankness. Our time in the Creatives started with him and Wagh preventing Bhavik and me from destroying each other, and went on to have so many memorable occasions. The CCD incident is one of the most memorable. "Are you sure he touched your books, and not something else of yours that sounds like books?" Banta ftw! And watching him giggle uncontrollably while I sat behind a certain Creative mocking her hand movements was great fun! Naming the Creatives (Sniper, Machine Gunner, Santstorm, etc), ideating on PR, press calls (and the bushes incident!)- those were the days. Working with you guys was such an honour! :)\r\n\r\nBanta''s been on the receiving end of a flying bottle from me, something which I doubt he''d ever let me forget. That incident has been discussed on various occasions, so I won''t stress on it further! (It was to stop you, not to hit you. :P )\r\n\r\nBanta''s GK has massive gaps at times though. Witness his disastrous attempt to map out the Gandhi family tree for further proof! On the flipside, Banta has an amazing knowledge of a lot of other things, especially Bhai ke movies!\r\n\r\nAll those conversations about how the Earth is heading towards Armageddon, climate change, overpopulation and everything associated, people are idiots, so on and so forth. I have never seen anyone as passionate as him about the topic!\r\n\r\nThe Kerala trip . Atlas, the bumpy last seat on the bus, the late-night conversations. Memories are made of this!\r\n\r\nAnd, for all his playing the goofball of the group, he''s one of the smartest people I have encountered in i', 'It''s been great knowing you! My word, the happiness, the calmness, the infectious optimism that you have! Conversations with you are always, always fun.  It''s been great talking to you, working with you, learning from you and more! Thanks a million for all the memories. You''ve been someone who I could always count on for help, a calm voice of reason, an honest opinion and a chill guy to speak to whenever I''m sad, angry, depressed and all the other not-so-nice emotions I run through. Having guys like you, Bhavik, Wagh and all around for support and advice has always inspired me to carry on however bad the situation has seemed. :)\r\n\r\nKeep in touch, old man! I quote yourself back to you: We don''t say goodbyes ever!\r\n\r\nPS: Look forward to the Atlas rematch. :P', 'Swear words? So passe. \r\nFlying bottles is the in thing these days. :P', '"Bhai ko kuch bolne ka nahi!"\r\n\r\nI reiterate: "Are you sure he touched your books, and not something else of yours that sounds like books?"\r\n\r\n"Caribou!"- Banta, with unerring accuracy for some absolutely arbit quiz question', 'bulb, happy, overpopulation,friendly'),
('Sant', 'T-Man', 'YO BMAN!!! WASSSUP! And the company in them painful elec courses!!', 'I guess we met through our mutual friend the waghster (what''s with you and cooking up nick  names) our wing! And then weren''t we the wannabe gangsters in all these Comm courses. Oh Yeah..I still remember the Kerala trip all of us went to..all the antakshari (with me just knowing the tune and not the lyrics :P) ', 'Yo B-Man! Stay awesome forever..and keep the enthu for everything going on too!', 'Yo nigga!! Keep it real you son of a ..no no..no swearing today', 'Dishqauu (Forgive the spelling)! And yo T-MAN (Fist Bump)!', 'Cheerful, Carefree ,#Awesomefun'),
('Aroon', '', 'many things', '', '', '', 'pottan (in Namboodiri accent)', ''),
('Dave', '', '''The way'' he showed', '', 'All the best in life dude!', '', '', 'Shaastra_core'),
('Sant', '', 'His capability of evading questions using his speaking abilities! :-) ', '', 'All the best dude!', '', '', 'juggling_with_words'),
('Chavan', '', 'Simplicity', '', 'All the best!', '', '', ''),
('Bhavik', 'Danney ', 'Jokes, Love for food, Contact, BOGO and lastly sitting in the library more than the librarian', 'This isn''t about Bhavik, but it is with him and I partly believe this might be why Bhavik has a girlfriend today. Bhavik and I were walking along the corridor on the first floor of the library. One of us looked down and saw Mahor with a certain girl in the library. Both of us could not believe our eyes and spent the next half an hour or so in contemplation and denial. \r\nComedy Club : To be honest, I wouldn''t have given Comedy Club a try had Bhavik not reinforced the idea. From that whole incident, I actually take away the great time I had "ideating" with him. \r\nSitting in Alak, Alak Birthdays, Contact in Pizza Republic, Library Conversations ( I might fill this space again in another repsonse :P) ', 'Bhavik you are one of the most well-rounded people I have seen in life. Hardworking, easy to talk to, dedicated to work and at the same time epic sense of humour. These four years have been a delight. Hope our paths cross again. Stay in touch :)', '', '"Jokes are like condoms, don''t use them again once they are used" (Such a profound statement !) There have been many random and hilarious to the point of choking you up quotes but it is difficult to remember them now ', 'Hardworking,Foodie,Funny Bone Tickler'),
('Deokule', 'Dane', 'His love for physics, his random but really profound observations, his duels with Mahor and Goje, randomly laughing at stuff that doesn''t crack anyone up, but eventually people start laughing looking at Deokule, the "I am happy, I am relaxed" video ', 'I have  very scattered memories of Deokule \r\nDeokule''s brother -Although this is ages back, Deokule is shit scared of his brother. Deokule somehow got terrified when I threatened to send his brother a friend request. Sorry, Deochuli, had to add this one :P\r\nI remember HAM club discussions with Deokule. Deokule was very enthu to revive the HAM club and had done a lot of groundwork, but somehow that didn''t work out. \r\n', 'Deochuli, your strong sense of observation and a knack for thinking  far ahead has awed me a number of times. Stay happy and stay in touch :) ', 'Chappri Deochuli :P  ', '"Ha prof. kay bawlat ahe arre, hyane kahich shikavla nahi mahiti aahe ka, kahich shikavla nahi" , "Aye arre", "Aye Deshmoookh"  ', 'Brilliant,Whimsical,Wise,Vaadhiv manushya,Chappri'),
('Dave', '', 'His killing calmness ', '', 'Thanks for being an awsm Design core, learnt a lot from u.', '', '', 'workaholic'),
('Dave', '', 'Being the most ideal bridegroom.. the mama''s boy, the guy with maximum matches on shaadi.com! (and none on tinder? ) :P', 'Discussing our frustration together about design coords not doing proper work, deadlines crossing, WEBSITEE pains! \r\nSometimes i would tell molu akshat elec muggta hai bahut toh kaam delay ho jata hai :P sorry about that. ', 'Scenery ko chhod aur logo ki pics le DSLR se... tabhi ladkiyan pass aayegi :P ', '', '', 'muggu, whythefuckthesewordsarebecominggreencolouredtabs,hifundaelecwingRG'),
('Dave', 'Kaustubh', 'His innocence and calm personality.', 'I wish I had known him longer to be able to contribute to this section!\r\n\r\nWhen I was a QMS coord, Dave was our go-to guy for any design related work. Whenever we asked him for anything, he did the work himself, not delegating it to his coords, but himself. I really admired him for his work ethic and honesty', 'Someone of your talents and caliber, you''ll do well in whatever endeavour you decide to take up.', '', '', 'Honest,Innocent,Hard worker,Calm'),
('Chavan', 'can you take a guess?', 'I remember him as a pioneer in his work in IITMSAT', 'He is very shy...I mean very!', 'All the best chavan , you will do great in life, I know you are dedicated and hardworking!', 'All good will!', 'Aree..', 'Illegible speech!,Too shy , very positive,helpful '),
('Aroon', 'Lulz. If it isn''t obvious already, Padma', 'The lingering smell of his unwillingness to shower', 'Aroon is a most underwhelming Prince Charming. If you are ever ''forced to date'' him in an effort to develop on-stage Chemistry, some room freshener might be an essential part of your clinique. ''You know the best part of not having a girlfriend is that you don''t have to shower?''', 'You were SUCH an important part of my very first Drams experience in Insti. And I''m so glad you were. I cannot think of a single other person I would have rather seen in that role - I wish we had engaged a lot more over the subsequent years. Also. Alak was SCARY AS FUCK in my Lit-Sec year. I will never trade in the Sharav win, but I could not have grudged you if you had won. Splendid job - adit breaking freshie noses, notwithstanding. ', '', '(Human Rights and Justice Class - Aroon''s 8th Sem)\r\n*Aroon and Adit wrestle a pen while Prof. Sonika is attempting to teach*\r\nS: *exasperated* WHAT are you doing?\r\nAroon: His hand is sweaty...\r\nS: What?!\r\nAroon: Ma''am... He has my pen..\r\nS: What? o.O\r\nAroon: Adit has my pen, Ma''am. His hands are sweaty. So I was trying to take it away from him.\r\nS: *disgusted* How old would you say you are?\r\nAroon: Uh... Mentally 10 ma''am?', 'Committed, Cheeky, Bold, Smart'),
('Amandeep', 'Pancha', 'Our internship.', 'Your eternal hitting on Deep*** during internship :P\r\nMP3 name for Vishwa... :D\r\ncoorg Trip,...\r\n\r\n', 'All the best for your future', '', 'What the f*** da', 'sincere, hard working,Friendly'),
('Adarsh', '~', 'His work ethic and the ability to do work with a big smile always. \r\nAdarsh is also a great listener and makes people feel better when upset. ', 'Memories!\r\n-- ML contest was a lot of fun although we didn''t get too far. I remember how we optimistically ordered pizza only to get the same score on the leaderboard again.\r\n-- NLP project was also great fun :D We had a random idea and hardly did any work, but generated great jokes in the process. Too bad Sutanu didn''t appreciate them. \r\n-- I remember he and Kushal came to the temple when I sang - that was really sweet of him.\r\n-- It''s always been great fun teasing him especially with Mitali and hearing his stories about USC, girls etc. :D \r\n-- Sometimes he tries to sound really badass, but it''s actually very funny. I remember how he excitedly pinged after drinking in the US!', 'You''ve been a great friend and I''ve cribbed to you several times. Thanks for being patient and not getting mad at me. The amount of enthusiasm you have towards your work is amazing and keep that up! I am sure you''d do great things :)', '~', 'I find it funny when he cribs often about being single. :P', 'Happy,Positive,Ever-smiling,Hardworking,Helpful,Understanding'),
('Dave', 'Kaashyap', 'My first friend and roommate during exchange. He was the nexus to all the other friends I made later during my exchange. ', 'He was a part of all my crazy exchange memories. I initially thought he was an introvert. It took him a while for him to shed off that skin. But later on, there wasn''t even a day he didn''t trip on me. He''s a great cook. ', 'We haven''t met even once after coming. I hope we get to catch up atleast once before we pass out :P ', 'Any your mom joke that you can think of', 'Anything and everything I relate you with are sweets man. Make your life spicy tOO! ', 'Sweets, Photography,Loves Travelling,And more Sweets'),
('Bhavik', 'Bhai :P (Rinkesh)', 'Deadly combination of hardwork and intelligence. At first i thought he is just intelligent but later got to know the amount of ground work/fight that this soul puts into. Respect buddy. \r\n Inspite of all this, he never boasts about it and that is what i admires the most about him. He speaks what he is and never holds back anything.  Honest person with an aggressive touch.', 'Ohh yes. This is a great love story about bhavik and a girl (lets call her sundari, ficticious name).  This is when we used to be in our 1st year (2012). Sundari is from civil department (Cant mention any more info here, strictly confidential). One fine day sundari was walking towards the sports complex and she saw bhavik jogging in sleeveless T-shirt. Looking at his muscular body and height  (seriously), she was in aww.  This was a beginning.  Sundari used to admire bhavik a lot (same AM class).  Sundari''s feeeling was so intense that she even craved bhavik''s name on one of the benches in BSB. OMG !!! And this is true (verified). ......The sad part of the story. Bhavik never got to know about it and sundari found somebody else.  I so wish sundari and bhavik could for once share their feeling to each other. .....Adhari kahani.\r\n\r\nTO BE CONTINUED...', ' Having people like you around has made me what i am today.  I am sure you are going to be a succeful consultant (2 years max rahega tu BCG mein :P) and will have a great career later. \r\n\r\nKeep up the attitude you have towards whatever you take up. I really like the passion you have for things you do and in some or the other way i have tried to implement the same too. I have learnt a lot from you man and i am sure there is lot more to learn. Thank you for everyhting. I am sure we will stay in touch.  Bhulna na sawal hi nahi hai :P', 'Not really.  ', 'One of his fav is "Kuch bhiiii" ', 'smart,Passionate,sporty, down to earth,approachable'),
('Chavan', 'Goje', 'His unique accent. His Hindi is epic!! Among the Sstrongest Marathi accents I''ve seen on insti, while speaking Hindi and English alike.', 'Chavan got a synthesizer in his first year. I got a piano. We shared fundaes. We got busy with Sat and Inter IIT respectively. Life. But we do agree that we  will put fight when we app.', 'Thad outgoing ban . Chill maar!!', '', '', ''),
('Bhavik', 'Asmita ', 'His ability to juggle literally everything and be an all-round stud.', 'Ahem.. I think he''ll kill me if I share certain secrets on a public RG form :P.  But our memories definitely revolve around food court yapping sessions, and then long random gtalk conversations that would never end because we both sucked at the OK BYE NOW part. And then moving from being some random junior to a trusted friend who I knew I could always ping if I needed advice/cheering up/general fart-putting.  \r\n\r\nOh, and one of MY best memories in insti involve Bhavik, although I don''t know how much he remembers this. I was having a really crappy day and I ran into him and Prerna outside Tunga and generally whined a little bit. Two hours later Prerna knocks on my door with an extra chocolate milkshake they bought from their date for me for no reason other than that I''d told them I was having a bad day. It completely turned my day (and week!) around and I was ridiculously touched. And since then I''ve always been on the lookout to do random acts of kindness because I know first-hand just how amazing even small gestures can feel. So for that, Bhavik (and Prerna), thank you <3. ', 'I literally have no brain to mouth filter so there''s nothing much I haven''t told him really, right down to having a tiny crush on him back in my 3rd year :P. (There, I managed to trip on myself in someone else''s RG. Well done, Asmita.) So, nope. \r\nOh and thank you for introducing me to Workflowy, it totally changed my life. Figures that your biggest contribution to my life would be some muggu related thing :P. ', 'LETS GO ON THAT FUCKING PARANTHA EXPRESS DINNER THAT WE''VE BEEN PUTTING OFF SINCE YOUR SECOND YEAR MOTHERFUCKER. ', 'Jeez, we really haven''t hung out enough in person for me to know this about you, which is kinda sad. ', 'muggu'),
('Bhavik', 'Neil', 'All his quests in Insti! CG, Sports, Lit, Shaastra and everything else :P', '2nd semester! He is from the same factory as I am, but I had never met him before in insti! And whenever I used to roam with my factory mates and Bhavik used to come in our path we used to make sure that our factory bags are directly in his sight. But he never acknowledged it :(', 'Keep rocking! Your presence will be missed! (That photo in the rg form! Looks as if you have just shagged! :P)', 'das sind keine', 'dei', 'Superstud,Cool headed '),
('Aroon', 'Once upon a time I was a Supreme Overlord, but now I am sadly diminished.', 'His enthusiasm and (by and large) maturity as a second year correspondent that I worked with. Also, his unceasing attempts to annoy me with poorly crafted jokes (although some of them were quite funny).  Aroon is an incredibly nice, idealistic person (if sometimes too vociferous, I recall a funny episode about Namboodiri Brahmins) who makes a difference wherever he goes. He can be really angsty sometimes, but hopefully he''s outgrown that now. He''s also very kind and down-to-earth, while still remarkably knowledgeable about a lot of things. This sounds too much like a report card, sorry.', 'He used to be a vehement opponent of insti politics, and then went and became head honcho. We have debated for hours over whether insti politics is terrible or not (with me insisting that it was not so bad).\r\n\r\nHe cribbed about how no girl would go out with him, only to tell me a few minutes later he''d actually had three girlfriends even before joining insti.\r\n\r\nHe used to get highly offended if we even thought of deleting an odd word or phrase from his (2500-word-long!!) articles.', 'You were one of my favourite correspondents, and it was a pleasure to work with and befriend you. I am sure you can do really well at whatever you choose to do, and don''t stress too much if you don''t know what that is right now. :) Stay in touch, and I am sure you will be missed in insti -- I missed you guys a lot after I graduated myself. ', '', '', 'Persistent, intelligent, funny,Idealistic,Sincere,Kejrimon!'),
('Akash', '', 'ramkali', '', '', '', 'i miss my home. marunga main marunga main marunga main(ends up doing nothing)', 'chutki wale babu meri chutki baja do chutki wale babu meri chutki baja do chutki baja do chuti baja do chutki wale meri chutki to baja de'),
('Shukla', 'AandAs', 'tushy.com , pornopedia ', 'Caught by deokule while masturbating ', 'Go get a girlfriend;  ', 'Bhak saale', 'Bhak saale; abe chutiya mat bana be.', ''),
('Dave', '', 'SHAASTRA', '', '', '', '', 'cool'),
('Chavan', '', 'Backstreet boys', '', '', '', 'Umm Hmmm OK Soooo ................... ??? .................. !!!! ............... OK fine ................. !?!?', 'hard working'),
('Amal', 'Your regular punch bag / food provider.', '1) His innate "Amalness" . The ability to entertain any group, anytime, by his half-witted comments and actions.\r\n2) His unconditional love for bathing. He bathes thrice a day, even in the coldest of winters.\r\n3) Anime. He even keeps deadlines for his animes/manga/chinese novels\r\n4) His ability to sleep anywhere, anytime ( refer the image above !)\r\n5) His strong love for Nagi!\r\n', 'Loads. He needs an RG book all for himself. Some of the top incidents :\r\n1) He thought the quickest way to Jamuna ground floor was to, well, jump. He jumped from first floor and broke his leg! When asked about it, he replied " I estimated the distance wrong! "\r\n2) He strongly believed that the batura provided in mess, was in fact a traditional dish of the Japanese tribals namely ''itsu itsu asi asi''\r\n3) Once he searched for Wall street in Madurai. Only to learn that he had read the location wrong - "Veli Street"\r\n4) Another incidence was the whole Private Sonders - Sunderasan incident - Aroon\r\n5) He heavily contributes to the English language by creating new words and pronunciations : \r\n     Welvish : The language spoken in Wales\r\n    Martial Rape : Marital Rape in Amal words\r\n6) Amal loves to play violin. He plays it so awesome that he make it sound like flute. ( This was commented by the teacher herself)\r\n7) If there is free food, there is Amal. Once he took snacks on the way to mess to keep his mouth engaged. There is even an algorithm to model his eating:\r\nwhile(food)\r\n            eat;\r\n8) Word of advice: Never drink with him. He becomes the ultimate motherfucker when he drinks\r\n\r\n', 'These four years would have been much less fun without you. Thank you for making our lives much better.', 'Thayoli', '1) " I need to travel the world. But I have to watch Anime "\r\n2) " I need to start a startup. But I have to watch Anime "\r\n3) "I need good grades. But I have to watch Anime "\r\n4) " I don''t need lunch. I just need Anime"', 'Amal , Amalsi ,Amalog');
INSERT INTO `entry2016` (`name`, `friend`, `ans1`, `ans2`, `ans3`, `ans4`, `ans5`, `words`) VALUES
('Aroon', 'It doesn''t matter who we are. What matters is our plan!', '1) His obsession with other people sucking dicks\r\n2) His borrow money, never return policy\r\n3) His belief that all girls who take note of him are madly in love with him\r\n4) His oratory skills\r\n5) His jedi magic : He somehow convinces other people to bend to his will. Always. \r\n6) I would like to write about his ego. But I am afraid he will hide himself in the library crying!', '1) When he got drunk ( he got drunk real quick) he became obsessed with teeth and started examining the teeth of everyone  in the room\r\n2) The first time he tried weed, he smoked enough weed to knock out an ox and became highly paranoid. He believed he was going to die and nearly went to the hospital\r\n3) He usually messes up with the glass of water where he stores his retainer for teeth. Once he drank this water confusing it for pepsi. Another time he thought the mess guy took away his retainer and created a mess in the mess! \r\n4) Even though he constantly makes fun of people, he has a really sensitive inside that cannot take it. Once he shut himself in the library, just because all of us made fun of his ego\r\n', 'Get into London School of Economics and become the future Governor of the RBI! ', 'à´¬àµà´¦àµà´§à´¿à´¯àµà´‚ à´‡à´²àµà´²àµà´¯ à´¬àµ‹à´§àµ‹à´‚ à´‡à´²àµà´²àµà´¯ à´šàµà´®àµà´®à´¾ à´¡à´¿à´•àµà´•àµà´‚ suck à´šàµ†à´¯àµà´¤àµ à´¨à´Ÿà´•àµà´•àµà´‚', '"You are dumb and stupid and exist onlyto suck dicks!! " ( Budhdhiyum illya Bodhom illya, chumma dickum suck cheythu nadakkum)\r\n"Exactly!"\r\n\r\n', 'Sensitive , Pessimistic ,Egoistic?,gult-hater,Master Orator'),
('Akshay', '', 'his easy go and fun loving attitude. One of the nicest guys you will meet in life. Loves playing sports especially football. ', 'Not many ppl know this but he has a girlfriend from school days :P  The girl said he looks cute and they hit it off from there. \r\n', 'All the best to your career man. Have lots of fun', '', '', 'Sincere, Funny  ,chilledout '),
('Aroon', 'Shyam Sundar Sridhar', 'Being one of the best SAC Speakers that Insti has seen.', 'Just the fun times and the tense times that we faced in SAC. ', 'Why are you in engineering dude? You should have been in HS. Anyway, hopefully, we both will end up working together as politicians later on ;)', 'None', 'I know that you have some standard phrases that you use - I can see them in my mind''s eye! I''m just not able to recollect the exact words though...', 'Calm, Level-headed,Erudite'),
('Dave', 'Judo', 'For me, it''s his photography, I guess.', 'How we had to coax him into getting into a few pics at least on the Kerala trip.\r\n\r\nThe game of Atlas. Y and E ftw!\r\n\r\nAlso, the Hindu ads, and the pain we both had to go through for that.', '', '', '"Smile!"', 'photographer, decent'),
('Chavan', 'Danne', 'Fleming''s Right Hand and Left Hand Rule, IITMSAT  ', 'Chavan having non-veg for the first time, then the second time being infinitely selective like some fucking chicken connoisseur. New year at Jam Tank, Chavan''s obsession about Breaking Bad, finding a best friend in a certain intern of IITMSAT, who later performed a song about their friendship *tears up*  ', 'I haven''t told you before (since, I was busy tripping on you), but I admire your persistence and commitment. Get out of your comfort zone more often and lastly Sorry for teasing you so much :P ', '', '"Chewsday" ', 'Persistent,Silent'),
('Dave', 'Danne', 'Helium Radio :P, First touchscreen laptop I had ever seen ', '', 'It was a great experience working with you in IITMSAT. Keep putting fight as you do always. All the best ! ', '', '', 'Diligent, Creative, Humble'),
('Akash', 'Danne', 'High expectations from future wife, guy who gets insane amounts of marriage proposals', 'Singing songs one after the other, non-stop for some one hour after getting drunk. I have never seen anyone with such stud recollection of songs and neither such a reaction from someone after getting drunk :P    ', 'Trek was epic because of your company. Hope to go for more in the future. ', '', '', 'Easy to talk to,Friendly'),
('Shukla', 'Danne', 'Shuddh Hindi, loud and clear voice :P (try for cricket commentator or journalist if engineering starts sucking (err, if it hasn''t already))', '', 'Don''t let the liveliness go away :)', '', '"Abe Deshmooookh" ', 'Hardworking,Maggu,Lively'),
('Adit', 'Badney', 'Randommax antics, lame jokes, Analog Stud :P', '', 'Chutiyaap kaatna band mat kar kabhi :) ', '', '', 'Crazy,Smart'),
('Dave', '', 'His sincerity, work-a-holic, and gentlemanly nature.\r\nAt the first glance, seems like a typical nerd, but the more you get to know him, the more you like his quirky take on life... #Philosophy ', '', 'Keep up the infi infectious enthu that you have in everything, it will take you a long way in life...  ', '', 'Toh fir Peace naa!', 'Dedicated, Indori,Sincere,Geek'),
('Ajil', 'Shenoi', 'Those large tits of his. And his kind nature and willingness to help. But mostly the tits. Everybody loves the tits.', 'His birthday one year ago. Took down a bottle of the cheapest gin/vodka. Good times. That and the victoria''s secret sessions we have every year.\r\nAlso, he spooned with Raju. ', 'You were the first person I spoke to about this place before I got here. There''s so much I owe to you, for all the times you''ve helped me out. Except for introducing me to Adit, I''ll never forgive you for that. I hope we stay in touch.', 'Tits!', '"I don''t just watch porn. I''m a connoisseur."', 'Tits,Porn,Hersheys'),
('Sant', 'Shubham from Govt of India :P', 'The brightest of them bulbs - Banta! XD I think April Fool''s Day should be shifted to Jan 7 because this boy embodies the true spirit of that day. The number of times Bhavik and I or anyone for that matter, would have pulled his leg and he would not have known for a long long time can just not be counted on fingers. Though he genuinely believes that he has always been able to catch the pranks that we''ve played on him, and that he always knew that he was just being fooled. Yes Banta, we do believe you. :P \r\n\r\nThough I have always believed its because of his innocence, which is something that is a very good virtue to have. He feels and strongly believes that the entire world is made of sant-like people , who do things because they truly - genuinely like or believe in them, and not because it will help them achieve something specific in life.', 'Oh loads of them. \r\n\r\nThe night when Banta had decided that he will get 40 votes from the Elec dept. for Bhavik who was standing for Co Cas for 2015-16. For the first half an hour we convinced him that Bhavik was actually standing since we did not want a certain other batchmate of theirs to become Co Cas. The next one hour was telling him that how we needed contribution from every segment, as there was a chance that Bhavik might get rejected as he had no CFI experience. Trust me, Banta believed all of this, and we have been laughing about this joke for more than a year, and it just doesn''t grow old! :''D\r\n\r\nThe time when Bhavik, Banta and I used to sit in the library and study for exams. That''s when Bhavik told me that Banta felt for the longest time that he was the only person I used to chat with on gtalk. And then one fine day he realised that Bhavik has received a ping at about the same time as he had - and he was left all heart broken.  We do love you Banta! \r\n\r\nEven though there are a lot of times when we trip on him, those outings without Banta wouldn''t have been as much as fun. Those 5th sem (his 3rd sem) lib visits where I not only had awesome company but a good break from those boring Mech courses, and all those Spons outings, and the awesome source of entertainment when I was stuck in Jamshedpur all alone, that our dear friend provided over tech enabled sources of communication. :D', 'BANTA! :D You''re truly one of the most awesome, and trippy person I have met in a long time. All those random conversations that I have had with you regarding why do we do things in insti without exploring everything, and also about why you eating non-vegetarian hurts the chickens so much (you should consider turning vegetarian)! :P In all honesty, you should continue to view the world the way you do. :) \r\n\r\nI hope to see you creating some fancy research findings and revolutionising the engineering sector in India! :D  Good luck for your next year, which I hope is will be just as eventful and fun (good luck with that coz you''re DUAL! :P) as the rest of your insti life has been. :) \r\n\r\nHope to see you go out of insti more often than you have till now. :) ', '', '"Eh, kya karti tu", "Eh eh eh. Mere ko pata tha haan", "Macinsey International", " Wassup Homie" ', 'Innocent, Fun-loving,BULB,Entertainment-Entertainment-Entertainment'),
('Dave', 'Shubham Jain', 'His awesome photography! :D I really really have loved his photography and design skills. He is more or less like a silent killer in my opinion. He is incredibly smart, and talented, and will silently keep going about his work without any extraordinary drama or anything, but will create great results. :) \r\n\r\nHe was by far one of the best Co-Cores to work with in a Core team, and have always enjoyed working with him.', 'Very distinctly remember this one set of conversations I had with him regarding him going to Sweden and how tough it is to manage being a vegetarian in a foreign country. And the conversation veered of to us discussing about the pressure of drinking alcohol. It was the one time where I had a very long conversation with him where I could see that he was very comfortable with the way he was, and didn''t really want to change himself just because that might be useful in the future (as per popular belief). ', 'Akshat! Please keep yourself updated with all things photography because mere ko waise bhi bahut doubts rahenge. :P I think your attitude towards life and work should always remain the same, and you should continue to stay and do things the way you like! :) \r\n\r\nBaaki toh main jab next time tujhe milunga toh pakka will go on a photo walk, and more importantly ek achi pic toh banti hi hain - taaki I can finally get a new DP. :P \r\n\r\nAise hi haste rehna, wine sunghte rehna aur mast desserts khaate rehna! :D', '', '', 'Silent killer,Amazing photographer '),
('Akash', 'Resha Gandhi ', 'Fear of his family getting him hitched without asking him! ', 'He think he will get more than 1 lakh offers for marriage before he is 28! ', 'Good luck! As you will have to face 1lakh women! Its not easy bro! ', 'Nah', 'He keeps on singing break up songs! ', 'witty,asweethuman'),
('Aroon', 'Aishwarya Pillai', 'He''s the sort who seems very sorted, very balanced, in life. But really, he just hides his insanity better than the rest of us.', 'Getting up at 5 every day for 3 weekends straight so that we could go shoot an sfm on a train, riding it back and forth endlessly.', 'I had great fun working with you, and that I hope we do it again some time with all the rest of them- Adit, Roshan, Magdum et al.', '', '''Eda Roshan eda!''', 'Entertaining as fuck.'),
('Akash', 'Harshit ', 'Ob Magguness ke liye.', 'Itne assignments copy kar liye hai iske ki I have lost the count.\r\nBhopal mein 3-4 bandiyaan pata rakhi hai isne, although his parents have already fixed his marriage (at least I have heard so)\r\nInsti mein aane ke baad bhi I remember sabse pehle mila tha. \r\nHe is probably the only guy in insti jo insti mein sutta nahi marta par ghar jaa kar maarta hai. _/\\_', 'Remember that idea. Actually kuch karte hai uska. Ekdum feel aa raha hai uska..:p', '', '"rg mat maare be"\r\n"BHEL sahi hai job karne ke liye" (more frequently these days)\r\n"tera kamina-par/harami-pan duniya ke saamne lana hai"', 'harami, kamina, maggu,stalker'),
('Shukla', 'Harshit ', 'Cricket and acads :p', 'Discussing cricket with him. He gets really senti with the loss of India. \r\n I have seen him teaching others more than often.  Finishes all the assignments on time.  A "True Alak Elec Maggu".', 'Shanti pavan ke under DDP kar le. !!', '', '"Raina ko team se bahar nikal do"\r\n"Saala bowling karna nahi aata"', 'UP ke bhaiya ?'),
('Shukla', 'Gone', 'Abe Gojeee. Kya be? Kya chal raha hai?? With that typical Hindi accent. :)', 'Saarang waaala chutyapa. Made the first and second year Saarangs very interesting and exciting. \r\n\r\nReally nice guy at heart. Extremely helpful. Never have I seen someone saying bad things about him, and that''s a commendable thing in this judgmental land. \r\n\r\nHis dislike for EE is quite famous among those who know him well. Despite that, ( I share similar feelings in a parallel universe) I think that he has handled things pretty well. :)', 'Deshmukh''s already taken by Adit. Please start hitting on someone else. Try Bhaiyyaji.\r\n\r\nChill maarte raho.', '', '', 'shudh Hindi, fart maarna,good at heart '),
('Aroon', 'Dent', 'his body hair. jk. Infi good times at Silver Oak 201', 'There are so many. But guess what tops the lot. That Death trip from Nainital to Gurgaon. It was a breath-taking adventure with a half-drunk, drowsy driver driving a car with a broken axle and ungreased brakes. After a series of almost-collisions with trucks, Sanket''s attempts to keep the driver up, Saketh''s navigation skills and Vignesh''s Tam curses, guess who brought us all back safely? That''s right, Aroon drove us all back. But asshole was sleeping peacefully till then. He was the driver we deserved, but not the one we needed.. ok I''ll stop\r\nOne of my favorites: We used to wake up in the morning, draw the curtains of the window and start ''bird-watching''. Sorry for being so crude, but beautiful birds, I must say.\r\nAs for the secret: Aroon is secretly in love with his wing. I think their weirdness turns him on.\r\n', 'Remember the many times we bonded because we were both weird? Like the first time we met in 201, you warned me of how untidy you are and I reciprocated. I had an awesome time rooming with you man. Best two months ever!', 'Harami sala, gen TGIP jaane ke liye Gurgaon se Noida bulaya. Chutiya.', 'Please send her away to 43!', 'cheap,asthma wala laugh,beautiful mind,body hair,PJ bhagwan'),
('Shukla', 'Vinay byri', 'His calmness in the hockey field for me! No matter what he just doesn''t lose his cool which makes him one of the players I respect !', 'If that silver medal will be remembered,so  would be shukla! Every member( a total of just 13) who put so much effort (without proper equipment and not even a team of 16) will be remembered', 'All the best for your future mama1 I really hoped you would play this year as well under me.Anyways you will be missed! But I know your wishes will be with the team..We will win it this time :)', '', 'The way shukla and bhaiyyaji supported each other would be remembered forever by the team :)', 'The cool fellow!'),
('Dave', 'Harshit', 'All-rounder. \r\nThis guy has done almost everything in insti and still is a 9 pointer in elec. Hands Down. ', 'I actually can''t recall any shady stuff with you. You have always been the sober guy with no dark past. :p\r\nBut it has been a rare coincidence I think that we had all the HS electives same.', 'Let''s do something shady now in remaining time in insti. :p', 'I am not as creative as him while making some swear words. I didn''t know he can actually do this.\r\nI would try for something which I have learned recently from him , "chipkali ke pasine ke tel mein tale hue ..... "   :p', '', 'maggu, photographer, core'),
('Aroon', 'Green again', 'His desperation for a girlfriend . Once he saw the pic of an old classmate of mine. He became obsessed with her and made me ask her out for him. He even considered going all the way to Kochi to meet her.Needless to say, he made fool of both of us!', ' Once he saw the pic of an old classmate of mine. He became obsessed with her and made me ask her out for him. He even considered going all the way to Kochi to meet her.Needless to say, he made fool of both of us!', '', '', '', ''),
('Sant', 'Rohan', 'His innocence, is aptly called Cow(gaay...in marathi) bcoz of his face as well innocence :p\r\nAlso for his infinite bulbs for which he is fondly called "Banta"', 'The only time I have seen Banta get angry was in first year....when he threw Dahi at a certain individual for making too much fun of him!!!\r\nBanta is very poor in General knowledge...ex: He still doesnt know the connection between Rahul GAndhi,Sonia GAndhi,Indira Gandhi and (the non-existing one) Gandhiji!!!\r\nHe has lived his whole life in Pune and still sucks very badly in Marathi....even Adit(Gujju guy) can speak better Marathi than him\r\nHis special bond with Goje!!!', 'I am sorry for all those times I have offended you.....well yeh thoda jyada ho gaya...doesnt suit me...was just trying to be nice :p\r\nHad great 4 years....mess main bakchodi katna, chai time buddies, kerala trip(sry for missing the Goa one)...Keep in touch dude', '', '', 'Friendly,Always Cheerful,Innocent'),
('Akash', 'papaanand', 'chutiyaape and lugaipanti', 'he or may be she is very fond of vegetables and their sellers ...sale kaddu baichare sabjivale,lugai', 'ye baaicharo vale lacchan chod de ..aur mooli mt khaya kr or khaye to border pr ja tere jese nuclear bomb ki bahut jarurat hai..', 'phn pr de lunga no .hai ma behn karne  k liye ', 'sale ,ch****ye', ''),
('Akash', 'I think he will understand', 'Behind his huge personality he is actually a softie :D', 'I think I could play all my favourite music on the road trips we went for only giving an excuse that you were the only non-gult guy in the car :D\r\n', '', 'Hahahaa....never\r\n', '', 'Awesome taste in music, carefree'),
('Akshay', '', 'because he is anudeep husband :P', '..', '', '', '', 'Anudeep '),
('Aroon', 'Liza the Long-Suffering', 'His incredible pomposity (please refer his earlier T5E articles for proof). For wrecking my credibility consistently in any social group we''ve been in together. For being thoroughly and consistently annoying.  For finding and circulating in abandon stupid YouTube videos. For making some of the worst puns and jokes known to mankind. ', 'Aroon once deviously sourced pictures of the wall of my room (on which there were several compromising posters and clippings because I was young and impressionable) and sent it to Poorna and Viswa, our T5E eds, and therefore people of great importance. I think they''ve never looked at me the same again. And once, when I was away at summer school, Aroon got my address in Bangalore, went to my house and just stood outside it. FOR NO REASON. Of course, these are mere nuggets in the grand Calvary of suffering and embarrassment he has been responsible for.', 'Stop embracing your inner teenager. ', 'N/A anymore. He''s transcended this stage', 'Stock response when asked to do something redeeming-- "I''m in the middle of something very important. Very very important. Integral to world peace. If you really must know, it involves scrutinizing stuff like the following (some unbelievable RIDICULOUS video) to help keep humanity safe "', 'mansplainer, mansplainer'),
('Dave', 'Nah. Hopefully he still remembers my name. :P', 'His split personality. :P \r\nOne side of him in insti, and one when out of the country. :P', 'This super-awesome friend decides to try drinking, along with another not-as-awesome-but-still-cool friend, and Dave(sober, of course)  starts staring intently, waiting to hear all the secrets and stupidities that was coming out our mouths. :P Sadly, he was disappointed and decides to label us as "boring people"rather than congratulating us on being in control even with all the drinks that went in. :P', 'Chill, dude! \r\nSay bye, bye to that split personality of yours!', '', 'Oops. I really can''t remember.', 'Shy, Maggu,Too serious'),
('Bhavik', 'Kartik', 'World record of number of words uttered inside IIT\r\nHis parade walk, combined with his body looks like Chota Rambo is going for a war (War on Books)', 'Bovik weed was used in abundant in your flat :''D\r\nWhen you sat in DB canteen with a glass of water waiting to let the alcohol drain out and meanwhile a guy was hitting on your mentor\r\nThe bitching we did after every day''s work \r\nOf course the spons time, fun and hectic\r\nDon''t know if he noticed it himself, when excited he starts jumping on his feet of-course while keeping his mouth running', 'Sahi banda hain bey tu. Learnt a lot from you.  ', 'So hard to catch you alone nowadays fucker.\r\nChennai office main growth hain. (Ohh Really...? :P)', 'Kitna bolta hain, no one can keep track. ', 'Humanoid,Pleasant,Kiddwonly'),
('Shukla', 'Ashish', 'Coz he is in my department.', 'A good talk during Internship season. He was telling about his dream to become a professor. Very rare to find people like him. Practical does not give shit about grades but more importance to concepts and logic. ', 'Work hard and just continue this way. You will definitely become prof in big university like MIT , Stan.  ', 'This guy is tough to convince. Tried it for tada trip. You can also change the pic in this webpage. Does not suit for a prof', 'I hate coding.  ', 'Good,Empathizes with others,Always busy'),
('Dave', 'Capital ''N''', 'His ability to be there for you when needed the most', 'Always ended up at the same place as one another, and our private hand shake', 'Thanks for being my oldest friend', 'N hi rahega tu', '', 'N, BBF'),
('Deokule', 'pathrudkar', 'His laughing on my nonveg jokes, his fart jokes, his insane system of rating chicks', 'He''s a sexist freak, porn lover and seriously in need for some THC.', 'Touch madhe raha, badlu naka.. Ani porinshi bolayla shik', 'Lavde ka baal, gaand ka jana, zhaat ka dhalla devkule apna madarbulla', 'Are ti porgi bagh kasali gachh bharleli ahe', 'Tharaki, Master of his own porn,peace guy'),
('Dave', 'Guntha', 'dat sexy ass. no, really.\r\nOne of the most humble people I''ve met. And also chill.', 'We have fun incriminating Gupta together along with the other Alak elec junta.\r\nAmong other stuff, I''ve tried convincing him to put for BC. Guy ran off to another country', 'Next year, when we''re actually leaving :P', 'Isko gaali kaise doon? Sabse nek insaan hai ye', 'Arey Guntha, assignment kar liya? Maine bhi nahi hahaha *already did assignment and made 30 reports also*', 'seedha,elec maggu'),
('Akash', '', 'The weird  questions he asks and that too he forces to  answer it. ', '', 'stop calling Aunty ', '', 'Aunty ji', 'Friendly,intelligent  ,sometimes annoying ,Jolly'),
('Adarsh', 'I''m sure he''ll know :)', 'His insane ability to thulp everything and still hang out with us mortal humans! jk, he''s really sweet and I think he''ll be most remembered for his extremely warm nature :)', '- That day when we went to Pondy for Avanti, and while playing Antakshari in the bus, we actually just searched for songs on our phones :P \r\n- When you trained an LSTM on our chats, and we found quite a few amusing results :P\r\n- The time we discussed at length about the chat bot which would put flirt suggestions :P (what do you think of this after NLP? XD)\r\n- When (almost :P) every year, before a certain day arrived, you would ping me and ask me to set you up, and one year I actually did! *puts-on-shades* I don''t know about your little dinner (and all the consequences :P) but I sure had a hell lot of fun being the broker! \r\n- NLP. Enough said :P\r\n- The trek of course! Lots of memories there - the bus, the camps, the slippery path, phayar phayar camp phayar, the Sankri hotel, the descent in my stupid shoes (read the god-knows-when-it''ll-be-done article  for more :P)\r\n- The beach cum dinner cum movie :D \r\n- All the random discussions, which started somewhere and ended somewhere else. ', 'Check your inbox.', 'Swear words? What''s that? :P', '- "Have you heard about xyz?" And then puts fundaes about xyz\r\n- "Put treat"\r\n- A lot of tam phrases (Semma machi, romba mass bla bla). Thanks for enriching my limited tam vocabulary :P', 'Thala,Too nice,Always smiling,Get a girlfriend already'),
('Akash', 'No', 'Trekking', '', 'Grow up', '', 'He will get 1 lakh proposals ', 'Baccha of trek group'),
('Ajil', 'Manu', 'Being the nicest senior we met.  He''s smart, kind and wow, is he a beast in the gym! \r\nHe''s always willing to help out. I''ll always remember how much I pestered him with weird questions during my intern applications.', 'Haha, all the times he got nipple-pinched by Vedant? Or that time he got drunk on cheap vodka and hugged a wall? \r\nOr the time when he was pretty freaked out about the Chennai floods, he even scared me into leaving with him (A good decision in hindsight but boy was he psyched).', 'I wish you all the best, maybe we''ll meet in grad school too LOL. If we don''t thanks for all the fun, all the help and keep being the one of the nicest people I''ve ever met.', 'Haha never.', '', 'Ripped,Intelligent'),
('Aroon', 'Raghav', 'He made me stand for something I believed in, even though the odds were against me. He helped me out the best he could. He has a weird way of speaking, usually raises one or both his hands while speaking aloud.   \\0/\r\n                                                                                                                                                                                                                                            /\\', 'Although sometimes he acts like he doesn''t care, he actually does.  Tends to turn acne into a chronic disease.', 'Thanks for everything.', 'If my grades cup because i spent two weeks campaigning, I''m holding you responsible.', '"There is no greater fraud than a promise not kept"', 'Sexpeaker'),
('Shukla', '', 'his "calmness" and "submissive" nature .\r\nthe journey from undergraduate to phd .in just 5 years ,wanna be proff. who looks like one already\r\nthe journey from shalini dairy to diku(right now the force is strong here)\r\nhis unmatched cricket love (sorry dave u were close second)\r\nthe man who knows everyone but doesn''t want to be known', 'has mother of all porn collection, flexibility like mia (his fav.) .his security deposit will be not be returned for the amt. of broken windows.  the only time  guard felt the need to stop loud noises .\r\nhis endless rant about system ,bhaiyaji,cricket,porn...everything .', 'tinder pe na ho  paaeyga ,matrimonial try kar ', 'bhak sale ', 'smoke weed everyday ', 'pornopedia'),
('Bhavik', 'Chinmay ', 'the fact that he has thulped more or less everything he has laid hands on, his sense of humor and his "structured" approach to work.', 'My memories with him have been associated with basketball ( where we were the first ever B team to win a Sportsfest match), Spons ( where I got to learn a lot from this gentleman) and general interactions online and offline ( a lot of them involving Neha and Banta, like the time I asked Banta out for coffee :P)', 'I really admire you man. I moved from being intimidated by you, to discussing work with you, to going out on dinners and lunches, to laughing along with you on the jokes you cracked on me. This conveys how my relation with you has transformed over the years and in the process I have become closer friends with you. Be the way you are and I am sure you are going to make it big. :D', 'Lol, no. :P', '"Life is like a black box. You know what your inputs are and what output you want. It is the manner in which you design the contents of the black box, which will determine how closely you will achieve the output. "', 'Hardworking,Caring,Structured,Humorous'),
('Ajil', '', '', 'https://www.facebook.com/jalalbros/?fref=nf', '', '', 'Are those your cousins?\r\n', 'Run tatdadadadadad '),
('Aroon', 'Isha', '', 'I''ll write that down post Sandy''s, ifwhen that happens :P That one trip should furnish me with enough material, no, Aroone? :D', 'Arre let''s go to Sandy! This is just too overdue :D And at least a few more rounds of parathas and stuff, okay?', '', 'I feel like I am severely constrained by my lack of mellu knowledge for this one :P', 'Mellu AF (not),Fake stoner max you are!,Epic (because who else can handle so much SAC drama so efficiently)'),
('Chavan', 'I think you know already!', '" I am chow-chow from Pune"\r\n', 'He had a humongous crush on a certain girl from IITMSAT. He even developed the habit of mugging in library to stalk her.  But everything went in drain when he couldn''t break her up with her boyfriend. He had to sleep with 2 Mexican chicks in Venice to finally get over her!\r\n\r\nThe first time I met him was when he approached me to get one of my textbooks in first year. I asked his name and all he would say was " I am Aroon''s friend". Dude, wtf?', 'All the best for your future man. You will definitely find the girl of dreams someday. You made my life in insti fun and memorable. Thank you', 'Nothing. No feel in swearing online!', 'Just the way he talks. I think he is trying to Amal. His slang becomes unintelligible day by day', 'Chow-chow,Maggu,IITMSAT-Secons-in-Command'),
('Ajil', 'Akhil', 'All those bridges he played', '', 'All the best for your higher studies wherever you choose to go.', '', '"bridge" "cards""play""gym"', 'Mallumuscle'),
('Ajil', 'Paul', 'Being the biggest sweetest (refer Big Hero 6) research enthu freak.  I have never seen pecks so fine so efficiently being used to bridge. Yum ! \r\nAlso my favorite Bangalore travel buddy. He always gave that happy ending !', 'He is by far the biggest racist I have ever met in insti.  Ever joke of his has a racial aspect to it.  Also the creator of  the "If you see a floating fridge racist joke". ', 'A lion with a small penis should compensate with a mighty roar.', 'I''m going to miss you, son.', 'The Ajile Poem ( A dedication of the love from Paul to Ajile )\r\n_______________________\r\nFirst came shoulders, \r\nWith big boulders.\r\nThen came wifey,\r\nShe was so nice-y.\r\nThen came leg day,\r\nHe said no way.\r\nFinally came PhD\r\nBut he had that already.', 'BMP (Big Manly Pecks),Chicken Feet,Leg Day Whaaaat?,Adorably Kind'),
('Adit', 'Judo', 'His amazing ability to trip on anyone and everyone, anything and everything; his quick wit; his LitSoc talent, and finally, but most importantly, his commitment to the RSS cause', 'All those conversations in mess about furry friends and the ideal amount of hair for girls. Convincing Gowt about how we are committed to the RSS, and would want to convert everyone to our cause or eliminate them, of flop-show QMS, of the flaws of most races and communities.\r\n\r\nHis star turn in our Freshie Night Drams, as the eunuch who also contributed to foreigner Kaustubh''s misery.\r\n\r\nPlotting to bring down Sharav in LitSoc! Sorry I couldn''t help make that dream a reality.\r\n', 'Thanks for all the memories. It was great interacting with you, and was always incredibly fun. Keep the RSS flag flying high, and we''ll soon rid the world of QMS, communities that don''t meet our high standards, etc. \r\n\r\nBest of luck for the future. :)', '', '"Dude, I like fur on girls'' hands. It''s nice to stroke."\r\n\r\n"Ae, Bal Thackeray is our hero! RSS zindabad!"', 'fun,trippy,rss,scandalous'),
('Dave', 'Stockholm wale bhai ...guess who ? ', 'His Goodness', 'Stockholm day 1...we helped him carry his luggage from the station....he seemed the most decent person ever...he still is :p ', 'Good luck bro . Stockholm wale bhaiyo ko mat bhulna', 'No gaali galoch ', 'Peace hai bhai', 'Stud ,Bhai, Seeda saada baccha, Padaku'),
('Adit', 'No.', 'Flute. Blows. Well.', 'Flute. Blows. Very. Well.', 'You blow well', 'It''s alright. He blows.', 'I like blowing.', 'Blows. Yes. Well.'),
('Dave', 'Shreyans \\m/', 'Rajme ki sabji, computer vision mei help _/\\_', '', 'Stay the way u r, keep rocking!! ', 'Chutiya!! Just like that.. :p', 'Bohot pain hai yaar!!', 'Intelligent, good person'),
('Akshay', 'Chiraag', 'He will be remembered as a smart, helpful and funny person.  His chilled out attitude. His "don''t give me that bullshit" look!!', 'Unfortunately nothing big. There are plenty of memories though like playfully bantering, etc. Hopefully there are a few in the future.', 'You are one among the many good people I''ve befriended here. I hope we continue to be friends long after we graduate. I wish you all the very best for your future endeavours', 'Chutiye!\r\n', 'He doesn''t say out loud but through his actions he makes it evident that he advocates "live and let live" philosophy. I think that''s great!', 'Friendly, Kind,Smart,Funny,"BRO"'),
('Adit', 'You asked me to fill your RG, so you know who I am', 'His name what else. ', 'Did you know he decided to stand for Cul Sec in his first year itself because he considered himself to be born in the high gardens and believed he is the best person who can improve the scene of Lit in insti', 'Stop using tinder da, you need to be on Grindr', '', 'the song that he made for himself\r\n\r\n"Can you blow my flute, baby?\r\nFlute, baby, let me know\r\nGirl, I''m gonna show you how to do it\r\nAnd we start real slow\r\nYou just put your lips together\r\nAnd you come real close\r\nCan you blow my flute, baby?\r\nFlute, baby, here we go', 'Poser. He took up music to get chicks instead all he got is you know who'),
('Shukla', '', 'Short time Short temper', 'Stud at Karmalkar''s Devices', 'u r one of a kind! A good friend.  Bas khidki khol ke room pe jaya kar, nahi to garam ho jata hai tera room.', '', ' ', 'nice friend'),
('Amandeep', 'TANDE ... :) ', 'AMAN FUDDI - FUDDU - always scratching EVERYWHERE.. YES U GOT IT ;) and then same hand waving on hair :P', 'Yeah, of course, :D \r\nThis incident might be written by many of my wingmates but I was the only one who saw him :P  Here it is,  \r\nIt was time during summer vacation and the next semester was just about to start, 2nd or 3rd year. He was sharing a room with the other guy (Ayush Chandore). The window of the room was broken in a big square shape. Easily you can see from inside/outside.  It was around 3 am I guess, i was just passing by their room and what I see from the window is ayush is sleeping on the cot and this guy isRUBBING HIS DICK ON THE FLOOR watching a lesbian porn, thank god lights were off, in the process of tharakpan  :P ... So this is Aman fuddi''s way of Mohabbat Barsaana ;) :D ', 'Bad ones first  :P - Bhosdk mature hoja thoda, ye kaun bolta hai gali mat dey :P and  common sense udhar hi le le kisi se at least .. job lag gayi abh to... company me koi nhi jhelne vaala tujhe .. or kaisa punjabi hai tu .. na daaru na chicken.. shame :P  \r\nGood ones (very few i have fr u :P )-  smart hai (dikhne me, sachii :P ) - chutiye try kr leta kisi bandi pe, pat jaati araam se, atleast u didn''t had to rub ur dick on floor but nhi u r happy being a bitch of A3 wing :D :D ;  good nd pure from heart pr bohot infi chutiya hai ... \r\nStill we all LOVE U BITCH :* :* vo raate hamesha yaad rahega hume :D  ... glad to have you ... or bhul jaana bc banaglore jaake :( ya we know this \r\n\r\nSorry if i missed anything , live full (nd if possible long :D )', 'bohot hogaya bhaee rulayega kya fuddu ko :P ', 'PAGAL HAI KYA ? \r\nABEY GAALI MAT DEY ?\r\nRESPECT KAR ? ghanta :P ', 'AMAN FUDDI, FUDDU, RANDI,CHUTIYA'),
('Aroon', 'Saketh', 'Mafia nights; Sac speaker', 'So, it was sometime in early March when I just became the BC of mech. This guy calls me up and says he wants to meet reg SAC speaker. DUDE I just became BC don''t know much SAC but he adamant on meeting me. SUch a despo :p But later he backed it up a excellent PPT and sly work :P ', 'He is clam , intelligent enough of good stuff for you. His interest in politics was epic used watch news everyday after work and most of the times during work also. He tried all the possible girls in intern and they dumped him :D', 'Choot don''t kill me in mafia game :/ Intern girls taught you were cute and rated you 2nd out of all boys I guess', 'Dei, no da ; his weird laugh. e actually went for running during intern days. It used to be hot, dry and irritating but he still went for running yaaaak. His typical mallu accent.\r\nHe had stay in our room during intern as his best  buddy Harshit dumped him for another intern', 'Loner;'),
('Adit', '', 'His mom (Sorry, Adit). And of course his enthu in LitSoc. :) (Flute is obvious)', '--', 'All the best! :)', '--', '--', 'Sweet, Kid'),
('Adarsh', 'PJ', 'His humility stands out. So is his nature to always help others and clarify even the silliest of doubts.', 'I taught him juggling and he put pseud on google plus but he never gave me credits.\r\nHe would tell me that he would play a tennis match against, but at the last minute he would back off and start playing with some one else.', 'Taddi, Stay as you are. I know you will do well in whatever you pursue. Just make sure that you make the right decisions and enjoy life.', 'Nothing to you taddi. Nee rombo nalla van.', 'Paathukulaam\r\nMachan idhu kooda therliya, adhu romba easy da', 'sincere and easy going'),
('Adarsh', 'Mitali', 'Taking infi selfies -_-', 'Thanks for giving me the most embarrassing incident of my life, Grrrrr!', 'It''s lot of fun to have discussions with you- you always have something weird to talk about, eg, why do we feel more nauseous while reading a book in a moving car as opposed to not reading a book in a moving car. Also you''re really enthusiastic about everything except maybe staying in tents :)', '', '', 'Very smart,Great tennis player,Maggumax :D 9.999999 pointer who doesn''t want to app'),
('Adit', 'gulve', 'flute, madness, Deshmukhs soul-room-mate', 'I got introduced to him as Deshmukhs roommate. He seemed like a stand-up guy as a first impression (still continues). In first semester we used to play poker and card games.', 'just be the way you are.', '', 'he''s marathi is really good. and he knows lot of swearing words in Marathi as well.', 'awesome sense of humor,respects people,really nice to everyone'),
('Adarsh', 'gulve', 'he is nice to everyone. 10 pointer but not that maggu.', 'I got introduced to him by Kaustubh Wagh outside CRC. He was kind of my rival in tech stuff :p .  Not in Acads. He made his first line follower before me in first semester. I was very jealous of him at that time (no hard feeling now :D).', 'i got surprised when he chose to do job instead of higher studies.', '', '', 'studd,sporty,CV god,insti blues'),
('Deshmukh', 'gulve', 'his craziness as his photo can be seen here. ( he has really short nails but still puts nail polish :P ). Nice and caring friend.', 'We got introduced to each other in 11th class in factory.  In insti life we were in NCC(because we could not get selected in NSO) together.  First semester his wing(ALAK ELEC) and me (JAM Junta), we used play cards and lot of games. On every birthday people dance on gay songs.', 'be awesome as you always are', '', '', 'funny,joker,gamer,cycle master'),
('Bhavik', 'Guess ?? Hint: u dont ned on e', 'Haan, that dude with a big mouth who sits and plans and structures his fundaes(which is just a load of fart) :P', 'I still remember that day day when i went to take fundaes for something and this "dude" who was "stud" was blabbering away. i was mesmerized by the words he threw at me, responsibility, etiquette ,fathom etc...\r\ni was really enjoying this experience absorbing all the "gyan". after an hour or so i come out feeling all confident, when i reflect on what just happened back there i realize all i remember were these words and no substance. \r\nThis is a how Bovik gives fundaes. :P Improves vocabulary and confidence but no real stuff :P. Its a good tactic to attract ppl and i hope to master it one day :)', 'Chill.....', '--', 'He is a nice dude with a lot of good skills but..... well everyone has their issues reaching up :P', 'babbling,voluble,smart :P,Lilliputian,irascible '),
('Bhavik', 'Guess kar le Bhau!!!', 'Swag, The way he walks', '1) The Train Bulb: We were discussing about booking train tickets from Chennai to Pune....the pune quota was over so I said lets book till Mumbai (the train route is Chennai-Pune-Mumbai......and I meant by this that we can will book till Mumbai but obviously get down at Pune itself). Bhavik Baba thinks about it for a minute and replies: How do we come back from Mumbai to Pune!!! (he thinks of going from chennai to mumbai by train and come back from der to Pune by Bus!!!).....And to top it all he tries to blame innocent Banta for this!!!!\r\n2) Once he decides upon something...he will convince u wat he is saying is correct by hook or crook!!! He will give u n-shitty reasons until u give up and accept wat he is saying is true', 'You are terrible at estimates(Bhaviks estimate abt his GPA: less than 8.7, he gets: 9.8), how did u get into Consult(BCG) dude!!!! :P\r\nI still remember the only time I went to library was bcoz of u(Thermo paper) and we did Bakchodi for about 2-3 hrs and I never set foot in library thereafter!!!!\r\nYou have been one of the best friends in insti....we can talk anything and everyhting in this world....do stay in touch....tere busy schedule se thoda waqt nikalke hume milne ane mumbai main!!!\r\n', 'Bhau.....Bhau (I guess this is the best swear for you) :p', '"Bhagwan is sem bachalo, agle sem se pakka padhunga" - his watsapp status before endsems and then he goes on to score 9.7 GPA in that sem!!!!\r\n"Karmabhoomi"- his other watsapp status.....by which he refers to insti', 'Swag,10pointer,Allrounder'),
('Bhavik', 'Arpan Paul', 'I must say, his amazing presentation / pitching skills !!', 'There is this incident when I was a Shaastra endeavour team. A task allotted to me was to be completed in a week''s time. On completion, I presented the idea and the team members liked it. It went on for an hour or so. And then there was Bhavik. He stood up and literally demolished the idea by finding flaws. It took him 5 minutes :p. #Respect ', 'I can only wish him luck. :)', 'LOL', '', 'STUDD'),
('Aroon', 'Ask the NSA or use their methods', '1. Outspokenness\r\n2.  Jedi powers to talk people into doing stuff they didn''t want to\r\n3. Using fellatio as a metaphor for mindless fawning\r\n4. Inevitably overdosing on any intoxicant at first attempt due to an overestimation of his own capacity\r\n5. Unsurpassed skill in making fun of people\r\n6. Emotional sensitivity inspite of (5) when he''s at the receiving end\r\n7. Yelling at incompetent morons who totally deserve it\r\n8. Premature ejaculation(15s by his own admission)\r\n9. Treats mobile phones like a little child treats dolls; gets one, grows bored with the size, colour, features etc, buys another one that takes his fancy\r\n10. Use of aspirated stops where most of us would use the unaspirated form; eg. ''th'' in method, think; ''tt'' in pottan(Malayalam for idiot)', 'After a treat at Una MÃ¡s, Aroon hires a cab. While we''re waiting outside, he decides to check up where the cab is. Calls the driver and asks "Hello anna, eppadi irukku?"(Hey man! How are you?) instead of "engke irukku"(where are you?).\r\n________________________\r\nIn maths class, our robotic prof explains something but nobody understands. Aroon explains it in another way but the prof isnâ€™t sure what he means. He goes "Is this what you meant: ......?"\r\n"Exactly!"\r\n"Hey, you don''t say that. When you''re clarifying a concept, I''m the one who should listen to what you understood and say Exactly."\r\n___________________\r\nA senior once walked in on him jacking off in his room because he was too horny to lock the door. Was he was caught red-handed or white-handed?\r\n_____________________________\r\nAnother time, a senior caught him walking to the bathroom with a bit of liquid handwash. He smiles lewdy and gives a knowing wink.', 'I don''t tHHink so.', '', '"à´¬àµà´¦àµà´§à´¿à´¯àµà´®à´¿à´²àµà´²àµà´¯ à´¬àµ‹à´§à´µàµà´®à´¿à´²àµà´²àµà´¯, à´µàµ†à´±àµà´¤àµ† à´¡à´¿à´•àµà´•àµàµ à´¸à´•àµà´•àµ€à´¤àµàµ à´¨à´Ÿà´•àµà´•àµà´µà´¾" ([You have] neither intelligence nor common sense, [you] just walk around sucking dick).\r\n"Exactly!"', 'outspoken, hairy, sensitive'),
('Sant', 'Danne ', 'Lengthy conversations ,IITMSAT, Falguni Phatak (actually the other way round, but never mind)', 'Too many - New years at Jam Tank (Banta almost crapped his pants when a drunkard came near him to wish him a Happy New Year !) , Quiz times in lib, PDR fight, Summer of 2nd year (Banana awards, Spic Macay concert where we were entrapped in SAC to give "due respect" to the artist) , working in IITMSAT (debugging Helium Radio and thinking of ways to thrash Kevin Brown). There are a lot of small small incidents where either Banta has bulbed off or I have bulbed off or someone else has bulbed off and we have pulled his leg. But, when I look back I think the memories that I will actually have are the discussions that we have had on different topics and how Banta''s view was always refreshingly different from mine. ', 'Be more shameless in life :P ', '', '"Main kya karti tu kya karti, allah allah" (Hilarity ensued for the next half an hour just because of this one sentence)\r\n"Ho aaj mess madhe khup hiwala aahe " (This time the duration was more)', 'Helpful,Friendly,Innocent,"Ebullient" :P'),
('Amal', 'Redundant', '1. Several instances of mild to severe lapses of judgement\r\n2. Abusive BDSM relationship with Green who serves as Amal''s condom + punching bag\r\n3. Eagerness to take on any dare regardless of how foolish\r\n4. Great pride in his fighting ability and toughness; contemptuously dismisses 6 foot tall people and even natural forces like gravity\r\n5. Breaking his leg after jumping from the first floor of Jamuna hostel because ''it was the shortest path to the ground'' and gravity certainly wouldn''t wanna fuck with The Amal\r\n6. Incomprehensible English accent and pronunciation. In Amalspeak, ''Penelope'' is read as ''Fin-al-fay''\r\n7. Mindless eating of snacks in friends'' room like a zombie; things like taste and satiety are for lesser men\r\n8. Dreams of entrepreneurship and making it big but hasn''t done anything about it\r\n9. Girly posture of upper body when walking\r\n10. Mistrusts everybody; his sister is probably the only person who he is close with\r\n11. Receives treat from everybody, never puts treat except as payment for services\r\n12. Washes scalp with soap and wonders why his hair is falling out.\r\n13. Claims to be on familiar terms with hookers in the town of Thrissur. We wonder if being friends with Amal earns us a discount.\r\n14. Prodigious appetite. Amal can clean out a dude''s room of two bags of snacks and claim that it was just appetizer before going off to mess for dinner.\r\n15. Unparalleled at being a dick', 'A bunch of us were walking on the beach with Amal at night. Intoxicated by the sea breeze and the beauty of a full moon, Amal was overcome by desire and grabbed Aroon. Both fell down and rolled into the sea entwined in each other''s arms. The water brought Amal back to his senses; they got up and dusted off the sand. Aroon realized that he lost one of his slippers(which were borrowed from a friend). This, and the indignity of being molested made him so mad that he chased Amal down the length of the beach with the other slipper. Eventually, Amal gave Aroon his slippers as a peace offering. For the rest of the night, he wore a sly smile that says ''Totally worth it''.\r\n______________________\r\nPranoy, who was brought up as a vegetarian, ate chicken for the first time in insti.\r\nAmal comments: "Pranoy, you lost the virginity of your mouth!"\r\n____________________________\r\nA bunch of us were hanging out in Green''s room. Green had just returned from home and brought snacks including a kind of beef samosa. A jar of this beef samosa was lying on the bed. Amal sat down and mechanically ate these samosas. When the jar was almost empty, he asked: "Da, where''s that beef samosa you brought from home? I worked up an appetite."\r\n_____________________________\r\nAmal once made up a limerick about how Prof Ganti is very stylish and how he is totally infatuated with Ganti.\r\n____________________________\r\nOn a trip to Mahabalipuram, Amal decided to try on and buy a ladies hat. Later he was also found in a trinket shop buying necklaces, bangles and stuff, ostensibly ''for his sister''.\r\nAt the end of the trip, when the cab was driving through insti to drop us off, Amal proposes a toast and attempts a formal speech. The rest of us giggle, partly because of his pompous manner and partly because of his exaggerated accent. Green picks up from Amal and ends by reminding us how Amal''s goof ups made the trip so memorable and thanks Amal for giving him the opportunity to give everyone a recap of The Ad', 'You and Green really complement each other. It''s like watching Tom and Jerry.', 'à´‡à´µà´¨àµŠà´°àµ à´¤à´¾à´¯àµ‹à´³à´¿.\r\nà´…à´®à´²àµ‡à´Ÿàµà´Ÿàµ» à´¤à´¾à´¯àµ‹à´³à´¿.\r\nà´®àµà´Ÿà´¿à´¯àµà´‚ à´®àµˆà´°àµà´‚ à´‡à´²àµà´²à´¾à´¤à´¿à´µà´¨àµŠà´°àµ\r\nà´®àµà´Ÿàµà´Ÿàµ» à´¤à´¾à´¯àµ‹à´³à´¿! \r\n(Courtesy: Sreyas and Pranoy)', '"à´ªàµ‚à´±à´¿ à´®à´•àµà´•à´³àµ‡" (Sons of cunts)', 'sadist,male chauvinist,paternalistic brother,voracious,tough,lean and mean');
INSERT INTO `entry2016` (`name`, `friend`, `ans1`, `ans2`, `ans3`, `ans4`, `ans5`, `words`) VALUES
('Shukla', 'gulve', 'being Shuklaji, very nice guy, helps people whenever needed, respects  peoples feelings', 'we had almost all the courses together till 7th semester. I never attended a single physics class. So shukla was my savior for that course (and many other). \r\nHe always keeps his hair neat', 'you are a good person, dont change', '', 'arey gulve ye batao ... , Zandu', 'calm,fun loving'),
('Bhavik', 'Aravind Muralidharan', 'His walk and his talk. And of course yeah, he walks the talk. :P ', 'Secrets ain''t for Spons team B| \r\nStill remember his message for the fire drill at Shaastra, \r\n"Everyone at the Fire Drill right now. Shaastra cannot happen without it. Spons will be derecognized. Day 0 coupons will be lost. It will be Armageddon" :D and Doesn''t turn up himself :P ', 'Bhavik, You are one Awesome Man. Stay the same. Such an inspiration to us kids :P . All the best for all your future endeavors. Pliss to put treat for everything :P ', '', '', 'Enthu,Sweglord,Shady,Workaholic,Cool'),
('Amandeep', 'Atram', 'As a guy who has undying love for his hairs,  his hands and his hairs are inseparable. Can''t imagine him not doing that.', 'He gets sexually harassed whenever he comes to A3 wing but I think he likes it. Such a pros### ', 'Don''t fall for just any girl you deserve more if you have any confusion choosing the right one I will be always there to help. :p', 'Just remember our deal when you go to Bangalore.', 'Saaaala ...... Pagal hai kya...? with one hand in his hairs.', 'Golu, Hairy,Fudddi'),
('Chavan', 'Sooraj', 'Indecipherable language that he speaks in.  ', 'I have misheard what you said, so many times.. Once, "I met him in hospital" felt like. "I made him into hospital"  ', 'Dont let others use you. ', '', '', 'Caring'),
('Adit', 'Goje', 'Being one of the very few guys in insti who take my tripping lightly, and trip back. Always gives out positive vibes. Never heard anyone saying negative things about this guy.', 'He warded off a chilly powder smearing, country revolver carrying Dhruv Prakash by telling him that the flute that he was carrying during freshie night was a bazooka. That was an insane trip. Moments spent in the pool warming the water would be cherished :P\r\n', 'You have to be an awesome goalie this time. I believe that a few on the insti team give out a lot of negative vibes to newcomers and we should try and change that. I''m not sure whether I would come to practice because of this, but I think I can trust you for initiating this change. \r\n\r\nThose trips to CoolBiz. We need to do more of them, bro. ', '', '', 'zaitoon pe rehne waala'),
('Amal', '', 'His epic jump from first floor that broke his leg.', 'He is incredibly more stronger than what he looks like. ', 'All the best', '', '', 'One of the few normal dudes'),
('Deokule', 'Goje', 'For his erratic behavior. He is not normal. Trust me. ', 'Those Pind outings in the third/fifth semester. Infinite amount of time spent deciding between places. The last minute bails. The Sangeetha outing during the floods. \r\n\r\nAshwin Pothen. Hope you get the reference.', 'Make yourself more socializable man. What Bhavik says is right, about the arrogance. Being an arrogant ain''t gonna get you far, mate. Look at your idols, closely observe their personalities. You''ll notice one thing that''s common - lack of arrogance and insane amount of helpfulness in them. Arrogance and childishness clubbed together is an explosive mix. If you want people to trust you, they would like you to be a bit more deterministic in your actions. Erraticgiri is not cool and is painful. Stop passing snide remarks about every other thing that comes your way. Free advice. Feel free to ignore.', '', 'bhikarchot\r\n', ''),
('Adarsh', 'Krishnan R', 'his balanced life-style', '', 'Put some peace in life da', 'Adarsh is an innocent boy.. no abuses O:)', 'Lite!', 'All rounder'),
('Shukla', 'T-Man', 'Chilled out in life', 'Got high on music during antakshari in Kerala, only guy who kept singing away for 6 hours straight with a seemingly unending list of songs', 'Namashkar Shukla Ji', '', '', 'Care-Free'),
('Bhavik', 'Batana padega? :P Well, only because you''re insisting. Bum (no not that one. Wait, no. Not that one ', 'An oversized set of headphones on his head (no no, that''s not the actual size of his head), sitting on the librarian desk on the first floor of the library, with his head on his laptop and mugging away to eternity one day before his exams. That is what I will always remember Bhavik for. The endless time spent together in the library, where we both tried to study and ended up talking for hours if there was a day off, taking small coffee breaks at Tiffs and later Ramu, every few hours, trying to shake off the sleep and walking back to the hostel at 12.00 AM to finish off whatever was left for next day''s exam. These things are something that I will always remember him for.\r\n\r\nWhat the world will remember of him? Here''s a simple 3 step process to that: \r\n\r\n1. Arrogance - the first time you see him walk, or talk to someone else, or in some cases if he decides to wear a cap inside a hostel (who the hell wears a cap in Sharav! :P) and meet you.\r\n2. Jovial & fun - the first time you actually talk to him. He''s not all that bad if you start a conversation with him, and he can even be fun at times. :P \r\n3. The most adorable prick - This will happen if you manage to get through his apparent defenses, and are able to have a heart-to-heart with him. Behind that tough Hulk exterior is a very hulka phulka sa bacha who will truly, genuinely care for you and look out for you. But, its always fun to call him a prick. :P \r\n\r\nHow can I forget the boys CG! Who the hell has such a high CG! :o And then the little bit of crying that comes along with that CG, after every end sem - because it surely hasn''t gone well - and the grades never show that ever. I truly believe him on this, because he had secretly told me that putting in a 500 note always does the trick. \r\n\r\nKeeping all the jokes aside, according to me I will always remember Bhondu (yeah, that''s what we call him), for always being ever-inspiring, for being so so so sincere that sometimes it used to even rub onto me, and at the same time being so dumb at times, that he will always end up stretching himself by doing the most illogical things at times (like watching the entire season of Galactic Football, when he has so many other things to do. :''D), for always being so cheerful and lively, and always ready to dance, and one of the smarter people I have met in my life. :) ', 'LOADS OF THEM. Don''t even know where to start from. Well good to start from the top. \r\n\r\nWell how can I ever forget the first time I ever met with you, or was that e-met with you. Hey\r\nThanks for the wishes. It''s the informal meetings that are more fun actually. But surely we shall meet up in the coming year too. \r\n"There''s not much of "getting well" that I can do actually. Since it''s a fracture, it shall take its month to heal by itself. However if you want anything researched or some work done, do let me know as the injury causes no hindrance to work." - look at the sincerity in that mail! :''D\r\n\r\nBut this wasn''t the first time I met you, was it? How can I forget that weird little punk coming into Sharav wearing a "RF" cap inside the hostel, and talking about applying to Creatives. Who wouldn''t judge such a person as a arrogant, annoying prick. Well I did not! :P \r\n\r\nThe biggest secret that I have about him is obviously the day he decided he wanted to learn how to cook. Cooking Club, hadn''t seen so much enthusiasm from people in finding the right quote or being in the right team as a part of the Masterchef-like competition that was being organized. And more importantly taking out nearly 3 hrs from his schedule of Core apps, mid sems, quizzes. We never even got the joy of taking him out to a good lunch and here he was. Well its important to understand who else was there on the list of people who were shortlisted to make Corn Cheese Balls that day. Didn''t know that a bunch of Corn Cheese Balls, could ever lead to love or anything like that. And obviously it could not! That''s why two final year students felt that an Antakshari MUST be organized in their final sem. And people from all years and backgrounds should be a part of the organizing team, especially freshie girls, who are sincere and know how to play the base guitar. :P I had never seen him so smitten before, and so gullible either, so much so, that certain free Starbucks drink offers were doled off to someone ', 'So much to tell you kiddo. :) Let me start with thanking Shaastra, because that''s how I got to meet you, and I am so glad that it happened. I will always always remember that final sem of mine, and those infinite conversations I had shared with you then. Be the one at the ledge in Alak, or the night after the Spons dinner at Absolute Barbecue. I have not known anyone as closely as you, and I am really glad that I got to know you. Well frankly, I''ve always told you why I wanted to be your friend - long term investment, you see. When you become a super successful CEO of this multi-billion dollar company with its footprints across the world, and then I can tell Shereen Bhan, when they interview the friend of this biz-wiz who has revolutionized the sector (though till then I need to bear you. :/), how we had always known that his day would come! \r\n\r\nAnd you know I mean each and every word of that line, because I truly, genuinely believe that you''re meant for great things. :) But no pressur', '', '"Arey yaar end sem phir se kharab gaya. Iss baar toh pakka ''A'' lagega!" \r\n\r\n"K"\r\n\r\n"Cool cocky persona mode: ON" \r\n\r\nP.S.: He actually says B, but I''m calling it A, just to add that extra masala)', 'Prick,Arrogant,MUGGU,Genuine,Caring,Sincere,HULK (- the height) '),
('Bhavik', 'The infamous Tharki! (which is not true though)', 'Come on! You want an answer to this!! :p\r\n', 'That new year eve when we had gone to 10D. I perhaps might have been a teetotaler today had it not been for that night! This guy be all like I am the experienced and the matured one in the cohort, so I tell you what to drink, how much to drink blah blah... Jump cut to after the party, he puked all his experience out right there and had to be carried along, literally!', 'Always be the nice, fun loving guy you are. And try to reduce your academic performance by a notch if you study further. People do really think of you otherwise. :p\r\n', '', 'Expert in giving gen motivational speeches! He can even motivate you to do shady things I guess. :''D', 'Drunkard, Beoda,Stud (damage control for the first two :p)'),
('Bhavik', 'Sapta lol :P ', 'He''s a troubleshooter,  a problem solver, a brilliant leader, a big time player( :P ). He''s touched way too many lives in insti, probably the only person I know to have made an indelible mark on all of insti''s scenes and cultures, from sports to Lit, and tech to Shaastra. He''ll be remembered as the core who led Shaastra Spons to its most successful year ever in terms of cash and PR. He''ll be remembered as the Alak basky captain who delivered them a gold medal. And most of all, he''ll be remembered by small guys like me for tiny tidbits he''s told us over whatever limited time we''ve spent with him, which have made a huge huge impact on the way we approach our problems, or larger issues in  life for that matter. ', 'My memories of Bhavik will always be with regard to the Comedy Club. As a venture that was he wanted to see take off in insti, I was surprised that he would make time to listen to me over all the issues and updates that I and later, Anjani and I, have had over an extremely busy final semester. We at all times regard him as Superman for whatever heist he pulled off on a certain Saturday night when he convinced Shreyas to give us the Informals Club.  Its a role which only he could''ve played, and quite frankly, that''s something that slyly worries us ;) \r\nYou''ll be missed man. ', 'Dude give us a treat already -_-', '', 'So Bhavik is like this N structured fellow. He has his shit worked out so when we ask him about a problem we''ve been having, he''ll start by saying, "So see, look at your options. You have X options. First is..." :P ', 'leader,structured, creative, polarising,proud'),
('Shukla', 'PAL', 'his intelligence and hard work', 'He was secretly in  love with Ankita shukla', 'we are proud of you.', '', 'I am gay', 'Buddha,Hunter'),
('Shukla', '', 'à¤¬à¤•à¤µà¤¾à¤¸ à¤•à¤°à¤¨à¥‡ à¤®à¥‡à¤‚ à¤®à¤¾à¤¹à¤¿à¤°', 'Very few people know that chennai gave him his degree and wife', 'Bhai jab paise excess mein ho to de dena.', '', '', ''),
('Shukla', 'Suyash', 'Going to Madras instead of Kanpur', 'After every FIT-JEE test , he was like - abe keval 60 number aa rahe hain . And then he would shake his head for another half an hour.', 'Bhai abhi tera ek aur saal hai', '', 'Chalo theek hai ,', 'Tension , Paaya'),
('Deokule', 'ashok ', 'his studness :P ', 'mugging :P ', 'you are awesome persone dude just keep it up ', 'sale thoda smart ho ja and bandi pata le dusro ki bandi per kab tak ', 'bas kar tu rhne de ', 'maggu'),
('Bhavik', 'Anukriti', 'His long mails! :P\r\nI still remember when Meow was on Creatives groups, for a while. He made a special mention of one of his mails, how neat and formatted they were. Ask us,  we always thought, they were just tl;dr. :P \r\n\r\nAdding to the list, you have been a wonderful team-mate and friend over the 3 years of Shaastra and IITM TV (:P), your work ethics is something I truly admire and I will remember you for. Well, your ability to bond with people genuinely and keeping your friendship can''t go unnoticed too. :)', 'Well, yesteryear''s new year party was one hell of a blast. Let''s accept it, none of us were spared but you were gone beyond levels. XD And haha, there was a time too, when you would wait till 10 to drink, mummy ka call aane wala he. :P\r\n\r\nMost of our memories go way back to our second years. I am going to miss our fun and carefree Creatives times so much; our meetings, pre-meetings, cycle rides, outings, random K-gate pongal and Antakshari sessions. That prank call to Padia during our ice-breaking session! :D', 'I have seen you transforming from a ''little-Bossy'' co-coord to an ''Ass-kicking'' Core member (external Consultant for some :P ). I expected you to be just another elitist and unapproachable but I am glad to say that I was wrong and after all these times, I am going to miss working with you. :)\r\n\r\nYou are smart and talented but what differentiates you from others is your work-ethics. Pliss to stay the same and I hope we might get a chance to work again, in future sometime.', 'Ass-hole! (For not cribbing upfront) :P', '''Ghar ka khana bacha he kya''; ''Kya kya he?''; ''My wingmates finished mine; pehle bolna tha na'' :P\r\n\r\nHe says a lot more things! :P Give him the mic and you will repent, I hope the baby pacifier is at work.', 'Bow-Bow Bowik,External Consultant, Failed Core'),
('Adarsh', 'Sai Prasanna :)', 'His coolness and studness ', 'Workshop professor asking me to learn Tamil from you :P remember ? ', 'U can achieve what ever you are willing to :) \r\nStay as you are :)\r\nAll the best :)', '.', '.', 'stud, relaxed and cool as always'),
('Sant', 'Anukriti', 'Old lady in white sari or wait, the beach-boy Santa! :P\r\n\r\nMore importantly, you will be remembered for your light-hearted nature: it''s simply amazing to work with you. You have the ability to turn a stressful situation to a room full of weird but fun stories. :P', 'Well, that meeting with Padia before meeting Bala! Your stories on the old lady in white sari and how she was sitting right beside you. That night was truly unforgettable. :D\r\n\r\nAlso, the Pune Sampark article, I still remember we were shit scared to face our Strategist and Core after that. I am sure we checked our file names and proof-read every article multiple times after that. :P', 'My interaction with you was short but fun. Yes, the Creatives time was one time which I wouldn''t mind living again. It was the way we bonded over our ideation sessions (my Sniper image prevailed for long :P ), outings and just chilling out on Antakshari and Ping-Pong! Every single moment was totally worth it, no exaggeration.\r\n\r\nBanta, stay the way you are; the funny-Banta who can be serious about his work when needed, the light-hearted person who can be there for his team-mates when the time comes. It was amazing working with you, hope we stay in touch. :)', 'None for you. :)', '', 'Funny Banta, Beach-boy Banta'),
('Sant', '', 'nicest guy in the institute. his dancing moves. keeps cool everytime', '', 'good luck bro. never met a guy like you and never will', '', '', 'Batman'),
('Bhavik', 'Devaansh', 'Planning and efficiency. And those huge colorful headphones (FYI, that is almost always the thing that people notice first about you).', 'There''s a particularly delicious picture of Bhavik from his stay at ITC post-placements. It''s earned him a nickname which we''ll be sure to popularize whenever he tries to get to posh and consultanty. The name''s J Lo. Ask him why. :P\r\n\r\nEven the most pure at heart are corruptible. While his mug-efforts in the library were frequently interrupted, a particularly memorable time when the focus wavered was when after downing some vodka mid case-prep we both ended up laughing non-stop for a record 10 minutes at absolutely nothing while the entire wing stared at us as they passed the room. ', 'You''ve always been the true TDC of the Spons group. :P', '', '', 'Loud,Straightforward,Efficient,Multitasking,Case Prep,Very Loud :P,TDC'),
('Ajil', 'Vedant ', 'Scaring away freshies at the gym. ', 'Back in our 7th sem Ajil was under major stress because he was crunched for time. One would assume it was because he was seriously apping to universities abroad, but our boy spent most of his nights playing bridge. Or was it spent hitting on his future wife? We might never know. Anyway, after I got placed, I was finally beginning to enjoy life, and thought it was reasonable to share what happened in my day with The Hulk. Big mistake. Hulk got angry and yelled at me for telling him that I was having fun and stormed out of the mess, barely restraining himself from beating me to a pulp. Maybe he would start from the dent he created on my sternum in school. \r\n\r\nHis action-less marriage needs to be talked about. You would think with his body and brains he would be irresistible to the woman folk. Is he whipped? Yes. Is he getting action? No. Is he doing this because he thinks it''s a challenge which he cant lose? I sometimes wonder. \r\n\r\nThe time when he ate a chicken roll at Guru on his first day at insti and fell violently sick. I had to assemble to squad to find the boy, only to find out he was hiding in the insti hospital. And he says I dont have a tolerance to food outside. Hypocrite. \r\n', 'Stay in touch da fucker. I''ve known you for way too long for this to end abruptly. I know we''ll find ourselves back in Bangalore, with either the stoners from school or the alcoholics from insti :P ', '', '"Eyyy. Why do I have to court a girl for over a year before she gives me action? It''s so much easier in the U.S."', ''),
('Adit', 'Vedant ', 'His crazy dance moves that no one can or will ever be able to match. From dandiya night in our first year to the hostel nights through the years, I dont remember enjoying dancing with anyone else as much as I did with you. \r\n\r\nAdit is simultaneously one of the smartest and weirdest people I have met in insti. Conversations with the boy can never become boring which makes him that much easier to chill with. ', 'Back in our first semester, Nippo and Adit decide it would be a good idea to study for the chem midsem with me. After much resisting, they ended up Rg-ing me out of half the portion\r\n\r\nHis drunk stories have been repeated to me from so many people that I feel like I was there. My favourite is when he pee-d on a gate and then on top of unsuspecting Panda-In-Chief, only to later bear hug The Hulk. ', 'I admire the way you put a lot of fight into the things you really want to - like playing the flute or practicing for water polo. Also your ability to initiate and make serious conversation and then turn it into the most nonsensical shit I''ve heard :P \r\nStay in touch da. I''ll come over to Chennai occasionally anyway, so we''ll chill :) ', '', 'Most of it isnt worth remembering. ', ''),
('Adarsh', '', 'Adarsh will be remembered for his studness. He''s seemingly capable of putting endless night outs, and he manages to do some dozen projects besides academics. ', ' Adarsh thought it was appropriate to ask me out on Valentine''s day while we were sitting in class surrounded people. It was very anticlimactic, he snuck it into one of those "the weather is nice" conversations. (Incidentally I said no - now you may know who I am :P ) He also wrote about it on my RG form, and said "you will surely regret this decision".  \r\n\r\nHe also has/had the ambition to get "six pack abs". I discovered this because he had apps that were supposed to help him achieve this goal, and they kept sending notifications. He also had Ajil help him with pull-ups by hoisting him up by his waist. It doesn''t make for a pretty mental picture, right? They say it was quite romantic. Ajil was approached by other men for similar favours after this incident. ', 'How can you possibly like Murugan?! How can you even pretend you like Murugan? He is the worst teacher I have ever had!\r\nAlso, thank you for helping me get through courses in second and third year. You are a good teacher _/ \\_', 'We know that deep deep down you put RG. Its this mental RG. He will tell you that he has done as little as you have for an assignment and that its totally fine. Come submission day he''s magically done with the assignment and he''s going to sleep at 10pm. ', '', 'hardworking, smart,nice'),
('Ajil', '', '', 'There are so many incidents where Ajil has been downright silly.\r\nWhile we were sitting in class, Ajil told me about his (then) manboobs problem and how Adit sexually harassed him by attacking them.  This was literally the second time I ever sat next to him. I barely knew him then. So as you can see, smooth. \r\nHe frequently falls in love with Profs and is proud of his prof- stalking skills. He has a ridiculous crush on Nagi. He even stalked pictures of his family on facebook. Creepy. He forgot to register for a workshop because he was speaking to his prof/man-crush at the time, and hence lost out on 5 days of epic food. To add to this, he forgot to tell man-crush his name. So it was all useless. \r\nHe also objectifies women. He actually rated his ex-girlfriend''s mothers, and GF1''s mother had a higher rating that GF2. Wrong on so many levels -.- ', 'Ajil, I think its really cool that you put effort and lost weight in third year, in the middle of one of the toughest academic semesters one could have. ( Don''t get too smug when you read this. )\r\nI think that you''re one of the nicest guys I''ve ever met.  You''re very patient, forgiving and non-confrontational. It was fun working with you. I''m also glad I got to meet new people because of you, so thanks for that. ', 'You call yourself an artist but we know why you went to art class :P', 'Ajil is actually sort of stupid. This is no secret. He regularly misinterprets what you were trying to say. He also makes statements that leave a lot of room for interpretation. Some examples are:\r\n â€œI helped him with pullups, It was very physicalâ€, \r\nâ€œAdit and I shower together in the night (rationalised with shower duets)â€,\r\n â€œVedant always takes me out for dinner (on Valentines day)â€ and \r\nâ€œAnthony and I have bonded!â€.\r\nOn a related note, he was definitely searching for shirtless pictures of Paul. Ajil, if you ever decide you bat for the other team, we will support you. \r\n\r\nHe also believes jealousy from others is a good thing. Jealousy is earned, resect is just given. â€œRemember in school they say stuff like: you must respect womenâ€  -.-', 'nice,cute, silly,muggu'),
('Adit', '', '', 'Adit is always having crazy ideas. He once said in class that his idea of a successful person is a godman. People respect and worship them, as well as sponsor them. He possibly aspires to be Baba Ramdev, and I think he just might be able to. He recently tried to convince people that he is an RSS sympathiser. He told a girl to go back home and dress decently. He also talked about stabbing people with thrishuls. \r\nHe has a good eye for detail. I''ve noticed things (about people''s appearances) only after he has pointed it out to me. He also has a penchant for remembering utterly useless things, such as movie dialogues and the most annoying or sleazy songs (that eventually get stuck in your head) . As a result, his imitations are uncanny. ', 'How can you like Murugan. Just.How?! \r\nTT is a sport. Really. \r\nIt is ridiculously fun having you around. You''re very good at breaking the ice. ', 'Adit enjoys annoying me on a regular basis and he gets away with it. The sad thing is people don''t believe he is a chutiya. So classmates who don''t know him think he is this nice, standup guy and any attempts to convince them otherwise fail. I have narrated stories of his evil-ness and they simply don''t think he could have said or done those things. That charm he has is scary. It is a weapon.  ', '"Fawad Khan is soooo hot. His hair is perfect. His wife doesn''t look so good. Fawad Khan should be with me"', 'crazy,funny,spontaneous'),
('Dave', '', 'Straight face', '', 'Improve social life,  increase interaction with people in same organization at least- which would have given me chance to fill other boxes', '', '', ''),
('Deokule', '', 'He tries to explain every single thing that happens around him with the skills obtained from his physics minor. "Why is mess food so bad?" "Because classical mechanics explains ..blah blah blah".... "why do you make moaning noises when you bath?" "Let''s do a thought experiment using Galilean Cordinates.... Blah blah blah". \r\n\r\nHe invented a effective way of putting RG. He mugs the entire portion, goes to his friends''s rooms, starts his physics lecture and scares the shit out of people. He then sleeps in their bed till early morning ensuring that his friends never get to rest. When they finally kick him out of their rooms and go to sleep, he comes back 30 minutes later and starts asking doubts.\r\n\r\nAlthough Marathi is his first love, he suddenly became crazy about learning Tamil. He started reading Tamil books, watching Tamil movies and shagging to Tamil porn. He tried talking in Tamil to all auto-wallas/taxi-wallas that he met, but ended up receiving all permutations of bad words in Tamil. Well, atleast here could understand that they were bad words.\r\n\r\n\r\n', '', 'The world is still not ready for your physics fundaes.', 'Poda tevidiya punda.. Can you understand what I just wrote???', '"You know biriyani is a Marathi dish. Rajinikanth is a Marathi. The aliens living in Andromeda Galaxy speak Marathi"', 'Ass sore'),
('Bhavik', 'ur father', 'prerna ', ':|', '', '', '', ''),
('Shukla', 'pehchan liyo to msg kr dena.. 10 minute waste kiye ye taam jhaam bharne me.', 'Jaan hai tu meri paaya :*', 'Those 3 years of rise and fall, I couldn''t have made it without you. Thanks for always having my back.', 'bahot kuch sikhaya hai tune. rehna tu hai jaise tu. aur haan main chahe saal me ek baar baat karu but whenever you need the most, i''ll be there for you.', 'mujhe chhod k madras chala gya bc!', 'Class 11 n 12: tum kitne number PAAYE ho? main to itne hi umber PAAYA hu. \r\nFiitjee: SAB SUAR HAIN SAALE\r\nOn call: aur btao. aur btao. aur btao. (bc aur kitna btau XD)', 'Hard Working,Down to Earth,One of my best friends,Paaya,Resourceful');

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `wingmates`
--

CREATE TABLE IF NOT EXISTS `wingmates` (
  `fname` varchar(100) NOT NULL,
  `nick` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wingmates`
--

INSERT INTO `wingmates` (`fname`, `nick`, `lname`) VALUES
('Abhijith', 'C S', ''),
('Abinash', '', 'Deuri'),
('Aditya', 'MILF', 'Ramesh'),
('Adhitya', '', 'Srinivasan'),
('Aaditya', 'Maggu', 'Vijayakumar'),
('Athul', 'P G', ''),
('Mohammed', '', 'Shafeeq'),
('Nandakishore', 'Nandu', ''),
('Rohit', 'Vinci', 'Salunke'),
('Roshan', 'Co-Ed', 'Santhosh'),
('Saad', '', 'Mubarak'),
('Yaswant', 'Don2', 'Dontu'),
('Sapate', 'LCB', 'Aditya');

-- --------------------------------------------------------

--
-- Table structure for table `wingmates2016`
--

CREATE TABLE IF NOT EXISTS `wingmates2016` (
  `fname` varchar(8) DEFAULT NULL,
  `nick` varchar(49) DEFAULT NULL,
  `lname` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wingmates2016`
--

INSERT INTO `wingmates2016` (`fname`, `nick`, `lname`) VALUES
('Adit', 'Flute', 'Ravi'),
('Avinash', 'Mauwhore', NULL),
('Ajil', NULL, 'Jalal'),
('Amal', 'Raw Cock', NULL),
('Amandeep', 'AMNDP, Summation aka SMTN', 'Kumar'),
('Aroon', 'Eda BKC Aroone Sex Peaker', 'Narayanan'),
('Akash', 'Mandak Kumar Singh Dhakaddd Tipo Patel', NULL),
('Deokule', 'Mauwadi', 'Atharv'),
('Bhavik', 'Buick', 'Rasyara'),
('Chavan', 'Tripod', 'Shubam'),
('Dave', 'The Way', 'Akshat'),
('Ayush', 'Kandy Wall Tits', 'Khandelwal'),
('Deshmukh', 'Zesi Bebs Offshal', 'Aditya'),
('Sant', 'Banta', 'Aditya'),
('Shukla', 'Diku/ Dikla/ Dukla/ Dukli/ Shukli/ Sukli/ Shalini', 'Ankit'),
('Adarsh', 'Chaddimari/Fleshy', 'Tadimari'),
('Akshay', 'E-LAN Cherry', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
