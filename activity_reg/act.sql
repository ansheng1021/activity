-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-07-02 14:30:01
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `act`
--

-- --------------------------------------------------------

--
-- 表的结构 `act_`
--

CREATE TABLE `act_` (
  `id` int(11) NOT NULL,
  `act_name` varchar(255) NOT NULL COMMENT '活动名称',
  `act_start_time` datetime NOT NULL COMMENT '开始时间',
  `act_end_time` datetime NOT NULL COMMENT '结束时间',
  `act_lat` varchar(255) NOT NULL COMMENT '经度',
  `act_lng` varchar(255) NOT NULL COMMENT '纬度',
  `act_place` varchar(255) NOT NULL COMMENT '活动地点',
  `act_description` varchar(255) NOT NULL COMMENT '活动介绍',
  `act_creater` varchar(255) NOT NULL,
  `act_create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='活动表';

--
-- 转存表中的数据 `act_`
--

INSERT INTO `act_` (`id`, `act_name`, `act_start_time`, `act_end_time`, `act_lat`, `act_lng`, `act_place`, `act_description`, `act_creater`, `act_create_time`) VALUES
(3, '123', '2019-07-02 00:00:00', '2019-08-02 00:00:00', '39.90374', '116.397827', '北京市东城区东长安街天安门广场', '123', 'admin', '2019-07-02 22:18:06'),
(2, '123', '2019-07-02 00:00:00', '2019-08-02 00:00:00', '39.90374', '116.397827', '北京市东城区东长安街天安门广场', '123', 'admin', '2019-07-02 22:15:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `act_`
--
ALTER TABLE `act_`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `act_`
--
ALTER TABLE `act_`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
