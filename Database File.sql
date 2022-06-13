-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 16, 2021 at 03:26 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id17088137_android_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_branch`
--

CREATE TABLE `tbl_branch` (
  `Branchcode` int(11) NOT NULL,
  `Name` text COLLATE utf8_unicode_ci NOT NULL,
  `Businessname` text COLLATE utf8_unicode_ci NOT NULL,
  `Email` text COLLATE utf8_unicode_ci NOT NULL,
  `Mobile` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Address` text COLLATE utf8_unicode_ci NOT NULL,
  `City` text COLLATE utf8_unicode_ci NOT NULL,
  `State` text COLLATE utf8_unicode_ci NOT NULL,
  `Pincode` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `IFSC` varchar(33) COLLATE utf8_unicode_ci NOT NULL,
  `BankACname` text COLLATE utf8_unicode_ci NOT NULL,
  `BankACno` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `BankACtype` text COLLATE utf8_unicode_ci NOT NULL,
  `Reference` text COLLATE utf8_unicode_ci NOT NULL,
  `status` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_branch`
--

INSERT INTO `tbl_branch` (`Branchcode`, `Name`, `Businessname`, `Email`, `Mobile`, `Address`, `City`, `State`, `Pincode`, `IFSC`, `BankACname`, `BankACno`, `BankACtype`, `Reference`, `status`) VALUES
(1, 'Gaurav', 'Gaurav Shrivastav', 'nikitamirchandani2002@gmail.com', '9856741235', '23,GaurangNivas Society ', 'Maninagar', 'Gujarat', '336655', '000412546', 'Axis Bank pvt ltd', '00005555888879', 'current', 'Mahesh Prajapati', 'Approved'),
(2, 'Keshang', 'Keshang Patel', 'nikitamirchandani090102@gmail.com', '8856741285', 'Neelkanth society', 'Kapadwanj', 'Gujarat', '338688', '00041246464', 'Canara Bank', '01236547894512', 'saving', 'Sneha Dave', 'Rejected'),
(3, 'Vrushang', 'Vrushang shah', 'shahvrushang23@gmail.com', '6582397415', '1-A,kaushik complex', 'Nadiad', 'Gujarat', '365829', '45698712534', 'HDFC Bank', '36985214785236', 'Current', 'Sneha Dave', 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_branchclient`
--

