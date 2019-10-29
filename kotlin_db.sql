-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Okt 2019 pada 06.34
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kotlin_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `name_user` varchar(125) NOT NULL,
  `alamat_user` varchar(125) NOT NULL,
  `email_user` varchar(125) NOT NULL,
  `password_user` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `name_user`, `alamat_user`, `email_user`, `password_user`) VALUES
(1, 'Rachman Forniandi', 'Jl Flamingo IV blok jc 13 No 4', 'rachmanforniandi@gmail.com', '6d1a0b2bbabffbfbddbdd9eabe71aa1d'),
(2, 'Wahyudi', 'Jl Camar III blok jc 13 No 5', 'wahyudis@gmail.com', '8cbbdc3fff847eee79abadc7b693b60e'),
(4, 'Fajar Syamsudin', 'Jl Kelapa sawit V blok jc 21 No 11', 'fajars@gmail.com', '5a5b5ff6c6684d9dc3d4d38cd4dd810a'),
(5, 'Intania', 'Jl Permata biru V blok jc 3 No 9', 'intania@gmail.com', 'd4fbfab317c1443ca6171bb159813783'),
(6, 'Antonio', 'Jl Porsche  IV blok jc 3 No 21', 'antonio@gmail.com', '912033a2c4747781b64c36a366218707'),
(7, 'Firdausa', 'Jl Mawar IV blok jc 5 No 32', 'firdausa@gmail.com', '750eb062722c4b7b1b334136c445aa5a');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
