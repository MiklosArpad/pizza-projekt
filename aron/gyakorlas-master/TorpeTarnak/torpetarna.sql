-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2019. Okt 18. 11:57
-- Kiszolgáló verziója: 10.1.34-MariaDB
-- PHP verzió: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `torpetarna`
--
CREATE DATABASE IF NOT EXISTS `torpetarna` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `torpetarna`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kihol`
--

CREATE TABLE `kihol` (
  `torpe_id` int(11) NOT NULL,
  `tarna_id` int(11) NOT NULL,
  `kitermelt_mennyiseg` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kihol`
--

INSERT INTO `kihol` (`torpe_id`, `tarna_id`, `kitermelt_mennyiseg`) VALUES
(1, 4, 78),
(1, 5, 139),
(1, 7, 141),
(1, 9, 102),
(2, 2, 58),
(2, 5, 66),
(3, 3, 91),
(3, 4, 98),
(3, 5, 139),
(3, 9, 96),
(4, 1, 114),
(4, 3, 135),
(4, 5, 54),
(4, 6, 140),
(4, 9, 95),
(5, 1, 70),
(5, 2, 71),
(5, 5, 103),
(5, 10, 117),
(6, 2, 127),
(6, 4, 90),
(7, 2, 102),
(7, 3, 74),
(7, 4, 140),
(7, 8, 120),
(8, 2, 105),
(8, 3, 118),
(8, 4, 88),
(8, 6, 133),
(8, 9, 140),
(9, 1, 117),
(9, 6, 52),
(9, 7, 139),
(9, 8, 118),
(10, 2, 119),
(10, 8, 79),
(11, 2, 108),
(11, 5, 105),
(12, 4, 139),
(12, 5, 122),
(12, 7, 72),
(13, 3, 94),
(13, 4, 78),
(13, 5, 135),
(13, 6, 83),
(13, 8, 74),
(13, 9, 74),
(13, 10, 131),
(14, 6, 63),
(15, 7, 58),
(16, 9, 101),
(17, 4, 123),
(18, 4, 109),
(19, 3, 111),
(19, 4, 111),
(19, 5, 66),
(19, 10, 88),
(20, 1, 55),
(20, 2, 71),
(20, 7, 80),
(20, 8, 102),
(21, 1, 77),
(21, 2, 86),
(21, 3, 78),
(22, 3, 143),
(22, 4, 98),
(22, 6, 138),
(22, 7, 64),
(22, 8, 56),
(22, 9, 57),
(23, 1, 54),
(23, 7, 145),
(23, 9, 83),
(24, 1, 76),
(24, 7, 137),
(25, 3, 111),
(25, 4, 142),
(25, 5, 86),
(25, 6, 102),
(25, 9, 149),
(26, 1, 128),
(26, 2, 75),
(26, 5, 107),
(26, 7, 104),
(27, 2, 103),
(27, 5, 55),
(27, 6, 73),
(27, 7, 59),
(27, 9, 92),
(28, 1, 91),
(28, 2, 95),
(28, 5, 97),
(28, 6, 64),
(28, 8, 83),
(28, 9, 148),
(29, 1, 122),
(29, 2, 90),
(29, 10, 142),
(30, 1, 51),
(30, 2, 137),
(30, 5, 96),
(30, 6, 148),
(30, 9, 120),
(30, 10, 110),
(31, 1, 113),
(31, 2, 111),
(31, 4, 142),
(31, 5, 79),
(31, 7, 96),
(31, 9, 103),
(32, 4, 83),
(32, 8, 70),
(32, 9, 54),
(33, 8, 67),
(33, 9, 67),
(34, 1, 134),
(34, 3, 115),
(34, 4, 134),
(34, 5, 105),
(34, 7, 71),
(34, 8, 104),
(34, 9, 120),
(35, 9, 60),
(36, 1, 148),
(36, 3, 150),
(36, 4, 142),
(36, 7, 150),
(36, 8, 52),
(37, 3, 145),
(37, 6, 95),
(37, 7, 77),
(37, 8, 139),
(37, 9, 148),
(37, 10, 109),
(38, 2, 74),
(38, 3, 61),
(38, 10, 99),
(39, 6, 121),
(40, 3, 85),
(40, 5, 96),
(40, 7, 149),
(40, 8, 140),
(40, 10, 66),
(41, 1, 86),
(41, 2, 68),
(41, 6, 116),
(42, 1, 104),
(42, 3, 68),
(42, 7, 142),
(42, 8, 120),
(43, 1, 65),
(43, 4, 89),
(43, 6, 110),
(43, 8, 85),
(44, 7, 85),
(44, 9, 72),
(44, 10, 127),
(46, 2, 113),
(46, 3, 100),
(46, 6, 62),
(46, 9, 75),
(47, 2, 121),
(47, 4, 107),
(47, 7, 135),
(48, 5, 67),
(48, 10, 70);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kozetek`
--

CREATE TABLE `kozetek` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kozetek`
--

