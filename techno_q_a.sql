-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2026 at 11:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techno_q_a`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `auth_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `auth_id`, `first_name`, `middle_name`, `last_name`, `created_at`) VALUES
(3, 1, 'Arjohn', 'Cambarihan', 'Verastigue', '2025-08-23 06:46:19');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `resident_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `personnel_id` int(11) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `status` enum('Pending','Completed','No Show') DEFAULT 'Pending',
  `requested_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `scheduled_for` datetime DEFAULT NULL,
  `available_date_id` int(11) DEFAULT NULL,
  `valid_id_path` varchar(255) DEFAULT NULL,
  `is_seen_by_resident` tinyint(1) NOT NULL DEFAULT 0,
  `has_sent_feedback` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `transaction_id`, `resident_id`, `department_id`, `service_id`, `personnel_id`, `reason`, `status`, `requested_at`, `updated_at`, `scheduled_for`, `available_date_id`, `valid_id_path`, `is_seen_by_resident`, `has_sent_feedback`) VALUES
(27, 'APPT-GEN-20251213-3E5CDD', 4, 1, 1, NULL, 'das', 'No Show', '2025-12-13 07:54:48', '2026-01-10 05:23:09', '2026-01-09 09:00:00', 47, 'uploads/appointments/693d1bc82f61b_GxWuBA5WUAAiaEh.jpg', 0, 0),
(28, 'APPT-GEN-20251215-9A30F6', 4, 1, 1, NULL, 'ffdgd', 'No Show', '2025-12-15 10:55:00', '2026-01-06 13:42:33', '2026-01-05 21:00:00', 37, 'uploads/appointments/693fe9045c638_pfp.jpg', 0, 0),
(29, 'APPT-GEN-20251215-BB008A', 4, 1, 1, NULL, 'dfg', 'No Show', '2025-12-15 15:36:42', '2026-01-10 05:23:09', '2026-01-09 09:00:00', 47, 'uploads/appointments/69402b0a9738a_appointment_slip_APPT-GEN-20251213-ADAE60.png', 0, 0),
(31, 'APPT-GEN-20251215-3502F0', 4, 1, 1, NULL, 'sas', 'No Show', '2025-12-15 16:17:52', '2026-01-16 15:58:39', '2026-01-15 21:32:00', 47, 'uploads/appointments/694034b090505_pfp.jpg', 0, 0),
(32, 'APPT-GEN-20251215-147614', 4, 1, 1, NULL, 'ffd', 'Completed', '2025-12-15 16:22:02', '2026-01-04 03:15:02', '2026-01-04 20:34:00', NULL, 'uploads/appointments/694035aad97cc_pfp.jpg', 1, 0),
(33, 'APPT-GEN-20251215-D49BF5', 4, 1, 1, NULL, 'asdas', 'Completed', '2025-12-15 16:39:22', '2026-01-04 03:16:29', '2026-01-05 10:08:00', NULL, 'uploads/appointments/694039ba9abf2_pfp.jpg', 1, 0),
(34, 'APPT-GEN-20251215-F73384', 4, 1, 1, NULL, 'asdas', 'No Show', '2025-12-15 16:39:22', '2026-01-10 05:23:09', '2026-01-08 09:00:00', 46, 'uploads/appointments/694039baa4707_pfp.jpg', 0, 0),
(35, 'APPT-GEN-20251215-3DA6B5', 4, 1, 1, NULL, 'asdas', 'Completed', '2025-12-15 16:39:22', '2026-01-04 04:20:33', '2026-01-05 12:02:00', NULL, 'uploads/appointments/694039baabe99_pfp.jpg', 1, 0),
(36, 'APPT-GEN-20251221-E70100', 4, 1, 1, NULL, 'aa', 'No Show', '2025-12-21 07:19:26', '2026-01-10 05:23:09', '2026-01-08 09:00:00', 46, 'uploads/appointments/69479f7eaab74_pfp.jpg', 0, 0),
(39, 'APPT-GEN-20251221-E960BF', 4, 1, 26, NULL, 'gg', 'No Show', '2025-12-21 07:22:06', '2026-01-17 23:19:38', '2026-01-17 06:45:00', 36, 'uploads/appointments/6947a01e25983_pfp.jpg', 0, 0),
(41, 'APPT-GEN-20251221-20591A', 4, 1, 1, NULL, 'zdfdsf', 'No Show', '2025-12-21 07:31:50', '2026-01-03 08:46:46', '2025-12-26 09:00:00', 50, 'uploads/appointments/6947a266d7f13_pfp.jpg', 0, 0),
(42, 'APPT-GEN-20251221-2018AB', 4, 1, 1, NULL, 'zdfsdf', 'Completed', '2025-12-21 07:33:16', '2025-12-21 10:58:06', '2025-12-31 14:00:00', 37, 'uploads/appointments/6947a2bcab619_pfp.jpg', 1, 0),
(43, 'APPT-GEN-20251221-640AB3', 4, 1, 1, NULL, 'sfs', 'Completed', '2025-12-21 07:45:17', '2025-12-21 10:08:26', '2025-12-30 14:00:00', 36, 'uploads/appointments/6947a58d6299f_pfp.jpg', 1, 1),
(44, 'APPT-GEN-20251226-CB9C28', 4, 1, 1, NULL, 'hh', 'No Show', '2025-12-26 07:44:45', '2026-01-08 14:36:05', '2026-01-07 17:19:00', 51, 'uploads/appointments/694e3ced3d296_appointment_slip_APPT-GEN-20251215-BB008A.png', 0, 0),
(46, 'APPT-GEN-20260104-0CCCE9', 4, 1, 26, NULL, 'sadasda', 'Completed', '2026-01-04 02:55:22', '2026-01-04 03:25:07', '2026-01-05 14:00:00', 43, NULL, 1, 0),
(47, 'APPT-GEN-20260104-71869F', 4, 1, 1, NULL, 'sdfdsfdsf', 'No Show', '2026-01-04 03:11:33', '2026-01-10 05:23:09', '2026-01-08 09:00:00', 46, NULL, 0, 0),
(48, 'APPT-GEN-20260104-EFC911', 4, 1, 1, NULL, 'dawd', 'Completed', '2026-01-04 04:11:28', '2026-01-04 04:13:50', '2026-01-05 09:00:00', 43, NULL, 1, 0),
(49, 'APPT-GEN-20260106-2E441E', 4, 1, 1, NULL, 'SXs', 'No Show', '2026-01-06 13:50:34', '2026-01-08 02:04:26', '2026-01-07 09:00:00', 45, NULL, 0, 0),
(50, 'APPT-GEN-20260106-05C209', 4, 1, 1, NULL, 'na', 'No Show', '2026-01-07 02:22:29', '2026-01-08 14:36:05', '2026-01-07 14:00:00', 45, NULL, 0, 0),
(54, 'APPT-MSWDO-20260112-3AF9B4', 6, 1, 1, NULL, 'Chhfvb', 'No Show', '2026-01-12 07:21:11', '2026-01-15 01:24:24', '2026-01-14 09:00:00', 54, NULL, 0, 0),
(55, 'APPT-DEMO-20260112-3270B4', 7, 22, 75, 37, 'Demo', 'Completed', '2026-01-12 13:11:50', '2026-01-12 13:16:21', '2026-01-12 09:00:00', 55, NULL, 1, 1),
(56, 'APPT-DEMO-20260112-85F7B6', 7, 22, 76, 37, 'Demo', 'Completed', '2026-01-12 13:22:25', '2026-01-16 02:56:56', '2026-01-13 09:00:00', 59, NULL, 1, 1),
(57, 'APPT-DEMO-20260112-B7B397', 7, 22, 76, 37, 'Demo', 'Completed', '2026-01-12 13:31:27', '2026-01-18 00:28:18', '2026-01-17 11:23:00', 57, NULL, 1, 0),
(58, 'APPT-DEMO-20260114-D44802', 7, 22, 75, 37, 'Demo', 'Completed', '2026-01-14 08:01:26', '2026-01-18 00:28:18', '2026-01-18 16:36:00', 56, NULL, 1, 0),
(59, 'APPT-DEMO-20260114-090813', 7, 22, 75, 37, 'Demo', 'Completed', '2026-01-15 01:26:40', '2026-01-18 00:28:18', '2026-01-19 09:00:00', 60, NULL, 1, 0),
(60, 'APPT-DEMO-20260115-827ECF', 7, 22, 75, 37, 'Demo', 'Completed', '2026-01-15 08:33:43', '2026-01-18 00:28:18', '2026-01-19 09:30:00', 57, NULL, 1, 0),
(61, 'APPT-DEMO-20260115-0C53ED', 7, 22, 75, 37, 'Example', 'Completed', '2026-01-16 02:47:32', '2026-01-17 06:29:32', '2026-01-16 14:00:00', 58, NULL, 1, 1),
(62, 'APPT-DEMO-20260115-5A2BCC', 7, 22, 75, 37, 'Demoo', 'Completed', '2026-01-16 03:23:23', '2026-01-18 00:28:18', '2026-01-19 14:00:00', 60, NULL, 1, 0),
(63, 'APPT-DEMO-20260116-DE1591', 7, 22, 75, 37, 'demo', 'Completed', '2026-01-16 08:29:10', '2026-01-18 00:28:18', '2026-01-19 09:00:00', 60, NULL, 1, 0),
(65, 'APPT-DEMO-20260116-33268B', 7, 22, 75, 37, 'Demo', 'Completed', '2026-01-16 16:37:55', '2026-01-18 00:28:18', '2026-01-19 14:00:00', 60, NULL, 1, 0),
(66, 'APPT-DEMO-20260117-02569C', 7, 22, 75, 37, 'labyu', 'Completed', '2026-01-17 08:46:25', '2026-01-17 09:02:16', '2026-01-19 09:00:00', 60, NULL, 1, 1),
(67, 'APPT-DEMO-20260117-BFC806', 8, 22, 75, 37, 'Demo', 'Completed', '2026-01-17 16:02:36', '2026-01-18 06:30:32', '2026-01-20 09:00:00', 61, NULL, 1, 0),
(68, 'APPT-DEMO-20260117-B210EE', 8, 22, 76, 37, 'Clearance', 'Completed', '2026-01-17 16:04:06', '2026-01-18 06:30:32', '2026-01-21 14:00:00', 64, NULL, 1, 0),
(69, 'APPT-DEMO-20260117-A0BB01', 8, 22, 76, 37, 'Cedula', 'No Show', '2026-01-17 16:18:38', '2026-01-25 03:31:27', '2026-01-20 14:00:00', 61, NULL, 0, 0),
(70, 'APPT-DEMO-20260119-0435AC', 7, 22, 75, 48, 'Demo', 'Completed', '2026-01-19 05:27:19', '2026-01-19 05:43:53', '2026-01-19 14:00:00', 83, NULL, 1, 0),
(71, 'APPT-DEMO-20260119-4681A1', 7, 22, 75, 37, 'demo', 'No Show', '2026-01-19 05:44:16', '2026-01-25 03:31:27', '2026-01-21 09:00:00', 64, NULL, 0, 0),
(72, 'APPT-MO-20260426-3EE1AD', 4, 14, 28, 49, 'permit', 'No Show', '2026-04-26 11:02:02', '2026-04-27 09:13:11', '2026-04-27 09:00:00', 95, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `appointment_feedback`
--

CREATE TABLE `appointment_feedback` (
  `id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `sqd0_answer` varchar(50) DEFAULT NULL,
  `sqd1_answer` varchar(50) DEFAULT NULL,
  `sqd2_answer` varchar(50) DEFAULT NULL,
  `sqd3_answer` varchar(50) DEFAULT NULL,
  `sqd4_answer` varchar(50) DEFAULT NULL,
  `sqd5_answer` varchar(50) DEFAULT NULL,
  `sqd6_answer` varchar(50) DEFAULT NULL,
  `sqd7_answer` varchar(50) DEFAULT NULL,
  `sqd8_answer` varchar(50) DEFAULT NULL,
  `submitted_at` datetime DEFAULT NULL,
  `cc1_answer` varchar(255) DEFAULT NULL,
  `cc2_answer` varchar(50) DEFAULT NULL,
  `cc3_answer` varchar(50) DEFAULT NULL,
  `suggestions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment_feedback`
--

INSERT INTO `appointment_feedback` (`id`, `appointment_id`, `sqd0_answer`, `sqd1_answer`, `sqd2_answer`, `sqd3_answer`, `sqd4_answer`, `sqd5_answer`, `sqd6_answer`, `sqd7_answer`, `sqd8_answer`, `submitted_at`, `cc1_answer`, `cc2_answer`, `cc3_answer`, `suggestions`) VALUES
(37, 43, 'Strongly Disagree', 'Disagree', 'Disagree', 'Disagree', 'Strongly Disagree', 'Neither Agree nor Disagree', 'Neither Agree nor Disagree', 'Neither Agree nor Disagree', 'Disagree', '2025-12-21 18:08:26', 'I know what a CC is and I saw this office\'s CC', 'Easy to see', 'Helped very much', ''),
(38, 55, 'Strongly Agree', 'Strongly Agree', 'Strongly Agree', 'Strongly Agree', 'Strongly Agree', 'Strongly Agree', 'Strongly Agree', 'Strongly Agree', 'Strongly Agree', '2026-01-12 05:16:21', 'I know what a CC is and I saw this office\'s CC', 'Easy to see', 'Helped very much', 'Demo'),
(39, 56, 'Strongly Agree', 'Strongly Agree', 'Strongly Agree', 'Strongly Agree', 'Strongly Agree', 'Strongly Agree', 'Strongly Agree', 'Strongly Agree', 'Strongly Agree', '2026-01-15 00:40:05', 'I know what a CC is and I saw this office\'s CC', 'Easy to see', 'Helped very much', ''),
(40, 61, 'Strongly Agree', 'Strongly Agree', 'Strongly Agree', 'Strongly Agree', 'Strongly Agree', 'Strongly Agree', 'Strongly Agree', 'Strongly Agree', 'Strongly Agree', '2026-01-16 08:21:59', 'I do not know what a CC is and I did not see one in this office', 'Easy to see', 'Helped very much', 'Demo'),
(41, 66, 'Strongly Agree', 'Agree', 'Agree', 'Strongly Agree', 'Agree', 'Strongly Agree', 'Agree', 'Agree', 'Strongly Agree', '2026-01-17 01:02:16', 'I know what a CC is and I saw this office\'s CC', 'Easy to see', 'Helped very much', 'Be kind to your client');

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('Admin','LGU Personnel','Resident') NOT NULL,
  `reset_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `email`, `password`, `role`, `reset_token`) VALUES
(1, 'a@gmail.com', '$2y$10$DvrDKpShqWV9fjp06gCqNuKscof/p2AIl1.PIeyEGXqvypbGvOLb2', 'Admin', '05937a7a2e247e0fff47b704123a9fe48cc48585e3c46c032d1fd450599c9454f269766d65d6c40683acd6d28f81f85c621e'),
(26, 'jvcrujido1@gmail.com', '$2y$10$7YPPPyOukTlJWCTAMNA28uE4La7AhGLNn6VLLNj6k1khip2W9OW82', 'Resident', '630f6687abc3e26913effc80cde9fc038adfa1cf4f72927e72587dc2c1289568412bfe6b6f18a511b50ead7dd45589046ce3'),
(43, 'angelreinlatchica@gmail.com', '$2y$10$UkpSIUvl5D9YbjP4KJ4qGeAnfhV7s9MdeFSnYnmVQg7dRATY1hMzC', 'LGU Personnel', '75e3625e3a736d110f063c2ce29e831cb2ef7f0e871f43dc643c203bde3474b4d0643965dad0b7216438afce069e595fd528'),
(44, 'vernalyntiama@gmail.com', '$2y$10$I1JPs101fYDqWPvYFDw.e.Cy2RytL2ZjnpqWvILx8yVqUXyda0Mly', 'Resident', NULL),
(45, 'jvcrujido@gmail.com', '$2y$10$j397H8Cr9T.tsWKifW8A5eHtJNapp.E55YPDA.ii.B9Oh9N68/Idq', 'Resident', NULL),
(47, 'yolandacvaller@gmail.com', '$2y$10$c13OllUxe606OETotlYxo.s860umaEodr2y15GEtonvK1UCpSWzTK', 'LGU Personnel', NULL),
(48, 'menro.unisanquezon@gmail.com', '$2y$10$I67Sy7hCKMC0jajhvxGH1urqF1NvpmuE410Zh2Ugr/zsutPrGUKYK', 'LGU Personnel', NULL),
(49, 'sangbayanunisan@gmail.com', '$2y$10$ztOEM7rN2kcvTrUTos0IveSXWkkHUFD6/ARutJHtHaFtlGKuXq2xi', 'LGU Personnel', NULL),
(50, 'agri_unisan@yahoo.com', '$2y$10$wVvmwbn3.sC0TqnptY9kZexLL4Phl0ZkvaWUcCFv5cSccGiY30sg.', 'LGU Personnel', NULL),
(51, 'mpdcunisan@gmail.com', '$2y$10$qD2l0Oq30WYL3zsOH8MuP.c.q43D3nQ1d3bkRm0o5WwNgYRMK08Yu', 'LGU Personnel', NULL),
(52, 'meo.unisan1@gmail.com', '$2y$10$QU4vNpXAJ4H0.Fjc3JrTVuo2lnu8KnSo2F4366KQmfEAe9fvjlKN6', 'LGU Personnel', NULL),
(53, 'mcrunisan0916@gmail.com', '$2y$10$eZXQwXq/tMX03OTpWmBUtuyA7ZUJ1DvGszj4HKmhub3tevvu.ceG.', 'LGU Personnel', NULL),
(54, 'mswdo.unisan@yahoo.com', '$2y$10$7774LX5BVG6DZWzxpNgMkuwHvgJLzDPfx2SDjDImf1PhnBBz/Uczm', 'LGU Personnel', NULL),
(56, 'reinlatchica@gmail.com', '$2y$10$6VwluG0VkqksIOHoN4Q53.8Q5CHRCp/HcsYCtUHavmV5mD2TIsH1a', 'Resident', NULL),
(58, 'yamson@gmail.com', '$2y$10$wRVXoUPJuomi1LLxrYn03u2CSGPLk8y9eQLj0Z9594hYELv4egh3S', 'LGU Personnel', NULL),
(59, 'ken@gmail.com', '$2y$10$429boGAhG2IUhIf63EUnbuAklwUVu8TrefqpigbXZKPiC/JP/9vU2', 'LGU Personnel', NULL),
(60, 'salomesuira@gmail.com', '$2y$10$SeU8Bhgn1Q94WzyswsgH0OpN17DHVZAss/ur2BbQpAwTl.NFfCDlC', 'LGU Personnel', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `available_dates`
--

CREATE TABLE `available_dates` (
  `id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `status` enum('available','booked') DEFAULT 'available',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `am_slots` int(11) DEFAULT 0,
  `pm_slots` int(11) DEFAULT 0,
  `am_booked` int(11) DEFAULT 0,
  `pm_booked` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `available_dates`
--

INSERT INTO `available_dates` (`id`, `department_id`, `date_time`, `status`, `created_at`, `am_slots`, `pm_slots`, `am_booked`, `pm_booked`) VALUES
(1, 1, '2025-08-25 00:00:00', 'available', '2025-08-24 11:09:14', 5, 5, 0, 0),
(2, 1, '2025-09-09 00:00:00', 'available', '2025-09-09 09:37:59', 5, 5, 4, 3),
(3, 1, '2025-09-30 00:00:00', 'available', '2025-09-30 06:44:48', 5, 5, 3, 2),
(4, 1, '2025-10-21 00:00:00', 'available', '2025-10-19 11:46:42', 5, 5, 0, 0),
(5, 1, '2025-10-20 00:00:00', 'available', '2025-10-19 11:46:42', 5, 5, 3, 2),
(6, 1, '2025-10-22 00:00:00', 'available', '2025-10-19 11:46:42', 5, 5, 0, 0),
(7, 1, '2025-10-23 00:00:00', 'available', '2025-10-19 11:46:42', 5, 5, 0, 0),
(8, 1, '2025-10-24 00:00:00', 'available', '2025-10-19 11:46:42', 5, 5, 0, 0),
(9, 1, '2025-10-27 00:00:00', 'available', '2025-10-19 11:46:42', 5, 5, 1, 0),
(10, 1, '2025-10-28 00:00:00', 'available', '2025-10-19 11:46:42', 5, 5, 0, 0),
(11, 1, '2025-10-29 00:00:00', 'available', '2025-10-19 11:46:42', 5, 5, 0, 0),
(13, 1, '2025-10-31 00:00:00', 'available', '2025-10-19 11:46:42', 5, 5, 0, 0),
(14, 1, '2025-10-30 00:00:00', 'available', '2025-10-22 07:50:39', 5, 5, 0, 0),
(18, 1, '2025-11-19 00:00:00', 'available', '2025-11-19 05:00:38', 5, 5, 0, 0),
(19, 1, '2025-12-01 00:00:00', 'available', '2025-12-01 06:46:15', 5, 5, 0, 0),
(20, 1, '2025-12-01 00:00:00', 'available', '2025-12-01 06:46:24', 4, 5, 1, 0),
(22, 1, '2025-12-08 00:00:00', 'available', '2025-12-06 04:31:06', 5, 5, 0, 1),
(23, 1, '2025-12-09 00:00:00', 'available', '2025-12-06 04:31:06', 5, 5, 0, 0),
(24, 1, '2025-12-10 00:00:00', 'available', '2025-12-06 04:31:06', 5, 5, 0, 0),
(25, 1, '2025-12-11 00:00:00', 'available', '2025-12-06 04:31:06', 5, 5, 0, 0),
(26, 1, '2025-12-12 00:00:00', 'available', '2025-12-06 04:31:06', 5, 5, 0, 0),
(27, 1, '2025-12-15 00:00:00', 'available', '2025-12-06 04:52:12', 5, 5, 0, 1),
(28, 1, '2025-12-16 00:00:00', 'available', '2025-12-06 09:40:07', 5, 5, 0, 1),
(29, 1, '2025-12-17 00:00:00', 'available', '2025-12-06 09:40:42', 7, 8, 0, 0),
(31, 1, '2025-12-19 00:00:00', 'available', '2025-12-06 09:40:42', 7, 8, 0, 0),
(32, 1, '2025-12-22 00:00:00', 'available', '2025-12-06 09:40:42', 7, 8, 2, 0),
(33, 1, '2025-12-23 00:00:00', 'available', '2025-12-06 09:40:42', 7, 8, 1, 0),
(34, 1, '2025-12-24 00:00:00', 'available', '2025-12-06 09:40:42', 7, 8, 0, 0),
(35, 1, '2025-12-29 00:00:00', 'available', '2025-12-07 02:28:54', 1, 1, 1, 0),
(36, 1, '2025-12-30 00:00:00', 'available', '2025-12-07 02:28:54', 1, 1, 1, 1),
(37, 1, '2025-12-31 00:00:00', 'available', '2025-12-07 02:28:54', 1, 1, 1, 1),
(38, 1, '2025-12-25 00:00:00', 'available', '2025-12-13 09:12:49', 5, 5, 0, 0),
(40, 1, '2025-12-23 00:00:00', 'available', '2025-12-21 11:10:52', 8, 8, 0, 0),
(41, 1, '2026-01-01 00:00:00', 'available', '2025-12-22 10:18:02', 5, 5, 0, 0),
(42, 1, '2026-01-02 00:00:00', 'available', '2025-12-22 10:18:02', 5, 5, 0, 0),
(43, 1, '2026-01-05 00:00:00', 'available', '2025-12-22 10:18:02', 5, 5, 4, 1),
(44, 1, '2026-01-06 00:00:00', 'available', '2025-12-22 10:18:02', 5, 5, 0, 0),
(45, 1, '2026-01-07 00:00:00', 'available', '2025-12-22 10:18:02', 5, 5, 1, 1),
(46, 1, '2026-01-08 00:00:00', 'available', '2025-12-22 10:18:02', 5, 5, 3, 1),
(47, 1, '2026-01-09 00:00:00', 'available', '2025-12-22 10:18:02', 5, 5, 2, 1),
(50, 1, '2025-12-26 00:00:00', 'available', '2025-12-26 07:30:33', 5, 5, 2, 0),
(51, 1, '2025-12-31 00:00:00', 'available', '2025-12-26 07:41:40', 5, 5, 2, 0),
(52, 1, '2026-01-12 00:00:00', 'available', '2026-01-12 05:09:37', 5, 5, 1, 1),
(53, 1, '2026-01-13 00:00:00', 'available', '2026-01-12 05:09:37', 5, 5, 0, 0),
(54, 1, '2026-01-14 00:00:00', 'available', '2026-01-12 05:09:37', 5, 5, 1, 0),
(55, 22, '2026-01-12 00:00:00', 'available', '2026-01-12 07:29:48', 5, 5, 1, 0),
(56, 22, '2026-01-14 00:00:00', 'available', '2026-01-12 07:29:48', 5, 5, 1, 0),
(57, 22, '2026-01-15 00:00:00', 'available', '2026-01-12 07:29:48', 5, 5, 0, 2),
(58, 22, '2026-01-16 00:00:00', 'available', '2026-01-12 07:29:48', 5, 5, 0, 1),
(59, 22, '2026-01-13 00:00:00', 'available', '2026-01-12 07:29:48', 5, 5, 1, 0),
(60, 22, '2026-01-19 00:00:00', 'available', '2026-01-12 07:29:48', 5, 5, 3, 3),
(61, 22, '2026-01-20 00:00:00', 'available', '2026-01-12 07:29:48', 5, 5, 1, 1),
(62, 22, '2026-01-22 00:00:00', 'available', '2026-01-12 07:29:48', 5, 5, 0, 0),
(63, 22, '2026-01-23 00:00:00', 'available', '2026-01-12 07:29:48', 5, 5, 0, 0),
(64, 22, '2026-01-21 00:00:00', 'available', '2026-01-12 07:29:48', 5, 5, 1, 1),
(65, 22, '2026-01-26 00:00:00', 'available', '2026-01-12 07:29:48', 5, 5, 0, 0),
(66, 22, '2026-01-27 00:00:00', 'available', '2026-01-12 07:29:48', 5, 5, 0, 0),
(67, 22, '2026-01-28 00:00:00', 'available', '2026-01-12 07:29:48', 5, 5, 0, 0),
(68, 22, '2026-01-29 00:00:00', 'available', '2026-01-12 07:29:48', 5, 5, 0, 0),
(69, 22, '2026-01-30 00:00:00', 'available', '2026-01-12 07:29:48', 5, 5, 0, 0),
(70, 22, '2026-02-02 00:00:00', 'available', '2026-01-12 13:36:10', 5, 5, 0, 0),
(71, 22, '2026-02-03 00:00:00', 'available', '2026-01-12 13:36:11', 5, 5, 0, 0),
(72, 22, '2026-02-04 00:00:00', 'available', '2026-01-12 13:36:11', 5, 5, 0, 0),
(73, 22, '2026-02-05 00:00:00', 'available', '2026-01-12 13:36:11', 5, 5, 0, 0),
(74, 22, '2026-02-06 00:00:00', 'available', '2026-01-12 13:36:11', 5, 5, 0, 0),
(75, 22, '2026-02-06 00:00:00', 'available', '2026-01-12 14:12:30', 10, 10, 0, 0),
(76, 22, '2026-02-09 00:00:00', 'available', '2026-01-15 08:49:58', 5, 5, 0, 0),
(77, 22, '2026-02-10 00:00:00', 'available', '2026-01-16 08:37:24', 10, 5, 0, 0),
(78, 22, '2026-02-11 00:00:00', 'available', '2026-01-16 08:37:24', 5, 5, 0, 0),
(79, 22, '2026-02-12 00:00:00', 'available', '2026-01-16 08:37:24', 5, 5, 0, 0),
(80, 22, '2026-02-13 00:00:00', 'available', '2026-01-16 08:37:24', 5, 5, 0, 0),
(81, 22, '2026-01-19 00:00:00', 'available', '2026-01-17 17:09:30', 5, 5, 0, 0),
(82, 22, '2026-01-20 00:00:00', 'available', '2026-01-17 17:09:47', 5, 5, 0, 0),
(83, 22, '2026-01-19 00:00:00', 'available', '2026-01-17 17:10:39', 5, 5, 0, 1),
(84, 22, '2026-01-21 00:00:00', 'available', '2026-01-17 17:10:44', 5, 5, 0, 0),
(85, 22, '2026-02-16 00:00:00', 'available', '2026-01-17 17:12:29', 5, 5, 0, 0),
(86, 22, '2026-02-17 00:00:00', 'available', '2026-01-17 17:12:29', 5, 5, 0, 0),
(88, 22, '2026-02-19 00:00:00', 'available', '2026-01-17 17:12:29', 5, 5, 0, 0),
(89, 22, '2026-02-20 00:00:00', 'available', '2026-01-17 17:12:29', 5, 5, 0, 0),
(90, 22, '2026-02-23 00:00:00', 'available', '2026-01-19 06:03:52', 5, 5, 0, 0),
(91, 22, '2026-02-24 00:00:00', 'available', '2026-01-19 06:03:52', 5, 5, 0, 0),
(92, 22, '2026-02-25 00:00:00', 'available', '2026-01-19 06:03:52', 5, 5, 0, 0),
(93, 22, '2026-02-26 00:00:00', 'available', '2026-01-19 06:03:52', 5, 5, 0, 0),
(94, 22, '2026-02-27 00:00:00', 'available', '2026-01-19 06:03:52', 5, 5, 0, 0),
(95, 14, '2026-04-27 00:00:00', 'available', '2026-04-26 11:01:34', 5, 5, 1, 0),
(96, 14, '2026-04-28 00:00:00', 'available', '2026-04-26 11:01:34', 5, 5, 0, 0),
(97, 14, '2026-04-29 00:00:00', 'available', '2026-04-26 11:01:34', 5, 5, 0, 0),
(98, 14, '2026-04-30 00:00:00', 'available', '2026-04-26 11:01:34', 5, 5, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `commendations`
--

CREATE TABLE `commendations` (
  `id` int(11) NOT NULL,
  `resident_id` int(11) NOT NULL,
  `employee_name` varchar(150) NOT NULL,
  `office` varchar(150) DEFAULT NULL,
  `service_requested` text DEFAULT NULL,
  `commendation_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `appointment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `resident_id` int(11) NOT NULL,
  `employee_name` varchar(150) NOT NULL,
  `office` varchar(150) DEFAULT NULL,
  `complaint_type` text DEFAULT NULL,
  `additional_details` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `appointment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `acronym` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `acronym`, `description`, `created_at`) VALUES
(1, 'Municipal Social Welfare and Development Office', 'MSWDO', 'To provide social protection and promote the rights and welfare of the poor, vulnerable and disadvantaged individuals, families and communities that will contribute to poverty alleviation and empowerment for quality service delivery through provision of developmental, preventive and rehabilitative programs and services.', '2025-08-24 07:18:18'),
(14, 'Mayor\'s Office', 'MO', 'Exercise general supervision and control over all programs, projects, services, and activities of the city government.', '2026-01-04 11:26:31'),
(18, 'Office Of The Municipal Engineer/Building Official', 'MEO', '', '2026-01-10 07:15:55'),
(19, 'Municipal Environment and Natural Resource Office', 'MENRO', '', '2026-01-10 08:13:26'),
(20, 'Office of Municipal Assesor', 'MAO', 'Implement the appraisal and assessment provisions and regulations contained in the real property tax code for taxation', '2026-01-10 08:34:33'),
(22, 'For Demonstration Purposes', 'DEMO', '', '2026-01-12 04:14:26'),
(23, 'Office of the Sangguniang Bayan', 'SB', 'To serve as the legislative body responsible for enacting local ordinances, resolutions, and other legislative measures for the efficient and effective governance of the municipality.', '2026-01-14 13:51:21'),
(24, 'Municipal Agriculture Office', 'AGRICULTURE', 'Responsible for the promotion of the Agriculture & Fisheries development and growth', '2026-01-16 06:59:14'),
(25, 'Office of the Municipal Planning and Development Coordinator', 'MPDC', 'Responsible for creating integrated development plans (economic, social, physical) for the municipality, coordinating sectoral plans, promoting public participation, and monitoring project implementation, ensuring sustainable growth aligned with the LGU\'s vision, often issuing clearances like zoning for development projects.', '2026-01-16 07:11:34'),
(26, 'Office of the Municipal Civil Registrar', 'MCR', 'Manages vital records (births, marriages, deaths) for a municipality, responsible for registering these events, issuing certified copies, processing marriage licenses, handling legal instruments, and updating civil status records, working with the Philippine Statistics Authority (PSA) for national data, and ensuring efficient, accurate civil registration for citizens\' access to rights and services.', '2026-01-16 07:44:46'),
(27, 'Business Permit and License Office', 'BPLO', '', '2026-04-27 09:13:12');

-- --------------------------------------------------------

--
-- Table structure for table `department_fees`
--

CREATE TABLE `department_fees` (
  `id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `fee_name` varchar(255) NOT NULL,
  `fee_amount` decimal(10,2) DEFAULT 0.00,
  `fee_description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_fees`
--

INSERT INTO `department_fees` (`id`, `department_id`, `fee_name`, `fee_amount`, `fee_description`, `created_at`) VALUES
(13, 27, '1.	Mayor’s Permit Fee', 0.00, 'based on business size and business category/line of business', '2026-04-27 09:54:00'),
(14, 27, '2.	Garbage charges', 0.00, 'based in business category', '2026-04-27 09:54:00'),
(15, 27, '4.	Zoning Fee', 216.00, '', '2026-04-27 09:54:00'),
(16, 27, '5.	Occupational Fee', 300.00, 'Per person', '2026-04-27 09:54:00'),
(17, 27, '6.	Plate', 150.00, '', '2026-04-27 09:54:00'),
(18, 27, '7.	Sticker', 50.00, '', '2026-04-27 09:54:00'),
(19, 27, '8.	Police Clearance Fee', 100.00, '', '2026-04-27 09:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `department_services`
--

CREATE TABLE `department_services` (
  `id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_services`
--

INSERT INTO `department_services` (`id`, `department_id`, `service_name`, `description`) VALUES
(1, 1, 'AICS For Medical Assistance', 'The AICS or Assistance to Individuals in Crisis Situation is one of the social welfare services of the C/M/DSWD that aims to help with medical needs, burial, and transportation for the needs of an individual or family.'),
(26, 1, 'AICS For Burial Assistance', 'The AICS or Assistance to Individuals in Crisis Situation is one of the social welfare services of the C/M/DSWD that aims to help with medical needs, burial, and transportation for the needs of an individual or family.'),
(27, 14, 'Mayor\'s Clearance', NULL),
(28, 14, 'Mayor\'s Permit', NULL),
(29, 14, 'Franchise', NULL),
(30, 14, 'Courtesy Call', NULL),
(36, 1, 'AICS For Travel Assistance', 'The AICS or Assistance to Individuals in Crisis Situation is one of the social welfare services of the C/M/DSWD that aims to help with medical needs, burial, and transportation for the needs of an individual or family.'),
(37, 1, 'AICS For Fire Victims', 'The AICS or Assistance to Individuals in Crisis Situation is one of the social welfare services of the C/M/DSWD that aims to help with medical needs, burial, and transportation for the needs of an individual or family.'),
(38, 1, 'AICS For Financial Assistance', 'The AICS or Assistance to Individuals in Crisis Situation is one of the social welfare services of the C/M/DSWD that aims to help with medical needs, burial, and transportation for the needs of an individual or family.'),
(46, 18, 'Issuance Of Building Permit', 'A Building Permit is issued by the Building Official to an owner/applicant to proceed with the construction, installation, addition, alteration, renovation, conversion, repair, moving, demolition, or work activity of a specific project/building/ structure or portions thereof after the accompanying principal plans, specification and other pertinent documents with the duly notarized application are found satisfactory and substantially conforming with the National Building Code of the Philippines and its Implementing Rules and Regulations and the Local Zoning Ordinance.'),
(47, 18, 'Issuance Of Electrical Permit For Low Cost Housing', NULL),
(48, 18, 'Issuance Of Temporary Service Connection', NULL),
(49, 18, 'Issuance Of Demolition Permit', NULL),
(50, 18, 'Issuance OF Occupancy Permit', 'Upon completion of the building, the owner shall apply for an Occupancy Permit at the OBO prior to occupancy.'),
(51, 19, 'Cutting Permit (Cutting, Trimming and Balling of Trees)', 'sample'),
(52, 19, 'Tree Planting/Growing Certificate', NULL),
(53, 19, 'Coastal/Community Clean-Up Drive Certificate', NULL),
(54, 19, 'Garbage Collection Services', NULL),
(55, 19, 'Environmental Certificate', NULL),
(56, 19, 'Resolving Environmental Issues/Complaints', NULL),
(57, 20, 'Issuance of New Tax Declaration (Land) - UNTITLED PROPERTY', 'An established record given to a client which provides information relative to the assessment of a real property for taxation purposes'),
(58, 20, 'Issuance of New Tax Declaration (Land) - TITLED PROPERTY', 'An established record given to a client which provides information relative to the assessment of a real property for taxation purposes'),
(59, 20, 'Issuance of Transfer of Tax Declaration (Land, Improvement & Machineries) - TITLED PROPERTY', 'An established record given to a client after the final execution of Deed of Conveyance of a property which provides information relative to its assessment for taxation purposes.'),
(60, 20, 'Issuance of Transfer of Tax Declaration (Land, Improvement & Machineries) - UNTITLED PROPERTY', 'An established record given to a client after the final execution of Deed of Conveyance of a property which provides information relative to its assessment for taxation purposes.'),
(61, 20, 'Issuance of Tax Declaration for Newly Constructed/Installed Buildings and/or Machineries', 'An established record given to a client which provides information relative to the assessment of newly constructed/installed buildings and/or machineries for taxation purposes'),
(62, 20, 'Issuance of Tax Declaration for Newly Constructed/Installed Buildings and/or Machineries - HIGH RISE RESEDENTIAL/COMMERCIAL BUILDING (CONDOMINIUM, CONDOTELS & APARTELS)', 'An established record given to a client which provides information relative to the assessment of newly constructed/installed buildings and/or machineries for taxation purposes'),
(63, 20, 'Issuance of Certified Copy of Assessment Records - (Certified True Copy of Tax Declaration)', 'Certified Copy of records of real property to property owner/s or any authorized person (Tax Declaration, Landholdings, No Real Property, No Improvement and other certifications.)'),
(64, 20, 'Issuance of Certified Copy of Assessment Records - (Certificate of Improvement/No Improvement)', 'Certified Copy of records of real property to property owner/s or any authorized person (Tax Declaration, Landholdings, No Real Property, No Improvement and other certifications.)'),
(65, 20, 'Issuance of Certified Copy of Assessment Records - (Certification of Aggregate Landholding/s)', 'Certified Copy of records of real property to property owner/s or any authorized person (Tax Declaration, Landholdings, No Real Property, No Improvement and other certifications.)'),
(66, 20, 'Issuance of Certified Copy of Assessment Records - (Other Certifications)', 'Certified Copy of records of real property to property owner/s or any authorized person (Tax Declaration, Landholdings, No Real Property, No Improvement and other certifications.)'),
(67, 20, 'Issuance of Certified Copy of Assessment Records - (Certified True Copy of Tax Declaration)', 'Certified Copy of records of real property to property owner/s or any authorized person (Tax Declaration, Landholdings, No Real Property, No Improvement and other certifications.)'),
(68, 20, 'Issuance of Certified Copy of Assessment Records - (Certificate of Improvement/No Improvement)', 'Certified Copy of records of real property to property owner/s or any authorized person (Tax Declaration, Landholdings, No Real Property, No Improvement and other certifications.)'),
(69, 20, 'Issuance of Certified Copy of Assessment Records - (Certification of Aggregate Landholding/s)', 'Certified Copy of records of real property to property owner/s or any authorized person (Tax Declaration, Landholdings, No Real Property, No Improvement and other certifications.)'),
(70, 20, 'Issuance of Certified Copy of Assessment Records - (Other Certifications)', 'Certified Copy of records of real property to property owner/s or any authorized person (Tax Declaration, Landholdings, No Real Property, No Improvement and other certifications.)'),
(75, 22, 'Service 1', NULL),
(76, 22, 'Service 2', NULL),
(77, 23, 'Accreditation of Organization/Association', NULL),
(78, 23, 'Issuance of  Burial Permit', NULL),
(79, 23, 'Issuance of Transfer of Cadaver', NULL),
(80, 23, 'Document Issuance', NULL),
(81, 23, 'Request for Certified True Copies of Sangguniang Bayan Documents', NULL),
(82, 24, 'PCIC Insurance', NULL),
(83, 24, 'RSBSA', NULL),
(84, 24, 'Fish R', NULL),
(85, 24, 'Boat Registration', NULL),
(86, 25, 'Issuance of Locational Clearing - RESIDENTIAL', NULL),
(87, 25, 'Issuance of Locational Clearing - COMMERCIAL', NULL),
(88, 25, 'Issuance of Locational Clearing - INDUSTRIAL', NULL),
(89, 25, 'Issuance of Locational Clearing - INSTITUTIONAL', NULL),
(90, 25, 'Issuance of Locational Clearing - AGRO-INDUSTRIAL', NULL),
(91, 25, 'Issuance of Certificate of Zoning - RESIDENTIAL', NULL),
(92, 25, 'Issuance of Certificate of Zoning - COMMERCIAL', NULL),
(93, 25, 'Issuance of Certificate of Zoning - INDUSTRIAL', NULL),
(94, 25, 'Issuance of Certificate of Zoning - INSTITUTIONAL', NULL),
(95, 25, 'Issuance of Certificate of Zoning - AGRO-IDUSTRIAL', NULL),
(96, 26, 'Issuance of Certified Copy of Marriage and Death Certificate:', NULL),
(97, 26, 'Registration of Birth for Legitimate Children - ON TIME REGISTRATION', NULL),
(98, 26, 'Registration of Birth for Legitimate Children - LATE REGISTRATION', NULL),
(99, 27, 'Mayor\'s Permit/Business Permit', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lgu_personnel`
--

CREATE TABLE `lgu_personnel` (
  `id` int(11) NOT NULL,
  `auth_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_department_head` tinyint(1) DEFAULT 0 COMMENT 'True if this personnel is the department head',
  `created_by_personnel_id` int(11) DEFAULT NULL COMMENT 'ID of personnel who created this record (if applicable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lgu_personnel`
--

INSERT INTO `lgu_personnel` (`id`, `auth_id`, `first_name`, `middle_name`, `last_name`, `department_id`, `created_at`, `is_department_head`, `created_by_personnel_id`) VALUES
(37, 43, 'Angel', 'Factor', 'Latchica', 22, '2026-01-12 04:26:40', 1, NULL),
(39, 47, 'Yolanda', 'Caper', 'Valler', 20, '2026-01-14 08:26:59', 1, NULL),
(40, 48, 'Prima', '', 'Limbo', 19, '2026-01-15 02:08:52', 1, NULL),
(41, 49, 'Jo Aldous', '', 'Amparo', 23, '2026-01-15 02:58:58', 1, NULL),
(42, 50, 'Perciveranda', '', 'Galang', 24, '2026-01-16 07:00:41', 1, NULL),
(43, 51, 'Emelyn', '', 'Castro', 25, '2026-01-16 07:29:05', 1, NULL),
(44, 52, 'Isabelita', '', 'Deveza', 18, '2026-01-16 07:31:35', 1, NULL),
(45, 53, 'Crecylhyn', '', 'Bandayril', 26, '2026-01-16 07:47:59', 1, NULL),
(46, 54, 'Alma', '', 'Arceo', 1, '2026-01-17 04:57:33', 1, NULL),
(48, 58, 'Edgardo', 'R.', 'Yamson', 22, '2026-01-18 06:16:19', 0, 37),
(49, 59, 'ken', 'alexis', 'salazar', 14, '2026-04-26 10:59:36', 1, NULL),
(50, 60, 'Salome', '', 'Suira', 27, '2026-04-27 09:27:14', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `recipient_type` enum('Resident','Personnel') NOT NULL,
  `resident_id` int(11) DEFAULT NULL,
  `personnel_id` int(11) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `appointment_id`, `message`, `created_at`, `recipient_type`, `resident_id`, `personnel_id`, `is_read`) VALUES
(15, 41, 'Your reschedule request has been rejected. Reason: aa', '2026-01-04 06:27:29', 'Resident', 4, NULL, 1),
(16, 41, 'You rejected the reschedule request for Jake Vargas.', '2026-01-04 06:27:29', 'Personnel', NULL, 7, 1),
(17, 49, 'New appointment booked by Jake Vargas for January 06, 2026 (PM slot)', '2026-01-06 13:50:34', 'Resident', 4, NULL, 1),
(18, 50, 'New appointment booked by Jake Vargas for January 07, 2026 (PM slot)', '2026-01-07 02:22:29', 'Resident', 4, NULL, 1),
(19, 49, 'Your appointment for Service 1 has been rescheduled to January 7, 2026 at 9:00 AM.', '2026-01-07 10:59:23', 'Resident', 4, NULL, 1),
(20, 49, 'You rescheduled the appointment for Jake Vargas to January 7, 2026 at 9:00 AM.', '2026-01-07 10:59:23', 'Personnel', NULL, 7, 1),
(45, 55, 'You marked the appointment for Jayvee Crujido as completed.', '2026-01-12 13:14:03', 'Personnel', NULL, 37, 1),
(44, 55, 'Your appointment on January 12, 2026 (AM slot) has been completed.', '2026-01-12 13:14:03', 'Resident', 7, NULL, 1),
(23, 51, 'New appointment booked by Jayvee Crujido for January 08, 2026 (PM slot)', '2026-01-08 02:46:28', 'Personnel', NULL, 36, 1),
(24, 51, 'New appointment booked by Jayvee Crujido for January 08, 2026 (PM slot)', '2026-01-08 02:46:28', 'Personnel', NULL, 7, 1),
(46, 56, 'Jayvee Crujido, you have successfully booked an appointment for January 13, 2026 (AM slot)', '2026-01-12 13:22:25', 'Resident', 7, NULL, 1),
(27, 52, 'New appointment booked by Jayvee Crujido for January 12, 2026 (AM slot)', '2026-01-12 05:10:38', 'Personnel', NULL, 36, 1),
(28, 52, 'New appointment booked by Jayvee Crujido for January 12, 2026 (AM slot)', '2026-01-12 05:10:38', 'Personnel', NULL, 7, 1),
(43, 55, 'New appointment booked by Jayvee Crujido for January 12, 2026 (AM slot)', '2026-01-12 13:11:50', 'Personnel', NULL, 37, 1),
(30, 52, 'You marked the appointment for Jayvee Crujido as completed.', '2026-01-12 05:16:01', 'Personnel', NULL, 7, 0),
(42, 55, 'New appointment booked by Jayvee Crujido for January 12, 2026 (AM slot)', '2026-01-12 13:11:50', 'Resident', 7, NULL, 1),
(41, 55, 'Jayvee Crujido, you have successfully booked an appointment for January 12, 2026 (AM slot)', '2026-01-12 13:11:50', 'Resident', 7, NULL, 1),
(33, 53, 'New appointment booked by Jayvee Crujido for January 12, 2026 (PM slot)', '2026-01-12 05:17:09', 'Personnel', NULL, 36, 0),
(34, 53, 'New appointment booked by Jayvee Crujido for January 12, 2026 (PM slot)', '2026-01-12 05:17:09', 'Personnel', NULL, 7, 0),
(35, 49, 'Your reschedule request has been rejected. Reason: demo', '2026-01-12 05:26:27', 'Resident', 4, NULL, 1),
(36, 49, 'You rejected the reschedule request for Jake Vargas.', '2026-01-12 05:26:27', 'Personnel', NULL, 7, 1),
(37, 54, 'Vernalyn Tiama, you have successfully booked an appointment for January 14, 2026 (AM slot)', '2026-01-12 07:21:11', 'Resident', 6, NULL, 0),
(38, 54, 'New appointment booked by Vernalyn Tiama for January 14, 2026 (AM slot)', '2026-01-12 07:21:11', 'Resident', 6, NULL, 0),
(39, 54, 'New appointment booked by Vernalyn Tiama for January 14, 2026 (AM slot)', '2026-01-12 07:21:11', 'Personnel', NULL, 36, 0),
(40, 54, 'New appointment booked by Vernalyn Tiama for January 14, 2026 (AM slot)', '2026-01-12 07:21:11', 'Personnel', NULL, 7, 0),
(47, 56, 'New appointment booked by Jayvee Crujido for January 13, 2026 (AM slot)', '2026-01-12 13:22:25', 'Resident', 7, NULL, 1),
(48, 56, 'New appointment booked by Jayvee Crujido for January 13, 2026 (AM slot)', '2026-01-12 13:22:25', 'Personnel', NULL, 37, 1),
(49, 57, 'Jayvee Crujido, you have successfully booked an appointment for January 15, 2026 (PM slot)', '2026-01-12 13:31:27', 'Resident', 7, NULL, 1),
(50, 57, 'New appointment booked by Jayvee Crujido for January 15, 2026 (PM slot)', '2026-01-12 13:31:27', 'Resident', 7, NULL, 1),
(51, 57, 'New appointment booked by Jayvee Crujido for January 15, 2026 (PM slot)', '2026-01-12 13:31:27', 'Personnel', NULL, 37, 1),
(52, 56, 'Your appointment on January 13, 2026 (AM slot) has been completed.', '2026-01-12 13:35:33', 'Resident', 7, NULL, 1),
(53, 56, 'You marked the appointment for Jayvee Crujido as completed.', '2026-01-12 13:35:33', 'Personnel', NULL, 37, 1),
(54, 31, 'Your reschedule request has been approved. New appointment: January 15, 2026 (PM slot)', '2026-01-12 13:38:58', 'Resident', 4, NULL, 1),
(55, 31, 'You approved the reschedule request for Jake Vargas. New date: January 15, 2026.', '2026-01-12 13:38:58', 'Personnel', NULL, 7, 1),
(56, 28, 'Your reschedule request has been rejected. Reason: Demo', '2026-01-12 13:39:05', 'Resident', 4, NULL, 1),
(57, 28, 'You rejected the reschedule request for Jake Vargas.', '2026-01-12 13:39:05', 'Personnel', NULL, 7, 1),
(58, 58, 'Jayvee Crujido, you have successfully booked an appointment for January 14, 2026 (AM slot)', '2026-01-14 08:01:26', 'Resident', 7, NULL, 1),
(59, 58, 'New appointment booked by Jayvee Crujido for January 14, 2026 (AM slot)', '2026-01-14 08:01:26', 'Resident', 7, NULL, 1),
(60, 58, 'New appointment booked by Jayvee Crujido for January 14, 2026 (AM slot)', '2026-01-14 08:01:26', 'Personnel', NULL, 37, 1),
(61, 59, 'Jayvee Crujido, you have successfully booked an appointment for January 15, 2026 (AM slot)', '2026-01-15 01:26:40', 'Resident', 7, NULL, 1),
(62, 59, 'New appointment booked by Jayvee Crujido for January 15, 2026 (AM slot)', '2026-01-15 01:26:40', 'Resident', 7, NULL, 1),
(63, 59, 'New appointment booked by Jayvee Crujido for January 15, 2026 (AM slot)', '2026-01-15 01:26:40', 'Personnel', NULL, 37, 1),
(64, 60, 'Jayvee Crujido, you have successfully booked an appointment for January 15, 2026 (PM slot)', '2026-01-15 08:33:43', 'Resident', 7, NULL, 1),
(65, 60, 'New appointment booked by Jayvee Crujido for January 15, 2026 (PM slot)', '2026-01-15 08:33:43', 'Resident', 7, NULL, 1),
(66, 60, 'New appointment booked by Jayvee Crujido for January 15, 2026 (PM slot)', '2026-01-15 08:33:43', 'Personnel', NULL, 37, 1),
(67, 61, 'Jayvee Crujido, you have successfully booked an appointment for January 16, 2026 (PM slot)', '2026-01-16 02:47:32', 'Resident', 7, NULL, 1),
(68, 61, 'New appointment booked by Jayvee Crujido for January 16, 2026 (PM slot)', '2026-01-16 02:47:32', 'Resident', 7, NULL, 1),
(69, 61, 'New appointment booked by Jayvee Crujido for January 16, 2026 (PM slot)', '2026-01-16 02:47:32', 'Personnel', NULL, 37, 1),
(70, 62, 'Jayvee Crujido, you have successfully booked an appointment for January 19, 2026 (PM slot)', '2026-01-16 03:23:23', 'Resident', 7, NULL, 1),
(71, 62, 'New appointment booked by Jayvee Crujido for January 19, 2026 (PM slot)', '2026-01-16 03:23:23', 'Resident', 7, NULL, 1),
(72, 62, 'New appointment booked by Jayvee Crujido for January 19, 2026 (PM slot)', '2026-01-16 03:23:23', 'Personnel', NULL, 37, 1),
(73, 63, 'Jayvee Crujido, you have successfully booked an appointment for January 19, 2026 (AM slot)', '2026-01-16 08:29:10', 'Resident', 7, NULL, 1),
(74, 63, 'New appointment booked by Jayvee Crujido for January 19, 2026 (AM slot)', '2026-01-16 08:29:10', 'Resident', 7, NULL, 1),
(75, 63, 'New appointment booked by Jayvee Crujido for January 19, 2026 (AM slot)', '2026-01-16 08:29:10', 'Personnel', NULL, 37, 1),
(76, 61, 'Your appointment on January 16, 2026 (PM slot) has been completed.', '2026-01-16 08:32:49', 'Resident', 7, NULL, 1),
(77, 61, 'You marked the appointment for Jayvee Crujido as completed.', '2026-01-16 08:32:49', 'Personnel', NULL, 37, 1),
(78, 64, 'Arjohn Verastigue, you have successfully booked an appointment for January 19, 2026 (PM slot)', '2026-01-16 16:19:16', 'Resident', 7, NULL, 1),
(79, 64, 'New appointment booked by Arjohn Verastigue for January 19, 2026 (PM slot)', '2026-01-16 16:19:16', 'Resident', 7, NULL, 1),
(80, 64, 'New appointment booked by Arjohn Verastigue for January 19, 2026 (PM slot)', '2026-01-16 16:19:16', 'Personnel', NULL, 37, 1),
(81, 65, 'Arjohn Verastigue, you have successfully booked an appointment for January 19, 2026 (PM slot)', '2026-01-16 16:37:55', 'Resident', 7, NULL, 1),
(82, 65, 'New appointment booked by Arjohn Verastigue for January 19, 2026 (PM slot)', '2026-01-16 16:37:55', 'Resident', 7, NULL, 1),
(83, 65, 'New appointment booked by Arjohn Verastigue for January 19, 2026 (PM slot)', '2026-01-16 16:37:55', 'Personnel', NULL, 37, 1),
(84, 66, 'Arjohn Verastigue, you have successfully booked an appointment for January 19, 2026 (AM slot)', '2026-01-17 08:46:25', 'Resident', 7, NULL, 1),
(85, 66, 'New appointment booked by Arjohn Verastigue for January 19, 2026 (AM slot)', '2026-01-17 08:46:25', 'Resident', 7, NULL, 1),
(86, 66, 'New appointment booked by Arjohn Verastigue for January 19, 2026 (AM slot)', '2026-01-17 08:46:25', 'Personnel', NULL, 37, 1),
(87, 66, 'Your appointment on January 19, 2026 (AM slot) has been completed.', '2026-01-17 08:47:39', 'Resident', 7, NULL, 1),
(88, 66, 'You marked the appointment for Arjohn Verastigue as completed.', '2026-01-17 08:47:39', 'Personnel', NULL, 37, 1),
(89, 60, 'Your reschedule request has been rejected. Reason: no', '2026-01-17 09:29:53', 'Resident', 7, NULL, 1),
(90, 60, 'You rejected the reschedule request for Arjohn Verastigue.', '2026-01-17 09:29:53', 'Personnel', NULL, 37, 1),
(91, 60, 'Your reschedule request has been approved. New appointment: January 19, 2026 (AM slot)', '2026-01-17 15:01:25', 'Resident', 7, NULL, 1),
(92, 60, 'You approved the reschedule request for Arjohn Verastigue. New date: January 19, 2026.', '2026-01-17 15:01:25', 'Personnel', NULL, 37, 1),
(93, 57, 'Your reschedule request has been approved. New appointment: January 17, 2026 (AM slot)', '2026-01-17 15:01:29', 'Resident', 7, NULL, 1),
(94, 57, 'You approved the reschedule request for Arjohn Verastigue. New date: January 17, 2026.', '2026-01-17 15:01:29', 'Personnel', NULL, 37, 1),
(95, 58, 'Your reschedule request has been approved. New appointment: January 18, 2026 (PM slot)', '2026-01-17 15:01:34', 'Resident', 7, NULL, 1),
(96, 58, 'You approved the reschedule request for Arjohn Verastigue. New date: January 18, 2026.', '2026-01-17 15:01:34', 'Personnel', NULL, 37, 1),
(97, 59, 'Your reschedule request has been rejected. Reason: Wala ako sa office', '2026-01-17 15:01:49', 'Resident', 7, NULL, 1),
(98, 59, 'You rejected the reschedule request for Arjohn Verastigue.', '2026-01-17 15:01:49', 'Personnel', NULL, 37, 1),
(99, 57, 'Your appointment on January 17, 2026 (AM slot) has been completed.', '2026-01-17 15:02:17', 'Resident', 7, NULL, 1),
(100, 57, 'You marked the appointment for Arjohn Verastigue as completed.', '2026-01-17 15:02:17', 'Personnel', NULL, 37, 1),
(101, 58, 'Your appointment on January 18, 2026 (PM slot) has been completed.', '2026-01-17 15:03:16', 'Resident', 7, NULL, 1),
(102, 58, 'You marked the appointment for Arjohn Verastigue as completed.', '2026-01-17 15:03:16', 'Personnel', NULL, 37, 1),
(103, 63, 'Your appointment on January 19, 2026 (AM slot) has been completed.', '2026-01-17 15:13:08', 'Resident', 7, NULL, 1),
(104, 63, 'You marked the appointment for Arjohn Verastigue as completed.', '2026-01-17 15:13:08', 'Personnel', NULL, 37, 1),
(105, 60, 'Your appointment on January 19, 2026 (AM slot) has been completed.', '2026-01-17 15:13:48', 'Resident', 7, NULL, 1),
(106, 60, 'You marked the appointment for Arjohn Verastigue as completed.', '2026-01-17 15:13:48', 'Personnel', NULL, 37, 1),
(107, 62, 'Your appointment on January 19, 2026 (PM slot) has been completed.', '2026-01-17 15:14:27', 'Resident', 7, NULL, 1),
(108, 62, 'You marked the appointment for Arjohn Verastigue as completed.', '2026-01-17 15:14:27', 'Personnel', NULL, 37, 1),
(109, 59, 'Your appointment for Service 1 has been rescheduled to January 19, 2026 at 9:00 AM.', '2026-01-17 15:14:49', 'Resident', 7, NULL, 1),
(110, 59, 'You rescheduled the appointment for Arjohn Verastigue to January 19, 2026 at 9:00 AM.', '2026-01-17 15:14:49', 'Personnel', NULL, 37, 1),
(111, 59, 'Your appointment on January 19, 2026 (AM slot) has been completed.', '2026-01-17 15:15:00', 'Resident', 7, NULL, 1),
(112, 59, 'You marked the appointment for Arjohn Verastigue as completed.', '2026-01-17 15:15:00', 'Personnel', NULL, 37, 1),
(113, 65, 'Your appointment on January 19, 2026 (PM slot) has been completed.', '2026-01-17 15:16:20', 'Resident', 7, NULL, 1),
(114, 65, 'You marked the appointment for Arjohn Verastigue as completed.', '2026-01-17 15:16:20', 'Personnel', NULL, 37, 1),
(115, 67, 'Rein Latchica, you have successfully booked an appointment for January 20, 2026 (AM slot)', '2026-01-17 16:02:36', 'Resident', 8, NULL, 1),
(116, 67, 'New appointment booked by Rein Latchica for January 20, 2026 (AM slot)', '2026-01-17 16:02:36', 'Resident', 8, NULL, 1),
(117, 67, 'New appointment booked by Rein Latchica for January 20, 2026 (AM slot)', '2026-01-17 16:02:36', 'Personnel', NULL, 37, 1),
(118, 68, 'Rein Latchica, you have successfully booked an appointment for January 21, 2026 (PM slot)', '2026-01-17 16:04:06', 'Resident', 8, NULL, 1),
(119, 68, 'New appointment booked by Rein Latchica for January 21, 2026 (PM slot)', '2026-01-17 16:04:06', 'Resident', 8, NULL, 1),
(120, 68, 'New appointment booked by Rein Latchica for January 21, 2026 (PM slot)', '2026-01-17 16:04:06', 'Personnel', NULL, 37, 1),
(121, 67, 'Your appointment on January 20, 2026 (AM slot) has been completed.', '2026-01-17 16:05:33', 'Resident', 8, NULL, 1),
(122, 67, 'You marked the appointment for Rein Latchica as completed.', '2026-01-17 16:05:33', 'Personnel', NULL, 37, 1),
(123, 69, 'Rein Latchica, you have successfully booked an appointment for January 26, 2026 (PM slot)', '2026-01-17 16:18:38', 'Resident', 8, NULL, 1),
(124, 69, 'New appointment booked by Rein Latchica for January 26, 2026 (PM slot)', '2026-01-17 16:18:38', 'Resident', 8, NULL, 1),
(125, 69, 'New appointment booked by Rein Latchica for January 26, 2026 (PM slot)', '2026-01-17 16:18:38', 'Personnel', NULL, 37, 1),
(126, 68, 'Your appointment on January 21, 2026 (PM slot) has been completed.', '2026-01-17 16:40:31', 'Resident', 8, NULL, 1),
(127, 68, 'You marked the appointment for Rein Latchica as completed.', '2026-01-17 16:40:31', 'Personnel', NULL, 37, 1),
(128, 69, 'Your appointment for Service 2 has been rescheduled to January 20, 2026 at 2:00 PM.', '2026-01-17 16:41:03', 'Resident', 8, NULL, 1),
(129, 69, 'You rescheduled the appointment for Rein Latchica to January 20, 2026 at 2:00 PM.', '2026-01-17 16:41:03', 'Personnel', NULL, 37, 1),
(130, 70, 'Jayvee Crujido, you have successfully booked an appointment for January 19, 2026 (PM slot)', '2026-01-19 05:27:19', 'Resident', 7, NULL, 1),
(131, 70, 'New appointment booked by Jayvee Crujido for January 19, 2026 (PM slot)', '2026-01-19 05:27:19', 'Resident', 7, NULL, 1),
(132, 70, 'New appointment booked by Jayvee Crujido for January 19, 2026 (PM slot)', '2026-01-19 05:27:19', 'Personnel', NULL, 48, 1),
(133, 70, 'New appointment booked by Jayvee Crujido for January 19, 2026 (PM slot)', '2026-01-19 05:27:19', 'Personnel', NULL, 37, 1),
(134, 70, 'Your appointment on January 19, 2026 (PM slot) has been completed.', '2026-01-19 05:41:53', 'Resident', 7, NULL, 1),
(135, 70, 'You marked the appointment for Jayvee Crujido as completed.', '2026-01-19 05:41:53', 'Personnel', NULL, 37, 1),
(136, 71, 'Jayvee Crujido, you have successfully booked an appointment for January 20, 2026 (PM slot)', '2026-01-19 05:44:16', 'Resident', 7, NULL, 1),
(137, 71, 'New appointment booked by Jayvee Crujido for January 20, 2026 (PM slot)', '2026-01-19 05:44:16', 'Resident', 7, NULL, 1),
(138, 71, 'New appointment booked by Jayvee Crujido for January 20, 2026 (PM slot)', '2026-01-19 05:44:16', 'Personnel', NULL, 48, 1),
(139, 71, 'New appointment booked by Jayvee Crujido for January 20, 2026 (PM slot)', '2026-01-19 05:44:16', 'Personnel', NULL, 37, 1),
(140, 71, 'Your appointment for Service 1 has been rescheduled to January 21, 2026 at 9:00 AM.', '2026-01-19 05:44:52', 'Resident', 7, NULL, 1),
(141, 71, 'You rescheduled the appointment for Jayvee Crujido to January 21, 2026 at 9:00 AM.', '2026-01-19 05:44:52', 'Personnel', NULL, 37, 1),
(142, 72, 'Jake Vargas, you have successfully booked an appointment for April 27, 2026 (AM slot)', '2026-04-26 11:02:02', 'Resident', 4, NULL, 0),
(143, 72, 'New appointment booked by Jake Vargas for April 27, 2026 (AM slot)', '2026-04-26 11:02:02', 'Resident', 4, NULL, 0),
(144, 72, 'New appointment booked by Jake Vargas for April 27, 2026 (AM slot)', '2026-04-26 11:02:02', 'Personnel', NULL, 49, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reschedule_requests`
--

CREATE TABLE `reschedule_requests` (
  `id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `resident_id` int(11) NOT NULL,
  `old_scheduled_for` datetime NOT NULL,
  `requested_schedule` datetime NOT NULL,
  `reason` text NOT NULL,
  `status` enum('Pending','Approved','Rejected') DEFAULT 'Pending',
  `reviewed_by_personnel_id` int(11) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `rejection_reason` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reschedule_requests`
--

INSERT INTO `reschedule_requests` (`id`, `appointment_id`, `resident_id`, `old_scheduled_for`, `requested_schedule`, `reason`, `status`, `reviewed_by_personnel_id`, `reviewed_at`, `rejection_reason`, `created_at`) VALUES
(1, 28, 4, '2025-12-31 09:00:00', '2026-01-09 21:00:00', 'jjegergergergergergergergeeger', 'Approved', NULL, '2026-01-03 17:36:56', NULL, '2026-01-03 09:09:14'),
(2, 44, 4, '2025-12-31 09:00:00', '2026-01-07 17:19:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'Approved', NULL, '2026-01-03 17:37:23', NULL, '2026-01-03 09:19:24'),
(3, 39, 4, '2025-12-30 09:00:00', '2026-01-17 06:45:00', 'sdfdsfdsfvgdsdgsdgASDASDASD', 'Approved', NULL, '2026-01-03 17:44:46', NULL, '2026-01-03 09:44:30'),
(4, 32, 4, '2025-12-26 14:00:00', '2026-01-04 20:34:00', 'asdasdasdasddasdasdsadasdas', 'Approved', NULL, '2026-01-03 19:03:12', NULL, '2026-01-03 11:02:54'),
(5, 33, 4, '2025-12-26 14:00:00', '2026-01-05 10:08:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'Approved', NULL, '2026-01-04 10:09:17', NULL, '2026-01-04 02:08:59'),
(6, 35, 4, '2025-12-26 14:00:00', '2026-01-05 10:12:00', 'afawfawfwfwqfqwfwqqqwfwqf', 'Rejected', NULL, '2026-01-04 10:13:30', 'limited slot', '2026-01-04 02:12:59'),
(7, 35, 4, '2025-12-26 14:00:00', '2026-01-05 10:40:00', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 'Rejected', NULL, '2026-01-04 10:41:35', 'N/A', '2026-01-04 02:40:41'),
(8, 35, 4, '2025-12-26 14:00:00', '2026-01-05 10:57:00', 'DASDASSSSSSSSSSSSSSSSSSSSSSSSS', 'Rejected', NULL, '2026-01-04 10:57:31', '..', '2026-01-04 02:57:18'),
(9, 35, 4, '2025-12-26 14:00:00', '2026-01-05 11:43:00', 'dasdsadasdsadasdsadasdsa', 'Rejected', NULL, '2026-01-04 11:43:31', 'sf', '2026-01-04 03:43:19'),
(10, 35, 4, '2025-12-26 14:00:00', '2026-01-05 11:54:00', 'adsadsadasdasdsadasdasdasdasda', 'Rejected', NULL, '2026-01-04 11:54:17', 'fsas', '2026-01-04 03:53:56'),
(11, 35, 4, '2025-12-26 14:00:00', '2026-01-05 12:02:00', 'sfasfsaffafasfasfaasdasda', 'Approved', NULL, '2026-01-04 12:02:22', NULL, '2026-01-04 04:02:11'),
(12, 41, 4, '2025-12-26 09:00:00', '2026-01-05 12:10:00', 'asdadaaasdsaddsadasdas', 'Rejected', NULL, '2026-01-04 12:10:41', 'asdas', '2026-01-04 04:10:33'),
(13, 41, 4, '2025-12-26 09:00:00', '2026-01-05 02:26:00', 'dffbfdbdfbdfbdfbdfbdb', 'Rejected', NULL, '2026-01-03 22:27:29', 'aa', '2026-01-04 06:27:01'),
(14, 28, 4, '2026-01-05 21:00:00', '2026-01-08 11:48:00', 'mmmmmmmmmmmmmmmmmmmmmmmmm', 'Rejected', NULL, '2026-01-12 05:39:05', 'Demo', '2026-01-07 03:48:21'),
(15, 49, 4, '2026-01-07 09:00:00', '2026-01-09 14:17:00', 'sfsft', 'Rejected', NULL, '2026-01-11 21:26:27', 'demo', '2026-01-08 03:18:31'),
(16, 31, 4, '2026-01-09 14:00:00', '2026-01-15 21:32:00', 'Demoooo', 'Approved', NULL, '2026-01-12 05:38:58', NULL, '2026-01-12 13:32:56'),
(17, 58, 7, '2026-01-14 09:00:00', '2026-01-18 16:36:00', 'ddddddddd', 'Approved', 37, '2026-01-17 07:01:34', NULL, '2026-01-15 08:36:41'),
(18, 59, 7, '2026-01-15 09:00:00', '2026-01-17 21:21:00', 'Demooo', 'Rejected', 37, '2026-01-17 07:01:49', 'Wala ako sa office', '2026-01-16 02:21:57'),
(19, 57, 7, '2026-01-15 14:00:00', '2026-01-17 11:23:00', 'Demooo', 'Approved', 37, '2026-01-17 07:01:29', NULL, '2026-01-16 16:22:47'),
(20, 60, 7, '2026-01-15 14:00:00', '2026-01-17 11:41:00', 'Demooo', 'Rejected', 37, '2026-01-17 01:29:53', 'no', '2026-01-16 16:39:24'),
(21, 60, 7, '2026-01-15 14:00:00', '2026-01-19 09:30:00', 'Urgent Emergency', 'Approved', 37, '2026-01-17 07:01:25', NULL, '2026-01-17 09:32:23');

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

CREATE TABLE `residents` (
  `id` int(11) NOT NULL,
  `auth_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `birthday` date NOT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` enum('Male','Female') NOT NULL,
  `civil_status` enum('Single','Married','Separated','Widowed','Divorced','Annulled','Widower','Single Parent') NOT NULL,
  `valid_id_type` varchar(255) NOT NULL,
  `id_front_image` varchar(255) NOT NULL,
  `id_back_image` varchar(255) NOT NULL,
  `selfie_with_id_image` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `status` enum('Pending','Approved','Rejected') NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `residents`
--

INSERT INTO `residents` (`id`, `auth_id`, `first_name`, `middle_name`, `last_name`, `address`, `birthday`, `age`, `sex`, `civil_status`, `valid_id_type`, `id_front_image`, `id_back_image`, `selfie_with_id_image`, `phone_number`, `status`, `created_at`, `updated_at`) VALUES
(4, 26, 'Jake', '', 'Vargas', '123, Almacen, 045649000, 045600000', '2002-12-16', 22, 'Male', 'Single', 'National ID (Card type)', 'uploads/693d1ba00aa14_front_appointment_slip_APPT-GEN-20251213-ADAE60.png', 'uploads/693d1ba00aa1c_back_appointment_slip_APPT-GEN-20251213-ADAE60.png', 'uploads/693d1ba00aa1d_selfie_thinking-guy-meme-face-vector-11495678.avif', '+639876432111', 'Pending', '2025-12-13 07:54:08', '2026-01-06 12:30:53'),
(6, 44, 'Vernalyn', 'Rosana', 'Tiama', 'R Vargas cor T Valerio, R. Lapu-lapu (Pob.), Unisan, Quezon', '1977-01-28', 48, 'Female', 'Single', 'PH National ID', 'uploads/resident_6_front.jpg', '', 'uploads/resident_6_selfie.jpg', '+639207831212', 'Pending', '2026-01-12 07:11:58', '2026-01-12 07:11:58'),
(7, 45, 'Jayvee', 'Crujido', 'Crujido', '', '2002-12-17', 23, 'Male', 'Single', 'PH National ID', 'uploads/resident_7_front.jpg', '', 'uploads/resident_7_selfie.jpg', '+639664318130', 'Pending', '2026-01-12 13:11:00', '2026-01-19 05:25:43'),
(8, 56, 'Rein', 'Factor', 'Latchica', 'Kalilayan Ibaba, Kalilayan Ibaba, Unisan, Quezon', '2003-01-14', 23, 'Female', 'Single', 'PH National ID', 'uploads/resident_8_front.jpg', '', 'uploads/resident_8_selfie.jpg', '+639464739613', 'Pending', '2026-01-17 16:01:47', '2026-01-17 16:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `service_requirements`
--

CREATE TABLE `service_requirements` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `requirement` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_requirements`
--

INSERT INTO `service_requirements` (`id`, `service_id`, `requirement`, `created_at`) VALUES
(191, 27, 'Cedula', '2026-01-04 11:30:26'),
(192, 27, 'Brgy. Clearance', '2026-01-04 11:30:26'),
(193, 27, 'Police Clearance', '2026-01-04 11:30:26'),
(194, 27, 'Official Receipt (OR)', '2026-01-04 11:30:26'),
(195, 28, 'Proceed to Treasury Office', '2026-01-04 11:30:26'),
(196, 29, 'Official Receipt (OR) / Certificate of Registration (CR)', '2026-01-04 11:30:26'),
(197, 29, 'Certification from PNP', '2026-01-04 11:30:26'),
(198, 29, 'Membership Data', '2026-01-04 11:30:26'),
(199, 29, 'Cedula', '2026-01-04 11:30:26'),
(200, 30, 'Personal Information and Purpose Only', '2026-01-04 11:30:26'),
(351, 51, 'Client’s Request Letter', '2026-01-10 08:28:36'),
(352, 51, 'Barangay Captain’s Certificate of No Objection', '2026-01-10 08:28:36'),
(353, 51, 'Photocopy of Land Title/Tax Declaration', '2026-01-10 08:28:36'),
(354, 51, 'Photograph of Subject Trees', '2026-01-10 08:28:36'),
(355, 52, 'Client’s Request Letter', '2026-01-10 08:28:36'),
(356, 52, 'Photo documentation of the activity', '2026-01-10 08:28:36'),
(357, 53, 'Client’s Request Letter', '2026-01-10 08:28:36'),
(358, 53, 'Photocopy ng Land Title/ Tax Declaration', '2026-01-10 08:28:36'),
(359, 53, 'Photo documentation of the activity', '2026-01-10 08:28:36'),
(360, 54, 'Client’s Request Letter', '2026-01-10 08:28:36'),
(361, 55, 'Barangay Clearance/Permit', '2026-01-10 08:28:36'),
(362, 55, 'CNC/ECC', '2026-01-10 08:28:36'),
(363, 55, 'Discharge Permit', '2026-01-10 08:28:36'),
(364, 55, 'Permit to Operate', '2026-01-10 08:28:36'),
(365, 56, 'Letter of complaint (if available)', '2026-01-10 08:28:36'),
(366, 56, 'Photo/Video evidences or any other documents that could support the complaint', '2026-01-10 08:28:36'),
(625, 46, 'Five (5) copies of duly accomplished Application Forms', '2026-01-10 13:12:51'),
(626, 46, 'Five (5) sets of Plans duly signed and sealed by Licensed Professional Practitioner', '2026-01-10 13:12:51'),
(627, 46, 'Five (5) copies of Bill of Materials, Build-ing Specification and Structural Analysis prepared and duly signed by License Professional Practitioner', '2026-01-10 13:12:51'),
(628, 46, 'Two (2) copies of Soil Analysis (For 3-storey building and above) duly signed and sealed by a Licensed Structural Engineer', '2026-01-10 13:12:51'),
(629, 46, 'Photocopy of PRC ID and PTR of Li-censed Professional Practitioner', '2026-01-10 13:12:51'),
(630, 46, 'Two (2) photocopies of Certified True Copy of Title/Deed of Sale/Contract Lease/Consent of Lot Owner', '2026-01-10 13:12:51'),
(631, 46, 'Certificate of Safety and Health Program (other requirements)', '2026-01-10 13:12:51'),
(632, 46, 'Barangay Clearance', '2026-01-10 13:12:51'),
(633, 46, 'Zoning and Locational Clearance', '2026-01-10 13:12:51'),
(634, 46, 'Fire Safety Clearance', '2026-01-10 13:12:51'),
(635, 46, 'ECC/CNC (if applicable)', '2026-01-10 13:12:51'),
(636, 47, 'Service Requirements and Installation Report Form (SRIR) duly signed and sealed by Professional Electrical Engineer/Registered Master Electrician', '2026-01-10 13:12:51'),
(637, 47, 'Electrical Permit Form duly signed and sealed by Professional Electrical Engineer and Registered Master Electrician', '2026-01-10 13:12:51'),
(638, 47, 'Certificate of Final Inspection/Completion duly signed and sealed by Professional Electrical Engineer and Registered Master Electrician', '2026-01-10 13:12:51'),
(639, 47, 'Schedule of Loads duly signed and sealed by Professional Electrical Engineer', '2026-01-10 13:12:51'),
(640, 47, 'Certificate of Zoning Clearance', '2026-01-10 13:12:51'),
(641, 47, 'Final Fire Safety Inspection Report', '2026-01-10 13:12:51'),
(642, 47, 'Picture of the building', '2026-01-10 13:12:51'),
(643, 48, 'Duly accomplished Temporary Service Connection Form with sign and sealed of Pro-fessional Electrical Engineer/Registered Master Electrician', '2026-01-10 13:12:51'),
(644, 49, 'Notarize Application Form signed and sealed by Licensed Architect or Civil Engineer', '2026-01-10 13:12:51'),
(645, 49, 'Picture of the building', '2026-01-10 13:12:51'),
(646, 50, 'Duly accomplished Certificate of Completion signed and sealed by the In Charge of the Construction', '2026-01-10 13:12:51'),
(647, 50, 'Final Fire Safety Inspection Report', '2026-01-10 13:12:51'),
(648, 1, 'ORIGINAL MEDICAL CERTIFICATE (HINDI LALAMPAS SA 3 BUWAN KUNG OUT-PATIENT)', '2026-01-10 13:22:01'),
(649, 1, 'ORIGINAL MEDICAL ABSTRACT (HINDI LALAMPAS SA 3 BUWAN KUNG NA-CONFINE SA OSPITAL)', '2026-01-10 13:22:01'),
(650, 1, 'ORIGINAL NA HOSPITAL BILL NA MAY PIRMA NG BILLING CLERK O STAFF', '2026-01-10 13:22:01'),
(651, 1, 'ORIGINAL NA RESETA NG GAMOT (HINDI LALAMPAS SA 3 BUWAN)', '2026-01-10 13:22:01'),
(652, 1, 'SERTIPIKO NG INDIGENCY MULA SA BARANGAY', '2026-01-10 13:22:01'),
(653, 1, 'PHOTOCOPY NG KAHIT ANONG VALID ID NG MAG-AASIKASO', '2026-01-10 13:22:01'),
(654, 26, 'DEATH CERTIFICATE (HINDI LALAMPAS SA 3 BUWAN)', '2026-01-10 13:22:01'),
(655, 26, 'SERTIPIKO NG INDIGENCY MULA SA BARANGAY', '2026-01-10 13:22:01'),
(656, 26, 'PHOTOCOPY NG KAHIT ANONG VALID ID', '2026-01-10 13:22:01'),
(657, 26, 'KONTRATA MULA SA FUNERAL SERVICES', '2026-01-10 13:22:01'),
(658, 36, 'BARANGAY CERTIFICATE O PHOTOCOPY NG KAHIT ANONG VALID ID NG HUMIHINGI NG TULONG', '2026-01-10 13:22:01'),
(659, 36, 'POLICE BLOTTER (PARA SA MGA NABIKTIMA NG SNATCHING, ILLEGAL RECRUITMENT, ATBP.)', '2026-01-10 13:22:01'),
(660, 36, 'REFERRAL LETTER (KUNG MAYROON)', '2026-01-10 13:22:01'),
(661, 37, 'BARANGAY CERTIFICATE O PHOTOCOPY NG KAHIT ANONG VALID ID NG HUMIHINGI NG TULONG', '2026-01-10 13:22:01'),
(662, 37, 'MGA PATUNAY O EBIDENSYA (HALIMBAWA: MGA LARAWAN)', '2026-01-10 13:22:01'),
(663, 37, 'POLICE CLEARANCE', '2026-01-10 13:22:01'),
(664, 38, 'LIHAM NA HUMIHINGI NG TULONG', '2026-01-10 13:22:01'),
(665, 38, 'SERTIPIKO NG INDIGENCY MULA SA BARANGAY', '2026-01-10 13:22:01'),
(666, 38, 'PHOTOCOPY NG KAHIT ANONG VALID ID', '2026-01-10 13:22:01'),
(716, 63, 'Updated RPT Payment (Municipal Treasurer\'s Office', '2026-01-10 13:51:39'),
(717, 63, 'Special Power of Attorney (SPA)/Authorization Letter (if applicant is not the owner)', '2026-01-10 13:51:39'),
(718, 63, 'Photocopy of any valid identification Card (ID) of the applicant and the owner', '2026-01-10 13:51:39'),
(719, 64, 'Payment of Certification Fee', '2026-01-10 13:51:39'),
(720, 64, '(Official Receipt issued by the Municipal Treasurer)', '2026-01-10 13:51:39'),
(721, 65, 'Payment of Certification Fee', '2026-01-10 13:51:39'),
(722, 65, '(Official Receipt issued by the Municipal Treasurer)', '2026-01-10 13:51:39'),
(723, 66, 'Payment of Certification Fee', '2026-01-10 13:51:39'),
(724, 66, 'Official Receipt issued by the Municipal Treasurer', '2026-01-10 13:51:39'),
(725, 57, 'Photocopy of the latest TCT (valid in 6 months upon RD release) or Certified True Copy of Title from the Registry of Deeds if the title is released/issued more than 6 months.', '2026-01-10 13:51:41'),
(726, 57, 'Copy of Notarized Conveyance duly registered, Deed of Sale, Deed of Donation, Extra Judicial Settlement of Estate with Quitclaim Partition/Subdivision/Adjudication/Waiver, Deed of Assignment, etc.', '2026-01-10 13:51:41'),
(727, 57, 'Copy of BIR Certificate Authorizing Registration (CAR)', '2026-01-10 13:51:41'),
(728, 57, 'Photocopy of Transfer Tax Receipt from the Municipal/Provincial Treasury Department being paid at Municipal Treasurer\'s Office of Provincial Treasurer\'s Office for all the transfer of ownership. (if applicable)', '2026-01-10 13:51:41'),
(729, 57, 'Photocopy of Real Property Tax Certificate of Payment (Tax Clearance) or Photocopy of Official Receipt of updated payment of Real Property', '2026-01-10 13:51:41'),
(730, 57, 'A request letter from the owner or whoever may have interest on the property', '2026-01-10 13:51:41'),
(731, 57, 'Cadastral Plan or Approved/Sketch Plan duly signed by Geodetic Engineer with Certification from DENR/CENRO of A&D (Alienable and Disposable Land) (if lot undergone segregation/consolidation)', '2026-01-10 13:51:41'),
(732, 57, 'Certified copy of court decisions, finalities, adjudication, etc. are required if transaction clearly express land ownership/registry disputes', '2026-01-10 13:51:41'),
(733, 57, 'Photocopy of any valid Identification Card (ID) of the applicant and/or owner', '2026-01-10 13:51:41'),
(734, 57, 'Special Power of Attorney (SPA)/Authorization Letter (if applicant is not the owner)', '2026-01-10 13:51:41'),
(735, 58, 'Certified Copy of Notarized Affidavit of Land of Land Ownership & Possession', '2026-01-10 13:51:41'),
(736, 58, 'A request letter from the owner or whoever may have interest on the property', '2026-01-10 13:51:41'),
(737, 58, 'Certified from DENR (List of Claimant/s as per Cadastre)', '2026-01-10 13:51:41'),
(738, 58, 'Copy of Notarized Affidavit of Adjoining Lot Owner.', '2026-01-10 13:51:41'),
(739, 58, 'Barangay Certificate of Land Ownership (Certification from the barangay captain that the declarant is the present possessor and occupant of the land)', '2026-01-10 13:51:41'),
(740, 58, 'Cadastral Plan or Approved/Sketch Plan duly signed by Geodetic Engineer with Certification from DENR/CENRO of A&D (Alienable and Disposable Land)', '2026-01-10 13:51:41'),
(741, 58, 'Certified copy of court decisions, finalities, adjudication, etc. are required if transaction clearly express land ownership/registry disputes', '2026-01-10 13:51:41'),
(742, 58, 'Photocopy of any valid Identification Card (ID) of the applicant and/or owner', '2026-01-10 13:51:41'),
(743, 58, 'Special Power of Attorney (SPA)/Authorization Letter (if applicant is not the owner)', '2026-01-10 13:51:41'),
(744, 59, 'Photocopy of the latest TCT (valid in six months upon RD release) Certified True Copy of Title from the Registry of Deeds if the title is released/issued more that 6 months and above.', '2026-01-10 13:51:41'),
(745, 59, 'Copy of Notarized Conveyance duly registered, Deed of Sale, Deed of Donation, Extra Judicial Settlement of Estate with Quitclaim Partition/Subdivision/Adjudication/Waiver, Deed of Assignment, etc.', '2026-01-10 13:51:41'),
(746, 59, 'Copy of BIR Certificate Authorizing Registration (CAR)', '2026-01-10 13:51:41'),
(747, 59, 'Photocopy of Transfer TaxReceipt from the Municipal/Provincial Treasury Department being paid at Municipal Treasurer\'s Office of Provincial Treasurer\'s Office for all the transfer of ownership. (if applicable)', '2026-01-10 13:51:41'),
(748, 59, 'Photocopy of Real Property Tax Certificate of Payment (Tax Clearance) or Photocopy of Official Receipt of updated payment of Real Property Tax.', '2026-01-10 13:51:41'),
(749, 59, 'Photocopy of any valid identification Card (ID) of the applicant and/or owner', '2026-01-10 13:51:41'),
(750, 59, 'Special Power of Attorney (SPA)/Authorization Letter (if applicant is not the owner)', '2026-01-10 13:51:41'),
(751, 59, '* A duly Approved Plan is strictly required for all transaction involving Subdivision, Consolidation, Segregation, Extra Judicial settlement and partition of properties', '2026-01-10 13:51:41'),
(752, 59, '* Certified Copy of court decisions, finalities, adjudication, etc. are rquired if transaction clearly express land ownership/registry disputes.', '2026-01-10 13:51:41'),
(753, 60, 'Copy of Notarized Conveyance duly registered, Deed of Sale, Deed of Donation, Extra Judicial Settlement of Estate with Quitclaim Partition/Subdivision/Adjudication/Waiver, Deed of Assignment, etc.', '2026-01-10 13:51:41'),
(754, 60, 'Copy of BIR Certificate Authorizing Registration (CAR)', '2026-01-10 13:51:41'),
(755, 60, 'Photocopy of Transfer Tax, from the Municipal/Provincial Treasury Department being paid at Municipal Treasurer\'s Office of Provincial Treasurer\'s Office for all the transfer of ownership.', '2026-01-10 13:51:41'),
(756, 60, 'Photocopy of Real Property Tax Certificate of Payment (Tax Clearance) or Photocopy of Official Receipt of updated payment of Real Property', '2026-01-10 13:51:41'),
(757, 60, 'Photocopy of any valid Identification Card (ID) of the applicant and/or', '2026-01-10 13:51:41'),
(758, 60, 'Special Power of Attorney (SPA)/Authorization Letter (if applicant is not the owner)', '2026-01-10 13:51:41'),
(759, 60, '* A duly Approved Plan is strictly required for all transaction involving Subdivision, Consolidation, Segregation, Extra Judicial settlement and partition of properties', '2026-01-10 13:51:41'),
(760, 60, '* Certified Copy of court decisions, finalities, adjudication, etc. are required if transaction clearly express land ownership/registry disputes', '2026-01-10 13:51:41'),
(761, 61, 'Copy of Approved Building Floor Plan', '2026-01-10 13:51:41'),
(762, 61, 'Photocopy of Building Permit, Certificate of Occupancy & Certificate of Completion', '2026-01-10 13:51:41'),
(763, 61, 'Sworn Statement of the true and fair Market Value of property.', '2026-01-10 13:51:41'),
(764, 61, 'Photocopy of Official Receipt of updated payment of Real Property Tax (Land)', '2026-01-10 13:51:41'),
(765, 61, 'Photocopy of any valid Identification Card (ID) of the applicant and/or owner', '2026-01-10 13:51:41'),
(766, 61, 'Special Power of Attorney (SPA)/Authorization Letter (if applicant is not the owner)', '2026-01-10 13:51:41'),
(767, 62, 'Approved Building Floor Plan;', '2026-01-10 13:51:41'),
(768, 62, 'Photocopy of Building Permit, Certificate of Occupancy & Certificate of Completion;', '2026-01-10 13:51:41'),
(769, 62, 'Photocopy of Condominium Certificate of Title (CCT);', '2026-01-10 13:51:41'),
(770, 62, 'Tabulation of Saleable and Non-Saleable Areas;', '2026-01-10 13:51:41'),
(771, 62, 'Photocopy of Master Deed of Condominium;', '2026-01-10 13:51:41'),
(772, 62, 'List of Capital Equipment and', '2026-01-10 13:51:41'),
(773, 62, 'Photocopy of registration/declaration fee receipt.', '2026-01-10 13:51:41'),
(774, 67, 'Updated RPT Payment (Municipal Treasurer\'s Office', '2026-01-10 13:51:41'),
(775, 67, 'Special Power of Attorney (SPA)/Authorization Letter (if applicant is not the owner)', '2026-01-10 13:51:41'),
(776, 67, 'Photocopy of any valid identification Card (ID) of the applicant and the owner', '2026-01-10 13:51:41'),
(777, 68, 'Payment of Certification Fee', '2026-01-10 13:51:41'),
(778, 68, '(Official Receipt issued by the Municipal Treasurer)', '2026-01-10 13:51:41'),
(779, 69, 'Payment of Certification Fee', '2026-01-10 13:51:41'),
(780, 69, '(Official Receipt issued by the Municipal Treasurer)', '2026-01-10 13:51:41'),
(781, 70, 'Payment of Certification Fee', '2026-01-10 13:51:41'),
(782, 70, 'Official Receipt issued by the Municipal Treasurer', '2026-01-10 13:51:41'),
(803, 75, 'Requirement 1', '2026-01-12 04:14:26'),
(804, 75, 'Requirement 2', '2026-01-12 04:14:26'),
(805, 76, 'Requirement 1', '2026-01-12 04:14:26'),
(806, 76, 'Requirement 2', '2026-01-12 04:14:26'),
(807, 77, 'Accomplished application form for accreditation', '2026-01-14 13:51:21'),
(808, 77, 'Certificate of Registration', '2026-01-14 13:51:21'),
(809, 77, 'List of current officers and members', '2026-01-14 13:51:21'),
(810, 77, 'Profile indicating the purpose and objective of the organization; and', '2026-01-14 13:51:21'),
(811, 77, 'Copy of minutes of the meeting of the organization', '2026-01-14 13:51:21'),
(812, 77, 'Recognition from the barangay', '2026-01-14 13:51:21'),
(813, 77, 'Note: Reaccreditation of organization/association should be done every team', '2026-01-14 13:51:21'),
(814, 78, 'Death Certificate', '2026-01-14 13:51:21'),
(815, 78, 'Burial Place', '2026-01-14 13:51:21'),
(816, 78, 'Re-opening permit to RHU (if existing grave)', '2026-01-14 13:51:21'),
(817, 79, 'Death Certificate', '2026-01-14 13:51:21'),
(818, 79, 'Registered Burial Permit', '2026-01-14 13:51:21'),
(819, 79, 'Transfer Permit', '2026-01-14 13:51:21'),
(820, 80, 'Fill-up the Document Request form available at the office', '2026-01-14 13:51:21'),
(821, 81, 'Letter request specifying the document needed', '2026-01-14 13:51:21'),
(822, 82, 'Photo copy of Valid ID', '2026-01-16 06:59:14'),
(823, 82, 'Picture Proof', '2026-01-16 06:59:14'),
(824, 83, 'Photo copy of Valid ID', '2026-01-16 06:59:14'),
(825, 83, '2x2 Picture', '2026-01-16 06:59:14'),
(826, 84, 'Photo copy of Valid ID', '2026-01-16 06:59:14'),
(827, 84, '2x2 Picture', '2026-01-16 06:59:14'),
(828, 85, 'In-Person Interview', '2026-01-16 06:59:14'),
(829, 85, 'Fill Up Forms', '2026-01-16 06:59:14'),
(921, 86, 'Affidavit (Annex C) (from MPDC) duly accomplished and notarized.', '2026-01-16 07:27:07'),
(922, 86, 'Five (5) sets of Building Plan', '2026-01-16 07:27:07'),
(923, 86, 'Bill of Materials/Project Dev\'t Cost (approved by the owner & signed and sealed by Engineer/Architect', '2026-01-16 07:27:07'),
(924, 86, 'Specification', '2026-01-16 07:27:07'),
(925, 86, 'Location Plan/Vicinity Map signed and sealed by Geodetic Engineer', '2026-01-16 07:27:07'),
(926, 86, 'Special Power of Attorney (SPA) of land owner\'s authorized representative, if any', '2026-01-16 07:27:07'),
(927, 86, 'Locational Clearance Issuance Fee (depends on the total project costs and status of the Project)', '2026-01-16 07:27:07'),
(928, 87, 'Affidavit (Annex C) (from MPDC) duly accomplished and notarized.', '2026-01-16 07:27:07'),
(929, 87, 'Five (5) sets of Building Plan', '2026-01-16 07:27:07'),
(930, 87, 'Bill of Materials/Project Dev\'t Cost (approved by the owner & signed and sealed by Engineer/Architect', '2026-01-16 07:27:07'),
(931, 87, 'Specification', '2026-01-16 07:27:07'),
(932, 87, 'Location Plan/Vicinity Map signed and sealed by Geodetic Engineer', '2026-01-16 07:27:07'),
(933, 87, 'Special Power of Attorney (SPA) of land owner\'s authorized representative, if any', '2026-01-16 07:27:07'),
(934, 87, 'Locational Clearance Issuance Fee (depends on the total project costs and status of the Project)', '2026-01-16 07:27:07'),
(935, 88, 'Affidavit (Annex C) (from MPDC) duly accomplished and notarized.', '2026-01-16 07:27:07'),
(936, 88, 'Five (5) sets of Building Plan', '2026-01-16 07:27:07'),
(937, 88, 'Location Plan/Vicinity Map signed and sealed by Geodetic Engineer', '2026-01-16 07:27:07'),
(938, 88, 'Special Power of Attorney (SPA) of land owner\'s authorized representative, if any', '2026-01-16 07:27:07'),
(939, 88, 'Locational Clearance Issuance Fee (depends on the total project costs and status of the Project)', '2026-01-16 07:27:07'),
(940, 88, 'Specification', '2026-01-16 07:27:07'),
(941, 88, 'Bill of Materials/Project Dev\'t Cost (approved by the owner & signed and sealed by Engineer/Architect', '2026-01-16 07:27:07'),
(942, 89, 'Affidavit (Annex C) (from MPDC) duly accomplished and notarized.', '2026-01-16 07:27:07'),
(943, 89, 'Five (5) sets of Building Plan', '2026-01-16 07:27:07'),
(944, 89, 'Location Plan/Vicinity Map signed and sealed by Geodetic Engineer', '2026-01-16 07:27:07'),
(945, 89, 'Special Power of Attorney (SPA) of land owner\'s authorized representative, if any', '2026-01-16 07:27:07'),
(946, 89, 'Locational Clearance Issuance Fee (depends on the total project costs and status of the Project)', '2026-01-16 07:27:07'),
(947, 89, 'Specification', '2026-01-16 07:27:07'),
(948, 89, 'Bill of Materials/Project Dev\'t Cost (approved by the owner & signed and sealed by Engineer/Architect', '2026-01-16 07:27:07'),
(949, 90, 'Affidavit (Annex C) (from MPDC) duly accomplished and notarized.', '2026-01-16 07:27:07'),
(950, 90, 'Five (5) sets of Building Plan', '2026-01-16 07:27:07'),
(951, 90, 'Location Plan/Vicinity Map signed and sealed by Geodetic Engineer', '2026-01-16 07:27:07'),
(952, 90, 'Special Power of Attorney (SPA) of land owner\'s authorized representative, if any', '2026-01-16 07:27:07'),
(953, 90, 'Locational Clearance Issuance Fee (depends on the total project costs and status of the Project)', '2026-01-16 07:27:07'),
(954, 90, 'Specification', '2026-01-16 07:27:07'),
(955, 90, 'Bill of Materials/Project Dev\'t Cost (approved by the owner & signed and sealed by Engineer/Architect', '2026-01-16 07:27:07'),
(956, 91, 'Application Form for Zoning Clearance (from MPDC) duly accomplished and notarized', '2026-01-16 07:27:07'),
(957, 91, 'Photocopy of the Transfer Certificate of Title (TCT) registered in the name of the applicant', '2026-01-16 07:27:07'),
(958, 91, 'Photocopy of the Tax Declaration in the name of the applicant.', '2026-01-16 07:27:07'),
(959, 91, 'Photocopy of Latest Tax Receipts', '2026-01-16 07:27:07'),
(960, 91, 'In case the property is not registered in the name of the applicant,  notarized of:  Deed of Sale, or  Deed of Donation, or  Contract of Lease, or  Authorization to use land or Affidavit of Consent', '2026-01-16 07:27:07'),
(961, 91, 'Barangay Clearance', '2026-01-16 07:27:07'),
(962, 91, 'Zoning Certification Issuance Fee P 216.00', '2026-01-16 07:27:07'),
(963, 92, 'Application Form for Zoning Clearance (from MPDC) duly accomplished and notarized', '2026-01-16 07:27:07'),
(964, 92, 'Photocopy of the Transfer Certificate of Title (TCT) registered in the name of the applicant', '2026-01-16 07:27:07'),
(965, 92, 'Photocopy of the Tax Declaration in the name of the applicant.', '2026-01-16 07:27:07'),
(966, 92, 'Photocopy of Latest Tax Receipts', '2026-01-16 07:27:07'),
(967, 92, 'In case the property is not registered in the name of the applicant,  notarized of:  Deed of Sale, or  Deed of Donation, or  Contract of Lease, or  Authorization to use land or Affidavit of Consent', '2026-01-16 07:27:07'),
(968, 92, 'Barangay Clearance', '2026-01-16 07:27:07'),
(969, 92, 'Zoning Certification Issuance Fee P 216.00', '2026-01-16 07:27:07'),
(970, 93, 'Application Form for Zoning Clearance (from MPDC) duly accomplished and notarized', '2026-01-16 07:27:07'),
(971, 93, 'Photocopy of the Transfer Certificate of Title (TCT) registered in the name of the applicant', '2026-01-16 07:27:07'),
(972, 93, 'Photocopy of the Tax Declaration in the name of the applicant.', '2026-01-16 07:27:07'),
(973, 93, 'Photocopy of Latest Tax Receipts', '2026-01-16 07:27:07'),
(974, 93, 'In case the property is not registered in the name of the applicant,  notarized of:  Deed of Sale, or  Deed of Donation, or  Contract of Lease, or  Authorization to use land or Affidavit of Consent', '2026-01-16 07:27:07'),
(975, 93, 'Barangay Clearance', '2026-01-16 07:27:07'),
(976, 93, 'Zoning Certification Issuance Fee P 216.00', '2026-01-16 07:27:07'),
(977, 94, 'Application Form for Zoning Clearance (from MPDC) duly accomplished and notarized', '2026-01-16 07:27:07'),
(978, 94, 'Photocopy of the Transfer Certificate of Title (TCT) registered in the name of the applicant', '2026-01-16 07:27:07'),
(979, 94, 'Photocopy of the Tax Declaration in the name of the applicant.', '2026-01-16 07:27:07'),
(980, 94, 'Photocopy of Latest Tax Receipts', '2026-01-16 07:27:07'),
(981, 94, 'In case the property is not registered in the name of the applicant,  notarized of:  Deed of Sale, or  Deed of Donation, or  Contract of Lease, or  Authorization to use land or Affidavit of Consent', '2026-01-16 07:27:07'),
(982, 94, 'Barangay Clearance', '2026-01-16 07:27:07'),
(983, 94, 'Zoning Certification Issuance Fee P 216.00', '2026-01-16 07:27:07'),
(984, 95, 'Application Form for Zoning Clearance (from MPDC) duly accomplished and notarized', '2026-01-16 07:27:07'),
(985, 95, 'Photocopy of the Transfer Certificate of Title (TCT) registered in the name of the applicant', '2026-01-16 07:27:07'),
(986, 95, 'Photocopy of the Tax Declaration in the name of the applicant.', '2026-01-16 07:27:07'),
(987, 95, 'Photocopy of Latest Tax Receipts', '2026-01-16 07:27:07'),
(988, 95, 'In case the property is not registered in the name of the applicant,  notarized of:  Deed of Sale, or  Deed of Donation, or  Contract of Lease, or  Authorization to use land or Affidavit of Consent', '2026-01-16 07:27:07'),
(989, 95, 'Barangay Clearance', '2026-01-16 07:27:07'),
(990, 95, 'Zoning Certification Issuance Fee P 216.00', '2026-01-16 07:27:07'),
(991, 96, 'Valid ID', '2026-01-16 07:44:46'),
(992, 96, 'Fill-up office transaction form', '2026-01-16 07:44:46'),
(993, 96, 'Verification of Record', '2026-01-16 07:44:46'),
(994, 96, 'Payment of Certification Fee', '2026-01-16 07:44:46'),
(995, 96, 'Preparation of certified copy of Marriage/Death Certificate', '2026-01-16 07:44:46'),
(996, 97, 'Valid ID', '2026-01-16 07:44:46'),
(997, 97, 'Fill-up office transaction form', '2026-01-16 07:44:46'),
(998, 97, 'Check and verify the accuracy of the information supplied and completeness of the signatories in the Certificate of Live Birth prepared by the attendant at birth', '2026-01-16 07:44:46'),
(999, 97, 'Registration of Certificate of Live Birth', '2026-01-16 07:44:46'),
(1000, 98, 'Valid ID', '2026-01-16 07:44:46'),
(1001, 98, 'Fill-up office transaction form', '2026-01-16 07:44:46'),
(1002, 98, 'Immunization card of the child', '2026-01-16 07:44:46'),
(1003, 98, 'Mother\'s Pre-natal Record', '2026-01-16 07:44:46'),
(1004, 98, 'Barangay Certification', '2026-01-16 07:44:46'),
(1005, 98, 'Negative Certification of birth', '2026-01-16 07:44:46'),
(1006, 98, 'Preparation of Certificate of Live Birth as per informant', '2026-01-16 07:44:46'),
(1007, 98, 'Posting of Notice to the Public', '2026-01-16 07:44:46'),
(1008, 98, 'Payment of processing fee', '2026-01-16 07:44:46'),
(1009, 98, 'Registration of Certificate of Live Birth after 10 days of posting', '2026-01-16 07:44:46'),
(1050, 99, '1.	Barangay Business Clearance', '2026-04-27 09:54:00'),
(1051, 99, '2.	Cedula', '2026-04-27 09:54:00'),
(1052, 99, '3.	Police Clearance', '2026-04-27 09:54:00'),
(1053, 99, '4.	DTI Permit', '2026-04-27 09:54:00'),
(1054, 99, '5.	SEC registration for Corporation', '2026-04-27 09:54:00'),
(1055, 99, '6.	PCA registration for coconut related business', '2026-04-27 09:54:00'),
(1056, 99, '7.	Sanitary Permit', '2026-04-27 09:54:00'),
(1057, 99, '8.	Fire Safety Inspection Certificate', '2026-04-27 09:54:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_id` (`auth_id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaction_id` (`transaction_id`),
  ADD KEY `resident_id` (`resident_id`),
  ADD KEY `personnel_id` (`personnel_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `available_date_id` (`available_date_id`);

--
-- Indexes for table `appointment_feedback`
--
ALTER TABLE `appointment_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `available_dates`
--
ALTER TABLE `available_dates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `commendations`
--
ALTER TABLE `commendations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resident_id` (`resident_id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resident_id` (`resident_id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_fees`
--
ALTER TABLE `department_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `department_services`
--
ALTER TABLE `department_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `lgu_personnel`
--
ALTER TABLE `lgu_personnel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_id` (`auth_id`),
  ADD KEY `fk_created_by_personnel` (`created_by_personnel_id`),
  ADD KEY `idx_department_head` (`department_id`,`is_department_head`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointment_id` (`appointment_id`),
  ADD KEY `resident_id` (`resident_id`),
  ADD KEY `personnel_id` (`personnel_id`),
  ADD KEY `idx_is_read` (`is_read`),
  ADD KEY `idx_recipient_type` (`recipient_type`),
  ADD KEY `idx_personnel_read` (`personnel_id`,`is_read`),
  ADD KEY `idx_resident_read` (`resident_id`,`is_read`);

--
-- Indexes for table `reschedule_requests`
--
ALTER TABLE `reschedule_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointment_id` (`appointment_id`),
  ADD KEY `resident_id` (`resident_id`),
  ADD KEY `reviewed_by_personnel_id` (`reviewed_by_personnel_id`);

--
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_id` (`auth_id`);

--
-- Indexes for table `service_requirements`
--
ALTER TABLE `service_requirements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `appointment_feedback`
--
ALTER TABLE `appointment_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `available_dates`
--
ALTER TABLE `available_dates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `commendations`
--
ALTER TABLE `commendations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `department_fees`
--
ALTER TABLE `department_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `department_services`
--
ALTER TABLE `department_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `lgu_personnel`
--
ALTER TABLE `lgu_personnel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `reschedule_requests`
--
ALTER TABLE `reschedule_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `residents`
--
ALTER TABLE `residents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `service_requirements`
--
ALTER TABLE `service_requirements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1058;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_ibfk_1` FOREIGN KEY (`auth_id`) REFERENCES `auth` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`personnel_id`) REFERENCES `lgu_personnel` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `appointments_ibfk_3` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `appointments_ibfk_4` FOREIGN KEY (`service_id`) REFERENCES `department_services` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `appointments_ibfk_5` FOREIGN KEY (`available_date_id`) REFERENCES `available_dates` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `appointment_feedback`
--
ALTER TABLE `appointment_feedback`
  ADD CONSTRAINT `appointment_feedback_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`);

--
-- Constraints for table `available_dates`
--
ALTER TABLE `available_dates`
  ADD CONSTRAINT `available_dates_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `commendations`
--
ALTER TABLE `commendations`
  ADD CONSTRAINT `commendations_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `commendations_ibfk_2` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `complaints`
--
ALTER TABLE `complaints`
  ADD CONSTRAINT `complaints_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `complaints_ibfk_2` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `department_fees`
--
ALTER TABLE `department_fees`
  ADD CONSTRAINT `department_fees_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `department_services`
--
ALTER TABLE `department_services`
  ADD CONSTRAINT `department_services_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lgu_personnel`
--
ALTER TABLE `lgu_personnel`
  ADD CONSTRAINT `fk_created_by_personnel` FOREIGN KEY (`created_by_personnel_id`) REFERENCES `lgu_personnel` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `lgu_personnel_ibfk_1` FOREIGN KEY (`auth_id`) REFERENCES `auth` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reschedule_requests`
--
ALTER TABLE `reschedule_requests`
  ADD CONSTRAINT `fk_reschedule_appointment` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_reschedule_personnel` FOREIGN KEY (`reviewed_by_personnel_id`) REFERENCES `lgu_personnel` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_reschedule_resident` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `residents`
--
ALTER TABLE `residents`
  ADD CONSTRAINT `residents_ibfk_1` FOREIGN KEY (`auth_id`) REFERENCES `auth` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_requirements`
--
ALTER TABLE `service_requirements`
  ADD CONSTRAINT `service_requirements_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `department_services` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
