-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2017 at 08:07 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `applied_leave`
--

CREATE TABLE `applied_leave` (
  `id` int(255) NOT NULL,
  `l_from` varchar(1000) NOT NULL,
  `l_to` varchar(1000) NOT NULL,
  `e_leave` int(255) NOT NULL,
  `m_leave` int(255) NOT NULL,
  `c_leave` int(255) NOT NULL,
  `apply_by` int(11) NOT NULL,
  `status` varchar(1000) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `applied_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applied_leave`
--

INSERT INTO `applied_leave` (`id`, `l_from`, `l_to`, `e_leave`, `m_leave`, `c_leave`, `apply_by`, `status`, `comment`, `applied_date`) VALUES
(1, '2017-08-03', '2017-08-09', 2, 2, 2, 6, 'Approved', 'approved', '2017-08-03 04:18:19'),
(2, '2017-08-06', '2017-08-11', 5, 0, 0, 9, 'Rejected', 'reject', '2017-08-03 04:18:41');

-- --------------------------------------------------------

--
-- Table structure for table `assign_leave`
--

CREATE TABLE `assign_leave` (
  `id` int(255) NOT NULL,
  `v_from` date NOT NULL,
  `v_to` date NOT NULL,
  `e_leave` varchar(1000) NOT NULL,
  `m_leave` varchar(1000) NOT NULL,
  `c_leave` varchar(1000) NOT NULL,
  `assign_to` int(255) NOT NULL,
  `assign_by` varchar(1000) NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assign_leave`
--

INSERT INTO `assign_leave` (`id`, `v_from`, `v_to`, `e_leave`, `m_leave`, `c_leave`, `assign_to`, `assign_by`, `modified_date`) VALUES
(6, '2017-08-28', '2018-02-28', '6', '6', '6', 7, '5', '2017-07-26 19:30:57'),
(7, '2017-08-28', '2018-02-28', '6', '6', '6', 6, '5', '2017-07-26 19:30:57'),
(8, '2017-07-29', '2018-07-29', '6', '6', '6', 9, '5', '2017-07-29 17:39:35'),
(9, '2017-07-29', '2018-07-29', '6', '6', '6', 8, '5', '2017-07-29 17:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `t_id` int(255) NOT NULL,
  `task` text NOT NULL,
  `user_id` int(255) NOT NULL,
  `assigned_by` int(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`t_id`, `task`, `user_id`, `assigned_by`, `date_time`) VALUES
(1, 'Testing task message fgeature', 9, 5, '2017-07-06 20:15:18'),
(2, 'Testing task message fgeature', 8, 5, '2017-07-06 20:15:18'),
(3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 9, 5, '2017-07-06 20:21:33'),
(4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 6, 5, '2017-07-09 08:37:39'),
(5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 7, 5, '2017-07-06 20:21:33'),
(6, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 6, 5, '2017-07-06 20:21:33'),
(7, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 9, 5, '2017-07-06 20:22:57'),
(8, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 8, 5, '2017-07-06 20:22:57'),
(9, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 7, 5, '2017-07-06 20:22:57'),
(10, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 6, 5, '2017-07-06 20:22:57');

-- --------------------------------------------------------

--
-- Table structure for table `task_reply`
--

CREATE TABLE `task_reply` (
  `r_id` int(255) NOT NULL,
  `reply` text NOT NULL,
  `m_id` int(255) NOT NULL,
  `reply_by` int(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_reply`
--

INSERT INTO `task_reply` (`r_id`, `reply`, `m_id`, `reply_by`, `date_time`) VALUES
(1, 'reply your message completed task', 4, 6, '2017-07-09 09:07:34'),
(2, 'ghswfde sdhgfashdf hsdf sadgfkjhasgdfk ', 4, 6, '2017-07-09 09:15:08'),
(3, 'ok', 4, 5, '2017-07-14 03:17:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(255) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `department` varchar(1000) NOT NULL,
  `role` varchar(100) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `department`, `role`, `created_on`) VALUES
(5, 'pradeep', 'pradeep@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Admin', 'admin', '2017-06-29 03:42:04'),
(6, 'vikas', 'vikas@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Web Development', 'employee', '2017-06-29 03:42:20'),
(7, 'Suresh', 'suresh@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Web Development', 'employee', '2017-07-05 18:27:24'),
(8, 'Mukesh', 'mukesh@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'SEO', 'employee', '2017-07-05 18:27:44'),
(9, 'Sandeep', 'sandeep@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'SEO', 'employee', '2017-07-05 18:28:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applied_leave`
--
ALTER TABLE `applied_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_leave`
--
ALTER TABLE `assign_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `task_reply`
--
ALTER TABLE `task_reply`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applied_leave`
--
ALTER TABLE `applied_leave`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `assign_leave`
--
ALTER TABLE `assign_leave`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `t_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `task_reply`
--
ALTER TABLE `task_reply`
  MODIFY `r_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
