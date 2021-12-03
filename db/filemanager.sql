-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 03, 2021 at 11:07 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filemanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

DROP TABLE IF EXISTS `tbl_categories`;
CREATE TABLE IF NOT EXISTS `tbl_categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(200) NOT NULL,
  `cat_creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files`
--

DROP TABLE IF EXISTS `tbl_files`;
CREATE TABLE IF NOT EXISTS `tbl_files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_path` varchar(200) NOT NULL,
  `file_type` varchar(200) NOT NULL,
  `file_size` int(11) NOT NULL,
  `file_hash` varchar(200) DEFAULT NULL,
  `file_thumbnail` varchar(200) NOT NULL,
  `file_creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_path`, `file_type`, `file_size`, `file_hash`, `file_thumbnail`, `file_creationdate`) VALUES
(1, 'https://thumbs.dreamstime.com/b/red-button-words-free-demo-try-today-bright-round-gold-ribbon-circle-label-software-developers-online-shops-86979717.jpg', 'image', 0, NULL, 'https://thumbs.dreamstime.com/b/red-button-words-free-demo-try-today-bright-round-gold-ribbon-circle-label-software-developers-online-shops-86979717.jpg', '2021-11-25 05:03:49'),
(2, 'https://static8.depositphotos.com/1012223/980/i/600/depositphotos_9803930-stock-photo-demo-cubes.jpg', 'image', 0, NULL, 'https://static8.depositphotos.com/1012223/980/i/600/depositphotos_9803930-stock-photo-demo-cubes.jpg', '2021-11-25 05:04:25'),
(3, 'https://image.shutterstock.com/image-vector/free-demo-red-push-buttondesigned-260nw-1303468276.jpg', 'image', 0, NULL, 'https://image.shutterstock.com/image-vector/free-demo-red-push-buttondesigned-260nw-1303468276.jpg', '2021-11-25 05:04:44'),
(4, 'https://static4.depositphotos.com/1023102/497/i/950/depositphotos_4977727-stock-photo-demo.jpg', 'image', 0, NULL, 'https://static4.depositphotos.com/1023102/497/i/950/depositphotos_4977727-stock-photo-demo.jpg', '2021-11-25 05:04:57'),
(5, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', 'image', 0, NULL, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', '2021-11-25 05:05:15'),
(6, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', 'image', 0, NULL, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', '2021-11-25 05:05:15'),
(7, 'https://thumbs.dreamstime.com/b/red-button-words-free-demo-try-today-bright-round-gold-ribbon-circle-label-software-developers-online-shops-86979717.jpg', 'image', 0, NULL, 'https://thumbs.dreamstime.com/b/red-button-words-free-demo-try-today-bright-round-gold-ribbon-circle-label-software-developers-online-shops-86979717.jpg', '2021-11-25 05:03:49'),
(8, 'https://static8.depositphotos.com/1012223/980/i/600/depositphotos_9803930-stock-photo-demo-cubes.jpg', 'image', 0, NULL, 'https://static8.depositphotos.com/1012223/980/i/600/depositphotos_9803930-stock-photo-demo-cubes.jpg', '2021-11-25 05:04:25'),
(9, 'https://image.shutterstock.com/image-vector/free-demo-red-push-buttondesigned-260nw-1303468276.jpg', 'image', 0, NULL, 'https://image.shutterstock.com/image-vector/free-demo-red-push-buttondesigned-260nw-1303468276.jpg', '2021-11-25 05:04:44'),
(10, 'https://static4.depositphotos.com/1023102/497/i/950/depositphotos_4977727-stock-photo-demo.jpg', 'image', 0, NULL, 'https://static4.depositphotos.com/1023102/497/i/950/depositphotos_4977727-stock-photo-demo.jpg', '2021-11-25 05:04:57'),
(11, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', 'image', 0, NULL, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', '2021-11-25 05:05:15'),
(12, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', 'image', 0, NULL, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', '2021-11-25 05:05:15'),
(13, 'https://thumbs.dreamstime.com/b/red-button-words-free-demo-try-today-bright-round-gold-ribbon-circle-label-software-developers-online-shops-86979717.jpg', 'image', 0, NULL, 'https://thumbs.dreamstime.com/b/red-button-words-free-demo-try-today-bright-round-gold-ribbon-circle-label-software-developers-online-shops-86979717.jpg', '2021-11-25 05:03:49'),
(14, 'https://static8.depositphotos.com/1012223/980/i/600/depositphotos_9803930-stock-photo-demo-cubes.jpg', 'image', 0, NULL, 'https://static8.depositphotos.com/1012223/980/i/600/depositphotos_9803930-stock-photo-demo-cubes.jpg', '2021-11-25 05:04:25'),
(15, 'https://image.shutterstock.com/image-vector/free-demo-red-push-buttondesigned-260nw-1303468276.jpg', 'image', 0, NULL, 'https://image.shutterstock.com/image-vector/free-demo-red-push-buttondesigned-260nw-1303468276.jpg', '2021-11-25 05:04:44'),
(16, 'https://static4.depositphotos.com/1023102/497/i/950/depositphotos_4977727-stock-photo-demo.jpg', 'image', 0, NULL, 'https://static4.depositphotos.com/1023102/497/i/950/depositphotos_4977727-stock-photo-demo.jpg', '2021-11-25 05:04:57'),
(17, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', 'image', 0, NULL, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', '2021-11-25 05:05:15'),
(18, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', 'image', 0, NULL, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', '2021-11-25 05:05:15'),
(19, 'https://thumbs.dreamstime.com/b/red-button-words-free-demo-try-today-bright-round-gold-ribbon-circle-label-software-developers-online-shops-86979717.jpg', 'image', 0, NULL, 'https://thumbs.dreamstime.com/b/red-button-words-free-demo-try-today-bright-round-gold-ribbon-circle-label-software-developers-online-shops-86979717.jpg', '2021-11-25 05:03:49'),
(20, 'https://static8.depositphotos.com/1012223/980/i/600/depositphotos_9803930-stock-photo-demo-cubes.jpg', 'image', 0, NULL, 'https://static8.depositphotos.com/1012223/980/i/600/depositphotos_9803930-stock-photo-demo-cubes.jpg', '2021-11-25 05:04:25'),
(21, 'https://image.shutterstock.com/image-vector/free-demo-red-push-buttondesigned-260nw-1303468276.jpg', 'image', 0, NULL, 'https://image.shutterstock.com/image-vector/free-demo-red-push-buttondesigned-260nw-1303468276.jpg', '2021-11-25 05:04:44'),
(22, 'https://static4.depositphotos.com/1023102/497/i/950/depositphotos_4977727-stock-photo-demo.jpg', 'image', 0, NULL, 'https://static4.depositphotos.com/1023102/497/i/950/depositphotos_4977727-stock-photo-demo.jpg', '2021-11-25 05:04:57'),
(23, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', 'image', 0, NULL, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', '2021-11-25 05:05:15'),
(24, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', 'image', 0, NULL, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', '2021-11-25 05:05:15'),
(25, 'https://thumbs.dreamstime.com/b/red-button-words-free-demo-try-today-bright-round-gold-ribbon-circle-label-software-developers-online-shops-86979717.jpg', 'image', 0, NULL, 'https://thumbs.dreamstime.com/b/red-button-words-free-demo-try-today-bright-round-gold-ribbon-circle-label-software-developers-online-shops-86979717.jpg', '2021-11-25 05:03:49'),
(26, 'https://static8.depositphotos.com/1012223/980/i/600/depositphotos_9803930-stock-photo-demo-cubes.jpg', 'image', 0, NULL, 'https://static8.depositphotos.com/1012223/980/i/600/depositphotos_9803930-stock-photo-demo-cubes.jpg', '2021-11-25 05:04:25'),
(27, 'https://image.shutterstock.com/image-vector/free-demo-red-push-buttondesigned-260nw-1303468276.jpg', 'image', 0, NULL, 'https://image.shutterstock.com/image-vector/free-demo-red-push-buttondesigned-260nw-1303468276.jpg', '2021-11-25 05:04:44'),
(28, 'https://static4.depositphotos.com/1023102/497/i/950/depositphotos_4977727-stock-photo-demo.jpg', 'image', 0, NULL, 'https://static4.depositphotos.com/1023102/497/i/950/depositphotos_4977727-stock-photo-demo.jpg', '2021-11-25 05:04:57'),
(29, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', 'image', 0, NULL, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', '2021-11-25 05:05:15'),
(30, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', 'image', 0, NULL, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', '2021-11-25 05:05:15'),
(31, 'https://thumbs.dreamstime.com/b/red-button-words-free-demo-try-today-bright-round-gold-ribbon-circle-label-software-developers-online-shops-86979717.jpg', 'image', 0, NULL, 'https://thumbs.dreamstime.com/b/red-button-words-free-demo-try-today-bright-round-gold-ribbon-circle-label-software-developers-online-shops-86979717.jpg', '2021-11-25 05:03:49'),
(32, 'https://static8.depositphotos.com/1012223/980/i/600/depositphotos_9803930-stock-photo-demo-cubes.jpg', 'image', 0, NULL, 'https://static8.depositphotos.com/1012223/980/i/600/depositphotos_9803930-stock-photo-demo-cubes.jpg', '2021-11-25 05:04:25'),
(33, 'https://image.shutterstock.com/image-vector/free-demo-red-push-buttondesigned-260nw-1303468276.jpg', 'image', 0, NULL, 'https://image.shutterstock.com/image-vector/free-demo-red-push-buttondesigned-260nw-1303468276.jpg', '2021-11-25 05:04:44'),
(34, 'https://static4.depositphotos.com/1023102/497/i/950/depositphotos_4977727-stock-photo-demo.jpg', 'image', 0, NULL, 'https://static4.depositphotos.com/1023102/497/i/950/depositphotos_4977727-stock-photo-demo.jpg', '2021-11-25 05:04:57'),
(35, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', 'image', 0, NULL, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', '2021-11-25 05:05:15'),
(36, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', 'image', 0, NULL, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', '2021-11-25 05:05:15'),
(37, 'https://thumbs.dreamstime.com/b/red-button-words-free-demo-try-today-bright-round-gold-ribbon-circle-label-software-developers-online-shops-86979717.jpg', 'image', 0, NULL, 'https://thumbs.dreamstime.com/b/red-button-words-free-demo-try-today-bright-round-gold-ribbon-circle-label-software-developers-online-shops-86979717.jpg', '2021-11-25 05:03:49'),
(38, 'https://static8.depositphotos.com/1012223/980/i/600/depositphotos_9803930-stock-photo-demo-cubes.jpg', 'image', 0, NULL, 'https://static8.depositphotos.com/1012223/980/i/600/depositphotos_9803930-stock-photo-demo-cubes.jpg', '2021-11-25 05:04:25'),
(39, 'https://image.shutterstock.com/image-vector/free-demo-red-push-buttondesigned-260nw-1303468276.jpg', 'image', 0, NULL, 'https://image.shutterstock.com/image-vector/free-demo-red-push-buttondesigned-260nw-1303468276.jpg', '2021-11-25 05:04:44'),
(40, 'https://static4.depositphotos.com/1023102/497/i/950/depositphotos_4977727-stock-photo-demo.jpg', 'image', 0, NULL, 'https://static4.depositphotos.com/1023102/497/i/950/depositphotos_4977727-stock-photo-demo.jpg', '2021-11-25 05:04:57'),
(41, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', 'image', 0, NULL, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', '2021-11-25 05:05:15'),
(42, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', 'image', 0, NULL, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', '2021-11-25 05:05:15'),
(43, 'https://thumbs.dreamstime.com/b/red-button-words-free-demo-try-today-bright-round-gold-ribbon-circle-label-software-developers-online-shops-86979717.jpg', 'image', 0, NULL, 'https://thumbs.dreamstime.com/b/red-button-words-free-demo-try-today-bright-round-gold-ribbon-circle-label-software-developers-online-shops-86979717.jpg', '2021-11-25 05:03:49'),
(44, 'https://static8.depositphotos.com/1012223/980/i/600/depositphotos_9803930-stock-photo-demo-cubes.jpg', 'image', 0, NULL, 'https://static8.depositphotos.com/1012223/980/i/600/depositphotos_9803930-stock-photo-demo-cubes.jpg', '2021-11-25 05:04:25'),
(45, 'https://image.shutterstock.com/image-vector/free-demo-red-push-buttondesigned-260nw-1303468276.jpg', 'image', 0, NULL, 'https://image.shutterstock.com/image-vector/free-demo-red-push-buttondesigned-260nw-1303468276.jpg', '2021-11-25 05:04:44'),
(46, 'https://static4.depositphotos.com/1023102/497/i/950/depositphotos_4977727-stock-photo-demo.jpg', 'image', 0, NULL, 'https://static4.depositphotos.com/1023102/497/i/950/depositphotos_4977727-stock-photo-demo.jpg', '2021-11-25 05:04:57'),
(47, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', 'image', 0, NULL, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', '2021-11-25 05:05:15'),
(48, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', 'image', 0, NULL, 'https://st2.depositphotos.com/1186248/5903/i/600/depositphotos_59038425-stock-photo-demo.jpg', '2021-11-25 05:05:15'),
(49, 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4', 'video', 0, NULL, '', '2021-12-01 09:13:48'),
(50, 'http://media.w3.org/2010/05/sintel/trailer.mp4', 'video', 0, NULL, '', '2021-12-01 09:18:45'),
(51, 'https://www.w3schools.com/tags/movie.mp4', 'video', 0, NULL, '', '2021-12-01 09:32:15'),
(52, 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4', 'video', 0, NULL, '', '2021-12-01 09:43:52'),
(53, 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4', 'video', 0, NULL, '', '2021-12-01 09:44:34'),
(54, 'https://www.w3schools.com/tags/movie.mp4', 'video', 0, NULL, '', '2021-12-01 09:32:15'),
(55, 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4', 'video', 0, NULL, '', '2021-12-01 09:43:52'),
(56, 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4', 'video', 0, NULL, '', '2021-12-01 09:44:34'),
(57, 'https://www.w3schools.com/tags/movie.mp4', 'video', 0, NULL, '', '2021-12-01 09:32:15'),
(58, 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4', 'video', 0, NULL, '', '2021-12-01 09:43:52'),
(59, 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4', 'video', 0, NULL, '', '2021-12-01 09:44:34'),
(60, 'https://www.w3schools.com/tags/movie.mp4', 'video', 0, NULL, '', '2021-12-01 09:32:15'),
(61, 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4', 'video', 0, NULL, '', '2021-12-01 09:43:52'),
(62, 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4', 'video', 0, NULL, '', '2021-12-01 09:44:34'),
(63, 'https://www.w3schools.com/tags/movie.mp4', 'video', 0, NULL, '', '2021-12-01 09:32:15'),
(64, 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4', 'video', 0, NULL, '', '2021-12-01 09:43:52'),
(65, 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4', 'video', 0, NULL, '', '2021-12-01 09:44:34'),
(66, 'https://www.w3schools.com/tags/movie.mp4', 'video', 0, NULL, '', '2021-12-01 09:32:15'),
(67, 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4', 'video', 0, NULL, '', '2021-12-01 09:43:52'),
(68, 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4', 'video', 0, NULL, '', '2021-12-01 09:44:34'),
(69, 'https://www.w3schools.com/tags/movie.mp4', 'video', 0, NULL, '', '2021-12-01 09:32:15'),
(70, 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4', 'video', 0, NULL, '', '2021-12-01 09:43:52'),
(71, 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4', 'video', 0, NULL, '', '2021-12-01 09:44:34'),
(72, 'https://www.w3schools.com/tags/movie.mp4', 'video', 0, NULL, '', '2021-12-01 09:32:15'),
(73, 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4', 'video', 0, NULL, '', '2021-12-01 09:43:52'),
(74, 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4', 'video', 0, NULL, '', '2021-12-01 09:44:34');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
