-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 18 apr 2023 om 12:29
-- Serverversie: 10.4.24-MariaDB
-- PHP-versie: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movietoetsen`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `movie`
--

DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `budget` decimal(7,2) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `acteurs_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `movie`
--

INSERT INTO `movie` (`id`, `title`, `description`, `year`, `budget`, `genre_id`, `acteurs_id`) VALUES
(1, 'Notting hill', 'Nothing hill is een brits amerikaan', 1999, '42000.00', 1, 3),
(2, 'Deadpool', 'Deadpool is een amerikaanse film gebaseerd op het', 2016, '20000.00', 2, 2),
(3, 'red notice', 'fbi film', 2021, '10000.00', 1, 1),
(4, 'avatars', 'ex marinier', 2009, '50000.00', 3, 4),
(5, 'avengers', 'overgebleven avengers', 2019, '99999.99', 2, 3);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1D5EF26F4296D31F` (`genre_id`),
  ADD KEY `IDX_1D5EF26F71A27AFC` (`acteurs_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `FK_1D5EF26F4296D31F` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`),
  ADD CONSTRAINT `FK_1D5EF26F71A27AFC` FOREIGN KEY (`acteurs_id`) REFERENCES `acteur` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
