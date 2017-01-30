-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2016 at 02:57 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `user_pass` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `user_fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_mname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` int(1) NOT NULL,
  `deactivated` int(1) NOT NULL,
  `user_num` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`user_pass`, `user_fname`, `user_lname`, `user_mname`, `user_type`, `deactivated`, `user_num`, `user_mail`, `id`) VALUES
('default', 'default', 'default', 'default', 1, 0, 'default', 'default', 1),
('$2y$10$NmSoR6r0BevK84HmOZ4dvOz0kqe9WPgIyoBLIIH47NTfYgPazpHBe', 'Jimuel', 'Palaca', 'Bulanadi', 1, 0, '+(639) 50-108-0143', 'jimuelpalaca06@gmail.com', 2),
('$2y$10$s112lTenzgF/gNTvINKv.uq2tRqwuFwk.NwZecWUBtzSzjV8K2J6a', 'Genesis', 'Pungasi', 'Monte', 2, 0, '+(639) 19-345-4480', 'genchancer056@gmail.com', 3),
('$2y$10$0cCD8EX7eNl9AGeBJRoLhOpdGhcQzRQrKg2Sb4PeS/CHCXjfFh0uW', 'Marcus Earl', 'Usita', 'Corpuz', 3, 0, '+(631) 94-552-8852', 'marcusearlusita@yahoo.com', 4),
('$2y$10$m/DYwjv4J5AxD7FxbJGliOrh7rpnvPRLovJRuIkW6LVlCrIbAPi82', 'Izamari', 'Masangcay', 'Masangkay', 2, 0, '+(639) 19-345-4480', 'ichimakati@gmail.com', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `verified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cart_id`, `user_id`, `verified`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_item`
--

CREATE TABLE `tbl_cart_item` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `product_price` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_qnty` int(10) NOT NULL,
  `delivery_status` int(1) NOT NULL,
  `product_src` text COLLATE utf8_unicode_ci NOT NULL,
  `removed` int(1) NOT NULL,
  `order_id` text COLLATE utf8_unicode_ci NOT NULL,
  `cart_viewable` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_cart_item`
--

INSERT INTO `tbl_cart_item` (`cart_id`, `product_id`, `product_name`, `product_desc`, `product_price`, `product_qnty`, `delivery_status`, `product_src`, `removed`, `order_id`, `cart_viewable`) VALUES
(1, 84, 'Anak Ng Pasig', 'Description', '1222', 1, 0, 'p9.jpg', 1, 'GEQ6MFU41TU2TY5', 1),
(1, 85, 'Juvenile''s Faith', 'The painting illustrates the hope and faith of the children from curing their illness despite from suffering. Suffocations of those persons who lives in urban places causes of harmful vehicles that produces harmful smokes.  ', '23000', 1, 0, 'p4.JPG', 1, 'UPQKEH0GBUCOBRG', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_history`
--

CREATE TABLE `tbl_history` (
  `History` text COLLATE utf8_unicode_ci NOT NULL,
  `id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_history`
--

INSERT INTO `tbl_history` (`History`, `id`) VALUES
('Chiaroscuro Artworks and Gallery Shop was built by Mr. Sierra Salvador together with his wife Mrs. Gina Salvador in Starmall, City of San Jose Del Monte, Bulacan. Thank You!', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `login_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vCode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `complete` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `user_id`, `total_amount`, `order_date`, `status`, `login_id`, `vCode`, `complete`) VALUES
('ANC13ZSNMZ5XVAS', 1, '', '', '', 'ORVWQMSMAJ629MQ', '', 0),
('GEQ6MFU41TU2TY5', 1, '', '2016-03-17 04:28:46', 'Confirmed', 'ORVWQMSMAJ629MQ', 'LGPXAPNEMJ6ZFKY', 0),
('PH1TMYCZDMY8FKO', 1, '', '', '', 'X26OVAFZ68HK619', '', 0),
('TN4OWTR0ACEOFBK', 1, '', '', '', '7HZFQQY6O5E0ZRI', '', 0),
('UPQKEH0GBUCOBRG', 1, '', '2016-03-17 08:38:03', 'Confirmed', 'X26OVAFZ68HK619', 'Y03DOIC5BEFFBIX', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_item`
--

CREATE TABLE `tbl_order_item` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `product_price` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_qnty` int(10) NOT NULL,
  `order_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `login_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order_item`
--

INSERT INTO `tbl_order_item` (`id`, `product_id`, `product_name`, `product_desc`, `product_price`, `product_qnty`, `order_id`, `login_id`) VALUES
(11, 84, 'Anak Ng Pasig', 'Description', '1222', 1, 'GEQ6MFU41TU2TY5', 'ORVWQMSMAJ629MQ'),
(12, 85, 'Juvenile''s Faith', 'The painting illustrates the hope and faith of the children from curing their illness despite from suffering. Suffocations of those persons who lives in urban places causes of harmful vehicles that produces harmful smokes.  ', '23000', 1, 'UPQKEH0GBUCOBRG', 'X26OVAFZ68HK619');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paintings`
--

CREATE TABLE `tbl_paintings` (
  `paint_id` int(11) NOT NULL,
  `paint_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paint_desc` text COLLATE utf8_unicode_ci,
  `paint_price` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paint_status` int(1) NOT NULL,
  `deleted` int(1) NOT NULL,
  `qnty` int(10) NOT NULL,
  `paint_imgsrc` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_paintings`
--

INSERT INTO `tbl_paintings` (`paint_id`, `paint_name`, `paint_desc`, `paint_price`, `paint_status`, `deleted`, `qnty`, `paint_imgsrc`) VALUES
(84, 'Anak Ng Pasig', 'Description', '1222', 2, 0, 0, 'p9.jpg'),
(85, 'Juvenile''s Faith', 'The painting illustrates the hope and faith of the children from curing their illness despite from suffering. Suffocations of those persons who lives in urban places causes of harmful vehicles that produces harmful smokes.  ', '23000', 1, 0, 0, 'p4.JPG'),
(87, 'Pangarap Mo, Pangarap Ko  ', 'The painting symbolizes the child’s faith for their place to have bountiful and abundant trees and crops to harvest. Shows the threat to youth that one day they would not be able to harvest plants because technology is rising globally.', '9000', 1, 0, 1, 'p5.jpg'),
(88, 'Interweaving Earth', 'The painting signifies the shattered earth due to global changes. Interlacing by hope that the children represents. As of now our country experienced climate changes that causes of irresponsible actions such as illegal logging, forest fire (Kaingin), shows that, youth is one of the key to make the world better.', '45000', 1, 0, 1, 'p11.JPG'),
(89, 'Batang Tinapay', 'The portrait represents absence of the proper needs of the child which represents the poverty and scarceness of the Filipino people. ', '8000', 1, 0, 1, 'p6.jpg'),
(90, 'Deep Well', 'The portrait denotes the strong will and endurance of Filipino children despite of the infrequent supply of their needs by the government. When it comes in political issues, the purpose of this painting is for having an accurate and fast actions for those people who suffers on lack of water supplies especially to those persons who lives in rural places. ', '11000', 1, 0, 1, 'b2.jpg'),
(91, 'Batang Lobo', 'The painting represents the colorful and cheerful life the child wish embodies by a bubble.', '9500', 1, 0, 1, 'p1.JPG'),
(92, 'Take-It-Out', 'The portrait signifies the ease of acquiring food. The burger and the car embodies the take-out order, day or night and the child represents everyone who take pleasure to it.', '12500', 1, 0, 1, 'l3.JPG'),
(93, 'Simbolo Ng Pagasa', 'The painting represents the hope of a Filipino people before, during and even after the storm embodies by a white flower and a child. Shows in our near future, are the children is able to see beautiful things like flowers and butterflies if tall buildings and constructions blocks it. ', '6500', 1, 0, 1, 'p7.jpg'),
(94, 'Out-of-Service', 'The painting represents the service of the government official to the Filipino people in times of needs. Politics have care when they run in their.', '13000', 1, 0, 1, 'p15.jpg'),
(95, 'Mother And Daughter', 'The painting signifies the Filipino teaching of mother molding her child in GODs word.', '13000', 1, 0, 1, 'p18.jpg'),
(96, 'Millpond', 'The painting represents the peacefulness, rich and plentiful blessing of our nature provided us.', '14500', 1, 0, 1, 'p17.jpg'),
(97, 'Dying Girl ', 'The painting represents every Filipino children who is suffering from an illness embodies by the bear aiding and supporting by their friend.', '15000', 1, 0, 1, 'p10.jpg'),
(98, 'The Filipino Formations', 'The portrait symbolizes the creativeness of Filipino people. Creating things from junk to unique and worthy formations. Hard work of a persons have the ability to produce his/her needs. ', '23000', 1, 0, 1, 'p8.jpg'),
(99, 'Bayanihan', 'The painting represents the Bayanihan of Filipino people. Helping each other in times of needs. Bayanihan is the key to have a peaceful and progress country.', '16000', 1, 0, 1, 'p14.jpg'),
(100, 'Papunta Ka Pa,Pabalik Na Ko', 'The painting represents the start and end of one’s journey that brings change and hope to other people’s life.', '17000', 1, 0, 1, 'p16.JPG'),
(101, 'Peace And Love', 'The painting represents the desire of peace and love to all nations embodies by the child and a white dove.', '18000', 1, 0, 1, 'p3.JPG'),
(102, 'Waiting Shade', 'The painting represents the postponement of government project to bring public change. People symbolizes the Filipino who still waiting for change.', '19000', 1, 0, 1, 'l2.JPG'),
(103, 'Peace, Not War', 'The portrait represents the peace and love of people for the world', '20000', 1, 0, 1, 'p2.JPG'),
(104, 'Extant Earth (present Earth)', 'The portrait represents the earth as the inflated plastic globe and the path that embodies the glitches that leads the damage of it. Human Child holding a bush that characterizes hope and growth for the earth.', '22000', 1, 0, 1, 'l5.JPG'),
(105, 'Public Food ', 'The portrait represents a pending project of the government for street children. Those street children have the right to eat properly, only if government didn’t corrupt  funds that for them.', '23000', 1, 0, 1, 'p13.jpg'),
(106, 'Public Service Not Available', 'The painting represents the out-of-service project of the Government from the people taxes.  Government easily get money from our hardworking laborers/ workers that mostly produces efforts to contribute to our country.', '24000', 1, 0, 1, 'p12.jpg'),
(107, 'Exultant- Demise (happy-death)', 'The portrait signify the service that the government provide. The container embodies the government project, the vehicle without wheels represent the sluggish action, and the human above characterizes the hassle-free officials.', '25000', 1, 0, 1, 'b3.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portrait`
--

CREATE TABLE `tbl_portrait` (
  `port_id` int(11) NOT NULL,
  `port_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `port_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `port_price` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `port_imgsrc` text COLLATE utf8_unicode_ci NOT NULL,
  `port_status` int(1) NOT NULL,
  `deleted` int(1) NOT NULL,
  `qnty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_portrait`
--

INSERT INTO `tbl_portrait` (`port_id`, `port_name`, `port_desc`, `port_price`, `port_imgsrc`, `port_status`, `deleted`, `qnty`) VALUES
(1, 'Batang Lobo', 'Okay nahanap ko na yung error :)Penge\r\n', '5000', 'p20.jpg', 1, 0, 1),
(2, 'Aa', 'Aaaa', '2000', 'b3.JPG', 1, 0, 0),
(3, 'Globong Wakas', 'Md5(''description'')', '1000', 'p11.JPG', 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_log`
--

CREATE TABLE `tbl_product_log` (
  `log_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `transact_dateTime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activity` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sculpture`
--

CREATE TABLE `tbl_sculpture` (
  `sculp_id` int(11) NOT NULL,
  `sculp_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sculp_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `sculp_price` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sculp_imgsrc` text COLLATE utf8_unicode_ci NOT NULL,
  `sculp_status` int(1) NOT NULL,
  `deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_sculpture`
--

INSERT INTO `tbl_sculpture` (`sculp_id`, `sculp_name`, `sculp_desc`, `sculp_price`, `sculp_imgsrc`, `sculp_status`, `deleted`) VALUES
(0, 'Berger', 'As', '1,000', 'p11.JPG', 2, 0),
(1, 'edi wow', 'asd', '900', 'b1.jpg', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings_indexpage`
--

CREATE TABLE `tbl_settings_indexpage` (
  `id` int(11) NOT NULL,
  `bnnr_head` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bnnr_subhead` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bnnr_info` text COLLATE utf8_unicode_ci NOT NULL,
  `ftre1_head` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ftre1_info` text COLLATE utf8_unicode_ci NOT NULL,
  `ftre2_head` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ftre2_info` text COLLATE utf8_unicode_ci NOT NULL,
  `ftre3_head` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ftre3_info` text COLLATE utf8_unicode_ci NOT NULL,
  `prdct1_imgsrc` text COLLATE utf8_unicode_ci NOT NULL,
  `prdct1_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prdct2_imgsrc` text COLLATE utf8_unicode_ci NOT NULL,
  `prdct2_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prdct3_imgsrc` text COLLATE utf8_unicode_ci NOT NULL,
  `prdct3_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tag_head` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tag_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `tag_btnTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_settings_indexpage`
--

INSERT INTO `tbl_settings_indexpage` (`id`, `bnnr_head`, `bnnr_subhead`, `bnnr_info`, `ftre1_head`, `ftre1_info`, `ftre2_head`, `ftre2_info`, `ftre3_head`, `ftre3_info`, `prdct1_imgsrc`, `prdct1_category`, `prdct2_imgsrc`, `prdct2_category`, `prdct3_imgsrc`, `prdct3_category`, `tag_head`, `tag_detail`, `tag_btnTitle`) VALUES
(1, 'Easiest Way To Buy Artworks', 'Million Of Artworks', 'This is where you can find different world class paintings', 'Million of paintings and artworks', 'We can convert a photo into a painting', 'Painting with heart', 'We express our feelings via ART.', 'Painting with judgement', 'We can paint with messages that will touch your heart', 'p6.jpg', 'Painting - Landscape', 'p6.jpg', 'Painting - Box Type', 'p9.jpg', 'Painting - Portrait', 'Become a part', '--//default//--\nLorem ipsum dolor sit amet, consectet ur adipiscing elit. Donec id augue inextrum facilisis. Nam dui elit, feugiat non luctus vitae, commodo rutrum dui sollicitudin veneluctus iaculis augue et iaculis', 'Find out more');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `user_pass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_fname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_lname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_mname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_gender` int(1) DEFAULT NULL,
  `user_type` int(1) NOT NULL,
  `deactivated` int(1) NOT NULL,
  `user_num` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `recovery_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `addr_imgsrc` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `user_pass`, `user_fname`, `user_lname`, `user_mname`, `user_gender`, `user_type`, `deactivated`, `user_num`, `user_mail`, `recovery_code`, `addr_imgsrc`) VALUES
(1, '$2y$10$RLa9AfeRNp8U.dW8sRyMqOIoKXv8eSMh0DAt8U0Wm4yVaWojab9Gm', 'Jimuel', 'Palaca', 'Bulanadi', NULL, 4, 0, '+(639) 50-108-0143', 'jimuelpalaca06@gmail.com', '80HMXZMWEYD9TKK', 'a.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_log`
--

CREATE TABLE `tbl_user_log` (
  `log_id` int(11) NOT NULL,
  `user_email` text COLLATE utf8_unicode_ci NOT NULL,
  `Time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL,
  `user_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user_log`
--

INSERT INTO `tbl_user_log` (`log_id`, `user_email`, `Time`, `Date`, `activity`, `deleted`, `user_type`) VALUES
(76, 'jimuelpalaca06@gmail.com', '02:59:26', '03/16/2016', 'Login', 0, 2),
(77, 'jimuelpalaca06@gmail.com', '02:59:48', '03/16/2016', 'Added new painting. Name:Anak Ng Pasig', 0, 2),
(78, 'jimuelpalaca06@gmail.com', '03:00:06', '03/16/2016', 'Modified existing painting. Name:Anak Ng Pasig', 0, 2),
(79, 'jimuelpalaca06@gmail.com', '03:00:26', '03/16/2016', 'Delete existing painting. Name:Anak Ng Pasig, Recoverable: true', 0, 2),
(80, 'jimuelpalaca06@gmail.com', '03:00:41', '03/16/2016', 'Restore deleted painting. Name:Anak Ng Pasig', 0, 2),
(81, 'jimuelpalaca06@gmail.com', '04:02:17', '03/16/2016', 'Logout', 0, 2),
(82, 'jimuelpalaca06@gmail.com', '15:58:19', '03/16/2016', 'Login', 0, 2),
(83, 'jimuelpalaca06@gmail.com', '16:04:29', '03/16/2016', 'Added new painting. Name:Juvenile''s Faith', 0, 2),
(84, 'jimuelpalaca06@gmail.com', '16:06:03', '03/16/2016', 'Added new painting. Name:Pangarap Mo, Pangarap Ko  ', 0, 2),
(85, 'jimuelpalaca06@gmail.com', '16:06:49', '03/16/2016', 'Added new painting. Name:Interweaving Earth', 0, 2),
(86, 'jimuelpalaca06@gmail.com', '16:07:31', '03/16/2016', 'Added new painting. Name:Batang Tinapay', 0, 2),
(87, 'jimuelpalaca06@gmail.com', '16:08:04', '03/16/2016', 'Added new painting. Name:Deep Well', 0, 2),
(88, 'jimuelpalaca06@gmail.com', '16:09:02', '03/16/2016', 'Added new painting. Name:Batang Lobo', 0, 2),
(89, 'jimuelpalaca06@gmail.com', '16:13:16', '03/16/2016', 'Added new painting. Name:Take-It-Out', 0, 2),
(90, 'jimuelpalaca06@gmail.com', '16:15:28', '03/16/2016', 'Added new painting. Name:Simbolo Ng Pagasa', 0, 2),
(91, 'jimuelpalaca06@gmail.com', '19:40:01', '03/16/2016', 'Login', 0, 4),
(92, 'jimuelpalaca06@gmail.com', '19:40:27', '03/16/2016', 'Logout', 0, 4),
(93, 'jimuelpalaca06@gmail.com', '21:06:48', '03/16/2016', 'Login', 0, 2),
(94, 'jimuelpalaca06@gmail.com', '21:09:23', '03/16/2016', 'Logout', 0, 2),
(95, 'jimuelpalaca06@gmail.com', '22:33:54', '03/16/2016', 'Login', 0, 4),
(96, 'jimuelpalaca06@gmail.com', '22:41:03', '03/16/2016', 'Logout', 0, 4),
(97, 'jimuelpalaca06@gmail.com', '00:08:46', '03/17/2016', 'Login', 0, 4),
(98, 'jimuelpalaca06@gmail.com', '00:08:48', '03/17/2016', 'Logout', 0, 4),
(99, 'jimuelpalaca06@gmail.com', '00:19:44', '03/17/2016', 'Login', 0, 4),
(100, 'jimuelpalaca06@gmail.com', '00:19:46', '03/17/2016', 'Logout', 0, 4),
(101, 'jimuelpalaca06@gmail.com', '01:22:05', '03/17/2016', 'Login', 0, 2),
(102, 'jimuelpalaca06@gmail.com', '01:44:06', '03/17/2016', 'Logout', 0, 2),
(103, 'jimuelpalaca06@gmail.com', '01:44:18', '03/17/2016', 'Login', 0, 4),
(104, 'jimuelpalaca06@gmail.com', '02:23:33', '03/17/2016', 'Logout', 0, 4),
(105, 'jimuelpalaca06@gmail.com', '02:23:45', '03/17/2016', 'Login', 0, 2),
(106, 'jimuelpalaca06@gmail.com', '02:25:21', '03/17/2016', 'Logout', 0, 2),
(107, 'jimuelpalaca06@gmail.com', '02:26:01', '03/17/2016', 'Login', 0, 4),
(108, 'jimuelpalaca06@gmail.com', '02:27:28', '03/17/2016', 'Logout', 0, 4),
(109, 'jimuelpalaca06@gmail.com', '02:27:37', '03/17/2016', 'Login', 0, 2),
(110, 'jimuelpalaca06@gmail.com', '02:29:30', '03/17/2016', 'Logout', 0, 2),
(111, 'jimuelpalaca06@gmail.com', '02:29:43', '03/17/2016', 'Login', 0, 4),
(112, 'jimuelpalaca06@gmail.com', '02:30:25', '03/17/2016', 'Logout', 0, 4),
(113, 'jimuelpalaca06@gmail.com', '02:30:38', '03/17/2016', 'Login', 0, 2),
(114, 'jimuelpalaca06@gmail.com', '02:40:31', '03/17/2016', 'Logout', 0, 2),
(115, 'jimuelpalaca06@gmail.com', '02:40:45', '03/17/2016', 'Login', 0, 4),
(116, 'jimuelpalaca06@gmail.com', '02:41:35', '03/17/2016', 'Logout', 0, 4),
(117, 'jimuelpalaca06@gmail.com', '02:41:46', '03/17/2016', 'Login', 0, 2),
(118, 'jimuelpalaca06@gmail.com', '03:45:28', '03/17/2016', 'Disposed an order. ID:03GFQOKW327XP50', 0, 2),
(119, 'jimuelpalaca06@gmail.com', '04:20:18', '03/17/2016', 'Logout', 0, 2),
(120, 'jimuelpalaca06@gmail.com', '04:28:24', '03/17/2016', 'Login', 0, 4),
(121, 'jimuelpalaca06@gmail.com', '04:29:33', '03/17/2016', 'Logout', 0, 4),
(122, 'jimuelpalaca06@gmail.com', '04:29:47', '03/17/2016', 'Login', 0, 2),
(123, 'jimuelpalaca06@gmail.com', '04:30:12', '03/17/2016', 'Logout', 0, 2),
(124, 'jimuelpalaca06@gmail.com', '04:35:15', '03/17/2016', 'Login', 0, 2),
(125, 'jimuelpalaca06@gmail.com', '04:35:18', '03/17/2016', 'Logout', 0, 2),
(126, 'jimuelpalaca06@gmail.com', '08:32:41', '03/17/2016', 'Login', 0, 2),
(127, 'jimuelpalaca06@gmail.com', '08:33:38', '03/17/2016', 'Disposed an order. ID:GEQ6MFU41TU2TY5', 0, 2),
(128, 'jimuelpalaca06@gmail.com', '08:33:57', '03/17/2016', 'Logout', 0, 2),
(129, 'jimuelpalaca06@gmail.com', '08:35:59', '03/17/2016', 'Login', 0, 4),
(130, 'jimuelpalaca06@gmail.com', '08:36:10', '03/17/2016', 'Logout', 0, 4),
(131, 'jimuelpalaca06@gmail.com', '08:37:08', '03/17/2016', 'Login', 0, 4),
(132, 'jimuelpalaca06@gmail.com', '08:39:26', '03/17/2016', 'Logout', 0, 2),
(133, 'jimuelpalaca06@gmail.com', '10:00:35', '03/17/2016', 'Login', 0, 2),
(134, 'jimuelpalaca06@gmail.com', '10:05:30', '03/17/2016', 'Added new painting. Name:Waiting Shade', 0, 2),
(135, 'jimuelpalaca06@gmail.com', '10:06:05', '03/17/2016', 'Added new painting. Name:Mother And Daughter', 0, 2),
(136, 'jimuelpalaca06@gmail.com', '10:07:50', '03/17/2016', 'Modified existing painting. Name:Out-of-Service', 0, 2),
(137, 'jimuelpalaca06@gmail.com', '10:08:30', '03/17/2016', 'Added new painting. Name:Millpond', 0, 2),
(138, 'jimuelpalaca06@gmail.com', '10:09:20', '03/17/2016', 'Added new painting. Name:Dying Girl ', 0, 2),
(139, 'jimuelpalaca06@gmail.com', '10:10:08', '03/17/2016', 'Added new painting. Name:The Filipino Formations', 0, 2),
(140, 'jimuelpalaca06@gmail.com', '10:10:58', '03/17/2016', 'Added new painting. Name:Bayanihan', 0, 2),
(141, 'jimuelpalaca06@gmail.com', '10:11:41', '03/17/2016', 'Added new painting. Name:Papunta Ka Palang, Pabalik Na Ko', 0, 2),
(142, 'jimuelpalaca06@gmail.com', '10:12:25', '03/17/2016', 'Added new painting. Name:Peace And Love', 0, 2),
(143, 'jimuelpalaca06@gmail.com', '10:13:21', '03/17/2016', 'Added new painting. Name:Waiting Shade', 0, 2),
(144, 'jimuelpalaca06@gmail.com', '10:14:33', '03/17/2016', 'Added new painting. Name:Peace, Not War', 0, 2),
(145, 'jimuelpalaca06@gmail.com', '10:15:19', '03/17/2016', 'Added new painting. Name:Extant Earth (present Earth)', 0, 2),
(146, 'jimuelpalaca06@gmail.com', '10:15:59', '03/17/2016', 'Added new painting. Name:Public Food ', 0, 2),
(147, 'jimuelpalaca06@gmail.com', '10:16:44', '03/17/2016', 'Added new painting. Name:Public Service Not Available', 0, 2),
(148, 'jimuelpalaca06@gmail.com', '10:18:08', '03/17/2016', 'Added new painting. Name:Exultant- Demise (happy-death)', 0, 2),
(149, 'jimuelpalaca06@gmail.com', '10:19:31', '03/17/2016', 'Modified existing painting. Name:Papunta Ka Pa,Pabalik Na Ko', 0, 2),
(150, 'genchancer056@gmail.com', '13:26:00', '03/17/2016', 'Login', 0, 2),
(151, 'genchancer056@gmail.com', '13:28:11', '03/17/2016', 'Logout', 0, 2),
(152, 'jimuelpalaca06@gmail.com', '13:29:33', '03/17/2016', 'Login', 0, 2),
(153, 'jimuelpalaca06@gmail.com', '13:32:25', '03/17/2016', 'Delete existing painting. Name:Anak Ng Pasig, Recoverable: true', 0, 2),
(154, 'jimuelpalaca06@gmail.com', '13:33:03', '03/17/2016', 'Restore deleted painting. Name:Anak Ng Pasig', 0, 2),
(155, 'jimuelpalaca06@gmail.com', '20:56:11', '03/28/2016', 'Login', 0, 2),
(156, 'jimuelpalaca06@gmail.com', '20:56:32', '03/28/2016', 'Logout', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_verify`
--

CREATE TABLE `tbl_verify` (
  `order_id` int(11) NOT NULL,
  `verification_code` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_cart_item`
--
ALTER TABLE `tbl_cart_item`
  ADD UNIQUE KEY `product_id` (`product_id`);

--
-- Indexes for table `tbl_history`
--
ALTER TABLE `tbl_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_item`
--
ALTER TABLE `tbl_order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_paintings`
--
ALTER TABLE `tbl_paintings`
  ADD PRIMARY KEY (`paint_id`),
  ADD UNIQUE KEY `paint_imgsrc` (`paint_imgsrc`),
  ADD UNIQUE KEY `paint_name` (`paint_name`);

--
-- Indexes for table `tbl_portrait`
--
ALTER TABLE `tbl_portrait`
  ADD PRIMARY KEY (`port_id`);

--
-- Indexes for table `tbl_product_log`
--
ALTER TABLE `tbl_product_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `tbl_sculpture`
--
ALTER TABLE `tbl_sculpture`
  ADD PRIMARY KEY (`sculp_id`);

--
-- Indexes for table `tbl_settings_indexpage`
--
ALTER TABLE `tbl_settings_indexpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_mail` (`user_mail`);

--
-- Indexes for table `tbl_user_log`
--
ALTER TABLE `tbl_user_log`
  ADD PRIMARY KEY (`log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_order_item`
--
ALTER TABLE `tbl_order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_paintings`
--
ALTER TABLE `tbl_paintings`
  MODIFY `paint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `tbl_portrait`
--
ALTER TABLE `tbl_portrait`
  MODIFY `port_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_product_log`
--
ALTER TABLE `tbl_product_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_user_log`
--
ALTER TABLE `tbl_user_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
