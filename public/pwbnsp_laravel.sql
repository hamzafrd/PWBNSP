-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table pwbnsp_laravel.agama: ~6 rows (approximately)
REPLACE INTO `agama` (`id`, `nama`) VALUES
	(1, 'islam'),
	(2, 'katolik'),
	(3, 'kristen'),
	(4, 'budha'),
	(5, 'hindu'),
	(6, 'lainnya');

-- Dumping data for table pwbnsp_laravel.cache: ~8 rows (approximately)
REPLACE INTO `cache` (`key`, `value`, `expiration`) VALUES
	('guest@bnsp.pnj.sertifikat.id|127.0.0.1', 'i:1;', 1724538154),
	('guest@bnsp.pnj.sertifikat.id|127.0.0.1:timer', 'i:1724538154;', 1724538154),
	('ssd@mail.com|127.0.0.1', 'i:1;', 1724529476),
	('ssd@mail.com|127.0.0.1:timer', 'i:1724529476;', 1724529476),
	('test@mail.com|127.0.0.1', 'i:2;', 1724545884),
	('test@mail.com|127.0.0.1:timer', 'i:1724545884;', 1724545884),
	('test2@mail.com|127.0.0.1', 'i:2;', 1724545877),
	('test2@mail.com|127.0.0.1:timer', 'i:1724545877;', 1724545877);

-- Dumping data for table pwbnsp_laravel.cache_locks: ~0 rows (approximately)

-- Dumping data for table pwbnsp_laravel.failed_jobs: ~0 rows (approximately)

-- Dumping data for table pwbnsp_laravel.jobs: ~0 rows (approximately)

-- Dumping data for table pwbnsp_laravel.job_batches: ~0 rows (approximately)

-- Dumping data for table pwbnsp_laravel.migrations: ~8 rows (approximately)
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2024_08_24_005100_add_role_to_users_table', 1),
	(5, '2024_08_24_025054_create_regions_table', 1),
	(6, '2024_08_24_030803_registrasi_mahasiswa_baru', 1),
	(7, '2024_08_24_046803_mahasiswa', 1),
	(8, '2024_08_24_114851_agama', 1);

-- Dumping data for table pwbnsp_laravel.mst_mahasiswa: ~0 rows (approximately)

-- Dumping data for table pwbnsp_laravel.password_reset_tokens: ~0 rows (approximately)

