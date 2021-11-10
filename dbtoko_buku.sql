-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2021 at 04:02 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtoko_buku`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(50) NOT NULL,
  `judul_buku` varchar(200) NOT NULL,
  `id_pengarang` varchar(20) NOT NULL,
  `id_penerbit` varchar(20) NOT NULL,
  `id_kategori` varchar(20) NOT NULL,
  `stok` int(11) NOT NULL,
  `berat` float NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul_buku`, `id_pengarang`, `id_penerbit`, `id_kategori`, `stok`, `berat`, `harga`, `deskripsi`, `gambar`, `deleted`) VALUES
('BU-1', 'Bumi Manusia (Novel)', 'PG-1', 'PN-2', 'K-1', 11, 1, 45000, 'Bumi Manusia adalah buku pertama dari Tetralogi Buru karya Pramoedya Ananta Toer yang pertama kali diterbitkan oleh Hasta Mitra pada tahun 1980. Buku ini ditulis Pramoedya Ananta Toer ketika masih mendekam di Pulau Buru', 'fiksi1.jpg', 0),
('BU-10', 'Sebuah Seni Untuk Bersikap Bodoamat', 'PG-2', 'PN-5', 'K-3', 35, 1, 40000, 'Sebuah Seni untuk Bersikap Bodo Amat: Pendekatan yang Waras Demi Menjalani Hidup yang Baik atau The Subtle Art of Not Giving a F*ck: A Counterintuitive Approach to Living a Good Life adalah buku pertama Mark Manson, seorang narablog kenamaan dengan lebih dari 2 juta pembaca. Dia tinggal di kota New York', 'fiksi11.jpg', 0),
('BU-11', 'Sapiens: A Brief History of Humankind', 'PG-4', 'PN-2', 'K-3', 15, 1, 7000, 'Sapiens: A Brief History of Humankind is a book by Yuval Noah Harari, first published in Hebrew in Israel in 2011 based on a series of lectures Harari taught at The Hebrew University of Jerusalem, and in English in 2014', 'fiksi12.jpg', 0),
('BU-12', 'Catatan Seorang Demonstran', 'PG-4', 'PN-4', 'K-3', 10, 1, 75000, 'Catatan Seorang Demonstran adalah buku harian seorang aktivis mahasiswa bernama Soe Hok Gie yang diterbitkan pada tahun 1983. Buku ini sempat tampil sebentar dalam salah satu adegan film Ada Apa dengan Cinta? dan kemudian diangkat ke layar lebar dengan sutradara Riri Riza dan produser Mira Lesmana', 'fiksi13.jpg', 0),
('BU-2', 'Ronggeng Dukuh Paruk', 'PG-1', 'PN-3', 'K-1', 51, 1, 85000, 'Ronggeng Dukuh Paruk adalah sebuah novel yang ditulis oleh penulis Indonesia asal Banyumas, Ahmad Tohari, dan diterbitkan pertama kali tahun 1982. Novel ini bercerita tentang kisah cinta antara Srintil, seorang penari ronggeng, dan Rasus, teman sejak kecil Srintil yang berprofesi sebagai tentara', 'fiksi3.jpg', 0),
('BU-3', 'Cantik Itu Luka', 'PG-3', 'PN-3', 'K-4', 50, 1, 50000, 'Cantik itu Luka merupakan novel pertama karya penulis Indonesia, Eka Kurniawan. Pertama kali diterbitkan tahun 2002 atas kerjasama Akademi Kebudayaan Yogyakarta dan Penerbit Jendela. Edisi kedua dan seterusnya, diterbitkan oleh Gramedia Pustaka Utama sejak tahun 2004', 'fiksi4.jpg', 0),
('BU-4', 'Anak Semua Bangsa', 'PG-1', 'PN-3', 'K-1', 50, 1, 32000, 'Anak Semua Bangsa adalah buku kedua dari seri Tetralogi Buru karya Pramoedya Ananta Toer. Beberapa bulan setelah terbit pada 1981, buku ini bersama buku Bumi Manusia dilarang beredar oleh Kejaksaan Agung', 'fiksi5.jpg', 0),
('BU-5', 'Buku Catatan Josephine', 'PG-2', 'PN-1', 'K-4', 51, 1, 16000, 'Buku Catatan Josephine adalah novel kriminal karya novelis Inggris Agatha Christie yang diterbitkan pada tahun 1949 dengan judul Crooked House. Di Indonesia novel ini diterbitkan oleh Gramedia Pustaka Utama pada tahun 1986 dan dicetak ulang pada Maret 2009', 'fiksi6.jpg', 0),
('BU-6', 'Sang Pemimpi', 'PG-3', 'PN-4', 'K-4', 50, 1, 175000, 'Sang Pemimpi Baru adalah novel kedua dalam tetralogi Laskar Pelangi karya Andrea Hirata yang diterbitkan oleh Bentang Pustaka pada Juli 2006.', 'fiksi7.jpg', 0),
('BU-7', 'Rumah Kaca', 'PG-1', 'PN-5', 'K-1', 51, 1, 15000, 'Rumah Kaca merupakan novel keempat sekaligus penutup dari Tetralogi Buru yang ditulis oleh Pramoedya Anata Toer.', 'fiksi8.jpg', 0),
('BU-8', 'Tenggelamnya Kapal Van der Wijck', 'PG-4', 'PN-5', 'K-4', 53, 1, 15000, 'Tenggelamnja Kapal van der Wijck adalah sebuah novel yang ditulis oleh Haji Abdul Malik Karim Amrullah atau lebih dikenal dengan nama Hamka.', 'fiksi9.png', 0),
('BU-9', 'Filosofi Teras', 'PG-2', 'PN-4', 'K-3', 20, 1, 20000, 'Filosofi Teras adalah sebuah buku pengantar filsafat Stoa yang dibuat khusus sebagai panduan moral anak muda. Buku ini ditulis untuk menjawab permasalahan tentang tingkat kekhawatiran yang cukup tinggi dalam skala nasional, terutama yang dialami oleh anak muda.', 'fiksi10.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(20) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `deleted`) VALUES
('K-1', 'Fiksi', 1),
('K-3', 'Non Fiksi', 1),
('K-4', 'Umum', 1);

-- --------------------------------------------------------

--
-- Table structure for table `penerbit`
--

CREATE TABLE `penerbit` (
  `id_penerbit` varchar(20) NOT NULL,
  `nama_penerbit` varchar(100) NOT NULL,
  `alamat_penerbit` varchar(100) NOT NULL,
  `email_penerbit` varchar(50) NOT NULL,
  `telp_penerbit` varchar(20) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penerbit`
--

INSERT INTO `penerbit` (`id_penerbit`, `nama_penerbit`, `alamat_penerbit`, `email_penerbit`, `telp_penerbit`, `deleted`) VALUES
('PN-1', 'Gramedia', 'Jakarta', 'gramedia@indonesia.com', '081234567890', 0),
('PN-2', 'Erlangga', 'Jakarta', 'erlangga@gmail.com', '081122344566', 0),
('PN-3', 'Yudhistira', 'Jakarta', 'yudhistira@indo.com', '081511117015', 0),
('PN-4', 'Andi Publisher', 'Indonesia', 'andipub@gmail.com', '082110003968', 0),
('PN-5', 'Agro Media Grup', 'Bogor', 'agromedia@gmail.com', '082118379889', 0),
('PN-6', 'Regina', 'Jalan Raya Karanggayam', 'reginapermata06@gmail.com', '085869458863', 1),
('PN-7', 'Regina', 'Jalan Raya Karanggayammmmmmm', 'reginapermata06@gmail.com', '085869458863', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengarang`
--

CREATE TABLE `pengarang` (
  `id_pengarang` varchar(20) NOT NULL,
  `nama_pengarang` varchar(100) NOT NULL,
  `alamat_pengarang` varchar(200) NOT NULL,
  `email_pengarang` varchar(50) NOT NULL,
  `telp_pengarang` varchar(20) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengarang`
--

INSERT INTO `pengarang` (`id_pengarang`, `nama_pengarang`, `alamat_pengarang`, `email_pengarang`, `telp_pengarang`, `deleted`) VALUES
('PG-1', 'Pramoedya Ananta Toer', 'Jakarta', 'ananta@gmail.com', '021849995857', 0),
('PG-2', 'Mark Manson', 'Bukit Tinggi', 'markmanson@gmail.com', '085200171222', 0),
('PG-3', 'Yuval Noah Harari', 'Bogor', 'yuval@gmail.com', '085123765432', 0),
('PG-4', 'Soe Hok Gie', 'Bogor', 'soehokgie@gmail.com', '082118379889', 0),
('PG-5', 'Regina', 'Jalan Raya Karanggayam panjang', 'reginapermata06@gmail.com', '085869458863', 1),
('PG-6', 'Reginaaaaa', 'jalan raya karangayam', 'reginapermata06@gmail.com', '085869458863', 1);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` varchar(20) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `jk_siswa` enum('Laki-Laki','Perempuan') NOT NULL,
  `alamat_siswa` varchar(200) NOT NULL,
  `email_siswa` varchar(100) NOT NULL,
  `telp_siswa` varchar(20) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `jk_siswa`, `alamat_siswa`, `email_siswa`, `telp_siswa`, `deleted`) VALUES
('SIS-1', 'Regina Permatasari', 'Perempuan', 'Lumbir', 'reginapermata06@gmail.com', '08589458863', 0),
('SIS-2', 'Ade Muhamad Fathan', 'Laki-Laki', 'Wangon', 'adefathan77@gmail.com', '081353297543', 0),
('SIS-3', 'Megna Pitaloka', 'Perempuan', 'Banyumas', 'megnapita17@gmail.com', '087762849847', 0),
('SIS-4', 'Muhammad ZIan Arghani', 'Laki-Laki', 'Purwokerto', 'zianarghani123@gmail.com', '087759659653', 0),
('SIS-5', 'Putri Nuraeni', 'Perempuan', 'Purbalingga', 'putriaja321@gmail.com', '082134921366', 0),
('SIS-6', 'Tes Aja', 'Laki-Laki', 'Lumbir', 'tesaja@gmail.com', '085123456789', 1),
('SIS-7', 'tes', 'Laki-Laki', 'Bekasi', '3103119158@student.smktelkom-pwt.sch.id', '123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `tipe_user` enum('Customer','Admin') NOT NULL,
  `id_siswa` varchar(20) DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `tipe_user`, `id_siswa`, `deleted`) VALUES
('Regina', 'gina', 'Customer', 'SIS-1', 0),
('Ade', 'ade', 'Customer', 'SIS-2', 0),
('Megna', 'megna', 'Customer', 'SIS-3', 0),
('Zian', 'zian', 'Customer', 'SIS-4', 0),
('Putri', 'putri', 'Customer', 'SIS-5', 0),
('Admin', 'admin', 'Admin', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `FK_buku_pengarang` (`id_pengarang`),
  ADD KEY `FK_buku_penerbit` (`id_penerbit`),
  ADD KEY `FK_buku_kategori` (`id_kategori`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id_penerbit`);

--
-- Indexes for table `pengarang`
--
ALTER TABLE `pengarang`
  ADD PRIMARY KEY (`id_pengarang`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD KEY `FK_user_customer` (`id_siswa`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `FK_buku_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`),
  ADD CONSTRAINT `FK_buku_penerbit` FOREIGN KEY (`id_penerbit`) REFERENCES `penerbit` (`id_penerbit`),
  ADD CONSTRAINT `FK_buku_pengarang` FOREIGN KEY (`id_pengarang`) REFERENCES `pengarang` (`id_pengarang`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_user_customer` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
