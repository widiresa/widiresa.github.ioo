-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2020 pada 18.53
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `labportal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `url`, `status`) VALUES
(2, 'HERU AGUS SANTOSO, PHD', 'http://www.dinus.ac.id/detailstaf/0686.11.1998.165', 'Dosen'),
(3, 'SETYA NUGRAHA', 'https://dinus.ac.id/mahasiswa/A11.2018.10933', 'Mahasiswa'),
(4, 'Rendy Hanung Pratama', 'https://dinus.ac.id/mahasiswa/A11.2018.10952', 'Alumni');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `headline` varchar(1000) NOT NULL,
  `gambar` varchar(1000) NOT NULL,
  `isi` varchar(10000) NOT NULL,
  `pengirim` varchar(200) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `judul`, `headline`, `gambar`, `isi`, `pengirim`, `tanggal`) VALUES
(18, 3, 'Melantur, Sistem Kecerdasan Buatan Facebook Dihentikan', '', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR0iQ3HbYanVJpcNMguUvfDtcqYFxkXanibKc_LetDgnO_Iz3ZH', '<p><span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\"><strong>Jakarta, CNN Indonesia</strong> -- Ilmuwan di Facebook belum lama ini memutuskan untuk menutup bots kecerdasan buatan (AI) yang didesain untuk berkomunikasi satu sama lain menggunakan Bahasa Inggris. Bob dan Alice, AI Facebook, justru menggunakan Bahasa Inggris &quot;mutan&quot; yang tidak dipahami oleh manusia.</span><br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\" />\r\n<br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\" />\r\n<span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">Ilmuwan di Facebook AI Research (FAIR) mengatakan kepada Fast Co. Design bahwa kalimat yang digunakan para AI sebenarnya bukan tidak masuk akal, tapi mereka terdiri dari bahasa kode yang masuk akal bagi bot.</span><br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\" />\r\n<br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\" />\r\n<span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">&quot;Bot akan menghilangkan bahasa yang mudah dimengerti dan menemukan kata-kata kode untuk mereka sendiri, &quot; kata peneliti Dhirv Batra.</span></p>\r\n\r\n<blockquote>\r\n<p><em style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">Bob: i can i i everything else</em><br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\" />\r\n<em style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">Alice: balls have zero to me to me to me to me to me to me to me to me to</em></p>\r\n</blockquote>\r\n\r\n<p><span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">Batra menambahkan bahwa bot mulai mengembangkan bahasa karena kesalahan pemrograman yang pada dasarnya memberi mereka insentif untuk mengembangkan bahasa yang lebih efisien. Dengan kata lain, mereka seperti manusia dalam komunitas khusus, seperti pialang saham atau pelaut, yang mengembangkan dialek mereka sendiri yang fungsional untuk lingkungan spesifik.</span><br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\" />\r\n<br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\" />\r\n<span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">Sementara itu, bots diciptakan sebagai bagian dari program yang bertujuan untuk mengajarkan mesin bagaimana bernegosiasi. Dia dibangun dengan maksud untuk mengembangkan personal assistant digital yang mampu berkomunikasi dengan manusia, seperti diberitakan&nbsp;</span><em style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\"><a href=\"https://globalnews.ca/news/3634438/facebook-ai-robots-develop-own-language/\" style=\"box-sizing: border-box; background: transparent; transition: all 200ms linear 0s; -webkit-font-smoothing: antialiased; backface-visibility: hidden; text-decoration-line: none; color: rgb(68, 68, 68);\">Globalnews</a></em><span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">.</span></p>\r\n\r\n<p><span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">Sayangnya, ilmuwan riset Mike Lewis mengatakan dua bots Facebook harus dihentikan karena para peneliti FAIR ingin mengembangkan bot yang mampu berbicara dengan orang lain. Padahal sebelumnya, kecerdasan buatan dikhawatirkan bakal mengambil alih dunia manusia.</span><br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\" />\r\n<br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\" />\r\n<span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">Hal ini seperti diutarakan&nbsp;Elon Musk, CEO SpaceX dan Tesla. Ia khawatir jika kita tak cukup bijak dalam membangun AI, hal ini malah bisa menghancurkan manusia itu sendiri. Kecerdasan buatan yang berbalik melawan manusia tanpa bisa dihentikan.&nbsp;</span><br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\" />\r\n<br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\" />\r\n<span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">&quot;Dengan kecerdasan buatan, kita (seperti) memanggil setan. Anda tahu, semua cerita di mana orang dengan pentagram dan air suci dan dia seperti ... ya, dia yakin dia bisa mengendalikan iblis - tapi tidak berhasil, &quot; kata Musk di Simposium MIT Aeronautics and Astronautics Department Centennial pada 2014, seperti dikutip dari&nbsp;</span><em style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\"><a href=\"https://hothardware.com/news/facebook-shuts-down-ai-system\" style=\"box-sizing: border-box; background: transparent; transition: all 200ms linear 0s; -webkit-font-smoothing: antialiased; backface-visibility: hidden; text-decoration-line: none; color: rgb(68, 68, 68);\">Hothardware</a></em><span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">.</span></p>\r\n', 'Yudha Irmawan', '2020-01-04 06:57:42'),
(20, 3, 'Daftar Layanan Film Streaming Legal Sebelum Ramai IndoXXI', '', 'https://akcdn.detik.net.id/visual/2019/08/24/4af6d831-e107-4932-8984-1a7ea787b549_169.jpeg?w=650', '<p><span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">Jakarta, CNN Indonesia -- Sebelum publik ramai membicarakan layanan film streaming bajakan di situs&nbsp;</span><span style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px; color: rgb(255, 0, 0);\"><span style=\"box-sizing: border-box; font-family: CNNSansW04-Medium; -webkit-font-smoothing: antialiased; backface-visibility: hidden;\"><a href=\"https://www.cnnindonesia.com/tag/indoxxi\" style=\"box-sizing: border-box; background: transparent; transition: all 200ms linear 0s; -webkit-font-smoothing: antialiased; backface-visibility: hidden; text-decoration-line: none; color: rgb(68, 68, 68);\"><span style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(255, 0, 0);\">IndoXXI</span></a></span></span><span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">, sejumlah layanan video on demand dan over-the-top (OTT) yang memungkinkan pengguna dapat menonton&nbsp;</span><span style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px; color: rgb(255, 0, 0);\"><span style=\"box-sizing: border-box; font-family: CNNSansW04-Medium; -webkit-font-smoothing: antialiased; backface-visibility: hidden;\"><a href=\"https://www.cnnindonesia.com/tag/film\" style=\"box-sizing: border-box; background: transparent; transition: all 200ms linear 0s; -webkit-font-smoothing: antialiased; backface-visibility: hidden; text-decoration-line: none; color: rgb(68, 68, 68);\"><span style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(255, 0, 0);\">film</span></a></span></span><span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">&nbsp;atau video streaming secara legal telah lama hadir di Indonesia.</span><br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\" />\r\n<br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\" />\r\n<span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">Konten yang disajikan pun mulai dari serial televisi hingga film-film box office. Namun, ada beberapa layanan yang menyisipkan iklan saat konten sedang diputar.</span><br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\" />\r\n<br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\" />\r\n<span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">Maka dari itu, pengguna disarankan untuk berlangganan dengan harga yang terjangkau. Berikut layanan video streaming yang dapat dinikmati langsung melalui situs resmi atau lewat aplikasi,</span></p>\r\n', 'Yudha Irmawan', '2020-01-04 16:42:07'),
(21, 3, 'Pos Perbatasan Uni Eropa Uji Coba Terapkan Kecerdasan Buatan', '', 'https://akcdn.detik.net.id/visual/2018/07/16/17c6a966-e91c-426a-88c1-1a0c8623bb1a_169.jpeg?w=650', '<p><span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">Jakarta, CNN Indonesia --&nbsp;</span><span style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px; color: rgb(255, 0, 0);\"><span style=\"box-sizing: border-box; font-family: CNNSansW04-Medium; -webkit-font-smoothing: antialiased; backface-visibility: hidden;\"><a href=\"https://www.cnnindonesia.com/tag/kecerdasan-buatan\" style=\"box-sizing: border-box; background: transparent; transition: all 200ms linear 0s; -webkit-font-smoothing: antialiased; backface-visibility: hidden; text-decoration-line: none; color: rgb(68, 68, 68);\" target=\"_blank\"><span style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(255, 0, 0);\">Kecerdasan buatan</span></a></span></span><span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">&nbsp;(</span><em style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">artificial intelligence</em><span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">/AI) akan digunakan di beberapa pos pemeriksaan perbatasan antar negara di&nbsp;</span><span style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px; color: rgb(255, 0, 0);\"><span style=\"box-sizing: border-box; font-family: CNNSansW04-Medium; -webkit-font-smoothing: antialiased; backface-visibility: hidden;\"><a href=\"https://www.cnnindonesia.com/tag/uni-eropa\" style=\"box-sizing: border-box; background: transparent; transition: all 200ms linear 0s; -webkit-font-smoothing: antialiased; backface-visibility: hidden; text-decoration-line: none; color: rgb(68, 68, 68);\" target=\"_blank\"><span style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(255, 0, 0);\">Uni Eropa</span></a></span></span><span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">. Program yang dinamakan iBorderCtrl akan dilaksanakan selama enam bulan di empat titik persimpangan perbatasan di Hungaria, Latvia dan Yunani dengan negara-negara di luar Uni Eropa.</span><br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\" />\r\n<br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\" />\r\n<span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">Dilansir dari&nbsp;</span><em style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">The Verge</em><span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">, BorderCtrl adalah proyek yang didanai Uni Eropa dengan menggunakan AI untuk memfasilitasi para wisatawan agar bisa lebih cepat menyeberang perbatasan.</span><br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\" />\r\n<br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\" />\r\n<span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">Sistem ini mengharuskan turis untuk mengisi aplikasi online dan mengunggah beberapa dokumen, seperti paspor mereka, sebelum penjaga perbatasan mengambil alih untuk mengajukan pertanyaan.</span></p>\r\n\r\n<p><span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\"><img alt=\"\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTthxoJj2PaFtlkg_zP7MvmujHCBvN1mYpOJc71OH7N1n_DMmDR\" style=\"width: 640px; height: 446px;\" /></span></p>\r\n\r\n<p><span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">Penjaga kemudian akan bertanya &quot;Apa yang ada di koper Anda?&quot; dan &quot;Jika Anda membuka koper dan menunjukkan kepada saya apa yang ada di dalamnya, apakah itu akan mengkonfirmasi bahwa jawaban Anda benar?&quot;</span></p>\r\n\r\n<p><span style=\"font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; font-size: 14px;\">Para wisatawan akan menjawab pertanyaan ini sembari menghadap ke webcam. Kemudian sistem AI akan menganalisis dan menilai lusinan gerakan mikro di wajah wisatawan. Jika iBorderCtrl menentukan bahwa wisatawan mengatakan hal yang sejujurnya, maka mereka akan menerima kode QR agar mereka bisa melewati perbatasan.</span></p>\r\n', 'yudha', '2020-01-04 21:55:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `download`
--

CREATE TABLE `download` (
  `id_download` int(11) NOT NULL,
  `kategori` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `url` varchar(10000) NOT NULL,
  `pengirim` varchar(200) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `download`
--

INSERT INTO `download` (`id_download`, `kategori`, `nama`, `url`, `pengirim`, `tanggal`) VALUES
(1, 'Jurnal', 'Masalah Terjadi di Perkumikan', 'https://twitter.com/', 'Setya', '2020-01-01 21:42:50'),
(2, 'Ebooks', 'Computing & Reverse', 'https://www.facebook.com/', 'Setya', '2020-01-01 21:43:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(3) UNSIGNED NOT NULL,
  `nm_kategori` varchar(30) NOT NULL DEFAULT '',
  `deskripsi` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nm_kategori`, `deskripsi`) VALUES
