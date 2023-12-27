-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Des 2023 pada 08.51
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginform`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bus`
--

CREATE TABLE `bus` (
  `ID_Bus` int(255) NOT NULL,
  `Bus_Class` varchar(50) NOT NULL,
  `Jam` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bus`
--

INSERT INTO `bus` (`ID_Bus`, `Bus_Class`, `Jam`) VALUES
(11, 'Eksekutif', '20:00'),
(12, 'Eksekutif', '20:00'),
(13, 'Eksekutif', '15:00'),
(14, 'Ekonomi', '20:00'),
(15, 'Ekonomi', '20:00'),
(16, 'Ekonomi', '20:00'),
(17, 'Ekonomi', '15:00'),
(18, 'Ekonomi', '15:00'),
(19, 'Ekonomi', '9:00'),
(20, 'Eksekutif', '9:00'),
(21, 'Eksekutif', '15:00'),
(22, 'Eksekutif', '9:00'),
(23, 'Eksekutif', '15:00'),
(24, 'Eksekutif', '9:00'),
(25, 'Eksekutif', '9:00'),
(26, 'Eksekutif', '9:00'),
(27, 'Eksekutif', '9:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_booking`
--

CREATE TABLE `detail_booking` (
  `ID_Booking` int(255) NOT NULL,
  `ID` int(255) NOT NULL,
  `ID_Journey` int(255) NOT NULL,
  `ID_Bus` int(255) NOT NULL,
  `ID_Penumpang` int(255) NOT NULL,
  `ID_Payment` int(255) NOT NULL,
  `Jumlah_Kursi` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `journey`
--

CREATE TABLE `journey` (
  `ID_Journey` int(255) NOT NULL,
  `Kota_Asal` varchar(50) NOT NULL,
  `Kota_Tujuan` varchar(50) NOT NULL,
  `Tanggal_Keberangkatan` varchar(50) NOT NULL DEFAULT current_timestamp(),
  `Jumlah_Kursi` int(11) NOT NULL,
  `Bus_Class` varchar(50) NOT NULL,
  `Total_Harga` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `journey`
--

INSERT INTO `journey` (`ID_Journey`, `Kota_Asal`, `Kota_Tujuan`, `Tanggal_Keberangkatan`, `Jumlah_Kursi`, `Bus_Class`, `Total_Harga`) VALUES
(18, 'Surabaya', 'Jogja', '2023-12-26', 2, 'Eksekutif', '400000'),
(19, 'Surabaya', 'Jogja', '2023-12-30', 2, 'Eksekutif', '400000'),
(20, 'Surabaya', 'Malang', '2024-01-02', 2, 'Eksekutif', '110000'),
(21, 'Surabaya', 'Jogja', '2023-12-30', 2, 'Ekonomi', '110000'),
(22, 'Surabaya', 'Malang', '2023-12-30', 3, 'Ekonomi', '165000'),
(23, 'Malang', 'Surabaya', '2023-12-23', 2, 'Ekonomi', '110000'),
(24, 'Surabaya', 'Malang', '2023-12-22', 4, 'Ekonomi', '220000'),
(25, 'Malang', 'Jogja', '2024-01-05', 4, 'Ekonomi', '220000'),
(26, 'Surabaya', 'Jogja', '2023-12-30', 2, 'Ekonomi', '110000'),
(27, 'Jogja', 'Surabaya', '2023-12-28', 2, 'Eksekutif', '400000'),
(28, 'Jogja', 'Surabaya', '2023-12-26', 2, 'Eksekutif', '300000'),
(29, 'Surabaya', 'Jogja', '2023-12-27', 2, 'Eksekutif', '300000'),
(30, 'Jogja', 'Malang', '2023-12-27', 2, 'Ekonomi', '160000'),
(31, 'Surabaya', 'Jogja', '2023-12-27', 2, 'Eksekutif', '300000'),
(32, 'Surabaya', 'Jogja', '2023-12-27', 2, 'Eksekutif', '300000'),
(33, 'Surabaya', 'Jogja', '2023-12-27', 2, 'Eksekutif', '300000'),
(34, 'Surabaya', 'Jogja', '2023-12-27', 2, 'Eksekutif', '300000'),
(35, 'Jogja', 'Malang', '2023-12-27', 2, 'Eksekutif', '200000'),
(36, 'Jogja', 'Jogja', '2023-12-27', 2, 'Eksekutif', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penumpang`
--

CREATE TABLE `penumpang` (
  `ID_Penumpang` int(11) NOT NULL,
  `Nama_Penumpang` varchar(50) NOT NULL,
  `Phone_Number` varchar(50) NOT NULL,
  `Tgl_Lahir_Penumpang` varchar(50) NOT NULL DEFAULT current_timestamp(),
  `Gender_Penumpang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penumpang`
--

INSERT INTO `penumpang` (`ID_Penumpang`, `Nama_Penumpang`, `Phone_Number`, `Tgl_Lahir_Penumpang`, `Gender_Penumpang`) VALUES
(5, 'Paijo1', '911', '2023-12-25 00:00:00', 'Male'),
(6, 'Rico', '08383', '2000-06-21 00:00:00', 'Male'),
(7, 'Yulian', '083839549180', '2001-07-29 00:00:00', 'Male'),
(8, 'Aziz', '083212313', '2005-10-28 00:00:00', 'Male'),
(9, 'Kairi', '08314353', '2004-10-28 00:00:00', 'Male'),
(10, 'Lolo', '911', '2023-12-22 00:00:00', 'Male'),
(11, 'Hue', '35252', '2023-12-30 00:00:00', 'Male'),
(12, 'suseno', '5211223', '1990-11-22 00:00:00', 'Male'),
(13, 'Marc', '911', '1989-11-30 00:00:00', 'Male'),
(14, 'gilang', '083816282227', '2023-12-26 00:00:00', 'Male'),
(15, 'gilang', '083816282227', '2023-12-26 00:00:00', 'Male'),
(16, 'gilang', 'permana', '2023-12-22 00:00:00', 'Male'),
(17, 'han', '08381628227', '2023-12-27 00:00:00', 'Male'),
(18, 'han', '08381628228', '2023-12-27 00:00:00', 'Male'),
(19, 'han', '0182301928', '2023-12-27 00:00:00', 'Male');

-- --------------------------------------------------------

--
-- Struktur dari tabel `userinfo`
--

CREATE TABLE `userinfo` (
  `ID` int(255) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Birthday` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `DateCreated` varchar(50) NOT NULL DEFAULT current_timestamp(),
  `LastLogin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `userinfo`
--

INSERT INTO `userinfo` (`ID`, `FirstName`, `LastName`, `Gender`, `Birthday`, `Email`, `Username`, `Password`, `DateCreated`, `LastLogin`) VALUES
(4, 'Julian', 'Pratama', 'Male', '29/07/2001', 'julxnnn@gmail.com', 'Julianero', '123', '2023-12-21 19:30:37', '22/12/2023 03:58:07'),
(5, 'gilang', 'permana', 'Female', '9/1/2003 1', 'gilang@gmail.com', 'gilang123', 'gilang123', '2023-12-26 13:37:23', '12/27/2023 6:02:04 AM'),
(6, 'jamal', '123', 'Male', '12/8/2023 ', 'jamal@gmail.com', 'jamal123', 'jamal123', '2023-12-27 07:26:48', '12/27/2023 6:02:38 AM'),
(7, 'rio', 'febri', 'Female', '12/14/2023', 'rio@gmail.com', 'rio123', 'rio123', '2023-12-27 13:28:31', '12/27/2023 6:02:38 AM'),
(8, 'rehan', 'xh', 'Male', '11/28/2023', 'han@gmail.com', 'han123', 'han123', '2023-12-27 13:37:31', '12/27/2023 6:02:38 AM');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`ID_Bus`);

--
-- Indeks untuk tabel `detail_booking`
--
ALTER TABLE `detail_booking`
  ADD PRIMARY KEY (`ID_Booking`),
  ADD KEY `ID_Booking` (`ID_Booking`),
  ADD KEY `ID_Journey` (`ID_Journey`),
  ADD KEY `ID` (`ID`),
  ADD KEY `ID_Bus` (`ID_Bus`),
  ADD KEY `ID_Penumpang` (`ID_Penumpang`),
  ADD KEY `ID_Payment` (`ID_Payment`),
  ADD KEY `Jumlah_Kursi` (`Jumlah_Kursi`);

--
-- Indeks untuk tabel `journey`
--
ALTER TABLE `journey`
  ADD PRIMARY KEY (`ID_Journey`);

--
-- Indeks untuk tabel `penumpang`
--
ALTER TABLE `penumpang`
  ADD PRIMARY KEY (`ID_Penumpang`);

--
-- Indeks untuk tabel `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bus`
--
ALTER TABLE `bus`
  MODIFY `ID_Bus` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `detail_booking`
--
ALTER TABLE `detail_booking`
  MODIFY `ID_Booking` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `journey`
--
ALTER TABLE `journey`
  MODIFY `ID_Journey` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `penumpang`
--
ALTER TABLE `penumpang`
  MODIFY `ID_Penumpang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_booking`
--
ALTER TABLE `detail_booking`
  ADD CONSTRAINT `detail_booking_ibfk_1` FOREIGN KEY (`ID_Journey`) REFERENCES `journey` (`ID_Journey`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_booking_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `userinfo` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_booking_ibfk_3` FOREIGN KEY (`ID_Penumpang`) REFERENCES `penumpang` (`ID_Penumpang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_booking_ibfk_4` FOREIGN KEY (`ID_Bus`) REFERENCES `bus` (`ID_Bus`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
