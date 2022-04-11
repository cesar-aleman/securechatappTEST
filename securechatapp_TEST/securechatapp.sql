-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2022 at 12:51 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `securechatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(51, 1638064800, 823148732, '0F+nFLsuRZTj'),
(52, 1638064800, 823148732, '0F+nFLsuRQ=='),
(53, 1638064800, 823148732, '5USqAfowRIGw+Y16EDh6Q6POMemMOkf+LmycGYNUFnU='),
(54, 1638064800, 823148732, 'xUSqAfo0UtKiuId6QzhzS7M='),
(55, 1123672843, 823148732, '0FWsUrMuAYar8Zk/RyR5Xr/MMvY='),
(56, 823148732, 1638064800, '0FWsTQ=='),
(57, 823148732, 1638064800, 'yE0=');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(200) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(400) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(1, 1638064800, 'Kanye', 'Wst', 'kanye@yeezy.com', 'b5db8365b9d7295a98ea0f20e397a9b1', '1646355015img.jpg', 'Offline now'),
(3, 1123672843, 'pete', 'davi', 'pete@yeezy.com', '516f99a5749e6299aaaa585a9ca36ffa', '1646355314img.jpg', 'Offline now'),
(4, 130754087, 'kim', 'davi', 'kim@yeezy.com', 'd26f4534356e86dcde8faadb121aa0b6', '1646355451img.jpg', 'Active now'),
(5, 571570745, 'Cesar', 'Aleman', 'cesar@yeezy.com', '827ccb0eea8a706c4c34a16891f84e7b', '1646771733img.jpg', 'Offline now'),
(6, 328584324, 'cesar', 'a', 'cesar@cesar.com', '827ccb0eea8a706c4c34a16891f84e7b', '1646771931img.jpg', 'Offline now'),
(7, 823148732, 'Its', 'Broken', 'please@work.com', 'b8518cf0af7ed578406f9a84505c4405', '1649362530img.jpg', 'Active now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
