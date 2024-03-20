-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2024 at 11:56 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abclabs_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `branch_id`, `email`, `first_name`, `last_name`, `password`, `username`) VALUES
(1, 1, NULL, NULL, NULL, '1234', 'admin_saman'),
(2, 2, NULL, NULL, NULL, '2000', 'admin_nimal'),
(3, 3, NULL, NULL, NULL, 'admin', 'admin_kamal'),
(4, 1, NULL, NULL, NULL, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `test_type_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `branch_id`, `patient_id`, `report_id`, `test_type_id`, `date`, `time`) VALUES
(1, 2, 1001, 0, 1, '2024-03-22', '09:00:00'),
(2, 1, 48, 0, 2, '2024-03-26', '09:00:00'),
(3, 1, 1002, 0, 1, '2024-03-27', '09:00:00'),
(4, 3, 1006, 0, 2, '2024-03-28', '09:00:00'),
(5, 3, 1001, 0, 2, '2024-03-22', '09:00:00'),
(6, 2, 1001, 0, 1, '2024-03-22', '09:10:00'),
(7, 1, 1012, 0, 1, '2024-03-22', '09:20:00'),
(8, 1, 1013, 0, 1, '2024-03-22', '09:30:00'),
(9, 2, 1017, 0, 1, '2024-03-19', '09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `address`, `city`, `telephone`) VALUES
(1, '123 Main Street', 'Colombo', '011-1234567'),
(2, '101 Main Road', 'Gampaha', '033-1234567'),
(3, '456 Park Avenue', 'Kandy', '081-7654321'),
(4, '789 Beach Road', 'Galle', '091-2345678'),
(5, '654 Forest Lane', 'Anuradhapura', '025-3456789'),
(6, '987 Lake View', 'Dambulla', '066-9876543'),
(7, '210 River Bank', 'Matara', '041-1234567'),
(8, '543 Mountain View', 'Badulla', '055-8765432'),
(9, '876 Valley Lane', 'Jaffna', '021-2345678');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `mobile`, `name`) VALUES
(1, '0712345678', 'Dr. Sarath Jayasinghe'),
(2, '0778765432', 'Dr. Anoma Perera'),
(3, '0759876543', 'Dr. Nimal Rajapakse'),
(4, '0763456789', 'Dr. Malini Silva'),
(5, '0701122334', 'Dr. Chaminda Fernando'),
(6, '0714455667', 'Dr. Kavitha Gunawardena'),
(7, '0777788990', 'Dr. Thilini Abeysekara'),
(8, '0762233445', 'Dr. Asanka Bandara'),
(9, '0705566778', 'Dr. Priyantha Rajapakse'),
(10, '0753344556', 'Dr. Shanika Perera'),
(11, '0719988776', 'Dr. Sampath Gunaratne'),
(12, '0776655443', 'Dr. Anuradha Mendis'),
(13, '0701122334', 'Dr. Niroshan De Silva'),
(14, '0767788990', 'Dr. Sujatha Ranasinghe'),
(15, '0712233445', 'Dr. Pradeep Wijesinghe'),
(16, '0755566778', 'Dr. Lakshman Perera'),
(17, '0773344556', 'Dr. Sandya Jayawardena'),
(18, '0769988776', 'Dr. Dinesh Fernando'),
(19, '0706655443', 'Dr. Kanchana Silva'),
(20, '0711122334', 'Dr. Ruwan Rajapakse'),
(21, '0757788990', 'Dr. Nirosha Gunasekara'),
(22, '0762233445', 'Dr. Rukmal Perera'),
(23, '0705566778', 'Dr. Priyanka Jayawardena'),
(24, '0713344556', 'Dr. Chathura Bandara'),
(25, '0779988776', 'Dr. Tharindu Ranasinghe'),
(26, '0766655443', 'Dr. Heshan De Silva');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` bigint(20) NOT NULL,
  `gender` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `gender`) VALUES
(1, 'Male'),
(2, 'Female'),
(3, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` bigint(20) NOT NULL,
  `address_line1` varchar(255) DEFAULT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender_id` int(11) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `address_line1`, `address_line2`, `email`, `first_name`, `gender_id`, `last_name`, `mobile`, `dob`) VALUES
