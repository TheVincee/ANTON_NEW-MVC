-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2024 at 04:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anton_coop`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients_info_tb`
--

CREATE TABLE `clients_info_tb` (
  `ID` int(50) NOT NULL,
  `User_Type` varchar(100) NOT NULL,
  `Full_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `ZIP_Code` int(100) NOT NULL,
  `Birthday` varchar(100) NOT NULL,
  `Age` int(50) NOT NULL,
  `NameOfFather` varchar(255) NOT NULL,
  `NameOfMother` varchar(255) NOT NULL,
  `Civil_Status` varchar(100) NOT NULL,
  `Religion` varchar(100) NOT NULL,
  `Occupation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients_info_tb`
--

INSERT INTO `clients_info_tb` (`ID`, `User_Type`, `Full_Name`, `Last_Name`, `Address`, `ZIP_Code`, `Birthday`, `Age`, `NameOfFather`, `NameOfMother`, `Civil_Status`, `Religion`, `Occupation`) VALUES
(9, 'users1', 'Asdasd', 'ASDad1', 'Asdasd', 200111, '2000-05-05', 24, 'asdasd', 'asdasd1', 'asdawsd', 'asdasd', 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `loan_db`
--

CREATE TABLE `loan_db` (
  `Id` int(50) NOT NULL,
  `ClientId` int(10) NOT NULL,
  `Type` varchar(200) NOT NULL,
  `Amount` int(50) NOT NULL,
  `Interest` decimal(10,0) NOT NULL,
  `No_Of_Payment` int(10) NOT NULL,
  `Deduction` decimal(10,0) NOT NULL,
  `Status` varchar(200) NOT NULL,
  `Date_Created` date NOT NULL,
  `Recievable_Amount` decimal(10,0) NOT NULL,
  `Payable_amount` decimal(10,0) NOT NULL,
  `Due_Date` date NOT NULL,
  `Term` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan_db`
--

INSERT INTO `loan_db` (`Id`, `ClientId`, `Type`, `Amount`, `Interest`, `No_Of_Payment`, `Deduction`, `Status`, `Date_Created`, `Recievable_Amount`, `Payable_amount`, `Due_Date`, `Term`) VALUES
(36, 0, 'Weeklys', 50000, 0, 451, 3, 'SINGLE', '2024-07-08', 100, 187, '2025-05-19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login_tb`
--

CREATE TABLE `login_tb` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `RememberMe` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_tb`
--

INSERT INTO `login_tb` (`id`, `username`, `password`, `RememberMe`) VALUES
(1, 'admin', 'password', 0),
(2, 'uncle', 'uncle', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payments_tb`
--

CREATE TABLE `payments_tb` (
  `id` int(50) NOT NULL,
  `loan_id` int(50) NOT NULL,
  `client_id` int(50) NOT NULL,
  `collectable` decimal(10,0) NOT NULL,
  `deduction` decimal(10,0) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients_info_tb`
--
ALTER TABLE `clients_info_tb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `loan_db`
--
ALTER TABLE `loan_db`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `login_tb`
--
ALTER TABLE `login_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments_tb`
--
ALTER TABLE `payments_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients_info_tb`
--
ALTER TABLE `clients_info_tb`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `loan_db`
--
ALTER TABLE `loan_db`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `login_tb`
--
ALTER TABLE `login_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments_tb`
--
ALTER TABLE `payments_tb`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
