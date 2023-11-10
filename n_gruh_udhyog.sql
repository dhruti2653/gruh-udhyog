-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2023 at 07:25 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `n_gruh_udhyog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(5) NOT NULL,
  `a_store_name` varchar(50) NOT NULL,
  `a_contact` varchar(10) NOT NULL,
  `a_email` varchar(30) NOT NULL,
  `a_store_add` varchar(1000) NOT NULL,
  `a_city` varchar(30) NOT NULL,
  `a_pincode` int(10) NOT NULL,
  `a_state` varchar(30) NOT NULL,
  `a_acc_hol_name` varchar(30) NOT NULL,
  `a_acc_no` varchar(30) NOT NULL,
  `a_ifsc` varchar(30) NOT NULL,
  `a_acc_type` varchar(30) NOT NULL,
  `a_pan_no` varchar(30) NOT NULL,
  `a_gstin` varchar(30) NOT NULL,
  `a_user` varchar(30) NOT NULL,
  `a_pass` varchar(50) NOT NULL,
  `a_create` timestamp NULL DEFAULT NULL,
  `a_status` int(1) NOT NULL DEFAULT '1',
  `attribute1` varchar(30) NOT NULL,
  `attribute2` varchar(30) NOT NULL,
  `attribute3` varchar(30) NOT NULL,
  `attribute4` varchar(30) NOT NULL,
  `attribute5` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_store_name`, `a_contact`, `a_email`, `a_store_add`, `a_city`, `a_pincode`, `a_state`, `a_acc_hol_name`, `a_acc_no`, `a_ifsc`, `a_acc_type`, `a_pan_no`, `a_gstin`, `a_user`, `a_pass`, `a_create`, `a_status`, `attribute1`, `attribute2`, `attribute3`, `attribute4`, `attribute5`) VALUES
(1, 'N GRUH UDHYOG', '9909988088', 'ngruhudhyog123@gmail.com', '150ft RING ROAD, RAJKOT-360002', 'RAJKOT', 360002, 'GUJARAT', 'Nijal Sakhreliya', '2312112244545454', 'BCJSDBCSDBC565', 'Current Account', 'XABJHXABSH4545', '121MSSKSKSKSSKKW215545', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', '2021-08-10 11:11:33', 1, '0', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `br_id` int(6) NOT NULL,
  `br_name` varchar(30) NOT NULL,
  `br_create` timestamp NULL DEFAULT NULL,
  `br_status` int(1) NOT NULL DEFAULT '1',
  `attribute1` varchar(30) NOT NULL,
  `attribute2` varchar(30) NOT NULL,
  `attribute3` varchar(30) NOT NULL,
  `attribute4` varchar(30) NOT NULL,
  `attribute5` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`br_id`, `br_name`, `br_create`, `br_status`, `attribute1`, `attribute2`, `attribute3`, `attribute4`, `attribute5`) VALUES
