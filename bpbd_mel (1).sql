-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Okt 2023 pada 07.00
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpbd_mel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_kejadian`
--

CREATE TABLE `laporan_kejadian` (
  `id_laporan_kejadian` int(11) NOT NULL,
  `jenis_kejadian` varchar(80) NOT NULL,
  `waktu_kejadian` datetime NOT NULL,
  `lokasi_kejadian` text NOT NULL,
  `penyebab_kejadian` text NOT NULL,
  `kronologi_kejadian` text NOT NULL,
  `dampak` text NOT NULL,
  `upaya_yang_dilakukan` text NOT NULL,
  `kebutuhan_mendesak` text NOT NULL,
  `sumber_informasi` text NOT NULL,
  `dokumentasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `laporan_kejadian`
--

INSERT INTO `laporan_kejadian` (`id_laporan_kejadian`, `jenis_kejadian`, `waktu_kejadian`, `lokasi_kejadian`, `penyebab_kejadian`, `kronologi_kejadian`, `dampak`, `upaya_yang_dilakukan`, `kebutuhan_mendesak`, `sumber_informasi`, `dokumentasi`) VALUES
(1, 'Kebakaran', '2023-09-09 12:41:14', 'Salawu', 'api unggun anak pramuka', 'main api ditengah jalan', 'jalanan terganggu dan tepi jalan terbakar habis', 'pemadaman oleh warga dengan air hujan', 'Obat, ..', 'Masyarakat setempat', 'foto/kebakaran.jpg'),
(2, 'Kebakaran', '2023-09-09 12:46:02', 'Tasikmalaya', 'Gas Bocor', 'Sedang memasak air', 'Rumah terbakar', 'Pemadaman', 'Pakaian,Obat-obatan,dll', '@infotasik', 'foto/kebakaran.jpg'),
(8, 'Kebakaran Rumah', '2023-07-31 23:30:00', '- Kampung : Mandalawangi  - RT/RW : 005/005 - Desa : Ciroyom - Kecamatan : Bojonggambir - Kabupaten : Tasikmalaya ', 'Terjadinya kebakaran dari arus pendek listrik', ' terjadinya kebakaran berasal dari percikan api dari arus pendek listrik berasal dari atap rumah hingga terjadi kebakaran', '- Rumah Hangus Terbakar, ukuran 7m x 6 m, milik Sdr. Horis 52 tahun, jumlah jiwa 4 orang. - Dokumen Penting lainnya terbakar - Barang Berharga terbakar', '- Memadamkan Api  - masyarakat berbondong\" Mecari air dari rumah kerumah - upaya dari pemerintah  setempat, menempatkan korban sementara mengungsi di tetangga/keluarga    POTENSI  - Tidak ada Korban Jiwa, Di taksir kerugian mencapai 70 juta', '- Sandang Pangan - Obat-Obatan - Pakaian - dan tempat tinggal.', '- Pemerintah Desa Ciroyom - Relawan PB.', 'foto/kebakaran.jpg'),
(9, 'Kebakaran Pabrik', '2023-09-16 14:42:00', 'g', 'd', 'd', 'd', 'd', 'd', 'd', 'foto/kebakaran.jpg'),
(10, 'Kebakaran Pabrik', '2023-10-05 22:59:00', 'dppppppppppppppppppp', 'dppppppppppppppppppp', 'dppppppppppppppppppp', 'dppppppppppppppppppp', 'dppppppppppppppppppp', 'dppppppppppppppppppp', 'dppppppppppppppppppp', 'foto/skema database.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_pengguna` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('admin','masyarakat') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_pengguna`, `username`, `password`, `level`) VALUES
(7, 'amelia', '8cb2237d0679ca88db6464eac60da96345513964', 'admin'),
(8, 'iqlima', '6df3258a9c424ab47d146573b380ea6f7fc2d4c5', 'masyarakat'),
(10, 'Amelia', '8cb2237d0679ca88db6464eac60da96345513964', 'admin'),
(11, 'Amelia', '8cb2237d0679ca88db6464eac60da96345513964', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `email` varchar(80) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `judul_laporan` text NOT NULL,
  `isi_laporan` text NOT NULL,
  `photo` varchar(40) NOT NULL,
  `status` enum('0','proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tanggal`, `email`, `nama_lengkap`, `judul_laporan`, `isi_laporan`, `photo`, `status`) VALUES
(31, '2023-09-15 13:39:00', 'Amelia@gmail.com', 'Iqlima', 'Longsor', '', 'foto/longsor.jpg', '0'),
(32, '2023-09-16 14:41:00', 'Amelia@gmail.com', 'Amelia', 'Gempa Bumi', 'test', 'foto/gempa.jpg', '0'),
(33, '2023-09-16 16:42:00', 'iqlima@gmail.com', 'Iqlima', 'Banjir', 'tes', 'foto/banjir.jpg', '0'),
(34, '2023-09-16 13:46:00', 'Amelia@gmail.com', 'Amelia', 'Longsor', 'rrrtt', 'foto/longsor.jpg', '0'),
(35, '2023-09-16 15:57:00', 'Amelia@gmail.com', 'Iqlima', 'Gempa Bumi', 'test', 'foto/gempa.jpg', '0'),
(36, '2023-09-16 14:59:00', 'driswandi342@gmail.com', 'Amelia', 'Banjir', 'ee', 'foto/banjir.jpg', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `id_laporan_kejadian` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `status` enum('0','proses','selesai') NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `laporan_kejadian`
--
ALTER TABLE `laporan_kejadian`
  ADD PRIMARY KEY (`id_laporan_kejadian`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indeks untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`,`id_pengaduan`,`id_laporan_kejadian`,`id_admin`),
  ADD KEY `id_pengaduan` (`id_pengaduan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `laporan_kejadian`
--
ALTER TABLE `laporan_kejadian`
  MODIFY `id_laporan_kejadian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
