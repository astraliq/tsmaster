-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 30 2020 г., 21:54
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
-- Структура таблицы `breakdown_types`
--

CREATE TABLE `breakdown_types` (
  `id` int(11) NOT NULL,
  `breakdown_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `requests`
--

CREATE TABLE `requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` int(10) NOT NULL,
  `request_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `defect` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `requests`
--

INSERT INTO `requests` (`id`, `name`, `phone_number`, `request_type`, `device`, `defect`, `description`, `date_create`, `city`) VALUES
(1, 'antonio', 123456789, 'заявка на ремонт', 'стиральная машина', 'не сливает воду', 'NULL', '2020-05-24 12:22:03', 'NULL'),
(2, 'antonio', 123456789, 'заявка на ремонт', 'стиральная машина', 'не сливает воду', 'NULL', '2020-05-24 12:25:22', 'NULL'),
(3, 'antonio', 123456789, 'заявка на ремонт', 'стиральная машина', 'не сливает воду', 'NULL', '2020-05-24 12:27:08', 'NULL'),
(4, 'antonio', 123456789, 'заявка на звонок', 'NULL', 'NULL', 'NULL', '2020-05-24 12:39:06', 'NULL'),
(5, 'antonio', 123456789, 'заявка на ремонт', 'стиральная машина', 'не сливает воду', 'NULL', '2020-05-24 12:39:14', 'NULL');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `breakdown_types`
--
ALTER TABLE `breakdown_types`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `breakdown_types`
--
ALTER TABLE `breakdown_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `requests`
--
ALTER TABLE `requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
