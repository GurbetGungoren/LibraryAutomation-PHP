-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 27 Ara 2021, 10:20:02
-- Sunucu sürümü: 10.4.13-MariaDB
-- PHP Sürümü: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kutuphane`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gidenkitaplar`
--

CREATE TABLE `gidenkitaplar` (
  `id` int(70) NOT NULL,
  `ogrencinumarasi` int(100) NOT NULL,
  `verilistarihi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `gidenkitaplar`
--

INSERT INTO `gidenkitaplar` (`id`, `ogrencinumarasi`, `verilistarihi`) VALUES
(1020, 44, '30.12.2020');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitaplar`
--

CREATE TABLE `kitaplar` (
  `id` int(15) NOT NULL,
  `kategori` varchar(25) NOT NULL,
  `isim` varchar(100) NOT NULL,
  `adet` int(11) NOT NULL,
  `adres` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `kitaplar`
--

INSERT INTO `kitaplar` (`id`, `kategori`, `isim`, `adet`, `adres`) VALUES
(1000, 'Edebiyat', 'Kaygının Anlamı', 3, '130-1'),
(1010, 'Edebiyat', 'Cesur Yeni Dünya', 2, '130-2'),
(1020, 'Edebiyat', 'Fareler ve İnsanlar', 4, '130-3'),
(1030, 'Edebiyat', 'İstanbuldan Sayfalar', 3, '130-4'),
(1040, 'Psikoloji', 'orijinaller', 5, '130-5'),
(1060, 'Edebiyat', 'şeker ', 8, '130-8');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `id` int(70) NOT NULL,
  `adminyetki` int(5) NOT NULL,
  `kullaniciadi` int(100) NOT NULL,
  `sifre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `adminyetki`, `kullaniciadi`, `sifre`) VALUES
(3, 1, 180260044, '321');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `gidenkitaplar`
--
ALTER TABLE `gidenkitaplar`
  ADD UNIQUE KEY `ogrencinumarasi` (`ogrencinumarasi`);

--
-- Tablo için indeksler `kitaplar`
--
ALTER TABLE `kitaplar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `isim` (`isim`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `id` int(70) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
