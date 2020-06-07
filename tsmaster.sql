-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 07 2020 г., 11:43
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
  `defect_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `defect2device`
--

INSERT INTO `defect2device` (`id`, `device_id`, `defect_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9);

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
  `price` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `defects`
--

INSERT INTO `defects` (`id`, `title`, `price`, `link`) VALUES
(1, 'не включается', 230, '/ne_vklyuchayetsya'),
(2, 'не вращает барабан', 230, '/ne_vrashchayet_baraban'),
(3, 'не набирает воду', 210, '/ne_nabiraet_vodu'),
(4, 'не начинает стирку', 200, '/ne_nachinaet_stirku'),
(5, 'не отжимает', 310, '/ne_otjimaet'),
(6, 'не открывается люк', 250, '/ne_otkryvayetsya_lyuk'),
(7, 'не сливает воду', 280, '/ne_slivaet_vodu'),
(8, 'течёт', 330, '/techet'),
(9, 'шумит и вибрирует', 190, '/noise_and_vibrate');

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
  `work_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `work2defect2device`
--

INSERT INTO `work2defect2device` (`id`, `device_id`, `defect_id`, `defect_link`, `work_id`) VALUES
(1, 1, 4, '/ne_nachinaet_stirku', 1),
(2, 1, 4, '/ne_nachinaet_stirku', 2),
(3, 1, 1, '/ne_vklyuchayetsya', 3),
(4, 1, 7, '/ne_slivaet_vodu', 4),
(5, 1, 7, '/ne_slivaet_vodu', 5),
(6, 1, 7, '/ne_slivaet_vodu', 6),
(7, 1, 7, '/ne_slivaet_vodu', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `works`
--

INSERT INTO `works` (`id`, `title`, `price`) VALUES
(1, 'Замена температурного датчика', 270),
(2, 'Замена тэна', 350),
(3, 'Устранение неисправности кнопки пуск/старт', 190),
(4, 'Замена помпы', 210),
(5, 'Замена фильтра сливного насоса', 150),
(6, 'Устранение засора', 250),
(7, 'Устранение несправности сливного клапана', 210);

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
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `device_id` (`device_id`),
  ADD KEY `defect_id` (`defect_id`);

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
  ADD UNIQUE KEY `link` (`link`);

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
  ADD UNIQUE KEY `id` (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `defect2group`
--
ALTER TABLE `defect2group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `defects`
--
ALTER TABLE `defects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  ADD CONSTRAINT `fk_deflink_w2d2d` FOREIGN KEY (`defect_link`) REFERENCES `defects` (`link`),
  ADD CONSTRAINT `fk_device_w2d2d` FOREIGN KEY (`device_id`) REFERENCES `devices` (`id`),
  ADD CONSTRAINT `fk_work_w2d2d` FOREIGN KEY (`work_id`) REFERENCES `works` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
