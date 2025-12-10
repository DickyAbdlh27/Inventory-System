-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Des 2025 pada 13.37
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventaris_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventaris`
--

CREATE TABLE `inventaris` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'Rifqi', '$2y$10$3bKEOYYMH3Nyartc.o/e8u88bmrWQDpqbJ04cpoGShyFk4SU9QuvO', 'admin'),
(2, 'Toti', '$2y$10$lZn7I0LZmN36Zq81EEK8lO60UcxAA6tRL4QrvqVVWKP8EX0EtnEym', 'user'),
(3, 'Dicky', '$2y$10$GoX9FhUImcDr4WRl5bCsKuel.dxEtaW9/kWv..K00kpFTbkVJRbSO', 'admin'),
(9, 'Zaidan', '$2y$10$BMwV3vM5F1fzMrieav2.cO1QahvrVnSkwm1TTfApltu3mme3fB1tS', 'user'),
(10, 'Dwi', '$2y$10$ujDx8apoO3Lfmq1Mj9T/kOkHurJI2b16zUS9zTw6tb3rdNauG9cGq', 'user'),
(12, 'agil', '$2y$10$mjIbCi4Y6c/GnIhjXSLhh.5MOibuPZIQ4g44H/Bq/vUkVLZvLNdkK', 'user'),
(15, 'Hendra', '$2y$10$cF0IpDHno0LBJIxbINztbe1ETY.Mbi2q4VR1ojNqLer7qR9VzvqaO', 'user'),
(16, 'Rifqi Zaidan Akhmad', '$2y$10$ENJmBlzIgmoVgNV2I3YiduOtpNbC704rfpU/4JId5o.SjtSKGDRxm', 'user'),
(20, 'dickyab12', '$2y$10$qfY7vbe/wd/4u1jRZdc19.NSC51A9RYcb6DTPiYziuUFE5fw0iXMe', 'user'),
(24, 'user', '$2y$10$aYuNgES4bsYffBFkCqKXkebRGqSPkDXZMyfwqUolgakJFruOtLxg.', 'user'),
(25, 'admin', '$2y$10$nqItObc5wLm3hANL3iCor.IqxIU.DT6SFe/L8Mx0oB4l2X9WXVQn6', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `inventaris`
--
ALTER TABLE `inventaris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `inventaris`
--
ALTER TABLE `inventaris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
