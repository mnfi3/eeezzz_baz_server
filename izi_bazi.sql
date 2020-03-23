-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 17, 2020 at 06:06 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `izi_bazi`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `home_phone_number` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `latitude` double(8,2) DEFAULT NULL,
  `longitude` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addresses_user_id_foreign` (`user_id`),
  KEY `addresses_state_id_foreign` (`state_id`),
  KEY `addresses_city_id_foreign` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `state_id`, `city_id`, `postcode`, `home_phone_number`, `content`, `latitude`, `longitude`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 8, 14, '56454654', '051656556', 'خیابان آزادی کوچه 10 پلاک45', 54.00, 52.00, NULL, NULL, NULL),
(2, 2, 8, 14, '56454654', '051656556', 'خیابان آزادی کوچه 10 پلاک45', 54.00, 52.00, '2019-02-01 20:30:00', NULL, NULL),
(3, 3, 8, 14, '56454654', '051656556', 'خیابان آزادی کوچه 10 پلاک45', 54.00, 52.00, '2018-10-15 20:30:00', NULL, NULL),
(4, 3, 8, 14, '4555454', '1145641321', 'خیابان رجایی کوی ابوذر پلاک64', 45.00, 12.00, '2018-10-22 20:30:00', NULL, NULL),
(5, 4, 8, 14, '56454654', '051656556', 'خیابان آزادی کوچه 10 پلاک45', 54.00, 52.00, NULL, NULL, NULL),
(6, 3, 8, 14, '4555454', '1145641321', 'خیابان رجایی کوی ابوذر پلاک64', 45.00, 12.00, '2018-10-23 14:12:48', '2018-10-23 14:12:48', NULL),
(7, 3, 8, 14, '4555454', '1145641321', 'خیابان رجایی کوی ابوذر پلاک64', 45.00, 0.00, '2018-10-23 14:17:06', '2018-10-23 14:17:06', NULL),
(8, 3, 8, 14, '4555454', '1145641321', 'خیابان رجایی کوی ابوذر پلاک64', 45.00, 12.00, '2018-10-23 14:31:32', '2018-10-23 14:31:32', NULL),
(9, 3, 8, 14, '646', '5545', 'خیابان رجایی کوی ابوذر پلاک64', 45.00, 12.00, '2018-10-23 14:35:29', '2018-10-23 14:35:29', NULL),
(10, 3, 8, 14, '646', '12345678911', 'خیابان رجایی کوی ابوذر پلاک64', 45.00, 12.00, '2018-10-23 14:38:39', '2018-10-23 14:38:39', NULL),
(11, 3, 8, 14, '646', '12345678911', 'خیابان رجایی کوی ابوذر پلاک64', 45.00, 12.00, '2018-10-23 14:39:43', '2018-10-23 14:39:43', NULL),
(12, 3, 8, 14, '646', '12345678911', 'خیابان رجایی کوی ابوذر پلاک64', 45.00, 12.00, '2018-10-23 14:57:02', '2018-10-23 14:57:02', NULL),
(13, 3, 8, 14, '646', '12345678911', 'خیابان رجایی کوی ابوذر پلاک64', 45.00, 12.00, '2018-10-23 14:57:04', '2018-10-23 14:57:04', NULL),
(14, 3, 8, 14, '646', '12345678911', 'خیابان رجایی کوی ابوذر پلاک64', 45.00, 12.00, '2018-10-23 14:59:17', '2018-10-23 14:59:17', NULL),
(15, 3, 8, 14, '646', '12345678911', 'خیابان رجایی کوی ابوذر پلاک64', 45.00, 12.00, '2018-10-23 14:59:33', '2018-10-23 14:59:33', NULL),
(16, 3, 17, 14, '646', '12345678911', 'خیابان رجایی کوی ابوذر پلاک64', 45.00, 12.00, '2018-10-23 14:59:59', '2018-10-23 14:59:59', NULL),
(17, 3, 17, 14, '646', '12345678911', 'خیابان رجایی کوی ابوذر پلاک64', 45.00, 12.00, '2018-10-23 15:04:02', '2018-10-23 15:04:02', NULL),
(18, 3, 1, 14, '1234567890', '02145632145', 'خیابان رجایی کوچه فلان پلاک فلان', 0.00, 0.00, '2019-02-03 10:52:12', '2019-02-03 10:52:12', NULL),
(19, 3, 1, 14, NULL, '02145632145', 'خیابان رجایی کوچه فلان پلاک فلان', 0.00, 0.00, '2019-02-03 10:56:25', '2019-02-03 10:56:25', NULL),
(20, 3, 1, 14, NULL, '09856321235', 'خیابان فردوسی کوچه 16 پلاک 120', 0.00, 0.00, '2019-02-16 17:50:44', '2019-02-16 17:50:44', NULL),
(21, 3, 1, 14, NULL, '09874561236', 'خیابان امام کوچه پنج پلاک 655', 0.00, 0.00, '2019-02-16 17:58:14', '2019-02-16 17:58:14', NULL),
(22, 3, 5, 14, NULL, '09856321478', 'خیابان رجایی کوچه 3 پلاک 132', 0.00, 0.00, '2019-02-16 18:03:10', '2019-02-16 18:03:10', NULL),
(23, 3, 2, 14, NULL, '08521473690', 'خیردترترکز', 0.00, 0.00, '2019-02-16 18:12:34', '2019-02-16 18:12:34', NULL),
(24, 3, 2, 14, '5555555', '08521473690', 'خیردترترکز', 0.00, 0.00, '2019-03-06 14:26:52', '2019-03-06 14:26:52', NULL),
(25, 3, 2, 14, '5555555', '08521473690', 'خیردترترکز', 0.00, 0.00, '2019-03-06 14:27:28', '2019-03-06 14:27:28', NULL),
(26, 3, 2, 14, '5555555', '08521473690', 'خیردترترکز', 0.00, 0.00, '2019-03-06 14:34:46', '2019-03-06 14:34:46', NULL),
(27, 3, 1, 14, '5555555', '08521473690', 'خیابان ورزش - کوچه ابوذر - پلاک 100', 0.00, 0.00, '2019-03-06 15:08:28', '2019-03-06 15:08:28', NULL),
(28, 137, 8, 14, NULL, '09123456789', 'enamad', 0.00, 0.00, '2019-11-25 13:59:23', '2019-11-25 13:59:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `state_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cities_state_id_foreign` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1247 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'آذرشهر', NULL, NULL, NULL),
(2, 1, 'تیمورلو', NULL, NULL, NULL),
(3, 1, 'گوگان', NULL, NULL, NULL),
(4, 1, 'ممقان', NULL, NULL, NULL),
(5, 1, 'اسکو', NULL, NULL, NULL),
(6, 1, 'ایلخچی', NULL, NULL, NULL),
(7, 1, 'سهند', NULL, NULL, NULL),
(8, 1, 'اهر', NULL, NULL, NULL),
(9, 1, 'هوراند', NULL, NULL, NULL),
(10, 1, 'بستان آباد', NULL, NULL, NULL),
(11, 1, 'تیکمه داش', NULL, NULL, NULL),
(12, 1, 'بناب', NULL, NULL, NULL),
(13, 1, 'باسمنج', NULL, NULL, NULL),
(14, 1, 'تبریز', NULL, NULL, NULL),
(15, 1, 'خسروشاه', NULL, NULL, NULL),
(16, 1, 'سردرود', NULL, NULL, NULL),
(17, 1, 'جلفا', NULL, NULL, NULL),
(18, 1, 'سیه رود', NULL, NULL, NULL),
(19, 1, 'هادیشهر', NULL, NULL, NULL),
(20, 1, 'قره آغاج', NULL, NULL, NULL),
(21, 1, 'خمارلو', NULL, NULL, NULL),
(22, 1, 'دوزدوزان', NULL, NULL, NULL),
(23, 1, 'سراب', NULL, NULL, NULL),
(24, 1, 'شربیان', NULL, NULL, NULL),
(25, 1, 'مهربان', NULL, NULL, NULL),
(26, 1, 'تسوج', NULL, NULL, NULL),
(27, 1, 'خامنه', NULL, NULL, NULL),
(28, 1, 'سیس', NULL, NULL, NULL),
(29, 1, 'شبستر', NULL, NULL, NULL),
(30, 1, 'شرفخانه', NULL, NULL, NULL),
(31, 1, 'شندآباد', NULL, NULL, NULL),
(32, 1, 'صوفیان', NULL, NULL, NULL),
(33, 1, 'کوزه کنان', NULL, NULL, NULL),
(34, 1, 'وایقان', NULL, NULL, NULL),
(35, 1, 'جوان قلعه', NULL, NULL, NULL),
(36, 1, 'عجب شیر', NULL, NULL, NULL),
(37, 1, 'آبش احمد', NULL, NULL, NULL),
(38, 1, 'کلیبر', NULL, NULL, NULL),
(39, 1, 'خداجو(خراجو)', NULL, NULL, NULL),
(40, 1, 'مراغه', NULL, NULL, NULL),
(41, 1, 'بناب مرند', NULL, NULL, NULL),
(42, 1, 'زنوز', NULL, NULL, NULL),
(43, 1, 'کشکسرای', NULL, NULL, NULL),
(44, 1, 'مرند', NULL, NULL, NULL),
(45, 1, 'یامچی', NULL, NULL, NULL),
(46, 1, 'لیلان', NULL, NULL, NULL),
(47, 1, 'مبارک شهر', NULL, NULL, NULL),
(48, 1, 'ملکان', NULL, NULL, NULL),
(49, 1, 'آقکند', NULL, NULL, NULL),
(50, 1, 'اچاچی', NULL, NULL, NULL),
(51, 1, 'ترک', NULL, NULL, NULL),
(52, 1, 'ترکمانچای', NULL, NULL, NULL),
(53, 1, 'میانه', NULL, NULL, NULL),
(54, 1, 'خاروانا', NULL, NULL, NULL),
(55, 1, 'ورزقان', NULL, NULL, NULL),
(56, 1, 'بخشایش', NULL, NULL, NULL),
(57, 1, 'خواجه', NULL, NULL, NULL),
(58, 1, 'زرنق', NULL, NULL, NULL),
(59, 1, 'کلوانق', NULL, NULL, NULL),
(60, 1, 'هریس', NULL, NULL, NULL),
(61, 1, 'نظرکهریزی', NULL, NULL, NULL),
(62, 1, 'هشترود', NULL, NULL, NULL),
(63, 2, 'ارومیه', NULL, NULL, NULL),
(64, 2, 'سرو', NULL, NULL, NULL),
(65, 2, 'سیلوانه', NULL, NULL, NULL),
(66, 2, 'قوشچی', NULL, NULL, NULL),
(67, 2, 'نوشین', NULL, NULL, NULL),
(68, 2, 'اشنویه', NULL, NULL, NULL),
(69, 2, 'نالوس', NULL, NULL, NULL),
(70, 2, 'بوکان', NULL, NULL, NULL),
(71, 2, 'سیمینه', NULL, NULL, NULL),
(72, 2, 'پلدشت', NULL, NULL, NULL),
(73, 2, 'نازک علیا', NULL, NULL, NULL),
(74, 2, 'پیرانشهر', NULL, NULL, NULL),
(75, 2, 'گردکشانه', NULL, NULL, NULL),
(76, 2, 'تکاب', NULL, NULL, NULL),
(77, 2, 'آواجیق', NULL, NULL, NULL),
(78, 2, 'سیه چشمه', NULL, NULL, NULL),
(79, 2, 'قره ضیاءالدین', NULL, NULL, NULL),
(80, 2, 'ایواوغلی', NULL, NULL, NULL),
(81, 2, 'خوی', NULL, NULL, NULL),
(82, 2, 'دیزج دیز', NULL, NULL, NULL),
(83, 2, 'زرآباد', NULL, NULL, NULL),
(84, 2, 'فیرورق', NULL, NULL, NULL),
(85, 2, 'قطور', NULL, NULL, NULL),
(86, 2, 'ربط', NULL, NULL, NULL),
(87, 2, 'سردشت', NULL, NULL, NULL),
(88, 2, 'میرآباد', NULL, NULL, NULL),
(89, 2, 'تازه شهر', NULL, NULL, NULL),
(90, 2, 'سلماس', NULL, NULL, NULL),
(91, 2, 'شاهین دژ', NULL, NULL, NULL),
(92, 2, 'کشاورز', NULL, NULL, NULL),
(93, 2, 'محمودآباد', NULL, NULL, NULL),
(94, 2, 'شوط', NULL, NULL, NULL),
(95, 2, 'مرگنلر', NULL, NULL, NULL),
(96, 2, 'بازرگان', NULL, NULL, NULL),
(97, 2, 'ماکو', NULL, NULL, NULL),
(98, 2, 'خلیفان', NULL, NULL, NULL),
(99, 2, 'مهاباد', NULL, NULL, NULL),
(100, 2, 'باروق', NULL, NULL, NULL),
(101, 2, 'چهاربرج', NULL, NULL, NULL),
(102, 2, 'میاندوآب', NULL, NULL, NULL),
(103, 2, 'محمدیار', NULL, NULL, NULL),
(104, 2, 'نقده', NULL, NULL, NULL),
(105, 3, 'اردبیل', NULL, NULL, NULL),
(106, 3, 'هیر', NULL, NULL, NULL),
(107, 3, 'بیله سوار', NULL, NULL, NULL),
(108, 3, 'جعفرآباد', NULL, NULL, NULL),
(109, 3, 'اسلام اباد', NULL, NULL, NULL),
(110, 3, 'اصلاندوز', NULL, NULL, NULL),
(111, 3, 'پارس آباد', NULL, NULL, NULL),
(112, 3, 'تازه کند', NULL, NULL, NULL),
(113, 3, 'خلخال', NULL, NULL, NULL),
(114, 3, 'کلور', NULL, NULL, NULL),
(115, 3, 'هشتجین', NULL, NULL, NULL),
(116, 3, 'سرعین', NULL, NULL, NULL),
(117, 3, 'گیوی', NULL, NULL, NULL),
(118, 3, 'تازه کندانگوت', NULL, NULL, NULL),
(119, 3, 'گرمی', NULL, NULL, NULL),
(120, 3, 'رضی', NULL, NULL, NULL),
(121, 3, 'فخراباد', NULL, NULL, NULL),
(122, 3, 'قصابه', NULL, NULL, NULL),
(123, 3, 'لاهرود', NULL, NULL, NULL),
(124, 3, 'مرادلو', NULL, NULL, NULL),
(125, 3, 'مشگین شهر', NULL, NULL, NULL),
(126, 3, 'آبی بیگلو', NULL, NULL, NULL),
(127, 3, 'عنبران', NULL, NULL, NULL),
(128, 3, 'نمین', NULL, NULL, NULL),
(129, 3, 'کوراییم', NULL, NULL, NULL),
(130, 3, 'نیر', NULL, NULL, NULL),
(131, 4, 'آران وبیدگل', NULL, NULL, NULL),
(132, 4, 'ابوزیدآباد', NULL, NULL, NULL),
(133, 4, 'سفیدشهر', NULL, NULL, NULL),
(134, 4, 'نوش آباد', NULL, NULL, NULL),
(135, 4, 'اردستان', NULL, NULL, NULL),
(136, 4, 'زواره', NULL, NULL, NULL),
(137, 4, 'مهاباد', NULL, NULL, NULL),
(138, 4, 'اژیه', NULL, NULL, NULL),
(139, 4, 'اصفهان', NULL, NULL, NULL),
(140, 4, 'بهارستان', NULL, NULL, NULL),
(141, 4, 'تودشک', NULL, NULL, NULL),
(142, 4, 'حسن اباد', NULL, NULL, NULL),
(143, 4, 'زیار', NULL, NULL, NULL),
(144, 4, 'سجزی', NULL, NULL, NULL),
(145, 4, 'قهجاورستان', NULL, NULL, NULL),
(146, 4, 'کوهپایه', NULL, NULL, NULL),
(147, 4, 'محمدآباد', NULL, NULL, NULL),
(148, 4, 'نصرآباد', NULL, NULL, NULL),
(149, 4, 'نیک آباد', NULL, NULL, NULL),
(150, 4, 'ورزنه', NULL, NULL, NULL),
(151, 4, 'هرند', NULL, NULL, NULL),
(152, 4, 'حبیب آباد', NULL, NULL, NULL),
(153, 4, 'خورزوق', NULL, NULL, NULL),
(154, 4, 'دستگرد', NULL, NULL, NULL),
(155, 4, 'دولت آباد', NULL, NULL, NULL),
(156, 4, 'سین', NULL, NULL, NULL),
(157, 4, 'شاپورآباد', NULL, NULL, NULL),
(158, 4, 'کمشچه', NULL, NULL, NULL),
(159, 4, 'افوس', NULL, NULL, NULL),
(160, 4, 'بویین ومیاندشت', NULL, NULL, NULL),
(161, 4, 'تیران', NULL, NULL, NULL),
(162, 4, 'رضوانشهر', NULL, NULL, NULL),
(163, 4, 'عسگران', NULL, NULL, NULL),
(164, 4, 'چادگان', NULL, NULL, NULL),
(165, 4, 'رزوه', NULL, NULL, NULL),
(166, 4, 'اصغرآباد', NULL, NULL, NULL),
(167, 4, 'خمینی شهر', NULL, NULL, NULL),
(168, 4, 'درچه', NULL, NULL, NULL),
(169, 4, 'کوشک', NULL, NULL, NULL),
(170, 4, 'خوانسار', NULL, NULL, NULL),
(171, 4, 'جندق', NULL, NULL, NULL),
(172, 4, 'خور', NULL, NULL, NULL),
(173, 4, 'فرخی', NULL, NULL, NULL),
(174, 4, 'دهاقان', NULL, NULL, NULL),
(175, 4, 'گلشن', NULL, NULL, NULL),
(176, 4, 'حنا', NULL, NULL, NULL),
(177, 4, 'سمیرم', NULL, NULL, NULL),
(178, 4, 'کمه', NULL, NULL, NULL),
(179, 4, 'ونک', NULL, NULL, NULL),
(180, 4, 'شاهین شهر', NULL, NULL, NULL),
(181, 4, 'گرگاب', NULL, NULL, NULL),
(182, 4, 'گزبرخوار', NULL, NULL, NULL),
(183, 4, 'لای بید', NULL, NULL, NULL),
(184, 4, 'میمه', NULL, NULL, NULL),
(185, 4, 'وزوان', NULL, NULL, NULL),
(186, 4, 'شهرضا', NULL, NULL, NULL),
(187, 4, 'منظریه', NULL, NULL, NULL),
(188, 4, 'داران', NULL, NULL, NULL),
(189, 4, 'دامنه', NULL, NULL, NULL),
(190, 4, 'برف انبار', NULL, NULL, NULL),
(191, 4, 'فریدونشهر', NULL, NULL, NULL),
(192, 4, 'ابریشم', NULL, NULL, NULL),
(193, 4, 'ایمانشهر', NULL, NULL, NULL),
(194, 4, 'بهاران شهر', NULL, NULL, NULL),
(195, 4, 'پیربکران', NULL, NULL, NULL),
(196, 4, 'زازران', NULL, NULL, NULL),
(197, 4, 'فلاورجان', NULL, NULL, NULL),
(198, 4, 'قهدریجان', NULL, NULL, NULL),
(199, 4, 'کلیشادوسودرجان', NULL, NULL, NULL),
(200, 4, 'برزک', NULL, NULL, NULL),
(201, 4, 'جوشقان قالی', NULL, NULL, NULL),
(202, 4, 'قمصر', NULL, NULL, NULL),
(203, 4, 'کاشان', NULL, NULL, NULL),
(204, 4, 'کامو و چوگان', NULL, NULL, NULL),
(205, 4, 'مشکات', NULL, NULL, NULL),
(206, 4, 'نیاسر', NULL, NULL, NULL),
(207, 4, 'گلپایگان', NULL, NULL, NULL),
(208, 4, 'گلشهر', NULL, NULL, NULL),
(209, 4, 'گوگد', NULL, NULL, NULL),
(210, 4, 'باغ بهادران', NULL, NULL, NULL),
(211, 4, 'باغشاد', NULL, NULL, NULL),
(212, 4, 'چرمهین', NULL, NULL, NULL),
(213, 4, 'چمگردان', NULL, NULL, NULL),
(214, 4, 'زاینده رود', NULL, NULL, NULL),
(215, 4, 'زرین شهر', NULL, NULL, NULL),
(216, 4, 'سده لنجان', NULL, NULL, NULL),
(217, 4, 'فولادشهر', NULL, NULL, NULL),
(218, 4, 'ورنامخواست', NULL, NULL, NULL),
(219, 4, 'دیزیچه', NULL, NULL, NULL),
(220, 4, 'زیباشهر', NULL, NULL, NULL),
(221, 4, 'طالخونچه', NULL, NULL, NULL),
(222, 4, 'کرکوند', NULL, NULL, NULL),
(223, 4, 'مبارکه', NULL, NULL, NULL),
(224, 4, 'مجلسی', NULL, NULL, NULL),
(225, 4, 'انارک', NULL, NULL, NULL),
(226, 4, 'بافران', NULL, NULL, NULL),
(227, 4, 'نایین', NULL, NULL, NULL),
(228, 4, 'جوزدان', NULL, NULL, NULL),
(229, 4, 'دهق', NULL, NULL, NULL),
(230, 4, 'علویجه', NULL, NULL, NULL),
(231, 4, 'کهریزسنگ', NULL, NULL, NULL),
(232, 4, 'گلدشت', NULL, NULL, NULL),
(233, 4, 'نجف آباد', NULL, NULL, NULL),
(234, 4, 'بادرود', NULL, NULL, NULL),
(235, 4, 'خالدآباد', NULL, NULL, NULL),
(236, 4, 'طرق رود', NULL, NULL, NULL),
(237, 4, 'نطنز', NULL, NULL, NULL),
(238, 5, 'اشتهارد', NULL, NULL, NULL),
(239, 5, 'چهارباغ', NULL, NULL, NULL),
(240, 5, 'شهرجدیدهشتگرد', NULL, NULL, NULL),
(241, 5, 'کوهسار', NULL, NULL, NULL),
(242, 5, 'گلسار', NULL, NULL, NULL),
(243, 5, 'هشتگرد', NULL, NULL, NULL),
(244, 5, 'طالقان', NULL, NULL, NULL),
(245, 5, 'فردیس', NULL, NULL, NULL),
(246, 5, 'مشکین دشت', NULL, NULL, NULL),
(247, 5, 'آسارا', NULL, NULL, NULL),
(248, 5, 'کرج', NULL, NULL, NULL),
(249, 5, 'کمال شهر', NULL, NULL, NULL),
(250, 5, 'گرمدره', NULL, NULL, NULL),
(251, 5, 'ماهدشت', NULL, NULL, NULL),
(252, 5, 'محمدشهر', NULL, NULL, NULL),
(253, 5, 'تنکمان', NULL, NULL, NULL),
(254, 5, 'نظرآباد', NULL, NULL, NULL),
(255, 6, 'آبدانان', NULL, NULL, NULL),
(256, 6, 'سراب باغ', NULL, NULL, NULL),
(257, 6, 'مورموری', NULL, NULL, NULL),
(258, 6, 'ایلام', NULL, NULL, NULL),
(259, 6, 'چوار', NULL, NULL, NULL),
(260, 6, 'ایوان', NULL, NULL, NULL),
(261, 6, 'زرنه', NULL, NULL, NULL),
(262, 6, 'بدره', NULL, NULL, NULL),
(263, 6, 'آسمان آباد', NULL, NULL, NULL),
(264, 6, 'بلاوه', NULL, NULL, NULL),
(265, 6, 'توحید', NULL, NULL, NULL),
(266, 6, 'سرابله', NULL, NULL, NULL),
(267, 6, 'شباب', NULL, NULL, NULL),
(268, 6, 'دره شهر', NULL, NULL, NULL),
(269, 6, 'ماژین', NULL, NULL, NULL),
(270, 6, 'پهله', NULL, NULL, NULL),
(271, 6, 'دهلران', NULL, NULL, NULL),
(272, 6, 'موسیان', NULL, NULL, NULL),
(273, 6, 'میمه', NULL, NULL, NULL),
(274, 6, 'لومار', NULL, NULL, NULL),
(275, 6, 'ارکواز', NULL, NULL, NULL),
(276, 6, 'دلگشا', NULL, NULL, NULL),
(277, 6, 'مهر', NULL, NULL, NULL),
(278, 6, 'صالح آباد', NULL, NULL, NULL),
(279, 6, 'مهران', NULL, NULL, NULL),
(280, 7, 'بوشهر', NULL, NULL, NULL),
(281, 7, 'چغادک', NULL, NULL, NULL),
(282, 7, 'خارک', NULL, NULL, NULL),
(283, 7, 'عالی شهر', NULL, NULL, NULL),
(284, 7, 'آباد', NULL, NULL, NULL),
(285, 7, 'اهرم', NULL, NULL, NULL),
(286, 7, 'دلوار', NULL, NULL, NULL),
(287, 7, 'انارستان', NULL, NULL, NULL),
(288, 7, 'جم', NULL, NULL, NULL),
(289, 7, 'ریز', NULL, NULL, NULL),
(290, 7, 'آب پخش', NULL, NULL, NULL),
(291, 7, 'برازجان', NULL, NULL, NULL),
(292, 7, 'بوشکان', NULL, NULL, NULL),
(293, 7, 'تنگ ارم', NULL, NULL, NULL),
(294, 7, 'دالکی', NULL, NULL, NULL),
(295, 7, 'سعد آباد', NULL, NULL, NULL),
(296, 7, 'شبانکاره', NULL, NULL, NULL),
(297, 7, 'کلمه', NULL, NULL, NULL),
(298, 7, 'وحدتیه', NULL, NULL, NULL),
(299, 7, 'بادوله', NULL, NULL, NULL),
(300, 7, 'خورموج', NULL, NULL, NULL),
(301, 7, 'شنبه', NULL, NULL, NULL),
(302, 7, 'کاکی', NULL, NULL, NULL),
(303, 7, 'آبدان', NULL, NULL, NULL),
(304, 7, 'بردخون', NULL, NULL, NULL),
(305, 7, 'بردستان', NULL, NULL, NULL),
(306, 7, 'بندردیر', NULL, NULL, NULL),
(307, 7, 'دوراهک', NULL, NULL, NULL),
(308, 7, 'امام حسن', NULL, NULL, NULL),
(309, 7, 'بندردیلم', NULL, NULL, NULL),
(310, 7, 'عسلویه', NULL, NULL, NULL),
(311, 7, 'نخل تقی', NULL, NULL, NULL),
(312, 7, 'بندرکنگان', NULL, NULL, NULL),
(313, 7, 'بنک', NULL, NULL, NULL),
(314, 7, 'سیراف', NULL, NULL, NULL),
(315, 7, 'بندرریگ', NULL, NULL, NULL),
(316, 7, 'بندرگناوه', NULL, NULL, NULL),
(317, 8, 'احمد آباد مستوفی', NULL, NULL, NULL),
(318, 8, 'اسلامشهر', NULL, NULL, NULL),
(319, 8, 'چهاردانگه', NULL, NULL, NULL),
(320, 8, 'صالحیه', NULL, NULL, NULL),
(321, 8, 'گلستان', NULL, NULL, NULL),
(322, 8, 'نسیم شهر', NULL, NULL, NULL),
(323, 8, 'پاکدشت', NULL, NULL, NULL),
(324, 8, 'شریف آباد', NULL, NULL, NULL),
(325, 8, 'فرون اباد', NULL, NULL, NULL),
(326, 8, 'بومهن', NULL, NULL, NULL),
(327, 8, 'پردیس', NULL, NULL, NULL),
(328, 8, 'پیشوا', NULL, NULL, NULL),
(329, 8, 'تهران', NULL, NULL, NULL),
(330, 8, 'آبسرد', NULL, NULL, NULL),
(331, 8, 'آبعلی', NULL, NULL, NULL),
(332, 8, 'دماوند', NULL, NULL, NULL),
(333, 8, 'رودهن', NULL, NULL, NULL),
(334, 8, 'کیلان', NULL, NULL, NULL),
(335, 8, 'پرند', NULL, NULL, NULL),
(336, 8, 'رباطکریم', NULL, NULL, NULL),
(337, 8, 'نصیرشهر', NULL, NULL, NULL),
(338, 8, 'باقرشهر', NULL, NULL, NULL),
(339, 8, 'حسن آباد', NULL, NULL, NULL),
(340, 8, 'ری', NULL, NULL, NULL),
(341, 8, 'کهریزک', NULL, NULL, NULL),
(342, 8, 'تجریش', NULL, NULL, NULL),
(343, 8, 'شمشک', NULL, NULL, NULL),
(344, 8, 'فشم', NULL, NULL, NULL),
(345, 8, 'لواسان', NULL, NULL, NULL),
(346, 8, 'اندیشه', NULL, NULL, NULL),
(347, 8, 'باغستان', NULL, NULL, NULL),
(348, 8, 'شاهدشهر', NULL, NULL, NULL),
(349, 8, 'شهریار', NULL, NULL, NULL),
(350, 8, 'صباشهر', NULL, NULL, NULL),
(351, 8, 'فردوسیه', NULL, NULL, NULL),
(352, 8, 'وحیدیه', NULL, NULL, NULL),
(353, 8, 'ارجمند', NULL, NULL, NULL),
(354, 8, 'فیروزکوه', NULL, NULL, NULL),
(355, 8, 'قدس', NULL, NULL, NULL),
(356, 8, 'قرچک', NULL, NULL, NULL),
(357, 8, 'صفادشت', NULL, NULL, NULL),
(358, 8, 'ملارد', NULL, NULL, NULL),
(359, 8, 'جوادآباد', NULL, NULL, NULL),
(360, 8, 'ورامین', NULL, NULL, NULL),
(361, 9, 'اردل', NULL, NULL, NULL),
(362, 9, 'دشتک', NULL, NULL, NULL),
(363, 9, 'سرخون', NULL, NULL, NULL),
(364, 9, 'کاج', NULL, NULL, NULL),
(365, 9, 'بروجن', NULL, NULL, NULL),
(366, 9, 'بلداجی', NULL, NULL, NULL),
(367, 9, 'سفیددشت', NULL, NULL, NULL),
(368, 9, 'فرادبنه', NULL, NULL, NULL),
(369, 9, 'گندمان', NULL, NULL, NULL),
(370, 9, 'نقنه', NULL, NULL, NULL),
(371, 9, 'بن', NULL, NULL, NULL),
(372, 9, 'وردنجان', NULL, NULL, NULL),
(373, 9, 'سامان', NULL, NULL, NULL),
(374, 9, 'سودجان', NULL, NULL, NULL),
(375, 9, 'سورشجان', NULL, NULL, NULL),
(376, 9, 'شهرکرد', NULL, NULL, NULL),
(377, 9, 'طاقانک', NULL, NULL, NULL),
(378, 9, 'فرخ شهر', NULL, NULL, NULL),
(379, 9, 'کیان', NULL, NULL, NULL),
(380, 9, 'نافچ', NULL, NULL, NULL),
(381, 9, 'هارونی', NULL, NULL, NULL),
(382, 9, 'هفشجان', NULL, NULL, NULL),
(383, 9, 'باباحیدر', NULL, NULL, NULL),
(384, 9, 'پردنجان', NULL, NULL, NULL),
(385, 9, 'جونقان', NULL, NULL, NULL),
(386, 9, 'چلیچه', NULL, NULL, NULL),
(387, 9, 'فارسان', NULL, NULL, NULL),
(388, 9, 'گوجان', NULL, NULL, NULL),
(389, 9, 'بازفت', NULL, NULL, NULL),
(390, 9, 'چلگرد', NULL, NULL, NULL),
(391, 9, 'صمصامی', NULL, NULL, NULL),
(392, 9, 'دستنا', NULL, NULL, NULL),
(393, 9, 'شلمزار', NULL, NULL, NULL),
(394, 9, 'گهرو', NULL, NULL, NULL),
(395, 9, 'ناغان', NULL, NULL, NULL),
(396, 9, 'آلونی', NULL, NULL, NULL),
(397, 9, 'سردشت', NULL, NULL, NULL),
(398, 9, 'لردگان', NULL, NULL, NULL),
(399, 9, 'مال خلیفه', NULL, NULL, NULL),
(400, 9, 'منج', NULL, NULL, NULL),
(401, 10, 'ارسک', NULL, NULL, NULL),
(402, 10, 'بشرویه', NULL, NULL, NULL),
(403, 10, 'بیرجند', NULL, NULL, NULL),
(404, 10, 'خوسف', NULL, NULL, NULL),
(405, 10, 'محمدشهر', NULL, NULL, NULL),
(406, 10, 'اسدیه', NULL, NULL, NULL),
(407, 10, 'طبس مسینا', NULL, NULL, NULL),
(408, 10, 'قهستان', NULL, NULL, NULL),
(409, 10, 'گزیک', NULL, NULL, NULL),
(410, 10, 'حاجی آباد', NULL, NULL, NULL),
(411, 10, 'زهان', NULL, NULL, NULL),
(412, 10, 'آیسک', NULL, NULL, NULL),
(413, 10, 'سرایان', NULL, NULL, NULL),
(414, 10, 'سه قلعه', NULL, NULL, NULL),
(415, 10, 'سربیشه', NULL, NULL, NULL),
(416, 10, 'مود', NULL, NULL, NULL),
(417, 10, 'دیهوک', NULL, NULL, NULL),
(418, 10, 'طبس', NULL, NULL, NULL),
(419, 10, 'عشق آباد', NULL, NULL, NULL),
(420, 10, 'اسلامیه', NULL, NULL, NULL),
(421, 10, 'فردوس', NULL, NULL, NULL),
(422, 10, 'آرین شهر', NULL, NULL, NULL),
(423, 10, 'اسفدن', NULL, NULL, NULL),
(424, 10, 'خضری دشت بیاض', NULL, NULL, NULL),
(425, 10, 'قاین', NULL, NULL, NULL),
(426, 10, 'نیمبلوک', NULL, NULL, NULL),
(427, 10, 'شوسف', NULL, NULL, NULL),
(428, 10, 'نهبندان', NULL, NULL, NULL),
(429, 11, 'باخرز', NULL, NULL, NULL),
(430, 11, 'بجستان', NULL, NULL, NULL),
(431, 11, 'یونسی', NULL, NULL, NULL),
(432, 11, 'انابد', NULL, NULL, NULL),
(433, 11, 'بردسکن', NULL, NULL, NULL),
(434, 11, 'شهراباد', NULL, NULL, NULL),
(435, 11, 'شاندیز', NULL, NULL, NULL),
(436, 11, 'طرقبه', NULL, NULL, NULL),
(437, 11, 'تایباد', NULL, NULL, NULL),
(438, 11, 'کاریز', NULL, NULL, NULL),
(439, 11, 'مشهدریزه', NULL, NULL, NULL),
(440, 11, 'احمدابادصولت', NULL, NULL, NULL),
(441, 11, 'تربت جام', NULL, NULL, NULL),
(442, 11, 'صالح آباد', NULL, NULL, NULL),
(443, 11, 'نصرآباد', NULL, NULL, NULL),
(444, 11, 'نیل شهر', NULL, NULL, NULL),
(445, 11, 'بایک', NULL, NULL, NULL),
(446, 11, 'تربت حیدریه', NULL, NULL, NULL),
(447, 11, 'رباط سنگ', NULL, NULL, NULL),
(448, 11, 'کدکن', NULL, NULL, NULL),
(449, 11, 'جغتای', NULL, NULL, NULL),
(450, 11, 'نقاب', NULL, NULL, NULL),
(451, 11, 'چناران', NULL, NULL, NULL),
(452, 11, 'گلبهار', NULL, NULL, NULL),
(453, 11, 'گلمکان', NULL, NULL, NULL),
(454, 11, 'خلیل آباد', NULL, NULL, NULL),
(455, 11, 'کندر', NULL, NULL, NULL),
(456, 11, 'خواف', NULL, NULL, NULL),
(457, 11, 'سلامی', NULL, NULL, NULL),
(458, 11, 'سنگان', NULL, NULL, NULL),
(459, 11, 'قاسم آباد', NULL, NULL, NULL),
(460, 11, 'نشتیفان', NULL, NULL, NULL),
(461, 11, 'سلطان آباد', NULL, NULL, NULL),
(462, 11, 'داورزن', NULL, NULL, NULL),
(463, 11, 'چاپشلو', NULL, NULL, NULL),
(464, 11, 'درگز', NULL, NULL, NULL),
(465, 11, 'لطف آباد', NULL, NULL, NULL),
(466, 11, 'نوخندان', NULL, NULL, NULL),
(467, 11, 'جنگل', NULL, NULL, NULL),
(468, 11, 'رشتخوار', NULL, NULL, NULL),
(469, 11, 'دولت آباد', NULL, NULL, NULL),
(470, 11, 'روداب', NULL, NULL, NULL),
(471, 11, 'سبزوار', NULL, NULL, NULL),
(472, 11, 'ششتمد', NULL, NULL, NULL),
(473, 11, 'سرخس', NULL, NULL, NULL),
(474, 11, 'مزدآوند', NULL, NULL, NULL),
(475, 11, 'سفیدسنگ', NULL, NULL, NULL),
(476, 11, 'فرهادگرد', NULL, NULL, NULL),
(477, 11, 'فریمان', NULL, NULL, NULL),
(478, 11, 'قلندرآباد', NULL, NULL, NULL),
(479, 11, 'فیروزه', NULL, NULL, NULL),
(480, 11, 'همت آباد', NULL, NULL, NULL),
(481, 11, 'باجگیران', NULL, NULL, NULL),
(482, 11, 'قوچان', NULL, NULL, NULL),
(483, 11, 'ریوش', NULL, NULL, NULL),
(484, 11, 'کاشمر', NULL, NULL, NULL),
(485, 11, 'شهرزو', NULL, NULL, NULL),
(486, 11, 'کلات', NULL, NULL, NULL),
(487, 11, 'بیدخت', NULL, NULL, NULL),
(488, 11, 'کاخک', NULL, NULL, NULL),
(489, 11, 'گناباد', NULL, NULL, NULL),
(490, 11, 'رضویه', NULL, NULL, NULL),
(491, 11, 'مشهد', NULL, NULL, NULL),
(492, 11, 'مشهد ثامن', NULL, NULL, NULL),
(493, 11, 'ملک آباد', NULL, NULL, NULL),
(494, 11, 'شادمهر', NULL, NULL, NULL),
(495, 11, 'فیض آباد', NULL, NULL, NULL),
(496, 11, 'بار', NULL, NULL, NULL),
(497, 11, 'چکنه', NULL, NULL, NULL),
(498, 11, 'خرو', NULL, NULL, NULL),
(499, 11, 'درود', NULL, NULL, NULL),
(500, 11, 'عشق آباد', NULL, NULL, NULL),
(501, 11, 'قدمگاه', NULL, NULL, NULL),
(502, 11, 'نیشابور', NULL, NULL, NULL),
(503, 12, 'اسفراین', NULL, NULL, NULL),
(504, 12, 'صفی آباد', NULL, NULL, NULL),
(505, 12, 'بجنورد', NULL, NULL, NULL),
(506, 12, 'چناران شهر', NULL, NULL, NULL),
(507, 12, 'حصارگرمخان', NULL, NULL, NULL),
(508, 12, 'جاجرم', NULL, NULL, NULL),
(509, 12, 'سنخواست', NULL, NULL, NULL),
(510, 12, 'شوقان', NULL, NULL, NULL),
(511, 12, 'راز', NULL, NULL, NULL),
(512, 12, 'زیارت', NULL, NULL, NULL),
(513, 12, 'شیروان', NULL, NULL, NULL),
(514, 12, 'قوشخانه', NULL, NULL, NULL),
(515, 12, 'لوجلی', NULL, NULL, NULL),
(516, 12, 'تیتکانلو', NULL, NULL, NULL),
(517, 12, 'فاروج', NULL, NULL, NULL),
(518, 12, 'ایور', NULL, NULL, NULL),
(519, 12, 'درق', NULL, NULL, NULL),
(520, 12, 'گرمه', NULL, NULL, NULL),
(521, 12, 'آشخانه', NULL, NULL, NULL),
(522, 12, 'آوا', NULL, NULL, NULL),
(523, 12, 'پیش قلعه', NULL, NULL, NULL),
(524, 12, 'قاضی', NULL, NULL, NULL),
(525, 13, 'آبادان', NULL, NULL, NULL),
(526, 13, 'اروندکنار', NULL, NULL, NULL),
(527, 13, 'چویبده', NULL, NULL, NULL),
(528, 13, 'آغاجاری', NULL, NULL, NULL),
(529, 13, 'امیدیه', NULL, NULL, NULL),
(530, 13, 'جایزان', NULL, NULL, NULL),
(531, 13, 'آبژدان', NULL, NULL, NULL),
(532, 13, 'قلعه خواجه', NULL, NULL, NULL),
(533, 13, 'آزادی', NULL, NULL, NULL),
(534, 13, 'اندیمشک', NULL, NULL, NULL),
(535, 13, 'بیدروبه', NULL, NULL, NULL),
(536, 13, 'چم گلک', NULL, NULL, NULL),
(537, 13, 'حسینیه', NULL, NULL, NULL),
(538, 13, 'الهایی', NULL, NULL, NULL),
(539, 13, 'اهواز', NULL, NULL, NULL),
(540, 13, 'ایذه', NULL, NULL, NULL),
(541, 13, 'دهدز', NULL, NULL, NULL),
(542, 13, 'باغ ملک', NULL, NULL, NULL),
(543, 13, 'صیدون', NULL, NULL, NULL),
(544, 13, 'قلعه تل', NULL, NULL, NULL),
(545, 13, 'میداود', NULL, NULL, NULL),
(546, 13, 'شیبان', NULL, NULL, NULL),
(547, 13, 'ملاثانی', NULL, NULL, NULL),
(548, 13, 'ویس', NULL, NULL, NULL),
(549, 13, 'بندرامام خمینی', NULL, NULL, NULL),
(550, 13, 'بندرماهشهر', NULL, NULL, NULL),
(551, 13, 'چمران', NULL, NULL, NULL),
(552, 13, 'بهبهان', NULL, NULL, NULL),
(553, 13, 'تشان', NULL, NULL, NULL),
(554, 13, 'سردشت', NULL, NULL, NULL),
(555, 13, 'منصوریه', NULL, NULL, NULL),
(556, 13, 'حمیدیه', NULL, NULL, NULL),
(557, 13, 'خرمشهر', NULL, NULL, NULL),
(558, 13, 'مقاومت', NULL, NULL, NULL),
(559, 13, 'مینوشهر', NULL, NULL, NULL),
(560, 13, 'چغامیش', NULL, NULL, NULL),
(561, 13, 'حمزه', NULL, NULL, NULL),
(562, 13, 'دزفول', NULL, NULL, NULL),
(563, 13, 'سالند', NULL, NULL, NULL),
(564, 13, 'سیاه منصور', NULL, NULL, NULL),
(565, 13, 'شمس آباد', NULL, NULL, NULL),
(566, 13, 'شهر امام', NULL, NULL, NULL),
(567, 13, 'صفی آباد', NULL, NULL, NULL),
(568, 13, 'میانرود', NULL, NULL, NULL),
(569, 13, 'ابوحمیظه', NULL, NULL, NULL),
(570, 13, 'بستان', NULL, NULL, NULL),
(571, 13, 'سوسنگرد', NULL, NULL, NULL),
(572, 13, 'کوت سیدنعیم', NULL, NULL, NULL),
(573, 13, 'رامشیر', NULL, NULL, NULL),
(574, 13, 'مشراگه', NULL, NULL, NULL),
(575, 13, 'رامهرمز', NULL, NULL, NULL),
(576, 13, 'خنافره', NULL, NULL, NULL),
(577, 13, 'دارخوین', NULL, NULL, NULL),
(578, 13, 'شادگان', NULL, NULL, NULL),
(579, 13, 'الوان', NULL, NULL, NULL),
(580, 13, 'حر', NULL, NULL, NULL),
(581, 13, 'شاوور', NULL, NULL, NULL),
(582, 13, 'شوش', NULL, NULL, NULL),
(583, 13, 'فتح المبین', NULL, NULL, NULL),
(584, 13, 'سرداران', NULL, NULL, NULL),
(585, 13, 'شرافت', NULL, NULL, NULL),
(586, 13, 'شوشتر', NULL, NULL, NULL),
(587, 13, 'گوریه', NULL, NULL, NULL),
(588, 13, 'کوت عبداله', NULL, NULL, NULL),
(589, 13, 'ترکالکی', NULL, NULL, NULL),
(590, 13, 'جنت مکان', NULL, NULL, NULL),
(591, 13, 'سماله', NULL, NULL, NULL),
(592, 13, 'صالح شهر', NULL, NULL, NULL),
(593, 13, 'گتوند', NULL, NULL, NULL),
(594, 13, 'لالی', NULL, NULL, NULL),
(595, 13, 'گلگیر', NULL, NULL, NULL),
(596, 13, 'مسجدسلیمان', NULL, NULL, NULL),
(597, 13, 'هفتگل', NULL, NULL, NULL),
(598, 13, 'زهره', NULL, NULL, NULL),
(599, 13, 'هندیجان', NULL, NULL, NULL),
(600, 13, 'رفیع', NULL, NULL, NULL),
(601, 13, 'هویزه', NULL, NULL, NULL),
(602, 14, 'ابهر', NULL, NULL, NULL),
(603, 14, 'صایین قلعه', NULL, NULL, NULL),
(604, 14, 'هیدج', NULL, NULL, NULL),
(605, 14, 'حلب', NULL, NULL, NULL),
(606, 14, 'زرین آباد', NULL, NULL, NULL),
(607, 14, 'زرین رود', NULL, NULL, NULL),
(608, 14, 'سجاس', NULL, NULL, NULL),
(609, 14, 'سهرورد', NULL, NULL, NULL),
(610, 14, 'قیدار', NULL, NULL, NULL),
(611, 14, 'کرسف', NULL, NULL, NULL),
(612, 14, 'گرماب', NULL, NULL, NULL),
(613, 14, 'نوربهار', NULL, NULL, NULL),
(614, 14, 'خرمدره', NULL, NULL, NULL),
(615, 14, 'ارمغانخانه', NULL, NULL, NULL),
(616, 14, 'زنجان', NULL, NULL, NULL),
(617, 14, 'نیک پی', NULL, NULL, NULL),
(618, 14, 'سلطانیه', NULL, NULL, NULL),
(619, 14, 'آب بر', NULL, NULL, NULL),
(620, 14, 'چورزق', NULL, NULL, NULL),
(621, 14, 'دندی', NULL, NULL, NULL),
(622, 14, 'ماه نشان', NULL, NULL, NULL),
(623, 15, 'آرادان', NULL, NULL, NULL),
(624, 15, 'کهن آباد', NULL, NULL, NULL),
(625, 15, 'امیریه', NULL, NULL, NULL),
(626, 15, 'دامغان', NULL, NULL, NULL),
(627, 15, 'دیباج', NULL, NULL, NULL),
(628, 15, 'کلاته', NULL, NULL, NULL),
(629, 15, 'سرخه', NULL, NULL, NULL),
(630, 15, 'سمنان', NULL, NULL, NULL),
(631, 15, 'بسطام', NULL, NULL, NULL),
(632, 15, 'بیارجمند', NULL, NULL, NULL),
(633, 15, 'رودیان', NULL, NULL, NULL),
(634, 15, 'شاهرود', NULL, NULL, NULL),
(635, 15, 'کلاته خیج', NULL, NULL, NULL),
(636, 15, 'مجن', NULL, NULL, NULL),
(637, 15, 'ایوانکی', NULL, NULL, NULL),
(638, 15, 'گرمسار', NULL, NULL, NULL),
(639, 15, 'درجزین', NULL, NULL, NULL),
(640, 15, 'شهمیرزاد', NULL, NULL, NULL),
(641, 15, 'مهدی شهر', NULL, NULL, NULL),
(642, 15, 'میامی', NULL, NULL, NULL),
(643, 16, 'ایرانشهر', NULL, NULL, NULL),
(644, 16, 'بزمان', NULL, NULL, NULL),
(645, 16, 'بمپور', NULL, NULL, NULL),
(646, 16, 'محمدان', NULL, NULL, NULL),
(647, 16, 'چابهار', NULL, NULL, NULL),
(648, 16, 'نگور', NULL, NULL, NULL),
(649, 16, 'خاش', NULL, NULL, NULL),
(650, 16, 'نوک آباد', NULL, NULL, NULL),
(651, 16, 'گلمورتی', NULL, NULL, NULL),
(652, 16, 'بنجار', NULL, NULL, NULL),
(653, 16, 'زابل', NULL, NULL, NULL),
(654, 16, 'زاهدان', NULL, NULL, NULL),
(655, 16, 'نصرت آباد', NULL, NULL, NULL),
(656, 16, 'زهک', NULL, NULL, NULL),
(657, 16, 'جالق', NULL, NULL, NULL),
(658, 16, 'سراوان', NULL, NULL, NULL),
(659, 16, 'سیرکان', NULL, NULL, NULL),
(660, 16, 'گشت', NULL, NULL, NULL),
(661, 16, 'محمدی', NULL, NULL, NULL),
(662, 16, 'پیشین', NULL, NULL, NULL),
(663, 16, 'راسک', NULL, NULL, NULL),
(664, 16, 'سرباز', NULL, NULL, NULL),
(665, 16, 'سوران', NULL, NULL, NULL),
(666, 16, 'هیدوچ', NULL, NULL, NULL),
(667, 16, 'فنوج', NULL, NULL, NULL),
(668, 16, 'قصرقند', NULL, NULL, NULL),
(669, 16, 'زرآباد', NULL, NULL, NULL),
(670, 16, 'کنارک', NULL, NULL, NULL),
(671, 16, 'مهرستان', NULL, NULL, NULL),
(672, 16, 'میرجاوه', NULL, NULL, NULL),
(673, 16, 'اسپکه', NULL, NULL, NULL),
(674, 16, 'بنت', NULL, NULL, NULL),
(675, 16, 'نیک شهر', NULL, NULL, NULL),
(676, 16, 'ادیمی', NULL, NULL, NULL),
(677, 16, 'شهرک علی اکبر', NULL, NULL, NULL),
(678, 16, 'محمدآباد', NULL, NULL, NULL),
(679, 16, 'دوست محمد', NULL, NULL, NULL),
(680, 17, 'آباده', NULL, NULL, NULL),
(681, 17, 'ایزدخواست', NULL, NULL, NULL),
(682, 17, 'بهمن', NULL, NULL, NULL),
(683, 17, 'سورمق', NULL, NULL, NULL),
(684, 17, 'صغاد', NULL, NULL, NULL),
(685, 17, 'ارسنجان', NULL, NULL, NULL),
(686, 17, 'استهبان', NULL, NULL, NULL),
(687, 17, 'ایج', NULL, NULL, NULL),
(688, 17, 'رونیز', NULL, NULL, NULL),
(689, 17, 'اقلید', NULL, NULL, NULL),
(690, 17, 'حسن اباد', NULL, NULL, NULL),
(691, 17, 'دژکرد', NULL, NULL, NULL),
(692, 17, 'سده', NULL, NULL, NULL),
(693, 17, 'بوانات', NULL, NULL, NULL),
(694, 17, 'حسامی', NULL, NULL, NULL),
(695, 17, 'کره ای', NULL, NULL, NULL),
(696, 17, 'مزایجان', NULL, NULL, NULL),
(697, 17, 'سعادت شهر', NULL, NULL, NULL),
(698, 17, 'مادرسلیمان', NULL, NULL, NULL),
(699, 17, 'باب انار', NULL, NULL, NULL),
(700, 17, 'جهرم', NULL, NULL, NULL),
(701, 17, 'خاوران', NULL, NULL, NULL),
(702, 17, 'دوزه', NULL, NULL, NULL),
(703, 17, 'قطب آباد', NULL, NULL, NULL),
(704, 17, 'خرامه', NULL, NULL, NULL),
(705, 17, 'سلطان شهر', NULL, NULL, NULL),
(706, 17, 'صفاشهر', NULL, NULL, NULL),
(707, 17, 'قادراباد', NULL, NULL, NULL),
(708, 17, 'خنج', NULL, NULL, NULL),
(709, 17, 'جنت شهر', NULL, NULL, NULL),
(710, 17, 'داراب', NULL, NULL, NULL),
(711, 17, 'دوبرجی', NULL, NULL, NULL),
(712, 17, 'فدامی', NULL, NULL, NULL),
(713, 17, 'کوپن', NULL, NULL, NULL),
(714, 17, 'مصیری', NULL, NULL, NULL),
(715, 17, 'حاجی آباد', NULL, NULL, NULL),
(716, 17, 'دبیران', NULL, NULL, NULL),
(717, 17, 'شهرپیر', NULL, NULL, NULL),
(718, 17, 'اردکان', NULL, NULL, NULL),
(719, 17, 'بیضا', NULL, NULL, NULL),
(720, 17, 'هماشهر', NULL, NULL, NULL),
(721, 17, 'سروستان', NULL, NULL, NULL),
(722, 17, 'کوهنجان', NULL, NULL, NULL),
(723, 17, 'خانه زنیان', NULL, NULL, NULL),
(724, 17, 'داریان', NULL, NULL, NULL),
(725, 17, 'زرقان', NULL, NULL, NULL),
(726, 17, 'شهرصدرا', NULL, NULL, NULL),
(727, 17, 'شیراز', NULL, NULL, NULL),
(728, 17, 'لپویی', NULL, NULL, NULL),
(729, 17, 'دهرم', NULL, NULL, NULL),
(730, 17, 'فراشبند', NULL, NULL, NULL),
(731, 17, 'نوجین', NULL, NULL, NULL),
(732, 17, 'زاهدشهر', NULL, NULL, NULL),
(733, 17, 'ششده', NULL, NULL, NULL),
(734, 17, 'فسا', NULL, NULL, NULL),
(735, 17, 'قره بلاغ', NULL, NULL, NULL),
(736, 17, 'میانشهر', NULL, NULL, NULL),
(737, 17, 'نوبندگان', NULL, NULL, NULL),
(738, 17, 'فیروزآباد', NULL, NULL, NULL),
(739, 17, 'میمند', NULL, NULL, NULL),
(740, 17, 'افزر', NULL, NULL, NULL),
(741, 17, 'امام شهر', NULL, NULL, NULL),
(742, 17, 'قیر', NULL, NULL, NULL),
(743, 17, 'کارزین (فتح آباد)', NULL, NULL, NULL),
(744, 17, 'مبارک آباددیز', NULL, NULL, NULL),
(745, 17, 'بالاده', NULL, NULL, NULL),
(746, 17, 'خشت', NULL, NULL, NULL),
(747, 17, 'قایمیه', NULL, NULL, NULL),
(748, 17, 'کازرون', NULL, NULL, NULL),
(749, 17, 'کنارتخته', NULL, NULL, NULL),
(750, 17, 'نودان', NULL, NULL, NULL),
(751, 17, 'کوار', NULL, NULL, NULL),
(752, 17, 'گراش', NULL, NULL, NULL),
(753, 17, 'اوز', NULL, NULL, NULL),
(754, 17, 'بنارویه', NULL, NULL, NULL),
(755, 17, 'بیرم', NULL, NULL, NULL),
(756, 17, 'جویم', NULL, NULL, NULL),
(757, 17, 'خور', NULL, NULL, NULL),
(758, 17, 'عمادده', NULL, NULL, NULL),
(759, 17, 'لار', NULL, NULL, NULL),
(760, 17, 'لطیفی', NULL, NULL, NULL),
(761, 17, 'اشکنان', NULL, NULL, NULL),
(762, 17, 'اهل', NULL, NULL, NULL),
(763, 17, 'علامرودشت', NULL, NULL, NULL),
(764, 17, 'لامرد', NULL, NULL, NULL),
(765, 17, 'خانیمن', NULL, NULL, NULL),
(766, 17, 'رامجرد', NULL, NULL, NULL),
(767, 17, 'سیدان', NULL, NULL, NULL),
(768, 17, 'کامفیروز', NULL, NULL, NULL),
(769, 17, 'مرودشت', NULL, NULL, NULL),
(770, 17, 'بابامنیر', NULL, NULL, NULL),
(771, 17, 'خومه زار', NULL, NULL, NULL),
(772, 17, 'نورآباد', NULL, NULL, NULL),
(773, 17, 'اسیر', NULL, NULL, NULL),
(774, 17, 'خوزی', NULL, NULL, NULL),
(775, 17, 'گله دار', NULL, NULL, NULL),
(776, 17, 'مهر', NULL, NULL, NULL),
(777, 17, 'وراوی', NULL, NULL, NULL),
(778, 17, 'آباده طشک', NULL, NULL, NULL),
(779, 17, 'قطرویه', NULL, NULL, NULL),
(780, 17, 'مشکان', NULL, NULL, NULL),
(781, 17, 'نی ریز', NULL, NULL, NULL),
(782, 18, 'آبیک', NULL, NULL, NULL),
(783, 18, 'خاکعلی', NULL, NULL, NULL),
(784, 18, 'آبگرم', NULL, NULL, NULL),
(785, 18, 'آوج', NULL, NULL, NULL),
(786, 18, 'الوند', NULL, NULL, NULL),
(787, 18, 'بیدستان', NULL, NULL, NULL),
(788, 18, 'شریفیه', NULL, NULL, NULL),
(789, 18, 'محمدیه', NULL, NULL, NULL),
(790, 18, 'ارداق', NULL, NULL, NULL),
(791, 18, 'بویین زهرا', NULL, NULL, NULL),
(792, 18, 'دانسفهان', NULL, NULL, NULL),
(793, 18, 'سگزآباد', NULL, NULL, NULL),
(794, 18, 'شال', NULL, NULL, NULL),
(795, 18, 'اسفرورین', NULL, NULL, NULL),
(796, 18, 'تاکستان', NULL, NULL, NULL),
(797, 18, 'خرمدشت', NULL, NULL, NULL),
(798, 18, 'ضیاڈآباد', NULL, NULL, NULL),
(799, 18, 'نرجه', NULL, NULL, NULL),
(800, 18, 'اقبالیه', NULL, NULL, NULL),
(801, 18, 'رازمیان', NULL, NULL, NULL),
(802, 18, 'سیردان', NULL, NULL, NULL),
(803, 18, 'قزوین', NULL, NULL, NULL),
(804, 18, 'کوهین', NULL, NULL, NULL),
(805, 18, 'محمودآبادنمونه', NULL, NULL, NULL),
(806, 18, 'معلم کلایه', NULL, NULL, NULL),
(807, 19, 'جعفریه', NULL, NULL, NULL),
(808, 19, 'دستجرد', NULL, NULL, NULL),
(809, 19, 'سلفچگان', NULL, NULL, NULL),
(810, 19, 'قم', NULL, NULL, NULL),
(811, 19, 'قنوات', NULL, NULL, NULL),
(812, 19, 'کهک', NULL, NULL, NULL),
(813, 20, 'آرمرده', NULL, NULL, NULL),
(814, 20, 'بانه', NULL, NULL, NULL),
(815, 20, 'بویین سفلی', NULL, NULL, NULL),
(816, 20, 'کانی سور', NULL, NULL, NULL),
(817, 20, 'بابارشانی', NULL, NULL, NULL),
(818, 20, 'بیجار', NULL, NULL, NULL),
(819, 20, 'پیرتاج', NULL, NULL, NULL),
(820, 20, 'توپ آغاج', NULL, NULL, NULL),
(821, 20, 'یاسوکند', NULL, NULL, NULL),
(822, 20, 'بلبان آباد', NULL, NULL, NULL),
(823, 20, 'دهگلان', NULL, NULL, NULL),
(824, 20, 'دیواندره', NULL, NULL, NULL),
(825, 20, 'زرینه', NULL, NULL, NULL),
(826, 20, 'اورامان تخت', NULL, NULL, NULL),
(827, 20, 'سروآباد', NULL, NULL, NULL),
(828, 20, 'سقز', NULL, NULL, NULL),
(829, 20, 'صاحب', NULL, NULL, NULL),
(830, 20, 'سنندج', NULL, NULL, NULL),
(831, 20, 'شویشه', NULL, NULL, NULL),
(832, 20, 'دزج', NULL, NULL, NULL),
(833, 20, 'دلبران', NULL, NULL, NULL),
(834, 20, 'سریش آباد', NULL, NULL, NULL),
(835, 20, 'قروه', NULL, NULL, NULL),
(836, 20, 'کامیاران', NULL, NULL, NULL),
(837, 20, 'موچش', NULL, NULL, NULL),
(838, 20, 'برده رشه', NULL, NULL, NULL),
(839, 20, 'چناره', NULL, NULL, NULL),
(840, 20, 'کانی دینار', NULL, NULL, NULL),
(841, 20, 'مریوان', NULL, NULL, NULL),
(842, 21, 'ارزوییه', NULL, NULL, NULL),
(843, 21, 'امین شهر', NULL, NULL, NULL),
(844, 21, 'انار', NULL, NULL, NULL),
(845, 21, 'بافت', NULL, NULL, NULL),
(846, 21, 'بزنجان', NULL, NULL, NULL),
(847, 21, 'بردسیر', NULL, NULL, NULL),
(848, 21, 'دشتکار', NULL, NULL, NULL),
(849, 21, 'گلزار', NULL, NULL, NULL),
(850, 21, 'لاله زار', NULL, NULL, NULL),
(851, 21, 'نگار', NULL, NULL, NULL),
(852, 21, 'بروات', NULL, NULL, NULL),
(853, 21, 'بم', NULL, NULL, NULL),
(854, 21, 'بلوک', NULL, NULL, NULL),
(855, 21, 'جبالبارز', NULL, NULL, NULL),
(856, 21, 'جیرفت', NULL, NULL, NULL),
(857, 21, 'درب بهشت', NULL, NULL, NULL),
(858, 21, 'رابر', NULL, NULL, NULL),
(859, 21, 'هنزا', NULL, NULL, NULL),
(860, 21, 'راور', NULL, NULL, NULL),
(861, 21, 'هجدک', NULL, NULL, NULL),
(862, 21, 'بهرمان', NULL, NULL, NULL),
(863, 21, 'رفسنجان', NULL, NULL, NULL),
(864, 21, 'صفاییه', NULL, NULL, NULL),
(865, 21, 'کشکوییه', NULL, NULL, NULL),
(866, 21, 'مس سرچشمه', NULL, NULL, NULL),
(867, 21, 'رودبار', NULL, NULL, NULL),
(868, 21, 'زهکلوت', NULL, NULL, NULL),
(869, 21, 'گنبکی', NULL, NULL, NULL),
(870, 21, 'محمدآباد', NULL, NULL, NULL),
(871, 21, 'خانوک', NULL, NULL, NULL),
(872, 21, 'ریحان', NULL, NULL, NULL),
(873, 21, 'زرند', NULL, NULL, NULL),
(874, 21, 'یزدان شهر', NULL, NULL, NULL),
(875, 21, 'بلورد', NULL, NULL, NULL),
(876, 21, 'پاریز', NULL, NULL, NULL),
(877, 21, 'خواجو شهر', NULL, NULL, NULL),
(878, 21, 'زیدآباد', NULL, NULL, NULL),
(879, 21, 'سیرجان', NULL, NULL, NULL),
(880, 21, 'نجف شهر', NULL, NULL, NULL),
(881, 21, 'هماشهر', NULL, NULL, NULL),
(882, 21, 'جوزم', NULL, NULL, NULL),
(883, 21, 'خاتون اباد', NULL, NULL, NULL),
(884, 21, 'خورسند', NULL, NULL, NULL),
(885, 21, 'دهج', NULL, NULL, NULL),
(886, 21, 'شهربابک', NULL, NULL, NULL),
(887, 21, 'دوساری', NULL, NULL, NULL),
(888, 21, 'عنبرآباد', NULL, NULL, NULL),
(889, 21, 'مردهک', NULL, NULL, NULL),
(890, 21, 'فاریاب', NULL, NULL, NULL),
(891, 21, 'فهرج', NULL, NULL, NULL),
(892, 21, 'قلعه گنج', NULL, NULL, NULL),
(893, 21, 'اختیارآباد', NULL, NULL, NULL),
(894, 21, 'اندوهجرد', NULL, NULL, NULL),
(895, 21, 'باغین', NULL, NULL, NULL),
(896, 21, 'جوپار', NULL, NULL, NULL),
(897, 21, 'چترود', NULL, NULL, NULL),
(898, 21, 'راین', NULL, NULL, NULL),
(899, 21, 'زنگی آباد', NULL, NULL, NULL),
(900, 21, 'شهداد', NULL, NULL, NULL),
(901, 21, 'کاظم آباد', NULL, NULL, NULL),
(902, 21, 'کرمان', NULL, NULL, NULL),
(903, 21, 'گلباف', NULL, NULL, NULL),
(904, 21, 'ماهان', NULL, NULL, NULL),
(905, 21, 'محی آباد', NULL, NULL, NULL),
(906, 21, 'کوهبنان', NULL, NULL, NULL),
(907, 21, 'کیانشهر', NULL, NULL, NULL),
(908, 21, 'کهنوج', NULL, NULL, NULL),
(909, 21, 'منوجان', NULL, NULL, NULL),
(910, 21, 'نودژ', NULL, NULL, NULL),
(911, 21, 'نرماشیر', NULL, NULL, NULL),
(912, 21, 'نظام شهر', NULL, NULL, NULL),
(913, 22, 'اسلام آبادغرب', NULL, NULL, NULL),
(914, 22, 'حمیل', NULL, NULL, NULL),
(915, 22, 'بانوره', NULL, NULL, NULL),
(916, 22, 'باینگان', NULL, NULL, NULL),
(917, 22, 'پاوه', NULL, NULL, NULL),
(918, 22, 'نودشه', NULL, NULL, NULL),
(919, 22, 'نوسود', NULL, NULL, NULL),
(920, 22, 'ازگله', NULL, NULL, NULL),
(921, 22, 'تازه آباد', NULL, NULL, NULL),
(922, 22, 'جوانرود', NULL, NULL, NULL),
(923, 22, 'ریجاب', NULL, NULL, NULL),
(924, 22, 'کرند', NULL, NULL, NULL),
(925, 22, 'گهواره', NULL, NULL, NULL),
(926, 22, 'روانسر', NULL, NULL, NULL),
(927, 22, 'شاهو', NULL, NULL, NULL),
(928, 22, 'سرپل ذهاب', NULL, NULL, NULL),
(929, 22, 'سطر', NULL, NULL, NULL),
(930, 22, 'سنقر', NULL, NULL, NULL),
(931, 22, 'صحنه', NULL, NULL, NULL),
(932, 22, 'میان راهان', NULL, NULL, NULL),
(933, 22, 'سومار', NULL, NULL, NULL),
(934, 22, 'قصرشیرین', NULL, NULL, NULL),
(935, 22, 'رباط', NULL, NULL, NULL),
(936, 22, 'کرمانشاه', NULL, NULL, NULL),
(937, 22, 'کوزران', NULL, NULL, NULL),
(938, 22, 'هلشی', NULL, NULL, NULL),
(939, 22, 'کنگاور', NULL, NULL, NULL),
(940, 22, 'گودین', NULL, NULL, NULL),
(941, 22, 'سرمست', NULL, NULL, NULL),
(942, 22, 'گیلانغرب', NULL, NULL, NULL),
(943, 22, 'بیستون', NULL, NULL, NULL),
(944, 22, 'هرسین', NULL, NULL, NULL),
(945, 23, 'باشت', NULL, NULL, NULL),
(946, 23, 'چیتاب', NULL, NULL, NULL),
(947, 23, 'گراب سفلی', NULL, NULL, NULL),
(948, 23, 'مادوان', NULL, NULL, NULL),
(949, 23, 'مارگون', NULL, NULL, NULL),
(950, 23, 'یاسوج', NULL, NULL, NULL),
(951, 23, 'لیکک', NULL, NULL, NULL),
(952, 23, 'چرام', NULL, NULL, NULL),
(953, 23, 'سرفاریاب', NULL, NULL, NULL),
(954, 23, 'پاتاوه', NULL, NULL, NULL),
(955, 23, 'سی سخت', NULL, NULL, NULL),
(956, 23, 'دهدشت', NULL, NULL, NULL),
(957, 23, 'دیشموک', NULL, NULL, NULL),
(958, 23, 'سوق', NULL, NULL, NULL),
(959, 23, 'قلعه رییسی', NULL, NULL, NULL),
(960, 23, 'دوگنبدان', NULL, NULL, NULL),
(961, 23, 'لنده', NULL, NULL, NULL),
(962, 24, 'آزادشهر', NULL, NULL, NULL),
(963, 24, 'نگین شهر', NULL, NULL, NULL),
(964, 24, 'نوده خاندوز', NULL, NULL, NULL),
(965, 24, 'آق قلا', NULL, NULL, NULL),
(966, 24, 'انبارآلوم', NULL, NULL, NULL),
(967, 24, 'بندرگز', NULL, NULL, NULL),
(968, 24, 'نوکنده', NULL, NULL, NULL),
(969, 24, 'بندرترکمن', NULL, NULL, NULL),
(970, 24, 'تاتارعلیا', NULL, NULL, NULL),
(971, 24, 'خان ببین', NULL, NULL, NULL),
(972, 24, 'دلند', NULL, NULL, NULL),
(973, 24, 'رامیان', NULL, NULL, NULL),
(974, 24, 'سنگدوین', NULL, NULL, NULL),
(975, 24, 'علی اباد', NULL, NULL, NULL),
(976, 24, 'فاضل آباد', NULL, NULL, NULL),
(977, 24, 'مزرعه', NULL, NULL, NULL),
(978, 24, 'کردکوی', NULL, NULL, NULL),
(979, 24, 'فراغی', NULL, NULL, NULL),
(980, 24, 'کلاله', NULL, NULL, NULL),
(981, 24, 'گالیکش', NULL, NULL, NULL),
(982, 24, 'جلین', NULL, NULL, NULL),
(983, 24, 'سرخنکلاته', NULL, NULL, NULL),
(984, 24, 'گرگان', NULL, NULL, NULL),
(985, 24, 'سیمین شهر', NULL, NULL, NULL),
(986, 24, 'گمیش تپه', NULL, NULL, NULL),
(987, 24, 'اینچه برون', NULL, NULL, NULL),
(988, 24, 'گنبدکاووس', NULL, NULL, NULL),
(989, 24, 'مراوه', NULL, NULL, NULL),
(990, 24, 'مینودشت', NULL, NULL, NULL),
(991, 25, 'آستارا', NULL, NULL, NULL),
(992, 25, 'لوندویل', NULL, NULL, NULL),
(993, 25, 'آستانه اشرفیه', NULL, NULL, NULL),
(994, 25, 'کیاشهر', NULL, NULL, NULL),
(995, 25, 'املش', NULL, NULL, NULL),
(996, 25, 'رانکوه', NULL, NULL, NULL),
(997, 25, 'بندرانزلی', NULL, NULL, NULL),
(998, 25, 'خشکبیجار', NULL, NULL, NULL),
(999, 25, 'خمام', NULL, NULL, NULL),
(1000, 25, 'رشت', NULL, NULL, NULL),
(1001, 25, 'سنگر', NULL, NULL, NULL),
(1002, 25, 'کوچصفهان', NULL, NULL, NULL),
(1003, 25, 'لشت نشاء', NULL, NULL, NULL),
(1004, 25, 'لولمان', NULL, NULL, NULL),
(1005, 25, 'پره سر', NULL, NULL, NULL),
(1006, 25, 'رضوانشهر', NULL, NULL, NULL),
(1007, 25, 'بره سر', NULL, NULL, NULL),
(1008, 25, 'توتکابن', NULL, NULL, NULL),
(1009, 25, 'جیرنده', NULL, NULL, NULL),
(1010, 25, 'رستم آباد', NULL, NULL, NULL),
(1011, 25, 'رودبار', NULL, NULL, NULL),
(1012, 25, 'لوشان', NULL, NULL, NULL),
(1013, 25, 'منجیل', NULL, NULL, NULL),
(1014, 25, 'چابکسر', NULL, NULL, NULL),
(1015, 25, 'رحیم آباد', NULL, NULL, NULL),
(1016, 25, 'رودسر', NULL, NULL, NULL),
(1017, 25, 'کلاچای', NULL, NULL, NULL),
(1018, 25, 'واجارگاه', NULL, NULL, NULL),
(1019, 25, 'دیلمان', NULL, NULL, NULL),
(1020, 25, 'سیاهکل', NULL, NULL, NULL),
(1021, 25, 'احمدسرگوراب', NULL, NULL, NULL),
(1022, 25, 'شفت', NULL, NULL, NULL),
(1023, 25, 'صومعه سرا', NULL, NULL, NULL),
(1024, 25, 'گوراب زرمیخ', NULL, NULL, NULL),
(1025, 25, 'مرجقل', NULL, NULL, NULL),
(1026, 25, 'اسالم', NULL, NULL, NULL),
(1027, 25, 'چوبر', NULL, NULL, NULL),
(1028, 25, 'حویق', NULL, NULL, NULL),
(1029, 25, 'لیسار', NULL, NULL, NULL),
(1030, 25, 'هشتپر (تالش)', NULL, NULL, NULL),
(1031, 25, 'فومن', NULL, NULL, NULL),
(1032, 25, 'ماسوله', NULL, NULL, NULL),
(1033, 25, 'ماکلوان', NULL, NULL, NULL),
(1034, 25, 'رودبنه', NULL, NULL, NULL),
(1035, 25, 'لاهیجان', NULL, NULL, NULL),
(1036, 25, 'اطاقور', NULL, NULL, NULL),
(1037, 25, 'چاف و چمخاله', NULL, NULL, NULL),
(1038, 25, 'شلمان', NULL, NULL, NULL),
(1039, 25, 'کومله', NULL, NULL, NULL),
(1040, 25, 'لنگرود', NULL, NULL, NULL),
(1041, 25, 'بازار جمعه', NULL, NULL, NULL),
(1042, 25, 'ماسال', NULL, NULL, NULL),
(1043, 26, 'ازنا', NULL, NULL, NULL),
(1044, 26, 'مومن آباد', NULL, NULL, NULL),
(1045, 26, 'الیگودرز', NULL, NULL, NULL),
(1046, 26, 'شول آباد', NULL, NULL, NULL),
(1047, 26, 'اشترینان', NULL, NULL, NULL),
(1048, 26, 'بروجرد', NULL, NULL, NULL),
(1049, 26, 'پلدختر', NULL, NULL, NULL),
(1050, 26, 'معمولان', NULL, NULL, NULL),
(1051, 26, 'بیران شهر', NULL, NULL, NULL),
(1052, 26, 'خرم آباد', NULL, NULL, NULL),
(1053, 26, 'زاغه', NULL, NULL, NULL),
(1054, 26, 'سپیددشت', NULL, NULL, NULL),
(1055, 26, 'نورآباد', NULL, NULL, NULL),
(1056, 26, 'هفت چشمه', NULL, NULL, NULL),
(1057, 26, 'چالانچولان', NULL, NULL, NULL),
(1058, 26, 'دورود', NULL, NULL, NULL),
(1059, 26, 'سراب دوره', NULL, NULL, NULL),
(1060, 26, 'ویسیان', NULL, NULL, NULL),
(1061, 26, 'چقابل', NULL, NULL, NULL),
(1062, 26, 'الشتر', NULL, NULL, NULL),
(1063, 26, 'فیروزآباد', NULL, NULL, NULL),
(1064, 26, 'درب گنبد', NULL, NULL, NULL),
(1065, 26, 'کوهدشت', NULL, NULL, NULL),
(1066, 26, 'کوهنانی', NULL, NULL, NULL),
(1067, 26, 'گراب', NULL, NULL, NULL),
(1068, 27, 'آمل', NULL, NULL, NULL),
(1069, 27, 'امامزاده عبدالله', NULL, NULL, NULL),
(1070, 27, 'دابودشت', NULL, NULL, NULL),
(1071, 27, 'رینه', NULL, NULL, NULL),
(1072, 27, 'گزنک', NULL, NULL, NULL),
(1073, 27, 'امیرکلا', NULL, NULL, NULL),
(1074, 27, 'بابل', NULL, NULL, NULL),
(1075, 27, 'خوش رودپی', NULL, NULL, NULL),
(1076, 27, 'زرگرمحله', NULL, NULL, NULL),
(1077, 27, 'گتاب', NULL, NULL, NULL),
(1078, 27, 'گلوگاه', NULL, NULL, NULL),
(1079, 27, 'مرزیکلا', NULL, NULL, NULL),
(1080, 27, 'بابلسر', NULL, NULL, NULL),
(1081, 27, 'بهنمیر', NULL, NULL, NULL),
(1082, 27, 'هادی شهر', NULL, NULL, NULL),
(1083, 27, 'بهشهر', NULL, NULL, NULL),
(1084, 27, 'خلیل شهر', NULL, NULL, NULL),
(1085, 27, 'رستمکلا', NULL, NULL, NULL),
(1086, 27, 'تنکابن', NULL, NULL, NULL),
(1087, 27, 'خرم آباد', NULL, NULL, NULL),
(1088, 27, 'شیرود', NULL, NULL, NULL),
(1089, 27, 'نشتارود', NULL, NULL, NULL),
(1090, 27, 'جویبار', NULL, NULL, NULL),
(1091, 27, 'کوهی خیل', NULL, NULL, NULL),
(1092, 27, 'چالوس', NULL, NULL, NULL),
(1093, 27, 'مرزن آباد', NULL, NULL, NULL),
(1094, 27, 'هچیرود', NULL, NULL, NULL),
(1095, 27, 'رامسر', NULL, NULL, NULL),
(1096, 27, 'کتالم وسادات شهر', NULL, NULL, NULL),
(1097, 27, 'پایین هولار', NULL, NULL, NULL),
(1098, 27, 'ساری', NULL, NULL, NULL),
(1099, 27, 'فریم', NULL, NULL, NULL),
(1100, 27, 'کیاسر', NULL, NULL, NULL),
(1101, 27, 'آلاشت', NULL, NULL, NULL),
(1102, 27, 'پل سفید', NULL, NULL, NULL),
(1103, 27, 'زیرآب', NULL, NULL, NULL),
(1104, 27, 'شیرگاه', NULL, NULL, NULL),
(1105, 27, 'کیاکلا', NULL, NULL, NULL),
(1106, 27, 'سلمان شهر', NULL, NULL, NULL),
(1107, 27, 'عباس اباد', NULL, NULL, NULL),
(1108, 27, 'کلارآباد', NULL, NULL, NULL),
(1109, 27, 'فریدونکنار', NULL, NULL, NULL),
(1110, 27, 'ارطه', NULL, NULL, NULL),
(1111, 27, 'قایم شهر', NULL, NULL, NULL),
(1112, 27, 'کلاردشت', NULL, NULL, NULL),
(1113, 27, 'گلوگاه', NULL, NULL, NULL),
(1114, 27, 'سرخرود', NULL, NULL, NULL),
(1115, 27, 'محمودآباد', NULL, NULL, NULL),
(1116, 27, 'سورک', NULL, NULL, NULL),
(1117, 27, 'نکا', NULL, NULL, NULL),
(1118, 27, 'ایزدشهر', NULL, NULL, NULL),
(1119, 27, 'بلده', NULL, NULL, NULL),
(1120, 27, 'چمستان', NULL, NULL, NULL),
(1121, 27, 'رویان', NULL, NULL, NULL),
(1122, 27, 'نور', NULL, NULL, NULL),
(1123, 27, 'پول', NULL, NULL, NULL),
(1124, 27, 'کجور', NULL, NULL, NULL),
(1125, 27, 'نوشهر', NULL, NULL, NULL),
(1126, 28, 'آشتیان', NULL, NULL, NULL),
(1127, 28, 'اراک', NULL, NULL, NULL),
(1128, 28, 'داودآباد', NULL, NULL, NULL),
(1129, 28, 'ساروق', NULL, NULL, NULL),
(1130, 28, 'کارچان', NULL, NULL, NULL),
(1131, 28, 'تفرش', NULL, NULL, NULL),
(1132, 28, 'خمین', NULL, NULL, NULL),
(1133, 28, 'قورچی باشی', NULL, NULL, NULL),
(1134, 28, 'جاورسیان', NULL, NULL, NULL),
(1135, 28, 'خنداب', NULL, NULL, NULL),
(1136, 28, 'دلیجان', NULL, NULL, NULL),
(1137, 28, 'نراق', NULL, NULL, NULL),
(1138, 28, 'پرندک', NULL, NULL, NULL),
(1139, 28, 'خشکرود', NULL, NULL, NULL),
(1140, 28, 'رازقان', NULL, NULL, NULL),
(1141, 28, 'زاویه', NULL, NULL, NULL),
(1142, 28, 'مامونیه', NULL, NULL, NULL),
(1143, 28, 'آوه', NULL, NULL, NULL),
(1144, 28, 'ساوه', NULL, NULL, NULL),
(1145, 28, 'غرق آباد', NULL, NULL, NULL),
(1146, 28, 'نوبران', NULL, NULL, NULL),
(1147, 28, 'آستانه', NULL, NULL, NULL),
(1148, 28, 'توره', NULL, NULL, NULL),
(1149, 28, 'شازند', NULL, NULL, NULL),
(1150, 28, 'شهباز', NULL, NULL, NULL),
(1151, 28, 'مهاجران', NULL, NULL, NULL),
(1152, 28, 'هندودر', NULL, NULL, NULL),
(1153, 28, 'خنجین', NULL, NULL, NULL),
(1154, 28, 'فرمهین', NULL, NULL, NULL),
(1155, 28, 'کمیجان', NULL, NULL, NULL),
(1156, 28, 'میلاجرد', NULL, NULL, NULL),
(1157, 28, 'محلات', NULL, NULL, NULL),
(1158, 28, 'نیمور', NULL, NULL, NULL),
(1159, 29, 'ابوموسی', NULL, NULL, NULL),
(1160, 29, 'بستک', NULL, NULL, NULL),
(1161, 29, 'جناح', NULL, NULL, NULL),
(1162, 29, 'سردشت', NULL, NULL, NULL),
(1163, 29, 'گوهران', NULL, NULL, NULL),
(1164, 29, 'بندرعباس', NULL, NULL, NULL),
(1165, 29, 'تازیان پایین', NULL, NULL, NULL),
(1166, 29, 'تخت', NULL, NULL, NULL),
(1167, 29, 'فین', NULL, NULL, NULL),
(1168, 29, 'قلعه قاضی', NULL, NULL, NULL),
(1169, 29, 'بندرلنگه', NULL, NULL, NULL),
(1170, 29, 'چارک', NULL, NULL, NULL),
(1171, 29, 'کنگ', NULL, NULL, NULL),
(1172, 29, 'کیش', NULL, NULL, NULL),
(1173, 29, 'لمزان', NULL, NULL, NULL),
(1174, 29, 'پارسیان', NULL, NULL, NULL),
(1175, 29, 'دشتی', NULL, NULL, NULL),
(1176, 29, 'کوشکنار', NULL, NULL, NULL),
(1177, 29, 'بندرجاسک', NULL, NULL, NULL),
(1178, 29, 'حاجی اباد', NULL, NULL, NULL),
(1179, 29, 'سرگز', NULL, NULL, NULL),
(1180, 29, 'فارغان', NULL, NULL, NULL),
(1181, 29, 'خمیر', NULL, NULL, NULL),
(1182, 29, 'رویدر', NULL, NULL, NULL),
(1183, 29, 'بیکاء', NULL, NULL, NULL),
(1184, 29, 'دهبارز', NULL, NULL, NULL),
(1185, 29, 'زیارتعلی', NULL, NULL, NULL),
(1186, 29, 'سیریک', NULL, NULL, NULL),
(1187, 29, 'کوهستک', NULL, NULL, NULL),
(1188, 29, 'گروک', NULL, NULL, NULL),
(1189, 29, 'درگهان', NULL, NULL, NULL),
(1190, 29, 'سوزا', NULL, NULL, NULL),
(1191, 29, 'قشم', NULL, NULL, NULL),
(1192, 29, 'هرمز', NULL, NULL, NULL),
(1193, 29, 'تیرور', NULL, NULL, NULL),
(1194, 29, 'سندرک', NULL, NULL, NULL),
(1195, 29, 'میناب', NULL, NULL, NULL),
(1196, 29, 'هشتبندی', NULL, NULL, NULL),
(1197, 30, 'آجین', NULL, NULL, NULL),
(1198, 30, 'اسدآباد', NULL, NULL, NULL),
(1199, 30, 'بهار', NULL, NULL, NULL),
(1200, 30, 'صالح آباد', NULL, NULL, NULL),
(1201, 30, 'لالجین', NULL, NULL, NULL),
(1202, 30, 'مهاجران', NULL, NULL, NULL),
(1203, 30, 'تویسرکان', NULL, NULL, NULL),
(1204, 30, 'سرکان', NULL, NULL, NULL),
(1205, 30, 'فرسفج', NULL, NULL, NULL),
(1206, 30, 'دمق', NULL, NULL, NULL),
(1207, 30, 'رزن', NULL, NULL, NULL),
(1208, 30, 'قروه درجزین', NULL, NULL, NULL),
(1209, 30, 'فامنین', NULL, NULL, NULL),
(1210, 30, 'شیرین سو', NULL, NULL, NULL),
(1211, 30, 'کبودرآهنگ', NULL, NULL, NULL),
(1212, 30, 'گل تپه', NULL, NULL, NULL),
(1213, 30, 'ازندریان', NULL, NULL, NULL),
(1214, 30, 'جوکار', NULL, NULL, NULL),
(1215, 30, 'زنگنه', NULL, NULL, NULL),
(1216, 30, 'سامن', NULL, NULL, NULL),
(1217, 30, 'ملایر', NULL, NULL, NULL),
(1218, 30, 'برزول', NULL, NULL, NULL),
(1219, 30, 'فیروزان', NULL, NULL, NULL),
(1220, 30, 'گیان', NULL, NULL, NULL),
(1221, 30, 'نهاوند', NULL, NULL, NULL),
(1222, 30, 'جورقان', NULL, NULL, NULL),
(1223, 30, 'قهاوند', NULL, NULL, NULL),
(1224, 30, 'مریانج', NULL, NULL, NULL),
(1225, 30, 'همدان', NULL, NULL, NULL),
(1226, 31, 'ابرکوه', NULL, NULL, NULL),
(1227, 31, 'مهردشت', NULL, NULL, NULL),
(1228, 31, 'احمدآباد', NULL, NULL, NULL),
(1229, 31, 'اردکان', NULL, NULL, NULL),
(1230, 31, 'عقدا', NULL, NULL, NULL),
(1231, 31, 'اشکذر', NULL, NULL, NULL),
(1232, 31, 'خضرآباد', NULL, NULL, NULL),
(1233, 31, 'بافق', NULL, NULL, NULL),
(1234, 31, 'بهاباد', NULL, NULL, NULL),
(1235, 31, 'تفت', NULL, NULL, NULL),
(1236, 31, 'نیر', NULL, NULL, NULL),
(1237, 31, 'مروست', NULL, NULL, NULL),
(1238, 31, 'هرات', NULL, NULL, NULL),
(1239, 31, 'مهریز', NULL, NULL, NULL),
(1240, 31, 'بفروییه', NULL, NULL, NULL),
(1241, 31, 'میبد', NULL, NULL, NULL),
(1242, 31, 'ندوشن', NULL, NULL, NULL),
(1243, 31, 'حمیدیا', NULL, NULL, NULL),
(1244, 31, 'زارچ', NULL, NULL, NULL),
(1245, 31, 'شاهدیه', NULL, NULL, NULL),
(1246, 31, 'یزد', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `commentable_id` int(11) NOT NULL,
  `commentable_type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `text` text COLLATE utf8mb4_bin NOT NULL,
  `is_checked` tinyint(1) DEFAULT '0',
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `commentable_id`, `commentable_type`, `text`, `is_checked`, `is_confirmed`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'App\\GameInfo', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', 0, 1, '2017-09-16 20:30:00', '2018-09-16 19:30:00', NULL),
(2, 2, 1, 'App\\GameInfo', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', 0, 1, '2018-09-16 19:30:00', '2018-09-16 19:30:00', NULL),
(3, 3, 1, 'App\\GameInfo', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', 0, 1, '2018-09-16 19:30:00', '2018-09-16 19:30:00', NULL),
(4, 1, 1, 'App\\GameInfo', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', 0, 1, '2018-09-16 19:30:00', '2018-09-16 19:30:00', NULL),
(5, 5, 1, 'App\\GameInfo', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', 0, 1, '2018-09-16 19:30:00', '2018-09-16 19:30:00', NULL),
(6, 10, 1, 'App\\GameInfo', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', 0, 1, '2018-09-16 19:30:00', '2018-09-16 19:30:00', NULL),
(7, 12, 1, 'App\\GameInfo', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', 0, 1, '2018-09-16 19:30:00', '2018-09-16 19:30:00', NULL),
(8, 1, 1, 'App\\GameInfo', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', 0, 1, '2018-09-16 19:30:00', '2018-09-16 19:30:00', NULL),
(9, 1, 10, 'App\\GameInfo', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', 0, 1, '2018-09-16 19:30:00', '2018-09-16 19:30:00', NULL),
(10, 3, 1, 'App\\GameInfo', 'keyli aliye\na;;;;ii', 0, 1, '2018-10-05 14:49:18', '2018-10-05 14:49:18', NULL),
(11, 3, 1, 'App\\GameInfo', 'بدک نیست\n\n\n\n\n\nخوبخ\n\n\nعالی\n\n\nروتل', 0, 1, '2018-10-05 14:53:17', '2018-10-05 14:53:17', NULL),
(12, 3, 6, 'App\\GameInfo', 'خیلی عالیه\nاما قیمتش زیادهمن اینو دو هفته پیس اجاره کردم خوب بدک نبود\nخیلی عالیه\nاما قیمتش زیادهمن اینو دو هفته پیس اجاره کردم خوب بدک نبود', 0, 1, '2018-10-05 15:27:55', '2018-10-05 15:27:55', NULL),
(13, 3, 10, 'App\\GameInfo', 'dfdfdf', 0, 1, '2018-10-06 07:49:09', '2018-10-06 07:49:09', NULL),
(14, 3, 1, 'App\\GameInfo', 'goog\nvery good', 0, 1, '2018-10-06 10:57:17', '2018-10-06 10:57:17', NULL),
(15, 3, 1, 'App\\GameInfo', 'vfvf', 0, 1, '2018-10-06 11:49:22', '2018-10-06 11:49:22', NULL),
(16, 3, 1, 'App\\GameInfo', 'lfldkfdhfdf', 0, 1, '2018-10-06 11:49:28', '2018-10-06 11:49:28', NULL),
(17, 3, 1, 'App\\GameInfo', 'lfldkfdhfdf', 0, 1, '2018-10-06 11:49:28', '2018-10-06 11:49:28', NULL),
(18, 3, 1, 'App\\GameInfo', 'lfldkfdhfdf', 0, 1, '2018-10-06 11:49:28', '2018-10-06 11:49:28', NULL),
(19, 3, 1, 'App\\GameInfo', 'lfldkfdhfdf', 0, 1, '2018-10-06 11:49:28', '2018-10-06 11:49:28', NULL),
(20, 3, 2, 'App\\GameInfo', 'fdfdf', 0, 1, '2018-10-06 13:09:09', '2018-10-06 13:09:09', NULL),
(21, 3, 1, 'App\\GameInfo', 'دتدتا', 0, 1, '2018-10-06 14:18:48', '2018-10-06 14:18:48', NULL),
(22, 3, 1, 'App\\GameInfo', 'تردتات', 0, 1, '2018-10-06 14:18:53', '2018-10-06 14:18:53', NULL),
(23, 3, 1, 'App\\GameInfo', 'دخاد', 0, 1, '2018-10-08 13:37:37', '2018-10-08 13:37:37', NULL),
(24, 3, 1, 'App\\GameInfo', 'بازی pes خیلی بهتر از fifa هستش', 0, 1, '2018-10-08 13:38:02', '2018-10-08 13:38:02', NULL),
(25, 3, 10, 'App\\GameInfo', 'bb b b', 0, 1, '2018-10-12 11:52:02', '2018-10-12 11:52:02', NULL),
(26, 3, 3, 'App\\GameInfo', 'عالیی', 0, 1, '2018-10-12 13:10:20', '2018-10-12 13:10:20', NULL),
(27, 3, 8, 'App\\GameInfo', 'دیدگاه برای بازی second-son از طرف پویا', 0, 1, '2018-10-13 15:48:44', '2018-10-13 15:48:44', NULL),
(28, 3, 8, 'App\\GameInfo', 'دیدگاه برای بازی second-son از طرف پویا دید گاه دوم', 0, 1, '2018-10-13 15:52:34', '2018-10-13 15:52:34', NULL),
(29, 3, 6, 'App\\GameInfo', 'این دیدگاه از طرف پویا است', 0, 1, '2018-10-14 16:55:52', '2018-10-14 16:55:52', NULL),
(30, 3, 5, 'App\\GameInfo', 'dasdas ad a', 0, 1, '2018-10-14 18:21:25', '2018-10-14 18:21:25', NULL),
(31, 3, 5, 'App\\GameInfo', 'dasdas ad a', 0, 1, '2018-10-14 18:21:25', '2018-10-14 18:21:25', NULL),
(32, 3, 5, 'App\\GameInfo', 'dasdas ad a', 0, 1, '2018-10-14 18:21:28', '2018-10-14 18:21:28', NULL),
(33, 3, 5, 'App\\GameInfo', 'dasdas ad a', 0, 1, '2018-10-14 18:21:32', '2018-10-14 18:21:32', NULL),
(34, 3, 5, 'App\\GameInfo', 'fafafdsfs', 0, 1, '2018-10-17 11:34:39', '2018-10-17 11:34:39', NULL),
(35, 3, 10, 'App\\GameInfo', 'عالیه .....', 0, 1, '2018-10-17 11:48:20', '2018-10-17 11:48:20', NULL),
(36, 3, 7, 'App\\GameInfo', 'fdsfsd sfs', 0, 1, '2018-10-18 11:04:45', '2018-10-18 11:04:45', NULL),
(37, 3, 5, 'App\\GameInfo', 'سلام اولسون سیزه\nعالی \nبهترین \nبسی', 0, 1, '2018-10-18 11:25:06', '2018-10-18 11:25:06', NULL),
(38, 3, 6, 'App\\GameInfo', 'sfds sdf sd\nf s', 0, 1, '2018-10-18 12:12:34', '2018-10-18 12:12:34', NULL),
(39, 3, 10, 'App\\GameInfo', 'good', 0, 1, '2018-10-19 19:23:22', '2018-10-19 19:23:22', NULL),
(40, 117, 1, 'App\\GameInfo', 'perfecthcjncgh !!!!!', 0, 1, '2018-10-22 11:56:15', '2018-10-22 11:56:15', NULL),
(41, 117, 1, 'App\\GameInfo', 'perfecthcjncgh !!!!!', 0, 1, '2018-10-23 07:46:51', '2018-10-23 07:46:51', NULL),
(42, 117, 1, 'App\\GameInfo', 'Jkhlkjlkuglkjbkugb', 0, 1, '2018-10-23 07:57:25', '2018-10-23 07:57:25', NULL),
(43, 117, 1, 'App\\GameInfo', 'Kujguk,b', 0, 1, '2018-10-23 07:59:37', '2018-10-23 07:59:37', NULL),
(44, 117, 1, 'App\\GameInfo', 'Ali rabattu dodo that', 0, 1, '2018-10-23 07:59:58', '2018-10-23 07:59:58', NULL),
(45, 117, 1, 'App\\GameInfo', 'Dyxfhshfxcyh', 0, 1, '2018-10-23 08:03:48', '2018-10-23 08:03:48', NULL),
(46, 117, 1, 'App\\GameInfo', 'Aaaabbbbbbcccccc', 0, 1, '2018-10-23 08:04:23', '2018-10-23 08:04:23', NULL),
(47, 117, 1, 'App\\GameInfo', 'Aaaabbbbcccc', 0, 1, '2018-10-23 08:06:17', '2018-10-23 08:06:17', NULL),
(48, 117, 1, 'App\\GameInfo', 'تااتالدبنغتابد', 0, 1, '2018-10-23 08:20:36', '2018-10-23 08:20:36', NULL),
(49, 117, 1, 'App\\GameInfo', '۱۱۱۲۲۲۲۳۳۳', 0, 1, '2018-10-23 08:21:09', '2018-10-23 08:21:09', NULL),
(50, 3, 7, 'App\\GameInfo', 'یکی از بهترین بازی های سال', 0, 1, '2018-10-23 08:35:15', '2018-10-23 08:35:15', NULL),
(51, 117, 4, 'App\\GameInfo', 'Best game of all time !!!! LOL', 0, 1, '2018-10-23 08:35:24', '2018-10-23 08:35:24', NULL),
(52, 3, 7, 'App\\GameInfo', 'خیلی خوب بود', 0, 1, '2018-10-23 08:35:47', '2018-10-23 08:35:47', NULL),
(53, 3, 7, 'App\\GameInfo', 'بشبش', 0, 1, '2018-10-23 08:36:07', '2018-10-23 08:36:07', NULL),
(54, 126, 2, 'App\\GameInfo', 'Srt5ywsr5ta', 0, 1, '2018-10-23 11:01:45', '2018-10-23 11:01:45', NULL),
(55, 126, 2, 'App\\GameInfo', '3aqte5rtgaze5ryaz5rgzdrgZSgfZertfgAWErfdfsdfsdfsdfsdfdsfsdfsfsfsfsfsfsfsfsfs', 1, 0, '2018-10-23 11:36:11', '2019-12-25 12:56:52', NULL),
(56, 126, 1, 'App\\GameInfo', 'Fsgzsdf', 1, 0, '2018-10-23 11:38:09', '2019-12-25 12:56:45', NULL),
(57, 3, 3, 'App\\GameInfo', 'okeye', 0, 1, '2019-02-14 10:30:38', '2019-02-14 10:30:38', NULL),
(58, 3, 1, 'App\\GameInfo', 'Best', 0, 1, '2019-02-16 08:01:34', '2019-02-16 08:01:34', NULL),
(59, 3, 10, 'App\\GameInfo', 'fsdfsfsfsd', 0, 1, '2019-03-06 14:27:50', '2019-03-06 14:27:50', NULL),
(60, 3, 10, 'App\\GameInfo', 'عالی', 0, 1, '2019-03-06 14:31:53', '2019-03-06 14:31:53', NULL),
(61, 3, 2, 'App\\GameInfo', 'Very good', 0, 1, '2019-03-09 12:24:09', '2019-03-09 12:24:09', NULL),
(62, 3, 1, 'App\\GameInfo', 'Best of all', 0, 1, '2019-03-12 14:50:18', '2019-03-12 14:50:18', NULL),
(63, 3, 3, 'App\\GameInfo', 'بهترین', 0, 1, '2019-03-15 11:36:48', '2019-03-15 11:36:48', NULL),
(64, 133, 1, 'App\\GameInfo', 'Kjghvkjgvjvkjgvkjgvbkjg', 0, 1, '2019-03-15 14:11:47', '2019-03-15 14:11:47', NULL),
(65, 3, 6, 'App\\GameInfo', 'Asdasdas', 0, 1, '2019-03-16 10:56:21', '2019-03-16 10:56:21', NULL),
(66, 3, 1, 'App\\GameInfo', 'Best game ever', 0, 1, '2019-04-03 16:21:28', '2019-04-03 16:21:28', NULL),
(67, 3, 3, 'App\\GameInfo', 'Asaa', 0, 1, '2019-04-05 15:34:28', '2019-04-05 15:34:28', NULL),
(68, 3, 1, 'App\\GameInfo', 'Best game ever', 1, 0, '2019-04-15 06:58:52', '2019-12-30 10:01:06', NULL),
(69, 3, 2, 'App\\GameInfo', 'Asdaasda sdasdasdasdadsasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd', 0, 1, '2019-04-29 07:34:08', '2019-04-29 07:34:08', NULL),
(70, 131, 1, 'App\\GameInfo', 'Good', 0, 1, '2019-05-11 06:50:34', '2019-05-11 06:50:34', NULL),
(71, 3, 2, 'App\\GameInfo', 'Asda', 0, 1, '2019-05-13 13:37:19', '2019-05-13 13:37:19', NULL),
(72, 131, 1, 'App\\GameInfo', 'Best game ever', 1, 0, '2019-05-30 15:23:30', '2020-03-13 15:53:06', NULL),
(73, 131, 1, 'App\\GameInfo', 'Qweetyuii', 1, 0, '2019-05-30 15:23:49', '2019-12-30 10:01:19', NULL),
(74, 3, 1, 'App\\GameInfo', 'Hgfd', 1, 1, '2019-05-30 15:42:29', '2020-03-13 15:53:01', NULL),
(75, 3, 1, 'App\\GameInfo', 'کیسنوکتتاللل', 1, 1, '2019-05-30 15:43:23', '2019-12-30 10:01:01', NULL),
(76, 131, 2, 'App\\GameInfo', 'Offffff che gamyyy', 1, 0, '2019-06-01 13:51:25', '2019-12-30 10:00:57', NULL),
(77, 131, 2, 'App\\GameInfo', 'Qeatusodpxldkdks aliaa bsjxod jdxhhdkd d skdbsjsosvdjdkjdndjidididbekdodkdjjxbdodnsjxkkslsjsbd\nDhdshsjskd\nDjdjshsjskpqiajaapasvdarvnatijezkdkdnsudidhgsjdhshhshsjjsjdjj', 1, 0, '2019-06-03 10:27:23', '2019-12-30 10:00:55', NULL),
(78, 3, 2, 'App\\GameInfo', 'ضقفعهتل اتا\nالنتزاتذ ترتت\nاداراررذذرذدا \nندپممتازان\nناننالانتبت \n\n\nنرزا', 1, 1, '2019-06-04 12:39:20', '2019-12-30 10:01:03', NULL),
(79, 3, 2, 'App\\GameInfo', 'Best game ever', 1, 0, '2019-06-04 12:43:16', '2019-12-30 10:01:04', NULL),
(80, 3, 5, 'App\\GameInfo', 'سنسنیم', 1, 1, '2019-06-04 13:02:20', '2019-12-30 10:01:05', NULL),
(81, 3, 6, 'App\\GameInfo', 'فارس نیوز', 1, 1, '2019-06-29 20:56:16', '2019-12-30 10:01:15', NULL),
(82, 3, 5, 'App\\GameInfo', 'سالام‌اوسون موحسون بالیاااا\nنجسن کییییشی\nنخبر میابدان؟؟', 1, 0, '2019-07-01 20:23:33', '2019-12-30 10:01:14', NULL),
(83, 3, 5, 'App\\GameInfo', 'المنادلل', 1, 1, '2019-07-10 01:55:08', '2019-12-30 10:00:53', NULL),
(84, 3, 5, 'App\\GameInfo', 'vvv', 1, 1, '2019-08-29 20:41:28', '2019-12-30 10:00:52', NULL),
(85, 131, 5, 'App\\GameInfo', 'Fhfghfbng', 1, 1, '2019-09-03 09:46:27', '2019-12-30 10:00:50', NULL),
(86, 131, 5, 'App\\GameInfo', 'Hgggh', 1, 1, '2019-09-26 11:06:44', '2019-12-25 12:56:10', NULL),
(87, 131, 2, 'App\\GameInfo', 'Hshsbsbsjsijh', 1, 1, '2019-09-26 11:57:50', '2019-12-25 12:56:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `console_types`
--

DROP TABLE IF EXISTS `console_types`;
CREATE TABLE IF NOT EXISTS `console_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `console_types`
--

INSERT INTO `console_types` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'پلی استیشن1', NULL, NULL, NULL),
(2, 'پلی استیشن2', NULL, NULL, NULL),
(3, 'پلی استیشن3', NULL, NULL, NULL),
(4, 'پلی استیشن4', NULL, NULL, NULL),
(5, 'ایکس باکس 1', NULL, NULL, NULL),
(6, 'ایکس باکس 164', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
CREATE TABLE IF NOT EXISTS `devices` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `device_type` varchar(255) NOT NULL,
  `client_key` varchar(255) NOT NULL,
  `fcm_token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `user_id`, `device_type`, `client_key`, `fcm_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 3, 'ANDROID', 'Dm6tc3Yul+/zMnfN1vTiKU26b6ZlHTWUKlwSlU3l1niyoqjZldN9avtCl47f0HizPkVZ5X3Dgyko\n2133uOk9xko/ErYxdqJWEnW5HPJxCxBkDds2WcQfe3yORxFlk6Nk', 'fa6ccKdp7-U:APA91bE6-vng0J2q8yNdYbMhb5WgF40hQX3KRiVbYATHSj5lktIgtkN-e1o2al9bC_B9V-kKtHhtOJOnxUShYsYcQP_U_F6_juTIs6T9qUBb7xg3HRO6IWmZLzjtX8X6VwOi-Oj7KJv6', '2018-10-17 08:48:09', '2019-02-16 17:44:26', '2019-02-16 17:44:26'),
(8, 1, 'ANDROID', '13454', '45673', '2018-10-18 21:31:25', '2018-10-18 21:31:25', NULL),
(9, 3, 'ANDROID', 'Dm6tc3Yul+/zMnfN1vTiKU26b6ZlHTWUKlwSlU3l1niyoqjZldN9avtCl47f0HizPkVZ5X3Dgyko\n2133uOk9xko/ErYxdqJWEnW5HPJxCxBkDds2WcQfe3yORxFlk6Nk', 'cPXaRY5dwIo:APA91bF802-UC8F642Ni1G271s3HLvGXuGah_ns1ThisJzgIqBmJESSXESKTkl9wUO5WSThO7_2DlMGmu5HojG0UOBgB0_zYL9U1tdGhVIO7Lu2B0LPaS_lhl8Pi1XxZBn8wRBRpAE-C', '2018-10-18 21:53:48', '2018-10-25 12:39:15', '2018-10-25 12:39:15'),
(10, 0, 'ANDROID', 'IFg7mcRZJ84jvFcRXEawHLeNht7CmPTBaZV/4CeIV1D6PE51eH5siAqTRQyy6Bhy3CPJRbRZYvQO\nzst6gOVYgQ==', 'cPvoDk6w5r8:APA91bHA9wcgCImXa8b3MU9J86CseP_BUF7TsEvT7UZ3a8qRp1cNb9cZIRj4WqCSbo2RzCuN5TeNzMaJE1X0k8R4-h9rSYZmGVn4T_l6hso3scijlyee1Gr6zBxJtT1aQIDxYg4oFJFQ', '2018-10-19 20:18:43', '2018-10-19 20:18:43', NULL),
(11, 3, 'ANDROID', 'not decrypted', 'not decrypted', '2019-02-16 08:32:28', '2019-02-16 09:29:42', '2019-02-16 09:29:42'),
(12, 3, 'ANDROID', 'not decrypted', 'not decrypted', '2019-02-16 09:36:49', '2019-02-16 12:00:26', '2019-02-16 12:00:26'),
(13, 3, 'ANDROID', 'IFg7mcRZJ84jvFcRXEawHK82NUVtwObgnKMnV2r9nTMXI4KhOybhoRClYJmRc6rl', 'euVF-Pk7jhg:APA91bEvex1w9lBgn9uWP6nGzIf6hivN5rVkklZDGSpWDundY7eCDv6Z3w4BjLBWJQ1dtVNQUPYHibJbVZkxruybtJaROYmNVETTTJ-N3hyaQZ0uubdD-HVgMhK5hopSUg5tktqzXbW_', '2019-02-16 11:58:20', '2019-02-16 12:01:42', '2019-02-16 12:01:42'),
(14, 3, 'ANDROID', 'IFg7mcRZJ84jvFcRXEawHK82NUVtwObgnKMnV2r9nTMXI4KhOybhoRClYJmRc6rl', 'euVF-Pk7jhg:APA91bEvex1w9lBgn9uWP6nGzIf6hivN5rVkklZDGSpWDundY7eCDv6Z3w4BjLBWJQ1dtVNQUPYHibJbVZkxruybtJaROYmNVETTTJ-N3hyaQZ0uubdD-HVgMhK5hopSUg5tktqzXbW_', '2019-02-16 12:01:42', '2019-03-08 11:57:10', '2019-03-08 11:57:10'),
(15, 3, 'ANDROID', 'Dm6tc3Yul+/zMnfN1vTiKU26b6ZlHTWUKlwSlU3l1niyoqjZldN9avtCl47f0HizPkVZ5X3Dgyko\n2133uOk9xko/ErYxdqJWEnW5HPJxCxBkDds2WcQfe3yORxFlk6Nk', 'cOFTPQ_xjW4:APA91bFsqOsZ9Wpp8juxs05IQEYZXPX6nxq10eYppxvSepINHqvW_5HwZfT-OntLMknH9sfcp2SdeAURnXUx5IiTt1rizwg9rhatdqVvnNQUrjuiNJaq0N_9u3LMs-12LE0dltDsdfYR', '2019-02-16 17:28:49', '2019-02-16 17:48:54', '2019-02-16 17:48:54'),
(16, 3, 'ANDROID', 'Dm6tc3Yul+/zMnfN1vTiKU26b6ZlHTWUKlwSlU3l1niyoqjZldN9avtCl47f0HizPkVZ5X3Dgyko\n2133uOk9xko/ErYxdqJWEnW5HPJxCxBkDds2WcQfe3yORxFlk6Nk', 'cOFTPQ_xjW4:APA91bFsqOsZ9Wpp8juxs05IQEYZXPX6nxq10eYppxvSepINHqvW_5HwZfT-OntLMknH9sfcp2SdeAURnXUx5IiTt1rizwg9rhatdqVvnNQUrjuiNJaq0N_9u3LMs-12LE0dltDsdfYR', '2019-02-16 17:48:54', '2019-02-19 14:42:34', '2019-02-19 14:42:34'),
(17, 3, 'ANDROID', 'Dm6tc3Yul+/zMnfN1vTiKU26b6ZlHTWUKlwSlU3l1niyoqjZldN9avtCl47f0HizPkVZ5X3Dgyko\n2133uOk9xko/ErYxdqJWEnW5HPJxCxBkDds2WcQfe3yORxFlk6Nk', 'cOFTPQ_xjW4:APA91bFsqOsZ9Wpp8juxs05IQEYZXPX6nxq10eYppxvSepINHqvW_5HwZfT-OntLMknH9sfcp2SdeAURnXUx5IiTt1rizwg9rhatdqVvnNQUrjuiNJaq0N_9u3LMs-12LE0dltDsdfYR', '2019-02-19 14:42:34', '2019-02-28 06:36:05', '2019-02-28 06:36:05'),
(18, 3, 'ANDROID', 'Dm6tc3Yul+/zMnfN1vTiKU26b6ZlHTWUKlwSlU3l1niyoqjZldN9avtCl47f0HizPkVZ5X3Dgyko\n2133uOk9xko/ErYxdqJWEnW5HPJxCxBkDds2WcQfe3yORxFlk6Nk', 'cOFTPQ_xjW4:APA91bFsqOsZ9Wpp8juxs05IQEYZXPX6nxq10eYppxvSepINHqvW_5HwZfT-OntLMknH9sfcp2SdeAURnXUx5IiTt1rizwg9rhatdqVvnNQUrjuiNJaq0N_9u3LMs-12LE0dltDsdfYR', '2019-02-28 06:36:05', '2019-03-08 11:57:10', '2019-03-08 11:57:10'),
(19, 0, 'ANDROID', 'not encrypted', 'dLs7m5P8NXg:APA91bGpMGV9t4d8TXwXg_3miCExTi5Ze4PBJlcdM41WbAm12tj0f-qXaqVNot7JJggzPAkPQDfCPty9DreHys2j7Ke-utKzxBmGmMchTm7HUxuTHDLG6xYCDPO2E2HZnRifDth0H6Os', '2019-03-06 12:41:59', '2019-03-06 12:49:09', '2019-03-06 12:49:09'),
(20, 0, 'ANDROID', 'not encrypted', 'dLs7m5P8NXg:APA91bGpMGV9t4d8TXwXg_3miCExTi5Ze4PBJlcdM41WbAm12tj0f-qXaqVNot7JJggzPAkPQDfCPty9DreHys2j7Ke-utKzxBmGmMchTm7HUxuTHDLG6xYCDPO2E2HZnRifDth0H6Os', '2019-03-06 12:49:09', '2019-03-06 12:55:34', '2019-03-06 12:55:34'),
(21, 0, 'ANDROID', 'not encrypted', 'dLs7m5P8NXg:APA91bGpMGV9t4d8TXwXg_3miCExTi5Ze4PBJlcdM41WbAm12tj0f-qXaqVNot7JJggzPAkPQDfCPty9DreHys2j7Ke-utKzxBmGmMchTm7HUxuTHDLG6xYCDPO2E2HZnRifDth0H6Os', '2019-03-06 12:55:34', '2019-03-06 13:11:36', '2019-03-06 13:11:36'),
(22, 3, 'ANDROID', 'not encrypted', 'cZqaCpi-UtE:APA91bGtV4GWktcNJ3n3ilCtuo5qAsfgESmAbZtROhMgLmHue6waa4yvuL7lDiw207AwCNvJe1XcIPQvacj28veaHbO5mD22I3xwJGE0Hq_lacC6dJH_iuHddItu0kW7EUEvI8hUB8Sc', '2019-03-06 13:11:36', '2019-03-10 17:17:30', '2019-03-10 17:17:30'),
(23, 3, 'ANDROID', 'not encrypted', 'cZqaCpi-UtE:APA91bGtV4GWktcNJ3n3ilCtuo5qAsfgESmAbZtROhMgLmHue6waa4yvuL7lDiw207AwCNvJe1XcIPQvacj28veaHbO5mD22I3xwJGE0Hq_lacC6dJH_iuHddItu0kW7EUEvI8hUB8Sc', '2019-03-08 11:52:25', '2019-03-08 12:36:36', '2019-03-08 12:36:36'),
(24, 3, 'ANDROID', 'not encrypted', 'cZqaCpi-UtE:APA91bGtV4GWktcNJ3n3ilCtuo5qAsfgESmAbZtROhMgLmHue6waa4yvuL7lDiw207AwCNvJe1XcIPQvacj28veaHbO5mD22I3xwJGE0Hq_lacC6dJH_iuHddItu0kW7EUEvI8hUB8Sc', '2019-03-08 16:55:52', '2019-10-24 22:22:59', '2019-10-24 22:22:59'),
(25, 3, 'ANDROID', 'not encrypted', 'cpli_gdwmaw:APA91bFZVWlRTnm-FyRUdnbGHGxNTuBsteSjxKOX60VWl88FJTUHm9iRKhEOxT0frRgCR84NpGOSk5NoLxJj3Y19EHm5V60o8DUmuXaHsGelvZD0ZabntqVuvGNxv5FY9-r651iCLita', '2019-03-10 19:08:40', '2019-10-24 22:22:59', '2019-10-24 22:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
CREATE TABLE IF NOT EXISTS `discounts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `remaining` int(11) NOT NULL,
  `started_at` datetime NOT NULL,
  `finished_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `code`, `percent`, `count`, `remaining`, `started_at`, `finished_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1234', 15, 20, 20, '2020-03-01 00:00:00', '2020-03-07 00:00:00', '2020-03-02 20:30:00', '2020-03-02 20:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `game_for_rents`
--

DROP TABLE IF EXISTS `game_for_rents`;
CREATE TABLE IF NOT EXISTS `game_for_rents` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `game_info_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `address_id` int(11) NOT NULL DEFAULT '1',
  `price` int(11) NOT NULL,
  `region` varchar(255) NOT NULL,
  `can_play_online` tinyint(1) NOT NULL DEFAULT '0',
  `count` int(10) UNSIGNED NOT NULL,
  `is_second_hand` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `game_for_rents_user_id_foreign` (`user_id`),
  KEY `game_for_rents_game_info_id_foreign` (`game_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_for_rents`
--

INSERT INTO `game_for_rents` (`id`, `user_id`, `game_info_id`, `city_id`, `address_id`, `price`, `region`, `can_play_online`, `count`, `is_second_hand`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 14, 1, 145000, '1', 0, 19, 0, '2018-10-30 20:30:00', '2019-11-25 13:59:43', NULL),
(2, 2, 2, 14, 1, 850000, 'all', 0, 20, 0, NULL, NULL, NULL),
(3, 2, 3, 14, 1, 456000, '2', 0, 19, 0, NULL, '2019-11-25 14:00:00', NULL),
(4, 1, 4, 14, 1, 320000, '3', 0, 20, 0, NULL, NULL, NULL),
(5, 3, 5, 14, 1, 540000, 'all', 0, 20, 0, NULL, '2019-02-16 12:19:52', NULL),
(6, 1, 6, 14, 1, 136000, '1', 0, 20, 0, NULL, '2019-02-03 12:21:44', NULL),
(7, 4, 7, 14, 1, 126000, '2', 0, 20, 0, NULL, NULL, NULL),
(8, 5, 8, 14, 1, 54000, '4', 0, 20, 0, NULL, NULL, NULL),
(9, 11, 9, 14, 1, 546000, '1', 0, 0, 0, NULL, '2019-02-05 11:12:56', NULL),
(10, 5, 10, 14, 1, 100, '2', 0, 19, 0, NULL, '2020-03-01 10:14:00', NULL),
(11, 5, 10, 14, 1, 87000, '3', 0, 20, 0, NULL, '2019-02-03 15:53:55', NULL),
(12, 5, 10, 14, 1, 100000, '4', 0, 20, 0, NULL, '2019-02-03 15:51:39', NULL),
(13, 5, 10, 14, 1, 50000, 'all', 0, 20, 0, NULL, '2019-02-19 14:44:31', NULL),
(14, 5, 10, 14, 1, 548000, 'all', 0, 0, 0, NULL, '2019-03-12 09:42:25', NULL),
(15, 5, 10, 14, 1, 684000, '2', 0, 20, 0, NULL, NULL, NULL),
(16, 5, 10, 14, 1, 485000, '3', 0, 20, 0, NULL, NULL, NULL),
(17, 5, 10, 14, 1, 240000, '3', 0, 20, 0, NULL, NULL, NULL),
(18, 5, 10, 14, 1, 120000, 'all', 0, 0, 0, NULL, NULL, NULL),
(19, 5, 10, 14, 1, 678000, '2', 0, 20, 0, NULL, NULL, NULL),
(20, 5, 1, 14, 1, 412000, '1', 0, 20, 0, '2018-10-01 20:30:00', '2019-12-30 09:29:51', NULL),
(21, 1, 13, 14, 1, 5000, 'all', 1, 21, 0, '2019-12-30 09:43:21', '2019-12-30 09:43:21', NULL),
(22, 1, 9, 14, 1, 100000, 'all', 0, 3, 1, '2019-12-30 09:47:36', '2019-12-30 09:54:28', NULL),
(23, 1, 12, 14, 1, 343434, '1', 1, 43, 0, '2020-03-13 16:04:15', '2020-03-13 16:04:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `game_for_rent_requests`
--

DROP TABLE IF EXISTS `game_for_rent_requests`;
CREATE TABLE IF NOT EXISTS `game_for_rent_requests` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `game_for_rent_id` int(10) UNSIGNED NOT NULL,
  `rent_type_id` int(10) UNSIGNED NOT NULL,
  `address_id` int(10) UNSIGNED NOT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `game_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `is_sent` tinyint(1) NOT NULL,
  `is_delivered` tinyint(1) NOT NULL,
  `is_finish` tinyint(1) NOT NULL,
  `is_returned` tinyint(1) NOT NULL,
  `penalty_cost` int(11) DEFAULT '0',
  `finished_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `game_for_rent_requests_user_id_foreign` (`user_id`),
  KEY `game_for_rent_requests_game_for_rent_id_foreign` (`game_for_rent_id`),
  KEY `game_for_rent_requests_rent_type_id_foreign` (`rent_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_for_rent_requests`
--

INSERT INTO `game_for_rent_requests` (`id`, `user_id`, `game_for_rent_id`, `rent_type_id`, `address_id`, `discount_id`, `game_price`, `rent_price`, `is_sent`, `is_delivered`, `is_finish`, `is_returned`, `penalty_cost`, `finished_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 7, 1, 0, NULL, 80000, 25000, 1, 1, 1, 0, 0, '2019-12-30 10:26:38', '2018-08-15 05:39:39', NULL, NULL),
(2, 3, 1, 4, 0, NULL, 100000, 45000, 0, 0, 0, 0, 0, '2019-12-30 10:26:35', '2018-08-15 05:39:39', NULL, NULL),
(3, 3, 2, 2, 1, NULL, 40000, 7500, 1, 0, 0, 0, 0, '2018-11-29 20:30:00', '2018-08-15 05:39:39', '2018-08-15 05:39:39', NULL),
(4, 3, 10, 1, 4, NULL, 100, 10, 0, 0, 0, 0, 0, '2018-10-27 14:08:25', '2018-10-20 14:08:25', '2018-10-20 14:08:25', NULL),
(5, 3, 10, 2, 4, NULL, 100, 15, 0, 0, 0, 0, 0, '2018-10-30 14:28:20', '2018-10-20 14:28:20', '2018-10-20 14:28:20', NULL),
(6, 3, 10, 2, 4, NULL, 100, 15, 0, 0, 0, 0, 0, '2018-10-30 14:32:42', '2018-10-20 14:32:42', '2018-10-20 14:32:42', NULL),
(7, 3, 10, 2, 4, NULL, 100, 15, 0, 0, 0, 0, 0, '2018-10-30 14:32:59', '2018-10-20 14:32:59', '2018-10-20 14:32:59', NULL),
(8, 3, 10, 1, 4, NULL, 100, 10, 0, 0, 0, 0, 0, '2020-03-10 09:22:44', '2019-01-29 10:04:19', '2020-03-03 09:22:44', NULL),
(9, 3, 10, 1, 4, NULL, 100, 10, 0, 0, 0, 0, 0, '2019-02-05 10:05:02', '2019-01-29 10:05:02', '2019-01-29 10:05:02', NULL),
(10, 3, 10, 1, 4, NULL, 100, 10, 0, 0, 0, 0, 0, '2019-02-05 12:31:23', '2019-01-29 12:31:23', '2019-01-29 12:31:23', NULL),
(11, 3, 6, 1, 1, NULL, 136000, 13600, 0, 0, 0, 0, 0, '2019-02-10 12:21:44', '2019-02-03 12:21:44', '2019-02-03 12:21:44', NULL),
(12, 3, 12, 1, 19, NULL, 100000, 10000, 0, 0, 0, 0, 0, '2020-04-02 09:16:24', '2019-02-03 15:51:39', '2020-03-03 10:16:24', NULL),
(13, 3, 11, 4, 19, NULL, 87000, 30450, 0, 0, 0, 0, 0, '2019-03-05 15:53:55', '2019-02-03 15:53:55', '2019-02-03 15:53:55', NULL),
(14, 3, 10, 1, 19, NULL, 100, 10, 0, 0, 0, 0, 0, '2019-02-12 08:50:25', '2019-02-05 08:50:25', '2019-02-05 08:50:25', NULL),
(15, 3, 10, 4, 19, NULL, 100, 35, 0, 0, 0, 0, 0, '2019-03-07 08:51:41', '2019-02-05 08:51:41', '2019-02-05 08:51:41', NULL),
(16, 3, 9, 4, 19, NULL, 546000, 191100, 0, 0, 0, 0, 0, '2019-03-07 11:12:56', '2019-02-05 11:12:56', '2019-02-05 11:12:56', NULL),
(17, 3, 10, 4, 19, NULL, 100, 35, 0, 0, 0, 0, 0, '2019-03-18 12:00:20', '2019-02-16 12:00:20', '2019-02-16 12:00:20', NULL),
(18, 3, 5, 2, 19, NULL, 540000, 81000, 0, 0, 0, 0, 0, '2019-02-26 12:19:52', '2019-02-16 12:19:52', '2019-02-16 12:19:52', NULL),
(19, 3, 3, 4, 19, NULL, 456000, 159600, 0, 0, 0, 0, 0, '2019-03-18 17:44:26', '2019-02-16 17:44:26', '2019-02-16 17:44:26', NULL),
(20, 3, 13, 1, 23, NULL, 50000, 5000, 0, 0, 0, 0, 0, '2019-02-26 14:44:31', '2019-02-19 14:44:31', '2019-02-19 14:44:31', NULL),
(21, 3, 14, 1, 27, NULL, 548000, 54800, 0, 0, 0, 0, 0, '2019-03-19 09:42:25', '2019-03-12 09:42:25', '2019-03-12 09:42:25', NULL),
(22, 137, 1, 1, 28, NULL, 145000, 14500, 0, 0, 0, 0, 0, '2019-12-02 13:59:43', '2019-11-25 13:59:43', '2019-11-25 13:59:43', NULL),
(23, 137, 3, 1, 28, NULL, 456000, 45600, 0, 0, 0, 0, 0, '2019-12-02 14:00:00', '2019-11-25 14:00:00', '2019-11-25 14:00:00', NULL),
(24, 2, 10, 1, 1, NULL, 100, 10, 0, 0, 0, 0, 0, '2020-03-08 10:14:00', '2020-03-01 10:14:00', '2020-03-01 10:14:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `game_for_rent_request_extends`
--

DROP TABLE IF EXISTS `game_for_rent_request_extends`;
CREATE TABLE IF NOT EXISTS `game_for_rent_request_extends` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `game_for_rent_request_id` int(11) NOT NULL,
  `rent_type_id` int(11) NOT NULL,
  `penalty_cost` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_for_rent_request_extends`
--

INSERT INTO `game_for_rent_request_extends` (`id`, `user_id`, `game_for_rent_request_id`, `rent_type_id`, `penalty_cost`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 8, 1, 0, '2020-03-02 08:32:02', '2020-03-02 08:32:02', NULL),
(2, 3, 8, 1, 0, '2020-03-02 08:34:04', '2020-03-02 08:34:04', NULL),
(3, 3, 8, 1, 0, '2020-03-02 08:42:26', '2020-03-02 08:42:26', NULL),
(4, 3, 8, 1, 0, '2020-03-03 09:22:44', '2020-03-03 09:22:44', NULL),
(5, 3, 12, 4, 0, '2020-03-03 10:16:24', '2020-03-03 10:16:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `game_for_shops`
--

DROP TABLE IF EXISTS `game_for_shops`;
CREATE TABLE IF NOT EXISTS `game_for_shops` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `game_info_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `address_id` int(11) NOT NULL DEFAULT '1',
  `price` int(11) NOT NULL,
  `region` varchar(255) NOT NULL,
  `can_play_online` tinyint(1) NOT NULL DEFAULT '0',
  `count` int(10) UNSIGNED NOT NULL,
  `is_second_hand` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `game_for_shops_user_id_foreign` (`user_id`),
  KEY `game_for_shops_game_info_id_foreign` (`game_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_for_shops`
--

INSERT INTO `game_for_shops` (`id`, `user_id`, `game_info_id`, `city_id`, `address_id`, `price`, `region`, `can_play_online`, `count`, `is_second_hand`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 14, 1, 60000, 'all', 0, 19, 0, '2019-12-30 09:43:21', '2019-12-30 09:59:20', NULL),
(2, 1, 1, 14, 1, 67000, 'all', 1, 10, 1, '2019-12-30 09:43:21', '2019-12-30 09:58:57', NULL),
(3, 2, 2, 14, 1, 60000, '2', 0, 20, 0, '2019-12-30 09:43:21', '2019-02-14 10:34:00', NULL),
(4, 5, 6, 14, 1, 60000, '3', 0, 20, 0, '2019-12-30 09:43:21', '2019-02-16 09:29:39', NULL),
(5, 5, 3, 14, 1, 60000, '4', 0, 19, 0, '2019-12-30 09:43:21', '2019-11-25 14:00:15', NULL),
(6, 10, 5, 14, 1, 60000, '2', 0, 0, 0, '2019-12-30 09:43:21', NULL, NULL),
(7, 2, 10, 14, 1, 100, '2', 0, 20, 0, '2019-12-30 09:43:21', '2019-02-16 18:03:10', NULL),
(8, 1, 1, 14, 1, 1000, '1', 0, 20, 0, '2019-12-30 09:43:21', '2019-02-17 18:31:46', NULL),
(9, 1, 13, 14, 1, 5000, 'all', 1, 21, 0, '2019-12-30 09:43:21', '2019-12-30 09:43:21', NULL),
(10, 1, 12, 14, 1, 343434, '1', 1, 43, 0, '2020-03-13 16:04:15', '2020-03-13 16:04:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `game_for_shop_requests`
--

DROP TABLE IF EXISTS `game_for_shop_requests`;
CREATE TABLE IF NOT EXISTS `game_for_shop_requests` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `game_for_shop_id` int(10) UNSIGNED NOT NULL,
  `address_id` int(10) UNSIGNED NOT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `game_price` int(11) NOT NULL,
  `is_sent` tinyint(1) NOT NULL,
  `is_delivered` tinyint(1) NOT NULL,
  `is_finish` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `game_for_shop_requests_user_id_foreign` (`user_id`),
  KEY `game_for_shop_requests_game_for_shop_id_foreign` (`game_for_shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_for_shop_requests`
--

INSERT INTO `game_for_shop_requests` (`id`, `user_id`, `game_for_shop_id`, `address_id`, `discount_id`, `game_price`, `is_sent`, `is_delivered`, `is_finish`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 1, 1, NULL, 100000, 1, 0, 0, '2018-10-15 20:30:00', NULL, NULL),
(2, 3, 3, 1, NULL, 250000, 1, 1, 1, '2018-10-30 20:30:00', NULL, NULL),
(3, 3, 4, 1, NULL, 375000, 1, 1, 0, '2018-11-27 20:30:00', NULL, NULL),
(4, 3, 5, 1, NULL, 275000, 1, 1, 0, '2018-11-27 20:30:00', NULL, NULL),
(5, 3, 7, 3, NULL, 100, 0, 0, 0, '2018-10-18 15:33:03', '2018-10-18 15:33:03', NULL),
(6, 3, 7, 4, NULL, 100, 0, 0, 0, '2018-10-20 13:23:12', '2018-10-20 13:23:12', NULL),
(7, 3, 7, 4, NULL, 100, 0, 0, 0, '2018-10-20 13:36:40', '2018-10-20 13:36:40', NULL),
(8, 3, 8, 4, NULL, 1000, 0, 0, 0, '2018-10-20 13:38:57', '2018-10-20 13:38:57', NULL),
(9, 3, 8, 4, NULL, 1000, 0, 0, 0, '2018-10-20 13:42:46', '2018-10-20 13:42:46', NULL),
(10, 3, 7, 4, NULL, 100, 0, 0, 0, '2018-10-20 13:56:21', '2018-10-20 13:56:21', NULL),
(11, 3, 1, 19, NULL, 60000, 0, 0, 0, '2019-02-03 15:55:45', '2019-02-03 15:55:45', NULL),
(12, 3, 3, 19, NULL, 60000, 0, 0, 0, '2019-02-14 10:34:00', '2019-02-14 10:34:00', NULL),
(13, 3, 4, 19, NULL, 60000, 0, 0, 0, '2019-02-16 09:29:39', '2019-02-16 09:29:39', NULL),
(14, 3, 8, 1, NULL, 1000, 0, 0, 0, '2019-02-16 17:50:44', '2019-02-16 17:50:44', NULL),
(15, 3, 8, 1, NULL, 1000, 0, 0, 0, '2019-02-16 17:58:14', '2019-02-16 17:58:14', NULL),
(16, 3, 7, 1, NULL, 100, 0, 0, 0, '2019-02-16 18:03:10', '2019-02-16 18:03:10', NULL),
(17, 3, 8, 1, NULL, 1000, 0, 0, 0, '2019-02-16 18:12:34', '2019-02-16 18:12:34', NULL),
(18, 3, 8, 23, NULL, 1000, 0, 0, 0, '2019-02-17 18:31:46', '2019-02-17 18:31:46', NULL),
(19, 3, 5, 23, NULL, 60000, 0, 0, 0, '2019-02-18 19:21:29', '2019-02-18 19:21:29', NULL),
(20, 137, 1, 1, NULL, 60000, 0, 0, 0, '2019-11-25 13:59:23', '2019-11-25 13:59:23', NULL),
(21, 137, 5, 28, NULL, 60000, 0, 0, 0, '2019-11-25 14:00:15', '2019-11-25 14:00:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `game_infos`
--

DROP TABLE IF EXISTS `game_infos`;
CREATE TABLE IF NOT EXISTS `game_infos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `persian_name` varchar(255) NOT NULL,
  `console_type_id` int(10) UNSIGNED NOT NULL,
  `age_class` tinyint(4) NOT NULL,
  `production_date` date NOT NULL,
  `can_play_online` tinyint(1) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_infos`
--

INSERT INTO `game_infos` (`id`, `name`, `persian_name`, `console_type_id`, `age_class`, `production_date`, `can_play_online`, `company_name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'uncharted4', 'آنچارتد4', 1, 3, '2018-08-23', 1, 'teen', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', '2018-08-21 19:30:00', NULL, NULL),
(2, 'fortnite', 'فورتنایت', 1, 3, '2018-08-07', 1, 'epic', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', '2018-08-08 19:30:00', NULL, NULL),
(3, 'vr_worlds', 'وآرورلدز', 2, 16, '2018-08-07', 1, 'pegi', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', '2018-07-31 19:30:00', NULL, NULL),
(4, 'crash', 'کرش', 4, 3, '2018-08-07', 1, 'sony', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', '2018-08-23 19:30:00', NULL, NULL),
(5, 'grand theft auto 5', 'گرند تفت اوتو', 4, 3, '2018-08-07', 1, 'pegi', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', '2018-08-23 19:30:00', NULL, NULL),
(6, 'pes2010', 'پی اس 2010', 6, 3, '2018-08-07', 1, 'co', '<p><span style=\"color:red\"><a href=\"http://google.com\"><strong>hello</strong></a> from html</span></p>', '2018-08-15 19:30:00', '2019-12-24 08:27:25', NULL),
(7, 'ninjago', 'نینجاگو', 6, 3, '2018-08-07', 1, 'esrb', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', '2018-09-11 19:30:00', NULL, NULL),
(8, 'second son', 'سکوند سان', 5, 3, '2018-08-07', 1, 'teen', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', '2018-08-07 19:30:00', NULL, NULL),
(9, 'mine craft', 'ماین کرفت', 2, 3, '2018-08-07', 1, 'esrb', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', '2018-08-15 19:30:00', NULL, NULL),
(10, 'batman', 'بتمن', 4, 3, '2018-08-07', 1, 'esrb', '<p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>', '2018-09-12 19:30:00', '2019-12-30 08:54:50', NULL),
(11, 'test', 'تست', 3, 3, '2018-08-07', 1, 'co', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', '2018-08-14 03:49:09', '2018-08-14 04:42:26', NULL),
(12, 'test1', 'تست1', 6, 3, '2018-08-07', 1, 'co', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', '2018-08-14 03:53:28', '2018-08-14 03:53:28', NULL),
(13, 'pes2012', 'پی اس 2012', 6, 3, '2018-08-07', 1, 'co', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', '2018-08-14 04:44:31', '2018-08-14 04:44:31', NULL),
(14, 'newgame', 'نامبازی', 4, 5, '2018-10-18', 1, 'ایزی بازی', 'عالیی میباشد', '2018-10-18 14:08:16', '2018-10-18 14:08:16', NULL),
(15, 'newgame2', 'بازی جدید 2', 5, 7, '2018-10-09', 0, 'ایزی بازی', 'خوب است', '2018-10-18 14:23:56', '2018-10-18 14:23:56', NULL),
(16, 'newGame3', 'بازی جدید3', 4, 5, '2018-10-12', 1, 'ایزی بازی', 'ایزی', '2018-10-18 14:44:59', '2018-10-18 14:44:59', NULL),
(17, 'bazi', 'بازی', 3, 6, '2018-10-10', 0, 'سسبش', 'بش سبسی', '2018-10-18 15:45:14', '2018-10-18 15:45:14', NULL),
(18, 'newgame5', 'بازی جدید', 4, 8, '2018-10-09', 1, 'ایزی بازی', 'خوب', '2018-10-19 15:50:30', '2018-10-19 15:50:30', NULL),
(19, 'new game6', 'بازی جدید 6', 5, 10, '2018-10-09', 1, 'ایزیبازی', 'خوب', '2018-10-19 15:53:19', '2018-10-19 15:53:19', NULL),
(20, 'newgame22', 'بلسیبس', 3, 5, '2018-10-05', 1, 'بستبمس', 'مبتمشت', '2018-10-19 16:02:41', '2018-10-19 16:02:41', NULL),
(21, 'fhfsdljf', 'ئتسمیتب', 4, 8, '2018-10-20', 1, 'سمتب', 'بیسب', '2018-10-19 16:04:43', '2019-12-21 12:45:12', '2019-12-21 12:45:12'),
(22, 'ljljfs', 'تمتبم', 4, 7, '2018-10-12', 0, 'بسیب', 'بسیب', '2018-10-19 16:08:06', '2019-12-21 12:45:08', '2019-12-21 12:45:08'),
(23, 'jflsj', 'ستبیمست', 1, 5, '2018-10-10', 0, 'سبسی', 'بسیب', '2018-10-19 16:11:35', '2019-12-21 12:45:04', '2019-12-21 12:45:04'),
(24, 'test', 'test', 1, 3, '2019-05-08', 1, 'test', '<p>test description</p>', '2019-12-22 08:28:07', '2019-12-22 08:32:15', '2019-12-22 08:32:15'),
(26, 'game1', 'بازی اول', 1, 3, '2019-05-04', 1, 'company_name', '<p>description to game</p>', '2019-12-23 10:31:45', '2019-12-23 10:43:17', '2019-12-23 10:43:17'),
(27, 'game2', '2persian name', 6, 18, '2015-05-05', 0, '2company_name', '<p>test2</p>', '2019-12-23 10:44:48', '2019-12-23 11:18:21', '2019-12-23 11:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `game_rent_types`
--

DROP TABLE IF EXISTS `game_rent_types`;
CREATE TABLE IF NOT EXISTS `game_rent_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `game_for_rent_id` int(11) NOT NULL,
  `rent_type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_rent_types`
--

INSERT INTO `game_rent_types` (`id`, `game_for_rent_id`, `rent_type_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2020-03-02 20:30:00', NULL, NULL),
(2, 1, 3, '2020-03-02 20:30:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `general_messages`
--

DROP TABLE IF EXISTS `general_messages`;
CREATE TABLE IF NOT EXISTS `general_messages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) DEFAULT NULL,
  `text` text,
  `ticket` tinyint(1) DEFAULT '0',
  `sms` tinyint(1) DEFAULT '0',
  `email` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_messages`
--

INSERT INTO `general_messages` (`id`, `sender_id`, `text`, `ticket`, `sms`, `email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'test messags', 1, 1, 0, '2019-12-22 20:30:00', '2019-12-22 20:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'پلتفرم', NULL, NULL, NULL),
(2, 'تیراندازی', NULL, NULL, NULL),
(3, 'جنگی', NULL, NULL, NULL),
(4, 'پازل', NULL, NULL, NULL),
(5, 'هوش', NULL, NULL, NULL),
(6, 'استراتژیک', NULL, NULL, NULL),
(7, 'مسابقه ای', NULL, NULL, NULL),
(8, 'شبیه سازی', NULL, NULL, NULL),
(9, 'جنگی', NULL, NULL, NULL),
(10, 'مسابقه', NULL, NULL, NULL),
(11, 'ورزشی', NULL, NULL, NULL),
(12, 'مرحله ای', NULL, NULL, NULL),
(13, 'پارتی', NULL, NULL, NULL),
(14, 'فکری', NULL, NULL, NULL),
(15, 'هنری', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genre_game`
--

DROP TABLE IF EXISTS `genre_game`;
CREATE TABLE IF NOT EXISTS `genre_game` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `game_info_id` int(10) UNSIGNED NOT NULL,
  `genre_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `genre_game_genre_id_foreign` (`genre_id`),
  KEY `genre_game_game_info_id_foreign` (`game_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre_game`
--

INSERT INTO `genre_game` (`id`, `game_info_id`, `genre_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, NULL, NULL, NULL),
(2, 2, 1, NULL, NULL, NULL),
(4, 8, 2, NULL, NULL, NULL),
(5, 4, 2, NULL, NULL, NULL),
(6, 3, 3, NULL, NULL, NULL),
(7, 5, 5, NULL, NULL, NULL),
(8, 1, 7, NULL, NULL, NULL),
(9, 2, 5, NULL, NULL, NULL),
(10, 7, 15, NULL, NULL, NULL),
(11, 1, 10, NULL, NULL, NULL),
(12, 9, 8, NULL, NULL, NULL),
(14, 24, 2, NULL, NULL, NULL),
(15, 24, 3, NULL, NULL, NULL),
(16, 24, 15, NULL, NULL, NULL),
(22, 26, 1, NULL, NULL, NULL),
(23, 26, 4, NULL, NULL, NULL),
(24, 26, 5, NULL, NULL, NULL),
(25, 26, 6, NULL, NULL, NULL),
(26, 26, 7, NULL, NULL, NULL),
(32, 27, 14, NULL, NULL, NULL),
(33, 27, 15, NULL, NULL, NULL),
(34, 6, 1, NULL, NULL, NULL),
(35, 6, 6, NULL, NULL, NULL),
(36, 10, 6, NULL, NULL, NULL),
(37, 10, 10, NULL, NULL, NULL),
(38, 10, 11, NULL, NULL, NULL),
(39, 10, 15, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_01_075226_create_states_table', 1),
(4, '2018_08_01_075227_create_roles_table', 1),
(5, '2018_08_01_075256_create_cities_table', 1),
(6, '2018_08_01_075345_create_photos_table', 1),
(7, '2018_08_01_075530_create_posts_table', 1),
(8, '2018_08_01_075608_create_tickets_table', 1),
(9, '2018_08_01_075656_create_addresses_table', 1),
(11, '2018_08_01_081146_create_game_infos_table', 1),
(13, '2018_08_01_085239_create_user_finances_table', 1),
(15, '2018_08_01_101358_create_comments_table', 1),
(16, '2018_08_01_103542_create_user_payments_table', 1),
(17, '2018_08_01_103558_create_site_payments_table', 1),
(18, '2018_08_01_111344_create_rent_types_table', 1),
(19, '2018_08_01_111917_create_game_for_shops_table', 1),
(20, '2018_08_01_111933_create_game_for_rents_table', 1),
(23, '2018_08_01_115310_create_role_user_table', 1),
(26, '2018_08_08_071157_create_genres_table', 1),
(27, '2018_08_08_071343_create_table_genre_game', 1),
(32, '2018_08_08_082258_create_user_invites_table', 1),
(33, '2018_08_08_103425_create_game_for_rent_requests_table', 1),
(34, '2018_08_08_103439_create_game_for_shop_requests_table', 1),
(36, '2018_08_10_111240_add_user_name_to_users_table', 1),
(37, '2018_08_11_115144_create_videos_table', 2),
(38, '2018_08_12_073304_create_console_types_table', 3),
(39, '2016_06_01_000001_create_oauth_auth_codes_table', 4),
(40, '2016_06_01_000002_create_oauth_access_tokens_table', 4),
(41, '2016_06_01_000003_create_oauth_refresh_tokens_table', 4),
(42, '2016_06_01_000004_create_oauth_clients_table', 4),
(43, '2016_06_01_000005_create_oauth_personal_access_clients_table', 4),
(44, '2018_08_01_081145_create_console_types_table', 5),
(45, '2018_08_12_000001_create_oauth_auth_codes_table', 6),
(46, '2018_08_12_000003_create_oauth_refresh_tokens_table', 6),
(47, '2018_08_12_000004_create_oauth_clients_table', 6),
(48, '2018_08_12_000005_create_oauth_personal_access_clients_table', 6),
(51, '2018_08_15_083122_add_address_id_to_game_for_rents_table', 9),
(52, '2018_08_15_083226_add_address_id_to_game_for_rent_requests_table', 10),
(53, '2018_08_15_083354_add_address_id_to_game_for_shops_table', 11),
(54, '2018_08_15_083447_add_address_id_to_game_for_shop_requests_table', 12),
(55, '2018_08_15_131413_add_description_to_game_infos_table', 13),
(56, '2018_08_19_132359_create_sliders_table', 14),
(57, '2018_09_17_141528_add_city_id_to_game_for_rents_table', 15),
(58, '2018_09_17_141824_add_count_to_game_for_rents_table', 16),
(59, '2018_09_17_142407_add_city_id_to_game_for_shops_table', 17),
(60, '2018_09_17_142521_add_count_to_game_for_shops_table', 18),
(61, '2018_10_01_135136_add_finished_at_to_game_for_rent_requests_table', 19),
(62, '2018_10_01_143156_add_is_sent_to_game_for_rent_requests_table', 20),
(63, '2018_10_01_144018_add_game_price_to_game_for_rent_requests_table', 20),
(64, '2018_10_01_164816_add_is_sent_to_game_for_shop_requests_table', 21),
(65, '2018_10_01_165210_add_game_price_to_game_for_shop_requests_table', 22),
(66, '2018_10_06_133256_add_region_to_game_for_rents_table', 23),
(67, '2018_10_06_133603_add_region_to_game_for_shops_table', 24),
(68, '2018_10_06_134056_add_persian_name_to_game_infos_table', 25),
(69, '2018_10_08_125121_add_type_to_photos_table', 26),
(70, '2018_10_08_132044_add_type_to_videos_table', 27),
(71, '2018_10_10_101847_remove_some_fields_from_user_table_and_add_full_name', 28),
(72, '2018_10_16_133048_create_devices_table', 29),
(74, '2019_01_29_151713_create_zarinpal_pay_requests_table', 31),
(75, '2019_04_11_121610_add_is_confirmed_and_to_comments_table', 32),
(76, '2019_12_05_114953_create_settlement_requests_table', 32),
(77, '2018_12_10_194000_create_smsirlaravel_log_table', 33),
(78, '2019_12_23_145217_create_general_messages_table', 34),
(79, '2019_12_23_154455_add_sender_id_to_tickets_table', 35),
(80, '2019_12_23_155418_add_mobile_to_users_table', 36),
(81, '2019_12_23_160329_add_sender_id_to_genreal_messages_table', 37),
(82, '2019_12_25_145358_create_sms_privates_table', 38),
(83, '2019_12_25_155114_add_is_checked_to_comments_table', 39),
(84, '2019_12_29_124653_create_rent_shops_table', 40),
(85, '2019_12_29_133223_add_is_second_hand_to_game_for_rents_table', 41),
(86, '2019_12_29_133243_add_is_second_hand_to_game_for_shops_table', 41),
(87, '2019_12_29_140826_create_store_infos_table', 42),
(88, '2019_12_30_121010_add_can_play_online_to_game_for_rents_table', 43),
(89, '2019_12_30_121124_add_can_play_online_to_game_for_shops_table', 43),
(90, '2019_12_30_152154_add_amount_to_settlement_requests_table', 44),
(91, '2019_12_30_161108_add_final_amount_to_settlement_requests_table', 45),
(92, '2020_01_28_130421_create_verification_codes_table', 46),
(93, '2020_02_01_132750_add_national_code_to_users_table', 47),
(94, '2020_02_26_114133_create_game_for_rent_request_extends_table', 48),
(95, '2020_03_01_112429_add_some_fields_to_zarinpal_pay_requests_table', 49),
(96, '2020_03_01_112928_add_user_id_to_zarinpal_pay_requests_table', 50),
(97, '2020_03_01_144900_create_penalty_types_table', 51),
(98, '2020_03_01_151706_add_penalty_cost_to_game_for_rent_request_extends_table', 52),
(99, '2020_03_01_152757_add_penalty_cost_to_game_for_rent_requests_table', 53),
(100, '2020_03_02_123100_create_discounts_table', 54),
(101, '2020_03_02_132646_add_discount_id_to_game_for_rent_requests_table', 55),
(102, '2020_03_02_133949_add_discount_id_to_game_for_shop_requests_table', 56),
(103, '2020_03_03_135734_create_game_rent_types_table', 57);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('005c4d495b7e941a7689534245437a6b31d5d6ed4d2c1e192d891fb3f2881ad8c8a9040cc0e77659', 24, 3, 'izibazi', '[]', 0, '2018-08-13 09:51:47', '2018-08-13 09:51:47', '2019-08-13 14:21:47'),
('01423f2549062022d041ebf6e8789780af5604bfc4aef1385260ca1cb8c2a1ab26b735547e662b11', 95, 3, 'Adidas@sada.com', '[]', 0, '2018-10-18 13:55:40', '2018-10-18 13:55:40', '2019-10-18 17:25:40'),
('0191b5f83814b66e73fdf54a98bd84166f9b42fc2f1e2fc57f63f15a00d726a025b01d16996ad512', 33, 3, 'izibazi', '[]', 0, '2018-08-26 12:39:19', '2018-08-26 12:39:19', '2019-08-26 17:09:19'),
('022b08fc52e99c570eead8a41c407cd533b0c12b1fce1c0443f4d0368e7dce8e210bcf6b5bbb565d', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-10 13:04:34', '2018-10-10 13:04:34', '2019-10-10 16:34:34'),
('02ab8ced0b2ca3fc9221189677e1a8ffe8ff536381cd5a4b11245fcb9bd2adbda5347e408ef4f4f6', 18, 3, 'izibazi', '[]', 0, '2018-08-13 07:35:10', '2018-08-13 07:35:10', '2019-08-13 12:05:10'),
('032ca131f67582a20cab4fe6ed437c0977faffbe0fa0df5288fe43680e7f765f1c924be38384d3fc', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 21:06:30', '2018-10-18 21:06:30', '2019-10-19 00:36:30'),
('0360310b463417334c80bb8d4fd1405ad7fa2a58841e71c490cf8e09203e78fa892c12360042ce25', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-06 13:46:30', '2018-10-06 13:46:30', '2019-10-06 17:16:30'),
('0378ea055fff273dc4ef425a3f0d8799106464abf9bee70ad46fe717d1b2f606f2d30354cbf8a0af', 100, 3, 'Zzdfvz@efdsf.com', '[]', 0, '2018-10-20 07:44:47', '2018-10-20 07:44:47', '2019-10-20 11:14:47'),
('03a1365284107519a36b7f7a4f72072661527d7a1be84ddd000ee730cf93b65ed637b6768483ef62', 3, 3, 'Mohsen3@gmail.com', '[]', 0, '2019-02-05 09:16:47', '2019-02-05 09:16:47', '2020-02-05 12:46:47'),
('03db6efb9358dce2d1ea8ab5dd892bddd810754ae53f3ac71ffe8098c4af6fbeaf46fb3b922d9b38', 1, 3, 'izibazi', '[]', 0, '2018-08-18 03:44:25', '2018-08-18 03:44:25', '2019-08-18 08:14:25'),
('04b79d3f6365bee67b1c836034381c2486d615d2546bedcce467a80d0757a3189e89665855e7d8cc', 11, 3, 'izibazi', '[]', 0, '2018-08-13 09:53:20', '2018-08-13 09:53:20', '2019-08-13 14:23:20'),
('06500ba5336fb1adb03d25686ff082940f8db09b4acc1288b56ca3d8931cee0807cd3ce3a2ebd887', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-17 11:22:39', '2018-10-17 11:22:39', '2019-10-17 14:52:39'),
('0661f67a729170a56bfaa283214099086cc306a4af6247c06d73414380b3296828b1daf25f3193d0', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-14 17:49:04', '2018-10-14 17:49:04', '2019-10-14 21:19:04'),
('06aafabeea6032d9a88d9f20bc8d4385043679f4d9cff3c59c713ef53125df3d2d8d327d3a790c48', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-05-30 15:30:35', '2019-05-30 15:30:35', '2020-05-30 20:00:35'),
('0779eb6a646c54ad593511953a84c7c413249cbfd17f2cb7b595bb001bff733aa215a520475a82ee', 29, 3, 'izibazi', '[]', 0, '2018-08-19 09:18:18', '2018-08-19 09:18:18', '2019-08-19 13:48:18'),
('07c4825a330970f0e9c6abbf9fd5c92cfd970ad657b485610e210fb2c8d9bc9e939f2d4a6e699367', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-06-01 12:08:33', '2019-06-01 12:08:33', '2020-06-01 16:38:33'),
('095e6e4a1cd9d262fdebed953782c1602efb2b33ec9b391f2f775d56323bacd83e1df8cecb71fab3', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-04-18 10:28:53', '2019-04-18 10:28:53', '2020-04-18 14:58:53'),
('09a24bfe5ea020ade29f6917512840b82c38f7202ea9027634a6c53a7836b75a6e5e29065dc9a799', 138, 3, '09145821998', '[]', 0, '2020-02-17 08:34:44', '2020-02-17 08:34:44', '2021-02-17 12:04:44'),
('09a903018799637d7287225c74bd78d74162b7dc07e02964112f90f4e239b5bdf9c32a8535bdd7e5', 31, 3, 'izibazi', '[]', 0, '2018-09-03 09:50:03', '2018-09-03 09:50:03', '2019-09-03 14:20:03'),
('0afec1954a8f7b54fc296b9c47d8570757fa88286bde70fdd0b71626bbf8c5c23f2f8bad190ada54', 29, 3, 'izibazi', '[]', 0, '2018-08-19 09:14:21', '2018-08-19 09:14:21', '2019-08-19 13:44:21'),
('0b31dd763f44ed6e4861bad58885176f280cc354bf30e76fef22f7f69dc5be967e3589bcafade5ad', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-23 10:56:58', '2018-10-23 10:56:58', '2019-10-23 14:26:58'),
('0b3fa30608fcf3cc0d0c247e1671550ff3524ca2c141ed6918870b006e7f57d718f5b41e675afb2c', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-17 13:54:44', '2018-10-17 13:54:44', '2019-10-17 17:24:44'),
('0b87b7354589b9cb23a8e8cf0370a5a1541a8692cdbbe9d8e721b8ddc4af3e72eb10947a9c22911f', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-11 13:37:42', '2018-10-11 13:37:42', '2019-10-11 17:07:42'),
('0ba1bce7ffc7f7b7cc68f8cbec4302cef87040d537250e792af3a29881e9418ca85fad836ab9b50f', 107, 3, 'Ewrwe@ewf.cw', '[]', 0, '2018-10-20 13:08:17', '2018-10-20 13:08:17', '2019-10-20 16:38:17'),
('0c1b6dc89cbc43c79507a43bfccc8689bdcff6dbfa98028d95f11e2d23a05e95c05c4e66f26f77ae', 125, 3, 'pofsdfsd@gmai.sf', '[]', 1, '2018-10-23 10:59:02', '2018-10-23 10:59:02', '2019-10-23 14:29:02'),
('0ccbed63043fa160456c4239f8cc720fb94b6b3c3bacad0b50f0011238f533db7621331f91b21c0a', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-04 12:41:44', '2018-10-04 12:41:44', '2019-10-04 16:11:44'),
('0dacbe8a8cbe5cb3c3bc046610ae7b59eb2c6e5d9cbd633d6370c2f1ee1402960aac150ea4c2f2dc', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-09-18 10:20:16', '2019-09-18 10:20:16', '2020-09-18 14:50:16'),
('0fdf9ae3b0fb28852803b01275e8b7dec5c659cea4b67da8988ac74eec43e3ce3a2cb222f209f5e8', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-17 13:53:07', '2018-10-17 13:53:07', '2019-10-17 17:23:07'),
('0fe1f271257ddcee083017ed422a53085b845ffb4710445da3578108f05892ddadf24c09b1a0094d', 11, 3, 'izibazi', '[]', 0, '2018-08-13 03:49:46', '2018-08-13 03:49:46', '2019-08-13 08:19:46'),
('1018c807be280cafb094fcc88e819ff9f3740dc8fbacc7d1c648011e80f24880ab639353f1b50f75', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-07-25 13:46:11', '2019-07-25 13:46:11', '2020-07-25 18:16:11'),
('1051ae4a4b977bf8933ef9948dc47bb8ecede114692d710d6feb316e83ebdc7a1de558fc36bb97d5', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-13 13:20:39', '2018-10-13 13:20:39', '2019-10-13 16:50:39'),
('1102d29bf5feaffc837da04b34e7d9ce5ae81ef42ee3454f9c0e515784880ee734be98b6cb6863a1', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-06-09 15:55:22', '2019-06-09 15:55:22', '2020-06-09 20:25:22'),
('110d29e83d20d1fa8ff1c08ab86d806a9e70577725c4e1e2f10e73fbb6b7149a659f6c852b9fdc44', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-05-30 15:09:09', '2019-05-30 15:09:09', '2020-05-30 19:39:09'),
('11355c448fb36e132e8f80f1e169e80a57f834cb94740460797e14326210df33470c57e9e770bf7d', 10, 3, 'mohsen6@gmail.com', '[]', 0, '2018-09-04 08:47:24', '2018-09-04 08:47:24', '2019-09-04 13:17:24'),
('118758eb96dacf3ffaabe748fc68b4d71c4537ae6b03621f6da9be6099974f8ca94b0f8260e0902f', 3, 3, 'Mohsen3@gmail.com', '[]', 0, '2019-05-13 12:09:37', '2019-05-13 12:09:37', '2020-05-13 16:39:37'),
('119f9188583bc61590ca3a04d700f0798fffe0bed875331d78fc6c83fd17154b1cf48bde35200e43', 32, 3, 'pouyaakn1@gmail.com', '[]', 0, '2018-10-18 12:44:47', '2018-10-18 12:44:47', '2019-10-18 16:14:47'),
('135f621e0de9046ef2c7a9df694f5640b53e10eebd31c152e89a7589f1eed712e4b687abbb8f11ec', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-11 13:33:04', '2018-10-11 13:33:04', '2019-10-11 17:03:04'),
('1363dbfa496d94127b1cac3317685a3816fa1e0c35e41a31e7023c5dd1a44cbc5b10cff0da28d8bc', 139, 3, '09145821998', '[]', 1, '2020-02-18 13:29:34', '2020-02-18 13:29:34', '2021-02-18 16:59:34'),
('13c1ad53a417e2d27df8ab6f822360aea1fc66c5bfd97ae96000d28134d9b7265e5fcbc187e562b9', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-17 11:43:04', '2018-10-17 11:43:04', '2019-10-17 15:13:04'),
('1410ae2912d9249fde73c77dc262894e3eff73946968d05f3218fae14535d043c7082a156366f317', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2019-02-19 14:42:33', '2019-02-19 14:42:33', '2020-02-19 18:12:33'),
('148a88ac7fa77bb679e9e7a48b2df26f7ee50bdb9842d24a85f82d8bb084e4130e2bf4af7c014d53', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-12 13:01:14', '2018-10-12 13:01:14', '2019-10-12 16:31:14'),
('14e8471ad82e0d1ae67fb21eeeef92fab884cc80a6898a539a152c76c3ca05dae863da99883d6670', 88, 3, 'Sdfsf@ed.com', '[]', 0, '2018-10-18 13:20:44', '2018-10-18 13:20:44', '2019-10-18 16:50:44'),
('15e64348d8007fcc843a4b9e7b2ae1286e6ed2c9649ac63d4e0bea9bfa1d8375af00fa4b573b2a54', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-09-12 07:47:45', '2019-09-12 07:47:45', '2020-09-12 12:17:45'),
('16238c1161022b6cb34b077be75d9775ac216d8bba61bf9c16ef796a8c0b2ef4f6cbbd13b53bb64a', 29, 3, 'izibazi', '[]', 0, '2018-08-19 09:21:31', '2018-08-19 09:21:31', '2019-08-19 13:51:31'),
('164f427d66f4a200f2aa16886af63d12c6b3648f1c2369e8b320ebe0c073b02132c01008057047b5', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-09-26 11:55:42', '2019-09-26 11:55:42', '2020-09-26 15:25:42'),
('16d69b86de0da368c7a733ac48dde14f0edefac6d6100cfdc9d3080d221b36ffddb5e11ebfbfb4a8', 18, 3, 'izibazi', '[]', 0, '2018-08-13 07:35:00', '2018-08-13 07:35:00', '2019-08-13 12:05:00'),
('17dbcedf27f23ced2060a9241f5208b2ee098d53d853baa8c6c26dd05929dc0fa45f49902c709871', 35, 3, 'izibazi', '[]', 0, '2018-08-26 08:22:47', '2018-08-26 08:22:47', '2019-08-26 12:52:47'),
('17f14b76924c3a0fdbf69487fdbf5aa578b722407e1d4ef747bdfe55f6df4c26fd71a06c64373d32', 108, 3, 'Dsfs@dsaf.com', '[]', 0, '2018-10-20 13:11:50', '2018-10-20 13:11:50', '2019-10-20 16:41:50'),
('1815994087339a1bce63abd72b87958eeb57fe76b7c72cb8f03786e8d1a430b1665851ca5e9853c4', 3, 3, '099', '[]', 0, '2020-03-02 08:12:09', '2020-03-02 08:12:09', '2021-03-02 11:42:09'),
('187b10910811d90e3517f23ed7bfe8f61fde613e7b54a3612122ccf84b75fd79d589ed5c1796a54b', 89, 3, 'Ertge@edsf.fdsv', '[]', 0, '2018-10-18 13:22:16', '2018-10-18 13:22:16', '2019-10-18 16:52:16'),
('19c7ef5ea625085d1608925115f5d308653eb5a338d0b421a80e6d121b9208789a48a7a27bd84b6d', 1, 3, 'izibazi', '[]', 0, '2018-08-19 10:13:07', '2018-08-19 10:13:07', '2019-08-19 14:43:07'),
('19f0566a272531b41076bc319c52c8676f46400337fdd485051fae2a19d24a9be2ef9fc57260d5d3', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-06 14:20:31', '2018-10-06 14:20:31', '2019-10-06 17:50:31'),
('1a8ba9d67d54fd3537662369a12121f6401ace2a6ee691a9444cce1725d30260e887d4a8904984dc', 113, 3, 'Sdfgsd@asdfg.com', '[]', 0, '2018-10-22 08:16:01', '2018-10-22 08:16:01', '2019-10-22 11:46:01'),
('1b8e1b8bc198a9a687849deb45ba2bf3a3b0634586695aefa0557f02bc31dbeb2e5d735638f754dd', 3, 3, 'Mohsen3@gmail.com', '[]', 0, '2019-04-20 08:50:30', '2019-04-20 08:50:30', '2020-04-20 13:20:30'),
('1c5b4cfb28192ad2d407caeb52092ff7e08f6aeba57eabd011f506d174771dd6f2fc35fb2840bcbf', 25, 3, 'izibazi', '[]', 0, '2018-08-13 09:18:36', '2018-08-13 09:18:36', '2019-08-13 13:48:36'),
('1e6b3b45e709ef1b93d880b656d9ada439d4be0842c64684b8e5b30ce7682e422f487488f29714cf', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-18 12:46:57', '2018-10-18 12:46:57', '2019-10-18 16:16:57'),
('1ebf519e8e8c49dc926addb8861e827f2c745576f5dafafd85a04a255325ae6cb58d0a06020bfc38', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-12 13:38:36', '2018-10-12 13:38:36', '2019-10-12 17:08:36'),
('1f975016288a561ae83b2b7376742bb4fee8df815b13780faa45eb00e6d787140df584b1d9b407fc', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-07-01 11:29:08', '2019-07-01 11:29:08', '2020-07-01 15:59:08'),
('1fc966303080434baf388448d836699b3c7824ad421493ab96241ed534beca3fe482ecac08ac3e0d', 139, 3, '09145821998', '[]', 1, '2020-02-18 12:22:26', '2020-02-18 12:22:26', '2021-02-18 15:52:26'),
('205435405ffd067849888dc36291e4415cbcbed8c35d1cc737fb5fbb048b947fb79d472bf26fe68f', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-05-30 21:23:51', '2019-05-30 21:23:51', '2020-05-31 01:53:51'),
('2078a41368253033b6dc663d024221f2811653614b7ec555c1323c6be9ceab044aea6bcf1cc9a02b', 31, 3, 'mohsen15@gmail.com', '[]', 0, '2018-10-12 10:13:35', '2018-10-12 10:13:35', '2019-10-12 13:43:35'),
('213aa5990fad2c58c6e8627c099d1fa417706fdfbe5ad950a34a68aed171b24cf551d95056cb4a08', 85, 3, 'pouyaak@gmail.com', '[]', 0, '2018-10-18 12:44:27', '2018-10-18 12:44:27', '2019-10-18 16:14:27'),
('23449f55166ab8f76d258005c18c20e61ee4d33806d40e56a31f17f6ce16892a84e884cb07c7f916', 3, 3, 'Mohsen3@gmail.com', '[]', 0, '2019-09-26 12:41:49', '2019-09-26 12:41:49', '2020-09-26 16:11:49'),
('2383ac8b8d5eafdedd8d4d9bb4ded45e2cd086f2507613a6c3be6ce8ce62f7de27819d66c1da8260', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-09-26 11:30:00', '2019-09-26 11:30:00', '2020-09-26 15:00:00'),
('24b2094ff2736734bb5b5afed70e4b11b60b3c9f5077096ac0a049fb1a61cebd3c425d6c71cbd522', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-07-09 21:14:49', '2019-07-09 21:14:49', '2020-07-10 01:44:49'),
('24fcfc952b18b0f4be0d4ace3cc94155d71da8bf79f30a67880309248f0276dbe5239ae49eaa13cb', 31, 3, 'izibazi', '[]', 0, '2018-08-19 10:15:25', '2018-08-19 10:15:25', '2019-08-19 14:45:25'),
('2537ee52e68be80802913b53db720ca3f007a353a14a5ffe667712ee00259fde4265cbdd3f58820b', 81, 3, 'Qwedq@gail.com', '[]', 0, '2018-10-17 14:56:54', '2018-10-17 14:56:54', '2019-10-17 18:26:54'),
('25ced7c9695f09f0f636b292b3d29f0a258f82515c2ff0594cb29573d971b4cdb497a5a6570d91d1', 140, 3, '09145821998', '[]', 1, '2020-02-19 11:49:31', '2020-02-19 11:49:31', '2021-02-19 15:19:31'),
('274f86111fd7e6c17a50bac956d1601001f8a703effffe642fcabbf3282b4465eb5a87a89e2e2f78', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-04 12:19:18', '2018-10-04 12:19:18', '2019-10-04 15:49:18'),
('2758f087e2a82d0520cd7fe878b916471ce0b82f8ef13baf9d58f0a68573e9a428aa9c41c05724a1', 112, 3, 'Aliali@gmail.com', '[]', 0, '2018-10-20 13:46:57', '2018-10-20 13:46:57', '2019-10-20 17:16:57'),
('27701663fe9d88b64c8c3ba17ccd3f8ca8d05f725806aa1d4bf7b9114fe65c1335137835fa7024a6', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-03-15 13:28:14', '2019-03-15 13:28:14', '2020-03-15 16:58:14'),
('286fd6d32a3b20c400a60a211c5029bb73987e72e9bc8920a2d9e2d17046eaa88deb10a89412ddad', 29, 3, 'izibazi', '[]', 0, '2018-08-19 09:24:23', '2018-08-19 09:24:23', '2019-08-19 13:54:23'),
('288bd3af2adbe8db00d66e0e79438d66d81fe74fcb0b8279c492a986b154d1fc81a8a09c5d28b7af', 93, 3, 'Asdas@afc.com', '[]', 0, '2018-10-18 13:37:18', '2018-10-18 13:37:18', '2019-10-18 17:07:18'),
('296a3f162f29faccd37293598f20cd01a88c16d1a7b4e38eb21a664bbdaa9d839422d5cc0566839c', 29, 3, 'izibazi', '[]', 0, '2018-08-19 09:29:32', '2018-08-19 09:29:32', '2019-08-19 13:59:32'),
('29dd109644b19186b8f8df90516b6f93faab073cdd5379051c8fec811f3ede5606d94faae8b36f7c', 59, 3, 'Asdca@dsaasd.com', '[]', 0, '2018-10-16 14:35:36', '2018-10-16 14:35:36', '2019-10-16 18:05:36'),
('29e90d85f31b2e1c575cad92a427b93504259acbb21b38bf04c6d585dd8b2d6e82882404235d4cd8', 42, 3, 'nnn@ff.com', '[]', 0, '2018-10-10 08:03:31', '2018-10-10 08:03:31', '2019-10-10 11:33:31'),
('2a49b44b6b58fe66fe143097840d5eae624f48454dc1924512e18fa29d40d21ea02c474374024bd1', 68, 3, 'Sdfs@dsf.com', '[]', 0, '2018-10-17 07:46:49', '2018-10-17 07:46:49', '2019-10-17 11:16:49'),
('2ad2ea7ee2425c4d65a536becb6f87550fed459a64a5230eb0c70fab70a59e2f4adb271fd2e63be8', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-06-04 13:04:46', '2019-06-04 13:04:46', '2020-06-04 17:34:46'),
('2af041d03f7d4603743650398fd6601ec99f69c26939d3b5b3db5d8545f20ad29a94be46bc795d07', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2019-03-08 12:36:34', '2019-03-08 12:36:34', '2020-03-08 16:06:34'),
('2b1c77165a8e06710e7c81119971aca03b41cdd3a554b71522f8c5e15097fc8972876826afb24280', 29, 3, 'izibazi', '[]', 0, '2018-08-19 09:25:56', '2018-08-19 09:25:56', '2019-08-19 13:55:56'),
('2b55083acbf397f1721e0b2c813e8fa714ca10631331b632cd01600bc57c75bc0d6f7cefc66f60f7', 1, 3, 'izibazi', '[]', 0, '2018-08-15 07:29:36', '2018-08-15 07:29:36', '2019-08-15 11:59:36'),
('2b91961340b22251f027790bfca716f4c802e6d253cad23d4f02d8f79b556576ece304c284b2f855', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-05-13 09:34:24', '2019-05-13 09:34:24', '2020-05-13 14:04:24'),
('2bfcfd324ac8e136a91249dd472f29c8f50d56d54f2b74d81730de124e13be59c60d05be882f0587', 5, 3, 'mohsen5@gmail.com', '[]', 0, '2018-10-04 15:17:31', '2018-10-04 15:17:31', '2019-10-04 18:47:31'),
('2c04ccfd6eab4eca82899e9cb5f4318ea0fc8f2c3762ba24e163295873671aecb24f75be84c02936', 84, 3, 'Asdasd@weda.com', '[]', 0, '2018-10-17 15:04:42', '2018-10-17 15:04:42', '2019-10-17 18:34:42'),
('2cecc019104737d6b31cde523ca713ace27e23d693c21ee1d360699e92f497cb3599a559f9365729', 12, 3, 'izibazi', '[]', 0, '2018-08-13 04:27:08', '2018-08-13 04:27:08', '2019-08-13 08:57:08'),
('2d801fb824b177ad4cb4697962e766b9dbac294a9ed3d30f279f2c2ae438ff7d6ca55483f9ceeea1', 85, 3, 'pouyaak@gmail.com', '[]', 0, '2018-10-19 16:30:33', '2018-10-19 16:30:33', '2019-10-19 20:00:33'),
('2d9b983e6fc5b7917728d927d4595bcd2fe4244ac8d5d38fd35badd13c2f90ce3c59426cdcd5e2d7', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-04-18 10:00:17', '2019-04-18 10:00:17', '2020-04-18 14:30:17'),
('2dd50a21bf0e48116dea9dff70ec298549d564acdc63dbf0755270ca1ff45bccef4ac1e5ffaee296', 2, 3, '09358080242', '[]', 0, '2020-03-01 10:06:20', '2020-03-01 10:06:20', '2021-03-01 13:36:20'),
('2de898c1f0e9f77d16c4b4f2233bfcbebad1d3ad27c918d56e44b8acfe7f7f131fd0954bf970a023', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-04-18 10:56:51', '2019-04-18 10:56:51', '2020-04-18 15:26:51'),
('2fa707162a2914ccbdde1f69f7be30875c0d405340d5c7297224ae85f5a1065a7150f9f7fb90f9a5', 72, 3, 'Saxasc@fgasaf.com', '[]', 0, '2018-10-17 08:39:05', '2018-10-17 08:39:05', '2019-10-17 12:09:05'),
('3085d960647565b046a8f2396a436cbdc4a6b065cfa812874700da6488cd0fba6ac3951580503b3b', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-04-03 13:59:53', '2019-04-03 13:59:53', '2020-04-03 18:29:53'),
('3151b0cf84a7518cfe3bc7831ce29deba6d72183dc5a87e4b6b21d5fe851f6beeba2196482bff7a7', 3, 3, 'MoHseN3@gmail.com', '[]', 0, '2019-07-26 16:38:07', '2019-07-26 16:38:07', '2020-07-26 21:08:07'),
('3176222bf85b21aa264e5cd0de23190b2642cfcdff04ce7b92a422e7d9d59fc4c864e26d173a9ab8', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-03-12 10:24:50', '2019-03-12 10:24:50', '2020-03-12 13:54:50'),
('31a131c2e5186881ea1da52045d2064874d539ebe7a0ced61c0f1e6e5221aa5213b07420d1528112', 58, 3, 'Mamoti@gmail.com', '[]', 0, '2018-10-16 14:29:50', '2018-10-16 14:29:50', '2019-10-16 17:59:50'),
('3254747855c64ecc509ca4f28029bfeb45bc20264b62a14f2a3cd7a1a24288bce706977f38c0671d', 87, 3, 'Sdfgs@sfvz.com', '[]', 0, '2018-10-18 13:09:54', '2018-10-18 13:09:54', '2019-10-18 16:39:54'),
('327169eae523dc1af3d44da2552c98c358364859dcdf3b210e68381c7c9056a870dedbefd9e5c94e', 29, 3, 'izibazi', '[]', 0, '2018-08-19 09:24:11', '2018-08-19 09:24:11', '2019-08-19 13:54:11'),
('32aa5c4ce2c663dfff7303c8b194ce0e7917f9f60cc070a8e7fdfc8977f26b3532fa945421218353', 139, 3, '09145821998', '[]', 1, '2020-02-18 13:15:46', '2020-02-18 13:15:46', '2021-02-18 16:45:46'),
('32c9fe92b9efc63221f55676e3d40834b38be7e57f60794f27ad2c4ad85f6d887415a72f42264192', 3, 3, 'Mohsen3@gmail.com', '[]', 0, '2019-06-08 10:52:34', '2019-06-08 10:52:34', '2020-06-08 15:22:34'),
('32ca4114e9fd4036b43fe13f445cd7cb1f369ed13a122285429609f28696248f9b294fc3b86d6bf4', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-03-09 12:23:07', '2019-03-09 12:23:07', '2020-03-09 15:53:07'),
('34371278aa07d77fa9fea7fbba4a4b5f6bea18cac38b4ad261a05c48a08028b44f8b5f03fdddf212', 31, 3, 'izibazi', '[]', 0, '2018-08-26 06:34:21', '2018-08-26 06:34:21', '2019-08-26 11:04:21'),
('3459ca67efef46ff04854943484650bf8147fa83e5c83797300a0c6be2c2d576599fca029e3d397d', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-03-27 12:17:26', '2019-03-27 12:17:26', '2020-03-27 16:47:26'),
('3460800d5914f21242063c46a1266b684948960616d09385e458276b1e08ad6d1e9970970c79fb90', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-05-30 15:21:43', '2019-05-30 15:21:43', '2020-05-30 19:51:43'),
('34a02bd1b790e340b3e0de7340eb5ff19485a02d7432a76c85797901c1aa59d548365fcf5816d2b2', 31, 3, 'mohsen15@gmail.com', '[]', 1, '2018-09-17 12:28:10', '2018-09-17 12:28:10', '2019-09-17 16:58:10'),
('34db9fe131bef1c64c30ec28fc9663baf530cede65ea13842cce56acb0ecd5379a6c6ab3790c3db6', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-12 13:51:06', '2018-10-12 13:51:06', '2019-10-12 17:21:06'),
('35ade4f29042974a3677215d6bd56ee7699c0a2217999e285cd4ef9fb21a19e22e6b7729f3daa056', 104, 3, 'Fdgs@dsfsz.com', '[]', 0, '2018-10-20 08:51:20', '2018-10-20 08:51:20', '2019-10-20 12:21:20'),
('369587d9ec8ca61533d37b8beb8905c21936c62a63706c6c26ae3e1e0b0636cec04dd6ea76dbb658', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-03-09 09:46:51', '2019-03-09 09:46:51', '2020-03-09 13:16:51'),
('36ae7da71627a3fd806747ab130587308598f0cde20081b9794c0f7f6c7476674cc2dc0d030a0c31', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-04-03 14:01:42', '2019-04-03 14:01:42', '2020-04-03 18:31:42'),
('36d1e1b0d5487c4c9739241be23da88ff51609548aefae136ab2db23c6c51cce26fbc96713a5b7f7', 28, 3, 'izibazi', '[]', 0, '2018-08-19 06:45:30', '2018-08-19 06:45:30', '2019-08-19 11:15:30'),
('377380e6b229216b9fb2f05fd505e92359d9d1e6ac05584b364b2d7258452a179671116e5d677a6c', 33, 3, 'izibazi', '[]', 0, '2018-09-01 14:33:16', '2018-09-01 14:33:16', '2019-09-01 19:03:16'),
('37ad4519c37cb38b71bbbaa88bbbdfc2537c4d794e5823da72a94847537d4bf7f0b4f0c5cb0aad6f', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 13:06:52', '2018-10-18 13:06:52', '2019-10-18 16:36:52'),
('37efd3f9e979c5fee8d8807941c692607dcc3360efba12f291fcd7e44d506f96a089881b7453edef', 29, 3, 'izibazi', '[]', 0, '2018-08-19 09:23:01', '2018-08-19 09:23:01', '2019-08-19 13:53:01'),
('382d23d4dfbb7fcbc5118d8016c8fdf992ffad360193be56919f315523c2f1e34098c73e7dd1d09f', 39, 3, 'izibazi', '[]', 0, '2018-10-04 13:19:08', '2018-10-04 13:19:08', '2019-10-04 16:49:08'),
('38fa3ce53b9a8178cfb683aa57efb0d0690893afae11b14f727eef9b48063c738cd714d40e7ad817', 112, 3, 'Aliali@gmail.com', '[]', 0, '2018-10-20 13:43:26', '2018-10-20 13:43:26', '2019-10-20 17:13:26'),
('38ff7978aa1cf26c12b9e695f7115052101884cc0b0041877b98c979569d361f62026a7c261b2d43', 42, 3, 'nnn@ff.com', '[]', 1, '2018-10-10 08:03:37', '2018-10-10 08:03:37', '2019-10-10 11:33:37'),
('39fedec039459837509937775697066582c59afd7ca767cb2f1e360da7e21090bf8811adf8912dd8', 31, 3, 'mohsen15@gmail.com', '[]', 1, '2018-09-17 12:38:19', '2018-09-17 12:38:19', '2019-09-17 17:08:19'),
('3b697f998698de4435e243210d9516280724b41038c903e98af8c45cdb61035694c0e0ddd238c1c0', 85, 3, 'pouyaak@gmail.com', '[]', 1, '2018-10-18 13:31:55', '2018-10-18 13:31:55', '2019-10-18 17:01:55'),
('3b749905c63839527e8de82f95916ede07854122ef8d8d61ae90b77bec3635cf73ef70912c91a5a9', 130, 3, 'sfsd@fsf.com', '[]', 1, '2018-10-23 12:07:24', '2018-10-23 12:07:24', '2019-10-23 15:37:24'),
('3c0ed5f2fc460cabda1a2c3ec2270ce854543f6130ef2896b5be6002e062a5d80aa54381300b94b4', 3, 3, '099', '[]', 0, '2020-03-03 08:47:35', '2020-03-03 08:47:35', '2021-03-03 12:17:35'),
('3d83f1a28ed41a5fbe2c56458d2f86702826411e9bf0a640626057abf0434a21b97a294b213f5156', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-03-08 16:56:23', '2019-03-08 16:56:23', '2020-03-08 20:26:23'),
('3d93c8629293bb518f39105b61e0aa3e51128b2a0c888e3d53938b1f43b4029cc3d767a964e5dac4', 127, 3, 'sauduca@dasvc.com', '[]', 0, '2018-10-23 11:43:20', '2018-10-23 11:43:20', '2019-10-23 15:13:20'),
('3e5632b6ed5e59c3457e8ac6e56d1bedf64b8e8e2a0309dde0763789eed1b8895b7dfa12512558a0', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-02-16 09:36:47', '2019-02-16 09:36:47', '2020-02-16 13:06:47'),
('3e5dd5f5af6930da8b00dfd2d359672357f5ffcf29ffcce56c0618e4ea95db1e098b18b878b45558', 128, 3, 'Ali68@gmail.com', '[]', 0, '2018-10-23 11:50:58', '2018-10-23 11:50:58', '2019-10-23 15:20:58'),
('3e6f4b1785417f3ed2e5365dd24f47515af9cf6063ad194d1c52640f31bd8a356423a9facf0c6f01', 29, 3, 'izibazi', '[]', 0, '2018-08-19 09:20:01', '2018-08-19 09:20:01', '2019-08-19 13:50:01'),
('3f7b7365bc884190288b190921ae2aac89a352af8031787d205d7f6b2aa723ede2e0788a0d9b4279', 11, 3, 'izibazi', '[]', 0, '2018-08-13 03:55:02', '2018-08-13 03:55:02', '2019-08-13 08:25:02'),
('3f817e37c8b80b60974e92b027830919ea26e04a28fab7853e4cd38d6f1be5ffc504db3cdaa6e43d', 136, 3, 'Mahsa@yahoo.com', '[]', 0, '2019-10-15 07:37:24', '2019-10-15 07:37:24', '2020-10-15 11:07:24'),
('405c1e9688d418d6c6b933ff915bf39c8ce757adc43153eecce1c34a0157ded055a970a19fed3b01', 52, 3, 'jakaka@gmail.com', '[]', 0, '2018-10-12 13:08:57', '2018-10-12 13:08:57', '2019-10-12 16:38:57'),
('405e6b78a3b6fc75f4ab4e609448d3cd2a8176619693eef24c3000cff36bbaa5577cb45ea629f3bc', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-10 13:09:58', '2018-10-10 13:09:58', '2019-10-10 16:39:58'),
('40ceb99e629ea5de1e51a832e01640ba4b95718173765277ea09e5f6bbf25f2ee8a21a0e02d79d61', 31, 3, 'izibazi', '[]', 0, '2018-08-19 10:15:10', '2018-08-19 10:15:10', '2019-08-19 14:45:10'),
('410a03a4a181b03d9aa159b9360a8dabe3846aa51cec486a218ed01b1bbe9d55382f318a548b493c', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-17 08:02:45', '2018-10-17 08:02:45', '2019-10-17 11:32:45'),
('41b5176413a2d07deae057ceaecf438f91376442425d53deb675b2e23016fbd1e63f1538a7740d36', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 13:34:18', '2018-10-18 13:34:18', '2019-10-18 17:04:18'),
('4224b535df8ade445ea45c8636a668ba1455dfa602130122cbe83839ece143ce2c7563193f8990a0', 118, 3, 'Aliarabgary68@gmail.com', '[]', 0, '2018-10-23 09:45:51', '2018-10-23 09:45:51', '2019-10-23 13:15:51'),
('426a92aca4e5ac811091de63bab1701a68cfcdd779fbecf4ade9592d5468d3c45ede060fcda02917', 1, 3, 'izibazi', '[]', 0, '2018-08-19 04:47:38', '2018-08-19 04:47:38', '2019-08-19 09:17:38'),
('42afc5fb5990fab4a7dfd9aa5c85983383034bb10a7d3f63b35fc5276d59175548f917b8627436a3', 11, 3, 'izibazi', '[]', 0, '2018-08-13 03:53:28', '2018-08-13 03:53:28', '2019-08-13 08:23:28'),
('43058c780a046b7af9c65498ba39c4ee97600cbb5cbcd59038687524df6d507f79eebc7fa01c28e1', 3, 3, 'Mohsen3@gmail.com', '[]', 0, '2019-07-09 17:52:42', '2019-07-09 17:52:42', '2020-07-09 22:22:42'),
('43fd6ee2899c87019b503780d1ed530ca290a05424e0a1b5c10081a83c77c47b5c11ede3959a6aa6', 29, 3, 'izibazi', '[]', 0, '2018-08-19 09:16:01', '2018-08-19 09:16:01', '2019-08-19 13:46:01'),
('45064b8367ce3a4be0c9eba6432030c96247742b6d97efd680adb0306ed10e307257babeca883480', 31, 3, 'izibazi', '[]', 0, '2018-09-01 14:37:59', '2018-09-01 14:37:59', '2019-09-01 19:07:59'),
('451842aff32dc3a92c590a000dcfd3bed646b3b01380ff89fbce594ea488692a1b9d7559d4e0f792', 29, 3, 'izibazi', '[]', 0, '2018-08-19 07:20:21', '2018-08-19 07:20:21', '2019-08-19 11:50:21'),
('456502516793802ca78debcd3c921a89df517b651b73653a971dd5ef5868219bb3f6abca7cbd6e99', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2019-02-16 17:42:53', '2019-02-16 17:42:53', '2020-02-16 21:12:53'),
('45a6c6370f0077f65e3c4408f5483dd6dd5bdf326db13c2a580b1107c851b8f2991f7b57326e36c4', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-07-09 19:10:02', '2019-07-09 19:10:02', '2020-07-09 23:40:02'),
('4635712779d848d0953915421cdd3dd6c5b7277fd9b2a7dc5c0d7e1e1fa4fb06a8180dca74c0734a', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-17 13:02:51', '2018-10-17 13:02:51', '2019-10-17 16:32:51'),
('465ea82b0fa22e82f08e2c715b15c17fbe6d2840f11f247054a8e5138f80238e2f8eb9f93cb23425', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 11:07:32', '2018-10-18 11:07:32', '2019-10-18 14:37:32'),
('471cd5ff9d3f573659a8aa7224c43dbe9fc6f63074a5df69b9b5138796e3ef96baa417d83c459538', 57, 3, 'Dsfs@sdv.com', '[]', 0, '2018-10-16 14:20:32', '2018-10-16 14:20:32', '2019-10-16 17:50:32'),
('47b31f092da07cb3958c47e54766039041d2043ea8043cd121dd47839df134c157e5870258acee36', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-17 08:10:50', '2018-10-17 08:10:50', '2019-10-17 11:40:50'),
('482a84eb015c62f4f86ff1e6e857128efd013f8c16fe375ecaa058c180ef5ca0a25bc4feffa68720', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-11 13:29:56', '2018-10-11 13:29:56', '2019-10-11 16:59:56'),
('482bbc4db68d7e2de11637ceaa7c7a3c5655111d3865a515110a186d45b17e55af3a286d454a2ae6', 31, 3, 'mohsen15@gmail.com', '[]', 0, '2018-09-12 08:33:17', '2018-09-12 08:33:17', '2019-09-12 13:03:17'),
('48c535effa9e0cda2b649971e7a2dcc57b92783a27a6ae7b92a1efef091793412ddd6986c6a0237c', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-17 11:27:49', '2018-10-17 11:27:49', '2019-10-17 14:57:49'),
('49879b8c40b71860bf74ffce94f10df9aa70df59b53fbc425836498b81f21ff3a3ddd2302467021c', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-14 17:42:32', '2018-10-14 17:42:32', '2019-10-14 21:12:32'),
('49b3487bf1f4d17b057fe8bf4bb037cc04d8cad782d95dd3f17c1da44b17e361104e4df83efe7497', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2019-03-08 11:53:33', '2019-03-08 11:53:33', '2020-03-08 15:23:33'),
('4af768d47be6cdf1b78131c406eb782d4f68c6fb56ab9f6c2d4a365b7c9b3d465e98daa2bf95c7fa', 31, 3, 'mohsen15@gmail.com', '[]', 1, '2018-10-08 10:10:57', '2018-10-08 10:10:57', '2019-10-08 13:40:57'),
('4b2d0585d9c0b682d02f3bf5420c7c7e58e176966e00ba090b713180dd2b2383c03c35b7a0305b63', 3, 3, 'Mohsen3@gmail.com', '[]', 0, '2019-06-12 11:55:06', '2019-06-12 11:55:06', '2020-06-12 16:25:06'),
('4b3f72432f5f88b8de1c19233e745cfd0d3960495a949f2e4bc8b8d53dfd28d829d69c49e56f9ab0', 94, 3, 'sadaa@ascda.coms', '[]', 0, '2018-10-18 13:51:35', '2018-10-18 13:51:35', '2019-10-18 17:21:35'),
('4b79ed0162efb44d8e4a2b91f0fd9b7a48d4adfa2a5672032abcee49f6cb7d7d4bd6e35637fd6fe0', 3, 3, 'Mohsen3@gmail.com', '[]', 0, '2018-10-21 16:08:48', '2018-10-21 16:08:48', '2019-10-21 19:38:48'),
('4bebca18f81a8bf948dc5d69a2ff0ee1d548d163724f29f5def2e8e3772df16739875c7dad55dbe5', 31, 3, 'mohsen15@gmail.com', '[]', 0, '2018-09-17 13:06:27', '2018-09-17 13:06:27', '2019-09-17 17:36:27'),
('4c53e55220473ff19a0f1dad0fb94c9d760511f85e241ef722de674dcb4182b2bc7adf48813952fe', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-17 11:03:29', '2018-10-17 11:03:29', '2019-10-17 14:33:29'),
('4cb0d58d98198d4312ae8e24e87053b0afab81cc33b78c745b3235c01ac1ead970bd97842c3140ec', 112, 3, 'Aliali@gmail.com', '[]', 0, '2018-10-20 13:41:08', '2018-10-20 13:41:08', '2019-10-20 17:11:08'),
('4d096c93841dc8ebfa6f6a2fcb2e68d365627140b3f2d9ccff8048995fb0252a4866b8f0a847a1e9', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-05-30 15:22:33', '2019-05-30 15:22:33', '2020-05-30 19:52:33'),
('4d365ef6fe50992b3cb91402b0b9574e4e021de66df4c741723561c73aea372a9d2fc0b8344f3654', 138, 3, '09145821998', '[]', 0, '2020-02-17 09:21:41', '2020-02-17 09:21:41', '2021-02-17 12:51:41'),
('4e2e4a0aa225e76f6349c773af63fd80271d0d30b4476883a6de3e61b95d89b1b3dd9684de3aec96', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-03-16 11:01:41', '2019-03-16 11:01:41', '2020-03-16 14:31:41'),
('4e4ec811441def693c80f30270b1fd4ff3ac84fd1538a9591a2db9d9b1174f2e91b27d0cb9eb1521', 85, 3, 'pouyaak@gmail.com', '[]', 1, '2018-10-18 13:34:43', '2018-10-18 13:34:43', '2019-10-18 17:04:43'),
('4f18d68b300258f96cd6d973aea5f1294a0d571e969715f33127ec3e0d9aa47b21d3f045e9574d38', 67, 3, 'Sdfvszfd@fdgsf.com', '[]', 0, '2018-10-17 07:43:36', '2018-10-17 07:43:36', '2019-10-17 11:13:36'),
('4fa9c23fb61e67533e8bc8a9e3e6beab536c26538559c01b2fe89078850ede7f9b82d90dac6ece8f', 79, 3, 'Sd@dsdc.com', '[]', 0, '2018-10-17 13:55:51', '2018-10-17 13:55:51', '2019-10-17 17:25:51'),
('50c455f572bd369ec434f8d44a06b78fb4809e7d3ba6cf2f56644c414435d576abd965e860377ed1', 1, 3, 'izibazi', '[]', 0, '2018-08-15 04:49:55', '2018-08-15 04:49:55', '2019-08-15 09:19:55'),
('5210a32089b5e6c35676a855880cf7e83477a276d1b53a990ffc33455977327a050ad7a64b4cbfc4', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-03-08 10:52:29', '2019-03-08 10:52:29', '2020-03-08 14:22:29'),
('5275dd2090f31765e55109aac908b98a588a333ecd5d81b51797b8ea1a55eb120122d6369a53d419', 12, 3, 'izibazi', '[]', 0, '2018-08-13 04:28:04', '2018-08-13 04:28:04', '2019-08-13 08:58:04'),
('52a4b711c208f1decc16c3e4a2326bbfd0d0ba15020242b3335e786ed132f6a595810805dab1e118', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-17 11:52:50', '2018-10-17 11:52:50', '2019-10-17 15:22:50'),
('52fa5a368490828732eb4d6d343e7384f3e8d2a880cbbd1d799945287b1b0abb16f7dbe76ef49c4b', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-18 21:33:13', '2018-10-18 21:33:13', '2019-10-19 01:03:13'),
('53228687647cf8031729732efa2bc823dc18d55775c10d19c4a3323c58867222a4ddb703df4aa3a2', 74, 3, 'Asdas@dasf.com', '[]', 0, '2018-10-17 13:01:58', '2018-10-17 13:01:58', '2019-10-17 16:31:58'),
('53408db625e60bfb6dd8aee34298d11b1bdda48e1abca909ad1e54689c8c575b33bbb596ada2ccd6', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-06-09 15:39:00', '2019-06-09 15:39:00', '2020-06-09 20:09:00'),
('537a2bb0dd985aac0978ea34127589cbc0f1785d75484bcd76b9ab8f371229720859db4ce3ce5810', 2, 3, '09358080242', '[]', 0, '2020-02-23 12:48:19', '2020-02-23 12:48:19', '2021-02-23 16:18:19'),
('5489788188479eb580e79c2589e62d53c66598960c49b671cfb3ece860a40c30dd45565f02056534', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-09-26 11:57:25', '2019-09-26 11:57:25', '2020-09-26 15:27:25'),
('54fbb74b9607220e454cb6c91c36013427d56d67b6587636441bf87a2ac2565477df70fc9ab80174', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 13:32:42', '2018-10-18 13:32:42', '2019-10-18 17:02:42'),
('5540f89e4ae0db8e6b9207b78a9483aa5c60b29f0821642b6270de6246b4faaea22a9967562105b9', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-10 13:06:31', '2018-10-10 13:06:31', '2019-10-10 16:36:31'),
('55bbab7a72fa0b0c9a19ec6a4d117124d8080ef0f2d708110aa141eee3274e8259790502c590029b', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-09-26 09:00:32', '2018-09-26 09:00:32', '2019-09-26 12:30:32'),
('55e29ab82855119b600207f88c74cb359b1eb806bad8868b57fa07b7173a7ed6b25b489867852140', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-03-06 13:11:35', '2019-03-06 13:11:35', '2020-03-06 16:41:35'),
('55edb622b540bcf68cb1ae892bd04bedee771b80932dffd4ffeadb28c3f27fe55fc5fcb34f2afb7e', 29, 3, 'izibazi', '[]', 0, '2018-08-19 09:16:07', '2018-08-19 09:16:07', '2019-08-19 13:46:07'),
('5625dafcf27b0d95110c779d0de64f36d03a2bd474021343d3bb3769d895f88e1e1a84ca0b356b3a', 44, 3, 'sdfs@sdfsd.csfs', '[]', 0, '2018-10-10 12:25:47', '2018-10-10 12:25:47', '2019-10-10 15:55:47'),
('563c824c550ad83dc68db75e948d7fb3e8c82863a6c098eb8d3a1e489ca56ff13941dea46d60ea27', 65, 3, 'Sdf@sdg.com', '[]', 0, '2018-10-17 07:18:11', '2018-10-17 07:18:11', '2019-10-17 10:48:11'),
('564c9a99f5f4b5b694c68d90ba6db6dcfbc41be01622c110fbfa478e2fdcd2529b17718ff9f2ae2a', 80, 3, 'Saa@fvsd.com', '[]', 0, '2018-10-17 14:48:39', '2018-10-17 14:48:39', '2019-10-17 18:18:39'),
('569a241fafd9cca486d858f2498dbf5fce742ea6ec04e7ba75e7c835baf83cc7a84f568710b7296c', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-06-03 12:05:12', '2019-06-03 12:05:12', '2020-06-03 16:35:12'),
('57887ddd5470410fb268d3942fc68977fb097288071b6af6e301a16f8872520f03ed0f36155ca00a', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 21:31:54', '2018-10-18 21:31:54', '2019-10-19 01:01:54'),
('58494fde9c9b7c12bb0b0339ed82ec2c3a6a47c055676b8f2d79f35fc8d440feeef478d120760156', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-18 12:44:34', '2018-10-18 12:44:34', '2019-10-18 16:14:34'),
('58a3e49ecf327447b8509619dc42c395a5427e75c5998b5f9b7e4b118e2dd8e0d8413dcaa32e537a', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 13:31:39', '2018-10-18 13:31:39', '2019-10-18 17:01:39'),
('590404a7e869299d8758e39e8c7763574ad68b099831fb3aee77b2c056a02365f637ae0684946a5e', 31, 3, 'mohsen15@gmail.com', '[]', 0, '2018-09-03 11:15:37', '2018-09-03 11:15:37', '2019-09-03 15:45:37'),
('5a6e2dc2aa3a796c6033937a243968b6153b0472ab85a575cae9262b27bbc0823503ff7245d19865', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-06-01 11:57:48', '2019-06-01 11:57:48', '2020-06-01 16:27:48'),
('5a9460ccd84026b12c1afe279a6c19604dfb73cd16ff18ff37c623c89a6be27b834f9a9e3e4f6124', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-03-06 16:23:59', '2019-03-06 16:23:59', '2020-03-06 19:53:59'),
('5b2eafc14139cc1e7785abe00a792972c4f695ab68699919fde3cde312be4cb5e94e4889b8e9fe56', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-23 12:07:43', '2018-10-23 12:07:43', '2019-10-23 15:37:43'),
('5c2b760e44ed1359b66904648c58e8b8979bc6633ed0218690e0df334212e5b6af9bfcb5b5ca4f2a', 85, 3, 'pouyaak@gmail.com', '[]', 0, '2018-10-18 13:01:58', '2018-10-18 13:01:58', '2019-10-18 16:31:58'),
('5cc0bb9938a3abdc231e52264ed53c61cbb9a20b1caa3c4ea12cbd20a8f32b93264e23abedcdc89d', 27, 3, 'izibazi', '[]', 0, '2018-08-13 10:33:37', '2018-08-13 10:33:37', '2019-08-13 15:03:37'),
('5ccab78593b4c48ac03161626135530b3f7b9f082a44ebfc76c5c2728934cd3036ba3bc5a9b38a88', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 13:33:48', '2018-10-18 13:33:48', '2019-10-18 17:03:48'),
('5ce52716979eb6f1e538c79711e0062cdc4ded190523259d27d12d9bfc373845a5e3bdcc5a87daa5', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-04-18 10:53:06', '2019-04-18 10:53:06', '2020-04-18 15:23:06'),
('5d81dcd2b053ff68a12c7347b3b7e424ba71aed206fa4665ffcc1cca0197d6bf80ba02270d1b33ad', 36, 3, 'izibazi', '[]', 0, '2018-08-29 10:14:17', '2018-08-29 10:14:17', '2019-08-29 14:44:17'),
('5ddfb8e896e6ccb695aa741599fbd1220910559e828e90dc605abd54335e3b6303effd0981c36d9d', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-07-25 13:47:35', '2019-07-25 13:47:35', '2020-07-25 18:17:35'),
('5e6b231190ff9de38322f8fffaadfa6073150c85d3d213f4e16eb4727c0ea3efd6d9f3d6f66c8513', 126, 3, 'Jhbsadfjn@dsf.cio', '[]', 0, '2018-10-23 11:01:36', '2018-10-23 11:01:36', '2019-10-23 14:31:36'),
('5e89bca07b6eab28d1026cffb41fd72434c98320e8b64114c73359902c228200618c89eed1c8649d', 69, 3, 'Trump@gmail.com', '[]', 0, '2018-10-17 07:50:57', '2018-10-17 07:50:57', '2019-10-17 11:20:57'),
('5e9da83ab1463e08a5d4afc8ec7da988bf0f4e63dae0ffb2e5e8d3310273f9aa40ebe5e12eae44cb', 4, 3, 'mohsen4@gmail.com', '[]', 0, '2018-09-26 08:55:39', '2018-09-26 08:55:39', '2019-09-26 12:25:39'),
('5f43a42d02dd3e3fa61ee3480d8157db46f23695f72d0ef2f39b71c5d4b32f809778f23155596245', 29, 3, 'izibazi', '[]', 0, '2018-08-19 09:16:16', '2018-08-19 09:16:16', '2019-08-19 13:46:16'),
('5f89fe9e0b626a96d27e5f77570e25cdc667b5b40b5bbdb26b3a9eb070de1d881b944ccceb6b151c', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-03-06 12:49:06', '2019-03-06 12:49:06', '2020-03-06 16:19:06'),
('5faa33968819e10e36221ba40cfd56c9b524dc54af6bda815a6476b8c6469693dada830ebecd3a72', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-05-13 09:34:57', '2019-05-13 09:34:57', '2020-05-13 14:04:57'),
('60a8dfb797bbcfd8722c9aedd01abd7232f8d06d01c1c0253f3c976fde66575fffdaaca2aa444e58', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-09-03 09:50:55', '2019-09-03 09:50:55', '2020-09-03 14:20:55'),
('60f290f92078309ab7c910365a51d659e1017e2e455e1a52f89a2a31a04f7b5e5c11e1857e07c48d', 75, 3, 'SDv@dsvfd.com', '[]', 0, '2018-10-17 13:44:05', '2018-10-17 13:44:05', '2019-10-17 17:14:05'),
('610e96d04a547c898b22398d14c51e3ea4eef13b26ccc169d37f37a1813c324de60ae06485dad59f', 3, 3, 'Mohsen3@gmail.com', '[]', 0, '2019-06-08 11:56:13', '2019-06-08 11:56:13', '2020-06-08 16:26:13'),
('61231fb7455cc668ad0bab6aff625c115adf9619de6237f6554cf97fd19916f53afe05ebbc3ef241', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-07-25 14:11:28', '2019-07-25 14:11:28', '2020-07-25 18:41:28'),
('61cf1125550b52d94a41a0a5e9bdaff1cb521c9aefd7037be50d7ccc933d466141314a77999c9bf2', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-06-08 11:33:54', '2019-06-08 11:33:54', '2020-06-08 16:03:54'),
('621ac25a462911a7ffa3caa4587a0457dfc62e385cc21a51469fc2b73430495126c1b545dae7fc24', 31, 3, 'izibazi', '[]', 0, '2018-09-01 13:51:03', '2018-09-01 13:51:03', '2019-09-01 18:21:03'),
('626f9ff3bec009a468f0a39fe04d0a221471487389d4aafce500273cdd904863a044dbb40e5c37ec', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-05-13 09:38:03', '2019-05-13 09:38:03', '2020-05-13 14:08:03'),
('628006700fd097bdbdd340d6ddef7a2091b1f0ae488d51aebdee7da86dc0499df12d919d177d460a', 33, 3, 'izibazi', '[]', 0, '2018-08-26 12:43:10', '2018-08-26 12:43:10', '2019-08-26 17:13:10'),
('634cc89d217f643d9949f5b883b7adee173f867719117f857251c4d8478679193947066632b7f132', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 13:27:46', '2018-10-18 13:27:46', '2019-10-18 16:57:46'),
('6388b292abd5abd81211ab750db00f8a3adab1d758a44389c8196f5546331585072736e0c97ae174', 31, 3, 'mohsen15@gmail.com', '[]', 1, '2018-09-17 11:13:36', '2018-09-17 11:13:36', '2019-09-17 15:43:36'),
('639f99a84f7063fd1293fa1010b79b4da56389f92e1c376485a6ac694be7b6b0a9d48339917318ee', 137, 3, 'enamad@gmail.com', '[]', 0, '2019-11-25 13:57:01', '2019-11-25 13:57:01', '2020-11-25 17:27:01'),
('642f97da1078dcfee769af91a543e05c6264386623f3d864694720c79585e48e90610df92fa42440', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-17 11:37:27', '2018-10-17 11:37:27', '2019-10-17 15:07:27'),
('653dfd05a5715ae8cd3300c87656df092a1d4bf1d66f38b740f86f4aff84c9c6cb66d60cfccec2f9', 3, 3, 'Mohsen3@gmail.com', '[]', 0, '2019-02-05 09:27:10', '2019-02-05 09:27:10', '2020-02-05 12:57:10'),
('65728650ce455a8c410acb4be8458a24268f593d2312a810ba73296f40d6aec0ec4b4d9df046fbe9', 27, 3, 'izibazi', '[]', 0, '2018-08-13 10:33:34', '2018-08-13 10:33:34', '2019-08-13 15:03:34'),
('65ee7779ba9a836d4d111ab89ea5b2da3e5920b4a752459bac529c7bacfc94da6d59300f2b9f0aac', 31, 3, 'mohsen15@gmail.com', '[]', 1, '2018-09-17 12:20:45', '2018-09-17 12:20:45', '2019-09-17 16:50:45'),
('664d35c32310f2b15db90a6cef1f82b3543616058be86bb80c3146f2445d6526314848dc594ae49a', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-07-25 14:13:48', '2019-07-25 14:13:48', '2020-07-25 18:43:48'),
('6663b46fd53256fe0d45ba57c1d182e920d0a372f68580df2ec51b34810a20987faf33ce74c0fc96', 85, 3, 'pouyaak@gmail.com', '[]', 1, '2018-10-18 12:28:01', '2018-10-18 12:28:01', '2019-10-18 15:58:01'),
('66ead13f02e006a096214ddc8f971c8ebbb7179c620f024f6153ea7407ff27fa3c90ec8347f6ed35', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-23 11:57:28', '2018-10-23 11:57:28', '2019-10-23 15:27:28'),
('67091ca3578c671365aca3b7fc6d18cabefbf8cfbf1242751f6b61b16d5cc4f81f227820e6db8643', 3, 3, 'MOHSEN3@GMAIL.COM', '[]', 0, '2019-03-06 17:24:16', '2019-03-06 17:24:16', '2020-03-06 20:54:16'),
('671eec4d9675df1bd8a561f56e916123a7d00305efe18030c9feb79091d84757ea9dd24d49d6a30e', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-05 14:52:49', '2018-10-05 14:52:49', '2019-10-05 18:22:49'),
('681399bb7b235f472074f7bdda60373e5bd91b89e7207148259f51c7e521037fb3ed378648ca85e0', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-03-15 14:19:46', '2019-03-15 14:19:46', '2020-03-15 17:49:46'),
('68ea4bc3dad288f99e205467a95f11656611b12fa4816ebd736eee50b8daa5f45e8b8c66d600ab5d', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-04-18 09:34:21', '2019-04-18 09:34:21', '2020-04-18 14:04:21'),
('69b64e297e79cce4b2f7ce36fdb21eab6c8442827007f25531ad4014cb821c8aa903a77dce60fa72', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-18 21:54:13', '2018-10-18 21:54:13', '2019-10-19 01:24:13'),
('69ffd8c3cc300ff6ed35cd98abc299b7b3e3dd1bf55e0c3de4917ef5344f338bcecc1871c0a0fb0f', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-11 09:41:24', '2018-10-11 09:41:24', '2019-10-11 13:11:24'),
('6b329e140a9981579284ab2df8479bee8c675d92c614d5e3730a85d39adcc93a17148b733b015ae2', 36, 3, 'izibazi', '[]', 0, '2018-08-29 10:14:51', '2018-08-29 10:14:51', '2019-08-29 14:44:51'),
('6ba368d49ed1e3cebe3f93e2334450637bb034aa65f4953f82a70128eb8de0bdd8c95b8b2b5fd3b6', 54, 3, 'aliarabgary@gmail.com', '[]', 0, '2018-10-16 14:06:18', '2018-10-16 14:06:18', '2019-10-16 17:36:18'),
('6c123b728b0f3d08f55b51123ff2b635abb69995882a00fce7a61374d9ad59a549e000d29b9fce2e', 33, 3, 'izibazi', '[]', 0, '2018-08-26 12:42:18', '2018-08-26 12:42:18', '2019-08-26 17:12:18'),
('6c22f04ecd0f5706c3407f014e32a4646dee536a3b3c1dfa541d7e236a7d1bc07a38a4439b617cf7', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-07-17 12:01:25', '2019-07-17 12:01:25', '2020-07-17 16:31:25'),
('6c659949b7a46b79d441568c10cdd04e8df4c250fba4afddfc952d627c7d9cf97af86294d5c66f5f', 99, 3, 'aliiarabgary@gmail.com', '[]', 0, '2018-10-18 14:35:15', '2018-10-18 14:35:15', '2019-10-18 18:05:15'),
('6ce8bdb87b4cbcea571411c77326cd25aaa4065d1b7db3a184bd94dddb197d7e5bc5775703dec674', 29, 3, 'izibazi', '[]', 0, '2018-08-19 09:22:13', '2018-08-19 09:22:13', '2019-08-19 13:52:13'),
('6d687403475422107cd969c57d25f3e88d59adbbe069b66823c20def1427b3c34f1146ddb3453ac4', 85, 3, 'pouyaak@gmail.com', '[]', 0, '2018-10-19 14:25:46', '2018-10-19 14:25:46', '2019-10-19 17:55:46'),
('6e3ca892f30984a39461b6ea84b7e0199a7b006f33554e8766b3a1b92243d0b060b6d44d1967e74f', 31, 3, 'mohsen15@gmail.com', '[]', 0, '2018-10-16 10:56:22', '2018-10-16 10:56:22', '2019-10-16 14:26:22'),
('6f0db93b3a67af6eabfbbf749a5f30df955ed931baeab7cf3cab85b97655d50477d66340adb338ea', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 11:24:41', '2018-10-18 11:24:41', '2019-10-18 14:54:41'),
('6f3edc5de992416cd62fdab1aedf75c4106450f89077d20c1e2c248c93bb6c3c3a006da98f64dd75', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-23 10:27:26', '2018-10-23 10:27:26', '2019-10-23 13:57:26'),
('6f75b9e1a5dc4eeaba388adea88371db36f10bd980672ebc32b1f7c9bf9385b22f4145a0e4795fc3', 32, 3, 'pouyaakn1@gmail.com', '[]', 0, '2018-10-18 12:42:39', '2018-10-18 12:42:39', '2019-10-18 16:12:39'),
('6fbe51ff0e62e3cf4a01d7530bfaeb69f3923c875016fb6830f95e734c43b78078fb8ef78f303b45', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-23 08:41:50', '2018-10-23 08:41:50', '2019-10-23 12:11:50'),
('7003f125c84ab50a991f0a17cb639017640597fa13d02e6e71e50558c4a5407af55387c8262556ce', 33, 3, 'izibazi', '[]', 0, '2018-09-01 13:32:31', '2018-09-01 13:32:31', '2019-09-01 18:02:31'),
('70b0789ad12a66923c025cf9e4ea3d30fcfbb13b0514d23340e946b3a7633cfc4da5aee5a4cbe63b', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-11 09:39:45', '2018-10-11 09:39:45', '2019-10-11 13:09:45'),
('7146fbb9dbb765e67b21d4103561e2cfb9138cdeede76543a7860f3264d87a3604213299cbdd3cbc', 110, 3, 'Dasda@wadf.casd', '[]', 0, '2018-10-20 13:16:46', '2018-10-20 13:16:46', '2019-10-20 16:46:46'),
('71795555f00966c1d606e21db9683c8e115a1296994cba0b39b0a92b187cd5e4dd6778f214caf1ff', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-06-01 11:54:38', '2019-06-01 11:54:38', '2020-06-01 16:24:38'),
('7254d607c5a3165ed2c98b2844d549e73a86a106ad960cc34599fcda86c96f55ff52930a930dea43', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-17 11:22:16', '2018-10-17 11:22:16', '2019-10-17 14:52:16'),
('72a43fee7530094b0fa119317d82ab3cb9ef4fab09a3efc724bcffabe1a7445fec2ffa55f044732e', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-08-29 15:48:04', '2019-08-29 15:48:04', '2020-08-29 20:18:04'),
('72a5fbacb2038fbcab3ea281f82aa45a96febfe18ea97c4acccd9c808c4b0434ae14ecea70fe277a', 52, 3, 'jakaka@gmail.com', '[]', 1, '2018-10-12 13:09:00', '2018-10-12 13:09:00', '2019-10-12 16:39:00'),
('72a85ef4eb208337129c34e25b6768cd75614064f63680a9e0ac88631090c2b70a8bb756706ae797', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-04-18 09:07:27', '2019-04-18 09:07:27', '2020-04-18 13:37:27'),
('7352ffa7222fecedaf94db967b26de80d54c24603fecb73487247bd0a20d0312aa80000078582b31', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-11 11:45:17', '2018-10-11 11:45:17', '2019-10-11 15:15:17'),
('73f8cf922db1b770c6a412b50a375db883fd0a4e90a52dac8378c1512ffc3c4c068676b1ea19628b', 134, 3, 'Aaa@aaa.aaa', '[]', 1, '2019-06-01 11:29:10', '2019-06-01 11:29:10', '2020-06-01 15:59:10'),
('7461407491679dde51425690aa5521262c1f55317e4151ec9b190c59595a6b5fe5172e7e9497123c', 76, 3, 'Sdacac@sac.com', '[]', 0, '2018-10-17 13:47:11', '2018-10-17 13:47:11', '2019-10-17 17:17:11'),
('74812de21a0718e9ee97f05767b499be2f601c1c2e9e579c7b285539615a2e9da5cd4306962758e9', 31, 3, 'izibazi', '[]', 0, '2018-09-01 13:48:12', '2018-09-01 13:48:12', '2019-09-01 18:18:12'),
('75dba9a6783f94ced5cde7d2a75e5c90210216d45df66eaf0a37ebd9d4e7b06fbf338e81d87d6d54', 31, 3, 'izibazi', '[]', 0, '2018-09-01 13:57:53', '2018-09-01 13:57:53', '2019-09-01 18:27:53'),
('761ef5e80f27d1d13d728a5521b426bf723b803cbd18381e641b2864afdcd6b43ebab206abc2054f', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2019-10-24 17:33:56', '2019-10-24 17:33:56', '2020-10-24 21:03:56'),
('76e192ef3a4bc9634289091861a5d89cf29b7d9b83bb1bc3fcc80f58ef034ac6c9d609b8d8ce445d', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-07-10 19:41:55', '2019-07-10 19:41:55', '2020-07-11 00:11:55'),
('77acb0a6ebb22861b02784d069a6debf42c349f83f4a402846a034a5d1a2d6972e366405c86fb5d2', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-11 09:41:53', '2018-10-11 09:41:53', '2019-10-11 13:11:53'),
('787e6ab460cabe22c618feaa1b88d8a59159960320397d24a87aa93b4f51e0c0f806ca77b455244b', 115, 3, 'Hhfhhh@ffggg.fdgh', '[]', 0, '2018-10-22 11:19:04', '2018-10-22 11:19:04', '2019-10-22 14:49:04'),
('7945a37aa34d4a231f96f1d44e99b7174c2bbe64a824970b80a1b6b7d958cd7d9ac20fe358445d85', 34, 3, 'izibazi', '[]', 0, '2018-08-26 09:19:48', '2018-08-26 09:19:48', '2019-08-26 13:49:48'),
('79697b0515dd09ed8fdd8046d1fe70fe6599a6e519c14b671a82df724e2b3a1ef627a122907b0869', 36, 3, 'izibazi', '[]', 0, '2018-08-29 10:14:11', '2018-08-29 10:14:11', '2019-08-29 14:44:11'),
('79713f1c71f26fd53baeea887c407d6831256d8baa9bc4358ab05de8cd32b2ee8f8e37709dd0ecb6', 1, 3, 'izibazi', '[]', 0, '2018-08-19 04:48:58', '2018-08-19 04:48:58', '2019-08-19 09:18:58'),
('797d847a8789b4addce189b525dd4dc09cbd5037d188e1dd9cf3259b6a3d800932cce4dbb444b158', 12, 3, 'izibazi', '[]', 0, '2018-08-13 09:53:43', '2018-08-13 09:53:43', '2019-08-13 14:23:43'),
('79900e7edccd42f0e55425a65605b5b20ed6397f3cae10a8ee432c889d41d4bd1cb99957b946edf5', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-17 11:33:30', '2018-10-17 11:33:30', '2019-10-17 15:03:30'),
('7a21932f05754e25accfb720399c5654dd9d9c6c519bf4e095795db637fed57936809356b2a681ac', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 13:22:39', '2018-10-18 13:22:39', '2019-10-18 16:52:39'),
('7a781a43832408bf481c71ab13b31048e7dad292dd862f0755c24fea5a861d5e79e13bab150c73a0', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 13:05:55', '2018-10-18 13:05:55', '2019-10-18 16:35:55'),
('7b212f9b82d7b538ebef1b7fd361b56f7653418220c2a423affc2c12039bef23a15d5d928cee494e', 103, 3, 'Zfgzdfg@edfg.com', '[]', 0, '2018-10-20 08:38:43', '2018-10-20 08:38:43', '2019-10-20 12:08:43'),
('7b98d8d9f914affedaa03125700c96a224e40bcde5443004cd7ede4dedfd90e19eb25456e6be219b', 31, 3, 'mohsen15@gmail.com', '[]', 0, '2018-09-03 11:15:33', '2018-09-03 11:15:33', '2019-09-03 15:45:33'),
('7c0e638b1ab99c2dfbd5f563e541ac6aaefd28eedec767f2bf40d4f79c09585334950313398a9198', 36, 3, 'izibazi', '[]', 0, '2018-08-29 10:14:13', '2018-08-29 10:14:13', '2019-08-29 14:44:13'),
('7c0fca8d87087b9314f73a0c82e85116dec368f358a8c3bdc76a491f711022c9a939b88c437b4d88', 5, 3, 'mohsen5@gmail.com', '[]', 0, '2018-10-05 20:14:39', '2018-10-05 20:14:39', '2019-10-05 23:44:39'),
('7c7469c9c4195db146809effc85b55c3e84f186d6546c53547c841e6e40cb15761e16be54134f754', 31, 3, 'mohsen15@gmail.com', '[]', 1, '2018-09-17 12:28:39', '2018-09-17 12:28:39', '2019-09-17 16:58:39'),
('7c82eeaeffa3608f66387067c17e62fc3226bce856cf156e139b0835edb6e7953df86b3fe8f967a6', 105, 3, 'Asasdfsad@safd.com', '[]', 0, '2018-10-20 09:45:56', '2018-10-20 09:45:56', '2019-10-20 13:15:56'),
('7cba05207b660d748c17618522c0a13386a158e71e0b2e08df3db30b6d1ef2e259093565e5d07480', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 13:34:35', '2018-10-18 13:34:35', '2019-10-18 17:04:35'),
('7d35c655e95e0bded7b57fdab7a85357596d54b964cd247982ea8e736eb48b895e995f9170a21e68', 31, 3, 'izibazi', '[]', 0, '2018-08-26 06:40:52', '2018-08-26 06:40:52', '2019-08-26 11:10:52'),
('7da4a798354c0c5cfe447f2a0c59e0adc66051b463961cd11973cc08183f677edc03968999b7c133', 85, 3, 'pouyaak@gmail.com', '[]', 0, '2018-10-18 19:28:53', '2018-10-18 19:28:53', '2019-10-18 22:58:53');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('7dd43a93597acfc85a968d07a0d4e342f76b3121973002b226ab5062b7281ed4a95904f67e5be828', 33, 3, 'izibazi', '[]', 0, '2018-08-26 07:08:39', '2018-08-26 07:08:39', '2019-08-26 11:38:39'),
('7e1e5aa563563fe9fe22c60fa362db4de1a73daabdb005d53d8330d0c2cae77c79f6d9bfa3b3f56f', 114, 3, 'Hggddz@ffg.gggj', '[]', 0, '2018-10-22 11:09:49', '2018-10-22 11:09:49', '2019-10-22 14:39:49'),
('7fe6cae60cb373bd1f879fff028ccbc13fbaac2c7ff785e099f641ecc60ca9ac7ebc37e0f5169c1e', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-12-08 09:49:01', '2019-12-08 09:49:01', '2020-12-08 13:19:01'),
('7feda38549cf7ab297f6f74b94eb694c56a1928ac27ed56d8b56173ab8114c456b0599aff56bccd8', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-12 12:56:44', '2018-10-12 12:56:44', '2019-10-12 16:26:44'),
('801725a2e526cc82ae0c121219a7da676dba263221428846be7525c9d423e5388a082e95676270fb', 123, 3, 'Asdf@daf.com', '[]', 1, '2018-10-23 09:58:22', '2018-10-23 09:58:22', '2019-10-23 13:28:22'),
('80256f465a99a4c6c6076f5878cd859459c9a17667353d9d8e932e39af5b051912b2516d6426fab5', 31, 3, 'mohsen15@gmail.com', '[]', 0, '2018-09-04 10:39:45', '2018-09-04 10:39:45', '2019-09-04 15:09:45'),
('806788f9e98e7dd312dbd36ea601f5a8efa7ac91fe3cd9c57bbc232f88aca4ace9418125ba319e14', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-03-06 12:16:40', '2019-03-06 12:16:40', '2020-03-06 15:46:40'),
('80d7ec8e8fd48121bb82e911462a22cf3b00e0d52f018b3751d4ddd56bf3c2a1132e797ce2437817', 12, 3, 'izibazi', '[]', 0, '2018-08-13 04:27:52', '2018-08-13 04:27:52', '2019-08-13 08:57:52'),
('80eae9a2735d4103f75704ed6364ffb19088b1f2abb182a0b40a40189971e60894d501a8de0a4339', 85, 3, 'pouyaak@gmail.com', '[]', 1, '2018-10-18 13:34:30', '2018-10-18 13:34:30', '2019-10-18 17:04:30'),
('8268641b367dbdc4d34a4e3ef94b217d21ccb4158ae248a1986d57841957ab826a8dc55a90575734', 92, 3, 'Refge@egs.comErgo', '[]', 0, '2018-10-18 13:35:00', '2018-10-18 13:35:00', '2019-10-18 17:05:00'),
('82e037673f0094c502973c714097ce45c7db0ac44f4cd978c3d260e5d22f47fc9b3ca095eb37ea62', 139, 3, '09145821998', '[]', 0, '2020-02-19 11:12:21', '2020-02-19 11:12:21', '2021-02-19 14:42:21'),
('8337a738e727617166e6f4fdcc0f3896b34087f81d91cbbed9ac71cec0cd1921bf31dc323a7aa114', 119, 3, 'Sadjkbansd@safc.com', '[]', 0, '2018-10-23 09:48:01', '2018-10-23 09:48:01', '2019-10-23 13:18:01'),
('8351c831ede0ee63e1bb59c78e542269c28d2ad26459094ec2e3e35341b747b839cd6e96ac7e1f64', 83, 3, 'Acscas@dwea.coma', '[]', 0, '2018-10-17 15:02:05', '2018-10-17 15:02:05', '2019-10-17 18:32:05'),
('8503a75e8ce100ecb76620862c484a647e9615673f0d693d7ff66ec9c2bd312e73152766ed79594a', 33, 3, 'izibazi', '[]', 0, '2018-08-26 12:40:19', '2018-08-26 12:40:19', '2019-08-26 17:10:19'),
('85131142ff122e0c5dc447fe7a010d89b5ba62b320680b4d06e617f44e243306b0440f3553a8357f', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-12 12:56:48', '2018-10-12 12:56:48', '2019-10-12 16:26:48'),
('85370ad43b795c03d559c21271017b28abaa5f7cd241e8b3d1144463275e69f5960de6621b590b28', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-23 08:09:51', '2018-10-23 08:09:51', '2019-10-23 11:39:51'),
('862ba6af6bd867281b76b5507d24e713fa7132ea2269a1d6039dc8d303d2a6330b8167f01bbfaff6', 5, 3, 'izibazi', '[]', 0, '2018-08-19 04:53:43', '2018-08-19 04:53:43', '2019-08-19 09:23:43'),
('86b496531f14457a6faabe7439fe3654335fcdeac12f15f8daa69148711377fa4002d6d5b77f2353', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-17 11:22:27', '2018-10-17 11:22:27', '2019-10-17 14:52:27'),
('86bc7c55f5bc66c62286d42b5e15f8c4a3fd1c192d1a506469218c472614fc9abdd9fa93ff1c9ac8', 2, 3, '09358080242', '[]', 0, '2020-02-23 11:42:23', '2020-02-23 11:42:23', '2021-02-23 15:12:23'),
('873f13d5cb69d338883fefeb3a3e145052ea8e02062d94b7f330e05c638d9c863dd454bec49f6985', 29, 3, 'izibazi', '[]', 0, '2018-08-19 09:14:10', '2018-08-19 09:14:10', '2019-08-19 13:44:10'),
('87a86b295b3dd86431efb084f35ec192eba28ed0ce78c4caf2cbb9293b888aae9e7d913776ef5b43', 3, 3, 'Mohsen3@gmail.com', '[]', 0, '2019-05-15 11:56:47', '2019-05-15 11:56:47', '2020-05-15 16:26:47'),
('88212248df5ea41556890eb5bec0e3d3de995d6e9188447e6bfde2bba620d0ce74265085d9f95d91', 31, 3, 'izibazi', '[]', 0, '2018-09-01 13:53:36', '2018-09-01 13:53:36', '2019-09-01 18:23:36'),
('889f6e0a46769397713e0c87702bf5889447bae6cda3c79464853fbdf47f60c4bb04b8e854725efc', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-17 11:22:31', '2018-10-17 11:22:31', '2019-10-17 14:52:31'),
('88aaa5cb7017b8a2b36bd3ff830439fccdb3acb268409ce19875abc4e456bd95cd6806da7ff04e58', 39, 3, 'mohsen40@gmail.com', '[]', 0, '2018-10-04 13:19:11', '2018-10-04 13:19:11', '2019-10-04 16:49:11'),
('891f579d8f8c70b62f20bc076547a8b39f5d3534191fb1c9ca876f6edaaaf8ef21e2f656b2fa97d8', 63, 3, 'sauuca@dasvc.com', '[]', 0, '2018-10-16 15:06:12', '2018-10-16 15:06:12', '2019-10-16 18:36:12'),
('8939a545d375476c18a277eabf75fd4962bcb7dfccb16274c3151e2c72a65d2ec9299463a7393da6', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-05-05 09:11:55', '2019-05-05 09:11:55', '2020-05-05 13:41:55'),
('89403192d7f27f898f89d65e2253540452f66baf7b6474f76d9c6bb90b2fa10241d366b8f97989cd', 90, 3, 'Aliarabgary@yahoo.com', '[]', 0, '2018-10-18 13:24:26', '2018-10-18 13:24:26', '2019-10-18 16:54:26'),
('8996359fe3682b59883ef16d6e52b126133d80118ca678b4c0796381d06ca4aaf7811389ccfc950c', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-12 11:48:34', '2018-10-12 11:48:34', '2019-10-12 15:18:34'),
('899981671005d7970e6a7ea5a550c76424e210715cecc26b32b4b6bb8f34b1c3b44bb596a84a6ec5', 133, 3, 'Admin@admin.admin', '[]', 1, '2019-03-15 13:38:46', '2019-03-15 13:38:46', '2020-03-15 17:08:46'),
('89f9dcc9b61f0a11cabde0a1284a3530d33aa4cb9dc40bbab1b3b1cbb327c11dada6012694470644', 1, 3, 'izibazi', '[]', 0, '2018-08-19 04:47:43', '2018-08-19 04:47:43', '2019-08-19 09:17:43'),
('8a738f0ef46b8f14f084833981ece5ba88bdf86b24fc6ff2f26beb6e89eb76a0aba20e2c9597b00c', 129, 3, 'Ali@ali.com', '[]', 1, '2018-10-23 12:01:07', '2018-10-23 12:01:07', '2019-10-23 15:31:07'),
('8b1614b505cd0d13a624ef8d835a4a636fa7a4b69967693ab2f7421565f98b1482c944ab61207b37', 49, 3, 'fasfa@fsfs.com', '[]', 1, '2018-10-11 11:47:19', '2018-10-11 11:47:19', '2019-10-11 15:17:19'),
('8b31afe2f9bb48a7f48c5e11b2df040ca751bde1b72a9f49e323f0375f2749e0aab4a64dec601d2d', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-03-10 17:17:27', '2019-03-10 17:17:27', '2020-03-10 20:47:27'),
('8bcc020255beffbb1c4233be79e29eaa5f62ed93fc86cc8e7ced686f06c5561495d0f3b323b9c2b3', 77, 3, 'Dzcsc@dsvsav.com', '[]', 0, '2018-10-17 13:48:13', '2018-10-17 13:48:13', '2019-10-17 17:18:13'),
('8bfaa2a72aa1c2311b751a5801a44ae7c78c4b1b2bb9f24ac2d253403af331996fa5d29d1001ca47', 1, 3, 'izibazi', '[]', 0, '2018-08-16 06:03:25', '2018-08-16 06:03:25', '2019-08-16 10:33:25'),
('8c2be6f2bc900725ac2c159716a0aa9a4a0b7ad64b9759c6f3282f8ee3553d680b5d7ca53a3dacbe', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-03-12 09:16:01', '2019-03-12 09:16:01', '2020-03-12 12:46:01'),
('8c36769126e35d9e5b3a94b6ea1ee8de0f74d9202ebc1ff95f72f55f13e69aa743cece453d7cb159', 29, 3, 'izibazi', '[]', 0, '2018-08-19 09:23:59', '2018-08-19 09:23:59', '2019-08-19 13:53:59'),
('8c8889a2725ada5bf9745b1de4739bebf62c1734be8dec9a23bbe22a61b990053e3afdc1bdad4a59', 91, 3, 'sauutca@dasvc.com', '[]', 0, '2018-10-18 13:32:00', '2018-10-18 13:32:00', '2019-10-18 17:02:00'),
('8d413be87243e9eb0a501a6cc7527221fb1ce0afb722efbac7c6d440be268d98a1dfb8447f34895a', 2, 3, 'mohsen2@gmail.com', '[]', 0, '2019-12-05 09:20:01', '2019-12-05 09:20:01', '2020-12-05 12:50:01'),
('8d57a8163b5a6cca4e03a30faaec42e0941963646d0e87b46828ece4f9d0c0ec40fc9b0e5cc216cd', 31, 3, 'mohsen15@gmail.com', '[]', 1, '2018-10-11 11:01:48', '2018-10-11 11:01:48', '2019-10-11 14:31:48'),
('8e957bf6b9ef3a23b3c04feb3fd242f28c0f4b416096c7e5a19dee577e70d26a455639d2eba4df7a', 5, 3, 'mohsen5@gmail.com', '[]', 0, '2018-10-04 14:53:56', '2018-10-04 14:53:56', '2019-10-04 18:23:56'),
('8fa05c8ded9d18f16ddf30974a0082da1794f7baa052e99fae28f2f5d44757ca67d6d9c55b9ddca9', 33, 3, 'izibazi', '[]', 0, '2018-08-29 10:04:45', '2018-08-29 10:04:45', '2019-08-29 14:34:45'),
('9076fb4fa99b99ef62bcd1c4a7d416306d8140bd42c9ba780bdc97e768ef3f3311112c22b9715698', 5, 3, 'mohsen5@gmail.com', '[]', 0, '2018-10-05 20:14:39', '2018-10-05 20:14:39', '2019-10-05 23:44:39'),
('908785409863ad2f04b40ba3b2d1e4a71ebca221fc1dfbeb9b863698663e4b2b2d68bba494bd3e04', 1, 3, 'izibazi', '[]', 0, '2018-08-15 07:38:27', '2018-08-15 07:38:27', '2019-08-15 12:08:27'),
('90a7714c562af729216c530da49404320767021ee831cd6cac8ddec7a1cdab9a0d7f2afc61adacba', 29, 3, 'izibazi', '[]', 0, '2018-08-19 09:19:46', '2018-08-19 09:19:46', '2019-08-19 13:49:46'),
('90cc0406d2fec5b1e40741c87bf1cea1e385ee007b7f72f312ef7188629a6e3182a8697f955c3af5', 137, 3, 'enamad@gmail.com', '[]', 0, '2019-11-25 13:56:56', '2019-11-25 13:56:56', '2020-11-25 17:26:56'),
('912ec34691f632ab0815ca955b736e8fa1eb4b81edc2650d4815480c7567d21f15a36baae760b347', 50, 3, 'mohsefn3@gmail.com', '[]', 1, '2018-10-11 13:26:29', '2018-10-11 13:26:29', '2019-10-11 16:56:29'),
('915a77b7865511b48745863c8a6e1c893b35923c1d0d4e47acc00f167e9e11d7aa20008b702454aa', 73, 3, 'Wefwea@fdv.dh', '[]', 0, '2018-10-17 08:40:42', '2018-10-17 08:40:42', '2019-10-17 12:10:42'),
('91da7035b4874408701a0147cbb01ba0b6507b3964658c66becd5ec3f0ba7a817bfd01a435535275', 33, 3, 'izibazi', '[]', 0, '2018-08-26 12:43:03', '2018-08-26 12:43:03', '2019-08-26 17:13:03'),
('928bb382c23778492ce76da7a93c0f0df4c90ea8eca9433c7718fd10cb3a18d4e8db7deab0d81411', 51, 3, 'aliaseman68@gmail.com', '[]', 0, '2018-10-12 13:07:58', '2018-10-12 13:07:58', '2019-10-12 16:37:58'),
('93f4e601d4a5b01cb44798df3f11ddd316546a651cbec7c57ebddfef5a51e8a68acfed4aad3554a4', 131, 3, 'Ali@ali.ali', '[]', 1, '2018-10-23 12:22:33', '2018-10-23 12:22:33', '2019-10-23 15:52:33'),
('951489896d52a7cb5a0198de3509bf554fbc744ed1629f125a1fa64602514178508eb2e2f773eb2e', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-04 14:49:50', '2018-10-04 14:49:50', '2019-10-04 18:19:50'),
('95dee89d1900ea2307a52d8800cec17bf25deaed18bfae6d553763ba1d3bf483fc1027b692b0993d', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-14 17:47:17', '2018-10-14 17:47:17', '2019-10-14 21:17:17'),
('9664361da4410946d656ed5963dc566f9365f24ebaa7cebb9dde11acf45407b28010f23763aac554', 140, 3, '09145821998', '[]', 0, '2020-03-01 09:36:33', '2020-03-01 09:36:33', '2021-03-01 13:06:33'),
('97191663a1057c27806a2daaebd160c6e9ab3de70c0901cbcac5edba60e0353d18799c2d872c0c7d', 18, 3, 'izibazi', '[]', 0, '2018-08-13 09:53:46', '2018-08-13 09:53:46', '2019-08-13 14:23:46'),
('99891aa4e2e1eccccc5768bd28a21b8bb1e47b0cf3e8216eddac603a6ec1496dec47a3cadf757c29', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-04-18 10:48:44', '2019-04-18 10:48:44', '2020-04-18 15:18:44'),
('998c96dcb9c3d3280ec9840a704f927dc54c872a70a3e671e5bbc702e0e3b2a26b40b386dc4d73c9', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-17 11:22:29', '2018-10-17 11:22:29', '2019-10-17 14:52:29'),
('999adb8d5408c704e7fd712cf2dd591785c37ec5f7f5fc2b2c094d719dec95f4997c2e388457941c', 45, 3, 'sfafa@fsfa.com', '[]', 0, '2018-10-10 12:30:07', '2018-10-10 12:30:07', '2019-10-10 16:00:07'),
('99c1383053e48d8d1eae089417ef27f3c6e9ed66607159d66e5d02469948e61ca0907814410b13eb', 116, 3, 'Gjff@gbc.dhvb', '[]', 0, '2018-10-22 11:22:03', '2018-10-22 11:22:03', '2019-10-22 14:52:03'),
('99dadb2bbf7124d55eb1fe51599eb4a51ed177eb6b5814fdafcafb53dade86f57788b2133334ad50', 139, 3, '09145821998', '[]', 0, '2020-02-18 12:22:14', '2020-02-18 12:22:14', '2021-02-18 15:52:14'),
('9b3e9a1c1356ded65aec7b76feb9748002479a19e0ef7e1dcf35282a6f1e6b25f742869b7b4f7971', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-06 13:26:40', '2018-10-06 13:26:40', '2019-10-06 16:56:40'),
('9b51d8bdd94f57b69a183df44398c98bae0d28bab640eb25d7efcda5f45e8eec4378e9e014d6a536', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-17 11:22:30', '2018-10-17 11:22:30', '2019-10-17 14:52:30'),
('9bf51d4c283f300566f76229fe3faec01791d87a27b14ef2a8ca871b8b1fefd3f0f85a14345f4d0b', 31, 3, 'mohsen15@gmail.com', '[]', 1, '2018-10-13 12:30:11', '2018-10-13 12:30:11', '2019-10-13 16:00:11'),
('9d2c9e3798a785c9084a73149e4fa4122954e3024ad291d708cf777ba993f7899eba5d69e8f87795', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-06-01 13:05:17', '2019-06-01 13:05:17', '2020-06-01 17:35:17'),
('9d47c22da842fa3c64bfff77f9f0777ebec63c05449d987cca6c4cff146c38c1899459ba4bdb2464', 36, 3, 'izibazi', '[]', 0, '2018-08-29 10:19:57', '2018-08-29 10:19:57', '2019-08-29 14:49:57'),
('9d89da8d6cbf26be5cd16abcf479eb42019e0e4eb73cbad689ad5fa697567156fa553a1491bacc2c', 53, 3, 'mnfi340@gmail.com', '[]', 0, '2018-10-13 09:37:09', '2018-10-13 09:37:09', '2019-10-13 13:07:09'),
('9d8eaa0d42c477922853a803067b860f96a97593ad91f1ece5f381ebb3559c498e448ae7a7e2288f', 43, 3, 'mehdi@mehid.gma.com', '[]', 0, '2018-10-10 12:17:32', '2018-10-10 12:17:32', '2019-10-10 15:47:32'),
('9e74417034b35b0cf60af3eb255b07cc76089541ce7730dfb50d580ccfcd075f64849fb7fd54ebba', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-03-06 12:55:31', '2019-03-06 12:55:31', '2020-03-06 16:25:31'),
('9f43b87623d8d4e81e87d0e26e6f103aa12c78bbbf1919d371f23654910d46870a0fd01c0a69b81f', 131, 3, 'Ali@ali.ali', '[]', 1, '2018-10-23 12:21:38', '2018-10-23 12:21:38', '2019-10-23 15:51:38'),
('9fa130b02b445d6db670b04e803d9f9f815f7e5932df6febf4187c670f4bbc9b2c1384347f312b2b', 1, 3, 'mohsen@gmail.com', '[]', 0, '2018-10-18 12:42:53', '2018-10-18 12:42:53', '2019-10-18 16:12:53'),
('9fa4937829768fae5970d1e239df1157215285838a56c9d1d30810465736892adf9eb8c8decc283a', 47, 3, 'fsdfas@sdfsf.csdf', '[]', 1, '2018-10-10 12:50:23', '2018-10-10 12:50:23', '2019-10-10 16:20:23'),
('a0ef2be0973aef863b7a73c4a726daec9c9c157a632c9e08d9ca43d05a8e25d99d13c2724c4b91c1', 62, 3, 'saca@dasvc.com', '[]', 0, '2018-10-16 15:04:31', '2018-10-16 15:04:31', '2019-10-16 18:34:31'),
('a1091e26ead5c24b69a8bf5f9dbaff8dacb1803c60820a16970fc29041a7296eaed0674435636ed6', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-04-18 09:54:18', '2019-04-18 09:54:18', '2020-04-18 14:24:18'),
('a121a8c9bdd92c19f01c06090d093eb13650cd537a77b12a16b2b629d471e1b8a530625d3d866a42', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-13 08:26:52', '2018-10-13 08:26:52', '2019-10-13 11:56:52'),
('a1af03be93d7065382cbeb00cf834cf97623bd69a26b936d6c068ed50dbda6c02c07ab9fd1abb8a2', 85, 3, 'pouyaak@gmail.com', '[]', 1, '2018-10-18 13:06:26', '2018-10-18 13:06:26', '2019-10-18 16:36:26'),
('a2106100fde27f412fd8e301a470122ee863fe283a5c8eac49d4624e6eea39c8cab1b77fc7fe56eb', 63, 3, 'sauuca@dasvc.com', '[]', 0, '2019-03-09 09:20:24', '2019-03-09 09:20:24', '2020-03-09 12:50:24'),
('a37c0dff6fd86eb5823bc8b3d93804b8a4a4afa24c1eca29e72cbc495ff2a5b2282e30870313a416', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-07-02 07:19:50', '2019-07-02 07:19:50', '2020-07-02 11:49:50'),
('a38e9a55265dc5a7e3c327aa58fd0e79f009cbf39b778608c01fb2323c18b9b77c18a1bde5ceb6a8', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 13:33:56', '2018-10-18 13:33:56', '2019-10-18 17:03:56'),
('a3fee36e8a3a23245ef92fe7062b99f0742ab0396d7afbc38c2878bdc2f509e5f11c9c72fe660fc2', 135, 3, 'Djdjis@dudj.sush', '[]', 1, '2019-09-26 11:58:39', '2019-09-26 11:58:39', '2020-09-26 15:28:39'),
('a4200d110642199f3d086c166aeb975d4e210611d8978c10f2e32ea8341f1bb5254f4263bf5cf542', 29, 3, 'izibazi', '[]', 0, '2018-08-19 09:21:18', '2018-08-19 09:21:18', '2019-08-19 13:51:18'),
('a4bfb71ce55a59aa933dfca92b81619268a9a56941000edc7625763a80f3dd2c0fa603633d55f9fc', 60, 3, 'SedAli@gmail.com', '[]', 0, '2018-10-16 14:37:23', '2018-10-16 14:37:23', '2019-10-16 18:07:23'),
('a4fbdb3b5708a8925be814385f9dbfc8b1d24c8de3865a736bfa0ddb88c9acd761bb26c0fd9885ce', 1, 3, 'izibazi', '[]', 0, '2018-08-19 04:47:34', '2018-08-19 04:47:34', '2019-08-19 09:17:34'),
('a56c251a2f257fe8a706f87e7f5deb4434ef089cb7ee28a47c9b6255bda35503193eccc13661469c', 85, 3, 'pouyaak@gmail.com', '[]', 0, '2018-10-18 12:41:46', '2018-10-18 12:41:46', '2019-10-18 16:11:46'),
('a62e87b800c49770ee2ee6084733dd56b7c9f7c7b9588059ebddfe35a95e26a92d42ea0aa83c48d5', 3, 3, 'Mohsen3@gmail.com', '[]', 0, '2019-05-13 12:18:26', '2019-05-13 12:18:26', '2020-05-13 16:48:26'),
('a64c49559e5702149fcd0bfe93729b058c56992f6ba969193526a1d3b96eb5beb87d224bf6e7df8c', 129, 3, 'Ali@ali.com', '[]', 1, '2018-10-23 12:01:30', '2018-10-23 12:01:30', '2019-10-23 15:31:30'),
('a678a85d9e57a7b4c2331f9f7eae2754fd8c755e3887439f54dbdda00c5f87847874a6f326317d75', 30, 3, 'izibazi', '[]', 0, '2018-08-19 10:11:28', '2018-08-19 10:11:28', '2019-08-19 14:41:28'),
('a7c54ff9d0922f7af3da6ace6855a8b7c517d69a78170ce3d42260c5c6a03166b342b2dd45bb29bd', 61, 3, 'Alalala@gmail.com', '[]', 0, '2018-10-16 15:01:08', '2018-10-16 15:01:08', '2019-10-16 18:31:08'),
('a827e6c209b1b145dee592e27e9c69f269d5eb4062ca1ecb2ecdb00adc23de922c8877e0cc86d1ef', 31, 3, 'mohsen15@gmail.com', '[]', 0, '2018-09-04 09:36:47', '2018-09-04 09:36:47', '2019-09-04 14:06:47'),
('a8333a546e07c80de8f435e2ebc9480109445b48b3c61fce743a22552b00edc50b57c457a04b4e52', 131, 3, 'Ali@ali.ali', '[]', 1, '2018-10-23 12:11:04', '2018-10-23 12:11:04', '2019-10-23 15:41:04'),
('a8802ae99da75c71b08908a5eb916a059359b9fc7f16020103f61c9645cfaa59680ae3b62abd08eb', 129, 3, 'Ali@ali.com', '[]', 0, '2018-10-23 14:10:31', '2018-10-23 14:10:31', '2019-10-23 17:40:31'),
('a89d467042b3b28cba9159ab8abe36f39ed17c4f6814b64e5f340268121a40c81dd2556c11f68a66', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-02-16 11:55:02', '2019-02-16 11:55:02', '2020-02-16 15:25:02'),
('a9fbb9c08d0d9d0d65f03c81f24fff92e846f063047e92d0a03870d3758a165fa37e7ca9b851267d', 102, 3, 'Asd@asd.asd', '[]', 0, '2018-10-20 08:31:34', '2018-10-20 08:31:34', '2019-10-20 12:01:34'),
('aa3b24eb656ffbe2206e43f3988adf114645362e60e7d4f3011a926e6a119b4f8fe79e7c6b6a97b5', 31, 3, 'izibazi', '[]', 0, '2018-08-26 06:24:12', '2018-08-26 06:24:12', '2019-08-26 10:54:12'),
('aa78e9b1a6c36ddcef88b45c65bc8a37ca64877a56db8f5a9583da7edcf7f38730ea40e28c0762e3', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 08:35:55', '2018-10-18 08:35:55', '2019-10-18 12:05:55'),
('ab1558d87fd6e5a801fa551a6b7f315acf0d7e5e3ba627177814a092cbf13fd06d34b696f5bb6ea3', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-07-17 12:00:58', '2019-07-17 12:00:58', '2020-07-17 16:30:58'),
('ac8fc8b1d52dab4fe60956f54c0fa7ad1b5d250d64523defd37da83e0ac42def6722943413f6e408', 98, 3, 'Asdsa@asda.com', '[]', 0, '2018-10-18 14:02:00', '2018-10-18 14:02:00', '2019-10-18 17:32:00'),
('ae6c2fe879eeb465505e3934ba49bc4b789cb12daa5107a04982f825e5cad0cdd58c4e93b9979a5b', 139, 3, '09145821998', '[]', 1, '2020-02-18 12:32:42', '2020-02-18 12:32:42', '2021-02-18 16:02:42'),
('ae9b05348ac98757b9fabc057a533f6b767805bb75105b6d18879412d56df30f76f17189c86decf7', 33, 3, 'izibazi', '[]', 0, '2018-08-26 12:41:22', '2018-08-26 12:41:22', '2019-08-26 17:11:22'),
('aefbe3605b81294c11d6f329c5678aa58a722aebd09e00effb70b9d98244412d00075760baca9002', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-11-07 12:56:56', '2019-11-07 12:56:56', '2020-11-07 16:26:56'),
('af7f48dee9953d60ab75b9c915df53e831ff9968f2db16294fdb15c76075f2f9f0363ee9ef3df899', 1, 3, 'mohsen@gmail.com', '[]', 0, '2018-10-18 12:43:53', '2018-10-18 12:43:53', '2019-10-18 16:13:53'),
('b0090122636e3c9e652147a80ea7e53d369bca35b6da7b79502ea9e0a493d4ef9814b33680599771', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 12:51:10', '2018-10-18 12:51:10', '2019-10-18 16:21:10'),
('b0142e6a16c804f0a6e374731e772fecba1557e8ce05c2537cb684a2a00427b2d73163e16652b218', 112, 3, 'Aliali@gmail.com', '[]', 0, '2018-10-20 13:42:18', '2018-10-20 13:42:18', '2019-10-20 17:12:18'),
('b24ea5f2372dd1678ae96862e6d5ebed2435fb7e0e55cea8dfb4640217c6069af71ce470998e2dd9', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-11 13:32:58', '2018-10-11 13:32:58', '2019-10-11 17:02:58'),
('b29f12af9f024061bdc5081dae8aa92f78263927219573e6694941494f6c0a0dc4abd68bfb163abe', 37, 3, 'izibazi', '[]', 0, '2018-09-03 08:27:36', '2018-09-03 08:27:36', '2019-09-03 12:57:36'),
('b309858f100bd9c28b3b864347c4904ee839cabf83c385a1ae7c67f28cdc703c923f551d9d6ab998', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-10-24 22:23:40', '2019-10-24 22:23:40', '2020-10-25 01:53:40'),
('b31c55fab596252b3fa23ef309a7fbf1468839c397a8b65f8544c4dc48cce1d2fc96723dde19b0e8', 63, 3, 'sauuca@dasvc.com', '[]', 0, '2018-10-20 10:42:53', '2018-10-20 10:42:53', '2019-10-20 14:12:53'),
('b3950b270b1acec6b88933981c6a40b03d3e88661609a5ce7923126804aa6abbec2d7ab05402d5e1', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 08:26:13', '2018-10-18 08:26:13', '2019-10-18 11:56:13'),
('b41149cfcfd1149e229d7b2d08a47c0ce46cf0f7170985c6333ea3d72166a3e6467120c7955f3f43', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 13:01:03', '2018-10-18 13:01:03', '2019-10-18 16:31:03'),
('b491caccfb49b198ef700e71ec1c71e5800698159a81ce37b3d6fc4a8aa579333d85c1bde9379062', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-05 12:57:51', '2018-10-05 12:57:51', '2019-10-05 16:27:51'),
('b4fd49c019e4bfe96b3a15b5f7f4f51013d16ade9934b6df6df1925707d2bf37a68d1c79101e4565', 121, 3, 'Rewqtewra@dsazz.com', '[]', 1, '2018-10-23 09:54:57', '2018-10-23 09:54:57', '2019-10-23 13:24:57'),
('b5f646ff3d2bf09c45c23ee335251c49c92f48023098237a5829a33fc720199ac9b8707c1817290a', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-09-03 08:40:28', '2019-09-03 08:40:28', '2020-09-03 13:10:28'),
('b6871d9434a0d9d0f04824e3b2b7278c5e1be6144b8e3c0886b7f636e489ec21e7735c303a9acd20', 29, 3, 'izibazi', '[]', 0, '2018-08-19 09:20:32', '2018-08-19 09:20:32', '2019-08-19 13:50:32'),
('b68a140a921a356a45d636c04d2a9ba3da90ed17378eeed3d46cef6295f6d165203e6ca8fd6c87fe', 33, 3, 'izibazi', '[]', 0, '2018-09-01 09:20:31', '2018-09-01 09:20:31', '2019-09-01 13:50:31'),
('b69c22857337ecaa0fed01425d02f2a9e845697425bd458f5d71eb79c27ab376a90e5cb4de678daa', 111, 3, 'Wef@efwa.com', '[]', 0, '2018-10-20 13:17:56', '2018-10-20 13:17:56', '2019-10-20 16:47:56'),
('b6b39b21426135dc5600c6328077864841d619540103c1e4124e0f439ccad69dafbff430cb50833f', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-06-29 13:53:01', '2019-06-29 13:53:01', '2020-06-29 18:23:01'),
('b70664a8525b74cd15da603dab20e959e4ebe364f94fa65221c31f4eced342cda18c33abda9c1b6e', 31, 3, 'mohsen15@gmail.com', '[]', 1, '2018-10-10 08:32:19', '2018-10-10 08:32:19', '2019-10-10 12:02:19'),
('b71ff2525e1db137943ef31eabb6914090495405f1fe684f440d8ed3c4c1dca8c393e4964917e434', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 13:20:19', '2018-10-18 13:20:19', '2019-10-18 16:50:19'),
('b8ddff30350086ead80c23d0a5e13dd4d64489da27928004f31e0a3fc5f951263a4e0c72fb8fd97b', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2019-11-16 12:58:47', '2019-11-16 12:58:47', '2020-11-16 16:28:47'),
('b94544e7e949e29ac4f28ccf2939a9bcdad8c54fe741dd9a4f423b5702d7c7d2efa88b3ca710df7c', 31, 3, 'mohsen15@gmail.com', '[]', 0, '2018-09-04 08:48:42', '2018-09-04 08:48:42', '2019-09-04 13:18:42'),
('b9f398eaf0eae279d94e46958b1ee87d9ea63f470a6d5d98b5e755b43568c2ef89c20d4ae2f9a44a', 31, 3, 'izibazi', '[]', 0, '2018-09-01 13:47:40', '2018-09-01 13:47:40', '2019-09-01 18:17:40'),
('b9fdf6d7828da295f828e7a9043718682d8454f26f95f0e1b03f11707e635bdc80c943d10b811f13', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-12 12:01:43', '2018-10-12 12:01:43', '2019-10-12 15:31:43'),
('bb2dc2aac1965f0e46f15b44d4de5922d4cfc37493f6632a19b5bab9e25c3d666127e2b6bf54e86a', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-06 13:41:59', '2018-10-06 13:41:59', '2019-10-06 17:11:59'),
('bd664bb4dadf744f72d1966a18e82beddb68b07f6a33a52af4dfc223a8bb8b7806282c82734a1e3f', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-06-12 07:55:54', '2019-06-12 07:55:54', '2020-06-12 12:25:54'),
('bd6e845481f212f323c4989b991d06645cac9bb889466c6486caf701d4b905d8cd39afc806741b70', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-14 16:36:39', '2018-10-14 16:36:39', '2019-10-14 20:06:39'),
('bda6a9612c77a3734ce5deabe881937cfcdc27f254e68297e6685d4c57349fc338c64d355e5a87b9', 51, 3, 'aliaseman68@gmail.com', '[]', 0, '2018-10-12 13:08:09', '2018-10-12 13:08:09', '2019-10-12 16:38:09'),
('bdb8f1af0529df566b70c3c03305b7a17d95d2ebe8cd0790022a1f2203b2c1c8c2c5aaabf5c050db', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-08 16:57:26', '2018-10-08 16:57:26', '2019-10-08 20:27:26'),
('be10759d2c3766e0d7e7b829b107e85ff321bf86a1f002f8dfa3c7545565b2fb231beba427beb576', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-12 13:05:19', '2018-10-12 13:05:19', '2019-10-12 16:35:19'),
('be3128b90b9081e481a0265ecc65a1edb35aee1bf64efbb1958bc15202ed1168c7b2965bf9bf140b', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-12 13:09:32', '2018-10-12 13:09:32', '2019-10-12 16:39:32'),
('be519ccfe2c8e69a95b9c1bcc0fcfaf80c5abc94059a85d85c20bb68c3c13898acf3386531c26fcf', 122, 3, 'Sdfsdf@xcvsx.com', '[]', 1, '2018-10-23 09:56:01', '2018-10-23 09:56:01', '2019-10-23 13:26:01'),
('bee691ee7261683e1757af472163c9db705498a43c516c7ec7a1705c10dce92952dda3a2ea08c943', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-06 13:56:53', '2018-10-06 13:56:53', '2019-10-06 17:26:53'),
('bf0116b2ee8784854f193c0dd46c8c99517655365aee1d663747916516abae1e7d09562708ff3faf', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-02-16 12:01:29', '2019-02-16 12:01:29', '2020-02-16 15:31:29'),
('bf2e65144349a2e090e45e5367de85fc2463d031fc8fa2a6fd8807b96169eb5b7db063316e374f7b', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-11 13:32:36', '2018-10-11 13:32:36', '2019-10-11 17:02:36'),
('bf76300425899760eefd2905f44b4c659cd5fa8e6774a36ad9f6f933bbd11bc7919472a76cb643f7', 5, 3, 'mohsen5@gmail.com', '[]', 0, '2018-10-04 15:09:48', '2018-10-04 15:09:48', '2019-10-04 18:39:48'),
('c0dc4a2c5d7951bfa58a9c84b216ae3f5a67e15766781bb9a8ef3d841561e8f955e1cba810e637a0', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-17 11:38:24', '2018-10-17 11:38:24', '2019-10-17 15:08:24'),
('c166ee700a20b1a5a0121905b379a7dbb44d2b9cb51ad4b2016e0b605aae6dca1d9ea4a1ab1fae1b', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 12:12:25', '2018-10-18 12:12:25', '2019-10-18 15:42:25'),
('c2cf73648e1d6ddacbc8672492fceaf57d970a7c86842502c8d60a48fc1866db091bbe24ea8806ef', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-13 16:11:14', '2018-10-13 16:11:14', '2019-10-13 19:41:14'),
('c380699a6e943ad0e5469a997c30c130406590e817662307b1cf4f11f1f5a160fb2fa6d6a2341025', 18, 3, 'izibazi', '[]', 0, '2018-08-13 07:37:17', '2018-08-13 07:37:17', '2019-08-13 12:07:17'),
('c40c3381270d6bc6dac52b89dfaef31d3d6561b051461561b9a56aba21485decfc53b086343d60cd', 1, 3, 'mohsen@gmail.com', '[]', 0, '2019-02-16 17:46:07', '2019-02-16 17:46:07', '2020-02-16 21:16:07'),
('c42cfde18cf7b4652522e72dddec78f54db89ba93adf5adf6009ca2a321cb118c193e286ae1e3422', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-12-08 09:46:34', '2019-12-08 09:46:34', '2020-12-08 13:16:34'),
('c46bdce0cfd2845bb3f2f60152528911669800737aef6b7c847d21b23f3948898e8157f81efb7a30', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2019-02-16 17:48:53', '2019-02-16 17:48:53', '2020-02-16 21:18:53'),
('c4b1ef8185f2084846e012ebdf866b981effcbce4a46bd4ff1280db0963a0f924a99e8c27ec7638e', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 19:54:01', '2018-10-18 19:54:01', '2019-10-18 23:24:01'),
('c5ca4b52e60a722780a3176ba6f667f7ea3f6b2d890fc185aa232cf4ff91d4d765253ff39e53e52f', 31, 3, 'mohsen15@gmail.com', '[]', 0, '2018-10-10 09:31:02', '2018-10-10 09:31:02', '2019-10-10 13:01:02'),
('c6fbac71b0bf6a9f9544052aac4bfbd7c18851242cc64b4e90e62fc1e56aba8fda2435d6ba234332', 96, 3, 'Lknasa@sdad.cdc', '[]', 0, '2018-10-18 13:57:09', '2018-10-18 13:57:09', '2019-10-18 17:27:09'),
('c74e188b5780644189ee1c63a40a0b5e931fbc15cd07fadfbc51258b51ac5576375a595335c11b15', 33, 3, 'izibazi', '[]', 0, '2018-09-01 12:05:39', '2018-09-01 12:05:39', '2019-09-01 16:35:39'),
('c76dda9533077a7a1721b3a699a7c84b34dfa6b4689c500d8e8711452f02ae82c4772cb0f9925e95', 38, 3, 'izibazi', '[]', 0, '2018-09-03 08:42:12', '2018-09-03 08:42:12', '2019-09-03 13:12:12'),
('c78e2015c2f7029f44e319b1c90977a9226dbdf147b7f75c3c0f9e6aa6c3537122e1b7280b722e92', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-07-17 11:39:22', '2019-07-17 11:39:22', '2020-07-17 16:09:22'),
('c7d9b65e00a6d085527d99e0135a6d29ce925c16f9c73dc4802dcdc21e8ae5dddc9b6ca22600e618', 71, 3, 'Sfgs@gmail.com', '[]', 0, '2018-10-17 07:56:54', '2018-10-17 07:56:54', '2019-10-17 11:26:54'),
('c7ddefde70af96ff0c52b829b00018a0d6e90bae0761880dae18a1c8c1584f604d144ca68363b9ca', 1, 3, 'mohsen@gmail.com', '[]', 1, '2018-10-06 13:38:05', '2018-10-06 13:38:05', '2019-10-06 17:08:05'),
('c81ef7ad2097c78e8c426442cbaf837c461fcd0e7050405b2c966041f2fbcb3543b337afec13d58b', 34, 3, 'izibazi', '[]', 0, '2018-08-26 07:17:42', '2018-08-26 07:17:42', '2019-08-26 11:47:42'),
('c85351f3d0c13e5b5db600b64fadde775a3d4f79fba17e1bf38e26bcce63c8ef8b7ec44da32d2481', 33, 3, 'izibazi', '[]', 0, '2018-09-01 13:25:43', '2018-09-01 13:25:43', '2019-09-01 17:55:43'),
('c8e0ed5ba581f7dd90f425eb41e051203432f79fb520f00f2e1cc0ce966549c08e3d0e027c962979', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-11-03 06:48:11', '2019-11-03 06:48:11', '2020-11-03 10:18:11'),
('c8f7634e373dcb89a4b5bdd2e12b6f2125be3328881195281e87847c4b8358cb01ba9b1d40849644', 31, 3, 'mohsen15@gmail.com', '[]', 1, '2018-10-08 17:23:28', '2018-10-08 17:23:28', '2019-10-08 20:53:28'),
('c94ef1101cba23b1be5c92696b61c20969b07988453414f0bf9f5c7631337fbee0bbe9539b235ea2', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-17 11:35:01', '2018-10-17 11:35:01', '2019-10-17 15:05:01'),
('c97a909203b1047a8dee7ce9be5407f2c17b270e6aee148ebf650c337dd1d493b2c332fe66cf7c67', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-04-18 09:06:45', '2019-04-18 09:06:45', '2020-04-18 13:36:45'),
('c9aece5942f25609cabddf8246785c0560da0a187b9fe0cdd1b3a90e8c8af891c6874c542f3ef916', 31, 3, 'izibazi', '[]', 0, '2018-09-02 11:56:26', '2018-09-02 11:56:26', '2019-09-02 16:26:26'),
('cbe81298418297cd4ac036da889e3843ad4d328c8bbe363fb5b01f399d5f7740293bfeaafaa5d48e', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-02-16 19:03:48', '2019-02-16 19:03:48', '2020-02-16 22:33:48'),
('cc59cf1b2e9096ac529a8298cca2cae358d5cee98b8af45e14e0578e3f41121e2b88aa67d0fe2a83', 1, 3, 'izibazi', '[]', 0, '2018-08-19 04:55:35', '2018-08-19 04:55:35', '2019-08-19 09:25:35'),
('ce37195bde9d65f391559d7887242961d5d488cf21beee80be7254e62277233f2a8dcf54b8fce332', 46, 3, 'fafa@sfsf.com', '[]', 0, '2018-10-10 12:38:29', '2018-10-10 12:38:29', '2019-10-10 16:08:29'),
('ce3b029a80ffee12ca3e932cd2fd8e1a6ec4cb557f233d1e497c13b7f274ca6fc5cfb1c0b75c6dd9', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 19:48:10', '2018-10-18 19:48:10', '2019-10-18 23:18:10'),
('ce9d7b1c70bc6a042252021141b04b415a68b8360e80fd71678504518d486b643e34fd2607d56a7b', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-17 11:18:51', '2018-10-17 11:18:51', '2019-10-17 14:48:51'),
('cee5db5e436088fc72bec434f37a84c34fdb4480493edffe08b73815d507b88edb53ef2ab26388c3', 3, 3, 'Mohsen3@gmail.com', '[]', 0, '2019-06-08 08:05:41', '2019-06-08 08:05:41', '2020-06-08 12:35:41'),
('cf3dd5968c91b36873bd1b8eb106ae18bd5012b2a874f3b2f84c6adbd6e92607a58b685647bf49f6', 26, 3, 'izibazi', '[]', 0, '2018-08-13 09:22:32', '2018-08-13 09:22:32', '2019-08-13 13:52:32'),
('d1033b3c5141c859b6ec32f053df97be37562cf526b463077c6dfbfde78143220e7e4e39e3fde282', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-10 09:18:42', '2018-10-10 09:18:42', '2019-10-10 12:48:42'),
('d1413ee6f824af34789368cfca3ee82c924a9a00c17722377a4195948b5f8d57eb88a74f28196ad8', 2, 3, 'izibazi', '[]', 0, '2018-08-15 07:30:38', '2018-08-15 07:30:38', '2019-08-15 12:00:38'),
('d1be1861f76579de7a416ea3190684b357a7e79eb4397d77c6524e5cd85b97199518ef2548dcda8a', 85, 3, 'pouyaak@gmail.com', '[]', 1, '2019-02-16 18:58:10', '2019-02-16 18:58:10', '2020-02-16 22:28:10'),
('d1daa4e635f3fe642fc880e59a1117baae582656009fa6764888dc74aede1223d11773bbecd7b346', 3, 3, 'Mohsen3@gmail.com', '[]', 0, '2019-06-08 11:13:53', '2019-06-08 11:13:53', '2020-06-08 15:43:53'),
('d29875a619f1d4c5b6ca5a3c0a11ac507e8d2dd227f686cd8b115d17d782dbb687061a87006b6a1f', 5, 3, 'izibazi', '[]', 0, '2018-08-19 04:53:30', '2018-08-19 04:53:30', '2019-08-19 09:23:30'),
('d4000d14c22eec5d151b4ba57484dfcd50e3a369a96c700052a6bb328e5ce384a43a4ee692084543', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-11 09:39:08', '2018-10-11 09:39:08', '2019-10-11 13:09:08'),
('d4246ac5e001458aca490c13cb14dbac9df25f96fd340773742b26c4b575b9d6540477a1dde93976', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2019-02-16 08:32:26', '2019-02-16 08:32:26', '2020-02-16 12:02:26'),
('d463026911665cbe8895f9e6bb0fb78d59185bde07af191e47c28fdfaf3a36425f10fb0522b6dfb2', 31, 3, 'mohsen15@gmail.com', '[]', 1, '2018-10-08 17:37:08', '2018-10-08 17:37:08', '2019-10-08 21:07:08'),
('d48a2bc04c63c10716d36cbe5b1bdc08ff2213ff58c88e62eb15fef31a75cb646fe7402ede9fffe3', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-04 12:34:32', '2018-10-04 12:34:32', '2019-10-04 16:04:32'),
('d624c0455ab60bf9116bc1c07830cb261a8f49c0fef36d934483de74a605d8ac8900a4606f3bc36b', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-23 10:29:51', '2018-10-23 10:29:51', '2019-10-23 13:59:51'),
('d67cbd5b76369392a3bb22c7321455182997301aca85fef489f164d2ae7361808f3f836400f5d104', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-04-18 09:43:30', '2019-04-18 09:43:30', '2020-04-18 14:13:30'),
('d7001254bcf4ce24aed1b1216ef9c9467b43c3550774bb05c725b0eeb2a1393111ee7e0932dd7c77', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-07-25 13:42:35', '2019-07-25 13:42:35', '2020-07-25 18:12:35'),
('d76cbf633a9c0b7fd27a6b83bc32105629ac42cfb402ce85df3317d20bf553905f46d5f63fec8558', 31, 3, 'mohsen15@gmail.com', '[]', 0, '2018-09-03 11:15:26', '2018-09-03 11:15:26', '2019-09-03 15:45:26'),
('d82f93013720e17d3775fd8efa2e06b79afd216242dbfd964b2a982b14cee79c45a073217b328e18', 55, 3, 'Asdas@asdc.com', '[]', 0, '2018-10-16 14:15:24', '2018-10-16 14:15:24', '2019-10-16 17:45:24'),
('d94d9cb3779c34d2f36bede5f673f9f30a33c6b5a73efb4ce91ebbc5c326a2195dff4587860281f7', 5, 3, 'mohsen5@gmail.com', '[]', 0, '2018-10-04 15:20:12', '2018-10-04 15:20:12', '2019-10-04 18:50:12'),
('dc5b7beb040600066850338fd8102106e57a477c98c8176b4b123c43fc5688f3e290cdd9a130c0f7', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-07-17 11:40:04', '2019-07-17 11:40:04', '2020-07-17 16:10:04'),
('dc90f0512aaf807ef6269bed2551a6ef2dfb8dcfbd8084214015effeaaac77a793a753a391dc49e8', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-17 11:45:48', '2018-10-17 11:45:48', '2019-10-17 15:15:48'),
('dd195a686f95bd22055c85903606d3358d4f9a1cfafcaeb97e27dc0ae243d5fa8da8b2821e5ed5e7', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-13 08:28:20', '2018-10-13 08:28:20', '2019-10-13 11:58:20'),
('dd3216f9727287e8813ed3f27a98b34ec54b69bd9a5a0e91dd2b5712450564f9aca12e762f17e692', 109, 3, 'Wqeqwe@wqd.com', '[]', 0, '2018-10-20 13:13:51', '2018-10-20 13:13:51', '2019-10-20 16:43:51'),
('dd407213323762c62c052d2c934e96de0c8c6f79af5be5ec873e42940c7fac0ab41cb2092b1f0aca', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-03-15 13:31:57', '2019-03-15 13:31:57', '2020-03-15 17:01:57'),
('dd6d3aae6999843de2631ce2f3d30db9b58c6ef0468ff3fb0e813b0697fd6bc82a8cb903c9da316d', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-17 11:48:03', '2018-10-17 11:48:03', '2019-10-17 15:18:03'),
('ddf7b89d150d2bce4c418aa9b429946a49712b8acc1dc55ecd073959ba4b09e007e8ecbf31608191', 29, 3, 'izibazi', '[]', 0, '2018-08-19 09:25:09', '2018-08-19 09:25:09', '2019-08-19 13:55:09'),
('dedbbe695d4c4dc7659cf32e219a1539c445bdc8493553f238121f8cde12806d135bde0f344b8176', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-17 11:40:11', '2018-10-17 11:40:11', '2019-10-17 15:10:11'),
('e00f9346119be4d5c96dff30c56e3a8bd1c2fe16a237c25417af534cae5049dd8dc549b594439526', 3, 3, 'Mohsen3@gmail.com', '[]', 0, '2019-11-27 23:25:33', '2019-11-27 23:25:33', '2020-11-28 02:55:33'),
('e03b5020dedb3eddac8e4afafdac163259f7612c6d9b129dab7506d7e5de8952744a4d3992c07f79', 29, 3, 'izibazi', '[]', 0, '2018-08-19 09:20:41', '2018-08-19 09:20:41', '2019-08-19 13:50:41'),
('e0828010927334133c108d40fd6d30712edcd27d205466012f6c82ce18d3cf429f39d52448d6e51b', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-07-25 14:37:26', '2019-07-25 14:37:26', '2020-07-25 19:07:26'),
('e0a284d020619d30a78e8b551074b6a6973ea1640f3fb3238619344b90eba25d1a49971b65c65668', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-12 11:41:39', '2018-10-12 11:41:39', '2019-10-12 15:11:39'),
('e10d1b51adfc36f23bbe73d0297f306ee335de7a2523075d27360bddf9824ca8edf1ecd0de9a5e0a', 41, 3, 'mohsen32@gmail.com', '[]', 0, '2018-10-10 07:48:03', '2018-10-10 07:48:03', '2019-10-10 11:18:03'),
('e164c9a9a2dd3b7ee2a3cd6e0005605e1d92869c2952a0e94a50780615fbd281cf81d6a3eda813e4', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-03-15 13:34:47', '2019-03-15 13:34:47', '2020-03-15 17:04:47'),
('e1cfb753bfcf39b30d9a5dc66ed11866e499720406daa5c1ad17cc63d10822a4cab82bf258348abe', 106, 3, 'Sdvz@dszfz.com', '[]', 0, '2018-10-20 13:06:45', '2018-10-20 13:06:45', '2019-10-20 16:36:45'),
('e227931c51e24e2d43eaa2490129567e8d8396f987a9aa9ddde2fe5bd8f99da307cbd6a8a8a512e2', 120, 3, 'DcdsC@sdCD.com', '[]', 1, '2018-10-23 09:51:34', '2018-10-23 09:51:34', '2019-10-23 13:21:34'),
('e243739afa3afd727bfd6e71e881a6359400a7c386dfae18d4cc6eb275ae4b921933055c779b27e6', 64, 3, 'Wefw@dav.com', '[]', 0, '2018-10-16 15:07:10', '2018-10-16 15:07:10', '2019-10-16 18:37:10'),
('e2a452a691abe7527242fdac9deac531a8ae1fd0caf0fc9644da49c3a3854fce14e73cced9a6b6d5', 3, 3, 'Mohsen3@gmail.com', '[]', 0, '2018-10-21 16:17:24', '2018-10-21 16:17:24', '2019-10-21 19:47:24'),
('e37bf8a536fd107fd682b810cbb7edccd2d44285a7ed0da0e4b009666cc73d3ecf0210700dfee378', 101, 3, 'Sdzcvszd@dsf.com', '[]', 0, '2018-10-20 08:29:44', '2018-10-20 08:29:44', '2019-10-20 11:59:44'),
('e40ee103a63253d6d4317669c07ffc7578162a78163d9ff0435c5686111eb29e9a419d86d28b99cb', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-11 12:12:12', '2018-10-11 12:12:12', '2019-10-11 15:42:12'),
('e51c55cb3fc3ca99a604f96a8120507b1332f85f5641de9cd3d455c301416ba4b927f0bd118452da', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-05-11 08:14:53', '2019-05-11 08:14:53', '2020-05-11 12:44:53'),
('e51d59642d4fe50282b155272f6fe290c6bda8e2faad210aca36fad204c3094b4fdefdd641031042', 86, 3, 'Qweqw@gam.com', '[]', 0, '2018-10-18 12:54:00', '2018-10-18 12:54:00', '2019-10-18 16:24:00'),
('e5373be2075a78931c739959d2f9cf4ca8c6a5b149594d3c4df5f4bc635edc8ee545a729713a7664', 56, 3, 'IpMan@gmail.org', '[]', 0, '2018-10-16 14:19:27', '2018-10-16 14:19:27', '2019-10-16 17:49:27'),
('e546d7725ba53b407289c05d20f89d8a4f4f2dec77e1e9792f2e6b212e5ec471c3c22fed9f0134ff', 41, 3, 'mohsen32@gmail.com', '[]', 1, '2018-10-10 07:48:11', '2018-10-10 07:48:11', '2019-10-10 11:18:11'),
('e6277ff16fdf1b19cdaea809e7ebb9ee392419613c3f01edd5fd2272d85df754ffa41b168a1bd11c', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-10-23 11:33:05', '2019-10-23 11:33:05', '2020-10-23 15:03:05'),
('e66ab26f6151fd564e748ae1b5ae3f035ec4d80c24c0cdbd1a26ff6fb258d0314ed36e496fd7853c', 3, 3, 'Mohsen3@gmail.com', '[]', 0, '2019-12-01 14:41:39', '2019-12-01 14:41:39', '2020-12-01 18:11:39'),
('e693bddefdc6e341d78ae8f38cfe64e6bf3e3b8d08e394fe87c61221cd6a65e22bb5cb5748380a55', 140, 3, '09145821998', '[]', 0, '2020-02-19 11:33:20', '2020-02-19 11:33:20', '2021-02-19 15:03:20'),
('e6c00bde96a56250f15458d08dac23431735e760b21b013b854dd6376aa3ca7bf3921ba08f46d28d', 24, 3, 'izibazi', '[]', 0, '2018-08-13 09:45:23', '2018-08-13 09:45:23', '2019-08-13 14:15:23'),
('e71f26d9ba2e52dc320c8f4b746c06748e484d60ddfe3594311afb9cd3798c299adba21a5d00d130', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-10-29 07:50:11', '2019-10-29 07:50:11', '2020-10-29 11:20:11'),
('e74c99b99f65e75bf5e6ce6d215412b310936a0fb57c57919f1dbc3c506a06987059fc205961c4a3', 3, 3, '099', '[]', 0, '2020-03-01 09:43:44', '2020-03-01 09:43:44', '2021-03-01 13:13:44'),
('e781b02ab7c1da8d3ad9c348cbf3c31e5bb8352eed67cd497efea02dd662a8ede9823a07ae11df9c', 31, 3, 'mohsen15@gmail.com', '[]', 1, '2018-09-17 12:38:37', '2018-09-17 12:38:37', '2019-09-17 17:08:37'),
('e79e83417ceb8d3932de5859ded19fc9bccd051a75f8e6632e59de020bd5aa117cade98a5de85fed', 97, 3, 'Fdgdfgd@we.dsf', '[]', 0, '2018-10-18 13:59:28', '2018-10-18 13:59:28', '2019-10-18 17:29:28'),
('e8e3649b0078679eadda17b2cdc6ce797e15a87b262c933d7a71434ff0dcf11da5d1b4498041b31f', 78, 3, 'Qweq@gfy.com', '[]', 0, '2018-10-17 13:49:07', '2018-10-17 13:49:07', '2019-10-17 17:19:07'),
('e99972741463e3dc22cfdfe8107a5e1ccaddf5d1ce517edb312552873fdd9d1f20367109cafbe471', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-17 11:39:33', '2018-10-17 11:39:33', '2019-10-17 15:09:33'),
('e9d56e531665090f26f1a7ac2e0f3f27aa7ebf3982b86e6e07dbe91f8573c63ae1d44e9de3f4c02e', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-05-11 06:51:19', '2019-05-11 06:51:19', '2020-05-11 11:21:19'),
('e9f3b938c4cfa345f87f8f193a5cf31999530815e1b56f128a611189be07ba814b5256a706980318', 138, 3, 'aliahmadi@gmail.com', '[]', 0, '2020-02-17 08:21:56', '2020-02-17 08:21:56', '2021-02-17 11:51:56'),
('eb3201b626879f783060fa04c9b4e301f6017b3c33819e01f3f8567c804f99182fd014ec2941d724', 85, 3, 'pouyaak@gmail.com', '[]', 1, '2018-10-23 08:36:59', '2018-10-23 08:36:59', '2019-10-23 12:06:59'),
('eb5d1b07598018c5a131189ae92ced2000de5877c751cf364353d67e0db261ea7e9c9d0f1c1abcc8', 29, 3, 'izibazi', '[]', 0, '2018-08-19 09:16:11', '2018-08-19 09:16:11', '2019-08-19 13:46:11'),
('ebb0aa05c281f5cd6f188b4b89bd2b5295894bad2bf32fb16f11f4edb0b06f8af8220de293723c95', 82, 3, 'Sadxas@dca.com', '[]', 0, '2018-10-17 15:00:48', '2018-10-17 15:00:48', '2019-10-17 18:30:48'),
('ecb50b168f294ef5f9e9609926ea9b02e4692c3af4ea8de8acff0ba4d1a70c4a13e71ae757eeb6ee', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-23 13:18:47', '2018-10-23 13:18:47', '2019-10-23 16:48:47'),
('ecc1f1670b56ed5234d140ccc2525b3e830a014dd01d2e6d573d25492473f89fee1b0875abfbc3ab', 31, 3, 'izibazi', '[]', 0, '2018-08-26 06:24:42', '2018-08-26 06:24:42', '2019-08-26 10:54:42'),
('ed16f34ac7d1c0ebd35f6c84828340ea01b2df4a9f68909e92ec79b0a87d0c22322cc0d627305bcf', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-23 10:29:35', '2018-10-23 10:29:35', '2019-10-23 13:59:35'),
('ed19ee2d2aa690331be65862873437f9e68e5d807353f5a611102cf10821235d25eed38da90be182', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-03-10 19:10:13', '2019-03-10 19:10:13', '2020-03-10 22:40:13'),
('ed7ba1a17f9e2107c1720115285cab4f2e5b69474d3f0a6614bde0943d4272ba60d4ab46cd1a4c37', 27, 3, 'izibazi', '[]', 0, '2018-08-13 10:33:28', '2018-08-13 10:33:28', '2019-08-13 15:03:28'),
('edba5dbcd756ef031ebf491e01e614263b1852c218f21da07f39a2f4ceb61d52c823b0232899c83a', 31, 3, 'mohsen15@gmail.com', '[]', 0, '2018-10-04 13:17:36', '2018-10-04 13:17:36', '2019-10-04 16:47:36'),
('ee7eb89f6bc935028dac3d943866b95f6f7796bc6136146f9eb23b0b37ab88c610d68d39ad99a2ac', 63, 3, 'sauuca@dasvc.com', '[]', 0, '2018-10-20 12:48:01', '2018-10-20 12:48:01', '2019-10-20 16:18:01'),
('eedb5fd1c294016dcffd630288949513c0c540c63c2b42b18232c2aec814e44ce62f109503b10b0f', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-07-25 13:15:41', '2019-07-25 13:15:41', '2020-07-25 17:45:41'),
('eedf8de4c4533d7384d55380d651a4d10d7f43bddde0577fbb45b0dee38a076ed96f2a967e72fda1', 85, 3, 'pouyaak@gmail.com', '[]', 0, '2019-03-06 11:48:49', '2019-03-06 11:48:49', '2020-03-06 15:18:49'),
('ef62d920fb967a1d6b27bcbbd9313216f98e04f25799f840e9b256a233afcfc090d62d95b1925a45', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-11 13:27:14', '2018-10-11 13:27:14', '2019-10-11 16:57:14'),
('efacf9ce0e9fefd7b7902241c76ca7aad411c3a6a84b204313f141fc917253a36739bd2fb005db6d', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-05-05 10:23:41', '2019-05-05 10:23:41', '2020-05-05 14:53:41'),
('efb97660e89c7418cda918cb792013d7358d98ee461beda69dc20576b143281ec4f86bc30d26aa56', 66, 3, 'Gandi@india.is', '[]', 0, '2018-10-17 07:42:25', '2018-10-17 07:42:25', '2019-10-17 11:12:25'),
('f00ceab5a3bcc3e1b31bbed7d48267c74e5fb4d0c8fe42cb3defde478ccc58cf2ce9d30a5c311b96', 85, 3, 'pouyaak@gmail.com', '[]', 1, '2018-10-18 13:23:18', '2018-10-18 13:23:18', '2019-10-18 16:53:18'),
('f0a2960f8463c43d7b47ea27b6a60de0d0f0fd9533302ae50ad45e3c6f7e5015b69426d22ca65799', 124, 3, 'pouyaaknnn@gmail.com', '[]', 1, '2018-10-23 10:38:45', '2018-10-23 10:38:45', '2019-10-23 14:08:45'),
('f29b835723c5fe8ecce1c537fe59f7c5ea83cb3c60c2686b4aff5b60b9b4525541daf4f830d5b8ef', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-04 12:25:50', '2018-10-04 12:25:50', '2019-10-04 15:55:50'),
('f35cd1e8fbee4da358653877d4af3b72358dd2bf1f58cdacffa3747f0149316ef88e0ddbd1d202e3', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-17 11:44:04', '2018-10-17 11:44:04', '2019-10-17 15:14:04'),
('f388cce4610c2c2cbb74dd2e69cc547408ce0088815e46eaaf0e044bff6383a9769f2c9aaa51d8ef', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2019-11-13 16:43:44', '2019-11-13 16:43:44', '2020-11-13 20:13:44'),
('f49ddc5d226cd1895ce1e3de9d1b24079adc5a8541f8f675820ee5a92cbe30cdb78267c78a0b289f', 18, 3, 'izibazi', '[]', 0, '2018-08-13 05:31:59', '2018-08-13 05:31:59', '2019-08-13 10:01:59'),
('f4b9a6e188e4117235a694428b49ae5a60fd502aea00d40453c7b168df911d9a831e7be546019e67', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-23 10:34:50', '2018-10-23 10:34:50', '2019-10-23 14:04:50'),
('f4ffc47e99e3482e1fa9d738ff13ffb6497e6a390c37d31de7258fd99b6eb89740f036c73d0f04b7', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-03-06 14:24:53', '2019-03-06 14:24:53', '2020-03-06 17:54:53'),
('f51d6f8f048a6b8ffb4ce66ed8d75c3a8364e35d21080d80569258e7a421163fc42bdbdabbead7a1', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-02-28 06:36:04', '2019-02-28 06:36:04', '2020-02-28 10:06:04'),
('f54cdfda86fdcc2117cb7cbffd918c71c2bfa2c31ab3963d4b53fd1aa2c0ca4a09b68a8a0d35c599', 40, 3, 'izibazi', '[]', 0, '2018-10-08 17:01:24', '2018-10-08 17:01:24', '2019-10-08 20:31:24'),
('f5a5db283c5913e89822633779dedbab96e13ea109ebbce6c0b0eb3c0d7e4717af06d4f8ed054ed3', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2019-02-23 12:37:06', '2019-02-23 12:37:06', '2020-02-23 16:07:06'),
('f5df9096b40c7bd65bb72b454b6834928b665e41d3d377c35477d5a726754cbbddab1c6f01ebc182', 117, 3, 'Dsfsdf@dsf.xczs', '[]', 1, '2018-10-22 11:51:04', '2018-10-22 11:51:04', '2019-10-22 15:21:04'),
('f6794f1061bd9124854d7673de80bb6bd1e4888db24e786ff03e6d95e80ef38d1f1ca88f371e78d4', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-11 08:16:47', '2018-10-11 08:16:47', '2019-10-11 11:46:47'),
('f6cbf8267a13de5d0515fa5e689b589b55f1f72453bc58b27fb76cd5a642a497b09e8a5e6a7be27f', 70, 3, 'Wefwef@dsafs.com', '[]', 0, '2018-10-17 07:53:09', '2018-10-17 07:53:09', '2019-10-17 11:23:09'),
('f733753045ef8cebe165f9392f98c15468aeb6877ece45444eeed72d4615ec3197a9b719ae9e0397', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-10 13:10:04', '2018-10-10 13:10:04', '2019-10-10 16:40:04'),
('f83e405ccfdd2fbd5fed5961643941a1559ca303bdd94595b8414502e4328d43bcae60bc898f8abb', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 13:21:06', '2018-10-18 13:21:06', '2019-10-18 16:51:06'),
('f88bf735943f0f6aeb1fa084edc4633a1ce7c3662cb558c89b239a238b4481c5a01c40b8579eed37', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-04 12:42:25', '2018-10-04 12:42:25', '2019-10-04 16:12:25'),
('f90184676da2d3a82225a645da43a7674c2ad5466fb57b3b72377b2612e82b1cc134dfcf6b5e99fa', 33, 3, 'izibazi', '[]', 0, '2018-09-01 12:08:12', '2018-09-01 12:08:12', '2019-09-01 16:38:12'),
('f921a4f27e465de2eeb1349756b54fc2ab244ae394db06a3062ba5530fa9be362f652baf48efd2fe', 131, 3, 'Ali@ali.ali', '[]', 1, '2019-06-01 13:51:13', '2019-06-01 13:51:13', '2020-06-01 18:21:13'),
('f9258e960c1e7c559ecd9606523c6cad661a981d163bae70ef9a5bb2d9defd73cea08df73a23bda0', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-04-18 10:10:55', '2019-04-18 10:10:55', '2020-04-18 14:40:55'),
('f93e098b822c173cd7ec6dce26187f6acb9574960d30fb9214f84af922380e8b113205eb021a8a5c', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-18 15:46:24', '2018-10-18 15:46:24', '2019-10-18 19:16:24'),
('f981b2639b6a09d2ddda8402dae94630fe2d387fd894726df4047ad0a4d5c8716f0ff8c409820d0a', 3, 3, 'Mohsen3@gmail.com', '[]', 0, '2019-02-05 09:22:08', '2019-02-05 09:22:08', '2020-02-05 12:52:08'),
('fa603ea5189d3b43919710bc0828db88a4c034b87740b8674a817b695452f28b88fe85184cb1f486', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-12 10:10:18', '2018-10-12 10:10:18', '2019-10-12 13:40:18'),
('fae0db20631e805fedba7045e4b5360dd8588e1eb5aaf6c86d5c5b752af5b5a1251ce138f9f4f18e', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-04-20 08:39:09', '2019-04-20 08:39:09', '2020-04-20 13:09:09'),
('fb591b0ec1ebd27476ecfc156b69e9570e9ae8eafd65dc50a3e9c7fab4d3d7e35a4a45dcc83e5d6e', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-18 13:01:48', '2018-10-18 13:01:48', '2019-10-18 16:31:48'),
('fc271b1d3f68367226ffc20bb66d993ce70a7f74139c59e824d7bfa7ca88e04ca83fe96f6980d082', 3, 3, 'mohsen3@gmail.com', '[]', 1, '2018-10-23 10:59:11', '2018-10-23 10:59:11', '2019-10-23 14:29:11'),
('fdcc61d97da7e8c02e2160ecb296b8fd876c1360eccbe56960e600df797a6a1ca537b6222367ee1a', 48, 3, 'fafsdf@sfsf.sdfs', '[]', 1, '2018-10-10 12:53:21', '2018-10-10 12:53:21', '2019-10-10 16:23:21'),
('fe1d6cebb7f6980765fd5a19924d4f4e9e72222f8918dd64222700b65e6360c42e6c2f987f2cc7a3', 31, 3, 'mohsen15@gmail.com', '[]', 1, '2018-10-10 09:21:47', '2018-10-10 09:21:47', '2019-10-10 12:51:47'),
('fe39e79598f56738f627db8d322dfd869bef244d05514ace62816d8c3bf31942009a64fd2d6ece14', 3, 3, 'mohsen3@gmail.com', '[]', 0, '2018-10-06 13:38:39', '2018-10-06 13:38:39', '2019-10-06 17:08:39'),
('feda08c5d4734840a8523a57b4f7ce4eae7be9b465c72e0f927798a3d7af8994ece2a9c698320243', 3, 3, 'Mohsen3@gmail.com', '[]', 1, '2019-04-18 09:45:53', '2019-04-18 09:45:53', '2020-04-18 14:15:53'),
('ff5af147fcc4740126f073eb29426e3c2dc11173c2fb0f3361bcd60b798e7bf56eb7b0be2979fd5a', 31, 3, 'mohsen15@gmail.com', '[]', 1, '2018-10-12 12:03:01', '2018-10-12 12:03:01', '2019-10-12 15:33:01'),
('ff984cf7652b271c3818c4f636459a72460ad919020173f8320114c73d2fdd6f9ffb3c0cdc1b057e', 31, 3, 'izibazi', '[]', 0, '2018-08-26 06:34:27', '2018-08-26 06:34:27', '2019-08-26 11:04:27'),
('ffa65f443dcfb6b44e4b8c8a66db7eebc6984c7b295a053afb770904e9d159292e5a0902ad5aed67', 31, 3, 'mohsen15@gmail.com', '[]', 0, '2018-10-04 15:21:48', '2018-10-04 15:21:48', '2019-10-04 18:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'Xb1uyRnWgzwBEcZ9PZlWAsk5HD570M6f4JQT54rF', 'http://localhost', 1, 0, 0, '2018-08-13 03:00:47', '2018-08-13 03:00:47'),
(2, NULL, 'Laravel Password Grant Client', 'IVQARJUCUcCOW6b9FJAVDCacR7In5xi2U8dAa1qp', 'http://localhost', 0, 1, 0, '2018-08-13 03:00:48', '2018-08-13 03:00:48'),
(3, NULL, 'Laravel Personal Access Client', 'B3UpD8tNHyJrY7Mu96XLezTkQ7ydABXRMIirATdT', 'http://localhost', 1, 0, 0, '2018-08-13 03:01:13', '2018-08-13 03:01:13'),
(4, NULL, 'Laravel Password Grant Client', 'IdQziEVRjtchZFkDNSxfPvL24NN7C5d7kWNYuqHB', 'http://localhost', 0, 1, 0, '2018-08-13 03:01:13', '2018-08-13 03:01:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-08-13 03:00:48', '2018-08-13 03:00:48'),
(2, 3, '2018-08-13 03:01:13', '2018-08-13 03:01:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mnfi340@gmail.com', '$2y$10$vbR24sC4qmJP2affh250GeWIx3Ue75zu7SIJVoPD0SDkllEon1TBS', '2018-10-13 09:54:48'),
('mohsen@gmail.com', '$2y$10$OTgB9FrO/NHktTouWTfS8.EvUd/XchED5v/mGnk2.3aUu0v4M.TSy', '2018-10-17 14:28:42'),
('mohsen3@gmail.com', '$2y$10$jwjdfLTcjZk9uATZT5qy0u4t2DFOhKM0MIVyWNHHAyUQWgHvJXk0G', '2019-02-16 08:09:11');

-- --------------------------------------------------------

--
-- Table structure for table `penalty_types`
--

DROP TABLE IF EXISTS `penalty_types`;
CREATE TABLE IF NOT EXISTS `penalty_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `day_count` int(11) NOT NULL,
  `price_percent` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penalty_types`
--

INSERT INTO `penalty_types` (`id`, `day_count`, `price_percent`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 5, '2019-08-05 19:30:00', '2019-08-05 19:30:00', NULL),
(2, 2, 6, '2019-05-06 19:30:25', NULL, NULL),
(3, 3, 7, '2019-05-06 19:30:25', NULL, NULL),
(4, 4, 8, '2019-05-06 19:30:25', NULL, NULL),
(5, 5, 9, '2019-05-06 19:30:25', NULL, NULL),
(6, 6, 10, '2019-05-06 19:30:25', NULL, NULL),
(7, 7, 11, '2019-05-06 19:30:25', NULL, NULL),
(8, 8, 12, '2019-05-06 19:30:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `imageable_id` int(11) NOT NULL,
  `imageable_type` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `imageable_id`, `imageable_type`, `path`, `url`, `type`, `width`, `height`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'App\\GameInfo', 'uploads/images/1.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/1.2.jpg', 'app_cover', 200, 200, NULL, NULL, NULL),
(2, 2, 'App\\GameInfo', 'uploads/images/2.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2.2.jpg', 'app_cover', 200, 200, NULL, NULL, NULL),
(3, 3, 'App\\GameInfo', 'uploads/images/3.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/3.2.jpg', 'app_cover', 200, 200, NULL, NULL, NULL),
(4, 4, 'App\\GameInfo', 'uploads/images/4.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/4.2.jpg', 'app_cover', 200, 200, NULL, NULL, NULL),
(5, 5, 'App\\GameInfo', 'uploads/images/5.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/5.2.jpg', 'app_cover', 200, 200, NULL, NULL, NULL),
(6, 6, 'App\\GameInfo', 'uploads/images/6.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/6.2.jpg', 'app_cover', 200, 200, NULL, NULL, NULL),
(7, 7, 'App\\GameInfo', 'uploads/images/7.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/7.2.jpg', 'app_cover', 200, 200, NULL, NULL, NULL),
(8, 8, 'App\\GameInfo', 'uploads/images/8.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/8.2.jpg', 'app_cover', 200, 200, NULL, NULL, NULL),
(9, 9, 'App\\GameInfo', 'uploads/images/9.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/9.2.jpg', 'app_cover', 200, 200, NULL, NULL, NULL),
(10, 10, 'App\\GameInfo', 'uploads/images/10.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/10.2.jpg', 'app_cover', 200, 200, NULL, NULL, NULL),
(11, 1, 'App\\Slider', 'uploads/images/slide1.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/slide1.jpg', 'app_main', 1000, 300, NULL, NULL, NULL),
(12, 2, 'App\\Slider', 'uploads/images/slide2.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/slide2.jpg', 'app_main', 1000, 300, NULL, NULL, NULL),
(13, 3, 'App\\Slider', 'uploads/images/slide3.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/slide3.jpg', 'app_main', 1000, 300, NULL, NULL, NULL),
(14, 4, 'App\\Slider', 'uploads/images/slide4.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/slide4.jpg', 'app_main', 1000, 300, NULL, NULL, NULL),
(15, 5, 'App\\Slider', 'uploads/images/slide5.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/slide5.jpg', 'app_main', 1000, 300, NULL, NULL, NULL),
(16, 1, 'App\\Post', 'uploads/images/1.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/post.jpg', 'app_cover', 200, 200, NULL, NULL, NULL),
(17, 2, 'App\\Post', 'uploads/images/2.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/post.jpg', 'app_cover', 200, 200, NULL, NULL, NULL),
(18, 3, 'App\\Post', 'uploads/images/3.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/post.jpg', 'app_cover', 200, 200, NULL, NULL, NULL),
(19, 4, 'App\\Post', 'uploads/images/4.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/post.jpg', 'app_cover', 200, 200, NULL, NULL, NULL),
(20, 5, 'App\\Post', 'uploads/images/5.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/post.jpg', 'app_cover', 200, 200, NULL, NULL, NULL),
(21, 6, 'App\\Post', 'uploads/images/6.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/post.jpg', 'app_cover', 200, 200, NULL, NULL, NULL),
(26, 6, 'App\\Post', 'uploads/images/6.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/post.jpg', 'app_cover', 200, 200, NULL, NULL, NULL),
(27, 6, 'App\\Post', 'uploads/images/6.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/post.jpg', 'app_cover', 200, 200, NULL, NULL, NULL),
(28, 6, 'App\\Post', 'uploads/images/6.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/post.jpg', 'app_cover', 200, 200, NULL, NULL, NULL),
(33, 17, 'AppGameInfo', 'uploads/images/2018/10/19d06h54m85uSaWcIZL5QQ_s_200_240.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d06h54m85uSaWcIZL5QQ_s_200_240.jpg', 'app_cover', 200, 240, '2018-10-19 15:24:13', '2018-10-19 15:24:13', NULL),
(34, 17, 'AppGameInfo', 'uploads/images/2018/10/19d06h59m85uuAMfKe8cSy_s_200_240.JPG', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d06h59m85uuAMfKe8cSy_s_200_240.JPG', 'app_cover', 200, 240, '2018-10-19 15:29:57', '2018-10-19 15:29:57', NULL),
(35, 17, 'AppGameInfo', 'uploads/images/2018/10/19d07h12m85uUPoPPoVFvY_s_200_240.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h12m85uUPoPPoVFvY_s_200_240.jpg', 'app_cover', 200, 240, '2018-10-19 15:42:15', '2018-10-19 15:42:15', NULL),
(36, 18, 'AppGameInfo', 'uploads/images/2018/10/19d07h21m85uae1b0tcqVx_s_200_240.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h21m85uae1b0tcqVx_s_200_240.jpg', 'app_cover', 200, 240, '2018-10-19 15:51:13', '2018-10-19 15:51:13', NULL),
(37, 18, 'AppGameInfo', 'uploads/images/2018/10/19d07h21m85ughEIVjgqfu_s_450_400.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h21m85ughEIVjgqfu_s_450_400.jpg', 'app_main', 450, 400, '2018-10-19 15:51:14', '2018-10-19 15:51:14', NULL),
(38, 19, 'AppGameInfo', 'uploads/images/2018/10/19d07h24m85uhNylpDEhdU_s_200_240.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h24m85uhNylpDEhdU_s_200_240.jpg', 'app_cover', 200, 240, '2018-10-19 15:54:41', '2018-10-19 15:54:41', NULL),
(39, 19, 'AppGameInfo', 'uploads/images/2018/10/19d07h24m85ueemGDagEfc_s_450_400.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h24m85ueemGDagEfc_s_450_400.jpg', 'app_main', 450, 400, '2018-10-19 15:54:42', '2018-10-19 15:54:42', NULL),
(40, 19, 'AppGameInfo', 'uploads/images/2018/10/19d07h24m85uuyG11YB71q_s_450_400.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h24m85uuyG11YB71q_s_450_400.jpg', 'site_main', 450, 400, '2018-10-19 15:54:43', '2018-10-19 15:54:43', NULL),
(41, 19, 'AppGameInfo', 'uploads/images/2018/10/19d07h24m85u60gxtAOgTG_s_150_175.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h24m85u60gxtAOgTG_s_150_175.jpg', 'site_cover', 150, 175, '2018-10-19 15:54:44', '2018-10-19 15:54:44', NULL),
(42, 20, 'AppGameInfo', 'uploads/images/2018/10/19d07h33m85uf1G8y2i8eK_s_200_240.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h33m85uf1G8y2i8eK_s_200_240.jpg', 'app_cover', 200, 240, '2018-10-19 16:03:41', '2018-10-19 16:03:41', NULL),
(43, 21, 'AppGameInfo', 'uploads/images/2018/10/19d07h35m85uXJElSxQzpz_s_200_240.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h35m85uXJElSxQzpz_s_200_240.jpg', 'app_cover', 200, 240, '2018-10-19 16:05:55', '2018-10-19 16:05:55', NULL),
(44, 21, 'AppGameInfo', 'uploads/images/2018/10/19d07h35m85uFnSVinE0EF_s_200_240.jpg', 'uploads/images/2018/10/19d07h35m85uFnSVinE0EF_s_200_240.jpg', 'app_cover', 200, 240, '2018-10-19 16:05:55', '2018-10-19 16:05:55', NULL),
(45, 21, 'AppGameInfo', 'uploads/images/2018/10/19d07h35m85ue5rHaUCFlE_s_200_240.jpg', 'uploads/images/2018/10/19d07h35m85ue5rHaUCFlE_s_200_240.jpg', 'app_cover', 200, 240, '2018-10-19 16:05:56', '2018-10-19 16:05:56', NULL),
(46, 21, 'AppGameInfo', 'uploads/images/2018/10/19d07h35m85ucXVk4REw6G_s_200_240.jpg', 'uploads/images/2018/10/19d07h35m85ucXVk4REw6G_s_200_240.jpg', 'app_cover', 200, 240, '2018-10-19 16:05:56', '2018-10-19 16:05:56', NULL),
(47, 21, 'AppGameInfo', 'uploads/images/2018/10/19d07h35m85uBjKn6zQmSC_s_200_240.jpg', 'uploads/images/2018/10/19d07h35m85uBjKn6zQmSC_s_200_240.jpg', 'app_cover', 200, 240, '2018-10-19 16:05:56', '2018-10-19 16:05:56', NULL),
(48, 21, 'AppGameInfo', 'uploads/images/2018/10/19d07h35m85uk97BnU2Agh_s_450_400.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h35m85uk97BnU2Agh_s_450_400.jpg', 'app_main', 450, 400, '2018-10-19 16:05:56', '2018-10-19 16:05:56', NULL),
(49, 21, 'AppGameInfo', 'uploads/images/2018/10/19d07h35m85ur3Di8eNDtJ_s_450_400.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h35m85ur3Di8eNDtJ_s_450_400.jpg', 'app_main', 450, 400, '2018-10-19 16:05:57', '2018-10-19 16:05:57', NULL),
(50, 21, 'AppGameInfo', 'uploads/images/2018/10/19d07h35m85uTLBygI3CQm_s_450_400.jpg', 'uploads/images/2018/10/19d07h35m85uTLBygI3CQm_s_450_400.jpg', 'app_main', 450, 400, '2018-10-19 16:05:57', '2018-10-19 16:05:57', NULL),
(51, 21, 'AppGameInfo', 'uploads/images/2018/10/19d07h35m85uga1iaeg5bp_s_450_400.jpg', 'uploads/images/2018/10/19d07h35m85uga1iaeg5bp_s_450_400.jpg', 'app_main', 450, 400, '2018-10-19 16:05:57', '2018-10-19 16:05:57', NULL),
(52, 21, 'AppGameInfo', 'uploads/images/2018/10/19d07h35m85ucsFXFhJ6uC_s_450_400.jpg', 'uploads/images/2018/10/19d07h35m85ucsFXFhJ6uC_s_450_400.jpg', 'app_main', 450, 400, '2018-10-19 16:05:57', '2018-10-19 16:05:57', NULL),
(53, 21, 'AppGameInfo', 'uploads/images/2018/10/19d07h35m85uJR5iINAVfS_s_450_400.jpg', 'uploads/images/2018/10/19d07h35m85uJR5iINAVfS_s_450_400.jpg', 'site_main', 450, 400, '2018-10-19 16:05:57', '2018-10-19 16:05:57', NULL),
(54, 21, 'AppGameInfo', 'uploads/images/2018/10/19d07h35m85u2zluNxlzX6_s_450_400.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h35m85u2zluNxlzX6_s_450_400.jpg', 'site_main', 450, 400, '2018-10-19 16:05:58', '2018-10-19 16:05:58', NULL),
(55, 21, 'AppGameInfo', 'uploads/images/2018/10/19d07h35m85uORDEBNzFFb_s_450_400.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h35m85uORDEBNzFFb_s_450_400.jpg', 'site_main', 450, 400, '2018-10-19 16:05:59', '2018-10-19 16:05:59', NULL),
(56, 21, 'AppGameInfo', 'uploads/images/2018/10/19d07h35m85umYW1eTwIqr_s_150_175.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h35m85umYW1eTwIqr_s_150_175.jpg', 'site_cover', 150, 175, '2018-10-19 16:05:59', '2018-10-19 16:05:59', NULL),
(57, 21, 'AppGameInfo', 'uploads/images/2018/10/19d07h35m85uzA4HDCjT6Q_s_450_400.jpg', 'uploads/images/2018/10/19d07h35m85uzA4HDCjT6Q_s_450_400.jpg', 'site_main', 450, 400, '2018-10-19 16:05:59', '2018-10-19 16:05:59', NULL),
(58, 21, 'AppGameInfo', 'uploads/images/2018/10/19d07h35m85ugYXFW7Dufv_s_450_400.jpg', 'uploads/images/2018/10/19d07h35m85ugYXFW7Dufv_s_450_400.jpg', 'site_main', 450, 400, '2018-10-19 16:05:59', '2018-10-19 16:05:59', NULL),
(59, 21, 'AppGameInfo', 'uploads/images/2018/10/19d07h35m85uI4ePSrpWOb_s_150_175.jpg', 'uploads/images/2018/10/19d07h35m85uI4ePSrpWOb_s_150_175.jpg', 'site_cover', 150, 175, '2018-10-19 16:05:59', '2018-10-19 16:05:59', NULL),
(60, 21, 'AppGameInfo', 'uploads/images/2018/10/19d07h35m85u5jvMmWpQgF_s_150_175.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h35m85u5jvMmWpQgF_s_150_175.jpg', 'site_cover', 150, 175, '2018-10-19 16:05:59', '2018-10-19 16:05:59', NULL),
(61, 21, 'AppGameInfo', 'uploads/images/2018/10/19d07h35m85uWZAIzmrplb_s_150_175.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h35m85uWZAIzmrplb_s_150_175.jpg', 'site_cover', 150, 175, '2018-10-19 16:06:00', '2018-10-19 16:06:00', NULL),
(62, 21, 'AppGameInfo', 'uploads/images/2018/10/19d07h35m85uUxScsxVqwO_s_150_175.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h35m85uUxScsxVqwO_s_150_175.jpg', 'site_cover', 150, 175, '2018-10-19 16:06:00', '2018-10-19 16:06:00', NULL),
(63, 22, 'AppGameInfo', 'uploads/images/2018/10/19d07h38m85uBv0De2hyZ0_s_200_240.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h38m85uBv0De2hyZ0_s_200_240.jpg', 'app_cover', 200, 240, '2018-10-19 16:08:34', '2018-10-19 16:08:34', NULL),
(64, 23, 'AppGameInfo', 'uploads/images/2018/10/19d07h41m85uB9rW7Uod5q_s_200_240.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h41m85uB9rW7Uod5q_s_200_240.jpg', 'app_cover', 200, 240, '2018-10-19 16:11:41', '2018-10-19 16:11:41', NULL),
(65, 23, 'AppGameInfo', 'uploads/images/2018/10/19d07h41m85uMxjAVsvSZE_s_450_400.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h41m85uMxjAVsvSZE_s_450_400.jpg', 'app_main', 450, 400, '2018-10-19 16:11:42', '2018-10-19 16:11:42', NULL),
(66, 23, 'AppGameInfo', 'uploads/images/2018/10/19d07h41m85uSfD4rT2Ikz_s_450_400.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h41m85uSfD4rT2Ikz_s_450_400.jpg', 'site_main', 450, 400, '2018-10-19 16:11:43', '2018-10-19 16:11:43', NULL),
(67, 23, 'AppGameInfo', 'uploads/images/2018/10/19d07h41m85usZimOr83No_s_150_175.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h41m85usZimOr83No_s_150_175.jpg', 'site_cover', 150, 175, '2018-10-19 16:11:43', '2018-10-19 16:11:43', NULL),
(68, 23, 'AppGameInfo', 'uploads/images/2018/10/19d07h42m85uwiL9mBK6HF_s_200_240.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h42m85uwiL9mBK6HF_s_200_240.jpg', 'app_cover', 200, 240, '2018-10-19 16:12:36', '2018-10-19 16:12:36', NULL),
(69, 23, 'AppGameInfo', 'uploads/images/2018/10/19d07h42m85uCdIUYfzB3F_s_450_400.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h42m85uCdIUYfzB3F_s_450_400.jpg', 'app_main', 450, 400, '2018-10-19 16:12:37', '2018-10-19 16:12:37', NULL),
(70, 23, 'AppGameInfo', 'uploads/images/2018/10/19d07h42m85unJ1fsTTxL3_s_450_400.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h42m85unJ1fsTTxL3_s_450_400.jpg', 'site_main', 450, 400, '2018-10-19 16:12:37', '2018-10-19 16:12:37', NULL),
(71, 23, 'AppGameInfo', 'uploads/images/2018/10/19d07h42m85u4mZ3mqYVH1_s_150_175.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2018/10/19d07h42m85u4mZ3mqYVH1_s_150_175.jpg', 'site_cover', 150, 175, '2018-10-19 16:12:38', '2018-10-19 16:12:38', NULL),
(72, 1, 'App\\GameInfo', 'uploads/images/1.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/1.2.jpg', 'app_main', 200, 200, NULL, NULL, NULL),
(73, 2, 'App\\GameInfo', 'uploads/images/2.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/2.2.jpg', 'app_main', 200, 200, NULL, NULL, NULL),
(74, 3, 'App\\GameInfo', 'uploads/images/3.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/3.2.jpg', 'app_main', 200, 200, NULL, NULL, NULL),
(75, 4, 'App\\GameInfo', 'uploads/images/4.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/4.2.jpg', 'app_main', 200, 200, NULL, NULL, NULL),
(76, 5, 'App\\GameInfo', 'uploads/images/5.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/5.2.jpg', 'app_main', 200, 200, NULL, NULL, NULL),
(77, 6, 'App\\GameInfo', 'uploads/images/6.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/6.2.jpg', 'app_main', 200, 200, NULL, NULL, NULL),
(78, 7, 'App\\GameInfo', 'uploads/images/7.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/7.2.jpg', 'app_main', 200, 200, NULL, NULL, NULL),
(79, 8, 'App\\GameInfo', 'uploads/images/8.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/8.2.jpg', 'app_main', 200, 200, NULL, NULL, NULL),
(80, 9, 'App\\GameInfo', 'uploads/images/9.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/9.2.jpg', 'app_main', 200, 200, NULL, NULL, NULL),
(81, 10, 'App\\GameInfo', 'uploads/images/10.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/10.2.jpg', 'app_main', 200, 200, NULL, NULL, NULL),
(82, 1, 'App\\Slider', 'uploads/images/slide1.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/slide1.jpg', 'app_main', 1000, 300, NULL, NULL, NULL),
(83, 2, 'App\\Slider', 'uploads/images/slide2.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/slide2.jpg', 'app_main', 1000, 300, NULL, NULL, NULL),
(84, 3, 'App\\Slider', 'uploads/images/slide3.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/slide3.jpg', 'app_main', 1000, 300, NULL, NULL, NULL),
(85, 4, 'App\\Slider', 'uploads/images/slide4.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/slide4.jpg', 'app_main', 1000, 300, NULL, NULL, NULL),
(86, 26, 'App\\GameInfo', 'uploads/images/2019/12/28_or_11.jpg', 'http://localhost:8080/izibazi/uploads/images/2019/12/28_or_11.jpg', 'original', 0, 0, '2019-12-23 10:31:45', '2019-12-23 10:31:45', NULL),
(87, 26, 'App\\GameInfo', 'uploads/images/2019/12/28_or_11.jpg', 'http://localhost:8080/izibazi/uploads/images/2019/12/28_or_11.jpg', 'app_game_cover', 0, 0, '2019-12-23 10:31:45', '2019-12-23 10:31:45', NULL),
(88, 26, 'App\\GameInfo', 'uploads/images/2019/12/76_or_37f0f0a351738e26fa701bf208feb3b7r.jpg', 'http://localhost:8080/izibazi/uploads/images/2019/12/76_or_37f0f0a351738e26fa701bf208feb3b7r.jpg', 'original', 0, 0, '2019-12-23 10:31:45', '2019-12-23 10:31:45', NULL),
(89, 26, 'App\\GameInfo', 'uploads/images/2019/12/76_or_37f0f0a351738e26fa701bf208feb3b7r.jpg', 'http://localhost:8080/izibazi/uploads/images/2019/12/76_or_37f0f0a351738e26fa701bf208feb3b7r.jpg', 'app_game_main', 0, 0, '2019-12-23 10:31:45', '2019-12-23 10:31:45', NULL),
(90, 26, 'App\\GameInfo', 'uploads/images/2019/12/29_or_ic_appetizer.jpg', 'http://localhost:8080/izibazi/uploads/images/2019/12/29_or_ic_appetizer.jpg', 'original', 0, 0, '2019-12-23 10:31:45', '2019-12-23 10:31:45', NULL),
(91, 26, 'App\\GameInfo', 'uploads/images/2019/12/29_or_ic_appetizer.jpg', 'http://localhost:8080/izibazi/uploads/images/2019/12/29_or_ic_appetizer.jpg', 'app_game_main', 0, 0, '2019-12-23 10:31:45', '2019-12-23 10:31:45', NULL),
(92, 26, 'App\\GameInfo', 'uploads/images/2019/12/36_or_ic_card_swipe.png', 'http://localhost:8080/izibazi/uploads/images/2019/12/36_or_ic_card_swipe.png', 'original', 0, 0, '2019-12-23 10:31:45', '2019-12-23 10:31:45', NULL),
(93, 26, 'App\\GameInfo', 'uploads/images/2019/12/36_or_ic_card_swipe.png', 'http://localhost:8080/izibazi/uploads/images/2019/12/36_or_ic_card_swipe.png', 'app_game_main', 0, 0, '2019-12-23 10:31:46', '2019-12-23 10:31:46', NULL),
(94, 26, 'App\\GameInfo', 'uploads/images/2019/12/33_or_ic_chicken_and_ribs.jpg', 'http://localhost:8080/izibazi/uploads/images/2019/12/33_or_ic_chicken_and_ribs.jpg', 'original', 0, 0, '2019-12-23 10:31:46', '2019-12-23 10:31:46', NULL),
(95, 26, 'App\\GameInfo', 'uploads/images/2019/12/33_or_ic_chicken_and_ribs.jpg', 'http://localhost:8080/izibazi/uploads/images/2019/12/33_or_ic_chicken_and_ribs.jpg', 'app_game_main', 0, 0, '2019-12-23 10:31:46', '2019-12-23 10:31:46', NULL),
(96, 26, 'App\\GameInfo', 'uploads/images/2019/12/68_or_img_restaurant.jpg', 'http://localhost:8080/izibazi/uploads/images/2019/12/68_or_img_restaurant.jpg', 'original', 0, 0, '2019-12-23 10:31:46', '2019-12-23 10:31:46', NULL),
(97, 26, 'App\\GameInfo', 'uploads/images/2019/12/68_or_img_restaurant.jpg', 'http://localhost:8080/izibazi/uploads/images/2019/12/68_or_img_restaurant.jpg', 'app_game_main', 0, 0, '2019-12-23 10:31:46', '2019-12-23 10:31:46', NULL),
(98, 27, 'App\\GameInfo', 'uploads/images/2019/12/66_or_11.jpg', 'http://localhost:8080/izibazi/uploads/images/2019/12/66_or_11.jpg', 'original', 0, 0, '2019-12-23 10:44:48', '2019-12-23 10:44:48', NULL),
(99, 27, 'App\\GameInfo', 'uploads/images/2019/12/66_or_11.jpg', 'http://localhost:8080/izibazi/uploads/images/2019/12/66_or_11.jpg', 'app_game_cover', 0, 0, '2019-12-23 10:44:48', '2019-12-23 10:44:48', NULL),
(100, 27, 'App\\GameInfo', 'uploads/images/2019/12/56_or_37f0f0a351738e26fa701bf208feb3b7r.jpg', 'http://localhost:8080/izibazi/uploads/images/2019/12/56_or_37f0f0a351738e26fa701bf208feb3b7r.jpg', 'original', 0, 0, '2019-12-23 10:44:48', '2019-12-23 10:44:48', NULL),
(101, 27, 'App\\GameInfo', 'uploads/images/2019/12/56_or_37f0f0a351738e26fa701bf208feb3b7r.jpg', 'http://localhost:8080/izibazi/uploads/images/2019/12/56_or_37f0f0a351738e26fa701bf208feb3b7r.jpg', 'app_game_main', 0, 0, '2019-12-23 10:44:48', '2019-12-23 10:44:48', NULL),
(102, 27, 'App\\GameInfo', 'uploads/images/2019/12/57_or_ic_appetizer.jpg', 'http://localhost:8080/izibazi/uploads/images/2019/12/57_or_ic_appetizer.jpg', 'original', 0, 0, '2019-12-23 10:44:48', '2019-12-23 10:44:48', NULL),
(103, 27, 'App\\GameInfo', 'uploads/images/2019/12/57_or_ic_appetizer.jpg', 'http://localhost:8080/izibazi/uploads/images/2019/12/57_or_ic_appetizer.jpg', 'app_game_main', 0, 0, '2019-12-23 10:44:48', '2019-12-23 10:44:48', NULL),
(104, 27, 'App\\GameInfo', 'uploads/images/2019/12/45_or_ic_appetizer.jpg', 'http://localhost:8080/izibazi/uploads/images/2019/12/45_or_ic_appetizer.jpg', 'original', 0, 0, '2019-12-23 10:44:48', '2019-12-23 10:44:48', NULL),
(105, 27, 'App\\GameInfo', 'uploads/images/2019/12/45_or_ic_appetizer.jpg', 'http://localhost:8080/izibazi/uploads/images/2019/12/45_or_ic_appetizer.jpg', 'app_game_main', 0, 0, '2019-12-23 10:44:48', '2019-12-23 10:44:48', NULL),
(106, 27, 'App\\GameInfo', 'uploads/images/2019/12/74_or_ic_card_swipe.png', 'http://localhost:8080/izibazi/uploads/images/2019/12/74_or_ic_card_swipe.png', 'original', 0, 0, '2019-12-23 10:44:48', '2019-12-23 10:44:48', NULL),
(107, 27, 'App\\GameInfo', 'uploads/images/2019/12/74_or_ic_card_swipe.png', 'http://localhost:8080/izibazi/uploads/images/2019/12/74_or_ic_card_swipe.png', 'app_game_main', 0, 0, '2019-12-23 10:44:48', '2019-12-23 10:44:48', NULL),
(108, 7, 'App\\Post', 'uploads/images/2019/12/42_or_24ترم بندی.jpg', 'http://localhost:8080/izibazi/uploads/images/2019/12/42_or_24ترم بندی.jpg', 'original', 0, 0, '2019-12-28 10:41:54', '2019-12-28 10:56:45', '2019-12-28 10:56:45'),
(109, 7, 'App\\Post', 'uploads/images/2019/12/42_or_24ترم بندی.jpg', 'http://localhost:8080/izibazi/uploads/images/2019/12/42_or_24ترم بندی.jpg', 'app_post_cover', 0, 0, '2019-12-28 10:41:55', '2019-12-28 10:56:45', '2019-12-28 10:56:45'),
(110, 7, 'App\\Post', 'uploads/images/2019/12/56_or_gamepadd.png', 'http://localhost:8080/izibazi/uploads/images/2019/12/56_or_gamepadd.png', 'original', 0, 0, '2019-12-28 10:55:36', '2019-12-28 10:56:45', '2019-12-28 10:56:45'),
(111, 7, 'App\\Post', 'uploads/images/2019/12/56_or_gamepadd.png', 'http://localhost:8080/izibazi/uploads/images/2019/12/56_or_gamepadd.png', 'app_post_cover', 0, 0, '2019-12-28 10:55:36', '2019-12-28 10:56:45', '2019-12-28 10:56:45'),
(112, 7, 'App\\Post', 'uploads/images/2019/12/62_or_gamepadd.png', 'http://localhost:8080/izibazi/uploads/images/2019/12/62_or_gamepadd.png', 'original', 0, 0, '2019-12-28 10:56:45', '2019-12-28 10:59:49', '2019-12-28 10:59:49'),
(113, 7, 'App\\Post', 'uploads/images/2019/12/62_or_gamepadd.png', 'http://localhost:8080/izibazi/uploads/images/2019/12/62_or_gamepadd.png', 'app_post_cover', 0, 0, '2019-12-28 10:56:45', '2019-12-28 10:59:49', '2019-12-28 10:59:49'),
(114, 7, 'App\\Post', 'uploads/images/2019/12/92_or_24ترم بندی.jpg', 'http://localhost:8080/izibazi/uploads/images/2019/12/92_or_24ترم بندی.jpg', 'original', 0, 0, '2019-12-28 10:59:49', '2019-12-28 10:59:49', NULL),
(115, 7, 'App\\Post', 'uploads/images/2019/12/92_or_24ترم بندی.jpg', 'http://localhost:8080/izibazi/uploads/images/2019/12/92_or_24ترم بندی.jpg', 'app_post_cover', 0, 0, '2019-12-28 10:59:49', '2019-12-28 10:59:49', NULL),
(116, 13, 'App\\GameInfo', 'uploads/images/6.jpg', 'http://192.168.30.24:8080/izibazi/uploads/images/6.2.jpg', 'app_cover', 200, 200, NULL, NULL, NULL),
(117, 7, 'App\\Post', 'uploads/images/2020/03/98_or_photo_2020-01-29_12-38-32.jpg', 'http://localhost:8080/izibazi/uploads/images/2020/03/98_or_photo_2020-01-29_12-38-32.jpg', 'post_cover', 0, 0, '2020-03-13 15:51:32', '2020-03-13 15:51:32', NULL),
(118, 7, 'App\\Post', 'uploads/images/2020/03/98_or_photo_2020-01-29_12-38-32.jpg', 'http://localhost:8080/izibazi/uploads/images/2020/03/98_or_photo_2020-01-29_12-38-32.jpg', 'app_post_cover', 0, 0, '2020-03-13 15:51:32', '2020-03-13 15:51:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `game_info_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `game_info_id`, `title`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 0, 'آمار هر کاربر شامل تعداد پروژه انجام شده، پروژه های موفق،ناموفق،تعداد اعتراضات و امتیاز کاربر برای سوپرادمین قابل مشاهده باشد.pes', 'quo voluptas nulla pariatur?\n\nLorem Ipsum: translation\nThe Latin scholar H. Rackham translated the above in 1914:\n\nDe Finibus Bonorum Et Malorum But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', '2018-08-20 19:30:00', NULL, NULL),
(2, 1, 2, 'آمار هر کاربر شامل تعداد پروژه انجام شده، پروژه های موفق،ناموفق،تعداد اعتراضات و امتیاز کاربر برای سوپرادمین قابل مشاهده باشد.', 'quo voluptas nulla pariatur?\r\n\r\nLorem Ipsum: translation\r\nThe Latin scholar H. Rackham translated the above in 1914:\r\n\r\nDe Finibus Bonorum Et Malorum But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', '2018-08-22 19:30:00', NULL, NULL),
(3, 1, 0, 'بازی uncharted4', 'quo voluptas nulla pariatur?\r\n\r\nLorem Ipsum: translation\r\nThe Latin scholar H. Rackham translated the above in 1914:\r\n\r\nDe Finibus Bonorum Et Malorum But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', '2018-08-15 19:30:00', NULL, NULL),
(4, 1, 0, 'بازی uncharted4', 'quo voluptas nulla pariatur?\n\nLorem Ipsum: translationu ncharted4\nThe Latin scholar H. Rackham translated the above in 1914:\n\nDe Finibus Bonorum Et Malorum But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', '2018-08-15 19:30:00', '2019-12-28 10:23:38', '2019-12-28 10:23:38'),
(5, 1, 0, 'آمار هر کاربر شامل تعداد پروژه انجام شده، پروژه های موفق،ناموفق،تعداد اعتراضات و امتیاز کاربر برای سوپرادمین قابل مشاهده باشد.', 'quo voluptas nulla pariatur?\nuncharted4\nLorem Ipsum: translation\nThe Latin scholar H. Rackham translated the above in 1914:\n\nDe Finibus Bonorum Et Malorum But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', '2018-08-06 19:30:00', NULL, NULL),
(6, 1, 5, 'آمار هر کاربر شامل تعداد پروژه انجام شده، پروژه های موفق،ناموفق،تعداد اعتراضات و امتیاز کاربر برای سوپرادمین قابل مشاهده باشد.', 'quo voluptas nulla pariatur?\r\n\r\nLorem Ipsum: translation\r\nThe Latin scholar H. Rackham translated the above in 1914:\r\n\r\nDe Finibus Bonorum Et Malorum But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', '2018-08-14 19:30:00', NULL, NULL),
(7, 1, 11, 'new post', '<p>reraeraee</p>', '2020-03-13 15:51:31', '2020-03-13 15:51:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rent_shops`
--

DROP TABLE IF EXISTS `rent_shops`;
CREATE TABLE IF NOT EXISTS `rent_shops` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `game_for_rent_id` int(11) NOT NULL,
  `game_for_shop_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rent_shops`
--

INSERT INTO `rent_shops` (`id`, `game_for_rent_id`, `game_for_shop_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2019-12-28 20:30:00', '2019-12-28 20:30:00', NULL),
(2, 21, 9, '2019-12-30 09:43:21', '2019-12-30 09:43:21', NULL),
(3, 23, 10, '2020-03-13 16:04:15', '2020-03-13 16:04:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rent_types`
--

DROP TABLE IF EXISTS `rent_types`;
CREATE TABLE IF NOT EXISTS `rent_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `day_count` int(11) NOT NULL,
  `price_percent` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rent_types`
--

INSERT INTO `rent_types` (`id`, `day_count`, `price_percent`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 10, NULL, NULL, NULL),
(2, 10, 15, NULL, NULL, NULL),
(3, 20, 25, NULL, NULL, NULL),
(4, 30, 35, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'super_admin', 'can access to all of roles', NULL, NULL, NULL),
(2, 'driver', 'he is company transporter', NULL, NULL, NULL),
(3, 'writer', 'can create and edit posts', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
CREATE TABLE IF NOT EXISTS `role_user` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_user_user_id_foreign` (`user_id`),
  KEY `role_user_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, NULL, NULL, NULL),
(2, 5, 2, NULL, NULL, NULL),
(3, 2, 2, NULL, NULL, NULL),
(4, 10, 2, NULL, NULL, NULL),
(5, 85, 1, '2018-10-17 20:30:00', '2018-10-17 20:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settlement_requests`
--

DROP TABLE IF EXISTS `settlement_requests`;
CREATE TABLE IF NOT EXISTS `settlement_requests` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_amount` int(11) DEFAULT NULL,
  `final_amount` int(11) NOT NULL DEFAULT '0',
  `bank_card_number` varchar(255) DEFAULT NULL,
  `bank_account_number` varchar(255) DEFAULT NULL,
  `bank_shba_number` varchar(255) DEFAULT NULL,
  `bank_account_owner_name` varchar(255) DEFAULT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `settlement_requests_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settlement_requests`
--

INSERT INTO `settlement_requests` (`id`, `user_id`, `first_amount`, `final_amount`, `bank_card_number`, `bank_account_number`, `bank_shba_number`, `bank_account_owner_name`, `is_seen`, `is_confirmed`, `is_paid`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 2, 150000, 150000, NULL, NULL, 'IR4455454545454554', 'Mohsen Farjami', 1, 0, 0, '2019-12-05 09:28:32', '2019-12-05 09:28:32', NULL),
(3, 2, 225000, 150000, NULL, NULL, 'IR4455454545454554', 'Mohsen Farjami', 1, 0, 0, '2019-12-05 09:39:05', '2019-12-30 12:20:44', NULL),
(4, 2, 225000, 150000, NULL, NULL, 'IR4455454545454554', 'Mohsen Farjami', 1, 1, 1, '2019-12-05 09:39:05', '2019-12-30 13:46:01', NULL),
(5, 2, 225000, 150000, NULL, NULL, 'IR4455454545454554', 'Mohsen Farjami', 1, 1, 1, '2019-12-05 09:39:05', '2020-03-13 15:49:04', NULL),
(6, 2, 225000, 150000, NULL, NULL, 'IR4455454545454554', 'Mohsen Farjami', 1, 1, 0, '2019-12-05 09:39:05', '2019-12-30 12:20:44', NULL),
(7, 2, 225000, 150000, NULL, NULL, 'IR4455454545454554', 'Mohsen Farjami', 1, 1, 0, '2019-12-05 09:39:05', '2019-12-30 12:20:44', NULL),
(8, 2, 225000, 150000, NULL, NULL, 'IR4455454545454554', 'Mohsen Farjami', 1, 1, 0, '2019-12-05 09:39:05', '2019-12-30 12:20:44', NULL),
(9, 2, 225000, 150000, NULL, NULL, 'IR4455454545454554', 'Mohsen Farjami', 1, 1, 0, '2019-12-05 09:39:05', '2019-12-30 12:20:44', NULL),
(10, 2, 225000, 150000, NULL, NULL, 'IR4455454545454554', 'Mohsen Farjami', 1, 0, 0, '2019-12-05 09:39:05', '2019-12-30 12:20:44', NULL),
(11, 2, 225000, 150000, NULL, NULL, 'IR4455454545454554', 'Mohsen Farjami', 1, 0, 0, '2019-12-05 09:39:05', '2019-12-30 12:20:44', NULL),
(12, 2, 225000, 150000, NULL, NULL, 'IR4455454545454554', 'Mohsen Farjami', 1, 0, 0, '2019-12-05 09:39:05', '2019-12-30 12:20:44', NULL),
(13, 2, 50000, 0, '6037997263185309', '5554545456', '524145645645454564', 'محسن فرجامی', 1, 0, 0, '2020-02-23 12:19:36', '2020-02-23 12:19:36', NULL),
(14, 2, 50000, 0, '6037997263185309', '5554545456', '524145645645454564', 'محسن فرجامی', 1, 0, 0, '2020-02-23 12:20:16', '2020-02-23 12:20:16', NULL),
(15, 2, 50000, 0, '6037997263185309', '5554545456', '524145645645454564', 'محسن فرجامی', 1, 0, 0, '2020-02-23 12:21:50', '2020-02-23 12:21:50', NULL),
(16, 2, 50000, 0, '6037997263185309', '5554545456', '524145645645454564', 'محسن فرجامی', 1, 0, 0, '2020-02-23 12:49:00', '2020-02-25 11:35:41', NULL),
(17, 3, 24397074, 0, '6037997263185309', '5554545456', '524145645645454564', 'محسن فرجامی', 0, 0, 0, '2020-03-03 09:02:29', '2020-03-03 09:02:29', '2020-03-02 20:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `site_payments`
--

DROP TABLE IF EXISTS `site_payments`;
CREATE TABLE IF NOT EXISTS `site_payments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `paymentable_id` int(11) NOT NULL,
  `paymentable_type` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `is_success` tinyint(1) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_receipt` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_payments_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site_payments`
--

INSERT INTO `site_payments` (`id`, `user_id`, `paymentable_id`, `paymentable_type`, `amount`, `is_success`, `bank_name`, `bank_receipt`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 1, 'App\\UserFinance', 505000, 1, 'zarinpal', '6546546', '2019-12-19 06:47:21', '2019-12-19 06:47:21', NULL),
(2, 2, 4, 'App\\SettlementRequest', 150000, 1, 'mellat', '984854', '2019-12-30 13:46:01', '2019-12-30 13:46:01', NULL),
(3, 2, 4, 'App\\SettlementRequest', 150000, 1, 'mellat', '984854', '2019-12-30 13:46:50', '2019-12-30 13:46:50', NULL),
(4, 2, 5, 'App\\SettlementRequest', 150000, 1, 'mello', '132323', '2020-03-13 15:49:04', '2020-03-13 15:49:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `on_click` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `content`, `on_click`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'متن فارسی', 'متن فارسی', 'http://www.google.com', '2018-08-01 19:30:00', NULL, NULL),
(2, 'second slide title', 'second slide content', 'http://www.google.com', '2018-08-16 19:30:00', NULL, NULL),
(3, '3 slide title', '3 slide content', 'http://www.google.com', '2018-08-16 19:30:00', NULL, NULL),
(4, '4 slide title', '4 slide content', 'http://www.google.com', '2018-08-16 19:30:00', NULL, NULL),
(5, '5 slide title', '5 slide content', 'http://www.google.com', '2018-08-16 19:30:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `smsirlaravel_logs`
--

DROP TABLE IF EXISTS `smsirlaravel_logs`;
CREATE TABLE IF NOT EXISTS `smsirlaravel_logs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `from` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `response` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smsirlaravel_logs`
--

INSERT INTO `smsirlaravel_logs` (`id`, `from`, `to`, `message`, `status`, `response`, `created_at`, `updated_at`) VALUES
(2, '30004747478047', '09145821998', 'test1', 0, 'اعتبار شما کافی نمی باشد\r\nThe transaction ended in the trigger. The batch has been aborted.', '2019-12-11 12:52:51', '2019-12-11 12:52:51'),
(3, '30004747478047', '09145821998', 'test from easybazi!', 1, 'ارسال با موفقیت انجام گردید', '2019-12-11 12:57:26', '2019-12-11 12:57:26'),
(4, '30004747478047', '09145821998', 'test from easybazi!', 1, 'ارسال با موفقیت انجام گردید', '2019-12-12 10:44:59', '2019-12-12 10:44:59'),
(5, '30004747478047', '09145821998', 'test from easybazi!', 1, 'ارسال با موفقیت انجام گردید', '2019-12-12 10:47:51', '2019-12-12 10:47:51'),
(6, '30004747478047', '09303484023', 'test from easybazi!', 1, 'ارسال با موفقیت انجام گردید', '2019-12-12 10:47:54', '2019-12-12 10:47:54'),
(7, '30004747478047', '09145821998', 'test from easybazi!', 1, 'ارسال با موفقیت انجام گردید', '2019-12-23 10:34:50', '2019-12-23 10:34:50'),
(8, '30004747478047', '09303484023', 'test from easybazi!', 1, 'ارسال با موفقیت انجام گردید', '2019-12-23 10:34:52', '2019-12-23 10:34:52'),
(9, '30004747478047', '9303484023', 'کاربر گرامی مبلغ 150000  تومان بابت تسویه حساب به شما پرداخت شد', 1, 'ارسال با موفقیت انجام گردید', '2019-12-30 13:46:11', '2019-12-30 13:46:11'),
(10, '30004747478047', '9303484023', 'کاربر گرامی مبلغ 150000  تومان بابت تسویه حساب به شما پرداخت شد', 1, 'ارسال با موفقیت انجام گردید', '2019-12-30 13:46:56', '2019-12-30 13:46:56'),
(11, '30004747478047', '09358080242', ' کاربر گرامی مبلغ 150000 تومان بابت تسویه حساب به شما پرداخت شد ', 1, 'ارسال با موفقیت انجام گردید', '2020-03-13 15:49:18', '2020-03-13 15:49:18'),
(12, '30004747478047', '09145821998', 'salam', 1, 'ارسال با موفقیت انجام گردید', '2020-03-13 15:58:25', '2020-03-13 15:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `sms_privates`
--

DROP TABLE IF EXISTS `sms_privates`;
CREATE TABLE IF NOT EXISTS `sms_privates` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `text` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_privates`
--

INSERT INTO `sms_privates` (`id`, `sender_id`, `user_id`, `text`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'hello to mohsen', '2019-12-19 01:39:09', '2019-12-19 01:39:09', NULL),
(2, 1, 3, 'salam', '2020-03-13 15:58:25', '2020-03-13 15:58:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'آذربایجان شرقی', NULL, NULL, NULL),
(2, 'آذربایجان غربی', NULL, NULL, NULL),
(3, 'اردبیل', NULL, NULL, NULL),
(4, 'اصفهان', NULL, NULL, NULL),
(5, 'البرز', NULL, NULL, NULL),
(6, 'ایلام', NULL, NULL, NULL),
(7, 'بوشهر', NULL, NULL, NULL),
(8, 'تهران', NULL, NULL, NULL),
(9, 'چهارمحال وبختیاری', NULL, NULL, NULL),
(10, 'خراسان جنوبی', NULL, NULL, NULL),
(11, 'خراسان رضوی', NULL, NULL, NULL),
(12, 'خراسان شمالی', NULL, NULL, NULL),
(13, 'خوزستان', NULL, NULL, NULL),
(14, 'زنجان', NULL, NULL, NULL),
(15, 'سمنان', NULL, NULL, NULL),
(16, 'سیستان وبلوچستان', NULL, NULL, NULL),
(17, 'فارس', NULL, NULL, NULL),
(18, 'قزوین', NULL, NULL, NULL),
(19, 'قم', NULL, NULL, NULL),
(20, 'کردستان', NULL, NULL, NULL),
(21, 'کرمان', NULL, NULL, NULL),
(22, 'کرمانشاه', NULL, NULL, NULL),
(23, 'کهگیلویه وبویراحمد', NULL, NULL, NULL),
(24, 'گلستان', NULL, NULL, NULL),
(25, 'گیلان', NULL, NULL, NULL),
(26, 'لرستان', NULL, NULL, NULL),
(27, 'مازندران', NULL, NULL, NULL),
(28, 'مرکزی', NULL, NULL, NULL),
(29, 'هرمزگان', NULL, NULL, NULL),
(30, 'همدان', NULL, NULL, NULL),
(31, 'یزد', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `store_infos`
--

DROP TABLE IF EXISTS `store_infos`;
CREATE TABLE IF NOT EXISTS `store_infos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store_infos`
--

INSERT INTO `store_infos` (`id`, `user_id`, `address_id`, `city_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 16, 'izi bazi', '2019-12-28 20:30:00', '2019-12-28 20:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `is_user_sent` tinyint(1) NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `is_seen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=442 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `sender_id`, `user_id`, `is_user_sent`, `text`, `is_seen`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 1, 'salam admin', 1, '2018-08-07 19:30:00', NULL, NULL),
(2, 1, 1, 1, 'salam karbare2', 1, '2018-08-15 19:30:00', NULL, NULL),
(3, 1, 31, 1, 'salam admin', 1, '2018-08-15 19:30:00', NULL, NULL),
(4, 1, 31, 0, 'hi mohsen15', 1, '2018-08-15 19:30:00', NULL, NULL),
(5, 1, 31, 1, 'چخبر ادمین چکار میکنی؟\r\nاوضاع سایت چطوره؟\r\nسلامتی؟\r\nاین پیام برای تست است\r\n', 1, '2018-08-15 19:30:00', NULL, NULL),
(6, 1, 31, 1, 'چخبر ادمین چکار میکنی؟\r\nاوضاع سایت چطوره؟\r\nسلامتی؟\r\nاین پیام برای تست است\r\n', 1, '2018-08-15 19:30:00', NULL, NULL),
(7, 1, 31, 0, 'چخبر ادمین چکار میکنی؟\r\nاوضاع سایت چطوره؟\r\nسلامتی؟\r\nاین پیام برای تست است\r\n', 1, '2018-08-15 19:30:00', NULL, NULL),
(8, 1, 31, 1, 'چخبر ادمین چکار میکنی؟\r\nاوضاع سایت چطوره؟\r\nسلامتی؟\r\nاین پیام برای تست است\r\n', 1, '2018-08-15 19:30:00', NULL, NULL),
(9, 1, 31, 0, 'چخبر ادمین چکار میکنی؟\r\nاوضاع سایت چطوره؟\r\nسلامتی؟\r\nاین پیام برای تست است\r\n', 1, '2018-08-15 19:30:00', NULL, NULL),
(10, 1, 31, 1, 'چخبر ادمین چکار میکنی؟\r\nاوضاع سایت چطوره؟\r\nسلامتی؟\r\nاین پیام برای تست است\r\n', 1, '2018-08-15 19:30:00', NULL, NULL),
(11, 1, 31, 0, 'چخبر ادمین چکار میکنی؟\r\nاوضاع سایت چطوره؟\r\nسلامتی؟\r\nاین پیام برای تست است\r\n', 1, '2018-08-15 19:30:00', NULL, NULL),
(12, 1, 31, 0, 'چخبر ادمین چکار میکنی؟\r\nاوضاع سایت چطوره؟\r\nسلامتی؟\r\nاین پیام برای تست است\r\n', 1, '2018-08-20 19:30:00', NULL, NULL),
(13, 1, 31, 1, 'چخبر ادمین چکار میکنی؟\r\nاوضاع سایت چطوره؟\r\nسلامتی؟\r\nاین پیام برای تست است\r\n', 1, '2018-08-20 19:30:00', NULL, NULL),
(14, 1, 31, 0, 'چخبر ادمین چکار میکنی؟\r\nاوضاع سایت چطوره؟\r\nسلامتی؟\r\nاین پیام برای تست است\r\n', 1, '2018-08-20 19:30:00', NULL, NULL),
(15, 1, 31, 0, 'Android is a low specification platform to develop games, social media apps, literature applications, weather notifiers, multimedia and many other categories, so the newer releases are so frequent in this Android-Age , but availability of such apps on Windows based Desktop, Laptop, Tablets or on Mac ', 1, '2018-08-20 19:30:00', NULL, NULL),
(16, 1, 31, 1, 'سلام ✋️\n\n‌✔️ اگه میخوای:\n\n✅ روی عکسات افکت های باحال بذاری ?\n✅ عکس نوشته بسازی ?\n✅ عکسهاتو به پک استیکر تبدیل کنی ?\n✅ و... ?\n\n? لینک زیر رو لمس کن?\n? t.me/demybot?start=436871106\n', 1, '2018-08-30 19:30:00', NULL, NULL),
(17, 1, 33, 0, 'test from post man', 0, '2018-09-03 14:30:08', '2018-09-03 14:30:08', NULL),
(18, 1, 31, 1, 'salam', 1, '2018-09-03 14:30:13', '2018-09-03 14:30:13', NULL),
(19, 1, 31, 1, 'dwdsd', 1, '2018-09-03 14:30:19', '2018-09-03 14:30:19', NULL),
(20, 1, 31, 1, 'fdfdf', 1, '2018-09-03 14:30:24', '2018-09-03 14:30:24', NULL),
(21, 1, 31, 1, 'hello from android', 1, '2018-09-03 14:31:00', '2018-09-03 14:31:00', NULL),
(22, 1, 31, 1, 'hello2', 1, '2018-09-03 14:31:26', '2018-09-03 14:31:26', NULL),
(23, 1, 31, 1, 'salam chaera site dir load mishe', 1, '2018-09-03 14:32:27', '2018-09-03 14:32:27', NULL),
(24, 1, 31, 1, 'fdfdf', 1, '2018-09-03 14:32:32', '2018-09-03 14:32:32', NULL),
(25, 1, 31, 1, 'hello', 1, '2018-09-03 14:33:25', '2018-09-03 14:33:25', NULL),
(26, 1, 31, 1, 'fdefdf', 1, '2018-09-03 14:33:54', '2018-09-03 14:33:54', NULL),
(27, 1, 31, 1, 'scrolltest', 1, '2018-09-03 14:34:01', '2018-09-03 14:34:01', NULL),
(28, 1, 31, 1, 'hello', 1, '2018-09-03 14:34:15', '2018-09-03 14:34:15', NULL),
(29, 1, 31, 1, 'salam', 1, '2018-09-03 14:34:41', '2018-09-03 14:34:41', NULL),
(30, 1, 31, 1, 'bg', 1, '2018-09-04 06:48:47', '2018-09-04 06:48:47', NULL),
(31, 1, 31, 1, 'hello', 1, '2018-09-04 06:48:58', '2018-09-04 06:48:58', NULL),
(32, 1, 31, 1, 'salama', 1, '2018-09-04 06:49:26', '2018-09-04 06:49:26', NULL),
(33, 1, 31, 1, 'salama', 1, '2018-09-04 06:49:26', '2018-09-04 06:49:26', NULL),
(34, 1, 31, 1, 'salama', 1, '2018-09-04 06:49:26', '2018-09-04 06:49:26', NULL),
(35, 1, 31, 1, 'hello', 1, '2018-09-04 06:59:42', '2018-09-04 06:59:42', NULL),
(36, 1, 31, 1, 'chekhabar', 1, '2018-09-04 06:59:50', '2018-09-04 06:59:50', NULL),
(37, 1, 31, 1, 'fdfdfdffdafdfafdf', 1, '2018-09-04 06:59:58', '2018-09-04 06:59:58', NULL),
(38, 1, 31, 1, 'salam', 1, '2018-09-04 07:00:15', '2018-09-04 07:00:15', NULL),
(39, 1, 31, 1, 'fdfd', 1, '2018-09-04 07:00:19', '2018-09-04 07:00:19', NULL),
(40, 1, 31, 1, 'fdfdf', 1, '2018-09-04 07:00:22', '2018-09-04 07:00:22', NULL),
(41, 1, 31, 1, 'dfdfdf', 1, '2018-09-04 07:00:26', '2018-09-04 07:00:26', NULL),
(42, 1, 31, 1, 'gfgfg', 1, '2018-09-04 07:04:43', '2018-09-04 07:04:43', NULL),
(43, 1, 31, 1, 'dfdf', 1, '2018-09-04 07:04:48', '2018-09-04 07:04:48', NULL),
(44, 1, 31, 1, '4545', 1, '2018-09-04 07:05:03', '2018-09-04 07:05:03', NULL),
(45, 1, 31, 1, 'derfer', 1, '2018-09-04 07:05:10', '2018-09-04 07:05:10', NULL),
(46, 1, 31, 1, 'fdfdfd', 1, '2018-09-04 07:23:48', '2018-09-04 07:23:48', NULL),
(47, 1, 31, 1, 'retrtr', 1, '2018-09-04 07:23:51', '2018-09-04 07:23:51', NULL),
(48, 1, 31, 1, 'rfgrfgtr', 1, '2018-09-04 07:24:20', '2018-09-04 07:24:20', NULL),
(49, 1, 31, 1, 'fddfd', 1, '2018-09-04 07:24:24', '2018-09-04 07:24:24', NULL),
(50, 1, 31, 1, 'dsds', 1, '2018-09-04 07:27:21', '2018-09-04 07:27:21', NULL),
(51, 1, 31, 1, 'dfsdf', 1, '2018-09-04 07:27:48', '2018-09-04 07:27:48', NULL),
(52, 1, 31, 1, 'fdfdfd', 1, '2018-09-04 07:28:38', '2018-09-04 07:28:38', NULL),
(53, 1, 31, 1, 'efedfe', 1, '2018-09-04 07:28:40', '2018-09-04 07:28:40', NULL),
(54, 1, 31, 1, 'ffefe', 1, '2018-09-04 07:28:45', '2018-09-04 07:28:45', NULL),
(55, 1, 31, 1, 'fdfdf', 1, '2018-09-04 08:31:32', '2018-09-04 08:31:32', NULL),
(56, 1, 31, 1, 'fdfd', 1, '2018-09-04 08:31:34', '2018-09-04 08:31:34', NULL),
(57, 1, 31, 1, 'fdfd', 1, '2018-09-04 08:31:37', '2018-09-04 08:31:37', NULL),
(58, 1, 31, 1, 'ueuer', 1, '2018-09-04 08:31:41', '2018-09-04 08:31:41', NULL),
(59, 1, 31, 1, 'salam admin', 1, '2018-09-04 08:31:47', '2018-09-04 08:31:47', NULL),
(60, 1, 31, 1, 'ffdfd\nfdfdf\nfdfdf\nfdfdf\nfdfd\ndsdsd\nfdfd', 1, '2018-09-04 08:32:26', '2018-09-04 08:32:26', NULL),
(61, 1, 31, 1, 'بیبیابیا', 1, '2018-09-04 08:34:06', '2018-09-04 08:34:06', NULL),
(62, 1, 10, 1, 'salam', 1, '2018-09-04 08:47:35', '2018-09-04 08:47:35', NULL),
(63, 1, 10, 1, 'hekko', 1, '2018-09-04 08:47:40', '2018-09-04 08:47:40', NULL),
(64, 1, 10, 1, 'ggg', 1, '2018-09-04 08:47:42', '2018-09-04 08:47:42', NULL),
(65, 1, 10, 1, 'ddd', 1, '2018-09-04 08:47:45', '2018-09-04 08:47:45', NULL),
(66, 1, 10, 1, 'hhh', 1, '2018-09-04 08:47:47', '2018-09-04 08:47:47', NULL),
(67, 1, 10, 1, 'hi', 1, '2018-09-04 08:47:50', '2018-09-04 08:47:50', NULL),
(68, 1, 31, 1, 'سلام', 1, '2018-09-04 08:49:11', '2018-09-04 08:49:11', NULL),
(69, 1, 31, 1, 'چطوری', 1, '2018-09-04 08:49:16', '2018-09-04 08:49:16', NULL),
(70, 1, 31, 1, 'خوبی', 1, '2018-09-04 08:49:20', '2018-09-04 08:49:20', NULL),
(71, 1, 31, 1, 'مرسی', 1, '2018-09-04 08:49:28', '2018-09-04 08:49:28', NULL),
(72, 1, 31, 1, 'ممنون', 1, '2018-09-04 08:49:41', '2018-09-04 08:49:41', NULL),
(73, 1, 31, 1, 'سلام', 1, '2018-09-04 08:50:44', '2018-09-04 08:50:44', NULL),
(74, 1, 31, 1, 'سلام☺☺', 1, '2018-09-04 08:51:00', '2018-09-04 08:51:00', NULL),
(75, 1, 31, 1, 'خوبی', 1, '2018-09-04 08:51:26', '2018-09-04 08:51:26', NULL),
(76, 1, 31, 1, 'سلام', 1, '2018-09-04 08:51:39', '2018-09-04 08:51:39', NULL),
(77, 1, 31, 1, '☺☺☺', 1, '2018-09-04 08:51:50', '2018-09-04 08:51:50', NULL),
(78, 1, 31, 1, 'ااا', 1, '2018-09-04 08:52:12', '2018-09-04 08:52:12', NULL),
(79, 1, 31, 1, 'چطوری', 1, '2018-09-04 08:52:20', '2018-09-04 08:52:20', NULL),
(80, 1, 31, 1, '????????????????', 1, '2018-09-04 08:56:42', '2018-09-04 08:56:42', NULL),
(81, 1, 31, 1, '????????????', 1, '2018-09-04 08:56:45', '2018-09-04 08:56:45', NULL),
(82, 1, 31, 1, 'للاا????????????', 1, '2018-09-04 08:56:50', '2018-09-04 08:56:50', NULL),
(83, 1, 31, 1, 'اتتن', 1, '2018-09-04 08:57:14', '2018-09-04 08:57:14', NULL),
(84, 1, 31, 1, '????????????????', 1, '2018-09-04 08:57:18', '2018-09-04 08:57:18', NULL),
(85, 1, 31, 1, '????????????', 1, '2018-09-04 08:57:21', '2018-09-04 08:57:21', NULL),
(86, 1, 31, 1, '????????????????', 1, '2018-09-04 08:57:23', '2018-09-04 08:57:23', NULL),
(87, 1, 31, 1, '????????????', 1, '2018-09-04 08:57:28', '2018-09-04 08:57:28', NULL),
(88, 1, 31, 1, '????????', 1, '2018-09-04 08:57:38', '2018-09-04 08:57:38', NULL),
(89, 1, 31, 1, '????', 1, '2018-09-04 08:58:23', '2018-09-04 08:58:23', NULL),
(90, 1, 31, 1, '????????????', 1, '2018-09-04 08:58:26', '2018-09-04 08:58:26', NULL),
(91, 1, 31, 1, '????????????????????', 1, '2018-09-04 08:58:28', '2018-09-04 08:58:28', NULL),
(92, 1, 31, 1, 'وک', 1, '2018-09-04 08:58:31', '2018-09-04 08:58:31', NULL),
(93, 1, 31, 1, 'زنز', 1, '2018-09-04 08:58:36', '2018-09-04 08:58:36', NULL),
(94, 1, 31, 1, '????????????', 1, '2018-09-04 08:58:39', '2018-09-04 08:58:39', NULL),
(95, 1, 31, 1, '????????????????', 1, '2018-09-04 08:58:43', '2018-09-04 08:58:43', NULL),
(96, 1, 31, 1, '????????????????????', 1, '2018-09-04 08:58:45', '2018-09-04 08:58:45', NULL),
(97, 1, 31, 1, '????????????', 1, '2018-09-04 08:58:47', '2018-09-04 08:58:47', NULL),
(98, 1, 31, 1, '????', 1, '2018-09-04 09:02:36', '2018-09-04 09:02:36', NULL),
(99, 1, 31, 1, '????', 1, '2018-09-04 09:02:38', '2018-09-04 09:02:38', NULL),
(100, 1, 31, 1, '????????????', 1, '2018-09-04 09:02:41', '2018-09-04 09:02:41', NULL),
(101, 1, 31, 1, '????????????', 1, '2018-09-04 09:02:44', '2018-09-04 09:02:44', NULL),
(102, 1, 31, 1, 'سلام', 1, '2018-09-04 09:02:48', '2018-09-04 09:02:48', NULL),
(103, 1, 31, 1, 'hi', 1, '2018-09-04 09:02:52', '2018-09-04 09:02:52', NULL),
(104, 1, 31, 1, 'سلام mohseen  خوبی', 1, '2018-09-04 09:03:10', '2018-09-04 09:03:10', NULL),
(105, 1, 31, 1, 'هههز', 1, '2018-09-04 09:03:25', '2018-09-04 09:03:25', NULL),
(106, 1, 31, 1, 'تتتتز', 1, '2018-09-04 09:03:30', '2018-09-04 09:03:30', NULL),
(107, 1, 31, 1, 'ن کزکر', 1, '2018-09-04 09:03:32', '2018-09-04 09:03:32', NULL),
(108, 1, 31, 1, 'یز د دو و و و و و و وو و ننسنطتزتتزتزت ت ت و وزکزک ک کک ک و و ک و  و و و و د  تت تززوزوزو و  وددو', 1, '2018-09-04 09:03:49', '2018-09-04 09:03:49', NULL),
(109, 1, 31, 1, 'لاا', 1, '2018-09-04 09:27:01', '2018-09-04 09:27:01', NULL),
(110, 1, 31, 1, 'دوزو', 1, '2018-09-04 09:27:06', '2018-09-04 09:27:06', NULL),
(111, 1, 31, 1, 'اازا ا ا', 1, '2018-09-04 09:27:09', '2018-09-04 09:27:09', NULL),
(112, 1, 31, 1, 'اوطوزو و', 1, '2018-09-04 09:27:14', '2018-09-04 09:27:14', NULL),
(113, 1, 31, 1, 'کطکزز', 1, '2018-09-04 09:38:20', '2018-09-04 09:38:20', NULL),
(114, 1, 31, 1, 'سلام', 1, '2018-09-04 09:38:23', '2018-09-04 09:38:23', NULL),
(115, 1, 31, 1, '????????????????', 1, '2018-09-04 09:38:28', '2018-09-04 09:38:28', NULL),
(116, 1, 31, 1, 'ک ک', 1, '2018-09-04 09:38:54', '2018-09-04 09:38:54', NULL),
(117, 1, 31, 1, 'یلام', 1, '2018-09-04 09:39:00', '2018-09-04 09:39:00', NULL),
(118, 1, 31, 1, 'سلام', 1, '2018-09-04 09:39:02', '2018-09-04 09:39:02', NULL),
(119, 1, 31, 1, 'چطوری', 1, '2018-09-04 09:39:07', '2018-09-04 09:39:07', NULL),
(120, 1, 31, 1, 'کزک ک کز زک   و و ک', 1, '2018-09-04 09:39:12', '2018-09-04 09:39:12', NULL),
(121, 1, 31, 1, '????', 1, '2018-09-04 09:39:15', '2018-09-04 09:39:15', NULL),
(122, 1, 31, 1, '????????', 1, '2018-09-04 09:39:17', '2018-09-04 09:39:17', NULL),
(123, 1, 31, 1, '????????????', 1, '2018-09-04 09:39:20', '2018-09-04 09:39:20', NULL),
(124, 1, 31, 1, 'زک       زوکطکططگطگطکط', 1, '2018-09-04 09:39:50', '2018-09-04 09:39:50', NULL),
(125, 1, 31, 1, 'کک ک وزو و', 1, '2018-09-04 09:39:52', '2018-09-04 09:39:52', NULL),
(126, 1, 31, 1, '...????????????', 1, '2018-09-04 09:40:37', '2018-09-04 09:40:37', NULL),
(127, 1, 31, 1, 'زکنزنکزز', 1, '2018-09-04 09:40:48', '2018-09-04 09:40:48', NULL),
(128, 1, 31, 1, 'سلام', 1, '2018-09-04 09:57:40', '2018-09-04 09:57:40', NULL),
(129, 1, 31, 1, 'نشش', 1, '2018-09-04 09:57:55', '2018-09-04 09:57:55', NULL),
(130, 1, 31, 0, 'salam', 1, '2018-09-04 09:57:55', '2018-09-04 09:57:55', NULL),
(131, 1, 31, 1, 'محسننن', 1, '2018-09-04 09:59:18', '2018-09-04 09:59:18', NULL),
(132, 1, 31, 0, 'test', 1, '2018-09-04 09:57:55', '2018-09-04 09:57:55', NULL),
(133, 1, 31, 1, 'افرین', 1, '2018-09-04 10:01:05', '2018-09-04 10:01:05', NULL),
(134, 1, 31, 1, 'dfdfdf', 1, '2018-09-04 10:26:58', '2018-09-04 10:26:58', NULL),
(135, 1, 33, 0, 'test from post man', 0, '2018-09-04 10:38:33', '2018-09-04 10:38:33', NULL),
(136, 1, 31, 1, 'fdfd', 1, '2018-09-04 11:02:22', '2018-09-04 11:02:22', NULL),
(137, 1, 31, 1, 'dfdfdf', 1, '2018-09-04 11:02:27', '2018-09-04 11:02:27', NULL),
(138, 1, 31, 1, 'ojfgkldf', 1, '2018-09-04 11:02:35', '2018-09-04 11:02:35', NULL),
(139, 1, 31, 1, 'fdfd', 1, '2018-09-04 11:02:45', '2018-09-04 11:02:45', NULL),
(140, 1, 31, 1, 'adfdadfe3e', 1, '2018-09-04 11:02:51', '2018-09-04 11:02:51', NULL),
(141, 1, 31, 1, '343', 1, '2018-09-04 11:02:55', '2018-09-04 11:02:55', NULL),
(142, 1, 31, 1, 'ttrt', 1, '2018-09-04 11:04:01', '2018-09-04 11:04:01', NULL),
(143, 1, 31, 1, 'erteire', 1, '2018-09-04 11:04:07', '2018-09-04 11:04:07', NULL),
(144, 1, 31, 1, 'salam', 1, '2018-09-04 11:04:17', '2018-09-04 11:04:17', NULL),
(145, 1, 31, 1, 'test reverse', 1, '2018-09-04 11:07:43', '2018-09-04 11:07:43', NULL),
(146, 1, 31, 1, 'ok good', 1, '2018-09-04 11:07:52', '2018-09-04 11:07:52', NULL),
(147, 1, 31, 1, 'ddsd', 1, '2018-09-04 11:09:20', '2018-09-04 11:09:20', NULL),
(148, 1, 31, 1, 'dssss', 1, '2018-09-04 11:09:27', '2018-09-04 11:09:27', NULL),
(149, 1, 31, 1, 'wre', 1, '2018-09-04 11:09:31', '2018-09-04 11:09:31', NULL),
(150, 1, 31, 1, 'fdfd', 1, '2018-09-04 11:20:14', '2018-09-04 11:20:14', NULL),
(151, 1, 31, 1, 'fdfd', 1, '2018-09-04 11:20:48', '2018-09-04 11:20:48', NULL),
(152, 1, 31, 1, 'fdfd', 1, '2018-09-04 11:23:47', '2018-09-04 11:23:47', NULL),
(153, 1, 31, 1, 'erer', 1, '2018-09-04 11:23:52', '2018-09-04 11:23:52', NULL),
(154, 1, 31, 1, 'salam', 1, '2018-09-04 11:57:57', '2018-09-04 11:57:57', NULL),
(155, 1, 31, 1, 'gfgf', 1, '2018-09-04 12:56:26', '2018-09-04 12:56:26', NULL),
(156, 1, 31, 1, 'salam', 1, '2018-09-04 12:56:44', '2018-09-04 12:56:44', NULL),
(157, 1, 31, 1, 'dfdf', 1, '2018-09-04 12:57:21', '2018-09-04 12:57:21', NULL),
(158, 1, 31, 1, 'hi', 1, '2018-09-04 12:58:12', '2018-09-04 12:58:12', NULL),
(159, 1, 31, 1, 'you', 1, '2018-09-04 12:58:34', '2018-09-04 12:58:34', NULL),
(160, 1, 31, 1, 'how are you', 1, '2018-09-04 12:59:40', '2018-09-04 12:59:40', NULL),
(161, 1, 31, 1, 'yes', 1, '2018-09-04 12:59:50', '2018-09-04 12:59:50', NULL),
(162, 1, 31, 1, 'test', 1, '2018-09-04 13:00:34', '2018-09-04 13:00:34', NULL),
(163, 1, 31, 1, '456', 1, '2018-09-04 13:00:54', '2018-09-04 13:00:54', NULL),
(164, 1, 31, 1, '8878', 1, '2018-09-04 13:01:00', '2018-09-04 13:01:00', NULL),
(165, 1, 31, 1, '8887', 1, '2018-09-04 13:01:06', '2018-09-04 13:01:06', NULL),
(166, 1, 31, 1, 'hi', 1, '2018-09-04 13:03:52', '2018-09-04 13:03:52', NULL),
(167, 1, 31, 1, 'khubi?', 1, '2018-09-04 13:04:07', '2018-09-04 13:04:07', NULL),
(168, 1, 31, 1, 'hi', 1, '2018-09-04 13:04:51', '2018-09-04 13:04:51', NULL),
(169, 1, 31, 1, 'test', 1, '2018-09-04 13:05:02', '2018-09-04 13:05:02', NULL),
(170, 1, 31, 1, 'hi', 1, '2018-09-04 13:09:31', '2018-09-04 13:09:31', NULL),
(171, 1, 31, 1, 'dfdfd', 1, '2018-09-04 13:09:35', '2018-09-04 13:09:35', NULL),
(172, 1, 31, 1, 'سلام', 1, '2018-09-04 13:57:42', '2018-09-04 13:57:42', NULL),
(173, 1, 31, 1, 'چخبر', 1, '2018-09-04 13:57:45', '2018-09-04 13:57:45', NULL),
(174, 1, 31, 0, 'ممنون', 1, '2018-09-04 13:57:45', '2018-09-04 13:57:45', NULL),
(175, 1, 31, 0, 'خوبی', 1, '2018-09-04 13:57:45', '2018-09-04 13:57:45', NULL),
(176, 1, 31, 1, 'تننورردو', 1, '2018-09-04 14:00:12', '2018-09-04 14:00:12', NULL),
(177, 1, 31, 0, '64341', 1, '2018-09-04 13:57:45', '2018-09-04 13:57:45', NULL),
(178, 1, 31, 0, ' hi ali\r\n', 1, '2018-09-04 13:57:45', '2018-09-04 13:57:45', NULL),
(179, 1, 31, 1, 'loool', 1, '2018-09-04 14:01:16', '2018-09-04 14:01:16', NULL),
(180, 1, 31, 1, 'csvdvdbd', 1, '2018-09-04 14:02:39', '2018-09-04 14:02:39', NULL),
(181, 1, 31, 1, 'bfll', 1, '2018-09-04 14:04:10', '2018-09-04 14:04:10', NULL),
(182, 1, 31, 1, 'hello', 1, '2018-09-10 09:31:58', '2018-09-10 09:31:58', NULL),
(183, 1, 31, 1, 'how are you', 1, '2018-09-10 09:32:08', '2018-09-10 09:32:08', NULL),
(184, 1, 31, 1, 'dfdfd', 1, '2018-09-10 09:32:11', '2018-09-10 09:32:11', NULL),
(185, 1, 31, 1, '12', 1, '2018-09-10 09:33:11', '2018-09-10 09:33:11', NULL),
(186, 1, 31, 1, 'hi', 1, '2018-09-12 08:03:27', '2018-09-12 08:03:27', NULL),
(187, 1, 31, 1, 'hello', 1, '2018-09-12 08:03:33', '2018-09-12 08:03:33', NULL),
(188, 1, 31, 1, 'dfdfd', 1, '2018-09-12 08:03:39', '2018-09-12 08:03:39', NULL),
(189, 1, 31, 1, 'dfdf', 1, '2018-09-12 08:03:41', '2018-09-12 08:03:41', NULL),
(190, 1, 31, 1, 'test', 1, '2018-09-12 08:03:49', '2018-09-12 08:03:49', NULL),
(191, 1, 31, 1, 'hi', 1, '2018-09-12 08:33:50', '2018-09-12 08:33:50', NULL),
(192, 1, 31, 1, 'good', 1, '2018-09-12 08:33:54', '2018-09-12 08:33:54', NULL),
(193, 1, 31, 1, 'test', 1, '2018-09-12 08:33:57', '2018-09-12 08:33:57', NULL),
(194, 1, 31, 1, 'gg', 1, '2018-09-12 08:33:59', '2018-09-12 08:33:59', NULL),
(195, 1, 31, 1, 'vbb', 1, '2018-09-12 08:34:12', '2018-09-12 08:34:12', NULL),
(196, 1, 31, 1, 'nnvv', 1, '2018-09-12 08:34:16', '2018-09-12 08:34:16', NULL),
(197, 1, 31, 1, 'ghjn', 1, '2018-09-12 08:34:19', '2018-09-12 08:34:19', NULL),
(198, 1, 31, 1, 'ارسال پیام', 1, '2018-09-12 10:53:26', '2018-09-12 10:53:26', NULL),
(199, 1, 31, 1, 'ولولو', 1, '2018-09-12 10:53:30', '2018-09-12 10:53:30', NULL),
(200, 1, 5, 1, 'salam', 1, '2018-10-04 15:01:16', '2018-10-04 15:01:16', NULL),
(201, 1, 5, 1, 'fdf', 1, '2018-10-04 15:03:23', '2018-10-04 15:03:23', NULL),
(202, 1, 5, 1, 'hello', 1, '2018-10-04 15:03:29', '2018-10-04 15:03:29', NULL),
(203, 1, 5, 1, 'chekhabar', 1, '2018-10-04 15:03:42', '2018-10-04 15:03:42', NULL),
(204, 1, 5, 1, 'cddcd', 1, '2018-10-04 15:03:47', '2018-10-04 15:03:47', NULL),
(205, 1, 5, 1, 'salam be karbare 5', 1, '2018-10-04 15:03:47', '2018-10-04 15:03:47', NULL),
(206, 1, 5, 0, 'salam be karbare 5 az modir', 1, '2018-10-04 15:03:47', '2018-10-04 15:03:47', NULL),
(207, 1, 5, 1, 'salam', 1, '2018-10-04 15:10:27', '2018-10-04 15:10:27', NULL),
(208, 1, 5, 1, 'چه باحال', 1, '2018-10-04 15:10:43', '2018-10-04 15:10:43', NULL),
(209, 1, 5, 1, 'nnm', 1, '2018-10-04 15:13:45', '2018-10-04 15:13:45', NULL),
(210, 1, 5, 1, 'hello', 1, '2018-10-04 15:17:53', '2018-10-04 15:17:53', NULL),
(211, 1, 5, 1, 'https://www.zoomit.ir/2016/10/22/147522/hdd-data-dban-autonake/\nhttps://www.zoomit.ir/2016/10/22/147522/hdd-data-dban-autonake/https://www.zoomit.ir/2016/10/22/147522/hdd-data-dban-autonake/\nhttps://www.zoomit.ir/2016/10/22/147522/hdd-data-dban-autonake/https://www.zoomit.ir/2016/10/22/147522/hdd-data-dban-autonake/\nhttps://www.zoomit.ir/2016/10/22/147522/hdd-data-dban-autonake/', 1, '2018-10-04 15:18:15', '2018-10-04 15:18:15', NULL),
(212, 1, 5, 1, 'bbn', 1, '2018-10-04 15:20:34', '2018-10-04 15:20:34', NULL),
(213, 1, 31, 1, 'ycgh', 1, '2018-10-04 15:23:04', '2018-10-04 15:23:04', NULL),
(214, 1, 31, 1, 'کک', 1, '2018-10-04 15:53:39', '2018-10-04 15:53:39', NULL),
(215, 1, 5, 1, 'fdfd', 1, '2018-10-04 17:17:17', '2018-10-04 17:17:17', NULL),
(242, 1, 3, 1, 'fdf', 1, '2018-10-05 14:19:29', '2018-10-05 14:19:29', NULL),
(243, 1, 3, 1, 'dfdfdfrfrfrfrfr', 1, '2018-10-05 14:19:41', '2018-10-05 14:19:41', NULL),
(244, 1, 3, 1, 'dfdf', 1, '2018-10-05 14:20:18', '2018-10-05 14:20:18', NULL),
(245, 1, 3, 1, 'dfdf', 1, '2018-10-05 14:20:21', '2018-10-05 14:20:21', NULL),
(246, 1, 3, 1, 'dfdfd', 1, '2018-10-05 14:24:21', '2018-10-05 14:24:21', NULL),
(247, 1, 3, 1, 'dfd', 1, '2018-10-05 14:24:23', '2018-10-05 14:24:23', NULL),
(248, 1, 3, 1, 'fdd', 1, '2018-10-05 14:24:30', '2018-10-05 14:24:30', NULL),
(249, 1, 5, 1, 'hi', 1, '2018-10-05 20:15:01', '2018-10-05 20:15:01', NULL),
(250, 1, 3, 1, 'سلام من بازی پی اس رو خریدم چرا اریال نمیکنسد', 1, '2018-10-06 14:21:08', '2018-10-06 14:21:08', NULL),
(251, 1, 3, 1, 'بازی fifa خیلی بهتر از pes هست', 1, '2018-10-08 13:40:25', '2018-10-08 13:40:25', NULL),
(252, 1, 3, 1, 'تاادل ااا ااا الر  تلررو اا  ات ا اکنوت تت  توتو اگ \n\n\nخادد \nتا \n\nتالا \nتتاب \n????????????^67 اتت\n????????', 1, '2018-10-08 17:20:56', '2018-10-08 17:20:56', NULL),
(253, 1, 41, 1, 'erere', 1, '2018-10-10 07:56:07', '2018-10-10 07:56:07', NULL),
(254, 1, 31, 1, 'frfre', 1, '2018-10-10 08:37:31', '2018-10-10 08:37:31', NULL),
(255, 1, 3, 0, 'salam admin', 1, '2018-08-07 19:30:00', NULL, NULL),
(256, 1, 31, 0, 'salam admin', 1, '2018-08-15 19:30:00', NULL, NULL),
(257, 1, 1, 0, 'salam karbare2', 0, '2018-08-15 19:30:00', NULL, NULL),
(258, 1, 1, 0, 'salam karbare2', 0, '2018-08-15 19:30:00', NULL, NULL),
(259, 1, 31, 0, 'salam admin', 1, '2018-08-15 19:30:00', NULL, NULL),
(260, 1, 31, 0, 'چخبر ادمین چکار میکنی؟\r\nاوضاع سایت چطوره؟\r\nسلامتی؟\r\nاین پیام برای تست است\r\n', 1, '2018-08-15 19:30:00', NULL, NULL),
(261, 1, 31, 0, 'hi mohsen15', 1, '2018-08-15 19:30:00', NULL, NULL),
(262, 1, 31, 0, 'salam admin', 1, '2018-08-15 19:30:00', NULL, NULL),
(263, 1, 31, 0, 'salam admin', 1, '2018-08-15 19:30:00', NULL, NULL),
(264, 1, 31, 0, 'salam admin', 1, '2018-08-15 19:30:00', NULL, NULL),
(265, 1, 31, 0, 'new ticket test (async)', 1, '2018-08-15 19:30:00', NULL, NULL),
(266, 1, 31, 1, 's', 1, '2018-10-10 14:23:17', '2018-10-10 14:23:17', NULL),
(267, 1, 31, 1, 'snbdb', 1, '2018-10-10 14:23:21', '2018-10-10 14:23:21', NULL),
(268, 1, 31, 1, 's', 1, '2018-10-10 14:23:27', '2018-10-10 14:23:27', NULL),
(269, 1, 3, 1, 'gggg????', 1, '2018-10-12 11:48:53', '2018-10-12 11:48:53', NULL),
(270, 1, 3, 1, 'vn', 1, '2018-10-12 11:49:05', '2018-10-12 11:49:05', NULL),
(271, 1, 3, 1, '????', 1, '2018-10-12 11:49:08', '2018-10-12 11:49:08', NULL),
(272, 1, 31, 1, 'hxxx', 1, '2018-10-12 12:04:16', '2018-10-12 12:04:16', NULL),
(273, 1, 3, 1, 'mnznzn', 1, '2018-10-12 13:07:57', '2018-10-12 13:07:57', NULL),
(274, 1, 3, 0, 'salam admin', 1, '2018-08-07 19:30:00', NULL, NULL),
(275, 1, 2, 0, 'salam admin', 1, '2018-08-07 19:30:00', NULL, NULL),
(276, 1, 3, 0, 'salam admin', 1, '2018-08-07 19:30:00', NULL, NULL),
(277, 1, 3, 0, 'salam admin', 1, '2018-08-07 19:30:00', NULL, NULL),
(278, 1, 3, 1, 'salam admin', 1, '2018-08-07 19:30:00', NULL, NULL),
(279, 1, 3, 1, 'تیکت از طرف پویا ارسال شد برای شما این یک متن تست میباشد.', 1, '2018-10-18 10:15:10', '2018-10-18 10:15:10', NULL),
(280, 1, 3, 1, 'تیکت دوم از طرف پویا', 1, '2018-10-18 10:20:34', '2018-10-18 10:20:34', NULL),
(281, 1, 3, 1, 'تیکت سوم', 1, '2018-10-18 10:21:02', '2018-10-18 10:21:02', NULL),
(282, 1, 3, 1, 'تیکت چهارم\nلورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد', 1, '2018-10-18 10:21:33', '2018-10-18 10:21:33', NULL),
(283, 1, 3, 1, 'تیکت چهارم \n\n.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد.', 1, '2018-10-18 10:25:37', '2018-10-18 10:25:37', NULL),
(284, 1, 3, 1, 'تیکت چهارم \n\n.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد.', 1, '2018-10-18 10:25:41', '2018-10-18 10:25:41', NULL),
(285, 1, 3, 1, 'تیکت چهارم \n\n.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد.', 1, '2018-10-18 10:25:47', '2018-10-18 10:25:47', NULL),
(286, 1, 3, 1, 'تیکت چهارم \n\n.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد.', 1, '2018-10-18 10:25:56', '2018-10-18 10:25:56', NULL),
(287, 1, 3, 1, 'تیکت چهارم \n\n.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد.', 1, '2018-10-18 10:26:00', '2018-10-18 10:26:00', NULL),
(288, 1, 3, 1, 'sdf sdfsd sd', 1, '2018-10-18 10:26:09', '2018-10-18 10:26:09', NULL),
(289, 1, 3, 1, 'fds fsdf asd fa', 1, '2018-10-18 10:27:05', '2018-10-18 10:27:05', NULL),
(290, 1, 3, 1, 'تیکت چهارم .لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم \n\nاز صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد.', 1, '2018-10-18 10:27:54', '2018-10-18 10:27:54', NULL),
(291, 1, 3, 1, 'fdsfsdfsd\nfsdfsd\nfsd', 1, '2018-10-18 10:28:28', '2018-10-18 10:28:28', NULL),
(292, 1, 3, 1, 'و   \n\n\n\n ک ک \n\n\n\n b', 1, '2018-10-18 10:28:45', '2018-10-18 10:28:45', NULL),
(293, 1, 3, 1, 'fafa\ndfsd\nsdfa\nfa\nafa\nafa', 1, '2018-10-18 10:30:12', '2018-10-18 10:30:12', NULL),
(294, 1, 3, 1, 'hello bax????????????', 1, '2018-10-18 10:30:35', '2018-10-18 10:30:35', NULL),
(295, 1, 3, 1, 'fdsf sdf sda', 1, '2018-10-18 10:31:13', '2018-10-18 10:31:13', NULL),
(296, 1, 3, 1, 'fds fadf ads f', 1, '2018-10-18 10:32:12', '2018-10-18 10:32:12', NULL),
(297, 1, 3, 1, 'fas sdf as sdf a', 1, '2018-10-18 10:32:21', '2018-10-18 10:32:21', NULL),
(298, 1, 3, 1, 'fasfsafsaf', 1, '2018-10-18 10:32:42', '2018-10-18 10:32:42', NULL),
(299, 1, 3, 1, 'fadsfa sd a', 1, '2018-10-18 10:33:59', '2018-10-18 10:33:59', NULL),
(300, 1, 3, 1, 'fasd sdf sda', 1, '2018-10-18 10:35:00', '2018-10-18 10:35:00', NULL),
(301, 1, 3, 1, 'f sd sd sd \n\n\nfsdf\nsdf', 1, '2018-10-18 10:36:33', '2018-10-18 10:36:33', NULL),
(302, 1, 3, 1, 'sfsd dsfs', 1, '2018-10-18 10:38:12', '2018-10-18 10:38:12', NULL),
(303, 1, 3, 1, 'fafs sd', 1, '2018-10-18 10:39:50', '2018-10-18 10:39:50', NULL),
(304, 1, 3, 1, 'fsdfdsfs', 1, '2018-10-18 10:40:01', '2018-10-18 10:40:01', NULL),
(305, 1, 3, 1, 'sss', 1, '2018-10-18 10:51:38', '2018-10-18 10:51:38', NULL),
(306, 1, 3, 1, 'سلام', 1, '2018-10-18 10:52:52', '2018-10-18 10:52:52', NULL),
(307, 1, 3, 1, 'بسبس', 1, '2018-10-18 10:56:50', '2018-10-18 10:56:50', NULL),
(308, 1, 3, 1, 'بسیبس سب س', 1, '2018-10-18 10:57:30', '2018-10-18 10:57:30', NULL),
(309, 1, 3, 1, 'fdsfa یبیب\nسیبسی', 1, '2018-10-18 10:58:00', '2018-10-18 10:58:00', NULL),
(310, 1, 3, 1, 'dfdsf sfs', 1, '2018-10-18 11:03:17', '2018-10-18 11:03:17', NULL),
(311, 1, 3, 1, 'سلام یه تست جدید از تیکت', 1, '2018-10-18 11:22:16', '2018-10-18 11:22:16', NULL),
(312, 1, 3, 1, 'sdmjf\nfdsf\ns', 1, '2018-10-18 12:13:01', '2018-10-18 12:13:01', NULL),
(313, 1, 3, 1, 's', 1, '2018-10-18 12:21:56', '2018-10-18 12:21:56', NULL),
(314, 1, 3, 1, 's', 1, '2018-10-18 12:22:41', '2018-10-18 12:22:41', NULL),
(315, 1, 3, 1, 's', 1, '2018-10-18 12:25:18', '2018-10-18 12:25:18', NULL),
(316, 1, 3, 1, 'jnn', 1, '2018-10-18 21:45:31', '2018-10-18 21:45:31', NULL),
(317, 1, 3, 1, 'bbb', 1, '2018-10-19 14:18:59', '2018-10-19 14:18:59', NULL),
(318, 1, 3, 1, '????????????????????????', 1, '2018-10-19 14:19:04', '2018-10-19 14:19:04', NULL),
(319, 1, 3, 1, 'رنزوزرطززدد', 1, '2018-10-19 19:25:37', '2018-10-19 19:25:37', NULL),
(320, 1, 3, 1, 'تزرر', 1, '2018-10-19 19:25:41', '2018-10-19 19:25:41', NULL),
(321, 1, 3, 1, 'رترد', 1, '2018-10-19 19:25:43', '2018-10-19 19:25:43', NULL),
(322, 1, 3, 0, 'salam mohsen3', 1, '2018-08-07 19:30:00', NULL, NULL),
(323, 1, 3, 0, 'salam ali', 1, '2018-08-07 19:30:00', NULL, NULL),
(324, 1, 3, 0, 'salam ali too', 1, '2018-08-07 19:30:00', NULL, NULL),
(325, 1, 3, 1, 'hi', 1, '2019-02-03 11:16:42', '2019-02-03 11:16:42', NULL),
(326, 1, 3, 1, 'سلام', 1, '2019-02-05 09:23:50', '2019-02-05 09:23:50', NULL),
(327, 1, 3, 0, 'HELLO FROM ADMIN', 1, '2019-02-05 09:23:50', '2019-02-05 09:23:50', NULL),
(328, 1, 3, 1, 'hello  too', 1, '2019-02-05 10:47:54', '2019-02-05 10:47:54', NULL),
(329, 1, 3, 1, 'hi', 1, '2019-02-14 10:35:21', '2019-02-14 10:35:21', NULL),
(330, 1, 3, 1, 'wheredfsafdfddfffffffffffffffffffffffffffffffffffasfweewfrefefef45e4f56e465f4wheredfsafdfddfffffffffffffffffffffffffffffffffffasfweewfrefefef45e4f56e465f4wheredfsafdfddfffffffffffffffffffffffffffffffffffasfweewfrefefef45e4f56e465f4', 1, '2019-02-14 10:36:01', '2019-02-14 10:36:01', NULL),
(331, 1, 3, 1, 'need  your help now!!!', 1, '2019-02-16 07:57:35', '2019-02-16 07:57:35', NULL),
(332, 1, 3, 1, 'okhttp', 1, '2019-02-16 17:43:23', '2019-02-16 17:43:23', NULL),
(333, 1, 3, 1, 'ok', 1, '2019-03-08 10:55:46', '2019-03-08 10:55:46', NULL),
(334, 1, 3, 1, 'jj', 1, '2019-03-08 10:55:50', '2019-03-08 10:55:50', NULL),
(335, 1, 3, 1, 'hi', 1, '2019-03-10 19:18:56', '2019-03-10 19:18:56', NULL),
(336, 1, 3, 1, 'hi', 1, '2019-03-10 19:19:03', '2019-03-10 19:19:03', NULL),
(337, 1, 3, 1, 'goog', 1, '2019-03-10 19:19:08', '2019-03-10 19:19:08', NULL),
(338, 1, 3, 1, 'hello', 1, '2019-03-12 09:40:25', '2019-03-12 09:40:25', NULL),
(339, 1, 3, 1, 'Hello Again', 1, '2019-03-12 09:41:40', '2019-03-12 09:41:40', NULL),
(340, 1, 3, 1, 'hello agin toooooo', 1, '2019-03-12 09:43:40', '2019-03-12 09:43:40', NULL),
(341, 1, 3, 1, 'hello word', 1, '2019-03-12 09:44:11', '2019-03-12 09:44:11', NULL),
(342, 1, 3, 1, 'hello admin joooooon', 1, '2019-03-12 09:48:25', '2019-03-12 09:48:25', NULL),
(343, 1, 3, 1, 'salam mohsen jooooooooooooon', 1, '2019-03-12 09:51:58', '2019-03-12 09:51:58', NULL),
(344, 1, 3, 1, 'asdas', 1, '2019-03-12 10:00:29', '2019-03-12 10:00:29', NULL),
(345, 1, 3, 1, 'Assad', 1, '2019-03-12 10:00:31', '2019-03-12 10:00:31', NULL),
(346, 1, 3, 1, 'Assad', 1, '2019-03-12 10:00:32', '2019-03-12 10:00:32', NULL),
(347, 1, 3, 1, 'Assad', 1, '2019-03-12 10:00:34', '2019-03-12 10:00:34', NULL),
(348, 1, 3, 1, 'Assad', 1, '2019-03-12 10:00:34', '2019-03-12 10:00:34', NULL),
(349, 1, 3, 1, 'Assad', 1, '2019-03-12 10:00:37', '2019-03-12 10:00:37', NULL),
(350, 1, 3, 1, 'Assadasdsa', 1, '2019-03-12 10:00:39', '2019-03-12 10:00:39', NULL),
(351, 1, 3, 1, 'xcvxcvxcv', 1, '2019-03-12 10:01:55', '2019-03-12 10:01:55', NULL),
(352, 1, 3, 0, 'hello from admin to mohsen', 1, '2019-03-12 10:01:55', '2019-03-12 10:01:55', NULL),
(353, 1, 3, 1, 'salam', 1, '2019-03-12 10:10:47', '2019-03-12 10:10:47', NULL),
(354, 1, 3, 1, 'khobi?', 1, '2019-03-12 10:12:16', '2019-03-12 10:12:16', NULL),
(355, 1, 3, 1, 'kosher?', 1, '2019-03-12 10:19:15', '2019-03-12 10:19:15', NULL),
(356, 1, 3, 1, '**Kjaeee?', 1, '2019-03-12 10:21:35', '2019-03-12 10:21:35', NULL),
(357, 1, 3, 1, 'qwerasdf', 1, '2019-03-12 10:25:05', '2019-03-12 10:25:05', NULL),
(358, 1, 3, 1, '13456', 1, '2019-03-12 10:26:36', '2019-03-12 10:26:36', NULL),
(359, 1, 3, 1, 'salam again', 1, '2019-03-12 10:29:53', '2019-03-12 10:29:53', NULL),
(360, 1, 3, 1, 'ha ha ha', 1, '2019-03-12 10:31:15', '2019-03-12 10:31:15', NULL),
(361, 1, 3, 1, 'how are you admin????', 1, '2019-03-12 10:33:34', '2019-03-12 10:33:34', NULL),
(362, 1, 3, 1, 'I’m fine...how are you?', 1, '2019-03-12 10:35:12', '2019-03-12 10:35:12', NULL),
(363, 1, 3, 1, 'khgsنابزسی', 1, '2019-03-12 10:56:32', '2019-03-12 10:56:32', NULL),
(364, 1, 131, 1, 'slm', 1, '2019-03-15 13:36:18', '2019-03-15 13:36:18', NULL),
(365, 1, 131, 1, 'slm', 1, '2019-03-15 13:36:31', '2019-03-15 13:36:31', NULL),
(366, 1, 133, 1, 'hi there....!', 1, '2019-03-15 13:44:30', '2019-03-15 13:44:30', NULL),
(367, 1, 133, 1, 'what’s up?', 1, '2019-03-15 13:45:01', '2019-03-15 13:45:01', NULL),
(368, 1, 133, 1, 'I’m fine...how r u?', 1, '2019-03-15 13:45:28', '2019-03-15 13:45:28', NULL),
(369, 1, 133, 1, 'hello again', 1, '2019-03-15 13:50:24', '2019-03-15 13:50:24', NULL),
(370, 1, 133, 1, 'hello again 2', 1, '2019-03-15 13:52:53', '2019-03-15 13:52:53', NULL),
(371, 1, 133, 1, 'hello again 3', 1, '2019-03-15 13:55:49', '2019-03-15 13:55:49', NULL),
(372, 1, 133, 1, 'how old r u ?', 1, '2019-03-15 13:56:13', '2019-03-15 13:56:13', NULL),
(373, 1, 133, 1, 'Loren opossum', 1, '2019-03-15 13:56:39', '2019-03-15 13:56:39', NULL),
(374, 1, 133, 1, 'a', 1, '2019-03-15 13:57:30', '2019-03-15 13:57:30', NULL),
(375, 1, 3, 1, 'hello there!!!', 1, '2019-03-16 11:00:44', '2019-03-16 11:00:44', NULL),
(376, 1, 131, 1, 'how r u?', 1, '2019-03-25 14:47:39', '2019-03-25 14:47:39', NULL),
(377, 1, 3, 1, 'slm', 1, '2019-04-03 11:22:28', '2019-04-03 11:22:28', NULL),
(378, 1, 3, 1, 'Hello admin Jan :)', 1, '2019-04-15 08:28:02', '2019-04-15 08:28:02', NULL),
(379, 1, 131, 1, 'mohsennnnn?', 1, '2019-04-18 10:58:30', '2019-04-18 10:58:30', NULL),
(380, 1, 3, 1, 'slm there', 1, '2019-04-20 09:46:27', '2019-04-20 09:46:27', NULL),
(381, 1, 3, 1, '😮', 1, '2019-05-29 12:40:23', '2019-05-29 12:40:23', NULL),
(382, 1, 3, 1, 'سلام و وقت بخیر.', 1, '2019-05-30 15:10:56', '2019-05-30 15:10:56', NULL),
(383, 1, 3, 1, 'this    is amazing', 1, '2019-05-30 15:51:33', '2019-05-30 15:51:33', NULL),
(384, 1, 3, 1, 'ssshbs', 1, '2019-05-30 15:51:39', '2019-05-30 15:51:39', NULL),
(385, 1, 3, 1, 'چجحخههعغفقص', 1, '2019-05-31 12:46:59', '2019-05-31 12:46:59', NULL),
(386, 1, 3, 1, 'پذن', 1, '2019-05-31 12:47:03', '2019-05-31 12:47:03', NULL),
(387, 1, 134, 1, 'hello there', 1, '2019-06-01 11:30:00', '2019-06-01 11:30:00', NULL),
(388, 1, 3, 1, 'hghjj', 1, '2019-06-01 12:11:57', '2019-06-01 12:11:57', NULL),
(389, 1, 3, 1, 'jooooon', 1, '2019-06-01 12:12:13', '2019-06-01 12:12:13', NULL),
(390, 1, 3, 1, 'gfddvb', 1, '2019-06-01 12:12:24', '2019-06-01 12:12:24', NULL),
(391, 1, 3, 1, 'v', 1, '2019-06-01 12:12:29', '2019-06-01 12:12:29', NULL),
(392, 1, 3, 1, 'ndjxnznzl nnzbzbmx zk zkxjzbkzk', 1, '2019-06-01 12:39:21', '2019-06-01 12:39:21', NULL),
(393, 1, 131, 1, 'hi mohaen...where r u now???,', 1, '2019-06-03 10:22:03', '2019-06-03 10:22:03', NULL),
(394, 1, 3, 1, 'slm admin', 1, '2019-06-04 09:50:44', '2019-06-04 09:50:44', NULL),
(395, 1, 3, 1, 'slm to you', 1, '2019-06-09 14:38:20', '2019-06-09 14:38:20', NULL),
(396, 1, 3, 1, 'تردوزتپا', 1, '2019-06-12 07:53:22', '2019-06-12 07:53:22', NULL),
(397, 1, 3, 1, 'ایدینیز', 1, '2019-06-16 09:11:09', '2019-06-16 09:11:09', NULL),
(398, 1, 3, 1, 'تطدژدژدتیس ژنیتی ینژ', 1, '2019-06-18 11:05:11', '2019-06-18 11:05:11', NULL),
(399, 1, 3, 1, 'afghjvvnkcn', 1, '2019-06-18 11:17:04', '2019-06-18 11:17:04', NULL),
(400, 1, 3, 1, 'سلامرنر', 1, '2019-06-27 11:33:11', '2019-06-27 11:33:11', NULL),
(401, 1, 3, 1, 'دیدید', 1, '2019-06-27 11:33:17', '2019-06-27 11:33:17', NULL),
(402, 1, 3, 1, 'ووثپد', 1, '2019-06-27 18:37:41', '2019-06-27 18:37:41', NULL),
(403, 1, 3, 1, 'ارزتنردا', 1, '2019-06-29 12:16:46', '2019-06-29 12:16:46', NULL),
(404, 1, 3, 1, 'salam', 1, '2019-06-29 13:53:14', '2019-06-29 13:53:14', NULL),
(405, 1, 3, 1, 'تفقاتیبذ', 1, '2019-07-01 20:31:58', '2019-07-01 20:31:58', NULL),
(406, 1, 131, 1, 'ali aghaaaaaa', 1, '2019-07-02 07:20:27', '2019-07-02 07:20:27', NULL),
(407, 1, 3, 1, 'اات', 1, '2019-07-19 17:33:13', '2019-07-19 17:33:13', NULL),
(408, 1, 131, 1, 'سلام و خسته نباشید.چرا محصول من ارسال نمیشه؟؟؟', 1, '2019-07-26 16:33:48', '2019-07-26 16:33:48', NULL),
(409, 1, 131, 1, 'زبربیژزر', 1, '2019-07-26 16:34:01', '2019-07-26 16:34:01', NULL),
(410, 1, 131, 1, 'fght slm', 1, '2019-09-03 08:41:35', '2019-09-03 08:41:35', NULL),
(411, 1, 135, 1, 'shsbs', 1, '2019-09-26 11:59:32', '2019-09-26 11:59:32', NULL),
(412, 1, 3, 1, 'نن', 1, '2019-10-25 13:36:49', '2019-10-25 13:36:49', NULL),
(413, 1, 3, 1, 'ططوطوطوطوزوز', 1, '2019-10-25 13:36:51', '2019-10-25 13:36:51', NULL),
(414, 1, 3, 1, 'زتوب', 1, '2019-10-25 13:36:53', '2019-10-25 13:36:53', NULL),
(415, 1, 3, 1, 'بکبووب', 1, '2019-10-25 13:36:54', '2019-10-25 13:36:54', NULL),
(416, 1, 3, 1, 'بکبکبکبو', 1, '2019-10-25 13:36:56', '2019-10-25 13:36:56', NULL),
(417, 1, 3, 1, 'یکببو', 1, '2019-10-25 13:36:58', '2019-10-25 13:36:58', NULL),
(418, 1, 3, 1, 'یویودیوسویویویویق ی یدیتیتی', 1, '2019-10-25 13:37:02', '2019-10-25 13:37:02', NULL),
(419, 1, 3, 1, '😈😈😈', 1, '2019-10-29 10:54:45', '2019-10-29 10:54:45', NULL),
(420, 1, 3, 1, 'vnbvbbccv', 1, '2019-12-03 12:15:12', '2019-12-03 12:15:12', NULL),
(421, 1, 3, 1, 'gfjf', 1, '2019-12-03 12:19:27', '2019-12-03 12:19:27', NULL),
(422, 1, 3, 1, 'bxbsj', 1, '2019-12-03 12:24:27', '2019-12-03 12:24:27', NULL),
(423, 1, 3, 1, 'wee need soome help here', 1, '2019-12-03 12:24:41', '2019-12-03 12:24:41', NULL),
(424, 1, 3, 1, 'fhrbdvej', 1, '2019-12-03 12:35:04', '2019-12-03 12:35:04', NULL),
(425, 1, 3, 1, 'evevrbt', 1, '2019-12-03 12:35:08', '2019-12-03 12:35:08', NULL),
(426, 1, 3, 1, 'سلام', 1, '2019-12-03 12:35:19', '2019-12-03 12:35:19', NULL),
(427, 1, 3, 1, 'ایا بسته ما ارسال شده؟', 1, '2019-12-03 12:35:30', '2019-12-03 12:35:30', NULL),
(428, 1, 1, 0, 'message from admin', 0, '2019-12-25 11:11:44', '2019-12-25 11:11:44', NULL),
(429, 1, 3, 0, 'خیر', 0, '2019-12-25 11:52:30', '2019-12-25 11:52:30', NULL),
(430, 1, 5, 0, 'hello to mohsen5', 0, '2019-12-28 09:50:25', '2019-12-28 09:50:25', NULL),
(431, 1, 137, 0, 'fefe', 0, '2019-12-28 11:23:13', '2019-12-28 11:23:13', NULL),
(432, 1, 2, 0, 'کاربر گرامی مبلغ 150000  تومان بابت تسویه حساب به شما پرداخت شد', 1, '2019-12-30 13:46:56', '2019-12-30 13:46:56', NULL),
(433, NULL, 139, 1, 'salam', 1, '2020-02-18 13:18:08', '2020-02-18 13:18:08', NULL),
(434, 1, 139, 0, 'salam', 1, '2020-02-19 09:31:35', '2020-02-19 09:31:35', NULL),
(435, NULL, 139, 1, 'khubi', 1, '2020-02-19 09:32:09', '2020-02-19 09:32:09', NULL),
(436, 1, 139, 0, 'khubam', 1, '2020-02-19 09:32:52', '2020-02-19 09:32:52', NULL),
(437, NULL, 2, 1, 'silam', 1, '2020-02-25 09:44:12', '2020-02-25 09:44:12', NULL),
(438, 1, 2, 0, 'silam', 1, '2020-02-25 09:46:33', '2020-02-25 09:46:33', NULL),
(439, NULL, 2, 1, 'سلام', 1, '2020-02-25 11:32:43', '2020-02-25 11:32:43', NULL),
(440, 1, 2, 0, 'سلام به شما', 1, '2020-02-25 11:33:41', '2020-02-25 11:33:41', NULL),
(441, 1, 2, 0, ' کاربر گرامی مبلغ 150000 تومان بابت تسویه حساب به شما پرداخت شد ', 0, '2020-03-13 15:49:18', '2020-03-13 15:49:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `national_code` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `invite_code` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_invite_code_unique` (`invite_code`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `mobile`, `national_code`, `password`, `invite_code`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'mohsenfarjami', 'mohsen@gmail.com', '9303484023', NULL, '$2y$10$HwVlq0R7S/uRVGpPMHkUQu26jHchjEZxBWkScVY6bWwBJ7NWA6yBO', '12345', 'OtWgxVYUQDsEsWg0MPXUyybGxcouka6Ja7rClpBNQE166sJb40LPFj9YpYSc', '2018-08-12 19:30:00', NULL, NULL),
(2, 'mohsenfarjami2', 'mohsen2@gmail.com', '09358080242', NULL, '$2y$10$HwVlq0R7S/uRVGpPMHkUQu26jHchjEZxBWkScVY6bWwBJ7NWA6yBO', '58858', NULL, '2018-08-12 19:30:00', '2018-08-14 02:54:05', NULL),
(3, 'mohsenfarjami3', 'mohsen3@gmail.com', '09145821998', NULL, '$2y$10$HwVlq0R7S/uRVGpPMHkUQu26jHchjEZxBWkScVY6bWwBJ7NWA6yBO', '58835', 'nuTtuFxfj6zvFw6WQalSxEvv3JfkSb2VLvxuZlBtTCv6wN4cSaQyhYkABh1L', '2018-08-13 03:49:46', NULL, NULL),
(4, 'mohsenfarjami4', 'mohsen4@gmail.com', '9303484023', NULL, '$2y$10$HwVlq0R7S/uRVGpPMHkUQu26jHchjEZxBWkScVY6bWwBJ7NWA6yBO', '58834', NULL, '2018-08-13 03:49:46', NULL, NULL),
(5, 'mohsenfarjami5', 'mohsen5@gmail.com', '9303484023', NULL, '$2y$10$HwVlq0R7S/uRVGpPMHkUQu26jHchjEZxBWkScVY6bWwBJ7NWA6yBO', '58895', NULL, '2018-08-13 03:49:46', NULL, NULL),
(10, 'mohsenfarjami6', 'mohsen6@gmail.com', '9303484023', NULL, '$2y$10$HwVlq0R7S/uRVGpPMHkUQu26jHchjEZxBWkScVY6bWwBJ7NWA6yBO', '58896', NULL, '2018-08-13 03:49:46', NULL, NULL),
(11, 'mohsenfarjami7', 'mohsen7@gmail.com', '9303484023', NULL, '$2y$10$KeIsrMCxIuJgzoeHKwP.7.L0B.Vn/80eNbj5lZzmwim4osatDz3qu', 'QMjBQ', NULL, '2018-08-13 03:49:46', '2018-08-13 03:49:46', NULL),
(12, 'mohsenfarjami8', 'mohsen8@gmail.com', '9303484023', NULL, '$2y$10$VmO5pOe.9Rp2QwqboRbT.OSjR9cvyc3IugwnmP/wRWB3RLjELQ7Au', 'H9cuw', NULL, '2018-08-13 04:27:07', '2018-08-13 04:27:07', NULL),
(18, 'mohsenfarjami9', 'mohsen9@gmail.com', '9303484023', NULL, '$2y$10$ShX17oF7vU6iU3Nc3ViW7uKRlR1OwulBJ81RTnATGT2eK/KMPdcDa', 'e4nOI', NULL, '2018-08-13 05:31:59', '2018-08-13 05:31:59', NULL),
(24, 'ali1', 'ali1@gmail.com', '9303484023', NULL, '$2y$10$oGTkKnspaD9oTthKZW81wehCvv12jbhsj1n5KIgUCPhl82JdU6aEe', 'OyZHq', NULL, '2018-08-13 08:14:43', '2018-08-13 08:14:43', NULL),
(25, 'ali2', 'ali2@gmail.com', '9303484023', NULL, '$2y$10$T2OcNqWOn/FmOzk9lbcYx.qZTm1m3Zcxk5Akwz5Y6UQRPwNW1W57y', 'i7Mcw', NULL, '2018-08-13 09:18:36', '2018-08-13 09:18:36', NULL),
(26, 'ali3', 'ali3@gmail.com', '9303484023', NULL, '$2y$10$uzxS.vPEwIWH7/W50vM5Uu2jVWvgHbrriLwi4wnZAUkrYmMZD89Lq', 'IEY5L', NULL, '2018-08-13 09:22:32', '2018-08-13 09:22:32', NULL),
(27, 'puya1', 'puya1@gmail.com', '9303484023', NULL, '$2y$10$HwVlq0R7S/uRVGpPMHkUQu26jHchjEZxBWkScVY6bWwBJ7NWA6yBO', 'uIBG4', NULL, '2018-08-13 10:31:37', '2018-08-13 10:31:37', NULL),
(28, 'sfs', 'sfs@gmail.com', '9303484023', NULL, '$2y$10$kf./XJNWGg/X47tl4VaIX.b8b9CBmDJ9jJeN0jT3EKsnArK0YegRS', 'w8m7v', NULL, '2018-08-19 06:45:28', '2018-08-19 06:45:28', NULL),
(29, 'pouya', 'pouya@gmail.com', '9303484023', NULL, '$2y$10$Tl9ISQBi7F0R9wLMdAlpSOWnVriNBOOjV5/gum2g4OsLPyZMLkWni', 'PkVtj', NULL, '2018-08-19 07:20:20', '2018-08-19 07:20:20', NULL),
(30, 'pouyaakn', 'pouyaakn@gmail.com', '9303484023', NULL, '$2y$10$MdSSwzBtO/Mu.9lRnyBqzOLcGefGVGW3pyjsVe526fP1ph79PM43y', 'YaTnc', NULL, '2018-08-19 10:11:27', '2018-08-19 10:11:27', NULL),
(31, 'mohsenfarjami15', 'mohsen15@gmail.com', '9303484023', NULL, '$2y$10$hNu2nUCUvP16m.tU6O/9uuy8suZj4iduIYSNThLVRy3Uk.itFLXO2', '0raCh', NULL, '2018-08-19 10:15:10', '2018-08-19 10:15:10', NULL),
(32, 'pouyaakn1', 'pouyaakn1@gmail.com', '9303484023', NULL, '$2y$10$c6oUQX5paeXANiiHp5VX3OyyNlI4PKYnNDpvPMKMZ0HSbxBPcvEUi', '3evNy', NULL, '2018-08-19 10:16:23', '2018-08-19 10:16:23', NULL),
(33, 'mohsenfarjami16', 'mohsen16@gmail.com', '9303484023', NULL, '$2y$10$zLnEeBRGqFShComHgGClu.xV4OZfI/ulv4ZCQGXOlMwG/TcEJohs6', 'qC1Vk', NULL, '2018-08-26 07:08:39', '2018-08-26 07:08:39', NULL),
(34, 'mohsenfarjami17', 'mohsen17@gmail.com', '9303484023', NULL, '$2y$10$2WIKiB72GpDgRHZ16ULFpeE9AULFLZORflSZSp9S0wgosrrOD6HZ6', 'faM9m', NULL, '2018-08-26 07:17:41', '2018-08-26 07:17:41', NULL),
(35, 'mohsenfarjami18', 'mohsen18@gmail.com', '9303484023', NULL, '$2y$10$5EBY/AAGNgurv5B1lyWTdeMOF/kf7SgjwOuK1n6zUhT68dPEZW4ny', 'Nl7gr', NULL, '2018-08-26 08:22:47', '2018-08-26 08:22:47', NULL),
(36, 'mohsenfarjami20', 'mohsen20@gmail.com', '9303484023', NULL, '$2y$10$e0daXJQn3BJdvB1McxpIUu5UW003mEYgh69Na2x/41petEc5/UpEC', 'TfNCK', NULL, '2018-08-29 10:14:10', '2018-08-29 10:14:10', NULL),
(37, 'pouya44', 'pouya44@gmail.com', '9303484023', NULL, '$2y$10$NhNS7w5k7UsfFrvL6hbpjObJ5TZwX0pt/lc15mh0s/ZXAbimpXX5i', 'FXAo6', NULL, '2018-09-03 08:27:36', '2018-09-03 08:27:36', NULL),
(38, 'pouya', 'poudyaa@gmail.com', '9303484023', NULL, '$2y$10$KlkXfrRCb8rgFwJLQ6a4V.HZveBECl/I9YTVv.bPmj6.rwnV9Ud7S', 'vuDVb', NULL, '2018-09-03 08:42:12', '2018-09-03 08:42:12', NULL),
(39, 'mohsen40', 'mohsen40@gmail.com', '9303484023', NULL, '$2y$10$6eTh7b.jcWjhSGamUABz7uRdFVJQSK7k/0Srtd2SJBcRxL1RtBLq.', 'fJP9d', NULL, '2018-10-04 13:19:08', '2018-10-04 13:19:08', NULL),
(40, 'afa', 'afa@fafa.com', '9303484023', NULL, '$2y$10$cQryV0CgU8.gpbYwYgAVwuxrcdxgVN8tsQ4sZmd92FfC4pPZlus6S', 'TKzpg', NULL, '2018-10-08 17:01:24', '2018-10-08 17:01:24', NULL),
(41, 'محسن فرجامی', 'mohsen32@gmail.com', '9303484023', NULL, '$2y$10$x2pK22b70LYgB1M17RkvvubEpJu8AGz95t1VjQOXt9/Vl/tnh8ApK', '3IdOh', NULL, '2018-10-10 07:48:03', '2018-10-10 07:48:03', NULL),
(42, 'محسkfedfed', 'nnn@ff.com', '9303484023', NULL, '$2y$10$GeXi39gdKCfTs9k2SDUVTOdLTmXWEc3OcZEDzADSaccfxrYDSmTjC', 'K00ck', NULL, '2018-10-10 08:03:31', '2018-10-10 08:03:31', NULL),
(43, 'mehdi ak', 'mehdi@mehid.gma.com', '9303484023', NULL, '$2y$10$OrBUjkuQdKaJ3an7rAN1buTLgcTMmZdrwYHUws8UBfK9U.m6yK1am', 'IJZue', NULL, '2018-10-10 12:17:31', '2018-10-10 12:17:31', NULL),
(44, 'شمه شمتشم', 'sdfs@sdfsd.csfs', '9303484023', NULL, '$2y$10$wpVIlaSMKPxZZjmmDyZ1eOKpoCwJQFkF/rHN8PSDQiWjhTYUGD8hK', 'YmMMi', NULL, '2018-10-10 12:25:47', '2018-10-10 12:25:47', NULL),
(45, 'fafxv sfs', 'sfafa@fsfa.com', '9303484023', NULL, '$2y$10$kROtCRREwyWf6wow.RZmeOy0BrVUf6nausfwmCGAtpTHstt5pXJYW', 'g79ys', NULL, '2018-10-10 12:30:07', '2018-10-10 12:30:07', NULL),
(46, 'fafxv sfs fa', 'fafa@sfsf.com', '9303484023', NULL, '$2y$10$a3BNOylIKPUf2JACwFAxbev4BoT3DW0/smtxtBeUeHoHQQRvdtbK6', 'w9Up9', NULL, '2018-10-10 12:38:28', '2018-10-10 12:38:28', NULL),
(47, 'fafxcv sdf', 'fsdfas@sdfsf.csdf', '9303484023', NULL, '$2y$10$8jmpPPpe2AFE7Cn/6xtOGeWl977aadMt8DNZhJBUz9Ui0Bg7ZaTfa', 'cNP25', NULL, '2018-10-10 12:50:23', '2018-10-10 12:50:23', NULL),
(48, 'fafaxsfgsdfs', 'fafsdf@sfsf.sdfs', '9303484023', NULL, '$2y$10$VSRdOgeAyYr3MRleOR0X7eDypWy/1yzNRw6foyulMkFwbvDwE3Xvu', 'ryxtE', NULL, '2018-10-10 12:53:21', '2018-10-10 12:53:21', NULL),
(49, 'fafafa', 'fasfa@fsfs.com', '9303484023', NULL, '$2y$10$VRCpU7Wifkylt.AY8sx4ruT357foqmQ7emErHM2DOLlivvotnoVya', 'daQZk', NULL, '2018-10-11 11:47:19', '2018-10-11 11:47:19', NULL),
(50, 'czxczxc', 'mohsefn3@gmail.com', '9303484023', NULL, '$2y$10$mNHi46NuoaerohF2CWJtgOg3jmG0jManljGsnouzW13pTZZPzUtQG', 'IDywG', NULL, '2018-10-11 13:26:29', '2018-10-11 13:26:29', NULL),
(51, 'علی عربگری', 'aliaseman68@gmail.com', '9303484023', NULL, '$2y$10$gEgsLYvsI.en4PDU5BjS9u2efNdndUVU08TK2ZgguPknziFOMN53q', 'pNBwJ', NULL, '2018-10-12 13:07:58', '2018-10-12 13:07:58', NULL),
(52, 'akakakka', 'jakaka@gmail.com', '9303484023', NULL, '$2y$10$Urc3DPpBNZJywQuKydmg7u/kXCeRW7TgeZuhoUNWKmVoEERWWqaLi', 'Jdwby', NULL, '2018-10-12 13:08:57', '2018-10-12 13:08:57', NULL),
(53, 'mohsenfarjami', 'mnfi340@gmail.com', '9303484023', NULL, '$2y$10$pv8azRzw0KIHUVKIdtIMiu5qxr2vDAvLwDZs6CK433ImwMT3rBQAm', 'x2kId', NULL, '2018-10-13 09:37:09', '2018-10-13 09:37:09', NULL),
(54, 'Ali Arabgary', 'aliarabgary@gmail.com', '9303484023', NULL, '$2y$10$6Bf4LxBePBJl2JwJU0ASVu98qaIOyYO6QOrQeFBdEnQENzXULxJdq', 'AVJE0', NULL, '2018-10-16 14:06:18', '2018-10-16 14:06:18', NULL),
(55, 'AliMan68', 'Asdas@asdc.com', '9303484023', NULL, '$2y$10$UPM3IH9WAMXqj1p3Ileo4uKykchPedr7QxoQvnK5kl9mg2U7cM0VC', 'xRMib', NULL, '2018-10-16 14:15:24', '2018-10-16 14:15:24', NULL),
(56, 'IP Man', 'IpMan@gmail.org', '9303484023', NULL, '$2y$10$loU1XMTVq4oLfIrq4p8CheEcXgxdom9aUJ1Kgq/cdq6KUwEcE69YS', '6cCNg', NULL, '2018-10-16 14:19:27', '2018-10-16 14:19:27', NULL),
(57, 'Gsfdsdsdf', 'Dsfs@sdv.com', '9303484023', NULL, '$2y$10$Z9MqjZM3/KpdrCi1Ij0LauoYSK1k86bZA4dWEVDNY1pNvoe8LvrwC', 'SRZoK', NULL, '2018-10-16 14:20:31', '2018-10-16 14:20:31', NULL),
(58, 'Mahmoud Ahmadinejad Nehad', 'Mamoti@gmail.com', '9303484023', NULL, '$2y$10$fAvUe0cfA27aFxFDJoIDceV.o.CsnJ94.ysnAlFJ5yWu/IU6ncvVW', 'Qdsti', NULL, '2018-10-16 14:29:50', '2018-10-16 14:29:50', NULL),
(59, 'Aefaerf', 'Asdca@dsaasd.com', '9303484023', NULL, '$2y$10$gbNDuAOzhVFlLcd8qMHql.OEC.7R2VIKvNOmyCzJYW3U.T5ipO1M6', 'VJ75u', NULL, '2018-10-16 14:35:36', '2018-10-16 14:35:36', NULL),
(60, 'Ali Khamenei', 'SedAli@gmail.com', '9303484023', NULL, '$2y$10$E16hEGYpGsOlYL8lK6GS3OQPBDLGL95JaTYHQoCMMk576q2CJwqCK', 'Woios', NULL, '2018-10-16 14:37:23', '2018-10-16 14:37:23', NULL),
(61, 'Alias Emma', 'Alalala@gmail.com', '9303484023', NULL, '$2y$10$mHgw6o0wYUgBENBNoILKWeO9PnuosD13ZLiGS3xKo6Y.rggAxWfNq', 'VdfVq', NULL, '2018-10-16 15:01:08', '2018-10-16 15:01:08', NULL),
(62, 'ali arrraaaab', 'saca@dasvc.com', '9303484023', NULL, '$2y$10$6IjmHtHx6nX2pF19.wFZTehTkwH4tZx30l4OA7PzTnfCoxi.KL7X6', 'yDNFi', NULL, '2018-10-16 15:04:31', '2018-10-16 15:04:31', NULL),
(63, 'ali arrraaaab', 'sauuca@dasvc.com', '9303484023', NULL, '$2y$10$ZkDl6S9B2t1ESFxrLUiuzeQnb3i3PoU/p2nYTLAlzl.e3Q7JKjbwC', 'FenET', NULL, '2018-10-16 15:06:12', '2018-10-16 15:06:12', NULL),
(64, 'wegwegwefw', 'Wefw@dav.com', '9303484023', NULL, '$2y$10$gTmKIw8LP1/sWBzY7pgSXehNzj.fWpJBDPQgohL09x5JGxjfr4PBi', 'ORWh9', NULL, '2018-10-16 15:07:10', '2018-10-16 15:07:10', NULL),
(65, 'Alirscxv', 'Sdf@sdg.com', '9303484023', NULL, '$2y$10$RhlqJgZ1u3GRsXfjIouKveyd1d4covXgPHal.veEPwmSI55KRNGPS', 'Q9fD3', NULL, '2018-10-17 07:18:10', '2018-10-17 07:18:10', NULL),
(66, 'Mahatma Gandi', 'Gandi@india.is', '9303484023', NULL, '$2y$10$rYWPKhYPlLYMIspajMA22epGt3B43i2b2Oc/HFx6hdZmb7i0GuSy6', 'n8ok4', NULL, '2018-10-17 07:42:25', '2018-10-17 07:42:25', NULL),
(67, 'Stage âge', 'Sdfvszfd@fdgsf.com', '9303484023', NULL, '$2y$10$oGhkSmhsFzjjDr8mjU9X6eIuat4n2vjVSXtoV6NY7rSILIuPBPjP2', 'yYklf', NULL, '2018-10-17 07:43:36', '2018-10-17 07:43:36', NULL),
(68, 'Dfgsfret', 'Sdfs@dsf.com', '9303484023', NULL, '$2y$10$fb0r5XbXnseT2xkk1hVXleE4dPrCuluqj4Ew3xobgZncHaWgKXgfe', 'yfTb6', NULL, '2018-10-17 07:46:49', '2018-10-17 07:46:49', NULL),
(69, 'Donald trump', 'Trump@gmail.com', '9303484023', NULL, '$2y$10$owb3Gpr2Zhxi5Xu/gtPld.gGYbQ628D3hx3Om//gq5RlHpcmnmwoC', 'JisAP', NULL, '2018-10-17 07:50:57', '2018-10-17 07:50:57', NULL),
(70, 'صثبثصبصثبصث', 'Wefwef@dsafs.com', '9303484023', NULL, '$2y$10$tOh3i1.ArnRVUmLptLyrvu3iK7dk7yJajEVdpN/WwO0FUdxdZ0NqG', '0AkoB', NULL, '2018-10-17 07:53:09', '2018-10-17 07:53:09', NULL),
(71, 'Rengagea', 'Sfgs@gmail.com', '9303484023', NULL, '$2y$10$Ekie9thljLu/I9RaMT52BeckrBxco5h8vWX/bgGIPl1gCkBzzST3C', 'KmdxX', NULL, '2018-10-17 07:56:54', '2018-10-17 07:56:54', NULL),
(72, 'Aliases', 'Saxasc@fgasaf.com', '9303484023', NULL, '$2y$10$KO85pZNUFkbNQScDxrdO.OayDCYmuo0NezAo0ORAU19RyHW.YlAAO', '0xZgt', NULL, '2018-10-17 08:39:05', '2018-10-17 08:39:05', NULL),
(73, 'Ererwswefw', 'Wefwea@fdv.dh', '9303484023', NULL, '$2y$10$bEa19H55rzznylUbGxr8gerTzUk6Z1jSt8wXLqzm8opDlFunUNQne', 'vLQYU', NULL, '2018-10-17 08:40:42', '2018-10-17 08:40:42', NULL),
(74, 'sadasdas', 'Asdas@dasf.com', '9303484023', NULL, '$2y$10$rnWlWn2dfQpbEu01QggLdeJyoxIJLbMNx5Rm791JaIYTK.4Amiq96', 'opZCQ', NULL, '2018-10-17 13:01:57', '2018-10-17 13:01:57', NULL),
(75, 'DsvSDAv', 'SDv@dsvfd.com', '9303484023', NULL, '$2y$10$YvPdM3kXjOYE3dfcOpKuXO0O04BRKxa5Kn/fArGwcuUA9qY1SgxZC', 'nsAGf', NULL, '2018-10-17 13:44:04', '2018-10-17 13:44:04', NULL),
(76, 'RaegvfV', 'Sdacac@sac.com', '9303484023', NULL, '$2y$10$ZJl/P5eIKKer4wxShyt4uuP81IOM4wyZsf0jA1wTBEwrv/ZlB6MJK', 'Cqiso', NULL, '2018-10-17 13:47:11', '2018-10-17 13:47:11', NULL),
(77, 'Fwsedsad', 'Dzcsc@dsvsav.com', '9303484023', NULL, '$2y$10$lSF72vRdMKixwTJzzDa1t.bw/UaK.IUSLb3o2qLvb/y0NolEtDSgi', 'rOrBi', NULL, '2018-10-17 13:48:13', '2018-10-17 13:48:13', NULL),
(78, 'Qweqwdq', 'Qweq@gfy.com', '9303484023', NULL, '$2y$10$/97iJqAeUingOEEVkimMluzUE1.xMyKCvvzzMVwTJxCsJwLpdfegy', 'UspyN', NULL, '2018-10-17 13:49:07', '2018-10-17 13:49:07', NULL),
(79, 'Refreshh', 'Sd@dsdc.com', '9303484023', NULL, '$2y$10$3JIPVud.cTvNixgdBEsvbu5H38CKO8DDZroFzuy399pdlcBPxyo7G', 'Dlg26', NULL, '2018-10-17 13:55:51', '2018-10-17 13:55:51', NULL),
(80, 'Asdfvava', 'Saa@fvsd.com', '9303484023', NULL, '$2y$10$nHhGM8wAItsSL26h1m/4o.MtOBOduN7/RbtCrKW3J5IA6OZamgILm', 'hkhV9', NULL, '2018-10-17 14:48:38', '2018-10-17 14:48:38', NULL),
(81, 'Wqedqwdsaas', 'Qwedq@gail.com', '9303484023', NULL, '$2y$10$K8FIrivJhAlDbzrM6rNqFeCu5t1WKkds7QpB3luaOV070.RVyRJK6', 'wvidX', NULL, '2018-10-17 14:56:54', '2018-10-17 14:56:54', NULL),
(82, 'SadaSca', 'Sadxas@dca.com', '9303484023', NULL, '$2y$10$LpLF.y9O.jVMZJrcAnCTx.62mbcf.6VhTfksroVNmq4Hburn.FQDi', 'D1Oqt', NULL, '2018-10-17 15:00:48', '2018-10-17 15:00:48', NULL),
(83, 'Sadascsd', 'Acscas@dwea.coma', '9303484023', NULL, '$2y$10$L/ufHm/i4m74Y4oyG0UyAubMQtexSUR28neGl5gcxwq.TAzmEJ7UK', 'HOCNx', NULL, '2018-10-17 15:02:04', '2018-10-17 15:02:04', NULL),
(84, 'Sadasdcas', 'Asdasd@weda.com', '9303484023', NULL, '$2y$10$GQB4f.AvABy2wY/0j9nOg.fLxT1SwmYCA7ad77.0lgpeMqilcyk9.', 'oo1yz', NULL, '2018-10-17 15:04:41', '2018-10-17 15:04:41', NULL),
(85, 'PouyaAklion', 'pouyaak@gmail.com', '9303484023', NULL, '$2y$10$/PhLjaY3uYdtLmOfwUZoA.UjOTuydb85GbzH2rGZjpMUlhrF5SPsy', 'vI3Z6', NULL, '2018-10-18 12:28:01', '2018-10-18 12:28:01', NULL),
(86, 'Wedfgdffdg', 'Qweqw@gam.com', '9303484023', NULL, '$2y$10$g6zCctn.vmOfLT3KNGWF1.sW5AP5yNlQgKVR/FnZom/NgynXksRYy', '587ab', NULL, '2018-10-18 12:54:00', '2018-10-18 12:54:00', NULL),
(87, 'Fsgsfgbs', 'Sdfgs@sfvz.com', '9303484023', NULL, '$2y$10$lOaFmAoq9GzwH3aJFmGYE.QywWnpPGUvLRzOjZc8AWTXE4kJPAqfi', '54X49', NULL, '2018-10-18 13:09:54', '2018-10-18 13:09:54', NULL),
(88, 'Rgtwsersdfsdf', 'Sdfsf@ed.com', '9303484023', NULL, '$2y$10$6j27WaT4LYr4rC9mvqLD8ecW6brgWGFJoMe2qb8T7Z95EBVW/PGG6', 'DtRQv', NULL, '2018-10-18 13:20:44', '2018-10-18 13:20:44', NULL),
(89, 'Tightest', 'Ertge@edsf.fdsv', '9303484023', NULL, '$2y$10$xQizmeq8HziJqDcYHDtmeu6B3M0sDjdDcYvyLZ.KUHG7iP26RZwJq', 'a2Kzf', NULL, '2018-10-18 13:22:16', '2018-10-18 13:22:16', NULL),
(90, 'علی عربگری', 'Aliarabgary@yahoo.com', '9303484023', NULL, '$2y$10$bjPtroghAGrGd.eG9jEiB.mfBNvziR/1wAA57/6qVzC551qap90TC', 'XlZlI', NULL, '2018-10-18 13:24:26', '2018-10-18 13:24:26', NULL),
(91, 'ali arrraaaab', 'sauutca@dasvc.com', '9303484023', NULL, '$2y$10$G26TxN3XEvh/EO1hEJ7R1uhhmmPkjPtaZpJ/hs.FmHWfvDOLblrLK', 'Mbsfl', NULL, '2018-10-18 13:32:00', '2018-10-18 13:32:00', NULL),
(92, 'Reverted', 'Refge@egs.comErgo', '9303484023', NULL, '$2y$10$O9TvuJLem5Ai71xHq/258eFutKdwKO2n5ZSLWEGgMQMdAkggw.puG', 'lKUbp', NULL, '2018-10-18 13:35:00', '2018-10-18 13:35:00', NULL),
(93, 'Scfsadfcaes', 'Asdas@afc.com', '9303484023', NULL, '$2y$10$HWbdqfzzfJ6nh8fAs/4nZO90Dkd5XyN7ANBKx/Zjkvnr0M4w2Q.rS', 'MU0vG', NULL, '2018-10-18 13:37:17', '2018-10-18 13:37:17', NULL),
(94, 'علی علی', 'sadaa@ascda.coms', '9303484023', NULL, '$2y$10$VVJgGEuuHDjVqsqftDEIK.gXrq3u0glSeRtB9v9PbWfcuvJ.yEmRu', 'C06hs', NULL, '2018-10-18 13:51:35', '2018-10-18 13:51:35', NULL),
(95, 'RfagaRfg', 'Adidas@sada.com', '9303484023', NULL, '$2y$10$HS6oVSQ4n2DJncqyZv1RFO3i6D4klt5rxI3todXmXsLQCEvkPBwi.', 'sw36V', NULL, '2018-10-18 13:55:39', '2018-10-18 13:55:39', NULL),
(96, 'Asdasdasd', 'Lknasa@sdad.cdc', '9303484023', NULL, '$2y$10$LuG6PbidhzRSbi2bMaPY5uICoNmbHzW6kL6sbaekr0E8PsE.0YbMC', 'ln3r4', NULL, '2018-10-18 13:57:09', '2018-10-18 13:57:09', NULL),
(97, 'AadsfafF', 'Fdgdfgd@we.dsf', '9303484023', NULL, '$2y$10$44gujMrRR0IVP/6Sjs/kY.HRnzY5QBcybXIQihRvgVp6R/PuQ3SrS', 'UbfkB', NULL, '2018-10-18 13:59:27', '2018-10-18 13:59:27', NULL),
(98, 'Asdasdsdf', 'Asdsa@asda.com', '9303484023', NULL, '$2y$10$FO0bOWMqE.HdZ9NkuEt9N.8Q6dSUsY2V6SvIwdb9Irfq5WtYvWviK', 'd396X', NULL, '2018-10-18 14:02:00', '2018-10-18 14:02:00', NULL),
(99, 'علی عربگری', 'aliiarabgary@gmail.com', '9303484023', NULL, '$2y$10$50.A8egkU6xFlK/lX/GvUeBhxrMHE/1qJtyoOfqp9d0AW9d2XukYC', 'MSHhT', NULL, '2018-10-18 14:35:14', '2018-10-18 14:35:14', NULL),
(100, 'Srfgvdzsgv', 'Zzdfvz@efdsf.com', '9303484023', NULL, '$2y$10$6rzMkSR2zJ/GJxncqOBmNu.R6GSwyULSLsN0jY.pzOAWCNLx2knJ6', 'm9hCA', NULL, '2018-10-20 07:44:45', '2018-10-20 07:44:45', NULL),
(101, 'Dgvsdvfdg', 'Sdzcvszd@dsf.com', '9303484023', NULL, '$2y$10$FJIFmNO9/djH3z7aJdyX7urXMkNDKAj9bBPA/Zg9XKAuvj1QzMTAW', '5f5dV', NULL, '2018-10-20 08:29:44', '2018-10-20 08:29:44', NULL),
(102, 'Asdasdasd', 'Asd@asd.asd', '9303484023', NULL, '$2y$10$WRbvgg6EiStNeEnFbGCIdexkGO73seDTBYuHbQ17QIqLGr06v69r6', 'NC8oD', NULL, '2018-10-20 08:31:34', '2018-10-20 08:31:34', NULL),
(103, 'Fzdgzsdfg', 'Zfgzdfg@edfg.com', '9303484023', NULL, '$2y$10$KhLABidf1Rd7xhF2TaVRfuK1vEVXMCOKD1xSsNWWZtZlJU2dogFQa', 'yYNuv', NULL, '2018-10-20 08:38:40', '2018-10-20 08:38:40', NULL),
(104, 'Dfsdfgbvsdfg', 'Fdgs@dsfsz.com', '9303484023', NULL, '$2y$10$vl41AC64sltNTUmy9aAflu1pQZ2B2d44ewFJ97OlgKFWY93jGSa7q', 'gV5tb', NULL, '2018-10-20 08:51:20', '2018-10-20 08:51:20', NULL),
(105, 'Ewafdqasdf', 'Asasdfsad@safd.com', '9303484023', NULL, '$2y$10$MscYWi/9rFMNZFycC0fXieoPn.yUdaVN.JzYOEkxS62qE/AdDwkBK', 'V1sA9', NULL, '2018-10-20 09:45:56', '2018-10-20 09:45:56', NULL),
(106, 'Foggyfdg', 'Sdvz@dszfz.com', '9303484023', NULL, '$2y$10$wJMEI3X2DMAgNcGRyVfEq.jvgclvgVnT5phcReXVgmbgxcyF21NfS', '1DOfy', NULL, '2018-10-20 13:06:45', '2018-10-20 13:06:45', NULL),
(107, 'We’re fee', 'Ewrwe@ewf.cw', '9303484023', NULL, '$2y$10$L4JlWF0r6a5DXq0ZRFSUDO4LR65clRxkBhk7RIMymZEsLmu5zOtLS', 'YfJFY', NULL, '2018-10-20 13:08:17', '2018-10-20 13:08:17', NULL),
(108, 'DsfsdAdds', 'Dsfs@dsaf.com', '9303484023', NULL, '$2y$10$ZtJ9CvXXeEnXScX8ltaPf.LQjcVNRbdO4je5a6NOwSfCwbePRX69K', 'Fn9i0', NULL, '2018-10-20 13:11:50', '2018-10-20 13:11:50', NULL),
(109, 'Qweqwew', 'Wqeqwe@wqd.com', '9303484023', NULL, '$2y$10$DmFRWVv/wDOcTzDlKkkgIOJ5xaBTSVYWOkFSy4KHRK.uPo7B347XK', '62epW', NULL, '2018-10-20 13:13:51', '2018-10-20 13:13:51', NULL),
(110, 'Rearward', 'Dasda@wadf.casd', '9303484023', NULL, '$2y$10$KtF3W9.29AD.4UGh43EBT.az2EDVbPUgcjcx489u6Cid96EOC7kZu', 'EvABc', NULL, '2018-10-20 13:16:46', '2018-10-20 13:16:46', NULL),
(111, 'Retenez', 'Wef@efwa.com', '9303484023', NULL, '$2y$10$QvYjDQCpNJS5/zc056YQEu2fLQwkRB5P1ORkvI8/ygHPee7K62k1y', 'Oz1yk', NULL, '2018-10-20 13:17:56', '2018-10-20 13:17:56', NULL),
(112, 'Alialia', 'Aliali@gmail.com', '9303484023', NULL, '$2y$10$cTMrfrdzxdMf.FVjGFtUAOveC2axZsNumdRIoYQIu03PQ1T4lPr4C', 'f2adT', NULL, '2018-10-20 13:41:08', '2018-10-20 13:41:08', NULL),
(113, 'Reasgtszgfsdf', 'Sdfgsd@asdfg.com', '9303484023', NULL, '$2y$10$Leb00gYXxNuJH5x5eWzIvOKTdx4SYawjrDEjPyI0.XTv9q.ZhCeG.', 'oRE8a', NULL, '2018-10-22 08:15:59', '2018-10-22 08:15:59', NULL),
(114, 'Gsmkguffjgvcfg', 'Hggddz@ffg.gggj', '9303484023', NULL, '$2y$10$Hyxro63Lzah90dEJJvL0W.ewQhGrAFjbpvo5dt4GFYVEICQcFRlGy', 'L5T4b', NULL, '2018-10-22 11:09:48', '2018-10-22 11:09:48', NULL),
(115, 'Utahhhjk', 'Hhfhhh@ffggg.fdgh', '9303484023', NULL, '$2y$10$g5rxZjga0CirBUuxWusu2OIdYjbxPuLCQcOggpNU7aMqhxXEV.c3q', 'UoiOR', NULL, '2018-10-22 11:19:04', '2018-10-22 11:19:04', NULL),
(116, 'Je tgghghxvd', 'Gjff@gbc.dhvb', '9303484023', NULL, '$2y$10$Xoyj1pmZozhyQvKZ/YLGGeXkw8/USPgVYoZbrQrkW4CY5pMAwEWdS', '713um', NULL, '2018-10-22 11:22:03', '2018-10-22 11:22:03', NULL),
(117, 'faddeddsgfsgdgafa', 'Dsfsdf@dsf.xczs', '9303484023', NULL, '$2y$10$FM7YorZoIVNjVufJulCEwOfZcln8/BRdLMnggdNgntv1fg1rKuyKK', 'SxQcq', NULL, '2018-10-22 11:51:03', '2018-10-22 11:51:03', NULL),
(118, 'Ali arabvgary', 'Aliarabgary68@gmail.com', '9303484023', NULL, '$2y$10$xUKUxXenJP6dXQ9mcHgPkuHPNdovRI8ZDozA4SMGijEuhMljzb5.G', 'apc8W', NULL, '2018-10-23 09:45:51', '2018-10-23 09:45:51', NULL),
(119, 'Alisha Gary', 'Sadjkbansd@safc.com', '9303484023', NULL, '$2y$10$OhR8l7V/d84G1LsJpRVyaueldoUbUgtCTFvPWRiqIbF9.2qKiUMLa', 'Q2nuw', NULL, '2018-10-23 09:48:01', '2018-10-23 09:48:01', NULL),
(120, 'Ma rouget', 'DcdsC@sdCD.com', '9303484023', NULL, '$2y$10$GqElt7YoMR9bhfai7Z/9GeLk0OSsEXTyGAqnhtK23wcgPTf6h4iZu', 'yiPUN', NULL, '2018-10-23 09:51:34', '2018-10-23 09:51:34', NULL),
(121, 'Ewqtrwaertf', 'Rewqtewra@dsazz.com', '9303484023', NULL, '$2y$10$ODyXK3Yp/PJoJ7nubLu0q.Ti8GUBH.Lu2aaHdaz5wHXCYAm/kiDZG', 'wnE0W', NULL, '2018-10-23 09:54:57', '2018-10-23 09:54:57', NULL),
(122, 'Add add', 'Sdfsdf@xcvsx.com', '9303484023', NULL, '$2y$10$6.TIz33vLi.IIrHgoc0hA.7jRRokW.vN.ukJrq76YEyBSgXgRoSoi', 'zTbXg', NULL, '2018-10-23 09:56:01', '2018-10-23 09:56:01', NULL),
(123, 'Fdsgvzsdf', 'Asdf@daf.com', '9303484023', NULL, '$2y$10$XQxubBPHoJ5YPB5Exyzf8eFs.ezMLqELbjrlRsVVQ18eGvu9ybuSu', 'tifg0', NULL, '2018-10-23 09:58:22', '2018-10-23 09:58:22', NULL),
(124, 'pouya akn', 'pouyaaknnn@gmail.com', '9303484023', NULL, '$2y$10$VjzzNeQ7bi5rxwYEwYyNkeCtyxOAFWgaVSRsomYUSr43hc3rZdMD.', 'yzurP', NULL, '2018-10-23 10:38:45', '2018-10-23 10:38:45', NULL),
(125, 'pouyaaknn', 'pofsdfsd@gmai.sf', '9303484023', NULL, '$2y$10$O/IRRo6APBRKD5H/fDiQ4OSSmd4DkE6/AlMP1UX4RTQYQegDnwxg6', 'RIec3', NULL, '2018-10-23 10:59:02', '2018-10-23 10:59:02', NULL),
(126, 'ArefAWERfs', 'Jhbsadfjn@dsf.cio', '9303484023', NULL, '$2y$10$cztcKpk5GI.VZV.dtH9BSud9tRYn5Ea8oED/PXVtFJtZBXLbkUT.m', 'AdVeG', NULL, '2018-10-23 11:01:36', '2018-10-23 11:01:36', NULL),
(127, 'ali arrraaaab', 'sauduca@dasvc.com', '9303484023', NULL, '$2y$10$.clMVJvw87yNz2ntHN9OK.FJ7nuIQZ6kdIgTFSxN8h.UntM5gMduy', '2ReoU', NULL, '2018-10-23 11:43:19', '2018-10-23 11:43:19', NULL),
(128, 'Ali6868', 'Ali68@gmail.com', '9303484023', NULL, '$2y$10$MA/7HumU0VQqA4CbTaUuxu6cHyE4.FAL3LgozIcqilNBUL1Ee3VmO', 'qYyT1', NULL, '2018-10-23 11:50:57', '2018-10-23 11:50:57', NULL),
(129, 'Aliali68', 'Ali@ali.com', '9303484023', NULL, '$2y$10$0HUgEVPAdUc4uzQgioD4quYKuH4Skl2S0lLES/.OMi.LSkexxYhv.', 'nIJqO', NULL, '2018-10-23 12:01:07', '2018-10-23 12:01:07', NULL),
(130, 'fsdfsdf', 'sfsd@fsf.com', '9303484023', NULL, '$2y$10$44w.GOuAfSZGv/VJwwRFqOhbCg/lG8UY8co1ob2OA.3i2uEfLRkRy', 'qewGt', NULL, '2018-10-23 12:07:24', '2018-10-23 12:07:24', NULL),
(131, 'Alialiali', 'Ali@ali.ali', '9303484023', NULL, '$2y$10$QxfajeEZmjJrBREhf42aFOPLHkAspudwkbGShHf7zX/L4NWc5FgFi', 'UjnHG', NULL, '2018-10-23 12:11:04', '2018-10-23 12:11:04', NULL),
(132, 'mohsenfarjami3', 'mohsenfarjami340@gmail.com', '9303484023', NULL, '$2y$10$89SAtBKt1vET1xbRVVS1t.Jj7/KmkPwzhs495g25r0Tea603ZwaGy', '588387', 'ud7iaD4LrgN4NKyWzdSGQkQP4sOc1TCfC9qBxjvmnd5Oa0QZKOUvLemKIhpP', NULL, '2018-10-24 18:23:27', NULL),
(133, 'Admin68', 'Admin@admin.admin', '9303484023', NULL, '$2y$10$dEGhjvxZmdfqSfH6D2OF/.ZW5o91SVFIRMfvGmIFp/poO9O2x8rLi', 'K7pQI', NULL, '2019-03-15 13:38:46', '2019-03-15 13:38:46', NULL),
(134, 'Aliman68', 'Aaa@aaa.aaa', '9303484023', NULL, '$2y$10$mjR81CwGbzUFdp/myj2rXO7rkwsHSiIbOOdFug7xdz6n9UjLRnWPC', 'XISjd', NULL, '2019-06-01 11:29:09', '2019-06-01 11:29:09', NULL),
(135, 'Alialaia', 'Djdjis@dudj.sush', '9303484023', NULL, '$2y$10$pOpAUUuKzi65yr6IsctAOuvgIvf6UNxg3brE00TqBIhP9cc9qOzYy', '0IXGB', NULL, '2019-09-26 11:58:39', '2019-09-26 11:58:39', NULL),
(136, 'Mahsa badiee', 'Mahsa@yahoo.com', '9303484023', NULL, '$2y$10$od.Exdxyy09RW1Hmwfg8D.MmUBLqds3hVp5fmCstLWI9uxquQkSGS', 'EbXt5', NULL, '2019-10-15 07:37:24', '2019-10-15 07:37:24', NULL),
(137, 'enamad', 'enamad@gmail.com', '9303484023', NULL, '$2y$10$a8rHX8DUSWXWyATld2aT0ugKhaPr3ItxgMX/9T8T2DtF4ph91EnFq', 'XgOw4', NULL, '2019-11-25 13:56:56', '2019-11-25 13:56:56', NULL),
(138, 'ali ahmadi', 'aliahmadi@gmail.com', '09145821995', '4555545665', '$2y$10$Z02UojysqWtwaQ121UWNJ.kw1IVNwJDx14bQqBGs8Izyz4vB0kedG', '4Xlfp', NULL, '2020-02-17 08:21:55', '2020-02-17 09:21:05', NULL),
(139, 'mohsen farjami', 'mohsen343434@gmail.com', '09145821999', '1570381399', '$2y$10$C/UnBKZMSrW2rQXzofddEu6S5ZUxLOKrfOGvU2Vtw0zfFQWdaxyIe', 'KQrxg', NULL, '2020-02-18 12:22:14', '2020-02-19 11:14:39', NULL),
(140, 'ali ahmadi', 'aliahmadi2@gmail.com', '09145821995', '455554566545', '$2y$10$pySjJGMk/d/Y6Xk/0UZ7b.RZ6EQUkDsb0obg.0OBqqwS.w4AWmgHu', 'VmK1a', NULL, '2020-02-19 11:33:20', '2020-02-19 11:33:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_finances`
--

DROP TABLE IF EXISTS `user_finances`;
CREATE TABLE IF NOT EXISTS `user_finances` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `bank_card_number` varchar(255) DEFAULT NULL,
  `bank_account_number` varchar(255) DEFAULT NULL,
  `bank_shba_number` varchar(255) DEFAULT NULL,
  `bank_account_owner_name` varchar(255) DEFAULT NULL,
  `user_balance` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_finances_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_finances`
--

INSERT INTO `user_finances` (`id`, `user_id`, `bank_card_number`, `bank_account_number`, `bank_shba_number`, `bank_account_owner_name`, `user_balance`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 31, '5656gfg', 'vffgf', 'gfgf', 'fgfgf', 120000, '2018-10-09 20:30:00', NULL, NULL),
(2, 3, '6037997263185309', '5554545456', '524145645645454564', 'محسن فرجامی', 24356064, '2018-10-09 20:30:00', '2020-03-03 10:16:24', NULL),
(3, 63, '', '', '', '', 0, '2019-03-09 09:35:42', '2019-03-09 09:35:42', NULL),
(4, 131, '', '', '', '', 0, '2019-03-15 13:28:15', '2019-03-15 13:28:15', NULL),
(5, 133, '', '', '', '', 0, '2019-03-15 13:39:02', '2019-03-15 13:39:02', NULL),
(6, 134, '', '', '', '', 0, '2019-06-01 11:29:31', '2019-06-01 11:29:31', NULL),
(7, 135, '', '', '', '', 0, '2019-09-26 11:59:34', '2019-09-26 11:59:34', NULL),
(8, 136, '', '', '', '', 0, '2019-10-15 07:39:19', '2019-10-15 07:39:19', NULL),
(9, 137, '', '', '', '', 218900, '2019-11-25 13:57:02', '2019-11-25 14:00:15', NULL),
(10, 2, '6037997263185309', '5554545456', '524145645645454564', 'محسن فرجامی', 50000, '2019-03-15 13:28:15', '2020-02-23 12:19:36', NULL),
(11, 139, '', '', '', '', 0, '2020-02-18 12:22:27', '2020-02-18 12:22:27', NULL),
(12, 139, '', '', '', '', 0, '2020-02-18 12:22:27', '2020-02-18 12:22:27', NULL),
(13, 140, '', '', '', '', 0, '2020-02-19 11:49:32', '2020-02-19 11:49:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_invites`
--

DROP TABLE IF EXISTS `user_invites`;
CREATE TABLE IF NOT EXISTS `user_invites` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `inviter_id` int(10) UNSIGNED NOT NULL,
  `invited_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_invites_inviter_id_foreign` (`inviter_id`),
  KEY `user_invites_invited_id_foreign` (`invited_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_invites`
--

INSERT INTO `user_invites` (`id`, `inviter_id`, `invited_id`, `created_at`, `updated_at`) VALUES
(1, 2, 4, NULL, NULL),
(2, 2, 3, NULL, NULL),
(3, 2, 5, NULL, NULL),
(4, 5, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_payments`
--

DROP TABLE IF EXISTS `user_payments`;
CREATE TABLE IF NOT EXISTS `user_payments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `paymentable_id` int(11) NOT NULL,
  `paymentable_type` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `is_success` tinyint(1) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_receipt` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_payments_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_payments`
--

INSERT INTO `user_payments` (`id`, `user_id`, `paymentable_id`, `paymentable_type`, `amount`, `is_success`, `bank_name`, `bank_receipt`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 2, 'App\\UserFinance', 100, 1, 'zarinpal', '50587622926', '2018-10-18 11:49:49', '2018-10-18 11:49:49', NULL),
(2, 3, 2, 'App\\UserFinance', 100, 1, 'zarinpal', '56587687156', '2018-10-18 13:29:31', '2018-10-18 13:29:31', NULL),
(3, 3, 7, 'App\\GameForShop', 100, 1, 'zarinpal', '53587786306', '2018-10-18 15:33:03', '2018-10-18 15:33:03', NULL),
(4, 3, 0, 'App\\UserFinance', 100, 0, 'zarinpal', '', '2018-10-18 19:57:53', '2018-10-18 19:57:53', NULL),
(5, 3, 2, 'App\\UserFinance', 100, 1, 'zarinpal', '45588090247', '2018-10-18 21:35:11', '2018-10-18 21:35:11', NULL),
(6, 3, 0, 'App\\UserFinance', 100, 0, 'zarinpal', '', '2018-10-18 21:44:28', '2018-10-18 21:44:28', NULL),
(7, 3, 2, 'App\\UserFinance', 100, 1, 'zarinpal', '35588101127', '2018-10-18 21:55:24', '2018-10-18 21:55:24', NULL),
(8, 3, 0, 'App\\UserFinance', 100, 0, 'zarinpal', '', '2018-10-19 19:27:47', '2018-10-19 19:27:47', NULL),
(9, 3, 7, 'App\\GameForShop', 100, 1, 'zarinpal', '47589331908', '2018-10-20 13:23:12', '2018-10-20 13:23:12', NULL),
(10, 3, 0, 'App\\GameForShop', 100, 0, 'zarinpal', '', '2018-10-20 13:23:52', '2018-10-20 13:23:52', NULL),
(11, 3, 7, 'App\\GameForShop', 100, 1, 'wallet', '', '2018-10-20 13:36:39', '2018-10-20 13:36:39', NULL),
(12, 3, 8, 'App\\GameForShop', 1000, 1, 'wallet', '', '2018-10-20 13:38:57', '2018-10-20 13:38:57', NULL),
(13, 3, 8, 'App\\GameForShop', 1000, 1, 'wallet', '', '2018-10-20 13:42:46', '2018-10-20 13:42:46', NULL),
(14, 3, 7, 'App\\GameForShop', 100, 1, 'zarinpal', '51589355258', '2018-10-20 13:56:21', '2018-10-20 13:56:21', NULL),
(15, 3, 0, 'App\\GameForShop', 1000, 0, 'zarinpal', '', '2018-10-20 14:03:48', '2018-10-20 14:03:48', NULL),
(16, 3, 10, 'App\\GameForRent', 110, 1, 'zarinpal', '59589362988', '2018-10-20 14:08:25', '2018-10-20 14:08:25', NULL),
(17, 3, 10, 'App\\GameForRent', 115, 1, 'wallet', 're10u3', '2018-10-20 14:28:20', '2018-10-20 14:28:20', NULL),
(18, 3, 10, 'App\\GameForRent', 115, 1, 'wallet', 're10u3', '2018-10-20 14:32:42', '2018-10-20 14:32:42', NULL),
(19, 3, 10, 'App\\GameForRent', 115, 1, 'wallet', 're10u3', '2018-10-20 14:32:59', '2018-10-20 14:32:59', NULL),
(20, 3, 0, 'App\\UserFinance', 100, 0, 'zarinpal', '', '2018-10-25 12:39:13', '2018-10-25 12:39:13', NULL),
(21, 3, 10, 'App\\GameForRent', 110, 1, 'wallet', 'rent10u3', '2019-01-29 10:04:19', '2019-01-29 10:04:19', NULL),
(22, 3, 10, 'App\\GameForRent', 110, 1, 'wallet', 'rent10u3', '2019-01-29 10:05:02', '2019-01-29 10:05:02', NULL),
(23, 3, 0, 'App\\UserFinance', 100, 0, 'zarinpal', '', '2019-01-29 12:13:07', '2019-01-29 12:13:07', NULL),
(24, 3, 0, 'App\\UserFinance', 100, 0, 'zarinpal', '', '2019-01-29 12:28:59', '2019-01-29 12:28:59', NULL),
(25, 3, 10, 'App\\GameForRent', 110, 1, 'zarinpal', '55685774549', '2019-01-29 12:31:23', '2019-01-29 12:31:23', NULL),
(26, 3, 0, 'App\\UserFinance', 100, 0, 'zarinpal', '', '2019-02-03 11:21:36', '2019-02-03 11:21:36', NULL),
(27, 3, 0, 'App\\UserFinance', 100, 0, 'zarinpal', '', '2019-02-03 11:21:55', '2019-02-03 11:21:55', NULL),
(28, 3, 6, 'App\\GameForRent', 149600, 1, 'wallet', 'rent6u3', '2019-02-03 12:21:44', '2019-02-03 12:21:44', NULL),
(29, 3, 12, 'App\\GameForRent', 110000, 1, 'wallet', 'rent12u3', '2019-02-03 15:51:39', '2019-02-03 15:51:39', NULL),
(30, 3, 11, 'App\\GameForRent', 117450, 1, 'wallet', 'rent11u3', '2019-02-03 15:53:55', '2019-02-03 15:53:55', NULL),
(31, 3, 1, 'App\\GameForShop', 60000, 1, 'wallet', 'shop1u3', '2019-02-03 15:55:45', '2019-02-03 15:55:45', NULL),
(32, 3, 0, 'App\\UserFinance', 1000000, 0, 'zarinpal', '', '2019-02-05 08:49:42', '2019-02-05 08:49:42', NULL),
(33, 3, 10, 'App\\GameForRent', 110, 1, 'wallet', 'rent10u3', '2019-02-05 08:50:25', '2019-02-05 08:50:25', NULL),
(34, 3, 10, 'App\\GameForRent', 135, 1, 'wallet', 'rent10u3', '2019-02-05 08:51:41', '2019-02-05 08:51:41', NULL),
(35, 3, 0, 'App\\GameForShop', 60000, 0, 'zarinpal', '', '2019-02-05 10:01:26', '2019-02-05 10:01:26', NULL),
(36, 3, 9, 'App\\GameForRent', 737100, 1, 'wallet', 'rent9u3', '2019-02-05 11:12:56', '2019-02-05 11:12:56', NULL),
(37, 3, 0, 'App\\UserFinance', 1000, 0, 'zarinpal', '', '2019-02-14 09:03:46', '2019-02-14 09:03:46', NULL),
(38, 3, 3, 'App\\GameForShop', 60000, 1, 'wallet', 'shop3u3', '2019-02-14 10:34:00', '2019-02-14 10:34:00', NULL),
(39, 3, 4, 'App\\GameForShop', 60000, 1, 'wallet', 'shop4u3', '2019-02-16 09:29:39', '2019-02-16 09:29:39', NULL),
(40, 3, 10, 'App\\GameForRent', 135, 1, 'wallet', 'rent10u3', '2019-02-16 12:00:20', '2019-02-16 12:00:20', NULL),
(41, 3, 5, 'App\\GameForRent', 621000, 1, 'wallet', 'rent5u3', '2019-02-16 12:19:52', '2019-02-16 12:19:52', NULL),
(42, 3, 3, 'App\\GameForRent', 615600, 1, 'wallet', 'rent3u3', '2019-02-16 17:44:26', '2019-02-16 17:44:26', NULL),
(43, 3, 0, 'App\\UserFinance', 1000, 0, 'zarinpal', '', '2019-02-16 17:45:22', '2019-02-16 17:45:22', NULL),
(44, 3, 8, 'App\\GameForShop', 1000, 1, 'wallet', 'shop8u3', '2019-02-16 17:50:44', '2019-02-16 17:50:44', NULL),
(45, 3, 8, 'App\\GameForShop', 1000, 1, 'wallet', 'shop8u3', '2019-02-16 17:58:14', '2019-02-16 17:58:14', NULL),
(46, 3, 7, 'App\\GameForShop', 100, 1, 'wallet', 'shop7u3', '2019-02-16 18:03:10', '2019-02-16 18:03:10', NULL),
(47, 3, 8, 'App\\GameForShop', 1000, 1, 'wallet', 'shop8u3', '2019-02-16 18:12:34', '2019-02-16 18:12:34', NULL),
(48, 3, 8, 'App\\GameForShop', 1000, 1, 'wallet', 'shop8u3', '2019-02-17 18:31:46', '2019-02-17 18:31:46', NULL),
(49, 3, 5, 'App\\GameForShop', 60000, 1, 'wallet', 'shop5u3', '2019-02-18 19:21:29', '2019-02-18 19:21:29', NULL),
(50, 3, 13, 'App\\GameForRent', 55000, 1, 'wallet', 'rent13u3', '2019-02-19 14:44:31', '2019-02-19 14:44:31', NULL),
(51, 3, 0, 'App\\GameForRent', 786600, 0, 'zarinpal', '', '2019-03-08 11:57:10', '2019-03-08 11:57:10', NULL),
(52, 3, 0, 'App\\GameForRent', 786600, 0, 'zarinpal', '', '2019-03-08 12:01:23', '2019-03-08 12:01:23', NULL),
(53, 3, 14, 'App\\GameForRent', 602800, 1, 'wallet', 'rent14u3', '2019-03-12 09:42:25', '2019-03-12 09:42:25', NULL),
(54, 3, 0, 'App\\UserFinance', 1500, 0, 'zarinpal', '', '2019-10-24 22:22:59', '2019-10-24 22:22:59', NULL),
(55, 3, 0, 'App\\UserFinance', 1500, 0, 'zarinpal', '', '2019-10-24 22:23:16', '2019-10-24 22:23:16', NULL),
(56, 137, 1, 'App\\GameForShop', 60000, 1, 'wallet', 'shop1u137', '2019-11-25 13:59:23', '2019-11-25 13:59:23', NULL),
(57, 137, 1, 'App\\GameForRent', 159500, 1, 'wallet', 'rent1u137', '2019-11-25 13:59:43', '2019-11-25 13:59:43', NULL),
(58, 137, 3, 'App\\GameForRent', 501600, 1, 'wallet', 'rent3u137', '2019-11-25 14:00:00', '2019-11-25 14:00:00', NULL),
(59, 137, 5, 'App\\GameForShop', 60000, 1, 'wallet', 'shop5u137', '2019-11-25 14:00:15', '2019-11-25 14:00:15', NULL),
(60, 2, 24, 'App\\GameForRentRequest', 110, 1, 'zarinpal', '441029775311', '2020-03-01 10:14:00', '2020-03-01 10:14:00', NULL),
(61, 3, 1, 'App\\GameForRentRequestExtend', 18, 1, 'wallet', 'rent_ex10u3', '2020-03-02 08:32:02', '2020-03-02 08:32:02', NULL),
(62, 3, 2, 'App\\GameForRentRequestExtend', 18, 1, 'wallet', 'rent_ex10u3', '2020-03-02 08:34:04', '2020-03-02 08:34:04', NULL),
(63, 3, 3, 'App\\GameForRentRequestExtend', 10, 1, 'wallet', 'rent_ex10u3', '2020-03-02 08:42:26', '2020-03-02 08:42:26', NULL),
(64, 3, 4, 'App\\GameForRentRequestExtend', 10, 1, 'wallet', 'rent_ex10u3', '2020-03-03 09:22:44', '2020-03-03 09:22:44', NULL),
(65, 3, 5, 'App\\GameForRentRequestExtend', 41000, 1, 'wallet', 'rent_ex12u3', '2020-03-03 10:16:24', '2020-03-03 10:16:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_rates`
--

DROP TABLE IF EXISTS `user_rates`;
CREATE TABLE IF NOT EXISTS `user_rates` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `voter_user_id` int(10) UNSIGNED NOT NULL,
  `rateable_id` int(11) NOT NULL,
  `rateable_type` varchar(255) NOT NULL,
  `amount` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_rates_user_id_foreign` (`user_id`),
  KEY `user_rates_voter_user_id_foreign` (`voter_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_rates`
--

INSERT INTO `user_rates` (`id`, `user_id`, `voter_user_id`, `rateable_id`, `rateable_type`, `amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 31, 1, 1, 'App\\GameForRent', 5, '2018-09-16 19:30:00', '2018-09-16 19:30:00', NULL),
(2, 31, 1, 1, 'App\\GameForRent', 4, '2018-09-16 19:30:00', '2018-09-16 19:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `verification_codes`
--

DROP TABLE IF EXISTS `verification_codes`;
CREATE TABLE IF NOT EXISTS `verification_codes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mobile` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `token` varchar(700) DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `expired_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `videoable_id` int(11) NOT NULL,
  `videoable_type` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `videoable_id`, `videoable_type`, `path`, `url`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'App\\GameInfo', 'uploads/videos/1.mp4', 'http://cdn1.gameflycdn.com/merch/Design/video/480p/5011525.mp4', '', '2018-09-11 19:30:00', NULL, NULL),
(2, 2, 'App\\GameInfo', 'uploads/videos/1.mp4', 'http://cdn1.gameflycdn.com/merch/Design/video/480p/5011525.mp4', '', '2018-09-11 19:30:00', NULL, NULL),
(3, 3, 'App\\GameInfo', 'uploads/videos/1.mp4', 'http://cdn1.gameflycdn.com/merch/Design/video/480p/5011525.mp4', '', '2018-09-11 19:30:00', NULL, NULL),
(4, 4, 'App\\GameInfo', 'uploads/videos/1.mp4', 'http://cdn1.gameflycdn.com/merch/Design/video/480p/5011525.mp4', '', '2018-09-11 19:30:00', NULL, NULL),
(5, 5, 'App\\GameInfo', 'uploads/videos/1.mp4', 'http://cdn1.gameflycdn.com/merch/Design/video/480p/5011525.mp4', '', '2018-09-11 19:30:00', NULL, NULL),
(6, 6, 'App\\GameInfo', 'uploads/videos/1.mp4', 'http://cdn1.gameflycdn.com/merch/Design/video/480p/5011525.mp4', '', '2018-09-11 19:30:00', NULL, NULL),
(7, 7, 'App\\GameInfo', 'uploads/videos/1.mp4', 'http://cdn1.gameflycdn.com/merch/Design/video/480p/5011525.mp4', '', '2018-09-11 19:30:00', NULL, NULL),
(8, 8, 'App\\GameInfo', 'uploads/videos/1.mp4', 'http://cdn1.gameflycdn.com/merch/Design/video/480p/5011525.mp4', '', '2018-09-11 19:30:00', NULL, NULL),
(9, 9, 'App\\GameInfo', 'uploads/videos/1.mp4', 'http://cdn1.gameflycdn.com/merch/Design/video/480p/5011525.mp4', '', '2018-09-11 19:30:00', NULL, NULL),
(10, 10, 'App\\GameInfo', 'uploads/videos/1.mp4', 'http://cdn1.gameflycdn.com/merch/Design/video/480p/5011525.mp4', '', '2018-09-11 19:30:00', NULL, NULL),
(11, 11, 'App\\GameInfo', 'uploads/videos/1.mp4', 'http://cdn1.gameflycdn.com/merch/Design/video/480p/5011525.mp4', '', '2018-09-11 19:30:00', NULL, NULL),
(12, 12, 'App\\GameInfo', 'uploads/videos/1.mp4', 'http://cdn1.gameflycdn.com/merch/Design/video/480p/5011525.mp4', '', '2018-09-11 19:30:00', NULL, NULL),
(13, 13, 'App\\GameInfo', 'uploads/videos/1.mp4', 'http://cdn1.gameflycdn.com/merch/Design/video/480p/5011525.mp4', 'app', '2018-09-11 19:30:00', '2020-02-18 20:30:00', NULL),
(14, 13, 'App\\GameInfo', 'uploads/videos/1.mp4', 'http://cdn1.gameflycdn.com/merch/Design/video/480p/5011525.mp4', 'site', '2018-09-11 19:30:00', '2020-02-18 20:30:00', '2020-02-18 20:30:00'),
(15, 18, 'AppGameInfo', 'uploads/videos/2018/10/19d08h06m85uI4YkzRxTBd.mp4', 'http://cdn1.gameflycdn.com/merch/Design/video/480p/5011525.mp4', '0', '2018-10-19 16:36:16', '2018-10-19 16:36:16', NULL),
(16, 18, 'AppGameInfo', 'uploads/videos/2018/10/19d08h08m85ufzCgrkPE8s.mp4', 'http://cdn1.gameflycdn.com/merch/Design/video/480p/5011525.mp4', '0', '2018-10-19 16:38:45', '2018-10-19 16:38:45', NULL),
(17, 26, 'App\\GameInfo', 'uploads/videos/2019/12/111.mp4', 'http://localhost:8080/izibazi/uploads/videos/2019/12/111.mp4', '', '2019-12-23 10:31:46', '2019-12-23 10:31:46', NULL),
(18, 27, 'App\\GameInfo', 'uploads/videos/2019/12/361.mp4', 'http://localhost:8080/izibazi/uploads/videos/2019/12/361.mp4', '', '2019-12-23 10:44:48', '2019-12-23 10:44:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zarinpal_pay_requests`
--

DROP TABLE IF EXISTS `zarinpal_pay_requests`;
CREATE TABLE IF NOT EXISTS `zarinpal_pay_requests` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `authority` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `data` varchar(600) DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `is_success` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zarinpal_pay_requests`
--

INSERT INTO `zarinpal_pay_requests` (`id`, `user_id`, `authority`, `type`, `amount`, `data`, `is_verified`, `is_success`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, '000000000000000000000000000101991767', NULL, NULL, NULL, 0, 0, '2019-01-29 12:03:11', '2019-01-29 12:03:14', NULL),
(2, 0, '000000000000000000000000000101992905', NULL, NULL, NULL, 0, 0, '2019-01-29 12:11:34', '2019-01-29 12:11:35', NULL),
(3, 0, '000000000000000000000000000101992914', NULL, NULL, NULL, 0, 0, '2019-01-29 12:11:37', '2019-01-29 12:11:38', NULL),
(4, 0, '000000000000000000000000000101993072', NULL, NULL, NULL, 0, 0, '2019-01-29 12:12:55', '2019-01-29 12:12:56', NULL),
(5, 0, '000000000000000000000000000101993146', NULL, NULL, NULL, 0, 0, '2019-01-29 12:13:43', '2019-01-29 12:13:43', NULL),
(6, 0, '000000000000000000000000000101993169', NULL, NULL, NULL, 0, 0, '2019-01-29 12:13:56', '2019-01-29 12:13:56', NULL),
(7, 0, '000000000000000000000000000101995093', NULL, NULL, NULL, 0, 0, '2019-01-29 12:30:06', '2019-01-29 12:30:07', NULL),
(8, 0, '000000000000000000000000000101995793', NULL, NULL, NULL, 0, 0, '2019-01-29 12:34:38', '2019-01-29 12:34:40', NULL),
(9, 0, '000000000000000000000000000101996079', NULL, NULL, NULL, 0, 0, '2019-01-29 12:36:58', '2019-01-29 12:36:58', NULL),
(10, 0, '000000000000000000000000000101996115', NULL, NULL, NULL, 0, 0, '2019-01-29 12:37:11', '2019-01-29 12:37:11', NULL),
(11, 0, '', NULL, NULL, NULL, 0, 0, '2019-02-03 11:14:53', '2019-02-03 11:14:53', NULL),
(12, 0, '', NULL, NULL, NULL, 0, 0, '2019-02-03 11:15:05', '2019-02-03 11:15:05', NULL),
(13, 0, '000000000000000000000000000102561026', NULL, NULL, NULL, 0, 0, '2019-02-03 11:20:33', '2019-02-03 11:20:49', NULL),
(14, 0, '000000000000000000000000000102561064', NULL, NULL, NULL, 0, 0, '2019-02-03 11:21:10', '2019-02-03 11:21:11', NULL),
(15, 0, '000000000000000000000000000102859088', NULL, NULL, NULL, 0, 0, '2019-02-05 08:49:08', '2019-02-05 08:49:10', NULL),
(16, 0, '000000000000000000000000000102862700', NULL, NULL, NULL, 0, 0, '2019-02-05 09:17:37', '2019-02-05 09:17:38', NULL),
(17, 0, '000000000000000000000000000102863300', NULL, NULL, NULL, 0, 0, '2019-02-05 09:21:48', '2019-02-05 09:21:50', NULL),
(18, 0, '000000000000000000000000000102863919', NULL, NULL, NULL, 0, 0, '2019-02-05 09:26:07', '2019-02-05 09:26:08', NULL),
(19, 0, '000000000000000000000000000102865702', NULL, NULL, NULL, 0, 0, '2019-02-05 09:40:16', '2019-02-05 09:40:17', NULL),
(20, 0, '000000000000000000000000000102866297', NULL, NULL, NULL, 0, 0, '2019-02-05 09:44:49', '2019-02-05 09:44:50', NULL),
(21, 0, '000000000000000000000000000102867128', NULL, NULL, NULL, 0, 0, '2019-02-05 09:51:12', '2019-02-05 09:51:13', NULL),
(22, 0, '000000000000000000000000000102867583', NULL, NULL, NULL, 0, 0, '2019-02-05 09:54:44', '2019-02-05 09:54:46', NULL),
(23, 0, '000000000000000000000000000102868501', NULL, NULL, NULL, 0, 0, '2019-02-05 10:01:14', '2019-02-05 10:01:16', NULL),
(24, 0, '000000000000000000000000000104181930', NULL, NULL, NULL, 0, 0, '2019-02-14 09:03:28', '2019-02-14 09:03:36', NULL),
(25, 0, '000000000000000000000000000104478167', NULL, NULL, NULL, 0, 0, '2019-02-16 12:19:38', '2019-02-16 12:19:51', NULL),
(26, 0, '000000000000000000000000000104478216', NULL, NULL, NULL, 0, 0, '2019-02-16 12:19:49', '2019-02-16 12:20:15', NULL),
(27, 0, '000000000000000000000000000104527173', NULL, NULL, NULL, 0, 0, '2019-02-16 17:45:03', '2019-02-16 17:45:03', NULL),
(28, 0, '000000000000000000000000000104685989', NULL, NULL, NULL, 0, 0, '2019-02-17 18:33:44', '2019-02-17 18:33:45', NULL),
(29, 0, '000000000000000000000000000104686007', NULL, NULL, NULL, 0, 0, '2019-02-17 18:33:49', '2019-02-17 18:33:49', NULL),
(30, 0, '000000000000000000000000000107495772', NULL, NULL, NULL, 0, 0, '2019-03-08 10:56:03', '2019-03-08 10:56:04', NULL),
(31, 0, '000000000000000000000000000107504214', NULL, NULL, NULL, 0, 0, '2019-03-08 11:56:59', '2019-03-08 11:56:59', NULL),
(32, 0, '000000000000000000000000000107508763', NULL, NULL, NULL, 0, 0, '2019-03-08 12:32:25', '2019-03-08 12:32:26', NULL),
(33, 0, '000000000000000000000000000136109493', NULL, NULL, NULL, 0, 0, '2019-10-24 22:22:33', '2019-10-24 22:22:37', NULL),
(34, 0, '000000000000000000000000000149587138', NULL, NULL, NULL, 0, 0, '2020-02-23 10:04:44', '2020-02-23 10:04:57', NULL),
(35, 2, '', 'rent', 159500, '{\"game_id\":1,\"game_price\":145000,\"sum_price\":159500,\"rent_type_id\":1,\"rent_price\":14500,\"address_id\":\"1\"}', 0, 0, '2020-03-01 10:08:41', '2020-03-01 10:08:41', NULL),
(36, 2, '000000000000000000000000000150322953', 'rent', 159500, '{\"game_id\":1,\"game_price\":145000,\"sum_price\":159500,\"rent_type_id\":1,\"rent_price\":14500,\"address_id\":\"1\"}', 0, 0, '2020-03-01 10:09:36', '2020-03-01 10:09:50', NULL),
(37, 2, '000000000000000000000000000150323027', 'rent', 110, '{\"game_id\":10,\"game_price\":100,\"sum_price\":110,\"rent_type_id\":1,\"rent_price\":10,\"address_id\":\"1\"}', 1, 1, '2020-03-01 10:10:36', '2020-03-01 10:14:00', NULL),
(38, 3, '', 'extend_rent', 10, '{\"game_for_rent_request_id\":8,\"extend_cost\":10,\"rent_type_id\":1,\"penalty_cost\":0}', 0, 0, '2020-03-03 09:30:28', '2020-03-03 09:30:28', NULL),
(39, 3, '', 'extend_rent', 10, '{\"game_for_rent_request_id\":8,\"extend_cost\":10,\"rent_type_id\":1,\"penalty_cost\":0}', 0, 0, '2020-03-03 09:30:53', '2020-03-03 09:30:53', NULL),
(40, 3, '', 'extend_rent', 10, '{\"game_for_rent_request_id\":8,\"extend_cost\":10,\"rent_type_id\":1,\"penalty_cost\":0}', 0, 0, '2020-03-03 09:33:17', '2020-03-03 09:33:17', NULL),
(41, 3, '', 'extend_rent', 10, '{\"game_for_rent_request_id\":8,\"extend_cost\":10,\"rent_type_id\":1,\"penalty_cost\":0}', 0, 0, '2020-03-03 09:33:52', '2020-03-03 09:33:52', NULL),
(42, 3, '', 'extend_rent', 35, '{\"game_for_rent_request_id\":8,\"extend_cost\":35,\"rent_type_id\":4,\"penalty_cost\":0}', 0, 0, '2020-03-03 09:37:16', '2020-03-03 09:37:16', NULL),
(43, 3, '', 'extend_rent', 41000, '{\"game_for_rent_request_id\":12,\"extend_cost\":41000,\"rent_type_id\":4,\"penalty_cost\":6000}', 0, 0, '2020-03-03 09:37:35', '2020-03-03 09:37:35', NULL),
(44, 3, '000000000000000000000000000150558076', 'extend_rent', 41000, '{\"game_for_rent_request_id\":12,\"extend_cost\":41000,\"rent_type_id\":4,\"penalty_cost\":6000}', 0, 0, '2020-03-03 09:37:44', '2020-03-03 09:37:45', NULL),
(45, 3, '000000000000000000000000000150561858', 'extend_rent', 41000, '{\"game_for_rent_request_id\":12,\"extend_cost\":41000,\"rent_type_id\":4,\"penalty_cost\":6000}', 0, 0, '2020-03-03 10:13:21', '2020-03-03 10:13:33', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `addresses_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `game_for_rents`
--
ALTER TABLE `game_for_rents`
  ADD CONSTRAINT `game_for_rents_game_info_id_foreign` FOREIGN KEY (`game_info_id`) REFERENCES `game_infos` (`id`),
  ADD CONSTRAINT `game_for_rents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `game_for_rent_requests`
--
ALTER TABLE `game_for_rent_requests`
  ADD CONSTRAINT `game_for_rent_requests_game_for_rent_id_foreign` FOREIGN KEY (`game_for_rent_id`) REFERENCES `game_for_rents` (`id`),
  ADD CONSTRAINT `game_for_rent_requests_rent_type_id_foreign` FOREIGN KEY (`rent_type_id`) REFERENCES `rent_types` (`id`),
  ADD CONSTRAINT `game_for_rent_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `game_for_shops`
--
ALTER TABLE `game_for_shops`
  ADD CONSTRAINT `game_for_shops_game_info_id_foreign` FOREIGN KEY (`game_info_id`) REFERENCES `game_infos` (`id`),
  ADD CONSTRAINT `game_for_shops_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `game_for_shop_requests`
--
ALTER TABLE `game_for_shop_requests`
  ADD CONSTRAINT `game_for_shop_requests_game_for_shop_id_foreign` FOREIGN KEY (`game_for_shop_id`) REFERENCES `game_for_shops` (`id`),
  ADD CONSTRAINT `game_for_shop_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `genre_game`
--
ALTER TABLE `genre_game`
  ADD CONSTRAINT `genre_game_game_info_id_foreign` FOREIGN KEY (`game_info_id`) REFERENCES `game_infos` (`id`),
  ADD CONSTRAINT `genre_game_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `site_payments`
--
ALTER TABLE `site_payments`
  ADD CONSTRAINT `site_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_finances`
--
ALTER TABLE `user_finances`
  ADD CONSTRAINT `user_finances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_invites`
--
ALTER TABLE `user_invites`
  ADD CONSTRAINT `user_invites_invited_id_foreign` FOREIGN KEY (`invited_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_invites_inviter_id_foreign` FOREIGN KEY (`inviter_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_payments`
--
ALTER TABLE `user_payments`
  ADD CONSTRAINT `user_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_rates`
--
ALTER TABLE `user_rates`
  ADD CONSTRAINT `user_rates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_rates_voter_user_id_foreign` FOREIGN KEY (`voter_user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
