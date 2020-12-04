-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2020 at 01:27 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userdetails`
--

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `ProjectId` varchar(255) NOT NULL,
  `projectName` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `AssignTo` varchar(255) NOT NULL,
  `status` enum('Active','Completed','Deactive') NOT NULL,
  `startDate` datetime NOT NULL,
  `completionDate` datetime NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`ProjectId`, `projectName`, `details`, `AssignTo`, `status`, `startDate`, `completionDate`, `isDeleted`, `createdAt`, `updatedAt`) VALUES
('033d5061-c912-4fd1-874c-1e7e76da3d2a', 'test6', 'details6', '06869711-69e2-4379-8e62-0545466d3543', 'Active', '2020-10-04 00:31:54', '0000-00-00 00:00:00', 0, '2020-12-04 06:14:51', '2020-12-04 06:14:51'),
('3367a68a-971a-4517-8d8d-564a44d24db8', 'test3', 'details3', 'bfb73247-91de-4e51-aaba-7134d50c368b', 'Active', '2020-10-04 00:31:54', '0000-00-00 00:00:00', 0, '2020-12-04 06:12:48', '2020-12-04 06:12:48'),
('5caa7598-9705-4e68-bfab-331e3d352760', 'test2', 'details2', '13b5908b-c073-417f-9795-afb91381d0ec', 'Active', '2020-10-04 00:31:54', '0000-00-00 00:00:00', 0, '2020-12-04 06:12:26', '2020-12-04 06:12:26'),
('a4c3362d-3188-4b1e-b312-cb59160f374f', 'test4', 'details4', 'bfb73247-91de-4e51-aaba-7134d50c368b', 'Active', '2020-10-04 00:31:54', '0000-00-00 00:00:00', 0, '2020-12-04 06:12:57', '2020-12-04 06:12:57'),
('b8111ad2-36a5-4f8c-8af1-6177b4312fe8', 'test5', 'details5', '06869711-69e2-4379-8e62-0545466d3543', 'Active', '2020-10-04 00:31:54', '0000-00-00 00:00:00', 0, '2020-12-04 06:14:43', '2020-12-04 06:14:43'),
('c41bcc08-3648-4424-8ba3-40f78f3f2885', 'test1', 'details1', '13b5908b-c073-417f-9795-afb91381d0ec', 'Active', '2020-10-04 00:31:54', '0000-00-00 00:00:00', 0, '2020-12-04 06:12:02', '2020-12-04 06:12:02');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `taskId` varchar(255) NOT NULL,
  `taskName` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `project` varchar(255) NOT NULL,
  `startDate` datetime NOT NULL,
  `status` enum('Active','Completed','Deactive') NOT NULL,
  `targetcomplationDate` datetime NOT NULL,
  `completionDate` datetime NOT NULL,
  `assignTo` varchar(255) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`taskId`, `taskName`, `details`, `project`, `startDate`, `status`, `targetcomplationDate`, `completionDate`, `assignTo`, `isDeleted`, `createdAt`, `updatedAt`) VALUES
('2b9c3996-71aa-4e93-8620-b53381f21485', 'task3', 'task details 3', '3367a68a-971a-4517-8d8d-564a44d24db8', '2020-10-04 00:31:54', 'Active', '2020-10-04 06:01:54', '2020-10-04 06:01:54', 'bfb73247-91de-4e51-aaba-7134d50c368b', 0, '2020-12-04 06:26:34', '2020-12-04 06:26:34'),
('2bd1ff4c-6e4b-453d-89ca-fa1db78fb25d', 'task4', 'task details 4', '3367a68a-971a-4517-8d8d-564a44d24db8', '2020-10-04 00:31:54', 'Active', '2020-10-04 06:01:54', '2020-10-04 06:01:54', 'bfb73247-91de-4e51-aaba-7134d50c368b', 0, '2020-12-04 06:27:18', '2020-12-04 06:27:18'),
('328601ec-5dde-4a08-a06d-da8dd4e19745', 'task 11', 'task details 11', 'c41bcc08-3648-4424-8ba3-40f78f3f2885', '2020-10-04 00:31:54', 'Active', '2020-10-04 06:01:54', '2020-10-04 06:01:54', '13b5908b-c073-417f-9795-afb91381d0ec', 0, '2020-12-04 06:31:07', '2020-12-04 06:31:07'),
('35c9a876-579f-499a-8c41-45841d1e249d', 'task 7', 'task details 7', 'a4c3362d-3188-4b1e-b312-cb59160f374f', '2020-10-04 00:31:54', 'Active', '2020-10-04 06:01:54', '2020-10-04 06:01:54', 'bfb73247-91de-4e51-aaba-7134d50c368b', 0, '2020-12-04 06:29:06', '2020-12-04 06:29:06'),
('421c0f3d-e0e8-48fe-bd1e-310aac7b19b8', 'task2', 'task details 2', '033d5061-c912-4fd1-874c-1e7e76da3d2a', '2020-10-04 00:31:54', 'Active', '2020-10-04 06:01:54', '2020-10-04 06:01:54', '13b5908b-c073-417f-9795-afb91381d0ec', 0, '2020-12-04 06:24:39', '2020-12-04 06:24:39'),
('71a7f024-dd22-4c8c-9f98-6155c09e9cf4', 'task 12', 'task details 12', 'c41bcc08-3648-4424-8ba3-40f78f3f2885', '2020-10-04 00:31:54', 'Active', '2020-10-04 06:01:54', '2020-10-04 06:01:54', '13b5908b-c073-417f-9795-afb91381d0ec', 0, '2020-12-04 06:31:23', '2020-12-04 06:31:23'),
('8d6845e7-d678-4fc7-a379-3d40a94be1ca', 'task 8', 'task details 8', 'a4c3362d-3188-4b1e-b312-cb59160f374f', '2020-10-04 00:31:54', 'Active', '2020-10-04 06:01:54', '2020-10-04 06:01:54', 'bfb73247-91de-4e51-aaba-7134d50c368b', 0, '2020-12-04 06:29:15', '2020-12-04 06:29:15'),
('8dd75fca-6c50-4c30-98e7-875f8c990ca4', 'task1', 'task details 1', '033d5061-c912-4fd1-874c-1e7e76da3d2a', '2020-10-04 00:31:54', 'Active', '2020-10-04 06:01:54', '2020-10-04 06:01:54', '13b5908b-c073-417f-9795-afb91381d0ec', 0, '2020-12-04 06:23:19', '2020-12-04 06:23:19'),
('98b4ad41-c1f0-450b-b5c9-64a87a818aab', 'task 9', 'task details 9', 'b8111ad2-36a5-4f8c-8af1-6177b4312fe8', '2020-10-04 00:31:54', 'Active', '2020-10-04 06:01:54', '2020-10-04 06:01:54', '06869711-69e2-4379-8e62-0545466d3543', 0, '2020-12-04 06:30:16', '2020-12-04 06:30:16'),
('be4db292-cd5e-4bff-94bb-c7fbaf03237a', 'task 10', 'task details 10', 'b8111ad2-36a5-4f8c-8af1-6177b4312fe8', '2020-10-04 00:31:54', 'Active', '2020-10-04 06:01:54', '2020-10-04 06:01:54', '06869711-69e2-4379-8e62-0545466d3543', 0, '2020-12-04 06:30:29', '2020-12-04 06:30:29'),
('cd1e8802-05f5-41e2-8032-0f66570efd12', 'task 5', 'task details 5', '5caa7598-9705-4e68-bfab-331e3d352760', '2020-10-04 00:31:54', 'Active', '2020-10-04 06:01:54', '2020-10-04 06:01:54', '13b5908b-c073-417f-9795-afb91381d0ec', 0, '2020-12-04 06:28:24', '2020-12-04 06:28:24'),
('f730dc4c-2b71-4a91-b58b-d22c96b414fa', 'task 6', 'task details 6', '5caa7598-9705-4e68-bfab-331e3d352760', '2020-10-04 00:31:54', 'Active', '2020-10-04 06:01:54', '2020-10-04 06:01:54', '13b5908b-c073-417f-9795-afb91381d0ec', 0, '2020-12-04 06:28:32', '2020-12-04 06:28:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `isDeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `firstName`, `lastName`, `email`, `password`, `role`, `createdAt`, `updatedAt`, `isDeleted`) VALUES
('13b5908b-c073-417f-9795-afb91381d0ec', 'a', 'Joshi', 'a.joshi@gmail.com', '123', 'student', '2020-12-04 06:01:54', '2020-12-04 06:01:54', 0),
('bfb73247-91de-4e51-aaba-7134d50c368b', 'b', 'Joshi', 'b.joshi@gmail.com', '123', 'student', '2020-12-04 06:02:02', '2020-12-04 06:02:02', 0),
('06869711-69e2-4379-8e62-0545466d3543', 'c', 'Joshi', 'c.joshi@gmail.com', '123', 'student', '2020-12-04 06:02:10', '2020-12-04 06:02:10', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`ProjectId`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`taskId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
