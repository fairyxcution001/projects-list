-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2020 at 07:27 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mariadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_electrical`
--

CREATE TABLE `data_electrical` (
  `id` int(11) NOT NULL,
  `time_stamps` timestamp NOT NULL DEFAULT current_timestamp(),
  `rpm` smallint(10) UNSIGNED NOT NULL,
  `voltage` float NOT NULL,
  `current` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_electrical`
--

INSERT INTO `data_electrical` (`id`, `time_stamps`, `rpm`, `voltage`, `current`) VALUES
(1, '2020-01-08 05:49:09', 50, 12, 2),
(2, '2020-01-08 05:49:34', 50, 45, 0),
(3, '2020-01-08 05:49:34', 23, 44, 13),
(4, '2020-01-08 06:19:19', 50, 2.5, 5),
(5, '2020-01-08 06:22:22', 50, 2.5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `data_weather`
--

CREATE TABLE `data_weather` (
  `id_data` int(11) NOT NULL,
  `time_stamps` timestamp NOT NULL DEFAULT current_timestamp(),
  `barometer` float NOT NULL,
  `humidity` float NOT NULL,
  `humidity_out` float NOT NULL,
  `lat` float NOT NULL,
  `lon` float NOT NULL,
  `temperature` float NOT NULL,
  `wind_dir` float NOT NULL,
  `wind_speed` float NOT NULL,
  `wind_speed_avg` float NOT NULL,
  `rain_rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_weather`
--

INSERT INTO `data_weather` (`id_data`, `time_stamps`, `barometer`, `humidity`, `humidity_out`, `lat`, `lon`, `temperature`, `wind_dir`, `wind_speed`, `wind_speed_avg`, `rain_rate`) VALUES
(1, '2020-01-08 02:56:00', 12.1, 20, 25.2, 12, 15, 40, 140, 200, 150, 20),
(2, '2020-01-08 03:17:14', 50, 2.5, 5, 10, 20, 25, 140, 100, 120, 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_electrical`
--
ALTER TABLE `data_electrical`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_weather`
--
ALTER TABLE `data_weather`
  ADD PRIMARY KEY (`id_data`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
