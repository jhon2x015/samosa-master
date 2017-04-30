-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2017 at 05:11 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icefire`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `name`, `password`, `email`) VALUES
(1, 'admin', '12345', 'shahzad@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_description`
--

CREATE TABLE `tbl_category_description` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category_description`
--

INSERT INTO `tbl_category_description` (`id`, `type_id`, `title`, `description`) VALUES
(1, 1, 'light alert', 'no light from 5 to 9 am'),
(2, 1, 'internet', 'no internet today night');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact_detail`
--

CREATE TABLE `tbl_contact_detail` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(20) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `web_link` varchar(20) NOT NULL,
  `other_info` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact_detail`
--

INSERT INTO `tbl_contact_detail` (`contact_id`, `contact_name`, `phone_no`, `email`, `web_link`, `other_info`) VALUES
(1, 'association board', '03347268737', 'shahzad@gmail.com', 'shahzad@gmail.com', 'shahzad.fortsolution'),
(6, 'boss', '03347268737', 'shahzad@gmail', 'shahzad@fortsolution', 'all about other');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_housing_association`
--

CREATE TABLE `tbl_housing_association` (
  `housing_ass_id` int(11) NOT NULL,
  `housing_ass_name` varchar(20) NOT NULL,
  `country_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `address` varchar(20) NOT NULL,
  `building_password` varchar(20) NOT NULL,
  `telephone_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_housing_association`
--

INSERT INTO `tbl_housing_association` (`housing_ass_id`, `housing_ass_name`, `country_id`, `m_id`, `address`, `building_password`, `telephone_no`) VALUES
(1, 'shahzad housing asso', 1, 1, 'kalm chook', 'shahzad1234', '03336320987'),
(7, 'Rissing satr', 3, 3, 'gulberg lahore', 'shahzad1234', '03347268737'),
(8, 'akmal housion associ', 1, 1, 'gulberg 3', '12345', '03456+'),
(9, 'garden housing ass', 0, 29, 'ss', 'admin', '03224454556'),
(10, 'shahzad housing asso', 0, 29, 'aaa', '123', '63224455');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_municipality`
--

CREATE TABLE `tbl_municipality` (
  `m_id` int(11) NOT NULL,
  `m_name` varchar(20) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_municipality`
--

INSERT INTO `tbl_municipality` (`m_id`, `m_name`, `state_id`) VALUES
(29, 'standard unip0n', 1),
(30, 'bahwalnager 123', 0),
(31, 'dddd', 1),
(32, 'test123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_newscat`
--

CREATE TABLE `tbl_newscat` (
  `type_id` int(11) NOT NULL,
  `cat_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_newscat`
--

INSERT INTO `tbl_newscat` (`type_id`, `cat_name`) VALUES
(1, 'alert'),
(2, 'general info'),
(3, 'annual meeting'),
(4, 'celebrations'),
(5, 'other');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(50) NOT NULL,
  `post_content` varchar(1000) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_category`
--

CREATE TABLE `tbl_post_category` (
  `id` int(11) NOT NULL,
  `category_name` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(20) NOT NULL,
  `state_location` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`state_id`, `state_name`, `state_location`) VALUES
(1, 'united state', 'abc   ..'),
(16, 'Juneau	', 'located in uk north'),
(18, 'kingdom king', 'located in uk'),
(22, 'Bahwalpur', 'located in south of punjab'),
(23, 'Test State', 'Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `stud_id` int(11) NOT NULL,
  `stud_name` varchar(20) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`stud_id`, `stud_name`, `state_id`) VALUES
(1, 'Kobe Bryant 123', 1),
(2, 'Michael Jordan', 1),
(4, 'Lebron James', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_submited_input`
--

CREATE TABLE `tbl_submited_input` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `description` varchar(250) NOT NULL,
  `image` varchar(20) NOT NULL,
  `type_of_input` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_submited_input`
--

INSERT INTO `tbl_submited_input` (`id`, `name`, `email`, `phone`, `description`, `image`, `type_of_input`) VALUES
(1, 'shahzad', 'shahzad@fortsolution', '03347268737', 'it is a description', 'image path', 'gerenal');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_todo`
--

CREATE TABLE `tbl_todo` (
  `todo_id` int(11) NOT NULL,
  `todo_title` varchar(255) NOT NULL,
  `todo_description` text NOT NULL,
  `todo_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_todo`
--

INSERT INTO `tbl_todo` (`todo_id`, `todo_title`, `todo_description`, `todo_Date`) VALUES
(1, 'test test', 'learning nodejs', '2016-05-24'),
(3, 'leaning nodejs test', 'trying to create crud app', '0000-00-00'),
(5, 'test again', 'learning nodejs test', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_email` varchar(20) NOT NULL,
  `user_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category_description`
--
ALTER TABLE `tbl_category_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact_detail`
--
ALTER TABLE `tbl_contact_detail`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tbl_housing_association`
--
ALTER TABLE `tbl_housing_association`
  ADD PRIMARY KEY (`housing_ass_id`);

--
-- Indexes for table `tbl_municipality`
--
ALTER TABLE `tbl_municipality`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `tbl_newscat`
--
ALTER TABLE `tbl_newscat`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_post_category`
--
ALTER TABLE `tbl_post_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `tbl_submited_input`
--
ALTER TABLE `tbl_submited_input`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_todo`
--
ALTER TABLE `tbl_todo`
  ADD PRIMARY KEY (`todo_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_category_description`
--
ALTER TABLE `tbl_category_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_contact_detail`
--
ALTER TABLE `tbl_contact_detail`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_housing_association`
--
ALTER TABLE `tbl_housing_association`
  MODIFY `housing_ass_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_municipality`
--
ALTER TABLE `tbl_municipality`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `tbl_newscat`
--
ALTER TABLE `tbl_newscat`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_post_category`
--
ALTER TABLE `tbl_post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `stud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_submited_input`
--
ALTER TABLE `tbl_submited_input`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_todo`
--
ALTER TABLE `tbl_todo`
  MODIFY `todo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
