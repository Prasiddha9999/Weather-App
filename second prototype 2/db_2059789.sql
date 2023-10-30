-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 08:40 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_2059789`
--

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--

CREATE TABLE `weather` (
  `weather_description` varchar(150) CHARACTER SET latin1 NOT NULL,
  `weather_temperature` float NOT NULL,
  `weather_wind` float NOT NULL,
  `weather_when` datetime NOT NULL,
  `weather_pressure` float NOT NULL,
  `weather_icon` varbinary(150) NOT NULL,
  `weather_humidity` float NOT NULL,
  `weather_main` varchar(150) CHARACTER SET latin1 NOT NULL,
  `weather_temp_min` float NOT NULL,
  `weather_temp_max` float NOT NULL,
  `city` varchar(150) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weather`
--

INSERT INTO `weather` (`weather_description`, `weather_temperature`, `weather_wind`, `weather_when`, `weather_pressure`, `weather_icon`, `weather_humidity`, `weather_main`, `weather_temp_min`, `weather_temp_max`, `city`) VALUES
('scattered clouds', 292.5, 0.45, '2021-08-12 22:04:11', 1019, 0x303364, 76, 'Clouds', 295.38, 291.35, 'Bournemouth'),
('overcast clouds', 292.33, 0.89, '2021-08-12 22:05:46', 1019, 0x303464, 79, 'Clouds', 294.82, 291.16, 'Bournemouth'),
('overcast clouds', 292.33, 0.89, '2021-08-12 22:05:51', 1019, 0x303464, 79, 'Clouds', 294.82, 291.16, 'Bournemouth'),
('overcast clouds', 292.33, 0.89, '2021-08-12 22:05:56', 1019, 0x303464, 79, 'Clouds', 294.82, 291.16, 'Bournemouth'),
('overcast clouds', 292.33, 0.89, '2021-08-12 22:05:59', 1019, 0x303464, 79, 'Clouds', 294.82, 291.16, 'Bournemouth'),
('overcast clouds', 292.33, 0.89, '2021-08-12 22:06:06', 1019, 0x303464, 79, 'Clouds', 294.82, 291.16, 'Bournemouth'),
('overcast clouds', 292.33, 0.89, '2021-08-12 22:06:10', 1019, 0x303464, 79, 'Clouds', 294.82, 291.16, 'Bournemouth'),
('scattered clouds', 291.54, 0.89, '2021-08-13 00:23:17', 1019, 0x303364, 84, 'Clouds', 293.17, 290.53, 'Bournemouth'),
('scattered clouds', 291.54, 0.89, '2021-08-13 00:24:29', 1019, 0x303364, 84, 'Clouds', 293.17, 290.53, 'Bournemouth'),
('scattered clouds', 291.54, 0.89, '2021-08-13 00:24:33', 1019, 0x303364, 84, 'Clouds', 293.17, 290.53, 'Bournemouth'),
('scattered clouds', 291.54, 0.89, '2021-08-13 00:24:35', 1019, 0x303364, 84, 'Clouds', 293.17, 290.53, 'Bournemouth'),
('scattered clouds', 291.54, 0.89, '2021-08-13 00:24:40', 1019, 0x303364, 84, 'Clouds', 293.17, 290.53, 'Bournemouth'),
('scattered clouds', 291.54, 0.89, '2021-08-13 00:24:44', 1019, 0x303364, 84, 'Clouds', 293.17, 290.53, 'Bournemouth');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
