-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2020 at 02:41 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_account`
--

CREATE TABLE `bank_account` (
  `Account_Number` varchar(60) NOT NULL,
  `ACCOUNT TYPE` varchar(60) NOT NULL,
  `BRANCH` varchar(60) NOT NULL,
  `IFSC_CODE` varchar(60) NOT NULL,
  `MIN_BAL` int(11) NOT NULL,
  `REG_DATE` date NOT NULL,
  `ACCOUNT_MAIL` varchar(60) NOT NULL,
  `AMOUNT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_account`
--

INSERT INTO `bank_account` (`Account_Number`, `ACCOUNT TYPE`, `BRANCH`, `IFSC_CODE`, `MIN_BAL`, `REG_DATE`, `ACCOUNT_MAIL`, `AMOUNT`) VALUES
('123456', 'savings', 'Malkajgiri', 'CNB1002', 4000, '2020-08-18', 'vamsimudaliar@gmail.com', 23448),
('817923', 'savings', 'SDA', 'CVB123', 100, '2020-08-18', 'abc@gmail.com', 37702),
('9834645', 'savings', 'HYD', 'Sbi123', 120, '2020-08-19', '8466vikas@gmail.com', 7444);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(60) DEFAULT NULL,
  `password` varchar(60) NOT NULL,
  `IS_VERIFIED` int(11) NOT NULL,
  `ACCOUNT_NUMBER` varchar(133) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `password`, `IS_VERIFIED`, `ACCOUNT_NUMBER`) VALUES
('donthulavikas1999@gmail.com', 'Vikas123', 1, '9834645'),
('abc@gmail.com', '12345', 1, '817923'),
('asd@gmail.com', '12345', 0, '987'),
('psd@gmail.com', '12345', 0, '12343'),
('vamsimudaliar@gmail.com', '12345', 1, '12034'),
('vamsimudaliar@gmail.com', '12345', 0, '123456');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `Loan_id` int(11) NOT NULL,
  `LOAN_AMT` int(11) NOT NULL,
  `LOAN_DURATION` float NOT NULL,
  `TYPE_OF_LOAN` varchar(60) NOT NULL,
  `INTEREST_RATE` float NOT NULL,
  `LOAN_AMT_PAID` float NOT NULL,
  `Is_VERIFIED` int(11) NOT NULL,
  `Username` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`Loan_id`, `LOAN_AMT`, `LOAN_DURATION`, `TYPE_OF_LOAN`, `INTEREST_RATE`, `LOAN_AMT_PAID`, `Is_VERIFIED`, `Username`) VALUES
(25, 12234, 6, 'Car_Loan', 5.6, 0, 1, 'abc@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `TRANS_ID` varchar(200) NOT NULL,
  `TRANS_TYPE` varchar(60) NOT NULL,
  `AMOUNT` int(11) NOT NULL,
  `RECEIVER_ACCOUNT` varchar(60) NOT NULL,
  `DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `TRANSACTION_STATUS` int(11) NOT NULL,
  `Username` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`TRANS_ID`, `TRANS_TYPE`, `AMOUNT`, `RECEIVER_ACCOUNT`, `DATE`, `TRANSACTION_STATUS`, `Username`) VALUES
('txid4367674', 'bill payment', 3000, '9834645', '2020-08-21 08:08:06', 0, 'abc@gmail.com'),
('txid7117124', 'mobile recharge', 1000, '9834645', '2020-08-21 14:18:44', 0, 'abc@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`Account_Number`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`Loan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `Loan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
