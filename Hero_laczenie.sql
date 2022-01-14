-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 10 Sty 2022, 20:11
-- Wersja serwera: 5.7.29
-- Wersja PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `19_mazur`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Hero_laczenie`
--

CREATE TABLE `Hero_laczenie` (
  `ID` int(11) NOT NULL,
  `Nazwa` varchar(20) NOT NULL,
  `Monety` int(11) DEFAULT NULL,
  `Atak` int(11) DEFAULT NULL,
  `Zdrowie` int(11) DEFAULT NULL,
  `Inne_zdolnosci` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `Hero_laczenie`
--

INSERT INTO `Hero_laczenie` (`ID`, `Nazwa`, `Monety`, `Atak`, `Zdrowie`, `Inne_zdolnosci`) VALUES
(1, 'Ork Grabiezca', 0, 0, 0, 'Dobierz karte'),
(2, 'Wilkor', 0, 4, 0, NULL),
(5, 'Cron', 0, 0, 0, 'Dobierz karte'),
(7, 'Broelyn', 0, 0, 0, 'Wybrany przeciwnik odrzuca karte'),
(8, 'Ork Grabiezca', 0, 0, 0, 'Dobierz karte'),
(9, 'Klatwa elfow', 0, 3, 0, NULL),
(10, 'Klatwa elfow', 0, 3, 0, NULL),
(11, 'Dary natury', 0, 0, 0, 'Wybrany przeciwnik odrzuca karte'),
(13, 'Iskra', 0, 2, 0, NULL),
(14, 'Iskra', 0, 2, 0, NULL),
(15, 'Mroczna Energia', 0, 0, 0, 'Dobierz karte'),
(16, 'Mroczna Energia', 0, 0, 0, 'Dobierz karte'),
(17, 'Mroczna Energia', 0, 0, 0, 'Dobierz karte'),
(18, 'Mroczna Energia', 0, 6, 0, NULL),
(19, 'Mroczna Energia', 0, 3, 0, NULL),
(20, 'Mroczna Energia', 0, 3, 0, NULL),
(26, 'Dotyk smierci', 0, 2, 0, NULL),
(27, 'Dotyk smierci', 0, 2, 0, NULL),
(28, 'Dotyk smierci', 0, 2, 0, NULL),
(29, 'Parov', 0, 0, 0, 'Dobierz karte'),
(33, 'Myros', 0, 4, 0, NULL),
(34, 'Zastraszenie', 2, 0, 0, NULL),
(35, 'Zastraszenie', 2, 0, 0, NULL),
(36, 'Zyski', 4, 0, 0, NULL),
(37, 'Zyski', 4, 0, 0, NULL),
(38, 'Zyski', 4, 0, 0, NULL),
(39, 'Łapowka', 0, 0, 0, 'Nastepna karte ktora kupisz mozesz dac na wierzch talii'),
(40, 'Łapowka', 0, 0, 0, 'Nastepna karte ktora kupisz mozesz dac na wierzch talii'),
(41, 'Łapowka', 0, 0, 0, 'Nastepna karte ktora kupisz mozesz dac na wierzch talii'),
(43, 'Cristov', 0, 0, 0, 'Dobierz karte'),
(44, 'Arkus', 0, 0, 6, NULL),
(47, 'Slowo Mocy', 0, 0, 5, NULL),
(48, 'Zwarte Szeregi', 0, 0, 6, NULL),
(49, 'Opodatkowanie', 0, 0, 6, NULL),
(50, 'Opodatkowanie', 0, 0, 6, NULL),
(51, 'Opodatkowanie', 0, 0, 6, NULL),
(52, 'Werbunek', 1, 0, 0, NULL),
(53, 'Werbunek', 1, 0, 0, NULL),
(54, 'Werbunek', 1, 0, 0, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
