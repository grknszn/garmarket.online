-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 04 Haz 2020, 20:09:57
-- Sunucu sürümü: 10.1.37-MariaDB
-- PHP Sürümü: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ecomphp`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
(1, 'Vivek', 'Vengala', 'gsuzen@gmail.com', '123');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(3, 'GÄ±da'),
(4, 'GÄ±da DÄ±ÅŸÄ±');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `deneme`
--

CREATE TABLE `deneme` (
  `name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `quant` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `total` varchar(11) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `item_code` varchar(250) NOT NULL,
  `item_description` text NOT NULL,
  `item_price` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `item_code`, `item_description`, `item_price`) VALUES
(0, 'portakal', '11', 'mfmfmf', '2'),
(0, 'rrr', '34', 'rvtftgv', '3'),
(0, 'fefefe', '1', '2crrfr', '22'),
(0, 'ffrf', 'vrfv', 'efrfr', 'de');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `pquantity` varchar(255) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productprice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `orderitems`
--

INSERT INTO `orderitems` (`id`, `pid`, `pquantity`, `orderid`, `productprice`) VALUES
(1, 19, '5', 1, '16'),
(2, 19, '5', 2, '16'),
(3, 1, '2', 2, '20990'),
(4, 1, '1', 3, '20990'),
(5, 20, '10', 3, '99'),
(6, 18, '1', 4, '12890'),
(7, 21, '1', 4, '75'),
(8, 2, '1', 5, '7590'),
(9, 19, '10', 5, '16'),
(10, 1, '1', 6, '20990'),
(11, 18, '1', 6, '12890'),
(12, 1, '1', 7, '20990'),
(13, 2, '1', 7, '7590'),
(14, 2, '1', 8, '7590'),
(15, 22, '1', 8, '18,00â‚º'),
(16, 22, '1', 9, '18,00â‚º'),
(17, 1, '1', 10, '20990'),
(18, 21, '1', 10, '75'),
(19, 19, '1', 11, '16'),
(20, 21, '1', 11, '75'),
(21, 22, '1', 12, '18,00â‚º'),
(22, 19, '1', 12, '16'),
(23, 22, '1', 14, '18,00â‚º'),
(24, 23, '1', 14, '8,50'),
(25, 24, '1', 14, '4,90'),
(26, 22, '1', 15, '18,00'),
(27, 23, '1', 15, '8,50'),
(28, 24, '1', 15, '4,90'),
(29, 23, '1', 16, '8,50'),
(30, 22, '1', 16, '18,00'),
(31, 22, '1', 17, '18,00'),
(32, 23, '1', 17, '8,50'),
(33, 23, '1', 18, '8'),
(34, 23, '1', 19, '8'),
(35, 22, '1', 20, '18'),
(36, 23, '1', 20, '8'),
(37, 24, '1', 20, '4'),
(38, 23, '1', 21, '8.50'),
(39, 22, '1', 21, '18.00'),
(40, 24, '1', 21, '4.50'),
(41, 22, '1', 22, '18.00'),
(42, 23, '1', 22, '8.50'),
(43, 24, '1', 22, '4.50'),
(44, 29, '1', 23, '5.00'),
(45, 29, '1', 24, '5.00'),
(46, 28, '1', 24, '18,00'),
(47, 28, '1', 25, '18,00'),
(48, 28, '1', 26, '18,00'),
(49, 29, '1', 26, '5.00'),
(50, 29, '1', 28, '5.00'),
(51, 28, '1', 28, '18,00'),
(52, 29, '200', 29, '5.00'),
(53, 28, '1', 29, '18,00'),
(54, 30, '1', 30, '9.00'),
(55, 31, '1', 30, '1.25'),
(56, 28, '2', 30, '18,00'),
(57, 30, '3', 33, '9.00'),
(58, 29, '4', 33, '5.00'),
(59, 31, '1', 33, '1.25'),
(60, 28, '1', 34, '18,00'),
(61, 29, '2', 34, '5.00'),
(62, 30, '1', 34, '9.00'),
(63, 31, '1', 34, '1.25'),
(64, 30, '1', 35, '9.00'),
(65, 28, '3', 35, '18,00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `totalprice` varchar(255) NOT NULL,
  `orderstatus` varchar(255) NOT NULL,
  `paymentmode` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `orders`
--

INSERT INTO `orders` (`id`, `uid`, `totalprice`, `orderstatus`, `paymentmode`, `timestamp`) VALUES
(1, 2, '80', 'Order Placed', 'cod', '2017-10-28 12:22:36'),
(2, 2, '42060', 'Order Placed', 'cod', '2017-10-28 12:27:16'),
(3, 6, '21980', 'Cancelled', 'cod', '2017-10-28 14:25:23'),
(4, 6, '12965', 'In Progress', 'cod', '2017-10-28 14:28:29'),
(5, 6, '7750', 'In Progress', 'cod', '2017-11-06 19:40:34'),
(6, 7, '33880', 'Order Placed', 'cod', '2020-04-24 12:16:18'),
(7, 7, '28580', 'Order Placed', 'cod', '2020-04-24 12:23:25'),
(8, 7, '7608', 'Order Placed', 'cod', '2020-04-24 12:30:37'),
(9, 7, '18', 'Order Placed', 'cod', '2020-04-24 12:31:45'),
(10, 7, '21065', 'Order Placed', 'cod', '2020-04-24 14:23:17'),
(11, 7, '91', 'Order Placed', 'cod', '2020-04-24 14:24:57'),
(12, 7, '34', 'Order Placed', 'cod', '2020-04-24 15:37:12'),
(13, 8, '0', 'Cancelled', 'cod', '2020-04-24 17:28:51'),
(14, 8, '30', 'Order Placed', 'cod', '2020-04-24 17:29:27'),
(15, 8, '30', 'Delivered', 'cod', '2020-04-24 18:29:13'),
(16, 8, '26', 'Order Placed', 'cod', '2020-04-24 20:41:57'),
(17, 8, '26', 'Order Placed', 'cod', '2020-04-25 15:39:35'),
(18, 8, '8', 'Order Placed', 'on', '2020-04-25 15:48:34'),
(19, 8, '8', 'In Progress', 'cod', '2020-04-25 15:49:55'),
(20, 8, '30', 'Order Placed', 'cod', '2020-04-25 15:58:20'),
(21, 9, '31', 'Order Placed', 'cod', '2020-04-25 17:57:19'),
(22, 10, '31', 'Yolda', 'cod', '2020-04-25 19:37:14'),
(23, 8, '5', 'HazÄ±rlanÄ±yor', 'cod', '2020-05-02 13:16:33'),
(24, 8, '23', 'Order Placed', 'cod', '2020-05-02 14:49:39'),
(25, 8, '18', 'Order Placed', 'cod', '2020-05-02 14:54:20'),
(26, 8, '23', 'Order Placed', 'cod', '2020-05-02 14:57:19'),
(27, 8, '0', 'Order Placed', 'Nakit', '2020-05-02 14:58:46'),
(28, 8, '23', 'SipariÅŸ OluÅŸturuldu', 'Nakit', '2020-05-02 15:04:11'),
(29, 8, '1018', 'SipariÅŸ OluÅŸturuldu', 'on', '2020-05-02 16:43:32'),
(30, 8, '46.25', 'SipariÅŸ OluÅŸturuldu', 'Nakit', '2020-05-02 17:34:24'),
(31, 8, '0', 'SipariÅŸ OluÅŸturuldu', 'on', '2020-05-02 17:34:51'),
(32, 8, '0', 'SipariÅŸ OluÅŸturuldu', 'Kredi', '2020-05-02 17:36:23'),
(33, 8, '48.25', 'SipariÅŸ OluÅŸturuldu', 'Nakit', '2020-05-02 17:56:38'),
(34, 8, '38.25', 'SipariÅŸ OluÅŸturuldu', 'Nakit', '2020-05-02 18:05:28'),
(35, 8, '63', 'SipariÅŸ OluÅŸturuldu', 'Nakit', '2020-05-02 20:00:21');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ordertracking`
--

CREATE TABLE `ordertracking` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `ordertracking`
--

INSERT INTO `ordertracking` (`id`, `orderid`, `status`, `message`, `timestamp`) VALUES
(3, 3, 'Cancelled', ' I don&#39;t want this item now.', '2017-10-28 17:54:18'),
(5, 4, 'In Progress', ' Order is in Progress', '2017-10-30 13:31:08'),
(6, 5, 'In Progress', ' Order is in Progress', '2017-11-06 19:45:11'),
(7, 15, 'In Progress', ' ÃœrÃ¼nleriniz hazÄ±rlanÄ±yor', '2020-04-24 18:33:08'),
(8, 15, 'Delivered', ' ', '2020-04-24 18:38:13'),
(9, 19, 'In Progress', ' ', '2020-04-25 15:54:46'),
(10, 19, 'In Progress', ' ', '2020-04-25 15:54:56'),
(11, 23, 'In Progress', ' ', '2020-05-02 14:04:39'),
(12, 23, 'In Progress', ' ', '2020-05-02 14:04:50'),
(13, 23, '', ' dvfvdfv', '2020-05-02 14:07:39'),
(14, 22, 'Dispatched', ' fvdfv', '2020-05-02 14:07:50'),
(15, 23, 'Delivered', ' ', '2020-05-02 14:08:15'),
(16, 23, 'Teslim Edildi', ' ', '2020-05-02 14:12:21'),
(17, 22, 'Yolda', ' ', '2020-05-02 14:12:26'),
(18, 13, 'Cancelled', ' tgtgt', '2020-05-02 14:20:09'),
(19, 23, 'HazÄ±rlanÄ±yor', ' ', '2020-05-02 14:23:02');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `catid` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `name`, `catid`, `price`, `thumb`, `description`) VALUES
(28, 'Muz ', 3, '18.00', 'uploads/muz-ithal.jpg', ''),
(29, 'Coca-Cola 1,5 LT.', 3, '5.00', 'uploads/coca-cola.jpg', ''),
(30, 'TÃ¼rk Kahvesi', 3, '9.00', 'uploads/kahve.jpeg', ''),
(31, 'Ekmek', 3, '1.25', 'uploads/ekmek.jpg', ''),
(34, 'Deneme', 3, '15.00', 'uploads/9c759aefa6e32c92072634ed7a049ddea49449b8.jpg', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `review` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `reviews`
--

INSERT INTO `reviews` (`id`, `pid`, `uid`, `review`, `timestamp`) VALUES
(1, 1, 6, 'It&#39;s an awesome Product...', '2017-10-30 15:18:42');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `timestamp`) VALUES
(1, 'vivek@codingcyber.com', '26e0eca228b42a520565415246513c0d', '2017-10-27 12:05:10'),
(2, 'vivek1@codingcyber.com', '$2y$10$cMzHNUFGKma96MywHmVMbekuJZb1tSNLsevHzLnSRbcRicQVhEC6a', '2017-10-27 12:24:25'),
(6, 'vivek2@codingcyber.com', '$2y$10$apI7l.1wAS5pgbG4YfMrN.jNd5T3XmhecFuSV2M6UNdoUHImPXNxm', '2017-10-27 12:28:20'),
(7, 'derya@gmail.com', '$2y$10$LnKwBHk73TAB9M2dD1cKz.ytpVgURV/D3bLFVjkEsNL2mpdNLtZ5e', '2020-04-24 12:16:02'),
(8, 'ezgi@gmail.com', '$2y$10$0erjWlH1i0bu3QZ5dNWeCuuwH1BiLuyZRUkEm9LmUdG.Dph.nYrie', '2020-04-24 17:28:33'),
(9, 'defne@gmail.com', '$2y$10$Uw5RPO21gs9ZCijvElHOA.copm2xhPlYDFy9XPyZgu0q45K30F0kW', '2020-04-25 17:55:10'),
(10, '', '$2y$10$SQwefH.JVL2q61gwIlPND.wehpe6ORyzuygYhFljvknb6j8PhjPOe', '2020-04-25 19:26:11');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `usersmeta`
--

CREATE TABLE `usersmeta` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `usersmeta`
--

INSERT INTO `usersmeta` (`id`, `uid`, `firstname`, `lastname`, `company`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `mobile`) VALUES
(1, 2, 'Vivek', 'V', 'Coding Cyber', 'Hyd', 'Hyd', 'Hyderabad', 'Telangana', '', '500060', ''),
(2, 6, 'Vivek', 'Vengala', 'Coding Cyber', '#201', 'DSNR', 'Hyderabad', 'Telangana', '', '500060', '9876543211'),
(3, 7, 'Gurkan', 'Suzen', 'Migros', 'Edirne', 'Merkez', 'edirne', '2000', '', '22030', '05445767012'),
(4, 8, 'Ezgi', 'Suzen', '', 'Sukrupasa Mah. Abdi Ä°pekÃ§i Cd. A Blok Kat:7 Daire:23', 'Merkez', '', '', '', '', '05445767012'),
(5, 9, 'Defne', 'Suzen', 'Migros', 'Sukrupasa Mah. Abdi Ä°pekÃ§i Cd. A Blok Kat:7 Daire:23', 'Yasam Evleri', 'Edirne', 'Edirne', 'AX', '22030', '05445767012'),
(6, 10, 'Gurkan', 'Suzen', '', 'Edirne', 'Merkez', '', '', 'AX', '', '05445767012');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `wishlist`
--

INSERT INTO `wishlist` (`id`, `pid`, `uid`, `timestamp`) VALUES
(1, 1, 6, '2017-10-30 16:36:45'),
(2, 2, 6, '2017-10-30 16:38:07'),
(3, 21, 6, '2017-11-06 19:42:35');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ordertracking`
--
ALTER TABLE `ordertracking`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Tablo için indeksler `usersmeta`
--
ALTER TABLE `usersmeta`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Tablo için AUTO_INCREMENT değeri `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Tablo için AUTO_INCREMENT değeri `ordertracking`
--
ALTER TABLE `ordertracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Tablo için AUTO_INCREMENT değeri `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `usersmeta`
--
ALTER TABLE `usersmeta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
