-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2023 at 03:37 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kependudukan`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `no_berita` int(11) NOT NULL,
  `judul_berita` varchar(25) NOT NULL,
  `headnews` text NOT NULL,
  `isi_berita` text NOT NULL,
  `tanggal_kirim` date NOT NULL,
  `pengirim` varchar(25) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`no_berita`, `judul_berita`, `headnews`, `isi_berita`, `tanggal_kirim`, `pengirim`, `gambar`) VALUES
(1, 'Melonjaknya Harga Minyak ', 'Melonjaknya Harga Minyak Goreng di Berbagai Daerah menimbulkan Keresahan di Desa Ngendrosari', 'KONTAN.CO.ID - JAKARTA. Menjelang akhir Oktober 2021, harga minyak goreng mengalami kenaikan. Lonjakan harga minyak goreng tersebut terjadi di berbagai daerah.   Pengusaha yang tergabung dalam Gabungan Industri Minyak Nabati Indonesia (GIMNI) mengungkapkan, kenaikan harga minyak goreng disebabkan adanya kekurangan pasokan akan minyak nabati (oils) dan minyak hewani (fats) di pasar global.   \"Pandemi ini membuat suasana lapangan produksi semua serba tak jelas. Produksi minyak nabati dan minyak hewani semua menurun dibandingkan dengan produksi di tahun sebelum adanya pandemi. Intinya, seperti hukum ekonomi, di mana antara supply dan demand terjadi kepincangan maka pasokan dunia sangat berkurang,\" ujar Direktur Eksekutif GIMNI Sahat Sinaga saat dihubungi Kompas.com, Senin (25/10/2021).   Ia mengatakan produksi minyak nabati dan hewani telah menurun sebanyak 266.000 ton pada 2020. Penurunan produksi tersebut juga terjadi pada 2021. ', '2021-12-04', 'Adam Arnap', '1182867277p.jpg'),
(2, 'Panen Padi Sukses saat Mu', 'Musim Hujan membuat padi tidak mengalami kekurangan air', 'Musim penghujan adalah musim yang di nantikan oleh ara petani padi untuk menanam padinya. Dengan menanam padi di saat musim penghujan akan mengakibatkan padi yang di tanam tidak akan kekurangan air. Sehingga padi yang akan di panen bisa di panen dengan hasil yang memuaskan.', '2021-12-23', 'Adam Arnap', 'mengelola-sebuah-tempat.jpg'),
(3, 'Akses Utama jalan Kajoran', 'Desa Ngendrosari di jadikannya jalan alternatif penghubung Jalan Kajoran - Salaman - Purworejo', 'Pembangunan Jembatan Kali Petung menutup akses utama jalan Kajoran Salaman Hal ini berdampak terhadap desa ngendrsari. Hal ini dikarenakan letak Desa Ngendrosari berada di daerah strategis antara Kajoran - Salaman . Sehingga akses jalan yang paling efektif adalah melalui Desa Ngendrosari', '2021-11-18', 'Adam Arnap', '5jjem-738x375.jpg'),
(4, 'Warga Desa Ngendrosari di', 'Covid-19 belum berakhir , Desa Ngendrosari menghimbau warga agar segera melakukan Vaksinasi', 'Munculnya covid varian baru membuat kita sebagai individu harus menjaga diri kita masing masing  dengan mematuhi Protokol Keehatan', '2021-11-11', 'Adam Arnap', 'vaksinasi-696x392.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE `dokumen` (
  `id_dokumen` int(11) NOT NULL,
  `nama_dokumen` varchar(50) NOT NULL,
  `dokumen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`id_dokumen`, `nama_dokumen`, `dokumen`) VALUES