INSERT INTO `kozetek` (`id`, `nev`) VALUES
(1, 'arany'),
(2, 'vas'),
(3, 'ezüst'),
(4, 'réz');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tarnak`
--

CREATE TABLE `tarnak` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `kozet_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `tarnak`
--

INSERT INTO `tarnak` (`id`, `nev`, `kozet_id`) VALUES
(1, 'Khaldarim', 1),
(2, 'Dhingrum', 3),
(3, 'Gir Lodur', 1),
(4, 'Vonkuldor', 2),
(5, 'Dheghkohldur', 4),
(6, 'Khighborim', 3),
(7, 'Moldirth', 1),
(8, 'Narladur', 3),
(9, 'Khig Maldir', 2),
(10, 'Thir Tharum', 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `torpek`
--

CREATE TABLE `torpek` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `klan` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `nem` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `suly` int(11) DEFAULT NULL,
  `magassag` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `torpek`
--

INSERT INTO `torpek` (`id`, `nev`, `klan`, `nem`, `suly`, `magassag`) VALUES
(1, 'Krond Tard', 'TüzesKohó', 'férfi', 54, 137),
(2, 'Bal Dorf', 'Rézfejű', 'férfi', 67, 133),
(3, 'Hardi Beronn', 'NyirkosTárna', 'férfi', 65, 139),
(4, 'Darrond Anda', 'JegesSzakáll', 'férfi', 61, 135),
(5, 'Hardd Gráid', 'TüzesKohó', 'férfi', 60, 136),
(6, 'Azul Sai', 'Kopaszok', 'férfi', 65, 138),
(7, 'Tardi Grádi', 'Rézfejű', 'férfi', 59, 133),
(8, 'Gor Morf', 'Kopaszok', 'férfi', 54, 135),
(9, 'Gorrond Akhac', 'HarcosNóta', 'férfi', 63, 135),
(10, 'Sarrad Loopa', 'SötétÜllő', 'férfi', 64, 134),
(11, 'For Azgan', 'JegesSzakáll', 'férfi', 54, 133),
(12, 'Sóg Tars', 'SötétÜllő', 'férfi', 62, 135),
(13, 'Terrof Erag', 'SötétÜllő', 'nő', 62, 134),
(14, 'For Sear', 'Kopaszok', 'nő', 62, 133),
(15, 'Nallid Surroc', 'MélyPokol', 'nő', 60, 134),
(16, 'Trad Sure', 'SötétÜllő', 'nő', 60, 138),
(17, 'Terrin Orsan', 'Vasököl', 'nő', 60, 136),
(18, 'Dardd Luend', 'Vasököl', 'nő', 62, 134),
(19, 'Ymed Surrag', 'Vasököl', 'nő', 57, 135),
(20, 'Gor Rian', 'TüzesKohó', 'nő', 62, 134),
(21, 'Lok Zian', 'Acélkezűek', 'nő', 67, 137),
(22, 'Azul Radda', 'Acélkezűek', 'nő', 66, 133),
(23, 'Ranad Sadda', 'HarcosNóta', 'nő', 54, 136),
(24, 'Adgal Arroc', 'HarcosNóta', 'nő', 61, 133),
(25, 'Harrof Fard', 'SötétÜllő', 'férfi', 62, 133),
(26, 'Azul Dagg', 'NyirkosTárna', 'férfi', 54, 135),
(27, 'Nallid Loopa', 'HarcosNóta', 'férfi', 63, 133),
(28, 'Ymed Geronn', 'JegesSzakáll', 'férfi', 56, 135),
(29, 'Bal Fars', 'MélyPokol', 'férfi', 62, 137),
(30, 'Sarsi Duri', 'Vasököl', 'férfi', 64, 134),
(31, 'Sarraain Ramoggad', 'Rézfejű', 'férfi', 60, 134),
(32, 'Ranad Falgorf', 'Rézfejű', 'férfi', 64, 136),
(33, 'Nal Traainn', 'JegesSzakáll', 'férfi', 61, 136),
(34, 'Harrin Daggi', 'Vasököl', 'férfi', 57, 135),
(35, 'Thardd Daggal', 'SötétÜllő', 'férfi', 62, 135),
(36, 'Sardi Farf', 'MélyPokol', 'férfi', 68, 133),
(37, 'Darrad Melf', 'Acélkezűek', 'nő', 68, 134),
(38, 'Hardi Arrag', 'Acélkezűek', 'nő', 59, 137),
(39, 'Adgal Zuen', 'SötétÜllő', 'nő', 62, 132),
(40, 'Nal Ardta', 'Acélkezűek', 'nő', 65, 133),
(41, 'Sóg Rian', 'Rézfejű', 'nő', 63, 134),
(42, 'Adgallid Erak', 'MélyPokol', 'nő', 66, 137),
(43, 'Krond Saddare', 'HarcosNóta', 'nő', 58, 133),
(44, 'Sarsi Sadda', 'SötétÜllő', 'nő', 59, 136),
(45, 'Torraain Luen', 'JegesSzakáll', 'nő', 66, 137),
(46, 'Ymed Surring', 'HarcosNóta', 'nő', 65, 134),
(47, 'Sarrin Sare', 'JegesSzakáll', 'nő', 61, 138),
(48, 'Fród Sear', 'Acélkezűek', 'nő', 65, 136),
(49, 'Trad Morf', 'Vasököl', 'férfi', 69, 136);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `kihol`
--
ALTER TABLE `kihol`
  ADD PRIMARY KEY (`torpe_id`,`tarna_id`),
  ADD KEY `tarna_id` (`tarna_id`);

--
-- A tábla indexei `kozetek`
--
ALTER TABLE `kozetek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `tarnak`
--
ALTER TABLE `tarnak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kozet_id` (`kozet_id`);

--
-- A tábla indexei `torpek`
--
ALTER TABLE `torpek`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `kozetek`
--
ALTER TABLE `kozetek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `tarnak`
--
ALTER TABLE `tarnak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `torpek`
--
ALTER TABLE `torpek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `kihol`
--
ALTER TABLE `kihol`
  ADD CONSTRAINT `kihol_ibfk_1` FOREIGN KEY (`torpe_id`) REFERENCES `torpek` (`id`),
  ADD CONSTRAINT `kihol_ibfk_2` FOREIGN KEY (`tarna_id`) REFERENCES `tarnak` (`id`);

--
-- Megkötések a táblához `tarnak`
--
ALTER TABLE `tarnak`
  ADD CONSTRAINT `tarnak_ibfk_1` FOREIGN KEY (`kozet_id`) REFERENCES `kozetek` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;