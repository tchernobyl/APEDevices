-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 19, 2015 at 05:45 PM
-- Server version: 5.5.35
-- PHP Version: 5.5.9-1+sury.org~precise+1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `APEDevices`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand_brand`
--

CREATE TABLE IF NOT EXISTS `brand_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `short_description` text,
  `description` text,
  `name` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `brand_brand`
--

INSERT INTO `brand_brand` (`id`, `type`, `updated_at`, `created_at`, `short_description`, `description`, `name`) VALUES
(15, 'Samsung', '2015-08-18 18:38:25', '2015-08-10 16:12:55', 'Nullam tempor ultricies purus, et rhoncus ex varius varius. Etiam scelerisque ac eros ut faucibus. Vestibulum vitae ante quis ipsum tincidunt pretium. Suspendisse venenatis rutrum felis, ut hendrerit est porta quis. Aenean volutpat suscipit quam, in sollicitudin nibh imperdiet eget. Sed tincidunt, metus sit amet aliquet viverra, enim quam interdum nisl, vel gravida est nulla in magna. In fringilla ac metus pharetra lacinia. Morbi tempus metus magna, faucibus sodales nisi euismod non. Etiam in nulla venenatis,', 'Nullam tempor ultricies purus, et rhoncus ex varius varius. Etiam scelerisque ac eros ut faucibus. Vestibulum vitae ante quis ipsum tincidunt pretium. Suspendisse venenatis rutrum felis, ut hendrerit est porta quis. Aenean volutpat suscipit quam, in sollicitudin nibh imperdiet eget. Sed tincidunt, metus sit amet aliquet viverra, enim quam interdum nisl, vel gravida est nulla in magna. In fringilla ac metus pharetra lacinia. Morbi tempus metus magna, faucibus sodales nisi euismod non. Etiam in nulla venenatis,\nNullam tempor ultricies purus, et rhoncus ex varius varius. Etiam scelerisque ac eros ut faucibus. Vestibulum vitae ante quis ipsum tincidunt pretium. Suspendisse venenatis rutrum felis, ut hendrerit est porta quis. Aenean volutpat suscipit quam, in sollicitudin nibh imperdiet eget. Sed tincidunt, metus sit amet aliquet viverra, enim quam interdum nisl, vel gravida est nulla in magna. In fringilla ac metus pharetra lacinia. Morbi tempus metus magna, faucibus sodales nisi euismod non. Etiam in nulla venenatis,', 'Samsung'),
(16, 'Sharp', '2015-08-18 18:39:25', '2015-08-10 16:33:51', 'Nam lacus justo, sodales a odio id, lacinia vulputate purus', 'Nam lacus justo, sodales a odio id, lacinia vulputate purus. Donec eu nibh non metus condimentum semper a eu nulla. Donec posuere purus et nulla ornare tempus. Sed tristique ligula ut nulla lacinia semper. Fusce ac ullamcorper nunc. Donec vitae ante a velit sollicitudin dapibus porta interdum leo. Praesent et interdum lacus. Duis fringilla tortor vitae tempus aliquet. Sed eget leo justo. In a turpis mauris. Suspendisse potenti. Nunc lobortis nisi eget ipsum vulputate, eget pellentesque dui tempor. Quisque id ullamcorper neque. Integer lacinia congue nisl, volutpat ultricies ex. Etiam mauris odio, facilisis nec ipsum quis, venenatis volutpat diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 'Sharp'),
(24, 'nokia', '2015-08-18 18:39:40', '2015-08-11 11:52:25', 'nokia brand nokia brand', 'nokia brand nokia brand nokia brand nokia brand nokia brand nokia brand nokia brand nokia brand \nnokia brand nokia brand nokia brand nokia brand nokia brand nokia brand nokia brand nokia brand \nnokia brand nokia brand nokia brand nokia brand nokia brand nokia brand nokia brand nokia brand', 'Nokia'),
(25, 'Dell', '2015-08-18 18:40:07', '2015-08-11 14:46:38', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent placerat volutpat nisi id convallis. Pellentesque posuere libero vitae maximus aliquam. Quisque dapibus nibh vel ex lacinia lobortis. Integer tristique rhoncus lacus, quis viverra magna consequat sed. Nullam sit amet ex euismod, mollis metus ac, condimentum libero. Aenean faucibus eros nec urna molestie,', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent placerat volutpat nisi id convallis. Pellentesque posuere libero vitae maximus aliquam. Quisque dapibus nibh vel ex lacinia lobortis. Integer tristique rhoncus lacus, quis viverra magna consequat sed. Nullam sit amet ex euismod, mollis metus ac, condimentum libero. Aenean faucibus eros nec urna molestie, sit amet pharetra nibh accumsan. Morbi id sem pellentesque, consequat elit a, porta est. Donec consequat, augue ac placerat commodo, odio risus consequat mi, ac interdum mi mi et libero. Nam at porta eros, eget tincidunt est. Nam sit amet mollis ipsum. Pellentesque leo odio, dignissim ac velit vel, varius malesuada nibh. Nunc fermentum libero id massa eleifend suscipit. Phasellus posuere euismod hendrerit. Integer iaculis euismod lacus eu tincidunt.\n\nAenean viverra mattis elit. Praesent vehicula, orci vulputate luctus congue, arcu erat mollis ligula, ut rhoncus arcu justo nec ipsum. Etiam eros orci, laoreet quis erat id, mattis accumsan lorem. Vivamus in mattis eros. Donec mi quam, elementum sit amet malesuada at, vulputate vel nulla. Nullam turpis erat, ultricies at arcu nec, commodo ultricies felis. Sed at ultrices arcu. Morbi quis porta ex. Aliquam facilisis nunc sodales eros mattis dignissim. Nulla tellus quam, condimentum a maximus ultrices, egestas eget massa. Maecenas facilisis risus ac maximus aliquam. Etiam vulputate, leo vel mollis convallis, eros nulla porttitor ante, in elementum dui urna eget quam.\n\nNullam tempor ultricies purus, et rhoncus ex varius varius. Etiam scelerisque ac eros ut faucibus. Vestibulum vitae ante quis ipsum tincidunt pretium. Suspendisse venenatis rutrum felis, ut hendrerit est porta quis. Aenean volutpat suscipit quam, in sollicitudin nibh imperdiet eget. Sed tincidunt, metus sit amet aliquet viverra, enim quam interdum nisl, vel gravida est nulla in magna. In fringilla ac metus pharetra lacinia. Morbi tempus metus magna, faucibus sodales nisi euismod non. Etiam in nulla venenatis, pretium augue vel, dictum dui. Nullam feugiat gravida nisi, sed viverra erat vulputate sed. Aenean ante lacus, condimentum ut dictum vitae, luctus ac orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi sit amet metus vitae sem aliquet vestibulum. Nulla pellentesque mauris eu porttitor luctus. Morbi id odio sit amet tortor euismod gravida sed eu diam. Fusce vitae dapibus tortor.\n\nAliquam sit amet sodales ante. Curabitur sed sollicitudin neque. Sed semper et est id sollicitudin. Suspendisse et eros nec tellus lobortis mollis sit amet eu ipsum. In a eleifend dui, et semper neque. Nulla facilisi. Pellentesque tempus tortor et aliquet mattis. Proin gravida tellus sit amet pretium venenatis. Morbi elementum nibh vel urna efficitur congue. Nulla sodales lectus ac placerat consectetur. Phasellus auctor dictum sapien id tincidunt. Nulla elementum rutrum finibus. Suspendisse hendrerit molestie mi, commodo vulputate quam.\n\nSed scelerisque eu tortor in finibus. Nam dictum posuere volutpat. Aliquam libero sem, maximus vitae lacinia ullamcorper, blandit quis metus. Praesent non odio iaculis, suscipit tortor vel, venenatis orci. Integer vel ligula pulvinar, hendrerit enim nec, ornare nunc. Ut finibus rutrum ligula nec sollicitudin. Vivamus purus purus, egestas sed sollicitudin a, tempus a magna. Cras rutrum commodo sagittis. Donec at facilisis orci. Vivamus rutrum vitae magna id ullamcorper. Suspendisse potenti. In hac habitasse platea dictumst. Proin interdum pretium massa quis lobortis. Proin eu sapien sed massa vehicula efficitur.', 'Dell'),
(26, 'Sony', '2015-08-18 18:39:51', '2015-08-11 14:47:21', 'Vestibulum commodo enim id velit bibendum, ut feugiat justo pretium. Praesent pulvinar mattis molestie. Vivamus rutrum dignissim sapien, eu porta odio iaculis a. Nunc vitae mattis sapien. Proin magna odio, condimentum sit amet magna eu, volutpat gravida turpis. Pellentesque scelerisque diam a diam lacinia, ut accumsan erat suscipit. Quisque convallis accumsan faucibus.', 'Vestibulum commodo enim id velit bibendum, ut feugiat justo pretium. Praesent pulvinar mattis molestie. Vivamus rutrum dignissim sapien, eu porta odio iaculis a. Nunc vitae mattis sapien. Proin magna odio, condimentum sit amet magna eu, volutpat gravida turpis. Pellentesque scelerisque diam a diam lacinia, ut accumsan erat suscipit. Quisque convallis accumsan faucibus.\nVestibulum commodo enim id velit bibendum, ut feugiat justo pretium. Praesent pulvinar mattis molestie. Vivamus rutrum dignissim sapien, eu porta odio iaculis a. Nunc vitae mattis sapien. Proin magna odio, condimentum sit amet magna eu, volutpat gravida turpis. Pellentesque scelerisque diam a diam lacinia, ut accumsan erat suscipit. Quisque convallis accumsan faucibus.', 'Sony'),
(27, 'HP', '2015-08-18 18:40:20', '2015-08-11 14:49:49', 'Duis orci ex, sollicitudin a velit eget, placerat tempor augue. Aenean at libero nec enim consequat fringilla elementum vel libero. Donec rhoncus mattis lectus id consequat. Maecenas sit amet ipsum vel quam gravida facilisis aliquam congue ipsum. Aenean aliquam consequat nunc ut pretium. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce eu libero a enim semper scelerisque. Pellentesque aliquam magna id velit egestas vehicula. Vestibulum eu felis eu felis egestas luctus sit amet in justo. Vestibulum dignissim tellus', 'Duis orci ex, sollicitudin a velit eget, placerat tempor augue. Aenean at libero nec enim consequat fringilla elementum vel libero. Donec rhoncus mattis lectus id consequat. Maecenas sit amet ipsum vel quam gravida facilisis aliquam congue ipsum. Aenean aliquam consequat nunc ut pretium. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce eu libero a enim semper scelerisque. Pellentesque aliquam magna id velit egestas vehicula. Vestibulum eu felis eu felis egestas luctus sit amet in justo. Vestibulum dignissim tellus\nDuis orci ex, sollicitudin a velit eget, placerat tempor augue. Aenean at libero nec enim consequat fringilla elementum vel libero. Donec rhoncus mattis lectus id consequat. Maecenas sit amet ipsum vel quam gravida facilisis aliquam congue ipsum. Aenean aliquam consequat nunc ut pretium. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce eu libero a enim semper scelerisque. Pellentesque aliquam magna id velit egestas vehicula. Vestibulum eu felis eu felis egestas luctus sit amet in justo. Vestibulum dignissim tellus', 'HP'),
(28, 'HTC', '2015-08-18 18:31:48', '2015-08-11 17:53:46', 'HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC', 'HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC', 'HTC');

-- --------------------------------------------------------

--
-- Table structure for table `brand_category`
--

CREATE TABLE IF NOT EXISTS `brand_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `brand_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `type` varchar(25) NOT NULL DEFAULT 'simple',
  `params` text,
  PRIMARY KEY (`id`),
  KEY `brand_category` (`category_id`),
  KEY `category_brand` (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=246 ;

--
-- Dumping data for table `brand_category`
--

INSERT INTO `brand_category` (`id`, `brand_id`, `category_id`, `type`, `params`) VALUES
(230, 28, 19, 'simple', NULL),
(237, 15, 18, 'simple', NULL),
(238, 16, 17, 'simple', NULL),
(239, 16, 18, 'simple', NULL),
(240, 24, 18, 'simple', NULL),
(241, 26, 18, 'simple', NULL),
(242, 26, 21, 'simple', NULL),
(243, 25, 18, 'simple', NULL),
(244, 25, 21, 'simple', NULL),
(245, 27, 19, 'simple', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brand_image`
--

CREATE TABLE IF NOT EXISTS `brand_image` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `brand_id` int(10) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `brand_image_brand` (`brand_id`),
  KEY `brand_image_image` (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=557 ;

--
-- Dumping data for table `brand_image`
--

INSERT INTO `brand_image` (`id`, `brand_id`, `image_id`, `created_at`, `updated_at`) VALUES
(546, 28, 327, NULL, NULL),
(552, 16, 326, NULL, NULL),
(553, 24, 322, NULL, NULL),
(554, 26, 325, NULL, NULL),
(556, 27, 323, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brand_product`
--

CREATE TABLE IF NOT EXISTS `brand_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `brand_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `type` varchar(25) NOT NULL DEFAULT 'simple',
  `params` text,
  PRIMARY KEY (`id`),
  KEY `brand_product` (`product_id`),
  KEY `product_brand` (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=213 ;

--
-- Dumping data for table `brand_product`
--

INSERT INTO `brand_product` (`id`, `brand_id`, `product_id`, `type`, `params`) VALUES
(195, 25, 14, 'simple', NULL),
(196, 27, 14, 'simple', NULL),
(197, 15, 12, 'simple', NULL),
(198, 24, 12, 'simple', NULL),
(199, 25, 12, 'simple', NULL),
(200, 26, 12, 'simple', NULL),
(201, 15, 18, 'simple', NULL),
(202, 16, 18, 'simple', NULL),
(204, 16, 15, 'simple', NULL),
(205, 26, 15, 'simple', NULL),
(206, 15, 19, 'simple', NULL),
(207, 24, 19, 'simple', NULL),
(208, 26, 19, 'simple', NULL),
(209, 16, 17, 'simple', NULL),
(210, 15, 13, 'simple', NULL),
(211, 26, 13, 'simple', NULL),
(212, 16, 16, 'simple', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_category`
--

CREATE TABLE IF NOT EXISTS `category_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(150) NOT NULL,
  `name` varchar(250) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `short_description` text,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `category_category`
--

INSERT INTO `category_category` (`id`, `parent_id`, `slug`, `name`, `image`, `short_description`, `description`, `status`, `created_at`, `updated_at`) VALUES
(17, NULL, 'Electronic Devices', 'Electronic Devices', NULL, 'Electronic Devices', 'Electronic Devices Electronic Devices Electronic Devices Electronic Devices Electronic Devices', 1, '2015-08-10 16:05:08', '2015-08-18 18:39:26'),
(18, 17, 'category E', 'category E', NULL, 'category E', 'category E category E category E category E category E category E category E category E category E category E category E category E', 1, '2015-08-10 16:12:41', '2015-08-18 18:40:07'),
(19, 17, 'category F', 'category F', NULL, 'category Fcategory Fcategory Fcategory F', 'category Fcategory Fcategory Fcategory F', 1, '2015-08-11 17:52:01', '2015-08-18 18:40:20'),
(20, 19, 'category D', 'category D', NULL, 'category D category D category D category D category D category D', 'category D category D category D category D category D category D category D category D category D category D category D category D category D category D', 1, '2015-08-13 18:01:07', '2015-08-13 18:01:07'),
(21, 20, 'Test Category', 'Test Category', NULL, 'Test Category Test Category Test Category', 'Test Category Test Category Test Category', 1, '2015-08-17 11:47:56', '2015-08-18 18:40:07');

-- --------------------------------------------------------

--
-- Table structure for table `category_image`
--

CREATE TABLE IF NOT EXISTS `category_image` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category_id` int(10) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_image_category` (`category_id`),
  KEY `category_image_image` (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=540 ;

--
-- Dumping data for table `category_image`
--

INSERT INTO `category_image` (`id`, `category_id`, `image_id`, `created_at`, `updated_at`) VALUES
(537, 17, 337, NULL, NULL),
(538, 19, 338, NULL, NULL),
(539, 21, 339, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `content_device`
--

CREATE TABLE IF NOT EXISTS `content_device` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `device_id` int(10) NOT NULL,
  `category_id` int(10) DEFAULT NULL,
  `product_id` int(10) DEFAULT NULL,
  `owner_id` int(10) NOT NULL,
  `brand_id` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `description` text,
  `short_description` text,
  `characters` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(25) DEFAULT NULL,
  `price` varchar(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `device_id` (`device_id`),
  KEY `owner_id` (`owner_id`),
  KEY `category_id` (`category_id`),
  KEY `product_id` (`product_id`),
  KEY `brand_id` (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `content_device`
--

INSERT INTO `content_device` (`id`, `device_id`, `category_id`, `product_id`, `owner_id`, `brand_id`, `created_at`, `updated_at`, `description`, `short_description`, `characters`, `published`, `enabled`, `name`, `price`) VALUES
(3, 6, NULL, NULL, 1, NULL, '2015-08-11 12:59:33', '2015-08-11 12:59:33', 'Nullam at tortor elit. In ut consequat risus. Nulla porttitor cursus ligula ac pulvinar. Proin a quam nibh. Donec gravida tortor in ligula tristique, efficitur dignissim mauris varius. Mauris eu odio urna. Vestibulum lacinia, enim sed faucibus semper, justo libero fermentum lorem, a lacinia purus lectus et lacus. Ut dictum ultrices nunc a maximus. Morbi id justo sit amet purus vestibulum imperdiet sed eget tortor. Pellentesque velit velit, consectetur vitae condimentum bibendum, sollicitudin non purus.', 'Nullam at tortor elit. In ut consequat risus. Nulla porttitor cursus ligula ac pulvinar. Proin a quam nibh. Donec gravida tortor in ligula tristique, efficitur dignissim mauris varius. Mauris eu odio urna. Vestibulum lacinia, enim sed faucibus semper, justo libero fermentum lorem.', NULL, 0, 0, 'PAOE', '230'),
(4, 6, NULL, NULL, 1, NULL, '2015-08-11 13:00:11', '2015-08-11 13:00:11', '321sdf2sd sdf32s1d sdfsdf', '321sd sd3f21s sd32f1', NULL, 0, 0, '321 daz21', '998556'),
(5, 8, NULL, NULL, 1, NULL, '2015-08-11 13:38:16', '2015-08-11 13:38:16', 'sdf sd sdfsdf sdfsdsf sdf sdsdf sd sdfsdf sdfsdsf sdf sdsdf sd sdfsdf sdfsdsf sdf sd', 'sdfsd sdf', NULL, 0, 0, 'dsqd', '960'),
(6, 6, NULL, NULL, 1, NULL, '2015-08-11 15:47:45', '2015-08-11 15:47:45', 'ertisements/_partial-templates/device_details.html\nertisements/_partial-templates/device_details.html\nertisements/_partial-templates/device_details.html', 'ertisements/_partial-templates/device_details.html', NULL, 0, 0, 'galaxy s6', '800'),
(7, 12, NULL, NULL, 1, NULL, '2015-08-11 16:04:30', '2015-08-11 16:04:30', 'sharp calculator  in good condition, properly adjusted, and well maintained.', 'sharp calculator  in good condition, properly adjusted, and well maintained.', NULL, 0, 0, 'sharp calculator', '750'),
(8, 9, NULL, NULL, 1, NULL, '2015-08-12 14:53:03', '2015-08-12 14:53:03', 'sNokiad kdazae zaek sNokiad kdazae zaek sNokiad kdazae zaek sNokiad kdazae zaek sNokiad kdazae zaek sNokiad kdazae zaek sNokiad kdazae zaek', 'sNokiad kdazae zaek sNokiad kdazae zaek sNokiad kdazae zaek', NULL, 0, 0, 'aze azeaze', '626'),
(9, 17, NULL, NULL, 1, NULL, '2015-08-12 15:49:03', '2015-08-12 15:49:03', 'smart watch sony smart watch sony smart watch sony smart watch sony smart watch sony smart watch sony smart watch sony smart watch sony smart watch sony smart watch sony smart watch sony smart watch sony smart watch sony', 'smart watch sony', NULL, 0, 0, 'smart watch sony', 'smart watch sony'),
(10, 22, NULL, NULL, 1, NULL, '2015-08-13 13:55:36', '2015-08-19 13:56:19', 'Vostro Pc  Vostro Pc 5230 Vostro Pc  Vostro Pc 5230 Vostro Pc  Vostro Pc 5230 Vostro Pc  Vostro Pc 5230 Vostro Pc  Vostro Pc 5230 Vostro Pc  Vostro Pc 5230', 'a good opportunity in good condition.', NULL, 0, 0, 'Vostro Pc', '532'),
(11, 10, NULL, NULL, 1, NULL, '2015-08-13 18:22:34', '2015-08-13 18:22:34', 'Lumia phone Lumia phone Lumia phone', 'Lumia phone  Lumia phone Lumia phone Lumia phone', NULL, 0, 0, 'Lumia phone', '856'),
(12, 13, NULL, NULL, 1, NULL, '2015-08-13 18:40:25', '2015-08-13 18:40:25', 'YUJI - TL18S8313Se42S5 YUJI - TL18S8313Se42S5 YUJI - TL18S8313Se42S5 YUJI - TL18S8313Se42S5 YUJI - TL18S8313Se42S5 YUJI - TL18S8313Se42S5 YUJI - TL18S8313Se42S5 YUJI - TL18S8313Se42S5', 'YUJI - TL18S8313Se42S5 YUJI - TL18S8313Se42S5 YUJI - TL18S8313Se42S5', NULL, 0, 0, 'sdfsdf sdfsdf', '8788'),
(13, 13, NULL, NULL, 1, NULL, '2015-08-13 19:44:14', '2015-08-13 19:44:14', 'aze azeae aze aze aez', 'azeaze', NULL, 0, 0, 'azeza', 'aze'),
(14, 15, NULL, NULL, 1, NULL, '2015-08-14 14:21:03', '2015-08-14 14:21:03', 'MGL 2003 MGL 2003 MGL 2003 MGL 2003 \nMGL 2003 MGL 2003 MGL 2003', 'MGL 2003', NULL, 0, 0, '362', '256'),
(15, 11, NULL, NULL, 1, NULL, '2015-08-14 14:26:34', '2015-08-14 14:26:34', 'Nokia Lumia 830Nokia Lumia 830Nokia Lumia 830Nokia Lumia 830Nokia Lumia 830', 'Nokia Lumia 830 Nokia Lumia 830', NULL, 0, 0, 'Nokia Lumia 830', '900'),
(16, 23, NULL, NULL, 1, NULL, '2015-08-14 18:16:11', '2015-08-14 18:16:11', 'KD L- 4 2W800sony _ B KD L- 4 2W800sony _ B KD L- 4 2W800sony _ B KD L- 4 2W800sony _ B KD L- 4 2W800sony _ B', 'KD L- 4 2W800sony _ B KD L- 4 2W800sony _ B KD L- 4 2W800sony _ B KD L- 4 2W800sony _ B', NULL, 0, 0, 'KDL-42W800sony_B', '650'),
(17, 6, NULL, NULL, 1, NULL, '2015-08-15 12:02:06', '2015-08-19 16:30:11', 'KD L- 4 2W800sony _ B KD L- 4 2W800sony _ B KD L- 4 2W800sony _ B', 'za4a 5z4aze45 a5z4eza6e 6az54ea a6z5e4a zaz65e4aze654 az6e54a 6az5e4', NULL, 0, 0, 'Content Test', '985'),
(18, 8, NULL, NULL, 1, NULL, '2015-08-15 17:18:51', '2015-08-15 17:18:51', 's3 galaxy s3 galaxy s3 galaxy v', 's3 galaxy  s3 galaxy s3 galaxy s3 galaxy', NULL, 0, 0, 's3 galaxy', '350'),
(19, 22, NULL, NULL, 1, NULL, '2015-08-17 12:12:52', '2015-08-17 12:12:52', 'dell vostro prodell vostro prodell vostro prodell vostro pro', 'dell vostro pro', NULL, 0, 0, 'dell vostro pro', '980'),
(20, 22, NULL, NULL, 1, NULL, '2015-08-18 18:43:17', '2015-08-18 18:43:17', 'new Del Vostro machine  new Del Vostro machine  new Del Vostro machine  new Del Vostro machine  new Del Vostro machine', 'new Del Vostro machine  new Del Vostro machine  new Del Vostro machine  new Del Vostro machine', NULL, 0, 0, 'new Del Vostro machine', '650'),
(21, 7, NULL, NULL, 1, NULL, '2015-08-19 14:02:41', '2015-08-19 14:02:41', '321321', '321', NULL, 0, 0, '213', '321');

-- --------------------------------------------------------

--
-- Table structure for table `content_image`
--

CREATE TABLE IF NOT EXISTS `content_image` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `content_id` int(10) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `content_image_content` (`content_id`),
  KEY `content_image_image` (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=532 ;

--
-- Dumping data for table `content_image`
--

INSERT INTO `content_image` (`id`, `content_id`, `image_id`, `created_at`, `updated_at`) VALUES
(524, 10, 295, NULL, NULL),
(525, 10, 297, NULL, NULL),
(526, 10, 298, NULL, NULL),
(527, 10, 343, NULL, NULL),
(528, 21, 346, NULL, NULL),
(529, 21, 347, NULL, NULL),
(530, 21, 348, NULL, NULL),
(531, 17, 306, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `device_device`
--

CREATE TABLE IF NOT EXISTS `device_device` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `device_brand_id` int(10) DEFAULT NULL,
  `device_category_id` int(10) DEFAULT NULL,
  `type` varchar(25) NOT NULL,
  `name` text,
  `description` text,
  `short_description` text,
  `weight` decimal(12,4) DEFAULT NULL,
  `width` decimal(12,4) DEFAULT NULL,
  `height` decimal(12,4) DEFAULT NULL,
  `depth` decimal(12,4) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `note` varchar(25) NOT NULL DEFAULT '0',
  `characters` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `device_product_id` int(10) DEFAULT NULL,
  `extra_fields` longtext,
  PRIMARY KEY (`id`),
  KEY `device_brand_id` (`device_brand_id`),
  KEY `device_category_id` (`device_category_id`),
  KEY `device_product_id` (`device_product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `device_device`
--

INSERT INTO `device_device` (`id`, `device_brand_id`, `device_category_id`, `type`, `name`, `description`, `short_description`, `weight`, `width`, `height`, `depth`, `price`, `note`, `characters`, `created_at`, `updated_at`, `device_product_id`, `extra_fields`) VALUES
(6, 15, 18, 'smart S600', 'Galaxy S6 edge', 'Reimagined Design Inside and Out\nInnovative Dual-Edge Screen\n5.1" Quad HD Super AMOLED® display\n16MP rear-facing camera', 'Samsung Galaxy S6 edge, 32GB†, (T-Mobile), Gold Platinum', 65652.0000, 3232.0000, 323.0000, 998.0000, 965.0000, '0', NULL, '2015-08-02 00:00:00', '2015-08-19 16:30:11', 12, NULL),
(7, 15, 18, 'Samsung Galaxy Note Edge', 'Samsung Galaxy Note Edge', 'Innovative Smart Edge Screen\n5.6-inch Quad HD Super AMOLED® display\nEnhanced S Pen™ with more precision and functions\n16MP rear camera with Optical Image Stabilization', 'Samsung Galaxy Note Edge (Verizon), Charcoal Black', 232.0000, 325.0000, 223.0000, 23.0000, 32566.0000, '0', NULL, '2015-08-11 12:23:11', '2015-08-19 14:02:40', 12, NULL),
(8, 15, 17, 'Galaxy S III', 'Galaxy S III', 'Sharing photos, music and video isn''t just better or easier–it''s almost instant\nNew ways to interact and simplify your life with your phone\nThe power you need, and the style you want', 'Samsung Galaxy S III, (Virgin Mobile), Marble White', 505.0000, 50.0000, 53.0000, 30.0000, 50.0000, '0', NULL, '2015-08-11 12:56:05', '2015-08-16 16:37:49', 12, 'a:2:{i:0;a:8:{s:2:"id";s:0:"";s:4:"name";s:7:"field 1";s:5:"field";s:6:"field1";s:7:"content";s:4:"9856";s:4:"type";s:4:"text";s:7:"enabled";s:0:"";s:6:"length";i:34;s:11:"description";s:10:"12 field 1";}i:1;a:8:{s:2:"id";s:0:"";s:4:"name";s:7:"field 2";s:5:"field";s:6:"field2";s:7:"content";s:4:"8895";s:4:"type";s:4:"text";s:7:"enabled";s:0:"";s:6:"length";i:150;s:11:"description";s:7:"320 323";}}'),
(9, 24, 18, 'Nokia 105', 'Nokia 105', 'LAUNCH	Announced	2015, June\nStatus	Available. Released 2015, June\nBODY	Dimensions	108.5 x 45.5 x 14.1 mm (4.27 x 1.79 x 0.56 in)\nWeight	69.6 g (2.47 oz)\nSIM	Dual SIM (Mini-SIM, dual stand-by)\n 	- Flashlight\nDISPLAY	Type	TFT, 65K colors\nSize	1.4 inches (~12.8% screen-to-body ratio)\nResolution	128 x 128 pixels (~129 ppi pixel density)\nMEMORY	Card slot	No\nPhonebook	2000 contacts\nCall records	Yes\nInternal	4 MB RAM\nCAMERA	 	No', 'BATTERY	 	Li-Ion 800 mAh battery\nStand-by	Up to 600 h\nTalk time	Up to 15 h\nMISC	Colors	Black, Cyan, White', 556.0000, 230.0000, 230.0000, 223.0000, 98.0000, '0', NULL, '2015-08-11 15:09:34', '2015-08-12 14:53:03', 12, NULL),
(10, 24, 18, 'Nokia Lumia 735', 'Nokia Lumia 735', 'NETWORK	Technology	\nGSM / HSPA / LTE\nLAUNCH	Announced	2014, September\nStatus	Available. Released 2014, September\nBODY	Dimensions	134.7 x 68.5 x 8.9 mm (5.30 x 2.70 x 0.35 in)\nWeight	134 g (4.73 oz)\nSIM	Nano-SIM\nDISPLAY	Type	OLED capacitive touchscreen, 16M colors\nSize	4.7 inches (~66.0% screen-to-body ratio)\nResolution	720 x 1280 pixels (~312 ppi pixel density)\nMultitouch	Yes\nProtection	Corning Gorilla Glass 3\n 	- ClearBlack display\nPLATFORM	OS	Microsoft Windows Phone 8.1, planned upgrade to Windows 10\nChipset	Qualcomm Snapdragon 400\nCPU	Quad-core 1.2 GHz Cortex-A7\nGPU	Adreno 305\nMEMORY	Card slot	microSD, up to 128 GB\nInternal	8 GB, 1 GB RAM\nCAMERA	Primary	6.7 MP (6.1 MP effective), 2848 x 2144 pixels, Carl Zeiss optics, autofocus, LED flash, check quality\nFeatures	1/3.4'''' sensor size, geo-tagging, face detection, panorama\nVideo	1080p@30fps, stereo sound rec., check quality\nSecondary	5 MP, 1080p\nSOUND	Alert types	Vibration; MP3, WAV ringtones\nLoudspeaker	Yes\n3.5mm jack	Yes\nCOMMS	WLAN	Wi-Fi 802.11 b/g/n, DLNA, hotspot\nBluetooth	v4.0, A2DP, LE/ apt-X after WP8 Denim update\nGPS	Yes, with A-GPS, GLONASS, Beidou\nNFC	Yes\nRadio	FM radio\nUSB	microUSB v2.0\nFEATURES	Sensors	Accelerometer, gyro, proximity, compass, sensor core\nMessaging	SMS (threaded view), MMS, Email, Push Email, IM\nBrowser	HTML5\nJava	No\n 	- Wireless Charging (Qi-enabled)\n- Active noise cancellation with dedicated mic\n- MP3/WAV/eAAC+/WMA player\n- MP4/H.264/WMV player\n- OneDrive (15 GB cloud storage)\n- Document viewer\n- Video/photo editor\nBATTERY	 	Li-Ion 2200 mAh battery (BV-T5A)\nStand-by	Up to 600 h\nTalk time	Up to 22 h (2G) / Up to 17 h (3G)\nMusic play	Up to 60 h\nMISC	Colors	Orange, green, white, black\nSAR US	 1.38 W/kg (head)     0.78 W/kg (body)    \nSAR EU	 0.80 W/kg (head)     0.48 W/kg (body)    \nPrice group	5/10\nTESTS	Performance	Basemark OS II: 435\nCamera	Photo / Video\nBattery life	\nEndurance rating 59h', 'TESTS	Performance	Basemark OS II: 435\nSAR EU	 0.80 W/kg (head)     0.48 W/kg (body)', 656.0000, 32.0000, 232.0000, 323.0000, 985.0000, '0', NULL, '2015-08-11 15:10:27', '2015-08-13 18:22:34', 12, NULL),
(11, 24, 18, 'Nokia Lumia 830', 'Nokia Lumia 830', 'BODY	Dimensions	139.4 x 70.7 x 8.5 mm (5.49 x 2.78 x 0.33 in)\nWeight	150 g (5.29 oz)\nSIM	Nano-SIM\nDISPLAY	Type	IPS LCD capacitive touchscreen, 16M colors\nSize	5.0 inches (~69.9% screen-to-body ratio)\nResolution	720 x 1280 pixels (~294 ppi pixel density)\nMultitouch	Yes\nProtection	Corning Gorilla Glass 3\n 	- ClearBlack display\nPLATFORM	OS	Microsoft Windows Phone 8.1\nChipset	Qualcomm Snapdragon 400\nCPU	Quad-core 1.2 GHz Cortex-A7\nGPU	Adreno 305\nMEMORY	Card slot	microSD, up to 128 GB\nInternal	16 GB, 1 GB RAM\nCAMERA	Primary	10 MP, 3520 x 2640 pixels, Carl Zeiss optics, optical image stabilization, autofocus, LED flash, check quality\nFeatures	1/3.4'''' sensor size, PureView technology, geo-tagging, face detection, panorama\nVideo	1080p@30fps, optical stabilization, stereo sound rec., check quality\nSecondary	0.9 MP, 720p\nSOUND	Alert types	Vibration; MP3, WAV ringtones\nLoudspeaker	Yes\n3.5mm jack	Yes\n 	- Dolby Digital Plus\nCOMMS	WLAN	Wi-Fi 802.11 a/b/g/n, dual-band, DLNA, hotspot\nBluetooth	v4.0, A2DP, EDR, LE, apt-X\nGPS	Yes, with A-GPS, GLONASS, Beidou\nNFC	Yes\nRadio	FM radio\nUSB	microUSB v2.0\nFEATURES	Sensors	Accelerometer, gyro, proximity, compass\nMessaging	SMS (threaded view), MMS, Email, Push Email, IM\nBrowser	HTML5\nJava	No\n 	- Wireless charging (Qi-enabled)\n- Active noise cancellation with dedicated mic\n- MP3/WAV/eAAC+/WMA player\n- MP4/H.264/WMV player\n- OneDrive (15 GB cloud storage)\n- Document viewer\n- Video/photo editor\nBATTERY	 	Li-Ion 2200 mAh battery (BV-L4A)\nStand-by	Up to 528 h\nTalk time	Up to 12 h 54 min (2G) / Up to 14 h 48 min (3G)\nMusic play	Up to 78 h\nMISC	Colors	Orange, green, white, black, gold\nSAR US	 0.87 W/kg (head)     0.83 W/kg (body)    \nSAR EU	 0.46 W/kg (head)     0.59 W/kg (body)    \nPrice group	7/10\nTESTS	Performance	Basemark OS II: 478\nDisplay	Contrast ratio: 1078 (nominal), 1887 (sunlight)\nCamera	Photo / Video\nLoudspeaker	Voice 65dB / Noise 66dB / Ring 78dB\nAudio quality	Noise -89.7dB / Crosstalk -91.6dB\nBattery life	\nEndurance rating 68h', 'NETWORK	Technology	\nGSM / HSPA / LTE\nLAUNCH	Announced	2014, September', 6565.0000, 3233.0000, 232.0000, 223.0000, 89956.0000, '0', NULL, '2015-08-11 15:11:17', '2015-08-14 14:26:34', 12, NULL),
(12, 16, 18, 'EL-W506X', 'EL-W506X', 'sharp EL-W506X sharp EL-W506X sharp EL-W506X sharp EL-W506X sharp EL-W506X', '16 x 4\n	96 x 32', 65.0000, 656.0000, 6565.0000, 656.0000, 985.0000, '0', NULL, '2015-08-11 15:15:41', '2015-08-11 16:04:30', 15, NULL),
(13, 16, 18, 'YUJI - TL18S8313S24S5', 'YUJI - TL18S8313S24S5', 'Spot\n18 W / 1,300 lm / 3,000 K / white aluminium / 24° / switchable\nFlexible beam angles, colour temperatures and lumen packages combined with high efficiency /This is Why YUJI is the ideal luminaire for retail outlets, showrooms and supermarkets.\nSophisticated Sharp ZENIGATA technology with high efficiency (up to 89 lm/W) and CRI > 80\nEasy refurbishment inside all existing 3-phase tracks due to standardized adapter technology\n50.000 hrs. service life (L70/B50), no maintenance costs\nSubtle design\nMade in Europe', '18 W / 1,300 lm / 3,000 K / white aluminium / 24° / switchable', 6565.0000, 6565.0000, 656.0000, 565.0000, 986.0000, '0', NULL, '2015-08-11 15:16:27', '2015-08-13 19:44:14', 16, NULL),
(14, 16, 18, 'YUJI - TL28S8323S24S5', 'YUJI - TL28S8323S24S5', 'sharp spot YUJI - TL28S8323S24S5 sharp spot YUJI - TL28S8323S24S5 sharp spot YUJI - TL28S8323S24S5 sharp spot YUJI - TL28S8323S24S5 sharp spot YUJI - TL28S8323S24S5 sharp spot YUJI - TL28S8323S24S5 sharp spot YUJI - TL28S8323S24S5 sharp spot YUJI - TL28S8323S24S5', 'sharp spot YUJI - TL28S8323S24S5', 652.0000, 32.0000, 322.0000, 3232.0000, 986.0000, '0', NULL, '2015-08-11 15:17:12', '2015-08-11 15:17:12', 16, NULL),
(15, 16, 18, 'Panel 06 - MGL2003', 'Panel 06 - MGL2003', 'Panel 06 - MGL2003', 'Panel 06 - MGL2003 Panel 06 - MGL2003', 223.0000, 22.0000, 2.0000, 20.0000, 52.0000, '0', NULL, '2015-08-11 15:18:49', '2015-08-14 14:21:03', 17, NULL),
(16, 26, 18, 'Xperia™ Z3 Compact', 'Xperia™ Z3 Compact', 'Xperia Z3 Compact review\n“Awesome phone!!!!! The design, the feel, the function, everything is spot on :) i come from samsung galaxy, iphone5&6 and microsoft lumia and for me this is such a great little masterpiece. My wife has iphone6 and she asked can we swap phones, guess what i answered? No THANKS!! :D”', 'Sony´s powerful new Xperia Z3 Compact is a 4.6” mobile to give the iPhone 6 nightmares” Stuff.tv on Twitter, 4th September 2014', 203.0000, 32.0000, 230.0000, 201.0000, 520.0000, '0', NULL, '2015-08-11 15:21:02', '2015-08-11 15:21:02', 12, NULL),
(17, 26, 18, 'SmartWatch 3 SWR50', 'SmartWatch 3 SWR50', 'Powered by Android Wear\n\nUseful information when you need it\n\nAvailable colors', 'Powered by Android Wear', 65.0000, 523.0000, 23.0000, 23.0000, 985.0000, '0', NULL, '2015-08-11 15:22:47', '2015-08-18 12:55:40', 18, 'a:2:{i:0;a:8:{s:2:"id";s:0:"";s:4:"name";s:7:"field 1";s:5:"field";s:7:"field 1";s:7:"content";s:3:"326";s:4:"type";s:3:"int";s:7:"enabled";s:0:"";s:6:"length";i:12;s:11:"description";s:7:"field 1";}i:1;a:7:{s:2:"id";s:0:"";s:4:"name";s:7:"field 2";s:5:"field";s:7:"field 2";s:7:"content";s:4:"2663";s:4:"type";s:3:"int";s:7:"enabled";s:0:"";s:11:"description";s:7:"field 2";}}'),
(18, 26, 18, 'MDR-XB950BT/B', 'MDR-XB950BT-B', 'Highlights View Specifications\nBluetooth® audio streaming with AAC and apt-X® support1\nElectronic Bass Boost circuitry for added bass emphasis\nPassive mode for normal, corded operation without battery\nComfortable around-the-ear design\n40mm drivers for wide frequency response (3 - 28 kHz, with cord)', 'Extra Bass Bluetooth Headset', 60.0000, 320.0000, 320.0000, 222.0000, 90.0000, '0', NULL, '2015-08-11 15:24:50', '2015-08-14 17:33:19', 19, NULL),
(19, 27, 19, 'pavilion', 'hp pavilion', 'hp pavilion hp pavilion hp pavilion hp pavilion hp pavilion hp pavilion', 'hp pavilion hp pavilion hp pavilion', 323.0000, 2330.0000, 32.0000, 125.0000, 120.0000, '0', NULL, '2015-08-12 17:34:23', '2015-08-12 17:34:23', 14, NULL),
(20, 27, 18, '6032', 'hp 6032', 'hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032', 'hp 6032 hp 6032 hp 6032 hp 6032 hp 6032', 50.0000, 30.0000, 30.0000, 30.0000, 50.0000, '0', NULL, '2015-08-12 17:35:00', '2015-08-12 17:35:00', 14, NULL),
(21, 25, 18, '5s', 'dell inspiron 5s', 'dell inspiron 5s dell inspiron 5s dell inspiron 5s dell inspiron 5s dell inspiron 5s dell inspiron 5s dell inspiron 5s dell inspiron 5s dell inspiron 5s dell inspiron 5s', 'dell inspiron 5s dell inspiron 5s dell inspiron 5s', 203.0000, 232.0000, 22.0000, 220.0000, 620.0000, '0', NULL, '2015-08-12 17:36:00', '2015-08-13 13:57:39', 14, NULL),
(22, 25, 18, 'vostro', 'dell vostro pro', 'dell vostro pro dell vostro pro dell vostro pro dell vostro pro \ndell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro', 'dell vostro pro dell vostro pro dell vostro pro dell vostro pro', 233.0000, 232.0000, 222.0000, 22.0000, 532.0000, '0', NULL, '2015-08-12 17:37:37', '2015-08-19 13:56:19', 14, 'a:1:{i:0;a:8:{s:2:"id";s:0:"";s:4:"name";s:3:"955";s:5:"field";s:3:"232";s:7:"content";s:3:"996";s:4:"type";s:3:"int";s:7:"enabled";s:0:"";s:6:"length";i:3;s:11:"description";s:11:"66666662.\n.";}}'),
(23, 26, 18, 'X950B', 'KDL-42W800sony_B', 'Model Features: 4K Ultra HD1, Motionflow™ XR 960, media up-scaled to 4K quality1, 2, wireless HD streaming with built-in Wi-Fi®5, X-tended Dynamic Range PRO with 3x brightness range3, TRILUMINOS™ display, HDMI support for next gen 4K players and services4', '84.6” (diag) X950B Flagship 4K Ultra HD TV', 2152.0000, 215.0000, 2123.0000, 2115.0000, 190.0000, '0', NULL, '2015-08-12 19:07:35', '2015-08-14 18:16:11', 13, NULL),
(24, 26, 18, 'calc', 'Sony calculator', 'Sony calculator Sony calculator Sony calculator Sony calculator Sony calculator Sony calculator', 'Sony calculator Sony calculator', 22.0000, 23.0000, 25.0000, 62.0000, 230.0000, '0', NULL, '2015-08-13 14:00:35', '2015-08-13 14:00:35', 15, NULL),
(25, 26, 18, 'Sony X Headphones', 'Sony_X', 'Sony X Headphones Sony X Headphones Sony X Headphones Sony X Headphones Sony X Headphones Sony X Headphones Sony X Headphones Sony X Headphones', 'Sony X Headphones Sony X Headphones', 23.0000, 223.0000, 32.0000, 32.0000, 299.0000, '0', NULL, '2015-08-14 17:36:11', '2015-08-14 17:37:43', 19, NULL),
(26, 26, 18, 'Bluetooth Headset for PS3', 'Bluetooth Headset for PS3', 'Bluetooth Headset for PS3 Bluetooth Headset for PS3 Bluetooth Headset for PS3 Bluetooth Headset for PS3 Bluetooth Headset for PS3 Bluetooth Headset for PS3 Bluetooth Headset for PS3 Bluetooth Headset for PS3', 'Bluetooth Headset for PS3  Bluetooth Headset for PS3  Bluetooth Headset for PS3', 21.0000, 212.0000, 212.0000, 12.0000, 210.0000, '0', NULL, '2015-08-14 17:37:01', '2015-08-14 17:37:01', 19, NULL),
(27, 26, 18, 'Sony-PS3-Bluetooth', 'Sony-PS3-Bluetooth', 'Sony-PS3-Bluetooth-Headset Sony-PS3-Bluetooth-Headset Sony-PS3-Bluetooth-Headset Sony-PS3-Bluetooth-Headset Sony-PS3-Bluetooth-Headset Sony-PS3-Bluetooth-Headset Sony-PS3-Bluetooth-Headset Sony-PS3-Bluetooth-Headset', 'Sony-PS3-Bluetooth-Headset Sony-PS3-Bluetooth-Headset', 62.0000, 62.0000, 62.0000, 62.0000, 250.0000, '0', NULL, '2015-08-14 17:40:15', '2015-08-14 17:40:15', 19, NULL),
(28, 15, 18, 'EO-IG900', 'EO-IG900', 'EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900', 'EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900', 65.0000, 65.0000, 65.0000, 65.0000, 75.0000, '0', NULL, '2015-08-14 17:44:41', '2015-08-14 17:44:41', 19, NULL),
(29, 15, 18, 'Samsung Bluetooth', 'Samsung Bluetooth', 'Samsung Bluetooth Samsung Bluetooth Samsung Bluetooth Samsung Bluetooth Samsung Bluetooth Samsung Bluetooth Samsung Bluetooth Samsung Bluetooth Samsung Bluetooth Samsung', 'Samsung Bluetooth Samsung Bluetooth Samsung Bluetooth Samsung Bluetooth Samsung', 56.0000, 2.0000, 23.0000, 23.0000, 88.0000, '0', NULL, '2015-08-14 17:46:06', '2015-08-14 18:11:14', 19, NULL),
(30, 24, 18, 'Bluetooth', 'BH-222', 'Nokia Bluetooth Headset BH-222 - Handsfree music and calls.Nokia Bluetooth Headset BH-222 - Handsfree music and calls.', 'Nokia Bluetooth Headset BH-222 - Handsfree music and calls.', 22.0000, 22.0000, 22.0000, 22.0000, 150.0000, '0', NULL, '2015-08-14 17:48:21', '2015-08-14 17:48:21', 19, NULL),
(31, 24, 18, 'WH-510', 'WH-510', 'The Coloud Pop for Nokia headphones are a great fit for an on-the-go lifestyle. They fit right in your pocket, and the angled earpieces make it really comfy on your ears.The Coloud Pop for Nokia headphones are a great fit for an on-the-go lifestyle. They fit right in your pocket, and the angled earpieces make it really comfy on your ears.', 'The Coloud Pop for Nokia headphones are a great fit for an on-the-go lifestyle. They fit right in your pocket, and the angled earpieces make it really comfy on your ears.', 323.0000, 2323.0000, 32.0000, 32.0000, 132.0000, '0', NULL, '2015-08-14 17:49:41', '2015-08-14 17:52:55', 19, NULL),
(32, 16, 18, 'KW ND-Q250F7', 'KW ND-Q250F7', 'System Components\n36 Sharp ND-Q250F7 solar modules\nFronius IG Plus 10 solar grid-tie inverter\nProsolar Rooftrac mounting rails and clamps\nProsolar 1.5" Tile Trac or 3.0" Fastjacks\nMC interconnect cables\nGrounding lugs\nArray combiners in larger systems\nAC/DC solar disconnect\nSite specific electrical single and three line schematics\nAll wire sizing/type are specified in our electrical schematics\nCA stamped structural testing reports mounting system\nComponent installation manuals\nFriendly knowledgeable technical assistance', 'Sharp 9 KW ND-Q250F7 Black Frame Solar Panel System', 320.0000, 320.0000, 322.0000, 232.0000, 600.0000, '0', NULL, '2015-08-16 17:14:57', '2015-08-18 13:05:31', 17, 'a:4:{i:0;a:7:{s:2:"id";s:0:"";s:4:"name";s:11:"System Part";s:5:"field";s:11:"System_part";s:7:"content";s:21:"SES-ND-Q250F7-9-IG-10";s:4:"type";s:4:"text";s:7:"enabled";s:0:"";s:6:"length";i:100;}i:1;a:8:{s:2:"id";s:0:"";s:4:"name";s:12:"System Power";s:5:"field";s:12:"System Power";s:7:"content";s:4:"9 KW";s:4:"type";s:4:"text";s:7:"enabled";s:0:"";s:6:"length";i:100;s:11:"description";s:12:"System Power";}i:2;a:8:{s:2:"id";s:0:"";s:4:"name";s:17:"Watts per Sq./Ft.";s:5:"field";s:17:"Watts per Sq./Ft.";s:7:"content";s:5:"14.25";s:4:"type";s:4:"text";s:7:"enabled";s:0:"";s:6:"length";i:230;s:11:"description";s:17:"Watts per Sq./Ft.";}i:3;a:8:{s:2:"id";s:0:"";s:4:"name";s:16:"Panel PTC Rating";s:5:"field";s:16:"Panel PTC Rating";s:7:"content";s:5:"223.6";s:4:"type";s:4:"text";s:7:"enabled";s:0:"";s:6:"length";i:100;s:11:"description";s:33:"Panel PTC Rating	Panel PTC Rating";}}'),
(33, 24, 18, 'x1', 'x1', 'nokia x1 phone nokia x1 phone nokia x1 phone nokia x1 phone nokia x1 phone nokia x1 phone nokia x1 phone nokia x1 phone nokia x1 phone nokia x1 phone nokia x1 phone', 'nokia x1 phone', 122.0000, 121.0000, 12.0000, 121.0000, 120.0000, '0', NULL, '2015-08-18 14:34:44', '2015-08-18 14:34:44', 12, 'a:1:{i:0;a:8:{s:2:"id";s:0:"";s:4:"name";s:5:"color";s:5:"field";s:5:"color";s:7:"content";s:3:"red";s:4:"type";s:4:"text";s:7:"enabled";s:0:"";s:6:"length";i:120;s:11:"description";s:3:"aze";}}'),
(34, 15, 18, 'other', 'other', NULL, NULL, 321.0000, 321.0000, 321.0000, 321.0000, 213.0000, '0', NULL, '2015-08-18 18:57:14', '2015-08-18 18:57:14', 12, 'a:1:{i:0;a:8:{s:2:"id";s:0:"";s:4:"name";s:3:"aze";s:5:"field";s:3:"aze";s:7:"content";s:4:"3212";s:4:"type";s:3:"int";s:7:"enabled";s:0:"";s:6:"length";i:320;s:11:"description";s:10:"23.417 TND";}}');

-- --------------------------------------------------------

--
-- Table structure for table `device_image`
--

CREATE TABLE IF NOT EXISTS `device_image` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `device_id` int(10) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `device_image_device` (`device_id`),
  KEY `device_image_image` (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=527 ;

--
-- Dumping data for table `device_image`
--

INSERT INTO `device_image` (`id`, `device_id`, `image_id`, `created_at`, `updated_at`) VALUES
(518, 17, 297, NULL, NULL),
(519, 32, 294, NULL, NULL),
(520, 32, 314, NULL, NULL),
(521, 32, 315, NULL, NULL),
(522, 33, 316, NULL, NULL),
(523, 34, 294, NULL, NULL),
(524, 34, 298, NULL, NULL),
(525, 34, 306, NULL, NULL),
(526, 34, 312, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `device_product`
--

CREATE TABLE IF NOT EXISTS `device_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `device_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `type` varchar(25) NOT NULL DEFAULT 'simple',
  `params` text,
  PRIMARY KEY (`id`),
  KEY `device_product` (`product_id`),
  KEY `product_device` (`device_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=148 ;

--
-- Dumping data for table `device_product`
--

INSERT INTO `device_product` (`id`, `device_id`, `product_id`, `type`, `params`) VALUES
(146, 7, 13, 'simple', NULL),
(147, 21, 14, 'simple', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `field_field`
--

CREATE TABLE IF NOT EXISTS `field_field` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `field` varchar(25) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `description` text,
  `short_description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `product_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `field_field`
--

INSERT INTO `field_field` (`id`, `name`, `field`, `type`, `description`, `short_description`, `created_at`, `updated_at`, `enabled`, `product_id`) VALUES
(19, 'Memory', 'memory', 'varchar', 'reference', 'reference', '2015-08-16 00:00:00', '2015-08-16 00:00:00', 1, 14),
(20, 'Mass storage device', 'mass_storage_device', 'int', 'Mass storage device', 'Mass storage device', '2015-08-16 00:00:00', '2015-08-16 00:00:00', 0, 14);

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE IF NOT EXISTS `file` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `path` tinytext NOT NULL,
  `name` tinytext,
  `system_name` varchar(255) DEFAULT '',
  `folder` tinytext,
  `description` tinytext,
  `mime_type` varchar(255) DEFAULT NULL,
  `extension` varchar(25) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=349 ;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `path`, `name`, `system_name`, `folder`, `description`, `mime_type`, `extension`, `created_at`, `updated_at`) VALUES
(14, '/Users/chouaibi/Projects/basic/uploads/slide_359857_4018229_free.jpg', 'slide_359857_4018229_free', 'slide_359857_4018229_free', NULL, NULL, NULL, 'jpg', '2014-09-23 16:59:14', '2015-05-05 15:10:46'),
(15, '/Users/chouaibi/Projects/basic/uploads/10384699_254720208064856_5806024858101159982_n.jpg', '10384699_254720208064856_5806024858101159982_n', '10384699_254720208064856_5806024858101159982_n', NULL, NULL, NULL, 'jpg', '2014-09-23 17:01:23', '2015-05-05 15:10:46'),
(16, '/Users/chouaibi/Projects/basic/uploads/10384699_254720208064856_5806024858101159982_n.jpg', '10384699_254720208064856_5806024858101159982_n', '10384699_254720208064856_5806024858101159982_n', NULL, NULL, NULL, 'jpg', '2014-09-23 17:01:43', '2015-05-05 15:10:46'),
(18, '/Users/chouaibi/Projects/basic/uploads/10384699_254720208064856_5806024858101159982_n.jpg', '10384699_254720208064856_5806024858101159982_n', '10384699_254720208064856_5806024858101159982_n', NULL, NULL, NULL, 'jpg', '2014-09-23 17:06:45', '2015-05-05 15:10:46'),
(21, '/home/users/opt/api/uploads/Promotions UI.png', 'Promotions UI', 'Promotions UI', NULL, NULL, NULL, 'png', '2014-09-25 14:53:42', '2015-05-05 15:10:46'),
(22, '/home/users/opt/api/uploads/craft.png', 'craft', 'craft', NULL, NULL, NULL, 'png', '2014-09-25 15:08:01', '2015-05-05 15:10:46'),
(23, '/home/users/opt/api/uploads/Promotions UI.png', 'Promotions UI', 'Promotions UI', NULL, NULL, NULL, 'png', '2014-09-25 15:37:43', '2015-05-05 15:10:46'),
(24, '/home/users/opt/api/uploads/discount2.png', 'discount2', 'discount2', NULL, NULL, NULL, 'png', '2014-09-25 15:41:58', '2015-05-05 15:10:46'),
(25, '/home/users/opt/api/uploads/energy.png', 'energy', 'energy', NULL, NULL, NULL, 'png', '2014-09-25 15:42:57', '2015-05-05 15:10:46'),
(26, '/home/users/opt/api/uploads/coputerpng.', 'coputerpng', 'coputerpng', NULL, NULL, NULL, '', '2014-09-25 15:46:15', '2015-05-05 15:10:46'),
(27, '/home/users/opt/api/uploads/coputerpng.', 'coputerpng', 'coputerpng', NULL, NULL, NULL, '', '2014-09-25 15:46:34', '2015-05-05 15:10:46'),
(28, '/home/users/opt/api/uploads/Promotions UI.png', 'Promotions UI', 'Promotions UI', NULL, NULL, NULL, 'png', '2014-09-25 16:29:57', '2015-05-05 15:10:46'),
(29, '/home/users/opt/api/uploads/chemical.png', 'chemical', 'chemical', NULL, NULL, NULL, 'png', '2014-09-25 17:29:31', '2015-05-05 15:10:46'),
(30, '/home/users/opt/api/uploads/coputerpng.', 'coputerpng', 'coputerpng', NULL, NULL, NULL, '', '2014-09-25 19:24:42', '2015-05-05 15:10:46'),
(31, '/home/users/opt/api/uploads/Mountain.png', 'Mountain', 'Mountain', NULL, NULL, NULL, 'png', '2014-09-25 22:52:17', '2015-05-05 15:10:46'),
(34, '/home/users/opt/api/uploads/10384699_254720208064856_5806024858101159982_n.jpg', '10384699_254720208064856_5806024858101159982_n', '10384699_254720208064856_5806024858101159982_n', NULL, NULL, NULL, 'jpg', '2014-09-26 14:33:36', '2015-05-05 15:10:46'),
(35, '/home/users/opt/api/uploads/10384699_254720208064856_5806024858101159982_n.jpg', '10384699_254720208064856_5806024858101159982_n', '10384699_254720208064856_5806024858101159982_n', NULL, NULL, NULL, 'jpg', '2014-09-27 21:59:00', '2015-05-05 15:10:46'),
(36, '/home/users/opt/api/uploads/10384699_254720208064856_5806024858101159982_n.jpg', '10384699_254720208064856_5806024858101159982_n', '10384699_254720208064856_5806024858101159982_n', NULL, NULL, NULL, 'jpg', '2014-09-27 21:59:19', '2015-05-05 15:10:46'),
(37, '/home/users/opt/api/uploads/10384699_254720208064856_5806024858101159982_n.jpg', '10384699_254720208064856_5806024858101159982_n', '10384699_254720208064856_5806024858101159982_n', NULL, NULL, NULL, 'jpg', '2014-09-27 22:00:10', '2015-05-05 15:10:46'),
(38, '/home/users/opt/api/uploads/10404894_256495951220615_5221484373172882872_n.jpg', '10404894_256495951220615_5221484373172882872_n', '10404894_256495951220615_5221484373172882872_n', NULL, NULL, NULL, 'jpg', '2014-09-27 22:01:30', '2015-05-05 15:10:46'),
(39, '/home/users/opt/api/uploads/10404894_256495951220615_5221484373172882872_n.jpg', '10404894_256495951220615_5221484373172882872_n', '10404894_256495951220615_5221484373172882872_n', NULL, NULL, NULL, 'jpg', '2014-09-29 11:20:41', '2015-05-05 15:10:46'),
(40, '/home/users/opt/api/uploads/10404894_256495951220615_5221484373172882872_n.jpg', '10404894_256495951220615_5221484373172882872_n', '10404894_256495951220615_5221484373172882872_n', NULL, NULL, NULL, 'jpg', '2014-09-29 11:21:12', '2015-05-05 15:10:46'),
(41, '/home/users/opt/api/uploads/10384699_254720208064856_5806024858101159982_n.jpg', '10384699_254720208064856_5806024858101159982_n', '10384699_254720208064856_5806024858101159982_n', NULL, NULL, NULL, 'jpg', '2014-09-29 11:22:07', '2015-05-05 15:10:46'),
(42, '/home/users/opt/api/uploads/10384699_254720208064856_5806024858101159982_n.jpg', '10384699_254720208064856_5806024858101159982_n', '10384699_254720208064856_5806024858101159982_n', NULL, NULL, NULL, 'jpg', '2014-09-29 11:29:21', '2015-05-05 15:10:46'),
(43, '/home/users/opt/api/web/media/uploads/shutterstock_102498152_opt_clipped_rev_1.png', 'shutterstock_102498152_opt_clipped_rev_1', 'shutterstock_102498152_opt_clipped_rev_1', NULL, NULL, NULL, 'png', '2014-09-30 01:30:04', '2015-05-05 15:10:46'),
(44, '/home/users/opt/api/web/media/uploads/shutterstock_102498152_opt.jpg', 'shutterstock_102498152_opt', 'shutterstock_102498152_opt', NULL, NULL, NULL, 'jpg', '2014-09-30 01:30:04', '2015-05-05 15:10:46'),
(45, '/home/users/opt/api/web/media/uploads/shutterstock_65747848.jpg', 'shutterstock_65747848', 'shutterstock_65747848', NULL, NULL, NULL, 'jpg', '2014-09-30 02:22:41', '2015-05-05 15:10:46'),
(46, '/home/users/opt/api/web/media/uploads/shutterstock_65824402.jpg', 'shutterstock_65824402', 'shutterstock_65824402', NULL, NULL, NULL, 'jpg', '2014-09-30 02:22:41', '2015-05-05 15:10:46'),
(47, '/home/users/opt/api/web/media/uploads/shutterstock_66287710.jpg', 'shutterstock_66287710', 'shutterstock_66287710', NULL, NULL, NULL, 'jpg', '2014-09-30 02:22:42', '2015-05-05 15:10:46'),
(48, '/home/users/opt/api/web/media/uploads/Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-9.jpg', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-9', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-9', NULL, NULL, NULL, 'jpg', '2014-09-30 06:06:17', '2015-05-05 15:10:46'),
(49, '/home/users/opt/api/web/media/uploads/spoe.png', 'spoe', 'spoe', NULL, NULL, NULL, 'png', '2014-09-30 15:02:37', '2015-05-05 15:10:46'),
(50, '/home/users/opt/api/web/media/uploads/azdddd.', 'azdddd', 'azdddd', NULL, NULL, NULL, '', '2014-09-30 15:03:26', '2015-05-05 15:10:46'),
(51, '/home/users/opt/api/web/media/uploads/aaaa1.', 'aaaa1', 'aaaa1', NULL, NULL, NULL, '', '2014-09-30 15:07:07', '2015-05-05 15:10:46'),
(52, '/home/users/opt/api/web/media/uploads/aaaa2.jpg', 'aaaa2', 'aaaa2', NULL, NULL, NULL, 'jpg', '2014-09-30 15:07:08', '2015-05-05 15:10:46'),
(53, '/home/users/opt/api/web/media/uploads/aaaa3.jpg', 'aaaa3', 'aaaa3', NULL, NULL, NULL, 'jpg', '2014-09-30 15:07:10', '2015-05-05 15:10:46'),
(54, '/home/users/opt/api/web/media/uploads/aaaa4.', 'aaaa4', 'aaaa4', NULL, NULL, NULL, '', '2014-09-30 15:07:14', '2015-05-05 15:10:46'),
(55, '/home/users/opt/api/web/media/uploads/ddddd.', 'ddddd', 'ddddd', NULL, NULL, NULL, '', '2014-09-30 15:08:44', '2015-05-05 15:10:46'),
(56, '/home/users/opt/api/web/media/uploads/tunis-4-2006.jpg', 'tunis-4-2006', 'tunis-4-2006', NULL, NULL, NULL, 'jpg', '2014-09-30 15:09:18', '2015-05-05 15:10:46'),
(57, '/home/users/opt/api/web/media/uploads/avenue-bourguiba-Tunis.jpg', 'avenue-bourguiba-Tunis', 'avenue-bourguiba-Tunis', NULL, NULL, NULL, 'jpg', '2014-09-30 15:09:46', '2015-05-05 15:10:46'),
(58, '/home/users/opt/api/web/media/uploads/14846845-tour-de-l-39-horloge-avenue-habib-bourguiba-tunis-tunisie-ville-nouvelle-afrique-avec-des-stries-de-.jpg', '14846845-tour-de-l-39-horloge-avenue-habib-bourguiba-tunis-tunisie-ville-nouvelle-afrique-avec-des-stries-de-', '14846845-tour-de-l-39-horloge-avenue-habib-bourguiba-tunis-tunisie-ville-nouvelle-afrique-avec-des-stries-de-', NULL, NULL, NULL, 'jpg', '2014-09-30 15:10:35', '2015-05-05 15:10:46'),
(59, '/home/users/opt/api/web/media/uploads/zaaze.', 'zaaze', 'zaaze', NULL, NULL, NULL, '', '2014-09-30 15:14:55', '2015-05-05 15:10:46'),
(60, '/home/users/opt/api/web/media/uploads/ddddddddd.jpg', 'ddddddddd', 'ddddddddd', NULL, NULL, NULL, 'jpg', '2014-09-30 15:15:47', '2015-05-05 15:10:46'),
(61, '/home/users/opt/api/web/media/uploads/sidi_bou_0.jpg', 'sidi_bou_0', 'sidi_bou_0', NULL, NULL, NULL, 'jpg', '2014-09-30 15:16:39', '2015-05-05 15:10:46'),
(62, '/home/users/opt/api/web/media/uploads/dddd.jpg', 'dddd', 'dddd', NULL, NULL, NULL, 'jpg', '2014-09-30 15:17:27', '2015-05-05 15:10:46'),
(63, '/home/users/opt/api/web/media/uploads/ejbed.jpg', 'ejbed', 'ejbed', NULL, NULL, NULL, 'jpg', '2014-09-30 15:19:43', '2015-05-05 15:10:46'),
(64, '/home/users/opt/api/web/media/uploads/525811_15_b.jpg', '525811_15_b', '525811_15_b', NULL, NULL, NULL, 'jpg', '2014-09-30 15:20:28', '2015-05-05 15:10:46'),
(65, '/home/users/opt/api/web/media/uploads/525811_12_b.jpg', '525811_12_b', '525811_12_b', NULL, NULL, NULL, 'jpg', '2014-09-30 15:23:10', '2015-05-05 15:10:46'),
(66, '/home/users/opt/api/web/media/uploads/525811_11_b.jpg', '525811_11_b', '525811_11_b', NULL, NULL, NULL, 'jpg', '2014-09-30 15:23:53', '2015-05-05 15:10:46'),
(67, '/home/users/opt/api/web/media/test/subfolder/Why%20Blueair.pdf', 'Why%20Blueair', 'Why%20Blueair', NULL, NULL, NULL, 'pdf', '2014-09-30 20:23:48', '2015-05-05 15:10:46'),
(68, '/home/users/opt/api/web/media/uploads/Why Blueair.pdf', 'Why Blueair', 'Why Blueair', NULL, NULL, NULL, 'pdf', '2014-09-30 23:22:57', '2015-05-05 15:10:46'),
(72, '/home/users/opt/api/web/media/test/subfolder/shutterstock_102498152_opt_clipped_rev_1.png', 'shutterstock_102498152_opt_clipped_rev_1', 'shutterstock_102498152_opt_clipped_rev_1', NULL, NULL, NULL, 'png', '2014-10-01 02:11:49', '2015-05-05 15:10:46'),
(73, '/home/users/opt/api/web/media/test/subfolder/shutterstock_102498152_opt.jpg', 'shutterstock_102498152_opt', 'shutterstock_102498152_opt', NULL, NULL, NULL, 'jpg', '2014-10-01 02:12:56', '2015-05-05 15:10:46'),
(74, '/home/users/opt/api/web/media/test/subfolder/t1larg.tunisia.fruit.seller.bouazizi.afp.getty.file.handout.jpg', 't1larg.tunisia.fruit.seller.bouazizi.afp.getty.file.handout', 't1larg.tunisia.fruit.seller.bouazizi.afp.getty.file.handout', NULL, NULL, NULL, 'jpg', '2014-10-01 11:24:29', '2015-05-05 15:10:46'),
(75, '/home/users/opt/api/web/media/test/subfolder/tunisia_01.jpg', 'tunisia_01', 'tunisia_01', NULL, NULL, NULL, 'jpg', '2014-10-01 11:24:31', '2015-05-05 15:10:46'),
(76, '/home/users/opt/api/web/media/test/subfolder/tunisia_38.jpg', 'tunisia_38', 'tunisia_38', NULL, NULL, NULL, 'jpg', '2014-10-01 11:24:33', '2015-05-05 15:10:46'),
(77, '/home/users/opt/api/web/media/test/subfolder/Tunisia-Revolution.jpg', 'Tunisia-Revolution', 'Tunisia-Revolution', NULL, NULL, NULL, 'jpg', '2014-10-01 11:24:34', '2015-05-05 15:10:46'),
(78, '/home/users/opt/api/web/media/test/subfolder/avenue-bourguiba-Tunis.jpg', 'avenue-bourguiba-Tunis', 'avenue-bourguiba-Tunis', NULL, NULL, NULL, 'jpg', '2014-10-01 13:09:11', '2015-05-05 15:10:46'),
(79, '/home/users/opt/api/web/media/test/subfolder/tunis-4-2006.jpg', 'tunis-4-2006', 'tunis-4-2006', NULL, NULL, NULL, 'jpg', '2014-10-01 13:09:15', '2015-05-05 15:10:46'),
(80, '/home/users/opt/api/web/media/test/subfolder/ville-tunisie.jpg', 'ville-tunisie', 'ville-tunisie', NULL, NULL, NULL, 'jpg', '2014-10-01 13:09:16', '2015-05-05 15:10:46'),
(81, '/home/users/opt/api/web/media/test/subfolder/14846845-tour-de-l-39-horloge-avenue-habib-bourguiba-tunis-tunisie-ville-nouvelle-afrique-avec-des-stries-de-.jpg', '14846845-tour-de-l-39-horloge-avenue-habib-bourguiba-tunis-tunisie-ville-nouvelle-afrique-avec-des-stries-de-', '14846845-tour-de-l-39-horloge-avenue-habib-bourguiba-tunis-tunisie-ville-nouvelle-afrique-avec-des-stries-de-', NULL, NULL, NULL, 'jpg', '2014-10-01 13:09:40', '2015-05-05 15:10:46'),
(82, '/home/users/opt/api/web/media/test/subfolder/525811_10_b.jpg', '525811_10_b', '525811_10_b', NULL, NULL, NULL, 'jpg', '2014-10-01 18:05:34', '2015-05-05 15:10:46'),
(83, '/home/users/opt/api/web/media/test/subfolder/525811_11_b.jpg', '525811_11_b', '525811_11_b', NULL, NULL, NULL, 'jpg', '2014-10-01 21:43:14', '2015-05-05 15:10:46'),
(84, '/home/users/opt/api/web/media/test/subfolder/10384699_254720208064856_5806024858101159982_n.jpg', '10384699_254720208064856_5806024858101159982_n', '10384699_254720208064856_5806024858101159982_n', 'test/subfolder', NULL, NULL, 'jpg', '2014-10-01 22:12:13', '2015-05-05 15:10:46'),
(86, '/home/users/opt/api/web/media//Tunisia-Revolution.jpg', 'Tunisia-Revolution', 'Tunisia-Revolution', NULL, NULL, NULL, 'jpg', '2014-10-06 16:51:50', '2015-05-05 15:10:46'),
(87, '/home/users/opt/api/web/media//tunisia_38.jpg', 'tunisia_38', 'tunisia_38', NULL, NULL, NULL, 'jpg', '2014-10-06 16:52:32', '2015-05-05 15:10:46'),
(88, '/home/users/opt/api/web/media//Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-1.jpg', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-1', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-1', NULL, NULL, NULL, 'jpg', '2014-10-06 16:55:30', '2015-05-05 15:10:46'),
(89, '/home/users/opt/api/web/media//Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-7 (1).jpg', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-7 (1)', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-7 (1)', NULL, NULL, NULL, 'jpg', '2014-10-06 16:56:36', '2015-05-05 15:10:46'),
(90, '/home/users/opt/api/web/media//Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-8.jpg', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-8', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-8', NULL, NULL, NULL, 'jpg', '2014-10-06 16:57:27', '2015-05-05 15:10:46'),
(91, '/home/users/opt/api/web/media/beautilogy/assets/shutterstock_92454496.jpg', 'shutterstock_92454496', 'shutterstock_92454496', 'beautilogy/assets', NULL, NULL, 'jpg', '2014-10-07 02:14:42', '2015-06-18 07:02:13'),
(92, '/home/users/opt/api/web/media/products/images/525811_10_b.jpg', '525811_10_b', '525811_10_b', 'products/images', NULL, NULL, 'jpg', '2014-10-10 10:38:31', '2015-05-05 15:10:46'),
(93, '/home/users/opt/api/web/media/products/images/525811_15_b.jpg', '525811_15_b', '525811_15_b', 'products/images', NULL, NULL, 'jpg', '2014-10-10 10:39:24', '2015-05-05 15:10:46'),
(94, '/home/users/opt/api/web/media/products/images/525811_16_b.jpg', '525811_16_b', '525811_16_b', 'products/images', NULL, NULL, 'jpg', '2014-10-10 15:41:58', '2015-05-05 15:10:46'),
(95, '/home/users/opt/api/web/media/products/images/525811_17_b.jpg', '525811_17_b', '525811_17_b', 'products/images', NULL, NULL, 'jpg', '2014-10-10 15:41:59', '2015-05-05 15:10:46'),
(96, '/home/users/opt/api/web/media/products/images/525811_18_b.jpg', '525811_18_b', '525811_18_b', 'products/images', NULL, NULL, 'jpg', '2014-10-10 15:42:00', '2015-05-05 15:10:46'),
(97, '/home/users/opt/api/web/media/products/images/525811_19_b.jpg', '525811_19_b', '525811_19_b', 'products/images', NULL, NULL, 'jpg', '2014-10-10 15:42:00', '2015-05-05 15:10:46'),
(98, '/home/users/opt/api/web/media/products/images/525811_20_b.jpg', '525811_20_b', '525811_20_b', 'products/images', NULL, NULL, 'jpg', '2014-10-10 15:42:01', '2015-05-05 15:10:46'),
(99, '/home/users/opt/api/web/media/beautilogy/assets/product2.png', 'product2', 'product2', 'beautilogy/assets', NULL, NULL, 'png', '2014-10-13 16:10:47', '2015-05-05 15:10:46'),
(100, '/home/users/opt/api/web/media/products/images/dog-cat-beds-pet-design-ideas-5.jpg', 'dog-cat-beds-pet-design-ideas-5', 'dog-cat-beds-pet-design-ideas-5', 'products/images', NULL, NULL, 'jpg', '2014-10-13 23:38:42', '2015-05-05 15:10:46'),
(101, '/home/users/opt/api/web/media/products/images/dog-cat-beds-pet-design-ideas-4.jpg', 'dog-cat-beds-pet-design-ideas-4', 'dog-cat-beds-pet-design-ideas-4', 'products/images', NULL, NULL, 'jpg', '2014-10-15 00:14:34', '2015-05-05 15:10:46'),
(102, '/home/users/opt/api/web/media/products/images/dog-cat-beds-pet-design-ideas-7.jpg', 'dog-cat-beds-pet-design-ideas-7', 'dog-cat-beds-pet-design-ideas-7', 'products/images', NULL, NULL, 'jpg', '2014-10-15 00:14:35', '2015-05-05 15:10:46'),
(103, '/home/users/opt/api/web/media/products/images/dog-cat-beds-pet-design-ideas-11.jpg', 'dog-cat-beds-pet-design-ideas-11', 'dog-cat-beds-pet-design-ideas-11', 'products/images', NULL, NULL, 'jpg', '2014-10-15 00:14:36', '2015-05-05 15:10:46'),
(104, '/home/users/opt/api/web/media/products/images/dog-cat-beds-pet-design-ideas-13.jpg', 'dog-cat-beds-pet-design-ideas-13', 'dog-cat-beds-pet-design-ideas-13', 'products/images', NULL, NULL, 'jpg', '2014-10-15 00:14:37', '2015-05-05 15:10:47'),
(105, '/home/users/opt/api/web/media/products/images/525811_13_b.jpg', '525811_13_b', '525811_13_b', 'products/images', '{"name":"pic 1","description":"description description description description \\ndescription description description description description description description description"}', NULL, 'jpg', '2014-10-15 16:04:26', '2015-05-05 15:10:47'),
(106, '/home/users/opt/api/web/media/products/images/shutterstock1_92454496 copy.jpg', 'shutterstock1_92454496 copy', 'shutterstock1_92454496 copy', 'products/images', NULL, NULL, 'jpg', '2014-10-21 05:29:47', '2015-05-05 15:10:47'),
(107, '/home/users/opt/api/web/media/products/images/shutterstock_92454496.jpg', 'shutterstock_92454496', 'shutterstock_92454496', 'products/images', NULL, NULL, 'jpg', '2014-10-21 05:30:38', '2015-05-05 15:10:47'),
(108, '/home/users/opt/api/web/media/products/images/Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-7.jpg', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-7', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-7', 'products/images', NULL, NULL, 'jpg', '2014-10-22 11:06:10', '2015-05-05 15:10:47'),
(109, '/home/users/opt/api/web/media/products/images/Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-8.jpg', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-8', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-8', 'products/images', NULL, NULL, 'jpg', '2014-10-22 11:19:28', '2015-05-05 15:10:47'),
(110, '/home/users/opt/api/web/media/products/images/Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-9.jpg', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-9', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-9', 'products/images', NULL, NULL, 'jpg', '2014-10-22 11:23:32', '2015-05-05 15:10:47'),
(111, '/home/users/opt/api/web/media/products/images/Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-12.jpg', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-12', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-12', 'products/images', NULL, NULL, 'jpg', '2014-10-22 11:24:05', '2015-05-05 15:10:47'),
(112, '/home/users/opt/api/web/media/products/images/Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-7 (1).jpg', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-7 (1)', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-7 (1)', 'products/images', NULL, NULL, 'jpg', '2014-10-22 11:26:48', '2015-05-05 15:10:47'),
(113, '/home/users/opt/api/web/media/products/images/Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-1.jpg', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-1', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-1', 'products/images', NULL, NULL, 'jpg', '2014-10-22 11:28:05', '2015-05-05 15:10:47'),
(114, '/home/users/opt/api/web/media/products/images/Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-4.jpg', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-4', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-4', 'products/images', NULL, NULL, 'jpg', '2014-10-22 11:28:06', '2015-05-05 15:10:47'),
(115, '/home/users/opt/api/web/media/products/images/Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-5.jpg', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-5', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-5', 'products/images', NULL, NULL, 'jpg', '2014-10-22 11:28:07', '2015-05-05 15:10:47'),
(116, '/home/users/opt/api/web/media/products/images/Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-10.jpg', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-10', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-10', 'products/images', NULL, NULL, 'jpg', '2014-10-22 12:01:09', '2015-05-05 15:10:47'),
(117, '/home/users/opt/api/web/media/products/images/Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-11.jpg', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-11', 'Cool-Yet-Scary-Halloween-Make-Up-Ideas-Looks-For-Girls-2013-2014-11', 'products/images', NULL, NULL, 'jpg', '2014-10-22 12:01:10', '2015-05-05 15:10:47'),
(118, '/home/users/opt/api/web/media/products/images/525811_11_b.jpg', '525811_11_b', '525811_11_b', 'products/images', NULL, NULL, 'jpg', '2014-10-22 12:09:45', '2015-05-05 15:10:47'),
(119, '/home/users/opt/api/web/media/products/images/glamour_hair1.jpg', NULL, 'glamour_hair1', 'products/images', NULL, NULL, 'jpg', '2015-04-29 03:34:53', '2015-05-05 15:10:47'),
(120, '/home/users/opt/api/web/media/products/images/525811_8_b.jpg', '525811_8_b', '525811_8_b', 'products/images', NULL, NULL, 'jpg', '2014-10-22 12:11:42', '2015-05-05 15:10:47'),
(121, '/home/users/opt/api/web/media/products/images/525811_9_b.jpg', '525811_9_b', '525811_9_b', 'products/images', NULL, NULL, 'jpg', '2014-10-22 12:11:42', '2015-05-05 15:10:47'),
(122, '/home/users/opt/api/web/media/products/images/525811_22_b.jpg', '525811_22_b', '525811_22_b', 'products/images', NULL, NULL, 'jpg', '2014-10-22 12:11:46', '2015-05-05 15:10:47'),
(123, '/home/users/opt/api/web/media/products/images/525811_23_b.jpg', '525811_23_b', '525811_23_b', 'products/images', NULL, NULL, 'jpg', '2014-10-22 12:11:47', '2015-05-05 15:10:47'),
(124, '/home/users/opt/api/web/media/beautilogy/assets/shutterstock_66359008-16-9.jpg', 'shutterstock_66359008-16-9', 'shutterstock_66359008-16-9', 'beautilogy/assets', NULL, NULL, 'jpg', '2014-10-23 03:18:09', '2015-05-05 15:10:47'),
(125, '/home/users/opt/api/web/media/products/images/800px-MatchOM-PSG_RadesTunisie.jpg', '800px-MatchOM-PSG_RadesTunisie', '800px-MatchOM-PSG_RadesTunisie', 'products/images', NULL, NULL, 'jpg', '2014-10-23 10:38:33', '2015-05-05 15:10:47'),
(126, '/home/users/opt/api/web/media/beautilogy/assets/525811_15_b.jpg', '525811_15_b', '525811_15_b', 'beautilogy/assets', NULL, NULL, 'jpg', '2014-10-27 10:56:38', '2015-05-05 15:10:47'),
(127, '/home/users/opt/api/web/media/beautilogy/assets/525811_16_b.jpg', '525811_16_b', '525811_16_b', 'beautilogy/assets', NULL, NULL, 'jpg', '2014-10-27 10:56:54', '2015-05-05 15:10:47'),
(128, '/home/users/opt/api/web/media/products/images/6271269_1_b.jpg', '6271269_1_b', '6271269_1_b', 'products/images', NULL, NULL, 'jpg', '2014-11-22 15:53:34', '2015-05-05 15:10:47'),
(129, '/home/users/opt/api/web/media/products/images/beautilogy_product.png', 'beautilogy_product', 'beautilogy_product', 'products/images', NULL, NULL, 'png', '2014-10-31 20:39:18', '2015-05-05 15:10:47'),
(130, '/home/users/opt/api/web/media/products/images/1315131_21_b.jpg', '1315131_21_b', '1315131_21_b', 'products/images', NULL, NULL, 'jpg', '2014-11-03 15:20:00', '2015-05-05 15:10:47'),
(131, '/home/users/opt/api/web/media/products/images/shutterstock_66359008-16-9.png', 'shutterstock_66359008-16-9', 'shutterstock_66359008-16-9', 'products/images', NULL, NULL, 'png', '2014-11-12 02:19:31', '2015-05-05 15:10:47'),
(132, '/home/users/opt/api/web/media/products/images/IMAG0218.jpg', 'IMAG0218', 'IMAG0218', 'products/images', NULL, NULL, 'jpg', '2014-11-12 02:37:38', '2015-05-05 15:10:47'),
(133, '/home/users/opt/api/web/media/products/images/IMAG0218.jpg', 'IMAG0218', 'IMAG0218', 'products/images', NULL, NULL, 'jpg', '2014-11-12 02:37:58', '2015-05-05 15:10:47'),
(134, '/home/users/opt/api/web/media/products/images/sidi_bou_said.jpg', 'sidi_bou_said', 'sidi_bou_said', 'products/images', NULL, NULL, 'jpg', '2014-11-12 12:19:58', '2015-05-05 15:10:47'),
(135, '/home/users/opt/api/web/media/products/images/Tunisia-Selects-95.jpg', 'Tunisia-Selects-95', 'Tunisia-Selects-95', 'products/images', NULL, NULL, 'jpg', '2014-11-12 12:20:10', '2015-05-05 15:10:47'),
(136, '/home/users/opt/api/web/media/products/images/Z_tabarka-08.jpg', 'Z_tabarka-08', 'Z_tabarka-08', 'products/images', NULL, NULL, 'jpg', '2014-11-12 12:20:13', '2015-05-05 15:10:47'),
(137, '/home/users/opt/api/web/media/products/images/jg3co.jpg', 'jg3co', 'jg3co', 'products/images', NULL, NULL, 'jpg', '2014-11-13 06:26:27', '2015-05-05 15:10:47'),
(138, '/home/users/opt/api/web/media/products/images/shutterstock_66359008-16-9.jpg', 'shutterstock_66359008-16-9', 'shutterstock_66359008-16-9', 'products/images', NULL, NULL, 'jpg', '2014-11-13 08:23:34', '2015-05-05 15:10:47'),
(139, '/home/users/opt/api/web/media/products/images/tunis-4-2006.jpg', 'tunis-4-2006', 'tunis-4-2006', 'products/images', NULL, NULL, 'jpg', '2014-11-13 18:01:15', '2015-05-05 15:10:47'),
(140, '/home/users/opt/api/web/media/products/images/ville-tunisie.jpg', 'ville-tunisie', 'ville-tunisie', 'products/images', NULL, NULL, 'jpg', '2014-11-13 18:01:16', '2015-05-05 15:10:47'),
(141, '/home/users/opt/api/web/media/products/images/Picx.jpg', 'Picx', 'Picx', 'products/images', NULL, NULL, 'jpg', '2014-11-14 01:19:41', '2015-05-05 15:10:47'),
(142, '/home/users/opt/api/web/media/products/images/Mountain.png', 'Mountain', 'Mountain', 'products/images', NULL, NULL, 'png', '2014-11-17 11:53:34', '2015-05-05 15:10:47'),
(143, '/home/users/opt/api/web/media/products/images/525811_29_b.jpg', '525811_29_b', '525811_29_b', 'products/images', NULL, NULL, 'jpg', '2014-11-17 15:19:37', '2015-05-05 15:10:47'),
(144, '/home/users/opt/api/web/media/products/images/mountain_valley_original_by_creative_art.png2_.png', 'mountain_valley_original_by_creative_art.png2_', 'mountain_valley_original_by_creative_art.png2_', 'products/images', NULL, NULL, 'png', '2014-11-17 15:25:10', '2015-05-05 15:10:47'),
(145, '/home/users/opt/api/web/media/products/images/6271269_3_b.jpg', '6271269_3_b', '6271269_3_b', 'products/images', NULL, NULL, 'jpg', '2014-11-22 15:53:36', '2015-05-05 15:10:47'),
(146, '/home/users/opt/api/web/media/products/images/6271269_2_b.jpg', '6271269_2_b', '6271269_2_b', 'products/images', NULL, NULL, 'jpg', '2014-11-22 15:53:35', '2015-05-05 15:10:47'),
(147, '/home/users/opt/api/web/media/products/images/6271269_5_b.jpg', '6271269_5_b', '6271269_5_b', 'products/images', NULL, NULL, 'jpg', '2014-12-05 17:26:51', '2015-05-05 15:10:47'),
(148, '/home/users/opt/api/web/media/products/digital/fiche.php', 'fiche', 'fiche', 'products/digital', NULL, NULL, 'php', '2014-12-05 11:55:50', '2015-05-05 15:10:47'),
(149, '/home/users/opt/api/web/media/products/images/tunisia_01.jpg', 'tunisia_01', 'tunisia_01', 'products/images', NULL, NULL, 'jpg', '2014-12-05 17:39:56', '2015-05-05 15:10:47'),
(150, '/home/users/opt/api/web/media/products/digital/Offer+Summary+Grid.xlsx', 'Offer+Summary+Grid', 'Offer+Summary+Grid', 'products/digital', NULL, NULL, 'xlsx', '2014-12-05 17:28:37', '2015-05-05 15:10:47'),
(151, '/home/users/opt/api/web/media/products/images/Tunisia-Revolution.jpg', 'Tunisia-Revolution', 'Tunisia-Revolution', 'products/images', NULL, NULL, 'jpg', '2014-12-05 17:40:06', '2015-05-05 15:10:47'),
(152, '/home/users/opt/api/web/media/products/images/tunisia_38.jpg', 'tunisia_38', 'tunisia_38', 'products/images', NULL, NULL, 'jpg', '2014-10-31 11:37:46', '2015-05-05 15:10:47'),
(153, '/home/users/opt/api/web/media/products/digital/Untitled.xcf', 'Untitled', 'Untitled', 'products/digital', NULL, NULL, 'xcf', '2014-12-19 12:37:53', '2015-05-05 15:10:47'),
(154, '/home/users/opt/api/web/media/products/digital/Untitled.xcf', 'Untitled', 'Untitled', 'products/digital', NULL, NULL, 'xcf', '2014-12-19 12:38:07', '2015-05-05 15:10:47'),
(155, '/home/users/opt/api/web/media/products/digital/525811_23_b.jpg', '525811_23_b', '525811_23_b', 'products/digital', NULL, NULL, 'jpg', '2014-12-19 12:38:16', '2015-05-05 15:10:47'),
(156, '/home/users/opt/api/web/media/products/images/534038_4_b.jpg', '534038_4_b', '534038_4_b', 'products/images', NULL, NULL, 'jpg', '2015-01-05 14:13:44', '2015-05-05 15:10:47'),
(157, '/home/users/opt/api/web/media/products/images/534038_5_b.jpg', '534038_5_b', '534038_5_b', 'products/images', NULL, NULL, 'jpg', '2015-01-05 14:13:48', '2015-05-05 15:10:47'),
(158, '/home/users/opt/api/web/media/products/images/534038_9_b.jpg', '534038_9_b', '534038_9_b', 'products/images', NULL, NULL, 'jpg', '2015-01-05 14:13:52', '2015-05-05 15:10:47'),
(159, '/home/users/opt/api/web/media/products/images/534038_10_b.jpg', '534038_10_b', '534038_10_b', 'products/images', NULL, NULL, 'jpg', '2015-01-05 14:13:55', '2015-05-05 15:10:47'),
(160, '/home/users/opt/api/web/media/products/images/525811_12_b.jpg', '525811_12_b', '525811_12_b', 'products/images', NULL, NULL, 'jpg', '2014-10-22 12:09:46', '2015-05-05 15:10:47'),
(161, '/home/users/opt/api/web/media/products/images/914101_35_b.jpg', '914101_35_b', '914101_35_b', 'products/images', NULL, NULL, 'jpg', '2015-01-09 14:09:46', '2015-05-05 15:10:47'),
(162, '/home/users/opt/api/web/media/products/images/customer detail1.png', 'customer detail1', 'customer detail1', 'products/images', NULL, NULL, 'png', '2015-02-23 13:08:56', '2015-05-05 15:10:47'),
(163, '/home/users/opt/api/web/media/products/images/customer detail2.png', 'customer detail2', 'customer detail2', 'products/images', NULL, NULL, 'png', '2015-02-23 13:08:53', '2015-05-05 15:10:47'),
(164, '/home/users/opt/api/web/media/products/images/customer-listing.png', 'customer-listing', 'customer-listing', 'products/images', NULL, NULL, 'png', '2015-02-23 13:09:00', '2015-05-05 15:10:47'),
(165, '/home/users/opt/api/web/media/products/digital/Inventory error message.png', 'Inventory error message', 'Inventory error message', 'products/digital', NULL, NULL, 'png', '2015-02-23 13:15:56', '2015-05-05 15:10:47'),
(166, '/home/users/opt/api/web/media/products/images/Negative.png', 'Negative', 'Negative', 'products/images', NULL, NULL, 'png', '2015-02-23 13:16:19', '2015-05-18 09:54:59'),
(167, '/home/users/opt/api/web/media/products/images/Image editing button don''t work.png', 'Image editing button don''t work', 'Image editing button don''t work', 'products/images', NULL, NULL, 'png', '2015-02-23 13:27:53', '2015-05-05 15:10:47'),
(168, '/home/users/opt/api/web/media/products/digital/Mountain.png', 'Mountain', 'Mountain', 'products/digital', NULL, NULL, 'png', '2015-03-02 18:53:59', '2015-05-05 15:10:47'),
(169, '/home/users/opt/api/web/media/products/digital/40.jpg', '40', '40', 'products/digital', NULL, NULL, 'jpg', '2015-03-03 01:49:19', '2015-05-05 15:10:47'),
(170, '/home/users/opt/api/web/media/products/digital/1360479.jpg', '1360479', '1360479', 'products/digital', NULL, NULL, 'jpg', '2015-03-03 01:49:54', '2015-05-05 15:10:47'),
(171, '/home/users/opt/api/web/media/products/digital/1351063232-8725aac7ab3a276d09215337689c2e2b.png', '1351063232-8725aac7ab3a276d09215337689c2e2b', '1351063232-8725aac7ab3a276d09215337689c2e2b', 'products/digital', NULL, NULL, 'png', '2015-03-03 13:29:29', '2015-05-05 15:10:47'),
(172, '/home/users/opt/api/web/media/products/digital/mountain_valley_original_by_creative_art.png2_.png', 'mountain_valley_original_by_creative_art.png2_', 'mountain_valley_original_by_creative_art.png2_', 'products/digital', NULL, NULL, 'png', '2015-03-03 13:30:01', '2015-05-05 15:10:47'),
(173, '/home/users/opt/api/web/media/products/digital/RunMyBiz.png', 'RunMyBiz', 'RunMyBiz', 'products/digital', NULL, NULL, 'png', '2015-03-03 13:30:54', '2015-05-05 15:10:47'),
(174, '/home/users/opt/api/web/media/products/digital/9999999.jpg', '9999999', '9999999', 'products/digital', NULL, NULL, 'jpg', '2015-03-03 13:59:52', '2015-05-05 15:10:47'),
(175, '/home/users/opt/api/web/media/products/digital/email_direct.png', 'email_direct', 'email_direct', 'products/digital', NULL, NULL, 'png', '2015-03-04 05:48:16', '2015-05-05 15:10:47'),
(176, '/home/users/opt/api/web/media/settings/logo/logo_gloss_hires_1.png', 'logo_gloss_hires_1', 'logo_gloss_hires_1', 'settings/logo', NULL, NULL, 'png', '2015-03-07 13:53:03', '2015-05-05 15:10:47'),
(177, '/home/users/opt/api/web/media/settings/logo/9999999.jpg', '9999999', '9999999', 'settings/logo', NULL, NULL, 'jpg', '2015-03-07 14:00:53', '2015-05-05 15:10:47'),
(178, '/home/users/opt/api/web/media/settings/logo/7.png', '7', '7', 'settings/logo', NULL, NULL, 'png', '2015-03-07 14:02:59', '2015-05-05 15:10:47'),
(179, '/home/users/opt/api/web/media/settings/logo/background0249.jpg', 'background0249', 'background0249', 'settings/logo', NULL, NULL, 'jpg', '2015-03-07 14:05:46', '2015-05-05 15:10:47'),
(180, '/home/users/opt/api/web/media/products/images/IMG_0012.jpg', 'IMG_0012', 'IMG_0012', 'products/images', NULL, NULL, 'jpg', '2015-03-08 13:06:49', '2015-05-05 15:10:47'),
(181, '/home/users/opt/api/web/media/beautilogy/assets/99img.png', '99img', '99img', 'beautilogy/assets', NULL, NULL, 'png', '2015-03-15 08:25:33', '2015-05-05 15:10:47'),
(182, '/home/users/opt/api/web/media/beautilogy/assets/arrow.jpg', 'arrow', 'arrow', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:33', '2015-05-05 15:10:47'),
(183, '/home/users/opt/api/web/media/beautilogy/assets/arrow1.png', 'arrow1', 'arrow1', 'beautilogy/assets', NULL, NULL, 'png', '2015-03-15 08:25:34', '2015-05-05 15:10:47'),
(184, '/home/users/opt/api/web/media/beautilogy/assets/banner.jpg', 'banner', 'banner', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:35', '2015-05-05 15:10:47'),
(185, '/home/users/opt/api/web/media/beautilogy/assets/bg_bottom.jpg', 'bg_bottom', 'bg_bottom', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:35', '2015-05-05 15:10:47'),
(186, '/home/users/opt/api/web/media/beautilogy/assets/bg_top.jpg', 'bg_top', 'bg_top', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:36', '2015-05-05 15:10:47'),
(187, '/home/users/opt/api/web/media/beautilogy/assets/bg.png', 'bg', 'bg', 'beautilogy/assets', NULL, NULL, 'png', '2015-03-15 08:25:36', '2015-05-05 15:10:47'),
(188, '/home/users/opt/api/web/media/beautilogy/assets/bg1.jpg', 'bg1', 'bg1', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:36', '2015-05-05 15:10:47'),
(189, '/home/users/opt/api/web/media/beautilogy/assets/bigitem.jpg', 'bigitem', 'bigitem', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:37', '2015-05-05 15:10:47'),
(190, '/home/users/opt/api/web/media/beautilogy/assets/black_bg.png', 'black_bg', 'black_bg', 'beautilogy/assets', NULL, NULL, 'png', '2015-03-15 08:25:37', '2015-05-05 15:10:47'),
(191, '/home/users/opt/api/web/media/beautilogy/assets/body_bg.jpg', 'body_bg', 'body_bg', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:41', '2015-05-05 15:10:47'),
(192, '/home/users/opt/api/web/media/beautilogy/assets/bullet.jpg', 'bullet', 'bullet', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:41', '2015-05-05 15:10:47'),
(193, '/home/users/opt/api/web/media/beautilogy/assets/city_graph.jpg', 'city_graph', 'city_graph', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:41', '2015-05-05 15:10:47'),
(194, '/home/users/opt/api/web/media/beautilogy/assets/click_for.png', 'click_for', 'click_for', 'beautilogy/assets', NULL, NULL, 'png', '2015-03-15 08:25:41', '2015-05-05 15:10:47'),
(195, '/home/users/opt/api/web/media/beautilogy/assets/click_here.png', 'click_here', 'click_here', 'beautilogy/assets', NULL, NULL, 'png', '2015-03-15 08:25:41', '2015-05-05 15:10:47'),
(196, '/home/users/opt/api/web/media/beautilogy/assets/click_here1.png', 'click_here1', 'click_here1', 'beautilogy/assets', NULL, NULL, 'png', '2015-03-15 08:25:42', '2015-05-05 15:10:47'),
(197, '/home/users/opt/api/web/media/beautilogy/assets/click_here2.png', 'click_here2', 'click_here2', 'beautilogy/assets', NULL, NULL, 'png', '2015-03-15 08:25:42', '2015-05-05 15:10:47'),
(198, '/home/users/opt/api/web/media/beautilogy/assets/controls1.png', 'controls1', 'controls1', 'beautilogy/assets', NULL, NULL, 'png', '2015-03-15 08:25:42', '2015-05-05 15:10:47'),
(199, '/home/users/opt/api/web/media/beautilogy/assets/divider.png', 'divider', 'divider', 'beautilogy/assets', NULL, NULL, 'png', '2015-03-15 08:25:42', '2015-05-05 15:10:47'),
(200, '/home/users/opt/api/web/media/beautilogy/assets/download_hair_sheet1.jpg', 'download_hair_sheet1', 'download_hair_sheet1', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:42', '2015-05-05 15:10:47'),
(201, '/home/users/opt/api/web/media/beautilogy/assets/download_hair_sheet2.jpg', 'download_hair_sheet2', 'download_hair_sheet2', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:43', '2015-05-05 15:10:47'),
(202, '/home/users/opt/api/web/media/beautilogy/assets/download-your-fact-sheets.jpg', 'download-your-fact-sheets', 'download-your-fact-sheets', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:43', '2015-05-05 15:10:47'),
(203, '/home/users/opt/api/web/media/beautilogy/assets/favicon.png', 'favicon', 'favicon', 'beautilogy/assets', NULL, NULL, 'png', '2015-03-15 08:25:43', '2015-05-05 15:10:47'),
(204, '/home/users/opt/api/web/media/beautilogy/assets/get_instant_access.png', 'get_instant_access', 'get_instant_access', 'beautilogy/assets', NULL, NULL, 'png', '2015-03-15 08:25:43', '2015-05-05 15:10:47'),
(205, '/home/users/opt/api/web/media/beautilogy/assets/girl.png', 'girl', 'girl', 'beautilogy/assets', NULL, NULL, 'png', '2015-03-15 08:25:47', '2015-05-05 15:10:47'),
(206, '/home/users/opt/api/web/media/beautilogy/assets/glamour_hair1.jpg', 'glamour_hair1', 'glamour_hair1', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:47', '2015-05-05 15:10:47'),
(207, '/home/users/opt/api/web/media/beautilogy/assets/glamour_hair2.jpg', 'glamour_hair2', 'glamour_hair2', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:48', '2015-05-05 15:10:47'),
(208, '/home/users/opt/api/web/media/beautilogy/assets/glamour_hair3.jpg', 'glamour_hair3', 'glamour_hair3', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:48', '2015-05-05 15:10:47'),
(209, '/home/users/opt/api/web/media/beautilogy/assets/glamour_hair4.jpg', 'glamour_hair4', 'glamour_hair4', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:48', '2015-05-05 15:10:47'),
(210, '/home/users/opt/api/web/media/beautilogy/assets/gray_bg.jpg', 'gray_bg', 'gray_bg', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:48', '2015-05-05 15:10:47'),
(211, '/home/users/opt/api/web/media/beautilogy/assets/hair_sheet1.jpg', 'hair_sheet1', 'hair_sheet1', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:49', '2015-05-05 15:10:47'),
(212, '/home/users/opt/api/web/media/beautilogy/assets/hair_sheet2.jpg', 'hair_sheet2', 'hair_sheet2', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:49', '2015-05-05 15:10:47'),
(213, '/home/users/opt/api/web/media/beautilogy/assets/hand.png', 'hand', 'hand', 'beautilogy/assets', NULL, NULL, 'png', '2015-03-15 08:25:49', '2015-05-05 15:10:47'),
(214, '/home/users/opt/api/web/media/beautilogy/assets/help_button.jpg', 'help_button', 'help_button', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:49', '2015-05-05 15:10:47'),
(215, '/home/users/opt/api/web/media/beautilogy/assets/how-to-work1.jpg', 'how-to-work1', 'how-to-work1', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:50', '2015-05-05 15:10:47'),
(216, '/home/users/opt/api/web/media/beautilogy/assets/how-to-work2.jpg', 'how-to-work2', 'how-to-work2', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:50', '2015-05-05 15:10:47'),
(217, '/home/users/opt/api/web/media/beautilogy/assets/how-to-work3.jpg', 'how-to-work3', 'how-to-work3', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:50', '2015-05-05 15:10:47'),
(218, '/home/users/opt/api/web/media/beautilogy/assets/how-to-work4.jpg', 'how-to-work4', 'how-to-work4', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:50', '2015-05-05 15:10:47'),
(219, '/home/users/opt/api/web/media/beautilogy/assets/line.jpg', 'line', 'line', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:50', '2015-05-05 15:10:47'),
(220, '/home/users/opt/api/web/media/beautilogy/assets/logo.png', 'logo', 'logo', 'beautilogy/assets', NULL, NULL, 'png', '2015-03-15 08:25:51', '2015-05-05 15:10:47'),
(221, '/home/users/opt/api/web/media/beautilogy/assets/orange_arrow.jpg', 'orange_arrow', 'orange_arrow', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:51', '2015-05-05 15:10:47'),
(222, '/home/users/opt/api/web/media/beautilogy/assets/recommendations_button.jpg', 'recommendations_button', 'recommendations_button', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:51', '2015-05-05 15:10:47'),
(223, '/home/users/opt/api/web/media/beautilogy/assets/separator.png', 'separator', 'separator', 'beautilogy/assets', NULL, NULL, 'png', '2015-03-15 08:25:51', '2015-05-05 15:10:47'),
(224, '/home/users/opt/api/web/media/beautilogy/assets/special_offer.jpg', 'special_offer', 'special_offer', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:51', '2015-05-05 15:10:47'),
(225, '/home/users/opt/api/web/media/beautilogy/assets/step1.jpg', 'step1', 'step1', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:52', '2015-05-05 15:10:47'),
(226, '/home/users/opt/api/web/media/beautilogy/assets/step2.jpg', 'step2', 'step2', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:52', '2015-05-05 15:10:47'),
(227, '/home/users/opt/api/web/media/beautilogy/assets/try-beautilogy-glamour.jpg', 'try-beautilogy-glamour', 'try-beautilogy-glamour', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:53', '2015-05-05 15:10:47'),
(228, '/home/users/opt/api/web/media/beautilogy/assets/wheat-proteins.jpg', 'wheat-proteins', 'wheat-proteins', 'beautilogy/assets', NULL, NULL, 'jpg', '2015-03-15 08:25:53', '2015-05-05 15:10:47'),
(229, '/home/users/opt/api/web/media/products/images/4.png', '4', '4', 'products/images', NULL, NULL, 'png', '2015-03-28 17:50:18', '2015-06-23 16:43:02'),
(230, '/home/users/opt/api/web/media/products/images/5.png', '5', '5', 'products/images', NULL, NULL, 'png', '2015-03-28 17:50:19', '2015-05-05 15:10:47'),
(231, '/home/users/opt/api/web/media/products/images/7.png', '7', '7', 'products/images', NULL, NULL, 'png', '2015-03-28 17:50:19', '2015-05-05 15:10:47'),
(232, '/home/users/opt/api/web/media/products/images/8.png', '8', '8', 'products/images', NULL, NULL, 'png', '2015-03-28 17:50:21', '2015-05-05 15:10:47'),
(233, '/home/users/opt/api/web/media/products/images/10.png', '10', '10', 'products/images', NULL, NULL, 'png', '2015-03-28 17:50:22', '2015-05-05 15:10:47'),
(234, '/home/users/opt/api/web/media/products/images/12.png', '12', '12', 'products/images', NULL, NULL, 'png', '2015-03-28 17:50:23', '2015-05-05 15:10:47'),
(235, '/home/users/opt/api/web/media/products/images/14.png', '14', '14', 'products/images', NULL, NULL, 'png', '2015-03-28 17:50:23', '2015-05-05 15:10:47'),
(236, '/home/users/opt/api/web/media/products/images/15.png', '15', '15', 'products/images', NULL, NULL, 'png', '2015-03-28 17:50:24', '2015-05-05 15:10:47'),
(237, '/home/users/opt/api/web/media/products/images/99img.png', '99img', '99img', 'products/images', NULL, NULL, 'png', '2015-04-17 14:25:57', '2015-05-05 15:10:47'),
(239, '/home/users/opt/api/web/media/test/subfolder/logo2.png', 'logo2', 'logo2', 'test/subfolder', NULL, NULL, 'png', '2015-04-21 11:31:47', '2015-05-05 15:10:47'),
(240, '/home/users/opt/api/web/media/settings/logo/download.png', 'download', 'download', 'settings/logo', NULL, NULL, 'png', '2015-04-25 02:49:30', '2015-05-05 15:10:47'),
(241, '/home/users/opt/api/web/media/settings/logo/e-businessLogo.png', 'e-businessLogo', 'e-businessLogo', 'settings/logo', NULL, NULL, 'png', '2015-04-27 17:41:35', '2015-06-28 01:50:27'),
(242, '/home/users/opt/api/web/media/products/images/1360479.jpg', '1360479', '1360479', 'products/images', NULL, NULL, 'jpg', '2015-01-08 17:19:20', '2015-05-05 15:10:47'),
(243, '/home/users/opt/api/web/media/products/images/image.jpg', 'image', 'image', 'products/images', NULL, NULL, 'jpg', '2015-04-30 04:16:45', '2015-05-05 15:10:47'),
(244, '/home/users/opt/api/web/media/products/digital/525811_18_b.jpg', '525811_18_b', '525811_18_b', 'products/digital', NULL, NULL, 'jpg', '2015-05-01 17:25:31', '2015-05-05 15:10:47'),
(245, '/home/users/opt/api/web/media/products/images/bigitem.jpg', 'bigitem', 'bigitem', 'products/images', NULL, NULL, 'jpg', '2015-05-04 06:25:58', '2015-05-07 02:26:50'),
(246, '/home/users/opt/api/web/media/test/subfolder/logo.png', 'file name', 'logo', 'test/subfolder', NULL, NULL, 'png', '2015-05-05 14:40:51', '2015-05-05 15:10:47'),
(247, '/home/users/opt/api/web/media/products/images/girl.png', NULL, 'girl', 'products/images', NULL, NULL, 'png', '2015-05-09 06:10:54', '2015-05-09 07:07:41'),
(248, '/home/users/opt/api/web/media/products/images/glamour_hair2.jpg', NULL, 'glamour_hair2', 'products/images', NULL, NULL, 'jpg', '2015-05-16 11:08:47', '2015-05-31 12:16:15'),
(250, '/home/users/opt/api/web/media/undefined/assets/RunMyBiz.png', NULL, 'RunMyBiz', 'undefined/assets', NULL, NULL, 'png', '2015-06-22 23:24:11', '2015-06-22 23:31:23'),
(251, '/home/users/opt/api/web/media/beautilogy/assets/RunMyBiz.png', NULL, 'RunMyBiz', 'beautilogy/assets', NULL, NULL, 'png', '2015-06-22 23:33:38', '2015-06-22 23:36:14'),
(252, '/home/users/opt/api/web/media/beautilogy/assets/leadshook-logo.png', NULL, 'leadshook-logo', 'beautilogy/assets', NULL, NULL, 'png', '2015-06-22 23:37:16', '2015-06-22 23:37:16'),
(254, '/home/users/opt/api/web/media/test/subfolder/RunMyBiz.png', 'runmybiz', 'RunMyBiz', 'test/subfolder', NULL, NULL, 'png', '2015-06-22 23:55:25', '2015-06-25 08:31:07'),
(255, '/home/users/opt/api/web/media/settings/logo/e-businessLogo.jpg', NULL, 'e-businessLogo', 'settings/logo', NULL, NULL, 'jpg', '2015-06-25 07:12:10', '2015-06-30 05:30:50'),
(256, '/home/users/opt/api/web/media/products/images/534038_20_b.jpg', NULL, '534038_20_b', 'products/images', NULL, NULL, 'jpg', '2015-06-30 05:28:12', '2015-06-30 05:28:45'),
(257, '/home/users/opt/api/web/media/beautilogy/assets/Beautilogy-logo-smooth.png', NULL, 'Beautilogy-logo-smooth', 'beautilogy/assets', NULL, NULL, 'png', '2015-07-02 01:20:17', '2015-07-02 10:30:43'),
(258, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo.jpg', NULL, 'e-businessLogo', 'settings/logo', NULL, NULL, 'jpg', '2015-07-21 09:36:22', '2015-07-21 12:52:26'),
(259, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo.png', NULL, 'e-businessLogo', 'settings/logo', NULL, NULL, 'png', '2015-07-21 09:38:00', '2015-07-21 13:13:05'),
(260, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/mountain_valley_original_by_creative_art.png2_.png', NULL, 'mountain_valley_original_by_creative_art.png2_', 'settings/logo', NULL, NULL, 'png', '2015-07-21 13:15:58', '2015-07-21 13:15:58'),
(261, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/download.png', NULL, 'download', 'settings/logo', NULL, NULL, 'png', '2015-07-22 11:51:49', '2015-07-22 11:51:49'),
(262, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/logo_gloss_hires_1.png', NULL, 'logo_gloss_hires_1', 'settings/logo', NULL, NULL, 'png', '2015-07-22 11:53:00', '2015-07-22 12:14:58'),
(263, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-logo_gloss_hires_1.png', NULL, 'e-businessLogo-logo_gloss_hires_1', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:16:35', '2015-07-22 12:16:35'),
(264, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-RunMyBiz.png', NULL, 'e-businessLogo-RunMyBiz', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:18:25', '2015-07-22 12:18:25'),
(265, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-Wed Jul 22 2015 12:23:31 GMT+0100 (CET).', NULL, 'e-businessLogo-Wed Jul 22 2015 12:23:31 GMT+0100 (CET)', 'settings/logo', NULL, NULL, '', '2015-07-22 12:23:31', '2015-07-22 12:23:31'),
(266, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-Wed Jul 22 2015 12:25:35 GMT+0100 (CET)-.png', NULL, 'e-businessLogo-Wed Jul 22 2015 12:25:35 GMT+0100 (CET)-', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:25:35', '2015-07-22 12:25:35'),
(267, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-Wed Jul 22 2015 12:30:23 GMT+0100 (CET)logo_gloss_hires_1.png', NULL, 'e-businessLogo-Wed Jul 22 2015 12:30:23 GMT+0100 (CET)logo_gloss_hires_1', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:30:24', '2015-07-22 12:30:24'),
(268, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-Wed Jul 22 2015 12:31:43 GMT+0100 (CET)logo_gloss_hires_1.png', NULL, 'e-businessLogo-Wed Jul 22 2015 12:31:43 GMT+0100 (CET)logo_gloss_hires_1', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:31:43', '2015-07-22 12:31:43'),
(269, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/15 12:32logo_gloss_hires_1.png', NULL, '15 12:32logo_gloss_hires_1', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:32:29', '2015-07-22 12:32:29'),
(270, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/15 12:33:25logo_gloss_hires_1.png', NULL, '15 12:33:25logo_gloss_hires_1', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:33:26', '2015-07-22 12:33:26');
INSERT INTO `file` (`id`, `path`, `name`, `system_name`, `folder`, `description`, `mime_type`, `extension`, `created_at`, `updated_at`) VALUES
(271, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/15 12:34:14logo_gloss_hires_1.png', NULL, '15 12:34:14logo_gloss_hires_1', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:34:14', '2015-07-22 12:34:14'),
(272, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-1437564998220logo_gloss_hires_1.png', NULL, 'e-businessLogo-1437564998220logo_gloss_hires_1', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:36:38', '2015-07-22 12:36:38'),
(273, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-1437565028348logo_gloss_hires_1.png', NULL, 'e-businessLogo-1437565028348logo_gloss_hires_1', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:37:08', '2015-07-22 12:37:08'),
(274, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-1437565051084logo_gloss_hires_1.png', NULL, 'e-businessLogo-1437565051084logo_gloss_hires_1', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:37:31', '2015-07-22 12:37:31'),
(275, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-1437565057244logo_gloss_hires_1.png', NULL, 'e-businessLogo-1437565057244logo_gloss_hires_1', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:37:37', '2015-07-22 12:37:37'),
(276, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-.-1437565155323-.-logo_gloss_hires_1.png', NULL, 'e-businessLogo-.-1437565155323-.-logo_gloss_hires_1', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:39:15', '2015-07-22 12:39:15'),
(277, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-.-1437565162892-.-logo_gloss_hires_1.png', NULL, 'e-businessLogo-.-1437565162892-.-logo_gloss_hires_1', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:39:22', '2015-07-22 12:39:22'),
(278, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-.-1437565176171-.-logo_gloss_hires_1.png', NULL, 'e-businessLogo-.-1437565176171-.-logo_gloss_hires_1', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:39:36', '2015-07-22 12:39:36'),
(279, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-.-1437565184595-.-logo_gloss_hires_1.png', NULL, 'e-businessLogo-.-1437565184595-.-logo_gloss_hires_1', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:39:44', '2015-07-22 12:39:44'),
(280, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-.-1437565308780-.-download.png', NULL, 'e-businessLogo-.-1437565308780-.-download', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:41:48', '2015-07-22 12:41:48'),
(281, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-.-1437565328020-.-e-businessLogo-.-1437565308780-.-download.png', NULL, 'e-businessLogo-.-1437565328020-.-e-businessLogo-.-1437565308780-.-download', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:42:08', '2015-07-22 12:42:08'),
(282, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-.-1437565332652-.-e-businessLogo-.-1437565328020-.-e-businessLogo-.-1437565308780-.-download.png', NULL, 'e-businessLogo-.-1437565332652-.-e-businessLogo-.-1437565328020-.-e-businessLogo-.-1437565308780-.-download', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:42:12', '2015-07-22 12:42:12'),
(283, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-.-1437565381604-.-logo_gloss_hires_1.png', NULL, 'e-businessLogo-.-1437565381604-.-logo_gloss_hires_1', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:43:01', '2015-07-22 12:43:01'),
(284, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-.-1437565655579-.-logo_gloss_hires_1.png', NULL, 'e-businessLogo-.-1437565655579-.-logo_gloss_hires_1', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:47:35', '2015-07-22 12:47:35'),
(285, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-.-1437565671979-.-logo_gloss_hires_1.png', NULL, 'e-businessLogo-.-1437565671979-.-logo_gloss_hires_1', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:47:52', '2015-07-22 12:47:52'),
(286, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-.-1437565696355-.-logo_gloss_hires_1.png', NULL, 'e-businessLogo-.-1437565696355-.-logo_gloss_hires_1', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:48:16', '2015-07-22 12:48:16'),
(287, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-.-1437565843883-.-logo_gloss_hires_1.png', NULL, 'e-businessLogo-.-1437565843883-.-logo_gloss_hires_1', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:50:43', '2015-07-22 12:50:43'),
(288, '/home/pw2/AngularProject/goLive/api_dev/web/media/settings/logo/e-businessLogo-.-1437565879156-.-logo_gloss_hires_1.png', NULL, 'e-businessLogo-.-1437565879156-.-logo_gloss_hires_1', 'settings/logo', NULL, NULL, 'png', '2015-07-22 12:51:19', '2015-07-22 12:51:19'),
(289, '/home/pw2/AngularProject/goLive/api_dev/web/media/products/images/534038_28_b.jpg', NULL, '534038_28_b', 'products/images', '{"name":"Photo 1","description":"Photo 1Photo 1Photo 1Photo 1\\nPhoto 1Photo 1\\nPhoto 1"}', NULL, 'jpg', '2015-07-22 13:39:23', '2015-07-22 13:41:14'),
(290, '/home/pw2/AngularProject/goLive/api_dev/web/media/products/images/525811_18_b.jpg', NULL, '525811_18_b', 'products/images', '{"name":"Photo 2","description":"Photo 2 Photo 2 Photo 2\\nPhoto 2 Photo 2 Photo 2\\nPhoto 2 Photo 2 Photo 2"}', NULL, 'jpg', '2015-07-22 13:40:36', '2015-07-22 13:41:14'),
(291, '/home/pw2/AngularProject/goLive/api_dev/web/media/products/images/525811_19_b.jpg', NULL, '525811_19_b', 'products/images', NULL, NULL, 'jpg', '2015-07-22 13:40:36', '2015-07-22 13:41:14'),
(292, '/home/pw2/AngularProject/goLive/api_dev/web/media/products/images/525811_20_b.jpg', NULL, '525811_20_b', 'products/images', NULL, NULL, 'jpg', '2015-07-22 13:40:37', '2015-07-22 13:41:15'),
(293, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/10405540_718683618218040_1223847394225479132_n.png', NULL, '10405540_718683618218040_1223847394225479132_n', 'products/images', NULL, NULL, 'png', '2015-08-18 11:50:20', '2015-08-18 11:50:20'),
(294, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/525811_12_b.jpg', NULL, '525811_12_b', 'products/images', NULL, NULL, 'jpg', '2015-08-18 11:59:14', '2015-08-19 13:35:30'),
(295, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/525811_20_b.jpg', NULL, '525811_20_b', 'products/images', NULL, NULL, 'jpg', '2015-08-18 11:59:14', '2015-08-19 13:56:19'),
(296, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/525811_17_b.jpg', NULL, '525811_17_b', 'products/images', NULL, NULL, 'jpg', '2015-08-18 12:04:07', '2015-08-18 13:00:34'),
(297, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/525811_18_b.jpg', NULL, '525811_18_b', 'products/images', NULL, NULL, 'jpg', '2015-08-18 12:04:07', '2015-08-19 13:56:19'),
(298, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/525811_19_b.jpg', NULL, '525811_19_b', 'products/images', NULL, NULL, 'jpg', '2015-08-18 12:04:07', '2015-08-19 13:56:19'),
(299, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/525811_34_b.jpg', NULL, '525811_34_b', 'products/images', NULL, NULL, 'jpg', '2015-08-18 12:11:14', '2015-08-18 12:55:14'),
(300, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/525811_35_b.jpg', NULL, '525811_35_b', 'products/images', NULL, NULL, 'jpg', '2015-08-18 12:11:14', '2015-08-18 12:55:14'),
(301, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/534038_1_b.jpg', NULL, '534038_1_b', 'products/images', NULL, NULL, 'jpg', '2015-08-18 12:11:14', '2015-08-18 12:55:14'),
(302, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/534038_26_b.jpg', NULL, '534038_26_b', 'products/images', NULL, NULL, 'jpg', '2015-08-18 12:11:49', '2015-08-18 12:55:14'),
(303, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/534038_27_b.jpg', NULL, '534038_27_b', 'products/images', NULL, NULL, 'jpg', '2015-08-18 12:11:49', '2015-08-18 12:55:14'),
(304, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/534038_28_b.jpg', NULL, '534038_28_b', 'products/images', NULL, NULL, 'jpg', '2015-08-18 12:11:50', '2015-08-18 12:55:14'),
(305, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/534038_29_b.jpg', NULL, '534038_29_b', 'products/images', NULL, NULL, 'jpg', '2015-08-18 12:11:50', '2015-08-18 12:55:14'),
(306, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/525811_13_b.jpg', NULL, '525811_13_b', 'products/images', NULL, NULL, 'jpg', '2015-08-18 12:52:10', '2015-08-19 16:30:11'),
(307, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/534038_35_b.jpg', NULL, '534038_35_b', 'products/images', NULL, NULL, 'jpg', '2015-08-18 12:53:56', '2015-08-18 12:55:15'),
(308, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/914101_8_b.jpg', NULL, '914101_8_b', 'products/images', NULL, NULL, 'jpg', '2015-08-18 12:53:56', '2015-08-18 12:55:15'),
(309, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/914101_20_b.jpg', NULL, '914101_20_b', 'products/images', NULL, NULL, 'jpg', '2015-08-18 12:53:56', '2015-08-18 12:55:15'),
(310, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/6140160_19_b.jpg', NULL, '6140160_19_b', 'products/images', NULL, NULL, 'jpg', '2015-08-18 12:54:20', '2015-08-18 12:55:15'),
(311, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/1670623_15_b.jpg', NULL, '1670623_15_b', 'products/images', NULL, NULL, 'jpg', '2015-08-18 12:56:03', '2015-08-18 12:56:03'),
(312, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/525811_15_b.jpg', NULL, '525811_15_b', 'products/images', NULL, NULL, 'jpg', '2015-08-18 13:00:33', '2015-08-18 18:57:14'),
(313, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/525811_16_b.jpg', NULL, '525811_16_b', 'products/images', NULL, NULL, 'jpg', '2015-08-18 13:00:34', '2015-08-19 13:15:35'),
(314, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/525811_10_b.jpg', NULL, '525811_10_b', 'products/images', NULL, NULL, 'jpg', '2015-08-18 13:05:26', '2015-08-18 13:05:31'),
(315, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/525811_11_b.jpg', NULL, '525811_11_b', 'products/images', NULL, NULL, 'jpg', '2015-08-18 13:05:26', '2015-08-19 13:15:35'),
(316, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/Phone.png', NULL, 'Phone', 'products/images', NULL, NULL, 'png', '2015-08-18 14:34:37', '2015-08-18 18:33:24'),
(317, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/headset.png', NULL, 'headset', 'products/images', NULL, NULL, 'png', '2015-08-18 15:36:25', '2015-08-18 18:34:26'),
(318, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/tv.png', NULL, 'tv', 'products/images', NULL, NULL, 'png', '2015-08-18 15:37:05', '2015-08-18 18:34:47'),
(319, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/Panel.png', NULL, 'Panel', 'products/images', NULL, NULL, 'png', '2015-08-18 16:36:50', '2015-08-18 18:34:33'),
(320, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/1928150.png', NULL, '1928150', 'products/images', NULL, NULL, 'png', '2015-08-18 17:32:08', '2015-08-18 17:32:11'),
(321, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/samsung.png', NULL, 'samsung', 'products/images', NULL, NULL, 'png', '2015-08-18 17:36:50', '2015-08-18 18:38:25'),
(322, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/Nokia.png', NULL, 'Nokia', 'products/images', NULL, NULL, 'png', '2015-08-18 17:41:24', '2015-08-18 18:39:40'),
(323, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/HP.png', NULL, 'HP', 'products/images', NULL, NULL, 'png', '2015-08-18 17:44:24', '2015-08-18 18:40:21'),
(324, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/Dell.png', NULL, 'Dell', 'products/images', NULL, NULL, 'png', '2015-08-18 17:44:39', '2015-08-18 18:40:07'),
(325, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/Sony.png', NULL, 'Sony', 'products/images', NULL, NULL, 'png', '2015-08-18 17:44:52', '2015-08-18 18:39:51'),
(326, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/Sharp.png', NULL, 'Sharp', 'products/images', NULL, NULL, 'png', '2015-08-18 17:45:11', '2015-08-18 18:39:26'),
(327, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/HTC.png', NULL, 'HTC', 'products/images', NULL, NULL, 'png', '2015-08-18 17:45:24', '2015-08-18 18:31:48'),
(328, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/Mountain.png', NULL, 'Mountain', 'products/images', NULL, NULL, 'png', '2015-08-18 17:47:01', '2015-08-18 17:47:04'),
(329, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/energy.png', NULL, 'energy', 'products/images', NULL, NULL, 'png', '2015-08-18 17:47:44', '2015-08-18 18:16:48'),
(330, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/computer.png', NULL, 'computer', 'products/images', NULL, NULL, 'png', '2015-08-18 17:56:38', '2015-08-18 18:33:18'),
(331, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/Telecommunications.png', NULL, 'Telecommunications', 'products/images', NULL, NULL, 'png', '2015-08-18 17:58:52', '2015-08-18 17:58:56'),
(332, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/craft.png', NULL, 'craft', 'products/images', NULL, NULL, 'png', '2015-08-18 18:11:06', '2015-08-18 18:29:01'),
(333, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/Agriculture_logo.png', NULL, 'Agriculture_logo', 'products/images', NULL, NULL, 'png', '2015-08-18 18:17:07', '2015-08-18 18:17:09'),
(334, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/Automobile.png', NULL, 'Automobile', 'products/images', NULL, NULL, 'png', '2015-08-18 18:17:20', '2015-08-18 18:17:23'),
(335, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/chemical.png', NULL, 'chemical', 'products/images', NULL, NULL, 'png', '2015-08-18 18:21:26', '2015-08-18 18:25:45'),
(336, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/office_furniture.png', NULL, 'office_furniture', 'products/images', NULL, NULL, 'png', '2015-08-18 18:30:02', '2015-08-18 18:30:06'),
(337, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/securityand publis.png', NULL, 'securityand publis', 'products/images', NULL, NULL, 'png', '2015-08-18 18:30:18', '2015-08-18 18:30:22'),
(338, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/industrial-supplies.png', NULL, 'industrial-supplies', 'products/images', NULL, NULL, 'png', '2015-08-18 18:30:31', '2015-08-18 18:30:33'),
(339, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/Environment.png', NULL, 'Environment', 'products/images', NULL, NULL, 'png', '2015-08-18 18:30:46', '2015-08-18 18:30:48'),
(340, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/watch.png', NULL, 'watch', 'products/images', NULL, NULL, 'png', '2015-08-18 18:33:38', '2015-08-18 18:33:41'),
(341, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/Calculator.png', NULL, 'Calculator', 'products/images', NULL, NULL, 'png', '2015-08-18 18:34:07', '2015-08-18 18:34:11'),
(342, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/spot.png', NULL, 'spot', 'products/images', NULL, NULL, 'png', '2015-08-18 18:34:58', '2015-08-18 18:35:01'),
(343, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/525811_22_b.jpg', NULL, '525811_22_b', 'products/images', NULL, NULL, 'jpg', '2015-08-19 13:17:48', '2015-08-19 13:56:19'),
(344, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/534038_10_b.jpg', NULL, '534038_10_b', 'products/images', NULL, NULL, 'jpg', '2015-08-19 14:01:57', '2015-08-19 14:01:57'),
(345, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/534038_11_b.jpg', NULL, '534038_11_b', 'products/images', NULL, NULL, 'jpg', '2015-08-19 14:01:57', '2015-08-19 14:01:57'),
(346, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/534038_12_b.jpg', NULL, '534038_12_b', 'products/images', NULL, NULL, 'jpg', '2015-08-19 14:01:57', '2015-08-19 14:02:41'),
(347, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/534038_13_b.jpg', NULL, '534038_13_b', 'products/images', NULL, NULL, 'jpg', '2015-08-19 14:02:38', '2015-08-19 14:02:41'),
(348, '/home/pw2/PortalsWay/APEDevices/backend/web/media/products/images/534038_14_b.jpg', NULL, '534038_14_b', 'products/images', NULL, NULL, 'jpg', '2015-08-19 14:02:38', '2015-08-19 14:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) NOT NULL,
  `receiver_id` int(10) NOT NULL,
  `subject` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `draft` tinyint(4) NOT NULL,
  `is_sent` tinyint(4) NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `last_read_at` datetime DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_id` (`sender_id`),
  KEY `receiver_id` (`receiver_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `body`, `draft`, `is_sent`, `is_read`, `created_at`, `updated_at`, `deleted_at`, `last_read_at`, `type`) VALUES
(4, 1, 3, 'test subject', ' body test message  body test message  body test message  body test message ', 0, 1, 0, '2015-08-16 00:00:00', '2015-08-16 00:00:00', '0000-00-00 00:00:00', '2015-08-17 00:00:00', '1'),
(5, 3, 1, ' subject 2 test message2  ', ' body test message2  body test message 2 body test message  body test message ', 0, 1, 0, '2015-08-17 00:00:00', '2015-08-17 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1'),
(6, 1, 3, 'Le Lorem Ipsum .', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 0, 1, 1, '2015-08-17 00:00:00', '2015-08-17 00:00:00', NULL, NULL, '1'),
(7, 1, 2, 'subject 3', 'subject 3 body 3 subject 3 body 3 subject 3 body 3 subject 3 body 3 subject 3 body 3 subject 3 body 3 subject 3 body 3 subject 3 body 3 subject 3 body 3 ', 0, 1, 1, '2015-08-17 00:00:00', '2015-08-17 00:00:00', '2015-08-17 00:00:00', '2015-08-17 00:00:00', '2');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1437819140),
('m130524_201442_init', 1437819142),
('m150816_115333_product_add_fields_field', 1439730540),
('m150816_152118_device_add_extra_fields_field', 1439738678);

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE IF NOT EXISTS `product_image` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `product_id` int(10) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_image_product` (`product_id`),
  KEY `product_image_image` (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=536 ;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`id`, `product_id`, `image_id`, `created_at`, `updated_at`) VALUES
(529, 18, 340, NULL, NULL),
(531, 15, 341, NULL, NULL),
(532, 19, 317, NULL, NULL),
(533, 17, 319, NULL, NULL),
(534, 13, 318, NULL, NULL),
(535, 16, 342, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_product`
--

CREATE TABLE IF NOT EXISTS `product_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `product` varchar(25) NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `params` text,
  `name` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `extra_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'DC2Type:array',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `product_product`
--

INSERT INTO `product_product` (`id`, `product`, `short_description`, `description`, `params`, `name`, `created_at`, `updated_at`, `extra_fields`) VALUES
(12, 'Phone ', 'Phone Phone ', 'Phone Phone Phone Phone Phone Phone Phone Phone ', NULL, 'Phone', '2015-08-11 00:00:00', '2015-08-18 18:33:24', 'a:1:{i:0;a:7:{s:2:"id";s:0:"";s:4:"name";s:6:"memory";s:5:"field";s:6:"memory";s:7:"content";s:2:"60";s:4:"type";s:4:"text";s:7:"enabled";s:0:"";s:6:"length";i:50;}}'),
(13, 'TV', 'Proin non sagittis eros, id pharetra mauris. Vestibulum eu ante ut justo finibus feugiat vitae quis mi. Phasellus efficitur finibus nisl, ac laoreet velit volutpat non. Praesent et odio turpis. Duis vestibulum turpis lectus, in consequat turpis porttitor vitae. Phasellus sit amet elementum sem. Duis auctor justo nec lectus sodales auctor. Nunc eget sapien magna.', 'Proin non sagittis eros, id pharetra mauris. Vestibulum eu ante ut justo finibus feugiat vitae quis mi. Phasellus efficitur finibus nisl, ac laoreet velit volutpat non. Praesent et odio turpis. Duis vestibulum turpis lectus, in consequat turpis porttitor vitae. Phasellus sit amet elementum sem. Duis auctor justo nec lectus sodales auctor. Nunc eget sapien magna.\n\nProin non sagittis eros, id pharetra mauris. Vestibulum eu ante ut justo finibus feugiat vitae quis mi. Phasellus efficitur finibus nisl, ac laoreet velit volutpat non. Praesent et odio turpis. Duis vestibulum turpis lectus, in consequat turpis porttitor vitae. Phasellus sit amet elementum sem. Duis auctor justo nec lectus sodales auctor. Nunc eget sapien magna.', NULL, 'TV', '2015-08-11 00:00:00', '2015-08-18 18:34:46', NULL),
(14, 'Computer', 'Nullam at tortor elit. In ut consequat risus. Nulla porttitor cursus ligula ac pulvinar. Proin a quam nibh. Donec gravida tortor in ligula tristique, efficitur dignissim mauris varius. Mauris eu odio urna. Vestibulum lacinia, enim sed faucibus semper, justo libero fermentum lorem, a lacinia purus lectus et lacus. Ut dictum ultrices nunc a maximus. Morbi id justo sit amet purus vestibulum imperdiet sed eget tortor. Pellentesque velit velit, consectetur vitae condimentum bibendum, sollicitudin non purus.', 'Nullam at tortor elit. In ut consequat risus. Nulla porttitor cursus ligula ac pulvinar. Proin a quam nibh. Donec gravida tortor in ligula tristique, efficitur dignissim mauris varius. Mauris eu odio urna. Vestibulum lacinia, enim sed faucibus semper, justo libero fermentum lorem, a lacinia purus lectus et lacus. Ut dictum ultrices nunc a maximus. Morbi id justo sit amet purus vestibulum imperdiet sed eget tortor. Pellentesque velit velit, consectetur vitae condimentum bibendum, sollicitudin non purus.\n\nNullam at tortor elit. In ut consequat risus. Nulla porttitor cursus ligula ac pulvinar. Proin a quam nibh. Donec gravida tortor in ligula tristique, efficitur dignissim mauris varius. Mauris eu odio urna. Vestibulum lacinia, enim sed faucibus semper, justo libero fermentum lorem, a lacinia purus lectus et lacus. Ut dictum ultrices nunc a maximus. Morbi id justo sit amet purus vestibulum imperdiet sed eget tortor. Pellentesque velit velit, consectetur vitae condimentum bibendum, sollicitudin non purus.', NULL, 'Computer', '2015-08-11 11:59:53', '2015-08-18 18:33:18', NULL),
(15, 'calculator', 'quis maximus mauris ullamcorper. Sed feugiat, eros in pulvinar mollis, diam ligula dapibus ante, in mattis ipsum ipsum a lectus. Mauris viverra consequat eleifend.', 'quis maximus mauris ullamcorper. Sed feugiat, eros in pulvinar mollis, diam ligula dapibus ante, in mattis ipsum ipsum a lectus. Mauris viverra consequat eleifend.\n quis maximus mauris ullamcorper. Sed feugiat, eros in pulvinar mollis, diam ligula dapibus ante, in mattis ipsum ipsum a lectus. Mauris viverra consequat eleifend quis maximus mauris ullamcorper. Sed feugiat, eros in pulvinar mollis, diam ligula dapibus ante, in mattis ipsum ipsum a lectus. Mauris viverra consequat eleifend.', NULL, 'Calculator', '2015-08-11 14:51:33', '2015-08-18 18:34:11', NULL),
(16, 'Spot', 'Spot Spot Spot Spot', 'Spot Spot Spot SpotSpot Spot Spot SpotSpot Spot Spot SpotSpot Spot Spot Spot\nSpot Spot Spot SpotSpot Spot Spot SpotSpot Spot Spot Spot', NULL, 'Spot', '2015-08-11 15:15:17', '2015-08-18 18:35:01', NULL),
(17, 'panel', 'Panel', 'Panel panel panel', NULL, 'Panel', '2015-08-11 15:18:17', '2015-08-18 18:34:33', NULL),
(18, 'watch', 'Nullam tempor ultricies purus, et rhoncus ex varius varius. Etiam scelerisque ac eros ut faucibus. Vestibulum vitae ante quis ipsum tincidunt pretium. Suspendisse venenatis rutrum felis, ut hendrerit est porta quis. Aenean volutpat suscipit quam, in sollicitudin nibh imperdiet eget. Sed tincidunt, metus sit amet aliquet viverra, enim quam interdum nisl, vel gravida est nulla in magna. In fringilla ac metus pharetra lacinia. Morbi tempus metus magna, faucibus sodales nisi euismod non. Etiam in nulla venenatis,', 'Nullam tempor ultricies purus, et rhoncus ex varius varius. Etiam scelerisque ac eros ut faucibus. Vestibulum vitae ante quis ipsum tincidunt pretium. Suspendisse venenatis rutrum felis, ut hendrerit est porta quis. Aenean volutpat suscipit quam, in sollicitudin nibh imperdiet eget. Sed tincidunt, metus sit amet aliquet viverra, enim quam interdum nisl, vel gravida est nulla in magna. In fringilla ac metus pharetra lacinia. Morbi tempus metus magna, faucibus sodales nisi euismod non. Etiam in nulla venenatis,\nNullam tempor ultricies purus, et rhoncus ex varius varius. Etiam scelerisque ac eros ut faucibus. Vestibulum vitae ante quis ipsum tincidunt pretium. Suspendisse venenatis rutrum felis, ut hendrerit est porta quis. Aenean volutpat suscipit quam, in sollicitudin nibh imperdiet eget. Sed tincidunt, metus sit amet aliquet viverra, enim quam interdum nisl, vel gravida est nulla in magna. In fringilla ac metus pharetra lacinia. Morbi tempus metus magna, faucibus sodales nisi euismod non. Etiam in nulla venenatis,', NULL, 'Watch', '2015-08-11 15:21:42', '2015-08-18 18:33:41', 'a:5:{i:0;a:8:{s:2:"id";s:1:"1";s:4:"name";s:6:"Memory";s:5:"field";s:6:"memory";s:7:"content";s:3:"232";s:4:"type";s:4:"text";s:7:"enabled";b:1;s:6:"length";i:333;s:11:"description";s:4:"2662";}i:1;a:8:{s:2:"id";s:1:"2";s:4:"name";s:19:"Mass storage device";s:5:"field";s:19:"mass_storage_device";s:7:"content";s:2:"20";s:4:"type";s:3:"int";s:7:"enabled";b:1;s:6:"length";i:999;s:11:"description";s:8:"99999999";}i:2;a:8:{s:2:"id";s:0:"";s:4:"name";s:5:"ameur";s:5:"field";s:5:"ameur";s:7:"content";s:3:"655";s:4:"type";s:3:"int";s:7:"enabled";s:0:"";s:6:"length";i:95;s:11:"description";s:4:"amer";}i:3;a:8:{s:2:"id";s:0:"";s:4:"name";s:5:"color";s:5:"field";s:5:"color";s:7:"content";s:3:"red";s:4:"type";s:4:"text";s:7:"enabled";s:0:"";s:6:"length";i:120;s:11:"description";s:4:"adaz";}i:4;a:8:{s:2:"id";s:0:"";s:4:"name";s:3:"zer";s:5:"field";s:3:"zer";s:7:"content";s:5:"dfgdg";s:4:"type";s:3:"int";s:7:"enabled";s:0:"";s:6:"length";i:32;s:11:"description";s:17:"3232 zefzff sdfsd";}}'),
(19, 'Headset', 'Headset Headset Headset Headset', 'Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset', NULL, 'Headset', '2015-08-11 15:23:48', '2015-08-18 18:34:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `active` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `activated_at` datetime DEFAULT NULL,
  `first_name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `activation_code` text COLLATE utf8_unicode_ci,
  `blocked` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `activated_at`, `first_name`, `last_name`, `last_login`, `activation_code`, `blocked`) VALUES
(1, 'tchernobyl', 'eyb8_MAxnjuSTO-RlJ50TRZ2c85JOfHZ', '$2y$13$RWdHh8cP6XeFnwc9Qb03C.hazu5dwqAAXd6vyO3fL69FBM8re90TC', NULL, 'ameur.hamdouni@gmail.com', 10, '0000-00-00 00:00:00', '2015-08-19 13:35:30', NULL, 'hamdouni', 'ameur', '2015-08-17 13:27:38', 'h8cP6XeFnwc9Qb03C.hazu5dwq', 0),
(2, 'pw2', 'eyb8_MAxnjuSTO-RlJ50TRZ2c85JOfHZ', '$2y$13$RWdHh8cP6XeFnwc9Qb03C.hazu5dwqAAXd6vyO3fL69FBM8re90TC', NULL, 'pw2@gmail.com', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'pw2', 'tchar', '2015-08-17 13:27:38', 'h8cP6XeFnwc9Qb03C.hazu5dwq', 0),
(3, 'Omar', 'eyb8_MAxnjuSTO-RlJ50TRZ2c85JOfHZ', '$2y$13$RWdHh8cP6XeFnwc9Qb03C.hazu5dwqAAXd6vyO3fL69FBM8re90TC', NULL, 'omar@gmail.com', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'daly', 'omar', '2015-08-17 13:27:38', 'h8cP6XeFnwc9Qb03C.hazu5dwq', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_image`
--

CREATE TABLE IF NOT EXISTS `user_image` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_image_user` (`user_id`),
  KEY `user_image_image` (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=530 ;

--
-- Dumping data for table `user_image`
--

INSERT INTO `user_image` (`id`, `user_id`, `image_id`, `created_at`, `updated_at`) VALUES
(526, 1, 295, NULL, NULL),
(527, 1, 298, NULL, NULL),
(528, 1, 343, NULL, NULL),
(529, 1, 294, NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brand_category`
--
ALTER TABLE `brand_category`
  ADD CONSTRAINT `brand_category` FOREIGN KEY (`category_id`) REFERENCES `category_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_brand` FOREIGN KEY (`brand_id`) REFERENCES `brand_brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `brand_image`
--
ALTER TABLE `brand_image`
  ADD CONSTRAINT `brand_image_image` FOREIGN KEY (`image_id`) REFERENCES `file` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `brand_image_brand` FOREIGN KEY (`brand_id`) REFERENCES `brand_brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `brand_product`
--
ALTER TABLE `brand_product`
  ADD CONSTRAINT `brand_product` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_brand` FOREIGN KEY (`brand_id`) REFERENCES `brand_brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category_category`
--
ALTER TABLE `category_category`
  ADD CONSTRAINT `category_category_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `category_category` (`id`);

--
-- Constraints for table `category_image`
--
ALTER TABLE `category_image`
  ADD CONSTRAINT `category_image_image` FOREIGN KEY (`image_id`) REFERENCES `file` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `category_image_category` FOREIGN KEY (`category_id`) REFERENCES `category_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `content_device`
--
ALTER TABLE `content_device`
  ADD CONSTRAINT `brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brand_brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `category_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `device_id` FOREIGN KEY (`device_id`) REFERENCES `device_device` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `owner_id` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `content_image`
--
ALTER TABLE `content_image`
  ADD CONSTRAINT `content_image_image` FOREIGN KEY (`image_id`) REFERENCES `file` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `content_image_content` FOREIGN KEY (`content_id`) REFERENCES `content_device` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `device_device`
--
ALTER TABLE `device_device`
  ADD CONSTRAINT `device_brand_id` FOREIGN KEY (`device_brand_id`) REFERENCES `brand_brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `device_category_id` FOREIGN KEY (`device_category_id`) REFERENCES `category_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `device_product_id` FOREIGN KEY (`device_product_id`) REFERENCES `product_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `device_image`
--
ALTER TABLE `device_image`
  ADD CONSTRAINT `device_image_image` FOREIGN KEY (`image_id`) REFERENCES `file` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `device_image_device` FOREIGN KEY (`device_id`) REFERENCES `device_device` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `device_product`
--
ALTER TABLE `device_product`
  ADD CONSTRAINT `device_product` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_device` FOREIGN KEY (`device_id`) REFERENCES `device_device` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `field_field`
--
ALTER TABLE `field_field`
  ADD CONSTRAINT `field_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `receiver_id` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sender_id` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `product_image_image` FOREIGN KEY (`image_id`) REFERENCES `file` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `product_image_product` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_image`
--
ALTER TABLE `user_image`
  ADD CONSTRAINT `user_image_image` FOREIGN KEY (`image_id`) REFERENCES `file` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `user_image_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;