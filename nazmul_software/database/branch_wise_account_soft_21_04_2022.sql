-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2022 at 12:00 AM
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
-- Database: `branch_wise_account_soft`
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
(1, 1, 1, 'N/A', 'Business Start with capital Business Start with capital Business Start with capital Business Start with capital Business Start with capital', 'Nazmul (Owner as Capital)', 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 50000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-09 18:34:22', '2022-03-09 19:04:24'),
(2, 1, 2, 'N/A', 'Business Start with capital Business Start with capital Business Start with capital Business Start with capital Business Start with capital', 'Nazmul (Owner as Capital)', 'Account', '2022-03-10', 'voucher_masters', 7, 73, 49, 0.0000, 50000.0000, 1, 1, 'admin', 1, 0, '2022-03-09 18:34:22', '2022-03-09 19:04:24'),
(3, 2, 3, 'N/A', 'Audit Fee paid in Cash.', NULL, 'Account', '2022-03-10', 'voucher_masters', 10, 118, 22, 5000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:09:46', '2022-03-10 15:09:46'),
(4, 2, 4, 'N/A', 'Audit Fee paid in Cash.', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 5000.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:09:46', '2022-03-10 15:09:46'),
(5, 3, 5, 'N/A', 'Bank Charge Paid From Bank', NULL, 'Account', '2022-03-10', 'voucher_masters', 10, 108, 36, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:11:52', '2022-03-10 15:11:52'),
(6, 3, 6, 'N/A', 'Bank Charge Paid From Bank', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 15, 41, 0.0000, 1000.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:11:52', '2022-03-10 15:11:52'),
(7, 4, 7, 'N/A', 'Cash Deposed to bank', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 10000.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:13:20', '2022-03-10 15:13:20'),
(8, 4, 8, 'N/A', 'Cash Deposed to bank', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 15, 41, 10000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:13:20', '2022-03-10 15:13:20'),
(9, 5, 9, 'N/A', 'Business Promotional Expenses paid with Bank.', NULL, 'Account', '2022-03-10', 'voucher_masters', 10, 104, 28, 4000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:14:14', '2022-03-10 15:14:14'),
(10, 5, 10, 'N/A', 'Business Promotional Expenses paid with Bank.', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 15, 41, 0.0000, 4000.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:14:14', '2022-03-10 15:14:14'),
(11, 6, 11, 'N/A', 'Cleaning Expenses  to Cash', NULL, 'Account', '2022-03-10', 'voucher_masters', 10, 122, 13, 500.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:14:53', '2022-03-10 15:14:53'),
(12, 6, 12, 'N/A', 'Cleaning Expenses  to Cash', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 500.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:14:53', '2022-03-10 15:14:53'),
(13, 7, 13, 'N/A', 'Commission on sales', NULL, 'Account', '2022-03-11', 'voucher_masters', 10, 110, 9, 5000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:15:28', '2022-03-10 15:15:28'),
(14, 7, 14, 'N/A', 'Commission on sales', NULL, 'Account', '2022-03-11', 'voucher_masters', 1, 16, 1, 0.0000, 5000.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:15:28', '2022-03-10 15:15:28'),
(15, 8, 15, 'N/A', 'Purchase Computer', NULL, 'Account', '2022-03-10', 'voucher_masters', 3, 29, 45, 50000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:16:01', '2022-03-10 15:16:01'),
(16, 8, 16, 'N/A', 'Purchase Computer', NULL, 'Account', '2022-03-11', 'voucher_masters', 1, 15, 41, 0.0000, 50000.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:16:01', '2022-03-10 15:16:01'),
(17, 9, 17, 'N/A', 'Conveyance Expense', NULL, 'Account', '2022-03-10', 'voucher_masters', 10, 124, 11, 500.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:16:36', '2022-03-10 15:16:36'),
(18, 9, 18, 'N/A', 'Conveyance Expense', NULL, 'Account', '2022-03-11', 'voucher_masters', 1, 16, 1, 0.0000, 500.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:16:36', '2022-03-10 15:16:36'),
(19, 10, 19, 'N/A', 'Donation Expenses', NULL, 'Account', '2022-03-11', 'voucher_masters', 10, 109, 29, 4000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:17:16', '2022-03-10 15:17:16'),
(20, 10, 20, 'N/A', 'Donation Expenses', NULL, 'Account', '2022-03-11', 'voucher_masters', 1, 16, 1, 0.0000, 4000.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:17:16', '2022-03-10 15:17:16'),
(21, 11, 21, 'N/A', 'Electricity Bill', NULL, 'Account', '2022-03-11', 'voucher_masters', 10, 134, 12, 300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:17:58', '2022-03-10 15:17:58'),
(22, 11, 22, 'N/A', 'Electricity Bill', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 300.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:17:58', '2022-03-10 15:17:58'),
(23, 12, 23, 'N/A', 'Entertainment Expenses', NULL, 'Account', '2022-03-10', 'voucher_masters', 10, 122, 15, 400.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:18:25', '2022-03-10 15:18:25'),
(24, 12, 24, 'N/A', 'Entertainment Expenses', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 400.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:18:25', '2022-03-10 15:18:25'),
(25, 13, 25, 'N/A', 'Food Allowance', NULL, 'Account', '2022-03-10', 'voucher_masters', 10, 121, 30, 5000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:18:49', '2022-03-10 15:18:49'),
(26, 13, 26, 'N/A', 'Food Allowance', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 5000.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:18:49', '2022-03-10 15:18:49'),
(27, 14, 27, 'N/A', 'Fuel & Oil Expenses', NULL, 'Account', '2022-03-10', 'voucher_masters', 10, 134, 24, 1300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:19:19', '2022-03-10 15:19:19'),
(28, 14, 28, 'N/A', 'Fuel & Oil Expenses', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 1300.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:19:19', '2022-03-10 15:19:19'),
(29, 15, 29, 'N/A', 'Software Service Sales  to Greenland Services Ltd.', NULL, 'Account', '2022-03-10', 'voucher_masters', 8, 89, 42, 0.0000, 50000.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:20:05', '2022-03-10 15:20:48'),
(30, 15, 30, 'N/A', 'Software Service Sales  to Greenland Services Ltd.', NULL, 'Account', '2022-03-10', 'voucher_masters', 13, 1, 39, 50000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:20:05', '2022-03-10 15:20:48'),
(31, 15, 31, 'N/A', 'Software Service Sales  to Greenland Services Ltd.', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 50000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:20:48', '2022-03-10 15:20:48'),
(32, 15, 32, 'N/A', 'Software Service Sales  to Greenland Services Ltd.', NULL, 'Account', '2022-03-10', 'voucher_masters', 13, 1, 39, 0.0000, 50000.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:20:48', '2022-03-10 15:20:48'),
(33, 16, 33, 'N/A', 'Hasten Business Consulting Cash receive', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 15, 41, 10000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:21:45', '2022-03-10 15:21:45'),
(34, 16, 34, 'N/A', 'Hasten Business Consulting Cash receive', NULL, 'Account', '2022-03-10', 'voucher_masters', 13, 1, 47, 0.0000, 10000.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:21:45', '2022-03-10 15:21:45'),
(35, 17, 35, 'N/A', 'Monthly Subscription  from Hasten Business Consulting', NULL, 'Account', '2022-03-10', 'voucher_masters', 8, 89, 43, 0.0000, 10000.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:22:20', '2022-03-10 15:22:20'),
(36, 17, 36, 'N/A', 'Monthly Subscription  from Hasten Business Consulting', NULL, 'Account', '2022-03-10', 'voucher_masters', 13, 1, 47, 10000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:22:20', '2022-03-10 15:22:20'),
(37, 18, 37, 'N/A', 'Insurance Premium from Trust Bank Limited', NULL, 'Account', '2022-03-10', 'voucher_masters', 10, 116, 25, 3600.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:22:57', '2022-03-10 15:22:57'),
(38, 18, 38, 'N/A', 'Insurance Premium from Trust Bank Limited', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 15, 41, 0.0000, 3600.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:22:57', '2022-03-10 15:22:57'),
(39, 19, 39, 'N/A', 'Internet Bill  to cash', NULL, 'Account', '2022-03-10', 'voucher_masters', 10, 134, 19, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:23:31', '2022-03-10 15:23:31'),
(40, 19, 40, 'N/A', 'Internet Bill  to cash', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 1000.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:23:31', '2022-03-10 15:23:31'),
(41, 20, 41, 'N/A', 'Monthly Subscription', NULL, 'Account', '2022-03-10', 'voucher_masters', 8, 89, 43, 0.0000, 2500.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:24:13', '2022-03-10 15:24:13'),
(42, 20, 42, 'N/A', 'Monthly Subscription', NULL, 'Account', '2022-03-10', 'voucher_masters', 13, 1, 40, 2500.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:24:13', '2022-03-10 15:24:13'),
(43, 21, 43, 'N/A', 'Legal Expenses', 'Legal Expenses', 'Account', '2022-03-10', 'voucher_masters', 10, 118, 35, 2200.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:24:42', '2022-03-10 15:24:42'),
(44, 21, 44, 'N/A', 'Legal Expenses', 'Legal Expenses', 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 2200.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:24:42', '2022-03-10 15:24:42'),
(45, 22, 45, 'N/A', 'License Renewal Fee', 'License Renewal Fee', 'Account', '2022-03-10', 'voucher_masters', 10, 122, 21, 1900.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:25:10', '2022-03-10 15:25:10'),
(46, 22, 46, 'N/A', 'License Renewal Fee', 'License Renewal Fee', 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 1900.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:25:10', '2022-03-10 15:25:10'),
(47, 23, 47, 'N/A', 'Marketing Expenses', NULL, 'Account', '2022-03-10', 'voucher_masters', 10, 104, 31, 3000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:25:48', '2022-03-10 15:25:48'),
(48, 23, 48, 'N/A', 'Marketing Expenses', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 3000.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:25:48', '2022-03-10 15:25:48'),
(49, 24, 49, 'N/A', 'Md. Nazmul Hossian Owner', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 20000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:26:24', '2022-03-10 15:26:24'),
(50, 24, 50, 'N/A', 'Md. Nazmul Hossian Owner', NULL, 'Account', '2022-03-10', 'voucher_masters', 7, 73, 49, 0.0000, 20000.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:26:24', '2022-03-10 15:26:24'),
(51, 25, 51, 'N/A', 'Purchase with discount', NULL, 'Account', '2022-03-10', 'voucher_masters', 9, 140, 2, 10000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:27:48', '2022-03-10 15:27:48'),
(52, 25, 52, 'N/A', 'Purchase with discount', NULL, 'Account', '2022-03-10', 'voucher_masters', 11, 96, 6, 0.0000, 1000.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:27:48', '2022-03-10 15:27:48'),
(53, 25, 53, 'N/A', 'Purchase with discount', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 9000.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:27:48', '2022-03-10 15:27:48'),
(54, 26, 54, 'N/A', 'Sales', NULL, 'Account', '2022-03-10', 'voucher_masters', 8, 85, 4, 0.0000, 50000.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:29:46', '2022-03-10 15:29:46'),
(55, 26, 55, 'N/A', 'Sales', NULL, 'Account', '2022-03-10', 'voucher_masters', 13, 1, 48, 50000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-10 15:29:46', '2022-03-10 15:29:46'),
(56, 27, 56, 'N/A', 'cash receive from bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 16, 1, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-12 16:21:32', '2022-03-12 16:21:32'),
(57, 27, 57, 'N/A', 'cash receive from bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 15, 41, 0.0000, 1000.0000, 1, 1, 'admin', 1, 0, '2022-03-12 16:21:32', '2022-03-12 16:21:32'),
(58, 28, 58, 'N/A', 'cash to bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 16, 1, 2000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-12 16:40:04', '2022-03-12 16:40:04'),
(59, 28, 59, 'N/A', 'cash to bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 15, 41, 0.0000, 2000.0000, 1, 1, 'admin', 1, 0, '2022-03-12 16:40:04', '2022-03-12 16:40:04'),
(60, 29, 60, 'N/A', 'cash to bank charge', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 16, 1, 5000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-12 16:42:13', '2022-03-12 16:42:13'),
(61, 29, 61, 'N/A', 'cash to bank charge', NULL, 'Account', '2022-03-12', 'voucher_masters', 10, 108, 36, 0.0000, 5000.0000, 1, 1, 'admin', 1, 0, '2022-03-12 16:42:13', '2022-03-12 16:42:13'),
(62, 30, 62, 'N/A', 'cash to bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 16, 1, 5000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-12 16:44:18', '2022-03-12 16:44:18'),
(63, 30, 63, 'N/A', 'cash to bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 15, 41, 0.0000, 5000.0000, 1, 1, 'admin', 1, 0, '2022-03-12 16:44:18', '2022-03-12 16:44:18'),
(64, 31, 64, 'N/A', 'cash to bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 16, 1, 5000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-12 16:45:26', '2022-03-12 16:45:26'),
(65, 31, 65, 'N/A', 'cash to bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 15, 41, 0.0000, 5000.0000, 1, 1, 'admin', 1, 0, '2022-03-12 16:45:26', '2022-03-12 16:45:26'),
(66, 32, 66, 'N/A', 'Business Promotional Expenses charge paid from bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 10, 104, 28, 4000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-12 16:49:24', '2022-03-12 16:49:24'),
(67, 32, 67, 'N/A', 'Business Promotional Expenses charge paid from bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 15, 41, 0.0000, 4000.0000, 1, 1, 'admin', 1, 0, '2022-03-12 16:49:24', '2022-03-12 16:49:24'),
(68, 33, 68, 'N/A', 'Donation Expenses  expense paid from bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 10, 109, 29, 5000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-12 16:54:34', '2022-03-12 16:54:34'),
(69, 33, 69, 'N/A', 'Donation Expenses  expense paid from bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 15, 41, 0.0000, 5000.0000, 1, 1, 'admin', 1, 0, '2022-03-12 16:54:34', '2022-03-12 16:54:34'),
(70, 34, 70, 'N/A', 'Monthly Subscription  Receive to bank account', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 15, 41, 50000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-12 16:55:29', '2022-03-12 16:55:29'),
(71, 34, 71, 'N/A', 'Monthly Subscription  Receive to bank account', NULL, 'Account', '2022-03-12', 'voucher_masters', 8, 89, 43, 0.0000, 50000.0000, 1, 1, 'admin', 1, 0, '2022-03-12 16:55:29', '2022-03-12 16:55:29'),
(72, 35, 72, 'N/A', 'f', NULL, 'Account', '2022-03-13', 'voucher_masters', 10, 118, 22, 100.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-12 19:31:44', '2022-03-12 19:31:44'),
(73, 35, 73, 'N/A', 'f', NULL, 'Account', '2022-03-13', 'voucher_masters', 10, 108, 36, 0.0000, 100.0000, 1, 1, 'admin', 1, 0, '2022-03-12 19:31:44', '2022-03-12 19:31:44'),
(74, 36, 74, 'N/A', 'f', NULL, 'Account', '2022-03-13', 'voucher_masters', 10, 104, 28, 550.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-12 19:32:05', '2022-03-12 19:32:05'),
(75, 36, 75, 'N/A', 'f', NULL, 'Account', '2022-03-13', 'voucher_masters', 1, 16, 1, 0.0000, 550.0000, 1, 1, 'admin', 1, 0, '2022-03-12 19:32:05', '2022-03-12 19:32:05'),
(76, 37, 76, 'N/A', 'dd', NULL, 'Account', '2022-03-13', 'voucher_masters', 10, 110, 9, 440.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-12 19:32:28', '2022-03-12 19:32:28'),
(77, 37, 77, 'N/A', 'dd', NULL, 'Account', '2022-03-13', 'voucher_masters', 10, 124, 11, 0.0000, 440.0000, 1, 1, 'admin', 1, 0, '2022-03-12 19:32:28', '2022-03-12 19:32:28'),
(78, 38, 78, 'N/A', 'dsfd', NULL, 'Account', '2022-03-14', 'voucher_masters', 10, 109, 29, 550.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-12 19:32:54', '2022-03-12 19:32:54'),
(79, 38, 79, 'N/A', 'dsfd', NULL, 'Account', '2022-03-14', 'voucher_masters', 10, 134, 12, 0.0000, 550.0000, 1, 1, 'admin', 1, 0, '2022-03-12 19:32:54', '2022-03-12 19:32:54'),
(80, 39, 80, 'N/A', 'Purchase with cash', NULL, 'Account', '2022-03-13', 'voucher_masters', 9, 140, 2, 5000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-13 17:20:42', '2022-03-15 06:19:42'),
(81, 39, 81, 'N/A', 'Purchase with cash', NULL, 'Account', '2022-03-13', 'voucher_masters', 1, 16, 1, 0.0000, 5000.0000, 1, 1, 'admin', 1, 0, '2022-03-13 17:20:42', '2022-03-15 06:19:42'),
(82, 40, 82, 'N/A', 's', NULL, 'Account', '2022-03-14', 'voucher_masters', 1, 16, 1, 5000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-13 18:27:05', '2022-03-13 18:27:05'),
(83, 40, 83, 'N/A', 's', NULL, 'Account', '2022-03-14', 'voucher_masters', 8, 85, 4, 0.0000, 5000.0000, 1, 1, 'admin', 1, 0, '2022-03-13 18:27:05', '2022-03-13 18:27:05'),
(84, 41, 84, 'N/A', 'capital', NULL, 'Account', '2022-03-15', 'voucher_masters', 1, 16, 1, 30000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-15 11:47:00', '2022-03-15 11:47:00'),
(85, 41, 85, 'N/A', 'capital', NULL, 'Account', '2022-03-15', 'voucher_masters', 7, 73, 49, 0.0000, 30000.0000, 1, 1, 'admin', 1, 0, '2022-03-15 11:47:00', '2022-03-15 11:47:00'),
(86, 42, 86, 'N/A', 'Sales Return', NULL, 'Account', '2022-03-15', 'voucher_masters', 8, 85, 5, 5000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-15 15:20:08', '2022-03-15 15:20:08'),
(87, 42, 87, 'N/A', 'Sales Return', NULL, 'Account', '2022-03-15', 'voucher_masters', 1, 16, 1, 0.0000, 5000.0000, 1, 1, 'admin', 1, 0, '2022-03-15 15:20:09', '2022-03-15 15:20:09'),
(88, 43, 88, 'N/A', 'Sales adjusted with cost of goods sold', NULL, 'Account', '2022-03-15', 'voucher_masters', 9, 140, 50, 25000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-03-16 18:47:30', '2022-04-16 20:27:11'),
(89, 43, 89, 'N/A', 'Sales adjusted with cost of goods sold', NULL, 'Account', '2022-03-15', 'voucher_masters', 2, 6, 7, 0.0000, 25000.0000, 1, 1, 'admin', 1, 0, '2022-03-16 18:47:30', '2022-04-16 20:27:11'),
(90, 12, 12, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-16', 'purchases', 10, 129, 2, 14900.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-15 20:19:14', '2022-04-15 20:19:14'),
(91, 13, 13, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-16', 'purchases', 10, 129, 2, 14900.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-15 20:20:32', '2022-04-15 20:20:32'),
(92, 13, 13, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-16', 'purchases', 13, 1, 39, 0.0000, 14900.0000, 1, 1, 'admin', 1, 0, '2022-04-15 20:20:32', '2022-04-15 20:20:32'),
(93, 14, 14, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-16', 'purchases', 10, 129, 2, 14900.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-15 20:21:56', '2022-04-15 20:21:56'),
(94, 14, 14, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-16', 'purchases', 13, 1, 39, 0.0000, 14900.0000, 1, 1, 'admin', 1, 0, '2022-04-15 20:21:56', '2022-04-15 20:21:56'),
(95, 14, 7, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-16', 'purchases', 11, 96, 6, 900.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-15 20:21:56', '2022-04-15 20:21:56'),
(96, 14, 8, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-16', 'purchases', 13, 1, 39, 0.0000, 0.0000, 1, 0, 'admin', 1, 0, '2022-04-15 20:21:56', '2022-04-15 20:21:56'),
(97, 16, 16, 'N/A', 'Due purchase', NULL, 'Purchase', '2022-04-16', 'purchases', 10, 129, 2, 80000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 16:46:30', '2022-04-16 16:46:30'),
(98, 16, 16, 'N/A', 'Due purchase', NULL, 'Purchase', '2022-04-16', 'purchases', 13, 1, 48, 0.0000, 80000.0000, 1, 1, 'admin', 1, 0, '2022-04-16 16:46:30', '2022-04-16 16:46:30'),
(99, 16, 16, 'N/A', 'Due purchase', NULL, 'Purchase', '2022-04-16', 'purchases', 13, 1, 48, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 16:46:30', '2022-04-16 16:46:30'),
(100, 16, 16, 'N/A', 'Due purchase', NULL, 'Purchase', '2022-04-16', 'purchases', 11, 96, 6, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 16:46:30', '2022-04-16 16:46:30'),
(101, 16, 1, 'N/A', 'Due purchase', NULL, 'Purchase', '2022-04-16', 'purchase_accounts', 11, 96, 6, 0.0000, 500.0000, 1, 1, 'admin', 1, 0, '2022-04-16 16:46:31', '2022-04-16 16:46:31'),
(102, 16, 2, 'N/A', 'Due purchase', NULL, 'Purchase', '2022-04-16', 'purchase_accounts', 13, 1, 48, 0.0000, 0.0000, 1, 0, 'admin', 1, 0, '2022-04-16 16:46:31', '2022-04-16 16:46:31'),
(103, 17, 17, 'N/A', 'Due purchase', NULL, 'Purchase', '2022-04-16', 'purchases', 10, 129, 2, 80000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 16:47:59', '2022-04-16 16:47:59'),
(104, 17, 17, 'N/A', 'Due purchase', NULL, 'Purchase', '2022-04-16', 'purchases', 13, 1, 48, 0.0000, 80000.0000, 1, 1, 'admin', 1, 0, '2022-04-16 16:47:59', '2022-04-16 16:47:59'),
(105, 17, 17, 'N/A', 'Due purchase', NULL, 'Purchase', '2022-04-16', 'purchases', 13, 1, 48, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 16:47:59', '2022-04-16 16:47:59'),
(106, 17, 17, 'N/A', 'Due purchase', NULL, 'Purchase', '2022-04-16', 'purchases', 11, 96, 6, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 16:47:59', '2022-04-16 16:47:59'),
(107, 17, 3, 'N/A', 'Due purchase', NULL, 'Purchase', '2022-04-16', 'purchase_accounts', 11, 96, 6, 0.0000, 500.0000, 1, 1, 'admin', 1, 0, '2022-04-16 16:47:59', '2022-04-16 16:47:59'),
(108, 17, 4, 'N/A', 'Due purchase', NULL, 'Purchase', '2022-04-16', 'purchase_accounts', 13, 1, 48, 0.0000, 0.0000, 1, 0, 'admin', 1, 0, '2022-04-16 16:47:59', '2022-04-16 16:47:59'),
(109, 18, 18, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 33100.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:11:44', '2022-04-16 18:11:44'),
(110, 18, 18, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 48, 0.0000, 33100.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:11:44', '2022-04-16 18:11:44'),
(111, 18, 18, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 48, 100.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:11:44', '2022-04-16 18:11:44'),
(112, 18, 18, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 11, 96, 6, 100.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:11:44', '2022-04-16 18:11:44'),
(113, 18, 5, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchase_accounts', 10, 125, 46, 500.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:11:44', '2022-04-16 18:11:44'),
(114, 18, 6, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchase_accounts', 1, 16, 1, 0.0000, 0.0000, 1, 0, 'admin', 1, 0, '2022-04-16 18:11:44', '2022-04-16 18:11:44'),
(115, 19, 19, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:15:11', '2022-04-16 18:15:11'),
(116, 19, 19, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:15:11', '2022-04-16 18:15:11'),
(117, 19, 7, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchase_accounts', 10, 125, 46, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:15:11', '2022-04-16 18:15:11'),
(118, 20, 20, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:15:42', '2022-04-16 18:15:42'),
(119, 20, 20, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:15:42', '2022-04-16 18:15:42'),
(120, 21, 21, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:15:54', '2022-04-16 18:15:54'),
(121, 21, 21, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:15:54', '2022-04-16 18:15:54'),
(122, 22, 22, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:16:17', '2022-04-16 18:16:17'),
(123, 22, 22, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:16:17', '2022-04-16 18:16:17'),
(124, 23, 23, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:16:27', '2022-04-16 18:16:27'),
(125, 23, 23, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:16:27', '2022-04-16 18:16:27'),
(126, 24, 24, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:16:52', '2022-04-16 18:16:52'),
(127, 24, 24, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:16:52', '2022-04-16 18:16:52'),
(128, 25, 25, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:18:30', '2022-04-16 18:18:30'),
(129, 25, 25, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:18:30', '2022-04-16 18:18:30'),
(130, 25, 8, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchase_accounts', 10, 125, 46, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:18:30', '2022-04-16 18:18:30'),
(131, 26, 26, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:19:28', '2022-04-16 18:19:28'),
(132, 26, 26, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:19:28', '2022-04-16 18:19:28'),
(133, 26, 9, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchase_accounts', 10, 125, 46, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:19:28', '2022-04-16 18:19:28'),
(134, 27, 27, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:20:14', '2022-04-16 18:20:14'),
(135, 27, 27, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:20:14', '2022-04-16 18:20:14'),
(136, 27, 10, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchase_accounts', 10, 125, 46, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:20:14', '2022-04-16 18:20:14'),
(137, 28, 28, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:20:58', '2022-04-16 18:20:58'),
(138, 28, 28, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:20:58', '2022-04-16 18:20:58'),
(139, 28, 11, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchase_accounts', 10, 125, 46, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:20:58', '2022-04-16 18:20:58'),
(140, 29, 29, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:21:32', '2022-04-16 18:21:32'),
(141, 29, 29, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:21:32', '2022-04-16 18:21:32'),
(142, 29, 12, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchase_accounts', 10, 125, 46, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:21:32', '2022-04-16 18:21:32'),
(143, 30, 30, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:21:44', '2022-04-16 18:21:44'),
(144, 30, 30, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:21:44', '2022-04-16 18:21:44'),
(145, 30, 13, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchase_accounts', 10, 125, 46, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:21:44', '2022-04-16 18:21:44'),
(146, 30, 14, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchase_accounts', 1, 16, 1, 0.0000, 0.0000, 1, 0, 'admin', 1, 0, '2022-04-16 18:21:44', '2022-04-16 18:21:44'),
(147, 31, 31, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:22:05', '2022-04-16 18:22:05'),
(148, 31, 31, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:22:05', '2022-04-16 18:22:05'),
(149, 31, 15, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchase_accounts', 10, 125, 46, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:22:05', '2022-04-16 18:22:05'),
(150, 31, 16, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchase_accounts', 1, 16, 1, 0.0000, 0.0000, 1, 0, 'admin', 1, 0, '2022-04-16 18:22:05', '2022-04-16 18:22:05'),
(151, 32, 32, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:22:14', '2022-04-16 18:22:14'),
(152, 32, 32, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:22:14', '2022-04-16 18:22:14'),
(153, 32, 17, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchase_accounts', 10, 125, 46, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:22:14', '2022-04-16 18:22:14'),
(154, 33, 33, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:22:33', '2022-04-16 18:22:33'),
(155, 33, 33, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:22:33', '2022-04-16 18:22:33'),
(156, 33, 18, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchase_accounts', 10, 125, 46, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:22:33', '2022-04-16 18:22:33'),
(157, 34, 34, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:23:10', '2022-04-16 18:23:10'),
(158, 34, 34, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:23:10', '2022-04-16 18:23:10'),
(159, 34, 19, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchase_accounts', 10, 125, 46, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:23:10', '2022-04-16 18:23:10'),
(160, 35, 35, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:23:22', '2022-04-16 18:23:22'),
(161, 35, 35, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:23:22', '2022-04-16 18:23:22'),
(162, 35, 20, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchase_accounts', 10, 125, 46, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:23:22', '2022-04-16 18:23:22'),
(163, 36, 36, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:23:44', '2022-04-16 18:23:44'),
(164, 36, 36, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:23:44', '2022-04-16 18:23:44'),
(165, 36, 21, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchase_accounts', 10, 125, 46, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:23:44', '2022-04-16 18:23:44'),
(166, 37, 37, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:26:56', '2022-04-16 18:26:56'),
(167, 37, 37, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:26:56', '2022-04-16 18:26:56'),
(168, 37, 22, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchase_accounts', 10, 125, 46, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:26:56', '2022-04-16 18:26:56'),
(169, 38, 38, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:27:52', '2022-04-16 18:27:52'),
(170, 38, 38, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:27:52', '2022-04-16 18:27:52'),
(171, 39, 39, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:28:19', '2022-04-16 18:28:19'),
(172, 39, 39, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:28:19', '2022-04-16 18:28:19'),
(173, 40, 40, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:28:33', '2022-04-16 18:28:33'),
(174, 40, 40, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:28:33', '2022-04-16 18:28:33'),
(175, 41, 41, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:28:51', '2022-04-16 18:28:51'),
(176, 41, 41, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:28:51', '2022-04-16 18:28:51'),
(177, 42, 42, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:29:08', '2022-04-16 18:29:08'),
(178, 42, 42, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:29:08', '2022-04-16 18:29:08'),
(179, 43, 43, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:29:39', '2022-04-16 18:29:39'),
(180, 43, 43, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:29:39', '2022-04-16 18:29:39'),
(181, 44, 44, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:30:01', '2022-04-16 18:30:01'),
(182, 44, 44, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:30:01', '2022-04-16 18:30:01'),
(183, 45, 45, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:31:14', '2022-04-16 18:31:14'),
(184, 45, 45, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:31:14', '2022-04-16 18:31:14'),
(185, 45, 26, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchase_accounts', 10, 125, 46, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:31:14', '2022-04-16 18:31:14'),
(186, 45, 27, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchase_accounts', 1, 16, 1, 0.0000, 1000.0000, 1, 0, 'admin', 1, 0, '2022-04-16 18:31:14', '2022-04-16 18:31:14'),
(187, 46, 46, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 3300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:32:09', '2022-04-16 18:32:09'),
(188, 46, 46, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:32:09', '2022-04-16 18:32:09'),
(189, 46, 28, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchase_accounts', 10, 125, 46, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:32:09', '2022-04-16 18:32:09'),
(190, 46, 29, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchase_accounts', 1, 16, 1, 0.0000, 1000.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:32:09', '2022-04-16 18:32:09'),
(191, 47, 47, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-20', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:32:20', '2022-04-19 18:40:59'),
(192, 47, 47, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 39, 0.0000, 3300.0000, 1, 1, 'admin', 0, 0, '2022-04-16 18:32:20', '2022-04-19 18:40:59'),
(193, 47, 30, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-20', 'purchase_accounts', 10, 125, 46, 1000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:32:20', '2022-04-19 18:40:59'),
(194, 47, 31, 'N/A', 'Due Purchase', NULL, 'Purchase', '2022-04-20', 'purchase_accounts', 1, 16, 1, 0.0000, 1000.0000, 1, 1, 'admin', 1, 0, '2022-04-16 18:32:20', '2022-04-19 18:40:59'),
(195, 48, 48, 'N/A', 'due', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 1100.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 20:41:00', '2022-04-16 20:41:00'),
(196, 48, 48, 'N/A', 'due', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 44, 0.0000, 1100.0000, 1, 1, 'admin', 1, 0, '2022-04-16 20:41:00', '2022-04-16 20:41:00'),
(197, 49, 49, 'N/A', 'due purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 10, 129, 2, 14900.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 20:44:25', '2022-04-16 20:44:25'),
(198, 49, 49, 'N/A', 'due purchase', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 44, 0.0000, 14900.0000, 1, 1, 'admin', 1, 0, '2022-04-16 20:44:25', '2022-04-16 20:44:25'),
(199, 50, 50, 'N/A', 'p', NULL, 'Purchase', '2022-04-20', 'purchases', 11, 96, 6, 900.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 21:07:08', '2022-04-19 18:40:51'),
(200, 50, 50, 'N/A', 'p', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 44, 0.0000, 14900.0000, 1, 1, 'admin', 0, 0, '2022-04-16 21:07:08', '2022-04-19 18:40:51'),
(201, 50, 50, 'N/A', 'p', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 44, 900.0000, 0.0000, 1, 1, 'admin', 0, 0, '2022-04-16 21:07:08', '2022-04-19 18:40:51'),
(202, 50, 50, 'N/A', 'p', NULL, 'Purchase', '2022-04-17', 'purchases', 11, 96, 6, 900.0000, 0.0000, 1, 1, 'admin', 0, 0, '2022-04-16 21:07:08', '2022-04-19 18:40:51'),
(203, 50, 32, 'N/A', 'p', NULL, 'Purchase', '2022-04-20', 'purchase_accounts', 10, 125, 46, 5000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-16 21:07:09', '2022-04-19 18:40:51'),
(204, 50, 33, 'N/A', 'p', NULL, 'Purchase', '2022-04-20', 'purchase_accounts', 1, 16, 1, 0.0000, 5000.0000, 1, 1, 'admin', 1, 0, '2022-04-16 21:07:09', '2022-04-19 18:40:51'),
(205, 52, 52, 'N/A', 'p', NULL, 'Purchase', '2022-04-20', 'purchases', 13, 1, 47, 0.0000, 1100.0000, 1, 1, 'admin', 1, 0, '2022-04-17 16:37:10', '2022-04-19 18:40:36'),
(206, 52, 52, 'N/A', 'p', NULL, 'Purchase', '2022-04-17', 'purchases', 13, 1, 47, 0.0000, 1100.0000, 1, 1, 'admin', 0, 0, '2022-04-17 16:37:10', '2022-04-19 18:40:36'),
(207, 53, 53, 'N/A', 'p', NULL, 'Purchase', '2022-04-20', 'purchases', 13, 1, 39, 0.0000, 27300.0000, 1, 1, 'admin', 1, 0, '2022-04-18 06:36:45', '2022-04-19 18:40:29'),
(208, 53, 53, 'N/A', 'p', NULL, 'Purchase', '2022-04-18', 'purchases', 13, 1, 39, 0.0000, 27300.0000, 1, 1, 'admin', 0, 0, '2022-04-18 06:36:45', '2022-04-19 18:40:29'),
(209, 54, 54, 'N/A', 'Purchase with cash', 'Cash purchase', 'Purchase', '2022-04-20', 'purchases', 13, 1, 39, 0.0000, 284000.0000, 1, 1, 'admin', 1, 0, '2022-04-18 14:53:20', '2022-04-20 17:53:11'),
(210, 54, 54, 'N/A', 'Purchase with cash', 'Cash purchase', 'Purchase', '2022-04-18', 'purchases', 13, 1, 39, 0.0000, 0.0000, 1, 1, 'admin', 0, 0, '2022-04-18 14:53:20', '2022-04-20 17:53:11'),
(211, 54, 34, 'N/A', 'Purchase with cash', 'Cash purchase', 'Purchase', '2022-04-20', 'purchase_accounts', 13, 1, 39, 28400.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-18 14:53:20', '2022-04-20 17:53:11'),
(212, 54, 35, 'N/A', 'Purchase with cash', 'Cash purchase', 'Purchase', '2022-04-20', 'purchase_accounts', 1, 16, 1, 0.0000, 28400.0000, 1, 1, 'admin', 1, 0, '2022-04-18 14:53:20', '2022-04-20 17:53:11'),
(213, 54, 36, 'N/A', 'Purchase with cash', 'Cash purchase', 'Purchase', '2022-04-18', 'purchase_accounts', 11, 96, 6, 0.0000, 0.0000, 1, 1, 'admin', 0, 0, '2022-04-18 14:53:20', '2022-04-20 17:53:11'),
(214, 55, 55, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-20', 'purchases', 13, 1, 39, 0.0000, 14600.0000, 1, 1, 'admin', 1, 0, '2022-04-18 16:28:36', '2022-04-19 18:40:11'),
(215, 56, 56, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-20', 'purchases', 13, 1, 44, 0.0000, 14600.0000, 1, 1, 'admin', 1, 0, '2022-04-18 16:29:36', '2022-04-19 18:40:03'),
(216, 51, 51, 'N/A', 'p', NULL, 'Purchase', '2022-04-20', 'purchases', 13, 1, 47, 0.0000, 1100.0000, 1, 1, 'admin', 1, 0, '2022-04-19 18:40:44', '2022-04-19 18:40:44'),
(217, 7, 7, 'N/A', 'pr', NULL, 'Purchase Return', '2022-04-20', 'purchases_return', 13, 1, 39, 0.0000, 28400.0000, 1, 1, 'admin', 1, 0, '2022-04-19 21:14:07', '2022-04-19 21:14:07'),
(218, 8, 8, 'N/A', 'pr', NULL, 'Purchase Return', '2022-04-20', 'purchases_return', 13, 1, 39, 0.0000, 14600.0000, 1, 1, 'admin', 1, 0, '2022-04-19 22:03:19', '2022-04-19 22:03:19'),
(219, 9, 9, 'N/A', 'pr', NULL, 'Purchase Return', '2022-04-20', 'purchases_return', 13, 1, 39, 0.0000, 27300.0000, 1, 1, 'admin', 1, 0, '2022-04-19 22:05:24', '2022-04-19 22:05:24'),
(220, 9, 1, 'N/A', 'pr', NULL, 'Purchase Return', '2022-04-20', 'purchase_return_accounts', 1, 16, 1, 0.0000, 27300.0000, 1, 1, 'admin', 1, 0, '2022-04-19 22:05:24', '2022-04-19 22:05:24'),
(221, 9, 2, 'N/A', 'pr', NULL, 'Purchase Return', '2022-04-20', 'purchase_return_accounts', 13, 1, 39, 27300.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-19 22:05:24', '2022-04-19 22:05:24'),
(222, 10, 10, 'N/A', 'pr', NULL, 'Purchase Return', '2022-04-20', 'purchases_return', 13, 1, 44, 0.0000, 14600.0000, 1, 1, 'admin', 1, 0, '2022-04-19 22:19:05', '2022-04-19 22:19:05'),
(223, 57, 57, 'N/A', 'pr', NULL, 'Purchase', '2022-04-20', 'purchases', 13, 1, 40, 0.0000, 279600.0000, 1, 1, 'admin', 1, 0, '2022-04-19 22:20:09', '2022-04-19 22:20:09'),
(224, 11, 11, 'N/A', 'pr', NULL, 'Purchase Return', '2022-04-20', 'purchases_return', 13, 1, 40, 0.0000, 28400.0000, 1, 1, 'admin', 1, 0, '2022-04-19 22:20:32', '2022-04-19 22:20:32'),
(225, 12, 12, 'N/A', 'pr', NULL, 'Purchase Return', '2022-04-20', 'purchases_return', 13, 1, 40, 0.0000, 28400.0000, 1, 1, 'admin', 1, 0, '2022-04-19 22:25:38', '2022-04-19 22:25:38'),
(226, 13, 13, 'N/A', 'pr', NULL, 'Purchase Return', '2022-04-20', 'purchases_return', 13, 1, 40, 0.0000, 28400.0000, 1, 1, 'admin', 1, 0, '2022-04-19 22:25:53', '2022-04-19 22:25:53'),
(227, 14, 14, 'N/A', 'pr', NULL, 'Purchase Return', '2022-04-20', 'purchases_return', 13, 1, 40, 0.0000, 1100.0000, 1, 1, 'admin', 1, 0, '2022-04-20 17:33:56', '2022-04-20 17:33:56'),
(228, 58, 58, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-20', 'purchases', 13, 1, 48, 0.0000, 284000.0000, 1, 1, 'admin', 1, 0, '2022-04-20 17:46:08', '2022-04-20 17:48:42'),
(229, 15, 15, 'N/A', 'pr', NULL, 'Purchase Return', '2022-04-20', 'purchases_return', 13, 1, 39, 0.0000, 28400.0000, 1, 1, 'admin', 1, 0, '2022-04-20 17:54:34', '2022-04-20 17:54:34'),
(230, 59, 59, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-20', 'purchases', 13, 1, 47, 0.0000, 284000.0000, 1, 1, 'admin', 1, 0, '2022-04-20 17:58:03', '2022-04-20 17:58:03'),
(231, 16, 16, 'N/A', 'pr', NULL, 'Purchase Return', '2022-04-20', 'purchases_return', 13, 1, 47, 0.0000, 28400.0000, 1, 1, 'admin', 1, 0, '2022-04-20 17:59:12', '2022-04-20 17:59:12'),
(232, 17, 17, 'N/A', 'pr', NULL, 'Purchase Return', '2022-04-21', 'purchases_return', 13, 1, 47, 0.0000, 28400.0000, 1, 1, 'admin', 1, 0, '2022-04-20 18:17:06', '2022-04-20 18:17:06'),
(233, 17, 3, 'N/A', 'pr', NULL, 'Purchase Return', '2022-04-21', 'purchase_return_accounts', 13, 1, 47, 0.0000, 28400.0000, 1, 1, 'admin', 1, 0, '2022-04-20 18:17:06', '2022-04-20 18:17:06'),
(234, 17, 4, 'N/A', 'pr', NULL, 'Purchase Return', '2022-04-21', 'purchase_return_accounts', 1, 16, 1, 28400.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-20 18:17:06', '2022-04-20 18:17:06'),
(235, 19, 19, 'N/A', 'pr', NULL, 'Purchase Return', '2022-04-21', 'purchases_return', 2, 6, 7, 0.0000, 1100.0000, 1, 1, 'admin', 1, 0, '2022-04-20 18:46:15', '2022-04-20 18:46:15'),
(236, 60, 60, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-21', 'purchases', 10, 129, 2, 0.0000, 284000.0000, 1, 1, 'admin', 1, 0, '2022-04-20 18:53:22', '2022-04-20 18:53:22'),
(237, 61, 61, 'N/A', 'pur', NULL, 'Purchase', '2022-04-21', 'purchases', 10, 129, 2, 0.0000, 11000.0000, 1, 1, 'admin', 1, 0, '2022-04-20 19:05:30', '2022-04-20 19:05:30'),
(238, 62, 62, 'N/A', 'p', NULL, 'Purchase', '2022-04-20', 'purchases', 10, 129, 2, 0.0000, 135000.0000, 1, 1, 'admin', 1, 0, '2022-04-20 19:08:17', '2022-04-20 19:08:17'),
(239, 64, 64, 'N/A', 'p', NULL, 'Purchase', '2022-04-21', 'purchases', 10, 129, 2, 0.0000, 13500.0000, 1, 1, 'admin', 1, 0, '2022-04-20 19:20:04', '2022-04-20 19:20:04'),
(240, 67, 67, 'N/A', 'p', NULL, 'Purchase', '2022-04-21', 'purchases', 10, 129, 2, 13500.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-20 19:23:30', '2022-04-20 19:23:30'),
(241, 68, 68, 'N/A', 'p', NULL, 'Purchase', '2022-04-21', 'purchases', 12, 43, 52, 0.0000, 13500.0000, 1, 1, 'admin', 1, 0, '2022-04-20 19:24:05', '2022-04-20 19:24:05'),
(242, 69, 69, 'N/A', 'p', NULL, 'Purchase', '2022-04-21', 'purchases', 10, 129, 2, 0.0000, 13500.0000, 1, 1, 'admin', 1, 0, '2022-04-20 19:24:36', '2022-04-20 19:24:36'),
(243, 70, 70, 'N/A', 'p', NULL, 'Purchase', '2022-04-19', 'purchases', 10, 129, 2, 0.0000, 1100.0000, 1, 1, 'admin', 1, 0, '2022-04-20 19:25:14', '2022-04-20 19:25:14'),
(244, 71, 71, 'N/A', 'p', NULL, 'Purchase', '2022-04-21', 'purchases', 10, 129, 2, 0.0000, 69000.0000, 1, 1, 'admin', 1, 0, '2022-04-20 19:29:00', '2022-04-20 19:29:00'),
(245, 72, 72, 'N/A', 'pur', NULL, 'Purchase', '2022-04-21', 'purchases', 10, 129, 2, 146000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-20 19:38:38', '2022-04-20 19:38:38'),
(246, 72, 72, 'N/A', 'pur', NULL, 'Purchase', '2022-04-21', 'purchases', 12, 43, 52, 0.0000, 146000.0000, 1, 1, 'admin', 1, 0, '2022-04-20 19:38:38', '2022-04-20 19:38:38'),
(247, 72, 72, 'N/A', 'pur', NULL, 'Purchase', '2022-04-21', 'purchases', 2, 6, 7, 146000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-20 19:38:38', '2022-04-20 19:38:38'),
(248, 72, 72, 'N/A', 'pur', NULL, 'Purchase', '2022-04-21', 'purchases', 10, 129, 2, 0.0000, 146000.0000, 1, 1, 'admin', 1, 0, '2022-04-20 19:38:38', '2022-04-20 19:38:38'),
(249, 72, 37, 'N/A', 'pur', NULL, 'Purchase', '2022-04-21', 'purchase_accounts', 12, 43, 52, 146000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-20 19:38:38', '2022-04-20 19:38:38'),
(250, 72, 38, 'N/A', 'pur', NULL, 'Purchase', '2022-04-21', 'purchase_accounts', 1, 16, 1, 0.0000, 146000.0000, 1, 1, 'admin', 1, 0, '2022-04-20 19:38:39', '2022-04-20 19:38:39'),
(251, 73, 73, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-21', 'purchases', 10, 129, 2, 67500.0000, 0.0000, 1, 1, 'admin', 1, 1, '2022-04-20 19:41:17', '2022-04-20 20:46:26'),
(252, 73, 73, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-21', 'purchases', 12, 43, 52, 0.0000, 67500.0000, 1, 1, 'admin', 1, 2, '2022-04-20 19:41:17', '2022-04-20 20:46:26'),
(253, 73, 73, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-21', 'purchases', 2, 6, 7, 67500.0000, 0.0000, 1, 1, 'admin', 1, 3, '2022-04-20 19:41:17', '2022-04-20 20:46:26'),
(254, 73, 73, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-21', 'purchases', 10, 129, 2, 0.0000, 67500.0000, 1, 1, 'admin', 1, 4, '2022-04-20 19:41:17', '2022-04-20 20:46:26'),
(255, 73, 73, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-21', 'purchases', 12, 43, 52, 500.0000, 0.0000, 1, 1, 'admin', 1, 5, '2022-04-20 19:41:17', '2022-04-20 20:46:26'),
(256, 73, 73, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-21', 'purchases', 11, 96, 6, 500.0000, 0.0000, 1, 1, 'admin', 1, 6, '2022-04-20 19:41:17', '2022-04-20 20:46:26'),
(257, 73, 73, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-21', 'purchases', 5, 47, 51, 6750.0000, 0.0000, 1, 1, 'admin', 1, 7, '2022-04-20 19:41:17', '2022-04-20 20:46:26'),
(258, 73, 73, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-21', 'purchases', 12, 43, 52, 0.0000, 6750.0000, 1, 1, 'admin', 1, 8, '2022-04-20 19:41:17', '2022-04-20 20:46:26'),
(259, 73, 39, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-21', 'purchase_accounts', 12, 43, 52, 73750.0000, 0.0000, 1, 1, 'admin', 1, 9, '2022-04-20 19:41:17', '2022-04-20 20:46:26'),
(260, 73, 40, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-21', 'purchase_accounts', 1, 16, 1, 0.0000, 67000.0000, 1, 1, 'admin', 1, 10, '2022-04-20 19:41:18', '2022-04-20 20:46:26'),
(261, 73, 41, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-21', 'purchase_accounts', 1, 16, 1, 0.0000, 6750.0000, 1, 1, 'admin', 0, 11, '2022-04-20 19:41:18', '2022-04-20 20:46:26'),
(262, 20, 20, 'N/A', 'pr', NULL, 'Purchase Return', '2022-04-21', 'purchases_return', 10, 129, 3, 56800.0000, 0.0000, 1, 1, 'admin', 1, 1, '2022-04-20 19:45:55', '2022-04-20 19:45:55'),
(263, 20, 20, 'N/A', 'pr', NULL, 'Purchase Return', '2022-04-21', 'purchases_return', 12, 43, 52, 0.0000, 56800.0000, 1, 1, 'admin', 1, 2, '2022-04-20 19:45:55', '2022-04-20 19:45:55'),
(264, 20, 20, 'N/A', 'pr', NULL, 'Purchase Return', '2022-04-21', 'purchases_return', 10, 129, 3, 56800.0000, 0.0000, 1, 1, 'admin', 1, 3, '2022-04-20 19:45:55', '2022-04-20 19:45:55'),
(265, 20, 20, 'N/A', 'pr', NULL, 'Purchase Return', '2022-04-21', 'purchases_return', 2, 6, 7, 0.0000, 56800.0000, 1, 1, 'admin', 1, 4, '2022-04-20 19:45:55', '2022-04-20 19:45:55'),
(266, 21, 21, 'N/A', 'purchase return due to bad quality', NULL, 'Purchase Return', '2022-04-21', 'purchases_return', 10, 129, 3, 85200.0000, 0.0000, 1, 1, 'admin', 1, 1, '2022-04-20 19:47:15', '2022-04-20 19:47:15'),
(267, 21, 21, 'N/A', 'purchase return due to bad quality', NULL, 'Purchase Return', '2022-04-21', 'purchases_return', 12, 43, 52, 0.0000, 85200.0000, 1, 1, 'admin', 1, 2, '2022-04-20 19:47:15', '2022-04-20 19:47:15'),
(268, 21, 21, 'N/A', 'purchase return due to bad quality', NULL, 'Purchase Return', '2022-04-21', 'purchases_return', 10, 129, 3, 85200.0000, 0.0000, 1, 1, 'admin', 1, 3, '2022-04-20 19:47:15', '2022-04-20 19:47:15');
INSERT INTO `accounts` (`id`, `_ref_master_id`, `_ref_detail_id`, `_short_narration`, `_narration`, `_reference`, `_transaction`, `_date`, `_table_name`, `_account_head`, `_account_group`, `_account_ledger`, `_dr_amount`, `_cr_amount`, `_branch_id`, `_cost_center`, `_name`, `_status`, `_serial`, `created_at`, `updated_at`) VALUES
(269, 21, 21, 'N/A', 'purchase return due to bad quality', NULL, 'Purchase Return', '2022-04-21', 'purchases_return', 2, 6, 7, 0.0000, 85200.0000, 1, 1, 'admin', 1, 4, '2022-04-20 19:47:15', '2022-04-20 19:47:15'),
(270, 44, 90, 'N/A', 'Cash Paid', NULL, 'Account', '2022-04-21', 'voucher_masters', 12, 43, 52, 200000.0000, 0.0000, 1, 1, 'admin', 1, 0, '2022-04-20 20:14:38', '2022-04-20 20:14:38'),
(271, 44, 91, 'N/A', 'Cash Paid', NULL, 'Account', '2022-04-21', 'voucher_masters', 1, 16, 1, 0.0000, 200000.0000, 1, 1, 'admin', 1, 0, '2022-04-20 20:14:38', '2022-04-20 20:14:38'),
(272, 22, 22, 'N/A', 'Purchase Return and cash receive', NULL, 'Purchase Return', '2022-04-21', 'purchases_return', 12, 43, 52, 1100.0000, 0.0000, 1, 1, 'admin', 1, 1, '2022-04-20 20:20:56', '2022-04-20 20:20:56'),
(273, 22, 22, 'N/A', 'Purchase Return and cash receive', NULL, 'Purchase Return', '2022-04-21', 'purchases_return', 10, 129, 3, 0.0000, 1100.0000, 1, 1, 'admin', 1, 2, '2022-04-20 20:20:56', '2022-04-20 20:20:56'),
(274, 22, 22, 'N/A', 'Purchase Return and cash receive', NULL, 'Purchase Return', '2022-04-21', 'purchases_return', 10, 129, 3, 1100.0000, 0.0000, 1, 1, 'admin', 1, 3, '2022-04-20 20:20:56', '2022-04-20 20:20:56'),
(275, 22, 22, 'N/A', 'Purchase Return and cash receive', NULL, 'Purchase Return', '2022-04-21', 'purchases_return', 2, 6, 7, 0.0000, 1100.0000, 1, 1, 'admin', 1, 4, '2022-04-20 20:20:56', '2022-04-20 20:20:56'),
(276, 22, 5, 'N/A', 'Purchase Return and cash receive', NULL, 'Purchase Return', '2022-04-21', 'purchase_return_accounts', 1, 16, 1, 1100.0000, 0.0000, 1, 1, 'admin', 1, 9, '2022-04-20 20:20:56', '2022-04-20 20:20:56'),
(277, 22, 6, 'N/A', 'Purchase Return and cash receive', NULL, 'Purchase Return', '2022-04-21', 'purchase_return_accounts', 12, 43, 52, 0.0000, 1100.0000, 1, 1, 'admin', 1, 10, '2022-04-20 20:20:56', '2022-04-20 20:20:56'),
(278, 73, 41, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-21', 'purchase_accounts', 1, 15, 41, 0.0000, 6750.0000, 1, 1, 'admin', 0, 11, '2022-04-20 20:43:22', '2022-04-20 20:46:26'),
(279, 73, 42, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-21', 'purchase_accounts', 1, 16, 1, 0.0000, 6750.0000, 1, 1, 'admin', 0, 11, '2022-04-20 20:46:17', '2022-04-20 20:46:26'),
(280, 73, 43, 'N/A', 'purchase', NULL, 'Purchase', '2022-04-21', 'purchase_accounts', 1, 15, 41, 0.0000, 6750.0000, 1, 1, 'admin', 1, 11, '2022-04-20 20:46:26', '2022-04-20 20:46:26');

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
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_ledgers`
--

INSERT INTO `account_ledgers` (`id`, `_account_group_id`, `_account_head_id`, `_name`, `_code`, `_image`, `_nid`, `_other_document`, `_email`, `_phone`, `_address`, `_credit_limit`, `_balance`, `_branch_id`, `_is_user`, `_user_id`, `_is_sales_form`, `_is_purchase_form`, `_is_all_branch`, `_short`, `_status`, `_show`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 16, 1, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, -347350.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:46:36', '2022-03-09 11:46:36'),
(2, 129, 10, 'Purchase', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, -152400.0000, 1, 1, NULL, 1, 1, 1, 1, 1, 0, '1-admin', '1-admin', '2022-03-09 11:48:41', '2022-04-18 14:45:23'),
(3, 129, 10, 'Purchase Return', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 284000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, '1-admin', '1-admin', '2022-03-09 11:49:00', '2022-04-18 14:45:23'),
(4, 85, 8, 'Sales', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:49:50', '2022-03-16 11:06:54'),
(5, 85, 8, 'Sales Return', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:50:46', '2022-03-16 11:06:54'),
(6, 96, 11, 'Purchase Discount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 3300.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:51:26', '2022-03-16 11:06:54'),
(7, 6, 2, 'Inventory', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 44300.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', '1-admin', '2022-03-09 11:52:42', '2022-03-10 09:28:42'),
(8, 142, 10, 'Sales Discount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:55:02', '2022-03-16 11:06:54'),
(9, 110, 10, 'Commission on sales', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:56:06', '2022-03-16 11:06:54'),
(10, 115, 10, 'VAT Payable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:56:44', '2022-03-16 11:06:54'),
(11, 124, 10, 'Conveyance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:57:27', '2022-03-16 11:06:54'),
(12, 134, 10, 'Electricity Bill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:57:57', '2022-03-16 11:06:54'),
(13, 122, 10, 'Cleaning Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:58:27', '2022-03-16 11:06:54'),
(14, 127, 10, 'Repair & Maintenance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:58:49', '2022-03-16 11:06:54'),
(15, 122, 10, 'Entertainment Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:59:12', '2022-03-16 11:06:54'),
(16, 122, 10, 'Printing Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:59:28', '2022-03-16 11:06:54'),
(17, 122, 10, 'Stationery Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:59:46', '2022-03-16 11:06:54'),
(18, 128, 10, 'Postage & Courier Bill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:00:20', '2022-03-16 11:06:54'),
(19, 134, 10, 'Internet Bill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:00:44', '2022-03-16 11:06:54'),
(20, 131, 10, 'Travelling Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:01:08', '2022-03-16 11:06:54'),
(21, 122, 10, 'License Renewal Fee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:01:58', '2022-03-16 11:06:54'),
(22, 118, 10, 'Audit Fee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:02:15', '2022-03-16 11:06:54'),
(23, 126, 10, 'Office Rent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:02:35', '2022-03-16 11:06:54'),
(24, 134, 10, 'Fuel & Oil Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:03:19', '2022-03-16 11:06:54'),
(25, 116, 10, 'Insurance Premium', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:03:32', '2022-03-16 11:06:54'),
(26, 123, 10, 'Miscellaneous Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:04:18', '2022-03-16 11:06:54'),
(27, 122, 10, 'Medical Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:06:48', '2022-03-16 11:06:54'),
(28, 104, 10, 'Business Promotional Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:07:05', '2022-03-16 11:06:54'),
(29, 109, 10, 'Donation Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:08:44', '2022-03-16 11:06:54'),
(30, 121, 10, 'Food Allowance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:08:58', '2022-03-16 11:06:54'),
(31, 104, 10, 'Marketing Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:09:25', '2022-03-16 11:06:54'),
(32, 123, 10, 'Other Office Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:09:48', '2022-03-16 11:06:54'),
(33, 122, 10, 'News Paper & Cable-Tv Bill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:10:05', '2022-03-16 11:06:54'),
(34, 130, 10, 'Tax & VAT Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:10:37', '2022-03-16 11:06:54'),
(35, 118, 10, 'Legal Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:10:52', '2022-03-16 11:06:54'),
(36, 108, 10, 'Bank Charges', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:11:11', '2022-03-16 11:06:54'),
(37, 106, 10, 'Rounding Off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:11:51', '2022-03-16 11:06:54'),
(38, 96, 11, 'Rounding Add', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:12:23', '2022-03-16 11:06:54'),
(39, 1, 13, 'Greenland Services Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, -525000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:17:20', '2022-03-09 12:17:20'),
(40, 1, 13, 'Just Juice Limited.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, -363400.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:17:31', '2022-03-09 12:17:31'),
(41, 15, 1, 'Trust Bank Limited', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, -24100.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', '1-admin', '2022-03-09 12:17:50', '2022-03-09 12:18:24'),
(42, 89, 8, 'Software Service Sales', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:18:47', '2022-03-16 11:06:54'),
(43, 89, 8, 'Monthly Subscription', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:19:16', '2022-03-16 11:06:54'),
(44, 1, 13, 'United General Electric Company Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, -59200.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:19:36', '2022-03-09 12:19:36'),
(45, 29, 3, 'Computer-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:20:00', '2022-03-09 12:20:00'),
(46, 125, 10, 'Salary', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 22500.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:20:49', '2022-03-16 11:06:54'),
(47, 1, 13, 'Hasten Business Consulting', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, -373600.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:21:21', '2022-03-09 12:21:21'),
(48, 1, 13, 'Rana Builders (Pvt) Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, -425000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:21:33', '2022-03-09 12:21:33'),
(49, 73, 7, 'Md. Nazmul Hossian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:22:45', '2022-03-09 12:22:45'),
(50, 140, 9, 'Cost of goods sold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-16 10:44:00', '2022-03-16 11:06:54'),
(51, 47, 5, 'Purchase VAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 6750.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-04-15 11:41:21', '2022-04-15 11:41:21'),
(52, 43, 12, 'Farhad Ali', 'Dhaka', NULL, NULL, NULL, 'farhadli05@gmail.com', NULL, 'Dhaka', 0.0000, 44500.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-04-17 13:53:55', '2022-04-17 13:53:55'),
(53, 43, 12, 'Japan Bangla Company', 'Dhaka-1', NULL, NULL, NULL, 'japan@gmail.com', NULL, 'Dhaka', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-04-17 14:00:05', '2022-04-17 14:00:05');

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
(1, 'Head Office', 'Dhaka', '2022-03-03', 'farhadali0507@gmail.com', '01756256562', 1, '1-admin', '1-admin', '2022-03-03 10:35:57', '2022-03-15 03:18:48'),
(2, 'Second Branch', 'Dhaka', '2022-03-05', 'se@gmail.com', '01756256562', 1, '1-admin', NULL, '2022-03-04 12:51:36', '2022-03-04 12:51:36');

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
(1, 'Nazmul Bhai Software', 'Nazmul Bhai Software', 'Mirpur 10, Dhaka 1210', 'Nazmul Bhai Software', 'Farhad', '#', 'images/102220211640126172e96c34493.png', NULL, NULL, NULL, NULL, NULL, '2021-06-06 08:00:54', '2021-10-22 10:40:12', '01756256562', 'farhadali0507@gmail.com');

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
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `_item`, `_code`, `_unit_id`, `_barcode`, `_category_id`, `_image`, `_discount`, `_vat`, `_pur_rate`, `_sale_rate`, `_balance`, `_manufacture_company`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(2, 'Narjo N 30', NULL, 14, NULL, 2, NULL, 0.0000, 0.0000, 13800.0000, 14500.0000, 57, NULL, 1, '1-admin', '1-admin', '2022-04-01 00:42:00', '2022-04-03 02:08:07'),
(3, 'Nokia 1110', NULL, 15, NULL, 2, NULL, 0.0000, 0.0000, 1100.0000, 1400.0000, 169, 'Nokia', 1, '1-admin', NULL, '2022-04-04 01:04:10', '2022-04-04 01:04:10'),
(4, 'Samsung j5', 'j5', 15, 'j5', 2, NULL, 0.0000, 0.0000, 13500.0000, 14500.0000, 70, 'Samsung', 1, '1-admin', NULL, '2022-04-17 14:31:09', '2022-04-17 14:31:09');

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
(1, 0, 'Electronics', NULL, '2022-03-31 10:40:21', '2022-03-31 10:40:21'),
(2, 1, 'Mobile', NULL, '2022-03-31 10:40:43', '2022-03-31 10:44:56');

-- --------------------------------------------------------

--
-- Table structure for table `item_inventories`
--

CREATE TABLE `item_inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_item_id` bigint(20) UNSIGNED NOT NULL,
  `_item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `item_inventories` (`id`, `_item_id`, `_item_name`, `_date`, `_time`, `_transection`, `_transection_ref`, `_transection_detail_ref_id`, `_qty`, `_rate`, `_cost_rate`, `_value`, `_cost_value`, `_branch_id`, `_store_id`, `_cost_center_id`, `_store_salves_id`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, '', '2022-04-16', '16:46:30', 'Purchase', 16, 28, 10.0000, 1400.0000, 1100.0000, 11000.0000, 11000.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 10:46:30', '2022-04-16 10:46:30'),
(2, 2, '', '2022-04-16', '16:46:30', 'Purchase', 16, 29, 5.0000, 14500.0000, 13800.0000, 69000.0000, 69000.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 10:46:30', '2022-04-16 10:46:30'),
(3, 3, '', '2022-04-16', '16:47:59', 'Purchase', 17, 30, 10.0000, 1400.0000, 1100.0000, 11000.0000, 11000.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 10:47:59', '2022-04-16 10:47:59'),
(4, 2, '', '2022-04-16', '16:47:59', 'Purchase', 17, 31, 5.0000, 14500.0000, 13800.0000, 69000.0000, 69000.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 10:47:59', '2022-04-16 10:47:59'),
(5, 3, '', '2022-04-17', '18:11:44', 'Purchase', 18, 32, 5.0000, 1400.0000, 1100.0000, 5500.0000, 5500.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:11:44', '2022-04-16 12:11:44'),
(6, 2, '', '2022-04-17', '18:11:44', 'Purchase', 18, 33, 2.0000, 14500.0000, 13800.0000, 27600.0000, 27600.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:11:44', '2022-04-16 12:11:44'),
(7, 3, '', '2022-04-17', '18:15:11', 'Purchase', 19, 34, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:15:11', '2022-04-16 12:15:11'),
(8, 3, '', '2022-04-17', '18:15:42', 'Purchase', 20, 35, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:15:42', '2022-04-16 12:15:42'),
(9, 3, '', '2022-04-17', '18:15:54', 'Purchase', 21, 36, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:15:54', '2022-04-16 12:15:54'),
(10, 3, '', '2022-04-17', '18:16:17', 'Purchase', 22, 37, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:16:17', '2022-04-16 12:16:17'),
(11, 3, '', '2022-04-17', '18:16:27', 'Purchase', 23, 38, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:16:27', '2022-04-16 12:16:27'),
(12, 3, '', '2022-04-17', '18:16:52', 'Purchase', 24, 39, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:16:52', '2022-04-16 12:16:52'),
(13, 3, '', '2022-04-17', '18:18:30', 'Purchase', 25, 40, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:18:30', '2022-04-16 12:18:30'),
(14, 3, '', '2022-04-17', '18:19:28', 'Purchase', 26, 41, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:19:28', '2022-04-16 12:19:28'),
(15, 3, '', '2022-04-17', '18:20:14', 'Purchase', 27, 42, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:20:14', '2022-04-16 12:20:14'),
(16, 3, '', '2022-04-17', '18:20:58', 'Purchase', 28, 43, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:20:58', '2022-04-16 12:20:58'),
(17, 3, '', '2022-04-17', '18:21:32', 'Purchase', 29, 44, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:21:32', '2022-04-16 12:21:32'),
(18, 3, '', '2022-04-17', '18:21:44', 'Purchase', 30, 45, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:21:44', '2022-04-16 12:21:44'),
(19, 3, '', '2022-04-17', '18:22:05', 'Purchase', 31, 46, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:22:05', '2022-04-16 12:22:05'),
(20, 3, '', '2022-04-17', '18:22:14', 'Purchase', 32, 47, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:22:14', '2022-04-16 12:22:14'),
(21, 3, '', '2022-04-17', '18:22:33', 'Purchase', 33, 48, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:22:33', '2022-04-16 12:22:33'),
(22, 3, '', '2022-04-17', '18:23:10', 'Purchase', 34, 49, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:23:10', '2022-04-16 12:23:10'),
(23, 3, '', '2022-04-17', '18:23:22', 'Purchase', 35, 50, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:23:22', '2022-04-16 12:23:22'),
(24, 3, '', '2022-04-17', '18:23:44', 'Purchase', 36, 51, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:23:44', '2022-04-16 12:23:44'),
(25, 3, '', '2022-04-17', '18:26:56', 'Purchase', 37, 52, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:26:56', '2022-04-16 12:26:56'),
(26, 3, '', '2022-04-17', '18:27:52', 'Purchase', 38, 53, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:27:52', '2022-04-16 12:27:52'),
(27, 3, '', '2022-04-17', '18:28:19', 'Purchase', 39, 54, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:28:19', '2022-04-16 12:28:19'),
(28, 3, '', '2022-04-17', '18:28:33', 'Purchase', 40, 55, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:28:33', '2022-04-16 12:28:33'),
(29, 3, '', '2022-04-17', '18:28:51', 'Purchase', 41, 56, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:28:51', '2022-04-16 12:28:51'),
(30, 3, '', '2022-04-17', '18:29:08', 'Purchase', 42, 57, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:29:08', '2022-04-16 12:29:08'),
(31, 3, '', '2022-04-17', '18:29:39', 'Purchase', 43, 58, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:29:39', '2022-04-16 12:29:39'),
(32, 3, '', '2022-04-17', '18:30:01', 'Purchase', 44, 59, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:30:01', '2022-04-16 12:30:01'),
(33, 3, '', '2022-04-17', '18:31:14', 'Purchase', 45, 60, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:31:14', '2022-04-16 12:31:14'),
(34, 3, '', '2022-04-17', '18:32:09', 'Purchase', 46, 61, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 12:32:09', '2022-04-16 12:32:09'),
(35, 3, 'Nokia 1110', '2022-04-20', '18:40:59', 'Purchase', 47, 62, 3.0000, 1400.0000, 1100.0000, 3300.0000, 3300.0000, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-04-16 12:32:20', '2022-04-19 12:40:59'),
(36, 3, '', '2022-04-17', '20:41:00', 'Purchase', 48, 63, 1.0000, 1400.0000, 1100.0000, 1100.0000, 1100.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 14:41:00', '2022-04-16 14:41:00'),
(37, 2, '', '2022-04-17', '20:44:25', 'Purchase', 49, 64, 1.0000, 14500.0000, 13800.0000, 13800.0000, 13800.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 14:44:25', '2022-04-16 14:44:25'),
(38, 3, '', '2022-04-17', '20:44:25', 'Purchase', 49, 65, 1.0000, 1400.0000, 1100.0000, 1100.0000, 1100.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-16 14:44:25', '2022-04-16 14:44:25'),
(39, 2, 'Narjo N 30', '2022-04-20', '18:40:51', 'Purchase', 50, 66, 1.0000, 14500.0000, 13800.0000, 13800.0000, 13800.0000, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-04-16 15:07:08', '2022-04-19 12:40:51'),
(40, 3, 'Nokia 1110', '2022-04-20', '18:40:51', 'Purchase', 50, 67, 1.0000, 1400.0000, 1100.0000, 1100.0000, 1100.0000, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-04-16 15:07:08', '2022-04-19 12:40:51'),
(41, 3, 'Nokia 1110', '2022-04-20', '18:40:44', 'Purchase', 51, 68, 1.0000, 1400.0000, 1100.0000, 1100.0000, 1100.0000, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-04-17 10:36:26', '2022-04-19 12:40:44'),
(42, 3, 'Nokia 1110', '2022-04-20', '18:40:36', 'Purchase', 52, 69, 1.0000, 1400.0000, 1100.0000, 1100.0000, 1100.0000, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-04-17 10:37:10', '2022-04-19 12:40:36'),
(43, 2, 'Narjo N 30', '2022-04-20', '18:40:29', 'Purchase', 53, 70, 1.0000, 14500.0000, 13800.0000, 13800.0000, 13800.0000, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-04-18 00:36:45', '2022-04-19 12:40:29'),
(44, 4, 'Samsung j5', '2022-04-20', '18:40:29', 'Purchase', 53, 71, 1.0000, 14500.0000, 13500.0000, 13500.0000, 13500.0000, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-04-18 00:36:45', '2022-04-19 12:40:29'),
(45, 2, 'Narjo N 30', '2022-04-20', '17:53:11', 'Purchase', 54, 72, 10.0000, 14500.0000, 13800.0000, 138000.0000, 138000.0000, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-04-18 08:53:20', '2022-04-20 11:53:11'),
(46, 3, '', '2022-04-18', '15:51:15', 'Purchase', 54, 73, 0.0000, 0.0000, 1100.0000, 0.0000, 0.0000, 1, 1, 1, 1, 0, '1-admin', NULL, '2022-04-18 08:53:20', '2022-04-20 11:53:11'),
(47, 4, '', '2022-04-18', '14:53:20', 'Purchase', 54, 74, 0.0000, 0.0000, 13500.0000, 0.0000, 0.0000, 1, 1, 1, 1, 0, '1-admin', NULL, '2022-04-18 08:53:20', '2022-04-20 11:53:11'),
(48, 3, '', '2022-04-18', '15:57:45', 'Purchase', 54, 75, 0.0000, 0.0000, 1100.0000, 0.0000, 0.0000, 1, 1, 1, 1, 0, '1-admin', NULL, '2022-04-18 09:51:15', '2022-04-20 11:53:11'),
(49, 3, 'Nokia 1110', '2022-04-20', '17:53:11', 'Purchase', 54, 76, 10.0000, 1400.0000, 1100.0000, 11000.0000, 11000.0000, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-04-18 09:59:17', '2022-04-20 11:53:11'),
(50, 4, 'Samsung j5', '2022-04-20', '17:53:11', 'Purchase', 54, 77, 10.0000, 14500.0000, 13500.0000, 135000.0000, 135000.0000, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-04-18 09:59:17', '2022-04-20 11:53:11'),
(51, 4, 'Samsung j5', '2022-04-20', '18:40:11', 'Purchase', 55, 78, 1.0000, 14500.0000, 13500.0000, 13500.0000, 13500.0000, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-04-18 10:28:36', '2022-04-19 12:40:11'),
(52, 3, 'Nokia 1110', '2022-04-20', '18:40:11', 'Purchase', 55, 79, 1.0000, 1400.0000, 1100.0000, 1100.0000, 1100.0000, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-04-18 10:28:36', '2022-04-19 12:40:11'),
(53, 4, 'Samsung j5', '2022-04-20', '18:40:03', 'Purchase', 56, 80, 1.0000, 14500.0000, 13500.0000, 13500.0000, 13500.0000, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-04-18 10:29:36', '2022-04-19 12:40:03'),
(54, 3, 'Nokia 1110', '2022-04-20', '18:40:03', 'Purchase', 56, 81, 1.0000, 1400.0000, 1100.0000, 1100.0000, 1100.0000, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-04-18 10:29:36', '2022-04-19 12:40:03'),
(55, 2, '', '2022-04-20', '21:14:07', 'Purchase Return', 7, 2, -1.0000, 14500.0000, 13800.0000, -13800.0000, 13800.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-19 15:14:07', '2022-04-19 15:14:07'),
(56, 3, '', '2022-04-20', '21:14:07', 'Purchase Return', 7, 3, -1.0000, 1400.0000, 1100.0000, -1100.0000, 1100.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-19 15:14:07', '2022-04-19 15:14:07'),
(57, 4, '', '2022-04-20', '21:14:07', 'Purchase Return', 7, 4, -1.0000, 14500.0000, 13500.0000, -13500.0000, 13500.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-19 15:14:07', '2022-04-19 15:14:07'),
(58, 4, '', '2022-04-20', '22:03:19', 'Purchase Return', 8, 5, -1.0000, 14500.0000, 13500.0000, -13500.0000, 13500.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-19 16:03:19', '2022-04-19 16:03:19'),
(59, 3, '', '2022-04-20', '22:03:19', 'Purchase Return', 8, 6, -1.0000, 1400.0000, 1100.0000, -1100.0000, 1100.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-19 16:03:19', '2022-04-19 16:03:19'),
(60, 2, '', '2022-04-20', '22:05:24', 'Purchase Return', 9, 7, -1.0000, 14500.0000, 13800.0000, -13800.0000, 13800.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-19 16:05:24', '2022-04-19 16:05:24'),
(61, 4, '', '2022-04-20', '22:05:24', 'Purchase Return', 9, 8, -1.0000, 14500.0000, 13500.0000, -13500.0000, 13500.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-19 16:05:24', '2022-04-19 16:05:24'),
(62, 4, '', '2022-04-20', '22:19:05', 'Purchase Return', 10, 9, -1.0000, 14500.0000, 13500.0000, -13500.0000, 13500.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-19 16:19:05', '2022-04-19 16:19:05'),
(63, 3, '', '2022-04-20', '22:19:05', 'Purchase Return', 10, 10, -1.0000, 1400.0000, 1100.0000, -1100.0000, 1100.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-19 16:19:05', '2022-04-19 16:19:05'),
(64, 3, 'Nokia 1110', '2022-04-20', '22:20:08', 'Purchase', 57, 82, 6.0000, 1400.0000, 1100.0000, 6600.0000, 6600.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-19 16:20:08', '2022-04-19 16:20:08'),
(65, 4, 'Samsung j5', '2022-04-20', '22:20:08', 'Purchase', 57, 83, 10.0000, 14500.0000, 13500.0000, 135000.0000, 135000.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-19 16:20:08', '2022-04-19 16:20:08'),
(66, 2, 'Narjo N 30', '2022-04-20', '22:20:08', 'Purchase', 57, 84, 10.0000, 14500.0000, 13800.0000, 138000.0000, 138000.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-19 16:20:08', '2022-04-19 16:20:08'),
(67, 3, '', '2022-04-20', '22:20:32', 'Purchase Return', 11, 11, -1.0000, 1400.0000, 1100.0000, -1100.0000, 1100.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-19 16:20:32', '2022-04-19 16:20:32'),
(68, 4, '', '2022-04-20', '22:20:32', 'Purchase Return', 11, 12, -1.0000, 14500.0000, 13500.0000, -13500.0000, 13500.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-19 16:20:32', '2022-04-19 16:20:32'),
(69, 2, '', '2022-04-20', '22:20:32', 'Purchase Return', 11, 13, -1.0000, 14500.0000, 13800.0000, -13800.0000, 13800.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-19 16:20:32', '2022-04-19 16:20:32'),
(70, 3, '', '2022-04-20', '22:25:38', 'Purchase Return', 12, 14, -1.0000, 1400.0000, 1100.0000, -1100.0000, 1100.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-19 16:25:38', '2022-04-19 16:25:38'),
(71, 4, '', '2022-04-20', '22:25:38', 'Purchase Return', 12, 15, -1.0000, 14500.0000, 13500.0000, -13500.0000, 13500.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-19 16:25:38', '2022-04-19 16:25:38'),
(72, 2, '', '2022-04-20', '22:25:38', 'Purchase Return', 12, 16, -1.0000, 14500.0000, 13800.0000, -13800.0000, 13800.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-19 16:25:38', '2022-04-19 16:25:38'),
(73, 3, '', '2022-04-20', '22:25:53', 'Purchase Return', 13, 17, -1.0000, 1400.0000, 1100.0000, -1100.0000, 1100.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-19 16:25:53', '2022-04-19 16:25:53'),
(74, 4, '', '2022-04-20', '22:25:53', 'Purchase Return', 13, 18, -1.0000, 14500.0000, 13500.0000, -13500.0000, 13500.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-19 16:25:53', '2022-04-19 16:25:53'),
(75, 2, '', '2022-04-20', '22:25:53', 'Purchase Return', 13, 19, -1.0000, 14500.0000, 13800.0000, -13800.0000, 13800.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-19 16:25:53', '2022-04-19 16:25:53'),
(76, 3, '', '2022-04-20', '17:33:56', 'Purchase Return', 14, 20, -1.0000, 1400.0000, 1100.0000, -1100.0000, 1100.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 11:33:56', '2022-04-20 11:33:56'),
(77, 3, 'Nokia 1110', '2022-04-20', '17:48:42', 'Purchase', 58, 85, 10.0000, 1400.0000, 1100.0000, 11000.0000, 11000.0000, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-04-20 11:46:08', '2022-04-20 11:48:42'),
(78, 2, 'Narjo N 30', '2022-04-20', '17:48:42', 'Purchase', 58, 86, 10.0000, 14500.0000, 13800.0000, 138000.0000, 138000.0000, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-04-20 11:46:08', '2022-04-20 11:48:42'),
(79, 4, 'Samsung j5', '2022-04-20', '17:48:42', 'Purchase', 58, 87, 10.0000, 14500.0000, 13500.0000, 135000.0000, 135000.0000, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-04-20 11:46:08', '2022-04-20 11:48:42'),
(80, 2, '', '2022-04-20', '17:54:34', 'Purchase Return', 15, 21, -1.0000, 14500.0000, 13800.0000, -13800.0000, 13800.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-20 11:54:34', '2022-04-20 11:54:34'),
(81, 3, '', '2022-04-20', '17:54:34', 'Purchase Return', 15, 22, -1.0000, 1400.0000, 1100.0000, -1100.0000, 1100.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-20 11:54:34', '2022-04-20 11:54:34'),
(82, 4, '', '2022-04-20', '17:54:34', 'Purchase Return', 15, 23, -1.0000, 14500.0000, 13500.0000, -13500.0000, 13500.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-20 11:54:34', '2022-04-20 11:54:34'),
(83, 3, 'Nokia 1110', '2022-04-20', '17:58:03', 'Purchase', 59, 88, 10.0000, 1400.0000, 1100.0000, 11000.0000, 11000.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-20 11:58:03', '2022-04-20 11:58:03'),
(84, 4, 'Samsung j5', '2022-04-20', '17:58:03', 'Purchase', 59, 89, 10.0000, 14500.0000, 13500.0000, 135000.0000, 135000.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-20 11:58:03', '2022-04-20 11:58:03'),
(85, 2, 'Narjo N 30', '2022-04-20', '17:58:03', 'Purchase', 59, 90, 10.0000, 14500.0000, 13800.0000, 138000.0000, 138000.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-20 11:58:03', '2022-04-20 11:58:03'),
(86, 3, '', '2022-04-20', '17:59:11', 'Purchase Return', 16, 24, -1.0000, 1400.0000, 1100.0000, -1100.0000, 1100.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-20 11:59:11', '2022-04-20 11:59:11'),
(87, 4, '', '2022-04-20', '17:59:11', 'Purchase Return', 16, 25, -1.0000, 14500.0000, 13500.0000, -13500.0000, 13500.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-20 11:59:11', '2022-04-20 11:59:11'),
(88, 2, '', '2022-04-20', '17:59:12', 'Purchase Return', 16, 26, -1.0000, 14500.0000, 13800.0000, -13800.0000, 13800.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-20 11:59:12', '2022-04-20 11:59:12'),
(89, 3, '', '2022-04-21', '18:17:06', 'Purchase Return', 17, 27, -1.0000, 1400.0000, 1100.0000, -1100.0000, 1100.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 12:17:06', '2022-04-20 12:17:06'),
(90, 4, '', '2022-04-21', '18:17:06', 'Purchase Return', 17, 28, -1.0000, 14500.0000, 13500.0000, -13500.0000, 13500.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 12:17:06', '2022-04-20 12:17:06'),
(91, 2, '', '2022-04-21', '18:17:06', 'Purchase Return', 17, 29, -1.0000, 14500.0000, 13800.0000, -13800.0000, 13800.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 12:17:06', '2022-04-20 12:17:06'),
(93, 3, '', '2022-04-21', '18:46:15', 'Purchase Return', 19, 31, -1.0000, 1400.0000, 1100.0000, -1100.0000, 1100.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 12:46:15', '2022-04-20 12:46:15'),
(94, 3, 'Nokia 1110', '2022-04-21', '18:53:22', 'Purchase', 60, 91, 10.0000, 1400.0000, 1100.0000, 11000.0000, 11000.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-20 12:53:22', '2022-04-20 12:53:22'),
(95, 2, 'Narjo N 30', '2022-04-21', '18:53:22', 'Purchase', 60, 92, 10.0000, 14500.0000, 13800.0000, 138000.0000, 138000.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-20 12:53:22', '2022-04-20 12:53:22'),
(96, 4, 'Samsung j5', '2022-04-21', '18:53:22', 'Purchase', 60, 93, 10.0000, 14500.0000, 13500.0000, 135000.0000, 135000.0000, 1, 1, 1, 1, 1, '1-admin', NULL, '2022-04-20 12:53:22', '2022-04-20 12:53:22'),
(97, 3, 'Nokia 1110', '2022-04-21', '19:05:30', 'Purchase', 61, 94, 10.0000, 1400.0000, 1100.0000, 11000.0000, 11000.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 13:05:30', '2022-04-20 13:05:30'),
(98, 4, 'Samsung j5', '2022-04-20', '19:08:17', 'Purchase', 62, 95, 10.0000, 14500.0000, 13500.0000, 135000.0000, 135000.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 13:08:17', '2022-04-20 13:08:17'),
(99, 4, 'Samsung j5', '2022-04-21', '19:09:57', 'Purchase', 63, 96, 1.0000, 14500.0000, 13500.0000, 13500.0000, 13500.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 13:09:57', '2022-04-20 13:09:57'),
(100, 4, 'Samsung j5', '2022-04-21', '19:20:04', 'Purchase', 64, 97, 1.0000, 14500.0000, 13500.0000, 13500.0000, 13500.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 13:20:04', '2022-04-20 13:20:04'),
(101, 4, 'Samsung j5', '2022-04-21', '19:20:56', 'Purchase', 65, 98, 1.0000, 14500.0000, 13500.0000, 13500.0000, 13500.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 13:20:56', '2022-04-20 13:20:56'),
(102, 4, 'Samsung j5', '2022-04-21', '19:21:22', 'Purchase', 66, 99, 1.0000, 14500.0000, 13500.0000, 13500.0000, 13500.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 13:21:22', '2022-04-20 13:21:22'),
(103, 4, 'Samsung j5', '2022-04-21', '19:23:30', 'Purchase', 67, 100, 1.0000, 14500.0000, 13500.0000, 13500.0000, 13500.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 13:23:30', '2022-04-20 13:23:30'),
(104, 4, 'Samsung j5', '2022-04-21', '19:24:05', 'Purchase', 68, 101, 1.0000, 14500.0000, 13500.0000, 13500.0000, 13500.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 13:24:05', '2022-04-20 13:24:05'),
(105, 4, 'Samsung j5', '2022-04-21', '19:24:36', 'Purchase', 69, 102, 1.0000, 14500.0000, 13500.0000, 13500.0000, 13500.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 13:24:36', '2022-04-20 13:24:36'),
(106, 3, 'Nokia 1110', '2022-04-19', '19:25:14', 'Purchase', 70, 103, 1.0000, 1400.0000, 1100.0000, 1100.0000, 1100.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 13:25:14', '2022-04-20 13:25:14'),
(107, 2, 'Narjo N 30', '2022-04-21', '19:29:00', 'Purchase', 71, 104, 5.0000, 14500.0000, 13800.0000, 69000.0000, 69000.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 13:29:00', '2022-04-20 13:29:00'),
(108, 4, 'Samsung j5', '2022-04-21', '19:38:38', 'Purchase', 72, 105, 10.0000, 14500.0000, 13500.0000, 135000.0000, 135000.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 13:38:38', '2022-04-20 13:38:38'),
(109, 3, 'Nokia 1110', '2022-04-21', '19:38:38', 'Purchase', 72, 106, 10.0000, 1400.0000, 1100.0000, 11000.0000, 11000.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 13:38:38', '2022-04-20 13:38:38'),
(110, 4, 'Samsung j5', '2022-04-21', '20:46:26', 'Purchase', 73, 107, 5.0000, 14500.0000, 13500.0000, 67500.0000, 67500.0000, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-04-20 13:41:17', '2022-04-20 14:46:26'),
(111, 3, '', '2022-04-21', '19:45:55', 'Purchase Return', 20, 32, -2.0000, 1400.0000, 1100.0000, -2200.0000, 2200.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 13:45:55', '2022-04-20 13:45:55'),
(112, 2, '', '2022-04-21', '19:45:55', 'Purchase Return', 20, 33, -2.0000, 14500.0000, 13800.0000, -27600.0000, 27600.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 13:45:55', '2022-04-20 13:45:55'),
(113, 4, '', '2022-04-21', '19:45:55', 'Purchase Return', 20, 34, -2.0000, 14500.0000, 13500.0000, -27000.0000, 27000.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 13:45:55', '2022-04-20 13:45:55'),
(114, 3, '', '2022-04-21', '19:47:14', 'Purchase Return', 21, 35, -3.0000, 1400.0000, 1100.0000, -3300.0000, 3300.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 13:47:14', '2022-04-20 13:47:14'),
(115, 2, '', '2022-04-21', '19:47:14', 'Purchase Return', 21, 36, -3.0000, 14500.0000, 13800.0000, -41400.0000, 41400.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 13:47:14', '2022-04-20 13:47:14'),
(116, 4, '', '2022-04-21', '19:47:15', 'Purchase Return', 21, 37, -3.0000, 14500.0000, 13500.0000, -40500.0000, 40500.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 13:47:15', '2022-04-20 13:47:15'),
(117, 3, '', '2022-04-21', '20:20:56', 'Purchase Return', 22, 38, -1.0000, 1400.0000, 1100.0000, -1100.0000, 1100.0000, 1, 1, 1, 0, 1, '1-admin', NULL, '2022-04-20 14:20:56', '2022-04-20 14:20:56');

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
(104, '2022_02_01_144705_create_sales_details_table', 17),
(105, '2022_02_01_144722_create_sales_returns_table', 17),
(106, '2022_02_01_144738_create_sales_return_details_table', 17),
(107, '2022_02_01_144830_create_purchase_returns_table', 17),
(108, '2022_02_01_144901_create_purchase_return_details_table', 17),
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
(122, '2022_04_19_202822_create_purchase_return_accounts_table', 22);

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
(71, 'purchase-return-list', 'web', 'Purchase Return', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_price_lists`
--

CREATE TABLE `product_price_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_item_id` bigint(20) UNSIGNED NOT NULL,
  `_item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `product_price_lists` (`id`, `_item_id`, `_item`, `_barcode`, `_manufacture_date`, `_expire_date`, `_qty`, `_sales_rate`, `_pur_rate`, `_sales_discount`, `_sales_vat`, `_value`, `_purchase_detail_id`, `_master_id`, `_branch_id`, `_cost_center_id`, `_store_id`, `_store_salves_id`, `_status`, `_created_by`, `_updated_by`, `updated_at`, `created_at`, `_p_discount_input`, `_p_discount_amount`, `_p_vat`, `_p_vat_amount`) VALUES
(1, 3, '', NULL, NULL, NULL, 10.0000, 1400.0000, 1100.0000, '0', '0', 11000.0000, 28, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 16:46:30', '2022-04-16 16:46:30', 0.0000, 0.0000, 0.0000, 0.0000),
(2, 2, '', NULL, NULL, NULL, 5.0000, 14500.0000, 13800.0000, '0', '0', 69000.0000, 29, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 16:46:30', '2022-04-16 16:46:30', 0.0000, 0.0000, 0.0000, 0.0000),
(3, 3, '', NULL, NULL, NULL, 10.0000, 1400.0000, 1100.0000, '0', '0', 11000.0000, 30, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 16:47:59', '2022-04-16 16:47:59', 0.0000, 0.0000, 0.0000, 0.0000),
(4, 2, '', NULL, NULL, NULL, 5.0000, 14500.0000, 13800.0000, '0', '0', 69000.0000, 31, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 16:47:59', '2022-04-16 16:47:59', 0.0000, 0.0000, 0.0000, 0.0000),
(5, 3, '', NULL, NULL, NULL, 5.0000, 1400.0000, 1100.0000, '0', '0', 5500.0000, 32, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:11:44', '2022-04-16 18:11:44', 0.0000, 0.0000, 0.0000, 0.0000),
(6, 2, '', NULL, NULL, NULL, 2.0000, 14500.0000, 13800.0000, '0', '0', 27600.0000, 33, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:11:44', '2022-04-16 18:11:44', 0.0000, 0.0000, 0.0000, 0.0000),
(7, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 34, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:15:11', '2022-04-16 18:15:11', 0.0000, 0.0000, 0.0000, 0.0000),
(8, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 35, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:15:42', '2022-04-16 18:15:42', 0.0000, 0.0000, 0.0000, 0.0000),
(9, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 36, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:15:54', '2022-04-16 18:15:54', 0.0000, 0.0000, 0.0000, 0.0000),
(10, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 37, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:16:17', '2022-04-16 18:16:17', 0.0000, 0.0000, 0.0000, 0.0000),
(11, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 38, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:16:27', '2022-04-16 18:16:27', 0.0000, 0.0000, 0.0000, 0.0000),
(12, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 39, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:16:52', '2022-04-16 18:16:52', 0.0000, 0.0000, 0.0000, 0.0000),
(13, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 40, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:18:30', '2022-04-16 18:18:30', 0.0000, 0.0000, 0.0000, 0.0000),
(14, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 41, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:19:28', '2022-04-16 18:19:28', 0.0000, 0.0000, 0.0000, 0.0000),
(15, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 42, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:20:14', '2022-04-16 18:20:14', 0.0000, 0.0000, 0.0000, 0.0000),
(16, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 43, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:20:58', '2022-04-16 18:20:58', 0.0000, 0.0000, 0.0000, 0.0000),
(17, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 44, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:21:32', '2022-04-16 18:21:32', 0.0000, 0.0000, 0.0000, 0.0000),
(18, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 45, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:21:44', '2022-04-16 18:21:44', 0.0000, 0.0000, 0.0000, 0.0000),
(19, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 46, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:22:05', '2022-04-16 18:22:05', 0.0000, 0.0000, 0.0000, 0.0000),
(20, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 47, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:22:14', '2022-04-16 18:22:14', 0.0000, 0.0000, 0.0000, 0.0000),
(21, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 48, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:22:33', '2022-04-16 18:22:33', 0.0000, 0.0000, 0.0000, 0.0000),
(22, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 49, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:23:10', '2022-04-16 18:23:10', 0.0000, 0.0000, 0.0000, 0.0000),
(23, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 50, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:23:22', '2022-04-16 18:23:22', 0.0000, 0.0000, 0.0000, 0.0000),
(24, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 51, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:23:44', '2022-04-16 18:23:44', 0.0000, 0.0000, 0.0000, 0.0000),
(25, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 52, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:26:56', '2022-04-16 18:26:56', 0.0000, 0.0000, 0.0000, 0.0000),
(26, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 53, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:27:52', '2022-04-16 18:27:52', 0.0000, 0.0000, 0.0000, 0.0000),
(27, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 54, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:28:19', '2022-04-16 18:28:19', 0.0000, 0.0000, 0.0000, 0.0000),
(28, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 55, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:28:33', '2022-04-16 18:28:33', 0.0000, 0.0000, 0.0000, 0.0000),
(29, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 56, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:28:51', '2022-04-16 18:28:51', 0.0000, 0.0000, 0.0000, 0.0000),
(30, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 57, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:29:08', '2022-04-16 18:29:08', 0.0000, 0.0000, 0.0000, 0.0000),
(31, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 58, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:29:39', '2022-04-16 18:29:39', 0.0000, 0.0000, 0.0000, 0.0000),
(32, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 59, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:30:01', '2022-04-16 18:30:01', 0.0000, 0.0000, 0.0000, 0.0000),
(33, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 60, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:31:14', '2022-04-16 18:31:14', 0.0000, 0.0000, 0.0000, 0.0000),
(34, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 61, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:32:09', '2022-04-16 18:32:09', 0.0000, 0.0000, 0.0000, 0.0000),
(35, 3, '', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 62, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 18:32:20', '2022-04-16 18:32:20', 0.0000, 0.0000, 0.0000, 0.0000),
(36, 3, '', NULL, NULL, NULL, 1.0000, 1400.0000, 1100.0000, '0', '0', 1100.0000, 63, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 20:41:00', '2022-04-16 20:41:00', 0.0000, 0.0000, 0.0000, 0.0000),
(37, 2, '', NULL, NULL, NULL, 1.0000, 14500.0000, 13800.0000, '0', '0', 13800.0000, 64, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 20:44:25', '2022-04-16 20:44:25', 0.0000, 0.0000, 0.0000, 0.0000),
(38, 3, '', NULL, NULL, NULL, 1.0000, 1400.0000, 1100.0000, '0', '0', 1100.0000, 65, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 20:44:25', '2022-04-16 20:44:25', 0.0000, 0.0000, 0.0000, 0.0000),
(39, 2, '', NULL, NULL, NULL, 1.0000, 14500.0000, 13800.0000, '0', '0', 13800.0000, 66, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 21:07:08', '2022-04-16 21:07:08', 0.0000, 0.0000, 0.0000, 0.0000),
(40, 3, '', NULL, NULL, NULL, 1.0000, 1400.0000, 1100.0000, '0', '0', 1100.0000, 67, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-16 21:07:08', '2022-04-16 21:07:08', 0.0000, 0.0000, 0.0000, 0.0000),
(41, 3, '', NULL, NULL, NULL, 1.0000, 1400.0000, 1100.0000, '0', '0', 1100.0000, 68, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-17 16:36:26', '2022-04-17 16:36:26', 0.0000, 0.0000, 0.0000, 0.0000),
(42, 3, '', NULL, NULL, NULL, 1.0000, 1400.0000, 1100.0000, '0', '0', 1100.0000, 69, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-17 16:37:10', '2022-04-17 16:37:10', 0.0000, 0.0000, 0.0000, 0.0000),
(43, 2, '', NULL, NULL, NULL, 1.0000, 14500.0000, 13800.0000, '0', '0', 13800.0000, 70, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-18 06:36:45', '2022-04-18 06:36:45', 0.0000, 0.0000, 0.0000, 0.0000),
(44, 4, '', 'j5', NULL, NULL, 1.0000, 14500.0000, 13500.0000, '0', '0', 13500.0000, 71, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-18 06:36:45', '2022-04-18 06:36:45', 0.0000, 0.0000, 0.0000, 0.0000),
(45, 2, '', NULL, NULL, NULL, 1.0000, 14500.0000, 13800.0000, '0', '0', 13800.0000, 72, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-18 14:53:20', '2022-04-18 14:53:20', 0.0000, 0.0000, 0.0000, 0.0000),
(46, 3, '', NULL, NULL, NULL, 5.0000, 1400.0000, 1100.0000, '0', '0', 5500.0000, 73, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-18 14:53:20', '2022-04-18 14:53:20', 0.0000, 0.0000, 0.0000, 0.0000),
(47, 4, '', 'j5', NULL, NULL, 4.0000, 14500.0000, 13500.0000, '0', '0', 54000.0000, 74, 0, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-18 14:53:20', '2022-04-18 14:53:20', 0.0000, 0.0000, 0.0000, 0.0000),
(48, 2, '', 'null', NULL, NULL, 0.0000, 14500.0000, 13800.0000, '0', '0', 13800.0000, 2, 7, 1, 1, 1, 'null', 1, '1-admin', '1-admin', '2022-04-19 21:14:07', '2022-04-18 15:51:15', 0.0000, 0.0000, 0.0000, 0.0000),
(49, 3, '', NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, '0', '0', 0.0000, 73, 54, 1, 1, 1, NULL, 0, '1-admin', NULL, '2022-04-20 17:53:11', '2022-04-18 15:51:15', 0.0000, 0.0000, 0.0000, 0.0000),
(50, 3, '', NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, '0', '0', 0.0000, 75, 54, 1, 1, 1, NULL, 0, '1-admin', NULL, '2022-04-20 17:53:11', '2022-04-18 15:51:15', 0.0000, 0.0000, 0.0000, 0.0000),
(51, 3, '', 'null', NULL, NULL, 0.0000, 1400.0000, 1100.0000, '0', '0', 1100.0000, 3, 7, 1, 1, 1, 'null', 1, '1-admin', '1-admin', '2022-04-19 21:14:07', '2022-04-18 15:59:17', 0.0000, 0.0000, 0.0000, 0.0000),
(52, 4, '', 'j5', NULL, NULL, 0.0000, 14500.0000, 13500.0000, '0', '0', 13500.0000, 4, 7, 1, 1, 1, 'null', 1, '1-admin', '1-admin', '2022-04-19 21:14:07', '2022-04-18 15:59:17', 0.0000, 0.0000, 0.0000, 0.0000),
(53, 4, '', 'j5', NULL, NULL, 0.0000, 14500.0000, 13500.0000, '0', '0', 13500.0000, 5, 8, 1, 1, 1, 'null', 1, '1-admin', '1-admin', '2022-04-19 22:03:19', '2022-04-18 16:28:36', 0.0000, 0.0000, 0.0000, 0.0000),
(54, 3, '', 'null', NULL, NULL, 0.0000, 1400.0000, 1100.0000, '0', '0', 1100.0000, 6, 8, 1, 1, 1, 'null', 1, '1-admin', '1-admin', '2022-04-19 22:03:19', '2022-04-18 16:28:36', 0.0000, 0.0000, 0.0000, 0.0000),
(55, 4, '', 'j5', NULL, NULL, 0.0000, 14500.0000, 13500.0000, '0', '0', 13500.0000, 9, 10, 1, 1, 1, 'null', 1, '1-admin', '1-admin', '2022-04-19 22:19:05', '2022-04-18 16:29:36', 0.0000, 0.0000, 0.0000, 0.0000),
(56, 3, '', 'null', NULL, NULL, 0.0000, 1400.0000, 1100.0000, '0', '0', 1100.0000, 10, 10, 1, 1, 1, 'null', 1, '1-admin', '1-admin', '2022-04-19 22:19:05', '2022-04-18 16:29:36', 0.0000, 0.0000, 0.0000, 0.0000),
(57, 2, '', 'null', NULL, NULL, 0.0000, 14500.0000, 13800.0000, '0', '0', 13800.0000, 7, 9, 1, 1, 1, 'null', 1, '1-admin', '1-admin', '2022-04-19 22:05:24', '2022-04-19 18:40:29', 0.0000, 0.0000, 0.0000, 0.0000),
(58, 4, '', 'j5', NULL, NULL, 0.0000, 14500.0000, 13500.0000, '0', '0', 13500.0000, 8, 9, 1, 1, 1, 'null', 1, '1-admin', '1-admin', '2022-04-19 22:05:24', '2022-04-19 18:40:29', 0.0000, 0.0000, 0.0000, 0.0000),
(59, 3, 'Nokia 1110', NULL, NULL, NULL, 1.0000, 1400.0000, 1100.0000, '0', '0', 1100.0000, 69, 52, 1, 1, 1, NULL, 1, '1-admin', '1-admin', '2022-04-19 18:40:36', '2022-04-19 18:40:36', 0.0000, 0.0000, 0.0000, 0.0000),
(60, 3, 'Nokia 1110', NULL, NULL, NULL, 1.0000, 1400.0000, 1100.0000, '0', '0', 1100.0000, 68, 51, 1, 1, 1, NULL, 1, '1-admin', '1-admin', '2022-04-19 18:40:44', '2022-04-19 18:40:44', 0.0000, 0.0000, 0.0000, 0.0000),
(61, 2, 'Narjo N 30', NULL, NULL, NULL, 1.0000, 14500.0000, 13800.0000, '0', '0', 13800.0000, 66, 50, 1, 1, 1, NULL, 1, '1-admin', '1-admin', '2022-04-19 18:40:51', '2022-04-19 18:40:51', 0.0000, 0.0000, 0.0000, 0.0000),
(62, 3, 'Nokia 1110', NULL, NULL, NULL, 1.0000, 1400.0000, 1100.0000, '0', '0', 1100.0000, 67, 50, 1, 1, 1, NULL, 1, '1-admin', '1-admin', '2022-04-19 18:40:51', '2022-04-19 18:40:51', 0.0000, 0.0000, 0.0000, 0.0000),
(63, 3, 'Nokia 1110', NULL, NULL, NULL, 3.0000, 1400.0000, 1100.0000, '0', '0', 3300.0000, 62, 47, 1, 1, 1, NULL, 1, '1-admin', '1-admin', '2022-04-19 18:40:59', '2022-04-19 18:40:59', 0.0000, 0.0000, 0.0000, 0.0000),
(64, 3, 'Nokia 1110', 'null', NULL, NULL, 2.0000, 1400.0000, 1100.0000, '0', '0', 1100.0000, 17, 57, 1, 1, 1, 'null', 1, '1-admin', NULL, '2022-04-20 17:33:56', '2022-04-19 22:20:08', 0.0000, 0.0000, 0.0000, 0.0000),
(65, 4, 'Samsung j5', 'j5', NULL, NULL, 7.0000, 14500.0000, 13500.0000, '0', '0', 13500.0000, 18, 57, 1, 1, 1, 'null', 1, '1-admin', NULL, '2022-04-19 22:25:53', '2022-04-19 22:20:08', 0.0000, 0.0000, 0.0000, 0.0000),
(66, 2, 'Narjo N 30', 'null', NULL, NULL, 7.0000, 14500.0000, 13800.0000, '0', '0', 13800.0000, 19, 57, 1, 1, 1, 'null', 1, '1-admin', NULL, '2022-04-19 22:25:53', '2022-04-19 22:20:08', 0.0000, 0.0000, 0.0000, 0.0000),
(67, 3, 'Nokia 1110', NULL, NULL, NULL, 10.0000, 1400.0000, 1100.0000, '0', '0', 11000.0000, 85, 58, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-04-20 17:48:42', '2022-04-20 17:46:08', 0.0000, 0.0000, 0.0000, 0.0000),
(68, 2, 'Narjo N 30', NULL, NULL, NULL, 10.0000, 14500.0000, 13800.0000, '0', '0', 138000.0000, 86, 58, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-04-20 17:48:42', '2022-04-20 17:46:08', 0.0000, 0.0000, 0.0000, 0.0000),
(69, 4, 'Samsung j5', 'j5', NULL, NULL, 10.0000, 14500.0000, 13500.0000, '0', '0', 135000.0000, 87, 58, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-04-20 17:48:42', '2022-04-20 17:46:08', 0.0000, 0.0000, 0.0000, 0.0000),
(70, 2, 'Narjo N 30', NULL, NULL, NULL, 9.0000, 14500.0000, 13800.0000, '0', '0', 138000.0000, 72, 54, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-04-20 17:54:34', '2022-04-20 17:53:11', 0.0000, 0.0000, 0.0000, 0.0000),
(71, 3, 'Nokia 1110', NULL, NULL, NULL, 9.0000, 1400.0000, 1100.0000, '0', '0', 11000.0000, 76, 54, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-04-20 17:54:34', '2022-04-20 17:53:11', 0.0000, 0.0000, 0.0000, 0.0000),
(72, 4, 'Samsung j5', 'j5', NULL, NULL, 9.0000, 14500.0000, 13500.0000, '0', '0', 135000.0000, 77, 54, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-04-20 17:54:34', '2022-04-20 17:53:11', 0.0000, 0.0000, 0.0000, 0.0000),
(73, 3, 'Nokia 1110', NULL, NULL, NULL, 7.0000, 1400.0000, 1100.0000, '0', '0', 11000.0000, 88, 59, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-20 18:46:15', '2022-04-20 17:58:03', 0.0000, 0.0000, 0.0000, 0.0000),
(74, 4, 'Samsung j5', 'j5', NULL, NULL, 8.0000, 14500.0000, 13500.0000, '0', '0', 135000.0000, 89, 59, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-20 18:17:06', '2022-04-20 17:58:03', 0.0000, 0.0000, 0.0000, 0.0000),
(75, 2, 'Narjo N 30', NULL, NULL, NULL, 8.0000, 14500.0000, 13800.0000, '0', '0', 138000.0000, 90, 59, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-20 18:17:06', '2022-04-20 17:58:03', 0.0000, 0.0000, 0.0000, 0.0000),
(76, 3, 'Nokia 1110', NULL, NULL, NULL, 4.0000, 1400.0000, 1100.0000, '0', '0', 11000.0000, 91, 60, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-20 20:20:56', '2022-04-20 18:53:22', 0.0000, 0.0000, 0.0000, 0.0000),
(77, 2, 'Narjo N 30', NULL, NULL, NULL, 5.0000, 14500.0000, 13800.0000, '0', '0', 138000.0000, 92, 60, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-20 19:47:14', '2022-04-20 18:53:22', 0.0000, 0.0000, 0.0000, 0.0000),
(78, 4, 'Samsung j5', 'j5', NULL, NULL, 5.0000, 14500.0000, 13500.0000, '0', '0', 135000.0000, 93, 60, 1, 1, 1, NULL, 1, '1-admin', NULL, '2022-04-20 19:47:14', '2022-04-20 18:53:22', 0.0000, 0.0000, 0.0000, 0.0000),
(79, 3, 'Nokia 1110', '', NULL, NULL, 10.0000, 1400.0000, 1100.0000, '0', '0', 11000.0000, 94, 61, 1, 1, 1, '', 1, '1-admin', NULL, '2022-04-20 19:05:30', '2022-04-20 19:05:30', 0.0000, 0.0000, 0.0000, 0.0000),
(80, 4, 'Samsung j5', 'j5', NULL, NULL, 10.0000, 14500.0000, 13500.0000, '0', '0', 135000.0000, 95, 62, 1, 1, 1, '', 1, '1-admin', NULL, '2022-04-20 19:08:17', '2022-04-20 19:08:17', 0.0000, 0.0000, 0.0000, 0.0000),
(81, 4, 'Samsung j5', 'j5', NULL, NULL, 1.0000, 14500.0000, 13500.0000, '0', '0', 13500.0000, 96, 63, 1, 1, 1, '', 1, '1-admin', NULL, '2022-04-20 19:09:57', '2022-04-20 19:09:57', 0.0000, 0.0000, 0.0000, 0.0000),
(82, 4, 'Samsung j5', 'j5', NULL, NULL, 1.0000, 14500.0000, 13500.0000, '0', '0', 13500.0000, 97, 64, 1, 1, 1, '', 1, '1-admin', NULL, '2022-04-20 19:20:04', '2022-04-20 19:20:04', 0.0000, 0.0000, 0.0000, 0.0000),
(83, 4, 'Samsung j5', 'j5', NULL, NULL, 1.0000, 14500.0000, 13500.0000, '0', '0', 13500.0000, 98, 65, 1, 1, 1, '', 1, '1-admin', NULL, '2022-04-20 19:20:56', '2022-04-20 19:20:56', 0.0000, 0.0000, 0.0000, 0.0000),
(84, 4, 'Samsung j5', 'j5', NULL, NULL, 1.0000, 14500.0000, 13500.0000, '0', '0', 13500.0000, 99, 66, 1, 1, 1, '', 1, '1-admin', NULL, '2022-04-20 19:21:22', '2022-04-20 19:21:22', 0.0000, 0.0000, 0.0000, 0.0000),
(85, 4, 'Samsung j5', 'j5', NULL, NULL, 1.0000, 14500.0000, 13500.0000, '0', '0', 13500.0000, 100, 67, 1, 1, 1, '', 1, '1-admin', NULL, '2022-04-20 19:23:30', '2022-04-20 19:23:30', 0.0000, 0.0000, 0.0000, 0.0000),
(86, 4, 'Samsung j5', 'j5', NULL, NULL, 1.0000, 14500.0000, 13500.0000, '0', '0', 13500.0000, 101, 68, 1, 1, 1, '', 1, '1-admin', NULL, '2022-04-20 19:24:05', '2022-04-20 19:24:05', 0.0000, 0.0000, 0.0000, 0.0000),
(87, 4, 'Samsung j5', 'j5', NULL, NULL, 1.0000, 14500.0000, 13500.0000, '0', '0', 13500.0000, 102, 69, 1, 1, 1, '', 1, '1-admin', NULL, '2022-04-20 19:24:36', '2022-04-20 19:24:36', 0.0000, 0.0000, 0.0000, 0.0000),
(88, 3, 'Nokia 1110', '', NULL, NULL, 1.0000, 1400.0000, 1100.0000, '0', '0', 1100.0000, 103, 70, 1, 1, 1, '', 1, '1-admin', NULL, '2022-04-20 19:25:14', '2022-04-20 19:25:14', 0.0000, 0.0000, 0.0000, 0.0000),
(89, 2, 'Narjo N 30', '', NULL, NULL, 5.0000, 14500.0000, 13800.0000, '0', '0', 69000.0000, 104, 71, 1, 1, 1, '', 1, '1-admin', NULL, '2022-04-20 19:29:00', '2022-04-20 19:29:00', 0.0000, 0.0000, 0.0000, 0.0000),
(90, 4, 'Samsung j5', 'j5', NULL, NULL, 10.0000, 14500.0000, 13500.0000, '0', '0', 135000.0000, 105, 72, 1, 1, 1, '', 1, '1-admin', NULL, '2022-04-20 19:38:38', '2022-04-20 19:38:38', 0.0000, 0.0000, 0.0000, 0.0000),
(91, 3, 'Nokia 1110', '', NULL, NULL, 10.0000, 1400.0000, 1100.0000, '0', '0', 11000.0000, 106, 72, 1, 1, 1, '', 1, '1-admin', NULL, '2022-04-20 19:38:38', '2022-04-20 19:38:38', 0.0000, 0.0000, 0.0000, 0.0000),
(92, 4, 'Samsung j5', 'j5', NULL, NULL, 5.0000, 14500.0000, 13500.0000, '0', '0', 67500.0000, 107, 73, 1, 1, 1, '1', 1, '1-admin', '1-admin', '2022-04-20 20:46:26', '2022-04-20 19:41:17', 0.0000, 0.0000, 10.0000, 6750.0000);

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

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `_order_number`, `_date`, `_time`, `_order_ref_id`, `_referance`, `_ledger_id`, `_user_id`, `_user_name`, `_note`, `_sub_total`, `_discount_input`, `_total_discount`, `_total_vat`, `_total`, `_branch_id`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, NULL, '2022-04-15', '19:29:47', NULL, NULL, 39, 1, 'admin', 'purchase', 14900.0000, 900.0000, 900.0000, 0.0000, 14000.0000, 1, 1, '1-admin', NULL, '2022-04-15 13:29:47', '2022-04-15 13:29:47'),
(2, NULL, '2022-04-15', '19:30:33', NULL, NULL, 39, 1, 'admin', 'purchase', 14900.0000, 900.0000, 900.0000, 0.0000, 14000.0000, 1, 1, '1-admin', NULL, '2022-04-15 13:30:33', '2022-04-15 13:30:33'),
(3, NULL, '2022-04-15', '19:31:04', NULL, NULL, 39, 1, 'admin', 'purchase', 14900.0000, 900.0000, 900.0000, 0.0000, 14000.0000, 1, 1, '1-admin', NULL, '2022-04-15 13:31:04', '2022-04-15 13:31:04'),
(4, NULL, '2022-04-15', '19:31:28', NULL, NULL, 39, 1, 'admin', 'purchase', 14900.0000, 900.0000, 900.0000, 0.0000, 14000.0000, 1, 1, '1-admin', NULL, '2022-04-15 13:31:28', '2022-04-15 13:31:28'),
(5, NULL, '2022-04-15', '19:31:58', NULL, NULL, 39, 1, 'admin', 'purchase', 14900.0000, 900.0000, 900.0000, 0.0000, 14000.0000, 1, 1, '1-admin', NULL, '2022-04-15 13:31:58', '2022-04-15 13:31:58'),
(6, NULL, '2022-04-16', '19:32:49', NULL, NULL, 39, 1, 'admin', 'purchase', 14900.0000, 0.0000, 0.0000, 0.0000, 14900.0000, 1, 1, '1-admin', NULL, '2022-04-15 13:32:49', '2022-04-15 13:32:49'),
(7, NULL, '2022-04-16', '20:12:40', NULL, NULL, 39, 1, 'admin', 'purchase', 14900.0000, 0.0000, 0.0000, 0.0000, 14900.0000, 1, 1, '1-admin', NULL, '2022-04-15 14:12:40', '2022-04-15 14:12:40'),
(8, NULL, '2022-04-16', '20:16:19', NULL, NULL, 39, 1, 'admin', 'purchase', 14900.0000, 0.0000, 0.0000, 0.0000, 14900.0000, 1, 1, '1-admin', NULL, '2022-04-15 14:16:19', '2022-04-15 14:16:19'),
(9, NULL, '2022-04-16', '20:16:30', NULL, NULL, 39, 1, 'admin', 'purchase', 14900.0000, 0.0000, 0.0000, 0.0000, 14900.0000, 1, 1, '1-admin', NULL, '2022-04-15 14:16:30', '2022-04-15 14:16:30'),
(10, NULL, '2022-04-16', '20:16:40', NULL, NULL, 39, 1, 'admin', 'purchase', 14900.0000, 0.0000, 0.0000, 0.0000, 14900.0000, 1, 1, '1-admin', NULL, '2022-04-15 14:16:40', '2022-04-15 14:16:40'),
(11, NULL, '2022-04-16', '20:18:10', NULL, NULL, 39, 1, 'admin', 'purchase', 14900.0000, 0.0000, 0.0000, 0.0000, 14900.0000, 1, 1, '1-admin', NULL, '2022-04-15 14:18:10', '2022-04-15 14:18:10'),
(12, NULL, '2022-04-16', '20:19:14', NULL, NULL, 39, 1, 'admin', 'purchase', 14900.0000, 0.0000, 0.0000, 0.0000, 14900.0000, 1, 1, '1-admin', NULL, '2022-04-15 14:19:14', '2022-04-15 14:19:14'),
(13, NULL, '2022-04-16', '20:20:32', NULL, NULL, 39, 1, 'admin', 'purchase', 14900.0000, 0.0000, 0.0000, 0.0000, 14900.0000, 1, 1, '1-admin', NULL, '2022-04-15 14:20:32', '2022-04-15 14:20:32'),
(14, NULL, '2022-04-16', '20:21:56', NULL, NULL, 39, 1, 'admin', 'purchase', 14900.0000, 0.0000, 0.0000, 0.0000, 14900.0000, 1, 1, '1-admin', NULL, '2022-04-15 14:21:56', '2022-04-15 14:21:56'),
(15, NULL, '2022-04-16', '16:45:32', NULL, NULL, 48, 1, 'admin', 'Due purchase', 80000.0000, 1000.0000, 1000.0000, 0.0000, 79000.0000, 1, 1, '1-admin', NULL, '2022-04-16 10:45:32', '2022-04-16 10:45:32'),
(16, NULL, '2022-04-16', '16:46:30', NULL, NULL, 48, 1, 'admin', 'Due purchase', 80000.0000, 1000.0000, 1000.0000, 0.0000, 79000.0000, 1, 1, '1-admin', NULL, '2022-04-16 10:46:30', '2022-04-16 10:46:30'),
(17, NULL, '2022-04-16', '16:47:59', NULL, NULL, 48, 1, 'admin', 'Due purchase', 80000.0000, 1000.0000, 1000.0000, 0.0000, 79000.0000, 1, 1, '1-admin', NULL, '2022-04-16 10:47:59', '2022-04-16 10:47:59'),
(18, NULL, '2022-04-17', '18:11:44', NULL, NULL, 48, 1, 'admin', 'Due Purchase', 33100.0000, 100.0000, 100.0000, 0.0000, 33000.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:11:44', '2022-04-16 12:11:44'),
(19, NULL, '2022-04-17', '18:15:11', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:15:11', '2022-04-16 12:15:11'),
(20, NULL, '2022-04-17', '18:15:42', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:15:42', '2022-04-16 12:15:42'),
(21, NULL, '2022-04-17', '18:15:54', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:15:54', '2022-04-16 12:15:54'),
(22, NULL, '2022-04-17', '18:16:17', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:16:17', '2022-04-16 12:16:17'),
(23, NULL, '2022-04-17', '18:16:27', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:16:27', '2022-04-16 12:16:27'),
(24, NULL, '2022-04-17', '18:16:52', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:16:52', '2022-04-16 12:16:52'),
(25, NULL, '2022-04-17', '18:18:30', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:18:30', '2022-04-16 12:18:30'),
(26, NULL, '2022-04-17', '18:19:28', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:19:28', '2022-04-16 12:19:28'),
(27, NULL, '2022-04-17', '18:20:14', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:20:14', '2022-04-16 12:20:14'),
(28, NULL, '2022-04-17', '18:20:58', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:20:58', '2022-04-16 12:20:58'),
(29, NULL, '2022-04-17', '18:21:32', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:21:32', '2022-04-16 12:21:32'),
(30, NULL, '2022-04-17', '18:21:44', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:21:44', '2022-04-16 12:21:44'),
(31, NULL, '2022-04-17', '18:22:05', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:22:05', '2022-04-16 12:22:05'),
(32, NULL, '2022-04-17', '18:22:14', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:22:14', '2022-04-16 12:22:14'),
(33, NULL, '2022-04-17', '18:22:33', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:22:33', '2022-04-16 12:22:33'),
(34, NULL, '2022-04-17', '18:23:10', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:23:10', '2022-04-16 12:23:10'),
(35, NULL, '2022-04-17', '18:23:22', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:23:22', '2022-04-16 12:23:22'),
(36, NULL, '2022-04-17', '18:23:44', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:23:44', '2022-04-16 12:23:44'),
(37, NULL, '2022-04-17', '18:26:56', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:26:56', '2022-04-16 12:26:56'),
(38, NULL, '2022-04-17', '18:27:52', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:27:52', '2022-04-16 12:27:52'),
(39, NULL, '2022-04-17', '18:28:19', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:28:19', '2022-04-16 12:28:19'),
(40, NULL, '2022-04-17', '18:28:33', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:28:33', '2022-04-16 12:28:33'),
(41, NULL, '2022-04-17', '18:28:51', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:28:51', '2022-04-16 12:28:51'),
(42, NULL, '2022-04-17', '18:29:08', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:29:08', '2022-04-16 12:29:08'),
(43, NULL, '2022-04-17', '18:29:39', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:29:39', '2022-04-16 12:29:39'),
(44, NULL, '2022-04-17', '18:30:01', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:30:01', '2022-04-16 12:30:01'),
(45, NULL, '2022-04-17', '18:31:14', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:31:14', '2022-04-16 12:31:14'),
(46, NULL, '2022-04-17', '18:32:09', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', NULL, '2022-04-16 12:32:09', '2022-04-16 12:32:09'),
(47, NULL, '2022-04-20', '18:40:59', NULL, NULL, 39, 1, 'admin', 'Due Purchase', 3300.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1-admin', '1-admin', '2022-04-16 12:32:20', '2022-04-19 12:40:59'),
(48, NULL, '2022-04-17', '20:41:00', NULL, NULL, 44, 1, 'admin', 'due', 1100.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1-admin', NULL, '2022-04-16 14:41:00', '2022-04-16 14:41:00'),
(49, NULL, '2022-04-17', '20:44:25', NULL, NULL, 44, 1, 'admin', 'due purchase', 14900.0000, 0.0000, 0.0000, 0.0000, 14900.0000, 1, 1, '1-admin', NULL, '2022-04-16 14:44:25', '2022-04-16 14:44:25'),
(50, NULL, '2022-04-20', '18:40:51', NULL, NULL, 44, 1, 'admin', 'p', 14900.0000, 900.0000, 900.0000, 0.0000, 14000.0000, 1, 1, '1-admin', '1-admin', '2022-04-16 15:07:08', '2022-04-19 12:40:51'),
(51, NULL, '2022-04-20', '18:40:44', NULL, NULL, 47, 1, 'admin', 'p', 1100.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1-admin', '1-admin', '2022-04-17 10:36:26', '2022-04-19 12:40:44'),
(52, NULL, '2022-04-20', '18:40:36', NULL, NULL, 47, 1, 'admin', 'p', 1100.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1-admin', '1-admin', '2022-04-17 10:37:10', '2022-04-19 12:40:36'),
(53, NULL, '2022-04-20', '18:40:29', NULL, NULL, 39, 1, 'admin', 'p', 27300.0000, 0.0000, 0.0000, 0.0000, 27300.0000, 1, 1, '1-admin', '1-admin', '2022-04-18 00:36:45', '2022-04-19 12:40:29'),
(54, NULL, '2022-04-20', '17:53:11', NULL, 'Cash purchase', 39, 1, 'admin', 'Purchase with cash', 284000.0000, 0.0000, 0.0000, 0.0000, 284000.0000, 1, 1, '1-admin', '1-admin', '2022-04-18 08:53:20', '2022-04-20 11:53:11'),
(55, NULL, '2022-04-20', '18:40:11', NULL, NULL, 39, 1, 'admin', 'purchase', 14600.0000, 0.0000, 0.0000, 0.0000, 14600.0000, 1, 1, '1-admin', '1-admin', '2022-04-18 10:28:36', '2022-04-19 12:40:11'),
(56, NULL, '2022-04-20', '18:40:03', NULL, NULL, 44, 1, 'admin', 'purchase', 14600.0000, 0.0000, 0.0000, 0.0000, 14600.0000, 1, 1, '1-admin', '1-admin', '2022-04-18 10:29:36', '2022-04-19 12:40:03'),
(57, NULL, '2022-04-20', '22:20:08', NULL, NULL, 40, 1, 'admin', 'pr', 279600.0000, 0.0000, 0.0000, 0.0000, 279600.0000, 1, 1, '1-admin', NULL, '2022-04-19 16:20:08', '2022-04-19 16:20:08'),
(58, NULL, '2022-04-20', '17:48:42', NULL, NULL, 48, 1, 'admin', 'purchase', 284000.0000, 0.0000, 0.0000, 0.0000, 284000.0000, 1, 1, '1-admin', '1-admin', '2022-04-20 11:46:08', '2022-04-20 11:48:42'),
(59, NULL, '2022-04-20', '17:58:03', NULL, NULL, 47, 1, 'admin', 'purchase', 284000.0000, 0.0000, 0.0000, 0.0000, 284000.0000, 1, 1, '1-admin', NULL, '2022-04-20 11:58:03', '2022-04-20 11:58:03'),
(60, NULL, '2022-04-21', '18:53:22', NULL, NULL, 52, 1, 'admin', 'purchase', 284000.0000, 0.0000, 0.0000, 0.0000, 284000.0000, 1, 1, '1-admin', NULL, '2022-04-20 12:53:22', '2022-04-20 12:53:22'),
(61, NULL, '2022-04-21', '19:05:30', NULL, NULL, 52, 1, 'admin', 'pur', 11000.0000, 0.0000, 0.0000, 0.0000, 11000.0000, 1, 1, '1-admin', NULL, '2022-04-20 13:05:30', '2022-04-20 13:05:30'),
(62, NULL, '2022-04-20', '19:08:17', NULL, NULL, 52, 1, 'admin', 'p', 135000.0000, 0.0000, 0.0000, 0.0000, 135000.0000, 1, 1, '1-admin', NULL, '2022-04-20 13:08:17', '2022-04-20 13:08:17'),
(63, NULL, '2022-04-21', '19:09:57', NULL, NULL, 52, 1, 'admin', 'p', 13500.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 1, 1, '1-admin', NULL, '2022-04-20 13:09:57', '2022-04-20 13:09:57'),
(64, NULL, '2022-04-21', '19:20:03', NULL, NULL, 52, 1, 'admin', 'p', 13500.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 1, 1, '1-admin', NULL, '2022-04-20 13:20:03', '2022-04-20 13:20:03'),
(65, NULL, '2022-04-21', '19:20:56', NULL, NULL, 52, 1, 'admin', 'p', 13500.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 1, 1, '1-admin', NULL, '2022-04-20 13:20:56', '2022-04-20 13:20:56'),
(66, NULL, '2022-04-21', '19:21:22', NULL, NULL, 52, 1, 'admin', 'p', 13500.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 1, 1, '1-admin', NULL, '2022-04-20 13:21:22', '2022-04-20 13:21:22'),
(67, NULL, '2022-04-21', '19:23:30', NULL, NULL, 52, 1, 'admin', 'p', 13500.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 1, 1, '1-admin', NULL, '2022-04-20 13:23:30', '2022-04-20 13:23:30'),
(68, NULL, '2022-04-21', '19:24:05', NULL, NULL, 52, 1, 'admin', 'p', 13500.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 1, 1, '1-admin', NULL, '2022-04-20 13:24:05', '2022-04-20 13:24:05'),
(69, NULL, '2022-04-21', '19:24:36', NULL, NULL, 52, 1, 'admin', 'p', 13500.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 1, 1, '1-admin', NULL, '2022-04-20 13:24:36', '2022-04-20 13:24:36'),
(70, NULL, '2022-04-19', '19:25:14', NULL, NULL, 52, 1, 'admin', 'p', 1100.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1-admin', NULL, '2022-04-20 13:25:14', '2022-04-20 13:25:14'),
(71, NULL, '2022-04-21', '19:29:00', NULL, NULL, 52, 1, 'admin', 'p', 69000.0000, 0.0000, 0.0000, 0.0000, 69000.0000, 1, 1, '1-admin', NULL, '2022-04-20 13:29:00', '2022-04-20 13:29:00'),
(72, NULL, '2022-04-21', '19:38:38', NULL, NULL, 52, 1, 'admin', 'pur', 146000.0000, 0.0000, 0.0000, 0.0000, 146000.0000, 1, 1, '1-admin', NULL, '2022-04-20 13:38:38', '2022-04-20 13:38:38'),
(73, NULL, '2022-04-21', '20:46:26', NULL, NULL, 52, 1, 'admin', 'purchase', 67500.0000, 500.0000, 500.0000, 6750.0000, 73750.0000, 1, 1, '1-admin', '1-admin', '2022-04-20 13:41:17', '2022-04-20 14:46:26');

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
(1, 16, 11, 96, 6, 0.0000, 500.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 10:46:31', '2022-04-16 10:46:31'),
(2, 16, 13, 1, 48, 0.0000, 0.0000, NULL, 1, 0, 'N/A', 1, '1-admin', NULL, '2022-04-16 10:46:31', '2022-04-16 10:46:31'),
(3, 17, 11, 96, 6, 0.0000, 500.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 10:47:59', '2022-04-16 10:47:59'),
(4, 17, 13, 1, 48, 0.0000, 0.0000, NULL, 1, 0, 'N/A', 1, '1-admin', NULL, '2022-04-16 10:47:59', '2022-04-16 10:47:59'),
(5, 18, 10, 125, 46, 500.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:11:44', '2022-04-16 12:11:44'),
(6, 18, 1, 16, 1, 0.0000, 0.0000, NULL, 1, 0, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:11:44', '2022-04-16 12:11:44'),
(7, 19, 10, 125, 46, 1000.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:15:11', '2022-04-16 12:15:11'),
(8, 25, 10, 125, 46, 1000.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:18:30', '2022-04-16 12:18:30'),
(9, 26, 10, 125, 46, 1000.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:19:28', '2022-04-16 12:19:28'),
(10, 27, 10, 125, 46, 1000.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:20:14', '2022-04-16 12:20:14'),
(11, 28, 10, 125, 46, 1000.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:20:58', '2022-04-16 12:20:58'),
(12, 29, 10, 125, 46, 1000.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:21:32', '2022-04-16 12:21:32'),
(13, 30, 10, 125, 46, 1000.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:21:44', '2022-04-16 12:21:44'),
(14, 30, 1, 16, 1, 0.0000, 0.0000, NULL, 1, 0, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:21:44', '2022-04-16 12:21:44'),
(15, 31, 10, 125, 46, 1000.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:22:05', '2022-04-16 12:22:05'),
(16, 31, 1, 16, 1, 0.0000, 0.0000, NULL, 1, 0, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:22:05', '2022-04-16 12:22:05'),
(17, 32, 10, 125, 46, 1000.0000, 1000.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:22:14', '2022-04-16 12:22:14'),
(18, 33, 10, 125, 46, 1000.0000, 1000.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:22:33', '2022-04-16 12:22:33'),
(19, 34, 10, 125, 46, 1000.0000, 1000.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:23:10', '2022-04-16 12:23:10'),
(20, 35, 10, 125, 46, 1000.0000, 1000.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:23:22', '2022-04-16 12:23:22'),
(21, 36, 10, 125, 46, 1000.0000, 1000.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:23:44', '2022-04-16 12:23:44'),
(22, 37, 10, 125, 46, 1000.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:26:56', '2022-04-16 12:26:56'),
(23, 43, 10, 125, 46, 1000.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:29:39', '2022-04-16 12:29:39'),
(24, 43, 1, 16, 1, 0.0000, 1000.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:29:39', '2022-04-16 12:29:39'),
(25, 44, 10, 125, 46, 1000.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:30:01', '2022-04-16 12:30:01'),
(26, 45, 10, 125, 46, 1000.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:31:14', '2022-04-16 12:31:14'),
(27, 45, 1, 16, 1, 0.0000, 1000.0000, NULL, 1, 0, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:31:14', '2022-04-16 12:31:14'),
(28, 46, 10, 125, 46, 1000.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:32:09', '2022-04-16 12:32:09'),
(29, 46, 1, 16, 1, 0.0000, 1000.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-16 12:32:09', '2022-04-16 12:32:09'),
(30, 47, 10, 125, 46, 1000.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '1-admin', '1-admin', '2022-04-16 12:32:20', '2022-04-19 12:40:59'),
(31, 47, 1, 16, 1, 0.0000, 1000.0000, NULL, 1, 1, 'N/A', 1, '1-admin', '1-admin', '2022-04-16 12:32:20', '2022-04-19 12:40:59'),
(32, 50, 10, 125, 46, 5000.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '1-admin', '1-admin', '2022-04-16 15:07:08', '2022-04-19 12:40:51'),
(33, 50, 1, 16, 1, 0.0000, 5000.0000, NULL, 1, 1, 'N/A', 1, '1-admin', '1-admin', '2022-04-16 15:07:09', '2022-04-19 12:40:51'),
(34, 54, 13, 1, 39, 28400.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '1-admin', '1-admin', '2022-04-18 08:53:20', '2022-04-20 11:53:11'),
(35, 54, 1, 16, 1, 0.0000, 28400.0000, NULL, 1, 1, 'N/A', 1, '1-admin', '1-admin', '2022-04-18 08:53:20', '2022-04-20 11:53:11'),
(36, 54, 11, 96, 6, 0.0000, 0.0000, NULL, 1, 1, 'N/A', 0, '1-admin', NULL, '2022-04-18 08:53:20', '2022-04-20 11:53:11'),
(37, 72, 12, 43, 52, 146000.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-20 13:38:38', '2022-04-20 13:38:38'),
(38, 72, 1, 16, 1, 0.0000, 146000.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-20 13:38:39', '2022-04-20 13:38:39'),
(39, 73, 12, 43, 52, 73750.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '1-admin', '1-admin', '2022-04-20 13:41:17', '2022-04-20 14:46:26'),
(40, 73, 1, 16, 1, 0.0000, 67000.0000, NULL, 1, 1, 'N/A', 1, '1-admin', '1-admin', '2022-04-20 13:41:17', '2022-04-20 14:46:26'),
(41, 73, 1, 15, 41, 0.0000, 6750.0000, NULL, 1, 1, 'N/A', 0, '1-admin', '1-admin', '2022-04-20 13:41:18', '2022-04-20 14:46:26'),
(42, 73, 1, 16, 1, 0.0000, 6750.0000, NULL, 1, 1, 'N/A', 0, NULL, '1-admin', '2022-04-20 14:46:17', '2022-04-20 14:46:26'),
(43, 73, 1, 15, 41, 0.0000, 6750.0000, NULL, 1, 1, 'N/A', 1, NULL, '1-admin', '2022-04-20 14:46:26', '2022-04-20 14:46:26');

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

INSERT INTO `purchase_details` (`id`, `_item_id`, `_qty`, `_barcode`, `_rate`, `_sales_rate`, `_discount`, `_discount_amount`, `_vat`, `_vat_amount`, `_value`, `_store_id`, `_cost_center_id`, `_store_salves_id`, `_no`, `_branch_id`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 1.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 1, 1, '1', 2, 1, 1, '1-admin', NULL, '2022-04-15 13:30:33', '2022-04-15 13:30:33'),
(2, 3, 1.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1', 2, 1, 1, '1-admin', NULL, '2022-04-15 13:30:33', '2022-04-15 13:30:33'),
(3, 2, 1.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 1, 1, '1', 3, 1, 1, '1-admin', NULL, '2022-04-15 13:31:04', '2022-04-15 13:31:04'),
(4, 3, 1.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1', 3, 1, 1, '1-admin', NULL, '2022-04-15 13:31:04', '2022-04-15 13:31:04'),
(5, 2, 1.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 1, 1, '1', 4, 1, 1, '1-admin', NULL, '2022-04-15 13:31:28', '2022-04-15 13:31:28'),
(6, 3, 1.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1', 4, 1, 1, '1-admin', NULL, '2022-04-15 13:31:28', '2022-04-15 13:31:28'),
(7, 2, 1.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 1, 1, '1', 5, 1, 1, '1-admin', NULL, '2022-04-15 13:31:58', '2022-04-15 13:31:58'),
(8, 3, 1.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1', 5, 1, 1, '1-admin', NULL, '2022-04-15 13:31:58', '2022-04-15 13:31:58'),
(9, 3, 1.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1', 6, 1, 1, '1-admin', NULL, '2022-04-15 13:32:49', '2022-04-15 13:32:49'),
(10, 2, 1.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 1, 1, '1', 6, 1, 1, '1-admin', NULL, '2022-04-15 13:32:49', '2022-04-15 13:32:49'),
(11, 3, 1.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1', 7, 1, 1, '1-admin', NULL, '2022-04-15 14:12:40', '2022-04-15 14:12:40'),
(12, 2, 1.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 1, 1, '1', 7, 1, 1, '1-admin', NULL, '2022-04-15 14:12:40', '2022-04-15 14:12:40'),
(13, 3, 1.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1', 8, 1, 1, '1-admin', NULL, '2022-04-15 14:16:19', '2022-04-15 14:16:19'),
(14, 2, 1.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 1, 1, '1', 8, 1, 1, '1-admin', NULL, '2022-04-15 14:16:19', '2022-04-15 14:16:19'),
(15, 3, 1.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1', 9, 1, 1, '1-admin', NULL, '2022-04-15 14:16:30', '2022-04-15 14:16:30'),
(16, 2, 1.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 1, 1, '1', 9, 1, 1, '1-admin', NULL, '2022-04-15 14:16:30', '2022-04-15 14:16:30'),
(17, 3, 1.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1', 10, 1, 1, '1-admin', NULL, '2022-04-15 14:16:40', '2022-04-15 14:16:40'),
(18, 2, 1.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 1, 1, '1', 10, 1, 1, '1-admin', NULL, '2022-04-15 14:16:40', '2022-04-15 14:16:40'),
(19, 3, 1.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1', 11, 1, 1, '1-admin', NULL, '2022-04-15 14:18:10', '2022-04-15 14:18:10'),
(20, 2, 1.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 1, 1, '1', 11, 1, 1, '1-admin', NULL, '2022-04-15 14:18:10', '2022-04-15 14:18:10'),
(21, 3, 1.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1', 12, 1, 1, '1-admin', NULL, '2022-04-15 14:19:14', '2022-04-15 14:19:14'),
(22, 2, 1.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 1, 1, '1', 12, 1, 1, '1-admin', NULL, '2022-04-15 14:19:14', '2022-04-15 14:19:14'),
(23, 3, 1.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1', 13, 1, 1, '1-admin', NULL, '2022-04-15 14:20:32', '2022-04-15 14:20:32'),
(24, 2, 1.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 1, 1, '1', 13, 1, 1, '1-admin', NULL, '2022-04-15 14:20:32', '2022-04-15 14:20:32'),
(25, 3, 1.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1', 14, 1, 1, '1-admin', NULL, '2022-04-15 14:21:56', '2022-04-15 14:21:56'),
(26, 2, 1.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 1, 1, '1', 14, 1, 1, '1-admin', NULL, '2022-04-15 14:21:56', '2022-04-15 14:21:56'),
(27, 3, 10.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 11000.0000, 1, 1, '1', 15, 1, 1, '1-admin', NULL, '2022-04-16 10:45:32', '2022-04-16 10:45:32'),
(28, 3, 10.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 11000.0000, 1, 1, '1', 16, 1, 1, '1-admin', NULL, '2022-04-16 10:46:30', '2022-04-16 10:46:30'),
(29, 2, 5.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 69000.0000, 1, 1, '1', 16, 1, 1, '1-admin', NULL, '2022-04-16 10:46:30', '2022-04-16 10:46:30'),
(30, 3, 10.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 11000.0000, 1, 1, '1', 17, 1, 1, '1-admin', NULL, '2022-04-16 10:47:59', '2022-04-16 10:47:59'),
(31, 2, 5.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 69000.0000, 1, 1, '1', 17, 1, 1, '1-admin', NULL, '2022-04-16 10:47:59', '2022-04-16 10:47:59'),
(32, 3, 5.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 5500.0000, 1, 1, '1', 18, 1, 1, '1-admin', NULL, '2022-04-16 12:11:44', '2022-04-16 12:11:44'),
(33, 2, 2.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 27600.0000, 1, 1, '1', 18, 1, 1, '1-admin', NULL, '2022-04-16 12:11:44', '2022-04-16 12:11:44'),
(34, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 19, 1, 1, '1-admin', NULL, '2022-04-16 12:15:11', '2022-04-16 12:15:11'),
(35, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 20, 1, 1, '1-admin', NULL, '2022-04-16 12:15:42', '2022-04-16 12:15:42'),
(36, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 21, 1, 1, '1-admin', NULL, '2022-04-16 12:15:54', '2022-04-16 12:15:54'),
(37, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 22, 1, 1, '1-admin', NULL, '2022-04-16 12:16:17', '2022-04-16 12:16:17'),
(38, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 23, 1, 1, '1-admin', NULL, '2022-04-16 12:16:27', '2022-04-16 12:16:27'),
(39, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 24, 1, 1, '1-admin', NULL, '2022-04-16 12:16:52', '2022-04-16 12:16:52'),
(40, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 25, 1, 1, '1-admin', NULL, '2022-04-16 12:18:30', '2022-04-16 12:18:30'),
(41, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 26, 1, 1, '1-admin', NULL, '2022-04-16 12:19:28', '2022-04-16 12:19:28'),
(42, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 27, 1, 1, '1-admin', NULL, '2022-04-16 12:20:14', '2022-04-16 12:20:14'),
(43, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 28, 1, 1, '1-admin', NULL, '2022-04-16 12:20:58', '2022-04-16 12:20:58'),
(44, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 29, 1, 1, '1-admin', NULL, '2022-04-16 12:21:32', '2022-04-16 12:21:32'),
(45, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 30, 1, 1, '1-admin', NULL, '2022-04-16 12:21:44', '2022-04-16 12:21:44'),
(46, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 31, 1, 1, '1-admin', NULL, '2022-04-16 12:22:05', '2022-04-16 12:22:05'),
(47, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 32, 1, 1, '1-admin', NULL, '2022-04-16 12:22:14', '2022-04-16 12:22:14'),
(48, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 33, 1, 1, '1-admin', NULL, '2022-04-16 12:22:33', '2022-04-16 12:22:33'),
(49, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 34, 1, 1, '1-admin', NULL, '2022-04-16 12:23:10', '2022-04-16 12:23:10'),
(50, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 35, 1, 1, '1-admin', NULL, '2022-04-16 12:23:22', '2022-04-16 12:23:22'),
(51, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 36, 1, 1, '1-admin', NULL, '2022-04-16 12:23:44', '2022-04-16 12:23:44'),
(52, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 37, 1, 1, '1-admin', NULL, '2022-04-16 12:26:56', '2022-04-16 12:26:56'),
(53, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 38, 1, 1, '1-admin', NULL, '2022-04-16 12:27:52', '2022-04-16 12:27:52'),
(54, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 39, 1, 1, '1-admin', NULL, '2022-04-16 12:28:19', '2022-04-16 12:28:19'),
(55, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 40, 1, 1, '1-admin', NULL, '2022-04-16 12:28:33', '2022-04-16 12:28:33'),
(56, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 41, 1, 1, '1-admin', NULL, '2022-04-16 12:28:51', '2022-04-16 12:28:51'),
(57, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 42, 1, 1, '1-admin', NULL, '2022-04-16 12:29:08', '2022-04-16 12:29:08'),
(58, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 43, 1, 1, '1-admin', NULL, '2022-04-16 12:29:39', '2022-04-16 12:29:39'),
(59, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 44, 1, 1, '1-admin', NULL, '2022-04-16 12:30:01', '2022-04-16 12:30:01'),
(60, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 45, 1, 1, '1-admin', NULL, '2022-04-16 12:31:14', '2022-04-16 12:31:14'),
(61, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 46, 1, 1, '1-admin', NULL, '2022-04-16 12:32:09', '2022-04-16 12:32:09'),
(62, 3, 3.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 1, 1, '1', 47, 1, 1, '1-admin', '1-admin', '2022-04-16 12:32:20', '2022-04-19 12:40:59'),
(63, 3, 1.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1', 48, 1, 1, '1-admin', NULL, '2022-04-16 14:41:00', '2022-04-16 14:41:00'),
(64, 2, 1.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 1, 1, '1', 49, 1, 1, '1-admin', NULL, '2022-04-16 14:44:25', '2022-04-16 14:44:25'),
(65, 3, 1.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1', 49, 1, 1, '1-admin', NULL, '2022-04-16 14:44:25', '2022-04-16 14:44:25'),
(66, 2, 1.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 1, 1, '1', 50, 1, 1, '1-admin', '1-admin', '2022-04-16 15:07:08', '2022-04-19 12:40:51'),
(67, 3, 1.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1', 50, 1, 1, '1-admin', '1-admin', '2022-04-16 15:07:08', '2022-04-19 12:40:51'),
(68, 3, 1.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1', 51, 1, 1, '1-admin', '1-admin', '2022-04-17 10:36:26', '2022-04-19 12:40:44'),
(69, 3, 1.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1', 52, 1, 1, '1-admin', '1-admin', '2022-04-17 10:37:10', '2022-04-19 12:40:36'),
(70, 2, 1.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 1, 1, '1', 53, 1, 1, '1-admin', '1-admin', '2022-04-18 00:36:45', '2022-04-19 12:40:29'),
(71, 4, 1.0000, 'j5', 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 1, 1, '1', 53, 1, 1, '1-admin', '1-admin', '2022-04-18 00:36:45', '2022-04-19 12:40:29'),
(72, 2, 10.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 138000.0000, 1, 1, '1', 54, 1, 1, '1-admin', '1-admin', '2022-04-18 08:53:20', '2022-04-20 11:53:11'),
(73, 3, 0.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1, 1, '1', 54, 1, 0, '1-admin', NULL, '2022-04-18 08:53:20', '2022-04-20 11:53:11'),
(74, 4, 0.0000, 'j5', 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1, 1, '1', 54, 1, 0, '1-admin', NULL, '2022-04-18 08:53:20', '2022-04-20 11:53:11'),
(75, 3, 0.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1, 1, '1', 54, 1, 0, '1-admin', NULL, '2022-04-18 09:51:15', '2022-04-20 11:53:11'),
(76, 3, 10.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 11000.0000, 1, 1, '1', 54, 1, 1, '1-admin', '1-admin', '2022-04-18 09:59:17', '2022-04-20 11:53:11'),
(77, 4, 10.0000, 'j5', 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 135000.0000, 1, 1, '1', 54, 1, 1, '1-admin', '1-admin', '2022-04-18 09:59:17', '2022-04-20 11:53:11'),
(78, 4, 1.0000, 'j5', 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 1, 1, '1', 55, 1, 1, '1-admin', '1-admin', '2022-04-18 10:28:36', '2022-04-19 12:40:11'),
(79, 3, 1.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1', 55, 1, 1, '1-admin', '1-admin', '2022-04-18 10:28:36', '2022-04-19 12:40:11'),
(80, 4, 1.0000, 'j5', 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 1, 1, '1', 56, 1, 1, '1-admin', '1-admin', '2022-04-18 10:29:36', '2022-04-19 12:40:03'),
(81, 3, 1.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1', 56, 1, 1, '1-admin', '1-admin', '2022-04-18 10:29:36', '2022-04-19 12:40:03'),
(82, 3, 6.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 6600.0000, 1, 1, '1', 57, 1, 1, '1-admin', NULL, '2022-04-19 16:20:08', '2022-04-19 16:20:08'),
(83, 4, 10.0000, 'j5', 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 135000.0000, 1, 1, '1', 57, 1, 1, '1-admin', NULL, '2022-04-19 16:20:08', '2022-04-19 16:20:08'),
(84, 2, 10.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 138000.0000, 1, 1, '1', 57, 1, 1, '1-admin', NULL, '2022-04-19 16:20:08', '2022-04-19 16:20:08'),
(85, 3, 10.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 11000.0000, 1, 1, '1', 58, 1, 1, '1-admin', '1-admin', '2022-04-20 11:46:08', '2022-04-20 11:48:42'),
(86, 2, 10.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 138000.0000, 1, 1, '1', 58, 1, 1, '1-admin', '1-admin', '2022-04-20 11:46:08', '2022-04-20 11:48:42'),
(87, 4, 10.0000, 'j5', 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 135000.0000, 1, 1, '1', 58, 1, 1, '1-admin', '1-admin', '2022-04-20 11:46:08', '2022-04-20 11:48:42'),
(88, 3, 10.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 11000.0000, 1, 1, '1', 59, 1, 1, '1-admin', NULL, '2022-04-20 11:58:03', '2022-04-20 11:58:03'),
(89, 4, 10.0000, 'j5', 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 135000.0000, 1, 1, '1', 59, 1, 1, '1-admin', NULL, '2022-04-20 11:58:03', '2022-04-20 11:58:03'),
(90, 2, 10.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 138000.0000, 1, 1, '1', 59, 1, 1, '1-admin', NULL, '2022-04-20 11:58:03', '2022-04-20 11:58:03'),
(91, 3, 10.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 11000.0000, 1, 1, '1', 60, 1, 1, '1-admin', NULL, '2022-04-20 12:53:22', '2022-04-20 12:53:22'),
(92, 2, 10.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 138000.0000, 1, 1, '1', 60, 1, 1, '1-admin', NULL, '2022-04-20 12:53:22', '2022-04-20 12:53:22'),
(93, 4, 10.0000, 'j5', 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 135000.0000, 1, 1, '1', 60, 1, 1, '1-admin', NULL, '2022-04-20 12:53:22', '2022-04-20 12:53:22'),
(94, 3, 10.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 11000.0000, 1, 1, '', 61, 1, 1, '1-admin', NULL, '2022-04-20 13:05:30', '2022-04-20 13:05:30'),
(95, 4, 10.0000, 'j5', 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 135000.0000, 1, 1, '', 62, 1, 1, '1-admin', NULL, '2022-04-20 13:08:17', '2022-04-20 13:08:17'),
(96, 4, 1.0000, 'j5', 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 1, 1, '', 63, 1, 1, '1-admin', NULL, '2022-04-20 13:09:57', '2022-04-20 13:09:57'),
(97, 4, 1.0000, 'j5', 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 1, 1, '', 64, 1, 1, '1-admin', NULL, '2022-04-20 13:20:03', '2022-04-20 13:20:03'),
(98, 4, 1.0000, 'j5', 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 1, 1, '', 65, 1, 1, '1-admin', NULL, '2022-04-20 13:20:56', '2022-04-20 13:20:56'),
(99, 4, 1.0000, 'j5', 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 1, 1, '', 66, 1, 1, '1-admin', NULL, '2022-04-20 13:21:22', '2022-04-20 13:21:22'),
(100, 4, 1.0000, 'j5', 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 1, 1, '', 67, 1, 1, '1-admin', NULL, '2022-04-20 13:23:30', '2022-04-20 13:23:30'),
(101, 4, 1.0000, 'j5', 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 1, 1, '', 68, 1, 1, '1-admin', NULL, '2022-04-20 13:24:05', '2022-04-20 13:24:05'),
(102, 4, 1.0000, 'j5', 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 1, 1, '', 69, 1, 1, '1-admin', NULL, '2022-04-20 13:24:36', '2022-04-20 13:24:36'),
(103, 3, 1.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '', 70, 1, 1, '1-admin', NULL, '2022-04-20 13:25:14', '2022-04-20 13:25:14'),
(104, 2, 5.0000, NULL, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 69000.0000, 1, 1, '', 71, 1, 1, '1-admin', NULL, '2022-04-20 13:29:00', '2022-04-20 13:29:00'),
(105, 4, 10.0000, 'j5', 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 135000.0000, 1, 1, '', 72, 1, 1, '1-admin', NULL, '2022-04-20 13:38:38', '2022-04-20 13:38:38'),
(106, 3, 10.0000, NULL, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 11000.0000, 1, 1, '', 72, 1, 1, '1-admin', NULL, '2022-04-20 13:38:38', '2022-04-20 13:38:38'),
(107, 4, 5.0000, 'j5', 13500.0000, 14500.0000, 0.0000, 0.0000, 10.0000, 6750.0000, 67500.0000, 1, 1, '1', 73, 1, 1, '1-admin', '1-admin', '2022-04-20 13:41:17', '2022-04-20 14:46:26');

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
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase_form_settings`
--

INSERT INTO `purchase_form_settings` (`id`, `_default_inventory`, `_default_purchase`, `_default_discount`, `_default_vat_account`, `_show_barcode`, `_show_vat`, `_show_store`, `_show_self`, `created_at`, `updated_at`) VALUES
(1, 7, 2, 6, 51, 1, 1, 1, 1, '2022-04-14 18:43:06', '2022-04-20 19:01:29');

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
-- Table structure for table `purchase_order_details`
--

CREATE TABLE `purchase_order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_item_id` bigint(20) UNSIGNED NOT NULL,
  `_qty` double(15,4) NOT NULL DEFAULT 0.0000,
  `_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_value` double(15,4) NOT NULL DEFAULT 0.0000,
  `_purchase_order_id` bigint(20) UNSIGNED NOT NULL,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_returns`
--

INSERT INTO `purchase_returns` (`id`, `_order_number`, `_date`, `_time`, `_order_ref_id`, `_referance`, `_ledger_id`, `_user_id`, `_user_name`, `_note`, `_sub_total`, `_discount_input`, `_total_discount`, `_total_vat`, `_total`, `_branch_id`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, NULL, '2022-04-20', '21:07:24', 54, NULL, 39, 1, 'admin', 'pr', 28400.0000, 0.0000, 0.0000, 0.0000, 28400.0000, 1, 1, '1-admin', NULL, '2022-04-19 15:07:24', '2022-04-19 15:07:24'),
(2, NULL, '2022-04-20', '21:07:42', 54, NULL, 39, 1, 'admin', 'pr', 28400.0000, 0.0000, 0.0000, 0.0000, 28400.0000, 1, 1, '1-admin', NULL, '2022-04-19 15:07:42', '2022-04-19 15:07:42'),
(3, NULL, '2022-04-20', '21:08:51', 54, NULL, 39, 1, 'admin', 'pr', 28400.0000, 0.0000, 0.0000, 0.0000, 28400.0000, 1, 1, '1-admin', NULL, '2022-04-19 15:08:51', '2022-04-19 15:08:51'),
(4, NULL, '2022-04-20', '21:09:37', 54, NULL, 39, 1, 'admin', 'pr', 28400.0000, 0.0000, 0.0000, 0.0000, 28400.0000, 1, 1, '1-admin', NULL, '2022-04-19 15:09:37', '2022-04-19 15:09:37'),
(5, NULL, '2022-04-20', '21:11:19', 54, NULL, 39, 1, 'admin', 'pr', 28400.0000, 0.0000, 0.0000, 0.0000, 28400.0000, 1, 1, '1-admin', NULL, '2022-04-19 15:11:19', '2022-04-19 15:11:19'),
(6, NULL, '2022-04-20', '21:12:00', 54, NULL, 39, 1, 'admin', 'pr', 28400.0000, 0.0000, 0.0000, 0.0000, 28400.0000, 1, 1, '1-admin', NULL, '2022-04-19 15:12:00', '2022-04-19 15:12:00'),
(7, NULL, '2022-04-20', '21:14:07', 54, NULL, 39, 1, 'admin', 'pr', 28400.0000, 0.0000, 0.0000, 0.0000, 28400.0000, 1, 1, '1-admin', NULL, '2022-04-19 15:14:07', '2022-04-19 15:14:07'),
(8, NULL, '2022-04-20', '22:03:19', 55, NULL, 39, 1, 'admin', 'pr', 14600.0000, 0.0000, 0.0000, 0.0000, 14600.0000, 1, 1, '1-admin', NULL, '2022-04-19 16:03:19', '2022-04-19 16:03:19'),
(9, NULL, '2022-04-20', '22:05:24', 53, NULL, 39, 1, 'admin', 'pr', 27300.0000, 0.0000, 0.0000, 0.0000, 27300.0000, 1, 1, '1-admin', NULL, '2022-04-19 16:05:24', '2022-04-19 16:05:24'),
(10, NULL, '2022-04-20', '22:19:05', 56, NULL, 44, 1, 'admin', 'pr', 14600.0000, 0.0000, 0.0000, 0.0000, 14600.0000, 1, 1, '1-admin', NULL, '2022-04-19 16:19:05', '2022-04-19 16:19:05'),
(11, NULL, '2022-04-20', '22:20:32', 57, NULL, 40, 1, 'admin', 'pr', 28400.0000, 0.0000, 0.0000, 0.0000, 28400.0000, 1, 1, '1-admin', NULL, '2022-04-19 16:20:32', '2022-04-19 16:20:32'),
(12, NULL, '2022-04-20', '22:25:38', 57, NULL, 40, 1, 'admin', 'pr', 28400.0000, 0.0000, 0.0000, 0.0000, 28400.0000, 1, 1, '1-admin', NULL, '2022-04-19 16:25:38', '2022-04-19 16:25:38'),
(13, NULL, '2022-04-20', '22:25:53', 57, NULL, 40, 1, 'admin', 'pr', 28400.0000, 0.0000, 0.0000, 0.0000, 28400.0000, 1, 1, '1-admin', NULL, '2022-04-19 16:25:53', '2022-04-19 16:25:53'),
(14, NULL, '2022-04-20', '17:33:56', 57, NULL, 40, 1, 'admin', 'pr', 1100.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1-admin', NULL, '2022-04-20 11:33:56', '2022-04-20 11:33:56'),
(15, NULL, '2022-04-20', '17:54:34', 54, NULL, 39, 1, 'admin', 'pr', 28400.0000, 0.0000, 0.0000, 0.0000, 28400.0000, 1, 1, '1-admin', NULL, '2022-04-20 11:54:34', '2022-04-20 11:54:34'),
(16, NULL, '2022-04-20', '17:59:11', 59, NULL, 47, 1, 'admin', 'pr', 28400.0000, 0.0000, 0.0000, 0.0000, 28400.0000, 1, 1, '1-admin', NULL, '2022-04-20 11:59:11', '2022-04-20 11:59:11'),
(17, NULL, '2022-04-21', '18:17:06', 59, NULL, 47, 1, 'admin', 'pr', 28400.0000, 0.0000, 0.0000, 0.0000, 28400.0000, 1, 1, '1-admin', NULL, '2022-04-20 12:17:06', '2022-04-20 12:17:06'),
(19, NULL, '2022-04-21', '18:46:15', 59, NULL, 47, 1, 'admin', 'pr', 1100.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1-admin', NULL, '2022-04-20 12:46:15', '2022-04-20 12:46:15'),
(20, NULL, '2022-04-21', '19:45:55', 60, NULL, 52, 1, 'admin', 'pr', 56800.0000, 0.0000, 0.0000, 0.0000, 56800.0000, 1, 1, '1-admin', NULL, '2022-04-20 13:45:55', '2022-04-20 13:45:55'),
(21, NULL, '2022-04-21', '19:47:14', 60, NULL, 52, 1, 'admin', 'purchase return due to bad quality', 85200.0000, 0.0000, 0.0000, 0.0000, 85200.0000, 1, 1, '1-admin', NULL, '2022-04-20 13:47:14', '2022-04-20 13:47:14'),
(22, NULL, '2022-04-21', '20:20:56', 60, NULL, 52, 1, 'admin', 'Purchase Return and cash receive', 1100.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 1, 1, '1-admin', NULL, '2022-04-20 14:20:56', '2022-04-20 14:20:56');

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

--
-- Dumping data for table `purchase_return_accounts`
--

INSERT INTO `purchase_return_accounts` (`id`, `_no`, `_account_type_id`, `_account_group_id`, `_ledger_id`, `_dr_amount`, `_cr_amount`, `_type`, `_branch_id`, `_cost_center`, `_short_narr`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 9, 1, 16, 1, 0.0000, 27300.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-19 16:05:24', '2022-04-19 16:05:24'),
(2, 9, 13, 1, 39, 27300.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-19 16:05:24', '2022-04-19 16:05:24'),
(3, 17, 13, 1, 47, 0.0000, 28400.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-20 12:17:06', '2022-04-20 12:17:06'),
(4, 17, 1, 16, 1, 28400.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-20 12:17:06', '2022-04-20 12:17:06'),
(5, 22, 1, 16, 1, 1100.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-20 14:20:56', '2022-04-20 14:20:56'),
(6, 22, 12, 43, 52, 0.0000, 1100.0000, NULL, 1, 1, 'N/A', 1, '1-admin', NULL, '2022-04-20 14:20:56', '2022-04-20 14:20:56');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_details`
--

CREATE TABLE `purchase_return_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_item_id` bigint(20) UNSIGNED NOT NULL,
  `_barcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_qty` double(15,4) NOT NULL DEFAULT 0.0000,
  `_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_sales_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_vat` double(15,4) NOT NULL DEFAULT 0.0000,
  `_vat_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_value` double(15,4) NOT NULL DEFAULT 0.0000,
  `_purchase_ref_id` int(11) DEFAULT NULL,
  `_purchase_detal_ref` int(11) NOT NULL,
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
-- Dumping data for table `purchase_return_details`
--

INSERT INTO `purchase_return_details` (`id`, `_item_id`, `_barcode`, `_qty`, `_rate`, `_sales_rate`, `_discount`, `_discount_amount`, `_vat`, `_vat_amount`, `_value`, `_purchase_ref_id`, `_purchase_detal_ref`, `_store_id`, `_cost_center_id`, `_store_salves_id`, `_no`, `_branch_id`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 'null', 1.0000, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 54, 72, 1, 1, 0, 6, 1, 1, '1-admin', NULL, '2022-04-19 15:12:00', '2022-04-19 15:12:00'),
(2, 2, 'null', 1.0000, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 54, 72, 1, 1, 0, 7, 1, 1, '1-admin', NULL, '2022-04-19 15:14:07', '2022-04-19 15:14:07'),
(3, 3, 'null', 1.0000, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 54, 76, 1, 1, 0, 7, 1, 1, '1-admin', NULL, '2022-04-19 15:14:07', '2022-04-19 15:14:07'),
(4, 4, 'j5', 1.0000, 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 54, 77, 1, 1, 0, 7, 1, 1, '1-admin', NULL, '2022-04-19 15:14:07', '2022-04-19 15:14:07'),
(5, 4, 'j5', 1.0000, 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 55, 78, 1, 1, 0, 8, 1, 1, '1-admin', NULL, '2022-04-19 16:03:19', '2022-04-19 16:03:19'),
(6, 3, 'null', 1.0000, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 55, 79, 1, 1, 0, 8, 1, 1, '1-admin', NULL, '2022-04-19 16:03:19', '2022-04-19 16:03:19'),
(7, 2, 'null', 1.0000, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 53, 70, 1, 1, 0, 9, 1, 1, '1-admin', NULL, '2022-04-19 16:05:24', '2022-04-19 16:05:24'),
(8, 4, 'j5', 1.0000, 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 53, 71, 1, 1, 0, 9, 1, 1, '1-admin', NULL, '2022-04-19 16:05:24', '2022-04-19 16:05:24'),
(9, 4, 'j5', 1.0000, 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 56, 80, 1, 1, 0, 10, 1, 1, '1-admin', NULL, '2022-04-19 16:19:05', '2022-04-19 16:19:05'),
(10, 3, 'null', 1.0000, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 56, 81, 1, 1, 0, 10, 1, 1, '1-admin', NULL, '2022-04-19 16:19:05', '2022-04-19 16:19:05'),
(11, 3, 'null', 1.0000, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 57, 82, 1, 1, 0, 11, 1, 1, '1-admin', NULL, '2022-04-19 16:20:32', '2022-04-19 16:20:32'),
(12, 4, 'j5', 1.0000, 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 57, 83, 1, 1, 0, 11, 1, 1, '1-admin', NULL, '2022-04-19 16:20:32', '2022-04-19 16:20:32'),
(13, 2, 'null', 1.0000, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 57, 84, 1, 1, 0, 11, 1, 1, '1-admin', NULL, '2022-04-19 16:20:32', '2022-04-19 16:20:32'),
(14, 3, 'null', 1.0000, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 57, 11, 1, 1, 0, 12, 1, 1, '1-admin', NULL, '2022-04-19 16:25:38', '2022-04-19 16:25:38'),
(15, 4, 'j5', 1.0000, 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 57, 12, 1, 1, 0, 12, 1, 1, '1-admin', NULL, '2022-04-19 16:25:38', '2022-04-19 16:25:38'),
(16, 2, 'null', 1.0000, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 57, 13, 1, 1, 0, 12, 1, 1, '1-admin', NULL, '2022-04-19 16:25:38', '2022-04-19 16:25:38'),
(17, 3, 'null', 1.0000, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 57, 14, 1, 1, 0, 13, 1, 1, '1-admin', NULL, '2022-04-19 16:25:53', '2022-04-19 16:25:53'),
(18, 4, 'j5', 1.0000, 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 57, 15, 1, 1, 0, 13, 1, 1, '1-admin', NULL, '2022-04-19 16:25:53', '2022-04-19 16:25:53'),
(19, 2, 'null', 1.0000, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 57, 16, 1, 1, 0, 13, 1, 1, '1-admin', NULL, '2022-04-19 16:25:53', '2022-04-19 16:25:53'),
(20, 3, 'null', 1.0000, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 57, 17, 1, 1, 0, 14, 1, 1, '1-admin', NULL, '2022-04-20 11:33:56', '2022-04-20 11:33:56'),
(21, 2, 'null', 1.0000, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 54, 72, 1, 1, 1, 15, 1, 1, '1-admin', NULL, '2022-04-20 11:54:34', '2022-04-20 11:54:34'),
(22, 3, 'null', 1.0000, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 54, 76, 1, 1, 1, 15, 1, 1, '1-admin', NULL, '2022-04-20 11:54:34', '2022-04-20 11:54:34'),
(23, 4, 'j5', 1.0000, 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 54, 77, 1, 1, 1, 15, 1, 1, '1-admin', NULL, '2022-04-20 11:54:34', '2022-04-20 11:54:34'),
(24, 3, NULL, 1.0000, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 59, 88, 1, 1, 1, 16, 1, 1, '1-admin', NULL, '2022-04-20 11:59:11', '2022-04-20 11:59:11'),
(25, 4, 'j5', 1.0000, 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 59, 89, 1, 1, 1, 16, 1, 1, '1-admin', NULL, '2022-04-20 11:59:11', '2022-04-20 11:59:11'),
(26, 2, NULL, 1.0000, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 59, 90, 1, 1, 1, 16, 1, 1, '1-admin', NULL, '2022-04-20 11:59:12', '2022-04-20 11:59:12'),
(27, 3, NULL, 1.0000, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 59, 88, 1, 1, 0, 17, 1, 1, '1-admin', NULL, '2022-04-20 12:17:06', '2022-04-20 12:17:06'),
(28, 4, 'j5', 1.0000, 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13500.0000, 59, 89, 1, 1, 0, 17, 1, 1, '1-admin', NULL, '2022-04-20 12:17:06', '2022-04-20 12:17:06'),
(29, 2, NULL, 1.0000, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13800.0000, 59, 90, 1, 1, 0, 17, 1, 1, '1-admin', NULL, '2022-04-20 12:17:06', '2022-04-20 12:17:06'),
(31, 3, 'null', 1.0000, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 59, 88, 1, 1, 0, 19, 1, 1, '1-admin', NULL, '2022-04-20 12:46:15', '2022-04-20 12:46:15'),
(32, 3, 'null', 2.0000, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2200.0000, 60, 91, 1, 1, 0, 20, 1, 1, '1-admin', NULL, '2022-04-20 13:45:55', '2022-04-20 13:45:55'),
(33, 2, 'null', 2.0000, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 27600.0000, 60, 92, 1, 1, 0, 20, 1, 1, '1-admin', NULL, '2022-04-20 13:45:55', '2022-04-20 13:45:55'),
(34, 4, 'j5', 2.0000, 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 27000.0000, 60, 93, 1, 1, 0, 20, 1, 1, '1-admin', NULL, '2022-04-20 13:45:55', '2022-04-20 13:45:55'),
(35, 3, 'null', 3.0000, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3300.0000, 60, 91, 1, 1, 0, 21, 1, 1, '1-admin', NULL, '2022-04-20 13:47:14', '2022-04-20 13:47:14'),
(36, 2, 'null', 3.0000, 13800.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 41400.0000, 60, 92, 1, 1, 0, 21, 1, 1, '1-admin', NULL, '2022-04-20 13:47:14', '2022-04-20 13:47:14'),
(37, 4, 'j5', 3.0000, 13500.0000, 14500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 40500.0000, 60, 93, 1, 1, 0, 21, 1, 1, '1-admin', NULL, '2022-04-20 13:47:14', '2022-04-20 13:47:14'),
(38, 3, '', 1.0000, 1100.0000, 1400.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1100.0000, 60, 91, 1, 1, 0, 22, 1, 1, '1-admin', NULL, '2022-04-20 14:20:56', '2022-04-20 14:20:56');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_return_form_settings`
--

INSERT INTO `purchase_return_form_settings` (`id`, `_default_inventory`, `_default_purchase`, `_default_discount`, `_default_vat_account`, `_show_barcode`, `_show_vat`, `_show_store`, `_show_self`, `created_at`, `updated_at`) VALUES
(1, 7, 3, 6, 51, 1, 1, 1, 1, '2022-04-19 14:10:35', '2022-04-19 14:47:44');

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
(5, 'Accountant', 'web', 'exhibitor', '2021-06-04 05:59:56', '2022-02-01 01:53:22');

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
(4, 1),
(4, 3),
(4, 5),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1);

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
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_item_id` bigint(20) UNSIGNED NOT NULL,
  `_p_p_l_id` bigint(20) UNSIGNED NOT NULL,
  `_purchase_invoice_no` int(11) DEFAULT NULL,
  `_qty` double(15,4) NOT NULL DEFAULT 0.0000,
  `_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_vat` double(15,4) NOT NULL DEFAULT 0.0000,
  `_value` double(15,4) NOT NULL DEFAULT 0.0000,
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
-- Table structure for table `sales_return_details`
--

CREATE TABLE `sales_return_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_item_id` bigint(20) UNSIGNED NOT NULL,
  `_p_p_l_id` bigint(20) UNSIGNED NOT NULL,
  `_sales_ref_id` int(11) DEFAULT NULL,
  `_qty` double(15,4) NOT NULL DEFAULT 0.0000,
  `_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_vat` double(15,4) NOT NULL DEFAULT 0.0000,
  `_value` double(15,4) NOT NULL DEFAULT 0.0000,
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
(15, 'PCS', 'PCS', 1, NULL, NULL, '2022-03-02 13:10:25', '2022-04-04 01:02:25');

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
(1, 'admin', 'admin@gmail.com', NULL, 'admin', '1', '1', NULL, NULL, '$2y$10$2hWspUMjme8z/a.4J/2vXOqoMVnpfrMrx4LO37yk0il6iJVcqBuMe', 1, NULL, '2021-05-29 11:33:16', '2022-04-14 12:48:07'),
(2, 'farhad', 'farhadali0507@gmail.com', NULL, 'admin', '1,2', NULL, NULL, NULL, '$2y$10$dLHaWAH9He44h0qbKWsbZ.mrUSu7hfUlv9DjVlPBeqiNhSaa.szQW', 1, NULL, '2021-05-29 11:35:46', '2022-03-04 13:03:28'),
(46, 'jony', 'jony0507@gmail.com', NULL, 'user', '1,2', '0', 0, NULL, '$2y$10$a1x6VBU0VWqbI8T8HeDX3exLuF4XJm6sxCMNUJYxYQFOPh7VZSMh2', 1, NULL, '2022-03-04 14:08:25', '2022-03-15 09:21:21');

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
(1, 'AC-1', '2022-03-10', '19:04:24', 1, 'admin', 'Business Start with capital Business Start with capital Business Start with capital Business Start with capital Business Start with capital', 'CR', NULL, 'Nazmul (Owner as Capital)', 'voucher_masters', 50000.0000, 1, 1, '1-admin', '1-admin', '2022-03-09 12:34:22', '2022-03-09 13:04:24'),
(2, 'AC-2', '2022-03-10', '15:09:46', 1, 'admin', 'Audit Fee paid in Cash.', 'BP', NULL, NULL, 'voucher_masters', 5000.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:09:46', '2022-03-10 09:09:46'),
(3, 'AC-3', '2022-03-10', '15:11:52', 1, 'admin', 'Bank Charge Paid From Bank', 'BP', NULL, NULL, 'voucher_masters', 1000.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:11:52', '2022-03-10 09:11:52'),
(4, 'AC-4', '2022-03-10', '15:13:20', 1, 'admin', 'Cash Deposed to bank', 'CV', NULL, NULL, 'voucher_masters', 10000.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:13:20', '2022-03-10 09:13:20'),
(5, 'AC-5', '2022-03-10', '15:14:14', 1, 'admin', 'Business Promotional Expenses paid with Bank.', 'BP', NULL, NULL, 'voucher_masters', 4000.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:14:14', '2022-03-10 09:14:14'),
(6, 'AC-6', '2022-03-10', '15:14:52', 1, 'admin', 'Cleaning Expenses  to Cash', 'CP', NULL, NULL, 'voucher_masters', 500.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:14:52', '2022-03-10 09:14:52'),
(7, 'AC-7', '2022-03-10', '15:15:28', 1, 'admin', 'Commission on sales', 'CP', NULL, NULL, 'voucher_masters', 5000.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:15:28', '2022-03-10 09:15:28'),
(8, 'AC-8', '2022-03-10', '15:16:01', 1, 'admin', 'Purchase Computer', 'JV', NULL, NULL, 'voucher_masters', 50000.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:16:01', '2022-03-10 09:16:01'),
(9, 'AC-9', '2022-03-10', '15:16:36', 1, 'admin', 'Conveyance Expense', 'JV', NULL, NULL, 'voucher_masters', 500.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:16:36', '2022-03-10 09:16:36'),
(10, 'AC-10', '2022-03-10', '15:17:16', 1, 'admin', 'Donation Expenses', 'CP', NULL, NULL, 'voucher_masters', 4000.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:17:16', '2022-03-10 09:17:16'),
(11, 'AC-11', '2022-03-10', '15:17:58', 1, 'admin', 'Electricity Bill', 'JV', NULL, NULL, 'voucher_masters', 300.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:17:58', '2022-03-10 09:17:58'),
(12, 'AC-12', '2022-03-10', '15:18:25', 1, 'admin', 'Entertainment Expenses', 'JV', NULL, NULL, 'voucher_masters', 400.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:18:25', '2022-03-10 09:18:25'),
(13, 'AC-13', '2022-03-10', '15:18:49', 1, 'admin', 'Food Allowance', 'JV', NULL, NULL, 'voucher_masters', 5000.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:18:49', '2022-03-10 09:18:49'),
(14, 'AC-14', '2022-03-10', '15:19:19', 1, 'admin', 'Fuel & Oil Expenses', 'JV', NULL, NULL, 'voucher_masters', 1300.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:19:19', '2022-03-10 09:19:19'),
(15, 'AC-15', '2022-03-10', '15:20:48', 1, 'admin', 'Software Service Sales  to Greenland Services Ltd.', 'JV', NULL, NULL, 'voucher_masters', 100000.0000, 1, 1, '1-admin', '1-admin', '2022-03-10 09:20:05', '2022-03-10 09:20:48'),
(16, 'AC-16', '2022-03-10', '15:21:45', 1, 'admin', 'Hasten Business Consulting Cash receive', 'BR', NULL, NULL, 'voucher_masters', 10000.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:21:45', '2022-03-10 09:21:45'),
(17, 'AC-17', '2022-03-10', '15:22:20', 1, 'admin', 'Monthly Subscription  from Hasten Business Consulting', 'JV', NULL, NULL, 'voucher_masters', 10000.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:22:20', '2022-03-10 09:22:20'),
(18, 'AC-18', '2022-03-10', '15:22:57', 1, 'admin', 'Insurance Premium from Trust Bank Limited', 'BP', NULL, NULL, 'voucher_masters', 3600.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:22:57', '2022-03-10 09:22:57'),
(19, 'AC-19', '2022-03-10', '15:23:31', 1, 'admin', 'Internet Bill  to cash', 'CP', NULL, NULL, 'voucher_masters', 1000.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:23:31', '2022-03-10 09:23:31'),
(20, 'AC-20', '2022-03-10', '15:24:13', 1, 'admin', 'Monthly Subscription', 'JV', NULL, NULL, 'voucher_masters', 2500.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:24:13', '2022-03-10 09:24:13'),
(21, 'AC-21', '2022-03-10', '15:24:42', 1, 'admin', 'Legal Expenses', 'JV', NULL, 'Legal Expenses', 'voucher_masters', 2200.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:24:42', '2022-03-10 09:24:42'),
(22, 'AC-22', '2022-03-10', '15:25:10', 1, 'admin', 'License Renewal Fee', 'JV', NULL, 'License Renewal Fee', 'voucher_masters', 1900.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:25:10', '2022-03-10 09:25:10'),
(23, 'AC-23', '2022-03-10', '15:25:48', 1, 'admin', 'Marketing Expenses', 'JV', NULL, NULL, 'voucher_masters', 3000.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:25:48', '2022-03-10 09:25:48'),
(24, 'AC-24', '2022-03-10', '15:26:24', 1, 'admin', 'Md. Nazmul Hossian Owner', 'CR', NULL, NULL, 'voucher_masters', 20000.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:26:24', '2022-03-10 09:26:24'),
(25, 'AC-25', '2022-03-10', '15:27:48', 1, 'admin', 'Purchase with discount', 'JV', NULL, NULL, 'voucher_masters', 10000.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:27:48', '2022-03-10 09:27:48'),
(26, 'AC-26', '2022-03-10', '15:29:46', 1, 'admin', 'Sales', 'JV', NULL, NULL, 'voucher_masters', 50000.0000, 1, 1, '1-admin', NULL, '2022-03-10 09:29:46', '2022-03-10 09:29:46'),
(27, 'AC-27', '2022-03-12', '16:21:32', 1, 'admin', 'cash receive from bank', 'JV', NULL, NULL, 'voucher_masters', 1000.0000, 1, 1, '1-admin', NULL, '2022-03-12 10:21:32', '2022-03-12 10:21:32'),
(28, 'AC-28', '2022-03-12', '16:40:04', 1, 'admin', 'cash to bank', 'BR', NULL, NULL, 'voucher_masters', 2000.0000, 1, 1, '1-admin', NULL, '2022-03-12 10:40:04', '2022-03-12 10:40:04'),
(29, 'AC-29', '2022-03-12', '16:42:13', 1, 'admin', 'cash to bank charge', 'CR', NULL, NULL, 'voucher_masters', 5000.0000, 1, 1, '1-admin', NULL, '2022-03-12 10:42:13', '2022-03-12 10:42:13'),
(30, 'AC-30', '2022-03-12', '16:44:18', 1, 'admin', 'cash to bank', 'CP', NULL, NULL, 'voucher_masters', 5000.0000, 1, 1, '1-admin', NULL, '2022-03-12 10:44:18', '2022-03-12 10:44:18'),
(31, 'AC-31', '2022-03-12', '16:45:26', 1, 'admin', 'cash to bank', 'BR', NULL, NULL, 'voucher_masters', 5000.0000, 1, 1, '1-admin', NULL, '2022-03-12 10:45:26', '2022-03-12 10:45:26'),
(32, 'AC-32', '2022-03-12', '16:49:24', 1, 'admin', 'Business Promotional Expenses charge paid from bank', 'BP', NULL, NULL, 'voucher_masters', 4000.0000, 1, 1, '1-admin', NULL, '2022-03-12 10:49:24', '2022-03-12 10:49:24'),
(33, 'AC-33', '2022-03-12', '16:54:34', 1, 'admin', 'Donation Expenses  expense paid from bank', 'JV', NULL, NULL, 'voucher_masters', 5000.0000, 1, 1, '1-admin', NULL, '2022-03-12 10:54:34', '2022-03-12 10:54:34'),
(34, 'AC-34', '2022-03-12', '16:55:29', 1, 'admin', 'Monthly Subscription  Receive to bank account', 'JV', NULL, NULL, 'voucher_masters', 50000.0000, 1, 1, '1-admin', NULL, '2022-03-12 10:55:29', '2022-03-12 10:55:29'),
(35, 'AC-35', '2022-03-13', '19:31:44', 1, 'admin', 'f', 'BR', NULL, NULL, 'voucher_masters', 100.0000, 1, 1, '1-admin', NULL, '2022-03-12 13:31:44', '2022-03-12 13:31:44'),
(36, 'AC-36', '2022-03-13', '19:32:05', 1, 'admin', 'f', 'JV', NULL, NULL, 'voucher_masters', 550.0000, 1, 1, '1-admin', NULL, '2022-03-12 13:32:05', '2022-03-12 13:32:05'),
(37, 'AC-37', '2022-03-13', '19:32:28', 1, 'admin', 'dd', 'JV', NULL, NULL, 'voucher_masters', 440.0000, 1, 1, '1-admin', NULL, '2022-03-12 13:32:28', '2022-03-12 13:32:28'),
(38, 'AC-38', '2022-03-14', '19:32:54', 1, 'admin', 'dsfd', 'JV', NULL, NULL, 'voucher_masters', 550.0000, 1, 1, '1-admin', NULL, '2022-03-12 13:32:54', '2022-03-12 13:32:54'),
(39, 'AC-39', '2022-03-13', '06:19:42', 1, 'admin', 'Purchase with cash', 'CR', NULL, NULL, 'voucher_masters', 5000.0000, 1, 1, '1-admin', '1-admin', '2022-03-13 11:20:42', '2022-03-15 00:19:42'),
(40, 'AC-40', '2022-03-14', '18:27:05', 1, 'admin', 's', 'JV', NULL, NULL, 'voucher_masters', 5000.0000, 1, 1, '1-admin', NULL, '2022-03-13 12:27:05', '2022-03-13 12:27:05'),
(41, 'AC-41', '2022-03-15', '11:47:00', 1, 'admin', 'capital', 'JV', NULL, NULL, 'voucher_masters', 30000.0000, 1, 1, '1-admin', NULL, '2022-03-15 05:47:00', '2022-03-15 05:47:00'),
(42, 'AC-42', '2022-03-15', '15:20:08', 1, 'admin', 'Sales Return', 'JV', NULL, NULL, 'voucher_masters', 5000.0000, 1, 1, '1-admin', NULL, '2022-03-15 09:20:08', '2022-03-15 09:20:08'),
(43, 'AC-43', '2022-03-15', '20:27:11', 1, 'admin', 'Sales adjusted with cost of goods sold', 'JV', NULL, NULL, 'voucher_masters', 25000.0000, 1, 1, '1-admin', '1-admin', '2022-03-16 12:47:30', '2022-04-16 14:27:11'),
(44, 'AC-44', '2022-04-21', '20:14:38', 1, 'admin', 'Cash Paid', 'CP', NULL, NULL, 'voucher_masters', 200000.0000, 1, 1, '1-admin', NULL, '2022-04-20 14:14:38', '2022-04-20 14:14:38');

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
(1, 1, 1, 16, 1, 50000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-09 12:34:22', '2022-03-09 12:59:54'),
(2, 1, 7, 73, 49, 0.0000, 50000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-09 12:34:22', '2022-03-09 13:02:28'),
(3, 2, 10, 118, 22, 5000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:09:46', '2022-03-10 09:09:46'),
(4, 2, 1, 16, 1, 0.0000, 5000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:09:46', '2022-03-10 09:09:46'),
(5, 3, 10, 108, 36, 1000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:11:52', '2022-03-10 09:11:52'),
(6, 3, 1, 15, 41, 0.0000, 1000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:11:52', '2022-03-10 09:11:52'),
(7, 4, 1, 16, 1, 0.0000, 10000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:13:20', '2022-03-10 09:13:20'),
(8, 4, 1, 15, 41, 10000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:13:20', '2022-03-10 09:13:20'),
(9, 5, 10, 104, 28, 4000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:14:14', '2022-03-10 09:14:14'),
(10, 5, 1, 15, 41, 0.0000, 4000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:14:14', '2022-03-10 09:14:14'),
(11, 6, 10, 122, 13, 500.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:14:53', '2022-03-10 09:14:53'),
(12, 6, 1, 16, 1, 0.0000, 500.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:14:53', '2022-03-10 09:14:53'),
(13, 7, 10, 110, 9, 5000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:15:28', '2022-03-10 09:15:28'),
(14, 7, 1, 16, 1, 0.0000, 5000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:15:28', '2022-03-10 09:15:28'),
(15, 8, 3, 29, 45, 50000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:16:01', '2022-03-10 09:16:01'),
(16, 8, 1, 15, 41, 0.0000, 50000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:16:01', '2022-03-10 09:16:01'),
(17, 9, 10, 124, 11, 500.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:16:36', '2022-03-10 09:16:36'),
(18, 9, 1, 16, 1, 0.0000, 500.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:16:36', '2022-03-10 09:16:36'),
(19, 10, 10, 109, 29, 4000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:17:16', '2022-03-10 09:17:16'),
(20, 10, 1, 16, 1, 0.0000, 4000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:17:16', '2022-03-10 09:17:16'),
(21, 11, 10, 134, 12, 300.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:17:58', '2022-03-10 09:17:58'),
(22, 11, 1, 16, 1, 0.0000, 300.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:17:58', '2022-03-10 09:17:58'),
(23, 12, 10, 122, 15, 400.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:18:25', '2022-03-10 09:18:25'),
(24, 12, 1, 16, 1, 0.0000, 400.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:18:25', '2022-03-10 09:18:25'),
(25, 13, 10, 121, 30, 5000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:18:49', '2022-03-10 09:18:49'),
(26, 13, 1, 16, 1, 0.0000, 5000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:18:49', '2022-03-10 09:18:49'),
(27, 14, 10, 134, 24, 1300.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:19:19', '2022-03-10 09:19:19'),
(28, 14, 1, 16, 1, 0.0000, 1300.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:19:19', '2022-03-10 09:19:19'),
(29, 15, 8, 89, 42, 0.0000, 50000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:20:05', '2022-03-10 09:20:05'),
(30, 15, 13, 1, 39, 50000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:20:05', '2022-03-10 09:20:05'),
(31, 15, 1, 16, 1, 50000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:20:48', '2022-03-10 09:20:48'),
(32, 15, 13, 1, 39, 0.0000, 50000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:20:48', '2022-03-10 09:20:48'),
(33, 16, 1, 15, 41, 10000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:21:45', '2022-03-10 09:21:45'),
(34, 16, 13, 1, 47, 0.0000, 10000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:21:45', '2022-03-10 09:21:45'),
(35, 17, 8, 89, 43, 0.0000, 10000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:22:20', '2022-03-10 09:22:20'),
(36, 17, 13, 1, 47, 10000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:22:20', '2022-03-10 09:22:20'),
(37, 18, 10, 116, 25, 3600.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:22:57', '2022-03-10 09:22:57'),
(38, 18, 1, 15, 41, 0.0000, 3600.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:22:57', '2022-03-10 09:22:57'),
(39, 19, 10, 134, 19, 1000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:23:31', '2022-03-10 09:23:31'),
(40, 19, 1, 16, 1, 0.0000, 1000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:23:31', '2022-03-10 09:23:31'),
(41, 20, 8, 89, 43, 0.0000, 2500.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:24:13', '2022-03-10 09:24:13'),
(42, 20, 13, 1, 40, 2500.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:24:13', '2022-03-10 09:24:13'),
(43, 21, 10, 118, 35, 2200.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:24:42', '2022-03-10 09:24:42'),
(44, 21, 1, 16, 1, 0.0000, 2200.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:24:42', '2022-03-10 09:24:42'),
(45, 22, 10, 122, 21, 1900.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:25:10', '2022-03-10 09:25:10'),
(46, 22, 1, 16, 1, 0.0000, 1900.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:25:10', '2022-03-10 09:25:10'),
(47, 23, 10, 104, 31, 3000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:25:48', '2022-03-10 09:25:48'),
(48, 23, 1, 16, 1, 0.0000, 3000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:25:48', '2022-03-10 09:25:48'),
(49, 24, 1, 16, 1, 20000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:26:24', '2022-03-10 09:26:24'),
(50, 24, 7, 73, 49, 0.0000, 20000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:26:24', '2022-03-10 09:26:24'),
(51, 25, 9, 140, 2, 10000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:27:48', '2022-03-10 09:27:48'),
(52, 25, 11, 96, 6, 0.0000, 1000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:27:48', '2022-03-10 09:27:48'),
(53, 25, 1, 16, 1, 0.0000, 9000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:27:48', '2022-03-10 09:27:48'),
(54, 26, 8, 85, 4, 0.0000, 50000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:29:46', '2022-03-10 09:29:46'),
(55, 26, 13, 1, 48, 50000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-10 09:29:46', '2022-03-10 09:29:46'),
(56, 27, 1, 16, 1, 1000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 10:21:32', '2022-03-12 10:21:32'),
(57, 27, 1, 15, 41, 0.0000, 1000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 10:21:32', '2022-03-12 10:21:32'),
(58, 28, 1, 16, 1, 2000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 10:40:04', '2022-03-12 10:40:04'),
(59, 28, 1, 15, 41, 0.0000, 2000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 10:40:04', '2022-03-12 10:40:04'),
(60, 29, 1, 16, 1, 5000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 10:42:13', '2022-03-12 10:42:13'),
(61, 29, 10, 108, 36, 0.0000, 5000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 10:42:13', '2022-03-12 10:42:13'),
(62, 30, 1, 16, 1, 5000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 10:44:18', '2022-03-12 10:44:18'),
(63, 30, 1, 15, 41, 0.0000, 5000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 10:44:18', '2022-03-12 10:44:18'),
(64, 31, 1, 16, 1, 5000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 10:45:26', '2022-03-12 10:45:26'),
(65, 31, 1, 15, 41, 0.0000, 5000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 10:45:26', '2022-03-12 10:45:26'),
(66, 32, 10, 104, 28, 4000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 10:49:24', '2022-03-12 10:49:24'),
(67, 32, 1, 15, 41, 0.0000, 4000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 10:49:24', '2022-03-12 10:49:24'),
(68, 33, 10, 109, 29, 5000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 10:54:34', '2022-03-12 10:54:34'),
(69, 33, 1, 15, 41, 0.0000, 5000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 10:54:34', '2022-03-12 10:54:34'),
(70, 34, 1, 15, 41, 50000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 10:55:29', '2022-03-12 10:55:29'),
(71, 34, 8, 89, 43, 0.0000, 50000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 10:55:29', '2022-03-12 10:55:29'),
(72, 35, 10, 118, 22, 100.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 13:31:44', '2022-03-12 13:31:44'),
(73, 35, 10, 108, 36, 0.0000, 100.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 13:31:44', '2022-03-12 13:31:44'),
(74, 36, 10, 104, 28, 550.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 13:32:05', '2022-03-12 13:32:05'),
(75, 36, 1, 16, 1, 0.0000, 550.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 13:32:05', '2022-03-12 13:32:05'),
(76, 37, 10, 110, 9, 440.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 13:32:28', '2022-03-12 13:32:28'),
(77, 37, 10, 124, 11, 0.0000, 440.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 13:32:28', '2022-03-12 13:32:28'),
(78, 38, 10, 109, 29, 550.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 13:32:54', '2022-03-12 13:32:54'),
(79, 38, 10, 134, 12, 0.0000, 550.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-12 13:32:54', '2022-03-12 13:32:54'),
(80, 39, 9, 140, 2, 5000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-13 11:20:42', '2022-03-13 11:20:42'),
(81, 39, 1, 16, 1, 0.0000, 5000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-13 11:20:42', '2022-03-13 11:20:42'),
(82, 40, 1, 16, 1, 5000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-13 12:27:05', '2022-03-13 12:27:05'),
(83, 40, 8, 85, 4, 0.0000, 5000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-13 12:27:05', '2022-03-13 12:27:05'),
(84, 41, 1, 16, 1, 30000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-15 05:47:00', '2022-03-15 05:47:00'),
(85, 41, 7, 73, 49, 0.0000, 30000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-15 05:47:00', '2022-03-15 05:47:00'),
(86, 42, 8, 85, 5, 5000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-15 09:20:08', '2022-03-15 09:20:08'),
(87, 42, 1, 16, 1, 0.0000, 5000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-15 09:20:09', '2022-03-15 09:20:09'),
(88, 43, 9, 140, 50, 25000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-16 12:47:30', '2022-03-16 12:47:30'),
(89, 43, 2, 6, 7, 0.0000, 25000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-16 12:47:30', '2022-03-16 12:47:30'),
(90, 44, 12, 43, 52, 200000.0000, 0.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-04-20 14:14:38', '2022-04-20 14:14:38'),
(91, 44, 1, 16, 1, 0.0000, 200000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-04-20 14:14:38', '2022-04-20 14:14:38');

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
  ADD KEY `purchase_order_details__purchase_order_id_foreign` (`_purchase_order_id`),
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
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_details__item_id_foreign` (`_item_id`),
  ADD KEY `sales_details__p_p_l_id_foreign` (`_p_p_l_id`),
  ADD KEY `sales_details__no_foreign` (`_no`),
  ADD KEY `sales_details__branch_id_foreign` (`_branch_id`);

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
-- Indexes for table `sales_return_details`
--
ALTER TABLE `sales_return_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_return_details__item_id_foreign` (`_item_id`),
  ADD KEY `sales_return_details__p_p_l_id_foreign` (`_p_p_l_id`),
  ADD KEY `sales_return_details__no_foreign` (`_no`),
  ADD KEY `sales_return_details__branch_id_foreign` (`_branch_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cost_centers`
--
ALTER TABLE `cost_centers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `item_inventories`
--
ALTER TABLE `item_inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `main_account_head`
--
ALTER TABLE `main_account_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `page_rows`
--
ALTER TABLE `page_rows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `product_price_lists`
--
ALTER TABLE `product_price_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `purchase_accounts`
--
ALTER TABLE `purchase_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `purchase_form_settings`
--
ALTER TABLE `purchase_form_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order_details`
--
ALTER TABLE `purchase_order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `purchase_return_accounts`
--
ALTER TABLE `purchase_return_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_return_details`
--
ALTER TABLE `sales_return_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_houses`
--
ALTER TABLE `store_houses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_house_selves`
--
ALTER TABLE `store_house_selves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `voucher_masters`
--
ALTER TABLE `voucher_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `voucher_master_details`
--
ALTER TABLE `voucher_master_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

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
  ADD CONSTRAINT `purchase_order_details__item_id_foreign` FOREIGN KEY (`_item_id`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `purchase_order_details__purchase_order_id_foreign` FOREIGN KEY (`_purchase_order_id`) REFERENCES `purchase_orders` (`id`);

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
  ADD CONSTRAINT `purchase_return_details__no_foreign` FOREIGN KEY (`_no`) REFERENCES `purchases` (`id`);

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
