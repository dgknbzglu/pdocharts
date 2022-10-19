-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 19 Eki 2022, 15:39:13
-- Sunucu sürümü: 10.3.36-MariaDB-cll-lve
-- PHP Sürümü: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `dgknbzgl_65498218951`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `danisman`
--

CREATE TABLE `danisman` (
  `id` int(10) UNSIGNED NOT NULL,
  `ad` varchar(35) NOT NULL,
  `satis` int(11) DEFAULT 0,
  `renk` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `danisman`
--

INSERT INTO `danisman` (`id`, `ad`, `satis`, `renk`) VALUES
(1, 'Selin', 300, '#ff6384'),
(2, 'Yiğit', 50, '#36a2eb'),
(3, 'Buse', 100, '#ffcd56');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `danisman`
--
ALTER TABLE `danisman`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `danisman`
--
ALTER TABLE `danisman`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
