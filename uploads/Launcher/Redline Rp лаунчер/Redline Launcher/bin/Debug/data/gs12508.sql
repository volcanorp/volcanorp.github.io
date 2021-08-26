-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: s5.advens.ru
-- Время создания: Ноя 19 2019 г., 14:23
-- Версия сервера: 10.1.41-MariaDB-0+deb9u1
-- Версия PHP: 7.0.33-0+deb9u6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `gs12508`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ad_panel_ads`
--

CREATE TABLE `ad_panel_ads` (
  `id` int(11) NOT NULL,
  `serial` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `username` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL,
  `delete_time` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `property` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED DEFAULT NULL,
  `printed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bank_deposits`
--

CREATE TABLE `bank_deposits` (
  `ID` int(10) UNSIGNED NOT NULL,
  `owner` varchar(255) NOT NULL,
  `money` int(10) UNSIGNED NOT NULL,
  `currency` varchar(10) NOT NULL,
  `percent` float UNSIGNED NOT NULL,
  `state` varchar(50) NOT NULL,
  `openDate` int(10) UNSIGNED NOT NULL,
  `closeDate` int(10) UNSIGNED NOT NULL,
  `period` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `car_nomerchange_moderation`
--

CREATE TABLE `car_nomerchange_moderation` (
  `ID` int(10) UNSIGNED NOT NULL,
  `owner` text COLLATE utf8_unicode_ci,
  `licensep` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `car_nomerchange_storage`
--

CREATE TABLE `car_nomerchange_storage` (
  `ID` int(10) UNSIGNED NOT NULL,
  `owner` text COLLATE utf8_unicode_ci,
  `licensep` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `car_systemORIG_dbData`
--

CREATE TABLE `car_systemORIG_dbData` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `car_systemORIG_handling`
--

CREATE TABLE `car_systemORIG_handling` (
  `ID` int(10) UNSIGNED NOT NULL,
  `handling` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `car_systemORIG_vehicle`
--

CREATE TABLE `car_systemORIG_vehicle` (
  `ID` int(10) UNSIGNED NOT NULL,
  `owner` text COLLATE utf8_unicode_ci,
  `model` smallint(5) UNSIGNED DEFAULT NULL,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `z` float DEFAULT NULL,
  `rotZ` float DEFAULT NULL,
  `colors` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upgrades` text COLLATE utf8_unicode_ci,
  `paintjob` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HP` float DEFAULT NULL,
  `fuel` float DEFAULT NULL,
  `licensep` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTuning` text COLLATE utf8_unicode_ci,
  `fuelOctane` float DEFAULT NULL,
  `odometer` float DEFAULT NULL,
  `userOrder` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `car_system_dbData`
--

CREATE TABLE `car_system_dbData` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `car_system_dbData`
--

INSERT INTO `car_system_dbData` (`key`, `value`) VALUES
('version', '1.2');

-- --------------------------------------------------------

--
-- Структура таблицы `car_system_handling`
--

