-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 06 Haz 2023, 16:15:45
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `db2`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `notdefteri`
--

CREATE TABLE `notdefteri` (
  `id` int(11) NOT NULL,
  `baslik` varchar(50) NOT NULL,
  `icerik` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `notdefteri`
--

INSERT INTO `notdefteri` (`id`, `baslik`, `icerik`) VALUES
(5, '', 'x'),
(6, '', 'y'),
(7, '', 'trx'),
(8, '0', 'a'),
(9, '0', 'xx'),
(10, '0', 't'),
(11, 't1x', 't1x');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `notdefteri`
--
ALTER TABLE `notdefteri`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `notdefteri`
--
ALTER TABLE `notdefteri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
