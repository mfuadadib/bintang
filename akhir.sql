-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2015 at 12:38 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `akhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('41ce9222340c78b44d3b56cc3fd9e551', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36', 1431868912, ''),
('6bafe4f19e07e2f8ac6422799749bc79', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 1431986004, 'a:12:{s:9:"user_data";s:0:"";s:12:"developer_id";s:1:"2";s:15:"developer_uname";s:7:"bintang";s:13:"developer_pwd";s:32:"801dc3c9e3bcd2a3cf428f3b79b312b6";s:14:"developer_name";s:7:"bintang";s:15:"developer_email";s:21:"bintang.dev@gmail.com";s:16:"developer_kontak";s:0:"";s:17:"developer_address";s:0:"";s:13:"developer_bio";s:0:"";s:15:"developer_image";s:0:"";s:26:"developer_theme_collection";s:1:"0";s:19:"developer_logged_in";b:1;}'),
('75f6c26ae3f4621e164326f3147dce34', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36', 1431523824, 'a:12:{s:9:"user_data";s:0:"";s:12:"developer_id";s:1:"2";s:15:"developer_uname";s:7:"bintang";s:13:"developer_pwd";s:32:"801dc3c9e3bcd2a3cf428f3b79b312b6";s:14:"developer_name";s:7:"bintang";s:15:"developer_email";s:21:"bintang.dev@gmail.com";s:16:"developer_kontak";s:0:"";s:17:"developer_address";s:0:"";s:13:"developer_bio";s:0:"";s:15:"developer_image";s:0:"";s:26:"developer_theme_collection";s:1:"0";s:19:"developer_logged_in";b:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `nm_approvals`
--

CREATE TABLE IF NOT EXISTS `nm_approvals` (
  `approval_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval_date` date NOT NULL,
  `approval_total` int(10) NOT NULL,
  `approval_message` text NOT NULL,
  `approval_status` int(1) NOT NULL,
  `request_id` varchar(10) NOT NULL,
  PRIMARY KEY (`approval_id`),
  KEY `request_id` (`request_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `nm_approvals`
--

INSERT INTO `nm_approvals` (`approval_id`, `approval_date`, `approval_total`, `approval_message`, `approval_status`, `request_id`) VALUES
(8, '2015-05-13', 0, ' ', 1, 'RQ21268261');

-- --------------------------------------------------------

--
-- Table structure for table `nm_customers`
--