(1, 'SKU', '21498531M.pdf'),
(2, 'Akte', '21498531M_(1).pdf'),
(3, 'Sertifikat', '20220106-031924-1755628819.pdf'),
(4, 'Dokumen Legistrasi', 'Adam_Arnap___Dokumen_UAT_Tokopedia.pdf'),
(5, 'Tanda tangan legalisir', 'TUGAS_KELOMPOK_ANALISIS_BISNIS_DIGITAL.pdf'),
(6, 'Dokumen tanda tangan Legalisir', '222-467-1-SM.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `dusun`
--

CREATE TABLE `dusun` (
  `dusun` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dusun`
--

INSERT INTO `dusun` (`dusun`) VALUES
('Bantengan'),
('Pencar'),
('Pranan'),
('Saragan'),
('Taleman'),
('Tambakan');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `no_event` int(11) NOT NULL,
  `judul_event` varchar(50) NOT NULL,
  `isi_event` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`no_event`, `judul_event`, `isi_event`, `gambar`) VALUES
(1, 'Lomba Membaca Puisii', 'Lomba membaca puisi untuk kalangan SD, SMP. Di selenggarakan pada tanggal, 17 Agustus 2021. Lomba ini di selenggarakan guna memperingati hari Kemerdekaan Republik Indonesia', 'download_(2)1.jpeg'),
(2, 'Lomba Panjat Pinang', 'Lomba Panjat Pinang dalam rangka memperingat 17 Agustus Hari Kemerdekaan akan di selenggarakan di Balai Desa Ngendrosari, Pada Tanggal 17, Agustus 2021. Mulai pukul 13.00 WIB', 'panjat-pinang-ilustrasi-antara-hendra-nurdiyansyah.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kedatangan`
--

CREATE TABLE `kedatangan` (
  `no_datang` int(11) NOT NULL,
  `tgl_datang` date NOT NULL,
  `NIK` varchar(25) NOT NULL,
  `alamat_asal` varchar(50) NOT NULL,
  `alamat_tujuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kelahiran`
--

CREATE TABLE `kelahiran` (
  `no_lahir` int(11) NOT NULL,
  `nama_bayi` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `gender` varchar(13) NOT NULL,
  `nama_ayah` varchar(30) NOT NULL,
  `nama_ibu` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelahiran`
--

INSERT INTO `kelahiran` (`no_lahir`, `nama_bayi`, `tempat_lahir`, `tanggal_lahir`, `gender`, `nama_ayah`, `nama_ibu`, `alamat`) VALUES
(7, 'Riesha Lestari', 'Magelang', '2021-12-21', 'Wanita', 'Ikhsan', 'Devi', 'Kali salak ,Salaman, Magelang, Jawa tengah'),
(8, 'Elda Qotul', 'Madiun', '2022-01-03', 'Wanita', 'Aryok', 'Karmila', 'Tulung Agung Selatan, Kota Tulung Agung,  Jawa Tim');

-- --------------------------------------------------------

--
-- Table structure for table `kematian`
--

CREATE TABLE `kematian` (
  `no_kematian` int(11) NOT NULL,
  `NIK` varchar(25) NOT NULL,
  `tempat_meninggal` varchar(50) NOT NULL,
  `tanggal_meninggal` date NOT NULL,
  `usia` varchar(3) NOT NULL,
  `sebab` varchar(50) NOT NULL,
  `makam` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kritiksaran`
--

CREATE TABLE `kritiksaran` (
  `no_kritik` int(11) NOT NULL,
  `NIK` varchar(25) NOT NULL,
  `isi_kritik` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kritiksaran`
--

INSERT INTO `kritiksaran` (`no_kritik`, `NIK`, `isi_kritik`) VALUES
(1, '3308123443215876', 'Jalan Sebelum pertigaan ada yang berlubang, saya harap jala agar dapat bisa di perbaiki . Terimakasih'),
(2, '3308123443215876', 'Mohon Lampu Jalan di betulkan'),
(3, '3308123443215876', 'Desa nya jalannya rusak, mogon di perbaiki'),
(4, '0987789065433456', 'Mohon untuk jalan di kampung A di betulkan.'),
(5, '0987789065433456', 'Mohon untuk jalan berlubang dapat diperbaiki.');

-- --------------------------------------------------------

--
-- Table structure for table `penduduk`
--

CREATE TABLE `penduduk` (
  `NIK` varchar(25) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `gender` varchar(13) NOT NULL,
  `agama` varchar(11) NOT NULL,
  `pendidikan` varchar(15) NOT NULL,
  `pekerjaan` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `kewarganegaraan` varchar(15) NOT NULL,
  `golongan_darah` varchar(2) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `rt` varchar(3) NOT NULL,
  `rw` varchar(3) NOT NULL,
  `dusun` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('Perangkat','Masyarakat','Kades','') NOT NULL,
  `status_akun` enum('AKTIF','NONAKTIF','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penduduk`
--

INSERT INTO `penduduk` (`NIK`, `nama`, `tempat_lahir`, `tanggal_lahir`, `gender`, `agama`, `pendidikan`, `pekerjaan`, `status`, `nama_ayah`, `nama_ibu`, `kewarganegaraan`, `golongan_darah`, `no_tlp`, `rt`, `rw`, `dusun`, `password`, `level`, `status_akun`) VALUES
('00000000', 'dika', 'NTT', '2022-01-07', 'Pria', 'Islam', 'SMA', 'Belum Bekerja', 'Belum Kawin', 'suyanto', 'jamilah', 'WNI', 'A', '4234234233', '001', '001', 'Bantengan', '123', 'Masyarakat', 'AKTIF'),
('0334666768965', 'Dhika', 'Tangerang', '2008-06-10', 'Pria', 'Islam', 'SMA', 'Pelajar', 'Belum Kawin', 'Dewanto', 'Sunarsih', 'WNI', '-', '08234567654', '003', '003', 'Pranan', '123', 'Masyarakat', 'AKTIF'),
('0987789065433456', 'dika', 'Tulungagung', '2021-12-24', 'Pria', 'Islam', 'SMA', 'Mahhasiswa', 'Kawin', 'Suyatno', 'Romiyah', 'WNI', 'A', '085000000000', '004', '003', 'Bantengan', '123', 'Masyarakat', 'AKTIF'),
('1234123412341234', 'Waldii', 'NTT', '2021-12-07', 'Pria', 'Islam', 'SMA', 'Mahhasiswa', 'Belum Kawin', 'Agus Maulana', 'Larasati', 'WNI', 'A', '1234567890', '002', '006', 'Saragan', '123', 'Masyarakat', 'AKTIF'),
('2208123456788765', 'Endriono F', 'Yogyakarta', '2021-12-07', 'Pria', 'Islam', 'SMA', 'Mahasiswa', 'Belum Kawin', 'Tiyok', 'Marsini', 'WNI', '-', '081234567890', '010', '005', 'Pranan', '123', 'Kades', 'AKTIF'),
('3302123487651243', 'Adam', 'Magelang', '2001-09-01', 'Pria', 'Islam', 'SMA', 'Mahasiswa', 'Belum Kawin', 'Mustar', 'Napsiyah', 'WNI', '-', '081234432567', '008', '004', 'Pencar', '123', 'Perangkat', 'AKTIF'),
('3308123443215876', 'Diki Setiawan', 'Magelang', '2021-12-02', 'Pria', 'Islam', 'SMA', 'Mahhasiswa', 'Belum Kawin', 'Maryoto', 'Siti Jamilah', 'WNI', 'A', '085000000000', '004', '003', 'Bantengan', '123', 'Masyarakat', 'AKTIF');

-- --------------------------------------------------------

--
-- Table structure for table `permohonan`
--

CREATE TABLE `permohonan` (
  `no_permohonan` int(11) NOT NULL,
  `NIK` varchar(25) NOT NULL,
  `jenis_dokumen` varchar(25) NOT NULL,
  `fungsi` varchar(100) NOT NULL,
  `tanggal_dokumen` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permohonan`
--

INSERT INTO `permohonan` (`no_permohonan`, `NIK`, `jenis_dokumen`, `fungsi`, `tanggal_dokumen`) VALUES
(1, '0987789065433456', 'SKU', 'Usaha', NULL),
(2, '3308123443215876', 'AKTE', 'Membuat Akte', NULL),
(8, '3308123443215876', 'SKU', 'MEngganti ktp yang hilang', NULL),
(10, '3308123443215876', 'Setrifikat', 'Untuk kebutuhan pribadi', NULL),
(11, '3308123443215876', 'Sertifikat ', 'Digunakan untuk kebutuhan Pribadi', NULL),
(14, '3308123443215876', 'Dokumen Legistrasi', 'Untuk Kepentingan Administrasi Sekolah', '2022-09-23'),
(15, '0987789065433456', 'Tanda Tangan Legalisir', 'Pelengkap administrtasi Masuk SMA', '2022-10-26'),
(16, '3308123443215876', 'Tanda Tangan dan Legalisi', 'Untuk surat pindah sekolah', '2023-01-11');

-- --------------------------------------------------------

--
-- Table structure for table `pindahan`
--

CREATE TABLE `pindahan` (
  `no_kepergian` int(11) NOT NULL,
  `tgl_kepergian` date NOT NULL,
  `NIK` varchar(25) NOT NULL,
  `alamat_asal` varchar(50) NOT NULL,
  `alamat_tujuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ronda`
--

CREATE TABLE `ronda` (
  `id_ronda` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ronda`
--

INSERT INTO `ronda` (`id_ronda`, `gambar`) VALUES
(3, 'Capture.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `rt`
--

CREATE TABLE `rt` (
  `rt` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rt`
--

INSERT INTO `rt` (`rt`) VALUES
('001'),
('002'),
('003'),
('004'),
('005'),
('006'),
('007'),
('008'),
('009'),
('010');

-- --------------------------------------------------------

--
-- Table structure for table `rw`
--

CREATE TABLE `rw` (
  `rw` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rw`
--

INSERT INTO `rw` (`rw`) VALUES
('001'),
('002'),
('003'),
('004'),
('005'),
('006');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`no_berita`);

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id_dokumen`);

--
-- Indexes for table `dusun`
--
ALTER TABLE `dusun`
  ADD PRIMARY KEY (`dusun`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`no_event`);

--
-- Indexes for table `kedatangan`
--
ALTER TABLE `kedatangan`
  ADD PRIMARY KEY (`no_datang`),
  ADD KEY `NIK` (`NIK`);

--
-- Indexes for table `kelahiran`
--
ALTER TABLE `kelahiran`
  ADD PRIMARY KEY (`no_lahir`);

--
-- Indexes for table `kematian`
--
ALTER TABLE `kematian`
  ADD PRIMARY KEY (`no_kematian`),
  ADD KEY `NIK` (`NIK`);

--
-- Indexes for table `kritiksaran`
--
ALTER TABLE `kritiksaran`
  ADD PRIMARY KEY (`no_kritik`);

--
-- Indexes for table `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`NIK`),
  ADD KEY `NIK` (`NIK`),
  ADD KEY `rt` (`rt`) USING BTREE,
  ADD KEY `dusun` (`dusun`) USING BTREE,
  ADD KEY `rw` (`rw`) USING BTREE;

--
-- Indexes for table `permohonan`
--
ALTER TABLE `permohonan`
  ADD PRIMARY KEY (`no_permohonan`),
  ADD KEY `NIK` (`NIK`) USING BTREE;

--
-- Indexes for table `pindahan`
--
ALTER TABLE `pindahan`
  ADD PRIMARY KEY (`no_kepergian`),
  ADD KEY `NIK` (`NIK`);

--
-- Indexes for table `ronda`
--
ALTER TABLE `ronda`
  ADD PRIMARY KEY (`id_ronda`);

--
-- Indexes for table `rt`
--
ALTER TABLE `rt`
  ADD PRIMARY KEY (`rt`);

--
-- Indexes for table `rw`
--
ALTER TABLE `rw`
  ADD PRIMARY KEY (`rw`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `no_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id_dokumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `no_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kedatangan`
--
ALTER TABLE `kedatangan`
  MODIFY `no_datang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kelahiran`
--
ALTER TABLE `kelahiran`
  MODIFY `no_lahir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kematian`
--
ALTER TABLE `kematian`
  MODIFY `no_kematian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kritiksaran`
--
ALTER TABLE `kritiksaran`
  MODIFY `no_kritik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permohonan`
--
ALTER TABLE `permohonan`
  MODIFY `no_permohonan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pindahan`
--
ALTER TABLE `pindahan`
  MODIFY `no_kepergian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ronda`
--
ALTER TABLE `ronda`
  MODIFY `id_ronda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kedatangan`
--
ALTER TABLE `kedatangan`
  ADD CONSTRAINT `kedatangan_ibfk_1` FOREIGN KEY (`NIK`) REFERENCES `penduduk` (`NIK`);

--
-- Constraints for table `kematian`
--
ALTER TABLE `kematian`
  ADD CONSTRAINT `kematian_ibfk_1` FOREIGN KEY (`NIK`) REFERENCES `penduduk` (`NIK`);

--
-- Constraints for table `penduduk`
--
ALTER TABLE `penduduk`
  ADD CONSTRAINT `penduduk_ibfk_1` FOREIGN KEY (`rt`) REFERENCES `rt` (`rt`),
  ADD CONSTRAINT `penduduk_ibfk_2` FOREIGN KEY (`dusun`) REFERENCES `dusun` (`dusun`),
  ADD CONSTRAINT `penduduk_ibfk_3` FOREIGN KEY (`rw`) REFERENCES `rw` (`rw`);

--
-- Constraints for table `permohonan`
--
ALTER TABLE `permohonan`
  ADD CONSTRAINT `permohonan_ibfk_1` FOREIGN KEY (`NIK`) REFERENCES `penduduk` (`NIK`);

--
-- Constraints for table `pindahan`
--
ALTER TABLE `pindahan`
  ADD CONSTRAINT `pindahan_ibfk_1` FOREIGN KEY (`NIK`) REFERENCES `penduduk` (`NIK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
