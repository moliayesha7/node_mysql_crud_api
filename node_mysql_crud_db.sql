-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2021 at 10:31 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `node_mysql_crud_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `organization` varchar(255) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `salary` decimal(11,2) UNSIGNED DEFAULT 0.00,
  `status` tinyint(3) UNSIGNED DEFAULT 0,
  `is_deleted` tinyint(3) UNSIGNED DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `phone`, `organization`, `designation`, `salary`, `status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'John', 'Doe', 'johndoe@gmail.com', '1234567890', 'Microsoft', 'Full Stack Developer', '50000.00', 1, 0, '0000-00-00 00:00:00', '2021-03-27 22:41:33'),
(2, 'Jane', 'Doe', 'janedoe@gmail.com', '9876543210', 'Google', 'Software Engineer', '44500.00', 1, 0, '0000-00-00 00:00:00', '2021-03-27 22:41:48'),
(3, 'John uyy', 'Doe', 'johndoe@gmail.com', '1234567890', 'Microsoft', 'Full Stack Developer', '50000.00', 1, 1, '2021-03-28 00:37:51', '2021-03-28 00:41:47'),
(4, 'kio', 'wer', 'bg@gmail.com', '01778943212', 'fgfgf', 'fhgfhgfh', '1000.00', 1, 0, '2021-04-13 01:27:54', '2021-04-13 01:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `programming_languages`
--

CREATE TABLE `programming_languages` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `released_year` varchar(200) NOT NULL,
  `githut_rank` varchar(200) NOT NULL,
  `pypl_rank` varchar(200) NOT NULL,
  `tiobe_rank` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programming_languages`
--

INSERT INTO `programming_languages` (`id`, `name`, `released_year`, `githut_rank`, `pypl_rank`, `tiobe_rank`, `created_at`) VALUES
(1, 'Test', '', '', '', '', '2019-02-28 13:20:20'),
(2, 'john', '', '', '', '', '2019-02-28 13:20:20'),
(3, 'tutsmake', '', '', '', '', '2019-02-28 13:20:20'),
(4, 'tut', '', '', '', '', '2019-02-28 13:20:20'),
(5, 'mhd', '', '', '', '', '2019-02-28 13:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `created_at`) VALUES
(1, 'Test', 'test@g.co', '2019-02-28 13:20:20'),
(2, 'john', 'john@g.co', '2019-02-28 13:20:20'),
(3, 'tutsmake', 'tuts@g.co', '2019-02-28 13:20:20'),
(4, 'tut', 'tut@g.co', '2019-02-28 13:20:20'),
(5, 'mhd', 'mhd@g.co', '2019-02-28 13:20:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programming_languages`
--
ALTER TABLE `programming_languages`
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
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `programming_languages`
--
ALTER TABLE `programming_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