CREATE TABLE IF NOT EXISTS `nm_customers` (
  `customer_id` int(4) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(32) NOT NULL,
  `customer_uname` varchar(12) NOT NULL,
  `customer_pwd` varchar(32) NOT NULL,
  `customer_phone` varchar(12) NOT NULL,
  `customer_email` varchar(32) NOT NULL,
  `customer_address` text NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nm_customers`
--

INSERT INTO `nm_customers` (`customer_id`, `customer_name`, `customer_uname`, `customer_pwd`, `customer_phone`, `customer_email`, `customer_address`) VALUES
(1, 'mabrur roh bintang jaya', 'jaya', 'ce9689abdeab50b5bee3b56c7aadee27', '085729353517', 'm.rohbintang@ymail.com', 'sewon,timbuharjo,sewon,bantul');

-- --------------------------------------------------------

--
-- Table structure for table `nm_developers`
--

CREATE TABLE IF NOT EXISTS `nm_developers` (
  `developer_id` int(10) NOT NULL AUTO_INCREMENT,
  `developer_uname` varchar(12) NOT NULL,
  `developer_pwd` varchar(32) NOT NULL,
  `developer_name` varchar(32) NOT NULL,
  `developer_email` varchar(32) NOT NULL,
  `developer_kontak` varchar(32) NOT NULL,
  `developer_address` text NOT NULL,
  `developer_bio` text NOT NULL,
  `developer_image` varchar(32) NOT NULL,
  `developer_theme_collection` int(11) NOT NULL,
  PRIMARY KEY (`developer_id`),
  UNIQUE KEY `developer_uname` (`developer_uname`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `nm_developers`
--

INSERT INTO `nm_developers` (`developer_id`, `developer_uname`, `developer_pwd`, `developer_name`, `developer_email`, `developer_kontak`, `developer_address`, `developer_bio`, `developer_image`, `developer_theme_collection`) VALUES
(2, 'bintang', '801dc3c9e3bcd2a3cf428f3b79b312b6', 'bintang', 'bintang.dev@gmail.com', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nm_orders`
--

CREATE TABLE IF NOT EXISTS `nm_orders` (
  `order_id` varchar(12) NOT NULL,
  `customer_id` int(4) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `buyers_id` (`customer_id`),
  KEY `buy_date` (`order_date`),
  KEY `payment_id` (`payment_id`),
  KEY `payment_id_2` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_orders`
--

INSERT INTO `nm_orders` (`order_id`, `customer_id`, `payment_id`, `order_date`) VALUES
('OR11212313', 1, 1, '2015-01-13'),
('OR114134114', 1, 3, '2015-01-15'),
('OR114135617', 1, 4, '2015-01-15'),
('OR11452918', 1, 2, '2015-01-15');

-- --------------------------------------------------------

--
-- Table structure for table `nm_order_detail`
--

CREATE TABLE IF NOT EXISTS `nm_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(12) NOT NULL,
  `theme_id` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `theme_id` (`theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nm_payments`
--

CREATE TABLE IF NOT EXISTS `nm_payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_date` date NOT NULL,
  `payment_total` int(11) NOT NULL,
  `payment_message` text NOT NULL,
  `payment_status` int(1) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `nm_payments`
--

INSERT INTO `nm_payments` (`payment_id`, `payment_date`, `payment_total`, `payment_message`, `payment_status`) VALUES
(1, '0000-00-00', 20000, '', 0),
(2, '0000-00-00', 20000, '', 0),
(3, '0000-00-00', 80000, '', 0),
(4, '0000-00-00', 130000, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nm_requests`
--

CREATE TABLE IF NOT EXISTS `nm_requests` (
  `request_id` varchar(10) NOT NULL,
  `theme_id` varchar(11) NOT NULL,
  `request_date` date NOT NULL,
  `request_status` int(1) NOT NULL,
  PRIMARY KEY (`request_id`),
  KEY `invitation_id` (`theme_id`),
  KEY `invitation_id_2` (`theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_requests`
--

INSERT INTO `nm_requests` (`request_id`, `theme_id`, `request_date`, `request_status`) VALUES
('RQ21268261', 'TH212682615', '2015-05-07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nm_theme`
--

CREATE TABLE IF NOT EXISTS `nm_theme` (
  `theme_id` varchar(11) NOT NULL,
  `theme_name` varchar(32) NOT NULL,
  `theme_description` text NOT NULL,
  `theme_preview` varchar(32) NOT NULL,
  `theme_images` varchar(40) NOT NULL,
  `theme_files` varchar(32) NOT NULL,
  `theme_category` varchar(32) NOT NULL,
  `theme_resolution` varchar(32) NOT NULL,
  `theme_widget` varchar(32) NOT NULL,
  `theme_compatibility` varchar(32) NOT NULL,
  `theme_framework` varchar(32) NOT NULL,
  `theme_wp_version` varchar(32) NOT NULL,
  `theme_files_included` varchar(32) NOT NULL,
  `theme_column` varchar(32) NOT NULL,
  `theme_layout` varchar(32) NOT NULL,
  `theme_demo_url` varchar(32) NOT NULL,
  `theme_usulan_harga` varchar(9) NOT NULL,
  `theme_tags` text NOT NULL,
  `theme_msg_reviewer` text NOT NULL,
  `theme_agrement` varchar(32) NOT NULL,
  `theme_status` int(1) NOT NULL,
  `theme_price` int(9) NOT NULL,
  `developer_id` int(10) NOT NULL,
  PRIMARY KEY (`theme_id`),
  KEY `developer_id` (`developer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_theme`
--

INSERT INTO `nm_theme` (`theme_id`, `theme_name`, `theme_description`, `theme_preview`, `theme_images`, `theme_files`, `theme_category`, `theme_resolution`, `theme_widget`, `theme_compatibility`, `theme_framework`, `theme_wp_version`, `theme_files_included`, `theme_column`, `theme_layout`, `theme_demo_url`, `theme_usulan_harga`, `theme_tags`, `theme_msg_reviewer`, `theme_agrement`, `theme_status`, `theme_price`, `developer_id`) VALUES
('TH212682615', 'karatok', ' lorem ipsum dolor si amet  lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n lorem ipsum dolor si amet \r\n \r\n', '', '', 'InstalasiThemeSandalJepit.zip', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1000000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nm_tickets`
--

CREATE TABLE IF NOT EXISTS `nm_tickets` (
  `id_ticket` int(10) NOT NULL AUTO_INCREMENT,
  `ticket_subjects` varchar(32) NOT NULL,
  `ticket_content` text NOT NULL,
  `ticket_date` date NOT NULL,
  `ticket_categories` varchar(65) NOT NULL,
  `developer_id` int(10) NOT NULL,
  PRIMARY KEY (`id_ticket`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nm_users`
--

CREATE TABLE IF NOT EXISTS `nm_users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL DEFAULT '',
  `user_username` varchar(50) NOT NULL,
  `user_password` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`user_email`),
  UNIQUE KEY `user_username` (`user_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `nm_users`
--

INSERT INTO `nm_users` (`user_id`, `user_name`, `user_email`, `user_username`, `user_password`) VALUES
(1, 'chandra1', 'chandra@gmail.com', 'phantom', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'indra', 'indra@gmail.com', 'indransyah', '21232f297a57a5a743894a0e4a801fc3'),
(11, 'mujib', 'mujib@gmail.com', 'iqbal', 'e10adc3949ba59abbe56e057f20f883e'),
(12, 'bintang', 'bintang@gmail.com', 'mabrur', 'e10adc3949ba59abbe56e057f20f883e'),
(13, 'april', 'april@gmail.com', 'shinra', 'e10adc3949ba59abbe56e057f20f883e'),
(14, 'kholiq', 'kholiq@gmail.com', 'ahmad', 'e10adc3949ba59abbe56e057f20f883e'),
(15, 'fahmi', 'fahmi@gmail.com', 'jundardo', 'e10adc3949ba59abbe56e057f20f883e'),
(16, 'hary', 'hary@gmail.com', 'alex', 'e10adc3949ba59abbe56e057f20f883e'),
(17, 'dani', 'dani@gmail.com', 'gendut', 'e10adc3949ba59abbe56e057f20f883e'),
(18, 'daus', 'daus@gmail.com', 'maho', 'e10adc3949ba59abbe56e057f20f883e'),
(19, 'agus', 'agus@gmail.com', 'mahobgt', 'e10adc3949ba59abbe56e057f20f883e'),
(20, 'riza', 'riza@gmail.com', 'samson', 'e10adc3949ba59abbe56e057f20f883e'),
(21, 'Administrator', 'admin@ngunduhmantu.com', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(22, 'karatok', 'karatok@gmail.com', 'karatok', '857cd27627f86e975df99a28c405500f');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nm_approvals`
--
ALTER TABLE `nm_approvals`
  ADD CONSTRAINT `nm_approvals_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `nm_requests` (`request_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nm_orders`
--
ALTER TABLE `nm_orders`
  ADD CONSTRAINT `nm_orders_ibfk_4` FOREIGN KEY (`customer_id`) REFERENCES `nm_customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nm_orders_ibfk_5` FOREIGN KEY (`payment_id`) REFERENCES `nm_payments` (`payment_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nm_order_detail`
--
ALTER TABLE `nm_order_detail`
  ADD CONSTRAINT `nm_order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `nm_orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nm_order_detail_ibfk_2` FOREIGN KEY (`theme_id`) REFERENCES `nm_theme` (`theme_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nm_requests`
--
ALTER TABLE `nm_requests`
  ADD CONSTRAINT `nm_requests_ibfk_4` FOREIGN KEY (`theme_id`) REFERENCES `nm_theme` (`theme_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nm_theme`
--
ALTER TABLE `nm_theme`
  ADD CONSTRAINT `nm_theme_ibfk_1` FOREIGN KEY (`developer_id`) REFERENCES `nm_developers` (`developer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
