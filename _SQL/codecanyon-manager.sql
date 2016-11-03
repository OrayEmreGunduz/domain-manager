-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 03 Kas 2016, 16:14:44
-- Sunucu sürümü: 10.1.16-MariaDB
-- PHP Sürümü: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `codecanyon-manager`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `domain_list`
--

CREATE TABLE `domain_list` (
  `domain_id` int(11) NOT NULL,
  `domain_link` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `domain_ext` varchar(10) COLLATE utf8_turkish_ci NOT NULL,
  `domain_company` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `domain_ns1` varchar(225) COLLATE utf8_turkish_ci NOT NULL,
  `domain_ns2` varchar(225) COLLATE utf8_turkish_ci NOT NULL,
  `domain_ns3` varchar(225) COLLATE utf8_turkish_ci NOT NULL,
  `domain_ip1` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `domain_ip2` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `domain_ip3` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `domain_update_date` int(11) NOT NULL,
  `domain_expiration_date` int(11) NOT NULL,
  `domain_creation_date` int(11) NOT NULL,
  `domain_content` text COLLATE utf8_turkish_ci NOT NULL,
  `domain_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `registered_list`
--

CREATE TABLE `registered_list` (
  `reg_id` int(11) NOT NULL,
  `reg_title` varchar(250) NOT NULL,
  `reg_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_surname` varchar(100) NOT NULL,
  `user_mail` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_surname`, `user_mail`, `user_pass`) VALUES
(1, 'Admin', 'Demo', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `domain_list`
--
ALTER TABLE `domain_list`
  ADD UNIQUE KEY `domain_id` (`domain_id`);

--
-- Tablo için indeksler `registered_list`
--
ALTER TABLE `registered_list`
  ADD UNIQUE KEY `reg_id` (`reg_id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `domain_list`
--
ALTER TABLE `domain_list`
  MODIFY `domain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;
--
-- Tablo için AUTO_INCREMENT değeri `registered_list`
--
ALTER TABLE `registered_list`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
