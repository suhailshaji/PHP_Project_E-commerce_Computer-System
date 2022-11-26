-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 26, 2022 at 02:49 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cas`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('test@gmail.com', 'test'),
('test@gmail.com', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
CREATE TABLE IF NOT EXISTS `order_product` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`order_id`, `pid`, `userid`, `order_date`, `status`) VALUES
(11, 21, 3, '2022-11-26', 'completed'),
(10, 18, 3, '2022-11-26', 'accept'),
(9, 16, 3, '2022-11-26', 'shipped'),
(14, 18, 3, '2022-11-26', 'recived'),
(15, 20, 3, '2022-11-26', 'accept'),
(17, 16, 3, '2022-11-26', 'recived');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `model` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `des` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `p_status` varchar(20) NOT NULL,
  `created_date` date NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `product_name`, `model`, `brand`, `price`, `des`, `image`, `p_status`, `created_date`) VALUES
(16, 'Mouse', 'mouse 2', 'jnn', 446, 'ghtht', 'product2.png', 'Active', '2022-11-26'),
(19, 'Hard Disk 1TB', 'WD Drive', 'Wd ', 3800, 'Hard Disk ', 'product6.png', 'Active', '2022-11-26'),
(18, 'Web Cam', 'Intel', 'Cam 2.0', 1000, 'intel Web cam 2.022', 'product3.png', 'Active', '2022-11-26'),
(17, 'RAM', 'DDR', 'Intel', 2500, 'inetl Ram DDR2', 'product7.png', 'Active', '2022-11-26'),
(20, 'Dlink Router', 'Dlink Router', 'Dlink', 1800, 'DLink Router 4G', 'product5.png', 'Active', '2022-11-26'),
(21, 'Keyboard', 'Intel keyboard', 'Intel', 850, 'Keyboard Wired', 'product1.png', 'Active', '2022-11-26');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) NOT NULL,
  `name` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `created_date` date NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `email`, `mobile`, `name`, `city`, `address`, `password`, `created_date`) VALUES
(4, 'suhailshajidgeg@gmail.com', '456767', 'fgfh', 'Kottayam', 'kottayam', 'rgreg', '2022-11-26'),
(3, 'suhailshaji@gmail.com', '9961049442', 'Suhail Syjyjhaji', 'Kottayam', 'kottayamyjyjyj', 'test', '2022-11-26');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