(1, 'Sains', 'Sains'),
(3, 'Technology', 'Technology');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `kategori` varchar(200) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `isi` varchar(10000) NOT NULL,
  `pengirim` varchar(200) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `kategori`, `judul`, `isi`, `pengirim`, `tanggal`) VALUES
(1, 'Klinik', 'Klinik dulu', '<blockquote>\r\n<p><em><strong>Bagaimana workshop itu bisa menjadi suatu kehidupan</strong></em></p>\r\n</blockquote>\r\n', 'Setya', '2020-01-01 22:53:45'),
(3, 'Lomba', 'Melakukan Klinik Pertama1', '<p>Bagaimana Jika itu terjadi1</p>\r\n', 'Setya', '2020-01-01 23:04:33'),
(4, 'Workshop', 'Workshop di Semarang', '<p>ewfwef tanggal 10 01 2023</p>\r\n', 'Setya', '2020-01-02 23:58:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi`
--

CREATE TABLE `materi` (
  `id_materi` int(11) NOT NULL,
  `kategori` varchar(200) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `pengirim` varchar(200) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `materi`
--

INSERT INTO `materi` (`id_materi`, `kategori`, `judul`, `url`, `pengirim`, `tanggal`) VALUES
(1, '3', 'Ini lah irnya', 'https://www.youtube.com/embed/bzvBC0xsZwE', 'Setya', '2020-01-01 22:34:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `publikasi`
--

CREATE TABLE `publikasi` (
  `id_publikasi` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `cited` int(200) NOT NULL,
  `year` int(11) NOT NULL,
  `pengirim` varchar(200) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `riset`
--

CREATE TABLE `riset` (
  `id_riset` int(11) NOT NULL,
  `id_topik` int(11) NOT NULL,
  `isi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `riset`
--

INSERT INTO `riset` (`id_riset`, `id_topik`, `isi`) VALUES
(5, 4, 'Translasi kata-kata ke teks.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `topik`
--

CREATE TABLE `topik` (
  `id_topik` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `topik`
--

INSERT INTO `topik` (`id_topik`, `nama`) VALUES
(1, 'Biometric'),
(2, 'Knowledge'),
(3, 'Computational'),
(4, 'Speech'),
(5, 'Game AI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `user_id` varchar(30) DEFAULT NULL,
  `passwd` varchar(32) DEFAULT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `user_id`, `passwd`, `nama`) VALUES
(4, '1', '1', 'yudha'),
(5, 'yudhairmawan62@gmail.com', '1', 'Yudha Irmawan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE `video` (
  `id_video` int(200) NOT NULL,
  `judul` varchar(1000) NOT NULL,
  `url` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`id_video`, `judul`, `url`) VALUES
(9, 'Robot Lebih Pintar Daripada Manusia', 'https://www.youtube.com/embed/TXis8n9UXLk'),
(10, 'Teknologi Zaman Now', 'https://www.youtube.com/embed/7Ltl7_0ttpQ');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indeks untuk tabel `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indeks untuk tabel `publikasi`
--
ALTER TABLE `publikasi`
  ADD PRIMARY KEY (`id_publikasi`);

--
-- Indeks untuk tabel `riset`
--
ALTER TABLE `riset`
  ADD PRIMARY KEY (`id_riset`);

--
-- Indeks untuk tabel `topik`
--
ALTER TABLE `topik`
  ADD PRIMARY KEY (`id_topik`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `materi`
--
ALTER TABLE `materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `publikasi`
--
ALTER TABLE `publikasi`
  MODIFY `id_publikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `riset`
--
ALTER TABLE `riset`
  MODIFY `id_riset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `topik`
--
ALTER TABLE `topik`
  MODIFY `id_topik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