-- Dumping data for table pwbnsp_laravel.regions: ~480 rows (approximately)
REPLACE INTO `regions` (`id`, `provinsi`, `kota_kabupaten`, `created_at`, `updated_at`) VALUES
	(1, 'NAD Aceh', 'Kabupaten Aceh Barat', NULL, NULL),
	(2, 'NAD Aceh', 'Kabupaten Aceh Barat Daya', NULL, NULL),
	(3, 'NAD Aceh', 'Kabupaten Aceh Besar', NULL, NULL),
	(4, 'NAD Aceh', 'Kabupaten Aceh Jaya', NULL, NULL),
	(5, 'NAD Aceh', 'Kabupaten Aceh Selatan', NULL, NULL),
	(6, 'NAD Aceh', 'Kabupaten Aceh Singkil', NULL, NULL),
	(7, 'NAD Aceh', 'Kabupaten Aceh Tamiang', NULL, NULL),
	(8, 'NAD Aceh', 'Kabupaten Aceh Tengah', NULL, NULL),
	(9, 'NAD Aceh', 'Kabupaten Aceh Tenggara', NULL, NULL),
	(10, 'NAD Aceh', 'Kabupaten Aceh Timur', NULL, NULL),
	(11, 'NAD Aceh', 'Kabupaten Aceh Utara', NULL, NULL),
	(12, 'NAD Aceh', 'Kabupaten Bener Meriah', NULL, NULL),
	(13, 'NAD Aceh', 'Kabupaten Bireuen', NULL, NULL),
	(14, 'NAD Aceh', 'Kabupaten Gayo Lues', NULL, NULL),
	(15, 'NAD Aceh', 'Kabupaten Nagan Raya', NULL, NULL),
	(16, 'NAD Aceh', 'Kabupaten Pidie', NULL, NULL),
	(17, 'NAD Aceh', 'Kabupaten Pidie Jaya', NULL, NULL),
	(18, 'NAD Aceh', 'Kabupaten Simeulue', NULL, NULL),
	(19, 'NAD Aceh', 'Kota Banda Aceh', NULL, NULL),
	(20, 'NAD Aceh', 'Kota Langsa', NULL, NULL),
	(21, 'NAD Aceh', 'Kota Lhokseumawe', NULL, NULL),
	(22, 'NAD Aceh', 'Kota Sabang', NULL, NULL),
	(23, 'NAD Aceh', 'Kota Subulussalam', NULL, NULL),
	(24, 'Sumatera Utara', 'Kabupaten Asahan', NULL, NULL),
	(25, 'Sumatera Utara', 'Kabupaten Batubara', NULL, NULL),
	(26, 'Sumatera Utara', 'Kabupaten Dairi', NULL, NULL),
	(27, 'Sumatera Utara', 'Kabupaten Deli Serdang', NULL, NULL),
	(28, 'Sumatera Utara', 'Kabupaten Humbang Hasundutan', NULL, NULL),
	(29, 'Sumatera Utara', 'Kabupaten Karo', NULL, NULL),
	(30, 'Sumatera Utara', 'Kabupaten Labuhanbatu', NULL, NULL),
	(31, 'Sumatera Utara', 'Kabupaten Labuhanbatu Selatan', NULL, NULL),
	(32, 'Sumatera Utara', 'Kabupaten Labuhanbatu Utara', NULL, NULL),
	(33, 'Sumatera Utara', 'Kabupaten Langkat', NULL, NULL),
	(34, 'Sumatera Utara', 'Kabupaten Mandailing Natal', NULL, NULL),
	(35, 'Sumatera Utara', 'Kabupaten Nias', NULL, NULL),
	(36, 'Sumatera Utara', 'Kabupaten Nias Barat', NULL, NULL),
	(37, 'Sumatera Utara', 'Kabupaten Nias Selatan', NULL, NULL),
	(38, 'Sumatera Utara', 'Kabupaten Nias Utara', NULL, NULL),
	(39, 'Sumatera Utara', 'Kabupaten Padang Lawas', NULL, NULL),
	(40, 'Sumatera Utara', 'Kabupaten Padang Lawas Utara', NULL, NULL),
	(41, 'Sumatera Utara', 'Kabupaten Pakpak Bharat', NULL, NULL),
	(42, 'Sumatera Utara', 'Kabupaten Samosir', NULL, NULL),
	(43, 'Sumatera Utara', 'Kabupaten Serdang Bedagai', NULL, NULL),
	(44, 'Sumatera Utara', 'Kabupaten Simalungun', NULL, NULL),
	(45, 'Sumatera Utara', 'Kabupaten Tapanuli Selatan', NULL, NULL),
	(46, 'Sumatera Utara', 'Kabupaten Tapanuli Tengah', NULL, NULL),
	(47, 'Sumatera Utara', 'Kabupaten Tapanuli Utara', NULL, NULL),
	(48, 'Sumatera Utara', 'Kabupaten Toba Samosir', NULL, NULL),
	(49, 'Sumatera Utara', 'Kota Binjai', NULL, NULL),
	(50, 'Sumatera Utara', 'Kota Gunungsitoli', NULL, NULL),
	(51, 'Sumatera Utara', 'Kota Medan', NULL, NULL),
	(52, 'Sumatera Utara', 'Kota Padangsidempuan', NULL, NULL),
	(53, 'Sumatera Utara', 'Kota Pematangsiantar', NULL, NULL),
	(54, 'Sumatera Utara', 'Kota Sibolga', NULL, NULL),
	(55, 'Sumatera Utara', 'Kota Tanjungbalai', NULL, NULL),
	(56, 'Sumatera Utara', 'Kota Tebing Tinggi', NULL, NULL),
	(57, 'Sumatera Barat', 'Kabupaten Agam', NULL, NULL),
	(58, 'Sumatera Barat', 'Kabupaten Dharmasraya', NULL, NULL),
	(59, 'Sumatera Barat', 'Kabupaten Kepulauan Mentawai', NULL, NULL),
	(60, 'Sumatera Barat', 'Kabupaten Lima Puluh Kota', NULL, NULL),
	(61, 'Sumatera Barat', 'Kabupaten Padang Pariaman', NULL, NULL),
	(62, 'Sumatera Barat', 'Kabupaten Pasaman', NULL, NULL),
	(63, 'Sumatera Barat', 'Kabupaten Pasaman Barat', NULL, NULL),
	(64, 'Sumatera Barat', 'Kabupaten Pesisir Selatan', NULL, NULL),
	(65, 'Sumatera Barat', 'Kabupaten Sijunjung', NULL, NULL),
	(66, 'Sumatera Barat', 'Kabupaten Solok', NULL, NULL),
	(67, 'Sumatera Barat', 'Kabupaten Solok Selatan', NULL, NULL),
	(68, 'Sumatera Barat', 'Kabupaten Tanah Datar', NULL, NULL),
	(69, 'Sumatera Barat', 'Kota Bukittinggi', NULL, NULL),
	(70, 'Sumatera Barat', 'Kota Padang', NULL, NULL),
	(71, 'Sumatera Barat', 'Kota Padangpanjang', NULL, NULL),
	(72, 'Sumatera Barat', 'Kota Pariaman', NULL, NULL),
	(73, 'Sumatera Barat', 'Kota Payakumbuh', NULL, NULL),
	(74, 'Sumatera Barat', 'Kota Sawahlunto', NULL, NULL),
	(75, 'Sumatera Barat', 'Kota Solok', NULL, NULL),
	(76, 'Sumatera Selatan', 'Kabupaten Banyuasin', NULL, NULL),
	(77, 'Sumatera Selatan', 'Kabupaten Empat Lawang', NULL, NULL),
	(78, 'Sumatera Selatan', 'Kabupaten Lahat', NULL, NULL),
	(79, 'Sumatera Selatan', 'Kabupaten Muara Enim', NULL, NULL),
	(80, 'Sumatera Selatan', 'Kabupaten Musi Banyuasin', NULL, NULL),
	(81, 'Sumatera Selatan', 'Kabupaten Musi Rawas', NULL, NULL),
	(82, 'Sumatera Selatan', 'Kabupaten Musi Rawas Utara', NULL, NULL),
	(83, 'Sumatera Selatan', 'Kabupaten Ogan Ilir', NULL, NULL),
	(84, 'Sumatera Selatan', 'Kabupaten Ogan Komering Ilir', NULL, NULL),
	(85, 'Sumatera Selatan', 'Kabupaten Ogan Komering Ulu', NULL, NULL),
	(86, 'Sumatera Selatan', 'Kabupaten Ogan Komering Ulu Selatan', NULL, NULL),
	(87, 'Sumatera Selatan', 'Kabupaten Ogan Komering Ulu Timur', NULL, NULL),
	(88, 'Sumatera Selatan', 'Kabupaten Penukal Abab Lematang Ilir', NULL, NULL),
	(89, 'Sumatera Selatan', 'Kota Lubuklinggau', NULL, NULL),
	(90, 'Sumatera Selatan', 'Kota Pagar Alam', NULL, NULL),
	(91, 'Sumatera Selatan', 'Kota Palembang', NULL, NULL),
	(92, 'Sumatera Selatan', 'Kota Prabumulih', NULL, NULL),
	(93, 'Riau', 'Kabupaten Bengkalis', NULL, NULL),
	(94, 'Riau', 'Kabupaten Indragiri Hilir', NULL, NULL),
	(95, 'Riau', 'Kabupaten Indragiri Hulu', NULL, NULL),
	(96, 'Riau', 'Kabupaten Kampar', NULL, NULL),
	(97, 'Riau', 'Kabupaten Kepulauan Meranti', NULL, NULL),
	(98, 'Riau', 'Kabupaten Kuantan Singingi', NULL, NULL),
	(99, 'Riau', 'Kabupaten Pelalawan', NULL, NULL),
	(100, 'Riau', 'Kabupaten Rokan Hilir', NULL, NULL),
	(101, 'Riau', 'Kabupaten Rokan Hulu', NULL, NULL),
	(102, 'Riau', 'Kabupaten Siak', NULL, NULL),
	(103, 'Riau', 'Kota Dumai', NULL, NULL),
	(104, 'Riau', 'Kota Pekanbaru', NULL, NULL),
	(105, 'Kepulauan Riau', 'Kabupaten Bintan', NULL, NULL),
	(106, 'Kepulauan Riau', 'Kabupaten Karimun', NULL, NULL),
	(107, 'Kepulauan Riau', 'Kabupaten Kepulauan Anambas', NULL, NULL),
	(108, 'Kepulauan Riau', 'Kabupaten Lingga', NULL, NULL),
	(109, 'Kepulauan Riau', 'Kabupaten Natuna', NULL, NULL),
	(110, 'Kepulauan Riau', 'Kota Batam', NULL, NULL),
	(111, 'Kepulauan Riau', 'Kota Tanjung Pinang', NULL, NULL),
	(112, 'Jambi', 'Kabupaten Batanghari', NULL, NULL),
	(113, 'Jambi', 'Kabupaten Bungo', NULL, NULL),
	(114, 'Jambi', 'Kabupaten Kerinci', NULL, NULL),
	(115, 'Jambi', 'Kabupaten Merangin', NULL, NULL),
	(116, 'Jambi', 'Kabupaten Muaro Jambi', NULL, NULL),
	(117, 'Jambi', 'Kabupaten Sarolangun', NULL, NULL),
	(118, 'Jambi', 'Kabupaten Tanjung Jabung Barat', NULL, NULL),
	(119, 'Jambi', 'Kabupaten Tanjung Jabung Timur', NULL, NULL),
	(120, 'Jambi', 'Kabupaten Tebo', NULL, NULL),
	(121, 'Jambi', 'Kota Jambi', NULL, NULL),
	(122, 'Jambi', 'Kota Sungai Penuh', NULL, NULL),
	(123, 'Bengkulu', 'Kabupaten Bengkulu Selatan', NULL, NULL),
	(124, 'Bengkulu', 'Kabupaten Bengkulu Tengah', NULL, NULL),
	(125, 'Bengkulu', 'Kabupaten Bengkulu Utara', NULL, NULL),
	(126, 'Bengkulu', 'Kabupaten Kaur', NULL, NULL),
	(127, 'Bengkulu', 'Kabupaten Kepahiang', NULL, NULL),
	(128, 'Bengkulu', 'Kabupaten Lebong', NULL, NULL),
	(129, 'Bengkulu', 'Kabupaten Mukomuko', NULL, NULL),
	(130, 'Bengkulu', 'Kabupaten Rejang Lebong', NULL, NULL),
	(131, 'Bengkulu', 'Kabupaten Seluma', NULL, NULL),
	(132, 'Bengkulu', 'Kota Bengkulu', NULL, NULL),
	(133, 'Bangka Belitung', 'Kabupaten Bangka', NULL, NULL),
	(134, 'Bangka Belitung', 'Kabupaten Bangka Barat', NULL, NULL),
	(135, 'Bangka Belitung', 'Kabupaten Bangka Selatan', NULL, NULL),
	(136, 'Bangka Belitung', 'Kabupaten Bangka Tengah', NULL, NULL),
	(137, 'Bangka Belitung', 'Kabupaten Belitung', NULL, NULL),
	(138, 'Bangka Belitung', 'Kabupaten Belitung Timur', NULL, NULL),
	(139, 'Bangka Belitung', 'Kota Pangkal Pinang', NULL, NULL),
	(140, 'Lampung', 'Kabupaten Lampung Tengah', NULL, NULL),
	(141, 'Lampung', 'Kabupaten Lampung Utara', NULL, NULL),
	(142, 'Lampung', 'Kabupaten Lampung Selatan', NULL, NULL),
	(143, 'Lampung', 'Kabupaten Lampung Barat', NULL, NULL),
	(144, 'Lampung', 'Kabupaten Lampung Timur', NULL, NULL),
	(145, 'Lampung', 'Kabupaten Mesuji', NULL, NULL),
	(146, 'Lampung', 'Kabupaten Pesawaran', NULL, NULL),
	(147, 'Lampung', 'Kabupaten Pesisir Barat', NULL, NULL),
	(148, 'Lampung', 'Kabupaten Pringsewu', NULL, NULL),
	(149, 'Lampung', 'Kabupaten Tulang Bawang', NULL, NULL),
	(150, 'Lampung', 'Kabupaten Tulang Bawang Barat', NULL, NULL),
	(151, 'Lampung', 'Kabupaten Tanggamus', NULL, NULL),
	(152, 'Lampung', 'Kabupaten Way Kanan', NULL, NULL),
	(153, 'Lampung', 'Kota Bandar Lampung', NULL, NULL),
	(154, 'Lampung', 'Kota Metro', NULL, NULL),
	(155, 'Banten', 'Kabupaten Lebak', NULL, NULL),
	(156, 'Banten', 'Kabupaten Pandeglang', NULL, NULL),
	(157, 'Banten', 'Kabupaten Serang', NULL, NULL),
	(158, 'Banten', 'Kabupaten Tangerang', NULL, NULL),
	(159, 'Banten', 'Kota Cilegon', NULL, NULL),
	(160, 'Banten', 'Kota Serang', NULL, NULL),
	(161, 'Banten', 'Kota Tangerang', NULL, NULL),
	(162, 'Banten', 'Kota Tangerang Selatan', NULL, NULL),
	(163, 'Jawa Barat', 'Kabupaten Bandung', NULL, NULL),
	(164, 'Jawa Barat', 'Kabupaten Bandung Barat', NULL, NULL),
	(165, 'Jawa Barat', 'Kabupaten Bekasi', NULL, NULL),
	(166, 'Jawa Barat', 'Kabupaten Bogor', NULL, NULL),
	(167, 'Jawa Barat', 'Kabupaten Ciamis', NULL, NULL),
	(168, 'Jawa Barat', 'Kabupaten Cianjur', NULL, NULL),
	(169, 'Jawa Barat', 'Kabupaten Cirebon', NULL, NULL),
	(170, 'Jawa Barat', 'Kabupaten Garut', NULL, NULL),
	(171, 'Jawa Barat', 'Kabupaten Indramayu', NULL, NULL),
	(172, 'Jawa Barat', 'Kabupaten Karawang', NULL, NULL),
	(173, 'Jawa Barat', 'Kabupaten Kuningan', NULL, NULL),
	(174, 'Jawa Barat', 'Kabupaten Majalengka', NULL, NULL),
	(175, 'Jawa Barat', 'Kabupaten Pangandaran', NULL, NULL),
	(176, 'Jawa Barat', 'Kabupaten Purwakarta', NULL, NULL),
	(177, 'Jawa Barat', 'Kabupaten Subang', NULL, NULL),
	(178, 'Jawa Barat', 'Kabupaten Sukabumi', NULL, NULL),
	(179, 'Jawa Barat', 'Kabupaten Sumedang', NULL, NULL),
	(180, 'Jawa Barat', 'Kabupaten Tasikmalaya', NULL, NULL),
	(181, 'Jawa Barat', 'Kota Bandung', NULL, NULL),
	(182, 'Jawa Barat', 'Kota Banjar', NULL, NULL),
	(183, 'Jawa Barat', 'Kota Bekasi', NULL, NULL),
	(184, 'Jawa Barat', 'Kota Bogor', NULL, NULL),
	(185, 'Jawa Barat', 'Kota Cimahi', NULL, NULL),
	(186, 'Jawa Barat', 'Kota Cirebon', NULL, NULL),
	(187, 'Jawa Barat', 'Kota Depok', NULL, NULL),
	(188, 'Jawa Barat', 'Kota Sukabumi', NULL, NULL),
	(189, 'Jawa Barat', 'Kota Tasikmalaya', NULL, NULL),
	(190, 'DKI Jakarta', 'Kota Jakarta Barat', NULL, NULL),
	(191, 'DKI Jakarta', 'Kota Jakarta Pusat', NULL, NULL),
	(192, 'DKI Jakarta', 'Kota Jakarta Selatan', NULL, NULL),
	(193, 'DKI Jakarta', 'Kota Jakarta Timur', NULL, NULL),
	(194, 'DKI Jakarta', 'Kota Jakarta Utara', NULL, NULL),
	(195, 'DKI Jakarta', 'Kepulauan Seribu', NULL, NULL),
	(196, 'Jawa Tengah', 'Kabupaten Banjarnegara', NULL, NULL),
	(197, 'Jawa Tengah', 'Kabupaten Batang', NULL, NULL),
	(198, 'Jawa Tengah', 'Kabupaten Blora', NULL, NULL),
	(199, 'Jawa Tengah', 'Kabupaten Boyolali', NULL, NULL),
	(200, 'Jawa Tengah', 'Kabupaten Brebes', NULL, NULL),
	(201, 'Jawa Tengah', 'Kabupaten Cilacap', NULL, NULL),
	(202, 'Jawa Tengah', 'Kabupaten Demak', NULL, NULL),
	(203, 'Jawa Tengah', 'Kabupaten Grobogan', NULL, NULL),
	(204, 'Jawa Tengah', 'Kabupaten Jepara', NULL, NULL),
	(205, 'Jawa Tengah', 'Kabupaten Karanganyar', NULL, NULL),
	(206, 'Jawa Tengah', 'Kabupaten Kebumen', NULL, NULL),
	(207, 'Jawa Tengah', 'Kabupaten Kendal', NULL, NULL),
	(208, 'Jawa Tengah', 'Kabupaten Klaten', NULL, NULL),
	(209, 'Jawa Tengah', 'Kabupaten Kudus', NULL, NULL),
	(210, 'Jawa Tengah', 'Kabupaten Magelang', NULL, NULL),
	(211, 'Jawa Tengah', 'Kabupaten Pati', NULL, NULL),
	(212, 'Jawa Tengah', 'Kabupaten Pekalongan', NULL, NULL),
	(213, 'Jawa Tengah', 'Kabupaten Pemalang', NULL, NULL),
	(214, 'Jawa Tengah', 'Kabupaten Purbalingga', NULL, NULL),
	(215, 'Jawa Tengah', 'Kabupaten Purworejo', NULL, NULL),
	(216, 'Jawa Tengah', 'Kabupaten Rembang', NULL, NULL),
	(217, 'Jawa Tengah', 'Kabupaten Semarang', NULL, NULL),
	(218, 'Jawa Tengah', 'Kabupaten Sragen', NULL, NULL),
	(219, 'Jawa Tengah', 'Kabupaten Sukoharjo', NULL, NULL),
	(220, 'Jawa Tengah', 'Kabupaten Tegal', NULL, NULL),
	(221, 'Jawa Tengah', 'Kabupaten Temanggung', NULL, NULL),
	(222, 'Jawa Tengah', 'Kabupaten Wonogiri', NULL, NULL),
	(223, 'Jawa Tengah', 'Kabupaten Wonosobo', NULL, NULL),
	(224, 'Jawa Tengah', 'Kota Magelang', NULL, NULL),
	(225, 'Jawa Tengah', 'Kota Pekalongan', NULL, NULL),
	(226, 'Jawa Tengah', 'Kota Semarang', NULL, NULL),
	(227, 'Jawa Tengah', 'Kota Surakarta', NULL, NULL),
	(228, 'Jawa Tengah', 'Kota Tegal', NULL, NULL),
	(229, 'DIY Yogyakarta', 'Kabupaten Bantul', NULL, NULL),
	(230, 'DIY Yogyakarta', 'Kabupaten Gunung Kidul', NULL, NULL),
	(231, 'DIY Yogyakarta', 'Kabupaten Kulon Progo', NULL, NULL),
	(232, 'DIY Yogyakarta', 'Kabupaten Sleman', NULL, NULL),
	(233, 'DIY Yogyakarta', 'Kota Yogyakarta', NULL, NULL),
	(234, 'Jawa Timur', 'Kabupaten Bangkalan', NULL, NULL),
	(235, 'Jawa Timur', 'Kabupaten Banyuwangi', NULL, NULL),
	(236, 'Jawa Timur', 'Kabupaten Blitar', NULL, NULL),
	(237, 'Jawa Timur', 'Kabupaten Bojonegoro', NULL, NULL),
	(238, 'Jawa Timur', 'Kabupaten Bondowoso', NULL, NULL),
	(239, 'Jawa Timur', 'Kabupaten Gresik', NULL, NULL),
	(240, 'Jawa Timur', 'Kabupaten Jember', NULL, NULL),
	(241, 'Jawa Timur', 'Kabupaten Jombang', NULL, NULL),
	(242, 'Jawa Timur', 'Kabupaten Kediri', NULL, NULL),
	(243, 'Jawa Timur', 'Kabupaten Lamongan', NULL, NULL),
	(244, 'Jawa Timur', 'Kabupaten Lumajang', NULL, NULL),
	(245, 'Jawa Timur', 'Kabupaten Madiun', NULL, NULL),
	(246, 'Jawa Timur', 'Kabupaten Magetan', NULL, NULL),
	(247, 'Jawa Timur', 'Kabupaten Mojokerto', NULL, NULL),
	(248, 'Jawa Timur', 'Kabupaten Nganjuk', NULL, NULL),
	(249, 'Jawa Timur', 'Kabupaten Ngawi', NULL, NULL),
	(250, 'Jawa Timur', 'Kabupaten Pacitan', NULL, NULL),
	(251, 'Jawa Timur', 'Kabupaten Pamekasan', NULL, NULL),
	(252, 'Jawa Timur', 'Kabupaten Ponorogo', NULL, NULL),
	(253, 'Jawa Timur', 'Kabupaten Probolinggo', NULL, NULL),
	(254, 'Jawa Timur', 'Kabupaten Sampang', NULL, NULL),
	(255, 'Jawa Timur', 'Kabupaten Sidoarjo', NULL, NULL),
	(256, 'Jawa Timur', 'Kabupaten Situbondo', NULL, NULL),
	(257, 'Jawa Timur', 'Kabupaten Sumenep', NULL, NULL),
	(258, 'Jawa Timur', 'Kabupaten Trenggalek', NULL, NULL),
	(259, 'Jawa Timur', 'Kabupaten Tuban', NULL, NULL),
	(260, 'Jawa Timur', 'Kabupaten Tulungagung', NULL, NULL),
	(261, 'Jawa Timur', 'Kota Batu', NULL, NULL),
	(262, 'Jawa Timur', 'Kota Blitar', NULL, NULL),
	(263, 'Jawa Timur', 'Kota Kediri', NULL, NULL),
	(264, 'Jawa Timur', 'Kota Madiun', NULL, NULL),
	(265, 'Jawa Timur', 'Kota Mojokerto', NULL, NULL),
	(266, 'Jawa Timur', 'Kota Pasuruan', NULL, NULL),
	(267, 'Jawa Timur', 'Kota Probolinggo', NULL, NULL),
	(268, 'Jawa Timur', 'Kota Surabaya', NULL, NULL),
	(269, 'Bali', 'Kabupaten Badung', NULL, NULL),
	(270, 'Bali', 'Kabupaten Bangli', NULL, NULL),
	(271, 'Bali', 'Kabupaten Buleleng', NULL, NULL),
	(272, 'Bali', 'Kabupaten Gianyar', NULL, NULL),
	(273, 'Bali', 'Kabupaten Jembrana', NULL, NULL),
	(274, 'Bali', 'Kabupaten Karangasem', NULL, NULL),
	(275, 'Bali', 'Kabupaten Klungkung', NULL, NULL),
	(276, 'Bali', 'Kabupaten Tabanan', NULL, NULL),
	(277, 'Bali', 'Kota Denpasar', NULL, NULL),
	(278, 'Nusa Tenggara Barat', 'Kabupaten Bima', NULL, NULL),
	(279, 'Nusa Tenggara Barat', 'Kabupaten Dompu', NULL, NULL),
	(280, 'Nusa Tenggara Barat', 'Kabupaten Lombok Barat', NULL, NULL),
	(281, 'Nusa Tenggara Barat', 'Kabupaten Lombok Tengah', NULL, NULL),
	(282, 'Nusa Tenggara Barat', 'Kabupaten Lombok Timur', NULL, NULL),
	(283, 'Nusa Tenggara Barat', 'Kabupaten Lombok Utara', NULL, NULL),
	(284, 'Nusa Tenggara Barat', 'Kabupaten Sumbawa', NULL, NULL),
	(285, 'Nusa Tenggara Barat', 'Kabupaten Sumbawa Barat', NULL, NULL),
	(286, 'Nusa Tenggara Barat', 'Kota Bima', NULL, NULL),
	(287, 'Nusa Tenggara Barat', 'Kota Mataram', NULL, NULL),
	(288, 'Nusa Tenggara Timur', 'Kabupaten Belu', NULL, NULL),
	(289, 'Nusa Tenggara Timur', 'Kabupaten Ende', NULL, NULL),
	(290, 'Nusa Tenggara Timur', 'Kabupaten Flores Timur', NULL, NULL),
	(291, 'Nusa Tenggara Timur', 'Kabupaten Kupang', NULL, NULL),
	(292, 'Nusa Tenggara Timur', 'Kabupaten Lembata', NULL, NULL),
	(293, 'Nusa Tenggara Timur', 'Kabupaten Manggarai', NULL, NULL),
	(294, 'Nusa Tenggara Timur', 'Kabupaten Manggarai Barat', NULL, NULL),
	(295, 'Nusa Tenggara Timur', 'Kabupaten Manggarai Timur', NULL, NULL),
	(296, 'Nusa Tenggara Timur', 'Kabupaten Nagekeo', NULL, NULL),
	(297, 'Nusa Tenggara Timur', 'Kabupaten Ngada', NULL, NULL),
	(298, 'Nusa Tenggara Timur', 'Kabupaten Sikka', NULL, NULL),
	(299, 'Nusa Tenggara Timur', 'Kabupaten Sumba Barat', NULL, NULL),
	(300, 'Nusa Tenggara Timur', 'Kabupaten Sumba Barat Daya', NULL, NULL),
	(301, 'Nusa Tenggara Timur', 'Kabupaten Sumba Tengah', NULL, NULL),
	(302, 'Nusa Tenggara Timur', 'Kabupaten Sumba Timur', NULL, NULL),
	(303, 'Nusa Tenggara Timur', 'Kabupaten Timor Tengah Selatan', NULL, NULL),
	(304, 'Nusa Tenggara Timur', 'Kabupaten Timor Tengah Utara', NULL, NULL),
	(305, 'Nusa Tenggara Timur', 'Kota Kupang', NULL, NULL),
	(306, 'Kalimantan Barat', 'Kabupaten Bengkayang', NULL, NULL),
	(307, 'Kalimantan Barat', 'Kabupaten Kapuas Hulu', NULL, NULL),
	(308, 'Kalimantan Barat', 'Kabupaten Kayong Utara', NULL, NULL),
	(309, 'Kalimantan Barat', 'Kabupaten Ketapang', NULL, NULL),
	(310, 'Kalimantan Barat', 'Kabupaten Kubu Raya', NULL, NULL),
	(311, 'Kalimantan Barat', 'Kabupaten Landak', NULL, NULL),
	(312, 'Kalimantan Barat', 'Kabupaten Melawi', NULL, NULL),
	(313, 'Kalimantan Barat', 'Kabupaten Mempawah', NULL, NULL),
	(314, 'Kalimantan Barat', 'Kabupaten Sambas', NULL, NULL),
	(315, 'Kalimantan Barat', 'Kabupaten Sanggau', NULL, NULL),
	(316, 'Kalimantan Barat', 'Kabupaten Sekadau', NULL, NULL),
	(317, 'Kalimantan Barat', 'Kabupaten Sintang', NULL, NULL),
	(318, 'Kalimantan Barat', 'Kota Pontianak', NULL, NULL),
	(319, 'Kalimantan Barat', 'Kota Singkawang', NULL, NULL),
	(320, 'Kalimantan Tengah', 'Kabupaten Barito Selatan', NULL, NULL),
	(321, 'Kalimantan Tengah', 'Kabupaten Barito Timur', NULL, NULL),
	(322, 'Kalimantan Tengah', 'Kabupaten Barito Utara', NULL, NULL),
	(323, 'Kalimantan Tengah', 'Kabupaten Gunung Mas', NULL, NULL),
	(324, 'Kalimantan Tengah', 'Kabupaten Kapuas', NULL, NULL),
	(325, 'Kalimantan Tengah', 'Kabupaten Katingan', NULL, NULL),
	(326, 'Kalimantan Tengah', 'Kabupaten Kotawaringin Barat', NULL, NULL),
	(327, 'Kalimantan Tengah', 'Kabupaten Kotawaringin Timur', NULL, NULL),
	(328, 'Kalimantan Tengah', 'Kabupaten Lamandau', NULL, NULL),
	(329, 'Kalimantan Tengah', 'Kabupaten Murung Raya', NULL, NULL),
	(330, 'Kalimantan Tengah', 'Kabupaten Palangka Raya', NULL, NULL),
	(331, 'Kalimantan Tengah', 'Kabupaten Pulang Pisau', NULL, NULL),
	(332, 'Kalimantan Tengah', 'Kabupaten Sukamara', NULL, NULL),
	(333, 'Kalimantan Tengah', 'Kabupaten Seruyan', NULL, NULL),
	(334, 'Kalimantan Selatan', 'Kabupaten Balangan', NULL, NULL),
	(335, 'Kalimantan Selatan', 'Kabupaten Banjar', NULL, NULL),
	(336, 'Kalimantan Selatan', 'Kabupaten Barito Kuala', NULL, NULL),
	(337, 'Kalimantan Selatan', 'Kabupaten Hulu Sungai Selatan', NULL, NULL),
	(338, 'Kalimantan Selatan', 'Kabupaten Hulu Sungai Tengah', NULL, NULL),
	(339, 'Kalimantan Selatan', 'Kabupaten Hulu Sungai Utara', NULL, NULL),
	(340, 'Kalimantan Selatan', 'Kabupaten Kotabaru', NULL, NULL),
	(341, 'Kalimantan Selatan', 'Kabupaten Tabalong', NULL, NULL),
	(342, 'Kalimantan Selatan', 'Kabupaten Tanah Bumbu', NULL, NULL),
	(343, 'Kalimantan Selatan', 'Kabupaten Tanah Laut', NULL, NULL),
	(344, 'Kalimantan Selatan', 'Kabupaten Tapin', NULL, NULL),
	(345, 'Kalimantan Selatan', 'Kota Banjarbaru', NULL, NULL),
	(346, 'Kalimantan Selatan', 'Kota Banjarmasin', NULL, NULL),
	(347, 'Kalimantan Timur', 'Kabupaten Berau', NULL, NULL),
	(348, 'Kalimantan Timur', 'Kabupaten Kutai Barat', NULL, NULL),
	(349, 'Kalimantan Timur', 'Kabupaten Kutai Kartanegara', NULL, NULL),
	(350, 'Kalimantan Timur', 'Kabupaten Kutai Timur', NULL, NULL),
	(351, 'Kalimantan Timur', 'Kabupaten Mahakam Ulu', NULL, NULL),
	(352, 'Kalimantan Timur', 'Kabupaten Paser', NULL, NULL),
	(353, 'Kalimantan Timur', 'Kabupaten Penajam Paser Utara', NULL, NULL),
	(354, 'Kalimantan Timur', 'Kota Balikpapan', NULL, NULL),
	(355, 'Kalimantan Timur', 'Kota Bontang', NULL, NULL),
	(356, 'Kalimantan Timur', 'Kota Samarinda', NULL, NULL),
	(357, 'Kalimantan Utara', 'Kabupaten Bulungan', NULL, NULL),
	(358, 'Kalimantan Utara', 'Kabupaten Malinau', NULL, NULL),
	(359, 'Kalimantan Utara', 'Kabupaten Nunukan', NULL, NULL),
	(360, 'Kalimantan Utara', 'Kabupaten Tana Tidung', NULL, NULL),
	(361, 'Kalimantan Utara', 'Kota Tarakan', NULL, NULL),
	(362, 'Sulawesi Utara', 'Kabupaten Bolaang Mongondow', NULL, NULL),
	(363, 'Sulawesi Utara', 'Kabupaten Bolaang Mongondow Selatan', NULL, NULL),
	(364, 'Sulawesi Utara', 'Kabupaten Bolaang Mongondow Timur', NULL, NULL),
	(365, 'Sulawesi Utara', 'Kabupaten Bolaang Mongondow Utara', NULL, NULL),
	(366, 'Sulawesi Utara', 'Kabupaten Minahasa', NULL, NULL),
	(367, 'Sulawesi Utara', 'Kabupaten Minahasa Selatan', NULL, NULL),
	(368, 'Sulawesi Utara', 'Kabupaten Minahasa Tenggara', NULL, NULL),
	(369, 'Sulawesi Utara', 'Kabupaten Minahasa Utara', NULL, NULL),
	(370, 'Sulawesi Utara', 'Kabupaten Sangihe', NULL, NULL),
	(371, 'Sulawesi Utara', 'Kabupaten Siau Tagulandang Biaro', NULL, NULL),
	(372, 'Sulawesi Utara', 'Kabupaten Kepulauan Sangihe', NULL, NULL),
	(373, 'Sulawesi Utara', 'Kota Bitung', NULL, NULL),
	(374, 'Sulawesi Utara', 'Kota Manado', NULL, NULL),
	(375, 'Sulawesi Utara', 'Kota Tomohon', NULL, NULL),
	(376, 'Sulawesi Tengah', 'Kabupaten Banggai', NULL, NULL),
	(377, 'Sulawesi Tengah', 'Kabupaten Banggai Kepulauan', NULL, NULL),
	(378, 'Sulawesi Tengah', 'Kabupaten Buol', NULL, NULL),
	(379, 'Sulawesi Tengah', 'Kabupaten Donggala', NULL, NULL),
	(380, 'Sulawesi Tengah', 'Kabupaten Morowali', NULL, NULL),
	(381, 'Sulawesi Tengah', 'Kabupaten Morowali Utara', NULL, NULL),
	(382, 'Sulawesi Tengah', 'Kabupaten Parigi Moutong', NULL, NULL),
	(383, 'Sulawesi Tengah', 'Kabupaten Poso', NULL, NULL),
	(384, 'Sulawesi Tengah', 'Kabupaten Tojo Una-Una', NULL, NULL),
	(385, 'Sulawesi Tengah', 'Kota Palu', NULL, NULL),
	(386, 'Sulawesi Selatan', 'Kabupaten Bantaeng', NULL, NULL),
	(387, 'Sulawesi Selatan', 'Kabupaten Barru', NULL, NULL),
	(388, 'Sulawesi Selatan', 'Kabupaten Bone', NULL, NULL),
	(389, 'Sulawesi Selatan', 'Kabupaten Bulukumba', NULL, NULL),
	(390, 'Sulawesi Selatan', 'Kabupaten Enrekang', NULL, NULL),
	(391, 'Sulawesi Selatan', 'Kabupaten Gowa', NULL, NULL),
	(392, 'Sulawesi Selatan', 'Kabupaten Jeneponto', NULL, NULL),
	(393, 'Sulawesi Selatan', 'Kabupaten Luwu', NULL, NULL),
	(394, 'Sulawesi Selatan', 'Kabupaten Luwu Timur', NULL, NULL),
	(395, 'Sulawesi Selatan', 'Kabupaten Luwu Utara', NULL, NULL),
	(396, 'Sulawesi Selatan', 'Kabupaten Maros', NULL, NULL),
	(397, 'Sulawesi Selatan', 'Kabupaten Pangkep', NULL, NULL),
	(398, 'Sulawesi Selatan', 'Kabupaten Pinrang', NULL, NULL),
	(399, 'Sulawesi Selatan', 'Kabupaten Selayar', NULL, NULL),
	(400, 'Sulawesi Selatan', 'Kabupaten Sidenreng Rappang', NULL, NULL),
	(401, 'Sulawesi Selatan', 'Kabupaten Sinjai', NULL, NULL),
	(402, 'Sulawesi Selatan', 'Kabupaten Soppeng', NULL, NULL),
	(403, 'Sulawesi Selatan', 'Kabupaten Takalar', NULL, NULL),
	(404, 'Sulawesi Selatan', 'Kabupaten Tana Toraja', NULL, NULL),
	(405, 'Sulawesi Selatan', 'Kabupaten Toraja Utara', NULL, NULL),
	(406, 'Sulawesi Selatan', 'Kota Makassar', NULL, NULL),
	(407, 'Sulawesi Selatan', 'Kota Parepare', NULL, NULL),
	(408, 'Sulawesi Selatan', 'Kota Palopo', NULL, NULL),
	(409, 'Sulawesi Tenggara', 'Kabupaten Buton', NULL, NULL),
	(410, 'Sulawesi Tenggara', 'Kabupaten Buton Selatan', NULL, NULL),
	(411, 'Sulawesi Tenggara', 'Kabupaten Buton Tengah', NULL, NULL),
	(412, 'Sulawesi Tenggara', 'Kabupaten Buton Utara', NULL, NULL),
	(413, 'Sulawesi Tenggara', 'Kabupaten Kolaka', NULL, NULL),
	(414, 'Sulawesi Tenggara', 'Kabupaten Kolaka Timur', NULL, NULL),
	(415, 'Sulawesi Tenggara', 'Kabupaten Kolaka Utara', NULL, NULL),
	(416, 'Sulawesi Tenggara', 'Kabupaten Konawe', NULL, NULL),
	(417, 'Sulawesi Tenggara', 'Kabupaten Konawe Kepulauan', NULL, NULL),
	(418, 'Sulawesi Tenggara', 'Kabupaten Konawe Selatan', NULL, NULL),
	(419, 'Sulawesi Tenggara', 'Kabupaten Konawe Utara', NULL, NULL),
	(420, 'Sulawesi Tenggara', 'Kabupaten Muna', NULL, NULL),
	(421, 'Sulawesi Tenggara', 'Kabupaten Wakatobi', NULL, NULL),
	(422, 'Sulawesi Tenggara', 'Kota Bau-Bau', NULL, NULL),
	(423, 'Sulawesi Tenggara', 'Kota Kendari', NULL, NULL),
	(424, 'Gorontalo', 'Kabupaten Boalemo', NULL, NULL),
	(425, 'Gorontalo', 'Kabupaten Bone Bolango', NULL, NULL),
	(426, 'Gorontalo', 'Kabupaten Gorontalo', NULL, NULL),
	(427, 'Gorontalo', 'Kabupaten Gorontalo Utara', NULL, NULL),
	(428, 'Gorontalo', 'Kabupaten Pohuwato', NULL, NULL),
	(429, 'Gorontalo', 'Kota Gorontalo', NULL, NULL),
	(430, 'Maluku', 'Kabupaten Buru', NULL, NULL),
	(431, 'Maluku', 'Kabupaten Buru Selatan', NULL, NULL),
	(432, 'Maluku', 'Kabupaten Maluku Barat Daya', NULL, NULL),
	(433, 'Maluku', 'Kabupaten Maluku Tengah', NULL, NULL),
	(434, 'Maluku', 'Kabupaten Maluku Tenggara', NULL, NULL),
	(435, 'Maluku', 'Kabupaten Maluku Tenggara Barat', NULL, NULL),
	(436, 'Maluku', 'Kabupaten Seram Bagian Barat', NULL, NULL),
	(437, 'Maluku', 'Kabupaten Seram Bagian Timur', NULL, NULL),
	(438, 'Maluku', 'Kota Ambon', NULL, NULL),
	(439, 'Maluku Utara', 'Kabupaten Halmahera Barat', NULL, NULL),
	(440, 'Maluku Utara', 'Kabupaten Halmahera Tengah', NULL, NULL),
	(441, 'Maluku Utara', 'Kabupaten Halmahera Timur', NULL, NULL),
	(442, 'Maluku Utara', 'Kabupaten Halmahera Utara', NULL, NULL),
	(443, 'Maluku Utara', 'Kabupaten Halmahera Selatan', NULL, NULL),
	(444, 'Maluku Utara', 'Kabupaten Kepulauan Sula', NULL, NULL),
	(445, 'Maluku Utara', 'Kabupaten Pulau Morotai', NULL, NULL),
	(446, 'Maluku Utara', 'Kabupaten Pulau Taliabu', NULL, NULL),
	(447, 'Maluku Utara', 'Kota Ternate', NULL, NULL),
	(448, 'Maluku Utara', 'Kota Tidore Kepulauan', NULL, NULL),
	(449, 'Papua Barat', 'Kabupaten Fakfak', NULL, NULL),
	(450, 'Papua Barat', 'Kabupaten Kaimana', NULL, NULL),
	(451, 'Papua Barat', 'Kabupaten Manokwari', NULL, NULL),
	(452, 'Papua Barat', 'Kabupaten Maybrat', NULL, NULL),
	(453, 'Papua Barat', 'Kabupaten Pegunungan Arfak', NULL, NULL),
	(454, 'Papua Barat', 'Kabupaten Raja Ampat', NULL, NULL),
	(455, 'Papua Barat', 'Kabupaten Sorong', NULL, NULL),
	(456, 'Papua Barat', 'Kabupaten Tambrauw', NULL, NULL),
	(457, 'Papua Barat', 'Kabupaten Teluk Bintuni', NULL, NULL),
	(458, 'Papua Barat', 'Kabupaten Teluk Wondama', NULL, NULL),
	(459, 'Papua Barat', 'Kota Sorong', NULL, NULL),
	(460, 'Papua', 'Kabupaten Asmat', NULL, NULL),
	(461, 'Papua', 'Kabupaten Biak Numfor', NULL, NULL),
	(462, 'Papua', 'Kabupaten Boven Digoel', NULL, NULL),
	(463, 'Papua', 'Kabupaten Deiyai', NULL, NULL),
	(464, 'Papua', 'Kabupaten Dogiyai', NULL, NULL),
	(465, 'Papua', 'Kabupaten Intan Jaya', NULL, NULL),
	(466, 'Papua', 'Kabupaten Jayapura', NULL, NULL),
	(467, 'Papua', 'Kabupaten Jayawijaya', NULL, NULL),
	(468, 'Papua', 'Kabupaten Keerom', NULL, NULL),
	(469, 'Papua', 'Kabupaten Mamberamo Raya', NULL, NULL),
	(470, 'Papua', 'Kabupaten Mamberamo Tengah', NULL, NULL),
	(471, 'Papua', 'Kabupaten Nduga', NULL, NULL),
	(472, 'Papua', 'Kabupaten Paniai', NULL, NULL),
	(473, 'Papua', 'Kabupaten Puncak', NULL, NULL),
	(474, 'Papua', 'Kabupaten Puncak Jaya', NULL, NULL),
	(475, 'Papua', 'Kabupaten Supiori', NULL, NULL),
	(476, 'Papua', 'Kabupaten Tolikara', NULL, NULL),
	(477, 'Papua', 'Kabupaten Yahukimo', NULL, NULL),
	(478, 'Papua', 'Kabupaten Yalimo', NULL, NULL),
	(479, 'Papua', 'Kabupaten Yapen', NULL, NULL),
	(480, 'Papua', 'Kota Jayapura', NULL, NULL);

