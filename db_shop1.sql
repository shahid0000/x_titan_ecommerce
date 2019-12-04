-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2019 at 06:53 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPass`, `level`) VALUES
(11, 'Shahid', 'shahid', 'shahidulislamctg229@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(12, 'Shahid', 'shahid', 'shahidulislamctg229@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'ACER'),
(2, 'SAMSUNG'),
(3, 'IPHONE'),
(4, 'CANON'),
(5, 'Adidas'),
(6, 'nike'),
(7, 'tokyo');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(1, 'Desktop'),
(3, 'Mobile Phones'),
(4, 'Accessories'),
(5, 'Software'),
(6, 'Sports &amp; Fitness'),
(7, 'Footwear'),
(11, 'Clothing'),
(14, 'Desktop'),
(15, 'mobile'),
(16, 'Laptop'),
(17, 'skmei');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zip` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`, `pass`) VALUES
(6, 'customer one', 'cyberjaya ,Malaysia', 'selongor', 'Malaysia', '63000', '22222', 'one@gmail.com', '202cb962ac59075b964b07152d234b70'),
(7, 'masud', 'cyberjaya ,Malaysia', 'selongor', 'Malaysia', '63000', '2222222222', 'masud@gmail.com', '202cb962ac59075b964b07152d234b70'),
(8, 'jarif', 'cyberjaya ,Malaysia', 'selongor', 'Malaysia', '63000', '0167305', 'jarif@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(9, 'jarif', 'cyberjaya ,Malaysia', 'selongor', 'Malaysia', '63000', '0167305133', 'jarif2@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(10, 'jarif', 'cyberjaya ,Malaysia', 'selongor', 'Malaysia', '63000', '0167302255', 'jarif5@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cmrId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(14, 6, 18, 'desktop', 2, 1010.44, 'uploads/7648b9187a.jpg', '2019-11-21 01:43:05', 0),
(15, 6, 20, 'camera', 3, 662.91, 'uploads/ab3b83cbe8.jpg', '2019-11-21 01:43:05', 0),
(16, 6, 3, 'Lorem Ipsum is simply', 1, 505.22, 'uploads/09a67aa445.png', '2019-11-21 01:43:05', 0),
(18, 6, 18, 'desktop', 1, 505.22, 'uploads/7648b9187a.jpg', '2019-11-21 02:06:08', 0),
(19, 6, 3, 'Lorem Ipsum is simply', 1, 505.22, 'uploads/09a67aa445.png', '2019-11-21 02:06:08', 0),
(21, 6, 20, 'camera', 3, 662.91, 'uploads/ab3b83cbe8.jpg', '2019-11-21 02:06:08', 0),
(22, 6, 21, 'sound system', 1, 661.00, 'uploads/20e1fa7001.jpg', '2019-11-22 16:07:26', 0),
(23, 6, 20, 'camera', 1, 220.97, 'uploads/ab3b83cbe8.jpg', '2019-11-22 16:07:26', 0),
(24, 8, 18, 'desktop', 1, 505.22, 'uploads/7648b9187a.jpg', '2019-11-25 00:24:46', 0),
(25, 8, 11, 'Lorem ipsum dolor sit amet sed do eiusmod.', 3, 3774.00, 'uploads/f835b23eff.png', '2019-11-25 00:24:46', 0),
(26, 8, 21, 'sound system', 2, 1322.00, 'uploads/20e1fa7001.jpg', '2019-11-25 00:24:46', 0),
(27, 9, 4, 'Lorem Ipsum is simply', 1, 220.97, 'uploads/62e35f7a4b.jpg', '2019-11-25 00:38:31', 0),
(28, 9, 18, 'desktop', 2, 1010.44, 'uploads/7648b9187a.jpg', '2019-11-25 00:38:31', 0),
(29, 10, 11, 'Lorem ipsum dolor sit amet sed do eiusmod.', 3, 3774.00, 'uploads/f835b23eff.png', '2019-11-25 01:15:54', 0),
(30, 10, 23, 'camera', 2, 1322.00, 'uploads/946a7b6de0.jpg', '2019-11-25 01:15:54', 0),
(31, 6, 24, 'western dress', 1, 220.97, 'uploads/7163b35996.jpg', '2019-11-26 01:49:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `type`) VALUES
(3, 'Lorem Ipsum is simply', 4, 4, '<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>', 505.22, 'uploads/09a67aa445.png', 0),
(4, 'Lorem Ipsum is simply', 4, 2, '<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>&nbsp;</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>&nbsp;</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>&nbsp;</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<pre class=\"highlight\" style=\"box-sizing: border-box; border: 0px; font-family: \'Courier 10 Pitch\', Courier, monospace; font-size: 1.5rem; margin: 0px; outline: 0px; padding: 1.6em; vertical-align: baseline; line-height: 1.6; max-width: 100%; overflow: auto; color: #444444;\">elseif ($file_size &gt;1048567) {\r\n     echo \"&lt;span class=\'error\'&gt;Image Size should be less then 1MB!\r\n     &lt;/span&gt;\";\r\n    } elseif (in_array($file_ext, $permited) === false) {\r\n     echo \"&lt;span class=\'error\'&gt;You can upload only:-\"\r\n     .implode(\', \', $permited).\"&lt;/span&gt;\";\r\n    }</pre>', 220.97, 'uploads/62e35f7a4b.jpg', 0),
(6, 'Lorem Ipsum is simply', 4, 1, '<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>', 621.75, 'uploads/00b61f6649.jpg', 1),
(7, 'Lorem Ipsum is simply', 4, 2, '<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>', 428.02, 'uploads/69b04e27ef.jpg', 1),
(11, 'Lorem ipsum dolor sit amet sed do eiusmod.', 3, 3, '<p><span>Lorem ipsum dolor sit amet sed do eiusmod</span><span>Lorem ipsum dolor sit amet sed do eiusmod</span><span>Lorem ipsum dolor sit amet sed do eiusmod</span><span>Lorem ipsum dolor sit amet sed do eiusmod</span><span>Lorem ipsum dolor sit amet sed do eiusmod</span><span>Lorem ipsum dolor sit amet sed do eiusmod</span><span>Lorem ipsum dolor sit amet sed do eiusmod</span><span>Lorem ipsum dolor sit amet sed do eiusmod</span><span>Lorem ipsum dolor sit amet sed do eiusmod</span><span>Lorem ipsum dolor sit amet sed do eiusmod</span><span>Lorem ipsum dolor sit amet sed do eiusmod</span><span>Lorem ipsum dolor sit amet sed do eiusmod</span><span>Lorem ipsum dolor sit amet sed do eiusmod</span></p>', 1258.00, 'uploads/f835b23eff.png', 1),
(12, 'Lorem Ipsum is simply', 4, 2, '<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>', 5698.25, 'uploads/ecccfd8d21.png', 1),
(13, 'test product one', 1, 1, '<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>', 955.25, 'uploads/fc374c8669.jpg', 1),
(18, 'desktop', 4, 1, '<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>', 505.22, 'uploads/7648b9187a.jpg', 0),
(20, 'camera', 4, 4, '<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>', 220.97, 'uploads/ab3b83cbe8.jpg', 1),
(21, 'sound system', 4, 2, '<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>\r\n<p>Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....Product details will be go here.....</p>', 661.00, 'uploads/20e1fa7001.jpg', 0),
(23, 'camera', 4, 4, '<p>this product is good&nbsp;</p>', 661.00, 'uploads/946a7b6de0.jpg', 1),
(24, 'western dress', 11, 5, '<p>qewrfsc</p>', 220.97, 'uploads/7163b35996.jpg', 1),
(25, 'Navy Blue Colored Georgette', 11, 5, '<h1 id=\"design_title\" class=\"design_title\">NAVY BLUE COLORED GEORGETTE EMBROIDERED DESIGNER FLOOR LENGTH ANARKALI SUIT SEMI STITCHED</h1>', 200.00, 'uploads/11b1783aaa.jpeg', 0),
(26, 'Yellow Embroidered Faux', 11, 5, '<h1 id=\"design_title\" class=\"design_title\">YELLOW EMBROIDERED FAUX GEORGETTE ANARKALI SEMI STITCHED</h1>', 100.00, 'uploads/7d0727f84a.jpeg', 1),
(27, 'samsung', 15, 2, '<p>Good product...buy hurry...</p>', 599.00, 'uploads/58bdae3759.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wlist`
--

CREATE TABLE `tbl_wlist` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wlist`
--

INSERT INTO `tbl_wlist` (`id`, `cmrId`, `productId`, `productName`, `price`, `image`) VALUES
(4, 8, 23, 'camera', 661.00, 'uploads/946a7b6de0.jpg'),
(7, 10, 27, 'samsung', 599.00, 'uploads/58bdae3759.png'),
(8, 6, 27, 'samsung', 599.00, 'uploads/58bdae3759.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