(36, 'No 22, Galle Road,', 'Ambalangoda', 'senoocoding@gmail.com', 'Senarathna', 1, 'Gamage', '0703434550', '1998-02-01'),
(37, '808 Orchid Lane', 'Ratnapura', 'hasan.nihal@example.com', 'Hasan', 1, 'Nihal', '0722233445', '1991-10-22'),
(39, '111 Lily Lane', 'Hambantota', 'hisala.mahamessa@example.com', 'Hisala', 1, 'Mahamessa', '0754455667', '1994-08-03'),
(41, '333 Magnolia Avenue', 'Weligama', 'sunthiya.mahamessa@example.com', 'Sunthiya', 1, 'Mahamessa', '0706677889', '1997-05-08'),
(43, '555 Tulip Lane', 'Badulla', 'arumath.mahamessa@example.com', 'Arumath', 1, 'Mahamessa', '0768899001', '1989-12-27'),
(44, '666 Ivy Lane', 'Kalutara', 'arish.nihal@example.com', 'Arish', 2, 'Nihal', '0710011223', '1996-03-05'),
(45, '777 Maple Avenue', 'Kegalle', 'hasan.rasan@example.com', 'Hasan', 1, 'Rasan', '0721122334', '1981-06-19'),
(46, '888 Oak Street', 'Ella', 'sunthiya.mahamessa@example.com', 'Sunthiya', 2, 'Mahamessa', '0772233445', '1990-11-02'),
(47, '999 Cedar Lane', 'Nuwara Eliya', 'arumath.arish@example.com', 'Arumath', 1, 'Arish', '0743344556', '1985-04-26'),
(48, '121 Pinecone Road', 'Polonnaruwa', 'sunthiya.priyawansa@example.com', 'Sunthiya', 2, 'Priyawansa', '0784455667', '1992-09-11'),
(1001, '123 Main Street', 'Colombo', 'arumath@example.com', 'Arumath', 1, 'Priyawansa', '0771234567', '1990-05-15'),
(1002, '456 Park Avenue', 'Kandy', 'sunthiya@example.com', 'Sunthiya', 2, 'Arish', '0712345678', '1985-08-20'),
(1003, '789 Lake Road', 'Galle', 'hasan.gunawaksha@example.com', 'Hasan', 1, 'Gunawaksha', '0763456789', '1992-12-10'),
(1004, '123 Main Street', 'Colombo', 'arumath@example.com', 'Arumath', 1, 'Priyawansa', '0771234567', '1990-05-15'),
(1005, '456 Park Avenue', 'Kandy', 'sunthiya@example.com', 'Sunthiya', 2, 'Arish', '0712345678', '1985-08-20'),
(1006, '789 Lake Road', 'Galle', 'hasan.gunawaksha@example.com', 'Hasan', 1, 'Gunawaksha', '0763456789', '1992-12-10'),
(1007, '101 Hillside Lane', 'Negombo', 'hisala.priyawansa@example.com', 'Hisala', 2, 'Priyawansa', '0724567890', '1988-03-25'),
(1008, '303 Seafront Road', 'Matara', 'ruwan.nihal@example.com', 'Ruwan', 2, 'Nihal', '0786789012', '1983-09-30'),
(1009, '202 River View', 'Anuradhapura', 'hisala.mehesha@example.com', 'Hisala', 1, 'Mehesha', '0755678901', '1995-07-05'),
(1010, '505 Palm Grove', 'Batticaloa', 'nihal.rasan@example.com', 'Nihal', 2, 'Rasan', '0748901234', '1980-11-08'),
(1011, '707 Coconut Avenue', 'Jaffna', 'arumath.mahamessa@example.com', 'Arumath', 2, 'Mahamessa', '0711122334', '1987-06-28'),
(1012, '606 Jasmine Lane', 'Dambulla', 'sunthiya.aysha@example.com', 'Sunthiya', 1, 'Aysha', '0769012345', '1993-04-12'),
(1013, '404 Sunflower Street', 'Trincomalee', 'mahamessa@example.com', 'Mahamessa', 1, 'Mahamessa', '0737890123', '1998-02-18'),
(1014, '909 Pine Tree Road', 'Nuwaragala', 'ruwan.arish@example.com', 'Ruwan', 2, 'Arish', '0783344556', '1986-01-17'),
(1015, '222 Rosewood Street', 'Polonnaruwa', 'ruwan.priyawansa@example.com', 'Ruwan', 2, 'Priyawansa', '0795566778', '1982-02-28'),
(1016, '444 Cherry Blossom Road', 'Matale', 'hisala.mahamessa@example.com', 'Hisala', 2, 'Mahamessa', '0737788990', '1984-09-13'),
(1017, 'russai', 'rrrr', 'madhusanka.pm@gmail.com', 'T.R.L', 1, 'KUMARASIGHE', '0716334114', '2024-03-19'),
(1018, 'russai', 'rrrr', 'madhusanka.pm@gmail.com', 'T.R.L', 1, 'KUMARASIGHE', '0716334114', '2024-03-19'),
(1019, 'russai', 'rrrr', 'madhusanka.pm@gmail.com', 'T.R.L', 1, 'KUMARASIGHE', '0716334114', '2024-03-19'),
(1020, 'russai', 'rrrr', 'madhusanka.pm@gmail.com', 'T.R.L', 1, 'KUMARASIGHE', '0716334114', '2024-03-19'),
(1021, 'russai', 'rrrr', 'madhusanka.pm@gmail.com', 'T.R.L', 1, 'KUMARASIGHE', '0716334114', '2024-03-19'),
(1022, 'russai', 'rrrr', 'madhusanka.pm@gmail.com', 'T.R.L', 1, 'KUMARASIGHE', '0716334114', '2024-03-19');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `comment` varchar(350) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `result1` double NOT NULL,
  `result2` double NOT NULL,
  `result3` double NOT NULL,
  `result4` double NOT NULL,
  `technician_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `comment`, `date`, `doctor_id`, `result1`, `result2`, `result3`, `result4`, `technician_id`) VALUES
(1, NULL, '2024-02-03', 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `technician`
--

CREATE TABLE `technician` (
  `id` int(11) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `technician`
--

INSERT INTO `technician` (`id`, `mobile`, `name`) VALUES
(1, '0712345678', 'Mr. Pradeep Gunawardena'),
(2, '0766655443', 'Mr. Dilshan Fernando'),
(3, '0714455667', 'Mr. Kavinda Gunaratne'),
(4, '0701122334', 'Ms. Nirosha Jayasuriya'),
(5, '0753344556', 'Mr. Shanil Perera'),
(6, '0719988776', 'Ms. Anuradha Mendis'),
(7, '0755566778', 'Ms. Lakshika Perera'),
(8, '0762233445', 'Ms. Priyanka Jayawardena'),
(9, '0705566778', 'Mr. Priyantha Rajapakse'),
(10, '0767788990', 'Ms. Sujatha Ranasinghe'),
(11, '0762233445', 'Ms. Priyanka Jayawardena'),
(12, '0778765432', 'Mr. Nimal Perera'),
(13, '0762233445', 'Ms. Priyanka Jayawardena'),
(14, '0776655443', 'Ms. Nirosha De Silva'),
(15, '0701122334', 'Ms. Nirosha Jayasuriya'),
(16, '0706655443', 'Ms. Kanchana Silva'),
(17, '0773344556', 'Ms. Sanduni Jayawardena'),
(18, '0711122334', 'Ms. Ruwani Rajapakse'),
(19, '0769988776', 'Ms. Dilini Fernando'),
(20, '0705566778', 'Mr. Chathura Bandara'),
(21, '0712233445', 'Ms. Pradeepa Wijesinghe'),
(22, '0759876543', 'Mr. Sampath Rajapakse'),
(23, '0713344556', 'Ms. Tharindu Ranasinghe'),
(24, '0767788990', 'Ms. Sujatha Ranasinghe');

-- --------------------------------------------------------

--
-- Table structure for table `test_type`
--

CREATE TABLE `test_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_type`
--

INSERT INTO `test_type` (`id`, `name`) VALUES
(1, 'Blood Test'),
(2, 'Cholesterol Test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technician`
--
ALTER TABLE `technician`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_type`
--
ALTER TABLE `test_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1023;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `technician`
--
ALTER TABLE `technician`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `test_type`
--
ALTER TABLE `test_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
