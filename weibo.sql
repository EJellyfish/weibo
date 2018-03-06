-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2018-02-28 10:04:13
-- 服务器版本： 5.7.19
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weibo`
--

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2018_02_08_034944_add_is_admin_to_users_table', 1);

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, '小哥就是闷闷闷油瓶', 'xiaogezz@foxmail.com', '$2y$10$TagdZobL0bswLKPf2FvZl.C3uy3yD6zgo5hn4R18okYoqE.vrtOLS', 'N2z5YMDCypAcrDyHhOxt4H6Oo7nJyEw2G0F0F4A0mRAshJQloLKO5rCMET63', '2001-03-12 22:10:01', '2018-02-07 21:03:04', 1),
(4, 'Mrs. Kathlyn Hettinger III', 'sasha.erdman@example.org', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'fpYDX4MnrN', '1987-06-01 21:57:18', '1987-06-01 21:57:18', 0),
(5, 'Lucius Homenick PhD', 'zmoen@example.org', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', '22KQwGJ7eK', '1990-01-03 05:11:46', '1990-01-03 05:11:46', 0),
(6, 'Prof. Marian Ruecker DDS', 'jerde.emmanuelle@example.net', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'Y7AGh4unFP', '1981-04-14 05:28:51', '1981-04-14 05:28:51', 0),
(7, 'Andres Prohaska', 'cronin.sabryna@example.com', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'FUBjg4TYea', '1973-12-05 09:06:08', '1973-12-05 09:06:08', 0),
(8, 'Meda Marvin Jr.', 'mary18@example.net', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'oiFW1cZcgt', '1979-09-13 20:48:44', '1979-09-13 20:48:44', 0),
(9, 'Madyson Kris', 'rosanna.luettgen@example.org', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'P9QqDuhDam', '1999-05-01 07:38:28', '1999-05-01 07:38:28', 0),
(10, 'Dina Gulgowski', 'swaniawski.forrest@example.com', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', '0qbUIvpLvQ', '1986-11-30 11:14:14', '1986-11-30 11:14:14', 0),
(11, 'Mrs. Ona Hoppe DDS', 'kirk.langworth@example.com', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'mTxnLDlkcp', '1982-08-07 16:06:41', '1982-08-07 16:06:41', 0),
(12, 'Prof. Beth Jacobs', 'garnett.larkin@example.org', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'OZPSBoDf72', '1983-10-27 13:07:47', '1983-10-27 13:07:47', 0),
(13, 'Simone Jenkins', 'daniel.rhett@example.org', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'zZOWKCQhZR', '2008-12-16 22:30:46', '2008-12-16 22:30:46', 0),
(14, 'Jordon Stehr', 'van.jones@example.org', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'cqoc1ayAV8', '2003-10-18 15:13:11', '2003-10-18 15:13:11', 0),
(15, 'Dr. Jamaal Mueller', 'casper.nella@example.org', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', '1d3uNY676A', '2003-08-03 13:08:46', '2003-08-03 13:08:46', 0),
(16, 'Catharine Beer', 'obogan@example.net', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', '83hjQ30J9r', '1986-05-17 07:10:32', '1986-05-17 07:10:32', 0),
(17, 'Sadie Ritchie', 'jasper35@example.org', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'lI1jjaXgk2', '1996-02-22 02:57:50', '1996-02-22 02:57:50', 0),
(18, 'Mr. Trenton Kessler', 'avis99@example.com', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', '2i90ALTEYJ', '2016-04-16 04:59:37', '2016-04-16 04:59:37', 0),
(19, 'Leilani Johns Sr.', 'harry.littel@example.com', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'dCr3hxZgd7', '2004-10-19 16:12:44', '2004-10-19 16:12:44', 0),
(20, 'Neva Howe', 'ehodkiewicz@example.com', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'iRvSLOPunj', '2006-07-14 04:48:41', '2006-07-14 04:48:41', 0),
(21, 'Brook Upton', 'oshanahan@example.net', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', '96RicMAMba', '1979-08-20 22:51:29', '1979-08-20 22:51:29', 0),
(22, 'Prof. Keagan Harris', 'edison04@example.org', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'uwHPW6Wh1b', '1993-05-21 14:54:22', '1993-05-21 14:54:22', 0),
(23, 'Adolphus Feest IV', 'utillman@example.org', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'w6KnN5BiCu', '1992-06-15 13:26:30', '1992-06-15 13:26:30', 0),
(24, 'Ms. Kendra Green', 'edare@example.com', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'PtS1XiXbZL', '1993-03-08 23:55:19', '1993-03-08 23:55:19', 0),
(25, 'Angie Rempel', 'gschultz@example.net', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', '6g9HoDFqm7', '1998-01-26 11:46:35', '1998-01-26 11:46:35', 0),
(26, 'Brennon Kunze', 'anabel64@example.com', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'YGhCPDjmck', '1981-05-29 12:28:21', '1981-05-29 12:28:21', 0),
(27, 'Kasey O\'Conner', 'bfriesen@example.com', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', '3XLPb1y5Qu', '2009-03-12 05:57:50', '2009-03-12 05:57:50', 0),
(28, 'Francisca Leannon', 'ddicki@example.com', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'xkZCEXK5lN', '1984-09-23 11:32:50', '1984-09-23 11:32:50', 0),
(29, 'Jacinthe Mills', 'rlind@example.net', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'h3hMeARiSE', '2009-11-20 09:08:20', '2009-11-20 09:08:20', 0),
(30, 'Minnie Howell PhD', 'flittle@example.net', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'hzupaSDLfG', '1996-10-24 08:36:48', '1996-10-24 08:36:48', 0),
(31, 'Elizabeth Boyer', 'alva.mueller@example.org', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'Wyrgtjbh6V', '1998-06-10 02:36:33', '1998-06-10 02:36:33', 0),
(32, 'Barton Hintz MD', 'watson.runolfsson@example.net', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'srHdzoccze', '2005-03-07 21:28:31', '2005-03-07 21:28:31', 0),
(33, 'Jermey Satterfield', 'turcotte.jimmie@example.org', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', '00xvFoppP4', '2015-07-03 03:12:50', '2015-07-03 03:12:50', 0),
(34, 'Prof. Mortimer Daniel', 'baumbach.naomie@example.org', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'o9XwB5brzm', '1999-04-26 18:07:37', '1999-04-26 18:07:37', 0),
(35, 'Triston Konopelski', 'stiedemann.willie@example.net', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', '7tkux4KJFi', '1997-12-27 21:20:48', '1997-12-27 21:20:48', 0),
(36, 'Adah Zieme II', 'bayer.alejandrin@example.com', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'VQ3MQHzUDW', '2006-07-30 14:16:19', '2006-07-30 14:16:19', 0),
(37, 'Mr. Domenic Fay', 'jon13@example.org', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'CnCFrCq2PQ', '2004-10-05 22:40:40', '2004-10-05 22:40:40', 0),
(38, 'Amari Pouros', 'rolfson.devan@example.net', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'ms88Jd3bWp', '1975-11-18 22:45:22', '1975-11-18 22:45:22', 0),
(39, 'Ms. Jany Schuster', 'fkunze@example.net', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'TE8yPZja6S', '1985-08-04 00:58:33', '1985-08-04 00:58:33', 0),
(40, 'Kianna Wilkinson', 'qkerluke@example.net', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'piQZMW2mxp', '1989-02-04 14:43:41', '1989-02-04 14:43:41', 0),
(41, 'Dr. Sid Simonis DDS', 'nullrich@example.com', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', '3rXDgum011', '2012-03-03 12:11:58', '2012-03-03 12:11:58', 0),
(42, 'Dawn Krajcik', 'sibyl71@example.com', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'tKQmqyC7N3', '2006-01-23 16:24:07', '2006-01-23 16:24:07', 0),
(43, 'Cesar Morissette PhD', 'nia.lesch@example.org', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'X6h1sTaHH9', '1974-05-17 08:24:55', '1974-05-17 08:24:55', 0),
(44, 'Prof. Rosetta Walter', 'jacobi.danika@example.net', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'L5iSEwGMu5', '1992-03-25 12:12:11', '1992-03-25 12:12:11', 0),
(45, 'Estefania Farrell', 'sim75@example.com', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'jRmIhvVPHP', '1979-03-23 06:30:36', '1979-03-23 06:30:36', 0),
(46, 'Felipe Lakin', 'breanna54@example.org', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'I0Vncb4Uyw', '1985-08-04 20:41:24', '1985-08-04 20:41:24', 0),
(47, 'Marianne Bednar', 'vwehner@example.com', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'naOGWD8IfI', '1983-06-17 12:08:57', '1983-06-17 12:08:57', 0),
(48, 'Bert Prosacco', 'little.mandy@example.net', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'u4d9kt3JDK', '2000-04-01 22:53:11', '2000-04-01 22:53:11', 0),
(49, 'Ernest Schumm', 'nitzsche.samantha@example.com', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', 'eBL6NlgFGR', '1973-01-26 12:49:18', '1973-01-26 12:49:18', 0),
(50, 'Annette Ortiz', 'smitham.beaulah@example.org', '$2y$10$eSyw1uKNw/jk/rSItvth7.AfWdD96vQzC22GAppmgw9KBPPKmTaGS', '1InTumACZW', '1974-06-16 18:40:39', '1974-06-16 18:40:39', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