CREATE TABLE `tbl_branchclient` (
  `client_id` int(11) NOT NULL,
  `client_name` text COLLATE utf8_unicode_ci NOT NULL,
  `reference_id` int(11) NOT NULL,
  `selectedbid` int(11) NOT NULL,
  `field` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_branchclient`
--

INSERT INTO `tbl_branchclient` (`client_id`, `client_name`, `reference_id`, `selectedbid`, `field`) VALUES
(1, 'Gia Gibson', 1, 2, 'Training'),
(2, 'Mahesh soni', 2, 2, 'HR'),
(3, 'Nita Shah', 2, 2, 'Education'),
(4, 'Haresh patel', 3, 2, 'HR'),
(5, 'Ishita dutta', 1, 2, 'Insurance'),
(6, 'Neha shah', 14, 11, 'Training'),
(7, 'Sneha shah', 12, 11, 'Education');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_emp`
--

CREATE TABLE `tbl_emp` (
  `id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `joining_date` date NOT NULL,
  `branch` varchar(8) NOT NULL,
  `division` int(11) NOT NULL,
  `CTC` int(13) NOT NULL,
  `mobile` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_emp`
--

INSERT INTO `tbl_emp` (`id`, `fullname`, `username`, `email`, `password`, `joining_date`, `branch`, `division`, `CTC`, `mobile`) VALUES
(14, 'Shanaya Patel', 'shanayapatel1234', 'shanaya2002@gmail.com', 'shanayapassword', '2021-06-17', 'A', 2, 125000, '9898741254'),
(15, 'Neha joshi', 'neha123', 'nehajoshi@123@gmail.com', 'nehu2234', '2021-07-02', 'B', 1, 200002, '9856321478'),
(16, 'Nikita mirchandani', 'Nikki', 'niki123@gmail.com', 'pass', '2021-05-12', 'B', 2, 2500000, '8874569125'),
(17, 'Pakhi shah', 'pakhi', 'pakhi@gmail.com', 'pakhipass', '2021-06-17', 'B', 2, 124000, '9658741235'),
(19, 'Jay Shah', 'js', 'jainilmshah11601@gmail.com', 'js123', '2021-06-11', 'C', 1, 100000, '9856234175'),
(20, 'harry', 'harry123', 'harry123@gmail.com', '$2y$10$uCubNVGp3xGm3Eg8qsty2eRim8QPK8pa98yh8MpioajmNCIYNbsbq', '2021-07-21', 'D', 1, 250000, '6589547725'),
(21, 'empdemo', 'demouname', 'demoid', '$2y$10$JFUXxjDReeFuBynRCN.gMOaErctZPU/bPoxV4dswGlS5.Bz0umfI2', '2021-07-04', 'A', 1, 679800, '9368521478');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_empclient`
--

CREATE TABLE `tbl_empclient` (
  `client_id` int(11) NOT NULL,
  `client_name` text COLLATE utf8_unicode_ci NOT NULL,
  `reference_id` int(11) NOT NULL,
  `field` text COLLATE utf8_unicode_ci NOT NULL,
  `selectedempid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_empclient`
--

INSERT INTO `tbl_empclient` (`client_id`, `client_name`, `reference_id`, `field`, `selectedempid`) VALUES
(1, 'jennifer fernandes', 14, 'Training', 15),
(2, 'yusuf ikbal', 19, 'Education', 15),
(3, 'Anasya shah', 14, 'Training', 15),
(4, 'Neha mehta', 21, 'HR', 15),
(5, 'Mahesh shah', 17, 'Insurance', 15),
(6, 'Shrishti jain', 10, 'Loan', 15),
(7, 'Shahi tharoor', 15, 'Loan', 15),
(8, 'Krishna patel', 16, 'Training', 15),
(9, 'Saurabh kohli', 20, 'Education', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_partner`
--

CREATE TABLE `tbl_partner` (
  `userName` text COLLATE utf8_unicode_ci NOT NULL,
  `partnerCode` int(11) NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `businessname` text COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `Address` text COLLATE utf8_unicode_ci NOT NULL,
  `City` text COLLATE utf8_unicode_ci NOT NULL,
  `State` text COLLATE utf8_unicode_ci NOT NULL,
  `PinCode` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `IFSC` varchar(33) COLLATE utf8_unicode_ci NOT NULL,
  `bankname` text COLLATE utf8_unicode_ci NOT NULL,
  `ACno` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Reference` text COLLATE utf8_unicode_ci NOT NULL,
  `status` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_partner`
--

INSERT INTO `tbl_partner` (`userName`, `partnerCode`, `email`, `businessname`, `mobile`, `Address`, `City`, `State`, `PinCode`, `IFSC`, `bankname`, `ACno`, `Reference`, `status`) VALUES
('Mohan', 1, 'mohan123@gmail.com', 'Mohan Patel', '9874567477', '1-A,Chanakya Complex', 'Nadiad', 'Gujarat', '387002', '123456789', 'Axis Bank pvt ltd', '00005555888', 'Mukesh joshi', 'Rejected'),
('Sneha ', 2, 'snehadave12@gmail.com', 'Sneha Dave', '8855223366', 'A-Wing,Shiv Complex', 'Baroda', 'Gujarat', '336655', '000412546', 'Canara Bank', '45666664754', 'Mukesh Joshi', 'Rejected'),
('Shiv', 3, 'nikitamirchandani2002@gmail.com', 'Shiv Sharma', '8865932417', 'Mahalaxmi Society Near NJ Road', 'Ahmedabad', 'Gujarat', '332211', '145236789', 'Bank Of Baroda', '06857412356', 'Gaurav Padhiyar', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_partnerclient`
--

CREATE TABLE `tbl_partnerclient` (
  `client_id` int(11) NOT NULL,
  `client_name` text COLLATE utf8_unicode_ci NOT NULL,
  `reference_id` int(11) NOT NULL,
  `selectedpid` int(11) NOT NULL,
  `field` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_partnerclient`
--

INSERT INTO `tbl_partnerclient` (`client_id`, `client_name`, `reference_id`, `selectedpid`, `field`) VALUES
(1, 'Sonia Motiyani', 1, 3, 'Training'),
(2, 'Sana Shaikh', 2, 3, 'Loan'),
(3, 'Shilpa Kundra', 1, 3, 'Education'),
(4, 'Kiara Patel', 3, 3, 'Education'),
(5, 'Jay shah ', 2, 3, 'HR');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`) VALUES
(1, 'nmm', 'nmm', 'nikita', 'nmm123@gmail.com'),
(2, 'admin', 'admin', 'adminpass', 'admin123@gmail.com'),
(3, 'nikita', 'Nikita', 'newpass', 'nikitamirchandani2002@gmail.com'),
(4, 'Nmm', 'user', 'pwd', 'email'),
(5, 'Jainil Shah', 'js', 'js12345', 'jainilmshah@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_branch`
--
ALTER TABLE `tbl_branch`
  ADD PRIMARY KEY (`Branchcode`);

--
-- Indexes for table `tbl_branchclient`
--
ALTER TABLE `tbl_branchclient`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `tbl_emp`
--
ALTER TABLE `tbl_emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_empclient`
--
ALTER TABLE `tbl_empclient`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `tbl_partner`
--
ALTER TABLE `tbl_partner`
  ADD PRIMARY KEY (`partnerCode`);

--
-- Indexes for table `tbl_partnerclient`
--
ALTER TABLE `tbl_partnerclient`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_branch`
--
ALTER TABLE `tbl_branch`
  MODIFY `Branchcode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_branchclient`
--
ALTER TABLE `tbl_branchclient`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_emp`
--
ALTER TABLE `tbl_emp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_empclient`
--
ALTER TABLE `tbl_empclient`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_partner`
--
ALTER TABLE `tbl_partner`
  MODIFY `partnerCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_partnerclient`
--
ALTER TABLE `tbl_partnerclient`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
