-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 10 Sty 2022, 20:12
-- Wersja serwera: 5.7.29
-- Wersja PHP: 7.4.7




--
-- Baza danych: `19_mazur`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Hero_1`
--

CREATE TABLE `Hero_1` (
  `ID` int(11) NOT NULL,
  `Nazwa` varchar(20) NOT NULL,
  `Kolor` varchar(20) DEFAULT NULL,
  `Cena` int(11) DEFAULT NULL,
  `Monety` int(11) DEFAULT NULL,
  `Atak` int(11) DEFAULT NULL,
  `Zdrowie` int(11) DEFAULT NULL,
  `Inne_zdolnosci` varchar(50) DEFAULT NULL,
  `Zdjecie` varchar(50) DEFAULT NULL
) 
--
-- Zrzut danych tabeli `Hero_1`
--

INSERT INTO `Hero_1` (`ID`, `Nazwa`, `Kolor`, `Cena`, `Monety`, `Atak`, `Zdrowie`, `Inne_zdolnosci`, `Zdjecie`) VALUES
(1, 'Ork Grabiezca', 'Zielony', 3, 0, 2, 0, NULL, NULL),
(2, 'Wilkor', 'Zielony', 5, 0, 3, 0, NULL, NULL),
(3, 'Wilczy Szaman', 'Zielony', 2, 0, 2, 0, '+1 ataku za kazda inna zielona karte', NULL),
(4, 'Wilczy Szaman', 'Zielony', 2, 0, 2, 0, '+1 ataku za kazda inna zielona karte', NULL),
(5, 'Cron', 'Zielony', 6, 0, 5, 0, NULL, NULL),
(6, 'Torgen', 'Zielony', 5, 0, 4, 0, 'Wybrany przeciwnik odrzuca karte', NULL),
(7, 'Broelyn', 'Zielony', 4, 2, 0, 0, NULL, NULL),
(8, 'Ork Grabiezca', 'Zielony', 3, 0, 2, 0, NULL, NULL),
(9, 'Klatwa elfow', 'Zielony', 3, 0, 6, 0, 'Wybrany przeciwnik odrzuca karte', NULL),
(10, 'Klatwa elfow', 'Zielony', 3, 0, 6, 0, 'Wybrany przeciwnik odrzuca karte', NULL),
(11, 'Dary natury', 'Zielony', 4, 4, 0, 0, NULL, NULL),
(12, 'Forma Wilka', 'Zielony', 5, 0, 8, 0, 'Wybrany przeciwnik odrzuca karte', NULL),
(13, 'Iskra', 'Zielony', 1, 0, 3, 0, 'Wybrany przeciwnik odrzuca karte', NULL),
(14, 'Iskra', 'Zielony', 1, 0, 3, 0, 'Wybrany przeciwnik odrzuca karte', NULL),
(15, 'Mroczna Energia', 'Czerwony', 4, 0, 7, 0, NULL, NULL),
(16, 'Wyssanie zycia', 'Czerwony', 6, 0, 8, 0, 'Odrzuc karte z reki lub ze stosu kart odrzuconych', NULL),
(17, 'Rayla', 'Czerwony', 4, 0, 3, 0, NULL, NULL),
(18, 'Mroczna Nagroda', 'Czerwony', 5, 3, 0, 0, 'Odrzuc karte z reki lub ze stosu kart odrzuconych', NULL),
(19, 'Zgnilizna', 'Czerwony', 3, 0, 4, 0, 'Odrzuc karte z reki lub ze stosu kart odrzuconych', NULL),
(20, 'Zgnilizna', 'Czerwony', 3, 0, 4, 0, 'Odrzuc karte z reki lub ze stosu kart odrzuconych', NULL),
(21, 'Wplywy', 'Czerwony', 2, 3, 0, 0, NULL, NULL),
(22, 'Wplywy', 'Czerwony', 2, 3, 0, 0, NULL, NULL),
(23, 'Wplywy', 'Czerwony', 2, 3, 0, 0, NULL, NULL),
(24, 'Kultysta smierci', 'Czerwony', 2, 2, 0, 0, NULL, NULL),
(25, 'Kultysta smierci', 'Czerwony', 2, 2, 0, 0, NULL, NULL),
(26, 'Dotyk smierci', 'Czerwony', 1, 2, 0, 0, 'Odrzuc karte z reki lub ze stosu kart odrzuconych', NULL),
(27, 'Dotyk smierci', 'Czerwony', 1, 2, 0, 0, 'Odrzuc karte z reki lub ze stosu kart odrzuconych', NULL),
(28, 'Dotyk smierci', 'Czerwony', 1, 2, 0, 0, 'Odrzuc karte z reki lub ze stosu kart odrzuconych', NULL),
(29, 'Parov', 'Niebieski', 5, 0, 3, 0, NULL, NULL),
(30, 'Gozba smierci', 'Niebieski', 3, 0, 1, 0, 'Dobierz karte', NULL),
(31, 'Bomba Ogniowa', 'Niebieski', 8, 0, 8, 0, 'Dobierz karte', NULL),
(32, 'Zlecenie zabojstwa', 'Niebieski', 4, 0, 7, 0, 'Dobierz karte', NULL),
(33, 'Myros', 'Niebieski', 5, 3, 0, 0, NULL, NULL),
(34, 'Zastraczenie', 'Niebieski', 2, 0, 5, 0, NULL, NULL),
(35, 'Zastraczenie', 'Niebieski', 2, 0, 5, 0, NULL, NULL),
(36, 'Zyski', 'Niebieski', 1, 2, 0, 0, NULL, NULL),
(37, 'Zyski', 'Niebieski', 1, 2, 0, 0, NULL, NULL),
(38, 'Zyski', 'Niebieski', 1, 2, 0, 0, NULL, NULL),
(39, 'Łapówka', 'Niebieski', 3, 3, 0, 0, NULL, NULL),
(40, 'Łapówka', 'Niebieski', 3, 3, 0, 0, NULL, NULL),
(41, 'Łapówka', 'Niebieski', 3, 3, 0, 0, NULL, NULL),
(42, 'Zwolanie wojsk', 'Zloty', 4, 0, 5, 5, NULL, NULL),
(43, 'Cristov', 'Zloty', 5, 0, 2, 3, NULL, NULL),
(44, 'Arkus', 'Zloty', 8, 0, 5, 0, 'Dobierz karte', NULL),
(45, 'Dominacja', 'Zloty', 7, 0, 6, 6, 'Dobierz karte', NULL),
(46, 'Dowodzenie', 'Zloty', 5, 2, 3, 4, 'Dobierz karte', NULL),
(47, 'Slowo Mocy', 'Zloty', 6, 0, 0, 0, 'Dobierz 2 karty', NULL),
(48, 'Zwarte Szeregi', 'Zloty', 3, 0, 5, 0, NULL, NULL),
(49, 'Opodatkowanie', 'Zloty', 1, 2, 0, 0, NULL, NULL),
(50, 'Opodatkowanie', 'Zloty', 1, 2, 0, 0, NULL, NULL),
(51, 'Opodatkowanie', 'Zloty', 1, 2, 0, 0, NULL, NULL),
(52, 'Werbunek', 'Zloty', 2, 2, 0, 3, NULL, NULL),
(53, 'Werbunek', 'Zloty', 2, 2, 0, 3, NULL, NULL),
(54, 'Werbunek', 'Zloty', 2, 2, 0, 3, NULL, NULL);



