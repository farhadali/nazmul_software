-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2022 at 08:59 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musabber_acccount_v_1_0`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `_ref_master_id` int(11) NOT NULL,
  `_ref_detail_id` int(11) NOT NULL,
  `_short_narration` varchar(255) DEFAULT NULL,
  `_narration` varchar(255) DEFAULT NULL,
  `_reference` varchar(255) DEFAULT NULL,
  `_transaction` varchar(100) DEFAULT NULL,
  `_date` date DEFAULT NULL,
  `_table_name` varchar(150) DEFAULT NULL,
  `_account_head` int(11) DEFAULT NULL,
  `_account_group` int(11) DEFAULT NULL,
  `_account_ledger` int(11) DEFAULT NULL,
  `_dr_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_cr_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_branch_id` int(11) DEFAULT NULL,
  `_cost_center` int(11) DEFAULT NULL,
  `_name` varchar(250) DEFAULT NULL,
  `_status` int(11) NOT NULL DEFAULT 1,
  `_serial` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `_ref_master_id`, `_ref_detail_id`, `_short_narration`, `_narration`, `_reference`, `_transaction`, `_date`, `_table_name`, `_account_head`, `_account_group`, `_account_ledger`, `_dr_amount`, `_cr_amount`, `_branch_id`, `_cost_center`, `_name`, `_status`, `_serial`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 293, 14370.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(2, 1, 2, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 292, 84960.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(3, 1, 3, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 291, 131940.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(4, 1, 4, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 290, 0.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(5, 1, 5, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 289, 8700.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(6, 1, 6, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 288, 181700.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(7, 1, 7, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 287, 42550.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(8, 1, 8, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 4, 41, 401, 19950.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(9, 1, 9, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 6, 65, 402, 0.0000, 19950.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(10, 1, 10, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 286, 129050.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(11, 1, 11, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 285, 295475.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(12, 1, 12, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 282, 0.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(13, 1, 13, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 280, 4680.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(14, 1, 14, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 277, 97695.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(15, 1, 15, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 275, 30550.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(16, 1, 16, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 274, 29075.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(17, 1, 17, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 2, 2, 403, 80000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(18, 1, 18, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 4, 41, 404, 105350.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(19, 1, 19, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 4, 42, 405, 200000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(20, 1, 20, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 270, 53690.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(21, 1, 21, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 266, 278060.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(22, 1, 22, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 265, 3140.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(23, 1, 23, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 260, 6200.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(24, 1, 24, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 257, 130660.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(25, 1, 25, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 256, 10130.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(26, 1, 26, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 255, 113570.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(27, 1, 27, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 254, 7920.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(28, 1, 28, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 252, 30820.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(29, 1, 29, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 251, 0.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(30, 1, 30, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 250, 47370.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(31, 1, 31, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 248, 10200.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(32, 1, 32, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 245, 76500.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(33, 1, 33, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 244, 2000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(34, 1, 34, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 243, 162770.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(35, 1, 35, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 241, 0.0000, 22360.5000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(36, 1, 36, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 240, 1440550.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(37, 1, 37, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 1, 15, 406, 10000.9500, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(38, 1, 38, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 1, 15, 407, 0.0000, 4189446.4700, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(39, 1, 39, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 237, 700.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(40, 1, 40, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 236, 144980.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(41, 1, 41, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 235, 11875.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(42, 1, 42, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 234, 16295.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(43, 1, 43, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 233, 102145.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(44, 1, 44, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 232, 211948.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(45, 1, 45, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 230, 412000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(46, 1, 46, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 229, 37100.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(47, 1, 47, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 228, 8400.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(48, 1, 48, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 227, 9485.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(49, 1, 49, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 226, 1900.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(50, 1, 50, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 225, 11500.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(51, 1, 51, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 224, 0.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(52, 1, 52, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 223, 15400.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(53, 1, 53, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 222, 56850.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(54, 1, 54, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 221, 5000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(55, 1, 55, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 220, 83800.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(56, 1, 56, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 219, 161535.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(57, 1, 57, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 218, 47795.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(58, 1, 58, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 217, 97140.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(59, 1, 59, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 216, 177697.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(60, 1, 60, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 215, 192685.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(61, 1, 61, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 214, 71235.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(62, 1, 62, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 213, 3495.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(63, 1, 63, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 212, 9900.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(64, 1, 64, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 211, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(65, 1, 65, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 210, 205850.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(66, 1, 66, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 209, 10540.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(67, 1, 67, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 207, 3800.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(68, 1, 68, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 205, 66035.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(69, 1, 69, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 204, 5875.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(70, 1, 70, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 203, 1800.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(71, 1, 71, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 202, 128500.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(72, 1, 72, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 201, 556445.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(73, 1, 73, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 199, 87000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(74, 1, 74, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 198, 35060.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(75, 1, 75, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 197, 19000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(76, 1, 76, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 196, 40350.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(77, 1, 77, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 195, 3200.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(78, 1, 78, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 194, 13295.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(79, 1, 79, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 193, 4300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(80, 1, 80, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 192, 1010850.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(81, 1, 81, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 191, 163135.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(82, 1, 82, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 190, 102390.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(83, 1, 83, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 189, 44600.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(84, 1, 84, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 188, 36500.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(85, 1, 85, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 187, 1500.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(86, 1, 86, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 186, 43800.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(87, 1, 87, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 185, 3250.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(88, 1, 88, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 184, 764185.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(89, 1, 89, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 183, 72000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 09:57:15', '2022-05-29 05:13:27'),
(90, 1, 90, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 182, 16100.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:03:32', '2022-05-29 05:13:27'),
(91, 1, 91, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 181, 34600.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:03:32', '2022-05-29 05:13:27'),
(92, 1, 92, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 7, 73, 49, 0.0000, 7039266.7140, 1, 1, 'admin', 1, 0, '2022-05-25 10:03:32', '2022-05-29 05:13:27'),
(93, 1, 93, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 177, 25300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:27'),
(94, 1, 94, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 176, 248780.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:27'),
(95, 1, 95, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 174, 0.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:27'),
(96, 1, 96, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 172, 359100.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:27'),
(97, 1, 97, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 171, 111730.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:27'),
(98, 1, 98, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 169, 26200.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:27'),
(99, 1, 99, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 168, 630400.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:27'),
(100, 1, 100, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 167, 79800.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:27'),
(101, 1, 101, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 166, 386600.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:27'),
(102, 1, 102, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 165, 260100.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:27'),
(103, 1, 103, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 164, 327343.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:27'),
(104, 1, 104, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 163, 6815.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:27'),
(105, 1, 105, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 161, 20660.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:27'),
(106, 1, 106, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 160, 37565.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:27'),
(107, 1, 107, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 159, 18395.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:27'),
(108, 1, 108, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 158, 75640.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:27'),
(109, 1, 109, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 157, 8705.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:27'),
(110, 1, 110, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 155, 173595.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(111, 1, 111, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 154, 203455.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(112, 1, 112, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 153, 556945.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(113, 1, 113, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 152, 481150.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(114, 1, 114, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 151, 94270.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(115, 1, 115, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 150, 69450.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(116, 1, 116, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 148, 9365.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(117, 1, 117, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 146, 107355.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(118, 1, 118, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 144, 0.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(119, 1, 119, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 142, 45240.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(120, 1, 120, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 141, 152995.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(121, 1, 121, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 140, 11935.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(122, 1, 122, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 139, 22475.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(123, 1, 123, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 138, 4575.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(124, 1, 124, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 137, 238530.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(125, 1, 125, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 136, 18080.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(126, 1, 126, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 135, 54275.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(127, 1, 127, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 134, 79660.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(128, 1, 128, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 133, 40110.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(129, 1, 129, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 132, 407996.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(130, 1, 130, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 131, 260410.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(131, 1, 131, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 130, 71350.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(132, 1, 132, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 129, 468500.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(133, 1, 133, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 128, 482072.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(134, 1, 134, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 125, 134755.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(135, 1, 135, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 124, 853650.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(136, 1, 136, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 123, 375710.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(137, 1, 137, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 13, 1, 121, 0.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(138, 1, 138, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 1, 16, 1, 13303.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:18:00', '2022-05-29 05:13:28'),
(139, 1, 139, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 12, 43, 64, 1603.5610, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:30:36', '2022-05-29 05:13:28'),
(140, 1, 140, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 12, 43, 65, 0.0000, 4990182.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:30:36', '2022-05-29 05:13:28'),
(141, 1, 141, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 12, 43, 67, 564.7500, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:30:36', '2022-05-29 05:13:28'),
(142, 1, 142, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 12, 43, 70, 2820.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:30:36', '2022-05-29 05:13:28'),
(143, 1, 143, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 12, 43, 71, 0.0000, 1065924.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:30:36', '2022-05-29 05:13:28'),
(144, 1, 144, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 12, 43, 73, 0.0000, 59227.1890, 1, 1, 'admin', 1, 0, '2022-05-25 10:30:36', '2022-05-29 05:13:28'),
(145, 1, 145, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 12, 43, 74, 0.0000, 60704.1180, 1, 1, 'admin', 1, 0, '2022-05-25 10:30:36', '2022-05-29 05:13:28'),
(146, 1, 146, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 12, 43, 75, 0.0000, 3870.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:30:36', '2022-05-29 05:13:28'),
(147, 1, 147, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 5, 56, 380, 1074000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:30:36', '2022-05-29 05:13:28'),
(148, 1, 148, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 12, 43, 84, 0.0000, 100000.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:30:36', '2022-05-29 05:13:28'),
(149, 1, 149, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 12, 43, 86, 26400.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:30:36', '2022-05-29 05:13:28'),
(150, 1, 150, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 12, 43, 87, 30.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:30:36', '2022-05-29 05:13:28'),
(151, 1, 151, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 12, 43, 94, 0.0000, 200000.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:30:36', '2022-05-29 05:13:28'),
(152, 1, 152, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 12, 43, 95, 0.0000, 150000.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:30:36', '2022-05-29 05:13:28'),
(153, 1, 153, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 5, 53, 408, 0.0000, 730960.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:30:36', '2022-05-29 05:13:28'),
(154, 1, 154, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 12, 43, 103, 0.0000, 27400.0000, 1, 1, 'admin', 1, 0, '2022-05-25 10:30:36', '2022-05-29 05:13:28'),
(155, 1, 1, 'Inventory', 'Opening Inventory', NULL, 'Purchase', '2022-05-25', 'purchases', 10, 129, 2, 326587.7300, 0.0000, 1, 1, 'admin', 1, 1, '2022-05-25 10:51:18', '2022-05-26 10:26:48'),
(156, 1, 1, 'Purchase', 'Opening Inventory', NULL, 'Purchase', '2022-05-25', 'purchases', 2, 6, 7, 0.0000, 326587.7300, 1, 1, 'admin', 1, 2, '2022-05-25 10:51:18', '2022-05-26 10:26:48'),
(157, 1, 1, 'Purchase', 'Opening Inventory', NULL, 'Purchase', '2022-05-25', 'purchases', 2, 6, 7, 326587.7300, 0.0000, 1, 1, 'admin', 1, 3, '2022-05-25 10:51:18', '2022-05-26 10:26:48'),
(158, 1, 1, 'Inventory', 'Opening Inventory', NULL, 'Purchase', '2022-05-25', 'purchases', 10, 129, 2, 0.0000, 326587.7300, 1, 1, 'admin', 1, 4, '2022-05-25 10:51:18', '2022-05-26 10:26:48'),
(159, 1, 155, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 2, 6, 7, 326587.7300, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-25 11:31:16', '2022-05-29 05:13:28'),
(160, 1, 156, 'N/A', 'Opening Balance', 'Opening Balance', 'Account', '2022-05-25', 'voucher_masters', 12, 43, 97, 0.0000, 32500.0000, 1, 1, 'admin', 1, 0, '2022-05-26 11:54:31', '2022-05-29 05:13:28'),
(161, 2, 157, 'Cash Received', 'Tota pay cash to Sandu from his shop', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 16, 1, 5000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-26 12:01:22', '2022-05-28 05:36:27'),
(162, 2, 158, 'Cash Deposit', 'Tota pay cash to Sandu from his shop', NULL, 'Account', '2022-05-26', 'voucher_masters', 13, 1, 171, 0.0000, 5000.0000, 1, 1, 'admin', 1, 0, '2022-05-26 12:01:22', '2022-05-28 05:36:27'),
(163, 3, 159, 'Cash Received', 'Shahjahan pay cash to Sandu from his shop', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 16, 1, 5500.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-26 12:05:14', '2022-05-28 05:35:49'),
(164, 3, 160, 'Cash Deposit', 'Shahjahan pay cash to Sandu from his shop', NULL, 'Account', '2022-05-26', 'voucher_masters', 13, 1, 168, 0.0000, 5500.0000, 1, 1, 'admin', 1, 0, '2022-05-26 12:05:14', '2022-05-28 05:35:49'),
(165, 4, 161, 'Cash Received', 'Firoz pay cash to Sandu from his shop', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 16, 1, 5500.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-26 12:08:00', '2022-05-28 05:35:08'),
(166, 4, 162, 'Cash Deposit', 'Firoz pay cash to Sandu from his shop', NULL, 'Account', '2022-05-26', 'voucher_masters', 13, 1, 245, 0.0000, 5500.0000, 1, 1, 'admin', 1, 0, '2022-05-26 12:08:00', '2022-05-28 05:35:08'),
(167, 5, 163, 'Cash Received', 'Atikur pay cash to Sandu from his shop', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 16, 1, 16600.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-26 12:10:20', '2022-05-28 05:33:39'),
(168, 5, 164, 'Cash Deposit', 'Atikur pay cash to Sandu from his shop', NULL, 'Account', '2022-05-26', 'voucher_masters', 13, 1, 181, 0.0000, 16600.0000, 1, 1, 'admin', 1, 0, '2022-05-26 12:10:20', '2022-05-28 05:33:39'),
(169, 6, 165, 'Agrani Bank', 'Parvez pay cash to Mehedi by Agrani Bank', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 16, 1, 246000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-26 12:12:03', '2022-05-27 10:18:16'),
(170, 6, 166, 'Agrani Bank', 'Parvez pay cash to Mehedi by Agrani Bank', NULL, 'Account', '2022-05-26', 'voucher_masters', 13, 1, 240, 0.0000, 246000.0000, 1, 1, 'admin', 1, 0, '2022-05-26 12:12:03', '2022-05-27 10:18:16'),
(171, 7, 167, 'Cash Received', 'Hasan pay cash at office by physically present', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 16, 1, 60000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-27 05:38:25', '2022-05-28 05:32:27'),
(172, 7, 168, 'Cash Deposit', 'Hasan pay cash at office by physically present', NULL, 'Account', '2022-05-26', 'voucher_masters', 13, 1, 243, 0.0000, 60000.0000, 1, 1, 'admin', 1, 0, '2022-05-27 05:38:25', '2022-05-28 05:32:27'),
(173, 1, 1, 'Sales', 'BS=01Bag & Virocid=01pcs', NULL, 'Sales', '2022-05-26', 'sales', 13, 1, 121, 3365.0000, 0.0000, 1, 1, 'admin', 1, 1, '2022-05-27 06:01:15', '2022-05-28 05:23:29'),
(174, 1, 1, 'Walking Customer', 'BS=01Bag & Virocid=01pcs', NULL, 'Sales', '2022-05-26', 'sales', 8, 85, 4, 0.0000, 3365.0000, 1, 1, 'admin', 1, 2, '2022-05-27 06:01:15', '2022-05-28 05:23:29'),
(175, 1, 1, 'Inventory', 'BS=01Bag & Virocid=01pcs', NULL, 'Sales', '2022-05-26', 'sales', 9, 140, 50, 3031.5700, 0.0000, 1, 1, 'admin', 1, 3, '2022-05-27 06:01:15', '2022-05-28 05:23:29'),
(176, 1, 1, 'Cost of goods sold', 'BS=01Bag & Virocid=01pcs', NULL, 'Sales', '2022-05-26', 'sales', 2, 6, 7, 0.0000, 3031.5700, 1, 1, 'admin', 1, 4, '2022-05-27 06:01:15', '2022-05-28 05:23:29'),
(177, 1, 1, 'Walking Customer', 'BS=01Bag & Virocid=01pcs', NULL, 'Sales', '2022-05-26', 'sales', 10, 142, 8, 90.0000, 0.0000, 1, 1, 'admin', 1, 5, '2022-05-27 06:01:15', '2022-05-28 05:23:29'),
(178, 1, 1, 'Sales Discount', 'BS=01Bag & Virocid=01pcs', NULL, 'Sales', '2022-05-26', 'sales', 13, 1, 121, 0.0000, 90.0000, 1, 1, 'admin', 1, 6, '2022-05-27 06:01:15', '2022-05-28 05:23:29'),
(179, 1, 1, 'N/A', 'BS=01Bag & Virocid=01pcs', NULL, 'Sales', '2022-05-27', 'sales_accounts', 1, 16, 1, 3275.0000, 0.0000, 1, 1, 'admin', 0, 9, '2022-05-27 06:01:15', '2022-05-28 05:23:29'),
(180, 1, 2, 'N/A', 'BS=01Bag & Virocid=01pcs', NULL, 'Sales', '2022-05-27', 'sales_accounts', 13, 1, 121, 0.0000, 3275.0000, 1, 1, 'admin', 0, 10, '2022-05-27 06:01:15', '2022-05-28 05:23:29'),
(181, 2, 2, 'Sales', 'LL=01Bag', NULL, 'Sales', '2022-05-26', 'sales', 13, 1, 280, 2590.0000, 0.0000, 1, 1, 'admin', 1, 1, '2022-05-27 09:56:52', '2022-05-28 05:18:38'),
(182, 2, 2, 'Nana-Nati (Quel)', 'LL=01Bag', NULL, 'Sales', '2022-05-26', 'sales', 8, 85, 4, 0.0000, 2590.0000, 1, 1, 'admin', 1, 2, '2022-05-27 09:56:52', '2022-05-28 05:18:38'),
(183, 2, 2, 'Inventory', 'LL=01Bag', NULL, 'Sales', '2022-05-26', 'sales', 9, 140, 50, 2472.5000, 0.0000, 1, 1, 'admin', 1, 3, '2022-05-27 09:56:52', '2022-05-28 05:18:38'),
(184, 2, 2, 'Cost of goods sold', 'LL=01Bag', NULL, 'Sales', '2022-05-26', 'sales', 2, 6, 7, 0.0000, 2472.5000, 1, 1, 'admin', 1, 4, '2022-05-27 09:56:52', '2022-05-28 05:18:38'),
(185, 2, 3, 'Cash Pay', 'LL=01Bag', NULL, 'Sales', '2022-05-26', 'sales_accounts', 1, 16, 1, 2600.0000, 0.0000, 1, 1, 'admin', 0, 9, '2022-05-27 09:56:52', '2022-05-28 05:18:38'),
(186, 2, 4, 'Cash Pay', 'LL=01Bag', NULL, 'Sales', '2022-05-26', 'sales_accounts', 13, 1, 280, 0.0000, 2600.0000, 1, 1, 'admin', 0, 10, '2022-05-27 09:56:52', '2022-05-28 05:18:38'),
(187, 3, 3, 'Sales', 'SS=02Bags', NULL, 'Sales', '2022-05-26', 'sales', 13, 1, 121, 5860.0000, 0.0000, 1, 1, 'admin', 1, 1, '2022-05-27 10:06:06', '2022-05-28 05:25:44'),
(188, 3, 3, 'Walking Customer', 'SS=02Bags', NULL, 'Sales', '2022-05-26', 'sales', 8, 85, 4, 0.0000, 5860.0000, 1, 1, 'admin', 1, 2, '2022-05-27 10:06:06', '2022-05-28 05:25:44'),
(189, 3, 3, 'Inventory', 'SS=02Bags', NULL, 'Sales', '2022-05-26', 'sales', 9, 140, 50, 5349.0000, 0.0000, 1, 1, 'admin', 1, 3, '2022-05-27 10:06:06', '2022-05-28 05:25:44'),
(190, 3, 3, 'Cost of goods sold', 'SS=02Bags', NULL, 'Sales', '2022-05-26', 'sales', 2, 6, 7, 0.0000, 5349.0000, 1, 1, 'admin', 1, 4, '2022-05-27 10:06:06', '2022-05-28 05:25:44'),
(191, 3, 3, 'Walking Customer', 'SS=02Bags', NULL, 'Sales', '2022-05-26', 'sales', 10, 142, 8, 460.0000, 0.0000, 1, 1, 'admin', 1, 5, '2022-05-27 10:06:06', '2022-05-28 05:25:44'),
(192, 3, 3, 'Sales Discount', 'SS=02Bags', NULL, 'Sales', '2022-05-26', 'sales', 13, 1, 121, 0.0000, 460.0000, 1, 1, 'admin', 1, 6, '2022-05-27 10:06:06', '2022-05-28 05:25:44'),
(193, 3, 5, 'N/A', 'SS=02Bags', NULL, 'Sales', '2022-05-26', 'sales_accounts', 1, 16, 1, 5400.0000, 0.0000, 1, 1, 'admin', 0, 9, '2022-05-27 10:06:06', '2022-05-28 05:25:44'),
(194, 3, 6, 'N/A', 'SS=02Bags', NULL, 'Sales', '2022-05-26', 'sales_accounts', 13, 1, 121, 0.0000, 5400.0000, 1, 1, 'admin', 0, 10, '2022-05-27 10:06:06', '2022-05-28 05:25:44'),
(195, 8, 169, 'Cash Received', 'Helal pay cash to Shawn from his shop', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 16, 1, 10000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-27 10:13:05', '2022-05-28 05:31:48'),
(196, 8, 170, 'Cash Deposit', 'Helal pay cash to Shawn from his shop', NULL, 'Account', '2022-05-26', 'voucher_masters', 13, 1, 182, 0.0000, 10000.0000, 1, 1, 'admin', 1, 0, '2022-05-27 10:13:05', '2022-05-28 05:31:48'),
(197, 9, 171, 'Cash Received', 'Yousuf pay cash to Shawn from his shop', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 16, 1, 8000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-27 10:15:58', '2022-05-28 05:31:20'),
(198, 9, 172, 'Cash Deposit', 'Yousuf pay cash to Shawn from his shop', NULL, 'Account', '2022-05-26', 'voucher_masters', 13, 1, 166, 0.0000, 8000.0000, 1, 1, 'admin', 1, 0, '2022-05-27 10:15:58', '2022-05-28 05:31:20'),
(199, 10, 173, 'Cash Received', 'Ronju pay cash to Shawn from his shop', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 16, 1, 10500.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-27 10:17:33', '2022-05-28 05:30:36'),
(200, 10, 174, 'Cash Deposit', 'Ronju pay cash to Shawn from his shop', NULL, 'Account', '2022-05-26', 'voucher_masters', 13, 1, 167, 0.0000, 10500.0000, 1, 1, 'admin', 1, 0, '2022-05-27 10:17:33', '2022-05-28 05:30:36'),
(201, 1, 7, 'N/A', 'BS=01Bag & Virocid=01pcs', NULL, 'Sales', '2022-05-26', 'sales_accounts', 1, 16, 1, 3275.0000, 0.0000, 1, 1, 'admin', 0, 9, '2022-05-27 10:21:33', '2022-05-28 05:23:29'),
(202, 1, 8, 'N/A', 'BS=01Bag & Virocid=01pcs', NULL, 'Sales', '2022-05-26', 'sales_accounts', 13, 1, 121, 0.0000, 3275.0000, 1, 1, 'admin', 0, 10, '2022-05-27 10:21:33', '2022-05-28 05:23:29'),
(203, 11, 175, 'IFIC Bank', 'Cash Withdrawal', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 16, 1, 283000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-27 10:25:23', '2022-05-27 16:06:56'),
(204, 11, 176, 'Ashraful Islam', 'Cash Withdrawal', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 15, 407, 0.0000, 283000.0000, 1, 1, 'admin', 1, 0, '2022-05-27 10:25:23', '2022-05-27 16:06:56'),
(205, 2, 2, 'Renata Limited', 'Renamycin Powder 1kg=13pcs', NULL, 'Purchase', '2022-05-26', 'purchases', 10, 129, 2, 7600.3590, 0.0000, 1, 1, 'admin', 1, 1, '2022-05-27 10:55:02', '2022-05-28 06:03:09'),
(206, 2, 2, 'Purchase', 'Renamycin Powder 1kg=13pcs', NULL, 'Purchase', '2022-05-26', 'purchases', 12, 43, 64, 0.0000, 7600.3590, 1, 1, 'admin', 1, 2, '2022-05-27 10:55:02', '2022-05-28 06:03:09'),
(207, 2, 2, 'Purchase', 'Renamycin Powder 1kg=13pcs', NULL, 'Purchase', '2022-05-26', 'purchases', 2, 6, 7, 7600.3590, 0.0000, 1, 1, 'admin', 1, 3, '2022-05-27 10:55:02', '2022-05-28 06:03:09'),
(208, 2, 2, 'Inventory', 'Renamycin Powder 1kg=13pcs', NULL, 'Purchase', '2022-05-26', 'purchases', 10, 129, 2, 0.0000, 7600.3590, 1, 1, 'admin', 1, 4, '2022-05-27 10:55:02', '2022-05-28 06:03:09'),
(209, 2, 1, 'Cash Payment', 'Renamycin Powder 1kg=13pcs', NULL, 'Purchase', '2022-05-26', 'purchase_accounts', 12, 43, 64, 8185.0000, 0.0000, 1, 1, 'admin', 1, 9, '2022-05-27 10:55:02', '2022-05-28 06:03:09'),
(210, 2, 2, 'Cash Payment', 'Renamycin Powder 1kg=13pcs', NULL, 'Purchase', '2022-05-26', 'purchase_accounts', 1, 16, 1, 0.0000, 8185.0000, 1, 1, 'admin', 1, 10, '2022-05-27 10:55:02', '2022-05-28 06:03:09'),
(211, 3, 3, 'ACI Limited', 'Cevac ND IBD K 1000dose=03pcs', NULL, 'Purchase', '2022-05-26', 'purchases', 10, 129, 2, 9900.0000, 0.0000, 1, 1, 'admin', 1, 1, '2022-05-27 11:47:50', '2022-05-28 06:03:57'),
(212, 3, 3, 'Purchase', 'Cevac ND IBD K 1000dose=03pcs', NULL, 'Purchase', '2022-05-26', 'purchases', 12, 43, 73, 0.0000, 9900.0000, 1, 1, 'admin', 1, 2, '2022-05-27 11:47:50', '2022-05-28 06:03:57'),
(213, 3, 3, 'Purchase', 'Cevac ND IBD K 1000dose=03pcs', NULL, 'Purchase', '2022-05-26', 'purchases', 2, 6, 7, 9900.0000, 0.0000, 1, 1, 'admin', 1, 3, '2022-05-27 11:47:50', '2022-05-28 06:03:57'),
(214, 3, 3, 'Inventory', 'Cevac ND IBD K 1000dose=03pcs', NULL, 'Purchase', '2022-05-26', 'purchases', 10, 129, 2, 0.0000, 9900.0000, 1, 1, 'admin', 1, 4, '2022-05-27 11:47:50', '2022-05-28 06:03:57'),
(215, 4, 4, 'Rafique Medicine Bangladesh', 'Flostar 100ml=10pcs', NULL, 'Purchase', '2022-05-26', 'purchases', 10, 129, 2, 7012.5000, 0.0000, 1, 1, 'admin', 1, 1, '2022-05-27 11:52:23', '2022-05-28 06:05:02'),
(216, 4, 4, 'Purchase', 'Flostar 100ml=10pcs', NULL, 'Purchase', '2022-05-26', 'purchases', 12, 43, 83, 0.0000, 7012.5000, 1, 1, 'admin', 1, 2, '2022-05-27 11:52:23', '2022-05-28 06:05:02'),
(217, 4, 4, 'Purchase', 'Flostar 100ml=10pcs', NULL, 'Purchase', '2022-05-26', 'purchases', 2, 6, 7, 7012.5000, 0.0000, 1, 1, 'admin', 1, 3, '2022-05-27 11:52:23', '2022-05-28 06:05:02'),
(218, 4, 4, 'Inventory', 'Flostar 100ml=10pcs', NULL, 'Purchase', '2022-05-26', 'purchases', 10, 129, 2, 0.0000, 7012.5000, 1, 1, 'admin', 1, 4, '2022-05-27 11:52:23', '2022-05-28 06:05:02'),
(219, 5, 5, 'R.R.P Agro Farms', 'Al-Arafat Enterprise:BS=05,BG=20,SS=20,,LL=45.Total=90Bags (4500kg)', NULL, 'Purchase', '2022-05-26', 'purchases', 10, 129, 2, 246052.5000, 0.0000, 1, 1, 'admin', 1, 1, '2022-05-27 11:58:43', '2022-05-28 06:12:09'),
(220, 5, 5, 'Purchase', 'Al-Arafat Enterprise:BS=05,BG=20,SS=20,,LL=45.Total=90Bags (4500kg)', NULL, 'Purchase', '2022-05-26', 'purchases', 12, 43, 65, 0.0000, 246052.5000, 1, 1, 'admin', 1, 2, '2022-05-27 11:58:43', '2022-05-28 06:12:09'),
(221, 5, 5, 'Purchase', 'Al-Arafat Enterprise:BS=05,BG=20,SS=20,,LL=45.Total=90Bags (4500kg)', NULL, 'Purchase', '2022-05-26', 'purchases', 2, 6, 7, 246052.5000, 0.0000, 1, 1, 'admin', 1, 3, '2022-05-27 11:58:43', '2022-05-28 06:12:09'),
(222, 5, 5, 'Inventory', 'Al-Arafat Enterprise:BS=05,BG=20,SS=20,,LL=45.Total=90Bags (4500kg)', NULL, 'Purchase', '2022-05-26', 'purchases', 10, 129, 2, 0.0000, 246052.5000, 1, 1, 'admin', 1, 4, '2022-05-27 11:58:43', '2022-05-28 06:12:09'),
(223, 6, 6, 'R.R.P Agro Farms', 'Chowdhury:BS=45,BG=20,SS=05,SG=15,LL=15.Total=100Bags (5000kg)', NULL, 'Purchase', '2022-05-26', 'purchases', 10, 129, 2, 290277.5000, 0.0000, 1, 1, 'admin', 1, 1, '2022-05-27 12:06:28', '2022-05-28 06:11:07'),
(224, 6, 6, 'Purchase', 'Chowdhury:BS=45,BG=20,SS=05,SG=15,LL=15.Total=100Bags (5000kg)', NULL, 'Purchase', '2022-05-26', 'purchases', 12, 43, 65, 0.0000, 290277.5000, 1, 1, 'admin', 1, 2, '2022-05-27 12:06:28', '2022-05-28 06:11:07'),
(225, 6, 6, 'Purchase', 'Chowdhury:BS=45,BG=20,SS=05,SG=15,LL=15.Total=100Bags (5000kg)', NULL, 'Purchase', '2022-05-26', 'purchases', 2, 6, 7, 290277.5000, 0.0000, 1, 1, 'admin', 1, 3, '2022-05-27 12:06:28', '2022-05-28 06:11:07'),
(226, 6, 6, 'Inventory', 'Chowdhury:BS=45,BG=20,SS=05,SG=15,LL=15.Total=100Bags (5000kg)', NULL, 'Purchase', '2022-05-26', 'purchases', 10, 129, 2, 0.0000, 290277.5000, 1, 1, 'admin', 1, 4, '2022-05-27 12:06:28', '2022-05-28 06:11:07'),
(227, 12, 177, 'Cash Payment', 'Pay cash for receiving labour bill', NULL, 'Account', '2022-05-26', 'voucher_masters', 9, 99, 410, 400.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-27 15:53:39', '2022-05-28 05:26:27'),
(228, 12, 178, 'Cash Payment', 'Pay cash for receiving labour bill', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 16, 1, 0.0000, 400.0000, 1, 1, 'admin', 1, 0, '2022-05-27 15:53:39', '2022-05-28 05:26:27'),
(229, 13, 179, 'Delivery', 'Pay cash for delivery labour bill', NULL, 'Account', '2022-05-26', 'voucher_masters', 9, 99, 410, 65.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-27 16:10:41', '2022-05-28 05:27:24'),
(230, 13, 180, 'Cash Payment', 'Pay cash for delivery labour bill', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 16, 1, 0.0000, 65.0000, 1, 1, 'admin', 1, 0, '2022-05-27 16:10:41', '2022-05-28 05:27:24'),
(231, 14, 181, 'Cash Payment', 'Pay cash to hijra', NULL, 'Account', '2022-05-26', 'voucher_masters', 10, 123, 26, 10.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-27 16:12:24', '2022-05-28 05:28:22'),
(232, 14, 182, 'Cash Payment', 'Pay cash to hijra', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 16, 1, 0.0000, 10.0000, 1, 1, 'admin', 1, 0, '2022-05-27 16:12:24', '2022-05-28 05:28:22'),
(233, 15, 183, 'Cash', 'Pay cash for feed receiving truck fare', NULL, 'Account', '2022-05-26', 'voucher_masters', 15, 138, 388, 1600.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-27 16:14:09', '2022-05-27 16:14:09'),
(234, 15, 184, 'Truck Fare', 'Pay cash for feed receiving truck fare', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 16, 1, 0.0000, 1600.0000, 1, 1, 'admin', 1, 0, '2022-05-27 16:14:09', '2022-05-27 16:14:09'),
(235, 16, 185, 'Cash', 'Pay cash to ACI Limited by delivery van (MR-000)', NULL, 'Account', '2022-05-26', 'voucher_masters', 12, 43, 73, 10000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-27 16:17:05', '2022-05-27 16:17:05'),
(236, 16, 186, 'ACI Limited', 'Pay cash to ACI Limited by delivery van (MR-000)', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 16, 1, 0.0000, 10000.0000, 1, 1, 'admin', 1, 0, '2022-05-27 16:17:05', '2022-05-27 16:17:05'),
(237, 17, 187, 'Cash', 'Pay cash for tea & others', NULL, 'Account', '2022-05-26', 'voucher_masters', 10, 122, 15, 40.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-27 16:18:52', '2022-05-27 16:18:52'),
(238, 17, 188, 'Office Expense', 'Pay cash for tea & others', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 16, 1, 0.0000, 40.0000, 1, 1, 'admin', 1, 0, '2022-05-27 16:18:52', '2022-05-27 16:18:52'),
(239, 18, 189, 'Cash', 'Pay cash for case file fee of Md Rayhan Mia', NULL, 'Account', '2022-05-26', 'voucher_masters', 10, 118, 35, 2000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-27 16:20:59', '2022-05-27 16:20:59'),
(240, 18, 190, 'Case File Fee', 'Pay cash for case file fee of Md Rayhan Mia', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 16, 1, 0.0000, 2000.0000, 1, 1, 'admin', 1, 0, '2022-05-27 16:20:59', '2022-05-27 16:20:59'),
(241, 19, 191, 'Cash', 'Pay cash for case file fee of Md Noab Ali', NULL, 'Account', '2022-05-26', 'voucher_masters', 10, 118, 35, 2000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-27 16:22:37', '2022-05-27 16:22:37'),
(242, 19, 192, 'Case File Fee', 'Pay cash for case file fee of Md Noab Ali', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 16, 1, 0.0000, 2000.0000, 1, 1, 'admin', 1, 0, '2022-05-27 16:22:37', '2022-05-27 16:22:37'),
(243, 20, 193, 'Ashraful Islam', 'Cash Deposit', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 15, 406, 536500.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-27 16:26:35', '2022-05-28 04:59:58'),
(244, 20, 194, 'Al-Arafah Bank', 'Cash Deposit', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 16, 1, 0.0000, 536500.0000, 1, 1, 'admin', 1, 0, '2022-05-27 16:26:35', '2022-05-28 04:59:58'),
(245, 21, 195, 'Shawn', 'Cash Deposit', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 15, 411, 100000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-27 16:34:40', '2022-05-28 05:03:15'),
(246, 21, 196, 'Brac Bank', 'Cash Deposit', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 16, 1, 0.0000, 100000.0000, 1, 1, 'admin', 1, 0, '2022-05-27 16:34:40', '2022-05-28 05:03:15');
INSERT INTO `accounts` (`id`, `_ref_master_id`, `_ref_detail_id`, `_short_narration`, `_narration`, `_reference`, `_transaction`, `_date`, `_table_name`, `_account_head`, `_account_group`, `_account_ledger`, `_dr_amount`, `_cr_amount`, `_branch_id`, `_cost_center`, `_name`, `_status`, `_serial`, `created_at`, `updated_at`) VALUES
(247, 22, 197, 'Cheque No: 9007967', 'R.R.P Agro Farms A/C-0651020017905', NULL, 'Account', '2022-05-26', 'voucher_masters', 12, 43, 65, 536500.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-28 04:56:49', '2022-05-28 04:59:07'),
(248, 22, 198, 'Cheque No: 9007967', 'R.R.P Agro Farms A/C-0651020017905', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 15, 406, 0.0000, 536500.0000, 1, 1, 'admin', 1, 0, '2022-05-28 04:56:49', '2022-05-28 04:59:07'),
(249, 23, 199, 'Debit Instruction', 'Pay loan instalment of April,2022', NULL, 'Account', '2022-05-26', 'voucher_masters', 5, 53, 408, 100000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-28 05:07:24', '2022-05-28 05:07:24'),
(250, 23, 200, 'Debit Instruction', 'Pay loan instalment of April,2022', NULL, 'Account', '2022-05-26', 'voucher_masters', 1, 15, 411, 0.0000, 100000.0000, 1, 1, 'admin', 1, 0, '2022-05-28 05:07:24', '2022-05-28 05:07:24'),
(251, 2, 9, 'Cash Deposit', 'LL=01Bag', NULL, 'Sales', '2022-05-26', 'sales_accounts', 1, 16, 1, 2600.0000, 0.0000, 1, 1, 'admin', 1, 9, '2022-05-28 05:18:38', '2022-05-28 05:18:38'),
(252, 2, 10, 'Cash Deposit', 'LL=01Bag', NULL, 'Sales', '2022-05-26', 'sales_accounts', 13, 1, 280, 0.0000, 2600.0000, 1, 1, 'admin', 1, 10, '2022-05-28 05:18:38', '2022-05-28 05:18:38'),
(253, 1, 11, 'Cash Deposit', 'BS=01Bag & Virocid=01pcs', NULL, 'Sales', '2022-05-26', 'sales_accounts', 1, 16, 1, 3275.0000, 0.0000, 1, 1, 'admin', 1, 9, '2022-05-28 05:23:29', '2022-05-28 05:23:29'),
(254, 1, 12, 'Cash Deposit', 'BS=01Bag & Virocid=01pcs', NULL, 'Sales', '2022-05-26', 'sales_accounts', 13, 1, 121, 0.0000, 3275.0000, 1, 1, 'admin', 1, 10, '2022-05-28 05:23:29', '2022-05-28 05:23:29'),
(255, 3, 13, 'Cash Deposit', 'SS=02Bags', NULL, 'Sales', '2022-05-26', 'sales_accounts', 1, 16, 1, 5400.0000, 0.0000, 1, 1, 'admin', 1, 9, '2022-05-28 05:25:44', '2022-05-28 05:25:44'),
(256, 3, 14, 'Cash Deposit', 'SS=02Bags', NULL, 'Sales', '2022-05-26', 'sales_accounts', 13, 1, 121, 0.0000, 5400.0000, 1, 1, 'admin', 1, 10, '2022-05-28 05:25:44', '2022-05-28 05:25:44'),
(257, 7, 7, 'Walking Supplier', 'Wazed:250p=232.1*260 Van:Roshid', 'Rakib Enterprise', 'Purchase', '2022-05-26', 'purchases', 10, 129, 2, 60346.0000, 0.0000, 1, 1, 'admin', 1, 1, '2022-05-28 05:45:14', '2022-05-28 05:45:14'),
(258, 7, 7, 'Purchase', 'Wazed:250p=232.1*260 Van:Roshid', 'Rakib Enterprise', 'Purchase', '2022-05-26', 'purchases', 12, 43, 108, 0.0000, 60346.0000, 1, 1, 'admin', 1, 2, '2022-05-28 05:45:14', '2022-05-28 05:45:14'),
(259, 7, 7, 'Purchase', 'Wazed:250p=232.1*260 Van:Roshid', 'Rakib Enterprise', 'Purchase', '2022-05-26', 'purchases', 2, 6, 7, 60346.0000, 0.0000, 1, 1, 'admin', 1, 3, '2022-05-28 05:45:14', '2022-05-28 05:45:14'),
(260, 7, 7, 'Inventory', 'Wazed:250p=232.1*260 Van:Roshid', 'Rakib Enterprise', 'Purchase', '2022-05-26', 'purchases', 10, 129, 2, 0.0000, 60346.0000, 1, 1, 'admin', 1, 4, '2022-05-28 05:45:14', '2022-05-28 05:45:14'),
(261, 7, 7, 'Purchase Discount', 'Wazed:250p=232.1*260 Van:Roshid', 'Rakib Enterprise', 'Purchase', '2022-05-26', 'purchases', 12, 43, 108, 46.0000, 0.0000, 1, 1, 'admin', 1, 5, '2022-05-28 05:45:14', '2022-05-28 05:45:14'),
(262, 7, 7, 'Walking Supplier', 'Wazed:250p=232.1*260 Van:Roshid', 'Rakib Enterprise', 'Purchase', '2022-05-26', 'purchases', 11, 96, 6, 46.0000, 0.0000, 1, 1, 'admin', 1, 6, '2022-05-28 05:45:14', '2022-05-28 05:45:14'),
(263, 4, 4, 'Sales', 'Wazed:250p=232.1*265 Van:Roshid', NULL, 'Sales', '2022-05-26', 'sales', 13, 1, 182, 61506.5000, 0.0000, 1, 1, 'admin', 1, 1, '2022-05-28 05:46:59', '2022-05-28 05:46:59'),
(264, 4, 4, 'Mohammad Helal Uddin', 'Wazed:250p=232.1*265 Van:Roshid', NULL, 'Sales', '2022-05-26', 'sales', 8, 85, 4, 0.0000, 61506.5000, 1, 1, 'admin', 1, 2, '2022-05-28 05:46:59', '2022-05-28 05:46:59'),
(265, 4, 4, 'Inventory', 'Wazed:250p=232.1*265 Van:Roshid', NULL, 'Sales', '2022-05-26', 'sales', 9, 140, 50, 60346.0000, 0.0000, 1, 1, 'admin', 1, 3, '2022-05-28 05:46:59', '2022-05-28 05:46:59'),
(266, 4, 4, 'Cost of goods sold', 'Wazed:250p=232.1*265 Van:Roshid', NULL, 'Sales', '2022-05-26', 'sales', 2, 6, 7, 0.0000, 60346.0000, 1, 1, 'admin', 1, 4, '2022-05-28 05:46:59', '2022-05-28 05:46:59'),
(267, 4, 4, 'Mohammad Helal Uddin', 'Wazed:250p=232.1*265 Van:Roshid', NULL, 'Sales', '2022-05-26', 'sales', 10, 142, 8, 6.5000, 0.0000, 1, 1, 'admin', 1, 5, '2022-05-28 05:46:59', '2022-05-28 05:46:59'),
(268, 4, 4, 'Sales Discount', 'Wazed:250p=232.1*265 Van:Roshid', NULL, 'Sales', '2022-05-26', 'sales', 13, 1, 182, 0.0000, 6.5000, 1, 1, 'admin', 1, 6, '2022-05-28 05:46:59', '2022-05-28 05:46:59'),
(269, 5, 5, 'Sales', 'R.R.P(Dhamrai):BS=05,BG=20,SS=20,LL=45.Total=90Bags (4500kg)', NULL, 'Sales', '2022-05-26', 'sales', 13, 1, 240, 246052.5000, 0.0000, 1, 1, 'admin', 1, 1, '2022-05-28 06:16:42', '2022-05-28 06:16:42'),
(270, 5, 5, 'Al Arafat Enterprise (Md Parvez Mia & Md Biplob)', 'R.R.P(Dhamrai):BS=05,BG=20,SS=20,LL=45.Total=90Bags (4500kg)', NULL, 'Sales', '2022-05-26', 'sales', 8, 85, 4, 0.0000, 246052.5000, 1, 1, 'admin', 1, 2, '2022-05-28 06:16:42', '2022-05-28 06:16:42'),
(271, 5, 5, 'Inventory', 'R.R.P(Dhamrai):BS=05,BG=20,SS=20,LL=45.Total=90Bags (4500kg)', NULL, 'Sales', '2022-05-26', 'sales', 9, 140, 50, 246052.5000, 0.0000, 1, 1, 'admin', 1, 3, '2022-05-28 06:16:42', '2022-05-28 06:16:42'),
(272, 5, 5, 'Cost of goods sold', 'R.R.P(Dhamrai):BS=05,BG=20,SS=20,LL=45.Total=90Bags (4500kg)', NULL, 'Sales', '2022-05-26', 'sales', 2, 6, 7, 0.0000, 246052.5000, 1, 1, 'admin', 1, 4, '2022-05-28 06:16:42', '2022-05-28 06:16:42'),
(273, 6, 6, 'Sales', 'BG=10Bags,Renamycin=01pcs & Betaincool=02pcs', NULL, 'Sales', '2022-05-26', 'sales', 13, 1, 285, 32780.0000, 0.0000, 1, 1, 'admin', 1, 1, '2022-05-28 07:00:06', '2022-05-28 07:00:06'),
(274, 6, 6, 'Md Murad Hossain', 'BG=10Bags,Renamycin=01pcs & Betaincool=02pcs', NULL, 'Sales', '2022-05-26', 'sales', 8, 85, 4, 0.0000, 32780.0000, 1, 1, 'admin', 1, 2, '2022-05-28 07:00:06', '2022-05-28 07:00:06'),
(275, 6, 6, 'Inventory', 'BG=10Bags,Renamycin=01pcs & Betaincool=02pcs', NULL, 'Sales', '2022-05-26', 'sales', 9, 140, 50, 29726.0200, 0.0000, 1, 1, 'admin', 1, 3, '2022-05-28 07:00:06', '2022-05-28 07:00:06'),
(276, 6, 6, 'Cost of goods sold', 'BG=10Bags,Renamycin=01pcs & Betaincool=02pcs', NULL, 'Sales', '2022-05-26', 'sales', 2, 6, 7, 0.0000, 29726.0200, 1, 1, 'admin', 1, 4, '2022-05-28 07:00:06', '2022-05-28 07:00:06'),
(277, 7, 7, 'Sales', 'BG=12Bags', NULL, 'Sales', '2022-05-26', 'sales', 13, 1, 272, 38220.0000, 0.0000, 1, 1, 'admin', 1, 1, '2022-05-28 09:13:43', '2022-05-28 09:13:43'),
(278, 7, 7, 'Mohammad Abdul Mannan (Broiler-2)', 'BG=12Bags', NULL, 'Sales', '2022-05-26', 'sales', 8, 85, 4, 0.0000, 38220.0000, 1, 1, 'admin', 1, 2, '2022-05-28 09:13:43', '2022-05-28 09:13:43'),
(279, 7, 7, 'Inventory', 'BG=12Bags', NULL, 'Sales', '2022-05-26', 'sales', 9, 140, 50, 34680.0000, 0.0000, 1, 1, 'admin', 1, 3, '2022-05-28 09:13:43', '2022-05-28 09:13:43'),
(280, 7, 7, 'Cost of goods sold', 'BG=12Bags', NULL, 'Sales', '2022-05-26', 'sales', 2, 6, 7, 0.0000, 34680.0000, 1, 1, 'admin', 1, 4, '2022-05-28 09:13:43', '2022-05-28 09:13:43'),
(281, 8, 8, 'Sales', 'BS=08Bags & Newcastle=01pcs', NULL, 'Sales', '2022-05-26', 'sales', 13, 1, 130, 26030.0000, 0.0000, 1, 1, 'admin', 1, 1, '2022-05-28 09:29:46', '2022-05-28 19:38:36'),
(282, 8, 8, 'Mohammad Monir Hossain (Monu)', 'BS=08Bags & Newcastle=01pcs', NULL, 'Sales', '2022-05-26', 'sales', 8, 85, 4, 0.0000, 26030.0000, 1, 1, 'admin', 1, 2, '2022-05-28 09:29:46', '2022-05-28 19:38:36'),
(283, 8, 8, 'Inventory', 'BS=08Bags & Newcastle=01pcs', NULL, 'Sales', '2022-05-26', 'sales', 9, 140, 50, 23866.0000, 0.0000, 1, 1, 'admin', 1, 3, '2022-05-28 09:29:46', '2022-05-28 19:38:36'),
(284, 8, 8, 'Cost of goods sold', 'BS=08Bags & Newcastle=01pcs', NULL, 'Sales', '2022-05-26', 'sales', 2, 6, 7, 0.0000, 23866.0000, 1, 1, 'admin', 1, 4, '2022-05-28 09:29:46', '2022-05-28 19:38:36'),
(285, 24, 201, 'Cash Received', 'Shahjahan pay to Shawn from his shop', NULL, 'Account', '2022-05-27', 'voucher_masters', 1, 16, 1, 7000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-28 10:15:21', '2022-05-28 10:15:21'),
(286, 24, 202, 'Cash Deposit', 'Shahjahan pay to Shawn from his shop', NULL, 'Account', '2022-05-27', 'voucher_masters', 13, 1, 168, 0.0000, 7000.0000, 1, 1, 'admin', 1, 0, '2022-05-28 10:15:21', '2022-05-28 10:15:21'),
(287, 25, 203, 'Cash Deposit', 'Pay to Niamot Ali Jame Mosque\'s fund for May,2022', NULL, 'Account', '2022-05-27', 'voucher_masters', 15, 138, 387, 5000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-28 10:38:36', '2022-05-28 10:38:36'),
(288, 25, 204, 'Cash Payment', 'Pay to Niamot Ali Jame Mosque\'s fund for May,2022', NULL, 'Account', '2022-05-27', 'voucher_masters', 1, 16, 1, 0.0000, 5000.0000, 1, 1, 'admin', 1, 0, '2022-05-28 10:38:36', '2022-05-28 10:38:36'),
(289, 26, 205, 'Cash Received', 'Ronju pay to Shawn from his shop', NULL, 'Account', '2022-05-27', 'voucher_masters', 1, 16, 1, 5400.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-28 10:40:07', '2022-05-28 11:57:33'),
(290, 26, 206, 'Cash Deposit', 'Ronju pay to Shawn from his shop', NULL, 'Account', '2022-05-27', 'voucher_masters', 13, 1, 167, 0.0000, 5400.0000, 1, 1, 'admin', 1, 0, '2022-05-28 10:40:07', '2022-05-28 11:57:33'),
(291, 27, 207, 'Cash Received', 'Helal pay to Shawn from his shop', NULL, 'Account', '2022-05-27', 'voucher_masters', 1, 16, 1, 8000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-28 10:43:16', '2022-05-28 10:43:16'),
(292, 27, 208, 'Cash Deposit', 'Helal pay to Shawn from his shop', NULL, 'Account', '2022-05-27', 'voucher_masters', 13, 1, 182, 0.0000, 8000.0000, 1, 1, 'admin', 1, 0, '2022-05-28 10:43:16', '2022-05-28 10:43:16'),
(293, 28, 209, 'Cash Received', 'Yousuf pay to Shawn from his shop', NULL, 'Account', '2022-05-27', 'voucher_masters', 1, 16, 1, 5000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-28 10:44:29', '2022-05-28 10:44:29'),
(294, 28, 210, 'Cash Deposit', 'Yousuf pay to Shawn from his shop', NULL, 'Account', '2022-05-27', 'voucher_masters', 13, 1, 166, 0.0000, 5000.0000, 1, 1, 'admin', 1, 0, '2022-05-28 10:44:29', '2022-05-28 10:44:29'),
(295, 29, 211, 'Cash Received', 'Shahjahan pay to Shawn from his shop', NULL, 'Account', '2022-05-28', 'voucher_masters', 1, 16, 1, 8000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-28 16:07:58', '2022-05-28 16:07:58'),
(296, 29, 212, 'Cash Deposit', 'Shahjahan pay to Shawn from his shop', NULL, 'Account', '2022-05-28', 'voucher_masters', 13, 1, 168, 0.0000, 8000.0000, 1, 1, 'admin', 1, 0, '2022-05-28 16:07:58', '2022-05-28 16:07:58'),
(297, 9, 9, 'Sales', 'BG=01Bag', NULL, 'Sales', '2022-05-28', 'sales', 13, 1, 121, 3185.0000, 0.0000, 1, 1, 'admin', 1, 1, '2022-05-28 16:14:29', '2022-05-28 18:54:37'),
(298, 9, 9, 'Walking Customer', 'BG=01Bag', NULL, 'Sales', '2022-05-28', 'sales', 8, 85, 4, 0.0000, 3185.0000, 1, 1, 'admin', 1, 2, '2022-05-28 16:14:29', '2022-05-28 18:54:37'),
(299, 9, 9, 'Inventory', 'BG=01Bag', NULL, 'Sales', '2022-05-28', 'sales', 9, 140, 50, 2890.0000, 0.0000, 1, 1, 'admin', 1, 3, '2022-05-28 16:14:29', '2022-05-28 18:54:37'),
(300, 9, 9, 'Cost of goods sold', 'BG=01Bag', NULL, 'Sales', '2022-05-28', 'sales', 2, 6, 7, 0.0000, 2890.0000, 1, 1, 'admin', 1, 4, '2022-05-28 16:14:29', '2022-05-28 18:54:37'),
(301, 9, 9, 'Walking Customer', 'BG=01Bag', NULL, 'Sales', '2022-05-28', 'sales', 10, 142, 8, 90.0000, 0.0000, 1, 1, 'admin', 1, 5, '2022-05-28 16:14:29', '2022-05-28 18:54:37'),
(302, 9, 9, 'Sales Discount', 'BG=01Bag', NULL, 'Sales', '2022-05-28', 'sales', 13, 1, 121, 0.0000, 90.0000, 1, 1, 'admin', 1, 6, '2022-05-28 16:14:29', '2022-05-28 18:54:37'),
(303, 9, 15, 'Cash Sales', 'BG=01Bag', NULL, 'Sales', '2022-05-28', 'sales_accounts', 1, 16, 1, 3095.0000, 0.0000, 1, 1, 'admin', 0, 9, '2022-05-28 16:14:29', '2022-05-28 18:54:37'),
(304, 9, 16, 'Cash Deposit', 'BG=01Bag', NULL, 'Sales', '2022-05-28', 'sales_accounts', 13, 1, 121, 0.0000, 3095.0000, 1, 1, 'admin', 0, 10, '2022-05-28 16:14:29', '2022-05-28 18:54:37'),
(305, 30, 213, 'MR-87941', 'Pay to Elanco Bangladesh Limited by delivery van', NULL, 'Account', '2022-05-28', 'voucher_masters', 12, 43, 74, 12000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-28 16:19:35', '2022-05-28 16:19:35'),
(306, 30, 214, 'Cash Payment', 'Pay to Elanco Bangladesh Limited by delivery van', NULL, 'Account', '2022-05-28', 'voucher_masters', 1, 16, 1, 0.0000, 12000.0000, 1, 1, 'admin', 1, 0, '2022-05-28 16:19:35', '2022-05-28 16:19:35'),
(307, 8, 8, 'Renata Limited', 'Coxicure 100gm=16pcs', NULL, 'Purchase', '2022-05-28', 'purchases', 10, 129, 2, 2575.0000, 0.0000, 1, 1, 'admin', 1, 1, '2022-05-28 16:25:59', '2022-05-28 16:25:59'),
(308, 8, 8, 'Purchase', 'Coxicure 100gm=16pcs', NULL, 'Purchase', '2022-05-28', 'purchases', 12, 43, 64, 0.0000, 2575.0000, 1, 1, 'admin', 1, 2, '2022-05-28 16:25:59', '2022-05-28 16:25:59'),
(309, 8, 8, 'Purchase', 'Coxicure 100gm=16pcs', NULL, 'Purchase', '2022-05-28', 'purchases', 2, 6, 7, 2575.0000, 0.0000, 1, 1, 'admin', 1, 3, '2022-05-28 16:25:59', '2022-05-28 16:25:59'),
(310, 8, 8, 'Inventory', 'Coxicure 100gm=16pcs', NULL, 'Purchase', '2022-05-28', 'purchases', 10, 129, 2, 0.0000, 2575.0000, 1, 1, 'admin', 1, 4, '2022-05-28 16:25:59', '2022-05-28 16:25:59'),
(311, 8, 3, 'Cash Receive', 'Coxicure 100gm=16pcs', NULL, 'Purchase', '2022-05-28', 'purchase_accounts', 12, 43, 64, 2575.0000, 0.0000, 1, 1, 'admin', 1, 9, '2022-05-28 16:25:59', '2022-05-28 16:25:59'),
(312, 8, 4, 'Cash Payment', 'Coxicure 100gm=16pcs', NULL, 'Purchase', '2022-05-28', 'purchase_accounts', 1, 16, 1, 0.0000, 2575.0000, 1, 1, 'admin', 1, 10, '2022-05-28 16:25:59', '2022-05-28 16:25:59'),
(313, 31, 215, 'Cash Received', 'Pay to Nahid Hasan Sajal from office', NULL, 'Account', '2022-05-28', 'voucher_masters', 13, 1, 234, 15000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-28 16:30:50', '2022-05-28 16:30:50'),
(314, 31, 216, 'Cash Payment', 'Pay to Nahid Hasan Sajal from office', NULL, 'Account', '2022-05-28', 'voucher_masters', 1, 16, 1, 0.0000, 15000.0000, 1, 1, 'admin', 1, 0, '2022-05-28 16:30:50', '2022-05-28 16:30:50'),
(315, 32, 217, 'Cash Received', 'Pay delivery labour bill', NULL, 'Account', '2022-05-28', 'voucher_masters', 9, 102, 412, 140.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-28 16:39:40', '2022-05-28 16:39:40'),
(316, 32, 218, 'Cash Payment', 'Pay delivery labour bill', NULL, 'Account', '2022-05-28', 'voucher_masters', 1, 16, 1, 0.0000, 140.0000, 1, 1, 'admin', 1, 0, '2022-05-28 16:39:40', '2022-05-28 16:39:40'),
(317, 33, 219, 'Cash Received', 'Pay tea & others bill', NULL, 'Account', '2022-05-28', 'voucher_masters', 10, 122, 15, 70.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-05-28 16:43:28', '2022-05-28 16:43:28'),
(318, 33, 220, 'Cash Payment', 'Pay tea & others bill', NULL, 'Account', '2022-05-28', 'voucher_masters', 1, 16, 1, 0.0000, 70.0000, 1, 1, 'admin', 1, 0, '2022-05-28 16:43:28', '2022-05-28 16:43:28'),
(319, 9, 17, 'Cash Sales', 'BG=01Bag', NULL, 'Sales', '2022-05-28', 'sales_accounts', 1, 16, 1, 3095.0000, 0.0000, 1, 1, 'admin', 1, 9, '2022-05-28 18:54:37', '2022-05-28 18:54:37'),
(320, 9, 18, 'Cash Deposit', 'BG=01Bag', NULL, 'Sales', '2022-05-28', 'sales_accounts', 13, 1, 121, 0.0000, 3095.0000, 1, 1, 'admin', 1, 10, '2022-05-28 18:54:37', '2022-05-28 18:54:37'),
(325, 10, 10, 'Agrovet Pharma', 'p', NULL, 'Purchase', '2022-05-29', 'purchases', 10, 129, 2, 10.0000, 0.0000, 1, 1, 'admin', 1, 1, '2022-05-29 05:05:03', '2022-05-29 05:05:03'),
(326, 10, 10, 'Purchase', 'p', NULL, 'Purchase', '2022-05-29', 'purchases', 12, 43, 75, 0.0000, 10.0000, 1, 1, 'admin', 1, 2, '2022-05-29 05:05:03', '2022-05-29 05:05:03'),
(327, 10, 10, 'Purchase', 'p', NULL, 'Purchase', '2022-05-29', 'purchases', 2, 6, 7, 10.0000, 0.0000, 1, 1, 'admin', 1, 3, '2022-05-29 05:05:03', '2022-05-29 05:05:03'),
(328, 10, 10, 'Inventory', 'p', NULL, 'Purchase', '2022-05-29', 'purchases', 10, 129, 2, 0.0000, 10.0000, 1, 1, 'admin', 1, 4, '2022-05-29 05:05:03', '2022-05-29 05:05:03'),
(329, 11, 11, 'Agrovet Pharma', 'p', NULL, 'Purchase', '2022-05-29', 'purchases', 10, 129, 2, 10.0000, 0.0000, 1, 1, 'admin', 1, 1, '2022-05-29 05:05:38', '2022-05-29 05:05:38'),
(330, 11, 11, 'Purchase', 'p', NULL, 'Purchase', '2022-05-29', 'purchases', 12, 43, 75, 0.0000, 10.0000, 1, 1, 'admin', 1, 2, '2022-05-29 05:05:39', '2022-05-29 05:05:39'),
(331, 11, 11, 'Purchase', 'p', NULL, 'Purchase', '2022-05-29', 'purchases', 2, 6, 7, 10.0000, 0.0000, 1, 1, 'admin', 1, 3, '2022-05-29 05:05:39', '2022-05-29 05:05:39'),
(332, 11, 11, 'Inventory', 'p', NULL, 'Purchase', '2022-05-29', 'purchases', 10, 129, 2, 0.0000, 10.0000, 1, 1, 'admin', 1, 4, '2022-05-29 05:05:39', '2022-05-29 05:05:39'),
(333, 1, 1, 'Sales Return', 'sa', NULL, 'Sales Return', '2022-05-29', 'sales_return', 13, 1, 280, 0.0000, 2590.0000, 1, 1, 'admin', 0, 1, '2022-05-29 05:45:16', '2022-05-29 05:45:29'),
(334, 1, 1, 'Nana-Nati (Quel)', 'sa', NULL, 'Sales Return', '2022-05-29', 'sales_return', 8, 85, 5, 2590.0000, 0.0000, 1, 1, 'admin', 0, 2, '2022-05-29 05:45:16', '2022-05-29 05:45:29'),
(335, 1, 1, 'Inventory', 'sa', NULL, 'Sales Return', '2022-05-29', 'sales_return', 9, 140, 50, 0.0000, 2472.5000, 1, 1, 'admin', 0, 3, '2022-05-29 05:45:16', '2022-05-29 05:45:29'),
(336, 1, 1, 'Cost of goods sold', 'sa', NULL, 'Sales Return', '2022-05-29', 'sales_return', 2, 6, 7, 2472.5000, 0.0000, 1, 1, 'admin', 0, 4, '2022-05-29 05:45:16', '2022-05-29 05:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `account_details`
--

CREATE TABLE `account_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `ad_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_code_manual` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'manual code input by user which connected other software',
  `parent_id` int(11) DEFAULT NULL,
  `ad_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ledger_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ledger_nid_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_al2_id` bigint(20) DEFAULT NULL,
  `ad_code_id` bigint(20) DEFAULT NULL,
  `ad_flag` bigint(20) DEFAULT NULL,
  `is_receive_account` bigint(20) NOT NULL DEFAULT 0 COMMENT 'not receveable =0,receveable=1',
  `ad_mem_flg` bigint(20) DEFAULT NULL,
  `ad_ref_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_ref_cell_no` bigint(20) DEFAULT NULL,
  `ad_delivery_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_credit_limit` bigint(20) DEFAULT NULL,
  `ad_cust_type` bigint(20) NOT NULL DEFAULT 0 COMMENT 'credit=0,cash=1,cash/credit=2',
  `ad_td_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_mm_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_cust_code` bigint(20) DEFAULT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `ad_target_qty` bigint(20) DEFAULT NULL,
  `ad_bin_nid_no` bigint(20) DEFAULT NULL,
  `ad_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_nbr_list_type` int(11) NOT NULL DEFAULT 1 COMMENT 'type check by nbr list 1=register,2=non-register,3=listed',
  `ad_eff_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'created action by an user',
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'updated action by an user',
  `permited_user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'permited user id ',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'status 1 for active 0 for inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_details`
--

INSERT INTO `account_details` (`id`, `ad_id`, `ad_code`, `ad_code_manual`, `parent_id`, `ad_name`, `name`, `address`, `phone`, `description`, `ad_address`, `ledger_image`, `ledger_nid_image`, `_note`, `ad_al2_id`, `ad_code_id`, `ad_flag`, `is_receive_account`, `ad_mem_flg`, `ad_ref_name`, `ad_ref_cell_no`, `ad_delivery_address`, `ad_credit_limit`, `ad_cust_type`, `ad_td_id`, `ad_mm_id`, `ad_cust_code`, `branch_id`, `ad_target_qty`, `ad_bin_nid_no`, `ad_email`, `ad_nbr_list_type`, `ad_eff_date`, `created_by`, `updated_by`, `permited_user`, `status`, `created_at`, `updated_at`) VALUES
(0, NULL, '1001', NULL, NULL, 'Opening Inventory Adjustment', 'Opening Inventory Adjustment', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'N/A', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2022-01-23 21:33:28'),
(1, NULL, '1001', NULL, NULL, 'Cash and cash equivalents', 'Cash and cash equivalents', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 13, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-01-01 13:26:13', '2021-01-01 13:26:13'),
(2, NULL, '1002', NULL, NULL, 'Cash on Hand', 'Cash on Hand', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, '', 14, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-01-01 13:26:59', '2022-03-20 14:14:08'),
(3, NULL, '1003', NULL, NULL, 'Bank', 'Bank', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 13, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-01-01 13:27:51', '2021-01-01 13:27:51'),
(4, NULL, '1003', NULL, NULL, 'Client trust account', 'Client trust account', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 15, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-01-01 13:28:26', '2021-01-01 13:28:26'),
(5, NULL, '1004', NULL, NULL, 'Cost of Goods Sold - COS', 'Cost of Goods Sold - COS', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 86, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-01-01 13:37:25', '2021-01-01 13:37:25'),
(6, NULL, '1005', NULL, NULL, 'Inventory', 'Inventory', 'N/A', 'M/A', NULL, 'N/A', NULL, NULL, NULL, 6, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-01-01 13:38:15', '2021-01-01 13:38:15'),
(7, NULL, '1006', NULL, NULL, 'Opening Adjustment Account', 'Opening Adjustment Account', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 122, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-01-01 13:41:53', '2021-01-01 13:41:53'),
(8, NULL, '1007', NULL, NULL, 'Sales', 'Sales', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 68, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-01-01 13:44:17', '2021-01-01 13:44:17'),
(9, NULL, '1008', NULL, NULL, 'Sales Discount', 'Sales Discount', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'Sales time\'s given discount to party', 123, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-01-01 13:54:19', '2022-01-23 21:03:15'),
(10, NULL, '1009', NULL, NULL, 'Vat Payable', 'Vat Payable', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 124, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-01-01 13:57:51', '2021-01-01 13:57:51'),
(11, NULL, '1010', NULL, NULL, 'Vat Expense', 'Vat Expense', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 125, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-01-01 13:58:28', '2021-01-01 13:58:28'),
(12, NULL, '1011', NULL, NULL, 'Walking Customer', 'Walking Customer', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-01-01 14:03:12', '2021-01-01 14:03:12'),
(13, NULL, 'OD-012', NULL, NULL, 'Manikganj Poultry Feed (Md Ayub Ali)', 'Manikganj Poultry Feed (Md Ayub Ali)', 'Horali Manson,Bus Stand,Manikganj.', '+8801748918975', NULL, 'Horali Manson,Bus Stand,Manikganj.', NULL, NULL, 'Quality Feed Limited', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-01-01 14:04:38', '2022-02-19 17:45:16'),
(14, NULL, '5001', NULL, NULL, 'Vat input Account', 'Vat input Account', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 126, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-01-03 19:31:55', '2021-01-03 19:31:55'),
(15, NULL, '2001', NULL, NULL, 'Sales Return', 'Sales Return', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 68, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-01-13 19:25:51', '2021-01-13 19:25:51'),
(16, NULL, '4001', NULL, NULL, 'Purchase Discount', 'Purchase Discount', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'Purchase time\'s discount gain from party', 79, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-01-15 13:38:10', '2022-01-23 21:00:03'),
(17, NULL, 'AR-009', NULL, NULL, 'MR, XZ', 'MR, XZ', 'dhA2A', 'N//17/999/718', NULL, 'dhA2A', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '2021-03-27 00:42:47', '2021-06-10 17:00:29'),
(18, NULL, '01', NULL, NULL, 'Cp Company', 'Cp Company', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '2021-06-01 18:36:06', '2021-06-10 16:55:11'),
(19, NULL, '02', NULL, NULL, 'AMan Feed Company', 'AMan Feed Company', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '2021-06-01 18:36:45', '2021-06-01 20:28:19'),
(20, NULL, '3', NULL, NULL, 'Atapatu', 'Atapatu', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '2021-06-01 18:37:17', '2021-06-01 20:28:02'),
(21, NULL, '4', NULL, NULL, 'Ranatunga', 'Ranatunga', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '2021-06-01 18:37:51', '2021-06-10 16:54:41'),
(22, NULL, 'MC-003', NULL, NULL, 'Renata Limited', 'Renata Limited', 'Mirpur,Dhaka,Bangladesh.', '+8801847128233', NULL, 'Mirpur,Dhaka,Bangladesh.', NULL, NULL, 'Business Terms: Cash\r\nYearly Target: 3,00,000 Taka\r\nCash Commission: 2.5%\r\nYearly Commission: 2%\r\nAgreement with Md Sujon Hossain(MO)', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-01 18:39:24', '2022-01-23 21:30:43'),
(23, NULL, 'FC-001', NULL, NULL, 'R.R.P Agro Farms', 'R.R.P Agro Farms', 'RRP Garden,B-15/1,Shimultola,Jaleshwor,Savar,Dhaka.', '+8801708417641', NULL, 'RRP Garden,B-15/1,Shimultola,Jaleshwor,Savar,Dhaka.', NULL, NULL, 'Business Terms: Credit\r\nCredit Limit: 50,00,000 Taka\r\nYearly Target: 1,008 Tons\r\nYearly Commission: 3,150 Taka Per Ton\r\nAgreement with Company', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-01 18:40:15', '2022-01-23 21:27:33'),
(24, NULL, '102', NULL, NULL, 'Unkonwn Company', 'Unkonwn Company', 'Mirpur,Dhaka,Bangladesh.', '+8801847128233', NULL, NULL, NULL, NULL, NULL, 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, '2021-06-10 16:54:04'),
(26, NULL, 'HC-001', NULL, NULL, 'Kazi Farms Limited (CC-Mani032)', 'Kazi Farms Limited (CC-Mani032)', 'Dhaka,Bangladesh.', '+8801714071395', NULL, 'Dhaka,Bangladesh.', NULL, NULL, '01-25 Taka:\r\nSame Day Deposit: 0.25 taka per piece\r\nAdvance Deposit: 0.25 taka per piece\r\n26-50 Taka:\r\nSame Day Deposit: 0.50 taka per piece\r\nAdvance Deposit: 0.50 taka per piece\r\n51-60 Taka:\r\nSame Day Deposit: 0.75 taka per piece\r\nAdvance Deposit: 0.75 taka per piece\r\n60+ Taka:\r\nSame Day Deposit: 1.00 taka per piece\r\nAdvance Deposit: 1.00 taka per piece\r\nSelected Bank: IBBL & AIBL', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2022-04-09 14:09:14'),
(27, NULL, 'HC-002', NULL, NULL, 'R.R.P Breeder Farms', 'R.R.P Breeder Farms', 'Ishwardi,Pabna,Bangladesh.', '+8801708417641', NULL, 'Ishwardi,Pabna,Bangladesh.', NULL, NULL, 'Cash Commission: 1.0 taka per piece\r\nSelected Bank: AIBL & IBBL', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2022-01-26 12:30:40'),
(28, NULL, 'HC-004', NULL, NULL, 'Solid Hacharies Limited', 'Solid Hacharies Limited', 'Gazipur,Bangladesh.', '+8801704173707', NULL, 'Gazipur,Bangladesh.', NULL, NULL, 'N/A', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2022-01-26 12:28:17'),
(29, NULL, 'HC-005', NULL, NULL, 'Paragon Poultry Limited (CC-100434)', 'Paragon Poultry Limited (CC-100434)', 'Jamgora,Ashulia,Savar,Dhaka.', '+8801313034413', NULL, 'Jamgora,Ashulia,Savar,Dhaka.', NULL, NULL, '25+ Taka:\r\nSame Day Deposit: 0.50 taka per piece\r\nAdvance Deposit: 1.00 taka per piece\r\n26-50 Taka:\r\nSame Day Deposit: 0.50 taka per piece\r\nAdvance Deposit: 0.50 taka per piece\r\n50-59 Taka:\r\nSame Day Deposit: 0.75 taka per piece\r\nAdvance Deposit: 1.50 taka per piece\r\n60-60+ Taka:\r\nSame Day Deposit: 1.00 taka per piece\r\nAdvance Deposit: 2.00 taka per piece\r\nSelected Bank: IBBL & MBL', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2022-04-09 14:13:28'),
(30, NULL, 'FC-002', NULL, NULL, 'New Hope Feed Mill BD Ltd.', 'New Hope Feed Mill BD Ltd.', 'Gazipur,Bangladesh.', '+8801722759848', NULL, 'Gazipur,Bangladesh.', NULL, NULL, 'Business Terms: Cash (Bank Grantee)\r\nCredit Limit: 15,00,000 Taka\r\nYearly Target: 600 Tons\r\nMonthly Commission: \r\nYearly Commission: \r\nExtra Commission: 1000 Taka Per Ton\r\nAgreement with Company', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2022-01-23 21:16:46'),
(31, NULL, 'HC-003', NULL, NULL, 'New Hope Farms BD Ltd.', 'New Hope Farms BD Ltd.', 'Gazipur,Bangladesh.', '+8801704979898', NULL, 'Gazipur,Bangladesh.', NULL, NULL, 'N/A', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2022-01-26 12:32:11'),
(32, NULL, 'MC-002', NULL, NULL, 'ACI Limited', 'ACI Limited', 'Dhaka,Bangladesh.', '+8801723173187', NULL, 'Dhaka,Bangladesh.', '19f716908e6c3e085b7ec8036b76054f.jpeg', '5005809601649009141.jpeg', 'Business Terms: Credit\r\nYearly Target: 3,00,000 Taka\r\nYearly Commission: 5%\r\nAgreement with Md Mahabubur Rahaman(MO)', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2022-04-04 00:05:41'),
(33, NULL, 'MC-004', NULL, NULL, 'Elanco Bangladesh Limited', 'Elanco Bangladesh Limited', 'Dhaka,Bangladesh.', '+8801713241669', NULL, 'Dhaka,Bangladesh.', NULL, NULL, 'Business Terms: Credit\r\nYearly Target: 5,00,000 Taka\r\nYearly Commission: 3%\r\nAgreement with Md Arifur Rahaman(MO)', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2022-01-23 21:14:11'),
(34, NULL, 'MC-006', NULL, NULL, 'Agrovet Pharma', 'Agrovet Pharma', 'Dhaka,Bangladesh.', '+8801914242832', NULL, 'Dhaka,Bangladesh.', NULL, NULL, 'Business Terms: Cash\r\nYearly Target: 3,00,000 Taka\r\nCash Commission: Product Wise\r\nYearly Commission: 5%\r\nAgreement with Md Ashraful Islam(AAM)', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2022-01-23 21:39:02'),
(35, NULL, 'MC-005', NULL, NULL, 'Pharma & Firm', 'Pharma & Firm', 'Dhaka,Bangladesh.', '+8801970010912,+8801718000489', NULL, 'Dhaka,Bangladesh.', NULL, NULL, 'Business Terms: Credit\r\nYearly Target: 3,00,000 Taka\r\nYearly Commission: 6%\r\nAgreement with Md Sahid Hasan(MO)', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-08-15 21:54:58'),
(36, NULL, 'MC-010', NULL, NULL, 'FnF Pharmaceuticals', 'FnF Pharmaceuticals', 'Dhaka,Bangladesh.', '+8801711150175', NULL, 'Dhaka,Bangladesh.', NULL, NULL, 'Business Terms: Cash\r\nYearly Target: N/A\r\nInstant Commission: Flat\r\nAgreement with Rakibul Alam(MO)', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-08-15 21:49:10'),
(37, NULL, 'MC-007', NULL, NULL, 'Avansis Bangladesh', 'Avansis Bangladesh', 'Manikganj,Dhaka,Bangladesh.', '+8801718964622', NULL, 'Manikganj,Dhaka,Bangladesh.', NULL, NULL, 'Business Terms: Credit\r\nYearly Target: N/A\r\nYearly Commission: 15%\r\nAgreement with Mynul Islam Manik(MD)', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-08-15 21:45:31'),
(38, NULL, 'MC-008', NULL, NULL, 'Avesta Agrovet', 'Avesta Agrovet', 'Dhaka,Bangladesh.', '+8801799395192', NULL, 'Dhaka,Bangladesh.', NULL, NULL, 'Business Terms: Cash\r\nYearly Target: N/A\r\nCash Commission: 20%\r\nAgreement with Md Abdur Rouf Sujon', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2022-01-23 21:41:17'),
(39, NULL, 'MC-011', NULL, NULL, 'Impex Marketing Limited', 'Impex Marketing Limited', 'Dhaka,Bangladesh.', '+8801777761411', NULL, 'Dhaka,Bangladesh.', NULL, NULL, 'Business Terms: Cash\r\nYearly Target: N/A\r\nInstant Commission: 10%\r\nAgreement with Abu Salem(MO)', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-08-15 21:50:12'),
(40, NULL, 'MC-009', NULL, NULL, 'Eon Animal Health Products Ltd.', 'Eon Animal Health Products Ltd.', 'Gazipur,Bangladesh.', '+8801713249403', NULL, 'Gazipur,Bangladesh.', NULL, NULL, 'Business Terms: Cash\r\nYearly Target: N/A\r\nInstant Commission: Flat\r\nAgreement with Masum Khan(AM)', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-08-15 21:48:21'),
(42, NULL, 'BF-005', NULL, NULL, 'Mohammad Subel Mia', 'Mohammad Subel Mia', 'Sadinagor,Painjonkhara,Garpara,Manikganj.', '+8801747888113', NULL, 'Sadinagor,Painjonkhara,Garpara,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-10 01:12:52'),
(48, NULL, 'BF-001', NULL, NULL, 'Md Abdul Alim', 'Md Abdul Alim', 'Chor Ghosta,Putail,Manikganj.', '+8801686144842, +8801787011075', NULL, 'Chor Ghosta,Putail,Manikganj.', 'afee307b91716d11e7262a019321df7a.jpeg', '3805227591634192730.jpeg', '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-10-14 17:25:30'),
(61, NULL, 'BF-020', NULL, NULL, 'Nana-Nati Agro', 'Nana-Nati Agro', 'Madrasa Mor,Garpara,Manikganj.', '+8801777371443, +8801767648378', NULL, 'Madrasa Mor,Garpara,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-10 03:49:04'),
(100, NULL, '188', NULL, NULL, 'Opening Stock', 'Opening Stock', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'N/A', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2022-01-23 21:31:51'),
(151, NULL, '102', NULL, NULL, 'Mohammad Nowab Ali', 'Mohammad Nowab Ali', 'Bewtha,Manikganj.', '+8801726530078', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, '2021-06-10 17:21:51'),
(152, NULL, '103', NULL, NULL, 'Mahbubul Hossain Polash 2', 'Mahbubul Hossain Polash 2', 'Vill:Painjonkhara,UP:Garpara,PS:Manikganj,Dis:Manikganj.', '+8801700829677', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, '2021-06-10 18:49:48'),
(154, NULL, 'BF-002', NULL, NULL, 'Md Robin Hossain', 'Md Robin Hossain', 'Koyra,Shushunda,Dighi,Manikganj.', '+8801714482059, +8801639216356', NULL, 'Koyra,Shushunda,Dighi,Manikganj.', '0d425a687198b1f640db4b00bebe0681.jpeg', '3436346251633244394.jpeg', 'Bank Name:Agrani Bank Limited\r\nAccount Name:Md Robin Hossain\r\nAccount No:0200013865882\r\nCheque No:6281672 & 6281673\r\nCheque Amount:0,00,000 Taka', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-10-03 17:59:54'),
(155, NULL, 'BF-003', NULL, NULL, 'Sushil Kumar Ghosh', 'Sushil Kumar Ghosh', '621,East Dashora,Manikganj.', '+8801775247014', NULL, '621,East Dashora,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-09 16:57:36'),
(156, NULL, 'BF-026', NULL, NULL, 'Mohammad Monir Hossain (Monu)', 'Mohammad Monir Hossain (Monu)', 'Chor Ghosta,Putail,Manikganj.', '+8801767709899, +8801638306448', NULL, 'Chor Ghosta,Putail,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-10 17:23:54'),
(157, NULL, 'BF-004', NULL, NULL, 'Akkas Ali (Broiler-1)', 'Akkas Ali (Broiler-1)', 'Sorupai,Naboggram,Manikganj.', '+8801953694279, +8801323150051', NULL, 'Sorupai,Naboggram,Manikganj.', 'ddd60b4a6a558df59b75981435c1d10a.jpeg', '17268860301640843733.jpeg', 'Broiler Farmer', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-12-30 17:55:33'),
(158, NULL, 'BF-007', NULL, NULL, 'Mohammad Abdul Kader', 'Mohammad Abdul Kader', 'Tewta,Shibalaya,Manikganj.', '+8801747853183, +8801744169123', NULL, 'Tewta,Shibalaya,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-09 17:23:28'),
(160, NULL, 'BF-008', NULL, NULL, 'Mohammad Rubel Ahammed', 'Mohammad Rubel Ahammed', 'Moddhokhalpadhoa,Garpara,Manikganj.', '+8801710123474, +8801788781670, +8801624076774', NULL, 'Moddhokhalpadhoa,Garpara,Manikganj.', NULL, NULL, 'Broiler Farmer', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-12-30 00:34:44'),
(161, NULL, 'BF-009', NULL, NULL, 'Mohammad Shamim Ahammed', 'Mohammad Shamim Ahammed', 'Koyra,Shushunda,Dighi,Manikganj.', '+8801735718923, +8801792505334', NULL, 'Koyra,Shushunda,Dighi,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-09 17:32:40'),
(162, NULL, 'BF-010', NULL, NULL, 'Mohammad Aowlad Hossain', 'Mohammad Aowlad Hossain', 'Bengrui,Naboggram,Manikganj.', '+8801706063373, +8801743883709, +8801641129134', NULL, 'Bengrui,Naboggram,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-09 17:37:45'),
(163, NULL, 'BF-011', NULL, NULL, 'Mohammad Milon Uddin', 'Mohammad Milon Uddin', 'Vatbaur,Shushunda,Dighi,Manikganj.', '+8801621903088', NULL, 'Vatbaur,Shushunda,Dighi,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-09 17:40:58'),
(164, NULL, 'BF-012', NULL, NULL, 'Mohammad Rayhan Biswash (Broiler-1)', 'Mohammad Rayhan Biswash (Broiler-1)', 'Dokhkhin Uthuli,Garpara,Manikganj.', '+8801787395736, +8801735108734', NULL, 'Dokhkhin Uthuli,Garpara,Manikganj.', '816449219851cfe6aea9d9c5f13ec5fe.jpeg', NULL, '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-09-27 23:03:49'),
(165, NULL, 'BF-013', NULL, NULL, 'Mohammad Selim Mia', 'Mohammad Selim Mia', 'Koyra,Shushunda,Dighi,Manikganj.', '+8801797294895', NULL, 'Koyra,Shushunda,Dighi,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-09 17:59:29'),
(166, NULL, 'BF-014', NULL, NULL, 'Mohammad Mominur Rahaman Ripok', 'Mohammad Mominur Rahaman Ripok', 'Sadinagor,Painjonkhara,Garpara.Manikganj.', '+8801683966358', NULL, 'Sadinagor,Painjonkhara,Garpara.Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-09 18:01:38'),
(167, NULL, 'BF-015', NULL, NULL, 'Mohammad Milon Mia/Shamim', 'Mohammad Milon Mia/Shamim', 'Chor Ghosta,Putail,Manikganj.', '+8801742370920, +8801792557983', NULL, 'Chor Ghosta,Putail,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-09 18:05:15'),
(168, NULL, 'BF-016', NULL, NULL, 'Mohammad Shahriar Nadim Rabbi', 'Mohammad Shahriar Nadim Rabbi', 'Rouhadoho,Shushunda,Dighi,Manikganj.', '+8801618501090', NULL, 'Rouhadoho,Shushunda,Dighi,Manikganj.', NULL, NULL, 'Bank Name:Agrani Bank Limited\r\nAccount Name:Md Shahriar Nadim Rabbi\r\nAccount No:0200005477531\r\nCheque No:0541165\r\nCheque Amount:0,00,000 Taka', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-09-29 19:32:17'),
(169, NULL, 'BF-017', NULL, NULL, 'Mohammad Faruq Hasan/ Md Mizan', 'Mohammad Faruq Hasan/ Md Mizan', 'Modhdhokhalpadhoa,Garpara,Manikganj.', '+8801727020922, +8801679292829', NULL, 'Modhdhokhalpadhoa,Garpara,Manikganj.', NULL, NULL, 'Bank Name:Islami Bank Bangladesh Limited\r\nAccount Name:Md Faruq Hasan\r\nAccount No:26624\r\nCheque No:2396629\r\nCheque Amount:0,00,000 Taka', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-09-29 19:16:38'),
(170, NULL, 'BF-018', NULL, NULL, 'Mir Mohidur Rahaman', 'Mir Mohidur Rahaman', 'Dokhkhin Uthuli,Garpara,Manikganj.', '+8801724146371, +8801706871445', NULL, 'Dokhkhin Uthuli,Garpara,Manikganj.', NULL, '20812982551632983495.jpeg', '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-09-30 17:33:25'),
(171, NULL, 'SS-017', NULL, NULL, 'Mohammad Humayun Ahmed', 'Mohammad Humayun Ahmed', 'Poschim Chortilli,Garpara,Manikganj.', '+8801302916721, +8801641128735', NULL, 'Poschim Chortilli,Garpara,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-10 17:44:51'),
(172, NULL, 'BF-020', NULL, NULL, 'Unkown comapny 2', 'Unkown comapny 2', 'Madrasa Mor,Garpara,Manikganj.', '+8801777371443, +8801767648378', NULL, 'Madrasa Mor,Garpara,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, '2021-06-10 03:48:20'),
(173, NULL, 'BF-019', NULL, NULL, 'Afsana Khanom (Elahi Rahaman)', 'Afsana Khanom (Elahi Rahaman)', 'Porgora,Garpara,Manikganj.', '+8801786140457', NULL, 'Porgora,Garpara,Manikganj.', '3fa4d05f8bed8c780436bc290634870c.jpeg', '14103306861633585001.jpeg', 'Bank Name:City Bank Limited\r\nAccount Name:Afsana Khanom\r\nAccount No:2652869571001\r\nCheque No:0563061\r\nCheque Amount:0,00,000 Taka', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-10-07 16:36:41'),
(174, NULL, '125', NULL, NULL, 'Mohammad Layej Biswash', 'Mohammad Layej Biswash', 'Nobogram,Manikganj.', '+8801777956160, +8801819604634', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, '2021-06-10 17:38:00'),
(175, NULL, 'BF-021', NULL, NULL, 'Mohammad Monirul Islam', 'Mohammad Monirul Islam', 'Joyra,Manikganj.', '+8801766374597, +8801709854655', NULL, 'Joyra,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-09 18:29:23'),
(176, NULL, 'BF-022', NULL, NULL, 'Mohammad Shahidul Islam', 'Mohammad Shahidul Islam', 'Meghshimul,Jagir,Manikganj.', '+8801715431505', NULL, 'Meghshimul,Jagir,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-09 18:32:31'),
(177, NULL, 'BF-023', NULL, NULL, 'Mohammad Jewel Hossain (Broiler-1)', 'Mohammad Jewel Hossain (Broiler-1)', 'Garakul,Jagir,Manikganj.', '+8801689037881', NULL, 'Garakul,Jagir,Manikganj.', NULL, NULL, 'Invoice discount=10 taka per bag\r\nSpecial discount=30 taka per bag', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-09-22 19:31:02'),
(178, NULL, 'BF-024', NULL, NULL, 'Mohammad Tajul Islam Liton', 'Mohammad Tajul Islam Liton', 'Porgora,Garpara,Manikganj.', '+8801718364839', NULL, 'Porgora,Garpara,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-09 18:38:06'),
(179, NULL, 'LF-001', NULL, NULL, 'Abdullah Al Mamun (Layer)', 'Abdullah Al Mamun (Layer)', '656,East Dashora,Manikganj.', '+8801687896802, +8801714215466', NULL, '656,East Dashora,Manikganj.', '1cfedb7f0d2290676450773c03f3b269.jpeg', '2649719271633243800.jpeg', 'Layer Farmer', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-12-30 00:41:10'),
(180, NULL, 'LF-004', NULL, NULL, 'Md Rukunul Islam Shibly (Layer)', 'Md Rukunul Islam Shibly (Layer)', 'Ramonpur,Muljan,Dighi,Manikganj.', '+8801768982368, +8801677102599', NULL, 'Ramonpur,Muljan,Dighi,Manikganj.', '6aef2ef5407b4326cdf5d469ca02f9fb.jpeg', '19861094511633242243.jpeg', '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-10-03 17:24:03'),
(181, NULL, 'SS-011', NULL, NULL, 'Mohammad Liton Mia', 'Mohammad Liton Mia', 'Horgoj,Fukurhati,Saturia,Manikganj.', '+8801751375809', NULL, 'Horgoj,Fukurhati,Saturia,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-10 17:26:41'),
(182, NULL, 'SF-003', NULL, NULL, 'Md Rukunul Islam Shibly (Sonali)', 'Md Rukunul Islam Shibly (Sonali)', 'Ramonpur,Muljan,Dighi,Manikganj.', '+8801768982368, +8801677102599', NULL, 'Ramonpur,Muljan,Dighi,Manikganj.', '95c944a2153652662878565aeeeb196c.jpeg', '4427886881633242284.jpeg', '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-10-03 17:24:44'),
(184, NULL, '135', NULL, NULL, 'Mohammad Abdul Kader (Sonali)', 'Mohammad Abdul Kader (Sonali)', 'Tewta,Shibalaya,Manikganj.', '+8801747853183', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, '2021-06-10 18:45:05'),
(185, NULL, 'SS-013', NULL, NULL, 'Mohammad Jahangir Alam', 'Mohammad Jahangir Alam', 'Koitta,Dhankora,Saturia,Manikganj.', '+8801764105026', NULL, 'Koitta,Dhankora,Saturia,Manikganj.', NULL, NULL, 'Bank Name:Dutch-Bangla Bank Limited\r\nAccount Name:Md Jahangir Alam\r\nAccount No:1491510235833\r\nCheque No:6609903\r\nCheque Amount:0,00,000 Taka', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-09-29 17:58:10'),
(186, NULL, 'SF-002', NULL, NULL, 'Abdullah Al Mamun (Sonali-1)', 'Abdullah Al Mamun (Sonali-1)', '656,East Dashora,Manikganj.', '+8801687896802, +8801714215466', NULL, '656,East Dashora,Manikganj.', '2c80923ca1ebed443cebddc5ddc83e23.jpeg', '12460909271633243874.jpeg', 'Sonali Farmer', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-12-30 00:39:57'),
(187, NULL, 'SF-004', NULL, NULL, 'Mohammad Shofiqul Islam (Poyla)', 'Mohammad Shofiqul Islam (Poyla)', 'Poyla,Terosry,Ghior,Manikganj.', '+8801678583830', NULL, 'Poyla,Terosry,Ghior,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-10 17:10:09'),
(188, NULL, 'SS-017', NULL, NULL, 'Mohammad Azahar Ali', 'Mohammad Azahar Ali', 'Uvajani,Ramdianali,Ghior,Manikganj.', '+8801724175735', NULL, 'Uvajani,Ramdianali,Ghior,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-10 17:47:54'),
(189, NULL, 'SS-009', NULL, NULL, 'Mohammad Rubel Hossain', 'Mohammad Rubel Hossain', 'Golora,Dhankora,Saturia,Manikganj.', '+8801630452639', NULL, 'Golora,Dhankora,Saturia,Manikganj.', NULL, NULL, 'Sonali Farmer', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-12-30 00:23:29'),
(190, NULL, '141', NULL, NULL, 'Mohammad Billal Hossain', 'Mohammad Billal Hossain', 'Megh Shimul,Jagir,Manikganj.', '+8801310867175, +8801635649089', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, '2021-06-10 17:42:57'),
(191, NULL, '142', NULL, NULL, 'MD Anower Hossain', 'MD Anower Hossain', 'Golora,Dhankora,Saturia,Manikganj.', '+8801719846126', NULL, 'Golora,Dhankora,Saturia,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-05 17:26:11'),
(192, NULL, 'SF-006', NULL, NULL, 'Md Towhid Hasan (Sonali)', 'Md Towhid Hasan (Sonali)', 'Golora,Dhankora,Saturia,Manikganj.', '+8801319869484, +8801710790798', NULL, 'Golora,Dhankora,Saturia,Manikganj.', NULL, '175367761641106457.jpeg', 'Sonali Farmer', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2022-01-02 18:54:17'),
(193, NULL, 'SS-015', NULL, NULL, 'MD Borhan Mia & MD Rayhan Mia', 'MD Borhan Mia & MD Rayhan Mia', 'Tora Hat,Khagrakuri,Dighi,Manikganj.', '+8801740619166, +8801714945035', NULL, 'Tora Hat,Khagrakuri,Dighi,Manikganj.', NULL, '21346050211632743878.jpeg', 'Mohammad Rayhan Mia\r\nC/O: Late Piar Ali\r\nKhagrakuri,Dighi,Manikganj.\r\nCheque No:0000020\r\nAmount: 2,60,100 Taka\r\nShahjalal Islami Bank\r\nManikganj Branch.', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-09-29 17:26:55'),
(194, NULL, 'SS-007', NULL, NULL, 'Mohammad Yousuf Ali', 'Mohammad Yousuf Ali', 'Nimtoli Bazar,Manikganj.', '+8801720102900', NULL, 'Nimtoli Bazar,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-10 17:01:40'),
(195, NULL, 'SS-021', NULL, NULL, 'Mohammad Amirul Islam Ronju', 'Mohammad Amirul Islam Ronju', 'Nimtoli Bazar,Manikganj.', '+8801776542308, +8801862129411', NULL, 'Nimtoli Bazar,Manikganj.', NULL, NULL, 'Bank Name:IFIC Bank Limited\r\nAccount Name:Amirul Islam\r\nAccount No:1206530272031\r\nCheque No:0003862\r\nCheque Amount:2,00,000 Taka', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2022-02-19 10:56:10'),
(196, NULL, 'SS-008', NULL, NULL, 'MD Shahjahan', 'MD Shahjahan', 'Molla Bazar,Manikganj.', '+8801725391584, +8801688671903', NULL, 'Molla Bazar,Manikganj.', 'd0f326ebeb07569fb5cf45fda6e51bc8.jpeg', '3121282891640419985.jpeg', 'Sales Center', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-12-25 20:13:05'),
(197, NULL, 'SS-008', NULL, NULL, 'Mohammad Uzzal Mia', 'Mohammad Uzzal Mia', 'Powli Bazar,Manikganj.', '+8801717114511', NULL, 'Powli Bazar,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-10 17:02:51'),
(198, NULL, 'SF-005', NULL, NULL, 'Md Towhid Hasan (Sonali-2)', 'Md Towhid Hasan (Sonali-2)', 'Golora,Dhankora,Saturia,Manikganj.', '+8801319869484, +8801710790798', NULL, 'Golora,Dhankora,Saturia,Manikganj.', NULL, '7508894641641106530.jpeg', 'Sonali Farmer', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2022-01-02 18:55:30'),
(199, NULL, 'SS-009', NULL, NULL, 'Mohammad Taher Uddin Tota', 'Mohammad Taher Uddin Tota', 'Kachari Bazar,Manikganj.', '+8801706064123, +8801720964927', NULL, 'Kachari Bazar,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-10 17:04:11'),
(200, NULL, 'BF-54', NULL, NULL, 'MD Noab Ali (Newaz)', 'MD Noab Ali (Newaz)', 'Pachbaroil,Naboggram,Manikganj.', '+8801621625988, +8801726530078', NULL, 'Pachbaroil,Naboggram,Manikganj.', NULL, NULL, 'Bank Name:Dutch-Bangla Bank Limited\r\nAccount Name:Md Noab Ali\r\nAccount No:149.151.15706\r\nCheque No:6381338\r\nCheque Amount:0,00,000 Taka', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2022-04-28 11:06:01'),
(201, NULL, 'SS-016', NULL, NULL, 'MD Nurul Haq & MD Kohinur', 'MD Nurul Haq & MD Kohinur', 'Baimail Bazar,Bayra,Singair,Manikganj.', '+8801733692870, +8801715743869', NULL, 'Baimail Bazar,Bayra,Singair,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-10 17:42:03'),
(202, NULL, 'SS-018', NULL, NULL, 'Mohammad Atowar', 'Mohammad Atowar', 'Kewarjani,Manikganj.', '+8801758858958, +8801727992048, +8801991894050', NULL, 'Kewarjani,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-07-25 21:19:15'),
(203, NULL, 'SS-006', NULL, NULL, 'Abdur Rohim Geda', 'Abdur Rohim Geda', 'Nimtoli Bazar,Manikganj.', '+8801721859391', NULL, 'Nimtoli Bazar,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-10 04:39:57'),
(204, NULL, 'LF-003', NULL, NULL, 'Shamima Akter', 'Shamima Akter', 'Sadinagar,Painjonkhara,Garpara,Manikganj.', '+8801700829677, +8801726129098', NULL, 'Sadinagar,Painjonkhara,Garpara,Manikganj.', '047af3f55f3864dd13021dcc53ff7bee.jpeg', '12602092521633244611.jpeg', '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-10-03 18:03:31'),
(205, NULL, 'SS-012', NULL, NULL, 'Mohammad Joshim Mia', 'Mohammad Joshim Mia', 'Nimtoli Bazar,Manikganj.', '+8801725879596', NULL, 'Nimtoli Bazar,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-10 17:28:57'),
(206, NULL, 'SS-022', NULL, NULL, 'Mohammad Alom Mia', 'Mohammad Alom Mia', 'Kachabazar,Bus Stand,Manikganj.', '+8801741513775', NULL, 'Kachabazar,Bus Stand,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-10 17:59:00'),
(207, NULL, 'SS-024', NULL, NULL, 'Mohammad Afzal Hossain', 'Mohammad Afzal Hossain', 'Ghosher Bazar,Garpara,Manikganj.', '+8801916905923, +8801742022920', NULL, 'Ghosher Bazar,Garpara,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-10 18:03:07'),
(208, NULL, 'SS-019', NULL, NULL, 'Mohammad Anower Hossain', 'Mohammad Anower Hossain', 'Vatbaur,Shushunda,Dighi,Manikganj.', '+8801714100703', NULL, 'Vatbaur,Shushunda,Dighi,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-10 17:52:47'),
(209, NULL, 'SS-018', NULL, NULL, 'Mohammad Atikur Rahaman', 'Mohammad Atikur Rahaman', 'Dauli,Garpara,Manikganj.', '+8801621248141', NULL, 'Dauli,Garpara,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-10 17:50:31'),
(210, NULL, 'SS-014', NULL, NULL, 'Mohammad Helal Uddin', 'Mohammad Helal Uddin', 'Nimtoli Bazar,Manikganj.', '+8801715548765', NULL, 'Nimtoli Bazar,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-10 17:33:47'),
(211, NULL, 'SS-020', NULL, NULL, 'Mohammad Anik Dewan', 'Mohammad Anik Dewan', 'Bayra Bazar,Singair,Manikganj.', '+8801771066012', NULL, 'Bayra Bazar,Singair,Manikganj.', NULL, NULL, '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2021-09-15 18:54:49'),
(214, NULL, 'SD-002', NULL, NULL, 'M/S Monir Enterprise (MD Monir Uddin)', 'M/S Monir Enterprise (MD Monir Uddin)', 'Sahobotpur Bazar,Nagorpur,Tangail.', '01741114441, 01715783035, 01990021188', NULL, 'Sahobotpur Bazar,Nagorpur,Tangail.', NULL, NULL, 'Business Terms: Credit\r\nCredit Limit: 18,00,000 Taka\r\nYearly Target: 360 Tons\r\nYearly Commission: 2200 Taka Per Ton\r\nAgreement with Md Monir Uddin', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-01 21:40:21', '2021-08-15 23:12:53'),
(215, NULL, 'AR-009', NULL, NULL, 'MD Abdul Jalil', 'MD Abdul Jalil', 'Sorupai Bazar,Naboggram,Manikganj.', '+8801775046539', NULL, 'Sorupai Bazar,Naboggram,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 17:29:31', '2021-06-02 17:29:31'),
(216, NULL, 'AR-009', NULL, NULL, 'MD Pata Mia', 'MD Pata Mia', 'Nimtoli Bazar,Manikganj.', '+8801858330642', NULL, 'Nimtoli Bazar,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 17:38:06', '2021-06-02 17:38:06'),
(217, NULL, 'AR-009', NULL, NULL, 'MD Babu Mia', 'MD Babu Mia', 'Saturia,Manikganj.', '+8801729859479', NULL, 'Saturia,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 17:45:42', '2021-06-02 17:45:42'),
(218, NULL, 'AR-009', NULL, NULL, 'MD Abdur Rahaman & MD Nur Islam', 'MD Abdur Rahaman & MD Nur Islam', 'Maloncho,Manikganj.', '+8801716442143', NULL, 'Maloncho,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 17:49:44', '2021-06-02 17:49:44'),
(219, NULL, 'AR-009', NULL, NULL, 'MD Moslem Mia', 'MD Moslem Mia', 'Nimtoli Bazar,Manikganj.', '+88017', NULL, 'Nimtoli Bazar,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 17:55:23', '2021-06-02 17:55:23'),
(220, NULL, 'AR-009', NULL, NULL, 'MD Sirajul Islam', 'MD Sirajul Islam', 'Basudebpur,Krisnopur,Manikganj.', '+8801749883919, +8801766398912', NULL, 'Basudebpur,Krisnopur,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 18:00:12', '2021-06-02 18:00:12'),
(221, NULL, 'AR-009', NULL, NULL, 'MD Azahar Ali (East Dashora)', 'MD Azahar Ali (East Dashora)', 'East Dashora,Manikganj.', '+8801743055611', NULL, 'East Dashora,Manikganj.', NULL, NULL, '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 18:04:03', '2021-09-13 16:42:20'),
(222, NULL, 'LF-006', NULL, NULL, 'M/S Showkat Poultry Farm', 'M/S Showkat Poultry Farm', 'Manora,Manikganj.', '+8801716877950, +8801673638134, +8801768982368', NULL, 'Manora,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 18:51:20', '2021-06-10 04:56:14'),
(223, NULL, 'AR-009', NULL, NULL, 'MD Sojib Mia', 'MD Sojib Mia', 'Dergram,Jagir,Manikganj.', '+8801782421491', NULL, 'Dergram,Jagir,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 18:55:52', '2021-06-02 18:55:52'),
(224, NULL, 'AR-009', NULL, NULL, 'MD Abul Hossain', 'MD Abul Hossain', 'Kachabazar,Bus Stand,Manikganj.', '+8801612972243', NULL, 'Kachabazar,Bus Stand,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 18:58:59', '2021-06-02 18:58:59'),
(225, NULL, 'AR-009', NULL, NULL, 'MD Shahin', 'MD Shahin', 'Kachabazar,Bus Stand,Manikganj.', '+8801760150500', NULL, 'Kachabazar,Bus Stand,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 19:03:33', '2021-06-02 19:03:33'),
(226, NULL, 'AR-009', NULL, NULL, 'Md Selim Mia (Mama)', 'Md Selim Mia (Mama)', 'Ramdianali,Ghior,Manikganj.', '+8801309960381', NULL, 'Ramdianali,Ghior,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 19:09:57', '2021-06-30 22:49:09'),
(227, NULL, 'SS-026', NULL, NULL, 'MD Waz Uddin', 'MD Waz Uddin', 'Dautia Bazar,Garpara,Manikganj.', '+880181105421', NULL, 'Dautia Bazar,Garpara,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 19:15:05', '2021-06-10 18:05:09'),
(228, NULL, 'AR-009', NULL, NULL, 'MD Mizanur Rahaman', 'MD Mizanur Rahaman', 'Garpara,Manikganj.', '+88017', NULL, 'Garpara,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 19:19:37', '2021-06-02 19:19:37'),
(229, NULL, 'AR-009', NULL, NULL, 'MD Abdus Salam', 'MD Abdus Salam', 'Bokzuri,Betila,Manikganj.', '+8801833990655, +8801757641922', NULL, 'Bokzuri,Betila,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 19:24:50', '2021-06-02 19:24:50'),
(230, NULL, 'AR-009', NULL, NULL, 'MD Hafizur Rahaman', 'MD Hafizur Rahaman', 'Akashi,Tilli,Saturia,Manikganj.', '+8801302585946, +8801643487188', NULL, 'Akashi,Tilli,Saturia,Manikganj.', NULL, NULL, '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 19:30:46', '2021-12-30 00:17:54'),
(231, NULL, 'AR-009', NULL, NULL, 'MD Jahangir Alom (Boiragi)', 'MD Jahangir Alom (Boiragi)', 'Boiragi,Borohatkora,Doulatpur,Manikganj.', '+8801728492747', NULL, 'Boiragi,Borohatkora,Doulatpur,Manikganj.', NULL, NULL, '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 20:29:17', '2021-09-13 16:41:00'),
(232, NULL, 'AR-009', NULL, NULL, 'Md Rasel Mia', 'Md Rasel Mia', 'Nimtoli Bazar,Manikganj.', '+8801766323821, +8801739443018', NULL, 'Nimtoli Bazar,Manikganj.', NULL, NULL, 'Bank Name:Pubali Bank Limited\r\nAccount Name:Rekha Rima Poultry Sales Centre\r\nAccount No:1231901033463\r\nCheque No:3806807\r\nCheque Amount:2,00,000 Taka', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 20:36:22', '2021-09-28 20:23:14'),
(233, NULL, 'SD-004', NULL, NULL, 'M/S Brother\'s Owsodhaloy (MD Abdur Rouf Sumon)', 'M/S Brother\'s Owsodhaloy (MD Abdur Rouf Sumon)', 'Jhitka Bazar,Horirampur,Manikganj.', '+8801686437493', NULL, 'Jhitka Bazar,Horirampur,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 21:27:25', '2021-06-09 16:35:44'),
(234, NULL, 'AR-009', NULL, NULL, 'MD Abdul Ahad', 'MD Abdul Ahad', 'Palora,Betila,Manikganj.', '+8801727109677', NULL, 'Palora,Betila,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 21:30:52', '2021-06-02 21:30:52'),
(235, NULL, 'AR-009', NULL, NULL, 'MD Rofiqul Islam (West Dashora)', 'MD Rofiqul Islam (West Dashora)', 'West Dashora,Manikganj.', '+88017', NULL, 'West Dashora,Manikganj.', NULL, NULL, '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 21:35:14', '2021-09-13 16:43:01'),
(236, NULL, 'AR-009', NULL, NULL, 'MD Ali Ahammad', 'MD Ali Ahammad', 'Kafatia,Putail,Manikganj.', '+88017', NULL, 'Kafatia,Putail,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 21:38:18', '2021-06-02 21:38:18'),
(237, NULL, 'AR-009', NULL, NULL, 'MD Bokhtiar', 'MD Bokhtiar', 'Baichail,Manikganj.', '+88017', NULL, 'Baichail,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 21:42:33', '2021-06-02 21:42:33'),
(238, NULL, 'AR-009', NULL, NULL, 'MD Saiful Islam', 'MD Saiful Islam', 'Kusherchar,Manikganj.', '+88017', NULL, 'Kusherchar,Manikganj.', NULL, NULL, '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 21:46:28', '2021-12-30 00:17:11'),
(239, NULL, 'AR-009', NULL, NULL, 'MD Sukur Ali', 'MD Sukur Ali', 'Gilondo,Noboggram,Manikganj.', '+8801751239733, +8801705342382', NULL, 'Gilondo,Noboggram,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 21:50:02', '2021-06-02 21:50:02'),
(240, NULL, 'AR-009', NULL, NULL, 'MD Aminur Islam', 'MD Aminur Islam', 'Baliabil,Putail,Manikganj.', '+8801886167877', NULL, 'Baliabil,Putail,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 22:31:26', '2021-06-02 22:31:26'),
(241, NULL, 'AR-009', NULL, NULL, 'MD Nazmul', 'MD Nazmul', 'Bhai Bhai Bazar,Manikganj.', '+8801611881213, +8801883378136', NULL, 'Bhai Bhai Bazar,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 22:35:02', '2021-06-02 22:35:02'),
(242, NULL, 'SS-023', NULL, NULL, 'Mohammad Ali', 'Mohammad Ali', 'Saheb Bazar,Saturia,Manikganj.', '+8801788940324', NULL, 'Saheb Bazar,Saturia,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 22:38:46', '2021-06-10 18:01:48');
INSERT INTO `account_details` (`id`, `ad_id`, `ad_code`, `ad_code_manual`, `parent_id`, `ad_name`, `name`, `address`, `phone`, `description`, `ad_address`, `ledger_image`, `ledger_nid_image`, `_note`, `ad_al2_id`, `ad_code_id`, `ad_flag`, `is_receive_account`, `ad_mem_flg`, `ad_ref_name`, `ad_ref_cell_no`, `ad_delivery_address`, `ad_credit_limit`, `ad_cust_type`, `ad_td_id`, `ad_mm_id`, `ad_cust_code`, `branch_id`, `ad_target_qty`, `ad_bin_nid_no`, `ad_email`, `ad_nbr_list_type`, `ad_eff_date`, `created_by`, `updated_by`, `permited_user`, `status`, `created_at`, `updated_at`) VALUES
(243, NULL, 'AR-009', NULL, NULL, 'MD Selim Parvez', 'MD Selim Parvez', 'East Dashora,Manikganj.', '+8801712186520', NULL, 'East Dashora,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 22:42:38', '2021-06-02 22:42:38'),
(244, NULL, 'AR-009', NULL, NULL, 'MD Saiful Islam Hiron', 'MD Saiful Islam Hiron', 'Koyra,Dighi,Manikganj.', '+8801710861694, +8801792696940', NULL, 'Koyra,Dighi,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 22:47:07', '2021-06-02 22:47:07'),
(245, NULL, 'BF-017', NULL, NULL, 'M/S A.S.A Poultry Farm (Md Saiful Islam)', 'M/S A.S.A Poultry Farm (Md Saiful Islam)', 'Char Baliabil,Putail,Manikganj.', '+8801722449127, +8801921354093, +8801993334060', NULL, 'Char Baliabil,Putail,Manikganj.', '3f789dd98a382aa9aa5aa1b29ada168a.jpeg', '19471841691640600935.jpeg', 'Broiler Farmer', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 22:50:35', '2021-12-27 22:28:55'),
(246, NULL, 'BF-027', NULL, NULL, 'Mohammad Arshad Hossain', 'Mohammad Arshad Hossain', 'Narangai,Uchutia,Manikganj.', '+8801715415542, +8801615622244', NULL, 'Narangai,Uchutia,Manikganj.', NULL, NULL, 'Bank Name:Dutch-Bangla Bank Limited\r\nAccount Name:Md Arshad Hossain\r\nAccount No:149.101.117548\r\nCheque No:4068835\r\nCheque Amount:0,00,000 Taka', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 22:53:58', '2021-09-29 18:58:29'),
(247, NULL, 'BF-035', NULL, NULL, 'Mohammad Younus Ali', 'Mohammad Younus Ali', 'Vatbaur,Dighi,Manikganj.', '+8801720566816', NULL, 'Vatbaur,Dighi,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 22:58:12', '2021-06-10 19:01:56'),
(248, NULL, 'AR-009', NULL, NULL, 'MD Rofiqul Islam (Boiragi)', 'MD Rofiqul Islam (Boiragi)', 'Boiragi,Borohatkora,Doulatpur,Manikganj.', '+8801303220915', NULL, 'Boiragi,Borohatkora,Doulatpur,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-02 23:01:27', '2021-06-10 16:51:42'),
(249, NULL, 'LF-007', NULL, NULL, 'Mohammad Delower Hossain', 'Mohammad Delower Hossain', 'Dighulia,Putail,Manikganj.', '+8801798321356, +8801300313835', NULL, 'Dighulia,Putail,Manikganj.', NULL, NULL, 'Bank Name:Uttara Bank Limited\r\nAccount Name:Md Delower Hossain\r\nAccount No:8231\r\nCheque No:3563154\r\nCheque Amount:2,00,000 Taka', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-03 16:33:12', '2021-09-28 20:15:59'),
(250, NULL, 'AR-009', NULL, NULL, 'MD Habibur Rahaman', 'MD Habibur Rahaman', 'Golora Bus Stand,Dhankora,Saturia,Manikganj.', '+8801753363875', NULL, 'Golora Bus Stand,Dhankora,Saturia,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-03 16:36:19', '2021-06-03 16:36:19'),
(251, NULL, 'SS-025', NULL, NULL, 'Mohammad Abdur Roshid', 'Mohammad Abdur Roshid', 'Bangladesh Hat,Garpara,Manikganj.', '+8801720940129', NULL, 'Bangladesh Hat,Garpara,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-03 16:41:12', '2021-06-10 18:03:53'),
(252, NULL, 'AR-009', NULL, NULL, 'MD Shofiqul Islam', 'MD Shofiqul Islam', 'Kachabazar,Bus Stand,Manikganj.', '+8801788435808', NULL, 'Kachabazar,Bus Stand,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-03 16:44:45', '2021-06-03 16:44:45'),
(253, NULL, 'SS-026', NULL, NULL, 'MD Tuhin Mia', 'MD Tuhin Mia', 'Kachabazar Bus Stand,Manikganj.', '+8801776687221, +8801701484254', NULL, 'Kachabazar Bus Stand,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-03 16:50:37', '2021-06-10 18:46:23'),
(254, NULL, 'AR-009', NULL, NULL, 'MD Mofazzol Hossain Pasha', 'MD Mofazzol Hossain Pasha', 'Dautia,Dighi,Manikganj.', '+8801724301743', NULL, 'Dautia,Dighi,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-03 16:55:22', '2021-06-03 16:55:22'),
(255, NULL, 'AR-009', NULL, NULL, 'Mohammad Tuhin Mia', 'Mohammad Tuhin Mia', 'Dergram,Jagir,Manikganj.', '+8801733167562, +8801880842882', NULL, 'Dergram,Jagir,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-03 16:58:57', '2021-06-03 16:58:57'),
(256, NULL, 'AR-009', NULL, NULL, 'MD Ismail Hossain (Koyra)', 'MD Ismail Hossain (Koyra)', 'Koyra,Dighi,Manikganj.', '+8801732940234', NULL, 'Koyra,Dighi,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-03 17:04:56', '2021-07-08 22:19:42'),
(257, NULL, 'AR-009', NULL, NULL, 'Md Sajib Hossain (Koyra)', 'Md Sajib Hossain (Koyra)', 'Koyra,Dighi,Manikganj.', '+8801763804067', NULL, 'Koyra,Dighi,Manikganj.', NULL, NULL, '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-03 17:08:14', '2021-12-17 00:03:57'),
(258, NULL, 'AR-009', NULL, NULL, 'MD Chanchal Mia', 'MD Chanchal Mia', 'Shushunda,Dighi,Manikganj.', '+8801740209002, +8801641353231', NULL, 'Shushunda,Dighi,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-03 17:18:09', '2021-06-03 17:18:09'),
(259, NULL, 'SS-016', NULL, NULL, 'Mohammad Azizul Islam', 'Mohammad Azizul Islam', 'Molla Bazar,Manikganj.', '+8801731759150, +8801950553125', NULL, 'Molla Bazar,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-03 17:22:42', '2021-06-10 17:45:49'),
(260, NULL, 'SS-004', NULL, NULL, 'MD Raihan', 'MD Raihan', 'Nimtoli Bazar,Manikganj.', '+8801771067182', NULL, 'Nimtoli Bazar,Manikganj.', '7c3e2c738178d288b09744a7bc2776c7.jpeg', '13191609911647407537.jpeg', 'Bank Name:IFIC Bank Limited\r\nAccount Name:Abid Enterprise & Poultry Sales Centre\r\nAccount No:0170165738001\r\nCheque No: CAK 1324927\r\nCheque Amount:6,00,000 Taka', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-03 17:26:26', '2022-03-16 11:12:17'),
(261, NULL, 'AR-009', NULL, NULL, 'MD Humayun Ahammed', 'MD Humayun Ahammed', 'West Chartilli,Garpara,Manikganj.', '+8801302916721', NULL, 'West Chartilli,Garpara,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '2021-06-03 17:30:38', '2021-06-03 17:32:06'),
(262, NULL, 'OD-008', NULL, NULL, 'M/S Al Aksa Traders (MD Sumon Ahmmed)', 'M/S Al Aksa Traders (MD Sumon Ahmmed)', 'Romzan Ali College Road,Joyra,Manikganj.', '+8801759190599', NULL, 'Romzan Ali College Road,Joyra,Manikganj.', 'ee9a94c8c10b2a6678d4c8df5c7fb162.jpeg', '3032544771632811147.jpeg', 'Bank Name:Pubali Bank Limited\r\nAccount Name:Al Aksa Traders\r\nAccount No:1231901031673\r\nCheque No:AS100-A-0430287\r\nCheque Amount:4,43,896 Taka', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-03 17:37:01', '2021-09-28 22:24:36'),
(263, NULL, 'PR-001', NULL, NULL, 'Md Ashraful Islam (Mehedi)', 'Md Ashraful Islam (Mehedi)', 'Uvajani,Ramdianali,Ghior,Manikganj.', '+8801761886242', NULL, 'Uvajani,Ramdianali,Ghior,Manikganj.', 'e7edc271263f6dc4b07ffab8d9c47523.jpeg', '12181313211633594732.jpeg', 'Post: Admin Manager\r\nSalary=15000 taka (Monthly)\r\nBonus=2 times (Yearly)', 53, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-03 20:37:50', '2022-03-10 19:55:12'),
(264, NULL, 'Ex-001', NULL, NULL, 'Salary Expenses', 'Salary Expenses', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 107, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-03 20:38:47', '2021-06-03 20:38:47'),
(265, NULL, 'EX-01', NULL, NULL, 'Administration Expense', 'Administration Expense', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 104, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-03 20:44:25', '2021-07-16 04:38:56'),
(266, NULL, 'C-01', NULL, NULL, 'Capital', 'Capital', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'Chowdhury Poultry Feeds initial investment', 64, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-03 20:50:56', '2022-04-08 23:22:08'),
(267, NULL, 'PR-002', NULL, NULL, 'Shikder Saud Al Faisal (Sandu)', 'Shikder Saud Al Faisal (Sandu)', 'Rajar Kalta,Ramdianali,Harirampur,Manikganj.', '+8801611955988', NULL, 'Rajar Kalta,Ramdianali,Harirampur,Manikganj.', '04ddd4c1ca3d3fc2793910d413d00030.jpeg', '8281729471633595131.jpeg', 'Post: Accounting Manager\r\nSalary=15000 taka (Monthly)\r\nBonus=2 times (Yearly)', 53, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-03 21:10:53', '2022-03-10 19:56:07'),
(268, NULL, 'PR-004', NULL, NULL, 'Wali Ul Bari Chowdhury (Shawn)', 'Wali Ul Bari Chowdhury (Shawn)', '363,East Dashora,Manikganj.', '+8801730712346, +8801684489239', NULL, '363,East Dashora,Manikganj.', 'dc3f24f7a8038e59cc13e313459447a0.jpeg', '8292137471633594231.jpeg', 'Managing Director\r\nSalary=45000 taka (Monthly)\r\nBonus=2 times (Yearly)', 53, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-03 21:17:33', '2022-01-03 17:00:42'),
(269, NULL, 'LC-001', NULL, NULL, 'Labour Bill', 'Labour Bill', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 82, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-03 21:40:59', '2021-07-04 17:48:51'),
(270, NULL, 'OR-001', NULL, NULL, 'Office & Godown Rent', 'Office & Godown Rent', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 108, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-03 21:46:18', '2021-06-03 21:46:18'),
(271, NULL, 'BF-025', NULL, NULL, 'MD Abdur Rouf Ronju', 'MD Abdur Rouf Ronju', 'Sadinagor,Painjonkhara,Garpara,Manikganj.', '+8801810535401, +8801720940127', NULL, 'Sadinagor,Painjonkhara,Garpara,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-03 22:58:55', '2021-06-09 18:41:21'),
(272, NULL, 'BF-032', NULL, NULL, 'Mohammad Nahid Hasan Sajal', 'Mohammad Nahid Hasan Sajal', 'Koyra,Shushunda,Dighi,Manikganj.', '+8801810535808,+8801318791385', NULL, 'Koyra,Shushunda,Dighi,Manikganj.', '5ba78192ca49d983d27a6c9106687545.jpeg', '2556503251640085605.jpeg', '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-05 16:06:39', '2021-12-21 23:20:05'),
(273, NULL, 'BF-033', NULL, NULL, 'Mohammad Mizanur Rahaman', 'Mohammad Mizanur Rahaman', 'Dautia,Shushunda,Dighi,Manikganj.', '+8801772129515', NULL, 'Dautia,Shushunda,Dighi,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-05 16:08:58', '2021-06-09 19:10:53'),
(274, NULL, 'BF-027', NULL, NULL, 'Md Abdur Roshid & Md Harunur Roshid', 'Md Abdur Roshid & Md Harunur Roshid', 'Janna,Fukurhati,Saturia,Manikganj.', '+8801717237150, +8801715754246', NULL, 'Janna,Fukurhati,Saturia,Manikganj.', NULL, NULL, 'Bank Name:EXIM Bank Limited\r\nAccount Name:Rumi Iron & Furniture\r\nAccount No:07611100087177\r\nCheque No:5138981\r\nCheque Amount:0,00,000 Taka', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-05 16:28:47', '2021-09-29 19:05:46'),
(275, NULL, 'AR-009', NULL, NULL, 'Mohammad Shamim Mia', 'Mohammad Shamim Mia', 'Ghos Baroil Bazar,Noboggram,Manikganj.', '+8801712797456, +8801567848603', NULL, 'Ghos Baroil Bazar,Noboggram,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-05 18:00:43', '2021-06-05 18:00:43'),
(276, NULL, 'AR-009', NULL, NULL, 'MD Helal Mia', 'MD Helal Mia', 'Baniajuri Bazar,Tora,Ghior,Manikganj.', '+8801725883820, +8801627184258', NULL, 'Baniajuri Bazar,Tora,Ghior,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-05 18:04:51', '2021-06-05 18:04:51'),
(277, NULL, 'SS-010', NULL, NULL, 'Mohammad Romzan Ali', 'Mohammad Romzan Ali', 'Vatbaur,Shushunda,Dighi,Manikganj.', '+8801731702232', NULL, 'Vatbaur,Shushunda,Dighi,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-05 18:50:45', '2021-07-22 18:46:04'),
(278, NULL, '5050', NULL, NULL, 'Discount Paid', 'Discount Paid', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'Discount give to party for various reasons', 120, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-07 16:14:01', '2022-01-23 20:55:58'),
(279, NULL, '6060', NULL, NULL, 'Discount Gain', 'Discount Gain', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'Discount take from party for various reasons', 67, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-07 16:15:51', '2022-01-26 13:06:34'),
(280, NULL, '5151', NULL, NULL, 'Incentive Paid', 'Incentive Paid', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'Incentive give to party for target achievements', 120, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-07 16:20:03', '2022-01-23 20:58:33'),
(281, NULL, '6161', NULL, NULL, 'Incentive Gain', 'Incentive Gain', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'Incentive clem from business companies for target achievements', 79, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-07 16:21:02', '2022-03-31 11:02:41'),
(282, NULL, '5252', NULL, NULL, 'Life Insurance  Premium', 'Life Insurance  Premium', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'Policy Name: Wali Ul Bari Chowdhury\r\nPolicy No: 3973718\r\nPremium Amount: 25,000 Taka\r\nCompany: MetLife Bangladesh Ltd.', 98, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-07 16:26:44', '2022-03-23 11:24:20'),
(283, NULL, 'BA-002', NULL, NULL, 'IFIC Bank Limited', 'IFIC Bank Limited', 'Rudronil Plaza,Shahid Rofiq Sarak,Manikganj.', 'N/A', NULL, 'Rudronil Plaza,Shahid Rofiq Sarak,Manikganj.', NULL, NULL, NULL, 12, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-07 16:29:24', '2021-06-07 21:13:43'),
(284, NULL, 'BC-001', NULL, NULL, 'Bank Loan Interest', 'Bank Loan Interest', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, '', 90, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-07 16:32:24', '2022-03-14 17:42:16'),
(285, NULL, 'TRG-001', NULL, NULL, 'Collection & Marketing Expense', 'Collection & Marketing Expense', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 113, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-07 17:56:20', '2021-06-07 17:56:20'),
(286, NULL, 'BA-001', NULL, NULL, 'Al-Arafah Islami Bank Limited', 'Al-Arafah Islami Bank Limited', 'Sworgo Tower,Shahid Rofiq Sarak,Manikganj.', 'N/A', NULL, 'Sworgo Tower,Shahid Rofiq Sarak,Manikganj.', NULL, NULL, NULL, 12, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-07 21:05:19', '2021-06-07 21:09:03'),
(287, NULL, 'BA-003', NULL, NULL, 'Brac Bank Limited', 'Brac Bank Limited', 'Jinnat Plaza,Shahid Rofiq Sarak,Manikganj.', 'N/A', NULL, 'Jinnat Plaza,Shahid Rofiq Sarak,Manikganj.', NULL, NULL, NULL, 12, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-07 21:12:32', '2021-06-07 21:12:32'),
(288, NULL, 'SD-001', NULL, NULL, 'Al Arafat Enterprise (Md Parvez Mia & Md Biplob)', 'Al Arafat Enterprise (Md Parvez Mia & Md Biplob)', 'Niralibazar,Borohatkora,Daulotpur,Manikganj.', '+8801711513973, +8801957773344', NULL, 'Niralibazar,Borohatkora,Daulotpur,Manikganj.', NULL, NULL, 'Business Terms: Credit\r\nCredit Limit: 15,00,000 Taka\r\nYearly Target: 400 Tons\r\nYearly Commission: 2300 Taka Per Ton\r\nAgreement with Md Parvez Mia & Md Biplob Hossain', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-07 22:47:51', '2022-01-10 00:19:37'),
(289, NULL, 'SD-003', NULL, NULL, 'M/S Rokeya Enterprise (Md Arshed Hossain)', 'M/S Rokeya Enterprise (Md Arshed Hossain)', 'Kaliakoir,Singair,Manikganj.', '+8801624323702, +8801753864728', NULL, 'Kaliakoir,Singair,Manikganj.', NULL, NULL, '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-07 23:30:08', '2021-12-29 00:28:55'),
(290, NULL, 'MC-001', NULL, NULL, 'Rafique Medicine Bangladesh', 'Rafique Medicine Bangladesh', 'Ishwardi,Pabna,Bangladesh.', '+8801741547492', NULL, 'Ishwardi,Pabna,Bangladesh.', NULL, NULL, 'Business Terms: Cash\r\nYearly Target: N/A\r\nCash Commission: 14%\r\nAgreement with Aowal Khan(MPO)', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-08 00:22:08', '2022-01-23 21:29:19'),
(291, NULL, 'LL-001', NULL, NULL, 'Dr Mehedi Hasan', 'Dr Mehedi Hasan', 'Joyra,Manikganj.', '+8801722759848', NULL, 'Joyra,Manikganj.', NULL, NULL, 'N/A', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-08 03:46:33', '2022-01-23 21:43:53'),
(292, NULL, 'LL-002', NULL, NULL, 'Mohammad Rasel Molla', 'Mohammad Rasel Molla', 'Nimtoli Bazar,Manikganj.', '+8801671125045', NULL, 'Nimtoli Bazar,Manikganj.', NULL, NULL, 'N/A', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-08 03:48:59', '2022-01-26 12:35:27'),
(293, NULL, 'OD-001', NULL, NULL, 'Balaka Poultry Complex (MD Kamal Hossain)', 'Balaka Poultry Complex (MD Kamal Hossain)', 'Nobab Super Market,Bus Stand,Manikganj.', '+8801711954069, +8801923969497', NULL, 'Nobab Super Market,Bus Stand,Manikganj.', NULL, NULL, 'Other\'s Distributor', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-08 16:28:25', '2021-12-27 00:24:29'),
(294, NULL, 'OD-002', NULL, NULL, 'Brother\'s Poultry & Dairy Medicine Corner (MD Mizanur Rahaman)', 'Brother\'s Poultry & Dairy Medicine Corner (MD Mizanur Rahaman)', 'Ranu Super Market,Joyra College Road,Manikganj.', '+8801740573672', NULL, 'Ranu Super Market,Joyra College Road,Manikganj.', NULL, NULL, 'Other\'s Distributor', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-08 16:35:07', '2021-12-27 00:27:21'),
(295, NULL, 'OD-003', NULL, NULL, 'Bismillah Business Center (MD Shahin Mia Hasin)', 'Bismillah Business Center (MD Shahin Mia Hasin)', 'Baniazuri Bus Stand,Tora,Ghior,Manikganj.', '+8801765076063', NULL, 'Baniazuri Bus Stand,Tora,Ghior,Manikganj.', NULL, NULL, 'Other\'s Distributor', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-08 16:40:17', '2021-12-27 00:26:37'),
(296, NULL, 'OD-004', NULL, NULL, 'M/S Abir Traders (MD Zakir Hossain)', 'M/S Abir Traders (MD Zakir Hossain)', 'Joyra College Road,Manikganj.', '+8801750181777, +8801956930172', NULL, 'Joyra College Road,Manikganj.', NULL, NULL, 'Other\'s Distributor', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-08 16:44:00', '2022-04-02 11:27:40'),
(297, NULL, 'OD-005', NULL, NULL, 'M/S Maa Poultry & Dairy Medicine Corner (Md Delower Hossain)', 'M/S Maa Poultry & Dairy Medicine Corner (Md Delower Hossain)', 'Joyra Road,Bus Stand,Manikganj.', '+8801710950518', NULL, 'Joyra Road,Bus Stand,Manikganj.', NULL, NULL, 'Other\'s Distributor', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-08 16:47:39', '2021-12-27 00:29:15'),
(298, NULL, 'OD-006', NULL, NULL, 'M/S Sifat Poultry Feed (Md Towhid Mahmud Sujon)', 'M/S Sifat Poultry Feed (Md Towhid Mahmud Sujon)', 'Joyra College Road,Manikganj.', '+8801708949409', NULL, 'Joyra College Road,Manikganj.', NULL, NULL, 'Other\'s Distributor', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-08 16:50:20', '2021-12-27 00:30:57'),
(299, NULL, 'OD-007', NULL, NULL, 'Mayer Doa Poultry Feed (Md Anisur Rahaman Anis)', 'Mayer Doa Poultry Feed (Md Anisur Rahaman Anis)', 'Bewtha Ghat,Manikganj.', '+8801712170653', NULL, 'Bewtha Ghat,Manikganj.', NULL, NULL, 'Other\'s Distributor', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-08 16:52:10', '2021-12-27 00:32:31'),
(300, NULL, 'OD-007', NULL, NULL, 'Bhai Bhai Poultry Farm (MD Lucky Chowdhury)', 'Bhai Bhai Poultry Farm (MD Lucky Chowdhury)', 'Bewtha Mas Bazar,Manikganj.', '+8801790998854', NULL, 'Bewtha Mas Bazar,Manikganj.', NULL, NULL, 'Other\'s Distributor', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-08 16:54:25', '2021-12-27 00:25:29'),
(301, NULL, 'SF-001', NULL, NULL, 'MD Nahid Sultan', 'MD Nahid Sultan', 'Meghshimul,Jagir,Manikganj.', '+8801796496383', NULL, 'Meghshimul,Jagir,Manikganj.', NULL, NULL, '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-08 23:23:21', '2021-12-30 00:16:10'),
(302, NULL, 'SS-001', NULL, NULL, 'Md Towhid Hasan (Sales Center)', 'Md Towhid Hasan (Sales Center)', 'Golora Bus Stand,Dhankora,Saturia,Manikganj.', '+8801319869484, +8801710790798', NULL, 'Golora Bus Stand,Dhankora,Saturia,Manikganj.', NULL, '2646044381641106489.jpeg', 'Sales Center', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-08 23:32:39', '2022-01-02 18:54:49'),
(303, NULL, 'SS-002', NULL, NULL, 'Md Noab Ali & Rabeya', 'Md Noab Ali & Rabeya', 'Bewtha Ghat,Manikganj.', '+8801762785606', NULL, 'Bewtha Ghat,Manikganj.', NULL, NULL, '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-09 00:34:57', '2022-04-28 12:26:24'),
(304, NULL, 'SS-003', NULL, NULL, 'Md Azom & Md Firoz', 'Md Azom & Md Firoz', 'Ghoser Bazar,Garpara,Manikganj.', '+8801953405121', NULL, 'Ghoser Bazar,Garpara,Manikganj.', NULL, NULL, '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-09 00:40:32', '2021-09-29 16:51:48'),
(305, NULL, 'LF-002', NULL, NULL, 'Abdullah Al Mamun (Layer-2)', 'Abdullah Al Mamun (Layer-2)', '656,East Dashora,Manikganj.', '+8801687896802, +8801714215466', NULL, '656,East Dashora,Manikganj.', 'da0944899b4392ed04d1cf13f0b1b4ba.jpeg', '12290633711633243835.jpeg', 'Layer Farmer', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-09 00:56:51', '2021-12-30 00:42:09'),
(306, NULL, 'LF-005', NULL, NULL, 'MD Manik Mia', 'MD Manik Mia', 'Golai,Burundi,Singair,Manikganj.', '+8801755187852', NULL, 'Golai,Burundi,Singair,Manikganj.', NULL, NULL, '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-09 01:18:21', '2021-12-30 00:15:41'),
(307, NULL, 'LL-002', NULL, NULL, 'Eng. Bengir Ahmed', 'Eng. Bengir Ahmed', 'Badda,Dhaka.', '+8801711988761', NULL, 'Badda,Dhaka.', NULL, NULL, 'N/A', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-09 01:26:02', '2022-01-23 21:45:03'),
(308, NULL, 'LL-004', NULL, NULL, 'Karz-A-Hasana', 'Karz-A-Hasana', 'Bangladesh', 'N/A', NULL, 'Bangladesh', NULL, NULL, 'N/A', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-09 02:09:09', '2022-03-10 18:13:25'),
(309, NULL, 'OD-008', NULL, NULL, 'Mama Vagina Poultry & Dairy Medicine (Md Shihabur Rahaman Babu)', 'Mama Vagina Poultry & Dairy Medicine (Md Shihabur Rahaman Babu)', 'Bus Stand,Manikganj.', '+8801712464426', NULL, 'Bus Stand,Manikganj.', NULL, NULL, 'Poultry Medicine Shop', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-09 04:10:06', '2022-01-26 12:26:35'),
(310, NULL, 'SD-005', NULL, NULL, 'Babu Nirod Sarkar', 'Babu Nirod Sarkar', 'Naboggram Bazar,Naboggram,Manikganj.', '+8801975755790', NULL, 'Naboggram Bazar,Naboggram,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-09 16:40:23', '2021-06-09 16:40:23'),
(311, NULL, 'RB-001', NULL, NULL, 'MD Samad Hossain', 'MD Samad Hossain', 'Janna Bazar,Fukurhati,Saturia.Manikganj.', '+8801934422213', NULL, 'Janna Bazar,Fukurhati,Saturia.Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-09 16:43:15', '2021-07-04 21:41:47'),
(312, NULL, 'BF-006', NULL, NULL, 'Akkas Ali (Broiler-2)', 'Akkas Ali (Broiler-2)', 'Sorupai,Naboggram,Manikganj.', '+8801953694279, +8801323150051', NULL, 'Sorupai,Naboggram,Manikganj.', '6cc03f0014dd2656ae4e190a35d9d69d.jpeg', '4115789031640843962.jpeg', 'Broiler Farmer', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-09 17:08:18', '2021-12-30 17:59:22'),
(313, NULL, 'SS-005', NULL, NULL, 'MD Abdur Roshid Mistri', 'MD Abdur Roshid Mistri', 'Kachari Bazar,Manikganj.', '+8801714617972', NULL, 'Kachari Bazar,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-09 17:52:50', '2021-06-09 17:52:50'),
(314, NULL, 'BF-026', NULL, NULL, 'Shron Hasan Amit', 'Shron Hasan Amit', 'Sadinagor,Painjonkhara,Garpara,Manikganj.', '+8801638352891, +8801877359003', NULL, 'Sadinagor,Painjonkhara,Garpara,Manikganj.', NULL, '3533824911634450736.jpeg', '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-09 18:45:43', '2021-10-17 17:05:36'),
(315, NULL, 'BF-028', NULL, NULL, 'Mohammad Nayon', 'Mohammad Nayon', 'Dhakuli Poschimpara,Jagir,Manikganj.', '+8801309929521', NULL, 'Dhakuli Poschimpara,Jagir,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-09 18:53:50', '2021-06-09 18:53:50'),
(316, NULL, 'BF-029', NULL, NULL, 'MD Salamot Hossain', 'MD Salamot Hossain', 'Dhakuli Poschimpara,Jagir,Manikganj.', '+8801727963836', NULL, 'Dhakuli Poschimpara,Jagir,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-09 18:57:17', '2021-06-09 18:57:17'),
(317, NULL, 'BF-030', NULL, NULL, 'Md Yousuf Khan', 'Md Yousuf Khan', 'Railla Poschimpara,Fukurhati,Saturia,Manikganj.', '+8801724309163', NULL, 'Railla Poschimpara,Fukurhati,Saturia,Manikganj.', '2cf6ffb1cba9cf1a29a20e235e4e936d.jpeg', '5575806501633241388.jpeg', '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-09 19:04:24', '2021-10-03 17:09:48'),
(318, NULL, 'BF-031', NULL, NULL, 'Mohammad Al-Amin', 'Mohammad Al-Amin', 'Railla Poschimpara,Fukurhati,Saturia,Manikganj.', '+8801609266808, +8801775367148', NULL, 'Railla Poschimpara,Fukurhati,Saturia,Manikganj.', 'd514fed40eaeff33bbe80b5fc2e995b6.jpeg', '13633693221633165046.jpeg', '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-09 19:05:58', '2021-10-02 19:57:26'),
(319, NULL, 'BF-034', NULL, NULL, 'MD Forhad Hossain', 'MD Forhad Hossain', 'Kamta,Golora,Saturia,Manikganj.', '+8801725355137, +8801707696534', NULL, 'Kamta,Golora,Saturia,Manikganj.', NULL, NULL, 'Broiler Farmer', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-09 19:14:07', '2022-01-17 17:05:45'),
(320, NULL, 'OSE-001', NULL, NULL, 'Feed Delivery Expense', 'Feed Delivery Expense', 'N/A', 'N/a', NULL, 'N/A', NULL, NULL, NULL, 106, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-11 00:52:13', '2021-06-30 18:46:10'),
(321, NULL, 'OD-011', NULL, NULL, 'Mayer Charon Poultry Farm (Uaday Saha)', 'Mayer Charon Poultry Farm (Uaday Saha)', 'Borai,Manikganj.', '+8801775982362', NULL, 'Borai,Manikganj.', NULL, NULL, 'Other\'s Distributor', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-11 20:18:38', '2021-12-27 00:31:39'),
(322, NULL, 'BC-002', NULL, NULL, 'Cheque Book Fee', 'Cheque Book Fee', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 90, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-12 04:08:44', '2021-06-12 04:08:44'),
(323, NULL, 'BC-003', NULL, NULL, 'Bank Account Fee', 'Bank Account Fee', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 90, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-12 04:10:23', '2021-07-28 16:06:51'),
(324, NULL, 'BC-004', NULL, NULL, 'Excise Duty', 'Excise Duty', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'Bank Cost', 90, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-12 04:13:00', '2022-01-02 17:59:34'),
(325, NULL, 'BC-005', NULL, NULL, 'Annual Card Fee', 'Annual Card Fee', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, '', 90, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-12 04:14:26', '2021-08-16 17:05:33'),
(326, NULL, 'MC-012', NULL, NULL, 'Incepta Pharmaceuticals Ltd.', 'Incepta Pharmaceuticals Ltd.', 'Dhaka,Bangladesh.', '+8801674203780', NULL, 'Dhaka,Bangladesh.', NULL, NULL, 'Business Terms: Cash\r\nYearly Target: N/A\r\nInstant Commission: 5%\r\nAgreement with Hasan(MO)', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-14 19:02:50', '2021-08-15 21:51:09'),
(327, NULL, 'MC-013', NULL, NULL, 'Newtec Pharmaceuticals Ltd.', 'Newtec Pharmaceuticals Ltd.', 'Dhaka,Bangladesh.', '+8801766201962', NULL, 'Dhaka,Bangladesh.', NULL, NULL, 'Business Terms: Cash\r\nYearly Target: N/A\r\nInstant Commission: 10%\r\nAgreement with Azad Hossain(SMO)', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-16 18:00:18', '2021-08-15 21:52:22'),
(328, NULL, 'BF-037', NULL, NULL, 'Mohammad Rubel Ahammed (Broiler-2)', 'Mohammad Rubel Ahammed (Broiler-2)', 'Moddhokhalpadhoa,Garpara,Manikganj.', '+8801710123474, +8801788781670, +8801624076774', NULL, 'Moddhokhalpadhoa,Garpara,Manikganj.', NULL, NULL, 'Broiler Farmer', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-16 23:07:13', '2021-12-30 00:33:59'),
(329, NULL, 'SS-039', NULL, NULL, 'Mohammad Arifur Rahaman', 'Mohammad Arifur Rahaman', 'Tora Bazar,Dighi,Manikganj.', '+8801713530047, +8801553972108', NULL, 'Tora Bazar,Dighi,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-18 05:19:32', '2021-06-18 05:19:32'),
(330, NULL, 'SS-041', NULL, NULL, 'Mohammad Abdul Korim', 'Mohammad Abdul Korim', 'Kachabazar,Bus Stand,Manikganj.', '+8801714615858', NULL, 'Kachabazar,Bus Stand,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-19 03:18:54', '2021-07-23 02:50:41'),
(331, NULL, 'SS-037', NULL, NULL, 'MD Masudur Rahaman Masud', 'MD Masudur Rahaman Masud', 'Bayra Bazar,Bayra,Singair,Manikganj.', '+8801728116388', NULL, 'Bayra Bazar,Bayra,Singair,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-20 19:22:06', '2021-06-20 19:22:06'),
(332, NULL, 'TR-001', NULL, NULL, 'Feed Collection Expense', 'Feed Collection Expense', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 110, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-21 23:38:51', '2021-07-04 17:58:43'),
(333, NULL, 'EX-02', NULL, NULL, 'Entertainment Expense', 'Entertainment Expense', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 104, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-21 23:46:56', '2021-07-16 04:38:04'),
(334, NULL, 'UEX-001', NULL, NULL, 'Utility Expense', 'Utility Expense', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 116, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-21 23:49:55', '2021-06-21 23:49:55'),
(335, NULL, 'CC-001', NULL, NULL, 'Mosque Contribution', 'Mosque Contribution', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'Neamot Ali Jame Mosjid', 91, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-24 23:06:25', '2022-01-03 17:13:21'),
(336, NULL, 'CD-001', NULL, NULL, 'Chicks Delivery Expense', 'Chicks Delivery Expense', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 106, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-24 23:10:49', '2021-06-25 14:30:31'),
(337, NULL, 'OOC-001', NULL, NULL, 'Miscellaneous Expense', 'Miscellaneous Expense', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 105, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-24 23:14:36', '2021-07-16 04:36:28'),
(338, NULL, 'CC-002', NULL, NULL, 'Zakat Determination', 'Zakat Determination', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'As Muslim Sariah', 91, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-26 01:31:30', '2022-01-03 17:16:18'),
(339, NULL, 'Loan-01', NULL, NULL, 'Brac Bank Loan', 'Brac Bank Loan', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 50, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-27 17:51:51', '2021-06-27 22:44:30'),
(340, NULL, 'SS-45', NULL, NULL, 'Mohammad Raju Vandari', 'Mohammad Raju Vandari', 'Jorina College Mor,Manikganj.', '+8801799914380', NULL, 'Jorina College Mor,Manikganj.', NULL, NULL, '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-06-29 16:28:46', '2021-12-30 00:15:11'),
(341, NULL, 'BC-006', NULL, NULL, 'Bank Charges', 'Bank Charges', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'Other charges of Bank', 90, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-07-02 03:50:36', '2022-01-12 20:05:46'),
(342, NULL, 'BF-038', NULL, NULL, 'MD Ismail Hossain', 'MD Ismail Hossain', 'Dergram,Jagir,Manikganj.', '+8801719900340', NULL, 'Dergram,Jagir,Manikganj.', NULL, NULL, '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-07-03 16:07:25', '2021-12-30 00:14:29'),
(343, NULL, 'SS-038', NULL, NULL, 'MD Mahabub Hossain', 'MD Mahabub Hossain', 'Geraida Bazar,Singair,Manikganj.', '+8801704232273', NULL, 'Geraida Bazar,Singair,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-07-04 04:41:39', '2021-07-04 04:41:39'),
(345, NULL, 'TR-002', NULL, NULL, 'Chicks Collection Expense', 'Chicks Collection Expense', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 110, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-07-04 17:57:55', '2021-07-04 17:57:55'),
(346, NULL, 'BF-039', NULL, NULL, 'Mohammad Obaydullah', 'Mohammad Obaydullah', 'Notunbosti,Dighi,Manikganj.', '+8801795826871,+8801715394359', NULL, 'Notunbosti,Dighi,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-07-07 16:37:04', '2021-07-07 16:37:04'),
(347, NULL, 'BF-040', NULL, NULL, 'Mohammad Abdul Mannan (Broiler-1)', 'Mohammad Abdul Mannan (Broiler-1)', 'Poshchim Uriajani,Manikganj.', '+8801713515786', NULL, 'Poshchim Uriajani,Manikganj.', NULL, NULL, 'Invoice discount=10 taka per bag\r\nSales discount=30 taka per bag', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-07-07 16:41:51', '2021-09-28 16:02:36'),
(348, NULL, 'BF-041', NULL, NULL, 'Md Robin Hossain & MD Shamim Ahammed', 'Md Robin Hossain & MD Shamim Ahammed', 'Koyra,Dighi,Manikganj.', '+8801714482059,+8801735718923', NULL, 'Koyra,Dighi,Manikganj.', '9577b64244a0860bc0fe4c1fa6ab0d7f.jpeg', NULL, '', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-07-07 16:45:25', '2021-10-03 17:40:19'),
(349, NULL, 'SS-038', NULL, NULL, 'Mohammad Toyobur Ali', 'Mohammad Toyobur Ali', 'Bus Stand Kachabazar,Manikganj.', '+8801728489141', NULL, 'Bus Stand Kachabazar,Manikganj.', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-07-08 18:24:12', '2021-07-08 18:24:12'),
(350, NULL, 'SS-039', NULL, NULL, 'MD Sobed Ali', 'MD Sobed Ali', 'Bathuimuri Bazar,Ghior,Manikganj', '+8801727019384', NULL, 'Bathuimuri Bazar,Ghior,Manikganj', NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-07-13 22:47:58', '2021-07-13 22:47:58'),
(351, NULL, 'BC-007', NULL, NULL, 'Bank Guarantee Fee', 'Bank Guarantee Fee', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, '', 90, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-07-16 04:23:24', '2021-12-13 00:12:31'),
(352, NULL, 'BA-004', NULL, NULL, 'Islami Bank Bangladesh Limited', 'Islami Bank Bangladesh Limited', 'Jinnat Plaza,Shahid Rofiq Sarak,Manikganj.', 'N/A', NULL, 'Jinnat Plaza,Shahid Rofiq Sarak,Manikganj.', NULL, NULL, NULL, 12, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-07-16 04:32:21', '2021-07-16 04:32:21'),
(353, NULL, 'OOI-001', NULL, NULL, 'Others Income', 'Others Income', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, NULL, 79, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-07-19 04:24:44', '2021-07-19 04:24:44'),
(354, NULL, 'PR-005', NULL, NULL, 'Kamrunnahar Chowdhury', 'Kamrunnahar Chowdhury', '363,East Dashora,Manikganj.', '+8801711049308', NULL, '363,East Dashora,Manikganj.', '49efaa63e876b93bea8462b4ab366a28.jpeg', '6202840451633594386.jpeg', '', 53, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-08-01 19:37:28', '2021-10-07 19:13:06'),
(355, NULL, 'PR-003', NULL, NULL, 'Sumaia Akter (Alo)', 'Sumaia Akter (Alo)', '363,East Dashora,Manikganj.', '+8801688454764', NULL, '363,East Dashora,Manikganj.', '1a7d0fd4729ca864dedc8c58c5b4d6e7.jpeg', '6708412391633595194.jpeg', 'Post: Director\r\nHonorarium=5000 taka (Monthly)\r\nBonus=2 times (Yearly)', 53, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-08-01 19:38:49', '2022-03-10 19:55:37'),
(356, NULL, 'BF-042', NULL, NULL, 'Mohammad Rayhan Biswash (Broiler-2)', 'Mohammad Rayhan Biswash (Broiler-2)', 'Dokhkhin Uthuli,Gorpara,Manikganj.', '+8801787395736, +8801735108734', NULL, 'Dokhkhin Uthuli,Gorpara,Manikganj.', '08fca55a1a96a3436637c9d5c0f55d6c.jpeg', NULL, 'N/A', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-08-12 23:26:40', '2021-09-27 23:04:14'),
(357, NULL, 'BC-005', NULL, NULL, 'Cheque Dishonor Fee', 'Cheque Dishonor Fee', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'Applicable for cheque dishonor by bank.This fee will collect from party.', 90, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-08-15 17:36:22', '2021-08-15 17:36:22'),
(358, NULL, 'SS-040', NULL, NULL, 'Mohammad Bador Uddin', 'Mohammad Bador Uddin', 'Bangladesh Hat,Gorpara,Manikganj.', '+8801715245688', NULL, 'Bangladesh Hat,Gorpara,Manikganj.', NULL, NULL, 'N/A', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-08-18 23:09:44', '2021-08-18 23:09:44'),
(359, NULL, 'OD-011', NULL, NULL, 'M/S Rasin Enterprise (Md Habibur Rahaman)', 'M/S Rasin Enterprise (Md Habibur Rahaman)', 'Horgoj Mor,Saturia,Manikganj.', '+8801683153460, +8801729384989', NULL, 'Horgoj Mor,Saturia,Manikganj.', NULL, NULL, 'Other\'s Distributor', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-08-21 19:22:48', '2021-12-27 00:30:08'),
(360, NULL, 'SM-001', NULL, NULL, 'Security Money', 'Security Money', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'Fozlur Rahaman get 2,00,000 taka for shop\'s advance', 27, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-08-25 23:06:39', '2021-08-25 23:06:39'),
(361, NULL, 'HC-007', NULL, NULL, 'C.P Bangladesh Co; Ltd.', 'C.P Bangladesh Co; Ltd.', 'Chandra,Gazipur,Bangladesh.', '+8801713364158', NULL, 'Chandra,Gazipur,Bangladesh.', NULL, NULL, 'N/A', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-08-30 19:42:05', '2021-08-30 19:42:05'),
(362, NULL, 'OI-001', NULL, NULL, 'Others Operating Income', 'Others Operating Income', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'N/A', 79, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-08-30 19:45:31', '2021-08-30 19:45:31'),
(363, NULL, 'BF-043', NULL, NULL, 'Mohammad Abdul Mannan (Broiler-2)', 'Mohammad Abdul Mannan (Broiler-2)', 'Poshchim Uriajani,Manikganj.', '+8801713515786', NULL, 'Poshchim Uriajani,Manikganj.', NULL, NULL, 'Invoice discount=10 taka per bag\r\nSales discount=30 taka per bag', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-09-05 15:43:25', '2021-09-21 18:49:11'),
(364, NULL, 'FF-001', NULL, NULL, 'Office Furniture', 'Office Furniture', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'N/A', 23, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-09-06 17:58:23', '2021-09-06 17:58:23'),
(365, NULL, 'BD-001', NULL, NULL, 'Bad Debt', 'Bad Debt', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'N/A', 89, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-09-06 18:02:06', '2021-09-06 18:02:06'),
(366, NULL, 'BD-002', NULL, NULL, 'Allowance For Bad Debt', 'Allowance For Bad Debt', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'N/A', 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-09-06 18:03:33', '2021-09-06 18:03:33'),
(367, NULL, 'DEP-001', NULL, NULL, 'Depreciation', 'Depreciation', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'Depreciation Account for Machine & Furniture', 118, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-09-06 18:06:11', '2022-01-03 19:10:17'),
(368, NULL, 'LFF-001', NULL, NULL, 'Legal Fee', 'Legal Fee', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'Legal fee will collet from individual party', 100, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-09-12 19:13:52', '2021-09-12 19:13:52'),
(369, NULL, 'SF-013', NULL, NULL, 'Mohammad Mohidur Rahaman (Sonali-1)', 'Mohammad Mohidur Rahaman (Sonali-1)', 'East Sanbandha,Balirtek,Manikganj.', '+8801726695924, +8801642129839', NULL, 'East Sanbandha,Balirtek,Manikganj.', NULL, NULL, 'Sonali Farmer', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-09-19 20:41:12', '2022-03-12 11:57:33'),
(370, NULL, 'FF-003', NULL, NULL, 'Md Ashraful Islam', 'Md Ashraful Islam', 'Uvajani,Ramdianali,Ghior,Manikganj.', '+8801777940795', NULL, 'Uvajani,Ramdianali,Ghior,Manikganj.', '816437529eddacf3eb58ac6f0d3de021.jpeg', '14446108361640782772.jpeg', 'Fish Farmer', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-09-19 22:35:22', '2021-12-30 00:59:32'),
(371, NULL, 'BF-53', NULL, NULL, 'Md Tomej Uddin (Budhdhi)', 'Md Tomej Uddin (Budhdhi)', 'Chamta,Dighi,Manikganj.', '+8801721186411', NULL, 'Chamta,Dighi,Manikganj.', NULL, NULL, 'N/A', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-09-19 22:49:02', '2021-09-19 22:49:02'),
(372, NULL, 'SS-037', NULL, NULL, 'Mohammad Rozzob Ali', 'Mohammad Rozzob Ali', 'Madrasa Mor,Gorpara,Manikganj.', '+8801308644148', NULL, 'Madrasa Mor,Gorpara,Manikganj.', NULL, NULL, 'N/A', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-09-22 16:37:09', '2021-09-22 18:56:27'),
(373, NULL, 'BF-057', NULL, NULL, 'Mohammad Jewel Hossain (Broiler-2)', 'Mohammad Jewel Hossain (Broiler-2)', 'Garakul,Jagir,Manikganj.', '+8801689037881', NULL, 'Garakul,Jagir,Manikganj.', NULL, NULL, 'Invoice Commission: 10 Taka per bag\r\nSpecial Commission: 30 Taka per bag', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-09-22 19:19:16', '2021-09-22 19:19:16');
INSERT INTO `account_details` (`id`, `ad_id`, `ad_code`, `ad_code_manual`, `parent_id`, `ad_name`, `name`, `address`, `phone`, `description`, `ad_address`, `ledger_image`, `ledger_nid_image`, `_note`, `ad_al2_id`, `ad_code_id`, `ad_flag`, `is_receive_account`, `ad_mem_flg`, `ad_ref_name`, `ad_ref_cell_no`, `ad_delivery_address`, `ad_credit_limit`, `ad_cust_type`, `ad_td_id`, `ad_mm_id`, `ad_cust_code`, `branch_id`, `ad_target_qty`, `ad_bin_nid_no`, `ad_email`, `ad_nbr_list_type`, `ad_eff_date`, `created_by`, `updated_by`, `permited_user`, `status`, `created_at`, `updated_at`) VALUES
(374, NULL, 'BF-058', NULL, NULL, 'Mohammad Jabed Ali', 'Mohammad Jabed Ali', 'Ukiara(Modhdhopara),Jagir,Manikganj.', '+8801713585900, +8801302916772', NULL, 'Ukiara(Modhdhopara),Jagir,Manikganj.', NULL, '19171581231632905642.jpeg', 'N/A', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-09-29 19:47:25', '2021-09-29 19:54:02'),
(375, NULL, 'SS-038', NULL, NULL, 'Md Chanchal Mia (Sales Center)', 'Md Chanchal Mia (Sales Center)', 'Dautia Bazar,Dighi,Manikganj.', '+8801740209002', NULL, 'Dautia Bazar,Dighi,Manikganj.', NULL, NULL, 'N/A', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '2021-10-14 17:32:59', '2021-12-30 00:04:27'),
(376, NULL, 'HC-007', NULL, NULL, 'Index Poultry Private Company', 'Index Poultry Private Company', 'Gulshan,Dhaka.', '+8801844019227', NULL, 'Gulshan,Dhaka.', NULL, NULL, 'N/A', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-10-14 18:05:04', '2021-10-14 18:05:04'),
(377, NULL, 'KF-001', NULL, NULL, 'Nana-Nati (Quel)', 'Nana-Nati (Quel)', 'Madrasa Mor,Garpara,Manikganj.', '+8801789510449', NULL, 'Madrasa Mor,Garpara,Manikganj.', NULL, NULL, 'N/A', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-10-14 19:03:48', '2021-10-14 19:03:48'),
(378, NULL, 'SL-001', NULL, NULL, 'Md Parvez Mia', 'Md Parvez Mia', 'Deshgram,Nirali,Daulotpur,Manikganj.', '+8801711513973', NULL, 'Deshgram,Nirali,Daulotpur,Manikganj.', NULL, NULL, 'N/A', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-10-15 01:59:58', '2021-10-15 01:59:58'),
(379, NULL, 'SD-003', NULL, NULL, 'Md Milon Ali', 'Md Milon Ali', 'Joyra(Purbo Para),Jagir,Manikganj.', '+8801785509127', NULL, 'Joyra(Purbo Para),Jagir,Manikganj.', NULL, NULL, 'Business Terms: Cash\r\nCredit Limit: 00,00,000 Taka\r\nYearly Target: 180 Tons\r\nCash Commission: 2000 Taka Per Ton(100 Taka Per Bag)\r\nAgreement with Md Milon Ali', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-10-18 19:31:20', '2022-01-10 00:23:49'),
(380, NULL, 'SS-047', NULL, NULL, 'Mohammad Hanif Mia', 'Mohammad Hanif Mia', 'Bangladesh Hat,Gorpara,Manikganj.', '+8801731541880', NULL, 'Bangladesh Hat,Gorpara,Manikganj.', NULL, NULL, '...', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-12-18 17:09:53', '2021-12-18 17:09:53'),
(381, NULL, 'DM-001', NULL, NULL, 'Damage Adjustment Account', 'Damage Adjustment Account', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'Damage Adjustment Account', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-12-18 17:36:48', '2021-12-18 23:05:10'),
(382, NULL, 'COS-07', NULL, NULL, 'Damage Expense', 'Damage Expense', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'Damage Expense', 85, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-12-18 17:41:20', '2021-12-18 17:41:20'),
(383, NULL, 'SS-048', NULL, NULL, 'Md Jalal Uddin', 'Md Jalal Uddin', 'Betila Bazar,Betila-Mitora,Manikganj.', '+8801915232145', NULL, 'Betila Bazar,Betila-Mitora,Manikganj.', NULL, NULL, 'Sales Center', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-12-25 17:25:51', '2021-12-25 17:25:51'),
(384, NULL, 'BF-059', NULL, NULL, 'Md Murad Hossain', 'Md Murad Hossain', 'North Bil Dauli,Garpara,Manikganj.', '+8801303510680', NULL, 'North Bil Dauli,Garpara,Manikganj.', NULL, NULL, 'Broiler Farmer', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-12-25 18:40:36', '2021-12-25 18:41:31'),
(385, NULL, 'SF-011', NULL, NULL, 'Abdullah Al Mamun (Sonali-2)', 'Abdullah Al Mamun (Sonali-2)', '656,East Dashora,Manikganj.', '+8801687896802, +8801714215466', NULL, '656,East Dashora,Manikganj.', '9db82a844278e7a1db9df04ba97b5b98.jpeg', '10153044251640516413.jpeg', 'Sonali Farmer', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-12-26 22:58:39', '2022-04-02 13:09:00'),
(386, NULL, 'FA-004', NULL, NULL, 'Accumulated Depreciation Account', 'Accumulated Depreciation Account', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'Accumulated Depreciation Account', 19, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-12-30 18:39:12', '2021-12-30 18:39:12'),
(387, NULL, 'AS-01', NULL, NULL, 'Reserve for Depreciation', 'Reserve for Depreciation', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'Reserve for Depreciation of Machine & Furniture', 29, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-01-03 18:36:51', '2022-01-03 19:11:41'),
(388, NULL, 'LC-001', NULL, NULL, 'License Fees', 'License Fees', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'All kind of License fees', 104, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-01-04 18:39:00', '2022-03-23 11:20:08'),
(389, NULL, 'IT-001', NULL, NULL, 'Income Taxes', 'Income Taxes', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'Income Tax & Related Fees', 97, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-01-04 18:54:46', '2022-01-04 18:54:46'),
(390, NULL, 'BF-060', NULL, NULL, 'Mosammad Suborna Akter', 'Mosammad Suborna Akter', 'Joyra Moddho Para,Joyra,Manikganj.', '+8801741678332', NULL, 'Joyra Moddho Para,Joyra,Manikganj.', NULL, NULL, 'Broiler Farmer', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-01-08 21:41:47', '2022-01-09 17:07:56'),
(391, NULL, 'SF-013', NULL, NULL, 'Abdullah Al Mamun (Sonali-3)', 'Abdullah Al Mamun (Sonali-3)', '656,East Dashora,Manikganj.', '+8801687896802, +8801714215466', NULL, '656,East Dashora,Manikganj.', 'b54a730527e24cc435bfaa91537a328a.jpeg', '6592266911649325391.jpeg', 'Sonali Farmer', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-02-07 12:28:36', '2022-04-07 15:56:31'),
(392, NULL, 'SS-049', NULL, NULL, 'Md Imran', 'Md Imran', 'Kachari Bazar,Hizuli,Manikganj.', '+8801716245195', NULL, 'Kachari Bazar,Hizuli,Manikganj.', NULL, NULL, 'Sales Center', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-02-10 17:57:10', '2022-02-10 17:57:10'),
(393, NULL, 'SF-014', NULL, NULL, 'Md Prodip Hasan', 'Md Prodip Hasan', 'Golora,Dhankora,Saturia,Manikganj.', '+8801736463328', NULL, 'Golora,Dhankora,Saturia,Manikganj.', NULL, NULL, 'Sonali Farmer', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-02-21 11:56:07', '2022-02-21 11:56:07'),
(394, NULL, 'BF-61', NULL, NULL, 'MD Shahjahan (Broiler)', 'MD Shahjahan (Broiler)', 'Holding No:29,Uchutia(Ghurki),Jagir,Manikganj.', '+8801725391584, +8801688671903', NULL, 'Holding No:29,Uchutia(Ghurki),Jagir,Manikganj.', 'f33f4e2c80b32af9aada8b247005572a.jpeg', NULL, 'Broiler Farmer', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-02-21 16:21:45', '2022-03-13 13:00:03'),
(395, NULL, 'HC-008', NULL, NULL, 'Goalondo Gazi Agro Farm', 'Goalondo Gazi Agro Farm', 'Goalondo,Rajbari.', '+8801721404267, +8801972404267, +8801770654254', NULL, 'Goalondo,Rajbari.', NULL, NULL, 'Sonali Chicks Hatchery', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-02-22 11:15:22', '2022-02-22 11:15:22'),
(396, NULL, 'MC-021', NULL, NULL, 'Navana Pharmaceuticals Ltd.', 'Navana Pharmaceuticals Ltd.', 'Rupshi,Narayanganj,Bangladesh.', '+8801321130666', NULL, 'Rupshi,Narayanganj,Bangladesh.', NULL, NULL, 'Business Term: Cash', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-03-07 14:02:31', '2022-03-07 14:02:31'),
(397, NULL, 'HC-009', NULL, NULL, 'Orbit Poultry & Hatchery', 'Orbit Poultry & Hatchery', 'Rajbari,Dhaka,Bangladesh.', '+8801716023391', NULL, 'Rajbari,Dhaka,Bangladesh.', NULL, NULL, 'Sonali Hatchery', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-03-07 14:08:33', '2022-03-07 14:08:33'),
(398, NULL, 'SF-015', NULL, NULL, 'Mohammad Mohidur Rahaman (Sonali-2)', 'Mohammad Mohidur Rahaman (Sonali-2)', 'East Sanbandha,Balirtek,Manikganj.', '+8801726695924, +8801642129839', NULL, 'East Sanbandha,Balirtek,Manikganj.', NULL, NULL, 'Sonali Farmer', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-03-12 11:54:48', '2022-03-12 11:59:11'),
(399, NULL, 'HC-010', NULL, NULL, 'Suguna Foods Bangladesh Pvt. Ltd.', 'Suguna Foods Bangladesh Pvt. Ltd.', 'H#76,Gausul Azam Avenue,S#13,Uttara,Dhaka.', '+8801709650913', NULL, 'H#76,Gausul Azam Avenue,S#13,Uttara,Dhaka.', NULL, NULL, 'Chicks Company', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-03-16 16:23:53', '2022-03-16 16:23:53'),
(400, NULL, 'US-001', NULL, NULL, 'Walking Suppliers', 'Walking Suppliers', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'Uncommon Suppliers of various products', 40, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-03-18 22:48:44', '2022-03-18 22:51:04'),
(401, NULL, 'QF-001', NULL, NULL, 'Sajidul Islam Babu', 'Sajidul Islam Babu', 'Powli,Manikganj.', '+8801625451661', NULL, 'Powli,Manikganj.', NULL, NULL, 'Quel Farmer', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-05-07 11:34:26', '2022-05-07 11:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `account_groups`
--

CREATE TABLE `account_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_account_head_id` bigint(20) UNSIGNED NOT NULL,
  `_parent_id` int(11) NOT NULL DEFAULT 0,
  `_show_filter` tinyint(2) NOT NULL DEFAULT 0,
  `_short` int(11) NOT NULL DEFAULT 5,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_groups`
--

INSERT INTO `account_groups` (`id`, `_name`, `_code`, `_details`, `_status`, `_created_by`, `_updated_by`, `_account_head_id`, `_parent_id`, `_show_filter`, `_short`, `created_at`, `updated_at`) VALUES
(1, 'Accounts Receivable (A/R)', '', 'Accounts receivable (also called A/R, Debtors, or Trade and other receivables) tracks money that customers owe you for products or services, and payments customers make.\r\n Accounts receivable account for you. Most businesses need only one.\r\n\r\nEach customer has a register, which functions like an Accounts receivable account for each customer.', 1, NULL, NULL, 13, 0, 1, 5, '2022-03-02 11:46:50', '2022-03-03 04:54:13'),
(2, 'Allowance for bad debts', '', 'Use Allowance for bad debts to estimate the part of Accounts Receivable that you think you might not collect.\r\nUse this only if you are keeping your books on the accrual basis.', 1, NULL, NULL, 2, 0, 1, 5, '2022-03-02 11:47:54', '2022-03-02 12:14:50'),
(3, 'Assets available for sale', '', 'Use Assets available for sale to track assets that are available for sale that are not expected to be held for a long period of time.', 1, NULL, NULL, 2, 0, 1, 5, '2022-03-02 11:48:18', '2022-03-02 12:14:33'),
(4, 'Development Costs', '', 'Use Development costs to track amounts you deposit or set aside to arrange for financing, such as an SBA loan, or for deposits in anticipation of the purchase of property or other assets.\r\nWhen the deposit is refunded, or the purchase takes place, remove the amount from this account.', 1, NULL, NULL, 2, 0, 1, 5, '2022-03-02 11:48:31', '2022-03-02 12:14:19'),
(5, 'Employee Cash Advances', '', 'Use Employee cash advances to track employee wages and salary you issue to an employee early, or other non-salary money given to employees.\r\nIf you make a loan to an employee, use the Current asset account type called Loans to others, instead.', 1, NULL, NULL, 2, 0, 1, 5, '2022-03-02 11:48:44', '2022-03-02 12:14:01'),
(6, 'Inventory', '', 'Use Inventory to track the cost of goods your business purchases for resale.\r\nWhen the goods are sold, assign the sale to a Cost of sales account.', 1, NULL, NULL, 2, 0, 1, 5, '2022-03-02 11:48:56', '2022-03-02 12:13:46'),
(7, 'Investments - Other', '', 'Use Investments - Other to track the value of investments not covered by other investment account types. Examples include publicly-traded shares, coins, or gold.', 1, NULL, NULL, 2, 0, 1, 5, '2022-03-02 11:49:11', '2022-03-02 12:13:31'),
(8, 'Loans To Officers', '', 'If you operate your business as a Corporation, use Loans to officers to track money loaned to officers of your business.', 1, NULL, NULL, 2, 0, 1, 5, '2022-03-02 11:49:28', '2022-03-02 12:13:15'),
(9, 'Loans to Others', '', 'Use Loans to others to track money your business loans to other people or businesses.\r\nThis type of account is also referred to as Notes Receivable.\r\n\r\nFor early salary payments to employees, use Employee cash advances, instead.', 1, NULL, NULL, 2, 0, 1, 5, '2022-03-02 11:49:41', '2022-03-05 10:10:01'),
(10, 'Loans to Shareholders', '', 'If you operate your business as a Corporation, use Loans to Shareholders to track money your business loans to its shareholders.', 1, NULL, NULL, 2, 0, 1, 5, '2022-03-02 11:49:55', '2022-03-02 12:12:38'),
(11, 'Other current assets', '', 'Use Other current assets for current assets not covered by the other types. Current assets are likely to be converted to cash or used up in a year.', 1, NULL, NULL, 2, 0, 1, 5, '2022-03-02 11:50:07', '2022-03-02 12:12:20'),
(12, 'Prepaid Expenses', '', 'Use Prepaid expenses to track payments for expenses that you won’t recognise until your next accounting period.\r\nWhen you recognise the expense, make a journal entry to transfer money from this account to the expense account.', 1, NULL, NULL, 2, 0, 1, 5, '2022-03-02 11:50:18', '2022-03-02 12:11:59'),
(13, 'Retainage', '', 'Use Retainage if your customers regularly hold back a portion of a contract amount until you have completed a project.\r\nThis type of account is often used in the construction industry, and only if you record income on an accrual basis.', 1, NULL, NULL, 2, 0, 1, 5, '2022-03-02 11:50:30', '2022-03-02 12:11:40'),
(14, 'Undeposited Funds', '', 'Use Undeposited funds for cash or cheques from sales that haven’t been deposited yet.\r\nFor petty cash, use Cash on hand, instead.', 1, NULL, NULL, 2, 0, 1, 5, '2022-03-02 11:50:41', '2022-03-02 12:11:18'),
(15, 'Bank', '', 'Use Bank accounts to track all your current activity, including debit card transactions.\r\nEach current account your company has at a bank or other financial institution should have its own Bank type account in QuickBooks Online Plus.', 1, NULL, NULL, 1, 0, 1, 5, '2022-03-02 11:50:57', '2022-03-02 12:10:44'),
(16, 'Cash and cash equivalents', '', 'Use Cash and Cash Equivalents to track cash or assets that can be converted into cash immediately. For example, marketable securities and Treasury bills.', 1, NULL, NULL, 1, 0, 1, 5, '2022-03-02 11:51:07', '2022-03-02 12:10:30'),
(17, 'Cash on hand', '', 'Use a Cash on hand account to track cash your company keeps for occasional expenses, also called petty cash.\r\nTo track cash from sales that have not been deposited yet, use a pre-created account called Undeposited funds, instead.', 1, NULL, NULL, 1, 0, 1, 5, '2022-03-02 11:51:17', '2022-03-02 12:10:15'),
(18, 'Client trust account', '', 'Use Client trust accounts for money held by you for the benefit of someone else.\r\nFor example, trust accounts are often used by attorneys to keep track of expense money their customers have given them.\r\n\r\nOften, to keep the amount in a trust account from looking like it’s yours, the amount is offset in a \"contra\" liability account (a Current Liability).', 1, NULL, NULL, 1, 0, 1, 5, '2022-03-02 11:51:27', '2022-03-02 12:09:58'),
(19, 'Money Market', '', 'Use Money market to track amounts in money market accounts.\r\nFor investments, see Current Assets, instead.', 1, NULL, NULL, 1, 0, 1, 5, '2022-03-02 11:51:38', '2022-03-02 12:09:43'),
(20, 'Rents Held in Trust', '', 'Use Rents held in trust to track deposits and rent held on behalf of the property owners.\r\nTypically only property managers use this type of account.', 1, NULL, NULL, 1, 0, 1, 5, '2022-03-02 11:54:55', '2022-03-02 12:09:31'),
(21, 'Savings', '', 'Use Savings accounts to track your savings and CD activity.\r\nEach savings account your company has at a bank or other financial institution should have its own Savings type account.\r\n\r\nFor investments, see Current Assets, instead.', 1, NULL, NULL, 2, 0, 1, 5, '2022-03-02 11:55:06', '2022-03-02 12:09:16'),
(22, 'Accumulated depletion', '', 'Use Accumulated depletion to track how much you deplete a natural resource.', 1, NULL, NULL, 3, 0, 1, 5, '2022-03-02 11:55:22', '2022-03-02 12:08:49'),
(23, 'Accumulated depreciation on property, plant and equipment', '', 'Use Accumulated depreciation on property, plant and equipment to track how much you depreciate a fixed asset (a physical asset you do not expect to convert to cash during one year of normal operations).', 1, NULL, NULL, 3, 0, 1, 5, '2022-03-02 11:55:33', '2022-03-02 12:08:32'),
(24, 'Buildings', '', 'Use Buildings to track the cost of structures you own and use for your business. If you have a business in your home, consult your accountant.\r\nUse a Land account for the land portion of any real property you own, splitting the cost of the property between land and building in a logical method. A common method is to mimic the land-to-building ratio on the property tax statement.', 1, NULL, NULL, 3, 0, 1, 5, '2022-03-02 11:56:01', '2022-03-02 12:08:12'),
(25, 'Accumulated depletion', '', 'Use Accumulated depletion to track how much you deplete a natural resource.', 1, NULL, NULL, 3, 0, 1, 5, '2022-03-02 12:19:10', '2022-03-02 12:19:10'),
(26, 'Accumulated depreciation on property, plant and equipment', '', 'Use Accumulated depreciation on property, plant and equipment to track how much you depreciate a fixed asset (a physical asset you do not expect to convert to cash during one year of normal operations).', 1, NULL, NULL, 3, 0, 1, 5, '2022-03-02 12:19:36', '2022-03-02 12:19:36'),
(27, 'Land', '', 'Use Land to track assets that are not easily convertible to cash or not expected to become cash within the next year. For example, leasehold improvements.', 1, NULL, NULL, 3, 0, 1, 5, '2022-03-02 12:34:25', '2022-03-02 12:34:25'),
(28, 'Leasehold Improvements', '', 'Use Leasehold improvements to track improvements to a leased asset that increases the asset’s value. For example, if you carpet a leased office space and are not reimbursed, that’s a leasehold improvement.', 1, NULL, NULL, 3, 0, 1, 5, '2022-03-02 12:34:42', '2022-03-02 12:34:42'),
(29, 'Machinery and equipment', '', 'Use Machinery and equipment to track computer hardware, as well as any other non-furniture fixtures or devices owned and used for your business.\r\nThis includes equipment that you ride, like tractors and lawn mowers. Cars and lorries, however, should be tracked with Vehicle accounts, instead.', 1, NULL, NULL, 3, 0, 1, 5, '2022-03-02 12:34:59', '2022-03-02 12:34:59'),
(30, 'Other fixed assets', '', 'Use Other fixed asset for fixed assets that are not covered by other asset types.\r\nFixed assets are physical property that you use in your business and that you do not expect to convert to cash or be used up during one year of normal operations.', 1, NULL, NULL, 3, 0, 1, 5, '2022-03-02 12:35:19', '2022-03-02 12:35:19'),
(31, 'Vehicles', '', 'Use Vehicles to track the value of vehicles your business owns and uses for business. This includes off-road vehicles, air planes, helicopters, and boats.\r\nIf you use a vehicle for both business and personal use, consult your accountant to see how you should track its value.', 1, NULL, NULL, 3, 0, 1, 5, '2022-03-02 12:35:40', '2022-03-02 12:35:40'),
(32, 'Accumulated amortisation of non-current assets', '', 'Use Accumulated amortisation of non-current assets to track how much you’ve amortised an asset whose type is Non-Current Asset.', 1, NULL, NULL, 4, 0, 1, 5, '2022-03-02 12:36:02', '2022-03-02 12:36:02'),
(33, 'Assets held for sale', '', 'Use Assets held for sale to track assets of a company that are available for sale that are not expected to be held for a long period of time.', 1, NULL, NULL, 4, 0, 1, 5, '2022-03-02 12:36:19', '2022-03-02 12:37:34'),
(34, 'Deferred tax', '', 'Use Deferred tax for tax liabilities or assets that are to be used in future accounting periods.', 1, NULL, NULL, 4, 0, 1, 5, '2022-03-02 12:36:35', '2022-03-02 12:37:28'),
(35, 'Goodwill', '', 'Use Goodwill only if you have acquired another company. It represents the intangible assets of the acquired company which gave it an advantage, such as favourable government relations, business name, outstanding credit ratings, location, superior management, customer lists, product quality, or good labour relations.', 1, NULL, NULL, 4, 0, 1, 5, '2022-03-02 12:36:54', '2022-03-02 12:36:54'),
(36, 'Intangible Assets', '', 'Use Intangible assets to track intangible assets that you plan to amortise. Examples include franchises, customer lists, copyrights, and patents.', 1, NULL, NULL, 4, 0, 1, 5, '2022-03-02 12:37:12', '2022-03-02 12:37:12'),
(37, 'Lease Buyout', '', 'Use Lease buyout to track lease payments to be applied toward the purchase of a leased asset.\r\nYou don’t track the leased asset itself until you purchase it.', 1, NULL, NULL, 4, 0, 1, 5, '2022-03-02 12:37:56', '2022-03-02 12:37:56'),
(38, 'Licences', '', 'Use Licences to track non-professional licences for permission to engage in an activity, like selling alcohol or radio broadcasting.\r\nFor fees associated with professional licences granted to individuals, use a Legal and professional fees expense account, instead.', 1, NULL, NULL, 4, 0, 1, 5, '2022-03-02 12:38:13', '2022-03-02 12:38:13'),
(39, 'Long-term investments', '', 'Use Long-term investments to track investments that have a maturity date of longer than one year.', 1, NULL, NULL, 4, 0, 1, 5, '2022-03-02 12:38:30', '2022-03-02 12:38:30'),
(40, 'Organisational Costs', '', 'Use Organisational costs to track costs incurred when forming a partnership or corporation.\r\nThe costs include the legal and accounting costs necessary to organise the company, facilitate the filings of the legal documents, and other paperwork.', 1, NULL, NULL, 4, 0, 1, 5, '2022-03-02 12:38:47', '2022-03-02 12:38:47'),
(41, 'Other non-current assets', '', 'Use Other non-current assets to track assets not covered by other types.\r\nNon-current assets are long-term assets that are expected to provide value for more than one year.', 1, NULL, NULL, 4, 0, 1, 5, '2022-03-02 12:39:03', '2022-03-02 12:39:03'),
(42, 'Security Deposits', '', 'Use Security deposits to track funds you’ve paid to cover any potential costs incurred by damage, loss, or theft.\r\nThe funds should be returned to you at the end of the contract.\r\n\r\nIf you accept down payments, advance payments, security deposits, or other kinds of deposits, use an Other Current liabilities account with the detail type Other Current liabilities.', 1, NULL, NULL, 4, 0, 1, 5, '2022-03-02 12:39:23', '2022-03-02 12:39:23'),
(43, 'Accounts Payable (A/P)', '', 'Accounts payable (also called A/P, Trade and other payables, or Creditors) tracks amounts you owe to your suppliers.\r\nWe  automatically creates one Accounts Payable account for you. Most businesses need only one.', 1, NULL, NULL, 12, 0, 1, 5, '2022-03-02 12:41:43', '2022-03-02 12:41:43'),
(44, 'Credit Card', '', 'Credit card accounts track the balance due on your business credit cards.\r\nCreate one Credit card account for each credit card account your business uses.', 1, NULL, NULL, 14, 0, 1, 5, '2022-03-02 12:42:04', '2022-03-02 12:42:04'),
(45, 'Accrued liabilities', '', 'Use Accrued Liabilities to track expenses that a business has incurred but has not yet paid. For example, pensions for companies that contribute to a pension fund for their employees for their retirement.', 1, NULL, NULL, 5, 0, 1, 5, '2022-03-02 12:42:23', '2022-03-02 12:42:23'),
(46, 'Client Trust Accounts - Liabilities', '', 'Use Client Trust accounts - liabilities to offset Client Trust accounts in assets.\r\nAmounts in these accounts are held by your business on behalf of others. They do not belong to your business, so should not appear to be yours on your balance sheet. This \"contra\" account takes care of that, as long as the two balances match.', 1, NULL, NULL, 5, 0, 1, 5, '2022-03-02 12:42:43', '2022-03-02 12:42:43'),
(47, 'Current Tax Liability', '', 'Use Current tax liability to track the total amount of taxes collected but not yet paid to the government.', 1, NULL, NULL, 5, 0, 1, 5, '2022-03-02 12:42:59', '2022-03-02 12:42:59'),
(48, 'Current portion of obligations under finance leases', '', 'Use Current portion of obligations under finance leases to track the value of lease payments due within the next 12 months.', 1, NULL, NULL, 5, 0, 1, 5, '2022-03-02 12:43:25', '2022-03-02 12:43:25'),
(49, 'Dividends payable', '', 'Use Dividends payable to track dividends that are owed to shareholders but have not yet been paid.', 1, NULL, NULL, 5, 0, 1, 5, '2022-03-02 12:43:43', '2022-03-02 12:43:43'),
(50, 'Income tax payable', '', 'Use Income tax payable to track monies that are due to pay the company’s income tax liabilties.', 1, NULL, NULL, 5, 0, 1, 5, '2022-03-02 12:43:58', '2022-03-02 12:43:58'),
(51, 'Insurance payable', '', 'Use Insurance payable to keep track of insurance amounts due.\r\nThis account is most useful for businesses with monthly recurring insurance expenses.', 1, NULL, NULL, 5, 0, 1, 5, '2022-03-02 12:44:18', '2022-03-02 12:44:18'),
(52, 'Line of Credit', '', 'Use Line of credit to track the balance due on any lines of credit your business has. Each line of credit your business has should have its own Line of credit account.', 1, NULL, NULL, 5, 0, 1, 5, '2022-03-02 12:44:36', '2022-03-02 12:44:36'),
(53, 'Loan Payable', '', 'Use Loan payable to track loans your business owes which are payable within the next twelve months.\r\nFor longer-term loans, use the Long-term liability called Notes payable, instead.', 1, NULL, NULL, 5, 0, 1, 5, '2022-03-02 12:44:53', '2022-03-02 12:44:53'),
(54, 'Other current liabilities', '', 'Use Other current liabilities to track monies owed by the company and due within one year.', 1, NULL, NULL, 5, 0, 1, 5, '2022-03-02 12:45:10', '2022-03-02 12:45:10'),
(55, 'Payroll Clearing', '', 'Use Payroll clearing to keep track of any non-tax amounts that you have deducted from employee paycheques or that you owe as a result of doing payroll. When you forward money to the appropriate suppliers, deduct the amount from the balance of this account.\r\nDo not use this account for tax amounts you have withheld or owe from paying employee wages. For those amounts, use the Payroll tax payable account instead.', 1, NULL, NULL, 5, 0, 1, 5, '2022-03-02 12:45:29', '2022-03-02 12:45:29'),
(56, 'Payroll liabilities', '', 'Use Payroll liabilities to keep track of tax amounts that you owe to government agencies as a result of paying wages. This includes taxes withheld, health care premiums, employment insurance, government pensions, etc. When you forward the money to the government agency, deduct the amount from the balance of this account.', 1, NULL, NULL, 5, 0, 1, 5, '2022-03-02 12:45:48', '2022-03-02 12:45:48'),
(57, 'Prepaid Expenses Payable', '', 'Use Prepaid expenses payable to track items such as property taxes that are due, but not yet deductible as an expense because the period they cover has not yet passed.', 1, NULL, NULL, 5, 0, 1, 5, '2022-03-02 12:46:06', '2022-03-02 12:46:06'),
(58, 'Rents in trust - Liability', '', 'Use Rents in trust - liability to offset the Rents in trust amount in assets.\r\nAmounts in these accounts are held by your business on behalf of others. They do not belong to your business, so should not appear to be yours on your balance sheet. This \"contra\" account takes care of that, as long as the two balances match.', 1, NULL, NULL, 5, 0, 1, 5, '2022-03-02 12:46:23', '2022-03-02 12:46:23'),
(59, 'Sales and service tax payable', '', 'Use Sales and service tax payable to track tax you have collected, but not yet remitted to your government tax agency. This includes value-added tax, goods and services tax, sales tax, and other consumption tax.', 1, NULL, NULL, 5, 0, 1, 5, '2022-03-02 12:46:40', '2022-03-02 12:46:40'),
(60, 'Accrued holiday payable', '', 'Use Accrued holiday payable to track holiday earned but that has not been paid out to employees.', 1, NULL, NULL, 6, 0, 1, 5, '2022-03-02 12:47:36', '2022-03-02 12:47:36'),
(61, 'Accrued non-current liabilities', '', 'Use Accrued Non-current liabilities to track expenses that a business has incurred but has not yet paid. For example, pensions for companies that contribute to a pension fund for their employees for their retirement.', 1, NULL, NULL, 6, 0, 1, 5, '2022-03-02 12:47:52', '2022-03-02 12:47:52'),
(62, 'Liabilities related to assets held for sale', '', 'Use Liabilities related to assets held for sale to track any liabilities that are directly related to assets being sold or written off.', 1, NULL, NULL, 6, 0, 1, 5, '2022-03-02 12:48:08', '2022-03-02 12:48:08'),
(63, 'Long-term debt', '', 'Use Long-term debt to track loans and obligations with a maturity of longer than one year. For example, mortgages.', 1, NULL, NULL, 6, 0, 1, 5, '2022-03-02 12:48:23', '2022-03-02 12:48:23'),
(64, 'Notes Payable', '', 'Use Notes payable to track the amounts your business owes in long-term (over twelve months) loans.\r\nFor shorter loans, use the Current liability account type called Loan payable, instead.', 1, NULL, NULL, 6, 0, 1, 5, '2022-03-02 12:48:38', '2022-03-02 12:48:38'),
(65, 'Other non-current liabilities', '', 'Use Other non-current liabilities to track liabilities due in more than twelve months that don’t fit the other Non-Current liability account types.', 1, NULL, NULL, 6, 0, 1, 5, '2022-03-02 12:48:54', '2022-03-02 12:48:54'),
(66, 'Shareholder Notes Payable', '', 'Use Shareholder notes payable to track long-term loan balances your business owes its shareholders.', 1, NULL, NULL, 6, 0, 1, 5, '2022-03-02 12:49:10', '2022-03-02 12:49:10'),
(67, 'Accumulated adjustment', '', 'Some corporations use this account to track adjustments to owner’s equity that are not attributable to net income.', 1, NULL, NULL, 7, 0, 1, 5, '2022-03-02 12:49:46', '2022-03-02 12:49:46'),
(68, 'Dividend disbursed', '', 'Use Dividend disbursed to track a payment given to its shareholders out of the company’s retained earnings.', 1, NULL, NULL, 7, 0, 1, 5, '2022-03-02 12:50:01', '2022-03-02 12:50:01'),
(69, 'Equity in earnings of subsidiaries', '', 'Use Equity in earnings of subsidiaries to track the original investment in shares of subsidiaries plus the share of earnings or losses from the operations of the subsidiary.', 1, NULL, NULL, 7, 0, 1, 5, '2022-03-02 12:50:14', '2022-03-02 12:50:14'),
(70, 'Opening Balance Equity', '', 'QuickBooks Online Plus creates this account the first time you enter an opening balance for a balance sheet account.\r\nAs you enter opening balances, QuickBooks Online Plus records the amounts in Opening balance equity. This ensures that you have a correct balance sheet for your company, even before you’ve finished entering all your company’s assets and liabilities.', 1, NULL, NULL, 7, 0, 1, 5, '2022-03-02 12:50:40', '2022-03-02 12:50:40'),
(71, 'Ordinary shares', '', 'Corporations use Ordinary shares to track its ordinary shares in the hands of shareholders. The amount in this account should be the stated (or par) value of the stock.', 1, NULL, NULL, 7, 0, 1, 5, '2022-03-02 12:50:56', '2022-03-02 12:50:56'),
(72, 'Other comprehensive income', '', 'Use Other comprehensive income to track the increases or decreases in income from various businesses that is not yet absorbed by the company.', 1, NULL, NULL, 7, 0, 1, 5, '2022-03-02 12:51:13', '2022-03-02 12:51:13'),
(73, 'Owner\'s Equity', '', 'Corporations use Owner’s equity to show the cumulative net income or loss of their business as of the beginning of the financial year.', 1, NULL, NULL, 7, 0, 1, 5, '2022-03-02 12:51:28', '2022-03-02 12:51:28'),
(74, 'Paid-in capital or surplus', '', 'Corporations use Paid-in capital to track amounts received from shareholders in exchange for shares that are over and above the shares’ stated (or par) value.', 1, NULL, NULL, 7, 0, 1, 5, '2022-03-02 12:51:44', '2022-03-02 12:51:44'),
(75, 'Partner Contributions', '', 'Partnerships use Partner contributions to track amounts partners contribute to the partnership during the year.', 1, NULL, NULL, 7, 0, 1, 5, '2022-03-02 12:52:02', '2022-03-02 12:52:02'),
(76, 'Partner Distributions', '', 'Partnerships use Partner distributions to track amounts distributed by the partnership to its partners during the year.\r\nDon’t use this for regular payments to partners for interest or service. For regular payments, use a Guaranteed payments account (a Expense account in Payroll expenses), instead.', 1, NULL, NULL, 7, 0, 1, 5, '2022-03-02 12:52:19', '2022-03-02 12:52:19'),
(77, 'Partner\'s Equity', '', 'Partnerships use Partner’s equity to show the income remaining in the partnership for each partner as of the end of the prior year.', 1, NULL, NULL, 7, 0, 1, 5, '2022-03-02 12:52:34', '2022-03-02 12:52:34'),
(78, 'Preferred shares', '', 'Corporations use this account to track its preferred shares in the hands of shareholders. The amount in this account should be the stated (or par) value of the shares.', 1, NULL, NULL, 7, 0, 1, 5, '2022-03-02 12:52:50', '2022-03-02 12:52:50'),
(79, 'Retained Earnings', '', 'QuickBooks Online Plus adds this account when you create your company.\r\nRetained earnings tracks net income from previous financial years.\r\n\r\nQuickBooks Online Plus automatically transfers your profit (or loss) to Retained earnings at the end of each financial year.', 1, NULL, NULL, 7, 0, 1, 5, '2022-03-02 12:53:06', '2022-03-02 12:53:06'),
(80, 'Share capital', '', 'Use Share capital to track the funds raised by issuing shares.', 1, NULL, NULL, 7, 0, 1, 5, '2022-03-02 12:53:21', '2022-03-02 12:53:21'),
(81, 'Treasury Shares', '', 'Corporations use Treasury shares to track amounts paid by the corporation to buy its own shares back from shareholders.', 1, NULL, NULL, 7, 0, 1, 5, '2022-03-02 12:53:37', '2022-03-02 12:53:37'),
(82, 'Discounts/Refunds Given', '', 'Use Discounts/refunds given to track discounts you give to customers.\r\nThis account typically has a negative balance so it offsets other income.\r\n\r\nFor discounts from suppliers, use an expense account, instead.', 1, NULL, NULL, 8, 0, 1, 5, '2022-03-02 12:54:41', '2022-03-02 12:54:41'),
(83, 'Non-Profit Income', '', 'Use Non-profit income to track money coming in if you are a non-profit organisation.', 1, NULL, NULL, 8, 0, 1, 5, '2022-03-02 12:54:57', '2022-03-02 12:54:57'),
(84, 'Other Primary Income', '', 'Use Other primary income to track income from normal business operations that doesn’t fall into another Income type.', 1, NULL, NULL, 8, 0, 1, 5, '2022-03-02 12:55:13', '2022-03-02 12:55:13'),
(85, 'Revenue - General', '', 'Use Revenue - General to track income from normal business operations that do not fit under any other category.', 1, NULL, NULL, 8, 0, 1, 5, '2022-03-02 12:55:29', '2022-03-02 12:55:29'),
(86, 'Sales - retail', 's-1', 'Use Sales - retail to track sales of goods/services that have a mark-up cost to consumers.', 1, NULL, NULL, 8, 0, 1, 1, '2022-03-02 12:55:45', '2022-03-15 11:35:24'),
(87, 'Sales - wholesale', '', 'Use Sales - wholesale to track the sale of goods in quantity for resale purposes.', 1, NULL, NULL, 8, 0, 1, 5, '2022-03-02 12:56:03', '2022-03-02 12:56:03'),
(88, 'Sales of Product Income', '', 'Use Sales of product income to track income from selling products.\r\nThis can include all kinds of products, like crops and livestock, rental fees, performances, and food served.', 1, NULL, NULL, 8, 0, 1, 5, '2022-03-02 12:56:22', '2022-03-02 12:56:22'),
(89, 'Service/Fee Income', '', 'Use Service/fee income to track income from services you perform or ordinary usage fees you charge.\r\nFor fees customers pay you for late payments or other uncommon situations, use an Other Income account type called Other miscellaneous income, instead.', 1, NULL, NULL, 8, 0, 1, 5, '2022-03-02 12:56:41', '2022-03-02 12:56:41'),
(90, 'Unapplied Cash Payment Income', '', 'Unapplied Cash Payment Income reports the Cash Basis income from customers payments you’ve received but not applied to invoices or charges. In general, you would never use this directly on a purchase or sale transaction.', 1, NULL, NULL, 8, 0, 1, 5, '2022-03-02 12:57:01', '2022-03-02 12:57:01'),
(91, 'Dividend income', '', 'Use Dividend income to track taxable dividends from investments.', 1, NULL, NULL, 11, 0, 1, 5, '2022-03-02 12:57:19', '2022-03-02 12:57:19'),
(92, 'Interest earned', '', 'Use Interest earned to track interest from bank or savings accounts, investments, or interest payments to you on loans your business made.', 1, NULL, NULL, 11, 0, 1, 5, '2022-03-02 12:57:36', '2022-03-02 12:57:36'),
(93, 'Loss on disposal of assets', '', 'Use Loss on disposal of assets to track losses realised on the disposal of assets.', 1, NULL, NULL, 11, 0, 1, 5, '2022-03-02 12:57:54', '2022-03-02 12:57:54'),
(94, 'Other Investment Income', '', 'Use Other investment income to track other types of investment income that isn’t from dividends or interest.', 1, NULL, NULL, 11, 0, 1, 5, '2022-03-02 12:58:11', '2022-03-02 12:58:11'),
(95, 'Other Miscellaneous Income', '', 'Use Other miscellaneous income to track income that isn’t from normal business operations, and doesn’t fall into another Other Income type.', 1, NULL, NULL, 11, 0, 1, 5, '2022-03-02 12:58:28', '2022-03-02 12:58:28'),
(96, 'Other operating income', '', 'Use Other operating income to track income from activities other than normal business operations. For example, Investment interest, foreign exchange gains, and rent income.', 1, NULL, NULL, 11, 0, 1, 5, '2022-03-02 12:58:45', '2022-03-02 12:58:45'),
(97, 'Tax-Exempt Interest', '', 'Use Tax-exempt interest to record interest that isn’t taxable, such as interest on money in tax-exempt retirement accounts, or interest from tax-exempt bonds.', 1, NULL, NULL, 11, 0, 1, 5, '2022-03-02 12:59:02', '2022-03-02 12:59:02'),
(98, 'Unrealised loss on securities, net of tax', '', 'Use Unrealised loss on securities, net of tax to track losses on securities that have occurred but are yet been realised through a transaction. For example, shares whose value has fallen but that are still being held.', 1, NULL, NULL, 11, 0, 1, 5, '2022-03-02 12:59:18', '2022-03-02 12:59:18'),
(99, 'Cost of labour - COS', '', 'Use Cost of labour - COS to track the cost of paying employees to produce products or supply services.\r\nIt includes all employment costs, including food and transportation, if applicable.', 1, NULL, NULL, 9, 0, 1, 5, '2022-03-02 12:59:38', '2022-03-02 12:59:38'),
(100, 'Equipment rental - COS', '', 'Use Equipment rental - COS to track the cost of renting equipment to produce products or services.\r\nIf you purchase equipment, use a Fixed Asset account type called Machinery and equipment.', 1, NULL, NULL, 9, 0, 1, 5, '2022-03-02 12:59:53', '2022-03-02 12:59:53'),
(101, 'Freight and delivery - COS', '', 'Use Freight and delivery - COS to track the cost of shipping/delivery of obtaining raw materials and producing finished goods for resale.', 1, NULL, NULL, 9, 0, 1, 5, '2022-03-02 13:00:08', '2022-03-02 13:00:08'),
(102, 'Other costs of sales - COS', '', 'Use Other costs of sales - COS to track costs related to services or sales that you provide that don’t fall into another Cost of Sales type.', 1, NULL, NULL, 9, 0, 1, 5, '2022-03-02 13:00:24', '2022-03-02 13:00:24'),
(103, 'Supplies and materials - COS', '', 'Use Supplies and materials - COS to track the cost of raw goods and parts used or consumed when producing a product or providing a service.', 1, NULL, NULL, 9, 0, 1, 5, '2022-03-02 13:00:40', '2022-03-02 13:00:40'),
(104, 'Advertising/Promotional', '', 'Use Advertising/promotional to track money spent promoting your company.\r\nYou may want different accounts of this type to track different promotional efforts (Yellow Pages, newspaper, radio, flyers, events, and so on).\r\n\r\nIf the promotion effort is a meal, use Promotional meals instead.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:01:05', '2022-03-02 13:01:05'),
(105, 'Amortisation expense', '', 'Use Amortisation expense to track writing off of assets (such as intangible assets or investments) over the projected life of the assets.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:01:31', '2022-03-02 13:01:31'),
(106, 'Auto', '', 'Use Auto to track costs associated with vehicles.\r\nYou may want different accounts of this type to track petrol, repairs, and maintenance.\r\n\r\nIf your business owns a car or lorry, you may want to track its value as a Fixed Asset, in addition to tracking its expenses.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:02:02', '2022-03-02 13:02:02'),
(107, 'Bad debts', '', 'Use Bad debt to track debt you have written off.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:02:18', '2022-03-02 13:02:18'),
(108, 'Bank charges', '', 'Use Bank charges for any fees you pay to financial institutions.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:02:34', '2022-03-02 13:02:34'),
(109, 'Charitable Contributions', '', 'Use Charitable contributions to track gifts to charity.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:02:50', '2022-03-02 13:02:50'),
(110, 'Commissions and fees', '', 'Use Commissions and fees to track amounts paid to agents (such as brokers) in order for them to execute a trade.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:03:05', '2022-03-02 13:03:05'),
(111, 'Cost of Labour', '', 'Use Cost of labour to track the cost of paying employees to produce products or supply services.\r\nIt includes all employment costs, including food and transportation, if applicable.\r\n\r\nThis account is also available as a Cost of Sales (COS) account.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:03:33', '2022-03-02 13:03:33'),
(112, 'Dues and Subscriptions', '', 'Use Dues and subscriptions to track dues and subscriptions related to running your business.\r\nYou may want different accounts of this type for professional dues, fees for licences that can’t be transferred, magazines, newspapers, industry publications, or service subscriptions.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:03:48', '2022-03-02 13:03:48'),
(113, 'Equipment rental', '', 'Use Equipment rental to track the cost of renting equipment to produce products or services.\r\nThis account is also available as a Cost of Sales account.\r\n\r\nIf you purchase equipment, use a Fixed asset account type called Machinery and equipment.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:04:06', '2022-03-02 13:04:06'),
(114, 'Finance costs', '', 'Use Finance costs to track the costs of obtaining loans or credit.\r\nExamples of finance costs would be credit card fees, interest and mortgage costs.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:04:23', '2022-03-02 13:04:23'),
(115, 'Income tax expense', '', 'Use Income tax expense to track income taxes that the company has paid to meet their tax obligations.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:04:41', '2022-03-02 13:04:41'),
(116, 'Insurance', '', 'Use Insurance to track insurance payments.\r\nYou may want different accounts of this type for different types of insurance (auto, general liability, and so on).', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:04:57', '2022-03-02 13:04:57'),
(117, 'Interest paid', '', 'Use Interest paid for all types of interest you pay, including mortgage interest, finance charges on credit cards, or interest on loans.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:05:13', '2022-03-02 13:05:13'),
(118, 'Legal and professional fees', '', 'Use Legal and professional fees to track money to pay to professionals to help you run your business.\r\nYou may want different accounts of this type for payments to your accountant, attorney, or other consultants.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:05:29', '2022-03-02 13:05:29'),
(119, 'Loss on discontinued operations, net of tax', '', 'Use Loss on discontinued operations, net of tax to track the loss realised when a part of the business ceases to operate or when a product line is discontinued.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:05:45', '2022-03-02 13:05:45'),
(120, 'Management compensation', '', 'Use Management compensation to track remuneration paid to Management, Executives and non-Executives. For example, salary, fees, and benefits.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:06:02', '2022-03-02 13:06:02'),
(121, 'Meals and entertainment', '', 'Use Meals and entertainment to track how much you spend on dining with your employees to promote morale.\r\nIf you dine with a customer to promote your business, use a Promotional meals account, instead.\r\n\r\nBe sure to include who you ate with and the purpose of the meal when you enter the transaction.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:06:18', '2022-03-02 13:06:18'),
(122, 'Office/General Administrative Expenses', '', 'Use Office/general administrative expenses to track all types of general or office-related expenses.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:06:38', '2022-03-02 13:06:38'),
(123, 'Other Miscellaneous Service Cost', '', 'Use Other miscellaneous service cost to track costs related to providing services that don’t fall into another Expense type.\r\nThis account is also available as a Cost of Sales (COS) account.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:06:52', '2022-03-02 13:06:52'),
(124, 'Other selling expenses', '', 'Use Other selling expenses to track selling expenses incurred that do not fall under any other category.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:07:08', '2022-03-02 13:07:08'),
(125, 'Payroll Expenses', '', 'Use Payroll expenses to track payroll expenses. You may want different accounts of this type for things like:\r\nCompensation of officers\r\nGuaranteed payments\r\nWorkers compensation\r\nSalaries and wages\r\nPayroll taxes', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:07:25', '2022-03-02 13:07:25'),
(126, 'Rent or Lease of Buildings', '', 'Use Rent or lease of buildings to track rent payments you make.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:07:40', '2022-03-02 13:07:40'),
(127, 'Repair and maintenance', '', 'Use Repair and maintenance to track any repairs and periodic maintenance fees.\r\nYou may want different accounts of this type to track different types repair & maintenance expenses (auto, equipment, landscape, and so on).', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:07:55', '2022-03-02 13:07:55'),
(128, 'Shipping and delivery expense', '', 'Use Shipping and delivery expense to track the cost of shipping and delivery of goods to customers.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:08:10', '2022-03-02 13:08:10'),
(129, 'Supplies and materials', '', 'Use Supplies & materials to track the cost of raw goods and parts used or consumed when producing a product or providing a service.\r\nThis account is also available as a Cost of Sales account.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:08:26', '2022-03-02 13:08:26'),
(130, 'Taxes Paid', '', 'Use Taxes paid to track taxes you pay.\r\nYou may want different accounts of this type for payments to different tax agencies.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:08:40', '2022-03-02 13:08:40'),
(131, 'Travel expenses - general and admin expenses', '', 'Use Travel expenses - general and admin expenses to track travelling costs incurred that are not directly related to the revenue-generating operation of the company. For example, flight tickets and hotel costs when performing job interviews.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:08:56', '2022-03-02 13:08:56'),
(132, 'Travel expenses - selling expense', '', 'Use Travel expenses - selling expense to track travelling costs incurred that are directly related to the revenue-generating operation of the company. For example, flight tickets and hotel costs when selling products and services.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:09:11', '2022-03-02 13:09:11'),
(133, 'Unapplied Cash Bill Payment Expense', '', 'Unapplied Cash Bill Payment Expense reports the Cash Basis expense from supplier payment cheques you’ve sent but not yet applied to supplier bills. In general, you would never use this directly on a purchase or sale transaction.', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:09:26', '2022-03-02 13:09:26'),
(134, 'Utilities', '', 'Use Utilities to track utility payments.\r\nYou may want different accounts of this type to track different types of utility payments (gas and electric, telephone, water, and so on).', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-02 13:09:42', '2022-03-02 13:09:42'),
(135, 'Amortisation', '', 'Use Amortisation to track amortisation of intangible assets.\r\nAmortisation is spreading the cost of an intangible asset over its useful life, like depreciation of fixed assets.\r\n\r\nYou may want an amortisation account for each intangible asset you have.', 1, NULL, NULL, 15, 0, 1, 5, '2022-03-02 13:10:46', '2022-03-02 13:10:46'),
(136, 'Depreciation', '', 'Use Depreciation to track how much you depreciate fixed assets.\r\nYou may want a depreciation account for each fixed asset you have.', 1, NULL, NULL, 15, 0, 1, 5, '2022-03-02 13:11:00', '2022-03-02 13:11:00'),
(137, 'Exchange Gain or Loss', '', 'Use Exchange Gain or Loss to track gains or losses that occur as a result of exchange rate fluctuations.', 1, NULL, NULL, 15, 0, 1, 5, '2022-03-02 13:11:13', '2022-03-02 13:11:13'),
(138, 'Other Expense', '', 'Use Other expense to track unusual or infrequent expenses that don’t fall into another Other Expense type.', 1, NULL, NULL, 15, 0, 1, 5, '2022-03-02 13:11:28', '2022-03-02 13:11:28'),
(139, 'Penalties and settlements', '', 'Use Penalties and settlements to track money you pay for violating laws or regulations, settling lawsuits, or other penalties.', 1, NULL, NULL, 15, 0, 1, 5, '2022-03-02 13:11:41', '2022-03-02 13:11:41'),
(140, 'Cost of goods sold', '', '', 1, NULL, NULL, 9, 0, 1, 5, '2022-03-09 11:48:02', '2022-03-09 11:48:02'),
(141, 'Discount Received', '', '', 1, NULL, NULL, 11, 0, 1, 5, '2022-03-09 11:51:58', '2022-03-09 11:51:58'),
(142, 'Discount Payment', '', '', 1, NULL, NULL, 10, 0, 1, 5, '2022-03-09 11:54:31', '2022-03-09 11:54:31');

-- --------------------------------------------------------

--
-- Table structure for table `account_heads`
--

CREATE TABLE `account_heads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_account_id` int(11) DEFAULT NULL,
  `_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_heads`
--

INSERT INTO `account_heads` (`id`, `_name`, `_account_id`, `_code`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Cash and cash equivalents', 1, 'C-1', 1, NULL, NULL, '2022-02-28 17:13:07', '2022-03-15 11:45:54'),
(2, 'Current assets', 1, 'ca-1', 1, NULL, NULL, '2022-02-28 17:13:17', '2022-03-15 11:46:11'),
(3, 'Fixed assets', 1, 'fa-1', 1, NULL, NULL, '2022-02-28 17:13:27', '2022-03-15 11:46:22'),
(4, 'Non-current assets', 1, 'nca-1', 1, NULL, NULL, '2022-02-28 17:13:35', '2022-03-15 11:46:36'),
(5, 'Current liabilities', 2, 'cl', 1, NULL, NULL, '2022-02-28 17:13:44', '2022-03-17 10:06:18'),
(6, 'Non-current liabilities', 2, 'L-2', 1, NULL, NULL, '2022-02-28 17:13:51', '2022-03-15 11:21:43'),
(7, 'Owner\'s equity', 5, 'O-1', 1, NULL, NULL, '2022-02-28 17:13:58', '2022-03-15 11:22:02'),
(8, 'Income', 3, 'I-1', 1, NULL, NULL, '2022-02-28 17:14:06', '2022-03-15 11:22:13'),
(9, 'Cost of sales', 4, 'cos-1', 1, NULL, NULL, '2022-02-28 17:14:14', '2022-03-15 11:22:31'),
(10, 'Expenses', 4, 'E-2', 1, NULL, NULL, '2022-02-28 17:14:20', '2022-03-15 11:22:47'),
(11, 'Other income', 3, 'OI-1', 1, NULL, NULL, '2022-02-28 17:14:24', '2022-03-15 11:23:07'),
(12, 'Accounts Payable (A/P)', 2, 'AP', 1, NULL, NULL, '2022-02-28 17:14:27', '2022-03-02 12:40:26'),
(13, 'Accounts receivable (A/R)', 1, 'AR', 1, NULL, NULL, '2022-02-28 17:14:31', '2022-03-15 11:23:25'),
(14, 'Credit card', 1, 'AS-01', 1, NULL, NULL, '2022-02-28 17:11:10', '2022-03-01 11:36:51'),
(15, 'Other Expenses', 4, 'OE-1', 1, NULL, NULL, '2022-03-02 13:10:25', '2022-03-15 11:23:41');

-- --------------------------------------------------------

--
-- Table structure for table `account_ledgers`
--

CREATE TABLE `account_ledgers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_account_group_id` bigint(20) UNSIGNED NOT NULL,
  `_account_head_id` bigint(20) DEFAULT NULL,
  `_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_nid` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_other_document` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_credit_limit` double(15,4) NOT NULL DEFAULT 0.0000,
  `_balance` double(15,4) NOT NULL DEFAULT 0.0000,
  `_branch_id` int(11) DEFAULT NULL,
  `_is_user` int(11) NOT NULL DEFAULT 0,
  `_user_id` int(11) DEFAULT NULL,
  `_is_sales_form` int(11) NOT NULL DEFAULT 0,
  `_is_purchase_form` int(11) NOT NULL DEFAULT 0,
  `_is_all_branch` int(11) NOT NULL DEFAULT 0,
  `_short` int(11) NOT NULL DEFAULT 5,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_show` int(11) NOT NULL DEFAULT 1 COMMENT '0=not show,1 =income statement,2 = balance sheet',
  `_note` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_ledgers`
--

INSERT INTO `account_ledgers` (`id`, `_account_group_id`, `_account_head_id`, `_name`, `_code`, `_image`, `_nid`, `_other_document`, `_email`, `_phone`, `_address`, `_credit_limit`, `_balance`, `_branch_id`, `_is_user`, `_user_id`, `_is_sales_form`, `_is_purchase_form`, `_is_all_branch`, `_short`, `_status`, `_show`, `_note`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 16, 1, 'Cash In Hand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 15588.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', '1-admin', '2022-03-09 11:46:36', '2022-05-25 04:18:32'),
(2, 129, 10, 'Purchase', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 1, 1, 0, NULL, '1-admin', '1-admin', '2022-03-09 11:48:41', '2022-04-18 14:45:23'),
(3, 129, 10, 'Purchase Return', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, NULL, '1-admin', '1-admin', '2022-03-09 11:49:00', '2022-04-18 14:45:23'),
(4, 85, 8, 'Sales', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, -419589.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 11:49:50', '2022-03-16 11:06:54'),
(5, 85, 8, 'Sales Return', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 2590.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 11:50:46', '2022-03-16 11:06:54'),
(6, 96, 11, 'Purchase Discount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 46.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 11:51:26', '2022-03-16 11:06:54'),
(7, 6, 2, 'Inventory', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 544430.4990, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', '1-admin', '2022-03-09 11:52:42', '2022-03-10 09:28:42'),
(8, 142, 10, 'Sales Discount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 646.5000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 11:55:02', '2022-03-16 11:06:54'),
(9, 110, 10, 'Commission on sales', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 11:56:06', '2022-03-16 11:06:54'),
(10, 115, 10, 'VAT Payable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 11:56:44', '2022-03-16 11:06:54'),
(11, 124, 10, 'Conveyance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 11:57:27', '2022-03-16 11:06:54'),
(12, 134, 10, 'Electricity Bill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 11:57:57', '2022-03-16 11:06:54'),
(13, 122, 10, 'Cleaning Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 11:58:27', '2022-03-16 11:06:54'),
(14, 127, 10, 'Repair & Maintenance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 11:58:49', '2022-03-16 11:06:54'),
(15, 122, 10, 'Entertainment Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 11:59:12', '2022-03-16 11:06:54'),
(16, 122, 10, 'Printing Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 11:59:28', '2022-03-16 11:06:54'),
(17, 122, 10, 'Stationery Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 11:59:46', '2022-03-16 11:06:54'),
(18, 128, 10, 'Postage & Courier Bill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:00:20', '2022-03-16 11:06:54'),
(19, 134, 10, 'Internet Bill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:00:44', '2022-03-16 11:06:54'),
(20, 131, 10, 'Travelling Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:01:08', '2022-03-16 11:06:54'),
(21, 122, 10, 'License Renewal Fee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:01:58', '2022-03-16 11:06:54'),
(22, 118, 10, 'Audit Fee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:02:15', '2022-03-16 11:06:54'),
(23, 126, 10, 'Office Rent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:02:35', '2022-03-16 11:06:54'),
(24, 134, 10, 'Fuel & Oil Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:03:19', '2022-03-16 11:06:54'),
(25, 116, 10, 'Insurance Premium', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:03:32', '2022-03-16 11:06:54'),
(26, 123, 10, 'Miscellaneous Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:04:18', '2022-03-16 11:06:54'),
(27, 122, 10, 'Medical Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:06:48', '2022-03-16 11:06:54'),
(28, 104, 10, 'Business Promotional Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:07:05', '2022-03-16 11:06:54'),
(29, 109, 10, 'Donation Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:08:44', '2022-03-16 11:06:54'),
(30, 121, 10, 'Food Allowance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:08:58', '2022-03-16 11:06:54'),
(31, 104, 10, 'Marketing Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:09:25', '2022-03-16 11:06:54'),
(32, 123, 10, 'Other Office Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:09:48', '2022-03-16 11:06:54'),
(33, 122, 10, 'News Paper & Cable-Tv Bill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:10:05', '2022-03-16 11:06:54'),
(34, 130, 10, 'Tax & VAT Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:10:37', '2022-03-16 11:06:54'),
(35, 118, 10, 'Legal Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:10:52', '2022-03-16 11:06:54'),
(36, 108, 10, 'Bank Charges', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:11:11', '2022-03-16 11:06:54'),
(37, 106, 10, 'Rounding Off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:11:51', '2022-03-16 11:06:54'),
(38, 96, 11, 'Rounding Add', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:12:23', '2022-03-16 11:06:54'),
(39, 43, 12, 'Greenland Services Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:17:20', '2022-03-09 12:17:20'),
(40, 43, 12, 'Just Juice Limited.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:17:31', '2022-03-09 12:17:31'),
(41, 15, 1, 'Trust Bank Limited', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', '1-admin', '2022-03-09 12:17:50', '2022-03-09 12:18:24'),
(42, 89, 8, 'Software Service Sales', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:18:47', '2022-03-16 11:06:54'),
(43, 89, 8, 'Monthly Subscription', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:19:16', '2022-03-16 11:06:54'),
(44, 43, 12, 'United General Electric Company Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:19:36', '2022-03-09 12:19:36'),
(45, 29, 3, 'Computer-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:20:00', '2022-03-09 12:20:00'),
(46, 125, 10, 'Salary', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:20:49', '2022-03-16 11:06:54'),
(47, 43, 12, 'Hasten Business Consulting', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:21:21', '2022-03-09 12:21:21'),
(48, 43, 12, 'Rana Builders (Pvt) Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-09 12:21:33', '2022-03-09 12:21:33'),
(49, 73, 7, 'Capital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, -7039266.7140, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', '1-admin', '2022-03-09 12:22:45', '2022-05-25 03:55:48'),
(50, 140, 9, 'Cost of goods sold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 405941.0900, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-03-16 10:44:00', '2022-03-16 11:06:54'),
(51, 47, 5, 'Purchase VAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-04-15 11:41:21', '2022-04-15 11:41:21'),
(52, 43, 12, 'Farhad Ali', 'Dhaka', NULL, NULL, NULL, 'farhadli05@gmail.com', NULL, 'Dhaka', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-04-17 13:53:55', '2022-04-17 13:53:55'),
(53, 43, 12, 'Japan Bangla Company', 'Dhaka-1', NULL, NULL, NULL, 'japan@gmail.com', NULL, 'Dhaka', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', '1-admin', '2022-04-17 14:00:05', '2022-04-27 01:11:33'),
(54, 56, 5, 'SR-Alam', 'SR-01', NULL, NULL, NULL, NULL, NULL, 'Dhaka', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-04-27 10:12:26', '2022-04-27 10:12:26'),
(55, 56, 5, 'SR-Kamal', 'SR-02', NULL, NULL, NULL, NULL, NULL, 'Natore', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-04-27 10:12:54', '2022-04-27 10:12:54'),
(56, 56, 5, 'DM-Abul', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-04-27 10:13:16', '2022-04-27 10:13:16'),
(57, 56, 5, 'DM-Milon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-04-27 10:13:31', '2022-04-27 10:13:31'),
(58, 43, 12, 'Opening Inventory Adjustment', NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(59, 43, 12, 'Manikganj Poultry Feed (Md Ayub Ali)', NULL, NULL, NULL, NULL, NULL, '+8801748918975', 'Horali Manson,Bus Stand,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(60, 43, 12, 'Cp Company', NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(61, 43, 12, 'AMan Feed Company', NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(62, 43, 12, 'Atapatu', NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(63, 43, 12, 'Ranatunga', NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(64, 43, 12, 'Renata Limited', NULL, NULL, NULL, NULL, NULL, '+8801847128233', 'Mirpur,Dhaka,Bangladesh.', 0.0000, 2188.2020, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(65, 43, 12, 'R.R.P Agro Farms', NULL, NULL, NULL, NULL, NULL, '+8801708417641', 'RRP Garden,B-15/1,Shimultola,Jaleshwor,Savar,Dhaka.', 0.0000, -4990012.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(66, 43, 12, 'Unkonwn Company', NULL, NULL, NULL, NULL, NULL, '+8801847128233', 'Mirpur,Dhaka,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(67, 43, 12, 'Kazi Farms Limited (CC-Mani032)', NULL, NULL, NULL, NULL, NULL, '+8801714071395', 'Dhaka,Bangladesh.', 0.0000, 564.7500, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(68, 43, 12, 'R.R.P Breeder Farms', NULL, NULL, NULL, NULL, NULL, '+8801708417641', 'Ishwardi,Pabna,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(69, 43, 12, 'Solid Hacharies Limited', NULL, NULL, NULL, NULL, NULL, '+8801704173707', 'Gazipur,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(70, 43, 12, 'Paragon Poultry Limited (CC-100434)', NULL, NULL, NULL, NULL, NULL, '+8801313034413', 'Jamgora,Ashulia,Savar,Dhaka.', 0.0000, 2820.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(71, 43, 12, 'New Hope Feed Mill BD Ltd.', NULL, NULL, NULL, NULL, NULL, '+8801722759848', 'Gazipur,Bangladesh.', 0.0000, -1065924.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(72, 43, 12, 'New Hope Farms BD Ltd.', NULL, NULL, NULL, NULL, NULL, '+8801704979898', 'Gazipur,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(73, 43, 12, 'ACI Limited', NULL, NULL, NULL, NULL, NULL, '+8801723173187', 'Dhaka,Bangladesh.', 0.0000, -59127.1890, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(74, 43, 12, 'Elanco Bangladesh Limited', NULL, NULL, NULL, NULL, NULL, '+8801713241669', 'Dhaka,Bangladesh.', 0.0000, -48704.1180, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(75, 43, 12, 'Agrovet Pharma', NULL, NULL, NULL, NULL, NULL, '+8801914242832', 'Dhaka,Bangladesh.', 0.0000, -3890.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(76, 43, 12, 'Pharma & Firm', NULL, NULL, NULL, NULL, NULL, '+8801970010912,+8801718000489', 'Dhaka,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(77, 43, 12, 'FnF Pharmaceuticals', NULL, NULL, NULL, NULL, NULL, '+8801711150175', 'Dhaka,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(78, 43, 12, 'Avansis Bangladesh', NULL, NULL, NULL, NULL, NULL, '+8801718964622', 'Manikganj,Dhaka,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(79, 43, 12, 'Avesta Agrovet', NULL, NULL, NULL, NULL, NULL, '+8801799395192', 'Dhaka,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(80, 43, 12, 'Impex Marketing Limited', NULL, NULL, NULL, NULL, NULL, '+8801777761411', 'Dhaka,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(81, 43, 12, 'Eon Animal Health Products Ltd.', NULL, NULL, NULL, NULL, NULL, '+8801713249403', 'Gazipur,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(82, 43, 12, 'Opening Stock', NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(83, 43, 12, 'Rafique Medicine Bangladesh', NULL, NULL, NULL, NULL, NULL, '+8801741547492', 'Ishwardi,Pabna,Bangladesh.', 0.0000, -7012.5000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(84, 43, 12, 'Dr Mehedi Hasan', NULL, NULL, NULL, NULL, NULL, '+8801722759848', 'Joyra,Manikganj.', 0.0000, -100000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(85, 43, 12, 'Mohammad Rasel Molla', NULL, NULL, NULL, NULL, NULL, '+8801671125045', 'Nimtoli Bazar,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(86, 43, 12, 'Balaka Poultry Complex (MD Kamal Hossain)', NULL, NULL, NULL, NULL, NULL, '+8801711954069, +8801923969497', 'Nobab Super Market,Bus Stand,Manikganj.', 0.0000, 26400.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(87, 43, 12, 'Brother\'s Poultry & Dairy Medicine Corner (MD Mizanur Rahaman)', NULL, NULL, NULL, NULL, NULL, '+8801740573672', 'Ranu Super Market,Joyra College Road,Manikganj.', 0.0000, 30.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(88, 43, 12, 'Bismillah Business Center (MD Shahin Mia Hasin)', NULL, NULL, NULL, NULL, NULL, '+8801765076063', 'Baniazuri Bus Stand,Tora,Ghior,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(89, 43, 12, 'M/S Abir Traders (MD Zakir Hossain)', NULL, NULL, NULL, NULL, NULL, '+8801750181777, +8801956930172', 'Joyra College Road,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(90, 43, 12, 'M/S Maa Poultry & Dairy Medicine Corner (Md Delower Hossain)', NULL, NULL, NULL, NULL, NULL, '+8801710950518', 'Joyra Road,Bus Stand,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(91, 43, 12, 'M/S Sifat Poultry Feed (Md Towhid Mahmud Sujon)', NULL, NULL, NULL, NULL, NULL, '+8801708949409', 'Joyra College Road,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(92, 43, 12, 'Mayer Doa Poultry Feed (Md Anisur Rahaman Anis)', NULL, NULL, NULL, NULL, NULL, '+8801712170653', 'Bewtha Ghat,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(93, 43, 12, 'Bhai Bhai Poultry Farm (MD Lucky Chowdhury)', NULL, NULL, NULL, NULL, NULL, '+8801790998854', 'Bewtha Mas Bazar,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(94, 43, 12, 'Eng. Bengir Ahmed', NULL, NULL, NULL, NULL, NULL, '+8801711988761', 'Badda,Dhaka.', 0.0000, -200000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(95, 43, 12, 'Karz-A-Hasana', NULL, NULL, NULL, NULL, NULL, 'N/A', 'Bangladesh', 0.0000, -150000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(96, 43, 12, 'Mama Vagina Poultry & Dairy Medicine (Md Shihabur Rahaman Babu)', NULL, NULL, NULL, NULL, NULL, '+8801712464426', 'Bus Stand,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(97, 43, 12, 'Mayer Charon Poultry Farm (Uaday Saha)', NULL, NULL, NULL, NULL, NULL, '+8801775982362', 'Borai,Manikganj.', 0.0000, -32500.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(98, 43, 12, 'Incepta Pharmaceuticals Ltd.', NULL, NULL, NULL, NULL, NULL, '+8801674203780', 'Dhaka,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(99, 43, 12, 'Newtec Pharmaceuticals Ltd.', NULL, NULL, NULL, NULL, NULL, '+8801766201962', 'Dhaka,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(100, 43, 12, 'M/S Rasin Enterprise (Md Habibur Rahaman)', NULL, NULL, NULL, NULL, NULL, '+8801683153460, +8801729384989', 'Horgoj Mor,Saturia,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(101, 43, 12, 'C.P Bangladesh Co; Ltd.', NULL, NULL, NULL, NULL, NULL, '+8801713364158', 'Chandra,Gazipur,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(102, 43, 12, 'Index Poultry Private Company', NULL, NULL, NULL, NULL, NULL, '+8801844019227', 'Gulshan,Dhaka.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(103, 43, 12, 'Md Parvez Mia', NULL, NULL, NULL, NULL, NULL, '+8801711513973', 'Deshgram,Nirali,Daulotpur,Manikganj.', 0.0000, -27400.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(104, 43, 12, 'Goalondo Gazi Agro Farm', NULL, NULL, NULL, NULL, NULL, '+8801721404267, +8801972404267, +8801770654254', 'Goalondo,Rajbari.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(105, 43, 12, 'Navana Pharmaceuticals Ltd.', NULL, NULL, NULL, NULL, NULL, '+8801321130666', 'Rupshi,Narayanganj,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(106, 43, 12, 'Orbit Poultry & Hatchery', NULL, NULL, NULL, NULL, NULL, '+8801716023391', 'Rajbari,Dhaka,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(107, 43, 12, 'Suguna Foods Bangladesh Pvt. Ltd.', NULL, NULL, NULL, NULL, NULL, '+8801709650913', 'H#76,Gausul Azam Avenue,S#13,Uttara,Dhaka.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(108, 43, 12, 'Walking Supplier', NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0.0000, -60300.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, '1-admin', NULL, '2022-05-25 01:42:10'),
(121, 1, 13, 'Walking Customer', NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(122, 1, 13, 'MR, XZ', NULL, NULL, NULL, NULL, NULL, 'N//17/999/718', 'dhA2A', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(123, 1, 13, 'Mohammad Subel Mia', NULL, NULL, NULL, NULL, NULL, '+8801747888113', 'Sadinagor,Painjonkhara,Garpara,Manikganj.', 0.0000, 375710.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(124, 1, 13, 'Md Abdul Alim', NULL, NULL, NULL, NULL, NULL, '+8801686144842, +8801787011075', 'Chor Ghosta,Putail,Manikganj.', 0.0000, 853650.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(125, 1, 13, 'Nana-Nati Agro', NULL, NULL, NULL, NULL, NULL, '+8801777371443, +8801767648378', 'Madrasa Mor,Garpara,Manikganj.', 0.0000, 134755.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(126, 1, 13, 'Mohammad Nowab Ali', NULL, NULL, NULL, NULL, NULL, '+8801726530078', 'Bewtha,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(127, 1, 13, 'Mahbubul Hossain Polash 2', NULL, NULL, NULL, NULL, NULL, '+8801700829677', 'Vill:Painjonkhara,UP:Garpara,PS:Manikganj,Dis:Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(128, 1, 13, 'Md Robin Hossain', NULL, NULL, NULL, NULL, NULL, '+8801714482059, +8801639216356', 'Koyra,Shushunda,Dighi,Manikganj.', 0.0000, 482072.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(129, 1, 13, 'Sushil Kumar Ghosh', NULL, NULL, NULL, NULL, NULL, '+8801775247014', '621,East Dashora,Manikganj.', 0.0000, 468500.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(130, 1, 13, 'Mohammad Monir Hossain (Monu)', NULL, NULL, NULL, NULL, NULL, '+8801767709899, +8801638306448', 'Chor Ghosta,Putail,Manikganj.', 0.0000, 97380.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(131, 1, 13, 'Akkas Ali (Broiler-1)', NULL, NULL, NULL, NULL, NULL, '+8801953694279, +8801323150051', 'Sorupai,Naboggram,Manikganj.', 0.0000, 260410.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(132, 1, 13, 'Mohammad Abdul Kader', NULL, NULL, NULL, NULL, NULL, '+8801747853183, +8801744169123', 'Tewta,Shibalaya,Manikganj.', 0.0000, 407996.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(133, 1, 13, 'Mohammad Rubel Ahammed', NULL, NULL, NULL, NULL, NULL, '+8801710123474, +8801788781670, +8801624076774', 'Moddhokhalpadhoa,Garpara,Manikganj.', 0.0000, 40110.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(134, 1, 13, 'Mohammad Shamim Ahammed', NULL, NULL, NULL, NULL, NULL, '+8801735718923, +8801792505334', 'Koyra,Shushunda,Dighi,Manikganj.', 0.0000, 79660.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(135, 1, 13, 'Mohammad Aowlad Hossain', NULL, NULL, NULL, NULL, NULL, '+8801706063373, +8801743883709, +8801641129134', 'Bengrui,Naboggram,Manikganj.', 0.0000, 54275.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(136, 1, 13, 'Mohammad Milon Uddin', NULL, NULL, NULL, NULL, NULL, '+8801621903088', 'Vatbaur,Shushunda,Dighi,Manikganj.', 0.0000, 18080.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(137, 1, 13, 'Mohammad Rayhan Biswash (Broiler-1)', NULL, NULL, NULL, NULL, NULL, '+8801787395736, +8801735108734', 'Dokhkhin Uthuli,Garpara,Manikganj.', 0.0000, 238530.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(138, 1, 13, 'Mohammad Selim Mia', NULL, NULL, NULL, NULL, NULL, '+8801797294895', 'Koyra,Shushunda,Dighi,Manikganj.', 0.0000, 4575.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(139, 1, 13, 'Mohammad Mominur Rahaman Ripok', NULL, NULL, NULL, NULL, NULL, '+8801683966358', 'Sadinagor,Painjonkhara,Garpara.Manikganj.', 0.0000, 22475.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(140, 1, 13, 'Mohammad Milon Mia/Shamim', NULL, NULL, NULL, NULL, NULL, '+8801742370920, +8801792557983', 'Chor Ghosta,Putail,Manikganj.', 0.0000, 11935.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(141, 1, 13, 'Mohammad Shahriar Nadim Rabbi', NULL, NULL, NULL, NULL, NULL, '+8801618501090', 'Rouhadoho,Shushunda,Dighi,Manikganj.', 0.0000, 152995.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(142, 1, 13, 'Mohammad Faruq Hasan/ Md Mizan', NULL, NULL, NULL, NULL, NULL, '+8801727020922, +8801679292829', 'Modhdhokhalpadhoa,Garpara,Manikganj.', 0.0000, 45240.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(143, 1, 13, 'Mir Mohidur Rahaman', NULL, NULL, NULL, NULL, NULL, '+8801724146371, +8801706871445', 'Dokhkhin Uthuli,Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(144, 1, 13, 'Mohammad Humayun Ahmed', NULL, NULL, NULL, NULL, NULL, '+8801302916721, +8801641128735', 'Poschim Chortilli,Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(145, 1, 13, 'Unkown comapny 2', NULL, NULL, NULL, NULL, NULL, '+8801777371443, +8801767648378', 'Madrasa Mor,Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(146, 1, 13, 'Afsana Khanom (Elahi Rahaman)', NULL, NULL, NULL, NULL, NULL, '+8801786140457', 'Porgora,Garpara,Manikganj.', 0.0000, 107355.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(147, 1, 13, 'Mohammad Layej Biswash', NULL, NULL, NULL, NULL, NULL, '+8801777956160, +8801819604634', 'Nobogram,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(148, 1, 13, 'Mohammad Monirul Islam', NULL, NULL, NULL, NULL, NULL, '+8801766374597, +8801709854655', 'Joyra,Manikganj.', 0.0000, 9365.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(149, 1, 13, 'Mohammad Shahidul Islam', NULL, NULL, NULL, NULL, NULL, '+8801715431505', 'Meghshimul,Jagir,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(150, 1, 13, 'Mohammad Jewel Hossain (Broiler-1)', NULL, NULL, NULL, NULL, NULL, '+8801689037881', 'Garakul,Jagir,Manikganj.', 0.0000, 69450.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(151, 1, 13, 'Mohammad Tajul Islam Liton', NULL, NULL, NULL, NULL, NULL, '+8801718364839', 'Porgora,Garpara,Manikganj.', 0.0000, 94270.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(152, 1, 13, 'Abdullah Al Mamun (Layer)', NULL, NULL, NULL, NULL, NULL, '+8801687896802, +8801714215466', '656,East Dashora,Manikganj.', 0.0000, 481150.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(153, 1, 13, 'Md Rukunul Islam Shibly (Layer)', NULL, NULL, NULL, NULL, NULL, '+8801768982368, +8801677102599', 'Ramonpur,Muljan,Dighi,Manikganj.', 0.0000, 556945.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(154, 1, 13, 'Mohammad Liton Mia', NULL, NULL, NULL, NULL, NULL, '+8801751375809', 'Horgoj,Fukurhati,Saturia,Manikganj.', 0.0000, 203455.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(155, 1, 13, 'Md Rukunul Islam Shibly (Sonali)', NULL, NULL, NULL, NULL, NULL, '+8801768982368, +8801677102599', 'Ramonpur,Muljan,Dighi,Manikganj.', 0.0000, 173595.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(156, 1, 13, 'Mohammad Abdul Kader (Sonali)', NULL, NULL, NULL, NULL, NULL, '+8801747853183', 'Tewta,Shibalaya,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(157, 1, 13, 'Mohammad Jahangir Alam', NULL, NULL, NULL, NULL, NULL, '+8801764105026', 'Koitta,Dhankora,Saturia,Manikganj.', 0.0000, 8705.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(158, 1, 13, 'Abdullah Al Mamun (Sonali-1)', NULL, NULL, NULL, NULL, NULL, '+8801687896802, +8801714215466', '656,East Dashora,Manikganj.', 0.0000, 75640.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(159, 1, 13, 'Mohammad Shofiqul Islam (Poyla)', NULL, NULL, NULL, NULL, NULL, '+8801678583830', 'Poyla,Terosry,Ghior,Manikganj.', 0.0000, 18395.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(160, 1, 13, 'Mohammad Azahar Ali', NULL, NULL, NULL, NULL, NULL, '+8801724175735', 'Uvajani,Ramdianali,Ghior,Manikganj.', 0.0000, 37565.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(161, 1, 13, 'Mohammad Rubel Hossain', NULL, NULL, NULL, NULL, NULL, '+8801630452639', 'Golora,Dhankora,Saturia,Manikganj.', 0.0000, 20660.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(162, 1, 13, 'Mohammad Billal Hossain', NULL, NULL, NULL, NULL, NULL, '+8801310867175, +8801635649089', 'Megh Shimul,Jagir,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(163, 1, 13, 'MD Anower Hossain', NULL, NULL, NULL, NULL, NULL, '+8801719846126', 'Golora,Dhankora,Saturia,Manikganj.', 0.0000, 6815.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(164, 1, 13, 'Md Towhid Hasan (Sonali)', NULL, NULL, NULL, NULL, NULL, '+8801319869484, +8801710790798', 'Golora,Dhankora,Saturia,Manikganj.', 0.0000, 327343.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(165, 1, 13, 'MD Borhan Mia & MD Rayhan Mia', NULL, NULL, NULL, NULL, NULL, '+8801740619166, +8801714945035', 'Tora Hat,Khagrakuri,Dighi,Manikganj.', 0.0000, 260100.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(166, 1, 13, 'Mohammad Yousuf Ali', NULL, NULL, NULL, NULL, NULL, '+8801720102900', 'Nimtoli Bazar,Manikganj.', 0.0000, 373600.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(167, 1, 13, 'Mohammad Amirul Islam Ronju', NULL, NULL, NULL, NULL, NULL, '+8801776542308, +8801862129411', 'Nimtoli Bazar,Manikganj.', 0.0000, 63900.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(168, 1, 13, 'MD Shahjahan', NULL, NULL, NULL, NULL, NULL, '+8801725391584, +8801688671903', 'Molla Bazar,Manikganj.', 0.0000, 609900.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(169, 1, 13, 'Mohammad Uzzal Mia', NULL, NULL, NULL, NULL, NULL, '+8801717114511', 'Powli Bazar,Manikganj.', 0.0000, 26200.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(170, 1, 13, 'Md Towhid Hasan (Sonali-2)', NULL, NULL, NULL, NULL, NULL, '+8801319869484, +8801710790798', 'Golora,Dhankora,Saturia,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(171, 1, 13, 'Mohammad Taher Uddin Tota', NULL, NULL, NULL, NULL, NULL, '+8801706064123, +8801720964927', 'Kachari Bazar,Manikganj.', 0.0000, 106730.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(172, 1, 13, 'MD Noab Ali (Newaz)', NULL, NULL, NULL, NULL, NULL, '+8801621625988, +8801726530078', 'Pachbaroil,Naboggram,Manikganj.', 0.0000, 359100.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(173, 1, 13, 'MD Nurul Haq & MD Kohinur', NULL, NULL, NULL, NULL, NULL, '+8801733692870, +8801715743869', 'Baimail Bazar,Bayra,Singair,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(174, 1, 13, 'Mohammad Atowar', NULL, NULL, NULL, NULL, NULL, '+8801758858958, +8801727992048, +8801991894050', 'Kewarjani,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(175, 1, 13, 'Abdur Rohim Geda', NULL, NULL, NULL, NULL, NULL, '+8801721859391', 'Nimtoli Bazar,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(176, 1, 13, 'Shamima Akter', NULL, NULL, NULL, NULL, NULL, '+8801700829677, +8801726129098', 'Sadinagar,Painjonkhara,Garpara,Manikganj.', 0.0000, 248780.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(177, 1, 13, 'Mohammad Joshim Mia', NULL, NULL, NULL, NULL, NULL, '+8801725879596', 'Nimtoli Bazar,Manikganj.', 0.0000, 25300.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(178, 1, 13, 'Mohammad Alom Mia', NULL, NULL, NULL, NULL, NULL, '+8801741513775', 'Kachabazar,Bus Stand,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(179, 1, 13, 'Mohammad Afzal Hossain', NULL, NULL, NULL, NULL, NULL, '+8801916905923, +8801742022920', 'Ghosher Bazar,Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(180, 1, 13, 'Mohammad Anower Hossain', NULL, NULL, NULL, NULL, NULL, '+8801714100703', 'Vatbaur,Shushunda,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(181, 1, 13, 'Mohammad Atikur Rahaman', NULL, NULL, NULL, NULL, NULL, '+8801621248141', 'Dauli,Garpara,Manikganj.', 0.0000, 18000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(182, 1, 13, 'Mohammad Helal Uddin', NULL, NULL, NULL, NULL, NULL, '+8801715548765', 'Nimtoli Bazar,Manikganj.', 0.0000, 59600.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(183, 1, 13, 'Mohammad Anik Dewan', NULL, NULL, NULL, NULL, NULL, '+8801771066012', 'Bayra Bazar,Singair,Manikganj.', 0.0000, 72000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(184, 1, 13, 'M/S Monir Enterprise (MD Monir Uddin)', NULL, NULL, NULL, NULL, NULL, '01741114441, 01715783035, 01990021188', 'Sahobotpur Bazar,Nagorpur,Tangail.', 0.0000, 764185.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(185, 1, 13, 'MD Abdul Jalil', NULL, NULL, NULL, NULL, NULL, '+8801775046539', 'Sorupai Bazar,Naboggram,Manikganj.', 0.0000, 3250.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(186, 1, 13, 'MD Pata Mia', NULL, NULL, NULL, NULL, NULL, '+8801858330642', 'Nimtoli Bazar,Manikganj.', 0.0000, 43800.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(187, 1, 13, 'MD Babu Mia', NULL, NULL, NULL, NULL, NULL, '+8801729859479', 'Saturia,Manikganj.', 0.0000, 1500.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(188, 1, 13, 'MD Abdur Rahaman & MD Nur Islam', NULL, NULL, NULL, NULL, NULL, '+8801716442143', 'Maloncho,Manikganj.', 0.0000, 36500.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(189, 1, 13, 'MD Moslem Mia', NULL, NULL, NULL, NULL, NULL, '+88017', 'Nimtoli Bazar,Manikganj.', 0.0000, 44600.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(190, 1, 13, 'MD Sirajul Islam', NULL, NULL, NULL, NULL, NULL, '+8801749883919, +8801766398912', 'Basudebpur,Krisnopur,Manikganj.', 0.0000, 102390.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(191, 1, 13, 'MD Azahar Ali (East Dashora)', NULL, NULL, NULL, NULL, NULL, '+8801743055611', 'East Dashora,Manikganj.', 0.0000, 163135.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(192, 1, 13, 'M/S Showkat Poultry Farm', NULL, NULL, NULL, NULL, NULL, '+8801716877950, +8801673638134, +8801768982368', 'Manora,Manikganj.', 0.0000, 1010850.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(193, 1, 13, 'MD Sojib Mia', NULL, NULL, NULL, NULL, NULL, '+8801782421491', 'Dergram,Jagir,Manikganj.', 0.0000, 4300.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(194, 1, 13, 'MD Abul Hossain', NULL, NULL, NULL, NULL, NULL, '+8801612972243', 'Kachabazar,Bus Stand,Manikganj.', 0.0000, 13295.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(195, 1, 13, 'MD Shahin', NULL, NULL, NULL, NULL, NULL, '+8801760150500', 'Kachabazar,Bus Stand,Manikganj.', 0.0000, 3200.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(196, 1, 13, 'Md Selim Mia (Mama)', NULL, NULL, NULL, NULL, NULL, '+8801309960381', 'Ramdianali,Ghior,Manikganj.', 0.0000, 40350.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(197, 1, 13, 'MD Waz Uddin', NULL, NULL, NULL, NULL, NULL, '+880181105421', 'Dautia Bazar,Garpara,Manikganj.', 0.0000, 19000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(198, 1, 13, 'MD Mizanur Rahaman', NULL, NULL, NULL, NULL, NULL, '+88017', 'Garpara,Manikganj.', 0.0000, 35060.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(199, 1, 13, 'MD Abdus Salam', NULL, NULL, NULL, NULL, NULL, '+8801833990655, +8801757641922', 'Bokzuri,Betila,Manikganj.', 0.0000, 87000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(200, 1, 13, 'MD Hafizur Rahaman', NULL, NULL, NULL, NULL, NULL, '+8801302585946, +8801643487188', 'Akashi,Tilli,Saturia,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(201, 1, 13, 'MD Jahangir Alom (Boiragi)', NULL, NULL, NULL, NULL, NULL, '+8801728492747', 'Boiragi,Borohatkora,Doulatpur,Manikganj.', 0.0000, 556445.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(202, 1, 13, 'Md Rasel Mia', NULL, NULL, NULL, NULL, NULL, '+8801766323821, +8801739443018', 'Nimtoli Bazar,Manikganj.', 0.0000, 128500.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(203, 1, 13, 'M/S Brother\'s Owsodhaloy (MD Abdur Rouf Sumon)', NULL, NULL, NULL, NULL, NULL, '+8801686437493', 'Jhitka Bazar,Horirampur,Manikganj.', 0.0000, 1800.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(204, 1, 13, 'MD Abdul Ahad', NULL, NULL, NULL, NULL, NULL, '+8801727109677', 'Palora,Betila,Manikganj.', 0.0000, 5875.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(205, 1, 13, 'MD Rofiqul Islam (West Dashora)', NULL, NULL, NULL, NULL, NULL, '+88017', 'West Dashora,Manikganj.', 0.0000, 66035.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(206, 1, 13, 'MD Ali Ahammad', NULL, NULL, NULL, NULL, NULL, '+88017', 'Kafatia,Putail,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(207, 1, 13, 'MD Bokhtiar', NULL, NULL, NULL, NULL, NULL, '+88017', 'Baichail,Manikganj.', 0.0000, 3800.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(208, 1, 13, 'MD Saiful Islam', NULL, NULL, NULL, NULL, NULL, '+88017', 'Kusherchar,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(209, 1, 13, 'MD Sukur Ali', NULL, NULL, NULL, NULL, NULL, '+8801751239733, +8801705342382', 'Gilondo,Noboggram,Manikganj.', 0.0000, 10540.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(210, 1, 13, 'MD Aminur Islam', NULL, NULL, NULL, NULL, NULL, '+8801886167877', 'Baliabil,Putail,Manikganj.', 0.0000, 205850.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(211, 1, 13, 'MD Nazmul', NULL, NULL, NULL, NULL, NULL, '+8801611881213, +8801883378136', 'Bhai Bhai Bazar,Manikganj.', 0.0000, 1000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(212, 1, 13, 'Mohammad Ali', NULL, NULL, NULL, NULL, NULL, '+8801788940324', 'Saheb Bazar,Saturia,Manikganj.', 0.0000, 9900.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(213, 1, 13, 'MD Selim Parvez', NULL, NULL, NULL, NULL, NULL, '+8801712186520', 'East Dashora,Manikganj.', 0.0000, 3495.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(214, 1, 13, 'MD Saiful Islam Hiron', NULL, NULL, NULL, NULL, NULL, '+8801710861694, +8801792696940', 'Koyra,Dighi,Manikganj.', 0.0000, 71235.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(215, 1, 13, 'M/S A.S.A Poultry Farm (Md Saiful Islam)', NULL, NULL, NULL, NULL, NULL, '+8801722449127, +8801921354093, +8801993334060', 'Char Baliabil,Putail,Manikganj.', 0.0000, 192685.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(216, 1, 13, 'Mohammad Arshad Hossain', NULL, NULL, NULL, NULL, NULL, '+8801715415542, +8801615622244', 'Narangai,Uchutia,Manikganj.', 0.0000, 177697.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(217, 1, 13, 'Mohammad Younus Ali', NULL, NULL, NULL, NULL, NULL, '+8801720566816', 'Vatbaur,Dighi,Manikganj.', 0.0000, 97140.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(218, 1, 13, 'MD Rofiqul Islam (Boiragi)', NULL, NULL, NULL, NULL, NULL, '+8801303220915', 'Boiragi,Borohatkora,Doulatpur,Manikganj.', 0.0000, 47795.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(219, 1, 13, 'Mohammad Delower Hossain', NULL, NULL, NULL, NULL, NULL, '+8801798321356, +8801300313835', 'Dighulia,Putail,Manikganj.', 0.0000, 161535.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(220, 1, 13, 'MD Habibur Rahaman', NULL, NULL, NULL, NULL, NULL, '+8801753363875', 'Golora Bus Stand,Dhankora,Saturia,Manikganj.', 0.0000, 83800.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(221, 1, 13, 'Mohammad Abdur Roshid', NULL, NULL, NULL, NULL, NULL, '+8801720940129', 'Bangladesh Hat,Garpara,Manikganj.', 0.0000, 5000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(222, 1, 13, 'MD Shofiqul Islam', NULL, NULL, NULL, NULL, NULL, '+8801788435808', 'Kachabazar,Bus Stand,Manikganj.', 0.0000, 56850.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(223, 1, 13, 'MD Tuhin Mia', NULL, NULL, NULL, NULL, NULL, '+8801776687221, +8801701484254', 'Kachabazar Bus Stand,Manikganj.', 0.0000, 15400.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(224, 1, 13, 'MD Mofazzol Hossain Pasha', NULL, NULL, NULL, NULL, NULL, '+8801724301743', 'Dautia,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(225, 1, 13, 'Mohammad Tuhin Mia', NULL, NULL, NULL, NULL, NULL, '+8801733167562, +8801880842882', 'Dergram,Jagir,Manikganj.', 0.0000, 11500.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(226, 1, 13, 'MD Ismail Hossain (Koyra)', NULL, NULL, NULL, NULL, NULL, '+8801732940234', 'Koyra,Dighi,Manikganj.', 0.0000, 1900.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(227, 1, 13, 'Md Sajib Hossain (Koyra)', NULL, NULL, NULL, NULL, NULL, '+8801763804067', 'Koyra,Dighi,Manikganj.', 0.0000, 9485.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(228, 1, 13, 'MD Chanchal Mia', NULL, NULL, NULL, NULL, NULL, '+8801740209002, +8801641353231', 'Shushunda,Dighi,Manikganj.', 0.0000, 8400.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(229, 1, 13, 'Mohammad Azizul Islam', NULL, NULL, NULL, NULL, NULL, '+8801731759150, +8801950553125', 'Molla Bazar,Manikganj.', 0.0000, 37100.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(230, 1, 13, 'MD Raihan', NULL, NULL, NULL, NULL, NULL, '+8801771067182', 'Nimtoli Bazar,Manikganj.', 0.0000, 412000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(231, 1, 13, 'MD Humayun Ahammed', NULL, NULL, NULL, NULL, NULL, '+8801302916721', 'West Chartilli,Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(232, 1, 13, 'M/S Al Aksa Traders (MD Sumon Ahmmed)', NULL, NULL, NULL, NULL, NULL, '+8801759190599', 'Romzan Ali College Road,Joyra,Manikganj.', 0.0000, 211948.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(233, 1, 13, 'MD Abdur Rouf Ronju', NULL, NULL, NULL, NULL, NULL, '+8801810535401, +8801720940127', 'Sadinagor,Painjonkhara,Garpara,Manikganj.', 0.0000, 102145.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(234, 1, 13, 'Mohammad Nahid Hasan Sajal', NULL, NULL, NULL, NULL, NULL, '+8801810535808,+8801318791385', 'Koyra,Shushunda,Dighi,Manikganj.', 0.0000, 31295.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(235, 1, 13, 'Mohammad Mizanur Rahaman', NULL, NULL, NULL, NULL, NULL, '+8801772129515', 'Dautia,Shushunda,Dighi,Manikganj.', 0.0000, 11875.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(236, 1, 13, 'Md Abdur Roshid & Md Harunur Roshid', NULL, NULL, NULL, NULL, NULL, '+8801717237150, +8801715754246', 'Janna,Fukurhati,Saturia,Manikganj.', 0.0000, 144980.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(237, 1, 13, 'Mohammad Shamim Mia', NULL, NULL, NULL, NULL, NULL, '+8801712797456, +8801567848603', 'Ghos Baroil Bazar,Noboggram,Manikganj.', 0.0000, 700.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(238, 1, 13, 'MD Helal Mia', NULL, NULL, NULL, NULL, NULL, '+8801725883820, +8801627184258', 'Baniajuri Bazar,Tora,Ghior,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(239, 1, 13, 'Mohammad Romzan Ali', NULL, NULL, NULL, NULL, NULL, '+8801731702232', 'Vatbaur,Shushunda,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(240, 1, 13, 'Al Arafat Enterprise (Md Parvez Mia & Md Biplob)', NULL, NULL, NULL, NULL, NULL, '+8801711513973, +8801957773344', 'Niralibazar,Borohatkora,Daulotpur,Manikganj.', 0.0000, 1440602.5000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(241, 1, 13, 'M/S Rokeya Enterprise (Md Arshed Hossain)', NULL, NULL, NULL, NULL, NULL, '+8801624323702, +8801753864728', 'Kaliakoir,Singair,Manikganj.', 0.0000, -22360.5000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(242, 1, 13, 'MD Nahid Sultan', NULL, NULL, NULL, NULL, NULL, '+8801796496383', 'Meghshimul,Jagir,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(243, 1, 13, 'Md Towhid Hasan (Sales Center)', NULL, NULL, NULL, NULL, NULL, '+8801319869484, +8801710790798', 'Golora Bus Stand,Dhankora,Saturia,Manikganj.', 0.0000, 102770.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(244, 1, 13, 'Md Noab Ali & Rabeya', NULL, NULL, NULL, NULL, NULL, '+8801762785606', 'Bewtha Ghat,Manikganj.', 0.0000, 2000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(245, 1, 13, 'Md Azom & Md Firoz', NULL, NULL, NULL, NULL, NULL, '+8801953405121', 'Ghoser Bazar,Garpara,Manikganj.', 0.0000, 71000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(246, 1, 13, 'Abdullah Al Mamun (Layer-2)', NULL, NULL, NULL, NULL, NULL, '+8801687896802, +8801714215466', '656,East Dashora,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(247, 1, 13, 'MD Manik Mia', NULL, NULL, NULL, NULL, NULL, '+8801755187852', 'Golai,Burundi,Singair,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(248, 1, 13, 'Babu Nirod Sarkar', NULL, NULL, NULL, NULL, NULL, '+8801975755790', 'Naboggram Bazar,Naboggram,Manikganj.', 0.0000, 10200.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(249, 1, 13, 'MD Samad Hossain', NULL, NULL, NULL, NULL, NULL, '+8801934422213', 'Janna Bazar,Fukurhati,Saturia.Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(250, 1, 13, 'Akkas Ali (Broiler-2)', NULL, NULL, NULL, NULL, NULL, '+8801953694279, +8801323150051', 'Sorupai,Naboggram,Manikganj.', 0.0000, 47370.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(251, 1, 13, 'MD Abdur Roshid Mistri', NULL, NULL, NULL, NULL, NULL, '+8801714617972', 'Kachari Bazar,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(252, 1, 13, 'Shron Hasan Amit', NULL, NULL, NULL, NULL, NULL, '+8801638352891, +8801877359003', 'Sadinagor,Painjonkhara,Garpara,Manikganj.', 0.0000, 30820.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(253, 1, 13, 'Mohammad Nayon', NULL, NULL, NULL, NULL, NULL, '+8801309929521', 'Dhakuli Poschimpara,Jagir,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(254, 1, 13, 'MD Salamot Hossain', NULL, NULL, NULL, NULL, NULL, '+8801727963836', 'Dhakuli Poschimpara,Jagir,Manikganj.', 0.0000, 7920.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(255, 1, 13, 'Md Yousuf Khan', NULL, NULL, NULL, NULL, NULL, '+8801724309163', 'Railla Poschimpara,Fukurhati,Saturia,Manikganj.', 0.0000, 113570.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(256, 1, 13, 'Mohammad Al-Amin', NULL, NULL, NULL, NULL, NULL, '+8801609266808, +8801775367148', 'Railla Poschimpara,Fukurhati,Saturia,Manikganj.', 0.0000, 10130.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(257, 1, 13, 'MD Forhad Hossain', NULL, NULL, NULL, NULL, NULL, '+8801725355137, +8801707696534', 'Kamta,Golora,Saturia,Manikganj.', 0.0000, 130660.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(258, 1, 13, 'Mohammad Rubel Ahammed (Broiler-2)', NULL, NULL, NULL, NULL, NULL, '+8801710123474, +8801788781670, +8801624076774', 'Moddhokhalpadhoa,Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(259, 1, 13, 'Mohammad Arifur Rahaman', NULL, NULL, NULL, NULL, NULL, '+8801713530047, +8801553972108', 'Tora Bazar,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(260, 1, 13, 'Mohammad Abdul Korim', NULL, NULL, NULL, NULL, NULL, '+8801714615858', 'Kachabazar,Bus Stand,Manikganj.', 0.0000, 6200.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `account_ledgers` (`id`, `_account_group_id`, `_account_head_id`, `_name`, `_code`, `_image`, `_nid`, `_other_document`, `_email`, `_phone`, `_address`, `_credit_limit`, `_balance`, `_branch_id`, `_is_user`, `_user_id`, `_is_sales_form`, `_is_purchase_form`, `_is_all_branch`, `_short`, `_status`, `_show`, `_note`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(261, 1, 13, 'MD Masudur Rahaman Masud', NULL, NULL, NULL, NULL, NULL, '+8801728116388', 'Bayra Bazar,Bayra,Singair,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(262, 1, 13, 'Mohammad Raju Vandari', NULL, NULL, NULL, NULL, NULL, '+8801799914380', 'Jorina College Mor,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(263, 1, 13, 'MD Ismail Hossain', NULL, NULL, NULL, NULL, NULL, '+8801719900340', 'Dergram,Jagir,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(264, 1, 13, 'MD Mahabub Hossain', NULL, NULL, NULL, NULL, NULL, '+8801704232273', 'Geraida Bazar,Singair,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(265, 1, 13, 'Mohammad Obaydullah', NULL, NULL, NULL, NULL, NULL, '+8801795826871,+8801715394359', 'Notunbosti,Dighi,Manikganj.', 0.0000, 3140.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(266, 1, 13, 'Mohammad Abdul Mannan (Broiler-1)', NULL, NULL, NULL, NULL, NULL, '+8801713515786', 'Poshchim Uriajani,Manikganj.', 0.0000, 278060.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(267, 1, 13, 'Md Robin Hossain & MD Shamim Ahammed', NULL, NULL, NULL, NULL, NULL, '+8801714482059,+8801735718923', 'Koyra,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(268, 1, 13, 'Mohammad Toyobur Ali', NULL, NULL, NULL, NULL, NULL, '+8801728489141', 'Bus Stand Kachabazar,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(269, 1, 13, 'MD Sobed Ali', NULL, NULL, NULL, NULL, NULL, '+8801727019384', 'Bathuimuri Bazar,Ghior,Manikganj', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(270, 1, 13, 'Mohammad Rayhan Biswash (Broiler-2)', NULL, NULL, NULL, NULL, NULL, '+8801787395736, +8801735108734', 'Dokhkhin Uthuli,Gorpara,Manikganj.', 0.0000, 53690.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(271, 1, 13, 'Mohammad Bador Uddin', NULL, NULL, NULL, NULL, NULL, '+8801715245688', 'Bangladesh Hat,Gorpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(272, 1, 13, 'Mohammad Abdul Mannan (Broiler-2)', NULL, NULL, NULL, NULL, NULL, '+8801713515786', 'Poshchim Uriajani,Manikganj.', 0.0000, 38220.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(273, 1, 13, 'Mohammad Mohidur Rahaman (Sonali-1)', NULL, NULL, NULL, NULL, NULL, '+8801726695924, +8801642129839', 'East Sanbandha,Balirtek,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(274, 1, 13, 'Md Ashraful Islam', NULL, NULL, NULL, NULL, NULL, '+8801777940795', 'Uvajani,Ramdianali,Ghior,Manikganj.', 0.0000, 29075.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(275, 1, 13, 'Md Tomej Uddin (Budhdhi)', NULL, NULL, NULL, NULL, NULL, '+8801721186411', 'Chamta,Dighi,Manikganj.', 0.0000, 30550.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(276, 1, 13, 'Mohammad Rozzob Ali', NULL, NULL, NULL, NULL, NULL, '+8801308644148', 'Madrasa Mor,Gorpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(277, 1, 13, 'Mohammad Jewel Hossain (Broiler-2)', NULL, NULL, NULL, NULL, NULL, '+8801689037881', 'Garakul,Jagir,Manikganj.', 0.0000, 97695.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(278, 1, 13, 'Mohammad Jabed Ali', NULL, NULL, NULL, NULL, NULL, '+8801713585900, +8801302916772', 'Ukiara(Modhdhopara),Jagir,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(279, 1, 13, 'Md Chanchal Mia (Sales Center)', NULL, NULL, NULL, NULL, NULL, '+8801740209002', 'Dautia Bazar,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(280, 1, 13, 'Nana-Nati (Quel)', NULL, NULL, NULL, NULL, NULL, '+8801789510449', 'Madrasa Mor,Garpara,Manikganj.', 0.0000, 2080.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(281, 1, 13, 'Md Milon Ali', NULL, NULL, NULL, NULL, NULL, '+8801785509127', 'Joyra(Purbo Para),Jagir,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(282, 1, 13, 'Mohammad Hanif Mia', NULL, NULL, NULL, NULL, NULL, '+8801731541880', 'Bangladesh Hat,Gorpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(283, 1, 13, 'Damage Adjustment Account', NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(284, 1, 13, 'Md Jalal Uddin', NULL, NULL, NULL, NULL, NULL, '+8801915232145', 'Betila Bazar,Betila-Mitora,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(285, 1, 13, 'Md Murad Hossain', NULL, NULL, NULL, NULL, NULL, '+8801303510680', 'North Bil Dauli,Garpara,Manikganj.', 0.0000, 328255.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(286, 1, 13, 'Abdullah Al Mamun (Sonali-2)', NULL, NULL, NULL, NULL, NULL, '+8801687896802, +8801714215466', '656,East Dashora,Manikganj.', 0.0000, 129050.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(287, 1, 13, 'Mosammad Suborna Akter', NULL, NULL, NULL, NULL, NULL, '+8801741678332', 'Joyra Moddho Para,Joyra,Manikganj.', 0.0000, 42550.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(288, 1, 13, 'Abdullah Al Mamun (Sonali-3)', NULL, NULL, NULL, NULL, NULL, '+8801687896802, +8801714215466', '656,East Dashora,Manikganj.', 0.0000, 181700.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(289, 1, 13, 'Md Imran', NULL, NULL, NULL, NULL, NULL, '+8801716245195', 'Kachari Bazar,Hizuli,Manikganj.', 0.0000, 8700.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(290, 1, 13, 'Md Prodip Hasan', NULL, NULL, NULL, NULL, NULL, '+8801736463328', 'Golora,Dhankora,Saturia,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(291, 1, 13, 'MD Shahjahan (Broiler)', NULL, NULL, NULL, NULL, NULL, '+8801725391584, +8801688671903', 'Holding No:29,Uchutia(Ghurki),Jagir,Manikganj.', 0.0000, 131940.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(292, 1, 13, 'Mohammad Mohidur Rahaman (Sonali-2)', NULL, NULL, NULL, NULL, NULL, '+8801726695924, +8801642129839', 'East Sanbandha,Balirtek,Manikganj.', 0.0000, 84960.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(293, 1, 13, 'Sajidul Islam Babu', NULL, NULL, NULL, NULL, NULL, '+8801625451661', 'Powli,Manikganj.', 0.0000, 14370.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, NULL, NULL, NULL, NULL),
(376, 56, 5, 'Kamrunnahar Chowdhury', NULL, NULL, NULL, NULL, NULL, '+8801711049308', '363,East Dashora,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 02:33:30', '2022-05-25 02:33:30'),
(377, 56, 5, 'Md Ashraful Islam (Mehedi)', NULL, NULL, NULL, NULL, NULL, '+8801761886242', 'Uvajani,Ramdianali,Ghior,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 'Post: Admin Manager Salary=15000 taka (Monthly) Bonus=2 times (Yearly)', '1-admin', NULL, '2022-05-25 02:34:21', '2022-05-25 02:34:21'),
(378, 56, 5, 'Shikder Saud Al Faisal (Sandu)', NULL, NULL, NULL, NULL, NULL, '+8801611955988', 'Rajar Kalta,Ramdianali,Harirampur,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 'Post: Accounting Manager Salary=15000 taka (Monthly) Bonus=2 times (Yearly)', '1-admin', NULL, '2022-05-25 02:35:03', '2022-05-25 02:35:03'),
(379, 56, 5, 'Sumaia Akter (Alo)', NULL, NULL, NULL, NULL, NULL, '+8801688454764', '363,East Dashora,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 'Post: Director Honorarium=5000 taka (Monthly) Bonus=2 times (Yearly)', '1-admin', NULL, '2022-05-25 02:35:47', '2022-05-25 02:35:47'),
(380, 56, 5, 'Wali Ul Bari Chowdhury (Shawn)', NULL, NULL, NULL, NULL, NULL, '+8801730712346, +8801684489239', '363,East Dashora,Manikganj.', 0.0000, 1074000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 'Managing Director Salary=45000 taka (Monthly) Bonus=2 times (Yearly)', '1-admin', NULL, '2022-05-25 02:36:24', '2022-05-25 02:36:24'),
(381, 84, 8, 'Incentive Gain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 0, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 02:39:35', '2022-05-25 02:39:35'),
(382, 141, 11, 'Discount Gain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 02:40:12', '2022-05-25 02:40:12'),
(383, 129, 10, 'Damage Expense', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 02:43:19', '2022-05-25 02:43:19'),
(384, 124, 10, 'Chicks Collection Expense', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 02:44:04', '2022-05-25 02:44:04'),
(385, 138, 15, 'Zakat Determination', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 02:44:23', '2022-05-25 02:44:23'),
(386, 138, 15, 'Chicks Delivery Expense', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 02:44:39', '2022-05-25 02:44:39'),
(387, 138, 15, 'Mosque Contribution', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 02:44:53', '2022-05-25 02:44:53'),
(388, 138, 15, 'Feed Collection Expense', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 02:45:19', '2022-05-25 02:45:19'),
(389, 138, 15, 'Annual Card Fee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 02:45:34', '2022-05-25 02:45:34'),
(390, 138, 15, 'Excise Duty', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 02:45:51', '2022-05-25 02:45:51'),
(391, 138, 15, 'Bank Account Fee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 02:46:01', '2022-05-25 02:46:01'),
(392, 138, 15, 'Cheque Book Fee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 02:46:12', '2022-05-25 02:46:12'),
(393, 138, 15, 'Feed Delivery Expense', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 02:46:24', '2022-05-25 02:46:24'),
(394, 138, 15, 'Collection & Marketing Expense', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 02:46:35', '2022-05-25 02:46:35'),
(395, 138, 15, 'Bank Loan Interest', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 02:47:23', '2022-05-25 02:47:23'),
(396, 138, 15, 'Life Insurance Premium', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 02:47:32', '2022-05-25 02:47:32'),
(397, 138, 15, 'Incentive Paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 02:47:43', '2022-05-25 02:47:43'),
(398, 138, 15, 'Discount Paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 02:47:54', '2022-05-25 02:47:54'),
(399, 138, 15, 'Office & Godown Rent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 02:48:06', '2022-05-25 02:48:06'),
(400, 138, 15, 'Administration Expense', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 02:50:23', '2022-05-25 02:50:23'),
(401, 41, 4, 'Reserve for Depreciation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 19950.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', '1-admin', '2022-05-25 03:08:26', '2022-05-25 03:09:29'),
(402, 65, 6, 'Accumulated Depreciation Account', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, -19950.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 03:09:45', '2022-05-25 03:09:45'),
(403, 2, 2, 'Allowance For Bad Debt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 80000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', '1-admin', '2022-05-25 03:13:27', '2022-05-25 03:23:12'),
(404, 41, 4, 'Office Furniture', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 105350.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 03:15:51', '2022-05-25 03:15:51'),
(405, 42, 4, 'Security Money', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 200000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 03:16:30', '2022-05-25 03:16:30'),
(406, 15, 1, 'Al-Arafah Islami Bank Limited', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 10000.9500, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 03:23:33', '2022-05-25 03:23:33'),
(407, 15, 1, 'IFIC Bank Limited', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, -4472446.4700, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 03:24:03', '2022-05-25 03:24:03'),
(408, 53, 5, 'Brac Bank Loan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, -630960.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-25 04:24:38', '2022-05-25 04:24:38'),
(409, 41, 4, 'Opening Assets', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 0, NULL, 0, 0, 0, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-26 04:49:18', '2022-05-26 04:49:18'),
(410, 99, 9, 'Receive Labour Bill', NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', '1-admin', '2022-05-27 15:49:39', '2022-05-28 16:35:39'),
(411, 15, 1, 'Brac Bank Limited', NULL, NULL, NULL, NULL, NULL, NULL, 'Jinnat Ali Plaza,Shahid Rafiq Sarak,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-27 16:32:43', '2022-05-27 16:32:43'),
(412, 102, 9, 'Delivery Labour Bill', NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, NULL, '1-admin', NULL, '2022-05-28 16:34:17', '2022-05-28 16:34:17');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_date` date DEFAULT NULL,
  `_email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `_name`, `_address`, `_date`, `_email`, `_phone`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Head Office', 'Dhaka', '2022-03-03', 'farhadali0507@gmail.com', '01756256562', 1, '1-admin', '1-admin', '2022-03-03 10:35:57', '2022-03-15 03:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `cost_centers`
--

CREATE TABLE `cost_centers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_branch_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cost_centers`
--

INSERT INTO `cost_centers` (`id`, `_name`, `_code`, `_branch_id`, `created_at`, `updated_at`) VALUES
(1, 'Main', 'C-1', 1, '2022-03-03 11:38:37', '2022-03-03 11:55:06');

-- --------------------------------------------------------

--
-- Table structure for table `default_ledgers`
--

CREATE TABLE `default_ledgers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_sales` int(11) NOT NULL,
  `_sales_return` int(11) NOT NULL,
  `_purchase` int(11) NOT NULL,
  `_purchase_return` int(11) NOT NULL,
  `_sales_vat` int(11) NOT NULL,
  `_purchase_vat` int(11) NOT NULL,
  `_purchase_discount` int(11) NOT NULL,
  `_sales_discount` int(11) NOT NULL,
  `_inventory` int(11) NOT NULL,
  `_cost_of_sold` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footerContent` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_phone` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `title`, `name`, `_address`, `keywords`, `author`, `url`, `logo`, `bg_image`, `footerContent`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`, `_phone`, `_email`) VALUES
(1, 'CPF', 'Chowdhury Poultry Feeds', 'Shop No:09,Holding No:84,Romzan Ali Collage Road,Joyra,Manikganj.', 'CHOWDHURY POULTRY FEEDS', 'Farhad', '#', 'images/05252022113728628e14f8280d9.png', NULL, NULL, NULL, NULL, NULL, '2021-06-06 08:00:54', '2022-05-29 05:33:14', '+8801730712346, +8801611955988, +8801761886242', 'chowdhurypoultryfeeds@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_item` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_unit_id` int(11) NOT NULL,
  `_barcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_category_id` bigint(20) UNSIGNED NOT NULL,
  `_image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_discount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_vat` double(15,4) NOT NULL DEFAULT 0.0000,
  `_pur_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_sale_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_balance` int(11) NOT NULL DEFAULT 0,
  `_manufacture_company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_reorder` int(11) NOT NULL DEFAULT 0,
  `_order_qty` double NOT NULL DEFAULT 0,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `_item`, `_code`, `_unit_id`, `_barcode`, `_category_id`, `_image`, `_discount`, `_vat`, `_pur_rate`, `_sale_rate`, `_balance`, `_manufacture_company`, `_reorder`, `_order_qty`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 'R.R.P Broiler Starter 50kg', NULL, 31, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 42, 'R.R.P Agro Farms', 0, 0, 1, NULL, NULL, NULL, NULL),
(2, 'R.R.P Broiler Grower 50kg', NULL, 31, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 48, 'R.R.P Agro Farms', 0, 0, 1, NULL, NULL, NULL, NULL),
(3, 'R.R.P Layer Starter 50kg', NULL, 31, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'R.R.P Agro Farms', 0, 0, 1, NULL, NULL, NULL, NULL),
(4, 'R.R.P Layer Grower 50kg', NULL, 31, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'R.R.P Agro Farms', 0, 0, 1, NULL, NULL, NULL, NULL),
(5, 'R.R.P Layer Layer 50kg', NULL, 31, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 16, 'R.R.P Agro Farms', 0, 0, 1, NULL, NULL, NULL, NULL),
(6, 'R.R.P Sonali Starter 50kg', NULL, 31, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 12, 'R.R.P Agro Farms', 0, 0, 1, NULL, NULL, NULL, NULL),
(7, 'R.R.P Sonali Grower 50kg', NULL, 31, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 16, 'R.R.P Agro Farms', 0, 0, 1, NULL, NULL, NULL, NULL),
(8, 'R.R.P Beef Cattle(E) 25kg', NULL, 30, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'R.R.P Agro Farms', 0, 0, 1, NULL, NULL, NULL, NULL),
(9, 'R.R.P Dairy Cattle(E) 25kg', NULL, 30, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'R.R.P Agro Farms', 0, 0, 1, NULL, NULL, NULL, NULL),
(10, 'New Hope Broiler Starter 50kg', NULL, 31, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'New Hope Feed Mill BD Ltd.', 0, 0, 1, NULL, NULL, NULL, NULL),
(11, 'New Hope Broiler Grower 50kg', NULL, 31, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'New Hope Feed Mill BD Ltd.', 0, 0, 1, NULL, NULL, NULL, NULL),
(12, 'New Hope Broiler Finisher 50kg', NULL, 31, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'New Hope Feed Mill BD Ltd.', 0, 0, 1, NULL, NULL, NULL, NULL),
(13, 'New Hope Layer Starter 50kg', NULL, 31, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'New Hope Feed Mill BD Ltd.', 0, 0, 1, NULL, NULL, NULL, NULL),
(14, 'New Hope Layer Grower 50kg', NULL, 31, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'New Hope Feed Mill BD Ltd.', 0, 0, 1, NULL, NULL, NULL, NULL),
(15, 'New Hope Layer Layer-1 50kg', NULL, 31, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'New Hope Feed Mill BD Ltd.', 0, 0, 1, NULL, NULL, NULL, NULL),
(16, 'New Hope Layer Layer-2 50kg', NULL, 31, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'New Hope Feed Mill BD Ltd.', 0, 0, 1, NULL, NULL, NULL, NULL),
(17, 'New Hope Sonali Starter 50kg', NULL, 31, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'New Hope Feed Mill BD Ltd.', 0, 0, 1, NULL, NULL, NULL, NULL),
(18, 'New Hope Sonali Grower 50kg', NULL, 31, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'New Hope Feed Mill BD Ltd.', 0, 0, 1, NULL, NULL, NULL, NULL),
(19, 'Acimox Powder 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Aci Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(20, 'Aci-LEVO Vet 500ml', NULL, 26, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 2, 'ACI Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(21, 'Virocid 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 6, 'Aci Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(22, 'Chicktonic 1000ml', NULL, 27, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'ACI Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(23, 'Hepavex-200 1liter', NULL, 27, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Aci Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(24, 'AVISELEN', NULL, 27, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Avansis Bangladesh', 0, 0, 1, NULL, NULL, NULL, NULL),
(25, 'Acilyte Vet 1kg', NULL, 14, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 2, 'Aci Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(26, 'GP Bird 1liter', NULL, 27, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 4, 'Aci Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(27, 'Chicktonic 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Aci Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(28, 'Chicktonic 500ml', NULL, 26, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Aci Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(29, 'Fra-C 12 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 2, 'Aci Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(30, 'Germ Control 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Aci Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(31, 'Menth-A 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 13, 'Aci Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(32, 'Nephroflush 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 25, 'Aci Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(33, 'Alquerzim Vet 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 9, 'Aci Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(34, 'Lisoplus Vet 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Aci Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(35, 'Acigent Vet 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 10, 'Aci Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(36, 'Betaincool Plus 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 26, 'Aci Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(37, 'Nutri-Lac IGA 200ml', NULL, 24, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 2, 'Elanco Bangladesh Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(38, 'Nutri-Lac IGA 1liter', NULL, 27, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 2, 'Elanco Bangladesh Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(39, 'Toxynil Plus Liquid 200ml', NULL, 24, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 1, 'Elanco Bangladesh Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(40, 'Toxynil Plus Liquid 1liter', NULL, 27, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Elanco Bangladesh Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(41, 'Megavit-WS 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Elanco Bangladesh Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(42, 'Megavit-WS 50gm', NULL, 23, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 8, 'Elanco Bangladesh Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(43, 'Kalix 500ml', NULL, 26, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 1, 'Elanco Bangladesh Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(44, 'Protexin Concentret 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Elanco Bangladesh Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(45, 'Bursine-2 1000dose', NULL, 22, NULL, 2, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Elanco Bangladesh Limited', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-24 18:50:19'),
(46, 'Bursine Plus 1000dose', NULL, 22, NULL, 2, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Elanco Bangladesh Limited', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-24 18:50:11'),
(47, 'Newcastle-Bronchitis 1000dose', NULL, 22, NULL, 2, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 1, 'Elanco Bangladesh Limited', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-24 18:50:02'),
(48, 'Newcastle 1000dose', NULL, 22, NULL, 2, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 4, 'Elanco Bangladesh Limited', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-24 18:49:51'),
(49, 'C-Floxacin 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 2, 'Agrovet Pharma', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-24 18:49:42'),
(50, 'C-Floxacin 500ml', NULL, 26, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 3, 'Agrovet Pharma', 0, 0, 1, NULL, NULL, NULL, NULL),
(51, 'Agroneo Vet-70 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 5, 'Agrovet Pharma', 0, 0, 1, NULL, NULL, NULL, NULL),
(52, 'Kidney Safe 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Agrovet Pharma', 0, 0, 1, NULL, NULL, NULL, NULL),
(53, 'Agro Yucca 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Agrovet Pharma', 0, 0, 1, NULL, NULL, NULL, NULL),
(54, 'Cipryl Solution 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Pharma & Firm', 0, 0, 1, NULL, NULL, NULL, NULL),
(55, 'Cipryl Solution 500ml', NULL, 26, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Pharma & Firm', 0, 0, 1, NULL, NULL, NULL, NULL),
(56, 'Shilevo 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Pharma & Firm', 0, 0, 1, NULL, NULL, NULL, NULL),
(57, 'Hytil Solution 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Pharma & Firm', 0, 0, 1, NULL, NULL, NULL, NULL),
(58, 'Lisovit 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 8, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(59, 'Micronid 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 10, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(60, 'Enrocin 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 25, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(61, 'Rena-C 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 35, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(62, 'Coxicure 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 24, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(63, 'Renacal-P 1kg', NULL, 14, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(64, 'Sancal-P 500gm', NULL, 21, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 1, 'Elanco Bangladesh Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(65, 'Rena-K 10gm', NULL, 13, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 10, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(66, 'Mycostop 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(67, 'Ozinc 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(68, 'Doxi Vet 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 3, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(69, 'Respocare 250ml', NULL, 24, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(70, 'Ozinc Plus-18 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(71, 'Avinex Powder 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 3, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(72, 'Thiavin 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'FnF Pharmaceuticals', 0, 0, 1, NULL, NULL, NULL, NULL),
(73, 'Colivet-24 1liter', NULL, 27, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'FnF Pharmaceuticals', 0, 0, 1, NULL, NULL, NULL, NULL),
(74, 'A-Mox 30 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Avesta Agrovet', 0, 0, 1, NULL, NULL, NULL, NULL),
(75, 'Aveflo 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 4, 'Avesta Agrovet', 0, 0, 1, NULL, NULL, NULL, NULL),
(76, 'Lecoli Powder 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Avansis Bangladesh', 0, 0, 1, NULL, NULL, NULL, NULL),
(77, 'Amoxicol 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Avansis Bangladesh', 0, 0, 1, NULL, NULL, NULL, NULL),
(78, 'Amikatin Vet 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Avansis Bangladesh', 0, 0, 1, NULL, NULL, NULL, NULL),
(79, 'Renal Euro 500ml', NULL, 26, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Avansis Bangladesh', 0, 0, 1, NULL, NULL, NULL, NULL),
(80, 'Pulmocare 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Opsonin Pharma', 0, 0, 1, NULL, NULL, NULL, NULL),
(81, 'Metho-Form 1liter', NULL, 27, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Avansis Bangladesh', 0, 0, 1, NULL, NULL, NULL, NULL),
(82, 'Timsen 20gm', NULL, 16, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 5, 'Eon Animal Health Products Ltd', 0, 0, 1, NULL, NULL, NULL, NULL),
(83, 'Selcen-e Liquid 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Impex Marketing Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(84, 'Vitacen ad3e 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Impex Marketing Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(85, 'Brown Layer Chicks', NULL, 15, NULL, 4, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'N/A', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-27 10:41:38'),
(86, 'White Layer Chicks', NULL, 15, NULL, 4, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'N/A', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-27 10:41:15'),
(87, 'Broiler Chicks', NULL, 15, NULL, 4, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'N/A', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-27 10:40:39'),
(88, 'Betafin 500gm', NULL, 21, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Eon Animal Health Products Ltd', 0, 0, 1, NULL, NULL, NULL, NULL),
(89, 'Renaspirin 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 7, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(90, 'RenAtox 1liter', NULL, 27, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(91, 'Renagest 500ml', NULL, 26, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(92, 'Biotronic SE Forte 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(93, 'Myco Out Powder 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 5, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(94, 'Enrocin 1liter', NULL, 27, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(95, 'Availa Z/M 500gm', NULL, 21, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(96, 'Renazuril 2.5% 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(97, 'Renamycin Powder 1kg', NULL, 25, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 14, 'Renata Limited', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-27 10:39:47'),
(98, 'Renamycin Powder 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(99, 'Nephroflush 500ml', NULL, 26, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'ACI Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(100, 'NavamoX Vet', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 79, 'Navana Pharmaceuticals', 0, 0, 1, NULL, NULL, NULL, NULL),
(101, 'GP Bird 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 22, 'ACI Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(102, 'Cocci-Tol Plus 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'ACI Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(103, 'Menth-A 50ml', NULL, 18, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'ACI Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(104, 'Farmatan Liquid 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 1, 'ACI Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(105, 'Activate WD MAX 1liter', NULL, 27, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 8, 'Navana Pharmaceuticals Ltd.', 0, 0, 1, NULL, NULL, NULL, NULL),
(106, 'AviPro IBD Xtreme 1000dose', NULL, 22, NULL, 2, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Elanco Bangladesh Limited', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-24 18:49:14'),
(107, 'Antigout Vet 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 18, 'ACI Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(108, 'Shilevo 500ml', NULL, 26, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Pharma & Firm', 0, 0, 1, NULL, NULL, NULL, NULL),
(109, 'Phenbrozole 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Pharma & Firm', 0, 0, 1, NULL, NULL, NULL, NULL),
(110, 'Vigotonic 500ml', NULL, 26, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Pharma & Firm', 0, 0, 1, NULL, NULL, NULL, NULL),
(111, 'Lasota+IB 1000dose', NULL, 22, NULL, 2, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Pharma & Firm', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-24 18:48:59'),
(112, 'Lasota 1000dose', NULL, 22, NULL, 2, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Pharma & Firm', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-24 18:48:51'),
(113, 'Gumboro 1000dose', NULL, 22, NULL, 2, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Pharma & Firm', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-24 18:48:37'),
(114, 'IBD Win+ 1000dose', NULL, 22, NULL, 2, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Pharma & Firm', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-24 18:48:28'),
(115, 'Flostar 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 11, 'Rafique Medicine Bangladesh', 0, 0, 1, NULL, NULL, NULL, NULL),
(116, 'Komitil 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 4, 'Rafique Medicine Bangladesh', 0, 0, 1, NULL, NULL, NULL, NULL),
(117, 'LiquiShine 1liter', NULL, 27, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 8, 'Rafique Medicine Bangladesh', 0, 0, 1, NULL, NULL, NULL, NULL),
(118, 'Vitamin AD3E 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 3, 'Newtec Pharmaceuticals Ltd.', 0, 0, 1, NULL, NULL, NULL, NULL),
(119, 'CS Vet Plus 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 1, 'Agrovet Pharma', 0, 0, 1, NULL, NULL, NULL, NULL),
(120, 'Enravet Plus 500gm', NULL, 21, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 2, 'Agrovet Pharma', 0, 0, 1, NULL, NULL, NULL, NULL),
(121, 'Alurol Vet 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Incepta Pharmaceuticals Ltd.', 0, 0, 1, NULL, NULL, NULL, NULL),
(122, 'Broiler Murgi', NULL, 14, NULL, 5, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'N/A', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-24 18:44:25'),
(123, 'Sonali Murgi', NULL, 14, NULL, 1, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'N/A', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-27 10:38:37'),
(124, 'Nephrosafe 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Eon Animal Health Products Ltd.', 0, 0, 1, NULL, NULL, NULL, NULL),
(125, 'Kidney Safe 500ml', NULL, 26, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Agrovet Pharma', 0, 0, 1, NULL, NULL, NULL, NULL),
(126, 'Ciprosol-10 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Techno Drug Ltd.', 0, 0, 1, NULL, NULL, NULL, NULL),
(127, 'Komi Coccin Solution 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 10, 'Rafique Medicine Bangladesh', 0, 0, 1, NULL, NULL, NULL, NULL),
(128, 'Komi Coccin Solution 1liter', NULL, 27, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Rafique Medicine Bangladesh', 0, 0, 1, NULL, NULL, NULL, NULL),
(129, 'New Hope Beef Cattle Feed 25kg', NULL, 30, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'New Hope Feed Mill BD Ltd.', 0, 0, 1, NULL, NULL, NULL, NULL),
(130, 'Vitamino 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Impex Marketing Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(131, 'Nephryl 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Impex Marketing Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(132, 'Renamox 30% (Vet) 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(133, 'Acigold-WS 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 8, 'ACI Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(134, 'Selcen-e Liqud 1liter', NULL, 27, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Impex Marketing Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(135, 'D-Flox 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 3, 'Agrovet Pharma', 0, 0, 1, NULL, NULL, NULL, NULL),
(136, 'Renaflox 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(137, 'SI Chlor-Tab', NULL, 15, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 5, 'Pharma & Firm', 0, 0, 1, NULL, NULL, NULL, NULL),
(138, 'Hepavex-200 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 4, 'ACI Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(139, 'Acify 1liter', NULL, 27, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 2, 'Elanco Bangladesh Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(140, 'Menorox LC 500ml', NULL, 26, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Newtec Pharmaceuticals Ltd.', 0, 0, 1, NULL, NULL, NULL, NULL),
(141, 'Menorox LC 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Newtec Pharmaceuticals Ltd.', 0, 0, 1, NULL, NULL, NULL, NULL),
(142, 'Ranovir 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 10, 'ACI Limited', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-26 08:45:08'),
(143, 'Heparen Liquid 500ml', NULL, 26, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(144, 'Respocare 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(145, 'Pro-Betain Powder 1kg', NULL, 25, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Rafique Medicine Bangladesh', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-27 10:37:42'),
(146, 'Biotronic SE Forte 1liter', NULL, 27, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Renata Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(147, 'E-CARE Se Liquid 1liter', NULL, 27, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Elanco Bangladesh Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(148, 'C.P Broiler Grower 50kg', NULL, 31, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'C.P Bangladesh Co. Ltd.', 0, 0, 1, NULL, NULL, NULL, NULL),
(149, 'C.P Broiler Finisher 50kg', NULL, 31, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'C.P Bangladesh Co. Ltd.', 0, 0, 1, NULL, NULL, NULL, NULL),
(150, 'Respite 500ml', NULL, 26, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Elanco Bangladesh Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(151, 'Broncho Vest 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Rafique Medicine Bangladesh', 0, 0, 1, NULL, NULL, NULL, NULL),
(152, 'Layer Murgi', NULL, 14, NULL, 3, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'N/A', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-27 10:36:43'),
(153, 'Aman Broiler Grower 50kg', NULL, 31, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Aman Feed Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(154, 'Sonali Chicks', NULL, 15, NULL, 4, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'N/A', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-27 10:35:47'),
(155, 'Energy Plus 500gm', NULL, 21, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 19, 'ACI Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(156, 'Cevac ND IBD K 1000dose', NULL, 22, NULL, 2, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 3, 'ACI Limited', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-24 18:48:05'),
(157, 'Broncho Vest 500ml', NULL, 26, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Rafique Medicine Bangladesh', 0, 0, 1, NULL, NULL, NULL, NULL),
(158, 'Roma 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Eon Animal Health Products Ltd', 0, 0, 1, NULL, NULL, NULL, NULL),
(159, 'Gumbomed 500dose', NULL, 19, NULL, 2, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 8, 'Incepta Pharmaceuticals Ltd', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-24 18:47:46'),
(160, 'Gumbomed Plus 500dose', NULL, 19, NULL, 2, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 6, 'Incepta Pharmaceuticals Ltd', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-24 18:47:36'),
(161, 'Ranivax Booster 500dose', NULL, 19, NULL, 2, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 4, 'Incepta Pharmaceuticals Ltd', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-24 18:47:25'),
(162, 'Ranivax Initial 500dose', NULL, 19, NULL, 2, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 10, 'Incepta Pharmaceuticals Ltd', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-24 18:47:14'),
(163, 'Energy Plus 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'ACI Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(164, 'G-PRO min Liquid 1liter', NULL, 27, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Elanco Bangladesh Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(165, 'No Gas 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 2, 'ACI Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(166, 'Pond Life 5kg', NULL, 30, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'ACI Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(167, 'Esb3-30% 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Elanco Bangladesh Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(168, 'R.R.P Nursery-2 20kg', NULL, 30, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'R.R.P Agro Farms', 0, 0, 1, NULL, NULL, NULL, NULL),
(169, 'Tylo-Doxi Plus 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'ACI Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(170, 'Fly Trap G 100gm', NULL, 29, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 10, 'Pharma & Firm', 0, 0, 1, NULL, NULL, NULL, NULL),
(171, 'Betainvet Plus 500gm', NULL, 21, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 32, 'Agrovet Pharma', 0, 0, 1, NULL, NULL, NULL, NULL),
(172, 'R.R.P Carp Grower 25kg', NULL, 30, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'R.R.P Agro Farms', 0, 0, 1, NULL, NULL, NULL, NULL),
(173, 'NO-SAL 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'ACI Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(174, 'D-Flox 500ml', NULL, 26, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 12, 'Agrovet Pharma', 0, 0, 1, NULL, NULL, NULL, NULL),
(175, 'R.R.P Carp Starter 25kg', NULL, 30, NULL, 7, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'R.R.P Agro Farms', 0, 0, 1, NULL, NULL, NULL, NULL),
(176, 'SALMOGUARD Sol. 1liter', NULL, 27, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Rafique Medicine Bangladesh', 0, 0, 1, NULL, NULL, NULL, NULL),
(177, 'Zeal Plus 1liter', NULL, 27, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'Avesta Agrovet', 0, 0, 1, NULL, NULL, NULL, NULL),
(178, 'Viro-Free 1liter', NULL, 27, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'ACI Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(179, 'Phage 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 'ACI Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(180, 'Corymune-7K 1000dose', NULL, 25, NULL, 2, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 2, 'ACI Limited', 0, 0, 1, NULL, '1-admin', NULL, '2022-05-24 18:44:35'),
(181, 'Plex-ZN 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 12, 'ACI Limited', 0, 0, 1, NULL, NULL, NULL, NULL),
(182, 'Ampro-50 100ml', NULL, 28, NULL, 6, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 6, 'ACI Limited', 10, 10, 1, NULL, '1-admin', NULL, '2022-05-29 08:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

CREATE TABLE `item_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_parent_id` int(11) NOT NULL DEFAULT 0,
  `_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_categories`
--

INSERT INTO `item_categories` (`id`, `_parent_id`, `_name`, `_description`, `created_at`, `updated_at`) VALUES
(1, 0, 'Ready Sonali Bird', NULL, '2022-03-31 10:40:21', '2022-05-27 10:33:01'),
(2, 0, 'Vaccine', NULL, '2022-03-31 10:40:43', '2022-05-24 23:20:06'),
(3, 0, 'Carl Layer Bird', NULL, '2022-05-24 23:18:46', '2022-05-27 10:32:43'),
(4, 0, 'Chicks', NULL, '2022-05-24 23:20:32', '2022-05-24 23:20:32'),
(5, 0, 'Ready Broiler Bird', NULL, '2022-05-24 23:20:40', '2022-05-27 10:32:22'),
(6, 0, 'Medicine', NULL, '2022-05-24 23:20:47', '2022-05-24 23:20:47'),
(7, 0, 'Feed', NULL, '2022-05-24 23:20:53', '2022-05-27 12:30:24');

-- --------------------------------------------------------

--
-- Table structure for table `item_inventories`
--

CREATE TABLE `item_inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_item_id` bigint(20) UNSIGNED NOT NULL,
  `_item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_unit_id` int(11) DEFAULT NULL,
  `_category_id` int(11) NOT NULL,
  `_date` date NOT NULL,
  `_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_transection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_transection_ref` int(11) NOT NULL,
  `_transection_detail_ref_id` int(11) NOT NULL,
  `_qty` double(15,4) NOT NULL DEFAULT 0.0000,
  `_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_cost_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_value` double(15,4) NOT NULL DEFAULT 0.0000,
  `_cost_value` double(15,4) NOT NULL DEFAULT 0.0000,
  `_manufacture_date` date DEFAULT NULL,
  `_expire_date` date DEFAULT NULL,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_store_id` int(11) DEFAULT NULL,
  `_cost_center_id` int(11) DEFAULT NULL,
  `_store_salves_id` int(11) DEFAULT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_inventories`
--

INSERT INTO `item_inventories` (`id`, `_item_id`, `_item_name`, `_unit_id`, `_category_id`, `_date`, `_time`, `_transection`, `_transection_ref`, `_transection_detail_ref_id`, `_qty`, `_rate`, `_cost_rate`, `_value`, `_cost_value`, `_manufacture_date`, `_expire_date`, `_branch_id`, `_store_id`, `_cost_center_id`, `_store_salves_id`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'R.R.P Broiler Starter 50kg', 31, 7, '2022-05-25', '10:26:48', 'Purchase', 1, 1, 6.0000, 3185.0000, 2890.0000, 17340.0000, 17340.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:51:18', '2022-05-26 10:26:48'),
(2, 2, 'R.R.P Broiler Grower 50kg', 31, 7, '2022-05-25', '10:26:48', 'Purchase', 1, 2, 51.0000, 3185.0000, 2890.0000, 147390.0000, 147390.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:51:18', '2022-05-26 10:26:48'),
(3, 5, 'R.R.P Layer Layer 50kg', 31, 7, '2022-05-25', '10:26:48', 'Purchase', 1, 3, 2.0000, 2590.0000, 2472.5000, 4945.0000, 4945.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:51:18', '2022-05-26 10:26:48'),
(4, 6, 'R.R.P Sonali Starter 50kg', 31, 7, '2022-05-25', '10:26:48', 'Purchase', 1, 4, 9.0000, 2930.0000, 2674.5000, 24070.5000, 24070.5000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:51:18', '2022-05-26 10:26:48'),
(5, 7, 'R.R.P Sonali Grower 50kg', 31, 7, '2022-05-25', '10:26:48', 'Purchase', 1, 5, 1.0000, 2930.0000, 2674.5000, 2674.5000, 2674.5000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:51:18', '2022-05-26 10:26:48'),
(6, 20, 'Aci-LEVO Vet 500ml', 26, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 6, 2.0000, 1050.0000, 850.2200, 1700.4400, 1700.4400, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:51:18', '2022-05-26 10:26:48'),
(7, 21, 'Virocid 100ml', 28, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 7, 7.0000, 180.0000, 141.5700, 990.9900, 990.9900, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:51:18', '2022-05-26 10:26:48'),
(8, 25, 'Acilyte Vet 1kg', 14, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 8, 2.0000, 130.0000, 99.0000, 198.0000, 198.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:51:18', '2022-05-26 10:26:48'),
(9, 26, 'GP Bird 1liter', 27, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 9, 4.0000, 850.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:51:18', '2022-05-26 10:26:48'),
(10, 29, 'Fra-C 12 100ml', 28, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 10, 2.0000, 350.0000, 284.6500, 569.3000, 569.3000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:55:46', '2022-05-26 10:26:48'),
(11, 31, 'Menth-A 100ml', 28, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 11, 13.0000, 460.0000, 341.2500, 4436.2500, 4436.2500, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:55:47', '2022-05-26 10:26:48'),
(12, 32, 'Nephroflush 100ml', 28, 6, '2022-05-25', '11:28:08', 'Purchase', 1, 12, 1.0000, 220.0000, 166.6700, 166.6700, 166.6700, NULL, NULL, 1, 1, 1, 1, 0, '1-admin', '1-admin', '2022-05-25 04:55:47', '2022-05-26 10:26:47'),
(13, 32, 'Nephroflush 100ml', 28, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 13, 24.0000, 220.0000, 166.6700, 4000.0800, 4000.0800, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:55:47', '2022-05-26 10:26:48'),
(14, 33, 'Alquerzim Vet 100gm', 29, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 14, 9.0000, 300.0000, 243.6400, 2192.7600, 2192.7600, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:55:47', '2022-05-26 10:26:48'),
(15, 35, 'Acigent Vet 100gm', 29, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 15, 10.0000, 800.0000, 640.0000, 6400.0000, 6400.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:55:47', '2022-05-26 10:26:48'),
(16, 36, 'Betaincool Plus 100gm', 29, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 16, 10.0000, 150.0000, 120.6900, 1206.9000, 1206.9000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:55:47', '2022-05-26 10:26:48'),
(17, 36, 'Betaincool Plus 100gm', 29, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 17, 18.0000, 150.0000, 124.4400, 2239.9200, 2239.9200, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:55:47', '2022-05-26 10:26:48'),
(18, 37, 'Nutri-Lac IGA 200ml', 24, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 18, 2.0000, 220.0000, 195.0000, 390.0000, 390.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:55:47', '2022-05-26 10:26:48'),
(19, 38, 'Nutri-Lac IGA 1liter', 27, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 19, 2.0000, 1030.0000, 910.0000, 1820.0000, 1820.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:55:47', '2022-05-26 10:26:48'),
(20, 39, 'Toxynil Plus Liquid 200ml', 24, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 20, 1.0000, 340.0000, 305.0000, 305.0000, 305.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:11:46', '2022-05-26 10:26:48'),
(21, 42, 'Megavit-WS 50gm', 23, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 21, 8.0000, 190.0000, 167.5000, 1340.0000, 1340.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:11:46', '2022-05-26 10:26:48'),
(22, 43, 'Kalix 500ml', 26, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 22, 1.0000, 700.0000, 625.0000, 625.0000, 625.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:11:46', '2022-05-26 10:26:48'),
(23, 47, 'Newcastle-Bronchitis 1000dose', 22, 2, '2022-05-25', '10:26:48', 'Purchase', 1, 23, 1.0000, 700.0000, 493.0000, 493.0000, 493.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:11:46', '2022-05-26 10:26:48'),
(24, 48, 'Newcastle 1000dose', 22, 2, '2022-05-25', '10:26:48', 'Purchase', 1, 24, 5.0000, 550.0000, 356.0000, 1780.0000, 1780.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:11:46', '2022-05-26 10:26:48'),
(25, 49, 'C-Floxacin 100ml', 28, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 25, 2.0000, 220.0000, 160.2900, 320.5800, 320.5800, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:11:46', '2022-05-26 10:26:48'),
(26, 50, 'C-Floxacin 500ml', 26, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 26, 3.0000, 980.0000, 777.4300, 2332.2900, 2332.2900, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:11:46', '2022-05-26 10:26:48'),
(27, 51, 'Agroneo Vet-70 100gm', 29, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 27, 5.0000, 370.0000, 289.3000, 1446.5000, 1446.5000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:11:46', '2022-05-26 10:26:48'),
(28, 58, 'Lisovit 100gm', 29, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 28, 8.0000, 500.0000, 408.9000, 3271.2000, 3271.2000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:11:46', '2022-05-26 10:26:48'),
(29, 59, 'Micronid 100gm', 29, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 29, 10.0000, 320.0000, 289.9200, 2899.2000, 2899.2000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:11:46', '2022-05-26 10:26:48'),
(30, 60, 'Enrocin 100ml', 28, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 30, 25.0000, 220.0000, 168.3800, 4209.5000, 4209.5000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:15:21', '2022-05-26 10:26:48'),
(31, 61, 'Rena-C 100gm', 29, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 31, 35.0000, 120.0000, 67.0300, 2346.0500, 2346.0500, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:15:21', '2022-05-26 10:26:48'),
(32, 62, 'Coxicure 100gm', 29, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 32, 8.0000, 190.0000, 161.1200, 1288.9600, 1288.9600, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:15:21', '2022-05-26 10:26:48'),
(33, 64, 'Sancal-P 500gm', 21, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 33, 1.0000, 400.0000, 360.0000, 360.0000, 360.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:15:21', '2022-05-26 10:26:48'),
(34, 65, 'Rena-K 10gm', 13, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 34, 10.0000, 20.0000, 18.5000, 185.0000, 185.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:15:21', '2022-05-26 10:26:48'),
(35, 68, 'Doxi Vet 100gm', 29, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 35, 3.0000, 160.0000, 128.3300, 384.9900, 384.9900, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:15:21', '2022-05-26 10:26:48'),
(36, 71, 'Avinex Powder 100gm', 29, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 36, 3.0000, 140.0000, 124.0000, 372.0000, 372.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:15:21', '2022-05-26 10:26:48'),
(37, 75, 'Aveflo 100ml', 28, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 37, 4.0000, 860.0000, 656.0000, 2624.0000, 2624.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:15:21', '2022-05-26 10:26:48'),
(38, 82, 'Timsen 20gm', 16, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 38, 5.0000, 110.0000, 84.0000, 420.0000, 420.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:15:21', '2022-05-26 10:26:48'),
(39, 89, 'Renaspirin 100gm', 29, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 39, 2.0000, 360.0000, 298.4000, 596.8000, 596.8000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:15:21', '2022-05-26 10:26:48'),
(40, 89, 'Renaspirin 100gm', 29, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 40, 5.0000, 360.0000, 298.4000, 1492.0000, 1492.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:18:19', '2022-05-26 10:26:48'),
(41, 93, 'Myco Out Powder 100gm', 29, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 41, 5.0000, 350.0000, 282.9000, 1414.5000, 1414.5000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:18:19', '2022-05-26 10:26:48'),
(42, 97, 'Renamycin Powder 1kg', 14, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 42, 1.0000, 630.0000, 584.6400, 584.6400, 584.6400, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:18:19', '2022-05-26 10:26:48'),
(43, 97, 'Renamycin Powder 1kg', 14, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 43, 1.0000, 630.0000, 584.6400, 584.6400, 584.6400, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:18:19', '2022-05-26 10:26:48'),
(44, 100, 'NavamoX Vet', 29, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 44, 49.0000, 220.0000, 165.6400, 8116.3600, 8116.3600, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:18:19', '2022-05-26 10:26:48'),
(45, 100, 'NavamoX Vet', 29, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 45, 30.0000, 220.0000, 165.6400, 4969.2000, 4969.2000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:18:19', '2022-05-26 10:26:48'),
(46, 101, 'GP Bird 100ml', 28, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 46, 22.0000, 90.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:18:19', '2022-05-26 10:26:48'),
(47, 104, 'Farmatan Liquid 100ml', 28, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 47, 1.0000, 150.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:18:19', '2022-05-26 10:26:48'),
(48, 105, 'Activate WD MAX 1liter', 27, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 48, 8.0000, 800.0000, 581.6700, 4653.3600, 4653.3600, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(49, 107, 'Antigout Vet 100gm', 29, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 49, 9.0000, 330.0000, 273.7800, 2464.0200, 2464.0200, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(50, 107, 'Antigout Vet 100gm', 29, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 50, 9.0000, 330.0000, 274.1200, 2467.0800, 2467.0800, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(51, 115, 'Flostar 100ml', 28, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 51, 1.0000, 900.0000, 701.2500, 701.2500, 701.2500, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(52, 116, 'Komitil 100ml', 28, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 52, 4.0000, 980.0000, 780.0000, 3120.0000, 3120.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(53, 117, 'LiquiShine 1liter', 27, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 53, 8.0000, 1050.0000, 734.0900, 5872.7200, 5872.7200, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(54, 118, 'Vitamin AD3E 100ml', 28, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 54, 3.0000, 240.0000, 169.6000, 508.8000, 508.8000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(55, 119, 'CS Vet Plus 100gm', 29, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 55, 1.0000, 620.0000, 458.3300, 458.3300, 458.3300, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(56, 120, 'Enravet Plus 500gm', 21, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 56, 2.0000, 720.0000, 585.0000, 1170.0000, 1170.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(57, 127, 'Komi Coccin Solution 100ml', 28, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 57, 10.0000, 440.0000, 348.5000, 3485.0000, 3485.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(58, 133, 'Acigold-WS 100gm', 29, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 58, 8.0000, 250.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(59, 135, 'D-Flox 100ml', 28, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 59, 3.0000, 520.0000, 395.8300, 1187.4900, 1187.4900, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(60, 137, 'SI Chlor-Tab', 15, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 60, 5.0000, 15.0000, 9.9600, 49.8000, 49.8000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(61, 138, 'Hepavex-200 100ml', 28, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 61, 4.0000, 85.0000, 66.6700, 266.6800, 266.6800, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(62, 142, 'Ranovir 100gm', 29, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 62, 10.0000, 500.0000, 409.0900, 4090.9000, 4090.9000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(63, 155, 'Energy Plus 500gm', 21, 6, '2022-05-25', '11:28:09', 'Purchase', 1, 63, 1.0000, 160.0000, 136.3600, 136.3600, 136.3600, NULL, NULL, 1, 1, 1, 1, 0, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:47'),
(64, 155, 'Energy Plus 500gm', 21, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 64, 18.0000, 160.0000, 133.3300, 2399.9400, 2399.9400, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(65, 159, 'Gumbomed 500dose', 19, 2, '2022-05-25', '11:28:09', 'Purchase', 1, 65, 4.0000, 350.0000, 171.0000, 684.0000, 684.0000, NULL, NULL, 1, 1, 1, 1, 0, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:47'),
(66, 160, 'Gumbomed Plus 500dose', 19, 2, '2022-05-25', '11:28:09', 'Purchase', 1, 66, 3.0000, 400.0000, 212.9500, 638.8500, 638.8500, NULL, NULL, 1, 1, 1, 1, 0, '1-admin', '1-admin', '2022-05-25 05:24:53', '2022-05-26 10:26:47'),
(67, 161, 'Ranivax Booster 500dose', 19, 2, '2022-05-25', '11:28:09', 'Purchase', 1, 67, 2.0000, 350.0000, 163.7000, 327.4000, 327.4000, NULL, NULL, 1, 1, 1, 1, 0, '1-admin', '1-admin', '2022-05-25 05:24:53', '2022-05-26 10:26:47'),
(68, 162, 'Ranivax Initial 500dose', 19, 2, '2022-05-25', '11:28:09', 'Purchase', 1, 68, 5.0000, 300.0000, 148.5200, 742.6000, 742.6000, NULL, NULL, 1, 1, 1, 0, 0, '1-admin', '1-admin', '2022-05-25 05:28:09', '2022-05-26 10:26:47'),
(69, 165, 'No Gas 100ml', 28, 6, '2022-05-25', '11:28:09', 'Purchase', 1, 69, 1.0000, 280.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 1, 1, 1, 0, 0, '1-admin', '1-admin', '2022-05-25 05:28:09', '2022-05-26 10:26:47'),
(70, 170, 'Fly Trap G 100gm', 29, 6, '2022-05-25', '11:28:09', 'Purchase', 1, 70, 6.0000, 325.0000, 269.5000, 1617.0000, 1617.0000, NULL, NULL, 1, 1, 1, 0, 0, '1-admin', '1-admin', '2022-05-25 05:28:09', '2022-05-26 10:26:47'),
(71, 171, 'Betainvet Plus 500gm', 21, 6, '2022-05-25', '11:28:09', 'Purchase', 1, 71, 4.0000, 300.0000, 225.0000, 900.0000, 900.0000, NULL, NULL, 1, 1, 1, 0, 0, '1-admin', '1-admin', '2022-05-25 05:28:09', '2022-05-26 10:26:47'),
(72, 171, 'Betainvet Plus 500gm', 21, 6, '2022-05-25', '11:28:09', 'Purchase', 1, 72, 12.0000, 300.0000, 225.0000, 2700.0000, 2700.0000, NULL, NULL, 1, 1, 1, 0, 0, '1-admin', '1-admin', '2022-05-25 05:28:09', '2022-05-26 10:26:47'),
(73, 174, 'D-Flox 500ml', 26, 6, '2022-05-25', '11:28:09', 'Purchase', 1, 73, 6.0000, 2050.0000, 1625.0000, 9750.0000, 9750.0000, NULL, NULL, 1, 1, 1, 0, 0, '1-admin', '1-admin', '2022-05-25 05:28:09', '2022-05-26 10:26:47'),
(74, 180, 'Corymune-7K 1000dose', 25, 2, '2022-05-25', '11:28:09', 'Purchase', 1, 74, 1.0000, 9800.0000, 9000.0000, 9000.0000, 9000.0000, NULL, NULL, 1, 1, 1, 0, 0, '1-admin', '1-admin', '2022-05-25 05:28:09', '2022-05-26 10:26:47'),
(75, 181, 'Plex-ZN 100ml', 28, 6, '2022-05-25', '11:28:09', 'Purchase', 1, 75, 6.0000, 110.0000, 90.9100, 545.4600, 545.4600, NULL, NULL, 1, 1, 1, 0, 0, '1-admin', '1-admin', '2022-05-25 05:28:09', '2022-05-26 10:26:47'),
(76, 182, 'Ampro-50 100ml', 28, 6, '2022-05-25', '11:28:09', 'Purchase', 1, 76, 3.0000, 500.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 1, 1, 1, 0, 0, '1-admin', '1-admin', '2022-05-25 05:28:09', '2022-05-26 10:26:47'),
(77, 159, 'Gumbomed 500dose', 19, 2, '2022-05-25', '10:26:48', 'Purchase', 1, 77, 4.0000, 350.0000, 171.0000, 684.0000, 684.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-26 08:41:32', '2022-05-26 10:26:48'),
(78, 160, 'Gumbomed Plus 500dose', 19, 2, '2022-05-25', '10:26:48', 'Purchase', 1, 78, 3.0000, 400.0000, 212.9500, 638.8500, 638.8500, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-26 08:50:38', '2022-05-26 10:26:48'),
(79, 161, 'Ranivax Booster 500dose', 19, 2, '2022-05-25', '10:26:48', 'Purchase', 1, 79, 2.0000, 350.0000, 163.7000, 327.4000, 327.4000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-26 08:55:14', '2022-05-26 10:26:48'),
(80, 162, 'Ranivax Initial 500dose', 19, 2, '2022-05-25', '10:26:48', 'Purchase', 1, 80, 5.0000, 300.0000, 148.5200, 742.6000, 742.6000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-26 08:55:14', '2022-05-26 10:26:48'),
(81, 165, 'No Gas 100ml', 28, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 81, 1.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-26 08:55:14', '2022-05-26 10:26:48'),
(82, 170, 'Fly Trap G 100gm', 29, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 82, 4.0000, 325.0000, 269.5000, 1078.0000, 1078.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-26 08:55:14', '2022-05-26 10:26:48'),
(83, 171, 'Betainvet Plus 500gm', 21, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 83, 16.0000, 300.0000, 225.0000, 3600.0000, 3600.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-26 08:59:15', '2022-05-26 10:26:48'),
(84, 174, 'D-Flox 500ml', 26, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 84, 6.0000, 2050.0000, 1625.0000, 9750.0000, 9750.0000, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-26 08:59:15', '2022-05-26 10:26:48'),
(85, 180, 'Corymune-7K 1000dose', 25, 2, '2022-05-25', '10:26:48', 'Purchase', 1, 85, 1.0000, 9800.0000, 9000.0000, 9000.0000, 9000.0000, NULL, NULL, 1, 1, 1, 0, 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-26 10:26:48'),
(86, 181, 'Plex-ZN 100ml', 28, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 86, 6.0000, 110.0000, 90.9100, 545.4600, 545.4600, NULL, NULL, 1, 1, 1, 0, 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-26 10:26:48'),
(87, 182, 'Ampro-50 100ml', 28, 6, '2022-05-25', '10:26:48', 'Purchase', 1, 87, 3.0000, 500.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 1, 1, 1, 0, 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-26 10:26:48'),
(88, 1, 'R.R.P Broiler Starter 50kg', 31, 7, '2022-05-26', '05:23:29', 'Sales', 1, 1, -1.0000, 3185.0000, 2890.0000, 3185.0000, 2890.0000, '2022-05-17', '2022-06-30', 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-27 06:01:15', '2022-05-28 05:23:29'),
(89, 21, 'Virocid 100ml', 28, 6, '2022-05-26', '05:23:29', 'Sales', 1, 2, -1.0000, 180.0000, 141.5700, 180.0000, 141.5700, '2022-01-01', '2024-01-01', 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-27 06:01:15', '2022-05-28 05:23:29'),
(90, 5, 'R.R.P Layer Layer 50kg', 31, 7, '2022-05-26', '05:18:38', 'Sales', 2, 3, -1.0000, 2590.0000, 2472.5000, 2590.0000, 2472.5000, '2022-05-17', '2022-06-30', 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-27 09:56:52', '2022-05-28 05:18:38'),
(91, 6, 'R.R.P Sonali Starter 50kg', 31, 7, '2022-05-26', '05:25:44', 'Sales', 3, 4, -2.0000, 2930.0000, 2674.5000, 5860.0000, 5349.0000, '2022-05-16', '2022-06-29', 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-27 10:06:06', '2022-05-28 05:25:44'),
(92, 97, 'Renamycin Powder 1kg', 25, 6, '2022-05-26', '06:03:09', 'Purchase', 2, 88, 13.0000, 620.0000, 584.6430, 7600.3590, 7600.3590, NULL, NULL, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-27 10:55:02', '2022-05-28 06:03:09'),
(93, 156, 'Cevac ND IBD K 1000dose', 22, 2, '2022-05-26', '06:03:57', 'Purchase', 3, 89, 3.0000, 3750.0000, 3300.0000, 9900.0000, 9900.0000, NULL, NULL, 1, 1, 1, 0, 1, '1-admin', '1-admin', '2022-05-27 11:47:50', '2022-05-28 06:03:57'),
(94, 115, 'Flostar 100ml', 28, 6, '2022-05-26', '06:05:02', 'Purchase', 4, 90, 10.0000, 900.0000, 701.2500, 7012.5000, 7012.5000, NULL, NULL, 1, 1, 1, 0, 1, '1-admin', '1-admin', '2022-05-27 11:52:23', '2022-05-28 06:05:02'),
(95, 1, 'R.R.P Broiler Starter 50kg', 31, 7, '2022-05-26', '06:12:09', 'Purchase', 5, 91, 5.0000, 3020.0000, 3020.0000, 15100.0000, 15100.0000, NULL, NULL, 1, 1, 1, 0, 1, '1-admin', '1-admin', '2022-05-27 11:58:43', '2022-05-28 06:12:09'),
(96, 2, 'R.R.P Broiler Grower 50kg', 31, 7, '2022-05-26', '06:12:09', 'Purchase', 5, 92, 20.0000, 3020.0000, 3020.0000, 60400.0000, 60400.0000, NULL, NULL, 1, 1, 1, 0, 1, '1-admin', '1-admin', '2022-05-27 11:58:43', '2022-05-28 06:12:09'),
(97, 6, 'R.R.P Sonali Starter 50kg', 31, 7, '2022-05-26', '06:12:09', 'Purchase', 5, 93, 20.0000, 2784.5000, 2784.5000, 55690.0000, 55690.0000, NULL, NULL, 1, 1, 1, 0, 1, '1-admin', '1-admin', '2022-05-27 11:58:43', '2022-05-28 06:12:09'),
(98, 5, 'R.R.P Layer Layer 50kg', 31, 7, '2022-05-26', '06:12:09', 'Purchase', 5, 94, 45.0000, 2552.5000, 2552.5000, 114862.5000, 114862.5000, NULL, NULL, 1, 1, 1, 0, 1, '1-admin', '1-admin', '2022-05-27 11:58:43', '2022-05-28 06:12:09'),
(99, 1, 'R.R.P Broiler Starter 50kg', 31, 7, '2022-05-26', '06:11:07', 'Purchase', 6, 95, 45.0000, 3185.0000, 3020.0000, 135900.0000, 135900.0000, NULL, NULL, 1, 1, 1, 0, 1, '1-admin', '1-admin', '2022-05-27 12:06:28', '2022-05-28 06:11:07'),
(100, 2, 'R.R.P Broiler Grower 50kg', 31, 7, '2022-05-26', '06:11:07', 'Purchase', 6, 96, 20.0000, 3185.0000, 3020.0000, 60400.0000, 60400.0000, NULL, NULL, 1, 1, 1, 0, 1, '1-admin', '1-admin', '2022-05-27 12:06:28', '2022-05-28 06:11:07'),
(101, 6, 'R.R.P Sonali Starter 50kg', 31, 7, '2022-05-26', '06:11:07', 'Purchase', 6, 97, 5.0000, 2930.0000, 2784.5000, 13922.5000, 13922.5000, NULL, NULL, 1, 1, 1, 0, 1, '1-admin', '1-admin', '2022-05-27 12:06:28', '2022-05-28 06:11:07'),
(102, 7, 'R.R.P Sonali Grower 50kg', 31, 7, '2022-05-26', '06:11:07', 'Purchase', 6, 98, 15.0000, 2930.0000, 2784.5000, 41767.5000, 41767.5000, NULL, NULL, 1, 1, 1, 0, 1, '1-admin', '1-admin', '2022-05-27 12:06:28', '2022-05-28 06:11:07'),
(103, 5, 'R.R.P Layer Layer 50kg', 31, 7, '2022-05-26', '06:11:07', 'Purchase', 6, 99, 15.0000, 2590.0000, 2552.5000, 38287.5000, 38287.5000, NULL, NULL, 1, 1, 1, 0, 1, '1-admin', '1-admin', '2022-05-27 12:06:28', '2022-05-28 06:11:07'),
(104, 123, 'Sonali Murgi', 14, 1, '2022-05-26', '05:45:14', 'Purchase', 7, 100, 232.1000, 265.0000, 260.0000, 60346.0000, 60346.0000, NULL, NULL, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-05-28 05:45:14', '2022-05-28 05:45:14'),
(105, 123, 'Sonali Murgi', 14, 1, '2022-05-26', '05:46:59', 'Sales', 4, 5, -232.1000, 265.0000, 260.0000, 61506.5000, 60346.0000, NULL, NULL, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-05-28 05:46:59', '2022-05-28 05:46:59'),
(106, 1, 'R.R.P Broiler Starter 50kg', 31, 7, '2022-05-26', '06:16:42', 'Sales', 5, 6, -5.0000, 3020.0000, 3020.0000, 15100.0000, 15100.0000, '2022-05-19', '2022-07-02', 1, 1, 1, 0, 1, '1-admin', NULL, '2022-05-28 06:16:42', '2022-05-28 06:16:42'),
(107, 2, 'R.R.P Broiler Grower 50kg', 31, 7, '2022-05-26', '06:16:42', 'Sales', 5, 7, -20.0000, 3020.0000, 3020.0000, 60400.0000, 60400.0000, '2022-05-25', '2022-07-08', 1, 1, 1, 0, 1, '1-admin', NULL, '2022-05-28 06:16:42', '2022-05-28 06:16:42'),
(108, 6, 'R.R.P Sonali Starter 50kg', 31, 7, '2022-05-26', '06:16:42', 'Sales', 5, 8, -20.0000, 2784.5000, 2784.5000, 55690.0000, 55690.0000, '2022-05-16', '2022-06-29', 1, 1, 1, 0, 1, '1-admin', NULL, '2022-05-28 06:16:42', '2022-05-28 06:16:42'),
(109, 5, 'R.R.P Layer Layer 50kg', 31, 7, '2022-05-26', '06:16:42', 'Sales', 5, 9, -45.0000, 2552.5000, 2552.5000, 114862.5000, 114862.5000, '2022-05-23', '2022-07-06', 1, 1, 1, 0, 1, '1-admin', NULL, '2022-05-28 06:16:42', '2022-05-28 06:16:42'),
(110, 2, 'R.R.P Broiler Grower 50kg', 31, 7, '2022-05-26', '07:00:06', 'Sales', 6, 10, -10.0000, 3185.0000, 2890.0000, 31850.0000, 28900.0000, '2022-05-18', '2022-07-01', 1, 1, 1, 1, 1, '1-admin', NULL, '2022-05-28 07:00:06', '2022-05-28 07:00:06'),
(111, 97, 'Renamycin Powder 1kg', 25, 6, '2022-05-26', '07:00:06', 'Sales', 6, 11, -1.0000, 630.0000, 584.6400, 630.0000, 584.6400, '2020-11-01', '2022-11-30', 1, 1, 1, 1, 1, '1-admin', NULL, '2022-05-28 07:00:06', '2022-05-28 07:00:06'),
(112, 36, 'Betaincool Plus 100gm', 29, 6, '2022-05-26', '07:00:06', 'Sales', 6, 12, -2.0000, 150.0000, 120.6900, 300.0000, 241.3800, '2021-06-01', '2024-06-30', 1, 1, 1, 1, 1, '1-admin', NULL, '2022-05-28 07:00:06', '2022-05-28 07:00:06'),
(113, 2, 'R.R.P Broiler Grower 50kg', 31, 7, '2022-05-26', '09:13:43', 'Sales', 7, 13, -12.0000, 3185.0000, 2890.0000, 38220.0000, 34680.0000, '2022-05-18', '2022-07-01', 1, 1, 1, 1, 1, '1-admin', NULL, '2022-05-28 09:13:43', '2022-05-28 09:13:43'),
(114, 1, 'R.R.P Broiler Starter 50kg', 31, 7, '2022-05-26', '19:38:35', 'Sales', 8, 14, -5.0000, 3185.0000, 2890.0000, 15925.0000, 14450.0000, '2022-05-17', '2022-06-30', 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-28 09:29:46', '2022-05-28 13:38:35'),
(115, 48, 'Newcastle 1000dose', 22, 2, '2022-05-26', '19:38:35', 'Sales', 8, 15, -1.0000, 550.0000, 356.0000, 550.0000, 356.0000, NULL, '2023-05-31', 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-28 09:29:46', '2022-05-28 13:38:35'),
(116, 1, 'R.R.P Broiler Starter 50kg', 31, 7, '2022-05-26', '19:38:35', 'Sales', 8, 16, -3.0000, 3185.0000, 3020.0000, 9555.0000, 9060.0000, '2022-05-19', '2022-07-02', 1, 1, 1, 0, 1, '1-admin', '1-admin', '2022-05-28 09:29:46', '2022-05-28 13:38:35'),
(117, 2, 'R.R.P Broiler Grower 50kg', 31, 7, '2022-05-28', '18:54:37', 'Sales', 9, 17, -1.0000, 3185.0000, 2890.0000, 3185.0000, 2890.0000, '2022-05-18', '2022-07-01', 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-28 16:14:29', '2022-05-28 12:54:37'),
(118, 62, 'Coxicure 100gm', 29, 6, '2022-05-28', '16:25:59', 'Purchase', 8, 101, 16.0000, 190.0000, 160.9375, 2575.0000, 2575.0000, NULL, NULL, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-05-28 16:25:59', '2022-05-28 16:25:59'),
(120, 139, 'Acify 1liter', 27, 6, '2022-05-29', '05:05:03', 'Purchase', 10, 103, 1.0000, 10.0000, 10.0000, 10.0000, 10.0000, NULL, NULL, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-05-28 23:05:03', '2022-05-28 23:05:03'),
(121, 139, 'Acify 1liter', 27, 6, '2022-05-29', '05:05:38', 'Purchase', 11, 104, 1.0000, 10.0000, 10.0000, 10.0000, 10.0000, NULL, NULL, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-05-28 23:05:38', '2022-05-28 23:05:38'),
(122, 5, 'R.R.P Layer Layer 50kg', 31, 7, '2022-05-29', '05:45:29', 'Sales Return', 1, 1, 0.0000, 2590.0000, 2472.5000, 0.0000, 0.0000, '2022-05-17', '2022-06-30', 1, 1, 1, 1, 1, '1-admin', NULL, '2022-05-28 23:45:16', '2022-05-28 23:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `main_account_head`
--

CREATE TABLE `main_account_head` (
  `id` int(11) NOT NULL,
  `_name` varchar(60) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_account_head`
--

INSERT INTO `main_account_head` (`id`, `_name`, `created_at`, `updated_at`) VALUES
(1, 'Assets', '2022-03-17 16:00:58', '2022-03-17 16:00:58'),
(2, 'Liability', '2022-03-17 16:00:58', '2022-03-17 16:00:58'),
(3, 'Income', '2022-03-17 16:00:58', '2022-03-17 16:00:58'),
(4, 'Expenses', '2022-03-17 16:00:58', '2022-03-17 16:00:58'),
(5, 'Capital', '2022-03-17 16:00:58', '2022-03-17 16:00:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2020_10_09_135732_create_products_table', 1),
(6, '2021_05_31_063527_create_general_settings_table', 2),
(7, '2021_06_01_150128_create_boards_table', 2),
(19, '2021_06_20_180911_create_page_rows_table', 7),
(78, '2022_02_01_143528_create_branches_table', 15),
(88, '2020_10_09_135640_create_permission_tables', 16),
(89, '2021_06_06_163854_create_social_media_table', 16),
(90, '2022_02_01_144222_create_account_heads_table', 16),
(91, '2022_02_01_144223_create_account_groups_table', 16),
(92, '2022_02_01_144249_create_account_ledgers_table', 16),
(93, '2022_02_01_144312_create_purchase_orders_table', 16),
(95, '2022_02_01_144327_create_purchase_order_details_table', 16),
(96, '2022_02_01_144348_create_purchases_table', 16),
(97, '2022_02_01_144404_create_purchase_details_table', 16),
(98, '2022_02_01_144444_create_voucher_masters_table', 17),
(99, '2022_02_01_144458_create_voucher_master_details_table', 17),
(100, '2022_02_01_144610_create_sales_orders_table', 17),
(101, '2022_02_01_144624_create_sales_order_details_table', 17),
(102, '2022_02_01_144650_create_product_price_lists_table', 17),
(103, '2022_02_01_144651_create_sales_table', 17),
(105, '2022_02_01_144722_create_sales_returns_table', 17),
(106, '2022_02_01_144738_create_sales_return_details_table', 17),
(107, '2022_02_01_144830_create_purchase_returns_table', 17),
(109, '2022_02_01_145002_create_proforma_sales_table', 17),
(110, '2022_02_01_145015_create_proforma_sales_details_table', 17),
(111, '2022_02_01_145150_create_item_inventories_table', 17),
(112, '2022_02_01_145216_create_default_ledgers_table', 17),
(113, '2022_02_01_145357_create_voucher_types_table', 17),
(114, '2022_02_01_145434_create_cost_centers_table', 17),
(115, '2022_02_01_145517_create_store_houses_table', 17),
(116, '2022_02_01_145606_create_store_house_selves_table', 17),
(117, '2022_03_31_155636_create_item_categories_table', 18),
(118, '2022_02_01_144326_create_inventories_table', 19),
(120, '2022_04_15_141902_create_purchase_accounts_table', 20),
(121, '2022_04_19_200104_create_purchase_return_form_settings_table', 21),
(122, '2022_04_19_202822_create_purchase_return_accounts_table', 22),
(123, '2022_04_21_183954_create_sales_form_settings_table', 23),
(124, '2022_04_22_163045_create_sales_accounts_table', 24),
(125, '2022_04_22_164221_create_sales_return_accounts_table', 25),
(126, '2022_04_22_164136_create_sales_return_form_settings_table', 26),
(127, '2022_02_01_144705_create_sales_details_table', 27),
(128, '2022_02_01_144901_create_purchase_return_details_table', 28);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 46),
(1, 'App\\Models\\User', 47),
(5, 'App\\Models\\User', 4),
(5, 'App\\Models\\User', 5),
(5, 'App\\Models\\User', 28),
(5, 'App\\Models\\User', 31),
(5, 'App\\Models\\User', 33),
(5, 'App\\Models\\User', 34),
(5, 'App\\Models\\User', 35),
(5, 'App\\Models\\User', 36),
(5, 'App\\Models\\User', 38),
(5, 'App\\Models\\User', 40);

-- --------------------------------------------------------

--
-- Table structure for table `page_rows`
--

CREATE TABLE `page_rows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `row_num` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_rows`
--

INSERT INTO `page_rows` (`id`, `row_num`, `created_at`, `updated_at`) VALUES
(1, 10, NULL, NULL),
(2, 20, NULL, NULL),
(3, 30, NULL, NULL),
(4, 40, NULL, NULL),
(5, 50, NULL, NULL),
(6, 60, NULL, NULL),
(7, 100, NULL, NULL),
(8, 200, NULL, NULL),
(9, 300, NULL, NULL),
(10, 500, NULL, NULL),
(11, 100, NULL, NULL),
(12, 2000, NULL, NULL),
(13, 5000, NULL, NULL),
(14, 10000, NULL, NULL),
(15, 20000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', 'Role', NULL, NULL),
(2, 'role-create', 'web', 'Role', NULL, NULL),
(3, 'role-edit', 'web', 'Role', NULL, NULL),
(4, 'role-delete', 'web', 'Role', NULL, NULL),
(5, 'user-list', 'web', 'User', NULL, NULL),
(6, 'user-create', 'web', 'User', NULL, NULL),
(7, 'user-edit', 'web', 'User', NULL, NULL),
(8, 'user-delete', 'web', 'User', NULL, NULL),
(9, 'account-type-list', 'web', 'Accounts', NULL, NULL),
(10, 'account-type-create', 'web', 'Accounts', NULL, NULL),
(11, 'account-type-edit', 'web', 'Accounts', NULL, NULL),
(12, 'account-type-delete', 'web', 'Accounts', NULL, NULL),
(13, 'account-group-list', 'web', 'Accounts', NULL, NULL),
(14, 'account-group-create', 'web', 'Accounts', NULL, NULL),
(15, 'account-group-edit', 'web', 'Accounts', NULL, NULL),
(16, 'account-group-delete', 'web', 'Accounts', NULL, NULL),
(17, 'branch-list', 'web', 'Branch', NULL, NULL),
(18, 'branch-create', 'web', 'Branch', NULL, NULL),
(19, 'branch-edit', 'web', 'Branch', NULL, NULL),
(20, 'branch-delete', 'web', 'Branch', NULL, NULL),
(21, 'cost-center-list', 'web', 'Cost Center', NULL, NULL),
(22, 'cost-center-create', 'web', 'Cost Center', NULL, NULL),
(23, 'cost-center-edit', 'web', 'Cost Center', NULL, NULL),
(24, 'cost-center-delete', 'web', 'Cost Center', NULL, NULL),
(25, 'store-house-list', 'web', 'Store', NULL, NULL),
(26, 'store-house-create', 'web', 'Store', NULL, NULL),
(27, 'store-house-edit', 'web', 'Store', NULL, NULL),
(28, 'store-house-delete', 'web', 'Store', NULL, NULL),
(29, 'admin-settings', 'web', 'Settings', NULL, NULL),
(30, 'account-ledger-list', 'web', 'Accounts', NULL, NULL),
(31, 'account-ledger-create', 'web', 'Accounts', NULL, NULL),
(32, 'account-ledger-edit', 'web', 'Accounts', NULL, NULL),
(33, 'account-ledger-delete', 'web', 'Accounts', NULL, NULL),
(34, 'voucher-list', 'web', 'Voucher', NULL, NULL),
(35, 'voucher-create', 'web', 'Voucher', NULL, NULL),
(36, 'voucher-edit', 'web', 'Voucher', NULL, NULL),
(37, 'voucher-delete', 'web', 'Voucher', NULL, NULL),
(38, 'voucher-print', 'web', 'Voucher', NULL, NULL),
(39, 'ledger-report', 'web', 'Accounts Report', NULL, NULL),
(40, 'trail-balance', 'web', 'Accounts Report', NULL, NULL),
(41, 'income-statement', 'web', 'Accounts Report', NULL, NULL),
(42, 'balance-sheet', 'web', 'Accounts Report', NULL, NULL),
(43, 'work-sheet', 'web', 'Accounts Report', NULL, NULL),
(44, 'group-ledger', 'web', 'Accounts Report', NULL, NULL),
(45, 'account-report-menu', 'web', 'Accounts Report', NULL, NULL),
(46, 'income-statement-settings', 'web', 'Accounts Report', NULL, NULL),
(47, 'inventory-menu', 'web', 'Inventory', NULL, NULL),
(48, 'item-category-list', 'web', 'Inventory', NULL, NULL),
(49, 'item-category-create', 'web', 'Inventory', NULL, NULL),
(50, 'item-category-edit', 'web', 'Inventory', NULL, NULL),
(51, 'item-category-delete', 'web', 'Inventory', NULL, NULL),
(52, 'item-information-list', 'web', 'Inventory', NULL, NULL),
(53, 'item-information-create', 'web', 'Inventory', NULL, NULL),
(54, 'item-information-edit', 'web', 'Inventory', NULL, NULL),
(55, 'item-information-delete', 'web', 'Inventory', NULL, NULL),
(56, 'purchase-list', 'web', 'Purchase', NULL, NULL),
(57, 'purchase-create', 'web', 'Purchase', NULL, NULL),
(58, 'purchase-edit', 'web', 'Purchase', NULL, NULL),
(59, 'purchase-delete', 'web', 'Purchase', NULL, NULL),
(60, 'unit-list', 'web', 'Inventory', NULL, NULL),
(61, 'unit-create', 'web', 'Inventory', NULL, NULL),
(62, 'unit-edit', 'web', 'Inventory', NULL, NULL),
(63, 'unit-delete', 'web', 'Inventory', NULL, NULL),
(64, 'purchase-print', 'web', 'Purchase', NULL, NULL),
(65, 'purchase-form-settings', 'web', 'Purchase', NULL, NULL),
(66, 'purchase-return-form-settings', 'web', 'Purchase Return', NULL, NULL),
(67, 'purchase-return-print', 'web', 'Purchase Return', NULL, NULL),
(68, 'purchase-return-delete', 'web', 'Purchase Return', NULL, NULL),
(69, 'purchase-return-edit', 'web', 'Purchase Return', NULL, NULL),
(70, 'purchase-return-create', 'web', 'Purchase Return', NULL, NULL),
(71, 'purchase-return-list', 'web', 'Purchase Return', NULL, NULL),
(72, 'sales-list', 'web', 'Sales', NULL, NULL),
(73, 'sales-create', 'web', 'Sales', NULL, NULL),
(74, 'sales-edit', 'web', 'Sales', NULL, NULL),
(75, 'sales-delete', 'web', 'Sales', NULL, NULL),
(76, 'sales-print', 'web', 'Sales', NULL, NULL),
(77, 'sales-form-settings', 'web', 'Sales', NULL, NULL),
(78, 'sales-return-list', 'web', 'Sales Return', NULL, NULL),
(79, 'sales-return-create', 'web', 'Sales Return', NULL, NULL),
(80, 'sales-return-edit', 'web', 'Sales Return', NULL, NULL),
(81, 'sales-return-delete', 'web', 'Sales Return', NULL, NULL),
(82, 'sales-return-print', 'web', 'Sales Return', NULL, NULL),
(83, 'sales-return-settings', 'web', 'Sales Return', NULL, NULL),
(84, 'lot-item-information', 'web', 'Inventory', NULL, NULL),
(85, 'bill-party-statement', 'web', 'Inventory Report', NULL, NULL),
(86, 'date-wise-purchase', 'web', 'Inventory Report', NULL, NULL),
(87, 'purchase-summary-statement', 'web', 'Inventory Report', NULL, NULL),
(88, 'purchase-return-detail', 'web', 'Inventory Report', NULL, NULL),
(89, 'sales-summary-statement', 'web', 'Inventory Report', NULL, NULL),
(90, 'date-wise-sales', 'web', 'Inventory Report', NULL, NULL),
(91, 'sales-return-detail', 'web', 'Inventory Report', NULL, NULL),
(92, 'stock-possition', 'web', 'Inventory Report', NULL, NULL),
(93, 'stock-ledger', 'web', 'Inventory Report', NULL, NULL),
(94, 'stock-value', 'web', 'Inventory Report', NULL, NULL),
(95, 'stock-value-register', 'web', 'Inventory Report', NULL, NULL),
(96, 'gross-profit', 'web', 'Inventory Report', NULL, NULL),
(97, 'expired-item', 'web', 'Inventory Report', NULL, NULL),
(98, 'inventory-report', 'web', 'Inventory Report', NULL, NULL),
(99, 'purchase-order-print', 'web', 'Purchase Order', NULL, NULL),
(100, 'purchase-return-delete', 'web', 'Purchase Order', NULL, NULL),
(101, 'purchase-order-edit', 'web', 'Purchase Order', NULL, NULL),
(102, 'purchase-order-create', 'web', 'Purchase Order', NULL, NULL),
(103, 'purchase-order-list', 'web', 'Purchase Order', NULL, NULL),
(104, 'shortage-item', 'web', 'Inventory Report', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_price_lists`
--

CREATE TABLE `product_price_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_item_id` bigint(20) UNSIGNED NOT NULL,
  `_item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_unit_id` int(11) DEFAULT NULL,
  `_barcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_manufacture_date` date DEFAULT NULL,
  `_expire_date` date DEFAULT NULL,
  `_qty` double(15,4) NOT NULL DEFAULT 0.0000,
  `_sales_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_pur_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_sales_discount` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'use % if or it will be amount',
  `_sales_vat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'use % if or it will be amount',
  `_value` double(15,4) NOT NULL DEFAULT 0.0000,
  `_purchase_detail_id` bigint(20) UNSIGNED NOT NULL,
  `_master_id` int(11) NOT NULL,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_cost_center_id` int(11) NOT NULL DEFAULT 1,
  `_store_id` int(11) NOT NULL DEFAULT 1,
  `_store_salves_id` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `_p_discount_input` double(15,4) NOT NULL DEFAULT 0.0000,
  `_p_discount_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_p_vat` double(15,4) NOT NULL DEFAULT 0.0000,
  `_p_vat_amount` double(15,4) NOT NULL DEFAULT 0.0000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_price_lists`
--

INSERT INTO `product_price_lists` (`id`, `_item_id`, `_item`, `_unit_id`, `_barcode`, `_manufacture_date`, `_expire_date`, `_qty`, `_sales_rate`, `_pur_rate`, `_sales_discount`, `_sales_vat`, `_value`, `_purchase_detail_id`, `_master_id`, `_branch_id`, `_cost_center_id`, `_store_id`, `_store_salves_id`, `_status`, `_created_by`, `_updated_by`, `updated_at`, `created_at`, `_p_discount_input`, `_p_discount_amount`, `_p_vat`, `_p_vat_amount`) VALUES
(1, 1, 'R.R.P Broiler Starter 50kg', 31, '', '2022-05-17', '2022-06-30', 0.0000, 3185.0000, 2890.0000, '0', '0', 17340.0000, 1, 1, 1, 1, 1, '1', 0, '1-admin', '1-admin', '2022-05-28 19:38:35', '2022-05-25 10:51:18', 0.0000, 0.0000, 0.0000, 0.0000),
(2, 2, 'R.R.P Broiler Grower 50kg', 31, '', '2022-05-18', '2022-07-01', 28.0000, 3185.0000, 2890.0000, '0', '0', 147390.0000, 2, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-28 18:54:37', '2022-05-25 10:51:18', 0.0000, 0.0000, 0.0000, 0.0000),
(3, 5, 'R.R.P Layer Layer 50kg', 31, '', '2022-05-17', '2022-06-30', 1.0000, 2590.0000, 2472.5000, '0', '0', 4945.0000, 3, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-29 05:45:29', '2022-05-25 10:51:18', 0.0000, 0.0000, 0.0000, 0.0000),
(4, 6, 'R.R.P Sonali Starter 50kg', 31, '', '2022-05-16', '2022-06-29', 7.0000, 2930.0000, 2674.5000, '0', '0', 24070.5000, 4, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-28 05:25:44', '2022-05-25 10:51:18', 0.0000, 0.0000, 0.0000, 0.0000),
(5, 7, 'R.R.P Sonali Grower 50kg', 31, '', '2022-04-09', '2022-05-23', 1.0000, 2930.0000, 2674.5000, '0', '0', 2674.5000, 5, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 10:51:18', 0.0000, 0.0000, 0.0000, 0.0000),
(6, 20, 'Aci-LEVO Vet 500ml', 26, '', '2021-09-01', '2023-09-30', 2.0000, 1050.0000, 850.2200, '0', '0', 1700.4400, 6, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 10:51:18', 0.0000, 0.0000, 0.0000, 0.0000),
(7, 21, 'Virocid 100ml', 28, '', '2022-01-01', '2024-01-01', 6.0000, 180.0000, 141.5700, '0', '0', 990.9900, 7, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-28 05:23:29', '2022-05-25 10:51:18', 0.0000, 0.0000, 0.0000, 0.0000),
(8, 25, 'Acilyte Vet 1kg', 14, '', '2021-05-01', '2024-05-31', 2.0000, 130.0000, 99.0000, '0', '0', 198.0000, 8, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 10:51:18', 0.0000, 0.0000, 0.0000, 0.0000),
(9, 26, 'GP Bird 1liter', 27, '', '2020-10-01', '2023-10-31', 4.0000, 850.0000, 0.0000, '0', '0', 0.0000, 9, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 10:51:18', 0.0000, 0.0000, 0.0000, 0.0000),
(10, 29, 'Fra-C 12 100ml', 28, '', '2021-09-01', '2024-09-30', 2.0000, 350.0000, 284.6500, '0', '0', 569.3000, 10, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 10:55:46', 0.0000, 0.0000, 0.0000, 0.0000),
(11, 31, 'Menth-A 100ml', 28, '', '2022-02-01', '2025-02-28', 13.0000, 460.0000, 341.2500, '0', '0', 4436.2500, 11, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 10:55:47', 0.0000, 0.0000, 0.0000, 0.0000),
(12, 32, 'Nephroflush 100ml', NULL, '', NULL, NULL, 1.0000, 220.0000, 166.6700, '0', '0', 166.6700, 12, 1, 1, 1, 1, '1', 0, '1-admin', '1-admin', '2022-05-26 10:26:47', '2022-05-25 10:55:47', 0.0000, 0.0000, 0.0000, 0.0000),
(13, 32, 'Nephroflush 100ml', 28, '', '2022-04-01', '2025-04-30', 24.0000, 220.0000, 166.6700, '0', '0', 4000.0800, 13, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 10:55:47', 0.0000, 0.0000, 0.0000, 0.0000),
(14, 33, 'Alquerzim Vet 100gm', 29, '', '2022-02-01', '2025-02-28', 9.0000, 300.0000, 243.6400, '0', '0', 2192.7600, 14, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 10:55:47', 0.0000, 0.0000, 0.0000, 0.0000),
(15, 35, 'Acigent Vet 100gm', 29, '', '2021-07-01', '2023-07-07', 10.0000, 800.0000, 640.0000, '0', '0', 6400.0000, 15, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 10:55:47', 0.0000, 0.0000, 0.0000, 0.0000),
(16, 36, 'Betaincool Plus 100gm', 29, '', '2021-06-01', '2024-06-30', 8.0000, 150.0000, 120.6900, '0', '0', 1206.9000, 16, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-28 07:00:06', '2022-05-25 10:55:47', 0.0000, 0.0000, 0.0000, 0.0000),
(17, 36, 'Betaincool Plus 100gm', 29, '', '2021-05-01', '2024-05-31', 18.0000, 150.0000, 124.4400, '0', '0', 2239.9200, 17, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 10:55:47', 0.0000, 0.0000, 0.0000, 0.0000),
(18, 37, 'Nutri-Lac IGA 200ml', 24, '', '2021-08-01', '2023-08-31', 2.0000, 220.0000, 195.0000, '0', '0', 390.0000, 18, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 10:55:47', 0.0000, 0.0000, 0.0000, 0.0000),
(19, 38, 'Nutri-Lac IGA 1liter', 27, '', '2021-10-01', '2023-10-31', 2.0000, 1030.0000, 910.0000, '0', '0', 1820.0000, 19, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 10:55:47', 0.0000, 0.0000, 0.0000, 0.0000),
(20, 39, 'Toxynil Plus Liquid 200ml', 24, '', '2021-02-01', '2023-02-28', 1.0000, 340.0000, 305.0000, '0', '0', 305.0000, 20, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:11:46', 0.0000, 0.0000, 0.0000, 0.0000),
(21, 42, 'Megavit-WS 50gm', 23, '', '2021-04-01', '2023-04-30', 8.0000, 190.0000, 167.5000, '0', '0', 1340.0000, 21, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:11:46', 0.0000, 0.0000, 0.0000, 0.0000),
(22, 43, 'Kalix 500ml', 26, '', '2021-07-01', '2023-06-30', 1.0000, 700.0000, 625.0000, '0', '0', 625.0000, 22, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:11:46', 0.0000, 0.0000, 0.0000, 0.0000),
(23, 47, 'Newcastle-Bronchitis 1000dose', 22, '', NULL, NULL, 1.0000, 700.0000, 493.0000, '0', '0', 493.0000, 23, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:11:46', 0.0000, 0.0000, 0.0000, 0.0000),
(24, 48, 'Newcastle 1000dose', 22, '', NULL, '2023-05-31', 4.0000, 550.0000, 356.0000, '0', '0', 1780.0000, 24, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-28 19:38:35', '2022-05-25 11:11:46', 0.0000, 0.0000, 0.0000, 0.0000),
(25, 49, 'C-Floxacin 100ml', 28, '', '2021-11-01', '2023-10-31', 2.0000, 220.0000, 160.2900, '0', '0', 320.5800, 25, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:11:46', 0.0000, 0.0000, 0.0000, 0.0000),
(26, 50, 'C-Floxacin 500ml', 26, '', '2022-03-01', '2024-02-29', 3.0000, 980.0000, 777.4300, '0', '0', 2332.2900, 26, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:11:46', 0.0000, 0.0000, 0.0000, 0.0000),
(27, 51, 'Agroneo Vet-70 100gm', 29, '', '2022-03-01', '2024-02-29', 5.0000, 370.0000, 289.3000, '0', '0', 1446.5000, 27, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:11:46', 0.0000, 0.0000, 0.0000, 0.0000),
(28, 58, 'Lisovit 100gm', 29, '', '2022-04-01', '2024-04-30', 8.0000, 500.0000, 408.9000, '0', '0', 3271.2000, 28, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:11:46', 0.0000, 0.0000, 0.0000, 0.0000),
(29, 59, 'Micronid 100gm', 29, '', '2022-01-01', '2024-01-31', 10.0000, 320.0000, 289.9200, '0', '0', 2899.2000, 29, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:11:46', 0.0000, 0.0000, 0.0000, 0.0000),
(30, 60, 'Enrocin 100ml', 28, '', '2022-02-01', '2024-01-31', 25.0000, 220.0000, 168.3800, '0', '0', 4209.5000, 30, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:15:21', 0.0000, 0.0000, 0.0000, 0.0000),
(31, 61, 'Rena-C 100gm', 29, '', '2022-04-01', '2024-04-30', 35.0000, 120.0000, 67.0300, '0', '0', 2346.0500, 31, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:15:21', 0.0000, 0.0000, 0.0000, 0.0000),
(32, 62, 'Coxicure 100gm', 29, '', '2022-03-01', '2024-03-31', 8.0000, 190.0000, 161.1200, '0', '0', 1288.9600, 32, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:15:21', 0.0000, 0.0000, 0.0000, 0.0000),
(33, 64, 'Sancal-P 500gm', 21, '', '2022-01-01', '2022-12-31', 1.0000, 400.0000, 360.0000, '0', '0', 360.0000, 33, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:15:21', 0.0000, 0.0000, 0.0000, 0.0000),
(34, 65, 'Rena-K 10gm', 13, '', '2022-03-01', '2023-03-31', 10.0000, 20.0000, 18.5000, '0', '0', 185.0000, 34, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:15:21', 0.0000, 0.0000, 0.0000, 0.0000),
(35, 68, 'Doxi Vet 100gm', 29, '', '2022-03-01', '2024-03-24', 3.0000, 160.0000, 128.3300, '0', '0', 384.9900, 35, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:15:21', 0.0000, 0.0000, 0.0000, 0.0000),
(36, 71, 'Avinex Powder 100gm', 29, '', '2021-08-01', '2023-08-31', 3.0000, 140.0000, 124.0000, '0', '0', 372.0000, 36, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:15:21', 0.0000, 0.0000, 0.0000, 0.0000),
(37, 75, 'Aveflo 100ml', 28, '', NULL, NULL, 4.0000, 860.0000, 656.0000, '0', '0', 2624.0000, 37, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:15:21', 0.0000, 0.0000, 0.0000, 0.0000),
(38, 82, 'Timsen 20gm', 16, '', '2021-06-01', '2024-06-30', 5.0000, 110.0000, 84.0000, '0', '0', 420.0000, 38, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:15:21', 0.0000, 0.0000, 0.0000, 0.0000),
(39, 89, 'Renaspirin 100gm', 29, '', '2022-04-01', '2023-04-30', 2.0000, 360.0000, 298.4000, '0', '0', 596.8000, 39, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:15:21', 0.0000, 0.0000, 0.0000, 0.0000),
(40, 89, 'Renaspirin 100gm', 29, '', '2022-04-01', '2023-04-30', 5.0000, 360.0000, 298.4000, '0', '0', 1492.0000, 40, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:18:19', 0.0000, 0.0000, 0.0000, 0.0000),
(41, 93, 'Myco Out Powder 100gm', 29, '', '2022-01-01', '2024-01-31', 5.0000, 350.0000, 282.9000, '0', '0', 1414.5000, 41, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:18:19', 0.0000, 0.0000, 0.0000, 0.0000),
(42, 97, 'Renamycin Powder 1kg', 14, '', '2020-11-01', '2022-11-30', 0.0000, 630.0000, 584.6400, '0', '0', 584.6400, 42, 1, 1, 1, 1, '1', 0, '1-admin', '1-admin', '2022-05-28 07:00:06', '2022-05-25 11:18:19', 0.0000, 0.0000, 0.0000, 0.0000),
(43, 97, 'Renamycin Powder 1kg', 14, '', '2020-11-01', '2022-11-30', 1.0000, 630.0000, 584.6400, '0', '0', 584.6400, 43, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:18:19', 0.0000, 0.0000, 0.0000, 0.0000),
(44, 100, 'NavamoX Vet', 29, '', '2022-02-01', '2024-01-31', 49.0000, 220.0000, 165.6400, '0', '0', 8116.3600, 44, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:18:19', 0.0000, 0.0000, 0.0000, 0.0000),
(45, 100, 'NavamoX Vet', 29, '', '2022-02-01', '2024-01-31', 30.0000, 220.0000, 165.6400, '0', '0', 4969.2000, 45, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:18:19', 0.0000, 0.0000, 0.0000, 0.0000),
(46, 101, 'GP Bird 100ml', 28, '', '2020-08-01', '2023-08-31', 22.0000, 90.0000, 0.0000, '0', '0', 0.0000, 46, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:18:19', 0.0000, 0.0000, 0.0000, 0.0000),
(47, 104, 'Farmatan Liquid 100ml', 28, '', '2019-10-01', '2022-10-31', 1.0000, 150.0000, 0.0000, '0', '0', 0.0000, 47, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:18:19', 0.0000, 0.0000, 0.0000, 0.0000),
(48, 105, 'Activate WD MAX 1liter', 27, '', '2022-02-01', '2024-02-29', 8.0000, 800.0000, 581.6700, '0', '0', 4653.3600, 48, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:24:52', 0.0000, 0.0000, 0.0000, 0.0000),
(49, 107, 'Antigout Vet 100gm', 29, '', '2021-10-21', '2023-10-31', 9.0000, 330.0000, 273.7800, '0', '0', 2464.0200, 49, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:24:52', 0.0000, 0.0000, 0.0000, 0.0000),
(50, 107, 'Antigout Vet 100gm', 29, '', '2021-10-01', '2023-10-31', 9.0000, 330.0000, 274.1200, '0', '0', 2467.0800, 50, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:24:52', 0.0000, 0.0000, 0.0000, 0.0000),
(51, 115, 'Flostar 100ml', 28, '', '2021-12-10', '2023-12-09', 1.0000, 900.0000, 701.2500, '0', '0', 701.2500, 51, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:24:52', 0.0000, 0.0000, 0.0000, 0.0000),
(52, 116, 'Komitil 100ml', 28, '', '2021-12-15', '2023-12-23', 4.0000, 980.0000, 780.0000, '0', '0', 3120.0000, 52, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:24:52', 0.0000, 0.0000, 0.0000, 0.0000),
(53, 117, 'LiquiShine 1liter', 27, '', '2021-01-25', '2022-07-25', 8.0000, 1050.0000, 734.0900, '0', '0', 5872.7200, 53, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:24:52', 0.0000, 0.0000, 0.0000, 0.0000),
(54, 118, 'Vitamin AD3E 100ml', 28, '', '2021-10-01', '2023-10-31', 3.0000, 240.0000, 169.6000, '0', '0', 508.8000, 54, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:24:52', 0.0000, 0.0000, 0.0000, 0.0000),
(55, 119, 'CS Vet Plus 100gm', 29, '', '2022-03-01', '2024-03-31', 1.0000, 620.0000, 458.3300, '0', '0', 458.3300, 55, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:24:52', 0.0000, 0.0000, 0.0000, 0.0000),
(56, 120, 'Enravet Plus 500gm', 21, '', '2022-03-01', '2024-02-29', 2.0000, 720.0000, 585.0000, '0', '0', 1170.0000, 56, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:24:52', 0.0000, 0.0000, 0.0000, 0.0000),
(57, 127, 'Komi Coccin Solution 100ml', 28, '', '2020-06-22', '2023-06-23', 10.0000, 440.0000, 348.5000, '0', '0', 3485.0000, 57, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:24:52', 0.0000, 0.0000, 0.0000, 0.0000),
(58, 133, 'Acigold-WS 100gm', 29, '', '2021-06-01', '2024-06-30', 8.0000, 250.0000, 0.0000, '0', '0', 0.0000, 58, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:24:52', 0.0000, 0.0000, 0.0000, 0.0000),
(59, 135, 'D-Flox 100ml', 28, '', '2022-01-01', '2023-12-31', 3.0000, 520.0000, 395.8300, '0', '0', 1187.4900, 59, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:24:52', 0.0000, 0.0000, 0.0000, 0.0000),
(60, 137, 'SI Chlor-Tab', 15, '', '2021-06-02', '2023-06-01', 5.0000, 15.0000, 9.9600, '0', '0', 49.8000, 60, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:24:52', 0.0000, 0.0000, 0.0000, 0.0000),
(61, 138, 'Hepavex-200 100ml', 28, '', '2022-03-01', '2025-03-31', 4.0000, 85.0000, 66.6700, '0', '0', 266.6800, 61, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:24:52', 0.0000, 0.0000, 0.0000, 0.0000),
(62, 142, 'Ranovir 100gm', 29, '', '2022-04-01', '2025-04-30', 10.0000, 500.0000, 409.0900, '0', '0', 4090.9000, 62, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:24:52', 0.0000, 0.0000, 0.0000, 0.0000),
(63, 155, 'Energy Plus 500gm', NULL, '', NULL, NULL, 1.0000, 160.0000, 136.3600, '0', '0', 136.3600, 63, 1, 1, 1, 1, '1', 0, '1-admin', '1-admin', '2022-05-26 10:26:47', '2022-05-25 11:24:52', 0.0000, 0.0000, 0.0000, 0.0000),
(64, 155, 'Energy Plus 500gm', 21, '', '2022-04-01', '2025-04-30', 18.0000, 160.0000, 133.3300, '0', '0', 2399.9400, 64, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-25 11:24:52', 0.0000, 0.0000, 0.0000, 0.0000),
(65, 159, 'Gumbomed 500dose', NULL, '', NULL, NULL, 4.0000, 350.0000, 171.0000, '0', '0', 684.0000, 65, 1, 1, 1, 1, '1', 0, '1-admin', '1-admin', '2022-05-26 10:26:47', '2022-05-25 11:24:52', 0.0000, 0.0000, 0.0000, 0.0000),
(66, 160, 'Gumbomed Plus 500dose', NULL, '', NULL, NULL, 3.0000, 400.0000, 212.9500, '0', '0', 638.8500, 66, 1, 1, 1, 1, '1', 0, '1-admin', '1-admin', '2022-05-26 10:26:47', '2022-05-25 11:24:53', 0.0000, 0.0000, 0.0000, 0.0000),
(67, 161, 'Ranivax Booster 500dose', NULL, '', NULL, NULL, 2.0000, 350.0000, 163.7000, '0', '0', 327.4000, 67, 1, 1, 1, 1, '1', 0, '1-admin', '1-admin', '2022-05-26 10:26:47', '2022-05-25 11:24:53', 0.0000, 0.0000, 0.0000, 0.0000),
(68, 162, 'Ranivax Initial 500dose', NULL, '', NULL, NULL, 5.0000, 300.0000, 148.5200, '0', '0', 742.6000, 68, 1, 1, 1, 1, '', 0, '1-admin', '1-admin', '2022-05-26 10:26:47', '2022-05-25 11:28:09', 0.0000, 0.0000, 0.0000, 0.0000),
(69, 165, 'No Gas 100ml', NULL, '', NULL, NULL, 1.0000, 280.0000, 0.0000, '0', '0', 0.0000, 69, 1, 1, 1, 1, '', 0, '1-admin', '1-admin', '2022-05-26 10:26:47', '2022-05-25 11:28:09', 0.0000, 0.0000, 0.0000, 0.0000),
(70, 170, 'Fly Trap G 100gm', NULL, '', NULL, NULL, 6.0000, 325.0000, 269.5000, '0', '0', 1617.0000, 70, 1, 1, 1, 1, '', 0, '1-admin', '1-admin', '2022-05-26 10:26:47', '2022-05-25 11:28:09', 0.0000, 0.0000, 0.0000, 0.0000),
(71, 171, 'Betainvet Plus 500gm', NULL, '', NULL, NULL, 4.0000, 300.0000, 225.0000, '0', '0', 900.0000, 71, 1, 1, 1, 1, '', 0, '1-admin', '1-admin', '2022-05-26 10:26:47', '2022-05-25 11:28:09', 0.0000, 0.0000, 0.0000, 0.0000),
(72, 171, 'Betainvet Plus 500gm', NULL, '', NULL, NULL, 12.0000, 300.0000, 225.0000, '0', '0', 2700.0000, 72, 1, 1, 1, 1, '', 0, '1-admin', '1-admin', '2022-05-26 10:26:47', '2022-05-25 11:28:09', 0.0000, 0.0000, 0.0000, 0.0000),
(73, 174, 'D-Flox 500ml', NULL, '', NULL, NULL, 6.0000, 2050.0000, 1625.0000, '0', '0', 9750.0000, 73, 1, 1, 1, 1, '', 0, '1-admin', '1-admin', '2022-05-26 10:26:47', '2022-05-25 11:28:09', 0.0000, 0.0000, 0.0000, 0.0000),
(74, 180, 'Corymune-7K 1000dose', NULL, '', NULL, NULL, 1.0000, 9800.0000, 9000.0000, '0', '0', 9000.0000, 74, 1, 1, 1, 1, '', 0, '1-admin', '1-admin', '2022-05-26 10:26:47', '2022-05-25 11:28:09', 0.0000, 0.0000, 0.0000, 0.0000),
(75, 181, 'Plex-ZN 100ml', NULL, '', NULL, NULL, 6.0000, 110.0000, 90.9100, '0', '0', 545.4600, 75, 1, 1, 1, 1, '', 0, '1-admin', '1-admin', '2022-05-26 10:26:47', '2022-05-25 11:28:09', 0.0000, 0.0000, 0.0000, 0.0000),
(76, 182, 'Ampro-50 100ml', NULL, '', NULL, NULL, 3.0000, 500.0000, 0.0000, '0', '0', 0.0000, 76, 1, 1, 1, 1, '', 0, '1-admin', '1-admin', '2022-05-26 10:26:47', '2022-05-25 11:28:09', 0.0000, 0.0000, 0.0000, 0.0000),
(77, 159, 'Gumbomed 500dose', 19, '', '2021-08-01', '2023-07-31', 4.0000, 350.0000, 171.0000, '0', '0', 684.0000, 77, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-26 08:41:32', 0.0000, 0.0000, 0.0000, 0.0000),
(78, 160, 'Gumbomed Plus 500dose', 19, '', '2021-10-01', '2023-09-23', 3.0000, 400.0000, 212.9500, '0', '0', 638.8500, 78, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-26 08:50:38', 0.0000, 0.0000, 0.0000, 0.0000),
(79, 161, 'Ranivax Booster 500dose', 19, '', '2021-06-01', '2023-05-31', 2.0000, 350.0000, 163.7000, '0', '0', 327.4000, 79, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-26 08:55:14', 0.0000, 0.0000, 0.0000, 0.0000),
(80, 162, 'Ranivax Initial 500dose', 19, '', '2021-10-01', '2023-09-30', 5.0000, 300.0000, 148.5200, '0', '0', 742.6000, 80, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-26 08:55:14', 0.0000, 0.0000, 0.0000, 0.0000),
(81, 165, 'No Gas 100ml', 28, '', '2021-05-01', '2024-05-31', 1.0000, 0.0000, 0.0000, '0', '0', 0.0000, 81, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-26 08:55:14', 0.0000, 0.0000, 0.0000, 0.0000),
(82, 170, 'Fly Trap G 100gm', 29, '', '2021-05-01', '2023-05-31', 4.0000, 325.0000, 269.5000, '0', '0', 1078.0000, 82, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-26 08:55:14', 0.0000, 0.0000, 0.0000, 0.0000),
(83, 171, 'Betainvet Plus 500gm', 21, '', '2022-03-01', '2024-02-29', 16.0000, 300.0000, 225.0000, '0', '0', 3600.0000, 83, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-26 08:59:15', 0.0000, 0.0000, 0.0000, 0.0000),
(84, 174, 'D-Flox 500ml', 26, '', '2022-03-01', '2024-02-29', 6.0000, 2050.0000, 1625.0000, '0', '0', 9750.0000, 84, 1, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-26 08:59:15', 0.0000, 0.0000, 0.0000, 0.0000),
(85, 180, 'Corymune-7K 1000dose', 25, '', NULL, '2023-04-29', 1.0000, 9800.0000, 9000.0000, '0', '0', 9000.0000, 85, 1, 1, 1, 1, '', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-26 10:26:48', 0.0000, 0.0000, 0.0000, 0.0000),
(86, 181, 'Plex-ZN 100ml', 28, '', '2022-03-01', '2025-03-31', 6.0000, 110.0000, 90.9100, '0', '0', 545.4600, 86, 1, 1, 1, 1, '', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-26 10:26:48', 0.0000, 0.0000, 0.0000, 0.0000),
(87, 182, 'Ampro-50 100ml', 28, '', '2021-11-01', '2023-11-30', 3.0000, 500.0000, 0.0000, '0', '0', 0.0000, 87, 1, 1, 1, 1, '', 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-26 10:26:48', 0.0000, 0.0000, 0.0000, 0.0000),
(88, 97, 'Renamycin Powder 1kg', 25, '', '2022-04-01', '2024-04-30', 13.0000, 620.0000, 584.6430, '0', '0', 7600.3590, 88, 2, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-05-28 06:03:09', '2022-05-27 10:55:02', 0.0000, 0.0000, 0.0000, 0.0000),
(89, 156, 'Cevac ND IBD K 1000dose', 22, '', NULL, '2023-04-07', 3.0000, 3750.0000, 3300.0000, '0', '0', 9900.0000, 89, 3, 1, 1, 1, '', 1, '1-admin', '1-admin', '2022-05-28 06:03:57', '2022-05-27 11:47:50', 0.0000, 0.0000, 0.0000, 0.0000),
(90, 115, 'Flostar 100ml', 28, '', '2022-03-11', '2024-03-10', 10.0000, 900.0000, 701.2500, '0', '0', 7012.5000, 90, 4, 1, 1, 1, '', 1, '1-admin', '1-admin', '2022-05-28 06:05:02', '2022-05-27 11:52:23', 0.0000, 0.0000, 0.0000, 0.0000),
(91, 1, 'R.R.P Broiler Starter 50kg', 31, '', '2022-05-19', '2022-07-02', 0.0000, 3020.0000, 3020.0000, '0', '0', 15100.0000, 91, 5, 1, 1, 1, '', 0, '1-admin', '1-admin', '2022-05-28 06:16:42', '2022-05-27 11:58:43', 0.0000, 0.0000, 0.0000, 0.0000),
(92, 2, 'R.R.P Broiler Grower 50kg', 31, '', '2022-05-25', '2022-07-08', 0.0000, 3020.0000, 3020.0000, '0', '0', 60400.0000, 92, 5, 1, 1, 1, '', 0, '1-admin', '1-admin', '2022-05-28 06:16:42', '2022-05-27 11:58:43', 0.0000, 0.0000, 0.0000, 0.0000),
(93, 6, 'R.R.P Sonali Starter 50kg', 31, '', '2022-05-16', '2022-06-29', 0.0000, 2784.5000, 2784.5000, '0', '0', 55690.0000, 93, 5, 1, 1, 1, '', 0, '1-admin', '1-admin', '2022-05-28 06:16:42', '2022-05-27 11:58:43', 0.0000, 0.0000, 0.0000, 0.0000),
(94, 5, 'R.R.P Layer Layer 50kg', 31, '', '2022-05-23', '2022-07-06', 0.0000, 2552.5000, 2552.5000, '0', '0', 114862.5000, 94, 5, 1, 1, 1, '', 0, '1-admin', '1-admin', '2022-05-28 06:16:42', '2022-05-27 11:58:43', 0.0000, 0.0000, 0.0000, 0.0000),
(95, 1, 'R.R.P Broiler Starter 50kg', 31, '', '2022-05-19', '2022-07-02', 42.0000, 3185.0000, 3020.0000, '0', '0', 135900.0000, 95, 6, 1, 1, 1, '', 1, '1-admin', '1-admin', '2022-05-28 19:38:35', '2022-05-27 12:06:28', 0.0000, 0.0000, 0.0000, 0.0000),
(96, 2, 'R.R.P Broiler Grower 50kg', 31, '', '2022-05-25', '2022-07-08', 20.0000, 3185.0000, 3020.0000, '0', '0', 60400.0000, 96, 6, 1, 1, 1, '', 1, '1-admin', '1-admin', '2022-05-28 06:11:07', '2022-05-27 12:06:28', 0.0000, 0.0000, 0.0000, 0.0000),
(97, 6, 'R.R.P Sonali Starter 50kg', 31, '', '2022-05-16', '2022-06-29', 5.0000, 2930.0000, 2784.5000, '0', '0', 13922.5000, 97, 6, 1, 1, 1, '', 1, '1-admin', '1-admin', '2022-05-28 06:11:07', '2022-05-27 12:06:28', 0.0000, 0.0000, 0.0000, 0.0000),
(98, 7, 'R.R.P Sonali Grower 50kg', 31, '', '2022-05-18', '2022-07-01', 15.0000, 2930.0000, 2784.5000, '0', '0', 41767.5000, 98, 6, 1, 1, 1, '', 1, '1-admin', '1-admin', '2022-05-28 06:11:07', '2022-05-27 12:06:28', 0.0000, 0.0000, 0.0000, 0.0000),
(99, 5, 'R.R.P Layer Layer 50kg', 31, '', '2022-05-23', '2022-07-06', 15.0000, 2590.0000, 2552.5000, '0', '0', 38287.5000, 99, 6, 1, 1, 1, '', 1, '1-admin', '1-admin', '2022-05-28 06:11:07', '2022-05-27 12:06:28', 0.0000, 0.0000, 0.0000, 0.0000),
(100, 123, 'Sonali Murgi', 14, '', NULL, NULL, 0.0000, 265.0000, 260.0000, '0', '0', 60346.0000, 100, 7, 1, 1, 1, '', 0, '1-admin', NULL, '2022-05-28 05:46:59', '2022-05-28 05:45:14', 0.0000, 0.0000, 0.0000, 0.0000),
(101, 62, 'Coxicure 100gm', 29, '', NULL, NULL, 16.0000, 190.0000, 160.9375, '0', '0', 2575.0000, 101, 8, 1, 1, 1, '', 1, '1-admin', NULL, '2022-05-28 16:25:59', '2022-05-28 16:25:59', 0.0000, 0.0000, 0.0000, 0.0000),
(103, 139, 'Acify 1liter', 27, '', NULL, NULL, 1.0000, 10.0000, 10.0000, '0', '0', 10.0000, 103, 10, 1, 1, 1, '', 1, '1-admin', NULL, '2022-05-29 05:05:03', '2022-05-29 05:05:03', 0.0000, 0.0000, 0.0000, 0.0000),
(104, 139, 'Acify 1liter', 27, '', NULL, NULL, 1.0000, 10.0000, 10.0000, '0', '0', 10.0000, 104, 11, 1, 1, 1, '', 1, '1-admin', NULL, '2022-05-29 05:05:38', '2022-05-29 05:05:38', 0.0000, 0.0000, 0.0000, 0.0000);

-- --------------------------------------------------------

--
-- Table structure for table `proforma_sales`
--

CREATE TABLE `proforma_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_date` date NOT NULL,
  `_time` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_order_ref_id` int(11) DEFAULT NULL,
  `_referance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_ledger_id` bigint(20) UNSIGNED NOT NULL,
  `_user_id` bigint(20) UNSIGNED NOT NULL,
  `_user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_sub_total` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount_input` double(15,4) NOT NULL DEFAULT 0.0000,
  `_total_discount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_total_vat` double(15,4) NOT NULL DEFAULT 0.0000,
  `_total` double(15,4) NOT NULL DEFAULT 0.0000,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proforma_sales_details`
--

CREATE TABLE `proforma_sales_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_item_id` bigint(20) UNSIGNED NOT NULL,
  `_p_p_l_id` bigint(20) UNSIGNED NOT NULL,
  `_qty` double(15,4) NOT NULL DEFAULT 0.0000,
  `_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_vat` double(15,4) NOT NULL DEFAULT 0.0000,
  `_value` double(15,4) NOT NULL DEFAULT 0.0000,
  `_no` bigint(20) UNSIGNED NOT NULL,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_date` date NOT NULL,
  `_time` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_order_ref_id` int(11) DEFAULT NULL,
  `_referance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_ledger_id` bigint(20) UNSIGNED NOT NULL,
  `_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_id` bigint(20) UNSIGNED NOT NULL,
  `_user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_sub_total` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount_input` double(15,4) NOT NULL DEFAULT 0.0000,
  `_total_discount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_total_vat` double(15,4) NOT NULL DEFAULT 0.0000,
  `_total` double(15,4) NOT NULL DEFAULT 0.0000,
  `_p_balance` double NOT NULL DEFAULT 0,
  `_l_balance` double NOT NULL DEFAULT 0,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_cost_center_id` int(11) NOT NULL DEFAULT 1,
  `_store_id` int(11) NOT NULL DEFAULT 1,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `_order_number`, `_date`, `_time`, `_order_ref_id`, `_referance`, `_ledger_id`, `_address`, `_phone`, `_user_id`, `_user_name`, `_note`, `_sub_total`, `_discount_input`, `_total_discount`, `_total_vat`, `_total`, `_p_balance`, `_l_balance`, `_branch_id`, `_cost_center_id`, `_store_id`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, NULL, '2022-05-25', '10:26:48', NULL, NULL, 7, NULL, NULL, 1, 'admin', 'Opening Inventory', 326587.7300, 0.0000, 0.0000, 0.0000, 326587.7300, 0, 0, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:51:18', '2022-05-26 10:26:48'),
(2, NULL, '2022-05-26', '06:03:09', NULL, NULL, 64, 'Mirpur,Dhaka,Bangladesh.', '+8801847128233', 1, 'admin', 'Renamycin Powder 1kg=13pcs', 7600.3590, 0.0000, 0.0000, 0.0000, 7600.3590, 0, 0, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-27 10:55:02', '2022-05-28 06:03:09'),
(3, NULL, '2022-05-26', '06:03:57', NULL, NULL, 73, 'Dhaka,Bangladesh.', '+8801723173187', 1, 'admin', 'Cevac ND IBD K 1000dose=03pcs', 9900.0000, 0.0000, 0.0000, 0.0000, 9900.0000, 0, 0, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-27 11:47:50', '2022-05-28 06:03:57'),
(4, NULL, '2022-05-26', '06:05:02', NULL, NULL, 83, 'Ishwardi,Pabna,Bangladesh.', '+8801741547492', 1, 'admin', 'Flostar 100ml=10pcs', 7012.5000, 0.0000, 0.0000, 0.0000, 7012.5000, 0, 0, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-27 11:52:22', '2022-05-28 06:05:02'),
(5, NULL, '2022-05-26', '06:12:09', NULL, NULL, 65, 'RRP Garden,B-15/1,Shimultola,Jaleshwor,Savar,Dhaka.', '+8801708417641', 1, 'admin', 'Al-Arafat Enterprise:BS=05,BG=20,SS=20,,LL=45.Total=90Bags (4500kg)', 246052.5000, 0.0000, 0.0000, 0.0000, 246052.5000, 0, 0, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-27 11:58:43', '2022-05-28 06:12:09'),
(6, NULL, '2022-05-26', '06:11:07', NULL, NULL, 65, 'RRP Garden,B-15/1,Shimultola,Jaleshwor,Savar,Dhaka.', '+8801708417641', 1, 'admin', 'Chowdhury:BS=45,BG=20,SS=05,SG=15,LL=15.Total=100Bags (5000kg)', 290277.5000, 0.0000, 0.0000, 0.0000, 290277.5000, 0, 0, 1, 1, 1, 1, '1-admin', '1-admin', '2022-05-27 12:06:28', '2022-05-28 06:11:07'),
(7, NULL, '2022-05-26', '05:45:14', NULL, 'Rakib Enterprise', 108, 'N/A', 'N/A', 1, 'admin', 'Wazed:250p=232.1*260 Van:Roshid', 60346.0000, 46.0000, 46.0000, 0.0000, 60300.0000, 0, 0, 1, 1, 1, 1, '1-admin', NULL, '2022-05-28 05:45:14', '2022-05-28 05:45:14'),
(8, NULL, '2022-05-28', '16:25:59', NULL, NULL, 64, 'Mirpur,Dhaka,Bangladesh.', '+8801847128233', 1, 'admin', 'Coxicure 100gm=16pcs', 2575.0000, 0.0000, 0.0000, 0.0000, 2575.0000, 0, 0, 1, 1, 1, 1, '1-admin', NULL, '2022-05-28 16:25:59', '2022-05-28 16:25:59'),
(10, NULL, '2022-05-29', '05:05:03', NULL, NULL, 75, 'Dhaka,Bangladesh.', '+8801914242832', 1, 'admin', 'p', 10.0000, 0.0000, 0.0000, 0.0000, 10.0000, 0, 0, 1, 1, 1, 1, '1-admin', NULL, '2022-05-28 23:05:03', '2022-05-28 23:05:03'),
(11, NULL, '2022-05-29', '05:05:38', NULL, NULL, 75, 'Dhaka,Bangladesh.', '+8801914242832', 1, 'admin', 'p', 10.0000, 0.0000, 0.0000, 0.0000, 10.0000, 0, 0, 1, 1, 1, 1, '1-admin', NULL, '2022-05-28 23:05:38', '2022-05-28 23:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_accounts`
--

CREATE TABLE `purchase_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_no` bigint(20) UNSIGNED NOT NULL,
  `_account_type_id` bigint(20) UNSIGNED NOT NULL,
  `_account_group_id` bigint(20) UNSIGNED NOT NULL,
  `_ledger_id` bigint(20) UNSIGNED NOT NULL,
  `_dr_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_cr_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_cost_center` int(11) NOT NULL,
  `_short_narr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_accounts`
--

INSERT INTO `purchase_accounts` (`id`, `_no`, `_account_type_id`, `_account_group_id`, `_ledger_id`, `_dr_amount`, `_cr_amount`, `_type`, `_branch_id`, `_cost_center`, `_short_narr`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 12, 43, 64, 8185.0000, 0.0000, NULL, 1, 1, 'Cash Payment', 1, '1-admin', '1-admin', '2022-05-27 10:55:02', '2022-05-28 06:03:09'),
(2, 2, 1, 16, 1, 0.0000, 8185.0000, NULL, 1, 1, 'Cash Payment', 1, '1-admin', '1-admin', '2022-05-27 10:55:02', '2022-05-28 06:03:09'),
(3, 8, 12, 43, 64, 2575.0000, 0.0000, NULL, 1, 1, 'Cash Receive', 1, '1-admin', NULL, '2022-05-28 16:25:59', '2022-05-28 16:25:59'),
(4, 8, 1, 16, 1, 0.0000, 2575.0000, NULL, 1, 1, 'Cash Payment', 1, '1-admin', NULL, '2022-05-28 16:25:59', '2022-05-28 16:25:59');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_item_id` bigint(20) UNSIGNED NOT NULL,
  `_qty` double(15,4) NOT NULL DEFAULT 0.0000,
  `_barcode` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_sales_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_vat` double(15,4) NOT NULL DEFAULT 0.0000,
  `_vat_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_value` double(15,4) NOT NULL DEFAULT 0.0000,
  `_store_id` int(11) DEFAULT NULL,
  `_cost_center_id` int(11) DEFAULT NULL,
  `_store_salves_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_manufacture_date` date DEFAULT NULL,
  `_expire_date` date DEFAULT NULL,
  `_no` bigint(20) UNSIGNED NOT NULL,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_details`
--

INSERT INTO `purchase_details` (`id`, `_item_id`, `_qty`, `_barcode`, `_rate`, `_sales_rate`, `_discount`, `_discount_amount`, `_vat`, `_vat_amount`, `_value`, `_store_id`, `_cost_center_id`, `_store_salves_id`, `_manufacture_date`, `_expire_date`, `_no`, `_branch_id`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 6.0000, NULL, 2890.0000, 3185.0000, 0.0000, 0.0000, 0.0000, 0.0000, 17340.0000, 1, 1, '1', '2022-05-17', '2022-06-30', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:51:18', '2022-05-26 10:26:48'),
(2, 2, 51.0000, NULL, 2890.0000, 3185.0000, 0.0000, 0.0000, 0.0000, 0.0000, 147390.0000, 1, 1, '1', '2022-05-18', '2022-07-01', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:51:18', '2022-05-26 10:26:48'),
(3, 5, 2.0000, NULL, 2472.5000, 2590.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4945.0000, 1, 1, '1', '2022-05-17', '2022-06-30', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:51:18', '2022-05-26 10:26:48'),
(4, 6, 9.0000, NULL, 2674.5000, 2930.0000, 0.0000, 0.0000, 0.0000, 0.0000, 24070.5000, 1, 1, '1', '2022-05-16', '2022-06-29', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:51:18', '2022-05-26 10:26:48'),
(5, 7, 1.0000, NULL, 2674.5000, 2930.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2674.5000, 1, 1, '1', '2022-04-09', '2022-05-23', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:51:18', '2022-05-26 10:26:48'),
(6, 20, 2.0000, NULL, 850.2200, 1050.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1700.4400, 1, 1, '1', '2021-09-01', '2023-09-30', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:51:18', '2022-05-26 10:26:48'),
(7, 21, 7.0000, NULL, 141.5700, 180.0000, 0.0000, 0.0000, 0.0000, 0.0000, 990.9900, 1, 1, '1', '2022-01-01', '2024-01-01', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:51:18', '2022-05-26 10:26:48'),
(8, 25, 2.0000, NULL, 99.0000, 130.0000, 0.0000, 0.0000, 0.0000, 0.0000, 198.0000, 1, 1, '1', '2021-05-01', '2024-05-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:51:18', '2022-05-26 10:26:48'),
(9, 26, 4.0000, NULL, 0.0000, 850.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1, 1, '1', '2020-10-01', '2023-10-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:51:18', '2022-05-26 10:26:48'),
(10, 29, 2.0000, NULL, 284.6500, 350.0000, 0.0000, 0.0000, 0.0000, 0.0000, 569.3000, 1, 1, '1', '2021-09-01', '2024-09-30', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:55:46', '2022-05-26 10:26:48'),
(11, 31, 13.0000, NULL, 341.2500, 460.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4436.2500, 1, 1, '1', '2022-02-01', '2025-02-28', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:55:47', '2022-05-26 10:26:48'),
(12, 32, 1.0000, NULL, 166.6700, 220.0000, 0.0000, 0.0000, 0.0000, 0.0000, 166.6700, 1, 1, '1', NULL, NULL, 1, 1, 0, '1-admin', '1-admin', '2022-05-25 04:55:47', '2022-05-26 10:26:47'),
(13, 32, 24.0000, NULL, 166.6700, 220.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4000.0800, 1, 1, '1', '2022-04-01', '2025-04-30', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:55:47', '2022-05-26 10:26:48'),
(14, 33, 9.0000, NULL, 243.6400, 300.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2192.7600, 1, 1, '1', '2022-02-01', '2025-02-28', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:55:47', '2022-05-26 10:26:48'),
(15, 35, 10.0000, NULL, 640.0000, 800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 6400.0000, 1, 1, '1', '2021-07-01', '2023-07-07', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:55:47', '2022-05-26 10:26:48'),
(16, 36, 10.0000, NULL, 120.6900, 150.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1206.9000, 1, 1, '1', '2021-06-01', '2024-06-30', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:55:47', '2022-05-26 10:26:48'),
(17, 36, 18.0000, NULL, 124.4400, 150.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2239.9200, 1, 1, '1', '2021-05-01', '2024-05-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:55:47', '2022-05-26 10:26:48'),
(18, 37, 2.0000, NULL, 195.0000, 220.0000, 0.0000, 0.0000, 0.0000, 0.0000, 390.0000, 1, 1, '1', '2021-08-01', '2023-08-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:55:47', '2022-05-26 10:26:48'),
(19, 38, 2.0000, NULL, 910.0000, 1030.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1820.0000, 1, 1, '1', '2021-10-01', '2023-10-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 04:55:47', '2022-05-26 10:26:48'),
(20, 39, 1.0000, NULL, 305.0000, 340.0000, 0.0000, 0.0000, 0.0000, 0.0000, 305.0000, 1, 1, '1', '2021-02-01', '2023-02-28', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:11:46', '2022-05-26 10:26:48'),
(21, 42, 8.0000, NULL, 167.5000, 190.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1340.0000, 1, 1, '1', '2021-04-01', '2023-04-30', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:11:46', '2022-05-26 10:26:48'),
(22, 43, 1.0000, NULL, 625.0000, 700.0000, 0.0000, 0.0000, 0.0000, 0.0000, 625.0000, 1, 1, '1', '2021-07-01', '2023-06-30', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:11:46', '2022-05-26 10:26:48'),
(23, 47, 1.0000, NULL, 493.0000, 700.0000, 0.0000, 0.0000, 0.0000, 0.0000, 493.0000, 1, 1, '1', NULL, NULL, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:11:46', '2022-05-26 10:26:48'),
(24, 48, 5.0000, NULL, 356.0000, 550.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1780.0000, 1, 1, '1', NULL, '2023-05-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:11:46', '2022-05-26 10:26:48'),
(25, 49, 2.0000, NULL, 160.2900, 220.0000, 0.0000, 0.0000, 0.0000, 0.0000, 320.5800, 1, 1, '1', '2021-11-01', '2023-10-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:11:46', '2022-05-26 10:26:48'),
(26, 50, 3.0000, NULL, 777.4300, 980.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2332.2900, 1, 1, '1', '2022-03-01', '2024-02-29', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:11:46', '2022-05-26 10:26:48'),
(27, 51, 5.0000, NULL, 289.3000, 370.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1446.5000, 1, 1, '1', '2022-03-01', '2024-02-29', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:11:46', '2022-05-26 10:26:48'),
(28, 58, 8.0000, NULL, 408.9000, 500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3271.2000, 1, 1, '1', '2022-04-01', '2024-04-30', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:11:46', '2022-05-26 10:26:48'),
(29, 59, 10.0000, NULL, 289.9200, 320.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2899.2000, 1, 1, '1', '2022-01-01', '2024-01-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:11:46', '2022-05-26 10:26:48'),
(30, 60, 25.0000, NULL, 168.3800, 220.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4209.5000, 1, 1, '1', '2022-02-01', '2024-01-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:15:21', '2022-05-26 10:26:48'),
(31, 61, 35.0000, NULL, 67.0300, 120.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2346.0500, 1, 1, '1', '2022-04-01', '2024-04-30', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:15:21', '2022-05-26 10:26:48'),
(32, 62, 8.0000, NULL, 161.1200, 190.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1288.9600, 1, 1, '1', '2022-03-01', '2024-03-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:15:21', '2022-05-26 10:26:48'),
(33, 64, 1.0000, NULL, 360.0000, 400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 360.0000, 1, 1, '1', '2022-01-01', '2022-12-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:15:21', '2022-05-26 10:26:48'),
(34, 65, 10.0000, NULL, 18.5000, 20.0000, 0.0000, 0.0000, 0.0000, 0.0000, 185.0000, 1, 1, '1', '2022-03-01', '2023-03-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:15:21', '2022-05-26 10:26:48'),
(35, 68, 3.0000, NULL, 128.3300, 160.0000, 0.0000, 0.0000, 0.0000, 0.0000, 384.9900, 1, 1, '1', '2022-03-01', '2024-03-24', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:15:21', '2022-05-26 10:26:48'),
(36, 71, 3.0000, NULL, 124.0000, 140.0000, 0.0000, 0.0000, 0.0000, 0.0000, 372.0000, 1, 1, '1', '2021-08-01', '2023-08-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:15:21', '2022-05-26 10:26:48'),
(37, 75, 4.0000, NULL, 656.0000, 860.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2624.0000, 1, 1, '1', NULL, NULL, 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:15:21', '2022-05-26 10:26:48'),
(38, 82, 5.0000, NULL, 84.0000, 110.0000, 0.0000, 0.0000, 0.0000, 0.0000, 420.0000, 1, 1, '1', '2021-06-01', '2024-06-30', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:15:21', '2022-05-26 10:26:48'),
(39, 89, 2.0000, NULL, 298.4000, 360.0000, 0.0000, 0.0000, 0.0000, 0.0000, 596.8000, 1, 1, '1', '2022-04-01', '2023-04-30', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:15:21', '2022-05-26 10:26:48'),
(40, 89, 5.0000, NULL, 298.4000, 360.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1492.0000, 1, 1, '1', '2022-04-01', '2023-04-30', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:18:19', '2022-05-26 10:26:48'),
(41, 93, 5.0000, NULL, 282.9000, 350.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1414.5000, 1, 1, '1', '2022-01-01', '2024-01-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:18:19', '2022-05-26 10:26:48'),
(42, 97, 1.0000, NULL, 584.6400, 630.0000, 0.0000, 0.0000, 0.0000, 0.0000, 584.6400, 1, 1, '1', '2020-11-01', '2022-11-30', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:18:19', '2022-05-26 10:26:48'),
(43, 97, 1.0000, NULL, 584.6400, 630.0000, 0.0000, 0.0000, 0.0000, 0.0000, 584.6400, 1, 1, '1', '2020-11-01', '2022-11-30', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:18:19', '2022-05-26 10:26:48'),
(44, 100, 49.0000, NULL, 165.6400, 220.0000, 0.0000, 0.0000, 0.0000, 0.0000, 8116.3600, 1, 1, '1', '2022-02-01', '2024-01-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:18:19', '2022-05-26 10:26:48'),
(45, 100, 30.0000, NULL, 165.6400, 220.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4969.2000, 1, 1, '1', '2022-02-01', '2024-01-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:18:19', '2022-05-26 10:26:48'),
(46, 101, 22.0000, NULL, 0.0000, 90.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1, 1, '1', '2020-08-01', '2023-08-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:18:19', '2022-05-26 10:26:48'),
(47, 104, 1.0000, NULL, 0.0000, 150.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1, 1, '1', '2019-10-01', '2022-10-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:18:19', '2022-05-26 10:26:48'),
(48, 105, 8.0000, NULL, 581.6700, 800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4653.3600, 1, 1, '1', '2022-02-01', '2024-02-29', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(49, 107, 9.0000, NULL, 273.7800, 330.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2464.0200, 1, 1, '1', '2021-10-21', '2023-10-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(50, 107, 9.0000, NULL, 274.1200, 330.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2467.0800, 1, 1, '1', '2021-10-01', '2023-10-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(51, 115, 1.0000, NULL, 701.2500, 900.0000, 0.0000, 0.0000, 0.0000, 0.0000, 701.2500, 1, 1, '1', '2021-12-10', '2023-12-09', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(52, 116, 4.0000, NULL, 780.0000, 980.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3120.0000, 1, 1, '1', '2021-12-15', '2023-12-23', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(53, 117, 8.0000, NULL, 734.0900, 1050.0000, 0.0000, 0.0000, 0.0000, 0.0000, 5872.7200, 1, 1, '1', '2021-01-25', '2022-07-25', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(54, 118, 3.0000, NULL, 169.6000, 240.0000, 0.0000, 0.0000, 0.0000, 0.0000, 508.8000, 1, 1, '1', '2021-10-01', '2023-10-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(55, 119, 1.0000, NULL, 458.3300, 620.0000, 0.0000, 0.0000, 0.0000, 0.0000, 458.3300, 1, 1, '1', '2022-03-01', '2024-03-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(56, 120, 2.0000, NULL, 585.0000, 720.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1170.0000, 1, 1, '1', '2022-03-01', '2024-02-29', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(57, 127, 10.0000, NULL, 348.5000, 440.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3485.0000, 1, 1, '1', '2020-06-22', '2023-06-23', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(58, 133, 8.0000, NULL, 0.0000, 250.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1, 1, '1', '2021-06-01', '2024-06-30', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(59, 135, 3.0000, NULL, 395.8300, 520.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1187.4900, 1, 1, '1', '2022-01-01', '2023-12-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(60, 137, 5.0000, NULL, 9.9600, 15.0000, 0.0000, 0.0000, 0.0000, 0.0000, 49.8000, 1, 1, '1', '2021-06-02', '2023-06-01', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(61, 138, 4.0000, NULL, 66.6700, 85.0000, 0.0000, 0.0000, 0.0000, 0.0000, 266.6800, 1, 1, '1', '2022-03-01', '2025-03-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(62, 142, 10.0000, NULL, 409.0900, 500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4090.9000, 1, 1, '1', '2022-04-01', '2025-04-30', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(63, 155, 1.0000, NULL, 136.3600, 160.0000, 0.0000, 0.0000, 0.0000, 0.0000, 136.3600, 1, 1, '1', NULL, NULL, 1, 1, 0, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:47'),
(64, 155, 18.0000, NULL, 133.3300, 160.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2399.9400, 1, 1, '1', '2022-04-01', '2025-04-30', 1, 1, 1, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:48'),
(65, 159, 4.0000, NULL, 171.0000, 350.0000, 0.0000, 0.0000, 0.0000, 0.0000, 684.0000, 1, 1, '1', NULL, NULL, 1, 1, 0, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:47'),
(66, 160, 3.0000, NULL, 212.9500, 400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 638.8500, 1, 1, '1', NULL, NULL, 1, 1, 0, '1-admin', '1-admin', '2022-05-25 05:24:52', '2022-05-26 10:26:47'),
(67, 161, 2.0000, NULL, 163.7000, 350.0000, 0.0000, 0.0000, 0.0000, 0.0000, 327.4000, 1, 1, '1', NULL, NULL, 1, 1, 0, '1-admin', '1-admin', '2022-05-25 05:24:53', '2022-05-26 10:26:47'),
(68, 162, 5.0000, NULL, 148.5200, 300.0000, 0.0000, 0.0000, 0.0000, 0.0000, 742.6000, 1, 1, '1', NULL, NULL, 1, 1, 0, '1-admin', '1-admin', '2022-05-25 05:28:09', '2022-05-26 10:26:47'),
(69, 165, 1.0000, NULL, 0.0000, 280.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1, 1, '1', NULL, NULL, 1, 1, 0, '1-admin', '1-admin', '2022-05-25 05:28:09', '2022-05-26 10:26:47'),
(70, 170, 6.0000, NULL, 269.5000, 325.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1617.0000, 1, 1, '1', NULL, NULL, 1, 1, 0, '1-admin', '1-admin', '2022-05-25 05:28:09', '2022-05-26 10:26:47'),
(71, 171, 4.0000, NULL, 225.0000, 300.0000, 0.0000, 0.0000, 0.0000, 0.0000, 900.0000, 1, 1, '1', NULL, NULL, 1, 1, 0, '1-admin', '1-admin', '2022-05-25 05:28:09', '2022-05-26 10:26:47'),
(72, 171, 12.0000, NULL, 225.0000, 300.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2700.0000, 1, 1, '1', NULL, NULL, 1, 1, 0, '1-admin', '1-admin', '2022-05-25 05:28:09', '2022-05-26 10:26:47'),
(73, 174, 6.0000, NULL, 1625.0000, 2050.0000, 0.0000, 0.0000, 0.0000, 0.0000, 9750.0000, 1, 1, '1', NULL, NULL, 1, 1, 0, '1-admin', '1-admin', '2022-05-25 05:28:09', '2022-05-26 10:26:47'),
(74, 180, 1.0000, NULL, 9000.0000, 9800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 9000.0000, 1, 1, '1', NULL, NULL, 1, 1, 0, '1-admin', '1-admin', '2022-05-25 05:28:09', '2022-05-26 10:26:47'),
(75, 181, 6.0000, NULL, 90.9100, 110.0000, 0.0000, 0.0000, 0.0000, 0.0000, 545.4600, 1, 1, '1', NULL, NULL, 1, 1, 0, '1-admin', '1-admin', '2022-05-25 05:28:09', '2022-05-26 10:26:47'),
(76, 182, 3.0000, NULL, 0.0000, 500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1, 1, '1', NULL, NULL, 1, 1, 0, '1-admin', '1-admin', '2022-05-25 05:28:09', '2022-05-26 10:26:47'),
(77, 159, 4.0000, NULL, 171.0000, 350.0000, 0.0000, 0.0000, 0.0000, 0.0000, 684.0000, 1, 1, '1', '2021-08-01', '2023-07-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-26 08:41:32', '2022-05-26 10:26:48'),
(78, 160, 3.0000, NULL, 212.9500, 400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 638.8500, 1, 1, '1', '2021-10-01', '2023-09-23', 1, 1, 1, '1-admin', '1-admin', '2022-05-26 08:50:38', '2022-05-26 10:26:48'),
(79, 161, 2.0000, NULL, 163.7000, 350.0000, 0.0000, 0.0000, 0.0000, 0.0000, 327.4000, 1, 1, '1', '2021-06-01', '2023-05-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-26 08:55:14', '2022-05-26 10:26:48'),
(80, 162, 5.0000, NULL, 148.5200, 300.0000, 0.0000, 0.0000, 0.0000, 0.0000, 742.6000, 1, 1, '1', '2021-10-01', '2023-09-30', 1, 1, 1, '1-admin', '1-admin', '2022-05-26 08:55:14', '2022-05-26 10:26:48'),
(81, 165, 1.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1, 1, '1', '2021-05-01', '2024-05-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-26 08:55:14', '2022-05-26 10:26:48'),
(82, 170, 4.0000, NULL, 269.5000, 325.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1078.0000, 1, 1, '1', '2021-05-01', '2023-05-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-26 08:55:14', '2022-05-26 10:26:48'),
(83, 171, 16.0000, NULL, 225.0000, 300.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3600.0000, 1, 1, '1', '2022-03-01', '2024-02-29', 1, 1, 1, '1-admin', '1-admin', '2022-05-26 08:59:15', '2022-05-26 10:26:48'),
(84, 174, 6.0000, NULL, 1625.0000, 2050.0000, 0.0000, 0.0000, 0.0000, 0.0000, 9750.0000, 1, 1, '1', '2022-03-01', '2024-02-29', 1, 1, 1, '1-admin', '1-admin', '2022-05-26 08:59:15', '2022-05-26 10:26:48'),
(85, 180, 1.0000, NULL, 9000.0000, 9800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 9000.0000, 1, 1, '1', NULL, '2023-04-29', 1, 1, 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-26 10:26:48'),
(86, 181, 6.0000, NULL, 90.9100, 110.0000, 0.0000, 0.0000, 0.0000, 0.0000, 545.4600, 1, 1, '1', '2022-03-01', '2025-03-31', 1, 1, 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-26 10:26:48'),
(87, 182, 3.0000, NULL, 0.0000, 500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1, 1, '1', '2021-11-01', '2023-11-30', 1, 1, 1, '1-admin', '1-admin', '2022-05-26 10:26:48', '2022-05-26 10:26:48'),
(88, 97, 13.0000, NULL, 584.6430, 620.0000, 0.0000, 0.0000, 0.0000, 0.0000, 7600.3590, 1, 1, '1', '2022-04-01', '2024-04-30', 2, 1, 1, '1-admin', '1-admin', '2022-05-27 10:55:02', '2022-05-28 06:03:09'),
(89, 156, 3.0000, NULL, 3300.0000, 3750.0000, 0.0000, 0.0000, 0.0000, 0.0000, 9900.0000, 1, 1, '1', NULL, '2023-04-07', 3, 1, 1, '1-admin', '1-admin', '2022-05-27 11:47:50', '2022-05-28 06:03:57'),
(90, 115, 10.0000, NULL, 701.2500, 900.0000, 0.0000, 0.0000, 0.0000, 0.0000, 7012.5000, 1, 1, '1', '2022-03-11', '2024-03-10', 4, 1, 1, '1-admin', '1-admin', '2022-05-27 11:52:23', '2022-05-28 06:05:02'),
(91, 1, 5.0000, NULL, 3020.0000, 3020.0000, 0.0000, 0.0000, 0.0000, 0.0000, 15100.0000, 1, 1, '1', '2022-05-19', '2022-07-02', 5, 1, 1, '1-admin', '1-admin', '2022-05-27 11:58:43', '2022-05-28 06:12:09'),
(92, 2, 20.0000, NULL, 3020.0000, 3020.0000, 0.0000, 0.0000, 0.0000, 0.0000, 60400.0000, 1, 1, '1', '2022-05-25', '2022-07-08', 5, 1, 1, '1-admin', '1-admin', '2022-05-27 11:58:43', '2022-05-28 06:12:09'),
(93, 6, 20.0000, NULL, 2784.5000, 2784.5000, 0.0000, 0.0000, 0.0000, 0.0000, 55690.0000, 1, 1, '1', '2022-05-16', '2022-06-29', 5, 1, 1, '1-admin', '1-admin', '2022-05-27 11:58:43', '2022-05-28 06:12:09'),
(94, 5, 45.0000, NULL, 2552.5000, 2552.5000, 0.0000, 0.0000, 0.0000, 0.0000, 114862.5000, 1, 1, '1', '2022-05-23', '2022-07-06', 5, 1, 1, '1-admin', '1-admin', '2022-05-27 11:58:43', '2022-05-28 06:12:09'),
(95, 1, 45.0000, NULL, 3020.0000, 3185.0000, 0.0000, 0.0000, 0.0000, 0.0000, 135900.0000, 1, 1, '1', '2022-05-19', '2022-07-02', 6, 1, 1, '1-admin', '1-admin', '2022-05-27 12:06:28', '2022-05-28 06:11:07'),
(96, 2, 20.0000, NULL, 3020.0000, 3185.0000, 0.0000, 0.0000, 0.0000, 0.0000, 60400.0000, 1, 1, '1', '2022-05-25', '2022-07-08', 6, 1, 1, '1-admin', '1-admin', '2022-05-27 12:06:28', '2022-05-28 06:11:07'),
(97, 6, 5.0000, NULL, 2784.5000, 2930.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13922.5000, 1, 1, '1', '2022-05-16', '2022-06-29', 6, 1, 1, '1-admin', '1-admin', '2022-05-27 12:06:28', '2022-05-28 06:11:07'),
(98, 7, 15.0000, NULL, 2784.5000, 2930.0000, 0.0000, 0.0000, 0.0000, 0.0000, 41767.5000, 1, 1, '1', '2022-05-18', '2022-07-01', 6, 1, 1, '1-admin', '1-admin', '2022-05-27 12:06:28', '2022-05-28 06:11:07'),
(99, 5, 15.0000, NULL, 2552.5000, 2590.0000, 0.0000, 0.0000, 0.0000, 0.0000, 38287.5000, 1, 1, '1', '2022-05-23', '2022-07-06', 6, 1, 1, '1-admin', '1-admin', '2022-05-27 12:06:28', '2022-05-28 06:11:07'),
(100, 123, 232.1000, NULL, 260.0000, 265.0000, 0.0000, 0.0000, 0.0000, 0.0000, 60346.0000, 1, 1, '', NULL, NULL, 7, 1, 1, '1-admin', NULL, '2022-05-28 05:45:14', '2022-05-28 05:45:14'),
(101, 62, 16.0000, NULL, 160.9375, 190.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2575.0000, 1, 1, '', NULL, NULL, 8, 1, 1, '1-admin', NULL, '2022-05-28 16:25:59', '2022-05-28 16:25:59'),
(103, 139, 1.0000, NULL, 10.0000, 10.0000, 0.0000, 0.0000, 0.0000, 0.0000, 10.0000, 1, 1, '', NULL, NULL, 10, 1, 1, '1-admin', NULL, '2022-05-28 23:05:03', '2022-05-28 23:05:03'),
(104, 139, 1.0000, NULL, 10.0000, 10.0000, 0.0000, 0.0000, 0.0000, 0.0000, 10.0000, 1, 1, '', NULL, NULL, 11, 1, 1, '1-admin', NULL, '2022-05-28 23:05:38', '2022-05-28 23:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_form_settings`
--

CREATE TABLE `purchase_form_settings` (
  `id` int(11) NOT NULL,
  `_default_inventory` int(11) NOT NULL,
  `_default_purchase` int(11) NOT NULL,
  `_default_discount` int(11) NOT NULL,
  `_default_vat_account` int(11) NOT NULL,
  `_show_barcode` int(11) NOT NULL,
  `_show_vat` int(11) NOT NULL,
  `_show_store` int(11) NOT NULL,
  `_show_self` int(11) NOT NULL,
  `_show_manufacture_date` int(11) NOT NULL DEFAULT 0,
  `_show_expire_date` int(11) NOT NULL DEFAULT 0,
  `_show_p_balance` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase_form_settings`
--

INSERT INTO `purchase_form_settings` (`id`, `_default_inventory`, `_default_purchase`, `_default_discount`, `_default_vat_account`, `_show_barcode`, `_show_vat`, `_show_store`, `_show_self`, `_show_manufacture_date`, `_show_expire_date`, `_show_p_balance`, `created_at`, `updated_at`) VALUES
(1, 7, 2, 6, 10, 0, 1, 0, 0, 1, 1, 0, '2022-04-14 18:43:06', '2022-05-28 05:42:55');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_order_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_date` date DEFAULT NULL,
  `_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_ledger_id` bigint(20) UNSIGNED NOT NULL,
  `_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_referance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_id` bigint(20) UNSIGNED NOT NULL,
  `_user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_sub_total` double(15,4) NOT NULL DEFAULT 0.0000,
  `_total` double(15,4) NOT NULL DEFAULT 0.0000,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`id`, `_order_number`, `_date`, `_time`, `_ledger_id`, `_address`, `_phone`, `_referance`, `_user_id`, `_user_name`, `_note`, `_sub_total`, `_total`, `_branch_id`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(7, NULL, '2022-05-28', '19:04:26', 104, 'Goalondo,Rajbari.', '+8801721404267, +8801972404267, +8801770654254', NULL, 1, 'admin', 'p', 6272.0000, 6272.0000, 1, 1, '1-admin', NULL, '2022-05-27 13:04:26', '2022-05-27 13:04:26');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_details`
--

CREATE TABLE `purchase_order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_item_id` bigint(20) UNSIGNED NOT NULL,
  `_qty` double(15,4) NOT NULL DEFAULT 0.0000,
  `_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_value` double(15,4) NOT NULL DEFAULT 0.0000,
  `_no` bigint(20) UNSIGNED NOT NULL,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_cost_center_id` int(11) DEFAULT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_order_details`
--

INSERT INTO `purchase_order_details` (`id`, `_item_id`, `_qty`, `_rate`, `_value`, `_no`, `_branch_id`, `_cost_center_id`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(9, 74, 10.0000, 98.0000, 980.0000, 7, 1, 1, 1, '1-admin', NULL, '2022-05-27 13:04:26', '2022-05-27 13:04:26'),
(10, 35, 54.0000, 98.0000, 5292.0000, 7, 1, 1, 1, '1-admin', NULL, '2022-05-27 13:04:26', '2022-05-27 13:04:26');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_returns`
--

CREATE TABLE `purchase_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_date` date NOT NULL,
  `_time` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_order_ref_id` int(11) DEFAULT NULL,
  `_referance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_ledger_id` bigint(20) UNSIGNED NOT NULL,
  `_user_id` bigint(20) UNSIGNED NOT NULL,
  `_user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_sub_total` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount_input` double(15,4) NOT NULL DEFAULT 0.0000,
  `_total_discount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_total_vat` double(15,4) NOT NULL DEFAULT 0.0000,
  `_total` double(15,4) NOT NULL DEFAULT 0.0000,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_cost_center_id` int(11) NOT NULL DEFAULT 1,
  `_store_id` int(11) NOT NULL DEFAULT 1,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_accounts`
--

CREATE TABLE `purchase_return_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_no` bigint(20) UNSIGNED NOT NULL,
  `_account_type_id` bigint(20) UNSIGNED NOT NULL,
  `_account_group_id` bigint(20) UNSIGNED NOT NULL,
  `_ledger_id` bigint(20) UNSIGNED NOT NULL,
  `_dr_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_cr_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_cost_center` int(11) NOT NULL,
  `_short_narr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_details`
--

CREATE TABLE `purchase_return_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_item_id` bigint(20) UNSIGNED NOT NULL,
  `_qty` double(15,4) NOT NULL DEFAULT 0.0000,
  `_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_sales_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_vat` double(15,4) NOT NULL DEFAULT 0.0000,
  `_vat_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_value` double(15,4) NOT NULL DEFAULT 0.0000,
  `_purchase_ref_id` int(11) DEFAULT NULL,
  `_purchase_detal_ref` int(11) DEFAULT NULL,
  `_barcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_store_id` int(11) DEFAULT NULL,
  `_cost_center_id` int(11) DEFAULT NULL,
  `_store_salves_id` int(11) DEFAULT NULL,
  `_no` bigint(20) UNSIGNED NOT NULL,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_form_settings`
--

CREATE TABLE `purchase_return_form_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_default_inventory` int(11) NOT NULL,
  `_default_purchase` int(11) NOT NULL,
  `_default_discount` int(11) NOT NULL,
  `_default_vat_account` int(11) DEFAULT NULL,
  `_show_barcode` int(11) NOT NULL,
  `_show_vat` int(11) NOT NULL,
  `_show_store` int(11) NOT NULL,
  `_show_self` int(11) NOT NULL,
  `_show_p_balance` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_return_form_settings`
--

INSERT INTO `purchase_return_form_settings` (`id`, `_default_inventory`, `_default_purchase`, `_default_discount`, `_default_vat_account`, `_show_barcode`, `_show_vat`, `_show_store`, `_show_self`, `_show_p_balance`, `created_at`, `updated_at`) VALUES
(1, 7, 3, 6, 51, 0, 0, 0, 0, 0, '2022-04-19 14:10:35', '2022-05-24 23:12:55');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', 'admin', '2021-05-29 05:33:16', '2021-05-29 05:33:16'),
(3, 'Manager', 'web', 'admin', '2021-06-04 05:59:56', '2022-02-01 01:53:05'),
(5, 'Accountant', 'web', 'admin', '2021-06-04 05:59:56', '2022-04-22 10:17:31');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 5),
(2, 1),
(2, 3),
(2, 5),
(3, 1),
(3, 3),
(3, 5),
(4, 3),
(4, 5),
(5, 1),
(5, 3),
(5, 5),
(6, 1),
(6, 3),
(6, 5),
(7, 1),
(7, 3),
(7, 5),
(8, 3),
(8, 5),
(9, 1),
(9, 3),
(9, 5),
(10, 1),
(10, 3),
(10, 5),
(11, 1),
(11, 3),
(11, 5),
(12, 3),
(12, 5),
(13, 1),
(13, 3),
(13, 5),
(14, 1),
(14, 3),
(14, 5),
(15, 1),
(15, 3),
(15, 5),
(16, 3),
(16, 5),
(17, 1),
(17, 3),
(17, 5),
(18, 1),
(18, 3),
(18, 5),
(19, 1),
(19, 3),
(19, 5),
(20, 3),
(20, 5),
(21, 1),
(21, 3),
(21, 5),
(22, 1),
(22, 3),
(22, 5),
(23, 1),
(23, 3),
(23, 5),
(24, 3),
(24, 5),
(25, 1),
(25, 3),
(25, 5),
(26, 1),
(26, 3),
(26, 5),
(27, 1),
(27, 3),
(27, 5),
(28, 3),
(28, 5),
(29, 1),
(29, 5),
(30, 1),
(30, 3),
(30, 5),
(31, 1),
(31, 3),
(31, 5),
(32, 1),
(32, 3),
(32, 5),
(33, 3),
(33, 5),
(34, 1),
(34, 3),
(34, 5),
(35, 1),
(35, 3),
(35, 5),
(36, 1),
(36, 3),
(36, 5),
(37, 3),
(37, 5),
(38, 1),
(38, 3),
(38, 5),
(39, 1),
(39, 3),
(39, 5),
(40, 1),
(40, 3),
(40, 5),
(41, 1),
(41, 3),
(41, 5),
(42, 1),
(42, 3),
(42, 5),
(43, 1),
(43, 3),
(43, 5),
(44, 1),
(44, 3),
(44, 5),
(45, 1),
(45, 3),
(45, 5),
(46, 1),
(46, 3),
(46, 5),
(47, 1),
(47, 3),
(47, 5),
(48, 1),
(48, 3),
(48, 5),
(49, 1),
(49, 3),
(49, 5),
(50, 1),
(50, 3),
(50, 5),
(51, 1),
(51, 3),
(51, 5),
(52, 1),
(52, 3),
(52, 5),
(53, 1),
(53, 3),
(53, 5),
(54, 1),
(54, 3),
(54, 5),
(55, 3),
(55, 5),
(56, 1),
(56, 3),
(56, 5),
(57, 1),
(57, 3),
(57, 5),
(58, 1),
(58, 3),
(58, 5),
(59, 3),
(59, 5),
(60, 1),
(60, 3),
(60, 5),
(61, 1),
(61, 3),
(61, 5),
(62, 1),
(62, 3),
(62, 5),
(63, 3),
(63, 5),
(64, 1),
(64, 3),
(64, 5),
(65, 1),
(65, 3),
(65, 5),
(66, 1),
(66, 3),
(66, 5),
(67, 1),
(67, 3),
(67, 5),
(68, 3),
(68, 5),
(69, 1),
(69, 3),
(69, 5),
(70, 1),
(70, 3),
(70, 5),
(71, 1),
(71, 3),
(71, 5),
(72, 1),
(72, 3),
(72, 5),
(73, 1),
(73, 3),
(73, 5),
(74, 1),
(74, 3),
(74, 5),
(75, 3),
(75, 5),
(76, 1),
(76, 3),
(76, 5),
(77, 1),
(77, 3),
(77, 5),
(78, 1),
(79, 1),
(80, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_date` date NOT NULL,
  `_time` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_order_ref_id` int(11) DEFAULT NULL,
  `_referance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_ledger_id` bigint(20) UNSIGNED NOT NULL,
  `_address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_id` bigint(20) UNSIGNED NOT NULL,
  `_user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_sub_total` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount_input` double(15,4) NOT NULL DEFAULT 0.0000,
  `_total_discount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_total_vat` double(15,4) NOT NULL DEFAULT 0.0000,
  `_total` double(15,4) NOT NULL DEFAULT 0.0000,
  `_p_balance` double NOT NULL DEFAULT 0,
  `_l_balance` double NOT NULL DEFAULT 0,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_store_id` int(11) DEFAULT 1,
  `_cost_center_id` int(11) NOT NULL DEFAULT 1,
  `_store_salves_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_delivery_man_id` int(11) DEFAULT NULL,
  `_sales_man_id` int(11) DEFAULT NULL,
  `_sales_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `_order_number`, `_date`, `_time`, `_order_ref_id`, `_referance`, `_ledger_id`, `_address`, `_phone`, `_user_id`, `_user_name`, `_note`, `_sub_total`, `_discount_input`, `_total_discount`, `_total_vat`, `_total`, `_p_balance`, `_l_balance`, `_branch_id`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`, `_store_id`, `_cost_center_id`, `_store_salves_id`, `_delivery_man_id`, `_sales_man_id`, `_sales_type`) VALUES
(1, '1', '2022-05-26', '05:23:29', NULL, NULL, 121, 'N/A', 'N/A', 1, 'admin', 'BS=01Bag & Virocid=01pcs', 3365.0000, 90.0000, 90.0000, 0.0000, 3275.0000, 4670, 4670, 1, 1, '1-admin', NULL, '2022-05-27 06:01:15', '2022-05-28 05:23:29', 1, 1, NULL, 0, 0, 'sales'),
(2, '2', '2022-05-26', '05:18:38', NULL, NULL, 280, 'Madrasa Mor,Garpara,Manikganj.', '+8801789510449', 1, 'admin', 'LL=01Bag', 2590.0000, 0.0000, 0.0000, 0.0000, 2590.0000, 0, 0, 1, 1, '1-admin', NULL, '2022-05-27 09:56:52', '2022-05-28 05:18:38', 1, 1, NULL, 0, 0, 'sales'),
(3, '3', '2022-05-26', '05:25:44', NULL, NULL, 121, 'N/A', 'N/A', 1, 'admin', 'SS=02Bags', 5860.0000, 0.0000, 460.0000, 0.0000, 5400.0000, 0, 0, 1, 1, '1-admin', NULL, '2022-05-27 10:06:06', '2022-05-28 05:25:44', 1, 1, NULL, 0, 0, 'sales'),
(4, '', '2022-05-26', '05:46:59', NULL, NULL, 182, 'Nimtoli Bazar,Manikganj.', '+8801715548765', 1, 'admin', 'Wazed:250p=232.1*265 Van:Roshid', 61506.5000, 6.5000, 6.5000, 0.0000, 61500.0000, 0, 0, 1, 1, '1-admin', NULL, '2022-05-28 05:46:59', '2022-05-28 05:46:59', 1, 1, NULL, 0, 0, 'sales'),
(5, '', '2022-05-26', '06:16:42', NULL, NULL, 240, 'Niralibazar,Borohatkora,Daulotpur,Manikganj.', '+8801711513973, +8801957773344', 1, 'admin', 'R.R.P(Dhamrai):BS=05,BG=20,SS=20,LL=45.Total=90Bags (4500kg)', 246052.5000, 0.0000, 0.0000, 0.0000, 246052.5000, 0, 0, 1, 1, '1-admin', NULL, '2022-05-28 06:16:42', '2022-05-28 06:16:42', 1, 1, NULL, 0, 0, 'sales'),
(6, '', '2022-05-26', '07:00:06', NULL, NULL, 285, 'North Bil Dauli,Garpara,Manikganj.', '+8801303510680', 1, 'admin', 'BG=10Bags,Renamycin=01pcs & Betaincool=02pcs', 32780.0000, 0.0000, 0.0000, 0.0000, 32780.0000, 0, 0, 1, 1, '1-admin', NULL, '2022-05-28 07:00:06', '2022-05-28 07:00:06', 1, 1, NULL, 0, 0, 'sales'),
(7, '', '2022-05-26', '09:13:43', NULL, NULL, 272, 'Poshchim Uriajani,Manikganj.', '+8801713515786', 1, 'admin', 'BG=12Bags', 38220.0000, 0.0000, 0.0000, 0.0000, 38220.0000, 0, 0, 1, 1, '1-admin', NULL, '2022-05-28 09:13:43', '2022-05-28 09:13:43', 1, 1, NULL, 0, 0, 'sales'),
(8, '8', '2022-05-26', '19:38:35', NULL, NULL, 130, 'Chor Ghosta,Putail,Manikganj.', '+8801767709899, +8801638306448', 1, 'admin', 'BS=08Bags & Newcastle=01pcs', 26030.0000, 0.0000, 0.0000, 0.0000, 26030.0000, 71350, 97380, 1, 1, '1-admin', NULL, '2022-05-28 09:29:46', '2022-05-28 13:38:35', 1, 1, NULL, 0, 0, 'sales'),
(9, '9', '2022-05-28', '18:54:37', NULL, NULL, 121, 'N/A', 'N/A', 1, 'admin', 'BG=01Bag', 3185.0000, 0.0000, 90.0000, 0.0000, 3095.0000, 0, 0, 1, 1, '1-admin', NULL, '2022-05-28 16:14:29', '2022-05-28 12:54:37', 1, 1, NULL, 0, 380, 'sales');

-- --------------------------------------------------------

--
-- Table structure for table `sales_accounts`
--

CREATE TABLE `sales_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_no` bigint(20) UNSIGNED NOT NULL,
  `_account_type_id` bigint(20) UNSIGNED NOT NULL,
  `_account_group_id` bigint(20) UNSIGNED NOT NULL,
  `_ledger_id` bigint(20) UNSIGNED NOT NULL,
  `_dr_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_cr_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_cost_center` int(11) NOT NULL,
  `_short_narr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_accounts`
--

INSERT INTO `sales_accounts` (`id`, `_no`, `_account_type_id`, `_account_group_id`, `_ledger_id`, `_dr_amount`, `_cr_amount`, `_type`, `_branch_id`, `_cost_center`, `_short_narr`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 16, 1, 3275.0000, 0.0000, NULL, 1, 1, 'N/A', 0, '1-admin', NULL, '2022-05-27 06:01:15', '2022-05-28 05:23:29'),
(2, 1, 13, 1, 121, 0.0000, 3275.0000, NULL, 1, 1, 'N/A', 0, '1-admin', NULL, '2022-05-27 06:01:15', '2022-05-28 05:23:29'),
(3, 2, 1, 16, 1, 2600.0000, 0.0000, NULL, 1, 1, 'Cash Pay', 0, '1-admin', NULL, '2022-05-27 09:56:52', '2022-05-28 05:18:38'),
(4, 2, 13, 1, 280, 0.0000, 2600.0000, NULL, 1, 1, 'Cash Pay', 0, '1-admin', NULL, '2022-05-27 09:56:52', '2022-05-28 05:18:38'),
(5, 3, 1, 16, 1, 5400.0000, 0.0000, NULL, 1, 1, 'N/A', 0, '1-admin', NULL, '2022-05-27 10:06:06', '2022-05-28 05:25:44'),
(6, 3, 13, 1, 121, 0.0000, 5400.0000, NULL, 1, 1, 'N/A', 0, '1-admin', NULL, '2022-05-27 10:06:06', '2022-05-28 05:25:44'),
(7, 1, 1, 16, 1, 3275.0000, 0.0000, NULL, 1, 1, 'N/A', 0, '1-admin', NULL, '2022-05-27 10:21:33', '2022-05-28 05:23:29'),
(8, 1, 13, 1, 121, 0.0000, 3275.0000, NULL, 1, 1, 'N/A', 0, '1-admin', NULL, '2022-05-27 10:21:33', '2022-05-28 05:23:29'),
(9, 2, 1, 16, 1, 2600.0000, 0.0000, NULL, 1, 1, 'Cash Deposit', 1, '1-admin', NULL, '2022-05-28 05:18:38', '2022-05-28 05:18:38'),
(10, 2, 13, 1, 280, 0.0000, 2600.0000, NULL, 1, 1, 'Cash Deposit', 1, '1-admin', NULL, '2022-05-28 05:18:38', '2022-05-28 05:18:38'),
(11, 1, 1, 16, 1, 3275.0000, 0.0000, NULL, 1, 1, 'Cash Deposit', 1, '1-admin', NULL, '2022-05-28 05:23:29', '2022-05-28 05:23:29'),
(12, 1, 13, 1, 121, 0.0000, 3275.0000, NULL, 1, 1, 'Cash Deposit', 1, '1-admin', NULL, '2022-05-28 05:23:29', '2022-05-28 05:23:29'),
(13, 3, 1, 16, 1, 5400.0000, 0.0000, NULL, 1, 1, 'Cash Deposit', 1, '1-admin', NULL, '2022-05-28 05:25:44', '2022-05-28 05:25:44'),
(14, 3, 13, 1, 121, 0.0000, 5400.0000, NULL, 1, 1, 'Cash Deposit', 1, '1-admin', NULL, '2022-05-28 05:25:44', '2022-05-28 05:25:44'),
(15, 9, 1, 16, 1, 3095.0000, 0.0000, NULL, 1, 1, 'Cash Sales', 0, '1-admin', NULL, '2022-05-28 16:14:29', '2022-05-28 12:54:37'),
(16, 9, 13, 1, 121, 0.0000, 3095.0000, NULL, 1, 1, 'Cash Deposit', 0, '1-admin', NULL, '2022-05-28 16:14:29', '2022-05-28 12:54:37'),
(17, 9, 1, 16, 1, 3095.0000, 0.0000, NULL, 1, 1, 'Cash Sales', 1, '1-admin', NULL, '2022-05-28 12:54:37', '2022-05-28 12:54:37'),
(18, 9, 13, 1, 121, 0.0000, 3095.0000, NULL, 1, 1, 'Cash Deposit', 1, '1-admin', NULL, '2022-05-28 12:54:37', '2022-05-28 12:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_item_id` bigint(20) UNSIGNED NOT NULL,
  `_barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_p_p_l_id` bigint(20) UNSIGNED NOT NULL,
  `_qty` double(15,4) NOT NULL DEFAULT 0.0000,
  `_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_sales_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_vat` double(15,4) NOT NULL DEFAULT 0.0000,
  `_vat_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_value` double(15,4) NOT NULL DEFAULT 0.0000,
  `_manufacture_date` date DEFAULT NULL,
  `_expire_date` date DEFAULT NULL,
  `_store_id` int(11) DEFAULT NULL,
  `_cost_center_id` int(11) DEFAULT NULL,
  `_store_salves_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_purchase_invoice_no` int(11) DEFAULT NULL,
  `_purchase_detail_id` int(11) DEFAULT NULL,
  `_no` bigint(20) UNSIGNED NOT NULL,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_details`
--

INSERT INTO `sales_details` (`id`, `_item_id`, `_barcode`, `_p_p_l_id`, `_qty`, `_rate`, `_sales_rate`, `_discount`, `_discount_amount`, `_vat`, `_vat_amount`, `_value`, `_manufacture_date`, `_expire_date`, `_store_id`, `_cost_center_id`, `_store_salves_id`, `_purchase_invoice_no`, `_purchase_detail_id`, `_no`, `_branch_id`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 1.0000, 2890.0000, 3185.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3185.0000, '2022-05-17', '2022-06-30', 1, 1, '1', 1, 1, 1, 1, 1, '1-admin', NULL, '2022-05-27 06:01:15', '2022-05-28 05:23:29'),
(2, 21, NULL, 7, 1.0000, 141.5700, 180.0000, 0.0000, 0.0000, 0.0000, 0.0000, 180.0000, '2022-01-01', '2024-01-01', 1, 1, '1', 1, 7, 1, 1, 1, '1-admin', NULL, '2022-05-27 06:01:15', '2022-05-28 05:23:29'),
(3, 5, NULL, 3, 1.0000, 2472.5000, 2590.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2590.0000, '2022-05-17', '2022-06-30', 1, 1, '1', 1, 3, 2, 1, 1, '1-admin', NULL, '2022-05-27 09:56:52', '2022-05-28 05:18:38'),
(4, 6, NULL, 4, 2.0000, 2674.5000, 2930.0000, 0.0000, 460.0000, 0.0000, 0.0000, 5860.0000, '2022-05-16', '2022-06-29', 1, 1, '1', 1, 4, 3, 1, 1, '1-admin', NULL, '2022-05-27 10:06:06', '2022-05-28 05:25:44'),
(5, 123, NULL, 100, 232.1000, 260.0000, 265.0000, 0.0000, 0.0000, 0.0000, 0.0000, 61506.5000, NULL, NULL, 1, 1, '', 7, 100, 4, 1, 1, '1-admin', NULL, '2022-05-28 05:46:59', '2022-05-28 05:46:59'),
(6, 1, NULL, 91, 5.0000, 3020.0000, 3020.0000, 0.0000, 0.0000, 0.0000, 0.0000, 15100.0000, '2022-05-19', '2022-07-02', 1, 1, '', 5, 91, 5, 1, 1, '1-admin', NULL, '2022-05-28 06:16:42', '2022-05-28 06:16:42'),
(7, 2, NULL, 92, 20.0000, 3020.0000, 3020.0000, 0.0000, 0.0000, 0.0000, 0.0000, 60400.0000, '2022-05-25', '2022-07-08', 1, 1, '', 5, 92, 5, 1, 1, '1-admin', NULL, '2022-05-28 06:16:42', '2022-05-28 06:16:42'),
(8, 6, NULL, 93, 20.0000, 2784.5000, 2784.5000, 0.0000, 0.0000, 0.0000, 0.0000, 55690.0000, '2022-05-16', '2022-06-29', 1, 1, '', 5, 93, 5, 1, 1, '1-admin', NULL, '2022-05-28 06:16:42', '2022-05-28 06:16:42'),
(9, 5, NULL, 94, 45.0000, 2552.5000, 2552.5000, 0.0000, 0.0000, 0.0000, 0.0000, 114862.5000, '2022-05-23', '2022-07-06', 1, 1, '', 5, 94, 5, 1, 1, '1-admin', NULL, '2022-05-28 06:16:42', '2022-05-28 06:16:42'),
(10, 2, NULL, 2, 10.0000, 2890.0000, 3185.0000, 0.0000, 0.0000, 0.0000, 0.0000, 31850.0000, '2022-05-18', '2022-07-01', 1, 1, '1', 1, 2, 6, 1, 1, '1-admin', NULL, '2022-05-28 07:00:06', '2022-05-28 07:00:06'),
(11, 97, NULL, 42, 1.0000, 584.6400, 630.0000, 0.0000, 0.0000, 0.0000, 0.0000, 630.0000, '2020-11-01', '2022-11-30', 1, 1, '1', 1, 42, 6, 1, 1, '1-admin', NULL, '2022-05-28 07:00:06', '2022-05-28 07:00:06'),
(12, 36, NULL, 16, 2.0000, 120.6900, 150.0000, 0.0000, 0.0000, 0.0000, 0.0000, 300.0000, '2021-06-01', '2024-06-30', 1, 1, '1', 1, 16, 6, 1, 1, '1-admin', NULL, '2022-05-28 07:00:06', '2022-05-28 07:00:06'),
(13, 2, NULL, 2, 12.0000, 2890.0000, 3185.0000, 0.0000, 0.0000, 0.0000, 0.0000, 38220.0000, '2022-05-18', '2022-07-01', 1, 1, '1', 1, 2, 7, 1, 1, '1-admin', NULL, '2022-05-28 09:13:43', '2022-05-28 09:13:43'),
(14, 1, NULL, 1, 5.0000, 2890.0000, 3185.0000, 0.0000, 0.0000, 0.0000, 0.0000, 15925.0000, '2022-05-17', '2022-06-30', 1, 1, '1', 1, 1, 8, 1, 1, '1-admin', NULL, '2022-05-28 09:29:46', '2022-05-28 13:38:35'),
(15, 48, NULL, 24, 1.0000, 356.0000, 550.0000, 0.0000, 0.0000, 0.0000, 0.0000, 550.0000, NULL, '2023-05-31', 1, 1, '1', 1, 24, 8, 1, 1, '1-admin', NULL, '2022-05-28 09:29:46', '2022-05-28 13:38:35'),
(16, 1, NULL, 95, 3.0000, 3020.0000, 3185.0000, 0.0000, 0.0000, 0.0000, 0.0000, 9555.0000, '2022-05-19', '2022-07-02', 1, 1, '', 6, 95, 8, 1, 1, '1-admin', NULL, '2022-05-28 09:29:46', '2022-05-28 13:38:35'),
(17, 2, NULL, 2, 1.0000, 2890.0000, 3185.0000, 0.0000, 90.0000, 0.0000, 0.0000, 3185.0000, '2022-05-18', '2022-07-01', 1, 1, '1', 1, 2, 9, 1, 1, '1-admin', NULL, '2022-05-28 16:14:29', '2022-05-28 12:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `sales_form_settings`
--

CREATE TABLE `sales_form_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_default_inventory` int(11) NOT NULL,
  `_default_sales` int(11) NOT NULL,
  `_default_cost_of_solds` int(11) NOT NULL,
  `_default_discount` int(11) NOT NULL,
  `_default_vat_account` int(11) NOT NULL,
  `_show_barcode` int(11) NOT NULL,
  `_inline_discount` int(11) NOT NULL DEFAULT 1,
  `_show_vat` int(11) NOT NULL,
  `_show_store` int(11) NOT NULL,
  `_show_self` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_show_delivery_man` int(11) NOT NULL DEFAULT 0,
  `_show_sales_man` int(11) NOT NULL DEFAULT 0,
  `_show_cost_rate` int(11) NOT NULL DEFAULT 0,
  `_show_manufacture_date` int(11) NOT NULL DEFAULT 0,
  `_show_expire_date` int(11) NOT NULL DEFAULT 0,
  `_show_p_balance` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_form_settings`
--

INSERT INTO `sales_form_settings` (`id`, `_default_inventory`, `_default_sales`, `_default_cost_of_solds`, `_default_discount`, `_default_vat_account`, `_show_barcode`, `_inline_discount`, `_show_vat`, `_show_store`, `_show_self`, `created_at`, `updated_at`, `_show_delivery_man`, `_show_sales_man`, `_show_cost_rate`, `_show_manufacture_date`, `_show_expire_date`, `_show_p_balance`) VALUES
(1, 7, 4, 50, 8, 10, 0, 1, 0, 0, 0, '2022-04-26 10:54:55', '2022-05-28 23:40:47', 0, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales_orders`
--

CREATE TABLE `sales_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_order_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_date` date DEFAULT NULL,
  `_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_ledger_id` bigint(20) UNSIGNED NOT NULL,
  `_referance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_id` bigint(20) UNSIGNED NOT NULL,
  `_user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_sub_total` double(15,4) NOT NULL DEFAULT 0.0000,
  `_total` double(15,4) NOT NULL DEFAULT 0.0000,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_details`
--

CREATE TABLE `sales_order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_item_id` bigint(20) UNSIGNED NOT NULL,
  `_qty` double(15,4) NOT NULL DEFAULT 0.0000,
  `_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_value` double(15,4) NOT NULL DEFAULT 0.0000,
  `_no` bigint(20) UNSIGNED NOT NULL,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_returns`
--

CREATE TABLE `sales_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_date` date NOT NULL,
  `_address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_time` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_order_ref_id` int(11) DEFAULT NULL,
  `_referance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_ledger_id` bigint(20) UNSIGNED NOT NULL,
  `_user_id` bigint(20) UNSIGNED NOT NULL,
  `_user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_sub_total` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount_input` double(15,4) NOT NULL DEFAULT 0.0000,
  `_total_discount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_total_vat` double(15,4) NOT NULL DEFAULT 0.0000,
  `_total` double(15,4) NOT NULL DEFAULT 0.0000,
  `_p_balance` double NOT NULL DEFAULT 0,
  `_l_balance` double NOT NULL DEFAULT 0,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_store_id` int(11) DEFAULT 1,
  `_cost_center_id` int(11) NOT NULL DEFAULT 1,
  `_store_salves_id` int(11) DEFAULT NULL,
  `_delivery_man_id` int(11) DEFAULT NULL,
  `_sales_man_id` int(11) DEFAULT NULL,
  `_sales_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_returns`
--

INSERT INTO `sales_returns` (`id`, `_order_number`, `_date`, `_address`, `_phone`, `_time`, `_order_ref_id`, `_referance`, `_ledger_id`, `_user_id`, `_user_name`, `_note`, `_sub_total`, `_discount_input`, `_total_discount`, `_total_vat`, `_total`, `_p_balance`, `_l_balance`, `_branch_id`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`, `_store_id`, `_cost_center_id`, `_store_salves_id`, `_delivery_man_id`, `_sales_man_id`, `_sales_type`) VALUES
(1, '1', '2022-05-29', 'N/A', 'N/A', '05:45:29', 2, NULL, 280, 1, 'admin', 'sa', 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0, 1, 1, '1-admin', NULL, '2022-05-28 23:45:16', '2022-05-28 23:45:29', 1, 1, NULL, 0, 0, 'sales_return');

-- --------------------------------------------------------

--
-- Table structure for table `sales_return_accounts`
--

CREATE TABLE `sales_return_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_no` bigint(20) UNSIGNED NOT NULL,
  `_account_type_id` bigint(20) UNSIGNED NOT NULL,
  `_account_group_id` bigint(20) UNSIGNED NOT NULL,
  `_ledger_id` bigint(20) UNSIGNED NOT NULL,
  `_dr_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_cr_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_cost_center` int(11) NOT NULL,
  `_short_narr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_return_details`
--

CREATE TABLE `sales_return_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_item_id` bigint(20) UNSIGNED NOT NULL,
  `_p_p_l_id` bigint(20) UNSIGNED NOT NULL,
  `_sales_ref_id` int(11) DEFAULT NULL,
  `_sales_detail_ref_id` int(11) DEFAULT NULL,
  `_qty` double(15,4) NOT NULL DEFAULT 0.0000,
  `_barcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_sales_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_vat` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_vat_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_value` double(15,4) NOT NULL DEFAULT 0.0000,
  `_manufacture_date` date DEFAULT NULL,
  `_expire_date` date DEFAULT NULL,
  `_store_id` int(11) DEFAULT NULL,
  `_cost_center_id` int(11) DEFAULT NULL,
  `_store_salves_id` int(11) DEFAULT NULL,
  `_no` bigint(20) UNSIGNED NOT NULL,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_return_details`
--

INSERT INTO `sales_return_details` (`id`, `_item_id`, `_p_p_l_id`, `_sales_ref_id`, `_sales_detail_ref_id`, `_qty`, `_barcode`, `_rate`, `_sales_rate`, `_discount`, `_vat`, `_discount_amount`, `_vat_amount`, `_value`, `_manufacture_date`, `_expire_date`, `_store_id`, `_cost_center_id`, `_store_salves_id`, `_no`, `_branch_id`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 5, 3, 2, 3, 0.0000, NULL, 2472.5000, 2590.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2022-05-17', '2022-06-30', 1, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-05-28 23:45:16', '2022-05-28 23:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `sales_return_form_settings`
--

CREATE TABLE `sales_return_form_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_default_inventory` int(11) NOT NULL,
  `_default_sales` int(11) NOT NULL,
  `_default_cost_of_solds` int(11) NOT NULL,
  `_default_discount` int(11) NOT NULL,
  `_default_vat_account` int(11) NOT NULL,
  `_show_barcode` int(11) NOT NULL,
  `_show_vat` int(11) NOT NULL,
  `_show_store` int(11) NOT NULL,
  `_show_self` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_show_delivery_man` int(11) NOT NULL DEFAULT 0,
  `_show_sales_man` int(11) NOT NULL DEFAULT 0,
  `_show_cost_rate` int(11) NOT NULL DEFAULT 0,
  `_inline_discount` int(11) NOT NULL DEFAULT 0,
  `_show_expire_date` int(11) NOT NULL DEFAULT 0,
  `_show_manufacture_date` int(11) NOT NULL DEFAULT 0,
  `_show_p_balance` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_return_form_settings`
--

INSERT INTO `sales_return_form_settings` (`id`, `_default_inventory`, `_default_sales`, `_default_cost_of_solds`, `_default_discount`, `_default_vat_account`, `_show_barcode`, `_show_vat`, `_show_store`, `_show_self`, `created_at`, `updated_at`, `_show_delivery_man`, `_show_sales_man`, `_show_cost_rate`, `_inline_discount`, `_show_expire_date`, `_show_manufacture_date`, `_show_p_balance`) VALUES
(1, 7, 5, 50, 8, 10, 0, 0, 0, 0, '2022-04-29 04:53:06', '2022-05-28 23:45:02', 1, 1, 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('RjUC9Ipt1vrvpK5Vj1sbUncGUXmwFjiV2IqhM8pF', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZXFscGszdzNZa014T0tLQTNiWE1rVWN3TUdtOFZYNFR6U2NIYnM4OCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZGQtd2FsbGV0Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6ODtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJEFPVzJNTzVTRFBZVC9FeERMM25BSS41Q3l4bG1HT1VQekZZODNETS5GckQxaGdrV3pnSDdDIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRBT1cyTU81U0RQWVQvRXhETDNuQUkuNUN5eGxtR09VUHpGWTgzRE0uRnJEMWhna1d6Z0g3QyI7fQ==', 1630340574);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_houses`
--

CREATE TABLE `store_houses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_branch_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_houses`
--

INSERT INTO `store_houses` (`id`, `_name`, `_code`, `_branch_id`, `created_at`, `updated_at`) VALUES
(1, 'Main Store', 'S-01', 1, '2022-03-03 11:52:53', '2022-03-03 11:55:19');

-- --------------------------------------------------------

--
-- Table structure for table `store_house_selves`
--

CREATE TABLE `store_house_selves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_branch_id` int(11) NOT NULL,
  `_store_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `_name`, `_code`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Dram', 'Dram', 1, NULL, NULL, '2022-02-28 17:13:07', '2022-04-14 15:12:15'),
(2, 'Cup', 'Cup', 1, NULL, NULL, '2022-02-28 17:13:17', '2022-04-14 15:11:45'),
(3, 'Mile', 'Mile', 1, NULL, NULL, '2022-02-28 17:13:27', '2022-04-14 15:11:17'),
(4, 'Yard', 'Yard', 1, NULL, NULL, '2022-02-28 17:13:35', '2022-04-14 15:11:00'),
(5, 'Foot', 'Foot', 1, NULL, NULL, '2022-02-28 17:13:44', '2022-04-14 15:10:42'),
(6, 'Inch', 'Inch', 1, NULL, NULL, '2022-02-28 17:13:51', '2022-04-14 15:10:25'),
(7, 'Kilometer', 'Kilometer', 1, NULL, NULL, '2022-02-28 17:13:58', '2022-04-14 15:10:08'),
(8, 'Centimeter', 'Centimeter', 1, NULL, NULL, '2022-02-28 17:14:06', '2022-04-14 15:09:47'),
(9, 'Millimeter', 'Millimeter', 1, NULL, NULL, '2022-02-28 17:14:14', '2022-04-14 15:09:33'),
(10, 'Ton', 'Ton', 1, NULL, NULL, '2022-02-28 17:14:20', '2022-04-14 15:08:47'),
(11, 'Pound', 'Pound', 1, NULL, NULL, '2022-02-28 17:14:24', '2022-04-04 01:03:12'),
(12, 'Litter', 'Litter', 1, NULL, NULL, '2022-02-28 17:14:27', '2022-04-04 01:02:57'),
(13, 'BAG', 'BAG', 1, NULL, NULL, '2022-02-28 17:14:31', '2022-04-04 01:02:46'),
(14, 'KG', 'KG', 1, NULL, NULL, '2022-02-28 17:11:10', '2022-04-04 01:02:35'),
(15, 'PCS', 'PCS', 1, NULL, NULL, '2022-03-02 13:10:25', '2022-04-04 01:02:25'),
(16, '2500dose', '2500dose', 1, NULL, NULL, '2022-05-24 23:21:59', '2022-05-24 23:21:59'),
(17, '50ml', '50ml', 1, NULL, NULL, '2022-05-24 23:22:08', '2022-05-24 23:22:08'),
(18, '20gm', '20gm', 1, NULL, NULL, '2022-05-24 23:22:17', '2022-05-24 23:22:17'),
(19, '500dose', '500dose', 1, NULL, NULL, '2022-05-24 23:22:24', '2022-05-24 23:22:24'),
(20, '10gm', '10gm', 1, NULL, NULL, '2022-05-24 23:22:32', '2022-05-24 23:22:32'),
(21, '500gm', '500gm', 1, NULL, NULL, '2022-05-24 23:22:40', '2022-05-24 23:22:40'),
(22, '1000dose', '1000dose', 1, NULL, NULL, '2022-05-24 23:22:46', '2022-05-24 23:22:46'),
(23, '50gm', '50gm', 1, NULL, NULL, '2022-05-24 23:22:56', '2022-05-24 23:22:56'),
(24, '200ml', '200ml', 1, NULL, NULL, '2022-05-24 23:23:03', '2022-05-24 23:23:03'),
(25, '1000gm', '1000gm', 1, NULL, NULL, '2022-05-24 23:23:10', '2022-05-24 23:23:10'),
(26, '500ml', '500ml', 1, NULL, NULL, '2022-05-24 23:23:17', '2022-05-24 23:23:17'),
(27, '1000ml', '1000ml', 1, NULL, NULL, '2022-05-24 23:23:24', '2022-05-24 23:23:24'),
(28, '100ml', '100ml', 1, NULL, NULL, '2022-05-24 23:23:31', '2022-05-24 23:23:31'),
(29, '100gm', '100gm', 1, NULL, NULL, '2022-05-24 23:23:38', '2022-05-24 23:23:38'),
(30, '25kg', '25kg', 1, NULL, NULL, '2022-05-24 23:23:45', '2022-05-24 23:23:45'),
(31, '50kg', '50kg', 1, NULL, NULL, '2022-05-24 23:23:51', '2022-05-24 23:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'visitor' COMMENT 'admin,user,visitor,applicant',
  `branch_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `cost_center_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `ref_id` int(11) DEFAULT 0 COMMENT 'Admin,Hospital,Hospital User,Patient',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `user_type`, `branch_ids`, `cost_center_ids`, `ref_id`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, 'admin', '1', '1', NULL, NULL, '$2y$10$2hWspUMjme8z/a.4J/2vXOqoMVnpfrMrx4LO37yk0il6iJVcqBuMe', 1, NULL, '2021-05-29 11:33:16', '2022-05-24 11:08:36'),
(2, 'farhad', 'farhadali0507@gmail.com', NULL, 'admin', '1,2', NULL, NULL, NULL, '$2y$10$dLHaWAH9He44h0qbKWsbZ.mrUSu7hfUlv9DjVlPBeqiNhSaa.szQW', 1, NULL, '2021-05-29 11:35:46', '2022-03-04 13:03:28'),
(46, 'jony', 'jony0507@gmail.com', NULL, 'user', '1,2', '0', 0, NULL, '$2y$10$a1x6VBU0VWqbI8T8HeDX3exLuF4XJm6sxCMNUJYxYQFOPh7VZSMh2', 1, NULL, '2022-03-04 14:08:25', '2022-03-15 09:21:21'),
(47, 'Md. Joshim Uddin Sarder', 'jashimuddin@gmail.com', NULL, 'visitor', '1', '1', 0, NULL, '$2y$10$2zsNsUjIcucUTRtUTe65I.ifix4tn3XWK6nFYul/gj6bf4iAmHf1y', 1, NULL, '2022-05-24 11:15:41', '2022-05-24 11:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_masters`
--

CREATE TABLE `voucher_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_date` date NOT NULL,
  `_time` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_user_id` bigint(20) UNSIGNED NOT NULL,
  `_user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_voucher_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_transection_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_transection_ref` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_form_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_amount` double(15,4) DEFAULT NULL,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `voucher_masters`
--

INSERT INTO `voucher_masters` (`id`, `_code`, `_date`, `_time`, `_user_id`, `_user_name`, `_note`, `_voucher_type`, `_transection_type`, `_transection_ref`, `_form_name`, `_amount`, `_branch_id`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 'AC-1', '2022-05-25', '05:13:27', 1, 'admin', 'Opening Balance', 'JV', NULL, 'Opening Balance', 'voucher_masters', 18691791.0000, 1, 1, '1-admin', '1-admin', '2022-05-25 03:57:15', '2022-05-28 23:13:27'),
(2, 'AC-2', '2022-05-26', '05:36:27', 1, 'admin', 'Tota pay cash to Sandu from his shop', 'CR', NULL, NULL, 'voucher_masters', 5000.0000, 1, 1, '1-admin', '1-admin', '2022-05-26 12:01:22', '2022-05-28 05:36:27'),
(3, 'AC-3', '2022-05-26', '05:35:49', 1, 'admin', 'Shahjahan pay cash to Sandu from his shop', 'CR', NULL, NULL, 'voucher_masters', 5500.0000, 1, 1, '1-admin', '1-admin', '2022-05-26 12:05:14', '2022-05-28 05:35:49'),
(4, 'AC-4', '2022-05-26', '05:35:08', 1, 'admin', 'Firoz pay cash to Sandu from his shop', 'CR', NULL, NULL, 'voucher_masters', 5500.0000, 1, 1, '1-admin', '1-admin', '2022-05-26 12:08:00', '2022-05-28 05:35:08'),
(5, 'AC-5', '2022-05-26', '05:33:39', 1, 'admin', 'Atikur pay cash to Sandu from his shop', 'CR', NULL, NULL, 'voucher_masters', 16600.0000, 1, 1, '1-admin', '1-admin', '2022-05-26 12:10:20', '2022-05-28 05:33:39'),
(6, 'AC-6', '2022-05-26', '10:18:16', 1, 'admin', 'Parvez pay cash to Mehedi by Agrani Bank', 'CR', NULL, NULL, 'voucher_masters', 246000.0000, 1, 1, '1-admin', '1-admin', '2022-05-26 12:12:03', '2022-05-27 10:18:16'),
(7, 'AC-7', '2022-05-26', '05:32:27', 1, 'admin', 'Hasan pay cash at office by physically present', 'CR', NULL, NULL, 'voucher_masters', 60000.0000, 1, 1, '1-admin', '1-admin', '2022-05-27 05:38:25', '2022-05-28 05:32:27'),
(8, 'AC-8', '2022-05-26', '05:31:48', 1, 'admin', 'Helal pay cash to Shawn from his shop', 'CR', NULL, NULL, 'voucher_masters', 10000.0000, 1, 1, '1-admin', '1-admin', '2022-05-27 10:13:05', '2022-05-28 05:31:48'),
(9, 'AC-9', '2022-05-26', '05:31:20', 1, 'admin', 'Yousuf pay cash to Shawn from his shop', 'CR', NULL, NULL, 'voucher_masters', 8000.0000, 1, 1, '1-admin', '1-admin', '2022-05-27 10:15:58', '2022-05-28 05:31:20'),
(10, 'AC-10', '2022-05-26', '05:30:36', 1, 'admin', 'Ronju pay cash to Shawn from his shop', 'CR', NULL, NULL, 'voucher_masters', 10500.0000, 1, 1, '1-admin', '1-admin', '2022-05-27 10:17:33', '2022-05-28 05:30:36'),
(11, 'AC-11', '2022-05-26', '16:06:56', 1, 'admin', 'Cash Withdrawal', 'JV', NULL, NULL, 'voucher_masters', 283000.0000, 1, 1, '1-admin', '1-admin', '2022-05-27 10:25:23', '2022-05-27 16:06:56'),
(12, 'AC-12', '2022-05-26', '05:26:27', 1, 'admin', 'Pay cash for receiving labour bill', 'CP', NULL, NULL, 'voucher_masters', 400.0000, 1, 1, '1-admin', '1-admin', '2022-05-27 15:53:39', '2022-05-28 05:26:27'),
(13, 'AC-13', '2022-05-26', '05:27:24', 1, 'admin', 'Pay cash for delivery labour bill', 'CP', NULL, NULL, 'voucher_masters', 65.0000, 1, 1, '1-admin', '1-admin', '2022-05-27 16:10:41', '2022-05-28 05:27:24'),
(14, 'AC-14', '2022-05-26', '05:28:22', 1, 'admin', 'Pay cash to hijra', 'CP', NULL, NULL, 'voucher_masters', 10.0000, 1, 1, '1-admin', '1-admin', '2022-05-27 16:12:24', '2022-05-28 05:28:22'),
(15, 'AC-15', '2022-05-26', '16:14:09', 1, 'admin', 'Pay cash for feed receiving truck fare', 'CP', NULL, NULL, 'voucher_masters', 1600.0000, 1, 1, '1-admin', NULL, '2022-05-27 16:14:09', '2022-05-27 16:14:09'),
(16, 'AC-16', '2022-05-26', '16:17:05', 1, 'admin', 'Pay cash to ACI Limited by delivery van (MR-000)', 'CP', NULL, NULL, 'voucher_masters', 10000.0000, 1, 1, '1-admin', NULL, '2022-05-27 16:17:05', '2022-05-27 16:17:05'),
(17, 'AC-17', '2022-05-26', '16:18:52', 1, 'admin', 'Pay cash for tea & others', 'CP', NULL, NULL, 'voucher_masters', 40.0000, 1, 1, '1-admin', NULL, '2022-05-27 16:18:52', '2022-05-27 16:18:52'),
(18, 'AC-18', '2022-05-26', '16:20:59', 1, 'admin', 'Pay cash for case file fee of Md Rayhan Mia', 'CP', NULL, NULL, 'voucher_masters', 2000.0000, 1, 1, '1-admin', NULL, '2022-05-27 16:20:59', '2022-05-27 16:20:59'),
(19, 'AC-19', '2022-05-26', '16:22:37', 1, 'admin', 'Pay cash for case file fee of Md Noab Ali', 'CP', NULL, NULL, 'voucher_masters', 2000.0000, 1, 1, '1-admin', NULL, '2022-05-27 16:22:37', '2022-05-27 16:22:37'),
(20, 'AC-20', '2022-05-26', '04:59:58', 1, 'admin', 'Cash Deposit', 'JV', NULL, NULL, 'voucher_masters', 536500.0000, 1, 1, '1-admin', '1-admin', '2022-05-27 16:26:35', '2022-05-28 04:59:58'),
(21, 'AC-21', '2022-05-26', '05:03:15', 1, 'admin', 'Cash Deposit', 'JV', NULL, NULL, 'voucher_masters', 100000.0000, 1, 1, '1-admin', '1-admin', '2022-05-27 16:34:40', '2022-05-28 05:03:15'),
(22, 'AC-22', '2022-05-26', '04:59:07', 1, 'admin', 'R.R.P Agro Farms A/C-0651020017905', 'BP', NULL, NULL, 'voucher_masters', 536500.0000, 1, 1, '1-admin', '1-admin', '2022-05-28 04:56:49', '2022-05-28 04:59:07'),
(23, 'AC-23', '2022-05-26', '05:07:24', 1, 'admin', 'Pay loan instalment of April,2022', 'BP', NULL, NULL, 'voucher_masters', 100000.0000, 1, 1, '1-admin', NULL, '2022-05-28 05:07:24', '2022-05-28 05:07:24'),
(24, 'AC-24', '2022-05-27', '10:15:21', 1, 'admin', 'Shahjahan pay to Shawn from his shop', 'CR', NULL, NULL, 'voucher_masters', 7000.0000, 1, 1, '1-admin', NULL, '2022-05-28 10:15:21', '2022-05-28 10:15:21'),
(25, 'AC-25', '2022-05-27', '10:38:36', 1, 'admin', 'Pay to Niamot Ali Jame Mosque\'s fund for May,2022', 'CP', NULL, NULL, 'voucher_masters', 5000.0000, 1, 1, '1-admin', NULL, '2022-05-28 10:38:36', '2022-05-28 10:38:36'),
(26, 'AC-26', '2022-05-27', '11:57:33', 1, 'admin', 'Ronju pay to Shawn from his shop', 'CR', NULL, NULL, 'voucher_masters', 5400.0000, 1, 1, '1-admin', '1-admin', '2022-05-28 10:40:07', '2022-05-28 11:57:33'),
(27, 'AC-27', '2022-05-27', '10:43:16', 1, 'admin', 'Helal pay to Shawn from his shop', 'CR', NULL, NULL, 'voucher_masters', 8000.0000, 1, 1, '1-admin', NULL, '2022-05-28 10:43:16', '2022-05-28 10:43:16'),
(28, 'AC-28', '2022-05-27', '10:44:29', 1, 'admin', 'Yousuf pay to Shawn from his shop', 'CR', NULL, NULL, 'voucher_masters', 5000.0000, 1, 1, '1-admin', NULL, '2022-05-28 10:44:29', '2022-05-28 10:44:29'),
(29, 'AC-29', '2022-05-28', '16:07:58', 1, 'admin', 'Shahjahan pay to Shawn from his shop', 'CR', NULL, NULL, 'voucher_masters', 8000.0000, 1, 1, '1-admin', NULL, '2022-05-28 16:07:58', '2022-05-28 16:07:58'),
(30, 'AC-30', '2022-05-28', '16:19:35', 1, 'admin', 'Pay to Elanco Bangladesh Limited by delivery van', 'CP', NULL, NULL, 'voucher_masters', 12000.0000, 1, 1, '1-admin', NULL, '2022-05-28 16:19:35', '2022-05-28 16:19:35'),
(31, 'AC-31', '2022-05-28', '16:30:50', 1, 'admin', 'Pay to Nahid Hasan Sajal from office', 'CP', NULL, NULL, 'voucher_masters', 15000.0000, 1, 1, '1-admin', NULL, '2022-05-28 16:30:50', '2022-05-28 16:30:50'),
(32, 'AC-32', '2022-05-28', '16:39:40', 1, 'admin', 'Pay delivery labour bill', 'CP', NULL, NULL, 'voucher_masters', 140.0000, 1, 1, '1-admin', NULL, '2022-05-28 16:39:40', '2022-05-28 16:39:40'),
(33, 'AC-33', '2022-05-28', '16:43:28', 1, 'admin', 'Pay tea & others bill', 'CP', NULL, NULL, 'voucher_masters', 70.0000, 1, 1, '1-admin', NULL, '2022-05-28 16:43:28', '2022-05-28 16:43:28');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_master_details`
--

CREATE TABLE `voucher_master_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_no` bigint(20) UNSIGNED NOT NULL,
  `_account_type_id` int(11) DEFAULT NULL,
  `_account_group_id` int(11) DEFAULT NULL,
  `_ledger_id` bigint(20) UNSIGNED NOT NULL,
  `_dr_amount` double(15,4) DEFAULT 0.0000,
  `_cr_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_short_narr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_cost_center` int(11) DEFAULT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `voucher_master_details`
--

INSERT INTO `voucher_master_details` (`id`, `_no`, `_account_type_id`, `_account_group_id`, `_ledger_id`, `_dr_amount`, `_cr_amount`, `_type`, `_short_narr`, `_branch_id`, `_cost_center`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 13, 1, 293, 14370.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(2, 1, 13, 1, 292, 84960.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(3, 1, 13, 1, 291, 131940.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(4, 1, 13, 1, 290, 0.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-26 11:45:46'),
(5, 1, 13, 1, 289, 8700.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(6, 1, 13, 1, 288, 181700.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(7, 1, 13, 1, 287, 42550.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(8, 1, 4, 41, 401, 19950.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(9, 1, 6, 65, 402, 0.0000, 19950.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(10, 1, 13, 1, 286, 129050.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(11, 1, 13, 1, 285, 295475.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(12, 1, 13, 1, 282, 0.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-26 11:45:46'),
(13, 1, 13, 1, 280, 4680.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(14, 1, 13, 1, 277, 97695.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(15, 1, 13, 1, 275, 30550.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(16, 1, 13, 1, 274, 29075.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(17, 1, 2, 2, 403, 80000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(18, 1, 4, 41, 404, 105350.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(19, 1, 4, 42, 405, 200000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(20, 1, 13, 1, 270, 53690.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(21, 1, 13, 1, 266, 278060.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(22, 1, 13, 1, 265, 3140.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(23, 1, 13, 1, 260, 6200.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(24, 1, 13, 1, 257, 130660.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(25, 1, 13, 1, 256, 10130.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(26, 1, 13, 1, 255, 113570.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(27, 1, 13, 1, 254, 7920.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(28, 1, 13, 1, 252, 30820.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(29, 1, 13, 1, 251, 0.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-26 11:45:46'),
(30, 1, 13, 1, 250, 47370.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-28 09:55:22'),
(31, 1, 13, 1, 248, 10200.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(32, 1, 13, 1, 245, 76500.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(33, 1, 13, 1, 244, 2000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(34, 1, 13, 1, 243, 162770.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(35, 1, 13, 1, 241, 0.0000, 22360.5000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(36, 1, 13, 1, 240, 1440550.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(37, 1, 1, 15, 406, 10000.9500, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(38, 1, 1, 15, 407, 0.0000, 4189446.4700, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-26 11:45:46'),
(39, 1, 13, 1, 237, 700.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(40, 1, 13, 1, 236, 144980.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(41, 1, 13, 1, 235, 11875.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(42, 1, 13, 1, 234, 16295.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(43, 1, 13, 1, 233, 102145.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(44, 1, 13, 1, 232, 211948.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(45, 1, 13, 1, 230, 412000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(46, 1, 13, 1, 229, 37100.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-26 11:45:46'),
(47, 1, 13, 1, 228, 8400.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(48, 1, 13, 1, 227, 9485.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(49, 1, 13, 1, 226, 1900.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(50, 1, 13, 1, 225, 11500.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(51, 1, 13, 1, 224, 0.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-26 11:45:46'),
(52, 1, 13, 1, 223, 15400.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(53, 1, 13, 1, 222, 56850.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(54, 1, 13, 1, 221, 5000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(55, 1, 13, 1, 220, 83800.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(56, 1, 13, 1, 219, 161535.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(57, 1, 13, 1, 218, 47795.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(58, 1, 13, 1, 217, 97140.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(59, 1, 13, 1, 216, 177697.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(60, 1, 13, 1, 215, 192685.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(61, 1, 13, 1, 214, 71235.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(62, 1, 13, 1, 213, 3495.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(63, 1, 13, 1, 212, 9900.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(64, 1, 13, 1, 211, 1000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(65, 1, 13, 1, 210, 205850.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(66, 1, 13, 1, 209, 10540.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(67, 1, 13, 1, 207, 3800.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(68, 1, 13, 1, 205, 66035.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(69, 1, 13, 1, 204, 5875.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(70, 1, 13, 1, 203, 1800.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(71, 1, 13, 1, 202, 128500.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(72, 1, 13, 1, 201, 556445.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(73, 1, 13, 1, 199, 87000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(74, 1, 13, 1, 198, 35060.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(75, 1, 13, 1, 197, 19000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(76, 1, 13, 1, 196, 40350.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(77, 1, 13, 1, 195, 3200.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(78, 1, 13, 1, 194, 13295.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(79, 1, 13, 1, 193, 4300.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(80, 1, 13, 1, 192, 1010850.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(81, 1, 13, 1, 191, 163135.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(82, 1, 13, 1, 190, 102390.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(83, 1, 13, 1, 189, 44600.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(84, 1, 13, 1, 188, 36500.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(85, 1, 13, 1, 187, 1500.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(86, 1, 13, 1, 186, 43800.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(87, 1, 13, 1, 185, 3250.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(88, 1, 13, 1, 184, 764185.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 03:57:15'),
(89, 1, 13, 1, 183, 72000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 03:57:15', '2022-05-25 04:03:32'),
(90, 1, 13, 1, 182, 16100.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:03:32', '2022-05-28 06:00:01'),
(91, 1, 13, 1, 181, 34600.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:03:32', '2022-05-28 09:55:23'),
(92, 1, 7, 73, 49, 0.0000, 7039266.7140, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:03:32', '2022-05-28 06:00:01'),
(93, 1, 13, 1, 177, 25300.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(94, 1, 13, 1, 176, 248780.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(95, 1, 13, 1, 174, 0.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-26 11:45:46'),
(96, 1, 13, 1, 172, 359100.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(97, 1, 13, 1, 171, 111730.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(98, 1, 13, 1, 169, 26200.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-26 11:45:46'),
(99, 1, 13, 1, 168, 630400.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(100, 1, 13, 1, 167, 79800.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-26 11:45:46'),
(101, 1, 13, 1, 166, 386600.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-26 11:45:46'),
(102, 1, 13, 1, 165, 260100.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(103, 1, 13, 1, 164, 327343.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(104, 1, 13, 1, 163, 6815.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(105, 1, 13, 1, 161, 20660.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(106, 1, 13, 1, 160, 37565.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(107, 1, 13, 1, 159, 18395.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(108, 1, 13, 1, 158, 75640.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(109, 1, 13, 1, 157, 8705.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(110, 1, 13, 1, 155, 173595.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(111, 1, 13, 1, 154, 203455.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(112, 1, 13, 1, 153, 556945.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(113, 1, 13, 1, 152, 481150.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(114, 1, 13, 1, 151, 94270.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(115, 1, 13, 1, 150, 69450.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(116, 1, 13, 1, 148, 9365.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(117, 1, 13, 1, 146, 107355.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(118, 1, 13, 1, 144, 0.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-26 11:45:46'),
(119, 1, 13, 1, 142, 45240.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(120, 1, 13, 1, 141, 152995.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(121, 1, 13, 1, 140, 11935.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(122, 1, 13, 1, 139, 22475.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(123, 1, 13, 1, 138, 4575.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(124, 1, 13, 1, 137, 238530.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(125, 1, 13, 1, 136, 18080.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(126, 1, 13, 1, 135, 54275.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(127, 1, 13, 1, 134, 79660.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(128, 1, 13, 1, 133, 40110.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(129, 1, 13, 1, 132, 407996.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(130, 1, 13, 1, 131, 260410.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(131, 1, 13, 1, 130, 71350.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(132, 1, 13, 1, 129, 468500.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(133, 1, 13, 1, 128, 482072.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(134, 1, 13, 1, 125, 134755.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(135, 1, 13, 1, 124, 853650.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(136, 1, 13, 1, 123, 375710.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-25 04:18:00'),
(137, 1, 13, 1, 121, 0.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-26 11:45:47'),
(138, 1, 1, 16, 1, 13303.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:18:00', '2022-05-26 11:45:47'),
(139, 1, 12, 43, 64, 1603.5610, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:30:36', '2022-05-26 11:45:47'),
(140, 1, 12, 43, 65, 0.0000, 4990182.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:30:36', '2022-05-25 04:30:36'),
(141, 1, 12, 43, 67, 564.7500, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:30:36', '2022-05-25 04:30:36'),
(142, 1, 12, 43, 70, 2820.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:30:36', '2022-05-25 04:30:36'),
(143, 1, 12, 43, 71, 0.0000, 1065924.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:30:36', '2022-05-25 04:30:36'),
(144, 1, 12, 43, 73, 0.0000, 59227.1890, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:30:36', '2022-05-26 11:45:47'),
(145, 1, 12, 43, 74, 0.0000, 60704.1180, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:30:36', '2022-05-26 11:45:47'),
(146, 1, 12, 43, 75, 0.0000, 3870.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:30:36', '2022-05-25 04:30:36'),
(147, 1, 5, 56, 380, 1074000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:30:36', '2022-05-25 04:30:36'),
(148, 1, 12, 43, 84, 0.0000, 100000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:30:36', '2022-05-25 04:30:36'),
(149, 1, 12, 43, 86, 26400.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:30:36', '2022-05-25 04:30:36'),
(150, 1, 12, 43, 87, 30.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:30:36', '2022-05-25 04:30:36'),
(151, 1, 12, 43, 94, 0.0000, 200000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:30:36', '2022-05-25 04:30:36'),
(152, 1, 12, 43, 95, 0.0000, 150000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:30:36', '2022-05-25 04:30:36'),
(153, 1, 5, 53, 408, 0.0000, 730960.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:30:36', '2022-05-25 04:30:36'),
(154, 1, 12, 43, 103, 0.0000, 27400.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 04:30:36', '2022-05-25 04:30:36'),
(155, 1, 2, 6, 7, 326587.7300, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-25 05:31:16', '2022-05-26 11:45:47'),
(156, 1, 12, 43, 97, 0.0000, 32500.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-05-26 11:54:31', '2022-05-26 11:54:31'),
(157, 2, 1, 16, 1, 5000.0000, 0.0000, NULL, 'Cash Received', 1, 1, 1, '1-admin', NULL, '2022-05-26 12:01:22', '2022-05-28 05:36:27'),
(158, 2, 13, 1, 171, 0.0000, 5000.0000, NULL, 'Cash Deposit', 1, 1, 1, '1-admin', NULL, '2022-05-26 12:01:22', '2022-05-28 05:36:27'),
(159, 3, 1, 16, 1, 5500.0000, 0.0000, NULL, 'Cash Received', 1, 1, 1, '1-admin', NULL, '2022-05-26 12:05:14', '2022-05-28 05:35:49'),
(160, 3, 13, 1, 168, 0.0000, 5500.0000, NULL, 'Cash Deposit', 1, 1, 1, '1-admin', NULL, '2022-05-26 12:05:14', '2022-05-28 05:35:49'),
(161, 4, 1, 16, 1, 5500.0000, 0.0000, NULL, 'Cash Received', 1, 1, 1, '1-admin', NULL, '2022-05-26 12:08:00', '2022-05-28 05:35:08'),
(162, 4, 13, 1, 245, 0.0000, 5500.0000, NULL, 'Cash Deposit', 1, 1, 1, '1-admin', NULL, '2022-05-26 12:08:00', '2022-05-28 05:35:08'),
(163, 5, 1, 16, 1, 16600.0000, 0.0000, NULL, 'Cash Received', 1, 1, 1, '1-admin', NULL, '2022-05-26 12:10:20', '2022-05-28 05:33:39'),
(164, 5, 13, 1, 181, 0.0000, 16600.0000, NULL, 'Cash Deposit', 1, 1, 1, '1-admin', NULL, '2022-05-26 12:10:20', '2022-05-28 05:33:39'),
(165, 6, 1, 16, 1, 246000.0000, 0.0000, NULL, 'Agrani Bank', 1, 1, 1, '1-admin', NULL, '2022-05-26 12:12:03', '2022-05-26 12:12:03'),
(166, 6, 13, 1, 240, 0.0000, 246000.0000, NULL, 'Agrani Bank', 1, 1, 1, '1-admin', NULL, '2022-05-26 12:12:03', '2022-05-27 10:18:16'),
(167, 7, 1, 16, 1, 60000.0000, 0.0000, NULL, 'Cash Received', 1, 1, 1, '1-admin', NULL, '2022-05-27 05:38:25', '2022-05-28 05:32:27'),
(168, 7, 13, 1, 243, 0.0000, 60000.0000, NULL, 'Cash Deposit', 1, 1, 1, '1-admin', NULL, '2022-05-27 05:38:25', '2022-05-28 05:32:27'),
(169, 8, 1, 16, 1, 10000.0000, 0.0000, NULL, 'Cash Received', 1, 1, 1, '1-admin', NULL, '2022-05-27 10:13:05', '2022-05-28 05:31:48'),
(170, 8, 13, 1, 182, 0.0000, 10000.0000, NULL, 'Cash Deposit', 1, 1, 1, '1-admin', NULL, '2022-05-27 10:13:05', '2022-05-28 05:31:48'),
(171, 9, 1, 16, 1, 8000.0000, 0.0000, NULL, 'Cash Received', 1, 1, 1, '1-admin', NULL, '2022-05-27 10:15:58', '2022-05-28 05:31:13'),
(172, 9, 13, 1, 166, 0.0000, 8000.0000, NULL, 'Cash Deposit', 1, 1, 1, '1-admin', NULL, '2022-05-27 10:15:58', '2022-05-28 05:31:13'),
(173, 10, 1, 16, 1, 10500.0000, 0.0000, NULL, 'Cash Received', 1, 1, 1, '1-admin', NULL, '2022-05-27 10:17:33', '2022-05-28 05:30:36'),
(174, 10, 13, 1, 167, 0.0000, 10500.0000, NULL, 'Cash Deposit', 1, 1, 1, '1-admin', NULL, '2022-05-27 10:17:33', '2022-05-28 05:30:36'),
(175, 11, 1, 16, 1, 283000.0000, 0.0000, NULL, 'IFIC Bank', 1, 1, 1, '1-admin', NULL, '2022-05-27 10:25:23', '2022-05-27 16:06:56'),
(176, 11, 1, 15, 407, 0.0000, 283000.0000, NULL, 'Ashraful Islam', 1, 1, 1, '1-admin', NULL, '2022-05-27 10:25:23', '2022-05-27 16:06:56'),
(177, 12, 9, 99, 410, 400.0000, 0.0000, NULL, 'Cash Payment', 1, 1, 1, '1-admin', NULL, '2022-05-27 15:53:39', '2022-05-28 05:26:27'),
(178, 12, 1, 16, 1, 0.0000, 400.0000, NULL, 'Cash Payment', 1, 1, 1, '1-admin', NULL, '2022-05-27 15:53:39', '2022-05-28 05:26:27'),
(179, 13, 9, 99, 410, 65.0000, 0.0000, NULL, 'Delivery', 1, 1, 1, '1-admin', NULL, '2022-05-27 16:10:41', '2022-05-27 16:10:41'),
(180, 13, 1, 16, 1, 0.0000, 65.0000, NULL, 'Cash Payment', 1, 1, 1, '1-admin', NULL, '2022-05-27 16:10:41', '2022-05-28 05:27:24'),
(181, 14, 10, 123, 26, 10.0000, 0.0000, NULL, 'Cash Payment', 1, 1, 1, '1-admin', NULL, '2022-05-27 16:12:24', '2022-05-28 05:28:22'),
(182, 14, 1, 16, 1, 0.0000, 10.0000, NULL, 'Cash Payment', 1, 1, 1, '1-admin', NULL, '2022-05-27 16:12:24', '2022-05-28 05:28:22'),
(183, 15, 15, 138, 388, 1600.0000, 0.0000, NULL, 'Cash', 1, 1, 1, '1-admin', NULL, '2022-05-27 16:14:09', '2022-05-27 16:14:09'),
(184, 15, 1, 16, 1, 0.0000, 1600.0000, NULL, 'Truck Fare', 1, 1, 1, '1-admin', NULL, '2022-05-27 16:14:09', '2022-05-27 16:14:09'),
(185, 16, 12, 43, 73, 10000.0000, 0.0000, NULL, 'Cash', 1, 1, 1, '1-admin', NULL, '2022-05-27 16:17:05', '2022-05-27 16:17:05'),
(186, 16, 1, 16, 1, 0.0000, 10000.0000, NULL, 'ACI Limited', 1, 1, 1, '1-admin', NULL, '2022-05-27 16:17:05', '2022-05-27 16:17:05'),
(187, 17, 10, 122, 15, 40.0000, 0.0000, NULL, 'Cash', 1, 1, 1, '1-admin', NULL, '2022-05-27 16:18:52', '2022-05-27 16:18:52'),
(188, 17, 1, 16, 1, 0.0000, 40.0000, NULL, 'Office Expense', 1, 1, 1, '1-admin', NULL, '2022-05-27 16:18:52', '2022-05-27 16:18:52'),
(189, 18, 10, 118, 35, 2000.0000, 0.0000, NULL, 'Cash', 1, 1, 1, '1-admin', NULL, '2022-05-27 16:20:59', '2022-05-27 16:20:59'),
(190, 18, 1, 16, 1, 0.0000, 2000.0000, NULL, 'Case File Fee', 1, 1, 1, '1-admin', NULL, '2022-05-27 16:20:59', '2022-05-27 16:20:59'),
(191, 19, 10, 118, 35, 2000.0000, 0.0000, NULL, 'Cash', 1, 1, 1, '1-admin', NULL, '2022-05-27 16:22:37', '2022-05-27 16:22:37'),
(192, 19, 1, 16, 1, 0.0000, 2000.0000, NULL, 'Case File Fee', 1, 1, 1, '1-admin', NULL, '2022-05-27 16:22:37', '2022-05-27 16:22:37'),
(193, 20, 1, 15, 406, 536500.0000, 0.0000, NULL, 'Ashraful Islam', 1, 1, 1, '1-admin', NULL, '2022-05-27 16:26:35', '2022-05-28 04:59:58'),
(194, 20, 1, 16, 1, 0.0000, 536500.0000, NULL, 'Al-Arafah Bank', 1, 1, 1, '1-admin', NULL, '2022-05-27 16:26:35', '2022-05-27 16:26:35'),
(195, 21, 1, 15, 411, 100000.0000, 0.0000, NULL, 'Shawn', 1, 1, 1, '1-admin', NULL, '2022-05-27 16:34:40', '2022-05-28 05:03:15'),
(196, 21, 1, 16, 1, 0.0000, 100000.0000, NULL, 'Brac Bank', 1, 1, 1, '1-admin', NULL, '2022-05-27 16:34:40', '2022-05-27 16:34:40'),
(197, 22, 12, 43, 65, 536500.0000, 0.0000, NULL, 'Cheque No: 9007967', 1, 1, 1, '1-admin', NULL, '2022-05-28 04:56:49', '2022-05-28 04:56:49'),
(198, 22, 1, 15, 406, 0.0000, 536500.0000, NULL, 'Cheque No: 9007967', 1, 1, 1, '1-admin', NULL, '2022-05-28 04:56:49', '2022-05-28 04:59:07'),
(199, 23, 5, 53, 408, 100000.0000, 0.0000, NULL, 'Debit Instruction', 1, 1, 1, '1-admin', NULL, '2022-05-28 05:07:24', '2022-05-28 05:07:24'),
(200, 23, 1, 15, 411, 0.0000, 100000.0000, NULL, 'Debit Instruction', 1, 1, 1, '1-admin', NULL, '2022-05-28 05:07:24', '2022-05-28 05:07:24'),
(201, 24, 1, 16, 1, 7000.0000, 0.0000, NULL, 'Cash Received', 1, 1, 1, '1-admin', NULL, '2022-05-28 10:15:21', '2022-05-28 10:15:21'),
(202, 24, 13, 1, 168, 0.0000, 7000.0000, NULL, 'Cash Deposit', 1, 1, 1, '1-admin', NULL, '2022-05-28 10:15:21', '2022-05-28 10:15:21'),
(203, 25, 15, 138, 387, 5000.0000, 0.0000, NULL, 'Cash Deposit', 1, 1, 1, '1-admin', NULL, '2022-05-28 10:38:36', '2022-05-28 10:38:36'),
(204, 25, 1, 16, 1, 0.0000, 5000.0000, NULL, 'Cash Payment', 1, 1, 1, '1-admin', NULL, '2022-05-28 10:38:36', '2022-05-28 10:38:36'),
(205, 26, 1, 16, 1, 5400.0000, 0.0000, NULL, 'Cash Received', 1, 1, 1, '1-admin', NULL, '2022-05-28 10:40:07', '2022-05-28 10:40:07'),
(206, 26, 13, 1, 167, 0.0000, 5400.0000, NULL, 'Cash Deposit', 1, 1, 1, '1-admin', NULL, '2022-05-28 10:40:07', '2022-05-28 10:40:07'),
(207, 27, 1, 16, 1, 8000.0000, 0.0000, NULL, 'Cash Received', 1, 1, 1, '1-admin', NULL, '2022-05-28 10:43:16', '2022-05-28 10:43:16'),
(208, 27, 13, 1, 182, 0.0000, 8000.0000, NULL, 'Cash Deposit', 1, 1, 1, '1-admin', NULL, '2022-05-28 10:43:16', '2022-05-28 10:43:16'),
(209, 28, 1, 16, 1, 5000.0000, 0.0000, NULL, 'Cash Received', 1, 1, 1, '1-admin', NULL, '2022-05-28 10:44:29', '2022-05-28 10:44:29'),
(210, 28, 13, 1, 166, 0.0000, 5000.0000, NULL, 'Cash Deposit', 1, 1, 1, '1-admin', NULL, '2022-05-28 10:44:29', '2022-05-28 10:44:29'),
(211, 29, 1, 16, 1, 8000.0000, 0.0000, NULL, 'Cash Received', 1, 1, 1, '1-admin', NULL, '2022-05-28 16:07:58', '2022-05-28 16:07:58'),
(212, 29, 13, 1, 168, 0.0000, 8000.0000, NULL, 'Cash Deposit', 1, 1, 1, '1-admin', NULL, '2022-05-28 16:07:58', '2022-05-28 16:07:58'),
(213, 30, 12, 43, 74, 12000.0000, 0.0000, NULL, 'MR-87941', 1, 1, 1, '1-admin', NULL, '2022-05-28 16:19:35', '2022-05-28 16:19:35'),
(214, 30, 1, 16, 1, 0.0000, 12000.0000, NULL, 'Cash Payment', 1, 1, 1, '1-admin', NULL, '2022-05-28 16:19:35', '2022-05-28 16:19:35'),
(215, 31, 13, 1, 234, 15000.0000, 0.0000, NULL, 'Cash Received', 1, 1, 1, '1-admin', NULL, '2022-05-28 16:30:50', '2022-05-28 16:30:50'),
(216, 31, 1, 16, 1, 0.0000, 15000.0000, NULL, 'Cash Payment', 1, 1, 1, '1-admin', NULL, '2022-05-28 16:30:50', '2022-05-28 16:30:50'),
(217, 32, 9, 102, 412, 140.0000, 0.0000, NULL, 'Cash Received', 1, 1, 1, '1-admin', NULL, '2022-05-28 16:39:40', '2022-05-28 16:39:40'),
(218, 32, 1, 16, 1, 0.0000, 140.0000, NULL, 'Cash Payment', 1, 1, 1, '1-admin', NULL, '2022-05-28 16:39:40', '2022-05-28 16:39:40'),
(219, 33, 10, 122, 15, 70.0000, 0.0000, NULL, 'Cash Received', 1, 1, 1, '1-admin', NULL, '2022-05-28 16:43:28', '2022-05-28 16:43:28'),
(220, 33, 1, 16, 1, 0.0000, 70.0000, NULL, 'Cash Payment', 1, 1, 1, '1-admin', NULL, '2022-05-28 16:43:28', '2022-05-28 16:43:28');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_types`
--

CREATE TABLE `voucher_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `voucher_types`
--

INSERT INTO `voucher_types` (`id`, `_name`, `_code`, `created_at`, `updated_at`) VALUES
(1, 'Journal Voucher', 'JV', NULL, NULL),
(2, 'Cash Payment', 'CP', NULL, NULL),
(3, 'Bank Receive', 'BR', NULL, NULL),
(4, 'Bank Payment', 'BP', NULL, NULL),
(5, 'Contra Voucher', 'CV', NULL, NULL),
(6, 'Cash Receive', 'CR', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_details`
--
ALTER TABLE `account_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(191)),
  ADD KEY `ad_name` (`ad_name`);

--
-- Indexes for table `account_groups`
--
ALTER TABLE `account_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_groups__account_head_id_foreign` (`_account_head_id`);

--
-- Indexes for table `account_heads`
--
ALTER TABLE `account_heads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_ledgers`
--
ALTER TABLE `account_ledgers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_ledgers__account_group_id_foreign` (`_account_group_id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cost_centers`
--
ALTER TABLE `cost_centers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_ledgers`
--
ALTER TABLE `default_ledgers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventories__category_id_foreign` (`_category_id`);

--
-- Indexes for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_inventories`
--
ALTER TABLE `item_inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_inventories__item_id_foreign` (`_item_id`),
  ADD KEY `item_inventories__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `main_account_head`
--
ALTER TABLE `main_account_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `page_rows`
--
ALTER TABLE `page_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_price_lists`
--
ALTER TABLE `product_price_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_price_lists__item_id_foreign` (`_item_id`),
  ADD KEY `product_price_lists__purchase_detail_id_foreign` (`_purchase_detail_id`),
  ADD KEY `product_price_lists__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `proforma_sales`
--
ALTER TABLE `proforma_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proforma_sales__ledger_id_foreign` (`_ledger_id`),
  ADD KEY `proforma_sales__user_id_foreign` (`_user_id`),
  ADD KEY `proforma_sales__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `proforma_sales_details`
--
ALTER TABLE `proforma_sales_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proforma_sales_details__item_id_foreign` (`_item_id`),
  ADD KEY `proforma_sales_details__p_p_l_id_foreign` (`_p_p_l_id`),
  ADD KEY `proforma_sales_details__no_foreign` (`_no`),
  ADD KEY `proforma_sales_details__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases__ledger_id_foreign` (`_ledger_id`),
  ADD KEY `purchases__user_id_foreign` (`_user_id`),
  ADD KEY `purchases__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `purchase_accounts`
--
ALTER TABLE `purchase_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_accounts__no_foreign` (`_no`),
  ADD KEY `purchase_accounts__account_type_id_foreign` (`_account_type_id`),
  ADD KEY `purchase_accounts__account_group_id_foreign` (`_account_group_id`),
  ADD KEY `purchase_accounts__ledger_id_foreign` (`_ledger_id`),
  ADD KEY `purchase_accounts__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_details__item_id_foreign` (`_item_id`),
  ADD KEY `purchase_details__no_foreign` (`_no`),
  ADD KEY `purchase_details__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `purchase_form_settings`
--
ALTER TABLE `purchase_form_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_orders__ledger_id_foreign` (`_ledger_id`),
  ADD KEY `purchase_orders__user_id_foreign` (`_user_id`),
  ADD KEY `purchase_orders__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `purchase_order_details`
--
ALTER TABLE `purchase_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_order_details__item_id_foreign` (`_item_id`),
  ADD KEY `purchase_order_details__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_returns__ledger_id_foreign` (`_ledger_id`),
  ADD KEY `purchase_returns__user_id_foreign` (`_user_id`),
  ADD KEY `purchase_returns__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `purchase_return_accounts`
--
ALTER TABLE `purchase_return_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_return_accounts__no_foreign` (`_no`),
  ADD KEY `purchase_return_accounts__account_type_id_foreign` (`_account_type_id`),
  ADD KEY `purchase_return_accounts__account_group_id_foreign` (`_account_group_id`),
  ADD KEY `purchase_return_accounts__ledger_id_foreign` (`_ledger_id`),
  ADD KEY `purchase_return_accounts__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_return_details__item_id_foreign` (`_item_id`),
  ADD KEY `purchase_return_details__no_foreign` (`_no`),
  ADD KEY `purchase_return_details__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `purchase_return_form_settings`
--
ALTER TABLE `purchase_return_form_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales__ledger_id_foreign` (`_ledger_id`),
  ADD KEY `sales__user_id_foreign` (`_user_id`),
  ADD KEY `sales__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `sales_accounts`
--
ALTER TABLE `sales_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_accounts__no_foreign` (`_no`),
  ADD KEY `sales_accounts__account_type_id_foreign` (`_account_type_id`),
  ADD KEY `sales_accounts__account_group_id_foreign` (`_account_group_id`),
  ADD KEY `sales_accounts__ledger_id_foreign` (`_ledger_id`),
  ADD KEY `sales_accounts__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_details__item_id_foreign` (`_item_id`),
  ADD KEY `sales_details__p_p_l_id_foreign` (`_p_p_l_id`),
  ADD KEY `sales_details__no_foreign` (`_no`),
  ADD KEY `sales_details__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `sales_form_settings`
--
ALTER TABLE `sales_form_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_orders`
--
ALTER TABLE `sales_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_orders__ledger_id_foreign` (`_ledger_id`),
  ADD KEY `sales_orders__user_id_foreign` (`_user_id`),
  ADD KEY `sales_orders__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `sales_order_details`
--
ALTER TABLE `sales_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_order_details__item_id_foreign` (`_item_id`),
  ADD KEY `sales_order_details__no_foreign` (`_no`),
  ADD KEY `sales_order_details__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `sales_returns`
--
ALTER TABLE `sales_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_returns__ledger_id_foreign` (`_ledger_id`),
  ADD KEY `sales_returns__user_id_foreign` (`_user_id`),
  ADD KEY `sales_returns__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `sales_return_accounts`
--
ALTER TABLE `sales_return_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_return_accounts__no_foreign` (`_no`),
  ADD KEY `sales_return_accounts__account_type_id_foreign` (`_account_type_id`),
  ADD KEY `sales_return_accounts__account_group_id_foreign` (`_account_group_id`),
  ADD KEY `sales_return_accounts__ledger_id_foreign` (`_ledger_id`),
  ADD KEY `sales_return_accounts__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `sales_return_details`
--
ALTER TABLE `sales_return_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_return_details__item_id_foreign` (`_item_id`),
  ADD KEY `sales_return_details__p_p_l_id_foreign` (`_p_p_l_id`),
  ADD KEY `sales_return_details__no_foreign` (`_no`),
  ADD KEY `sales_return_details__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `sales_return_form_settings`
--
ALTER TABLE `sales_return_form_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_houses`
--
ALTER TABLE `store_houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_house_selves`
--
ALTER TABLE `store_house_selves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `voucher_masters`
--
ALTER TABLE `voucher_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voucher_masters__user_id_foreign` (`_user_id`),
  ADD KEY `voucher_masters__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `voucher_master_details`
--
ALTER TABLE `voucher_master_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voucher_master_details__no_foreign` (`_no`),
  ADD KEY `voucher_master_details__ledger_id_foreign` (`_ledger_id`),
  ADD KEY `voucher_master_details__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `voucher_types`
--
ALTER TABLE `voucher_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `account_details`
--
ALTER TABLE `account_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT for table `account_groups`
--
ALTER TABLE `account_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `account_heads`
--
ALTER TABLE `account_heads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `account_ledgers`
--
ALTER TABLE `account_ledgers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cost_centers`
--
ALTER TABLE `cost_centers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `default_ledgers`
--
ALTER TABLE `default_ledgers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `item_inventories`
--
ALTER TABLE `item_inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `main_account_head`
--
ALTER TABLE `main_account_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `page_rows`
--
ALTER TABLE `page_rows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `product_price_lists`
--
ALTER TABLE `product_price_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `proforma_sales`
--
ALTER TABLE `proforma_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proforma_sales_details`
--
ALTER TABLE `proforma_sales_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `purchase_accounts`
--
ALTER TABLE `purchase_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `purchase_form_settings`
--
ALTER TABLE `purchase_form_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `purchase_order_details`
--
ALTER TABLE `purchase_order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_return_accounts`
--
ALTER TABLE `purchase_return_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_return_form_settings`
--
ALTER TABLE `purchase_return_form_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sales_accounts`
--
ALTER TABLE `sales_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sales_form_settings`
--
ALTER TABLE `sales_form_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales_orders`
--
ALTER TABLE `sales_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_order_details`
--
ALTER TABLE `sales_order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_returns`
--
ALTER TABLE `sales_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales_return_accounts`
--
ALTER TABLE `sales_return_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_return_details`
--
ALTER TABLE `sales_return_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales_return_form_settings`
--
ALTER TABLE `sales_return_form_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_houses`
--
ALTER TABLE `store_houses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_house_selves`
--
ALTER TABLE `store_house_selves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `voucher_masters`
--
ALTER TABLE `voucher_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `voucher_master_details`
--
ALTER TABLE `voucher_master_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `voucher_types`
--
ALTER TABLE `voucher_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_groups`
--
ALTER TABLE `account_groups`
  ADD CONSTRAINT `account_groups__account_head_id_foreign` FOREIGN KEY (`_account_head_id`) REFERENCES `account_heads` (`id`);

--
-- Constraints for table `account_ledgers`
--
ALTER TABLE `account_ledgers`
  ADD CONSTRAINT `account_ledgers__account_group_id_foreign` FOREIGN KEY (`_account_group_id`) REFERENCES `account_groups` (`id`);

--
-- Constraints for table `inventories`
--
ALTER TABLE `inventories`
  ADD CONSTRAINT `inventories__category_id_foreign` FOREIGN KEY (`_category_id`) REFERENCES `item_categories` (`id`);

--
-- Constraints for table `item_inventories`
--
ALTER TABLE `item_inventories`
  ADD CONSTRAINT `item_inventories__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `item_inventories__item_id_foreign` FOREIGN KEY (`_item_id`) REFERENCES `inventories` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_price_lists`
--
ALTER TABLE `product_price_lists`
  ADD CONSTRAINT `product_price_lists__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `product_price_lists__item_id_foreign` FOREIGN KEY (`_item_id`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `product_price_lists__purchase_detail_id_foreign` FOREIGN KEY (`_purchase_detail_id`) REFERENCES `purchase_details` (`id`);

--
-- Constraints for table `proforma_sales`
--
ALTER TABLE `proforma_sales`
  ADD CONSTRAINT `proforma_sales__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `proforma_sales__ledger_id_foreign` FOREIGN KEY (`_ledger_id`) REFERENCES `account_ledgers` (`id`),
  ADD CONSTRAINT `proforma_sales__user_id_foreign` FOREIGN KEY (`_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `proforma_sales_details`
--
ALTER TABLE `proforma_sales_details`
  ADD CONSTRAINT `proforma_sales_details__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `proforma_sales_details__item_id_foreign` FOREIGN KEY (`_item_id`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `proforma_sales_details__no_foreign` FOREIGN KEY (`_no`) REFERENCES `proforma_sales` (`id`),
  ADD CONSTRAINT `proforma_sales_details__p_p_l_id_foreign` FOREIGN KEY (`_p_p_l_id`) REFERENCES `product_price_lists` (`id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `purchases__ledger_id_foreign` FOREIGN KEY (`_ledger_id`) REFERENCES `account_ledgers` (`id`),
  ADD CONSTRAINT `purchases__user_id_foreign` FOREIGN KEY (`_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `purchase_accounts`
--
ALTER TABLE `purchase_accounts`
  ADD CONSTRAINT `purchase_accounts__account_group_id_foreign` FOREIGN KEY (`_account_group_id`) REFERENCES `account_groups` (`id`),
  ADD CONSTRAINT `purchase_accounts__account_type_id_foreign` FOREIGN KEY (`_account_type_id`) REFERENCES `account_heads` (`id`),
  ADD CONSTRAINT `purchase_accounts__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `purchase_accounts__ledger_id_foreign` FOREIGN KEY (`_ledger_id`) REFERENCES `account_ledgers` (`id`),
  ADD CONSTRAINT `purchase_accounts__no_foreign` FOREIGN KEY (`_no`) REFERENCES `purchases` (`id`);

--
-- Constraints for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD CONSTRAINT `purchase_details__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `purchase_details__item_id_foreign` FOREIGN KEY (`_item_id`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `purchase_details__no_foreign` FOREIGN KEY (`_no`) REFERENCES `purchases` (`id`);

--
-- Constraints for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD CONSTRAINT `purchase_orders__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `purchase_orders__ledger_id_foreign` FOREIGN KEY (`_ledger_id`) REFERENCES `account_ledgers` (`id`),
  ADD CONSTRAINT `purchase_orders__user_id_foreign` FOREIGN KEY (`_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `purchase_order_details`
--
ALTER TABLE `purchase_order_details`
  ADD CONSTRAINT `purchase_order_details__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `purchase_order_details__item_id_foreign` FOREIGN KEY (`_item_id`) REFERENCES `inventories` (`id`);

--
-- Constraints for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD CONSTRAINT `purchase_returns__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `purchase_returns__ledger_id_foreign` FOREIGN KEY (`_ledger_id`) REFERENCES `account_ledgers` (`id`),
  ADD CONSTRAINT `purchase_returns__user_id_foreign` FOREIGN KEY (`_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `purchase_return_accounts`
--
ALTER TABLE `purchase_return_accounts`
  ADD CONSTRAINT `purchase_return_accounts__account_group_id_foreign` FOREIGN KEY (`_account_group_id`) REFERENCES `account_groups` (`id`),
  ADD CONSTRAINT `purchase_return_accounts__account_type_id_foreign` FOREIGN KEY (`_account_type_id`) REFERENCES `account_heads` (`id`),
  ADD CONSTRAINT `purchase_return_accounts__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `purchase_return_accounts__ledger_id_foreign` FOREIGN KEY (`_ledger_id`) REFERENCES `account_ledgers` (`id`),
  ADD CONSTRAINT `purchase_return_accounts__no_foreign` FOREIGN KEY (`_no`) REFERENCES `purchases` (`id`);

--
-- Constraints for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  ADD CONSTRAINT `purchase_return_details__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `purchase_return_details__item_id_foreign` FOREIGN KEY (`_item_id`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `purchase_return_details__no_foreign` FOREIGN KEY (`_no`) REFERENCES `purchase_returns` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `sales__ledger_id_foreign` FOREIGN KEY (`_ledger_id`) REFERENCES `account_ledgers` (`id`),
  ADD CONSTRAINT `sales__user_id_foreign` FOREIGN KEY (`_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sales_accounts`
--
ALTER TABLE `sales_accounts`
  ADD CONSTRAINT `sales_accounts__account_group_id_foreign` FOREIGN KEY (`_account_group_id`) REFERENCES `account_groups` (`id`),
  ADD CONSTRAINT `sales_accounts__account_type_id_foreign` FOREIGN KEY (`_account_type_id`) REFERENCES `account_heads` (`id`),
  ADD CONSTRAINT `sales_accounts__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `sales_accounts__ledger_id_foreign` FOREIGN KEY (`_ledger_id`) REFERENCES `account_ledgers` (`id`),
  ADD CONSTRAINT `sales_accounts__no_foreign` FOREIGN KEY (`_no`) REFERENCES `sales` (`id`);

--
-- Constraints for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD CONSTRAINT `sales_details__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `sales_details__item_id_foreign` FOREIGN KEY (`_item_id`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `sales_details__no_foreign` FOREIGN KEY (`_no`) REFERENCES `sales` (`id`),
  ADD CONSTRAINT `sales_details__p_p_l_id_foreign` FOREIGN KEY (`_p_p_l_id`) REFERENCES `product_price_lists` (`id`);

--
-- Constraints for table `sales_orders`
--
ALTER TABLE `sales_orders`
  ADD CONSTRAINT `sales_orders__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `sales_orders__ledger_id_foreign` FOREIGN KEY (`_ledger_id`) REFERENCES `account_ledgers` (`id`),
  ADD CONSTRAINT `sales_orders__user_id_foreign` FOREIGN KEY (`_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sales_order_details`
--
ALTER TABLE `sales_order_details`
  ADD CONSTRAINT `sales_order_details__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `sales_order_details__item_id_foreign` FOREIGN KEY (`_item_id`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `sales_order_details__no_foreign` FOREIGN KEY (`_no`) REFERENCES `sales_orders` (`id`);

--
-- Constraints for table `sales_returns`
--
ALTER TABLE `sales_returns`
  ADD CONSTRAINT `sales_returns__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `sales_returns__ledger_id_foreign` FOREIGN KEY (`_ledger_id`) REFERENCES `account_ledgers` (`id`),
  ADD CONSTRAINT `sales_returns__user_id_foreign` FOREIGN KEY (`_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sales_return_accounts`
--
ALTER TABLE `sales_return_accounts`
  ADD CONSTRAINT `sales_return_accounts__account_group_id_foreign` FOREIGN KEY (`_account_group_id`) REFERENCES `account_groups` (`id`),
  ADD CONSTRAINT `sales_return_accounts__account_type_id_foreign` FOREIGN KEY (`_account_type_id`) REFERENCES `account_heads` (`id`),
  ADD CONSTRAINT `sales_return_accounts__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `sales_return_accounts__ledger_id_foreign` FOREIGN KEY (`_ledger_id`) REFERENCES `account_ledgers` (`id`),
  ADD CONSTRAINT `sales_return_accounts__no_foreign` FOREIGN KEY (`_no`) REFERENCES `sales_returns` (`id`);

--
-- Constraints for table `sales_return_details`
--
ALTER TABLE `sales_return_details`
  ADD CONSTRAINT `sales_return_details__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `sales_return_details__item_id_foreign` FOREIGN KEY (`_item_id`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `sales_return_details__no_foreign` FOREIGN KEY (`_no`) REFERENCES `sales_returns` (`id`),
  ADD CONSTRAINT `sales_return_details__p_p_l_id_foreign` FOREIGN KEY (`_p_p_l_id`) REFERENCES `product_price_lists` (`id`);

--
-- Constraints for table `voucher_masters`
--
ALTER TABLE `voucher_masters`
  ADD CONSTRAINT `voucher_masters__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `voucher_masters__user_id_foreign` FOREIGN KEY (`_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `voucher_master_details`
--
ALTER TABLE `voucher_master_details`
  ADD CONSTRAINT `voucher_master_details__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `voucher_master_details__ledger_id_foreign` FOREIGN KEY (`_ledger_id`) REFERENCES `account_ledgers` (`id`),
  ADD CONSTRAINT `voucher_master_details__no_foreign` FOREIGN KEY (`_no`) REFERENCES `voucher_masters` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
