-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2020 at 12:21 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'd71fea0f4d41de7515de74c4852446cf', '15-05-2020 09:57:22 PM'),
(3, 'Deepak', '3b8f9fa2e58b5e835028f1dafc2de1fa', '15-05-2020 11:20:15 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'TMS- Hardware', 'TMS- Hardware', '2020-05-16 05:56:40', '2020-05-16 05:57:08'),
(4, 'TMS- Software', 'TMS- Software', '2020-05-16 06:00:15', NULL),
(5, 'Office Equpiment', '', '2020-05-16 06:23:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `remarkDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'Hi this for demo', '2017-04-01 17:29:19'),
(2, 9, 'in process', 'hiiiiiiiiiiiiiiiiiiii', '2017-04-01 18:37:59'),
(3, 3, 'in process', 'test', '2017-05-02 15:57:43'),
(4, 19, 'closed', 'case solved', '2017-06-11 11:18:33'),
(5, 1, 'closed', 'This sample text for testing', '2018-09-05 17:08:26'),
(6, 5, 'in process', 'test Data', '2019-06-24 07:26:17'),
(7, 23, 'in process', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-06-24 10:34:47'),
(8, 23, 'closed', 'Issue resolved ', '2019-06-24 10:37:08'),
(9, 6, 'closed', 'closed', '2020-05-15 16:28:32'),
(10, 24, 'in process', 'Work in Progress', '2020-05-15 17:09:46'),
(11, 26, 'closed', 'RX Tower has been changed.Now its working Properly..', '2020-05-16 06:05:09'),
(12, 27, 'in process', 'bb', '2020-05-16 06:47:15'),
(13, 28, 'in process', 'Yy', '2020-05-17 04:38:23'),
(14, 30, 'closed', 'bb', '2020-05-17 17:40:23'),
(15, 31, 'closed', 'closed', '2020-05-18 06:38:05');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) DEFAULT NULL,
  `stateDescription` tinytext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(8, 'Dhulagarh Toll PLaza', 'NH6,Jaladhulagarh', '2020-05-16 06:34:56', NULL),
(9, 'Debra Toll Plaza', 'NH6,Debra, Pachim Madnipur', '2020-05-16 06:36:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(3, 2, 'Other', '2019-06-24 07:06:44', '2020-05-16 06:09:33'),
(4, 3, 'RX Tower', '2020-05-16 05:58:25', NULL),
(5, 3, 'TX Tower', '2020-05-16 05:58:35', NULL),
(6, 3, 'Barrier', '2020-05-16 05:58:46', NULL),
(7, 3, 'TLC', '2020-05-16 05:58:57', NULL),
(8, 3, 'RFID', '2020-05-16 05:59:31', NULL),
(9, 3, 'CCTV', '2020-05-16 05:59:58', NULL),
(10, 4, 'TMSV10', '2020-05-16 06:02:24', NULL),
(11, 4, 'TMSLOCAL', '2020-05-16 06:02:39', NULL),
(12, 3, 'Server', '2020-05-16 06:02:54', NULL),
(13, 5, 'Computer', '2020-05-16 06:24:04', NULL),
(14, 5, 'Printer', '2020-05-16 06:24:13', NULL),
(15, 5, 'XEROX', '2020-05-16 06:24:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(26, 7, 3, 'RX Tower', 'General Query', 'West Bengal', 'High Important', 'Graph Not Clear', '', '2020-05-16 06:03:47', 'closed', '2020-05-16 06:05:10'),
(27, 7, 5, 'Printer', ' Complaint', 'Dhulagarh Toll PLaza', 'High Important', 'no', '', '2020-05-16 06:39:47', 'in process', '2020-05-16 06:47:15'),
(28, 7, 3, 'Barrier', 'General Query', 'Dhulagarh Toll PLaza', 'Jh', 'Hhhh', '', '2020-05-16 08:47:25', 'in process', '2020-05-17 04:38:23'),
(29, 7, 4, 'TMSV10', 'General Query', 'Dhulagarh Toll PLaza', 'Normal', 'TMS work slow', '', '2020-05-16 09:56:09', NULL, NULL),
(30, 9, 3, 'RX Tower', ' Complaint', 'Dhulagarh Toll PLaza', 'High Important', 'XYZ', '', '2020-05-17 17:38:58', 'closed', '2020-05-17 17:40:23'),
(31, 7, 5, 'Computer', 'General Query', 'Dhulagarh Toll PLaza', 'normal', 'hii', '', '2020-05-18 06:37:19', 'closed', '2020-05-18 06:38:05');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(39, 6, 'sy6882272@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-15 17:10:25', '15-05-2020 10:42:00 PM', 1),
(40, 0, 'sy6882272@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-15 17:13:25', '', 0),
(41, 7, 'pallabmallick@rediffmail.com', 0x3a3a3100000000000000000000000000, '2020-05-15 17:53:52', '', 1),
(42, 0, 'pallabmallick@rediffmail.com', 0x3a3a3100000000000000000000000000, '2020-05-16 05:52:30', '', 0),
(43, 0, 'pallabmallick@rediffmail.com', 0x3a3a3100000000000000000000000000, '2020-05-16 05:53:12', '', 0),
(44, 7, 'pallabmallick@rediffmail.com', 0x3a3a3100000000000000000000000000, '2020-05-16 05:53:43', '', 1),
(45, 7, 'pallabmallick@rediffmail.com', 0x3139322e3136382e34332e3234350000, '2020-05-16 08:45:46', '16-05-2020 02:17:52 PM', 1),
(46, 0, 'pallabmalick@rediffmail.com', 0x3a3a3100000000000000000000000000, '2020-05-16 09:19:47', '', 0),
(47, 7, 'pallabmallick@rediffmail.com', 0x3a3a3100000000000000000000000000, '2020-05-16 09:20:03', '', 1),
(48, 0, 'pallab', 0x3a3a3100000000000000000000000000, '2020-05-16 09:31:30', '', 0),
(49, 7, 'pallabmallick@rediffmail.com', 0x3a3a3100000000000000000000000000, '2020-05-16 09:31:42', '', 1),
(50, 7, 'pallabmallick@rediffmail.com', 0x3139322e3136382e34332e3234350000, '2020-05-16 09:54:36', '16-05-2020 03:26:42 PM', 1),
(51, 8, 'technoit007@gmail.com', 0x3139322e3136382e34332e3437000000, '2020-05-16 16:25:03', '16-05-2020 09:55:27 PM', 1),
(52, 7, 'pallabmallick@rediffmail.com', 0x3a3a3100000000000000000000000000, '2020-05-17 04:27:54', '', 1),
(53, 7, 'pallabmallick@rediffmail.com', 0x3139322e3136382e34332e3437000000, '2020-05-17 04:39:59', '17-05-2020 10:12:38 AM', 1),
(54, 7, 'pallabmallick@rediffmail.com', 0x3a3a3100000000000000000000000000, '2020-05-17 04:53:21', '17-05-2020 10:23:54 AM', 1),
(55, 7, 'pallabmallick@rediffmail.com', 0x3139322e3136382e34332e3437000000, '2020-05-17 05:20:11', '17-05-2020 11:32:20 AM', 1),
(56, 7, 'pallabmallick@rediffmail.com', 0x3139322e3136382e34332e3232330000, '2020-05-17 08:32:58', '', 1),
(57, 7, 'pallabmallick@rediffmail.com', 0x3139322e3136382e34332e3232330000, '2020-05-17 08:35:19', '', 1),
(58, 7, 'pallabmallick@rediffmail.com', 0x3139322e3136382e34332e3232330000, '2020-05-17 08:39:26', '', 1),
(59, 0, 'pallabmallick1@rediffmail.com', 0x3a3a3100000000000000000000000000, '2020-05-17 15:16:29', '', 0),
(60, 7, 'pallabmallick@rediffmail.com', 0x3a3a3100000000000000000000000000, '2020-05-17 15:18:27', '17-05-2020 08:48:34 PM', 1),
(61, 9, 'ad@gmail.com', 0x3139322e3136382e34332e3232330000, '2020-05-17 17:38:26', '17-05-2020 11:09:01 PM', 1),
(62, 9, 'ad@gmail.com', 0x3139322e3136382e34332e3232330000, '2020-05-17 17:41:46', '17-05-2020 11:12:05 PM', 1),
(63, 7, 'pallabmallick@rediffmail.com', 0x3a3a3100000000000000000000000000, '2020-05-18 06:30:06', '18-05-2020 12:00:14 PM', 1),
(64, 7, 'pallabmallick@rediffmail.com', 0x3a3a3100000000000000000000000000, '2020-05-18 06:36:42', '18-05-2020 12:07:26 PM', 1),
(65, 0, 'pallabmallick2222@rediffmail.com', 0x3a3a3100000000000000000000000000, '2020-05-18 06:41:08', '', 0),
(66, 0, 'pallabmallick2222@rediffmail.com', 0x3a3a3100000000000000000000000000, '2020-05-18 06:41:32', '', 0),
(67, 0, 'pallabmallick2222@rediffmail.com', 0x3a3a3100000000000000000000000000, '2020-05-18 06:41:44', '', 0),
(68, 0, 'nw.ippm@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-18 06:43:12', '', 0),
(69, 0, 'nw.ippm@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-18 06:43:26', '', 0),
(70, 0, 'nw.ippm@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-18 06:43:34', '', 0),
(71, 10, 'nw.ippm@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-18 06:58:39', '18-05-2020 12:34:40 PM', 1),
(72, 16, 'nw.ippm@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-18 07:36:11', '18-05-2020 01:06:14 PM', 1),
(73, 22, 'nnn@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-18 09:38:42', '18-05-2020 03:08:45 PM', 1),
(74, 7, 'pallabmallick@rediffmail.com', 0x3a3a3100000000000000000000000000, '2020-05-20 10:14:53', '20-05-2020 03:49:59 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(7, 'Pallab Mallick', 'pallabmallick@rediffmail.com', 'e10adc3949ba59abbe56e057f20f883e', 9333326377, NULL, NULL, NULL, NULL, '4e6bc78a9f11db8e708e5ae602eda77a.jpg', '2020-05-15 17:51:35', NULL, 1),
(8, 'Pallab Mallick', 'technoit007@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 9333326377, NULL, NULL, NULL, NULL, NULL, '2020-05-16 16:24:49', NULL, 1),
(9, 'Advik Mallick', 'ad@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 9333326377, NULL, NULL, NULL, NULL, NULL, '2020-05-17 17:37:33', NULL, NULL),
(16, 'Jhantu Pal', 'nw.ippm@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 9333326377, NULL, NULL, NULL, NULL, NULL, '2020-05-18 07:35:32', NULL, NULL),
(17, 'Jhantu Pal', 'nw.ippm@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 9333326377, NULL, NULL, NULL, NULL, NULL, '2020-05-18 07:52:34', NULL, NULL),
(18, 'Jhantu Pal', 'hh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 9333326377, NULL, NULL, NULL, NULL, NULL, '2020-05-18 07:53:45', NULL, NULL),
(19, 'nn', 'pallabmallick2@rediffmail.com', '202cb962ac59075b964b07152d234b70', 9333326377, NULL, NULL, NULL, NULL, NULL, '2020-05-18 08:03:06', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
