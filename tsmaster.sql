-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 11 2020 г., 19:23
-- Версия сервера: 5.7.25
-- Версия PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tsmaster`
--

-- --------------------------------------------------------

--
-- Структура таблицы `brand2device`
--

CREATE TABLE `brand2device` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `tech_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `defect2device`
--

CREATE TABLE `defect2device` (
  `id` int(11) NOT NULL,
  `device_id` int(11) NOT NULL,
  `defect_id` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `defect2device`
--

INSERT INTO `defect2device` (`id`, `device_id`, `defect_id`, `price`) VALUES
(1, 1, 1, '230'),
(2, 1, 2, '230'),
(3, 1, 3, '210'),
(4, 1, 4, '200'),
(5, 1, 5, '310'),
(6, 1, 6, '250'),
(7, 1, 7, '280'),
(8, 1, 8, '330'),
(9, 1, 9, '190'),
(10, 2, 9, '230'),
(11, 2, 30, '190'),
(12, 2, 31, '200'),
(13, 2, 32, '310'),
(14, 2, 33, '450'),
(15, 2, 34, '290'),
(16, 2, 7, '250'),
(17, 2, 3, '190'),
(18, 2, 35, '210'),
(19, 2, 1, '370'),
(20, 3, 36, '150'),
(21, 3, 37, '250'),
(22, 3, 1, '500'),
(23, 3, 38, '450'),
(24, 3, 39, '600'),
(25, 3, 40, '230'),
(26, 3, 41, '400'),
(27, 3, 42, '350'),
(28, 3, 43, '270'),
(29, 3, 30, '310'),
(30, 3, 44, '550'),
(31, 3, 45, '450'),
(32, 5, 46, '500'),
(33, 5, 47, '500'),
(34, 5, 48, '650'),
(35, 5, 49, '450'),
(36, 5, 50, '450'),
(37, 5, 51, '550'),
(38, 5, 52, '300'),
(39, 5, 53, '250'),
(40, 5, 54, '700'),
(41, 4, 70, '600'),
(42, 4, 50, '450'),
(43, 4, 71, '400'),
(44, 4, 48, '650'),
(45, 4, 69, '300'),
(46, 4, 72, '650'),
(47, 4, 74, '700');

-- --------------------------------------------------------

--
-- Структура таблицы `defect2group`
--

CREATE TABLE `defect2group` (
  `id` int(11) NOT NULL,
  `defect_group_id` int(11) NOT NULL,
  `defect_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `defects`
--

CREATE TABLE `defects` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `defects`
--

INSERT INTO `defects` (`id`, `title`, `link`) VALUES
(1, 'Не включается', '/ne_vklyuchayetsya'),
(2, 'Не вращает барабан', '/ne_vrashchayet_baraban'),
(3, 'Не набирает воду', '/ne_nabiraet_vodu'),
(4, 'Не начинает стирку', '/ne_nachinaet_stirku'),
(5, 'Не отжимает', '/ne_otjimaet'),
(6, 'Не открывается люк', '/ne_otkryvayetsya_lyuk'),
(7, 'Не сливает воду', '/ne_slivaet_vodu'),
(8, 'Течёт', '/techet'),
(9, 'Шумит и вибрирует', '/shumit_i_vibriruet'),
(30, 'Протекает', '/protekaet'),
(31, 'Плохо моет', '/ploho_moet'),
(32, 'Отключается', '/otcliuchaetsia'),
(33, 'Непрерывно заливается вода', '/neprerivno_zalivaetsia_voda'),
(34, 'Не сушит', '/ne_sushit'),
(35, 'Не греет воду', '/ne_greet_vodu'),
(36, 'Бьёт током', '/byot_tokom'),
(37, 'Включается и сразу выключается', '/vcliuchaetsia_i_vycliuchaetsia'),
(38, 'Не морозит', '/ne_morozit'),
(39, 'Не морозит верхняя камера', '/ne_morozit_verkhniaia_kamera'),
(40, 'Не работает', '/ne_rabotaet'),
(41, 'Не работает морозилка', '/ne_rabotaet_morozilka'),
(42, 'Перемораживает', '/peremorazhivaet'),
(43, 'Покрывается льдом', '/pokryvaetsia_ldom'),
(44, 'Работает только морозилка', '/rabotaet_tol`ko_morozilka'),
(45, 'Шумит', '/shumit'),
(46, 'Комфорка плохо греет', '/komforka_ploho_greet'),
(47, 'Не работает комфорка', '/ne_rabotaet_komforka'),
(48, 'Не работает модуль управления', '/ne_rabotaet_modul_upravleniya'),
(49, 'Не работает сенсор', '/ne_rabotaet_sensor'),
(50, 'Не работает таймер', '/ne_rabotaet_taimer'),
(51, 'Плита бьёт током', '/plita_byot_tokom'),
(52, 'Плита выдаёт ошибку', '/plita_vydayot_oshibku'),
(53, 'Сломался переключатель', '/slomalsia_perecliuchatel'),
(54, 'Треснула поверхность', '/tresnula_poverkhnost'),
(69, 'Духовка выдаёт ошибку', '/duhovka_vidayot_oshibku'),
(70, 'Духовка не греет', '/duhovka_ne_greet'),
(71, 'Духовой шкаф не закрывается', '/duhovoi_shkaf_ne_zakryvaetsia'),
(72, 'Не горит лампочка в духовке', '/ne_gorit_lampochka_v_duhovke'),
(74, 'Треснуло стекло духового шкафа', '/tresnulo_steclo_duhovogo_shkafa');

-- --------------------------------------------------------

--
-- Структура таблицы `defect_groups`
--

CREATE TABLE `defect_groups` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `devices`
--

INSERT INTO `devices` (`id`, `title`) VALUES
(1, 'стиральная машина'),
(2, 'посудомоечная машина'),
(3, 'холодильник'),
(4, 'духовой шкаф'),
(5, 'варочная панель');

-- --------------------------------------------------------

--
-- Структура таблицы `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` int(3) NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `requests`
--

CREATE TABLE `requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `defect` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `work2defect2device`
--

CREATE TABLE `work2defect2device` (
  `id` int(11) NOT NULL,
  `device_id` int(11) NOT NULL,
  `defect_id` int(11) NOT NULL,
  `defect_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_id` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `work2defect2device`
--

INSERT INTO `work2defect2device` (`id`, `device_id`, `defect_id`, `defect_link`, `work_id`, `price`) VALUES
(1, 1, 4, '/ne_nachinaet_stirku', 1, '270'),
(2, 1, 4, '/ne_nachinaet_stirku', 2, '350'),
(3, 1, 4, '/ne_nachinaet_stirku', 233, '190'),
(4, 1, 7, '/ne_slivaet_vodu', 4, '210'),
(5, 1, 7, '/ne_slivaet_vodu', 5, '150'),
(6, 1, 7, '/ne_slivaet_vodu', 6, '250'),
(7, 1, 7, '/ne_slivaet_vodu', 7, '210'),
(8, 1, 3, '/ne_nabiraet_vodu', 234, '250'),
(9, 1, 3, '/ne_nabiraet_vodu', 235, '270'),
(10, 1, 3, '/ne_nabiraet_vodu', 6, '250'),
(11, 1, 3, '/ne_nabiraet_vodu', 236, '190'),
(12, 1, 2, '/ne_vrashchayet_baraban', 2, '350'),
(13, 1, 2, '/ne_vrashchayet_baraban', 237, '250'),
(14, 1, 2, '/ne_vrashchayet_baraban', 238, '250'),
(15, 1, 2, '/ne_vrashchayet_baraban', 239, '210'),
(16, 1, 5, '/ne_otjimaet', 234, '250'),
(17, 1, 5, '/ne_otjimaet', 240, '250'),
(18, 1, 5, '/ne_otjimaet', 241, '290'),
(19, 1, 5, '/ne_otjimaet', 242, '210'),
(20, 1, 9, '/shumit_i_vibriruet', 243, '350'),
(21, 1, 9, '/shumit_i_vibriruet', 244, '1390'),
(22, 1, 9, '/shumit_i_vibriruet', 238, '250'),
(23, 1, 9, '/shumit_i_vibriruet', 245, '190'),
(24, 1, 1, '/ne_vklyuchayetsya', 246, '210'),
(25, 1, 1, '/ne_vklyuchayetsya', 2, '350'),
(26, 1, 1, '/ne_vklyuchayetsya', 241, '290'),
(27, 1, 1, '/ne_vklyuchayetsya', 247, '250'),
(28, 1, 1, '/ne_vklyuchayetsya', 248, '350'),
(29, 1, 8, '/techet', 249, '190'),
(30, 1, 8, '/techet', 6, '250'),
(31, 1, 8, '/techet', 250, '270'),
(32, 1, 8, '/techet', 251, '450'),
(33, 1, 8, '/techet', 252, '100'),
(34, 1, 6, '/ne_otkryvayetsya_lyuk', 247, '250'),
(35, 1, 6, '/ne_otkryvayetsya_lyuk', 253, '350'),
(36, 1, 6, '/ne_otkryvayetsya_lyuk', 241, '290'),
(37, 1, 6, '/ne_otkryvayetsya_lyuk', 254, '180'),
(38, 2, 35, '/ne_greet_vodu', 1, '400'),
(39, 2, 35, '/ne_greet_vodu', 2, '550'),
(40, 2, 35, '/ne_greet_vodu', 255, '250'),
(41, 2, 3, '/ne_nabiraet_vodu', 256, '190'),
(42, 2, 3, '/ne_nabiraet_vodu', 6, '450'),
(43, 2, 3, '/ne_nabiraet_vodu', 257, '200'),
(44, 2, 3, '/ne_nabiraet_vodu', 258, '290'),
(45, 2, 3, '/ne_nabiraet_vodu', 259, '190'),
(46, 2, 7, '/ne_slivaet_vodu', 260, '450'),
(47, 2, 7, '/ne_slivaet_vodu', 261, '650'),
(48, 2, 7, '/ne_slivaet_vodu', 262, '420'),
(49, 2, 7, '/ne_slivaet_vodu', 242, '190'),
(50, 2, 9, '/shumit_i_vibriruet', 263, '450'),
(51, 2, 9, '/shumit_i_vibriruet', 1, '400'),
(52, 2, 9, '/shumit_i_vibriruet', 264, '260'),
(53, 2, 32, '/otcliuchaetsia', 265, '450'),
(54, 2, 32, '/otcliuchaetsia', 266, '650'),
(55, 2, 32, '/otcliuchaetsia', 267, '380'),
(56, 2, 30, '/protekaet', 256, '190'),
(57, 2, 30, '/protekaet', 268, '450'),
(58, 2, 30, '/protekaet', 6, '450'),
(59, 2, 30, '/protekaet', 269, '320'),
(60, 2, 33, '/neprerivno_zalivaetsia_voda', 234, '500'),
(61, 2, 33, '/neprerivno_zalivaetsia_voda', 235, '190'),
(62, 2, 33, '/neprerivno_zalivaetsia_voda', 255, '250'),
(63, 2, 1, '/ne_vklyuchayetsya', 265, '450'),
(64, 2, 1, '/ne_vklyuchayetsya', 261, '380'),
(65, 2, 1, '/ne_vklyuchayetsya', 2, '550'),
(66, 2, 1, '/ne_vklyuchayetsya', 271, '350'),
(67, 2, 31, '/ploho_moet', 272, '400'),
(68, 2, 31, '/ploho_moet', 2, '550'),
(69, 2, 31, '/ploho_moet', 260, '450'),
(70, 2, 31, '/ploho_moet', 236, '370'),
(71, 2, 34, '/ne_sushit', 273, '400'),
(72, 2, 34, '/ne_sushit', 2, '550'),
(73, 2, 34, '/ne_sushit', 274, '400'),
(74, 2, 34, '/ne_sushit', 275, '360'),
(75, 3, 38, '/ne_morozit', 276, '580'),
(76, 3, 38, '/ne_morozit', 277, '750'),
(77, 3, 38, '/ne_morozit', 278, '950'),
(78, 3, 38, '/ne_morozit', 279, '190'),
(79, 3, 1, '/ne_vklyuchayetsya', 280, '580'),
(80, 3, 1, '/ne_vklyuchayetsya', 278, '950'),
(81, 3, 1, '/ne_vklyuchayetsya', 281, '750'),
(82, 3, 1, '/ne_vklyuchayetsya', 282, '280'),
(83, 3, 30, '/protekaet', 283, '-'),
(84, 3, 30, '/protekaet', 284, '-'),
(85, 3, 30, '/protekaet', 285, '190'),
(86, 3, 44, '/rabotaet_tol`ko_morozilka', 280, '580'),
(87, 3, 44, '/rabotaet_tol`ko_morozilka', 278, '950'),
(88, 3, 44, '/rabotaet_tol`ko_morozilka', 279, '190'),
(89, 3, 41, '/ne_rabotaet_morozilka', 280, '580'),
(90, 3, 41, '/ne_rabotaet_morozilka', 278, '950'),
(91, 3, 41, '/ne_rabotaet_morozilka', 281, '750'),
(92, 3, 37, '/vcliuchaetsia_i_vycliuchaetsia', 277, '750'),
(93, 3, 37, '/vcliuchaetsia_i_vycliuchaetsia', 281, '750'),
(94, 3, 42, '/peremorazhivaet', 280, '580'),
(95, 3, 42, '/peremorazhivaet', 272, '-'),
(96, 3, 43, '/pokryvaetsia_ldom', 280, '580'),
(97, 3, 43, '/pokryvaetsia_ldom', 2, '-'),
(98, 3, 45, '/shumit', 277, '750'),
(99, 3, 45, '/shumit', 286, '-'),
(100, 3, 45, '/shumit', 287, '-'),
(101, 3, 39, '/ne_morozit_verkhniaia_kamera', 280, '580'),
(102, 3, 39, '/ne_morozit_verkhniaia_kamera', 277, '750'),
(103, 3, 39, '/ne_morozit_verkhniaia_kamera', 278, '950'),
(104, 3, 40, '/ne_rabotaet', 280, '580'),
(105, 3, 40, '/ne_rabotaet', 278, '950'),
(106, 3, 36, '/byot_tokom', 288, '-'),
(107, 3, 36, '/byot_tokom', 286, '-'),
(108, 4, 70, '/duhovka_ne_greet', 303, '600'),
(109, 4, 70, '/duhovka_ne_greet', 2, '900'),
(110, 4, 70, '/duhovka_ne_greet', 295, '750'),
(111, 4, 70, '/duhovka_ne_greet', 294, '650'),
(112, 4, 50, '/ne_rabotaet_taimer', 293, '450'),
(113, 4, 50, '/ne_rabotaet_taimer', 294, '450'),
(114, 4, 71, '/duhovoi_shkaf_ne_zakryvaetsia', 309, '400'),
(115, 4, 71, '/duhovoi_shkaf_ne_zakryvaetsia', 310, '400'),
(116, 4, 71, '/duhovoi_shkaf_ne_zakryvaetsia', 311, '400'),
(117, 4, 48, '/ne_rabotaet_modul_upravleniya', 294, '650'),
(118, 4, 48, '/ne_rabotaet_modul_upravleniya', 299, '650'),
(119, 4, 69, '/duhovka_vidayot_oshibku', 294, '650'),
(120, 4, 69, '/duhovka_vidayot_oshibku', 297, '600'),
(121, 4, 69, '/duhovka_vidayot_oshibku', 290, '450'),
(122, 4, 69, '/duhovka_vidayot_oshibku', 303, '350'),
(123, 4, 69, '/duhovka_vidayot_oshibku', 304, '300'),
(124, 4, 72, '/ne_gorit_lampochka_v_duhovke', 312, '650'),
(125, 4, 72, '/ne_gorit_lampochka_v_duhovke', 291, '700'),
(126, 4, 72, '/ne_gorit_lampochka_v_duhovke', 307, '700'),
(127, 4, 72, '/ne_gorit_lampochka_v_duhovke', 303, '350'),
(128, 4, 74, '/tresnulo_steclo_duhovogo_shkafa', 305, '750'),
(129, 4, 74, '/tresnulo_steclo_duhovogo_shkafa', 306, '900'),
(130, 5, 47, '/ne_rabotaet_komforka', 289, '650'),
(131, 5, 47, '/ne_rabotaet_komforka', 290, '950'),
(132, 5, 47, '/ne_rabotaet_komforka', 291, '650'),
(133, 5, 47, '/ne_rabotaet_komforka', 292, '550'),
(134, 5, 50, '/ne_rabotaet_taimer', 293, '450'),
(135, 5, 50, '/ne_rabotaet_taimer', 294, '650'),
(136, 5, 53, '/slomalsia_perecliuchatel', 295, '750'),
(137, 5, 53, '/slomalsia_perecliuchatel', 296, '300'),
(138, 5, 53, '/slomalsia_perecliuchatel', 297, '650'),
(139, 5, 46, '/komforka_ploho_greet', 290, '950'),
(140, 5, 46, '/komforka_ploho_greet', 294, '650'),
(141, 5, 46, '/komforka_ploho_greet', 291, '1500'),
(142, 5, 46, '/komforka_ploho_greet', 298, '750'),
(143, 5, 48, '/ne_rabotaet_modul_upravleniya', 294, '650'),
(144, 5, 48, '/ne_rabotaet_modul_upravleniya', 299, '1000'),
(145, 5, 49, '/ne_rabotaet_sensor', 300, '700'),
(146, 5, 49, '/ne_rabotaet_sensor', 301, '800'),
(147, 5, 49, '/ne_rabotaet_sensor', 302, '550'),
(148, 5, 49, '/ne_rabotaet_sensor', 297, '650'),
(149, 5, 52, '/plita_vydayot_oshibku', 294, '650'),
(150, 5, 52, '/plita_vydayot_oshibku', 297, '650'),
(151, 5, 52, '/plita_vydayot_oshibku', 290, '450'),
(152, 5, 52, '/plita_vydayot_oshibku', 303, '600'),
(153, 5, 52, '/plita_vydayot_oshibku', 304, '350'),
(154, 5, 54, '/tresnula_poverkhnost', 305, '1200'),
(155, 5, 54, '/tresnula_poverkhnost', 306, '900'),
(156, 5, 51, '/plita_byot_tokom', 291, '1500'),
(157, 5, 51, '/plita_byot_tokom', 307, '550'),
(158, 5, 51, '/plita_byot_tokom', 2, '900'),
(159, 5, 51, '/plita_byot_tokom', 290, '950'),
(160, 5, 51, '/plita_byot_tokom', 308, '750');

-- --------------------------------------------------------

--
-- Структура таблицы `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `works`
--

INSERT INTO `works` (`id`, `title`) VALUES
(298, 'Восстановление проводки'),
(306, 'Восстановление стекла'),
(292, 'Датчик перегрева'),
(243, 'Замена амортизаторов'),
(245, 'Замена амортизационных пружин'),
(287, 'Замена вентилятора обдува испарителя'),
(273, 'Замена датчика температурного'),
(272, 'Замена датчика температуры'),
(234, 'Замена датчика уровня воды'),
(256, 'Замена заливнго клапана'),
(235, 'Замена заливного клапана'),
(290, 'Замена конфорки'),
(309, 'Замена кронштейна'),
(312, 'Замена лампочки'),
(299, 'Замена модуля'),
(258, 'Замена модуля управления'),
(277, 'Замена мотор-компрессора'),
(250, 'Замена насоса'),
(308, 'Замена переключателей'),
(295, 'Замена переключателя'),
(264, 'Замена подшипника помпы'),
(244, 'Замена подшипников'),
(239, 'Замена подшипников двигателя'),
(4, 'Замена помпы'),
(260, 'Замена помпы (сливного насоса)'),
(291, 'Замена проводки'),
(288, 'Замена реле'),
(240, 'Замена ремня привода барабана'),
(253, 'Замена ручки люка'),
(301, 'Замена сенсора'),
(265, 'Замена сетевого фильтра'),
(246, 'Замена сетевого шнура'),
(305, 'Замена стекла'),
(293, 'Замена таймера'),
(1, 'Замена температурного датчика'),
(304, 'Замена термодатчика'),
(303, 'Замена термостата'),
(280, 'Замена термостата (терморегулятора)'),
(276, 'Замена термостата(терморегулятора)'),
(284, 'Замена трубопровода'),
(2, 'Замена тэна'),
(252, 'Замена уплотниеля тэна'),
(251, 'Замена уплотнительной манжеты'),
(311, 'Замена уплотнителя'),
(247, 'Замена устройства блокировки люка (убл)'),
(249, 'Замена фильтра залива воды'),
(5, 'Замена фильтра сливного насоса'),
(237, 'Замена щеток двигателя'),
(241, 'Замена электронного модуля'),
(238, 'Извлечение посторонних предметов'),
(286, 'Мелкий ремонт'),
(268, 'Настройка реле уровня воды'),
(297, 'Перепрошивка модуля'),
(283, 'Прочистка дренажной системы'),
(302, 'Разблокировка сенсора'),
(269, 'Регулирование двери'),
(310, 'Ремонт кронштейна'),
(294, 'Ремонт модуля'),
(289, 'Ремонт модуля управления'),
(296, 'Ремонт переключателя'),
(285, 'Ремонт поддона'),
(307, 'Ремонт проводки'),
(282, 'Ремонт пускового реле'),
(300, 'Ремонт сенсора'),
(266, 'Ремонт эелектронного модуля'),
(261, 'Ремонт электронного модуля'),
(6, 'Устранение засора'),
(275, 'Устранение засора вентиляционного тракта'),
(281, 'Устранение засора капиллярного трубопровода'),
(279, 'Устранение засора фильтра'),
(274, 'Устранение неисправности вентилятора'),
(236, 'Устранение неисправности заливного тракта'),
(271, 'Устранение неисправности кнопки питания'),
(233, 'Устранение неисправности кнопки пуск-старт'),
(3, 'Устранение неисправности кнопки пуск/старт'),
(259, 'Устранение неисправности системы аквастоп'),
(242, 'Устранение неисправности сливного клапана'),
(7, 'Устранение несправности сливного клапана'),
(248, 'Устранение обрыва провода электросхемы'),
(267, 'Устранение обрыва цепи'),
(254, 'Устранение обрыва цепи УБЛ'),
(255, 'Устранение программного сбоя'),
(278, 'Устранение утечки хладагента'),
(263, 'Чистка заливной системы'),
(262, 'Чистка сливной системы'),
(257, 'Чистка фильтра');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `brand2device`
--
ALTER TABLE `brand2device`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `defect2device`
--
ALTER TABLE `defect2device`
  ADD PRIMARY KEY (`id`),
  ADD KEY `device_id` (`device_id`,`defect_id`),
  ADD KEY `fk_defect_defect2device` (`defect_id`);

--
-- Индексы таблицы `defect2group`
--
ALTER TABLE `defect2group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `defects`
--
ALTER TABLE `defects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `link` (`link`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Индексы таблицы `defect_groups`
--
ALTER TABLE `defect_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `work2defect2device`
--
ALTER TABLE `work2defect2device`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `defect_id` (`defect_link`,`work_id`,`device_id`),
  ADD KEY `fk_device_w2d2d` (`device_id`),
  ADD KEY `fk_work_w2d2d` (`work_id`),
  ADD KEY `defect_id_2` (`defect_id`);

--
-- Индексы таблицы `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `brand2device`
--
ALTER TABLE `brand2device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `defect2device`
--
ALTER TABLE `defect2device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблицы `defect2group`
--
ALTER TABLE `defect2group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `defects`
--
ALTER TABLE `defects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT для таблицы `defect_groups`
--
ALTER TABLE `defect_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `requests`
--
ALTER TABLE `requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `work2defect2device`
--
ALTER TABLE `work2defect2device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT для таблицы `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `defect2device`
--
ALTER TABLE `defect2device`
  ADD CONSTRAINT `fk_defect_defect2device` FOREIGN KEY (`defect_id`) REFERENCES `defects` (`id`),
  ADD CONSTRAINT `fk_device_defect2device` FOREIGN KEY (`device_id`) REFERENCES `devices` (`id`);

--
-- Ограничения внешнего ключа таблицы `work2defect2device`
--
ALTER TABLE `work2defect2device`
  ADD CONSTRAINT `fk_defect_w2d2d` FOREIGN KEY (`defect_id`) REFERENCES `defects` (`id`),
  ADD CONSTRAINT `fk_deflink_w2d2d` FOREIGN KEY (`defect_link`) REFERENCES `defects` (`link`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_device_w2d2d` FOREIGN KEY (`device_id`) REFERENCES `devices` (`id`),
  ADD CONSTRAINT `fk_work_w2d2d` FOREIGN KEY (`work_id`) REFERENCES `works` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
