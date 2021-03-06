-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2018 at 01:07 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `goleknoc_webagent`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_customer`
--

CREATE TABLE `m_customer` (
  `COMPANY_ID` varchar(20) NOT NULL,
  `CUSTOMER_ID` int(11) NOT NULL,
  `CUSTOMER_EMAIL` varchar(100) NOT NULL,
  `CUSTOMER_PHONE` varchar(20) NOT NULL,
  `CUSTOMER_NAME` varchar(100) NOT NULL,
  `TYPE_CUSTOMER` varchar(10) NOT NULL,
  `CUSTOMER_NAT_ID` varchar(20) NOT NULL,
  `NO_REKENING` varchar(20) NOT NULL,
  `USER_CREATE` varchar(20) NOT NULL,
  `DATE_CREATE` date NOT NULL,
  `TIME_CREATE` time NOT NULL,
  `USER_UPDATE` varchar(20) NOT NULL,
  `DATE_UPDATE` date NOT NULL,
  `TIME_UPDATE` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_customer`
--

INSERT INTO `m_customer` (`COMPANY_ID`, `CUSTOMER_ID`, `CUSTOMER_EMAIL`, `CUSTOMER_PHONE`, `CUSTOMER_NAME`, `TYPE_CUSTOMER`, `CUSTOMER_NAT_ID`, `NO_REKENING`, `USER_CREATE`, `DATE_CREATE`, `TIME_CREATE`, `USER_UPDATE`, `DATE_UPDATE`, `TIME_UPDATE`) VALUES
('BYB', 14, 'zenhuw@mank', '087', 'reza', '', '9988', '174', '', '0000-00-00', '00:00:00', '', '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `m_list_produk`
--

CREATE TABLE `m_list_produk` (
  `COMPANY_ID` varchar(20) NOT NULL,
  `KATEGORI_ID` varchar(30) NOT NULL,
  `SUBKATEGORI_ID` varchar(30) NOT NULL,
  `PRODUCT_ID` varchar(50) NOT NULL,
  `SUBPRODUCT_ID` varchar(50) NOT NULL,
  `PRODUCT_CODE` varchar(50) NOT NULL,
  `PRODUCT_NAME` varchar(200) NOT NULL,
  `USER_CREATE` varchar(20) NOT NULL,
  `DATE_CREATE` date NOT NULL,
  `TIME_CREATE` time NOT NULL,
  `USER_UPDATE` varchar(20) NOT NULL,
  `DATE_UPDATE` date NOT NULL,
  `TIME_UPDATE` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_list_produk`
--

INSERT INTO `m_list_produk` (`COMPANY_ID`, `KATEGORI_ID`, `SUBKATEGORI_ID`, `PRODUCT_ID`, `SUBPRODUCT_ID`, `PRODUCT_CODE`, `PRODUCT_NAME`, `USER_CREATE`, `DATE_CREATE`, `TIME_CREATE`, `USER_UPDATE`, `DATE_UPDATE`, `TIME_UPDATE`) VALUES
('BYB', 'PEMBAYARAN', 'ASURANSI', 'BPJS', 'BPJS', 'BMSASRBPJS', 'BPJS', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'ASURANSI', 'JIWASRAYA', 'JIWASRAYA', 'BMSASRJWS', 'JIWASRAYA', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'FINANCE', 'BAF', 'BAF', 'BMSFNBAF', 'COLUMBIA', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'FINANCE', 'COLUMBIA', 'COLUMBIA', 'BMSFNCLMB', 'COLUMBIA', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'FINANCE', 'MEGA AUTO FINANCE', 'MEGA AUTO FINANCE', 'BMSFNMAF', 'MEGA AUTO FINANCE', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'FINANCE', 'MEGA CENTRAL FINANCE', 'MEGA CENTRAL FINANCE', 'BMSFNMEGA', 'MEGA CENTRAL FINANCE', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'FINANCE', 'WOM', 'WOM', 'BMSFNWOM', 'ASURANSI BINTANG PAKET 1', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'FINANCE', 'WOM FINANCE', 'WOM FINANCE', 'BMSFNWKF', 'WOM FINANCE', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'KAI', 'KAI', 'KAI', 'BMSWKAI', 'Tiket Railink', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PASCABAYAR', 'ESIA', 'ESIA', 'BMSHPESIA', 'ESIA (POSTPAID)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PASCABAYAR', 'FREN', 'FREN', 'BMSHPFREN', 'FREN, MOBI, HEPI (POSTPAID)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PASCABAYAR', 'INDOSAT', 'INDOSAT', 'BMSHPMTRIX', 'INDOSAT (MATRIX)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PASCABAYAR', 'SMARTFREN', 'SMARTFREN', 'BMSHPSMART', 'SMARTFREN (POSTPAID)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PASCABAYAR', 'TELKOMSEL', 'TELKOMSEL', 'BMSHPTSEL', 'TELKOMSEL (HALO)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PASCABAYAR', 'THREE', 'THREE', 'BMSHPTHREE', 'THREE (POSTPAID)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PASCABAYAR', 'XL', 'XL', 'BMSHPXL', 'XL (XPLOR)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'AETRA', 'AETRA', 'BMSWAAETRA', 'AETRA JAKARTA', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'BALANGAN', 'BALANGAN', 'BMSWABAL', 'PDAM KAB. BALANGAN (KALSEL)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'BANDAR LAMPUNG', 'BANDAR LAMPUNG', 'BMSWABALIK', 'PDAM KOTA BANDAR LAMPUNG', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'BANDUNG', 'BANDUNG', 'BMSWABDG', 'PDAM KOTA BANJARBARU (KALSEL)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'BANGKALAN', 'BANGKALAN', 'BMSWABGK', 'PDAM KAB. BANGKALAN (JATIM)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'BANJARBARU', 'BANJARBARU', 'BMSWABANJA', 'PDAM KOTA BOGOR (JABAR)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'BANJARMASIN', 'BANJARMASIN', 'BMSWAIBANJ', 'PDAM KOTA BANJARMASIN (KALSEL)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'BANYUMAS', 'BANYUMAS', 'BMSWABYMS', 'PDAM KAB. BANYUMAS (JATENG)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'BATANG', 'BATANG', 'BMSWABATAN', 'PDAM KAB. BATANG (JATENG)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'BOGOR', 'BOGOR', 'BMSWABOGOR', 'PDAM KAB. BOGOR (JABAR)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'BOJONEGORO', 'BOJONEGORO', 'BMSWABJN', 'PDAM KAB. BOJONEGORO (JATIM)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'BONDOWOSO', 'BONDOWOSO', 'BMSWABONDO', 'PDAM KAB. BONDOWOSO (JATIM)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'BOYOLALI', 'BOYOLALI', 'BMSWABYL', 'PDAM KAB. BOYOLALI (JATENG)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'BREBES', 'BREBES', 'BMSWABREBE', 'PDAM KAB. BREBES (JATENG)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'BULELENG', 'BULELENG', 'BMSWABULEL', 'PDAM KAB. BULELENG (BALI)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'CILACAP', 'CILACAP', 'BMSWACLCP', 'PDAM KAB. CILACAP (JATENG)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'DENPASAR', 'DENPASAR', 'BMSWADPSR', 'PDAM KOTA DENPASAR (BALI)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'DEPOK', 'DEPOK', 'BMSWADEPOK', 'PDAM KOTA DEPOK', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'GIRIMANUK', 'GIRIMANUK', 'BMSWAGIRIM', 'PDAM KOTA GIRIMANUK', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'GROBOGAN', 'GROBOGAN', 'BMSWAGROBG', 'PDAM KAB. GROBOGAN (JATENG)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'JAKARTA', 'JAKARTA', 'BMSWAPLYJ', 'PALYJA JAKARTA', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'JAMBI', 'JAMBI', 'BMSWAJAMBI', 'PDAM KOTA JAMBI', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'JEMBER', 'JEMBER', 'BMSWAJMBR', 'PDAM KAB. JEMBER (JATIM)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KAB BANDUNG', 'KAB BANDUNG', 'BMSWAKABBD', 'PDAM KAB. BANDUNG (JABAR)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KAB KARANGANYA', 'KAB KARANGANYA', 'BMSWAKARAN', 'PDAM KAB. KARANGANYAR (JATENG)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KAB KARAWANG', 'KAB KARAWANG', 'BMSWAKRWNG', 'PDAM KAB. KARAWANG (JABAR)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KAB KEBUMEN', 'KAB KEBUMEN', 'BMSWAKBMN', 'PDAM KAB. KEBUMEN (JATENG)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KAB KENDAL', 'KAB KENDAL', 'BMSWAKNDL', 'PDAM KAB. KENDAL (JATENG)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KAB KLATEN', 'KAB KLATEN', 'BMSWAKLATE', 'PDAM KAB. KLATEN (JATENG)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KAB KUBURAYA', 'KAB KUBURAYA', 'BMSWAKUBUR', 'PDAM KAB. KUBU RAYA (KALBAR)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KAB LOMBOK TENGAH', 'KAB LOMBOK TENGAH', 'BMSWALOMBO', 'PDAM KAB. LOMBOK TENGAH (NTB)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KAB MADIUN', 'KAB MADIUN', 'BMSWAMADIU', 'PDAM KOTA MADIUN', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KAB MALANG', 'KAB MALANG', 'BMSWAKABML', 'PDAM KAB. MALANG (JATIM)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KAB MOJOKERTO', 'KAB MOJOKERTO', 'BMSWAMJK', 'PDAM KAB. MOJOKERTO (JATIM)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KAB PEKALONGAN', 'KAB PEKALONGAN', 'BMSWAKPKLN', 'PDAM KAB. PEKALONGAN (JATENG)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KAB PURBALINGGA', 'KAB PURBALINGGA', 'BMSWAPBLIN', 'PDAM KAB. PURBALINGGA (JATENG)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KAB REMBANG', 'KAB REMBANG', 'BMSWAREMBA', 'PDAM KAB. REMBANG (JATENG)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KAB SIDOARJO', 'KAB SIDOARJO', 'BMSWAKABSM', 'PDAM KAB. SIDOARJO (JATIM)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KOTA BOGOR', 'KOTA BOGOR', 'BMSWAKOBGR', 'PDAM KOTA DENPASAR (BALI)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KOTA LAMPUNG', 'KOTA LAMPUNG', 'BMSWALMPNG', 'PDAM KOTA LAMPUNG', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KOTA MAKASSAR', 'KOTA MAKASSAR', 'BMSWAMAKAS', 'PDAM KOTA MAKASSAR (SULSEL)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KOTA MANADO', 'KOTA MANADO', 'BMSWAMANAD', 'PDAM KOTA MANADO (SULUT)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KOTA MEDANG', 'KOTA MEDANG', 'BMSWAMEDAN', 'PDAM KOTA MEDAN', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KOTA PALEMBANG', 'KOTA PALEMBANG', 'BMSWAPLMBN', 'PDAM KOTA PALEMBANG (SUMSEL)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KOTA SITUBONDO', 'KOTA SITUBONDO', 'BMSWASITU', 'PDAM KAB. SITUBONDO (JATIM)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'KOTA SURABAYA', 'KOTA SURABAYA', 'BMSWASBY', 'PDAM KOTA SURABAYA', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'PURWOKERTO', 'PURWOKERTO', 'BMSWAPURWO', 'PDAM PURWOKERTO', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'SALATIGA', 'SALATIGA', 'BMSWASLTIG', 'PDAM KOTA SALATIGA (JATENG)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'SEMARANG', 'SEMARANG', 'BMSWASMG', 'PDAM KOTA SEMARANG (JATENG)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'SLEMAN', 'SLEMAN', 'BMSWASLMN', 'PDAM KAB. SLEMAN (DIY)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'TEMANGGUNG', 'TEMANGGUNG', 'BMSWATEMAN', 'PDAM KAB. TEMANGGUNG (JATENG)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'WONOGIRI', 'WONOGIRI', 'BMSWAWONOG', 'PDAM KAB. WONOGIRI (JATENG)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PDAM', 'WONOSOBO', 'WONOSOBO', 'BMSWAWONOS', 'PDAM KOTA WONOSOBO', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PLN', 'NON TAGLIST', 'NON TAGLIST', 'BMSPLNNONH', 'PLN Non Taglist', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'PLN', 'TOKEN PLN', 'TOKEN PLN', 'BMSPLNPRAH', 'PLN Pra Bayar (Token)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TELKOM ', 'SPEEDY', 'SPEEDY', 'BMSSPEEDY', 'SPEEDY', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TELKOM', 'TELEPON', 'TELEPON', 'BMSTELEPON', 'TELEPON', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TELKOM', 'TELKOMTV', 'TELKOMTV', 'BMSTVTLKMV', 'TRANSVISION, TELKOMVISION, YESTV', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'BIG', 'BIG', 'BMSTVBIG', 'BIG TV', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'INDOVISION', 'INDOVISION', 'BMSTVINDVS', 'INDOVISION, TOPTV, OKEVISION', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'INNOVATE', 'INNOVATE', 'BMSTVINNOV', 'INNOVATE TV', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'KVISION', 'KVISION100', 'BMSTVKV100', 'K VISION (100.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'KVISION', 'KVISION1000', 'BMSTVKV1000', 'K VISION (1.000.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'KVISION', 'KVISION125', 'BMSTVKV125', 'K VISION (125.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'KVISION', 'KVISION150', 'BMSTVKV150', 'K VISION (150.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'KVISION', 'KVISION175', 'BMSTVKV175', 'K VISION (175.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'KVISION', 'KVISION200', 'BMSTVKV200', 'K VISION (200.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'KVISION', 'KVISION250', 'BMSTVKV250', 'K VISION (250.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'KVISION', 'KVISION300', 'BMSTVKV300', 'K VISION (300.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'KVISION', 'KVISION50', 'BMSTVKV50', 'K VISION (50.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'KVISION', 'KVISION500', 'BMSTVKV500', 'K VISION (500.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'KVISION', 'KVISION75', 'BMSTVKV75', 'K VISION (75.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'KVISION', 'KVISION750', 'BMSTVKV750', 'K VISION (750.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'NEX', 'NEX', 'BMSTVNEX', 'NEX MEDIA', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'ORANGE', 'ORANGE100', 'BMSTVORG10', 'ORANGE TV (100.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'ORANGE', 'ORANGE300', 'BMSTVORG30', 'ORANGE TV (300.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'ORANGE', 'ORANGE50', 'BMSTVORG50', 'ORANGE TV (50.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'ORANGE', 'ORANGE80', 'BMSTVORG80', 'ORANGE TV (80.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'ORANGE', 'ORANGEPOSTPAID', 'BMSTVORANG', 'TV ORANGE POSTPAID', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'SKY', 'SKY DELUXE 1', 'TVSKYDEL1', 'SKYNINDO TV DELUXE 1 BLN (80.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'SKY', 'SKY DELUXE 12', 'TVSKYDEL12', 'SKYNINDO TV DELUXE 12 BLN (960.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'SKY', 'SKY DELUXE 3', 'TVSKYDEL3', 'SKYNINDO TV DELUXE 3 BLN (240.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'SKY', 'SKY DELUXE 6', 'TVSKYDEL6', 'SKYNINDO TV DELUXE 6 BLN (480.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'SKY', 'SKY FAMILY 1', 'TVSKYFAM1', 'SKYNINDO TV FAMILY 1 BLN (40.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'SKY', 'SKY FAMILY 12', 'TVSKYFAM12', 'SKYNINDO TV FAMILY 12 BLN (480.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'SKY', 'SKY FAMILY 3', 'TVSKYFAM3', 'SKYNINDO TV FAMILY 3 BLN (120.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'SKY', 'SKY FAMILY 6', 'TVSKYFAM6', 'SKYNINDO TV FAMILY 6 BLN (240.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'SKY', 'SKY MANDARIN 1', 'TVSKYMAN1', 'SKYNINDO TV MANDARIN 1 BLN (140.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'SKY', 'SKY MANDARIN 3', 'TVSKYMAN3', 'SKYNINDO TV MANDARIN 3 BLN (420.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'SKY', 'SKY MANDARIN 6', 'TVSKYMAN6', 'SKYNINDO TV MANDARIN 6 BLN (840.000)', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11'),
('BYB', 'PEMBAYARAN', 'TV', 'TOPAS', 'TOPAS', 'BMSTVTOPAS', 'TOPAS TV', 'RIZKY', '0000-00-00', '11:11:11', 'RIZKY', '0000-00-00', '11:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `m_menu_user`
--

CREATE TABLE `m_menu_user` (
  `COMPANY_ID` varchar(20) NOT NULL,
  `USER_ID` varchar(29) NOT NULL,
  `MENU_ID` varchar(30) NOT NULL,
  `MENU_NAME` varchar(50) NOT NULL,
  `FLAG_ACTIVE` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_submenu_user`
--

CREATE TABLE `m_submenu_user` (
  `COMPANY_ID` varchar(20) NOT NULL,
  `USER_ID` varchar(20) NOT NULL,
  `MENU_ID` varchar(20) NOT NULL,
  `SUBMENU_ID` varchar(20) NOT NULL,
  `SUBMENU_NAME` varchar(50) NOT NULL,
  `FLAG_ACTIVE` varchar(1) NOT NULL,
  `USER_CREATE` varchar(20) NOT NULL,
  `DATE_CREATE` date NOT NULL,
  `TIME_CREATE` time NOT NULL,
  `USER_UPDATE` varchar(20) NOT NULL,
  `DATE_UPDATE` date NOT NULL,
  `TIME_UPDATE` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_user`
--

CREATE TABLE `m_user` (
  `COMPANY_ID` varchar(20) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_NAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `TYPE_USER` varchar(10) NOT NULL,
  `DATE_CREATE` date NOT NULL,
  `TIME_CREATE` time NOT NULL,
  `USER_CREATE` varchar(20) NOT NULL,
  `DATE_UPDATE` date NOT NULL,
  `TIME_UPDATE` time NOT NULL,
  `USER_UPDATE` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_user`
--

INSERT INTO `m_user` (`COMPANY_ID`, `USER_ID`, `USER_NAME`, `PASSWORD`, `TYPE_USER`, `DATE_CREATE`, `TIME_CREATE`, `USER_CREATE`, `DATE_UPDATE`, `TIME_UPDATE`, `USER_UPDATE`) VALUES
('BYB', 1, 'user1', 'user1', '', '0000-00-00', '00:00:00', '', '0000-00-00', '00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_customer_ppob_inquiry_req`
--

CREATE TABLE `t_customer_ppob_inquiry_req` (
  `COMPANY_ID` varchar(20) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `CUSTOMER_ID` varchar(20) NOT NULL,
  `TOKEN_ID` varchar(250) NOT NULL,
  `TRANS_INQ_ID` varchar(20) NOT NULL,
  `CATEGORY_ID` varchar(20) NOT NULL,
  `SUB_CATEGORY_ID` varchar(20) NOT NULL,
  `PRODUCT_ID` varchar(20) NOT NULL,
  `SUB_PRODUCT_ID` varchar(20) NOT NULL,
  `CUSTOMER_REQ_ID` varchar(30) NOT NULL,
  `DATETIME_TRANSACTION` datetime NOT NULL,
  `STATUS` varchar(10) NOT NULL,
  `REF_NO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_customer_ppob_payment_req`
--

CREATE TABLE `t_customer_ppob_payment_req` (
  `COMPANY_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `CUSTOMER_ID` varchar(20) NOT NULL,
  `TOKEN_ID` varchar(250) NOT NULL,
  `TRANS_PAY_ID` varchar(20) NOT NULL,
  `TYPE_TRANSACTION` varchar(10) NOT NULL,
  `CATEGORY_ID` varchar(20) NOT NULL,
  `PRODUCT_ID` varchar(20) NOT NULL,
  `CUSTOMER_REQ_ID` varchar(30) NOT NULL,
  `DATETIME_TRANSACTION` datetime NOT NULL,
  `NOMINAL_TRANSACTON` int(11) NOT NULL,
  `STATUS` varchar(10) NOT NULL,
  `REF_NO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_customer_token`
--

CREATE TABLE `t_customer_token` (
  `COMPANY_ID` varchar(20) NOT NULL,
  `CUSTOMER_ID` int(11) NOT NULL,
  `TOKEN_ID` varchar(250) NOT NULL,
  `START_DATETIME` datetime NOT NULL,
  `END_DATETIME` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_customer_token`
--

INSERT INTO `t_customer_token` (`COMPANY_ID`, `CUSTOMER_ID`, `TOKEN_ID`, `START_DATETIME`, `END_DATETIME`) VALUES
('BYB', 14, 'DzMQepiVt1Th0RkroJAv', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_customer`
--
ALTER TABLE `m_customer`
  ADD PRIMARY KEY (`CUSTOMER_ID`),
  ADD UNIQUE KEY `COMPANY_ID_CUSTOMER_ID` (`COMPANY_ID`,`CUSTOMER_ID`);

--
-- Indexes for table `m_list_produk`
--
ALTER TABLE `m_list_produk`
  ADD UNIQUE KEY `COMPANY_ID` (`COMPANY_ID`,`KATEGORI_ID`,`SUBKATEGORI_ID`,`PRODUCT_ID`,`SUBPRODUCT_ID`,`PRODUCT_CODE`);

--
-- Indexes for table `m_menu_user`
--
ALTER TABLE `m_menu_user`
  ADD UNIQUE KEY `COMPANY_ID` (`COMPANY_ID`,`USER_ID`,`MENU_ID`);

--
-- Indexes for table `m_submenu_user`
--
ALTER TABLE `m_submenu_user`
  ADD UNIQUE KEY `COMPANY_ID` (`COMPANY_ID`,`USER_ID`,`MENU_ID`,`SUBMENU_ID`);

--
-- Indexes for table `m_user`
--
ALTER TABLE `m_user`
  ADD PRIMARY KEY (`USER_ID`),
  ADD UNIQUE KEY `COMPANY_ID` (`COMPANY_ID`,`USER_ID`);

--
-- Indexes for table `t_customer_ppob_inquiry_req`
--
ALTER TABLE `t_customer_ppob_inquiry_req`
  ADD PRIMARY KEY (`USER_ID`),
  ADD UNIQUE KEY `COMPANY_ID` (`COMPANY_ID`,`USER_ID`,`CUSTOMER_ID`,`TOKEN_ID`,`TRANS_INQ_ID`);

--
-- Indexes for table `t_customer_ppob_payment_req`
--
ALTER TABLE `t_customer_ppob_payment_req`
  ADD PRIMARY KEY (`USER_ID`),
  ADD UNIQUE KEY `COMPANY_ID` (`COMPANY_ID`,`USER_ID`,`CUSTOMER_ID`,`TOKEN_ID`,`TRANS_PAY_ID`);

--
-- Indexes for table `t_customer_token`
--
ALTER TABLE `t_customer_token`
  ADD UNIQUE KEY `COMPANY_ID` (`COMPANY_ID`,`CUSTOMER_ID`,`TOKEN_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_customer`
--
ALTER TABLE `m_customer`
  MODIFY `CUSTOMER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `m_user`
--
ALTER TABLE `m_user`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_customer_ppob_inquiry_req`
--
ALTER TABLE `t_customer_ppob_inquiry_req`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_customer_ppob_payment_req`
--
ALTER TABLE `t_customer_ppob_payment_req`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
