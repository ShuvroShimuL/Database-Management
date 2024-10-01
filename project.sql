-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2023 at 07:59 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE 'admin' (
  'id' varchar(10) NOT NULL,
  'name' varchar(11) NOT NULL,
  'pass' varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO 'admin' ('id', 'name', 'pass') VALUES
('1', 'shimul', '111');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE 'history' (
  'hid' int(10) NOT NULL,
  'uid' int(10) NOT NULL,
  'phone' int(11) NOT NULL,
  'bill' int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO 'history' ('hid', 'uid', 'phone', 'bill') VALUES
(23, 26, 1711111111, 30),
(24, 26, 1711111111, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE 'reserve' (
  'rid' int(10) NOT NULL,
  'phone' int(11) NOT NULL,
  'slot' int(1) NOT NULL,
  'reserveTime' time NOT NULL,
  'unreserveTime' time NOT NULL,
  'timeDef' int(10) NOT NULL,
  'bill' int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE 'user' (
  'uid' int(10) NOT NULL,
  'name' varchar(40) NOT NULL,
  'phone' int(11) NOT NULL,
  'password' varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table 'user'
--

INSERT INTO 'user' ('uid', 'name', 'phone', 'password') VALUES
(26, 'shimul', 1711111111, 'test'),
(27, 'test', 1711111112, 'PASS123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE 'admin'
  ADD PRIMARY KEY ('id');

--
-- Indexes for table `history`
--
ALTER TABLE 'history'
  ADD PRIMARY KEY ('hid'),
  ADD KEY 't1' ('uid');

--
-- Indexes for table `reserve`
--
ALTER TABLE 'reserve'
  ADD PRIMARY KEY ('rid'),
  ADD KEY 'slot' ('slot'),
  ADD KEY 't2' ('phone');

--
-- Indexes for table `user`
--
ALTER TABLE 'user'
  ADD PRIMARY KEY ('uid'),
  ADD UNIQUE KEY 'phone' ('phone');

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE 'history'
  MODIFY 'hid' int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE 'reserve'
  MODIFY 'rid' int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE 'user'
  MODIFY 'uid' int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `history`
--
ALTER TABLE 'history'
  ADD CONSTRAINT 't1' FOREIGN KEY ('uid') REFERENCES 'user' ('uid') ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reserve`
--
ALTER TABLE 'reserve'
  ADD CONSTRAINT 't2' FOREIGN KEY ('phone') REFERENCES 'user' ('phone') ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
