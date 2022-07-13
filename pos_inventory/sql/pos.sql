-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2022 at 03:47 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `qty` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `category_name`) VALUES
(1, 'Shirt'),
(2, 'More Shirts...'),
(3, 'MORE SHIRTS');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `userid` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`userid`, `customer_name`, `address`, `contact`) VALUES
(2, 'su wei harn', 'peneng', '123123123123'),
(10, 'dummy', '123', '123'),
(11, 'sir Pugalenthi', 'idk', '+60 11-1199 0163');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventoryid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `inventory_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventoryid`, `userid`, `action`, `productid`, `quantity`, `inventory_date`) VALUES
(1, 2, 'Purchase', 4, 10, '2017-09-18 09:32:01'),
(2, 2, 'Purchase', 20, 10, '2017-09-18 09:32:01'),
(3, 2, 'Purchase', 1, 99, '2017-09-18 09:32:01'),
(4, 2, 'Purchase', 2, 20, '2017-09-18 09:32:01'),
(5, 2, 'Purchase', 2, 10, '2017-09-18 09:34:29'),
(6, 2, 'Purchase', 2, 10, '2017-09-18 11:09:21'),
(7, 2, 'Purchase', 3, 12, '2017-09-18 11:09:22'),
(8, 2, 'Purchase', 4, 8, '2017-09-18 11:09:22'),
(9, 1, 'Add Product', 27, 10, '2017-09-18 13:59:25'),
(10, 1, 'Update quantity', 27, 20, '2017-09-18 14:04:32'),
(11, 2, 'Purchase', 1, 1, '2022-07-11 21:36:52'),
(12, 1, 'Add Product', 28, 1, '2022-07-11 21:45:26'),
(13, 2, 'Purchase', 1, 1, '2022-07-11 22:03:29'),
(14, 2, 'Purchase', 2, 1, '2022-07-11 22:03:29'),
(15, 2, 'Purchase', 3, 1, '2022-07-11 22:03:29'),
(16, 1, 'Add Product', 29, 999999999999999, '2022-07-11 22:30:43'),
(17, 1, 'Add Product', 30, 999999999999999, '2022-07-11 22:30:54'),
(18, 1, 'Add Product', 31, 999999999999999, '2022-07-11 22:31:06'),
(19, 1, 'Add Product', 32, 999999999999999, '2022-07-11 22:31:15'),
(20, 1, 'Add Product', 33, 999999999999999, '2022-07-11 22:31:26'),
(21, 1, 'Add Product', 34, 999999999999999, '2022-07-11 22:31:35'),
(22, 1, 'Add Product', 35, 999999999999999, '2022-07-11 22:32:00'),
(23, 1, 'Add Product', 36, 999999999999999, '2022-07-11 22:32:29'),
(24, 1, 'Add Product', 37, 999999999999999, '2022-07-11 22:32:44'),
(25, 1, 'Add Product', 38, 999999999999999, '2022-07-11 22:32:57'),
(26, 2, 'Purchase', 32, 1, '2022-07-11 22:34:00'),
(27, 2, 'Purchase', 33, 1, '2022-07-11 22:34:00'),
(28, 2, 'Purchase', 37, 3, '2022-07-11 22:34:00'),
(29, 2, 'Purchase', 29, 1, '2022-07-11 22:35:13'),
(30, 2, 'Purchase', 30, 1, '2022-07-11 22:35:13'),
(31, 2, 'Purchase', 31, 1, '2022-07-11 22:35:13'),
(32, 2, 'Purchase', 32, 1, '2022-07-11 22:35:13'),
(33, 2, 'Purchase', 33, 1, '2022-07-11 22:35:13'),
(34, 2, 'Purchase', 34, 1, '2022-07-11 22:35:13'),
(35, 2, 'Purchase', 33, 15, '2022-07-12 08:33:34');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `product_price` double NOT NULL,
  `product_qty` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `supplierid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `product_name`, `product_price`, `product_qty`, `photo`, `supplierid`) VALUES
(28, 1, 'test', 1, 1, 'upload/42454567_m.jpg_1657547126.jpg', 4),
(29, 1, 'armani', 1, 999999999999998, 'upload/Armani-Exchange_1591888692_1657549843.jpg', 4),
(30, 1, 'burberry', 1, 999999999999998, 'upload/burberry_1657549854.jpg', 4),
(31, 1, 'chanel', 1, 999999999999998, 'upload/chanel_1657549866.jpg', 4),
(32, 1, 'fendi', 1, 999999999999997, 'upload/fendi_1657549875.jpg', 4),
(33, 1, 'gucci', 1, 999999999999982, 'upload/gucci_1657549886.jpg', 4),
(34, 1, 'hermes', 1, 999999999999998, 'upload/hermes_1657549895.jpg', 4),
(35, 1, 'El Vee', 1, 999999999999999, 'upload/LV_1657549920.jpg', 4),
(36, 2, 'prada', 1, 999999999999999, 'upload/prada_1657549949.jpg', 4),
(37, 3, 'Ralph Lauren', 1, 999999999999996, 'upload/ralph lauren_1657549964.jpg', 4),
(38, 1, 'Versace', 1, 999999999999999, 'upload/versace_1657549977.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `salesid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `sales_total` double NOT NULL,
  `sales_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`salesid`, `userid`, `sales_total`, `sales_date`) VALUES
(14, 2, 6, '2022-07-11 22:35:13'),
(15, 2, 15, '2022-07-12 08:33:34');

-- --------------------------------------------------------

--
-- Table structure for table `sales_detail`
--

CREATE TABLE `sales_detail` (
  `sales_detailid` int(11) NOT NULL,
  `salesid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `sales_qty` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_detail`
--

INSERT INTO `sales_detail` (`sales_detailid`, `salesid`, `productid`, `sales_qty`) VALUES
(26, 14, 29, 1),
(27, 14, 30, 1),
(28, 14, 31, 1),
(29, 14, 32, 1),
(30, 14, 33, 1),
(31, 14, 34, 1),
(32, 15, 33, 15);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `userid` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `company_address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`userid`, `company_name`, `company_address`, `contact`) VALUES
(4, 'supplier', 'somewhere on earth ', '1800-i-want-2-die');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `access` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `access`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'weiharn', '5645939aeeb5b2d1d6db58c9035dc40c', 2),
(4, 'supplier', '99b0e8da24e29e4ccb5d7d76e677c2ac', 3),
(10, 'placeholder', '6a99c575ab87f8c7d1ed1e52e7e349ce', 2),
(11, 'puga', '5e646c89eb73c7b8c88cf169d3d3a527', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventoryid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`salesid`);

--
-- Indexes for table `sales_detail`
--
ALTER TABLE `sales_detail`
  ADD PRIMARY KEY (`sales_detailid`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `salesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sales_detail`
--
ALTER TABLE `sales_detail`
  MODIFY `sales_detailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
