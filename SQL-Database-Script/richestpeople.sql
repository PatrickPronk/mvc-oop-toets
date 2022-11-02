-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 02 nov 2022 om 13:03
-- Serverversie: 5.7.31
-- PHP-versie: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc-oop-toets`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `richestpeople`
--

CREATE TABLE `richestpeople` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `NetWorth` varchar(200) NOT NULL,
  `Age` tinyint(4) NOT NULL,
  `MyCompany` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `richestpeople`
--

INSERT INTO `richestpeople` (`Id`, `Name`, `NetWorth`, `Age`, `MyCompany`) VALUES
(1, 'Elon Musk', '2610000000000', 50, 'Tesla'),
(2, 'Jeff Bezos', '1830000000000', 58, 'Amazon'),
(3, 'Bernard Arnault', '1420000000000', 73, 'Louis Vuitton Moët Hennessy'),
(4, 'Bill Gates', '1300000000000', 66, 'Microsoft'),
(8, 'Waren Buffett', '1260000000000', 91, 'Berkshire Hathaway');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `richestpeople`
--
ALTER TABLE `richestpeople`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `richestpeople`
--
ALTER TABLE `richestpeople`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
