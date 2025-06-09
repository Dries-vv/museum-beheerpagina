-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 09 jun 2025 om 17:02
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `museum`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dries_qr_codes`
--

CREATE TABLE `dries_qr_codes` (
  `id` char(36) NOT NULL,
  `title` varchar(500) NOT NULL,
  `content` text NOT NULL,
  `tijdsperk` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `dries_qr_codes`
--

INSERT INTO `dries_qr_codes` (`id`, `title`, `content`, `tijdsperk`, `image`, `createdAt`, `updatedAt`) VALUES
('03660758-699d-4f3c-bbf9-2d81206a96ec', 'Van Ghogh', '<p>Heyy test aaa</p>', 'Modernetijd', 'https://api.npokennis.nl/thumbs/i/9000/mod_media_image/9098.w599.e36782b.f80b7c6.jpg', '2025-03-31 14:41:40', '2025-04-29 07:21:58'),
('35b955ce-082e-4b1c-8cc8-f80e4af1f360', 'De schreeuw', '<p>Een bekend schilderij gemaakt in 1980</p>', 'Prehistorie', 'https://upload.wikimedia.org/wikipedia/commons/c/c5/Edvard_Munch%2C_1893%2C_The_Scream%2C_oil%2C_tempera_and_pastel_on_cardboard%2C_91_x_73_cm%2C_National_Gallery_of_Norway.jpg', '2025-04-01 10:25:53', '2025-04-01 10:25:53'),
('3654ad63-8731-4889-a59d-f35ad8b9d466', 'Monalisa', '<p>zeer bekend ee</p>', 'Middeleuwen', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg/640px-Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg', '2025-03-31 12:05:07', '2025-03-31 13:57:35'),
('63d11282-4135-4bb0-aff3-f30c087901a0', 'Van Ghogh', '<p>Heyy test aaa</p>', 'Modernetijd', 'https://api.npokennis.nl/thumbs/i/9000/mod_media_image/9098.w599.e36782b.f80b7c6.jpg', '2025-04-29 08:43:13', '2025-04-29 08:43:13');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dries_users`
--

CREATE TABLE `dries_users` (
  `id` char(36) NOT NULL,
  `firstname` varchar(55) NOT NULL,
  `lastname` varchar(55) NOT NULL,
  `username` varchar(55) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `dries_users`
--

INSERT INTO `dries_users` (`id`, `firstname`, `lastname`, `username`, `password`, `createdAt`, `updatedAt`) VALUES
('3e602ce4-0e28-11f0-b948-c84bd62df43c', 'Dries', 'Vanvelthoven', 'Dries.vv', 'ww123', '2025-03-31 12:04:05', '2025-06-09 15:01:38');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `dries_qr_codes`
--
ALTER TABLE `dries_qr_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexen voor tabel `dries_users`
--
ALTER TABLE `dries_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
