-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 04 مايو 2024 الساعة 03:51
-- إصدار الخادم: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university`
--

-- --------------------------------------------------------

--
-- بنية الجدول `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'student name',
  `course_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'course name',
  `department` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'department',
  `semester` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'semester',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'code',
  `date` date NOT NULL,
  `attend` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `attendance`
--

INSERT INTO `attendance` (`id`, `student_name`, `course_name`, `department`, `semester`, `code`, `date`, `attend`) VALUES
(1, 'hatem ahmed mohamed', 'CCNA', 'IT', '8', '100000000', '2024-03-15', 'true');

-- --------------------------------------------------------

--
-- بنية الجدول `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'course name',
  `doctor_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'doctor name',
  `num_of_students` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'number of student',
  `semester` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'semester',
  `department` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'department',
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'level',
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `doctor_name`, `num_of_students`, `semester`, `department`, `level`, `image`) VALUES
(1, 'CCNA', 'Ahmed', '50', '2', 'IT', '2024', '0'),
(2, 'windows', 'sara', '20', '2', 'IT', '4', '0'),
(3, 'IOT', 'ashraf', '70', '2', 'IT', '4', '');

-- --------------------------------------------------------

--
-- بنية الجدول `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'name',
  `num_of_students` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'number_of_students',
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `time_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'time_table',
  `manger_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'manger_id',
  `manger_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'manger_name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `departments`
--

INSERT INTO `departments` (`id`, `name`, `num_of_students`, `image`, `time_table`, `manger_id`, `manger_name`) VALUES
(1, 'mecha', 'number_of_students', '0', 'time_table', 'h', 'manger_name'),
(8, 'IT', '70', '0', 'time_table', 'h', 'hatem'),
(9, 'Hatem', 'Hatem', 'Hatem', 'Hatem', 'Hatem', 'Hatem'),
(10, 'test', 'test', 'test', 'test', 'test', 'test'),
(11, '', '', 'ttt', 'ttt', '', '');

-- --------------------------------------------------------

--
-- بنية الجدول `emp`
--

CREATE TABLE `emp` (
  `id` int(11) NOT NULL,
  `emp_name` varchar(50) NOT NULL DEFAULT 'emp_name',
  `user_name` varchar(255) NOT NULL DEFAULT 'user_name',
  `user_password` varchar(255) NOT NULL DEFAULT 'user_password',
  `kind` tinyint(50) NOT NULL DEFAULT 0,
  `emp_tel1` varchar(15) NOT NULL DEFAULT 'emp_tel1',
  `emp_tel2` varchar(15) NOT NULL DEFAULT 'emp_tel2',
  `emp_birth` date NOT NULL DEFAULT current_timestamp(),
  `emp_natid` varchar(15) NOT NULL DEFAULT 'emp_natid',
  `emp_address` varchar(100) NOT NULL DEFAULT 'emp_address',
  `emp_jop` varchar(15) NOT NULL DEFAULT 'emp_jop',
  `emp_stopped` tinyint(4) NOT NULL DEFAULT 0,
  `emp_sal` int(11) NOT NULL DEFAULT 0,
  `percent` varchar(20) NOT NULL DEFAULT '0',
  `emp_days` int(11) NOT NULL DEFAULT 6
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `emp`
--

INSERT INTO `emp` (`id`, `emp_name`, `user_name`, `user_password`, `kind`, `emp_tel1`, `emp_tel2`, `emp_birth`, `emp_natid`, `emp_address`, `emp_jop`, `emp_stopped`, `emp_sal`, `percent`, `emp_days`) VALUES
(2, 'حسام مجدي', 'simsim', '123456', 1, '01099316304', '01099316304', '2001-05-15', '30105152300876', 'الفيوم - البحاري ', 'مصمم جرافك', 0, 850, '11', 6),
(15, 'محمد احمد', 'doctor', '12345', 2, '0102211', '0102211', '2024-02-20', 'emp_natid', 'محمد احمد', 'emp_jop', 0, 0, '8', 6),
(16, 'محمد عمر', 'omer', '123456', 2, '01000', '', '2024-02-25', 'emp_natid', '', 'emp_jop', 0, 0, '15', 6);

-- --------------------------------------------------------

--
-- بنية الجدول `fees`
--

CREATE TABLE `fees` (
  `id` int(11) NOT NULL,
  `semster` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'semester',
  `student_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'student_name',
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `fees`
--

INSERT INTO `fees` (`id`, `semster`, `student_name`, `status`) VALUES
(1, 'semester', 'student_name', 'status');

-- --------------------------------------------------------

--
-- بنية الجدول `final_result`
--

CREATE TABLE `final_result` (
  `student_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `student_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'student name',
  `course_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `course_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'course name',
  `course_score` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'course score',
  `semester_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'level',
  `year` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'year'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `final_result`
--

INSERT INTO `final_result` (`student_id`, `student_name`, `course_id`, `course_name`, `course_score`, `semester_id`, `level`, `year`) VALUES
('1', 'student name', '0', 'course name', 'course score', '0', 'level', 'year');

-- --------------------------------------------------------

--
-- بنية الجدول `mid_result`
--

CREATE TABLE `mid_result` (
  `student_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `student_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'student name',
  `course_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `course_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'course name',
  `course_score` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'course score',
  `semester_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'level',
  `year` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'year'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `mid_result`
--

INSERT INTO `mid_result` (`student_id`, `student_name`, `course_id`, `course_name`, `course_score`, `semester_id`, `level`, `year`) VALUES
('1', 'student name', '0', 'course name', 'course score', '0', 'level', 'year');

-- --------------------------------------------------------

--
-- بنية الجدول `practical_result`
--

CREATE TABLE `practical_result` (
  `student_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `student_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'student name',
  `course_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `course_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'course name',
  `course_score` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'course score',
  `semester_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'level',
  `year` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'year'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `practical_result`
--

INSERT INTO `practical_result` (`student_id`, `student_name`, `course_id`, `course_name`, `course_score`, `semester_id`, `level`, `year`) VALUES
('1', 'student name', '1', 'course name', 'course score', '1', 'level', 'year');

-- --------------------------------------------------------

--
-- بنية الجدول `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'name',
  `age` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'age',
  `user_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'username',
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'password',
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'email',
  `department` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'department',
  `gender` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'gender',
  `phone_number` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'phone_number',
  `code` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'code',
  `level` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'level',
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `student`
--

INSERT INTO `student` (`id`, `name`, `age`, `user_name`, `password`, `email`, `department`, `gender`, `phone_number`, `code`, `level`, `image`, `status`) VALUES
(1, 'hatem ahmed mohamed', '22', 'hhhhhhh', '2222222222', 'hhhhhhhhhhh@com', 'IT', 'male', '1000000000', '100000000', '8', '0', 'new');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