-- Dumping data for table pwbnsp_laravel.registrasi_mahasiswa: ~4 rows (approximately)
REPLACE INTO `registrasi_mahasiswa` (`id`, `status`, `region_pribadi_id`, `region_tempat_lahir_id`, `kecamatan`, `nama_lengkap`, `alamat_ktp`, `alamat_lengkap`, `nomor_telepon`, `nomor_handphone`, `email`, `kewarganegaraan`, `negara_wna`, `tanggal_lahir`, `tempat_lahir`, `jenis_kelamin`, `status_menikah`, `agama`, `nem`, `created_at`, `updated_at`) VALUES
	(1, 'user', 26, 24, 'Manggis', 'guest', 'Areman Residance, Jl. H. A. Mutholib, Tugu, Kec. Cimanggis, Kota Depok, Jawa Barat 16451', 'Areman Residance, Jl. H. A. Mutholib, Tugu, Kec. Cimanggis, Kota Depok, Jawa Barat 16451', '85155113365', '85155113365', 'guest@mail.com', 'WNI Keturunan', NULL, '2024-08-15', 'Jakarta', 'pria', 'belum menikah', 'islam', '4.75', '2024-08-24 13:09:44', '2024-08-24 17:03:05'),
	(2, 'user', 1, NULL, 'Bojong Sari', 'HAMZA FIRDAUS', 'Areman Residance, Jl. H. A. Mutholib, Tugu, Kec. Cimanggis, Kota Depok, Jawa Barat 16451', 'Areman Residance, Jl. H. A. Mutholib, Tugu, Kec. Cimanggis, Kota Depok, Jawa Barat 16451', '85155113365', '85155113365', 'guest2@mail.com', 'WNA', 'Indonesia', '2024-08-15', 'Indonesia', 'pria', 'menikah', 'islam', '3.5', '2024-08-24 14:13:45', '2024-08-24 17:15:58'),
	(4, 'accepted', 24, 76, 'Bojong Sari', 'HAMZA FIRDAUS', 'Areman Residance, Jl. H. A. Mutholib, Tugu, Kec. Cimanggis, Kota Depok, Jawa Barat 16451', 'Areman Residance, Jl. H. A. Mutholib, Tugu, Kec. Cimanggis, Kota Depok, Jawa Barat 16451', '85155113365', '85155113365', 'test@mail.com', 'WNI Asli', NULL, '2024-08-08', 'Indonesia', 'pria', 'belum menikah', 'islam', '5', '2024-08-24 16:46:55', '2024-08-24 17:31:26'),
	(5, 'pending', 24, 24, 'Cimanggis', 'guest', 'Areman Residance, Jl. H. A. Mutholib, Tugu, Kec. Cimanggis, Kota Depok, Jawa Barat 16451', 'Areman Residance, Jl. H. A. Mutholib, Tugu, Kec. Cimanggis, Kota Depok, Jawa Barat 16451', '85155113365', '85155113365', 'guest@mail.com', 'WNI Keturunan', NULL, '2024-08-09', 'Indonesia', 'pria', 'menikah', 'katolik', '40', '2024-08-24 17:40:31', '2024-08-24 17:40:31'),
	(6, 'pending', 24, 24, 'Cimanggis', 'guest', 'Areman Residance, Jl. H. A. Mutholib, Tugu, Kec. Cimanggis, Kota Depok, Jawa Barat 16451', 'Areman Residance, Jl. H. A. Mutholib, Tugu, Kec. Cimanggis, Kota Depok, Jawa Barat 16451', '85155113365', '85155113365', 'guest@mail.com', 'WNI Keturunan', NULL, '2024-08-02', 'Indonesia', 'pria', 'belum menikah', 'islam', '40', '2024-08-24 17:43:02', '2024-08-24 17:43:02');

