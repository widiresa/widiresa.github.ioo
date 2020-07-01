-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2020 pada 06.44
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

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
  `isi` varchar(10000) NOT NULL,
  `pengirim` varchar(200) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `judul`, `headline`, `isi`, `pengirim`, `tanggal`) VALUES
(2, 3, 'tahun politik', 'tahun politik 2018', '<p><img alt=\"\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSf6BHy5DA0_u3OEsh4eO2-jhvL9rQLgC-cR0O9XxULePfRl9eV\" style=\"width: 700px; height: 393px;\" /></p>\r\n\r\n<p>tahun politik coy</p>\r\n', 'admin', '2017-12-08 11:35:34'),
(3, 3, 'Jokowi 2 Tahun', 'jokowi digadang2 2 periode', 'jkw vs ww', 'admin', '2017-12-13 09:34:15'),
(4, 1, 'Emas Ghiyatsi', 'Emas Taekwondo Ghiyatsi', 'Emas Taekwondo Ghiyatsi Ngudi Waluyo Cup 2017', 'admin', '2017-12-13 09:37:47'),
(5, 1, '2019 International Symposium on Electronics and Smart Devices (ISESD)', '8 – 9 October 2019', '<p style=\"border: 0px; font-family: &quot;Source Sans Pro&quot;; font-size: 15px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); background-color: rgb(252, 252, 252);\">ISESD provides an international forum that bring together researchers and academia that are actively involved in the field of electronics and smart devices, to report and discuss on latest innovations and developments, and to exchange ideas and advances in all related aspects.</p>\r\n\r\n<p style=\"border: 0px; font-family: &quot;Source Sans Pro&quot;; font-size: 15px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); background-color: rgb(252, 252, 252);\"><img alt=\"LOCATION\" class=\"alignnone size-thumbnail wp-image-587\" height=\"15\" sizes=\"(max-width: 15px) 100vw, 15px\" src=\"http://www.intsys-research.org/wp-content/uploads/2019/03/LOCATION-150x150.png\" srcset=\"http://www.intsys-research.org/wp-content/uploads/2019/03/LOCATION-150x150.png 150w, http://www.intsys-research.org/wp-content/uploads/2019/03/LOCATION-300x300.png 300w, http://www.intsys-research.org/wp-content/uploads/2019/03/LOCATION.png 512w\" style=\"max-width: 100%; height: auto;\" width=\"15\" /><strong style=\"border: 0px; font-family: inherit; font-style: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Badung-Bali, Indonesia</strong>&nbsp;|&nbsp;<img alt=\"WEB\" class=\"alignnone size-thumbnail wp-image-586\" height=\"15\" sizes=\"(max-width: 15px) 100vw, 15px\" src=\"http://www.intsys-research.org/wp-content/uploads/2019/03/WEB-150x150.png\" srcset=\"http://www.intsys-research.org/wp-content/uploads/2019/03/WEB-150x150.png 150w, http://www.intsys-research.org/wp-content/uploads/2019/03/WEB-300x300.png 300w, http://www.intsys-research.org/wp-content/uploads/2019/03/WEB.png 512w\" style=\"max-width: 100%; height: auto;\" width=\"15\" />&nbsp;<a href=\"http://isesd.stei.itb.ac.id/\" style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(94, 94, 94); transition: all 0.2s ease 0s;\">ISESD</a></p>\r\n\r\n<p style=\"border: 0px; font-family: &quot;Source Sans Pro&quot;; font-size: 15px; margin: 1em 0px 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); background-color: rgb(252, 252, 252);\"><strong style=\"border: 0px; font-family: inherit; font-style: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Sponsors</strong>: Indonesia Section Chapter, SSC37; Indonesia Section ED Chapter<br />\r\n<strong style=\"border: 0px; font-family: inherit; font-style: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Call for Papers Deadline</strong>: 29 July 2019</p>\r\n', 'admin', '2017-12-13 09:38:48'),
(6, 3, 'Smarter than humans', 'Imagine a scenario where Car A is travelling down a highway at 80mph. Suddenly, Car B pulls out in front of Car A.\r\n\r\nTo avoid an accident, the sensors on both cars would need to talk to each other. As a result, Car A would brake, and Car B would speed up, in order to avoid a collision.', '<p style=\"border: 0px; font-family: &quot;Source Sans Pro&quot;; font-size: 15px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); background-color: rgb(252, 252, 252);\">&ldquo;We need to look at how long it takes for the message to be transmitted between sensors and then get to the computer in each car, and then how long it takes for the computer to make a decision, and all of this has to be in less time than a human would take to make a decision &ndash; 2 milliseconds,&rdquo; Jane Rygaard, of Finnish tech firm Nokia, tells the BBC.</p>\r\n\r\n<p style=\"border: 0px; font-family: &quot;Source Sans Pro&quot;; font-size: 15px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); background-color: rgb(252, 252, 252);\">&ldquo;We need a network supporting this, and 5G is that network.&rdquo;</p>\r\n\r\n<p style=\"border: 0px; font-family: &quot;Source Sans Pro&quot;; font-size: 15px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); background-color: rgb(252, 252, 252);\">UK national mapping agency Ordnance Survey agrees: &ldquo;When you switch a light on, it turns on immediately. That&rsquo;s what you need with autonomous cars &ndash; if something happens, the car needs to stop immediately. That&rsquo;s why the high frequency 5G signals are required.&rdquo;</p>\r\n\r\n<p style=\"border: 0px; font-family: &quot;Source Sans Pro&quot;; font-size: 15px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); background-color: rgb(252, 252, 252);\">But it&rsquo;s not just about the car itself &ndash; technology firm Ericsson says that in the event of a major disaster, or severe congestion around a football stadium, authorities could send instant alerts to autonomous cars, warning them to use alternative routes instead.</p>\r\n\r\n<p style=\"border: 0px; font-family: &quot;Source Sans Pro&quot;; font-size: 15px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); background-color: rgb(252, 252, 252);\">Ericsson has conducted tests in Stockholm, Sweden with car manufacturer Volvo and truck maker Scania, using a counter-terrorism scenario whereby police were able to disable a hijacked connected truck or prevent it from entering certain geo-fenced locations.</p>\r\n\r\n<figure class=\"media-landscape no-caption body-width\" style=\"margin: 0px; color: rgb(102, 102, 102); font-family: &quot;Source Sans Pro&quot;; font-size: 15px; background-color: rgb(252, 252, 252);\"><span class=\"image-and-copyright-container\" style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><img alt=\"Presentational grey line\" class=\"responsive-image__img js-image-replace\" data-highest-encountered-width=\"624\" height=\"2\" src=\"https://ichef.bbci.co.uk/news/624/media/images/74982000/jpg/_74982321_line976.jpg\" style=\"max-width: 100%; height: auto;\" width=\"464\" /></span></figure>\r\n\r\n<h2 class=\"story-body__crosshead\" style=\"border: 0px; font-family: &quot;Source Sans Pro&quot;; font-size: 1.6em; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68); background-color: rgb(252, 252, 252);\">Levels of automation</h2>\r\n\r\n<p style=\"border: 0px; font-family: &quot;Source Sans Pro&quot;; font-size: 15px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); background-color: rgb(252, 252, 252);\">US engineering organisation SAE International has set out six categories of automation for cars:</p>\r\n\r\n<ul class=\"story-body__unordered-list\" style=\"border: 0px; font-family: &quot;Source Sans Pro&quot;; font-size: 15px; margin: 0px 0px 1.5em 3em; outline: 0px; padding-right: 0px; padding-left: 0px; vertical-align: baseline; list-style: square; color: rgb(102, 102, 102); background-color: rgb(252, 252, 252);\">\r\n	<li class=\"story-body__list-item\" style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px 0px 0px 1.5em; outline: 0px; padding: 0px; vertical-align: baseline;\">Level Zero: not automated at all</li>\r\n	<li class=\"story-body__list-item\" style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px 0px 0px 1.5em; outline: 0px; padding: 0px; vertical-align: baseline;\">Level One: some driver assist features</li>\r\n	<li class=\"story-body__list-item\" style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px 0px 0px 1.5em; outline: 0px; padding: 0px; vertical-align: baseline;\">Level Two: car can accelerate and steer by itself, but driver must pay attention</li>\r\n	<li class=\"story-body__list-item\" style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px 0px 0px 1.5em; outline: 0px; padding: 0px; vertical-align: baseline;\">Level Three: car can drive by itself on safe road conditions under 37 mph, but driver is still needed</li>\r\n	<li class=\"story-body__list-item\" style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px 0px 0px 1.5em; outline: 0px; padding: 0px; vertical-align: baseline;\">Level Four: car can drive completely by itself, but only within a well-mapped area</li>\r\n	<li class=\"story-body__list-item\" style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px 0px 0px 1.5em; outline: 0px; padding: 0px; vertical-align: baseline;\">Level Five: car can drive completely by itself, over any terrain, anywhere in the world</li>\r\n</ul>\r\n\r\n<p style=\"border: 0px; font-family: &quot;Source Sans Pro&quot;; font-size: 15px; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); background-color: rgb(252, 252, 252);\">Research firm Gartner expects Level Three and Level Four autonomous vehicles to begin appearing in late 2018 in very small numbers, and by 2025, it expects that there will be more than 600,000 autonomous vehicles on the roads worldwide.</p>\r\n', 'paijo', '2017-12-13 09:39:40'),
(10, 1, 'Halusinosi', 'Banyak Sekali Kecaln', '<blockquote>\r\n<p><strike><em><strong>Hal Tak Terduga</strong></em></strike></p>\r\n</blockquote>\r\n', 'Setya', '2020-01-01 18:03:46'),
(13, 1, 'The Audi A8: the World’s First Production Car to Achieve Level 3 Autonomy', 'The Audi A8', '<div background-color:=\"\" class=\"entry-content\" color:=\"\" font-size:=\"\" line-height:=\"\" margin:=\"\" outline:=\"\" padding:=\"\" sans=\"\" source=\"\" style=\"border: 0px; font-family: \" vertical-align:=\"\" zoom:=\"\">\r\n<figure class=\"xlrg\" style=\"margin: 0px;\"><img alt=\"\" src=\"https://media.wired.com/photos/59fcb80c68e14228ee40319b/master/w_532,c_limit/self-driving-moovellab-TA3.jpg\" style=\"width: 300px; height: 225px;\" /></figure>\r\n\r\n<div class=\"entry-content\" style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; zoom: 1; line-height: 1.6em;\">\r\n<p style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px 0px 1em; outline: 0px; padding: 0px; vertical-align: baseline;\">The 2018 Audi A8, just unveiled&nbsp;in Barcelona, counts as&nbsp;the world&rsquo;s first production car to offer Level 3 autonomy.</p>\r\n\r\n<p style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Level 3 means the driver needn&rsquo;t&nbsp;supervise things at all, so long as the car stays within guidelines. Here that involves driving no faster than&nbsp;60 kilometers per hour (37 mph), which is why Audi calls the feature AI Traffic Jam Pilot.</p>\r\n\r\n<p style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Go ahead, Audi&rsquo;s saying,&nbsp;read your newspaper or just zone out while traffic creeps along. Take a look at the company&rsquo;s promotional video. Beginning around the 3:55 mark you&rsquo;ll see an indulgent father who ends up horsing around with his kid&nbsp;in the back seat. When the car up ahead stops, the A8&rsquo;s AI&nbsp;hits the brakes in time to avoid rear-ending it.</p>\r\n\r\n<div class=\"fluid-width-video-wrapper\" style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; width: 1080px; position: relative;\">&nbsp;</div>\r\n\r\n<p style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Other cars now on the market may physically allow the driver to zone out, too,&nbsp;but not without squawking a lot. &ldquo;Put your hand on the wheel within five seconds, Buster, or I&rsquo;m pulling over to the side of the road,&rdquo; they&rsquo;ll say, in so many words.</p>\r\n\r\n<p style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Mercedes-Benz sounds an alarm if you take your hand off the wheel.&nbsp;Tesla makes you&nbsp;<a href=\"http://spectrum.ieee.org/cars-that-think/transportation/self-driving/tesla-robocar-to-driver-accept-the-liability-buster\" style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(94, 94, 94); transition: all 0.2s ease 0s;\">hit the turn signal</a>&nbsp;to show you want to change lanes. The new Cadillac CT6 goes so far as to&nbsp;<a href=\"http://spectrum.ieee.org/cars-that-think/transportation/self-driving/cadillac-adds-level-2-highway-autonomy-with-super-cruise\" style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(94, 94, 94); transition: all 0.2s ease 0s;\">monitor your eye movements</a>&nbsp;with infrared cameras to make sure you&rsquo;re paying attention to the road. That&rsquo;s an emphatic statement of the car&rsquo;s status: Level 2.</p>\r\n\r\n<p style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">To be sure, the A8 also monitors the driver, even while the traffic jam persists, and continues to do so&nbsp;as&nbsp;the speed edges up over the limit. If the driver falls asleep, it&rsquo;ll wake him up; if it can&rsquo;t get his attention, it will stop the car.</p>\r\n\r\n<p style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">There&rsquo;s no one feature that seems&nbsp;to be behind the company&rsquo;s decision to go up to Level 3, but there are&nbsp;certainly a lot of new technologies. There are computers from Nvidia and other firms, an image processor from Mobileye, and a really huge array of sensors: 12 ultrasound sensors, five cameras, five radars, one infrared camera for night vision. Most notable of all, there&rsquo;s&nbsp;lidar&mdash;the first&nbsp;ever offered on a production car. The unit, a forward-looking one,&nbsp;<a href=\"http://www.autonews.com/article/20170123/OEM06/301239847/cheaper-lidar-on-the-way\" style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(94, 94, 94); transition: all 0.2s ease 0s;\">comes from&nbsp;Valeo</a>.</p>\r\n\r\n<p style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Besides allowing for Level 3 autonomy, the panoply of devices also makes for a smoother ride. For instance, when the sensors see a pothole coming up they prime the active suspension so that it can handle the challenge more easily. Oh, and the car is also a mild hybrid, with a plug-in version&nbsp;in the works.</p>\r\n\r\n<p style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Electric-drive is suddenly catching on&mdash;just last week&nbsp;<a href=\"http://spectrum.ieee.org/cars-that-think/transportation/advanced-cars/volvo-says-goodbye-to-gasoline\" style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(94, 94, 94); transition: all 0.2s ease 0s;\">Volvo announced</a>&nbsp;that all its 2019 cars would have at least some degree of electric drive in them. Nowhere has the change in attitude been more extraordinary than in&nbsp;the family of VW, Audi&rsquo;s parent company, which had based its emissions policy on what it called clean diesel.&nbsp;VW had to give it up last year, when&nbsp;<a href=\"http://spectrum.ieee.org/cars-that-think/transportation/advanced-cars/how-professors-caught-vw-cheating\" style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(94, 94, 94); transition: all 0.2s ease 0s;\">it was shown to have cheated</a>&nbsp;on diesel emissions tests.</p>\r\n\r\n<p style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">If you want to buy the new A8, you&rsquo;ll have to check whether your&nbsp;jurisdiction&nbsp;will accept it as a Level 3 car. Audi said in a statement that it will follow &ldquo;<a href=\"https://www.audi-mediacenter.com/en/press-releases/the-new-audi-a8-future-of-the-luxury-class-9124\" style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(94, 94, 94); transition: all 0.2s ease 0s;\">a step-by-step approach</a>&rdquo;&nbsp;to introducing the traffic jam pilot. It plans to sell&nbsp;the base model&nbsp;in Europe this fall for&nbsp;&euro;90,600, or about US $103,000, and to enter the United States market shortly afterwards.&nbsp;A model having a longer wheelbase will cost a few percent more.</p>\r\n\r\n<p style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 1em 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">What&rsquo;s next? A Level 4 car, naturally.&nbsp;<a href=\"http://spectrum.ieee.org/cars-that-think/transportation/self-driving/nvidia-ceo-announces\" style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(94, 94, 94); transition: all 0.2s ease 0s;\">Back in January</a>, Audi and Nvidia said they&rsquo;d have one on the roads by 2020.</p>\r\n\r\n<p style=\"border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 1em 0px 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Sumber :&nbsp;http://spectrum.ieee.org/cars-that-think/transportation/self-driving/the-audi-a8-the-worlds-first-production-car-to-achieve-level-3-autonomy?utm_content=bufferb0347&amp;utm_medium=social&amp;utm_source=twitter.com&amp;utm_campaign=buffer</p>\r\n</div>\r\n</div>\r\n\r\n<div 0px=\"\" 1.5em=\"\" background-color:=\"\" class=\"entry-categories\" color:=\"\" font-size:=\"\" margin:=\"\" outline:=\"\" padding:=\"\" sans=\"\" source=\"\" style=\"border: 0px; font-family: \" vertical-align:=\"\">Posted in&nbsp;<a href=\"http://www.intsys-research.org/category/berita/\" rel=\"category tag\" style=\"border: 0px; font-family: inherit; font-size: 11.05px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(119, 119, 119);\">BERITA</a>.</div>\r\n', 'Setya', '2020-01-02 23:18:13');

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
(1, 'Olah Raga', 'olah raga'),
(3, 'Politik', 'politik');

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

--
-- Dumping data untuk tabel `publikasi`
--

INSERT INTO `publikasi` (`id_publikasi`, `judul`, `cited`, `year`, `pengirim`, `tanggal`) VALUES
(1, 'An improved secure image hiding technique using PN-sequence based on DCT-OTP', 21, 2017, 'Setya', '2020-01-03 01:27:46'),
(3, 'Pemodelan perilaku musuh menggunakan Finite State Machine (FSM) pada game pengenalan unsur kimia', 18, 2016, 'Setya', '2020-01-03 01:39:34');

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
(1, 1, 'Pengukuran dan analisa terhadap karakteristik data biologis, seperti tubuh manusia. Umumnya bertujuan untuk autentikasi.'),
(2, 1, 'Analisa dan manipulasi terhadap gambar digital menggunakan model matematika yang bertujuan untuk peningkatan kualitas.'),
(4, 4, 'Pengolahan sinyal'),
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
(2, '1', '1', 'Setya');

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
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
