-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2021 年 12 月 07 日 12:33
-- 服务器版本: 5.5.38
-- PHP 版本: 5.3.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `mydb`
--

-- --------------------------------------------------------

--
-- 表的结构 `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stunum` varchar(15) DEFAULT NULL,
  `stuname` varchar(15) DEFAULT NULL,
  `stusex` varchar(10) DEFAULT NULL,
  `stumajor` varchar(15) DEFAULT NULL,
  `stupic` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `student`
--

INSERT INTO `student` (`id`, `stunum`, `stuname`, `stusex`, `stumajor`, `stupic`) VALUES
(4, '2020004', 'John', 'male', 'math', 'images/im4.jpg'),
(5, '2020005', 'Mary', 'female', 'software', 'images/im5.jpg'),
(6, '20210012', 'Mary', 'Female', 'computer', 'images/pic3.jpg'),
(7, '2021001215', 'Mark', 'male', 'software', 'images/pic4.jpg'),
(8, '202012145', 'Jack', 'male', 'software', 'images/pic6jpg.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
