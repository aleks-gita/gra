-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 11 Sty 2022, 20:01
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
-- Struktura tabeli dla tabeli `reka`
--

CREATE TABLE `Reka` (
  `ID` int(11) NOT NULL,
  `Nazwa` varchar(20) NOT NULL,
  `Monety` int(11) DEFAULT NULL,
  `Atak` int(11) DEFAULT NULL,
  `Zdjecie` varchar(100) NOT NULL
); 

--
-- Zrzut danych tabeli `reka`
--

INSERT INTO `Reka` (`ID`, `Nazwa`, `Monety`, `Atak`, `Zdjecie`) VALUES
(1, 'Monety', 1, 0, 'https://www.herorealms.com/wp-content/uploads/2017/09/BAS-EN-097-gold.jpg'),
(2, 'Monety', 1, 0, 'https://www.herorealms.com/wp-content/uploads/2017/09/BAS-EN-097-gold.jpg'),
(3, 'Monety', 1, 0, 'https://www.herorealms.com/wp-content/uploads/2017/09/BAS-EN-097-gold.jpg'),
(4, 'Monety', 1, 0, 'https://www.herorealms.com/wp-content/uploads/2017/09/BAS-EN-097-gold.jpg'),
(5, 'Monety', 1, 0, 'https://www.herorealms.com/wp-content/uploads/2017/09/BAS-EN-097-gold.jpg'),
(6, 'Monety', 1, 0, 'https://www.herorealms.com/wp-content/uploads/2017/09/BAS-EN-097-gold.jpg'),
(7, 'Monety', 1, 0, 'https://www.herorealms.com/wp-content/uploads/2017/09/BAS-EN-097-gold.jpg'),
(8, 'Rubin', 2, 0, 'https://www.herorealms.com/wp-content/uploads/2017/09/BAS-EN-133-ruby.jpg'),
(9, 'Krotki miecz', 0, 2, 'https://www.herorealms.com/wp-content/uploads/2017/09/BAS-EN-125-shortsword.jpg'),
(10, 'Sztylet', 0, 1, 'https://www.herorealms.com/wp-content/uploads/2017/09/BAS-EN-129-dagger.jpg');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