CREATE TABLE `car_system_handling` (
  `ID` int(10) UNSIGNED NOT NULL,
  `handling` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `car_system_vehicle`
--

CREATE TABLE `car_system_vehicle` (
  `ID` int(10) UNSIGNED NOT NULL,
  `owner` text COLLATE utf8_unicode_ci,
  `model` smallint(5) UNSIGNED DEFAULT NULL,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `z` float DEFAULT NULL,
  `rotZ` float DEFAULT NULL,
  `colors` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upgrades` text COLLATE utf8_unicode_ci,
  `paintjob` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HP` float DEFAULT NULL,
  `fuel` float DEFAULT NULL,
  `licensep` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTuning` text COLLATE utf8_unicode_ci,
  `fuelOctane` float DEFAULT NULL,
  `odometer` float DEFAULT NULL,
  `userOrder` smallint(5) UNSIGNED DEFAULT NULL,
  `flag` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `house_apartments_apartments`
--

CREATE TABLE `house_apartments_apartments` (
  `ID` int(10) UNSIGNED NOT NULL,
  `houseID` int(10) UNSIGNED NOT NULL,
  `owner` text COLLATE utf8_unicode_ci,
  `key` text COLLATE utf8_unicode_ci,
  `cost` int(10) UNSIGNED DEFAULT NULL,
  `carLots` tinyint(3) UNSIGNED DEFAULT NULL,
  `floor` smallint(5) UNSIGNED DEFAULT NULL,
  `apartmentOnFloor` tinyint(3) UNSIGNED DEFAULT NULL,
  `enterPos` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exitMrk` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interior` tinyint(3) UNSIGNED DEFAULT NULL,
  `dimension` smallint(5) UNSIGNED DEFAULT NULL,
  `interiorID` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `house_apartments_houses`
--

CREATE TABLE `house_apartments_houses` (
  `ID` int(10) UNSIGNED NOT NULL,
  `floors` smallint(5) UNSIGNED DEFAULT NULL,
  `apartmentsOnFloor` tinyint(3) UNSIGNED DEFAULT NULL,
  `zeroApartment` int(10) UNSIGNED DEFAULT '0',
  `enterMrk` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exitPos` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interior` tinyint(3) UNSIGNED DEFAULT NULL,
  `dimension` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `inventory_system_houses`
--

CREATE TABLE `inventory_system_houses` (
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `items` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `inventory_system_players`
--

CREATE TABLE `inventory_system_players` (
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `items` longtext COLLATE utf8_unicode_ci NOT NULL,
  `weapons` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `inventory_system_players`
--

INSERT INTO `inventory_system_players` (`username`, `items`, `weapons`) VALUES
('tayler776', '[[]]', '[[]]');

-- --------------------------------------------------------

--
-- Структура таблицы `nicklogin_actions`
--

CREATE TABLE `nicklogin_actions` (
  `nickShort` varchar(22) COLLATE utf8_unicode_ci NOT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hits` mediumint(8) UNSIGNED DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reason` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serial` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `nick` varchar(22) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(10) UNSIGNED DEFAULT NULL,
  `ip` char(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `nicklogin_actions`
--

INSERT INTO `nicklogin_actions` (`nickShort`, `login`, `hits`, `date`, `reason`, `serial`, `nick`, `timestamp`, `ip`) VALUES
('TaylerGames', 'tayle55', 1, '2019-11-18 07:51:14', 'Account register', '4FE07A7B052860F7F579BD41B7474D94', 'TaylerGames', 1574063474, '213.109.221.58'),
('TaylerGames', 'tayler776', 2, '2019-11-18 07:51:20', 'Wrong password', '4FE07A7B052860F7F579BD41B7474D94', 'TaylerGames', 1574063480, '213.109.221.58'),
('TaylerGames', 'tayler776', 1, '2019-11-18 05:11:39', 'Account register', '4FE07A7B052860F7F579BD41B7474D94', 'TaylerGames', 1574053899, '37.99.48.109');

-- --------------------------------------------------------

--
-- Структура таблицы `nicklogin_dbData`
--

CREATE TABLE `nicklogin_dbData` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `nicklogin_successful`
--

CREATE TABLE `nicklogin_successful` (
  `nickShort` varchar(22) COLLATE utf8_unicode_ci NOT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hits` mediumint(8) UNSIGNED DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `nick` varchar(22) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(10) UNSIGNED DEFAULT NULL,
  `ip` char(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `nicklogin_successful`
--

INSERT INTO `nicklogin_successful` (`nickShort`, `login`, `hits`, `date`, `action`, `serial`, `nick`, `timestamp`, `ip`) VALUES
('333', 'tayler776', 1, '2019-11-18 18:57:19', 'Login', '4FE07A7B052860F7F579BD41B7474D94', '333', 1574103439, '37.99.32.152'),
('TaylerGames', 'guest', 1, '2019-11-18 13:28:55', 'Quit', '4FE07A7B052860F7F579BD41B7474D94', 'TaylerGames', 1574083735, '213.109.221.58'),
('TaylerGames', 'tayler776', 8, '2019-11-18 11:04:54', 'Quit', '4FE07A7B052860F7F579BD41B7474D94', 'TaylerGames', 1574075094, '213.109.221.58'),
('TaylerGames', 'tayler776', 2, '2019-11-18 19:12:12', 'Quit', '4FE07A7B052860F7F579BD41B7474D94', 'TaylerGames', 1574104332, '37.99.32.152'),
('TaylerGames', 'tayler776', 2, '2019-11-18 05:35:05', 'Quit', '4FE07A7B052860F7F579BD41B7474D94', 'TaylerGames', 1574055305, '37.99.48.109');

-- --------------------------------------------------------

--
-- Структура таблицы `police_ccd_policemen`
--

CREATE TABLE `police_ccd_policemen` (
  `ID` int(10) UNSIGNED NOT NULL,
  `login` tinytext COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addedBy` tinytext COLLATE utf8_unicode_ci,
  `addedAt` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `police_ccd_policemenShifts`
--

CREATE TABLE `police_ccd_policemenShifts` (
  `ID` int(10) UNSIGNED NOT NULL,
  `timestamp` int(10) UNSIGNED DEFAULT NULL,
  `login` tinytext COLLATE utf8_unicode_ci,
  `monthday` tinyint(3) UNSIGNED DEFAULT NULL,
  `duration` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `police_ccd_wanted`
--

CREATE TABLE `police_ccd_wanted` (
  `ID` int(10) UNSIGNED NOT NULL,
  `login` tinytext COLLATE utf8_unicode_ci,
  `stars` tinyint(3) UNSIGNED DEFAULT NULL,
  `accusation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstStar` int(10) UNSIGNED DEFAULT NULL,
  `lastStar` int(10) UNSIGNED DEFAULT NULL,
  `exitFromServer` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `salon_dbData`
--

CREATE TABLE `salon_dbData` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `salon_handling`
--

CREATE TABLE `salon_handling` (
  `ID` int(10) UNSIGNED NOT NULL,
  `handling` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `salon_vehicle`
--

CREATE TABLE `salon_vehicle` (
  `ID` int(10) UNSIGNED NOT NULL,
  `owner` text COLLATE utf8_unicode_ci,
  `model` smallint(5) UNSIGNED DEFAULT NULL,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `z` float DEFAULT NULL,
  `rotZ` float DEFAULT NULL,
  `colors` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upgrades` text COLLATE utf8_unicode_ci,
  `paintjob` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HP` float DEFAULT NULL,
  `fuel` float DEFAULT NULL,
  `licensep` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTuning` text COLLATE utf8_unicode_ci,
  `fuelOctane` float DEFAULT NULL,
  `odometer` float DEFAULT NULL,
  `userOrder` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `statistics_client_stats`
--

CREATE TABLE `statistics_client_stats` (
  `serial` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL,
  `resolution` tinytext COLLATE utf8_unicode_ci,
  `language` tinytext COLLATE utf8_unicode_ci,
  `mta_version` tinytext COLLATE utf8_unicode_ci,
  `mta_build` tinytext COLLATE utf8_unicode_ci,
  `gpu_name` tinytext COLLATE utf8_unicode_ci,
  `gpu_ram` tinytext COLLATE utf8_unicode_ci,
  `is_windowed` tinytext COLLATE utf8_unicode_ci,
  `fx_quality` tinytext COLLATE utf8_unicode_ci,
  `gpu_free` tinytext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `statistics_client_stats`
--

INSERT INTO `statistics_client_stats` (`serial`, `timestamp`, `resolution`, `language`, `mta_version`, `mta_build`, `gpu_name`, `gpu_ram`, `is_windowed`, `fx_quality`, `gpu_free`) VALUES
('4FE07A7B052860F7F579BD41B7474D94', 1574103988, '1366x768', 'Russian', '1.5.7-9.20348.0', 'Release', 'Intel(R) HD Graphics 4000', '1784', 'true', '3', '1288');

-- --------------------------------------------------------

--
-- Структура таблицы `statistics_player_events`
--

CREATE TABLE `statistics_player_events` (
  `id` int(11) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL,
  `type` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `serial` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `username` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `nickname` varchar(22) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` tinytext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `statistics_player_events`
--

INSERT INTO `statistics_player_events` (`id`, `timestamp`, `type`, `serial`, `username`, `nickname`, `info`) VALUES
(1, 1574053464, 'join', '4FE07A7B052860F7F579BD41B7474D94', 'guest', 'TaylerGames', ''),
(2, 1574053906, 'login', '4FE07A7B052860F7F579BD41B7474D94', 'tayler776', 'TaylerGames', 'guest'),
(3, 1574055305, 'quit', '4FE07A7B052860F7F579BD41B7474D94', 'tayler776', 'TaylerGames', 'Timed out'),
(4, 1574055746, 'join', '4FE07A7B052860F7F579BD41B7474D94', 'guest', 'TaylerGames', ''),
(5, 1574055874, 'login', '4FE07A7B052860F7F579BD41B7474D94', 'tayler776', 'TaylerGames', 'guest'),
(6, 1574057343, 'quit', '4FE07A7B052860F7F579BD41B7474D94', 'tayler776', 'TaylerGames', 'Quit'),
(7, 1574063323, 'join', '4FE07A7B052860F7F579BD41B7474D94', 'guest', 'TaylerGames', ''),
(8, 1574063530, 'login', '4FE07A7B052860F7F579BD41B7474D94', 'tayler776', 'TaylerGames', 'guest'),
(9, 1574066271, 'join', '4FE07A7B052860F7F579BD41B7474D94', 'guest', 'TaylerGames', ''),
(10, 1574066333, 'login', '4FE07A7B052860F7F579BD41B7474D94', 'tayler776', 'TaylerGames', 'guest'),
(11, 1574071782, 'join', '4FE07A7B052860F7F579BD41B7474D94', 'guest', 'TaylerGames', ''),
(12, 1574071924, 'login', '4FE07A7B052860F7F579BD41B7474D94', 'tayler776', 'TaylerGames', 'guest'),
(13, 1574072169, 'quit', '4FE07A7B052860F7F579BD41B7474D94', 'tayler776', 'TaylerGames', 'Quit'),
(14, 1574072880, 'join', '4FE07A7B052860F7F579BD41B7474D94', 'guest', 'TaylerGames', ''),
(15, 1574073045, 'login', '4FE07A7B052860F7F579BD41B7474D94', 'tayler776', 'TaylerGames', 'guest'),
(16, 1574074473, 'wasted', '4FE07A7B052860F7F579BD41B7474D94', 'tayler776', 'TaylerGames', ''),
(17, 1574075094, 'quit', '4FE07A7B052860F7F579BD41B7474D94', 'tayler776', 'TaylerGames', 'Kicked'),
(18, 1574083452, 'join', '4FE07A7B052860F7F579BD41B7474D94', 'guest', 'TaylerGames', ''),
(19, 1574083735, 'quit', '4FE07A7B052860F7F579BD41B7474D94', 'guest', 'TaylerGames', 'Quit'),
(20, 1574103169, 'join', '4FE07A7B052860F7F579BD41B7474D94', 'guest', '333', ''),
(21, 1574103439, 'login', '4FE07A7B052860F7F579BD41B7474D94', 'tayler776', '333', 'guest'),
(22, 1574104332, 'quit', '4FE07A7B052860F7F579BD41B7474D94', 'tayler776', 'TaylerGames', 'Timed out');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ad_panel_ads`
--
ALTER TABLE `ad_panel_ads`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bank_deposits`
--
ALTER TABLE `bank_deposits`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `car_nomerchange_moderation`
--
ALTER TABLE `car_nomerchange_moderation`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `car_nomerchange_storage`
--
ALTER TABLE `car_nomerchange_storage`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `car_systemORIG_dbData`
--
ALTER TABLE `car_systemORIG_dbData`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `car_systemORIG_handling`
--
ALTER TABLE `car_systemORIG_handling`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `car_systemORIG_vehicle`
--
ALTER TABLE `car_systemORIG_vehicle`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `car_system_dbData`
--
ALTER TABLE `car_system_dbData`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `car_system_handling`
--
ALTER TABLE `car_system_handling`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `car_system_vehicle`
--
ALTER TABLE `car_system_vehicle`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `house_apartments_apartments`
--
ALTER TABLE `house_apartments_apartments`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `house_apartments_houses`
--
ALTER TABLE `house_apartments_houses`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `inventory_system_houses`
--
ALTER TABLE `inventory_system_houses`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `inventory_system_players`
--
ALTER TABLE `inventory_system_players`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `nicklogin_actions`
--
ALTER TABLE `nicklogin_actions`
  ADD PRIMARY KEY (`nickShort`,`login`,`serial`,`ip`,`reason`);

--
-- Индексы таблицы `nicklogin_dbData`
--
ALTER TABLE `nicklogin_dbData`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `nicklogin_successful`
--
ALTER TABLE `nicklogin_successful`
  ADD PRIMARY KEY (`nickShort`,`login`,`serial`,`ip`);

--
-- Индексы таблицы `police_ccd_policemen`
--
ALTER TABLE `police_ccd_policemen`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `police_ccd_policemenShifts`
--
ALTER TABLE `police_ccd_policemenShifts`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `police_ccd_wanted`
--
ALTER TABLE `police_ccd_wanted`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `salon_dbData`
--
ALTER TABLE `salon_dbData`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `salon_handling`
--
ALTER TABLE `salon_handling`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `salon_vehicle`
--
ALTER TABLE `salon_vehicle`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `statistics_client_stats`
--
ALTER TABLE `statistics_client_stats`
  ADD PRIMARY KEY (`serial`);

--
-- Индексы таблицы `statistics_player_events`
--
ALTER TABLE `statistics_player_events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ad_panel_ads`
--
ALTER TABLE `ad_panel_ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bank_deposits`
--
ALTER TABLE `bank_deposits`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `police_ccd_policemen`
--
ALTER TABLE `police_ccd_policemen`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `police_ccd_policemenShifts`
--
ALTER TABLE `police_ccd_policemenShifts`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `police_ccd_wanted`
--
ALTER TABLE `police_ccd_wanted`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `statistics_player_events`
--
ALTER TABLE `statistics_player_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
