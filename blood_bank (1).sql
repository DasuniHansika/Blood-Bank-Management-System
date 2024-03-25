-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2022 at 06:13 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_camps`
--

CREATE TABLE `blood_camps` (
  `id` int(11) NOT NULL,
  `name` varchar(14) NOT NULL,
  `camp` varchar(16) NOT NULL,
  `start_date` varchar(200) DEFAULT NULL,
  `end_date` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_camps`
--

INSERT INTO `blood_camps` (`id`, `name`, `camp`, `start_date`, `end_date`, `address`) VALUES
(1, 'Bill', 'Save life Camp', 'jan 6,2021,8:00a.m.', 'jan 6,2021,5:00p.m.', 'Hikkaduwa, Galle'),
(2, 'Will', 'KKK Camp', 'jan 10,2021,8:00a.m.', 'jan 10,2021,5:00p.m.', 'Town Hall, Matara'),
(3, 'Georgi', 'Blood Gym', 'jan 15,2021,8:00a.m.', 'jan 15,2021,5:00p.m.', 'MIrissa, Matara'),
(4, 'Bezalel', 'GoLive', 'jan 21,2021,8:00a.m.', 'jan 21,2021,5:00p.m.', 'Ahangama, Galle'),
(5, 'Parto', 'Give Blood', 'jan 30,2021,8:00a.m.', 'jan 30,2021,5:00p.m.', 'Mathugama, Kalutara');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) NOT NULL,
  `user` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `user`, `pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'dasunika', 'chathurianuradha94@g', '  ', '  '),
(2, 'kamal', 'kamal123@gmail.com', '  request blood', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `year` varchar(10) NOT NULL,
  `month` varchar(10) NOT NULL,
  `date` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pnumber` bigint(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `lastdoDate` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `firstName`, `lastName`, `occupation`, `year`, `month`, `date`, `email`, `pnumber`, `address`, `bloodgroup`, `lastdoDate`, `gender`) VALUES
(1, 'Dasuni', 'Hansika', 'Student', '1999', '10', '21', 'dasuni@gma', 762725896, 'ahangama', 'A+', '2020.02.01', 'female'),
(7, 'Chathuri', 'Anuradha', 'Doctor', '1994', '04', '15', 'chathu465@gmail.com', 771234567, 'Galle', 'A-', '2017.02.05', 'female'),
(8, '', '', '', '', '', '', '', 0, '', '', '', ''),
(9, 'chavindi', 'wijekoon', 'student', '1999', '11', '09', 'chavindi12@gmail.com', 717894561, 'matara', 'O+', '2019.05.20', 'female'),
(10, 'kamal', 'perera', 'army officer', '1990', '04', '10', 'kamal45@gmail.com', 786541239, 'Alutgama', 'B+', '2020.05.03', 'male'),
(11, 'nimal', 'hewahe', 'doctor', '1995', '10', '05', 'nimalhew@gmail.com', 776489123, 'galle', 'B-', '2019.12.03', 'male'),
(12, 'prarthana', 'sewwandi', 'teacher', '1993', '07', '02', 'prarthnasw@gmail.com', 754861532, 'tangalle', 'AB+', '2020.01.02', 'female'),
(13, 'kusal', 'hewage', 'officer', '1999', '04', '02', 'kusal56@gmail.com', 754623987, 'habaraduwa', 'AB-', '2019.03.05', 'male'),
(14, 'vipula', 'kodagoda', 'teacher', '2020', '10', '08', 'vipula@gmail.com', 751237896, 'matara', 'O-', '2018.03.06', 'male'),
(15, 'sunil', 'sahabandu', 'farmer', '1990', '05', '02', 'sunil@gmail.com', 784567892, 'hikkaduwa', 'AB-', '2019.02.03', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `birthday` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pnumber` bigint(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `firstName`, `lastName`, `birthday`, `email`, `pnumber`, `address`, `bloodgroup`, `gender`) VALUES
(1, '', '', '', '', 0, '', '', ''),
(2, 'kamal', 'vithana', '2020.05.03', 'kamal45@gmail.com', 721516312, 'galle', 'B+', 'male'),
(3, 'kirthi', 'liynage', '1997.05.06', 'kirthi@gmail.com', 784563217, 'matara', 'O-', 'male'),
(4, 'chathuri', 'anuradha', '1994.02.03', 'chathu@gmail.com', 778956123, 'galle', 'B-', 'female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_camps`
--
ALTER TABLE `blood_camps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_camps`
--
ALTER TABLE `blood_camps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