-- Dumping data for table pwbnsp_laravel.sessions: ~0 rows (approximately)
REPLACE INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('fM0voZ5HVICbDlKtKUkaj0Th16brG3KqCrLhLCWN', 15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR0twcVY2cHFvS2JqNzhMdUJNcDFrSTZnb2R2aVQxSTY3cDZIYjFpMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTU7fQ==', 1724547567);

-- Dumping data for table pwbnsp_laravel.users: ~9 rows (approximately)
REPLACE INTO `users` (`id`, `registrasi_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
	(1, NULL, 'Miss Marjory Bartoletti Sr.', 'erdman.humberto@example.org', '2024-08-24 12:56:28', '$2y$12$Q4gKLfdK8/xvztK6Tq3KvOekY2uhRa59ye8p9m9dtClbTs/q0F5LO', 'bY2IWRBC7b', '2024-08-24 12:56:28', '2024-08-24 12:56:28', 'user'),
	(2, NULL, 'Miss Verla Vandervort V', 'ohara.lolita@example.org', '2024-08-24 12:56:28', '$2y$12$Q4gKLfdK8/xvztK6Tq3KvOekY2uhRa59ye8p9m9dtClbTs/q0F5LO', 'oGHBM2iALP', '2024-08-24 12:56:28', '2024-08-24 12:56:28', 'user'),
	(5, NULL, 'Ms. Sydnie Rogahn', 'mklein@example.com', '2024-08-24 12:56:28', '$2y$12$Q4gKLfdK8/xvztK6Tq3KvOekY2uhRa59ye8p9m9dtClbTs/q0F5LO', 'Sf2FwEBrVX', '2024-08-24 12:56:28', '2024-08-24 12:56:28', 'user'),
	(8, NULL, 'Zula Abshire', 'waino.boyer@example.com', '2024-08-24 12:56:28', '$2y$12$Q4gKLfdK8/xvztK6Tq3KvOekY2uhRa59ye8p9m9dtClbTs/q0F5LO', 'TgOjB0Je3a', '2024-08-24 12:56:28', '2024-08-24 12:56:28', 'user'),
	(9, NULL, 'Mr. Frederic Kiehn', 'krista.johns@example.org', '2024-08-24 12:56:28', '$2y$12$Q4gKLfdK8/xvztK6Tq3KvOekY2uhRa59ye8p9m9dtClbTs/q0F5LO', 'WGB95qi4P3', '2024-08-24 12:56:28', '2024-08-24 12:56:28', 'user'),
	(11, NULL, 'admin A', 'admin@mail.com', '2024-08-24 12:56:28', '$2y$12$5eXdK2Ec23MVEwBUugJynOVWayeH7W81GBolxAiOlqwG924/L8tSq', 'upUeYNGOpIbI0o8hVzz0Ti2VHHXiNc69pbDy60pmqbo1pFnUfs2FmD3FKQQs', '2024-08-24 12:56:28', '2024-08-24 12:56:28', 'admin'),
	(12, NULL, 'admin B', 'admin2@mail.com', '2024-08-24 12:56:29', '$2y$12$s0Vohrwb257NvBawAVgQxusw4D19vq1XSrKoGTtoie0mxS9xWBIEW', 'ey0pP932OBPgSK6nQcXrdx6Utpm4pBFywYGB007oKBpvrBU9UgvzmzFCzBHZ', '2024-08-24 12:56:29', '2024-08-24 13:51:08', 'admin'),
	(15, '1', 'guest', 'guest@mail.com', NULL, '$2y$12$N6bQZ5gb7a83xx0Ngz745ujX8nmbSLBemZxWAScT9OkroqJ4Wa3AS', 'BxRSQAtJnz0cn66eByT7obDOCJGcz41kHSDCrEN1FCJ8DSJVh46GOGk2DEe1', '2024-08-24 13:23:54', '2024-08-24 13:23:54', 'user'),
	(16, '2', 'HAMZA FIRDAUS', 'guest2@mail.com', NULL, '$2y$12$Ws/gqbggsw3SUZSQidUAce5JLIz1yuC78912LoXfORMfK100Rx71W', NULL, '2024-08-24 17:15:58', '2024-08-24 17:15:58', 'user');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
