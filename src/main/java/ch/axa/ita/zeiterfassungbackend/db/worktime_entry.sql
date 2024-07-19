-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 19. Jul 2024 um 10:18
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `zeiterfassung`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `worktime_entry`
--

CREATE TABLE `worktime_entry` (
  `id` bigint(20) NOT NULL,
  `datum` date DEFAULT NULL,
  `badge_ein` time(6) DEFAULT NULL,
  `badge_out` time(6) DEFAULT NULL,
  `rfid` varchar(255) DEFAULT NULL,
  `total_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `worktime_entry`
--

INSERT INTO `worktime_entry` (`id`, `datum`, `badge_ein`, `badge_out`, `rfid`, `total_time`) VALUES
(8, '2024-07-18', '10:05:51.000000', '10:08:15.000000', '1211111111', '00:02:24'),
(9, '2024-07-18', '10:08:31.000000', '10:08:53.000000', '1211111111', '00:00:22'),
(10, '2024-07-18', '10:08:43.000000', '10:15:29.000000', '2211111111', '00:06:46'),
(11, '2024-07-18', '10:52:55.000000', '10:53:11.000000', '2211111111', '00:00:16'),
(12, '2024-07-18', '11:09:24.000000', '11:11:16.000000', '', '00:01:52'),
(13, '2024-07-18', '13:00:45.000000', '13:06:08.000000', '2211111111', '00:05:23'),
(14, '2024-07-18', '13:01:17.000000', '13:04:15.000000', '3333333333', '00:02:58'),
(15, '2024-07-18', '13:11:17.000000', '13:11:19.000000', '693cadb34b', '00:00:02'),
(16, '2024-07-18', '13:13:01.000000', '13:13:14.000000', '131e01b16', '00:00:13'),
(17, '2024-07-18', '13:13:22.000000', '13:13:43.000000', '693cadb34b', '00:00:21'),
(18, '2024-07-18', '13:13:52.000000', '13:14:01.000000', '693cadb34b', '00:00:09'),
(19, '2024-07-18', '13:47:24.000000', NULL, '2211111111', NULL),
(20, '2024-07-18', '13:47:58.000000', NULL, '4561237894', NULL),
(21, '2024-07-18', '13:48:04.000000', '13:48:49.000000', 'asd1237894', '00:00:45'),
(22, '2024-07-18', '14:32:34.000000', '14:36:41.000000', '131e01b16', '00:04:07'),
(23, '2024-07-18', '14:36:52.000000', '14:41:02.000000', '131e01b16', '00:04:10'),
(25, '2024-07-18', '14:42:26.000000', '14:42:32.000000', '693cadb34b', '00:00:06'),
(26, '2024-07-18', '14:42:44.000000', '14:42:59.000000', '693cadb34b', '00:00:15'),
(27, '2024-07-18', '14:43:37.000000', '14:56:37.000000', '693cadb34b', '00:13:00'),
(28, '2024-07-18', '15:00:35.000000', '15:01:16.000000', '131e01b16', '00:00:41'),
(29, '2024-07-18', '15:01:22.000000', '15:01:28.000000', '131e01b16', '00:00:06'),
(30, '2024-07-18', '15:01:34.000000', '15:49:04.000000', '131e01b16', '00:47:30'),
(31, '2024-07-18', '15:52:30.000000', NULL, '131e01b16', NULL);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `worktime_entry`
--
ALTER TABLE `worktime_entry`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `worktime_entry`
--
ALTER TABLE `worktime_entry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