(16, 'GOPAL', '2023-08-07 01:28:26', 1, '', '', '', '', ''),
(17, 'BALAJI', '2023-08-07 01:38:50', 1, '', '', '', '', ''),
(18, 'N GRUH UDHYOG', '2023-08-07 01:39:06', 1, '', '', '', '', ''),
(19, 'LIJJAT', '2023-08-07 02:00:01', 1, '', '', '', '', ''),
(20, 'PARLE G', '2023-09-18 23:21:40', 1, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(5) NOT NULL,
  `cat_name` varchar(30) NOT NULL,
  `cat_create` timestamp NULL DEFAULT NULL,
  `cat_status` int(1) NOT NULL DEFAULT '1',
  `attribute1` varchar(30) NOT NULL,
  `attribute2` varchar(30) NOT NULL,
  `attribute3` varchar(30) NOT NULL,
  `attribute4` varchar(30) NOT NULL,
  `attribute5` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_create`, `cat_status`, `attribute1`, `attribute2`, `attribute3`, `attribute4`, `attribute5`) VALUES
(1, 'Papad', '2023-08-01 00:43:39', 1, '', '', '', '', ''),
(2, 'Khakhra', '2023-08-01 02:08:38', 1, '', '', '', '', ''),
(3, 'Pickle', '2023-07-31 23:49:32', 1, '', '', '', '', ''),
(4, 'Namkin', '2023-07-31 23:49:37', 1, '', '', '', '', ''),
(6, 'Sweets', '2023-08-05 18:30:00', 1, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(5) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_color1` varchar(30) NOT NULL,
  `p_color2` varchar(30) NOT NULL,
  `p_color3` varchar(30) NOT NULL,
  `p_brand` varchar(100) NOT NULL,
  `p_mrp` bigint(20) NOT NULL,
  `p_price` bigint(20) NOT NULL,
  `p_description` longtext NOT NULL,
  `p_img1` longtext NOT NULL,
  `p_img2` longtext NOT NULL,
  `p_img3` longtext NOT NULL,
  `p_img4` longtext NOT NULL,
  `p_img5` longtext NOT NULL,
  `p_category` int(5) NOT NULL,
  `p_quantity` bigint(20) NOT NULL,
  `p_create` timestamp NULL DEFAULT NULL,
  `p_status` int(1) NOT NULL DEFAULT '1',
  `attribute1` varchar(100) NOT NULL,
  `attribute2` varchar(100) NOT NULL,
  `attribute3` varchar(100) NOT NULL,
  `attribute4` varchar(100) NOT NULL,
  `attribute5` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `p_color1`, `p_color2`, `p_color3`, `p_brand`, `p_mrp`, `p_price`, `p_description`, `p_img1`, `p_img2`, `p_img3`, `p_img4`, `p_img5`, `p_category`, `p_quantity`, `p_create`, `p_status`, `attribute1`, `attribute2`, `attribute3`, `attribute4`, `attribute5`) VALUES
