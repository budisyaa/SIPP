-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 27 Jan 2016 pada 20.42
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_sipp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`admin_id` int(11) NOT NULL,
  `NAMA_ADMIN` varchar(1024) DEFAULT NULL,
  `username` varchar(1024) DEFAULT NULL,
  `password` varchar(1024) DEFAULT NULL,
  `FOTO_ADMIN` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `NAMA_ADMIN`, `username`, `password`, `FOTO_ADMIN`) VALUES
(1, 'budi', 'buds', '21232f297a57a5a743894a0e4a801fc3', '01.JPG'),
(2, 'oce', 'eco', '95552885c7de6ba7921a166039702b7b', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
`ID_ARTIKEL` int(11) NOT NULL,
  `JUDUL_ART` varchar(1024) DEFAULT NULL,
  `ISI_ART` varchar(1024) DEFAULT NULL,
  `FOTO_ART` varchar(1024) DEFAULT NULL,
  `TANGGAL_POST` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE IF NOT EXISTS `hasil` (
`ID_HASIL` int(11) NOT NULL,
  `ID_PESERTA` int(11) DEFAULT NULL,
  `NAMA_HASIL` varchar(1024) DEFAULT NULL,
  `NAMA_HASIL2` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`ID_HASIL`, `ID_PESERTA`, `NAMA_HASIL`, `NAMA_HASIL2`) VALUES
(17, 17, 'K Transkrip 1.jpg', 'K Transkrip 2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `operator`
--

CREATE TABLE IF NOT EXISTS `operator` (
`id_opr` int(11) NOT NULL,
  `nama_opr` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `foto_opr` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta`
--

CREATE TABLE IF NOT EXISTS `peserta` (
`ID_PESERTA` int(11) NOT NULL,
  `NAMA` varchar(1024) DEFAULT NULL,
  `NO_ID` varchar(1024) DEFAULT NULL,
  `JUDUL` varchar(1024) DEFAULT NULL,
  `ASAL_INS` varchar(1024) DEFAULT NULL,
  `BIDANG` varchar(1024) DEFAULT NULL,
  `PEKERJAAN` varchar(1024) DEFAULT NULL,
  `ALAMAT` varchar(1024) DEFAULT NULL,
  `LOKASI_PT` varchar(1024) DEFAULT NULL,
  `PENANGGUNG_JAWAB` varchar(1024) DEFAULT NULL,
  `JENIS_KELAMIN` varchar(1024) DEFAULT NULL,
  `FOTO_PESERTA` varchar(1024) DEFAULT NULL,
  `username` varchar(1024) DEFAULT NULL,
  `password` varchar(1024) DEFAULT NULL,
  `NO_HP` decimal(8,0) DEFAULT NULL,
  `EMAIL` varchar(1024) DEFAULT NULL,
  `STATUS` varchar(1024) DEFAULT NULL,
  `MASA_BERLAKU_AWAL` date DEFAULT NULL,
  `MASA_BERLAKU_AKHIR` date DEFAULT NULL,
  `TANGGAL_MODIFIKASI` date DEFAULT NULL,
  `TEMPAT_LAHIR` varchar(1024) DEFAULT NULL,
  `TANGGAL_LAHIR` date DEFAULT NULL,
  `code_reg` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peserta`
--

INSERT INTO `peserta` (`ID_PESERTA`, `NAMA`, `NO_ID`, `JUDUL`, `ASAL_INS`, `BIDANG`, `PEKERJAAN`, `ALAMAT`, `LOKASI_PT`, `PENANGGUNG_JAWAB`, `JENIS_KELAMIN`, `FOTO_PESERTA`, `username`, `password`, `NO_HP`, `EMAIL`, `STATUS`, `MASA_BERLAKU_AWAL`, `MASA_BERLAKU_AKHIR`, `TANGGAL_MODIFIKASI`, `TEMPAT_LAHIR`, `TANGGAL_LAHIR`, `code_reg`) VALUES
(17, 'Budi Sya''adal Fauzisssss', 'H1L011015', 'Sistem Informasi Penilitian dan Pengembangan BAPPEDA Kabupaten Banyumas', 'Unsoed', 'Informatika', 'Mahasiswa', 'Kalimanah', 'BAPPEDA', 'Nastain', '1', '01.JPG', 'bud', '48114f8d489969362afea5a91603fee8', '8213774', 'ryoo.lucretia@gmail.com', '1', '2016-01-27', '2016-01-30', NULL, 'Depok', '1994-04-14', 'GSLHOW6R');

-- --------------------------------------------------------

--
-- Struktur dari tabel `proposal`
--

CREATE TABLE IF NOT EXISTS `proposal` (
`ID_PROPOSAL` int(11) NOT NULL,
  `ID_PESERTA` int(11) DEFAULT NULL,
  `NAMA_PROPOSAL` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `proposal`
--

INSERT INTO `proposal` (`ID_PROPOSAL`, `ID_PESERTA`, `NAMA_PROPOSAL`) VALUES
(3, 17, 'PRA-PROPOSAL BUDISYAA.docx');

-- --------------------------------------------------------

--
-- Struktur dari tabel `syarat`
--

CREATE TABLE IF NOT EXISTS `syarat` (
`ID_SYARAT` int(11) NOT NULL,
  `ID_PESERTA` int(11) DEFAULT NULL,
  `SYARAT1` varchar(1024) DEFAULT NULL,
  `SYARAT2` varchar(1024) DEFAULT NULL,
  `SYARAT3` varchar(1024) DEFAULT NULL,
  `SYARAT4` varchar(1024) DEFAULT NULL,
  `SYARAT5` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `syarat`
--

INSERT INTO `syarat` (`ID_SYARAT`, `ID_PESERTA`, `SYARAT1`, `SYARAT2`, `SYARAT3`, `SYARAT4`, `SYARAT5`) VALUES
(5, 17, 'Surat Lamaran SUCOFINDO.pdf', 'Surat Lamaran SUCOFINDO.rar', 'Read Me.txt', 'black_box_testing_model.png', 'Capture.JPG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
 ADD PRIMARY KEY (`ID_ARTIKEL`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
 ADD PRIMARY KEY (`ID_HASIL`), ADD KEY `FK_RELATIONSHIP_3` (`ID_PESERTA`);

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
 ADD PRIMARY KEY (`id_opr`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
 ADD PRIMARY KEY (`ID_PESERTA`);

--
-- Indexes for table `proposal`
--
ALTER TABLE `proposal`
 ADD PRIMARY KEY (`ID_PROPOSAL`), ADD KEY `FK_RELATIONSHIP_2` (`ID_PESERTA`);

--
-- Indexes for table `syarat`
--
ALTER TABLE `syarat`
 ADD PRIMARY KEY (`ID_SYARAT`), ADD KEY `FK_RELATIONSHIP_1` (`ID_PESERTA`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
MODIFY `ID_ARTIKEL` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
MODIFY `ID_HASIL` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `operator`
--
ALTER TABLE `operator`
MODIFY `id_opr` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
MODIFY `ID_PESERTA` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `proposal`
--
ALTER TABLE `proposal`
MODIFY `ID_PROPOSAL` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `syarat`
--
ALTER TABLE `syarat`
MODIFY `ID_SYARAT` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hasil`
--
ALTER TABLE `hasil`
ADD CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`ID_PESERTA`) REFERENCES `peserta` (`ID_PESERTA`);

--
-- Ketidakleluasaan untuk tabel `proposal`
--
ALTER TABLE `proposal`
ADD CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`ID_PESERTA`) REFERENCES `peserta` (`ID_PESERTA`);

--
-- Ketidakleluasaan untuk tabel `syarat`
--
ALTER TABLE `syarat`
ADD CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`ID_PESERTA`) REFERENCES `peserta` (`ID_PESERTA`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