(33, 'Masala Papad', '', '', '', '18', 60, 49, 'Net Qty : 250 gm', '1691426620_moong_papad.jpg', '1691426620_', '1691426620_', '1691426620_', '1691426620_', 1, 5, '2023-08-07 01:13:40', 1, '', '', '', '', ''),
(36, 'Garlic Papad', '', '', '', '18', 40, 36, 'Net Qty : 250 gm', '1691428254_garlic_papad.jpg', '1691428254_', '1691428254_', '1691428254_', '1691428254_', 1, 50, '2023-08-07 01:40:54', 1, '', '', '', '', ''),
(37, 'Suji Papad', '', '', '', '18', 55, 44, 'Net Qty : 250 gm', '1691428498_suji_papad.jpg', '1691428498_', '1691428498_', '1691428498_', '1691428498_', 1, 50, '2023-08-07 01:44:58', 1, '', '', '', '', ''),
(38, 'Jeera Papad', '', '', '', '18', 60, 49, 'Net Qty : 250 gm', '1691428549_jeera_papad.jpg', '1691428549_', '1691428549_', '1691428549_', '1691428549_', 1, 50, '2023-08-07 01:45:49', 1, '', '', '', '', ''),
(39, 'Sabudana Papad', '', '', '', '18', 40, 36, 'Net Qty : 250 gm', '1691428614_sabudana_papad.jpg', '1691428614_', '1691428614_', '1691428614_', '1691428614_', 1, 50, '2023-08-07 01:46:54', 1, '', '', '', '', ''),
(40, 'Rice Papad', '', '', '', '18', 40, 36, 'Net Qty : 250 gm', '1691428652_rice_papad.jpg', '1691428652_', '1691428652_', '1691428652_', '1691428652_', 1, 50, '2023-08-07 01:47:32', 1, '', '', '', '', ''),
(41, 'Lijjat Papad', '', '', '', '19', 99, 84, 'Net Qty : 200 gm', '1691429484_download.jpeg', '1691429484_', '1691429484_', '1691429484_', '1691429484_', 1, 50, '2023-08-07 02:01:24', 1, '', '', '', '', ''),
(42, 'Masala Papad', '', '', '', '16', 60, 49, 'Net Qty : 200 gm', '1691429932_download (1).jpeg', '1691429932_', '1691429932_', '1691429932_', '1691429932_', 1, 50, '2023-08-07 02:08:52', 1, '', '', '', '', ''),
(43, 'Ajwain Khakhra', '', '', '', '18', 129, 111, 'Net Qty : 250 gm', '1691433888_ajwain_khakhra.jpg', '1691433888_', '1691433888_', '1691433888_', '1691433888_', 2, 50, '2023-08-07 03:14:48', 1, '', '', '', '', ''),
(44, 'Methi Khakhra', '', '', '', '18', 149, 129, 'Net Qty : 250 gm', '1691433968_methi_khakhra.jpg', '1691433968_', '1691433968_', '1691433968_', '1691433968_', 2, 50, '2023-08-07 03:16:08', 1, '', '', '', '', ''),
(45, 'Kothmari Khakhra', '', '', '', '18', 129, 111, 'Net Qty : 250 gm', '1691434016_kotmari_khakhra.jpg', '1691434016_', '1691434016_', '1691434016_', '1691434016_', 2, 50, '2023-08-07 03:16:56', 1, '', '', '', '', ''),
(46, 'Jeera Khakhra', '', '', '', '18', 111, 99, 'Net Qty : 250 gm', '1691434078_jeera_khakhra.jpg', '1691434078_', '1691434078_', '1691434078_', '1691434078_', 2, 50, '2023-08-07 03:17:58', 1, '', '', '', '', ''),
(47, 'Pav Bhaji Khakhra', '', '', '', '18', 149, 129, 'Net Qty : 250 gm', '1691434162_pav_bhaji_khakhra.jpg', '1691434162_', '1691434162_', '1691434162_', '1691434162_', 2, 50, '2023-08-07 03:19:22', 1, '', '', '', '', ''),
(48, 'Pizza Khakhra', '', '', '', '18', 149, 131, 'Net Qty : 250 gm', '1691434218_pizza_khakhra.jpg', '1691434218_', '1691434218_', '1691434218_', '1691434218_', 2, 50, '2023-08-07 03:20:18', 1, '', '', '', '', ''),
(49, 'Chocolate Khakhra', '', '', '', '17', 199, 189, 'Net Qty : 250 gm', '1691434265_choclate_khakhra.jpg', '1691434265_', '1691434265_', '1691434265_', '1691434265_', 2, 50, '2023-08-07 03:21:05', 1, '', '', '', '', ''),
(50, 'Venila Khakhra', '', '', '', '16', 189, 177, 'Net Qty : 250 gm', '1691434303_venila_khakhra.jpg', '1691434303_', '1691434303_', '1691434303_', '1691434303_', 2, 50, '2023-08-07 03:21:43', 1, '', '', '', '', ''),
(51, 'Chilli Garlic Khakhra', '', '', '', '18', 149, 129, 'Net Qty : 250 gm', '1691434341_chilli_garlic_khakhra.jpg', '1691434341_', '1691434341_', '1691434341_', '1691434341_', 2, 50, '2023-08-07 03:22:21', 1, '', '', '', '', ''),
(52, 'Ghee Sada Khakhra', '', '', '', '18', 199, 191, 'Net Qty : 250 gm', '1691434379_ghee_sada_khakhra.jpg', '1691434379_', '1691434379_', '1691434379_', '1691434379_', 2, 50, '2023-08-07 03:22:59', 1, '', '', '', '', ''),
(53, 'Amla Burfi Pickle', '', '', '', '18', 299, 249, 'Net Qty : 250 gm', '1691434443_amla_burfi_pickle.jpg', '1691434443_', '1691434443_', '1691434443_', '1691434443_', 3, 50, '2023-08-07 03:24:03', 1, '', '', '', '', ''),
(54, 'Amla', '', '', '', '19', 399, 349, 'Net Qty : 250 gm', '1691434476_amla_pickle.jpg', '1691434476_', '1691434476_', '1691434476_', '1691434476_', 3, 50, '2023-08-07 03:24:36', 1, '', '', '', '', ''),
(55, 'Mango Pickle', '', '', '', '18', 249, 222, 'Net Qty : 250 gm', '1691434513_mango_pickle.jpg', '1691434513_', '1691434513_', '1691434513_', '1691434513_', 3, 50, '2023-08-07 03:25:13', 1, '', '', '', '', ''),
(56, 'Green Chilli Pickle', '', '', '', '18', 399, 249, 'Net Qty : 250 gm', '1691434596_green_chilli_pickle.jpg', '1691434596_', '1691434596_', '1691434596_', '1691434596_', 3, 50, '2023-08-07 03:26:36', 1, '', '', '', '', ''),
(57, 'Onion Pickle', '', '', '', '18', 149, 129, 'Net Qty : 250 gm', '1691434707_onion_pickle.jpg', '1691434707_', '1691434707_', '1691434707_', '1691434707_', 3, 50, '2023-08-07 03:28:27', 1, '', '', '', '', ''),
(58, 'Lime Pickle', '', '', '', '19', 599, 549, 'Net Qty : 250 gm', '1691434893_lime_pickle.jpg', '1691434893_', '1691434893_', '1691434893_', '1691434893_', 3, 50, '2023-08-07 03:31:33', 1, '', '', '', '', ''),
(59, 'Red Chilli Pickle', '', '', '', '17', 399, 349, 'Net Qty : 250 gm', '1691434935_red_chilli_pickle.jpg', '1691434935_', '1691434935_', '1691434935_', '1691434935_', 3, 50, '2023-08-07 03:32:15', 1, '', '', '', '', ''),
(60, 'Murbo Pickle', '', '', '', '18', 499, 449, 'Net Qty : 250 gm', '1691434976_murbo_pickle.jpg', '1691434976_', '1691434976_', '1691434976_', '1691434976_', 3, 50, '2023-08-07 03:32:56', 1, '', '', '', '', ''),
(61, 'Gol Keri Pickle', '', '', '', '18', 559, 499, 'Net Qty : 250 gm', '1691435023_gol_keri_pickle.jpg', '1691435023_', '1691435023_', '1691435023_', '1691435023_', 3, 50, '2023-08-07 03:33:43', 1, '', '', '', '', ''),
(62, 'Mixture Namkin', '', '', '', '18', 299, 249, 'Very Testy - Net Qty : 400 gm', '1691471972_41SpciGHhKL.jpg', '1691471972_', '1691471972_', '1691471972_', '1691471972_', 4, 50, '2023-08-08 01:49:31', 1, '', '', '', '', ''),
(63, 'Mug Dal ', '', '', '', '18', 499, 449, 'Best Me Best - Net Net Qty : 500 gm', '1691472098_depositphotos_305541466-stock-photo-salty-fried-moong-dal-crispy.jpg', '1691472098_', '1691472098_', '1691472098_', '1691472098_', 4, 50, '2023-08-08 01:51:37', 1, '', '', '', '', ''),
(64, 'Tikha Gathiya', '', '', '', '18', 299, 199, 'Net Qty : 500 gm', '1691472161_tasty-and-spicy-namkeen-snacks-614.jpg', '1691472161_', '1691472161_', '1691472161_', '1691472161_', 4, 50, '2023-08-08 01:52:41', 1, '', '', '', '', ''),
(65, 'Mola Spicy Gathiya', '', '', '', '18', 399, 249, 'Net Qty : 500 gm', '1691472216_500-grmas-pack-size-fresh-tasty-and-delicious-kadak-sev-namkeen-snacks-419.jpg', '1691472216_', '1691472216_', '1691472216_', '1691472216_', 4, 50, '2023-08-08 01:53:36', 1, '', '', '', '', ''),
(66, 'Special Sev Mamra', '', '', '', '18', 500, 449, 'Net Qty : 750 gm', '1691472295_Quick-Murmura-Namkeen-1.jpg', '1691472295_', '1691472295_', '1691472295_', '1691472295_', 4, 50, '2023-08-08 01:54:55', 1, '', '', '', '', ''),
(67, 'Soya Stick', '', '', '', '18', 299, 249, 'Net Qty : 250 gm', '1691472355_360_F_420506818_F136RV4aWXEgh0gaovhJrZIQaPQtLYAQ.jpg', '1691472355_', '1691472355_', '1691472355_', '1691472355_', 4, 50, '2023-08-08 01:55:55', 1, '', '', '', '', ''),
(68, 'Boondi Ladu', '', '', '', '18', 499, 449, 'Boondi Ladu, \r\nTest me Best,\r\n1 Kg\r\n500 GM', '1695135818_boondi-laddu.jpg', '1695135818_', '1695135818_', '1695135818_', '1695135818_', 6, 50, '2023-09-18 23:33:38', 1, '', '', '', '', ''),
(69, 'Mango Shreekhand', '', '', '', '18', 300, 249, 'Mango Shreekhand\r\n1 Kg - 249 Rs. Only', '1695136206_59178506.jpg', '1695136206_', '1695136206_', '1695136206_', '1695136206_', 6, 50, '2023-09-18 23:40:06', 1, '', '', '', '', ''),
(70, 'Mava Penda', '', '', '', '18', 219, 199, 'Mava na penda,\r\n1 kG, 500 Gm', '1695136350_whatsapp-image-2022-03-29-at-11-14-11-pm-1--500x500.jpg', '1695136350_', '1695136350_', '1695136350_', '1695136350_', 6, 50, '2023-09-18 23:42:30', 1, '', '', '', '', ''),
(71, 'Thabdi Penda', '', '', '', '18', 299, 249, '1 Kg Packaging Available,\r\n500 Gm packaging available.\r\nBest Product Of N Gruh-Udhyog.', '1695141053.jpg', '1695141053_', '1695141053_', '1695141053_', '1695141053_', 6, 50, '2023-09-19 01:00:53', 1, '', '', '', '', ''),
(72, 'Besan Ladu', '', '', '', '18', 229, 219, '1 KG Packaging Available,\r\n500 Gm Packaging Available.', '1695141154_besan-ladoo.jpg', '1695141154_', '1695141154_', '1695141154_', '1695141154_', 6, 50, '2023-09-19 01:02:34', 1, '', '', '', '', ''),
(73, 'White Penda', '', '', '', '18', 201, 179, '1 Kg Packaging Available,\r\n500 GM Packaging Available', '450-white-penda-balushahi-shivshakti-original-imag32uzjwut4234.jpg', '1695141248_', '1695141248_', '1695141248_', '1695141248_', 6, 50, '2023-09-19 01:04:08', 1, '', '', '', '', ''),
(74, 'Gulab Jamun', '', '', '', '18', 199, 149, 'Only 1 KG Packaging Available.', '1695141357_gulab-jamun.jpeg', '1695141357_', '1695141357_', '1695141357_', '1695141357_', 6, 50, '2023-09-19 01:05:57', 1, '', '', '', '', ''),
(75, 'Kaju Katri', '', '', '', '18', 999, 949, '1 KG Packaging Available,\r\n500 GM Packaging Available,\r\n250 GM Packaging Available,\r\n100 GM Packaging Available.', '1695141442_kaju-katli.jpg', '1695141442_', '1695141442_', '1695141442_', '1695141442_', 6, 50, '2023-09-19 01:07:22', 1, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `reg_id` int(5) NOT NULL,
  `reg_name` varchar(30) NOT NULL,
  `reg_address` varchar(1000) NOT NULL,
  `reg_city` varchar(30) NOT NULL,
  `reg_pincode` int(10) NOT NULL,
  `reg_state` varchar(30) NOT NULL,
  `reg_contact` varchar(10) NOT NULL,
  `reg_email` varchar(30) NOT NULL,
  `reg_user` varchar(30) NOT NULL,
  `reg_pass` varchar(50) NOT NULL,
  `reg_create` timestamp NULL DEFAULT NULL,
  `reg_status` int(1) NOT NULL DEFAULT '1',
  `attribte1` varchar(30) NOT NULL,
  `attribte2` varchar(30) NOT NULL,
  `attribte3` varchar(32) NOT NULL,
  `attribte4` varchar(30) NOT NULL,
  `attribte5` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`reg_id`, `reg_name`, `reg_address`, `reg_city`, `reg_pincode`, `reg_state`, `reg_contact`, `reg_email`, `reg_user`, `reg_pass`, `reg_create`, `reg_status`, `attribte1`, `attribte2`, `attribte3`, `attribte4`, `attribte5`) VALUES
(6, 'nijal', 'rajkot', 'rajkot', 360002, 'gujarat', '8888899999', 'nijal123@gmail.com', 'nijal123', 'f8b7ff08665458f45f84ce0b849d55bc', '2023-08-05 22:05:21', 1, '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`br_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`reg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `br_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `reg_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
