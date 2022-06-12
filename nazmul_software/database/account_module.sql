-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2022 at 07:52 PM
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
  `_id` int(11) NOT NULL,
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
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`_id`, `_ref_master_id`, `_ref_detail_id`, `_short_narration`, `_narration`, `_reference`, `_transaction`, `_date`, `_table_name`, `_account_head`, `_account_group`, `_account_ledger`, `_dr_amount`, `_cr_amount`, `_branch_id`, `_cost_center`, `_name`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'N/A', 'Business Start with capital Business Start with capital Business Start with capital Business Start with capital Business Start with capital', 'Nazmul (Owner as Capital)', 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 50000.0000, 0.0000, 1, 1, 'admin', '2022-03-09 18:34:22', '2022-03-09 19:04:24'),
(2, 1, 2, 'N/A', 'Business Start with capital Business Start with capital Business Start with capital Business Start with capital Business Start with capital', 'Nazmul (Owner as Capital)', 'Account', '2022-03-10', 'voucher_masters', 7, 73, 49, 0.0000, 50000.0000, 1, 1, 'admin', '2022-03-09 18:34:22', '2022-03-09 19:04:24'),
(3, 2, 3, 'N/A', 'Audit Fee paid in Cash.', NULL, 'Account', '2022-03-10', 'voucher_masters', 10, 118, 22, 5000.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:09:46', '2022-03-10 15:09:46'),
(4, 2, 4, 'N/A', 'Audit Fee paid in Cash.', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 5000.0000, 1, 1, 'admin', '2022-03-10 15:09:46', '2022-03-10 15:09:46'),
(5, 3, 5, 'N/A', 'Bank Charge Paid From Bank', NULL, 'Account', '2022-03-10', 'voucher_masters', 10, 108, 36, 1000.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:11:52', '2022-03-10 15:11:52'),
(6, 3, 6, 'N/A', 'Bank Charge Paid From Bank', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 15, 41, 0.0000, 1000.0000, 1, 1, 'admin', '2022-03-10 15:11:52', '2022-03-10 15:11:52'),
(7, 4, 7, 'N/A', 'Cash Deposed to bank', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 10000.0000, 1, 1, 'admin', '2022-03-10 15:13:20', '2022-03-10 15:13:20'),
(8, 4, 8, 'N/A', 'Cash Deposed to bank', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 15, 41, 10000.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:13:20', '2022-03-10 15:13:20'),
(9, 5, 9, 'N/A', 'Business Promotional Expenses paid with Bank.', NULL, 'Account', '2022-03-10', 'voucher_masters', 10, 104, 28, 4000.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:14:14', '2022-03-10 15:14:14'),
(10, 5, 10, 'N/A', 'Business Promotional Expenses paid with Bank.', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 15, 41, 0.0000, 4000.0000, 1, 1, 'admin', '2022-03-10 15:14:14', '2022-03-10 15:14:14'),
(11, 6, 11, 'N/A', 'Cleaning Expenses  to Cash', NULL, 'Account', '2022-03-10', 'voucher_masters', 10, 122, 13, 500.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:14:53', '2022-03-10 15:14:53'),
(12, 6, 12, 'N/A', 'Cleaning Expenses  to Cash', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 500.0000, 1, 1, 'admin', '2022-03-10 15:14:53', '2022-03-10 15:14:53'),
(13, 7, 13, 'N/A', 'Commission on sales', NULL, 'Account', '2022-03-11', 'voucher_masters', 10, 110, 9, 5000.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:15:28', '2022-03-10 15:15:28'),
(14, 7, 14, 'N/A', 'Commission on sales', NULL, 'Account', '2022-03-11', 'voucher_masters', 1, 16, 1, 0.0000, 5000.0000, 1, 1, 'admin', '2022-03-10 15:15:28', '2022-03-10 15:15:28'),
(15, 8, 15, 'N/A', 'Purchase Computer', NULL, 'Account', '2022-03-10', 'voucher_masters', 3, 29, 45, 50000.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:16:01', '2022-03-10 15:16:01'),
(16, 8, 16, 'N/A', 'Purchase Computer', NULL, 'Account', '2022-03-11', 'voucher_masters', 1, 15, 41, 0.0000, 50000.0000, 1, 1, 'admin', '2022-03-10 15:16:01', '2022-03-10 15:16:01'),
(17, 9, 17, 'N/A', 'Conveyance Expense', NULL, 'Account', '2022-03-10', 'voucher_masters', 10, 124, 11, 500.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:16:36', '2022-03-10 15:16:36'),
(18, 9, 18, 'N/A', 'Conveyance Expense', NULL, 'Account', '2022-03-11', 'voucher_masters', 1, 16, 1, 0.0000, 500.0000, 1, 1, 'admin', '2022-03-10 15:16:36', '2022-03-10 15:16:36'),
(19, 10, 19, 'N/A', 'Donation Expenses', NULL, 'Account', '2022-03-11', 'voucher_masters', 10, 109, 29, 4000.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:17:16', '2022-03-10 15:17:16'),
(20, 10, 20, 'N/A', 'Donation Expenses', NULL, 'Account', '2022-03-11', 'voucher_masters', 1, 16, 1, 0.0000, 4000.0000, 1, 1, 'admin', '2022-03-10 15:17:16', '2022-03-10 15:17:16'),
(21, 11, 21, 'N/A', 'Electricity Bill', NULL, 'Account', '2022-03-11', 'voucher_masters', 10, 134, 12, 300.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:17:58', '2022-03-10 15:17:58'),
(22, 11, 22, 'N/A', 'Electricity Bill', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 300.0000, 1, 1, 'admin', '2022-03-10 15:17:58', '2022-03-10 15:17:58'),
(23, 12, 23, 'N/A', 'Entertainment Expenses', NULL, 'Account', '2022-03-10', 'voucher_masters', 10, 122, 15, 400.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:18:25', '2022-03-10 15:18:25'),
(24, 12, 24, 'N/A', 'Entertainment Expenses', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 400.0000, 1, 1, 'admin', '2022-03-10 15:18:25', '2022-03-10 15:18:25'),
(25, 13, 25, 'N/A', 'Food Allowance', NULL, 'Account', '2022-03-10', 'voucher_masters', 10, 121, 30, 5000.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:18:49', '2022-03-10 15:18:49'),
(26, 13, 26, 'N/A', 'Food Allowance', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 5000.0000, 1, 1, 'admin', '2022-03-10 15:18:49', '2022-03-10 15:18:49'),
(27, 14, 27, 'N/A', 'Fuel & Oil Expenses', NULL, 'Account', '2022-03-10', 'voucher_masters', 10, 134, 24, 1300.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:19:19', '2022-03-10 15:19:19'),
(28, 14, 28, 'N/A', 'Fuel & Oil Expenses', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 1300.0000, 1, 1, 'admin', '2022-03-10 15:19:19', '2022-03-10 15:19:19'),
(29, 15, 29, 'N/A', 'Software Service Sales  to Greenland Services Ltd.', NULL, 'Account', '2022-03-10', 'voucher_masters', 8, 89, 42, 0.0000, 50000.0000, 1, 1, 'admin', '2022-03-10 15:20:05', '2022-03-10 15:20:48'),
(30, 15, 30, 'N/A', 'Software Service Sales  to Greenland Services Ltd.', NULL, 'Account', '2022-03-10', 'voucher_masters', 13, 1, 39, 50000.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:20:05', '2022-03-10 15:20:48'),
(31, 15, 31, 'N/A', 'Software Service Sales  to Greenland Services Ltd.', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 50000.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:20:48', '2022-03-10 15:20:48'),
(32, 15, 32, 'N/A', 'Software Service Sales  to Greenland Services Ltd.', NULL, 'Account', '2022-03-10', 'voucher_masters', 13, 1, 39, 0.0000, 50000.0000, 1, 1, 'admin', '2022-03-10 15:20:48', '2022-03-10 15:20:48'),
(33, 16, 33, 'N/A', 'Hasten Business Consulting Cash receive', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 15, 41, 10000.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:21:45', '2022-03-10 15:21:45'),
(34, 16, 34, 'N/A', 'Hasten Business Consulting Cash receive', NULL, 'Account', '2022-03-10', 'voucher_masters', 13, 1, 47, 0.0000, 10000.0000, 1, 1, 'admin', '2022-03-10 15:21:45', '2022-03-10 15:21:45'),
(35, 17, 35, 'N/A', 'Monthly Subscription  from Hasten Business Consulting', NULL, 'Account', '2022-03-10', 'voucher_masters', 8, 89, 43, 0.0000, 10000.0000, 1, 1, 'admin', '2022-03-10 15:22:20', '2022-03-10 15:22:20'),
(36, 17, 36, 'N/A', 'Monthly Subscription  from Hasten Business Consulting', NULL, 'Account', '2022-03-10', 'voucher_masters', 13, 1, 47, 10000.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:22:20', '2022-03-10 15:22:20'),
(37, 18, 37, 'N/A', 'Insurance Premium from Trust Bank Limited', NULL, 'Account', '2022-03-10', 'voucher_masters', 10, 116, 25, 3600.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:22:57', '2022-03-10 15:22:57'),
(38, 18, 38, 'N/A', 'Insurance Premium from Trust Bank Limited', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 15, 41, 0.0000, 3600.0000, 1, 1, 'admin', '2022-03-10 15:22:57', '2022-03-10 15:22:57'),
(39, 19, 39, 'N/A', 'Internet Bill  to cash', NULL, 'Account', '2022-03-10', 'voucher_masters', 10, 134, 19, 1000.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:23:31', '2022-03-10 15:23:31'),
(40, 19, 40, 'N/A', 'Internet Bill  to cash', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 1000.0000, 1, 1, 'admin', '2022-03-10 15:23:31', '2022-03-10 15:23:31'),
(41, 20, 41, 'N/A', 'Monthly Subscription', NULL, 'Account', '2022-03-10', 'voucher_masters', 8, 89, 43, 0.0000, 2500.0000, 1, 1, 'admin', '2022-03-10 15:24:13', '2022-03-10 15:24:13'),
(42, 20, 42, 'N/A', 'Monthly Subscription', NULL, 'Account', '2022-03-10', 'voucher_masters', 13, 1, 40, 2500.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:24:13', '2022-03-10 15:24:13'),
(43, 21, 43, 'N/A', 'Legal Expenses', 'Legal Expenses', 'Account', '2022-03-10', 'voucher_masters', 10, 118, 35, 2200.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:24:42', '2022-03-10 15:24:42'),
(44, 21, 44, 'N/A', 'Legal Expenses', 'Legal Expenses', 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 2200.0000, 1, 1, 'admin', '2022-03-10 15:24:42', '2022-03-10 15:24:42'),
(45, 22, 45, 'N/A', 'License Renewal Fee', 'License Renewal Fee', 'Account', '2022-03-10', 'voucher_masters', 10, 122, 21, 1900.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:25:10', '2022-03-10 15:25:10'),
(46, 22, 46, 'N/A', 'License Renewal Fee', 'License Renewal Fee', 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 1900.0000, 1, 1, 'admin', '2022-03-10 15:25:10', '2022-03-10 15:25:10'),
(47, 23, 47, 'N/A', 'Marketing Expenses', NULL, 'Account', '2022-03-10', 'voucher_masters', 10, 104, 31, 3000.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:25:48', '2022-03-10 15:25:48'),
(48, 23, 48, 'N/A', 'Marketing Expenses', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 3000.0000, 1, 1, 'admin', '2022-03-10 15:25:48', '2022-03-10 15:25:48'),
(49, 24, 49, 'N/A', 'Md. Nazmul Hossian Owner', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 20000.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:26:24', '2022-03-10 15:26:24'),
(50, 24, 50, 'N/A', 'Md. Nazmul Hossian Owner', NULL, 'Account', '2022-03-10', 'voucher_masters', 7, 73, 49, 0.0000, 20000.0000, 1, 1, 'admin', '2022-03-10 15:26:24', '2022-03-10 15:26:24'),
(51, 25, 51, 'N/A', 'Purchase with discount', NULL, 'Account', '2022-03-10', 'voucher_masters', 9, 140, 2, 10000.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:27:48', '2022-03-10 15:27:48'),
(52, 25, 52, 'N/A', 'Purchase with discount', NULL, 'Account', '2022-03-10', 'voucher_masters', 11, 96, 6, 0.0000, 1000.0000, 1, 1, 'admin', '2022-03-10 15:27:48', '2022-03-10 15:27:48'),
(53, 25, 53, 'N/A', 'Purchase with discount', NULL, 'Account', '2022-03-10', 'voucher_masters', 1, 16, 1, 0.0000, 9000.0000, 1, 1, 'admin', '2022-03-10 15:27:48', '2022-03-10 15:27:48'),
(54, 26, 54, 'N/A', 'Sales', NULL, 'Account', '2022-03-10', 'voucher_masters', 8, 85, 4, 0.0000, 50000.0000, 1, 1, 'admin', '2022-03-10 15:29:46', '2022-03-10 15:29:46'),
(55, 26, 55, 'N/A', 'Sales', NULL, 'Account', '2022-03-10', 'voucher_masters', 13, 1, 48, 50000.0000, 0.0000, 1, 1, 'admin', '2022-03-10 15:29:46', '2022-03-10 15:29:46'),
(56, 27, 56, 'N/A', 'cash receive from bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 16, 1, 1000.0000, 0.0000, 1, 1, 'admin', '2022-03-12 16:21:32', '2022-03-12 16:21:32'),
(57, 27, 57, 'N/A', 'cash receive from bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 15, 41, 0.0000, 1000.0000, 1, 1, 'admin', '2022-03-12 16:21:32', '2022-03-12 16:21:32'),
(58, 28, 58, 'N/A', 'cash to bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 16, 1, 2000.0000, 0.0000, 1, 1, 'admin', '2022-03-12 16:40:04', '2022-03-12 16:40:04'),
(59, 28, 59, 'N/A', 'cash to bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 15, 41, 0.0000, 2000.0000, 1, 1, 'admin', '2022-03-12 16:40:04', '2022-03-12 16:40:04'),
(60, 29, 60, 'N/A', 'cash to bank charge', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 16, 1, 5000.0000, 0.0000, 1, 1, 'admin', '2022-03-12 16:42:13', '2022-03-12 16:42:13'),
(61, 29, 61, 'N/A', 'cash to bank charge', NULL, 'Account', '2022-03-12', 'voucher_masters', 10, 108, 36, 0.0000, 5000.0000, 1, 1, 'admin', '2022-03-12 16:42:13', '2022-03-12 16:42:13'),
(62, 30, 62, 'N/A', 'cash to bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 16, 1, 5000.0000, 0.0000, 1, 1, 'admin', '2022-03-12 16:44:18', '2022-03-12 16:44:18'),
(63, 30, 63, 'N/A', 'cash to bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 15, 41, 0.0000, 5000.0000, 1, 1, 'admin', '2022-03-12 16:44:18', '2022-03-12 16:44:18'),
(64, 31, 64, 'N/A', 'cash to bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 16, 1, 5000.0000, 0.0000, 1, 1, 'admin', '2022-03-12 16:45:26', '2022-03-12 16:45:26'),
(65, 31, 65, 'N/A', 'cash to bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 15, 41, 0.0000, 5000.0000, 1, 1, 'admin', '2022-03-12 16:45:26', '2022-03-12 16:45:26'),
(66, 32, 66, 'N/A', 'Business Promotional Expenses charge paid from bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 10, 104, 28, 4000.0000, 0.0000, 1, 1, 'admin', '2022-03-12 16:49:24', '2022-03-12 16:49:24'),
(67, 32, 67, 'N/A', 'Business Promotional Expenses charge paid from bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 15, 41, 0.0000, 4000.0000, 1, 1, 'admin', '2022-03-12 16:49:24', '2022-03-12 16:49:24'),
(68, 33, 68, 'N/A', 'Donation Expenses  expense paid from bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 10, 109, 29, 5000.0000, 0.0000, 1, 1, 'admin', '2022-03-12 16:54:34', '2022-03-12 16:54:34'),
(69, 33, 69, 'N/A', 'Donation Expenses  expense paid from bank', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 15, 41, 0.0000, 5000.0000, 1, 1, 'admin', '2022-03-12 16:54:34', '2022-03-12 16:54:34'),
(70, 34, 70, 'N/A', 'Monthly Subscription  Receive to bank account', NULL, 'Account', '2022-03-12', 'voucher_masters', 1, 15, 41, 50000.0000, 0.0000, 1, 1, 'admin', '2022-03-12 16:55:29', '2022-03-12 16:55:29'),
(71, 34, 71, 'N/A', 'Monthly Subscription  Receive to bank account', NULL, 'Account', '2022-03-12', 'voucher_masters', 8, 89, 43, 0.0000, 50000.0000, 1, 1, 'admin', '2022-03-12 16:55:29', '2022-03-12 16:55:29'),
(72, 35, 72, 'N/A', 'f', NULL, 'Account', '2022-03-13', 'voucher_masters', 10, 118, 22, 100.0000, 0.0000, 1, 1, 'admin', '2022-03-12 19:31:44', '2022-03-12 19:31:44'),
(73, 35, 73, 'N/A', 'f', NULL, 'Account', '2022-03-13', 'voucher_masters', 10, 108, 36, 0.0000, 100.0000, 1, 1, 'admin', '2022-03-12 19:31:44', '2022-03-12 19:31:44'),
(74, 36, 74, 'N/A', 'f', NULL, 'Account', '2022-03-13', 'voucher_masters', 10, 104, 28, 550.0000, 0.0000, 1, 1, 'admin', '2022-03-12 19:32:05', '2022-03-12 19:32:05'),
(75, 36, 75, 'N/A', 'f', NULL, 'Account', '2022-03-13', 'voucher_masters', 1, 16, 1, 0.0000, 550.0000, 1, 1, 'admin', '2022-03-12 19:32:05', '2022-03-12 19:32:05'),
(76, 37, 76, 'N/A', 'dd', NULL, 'Account', '2022-03-13', 'voucher_masters', 10, 110, 9, 440.0000, 0.0000, 1, 1, 'admin', '2022-03-12 19:32:28', '2022-03-12 19:32:28'),
(77, 37, 77, 'N/A', 'dd', NULL, 'Account', '2022-03-13', 'voucher_masters', 10, 124, 11, 0.0000, 440.0000, 1, 1, 'admin', '2022-03-12 19:32:28', '2022-03-12 19:32:28'),
(78, 38, 78, 'N/A', 'dsfd', NULL, 'Account', '2022-03-14', 'voucher_masters', 10, 109, 29, 550.0000, 0.0000, 1, 1, 'admin', '2022-03-12 19:32:54', '2022-03-12 19:32:54'),
(79, 38, 79, 'N/A', 'dsfd', NULL, 'Account', '2022-03-14', 'voucher_masters', 10, 134, 12, 0.0000, 550.0000, 1, 1, 'admin', '2022-03-12 19:32:54', '2022-03-12 19:32:54'),
(80, 39, 80, 'N/A', 'Purchase with cash', NULL, 'Account', '2022-03-13', 'voucher_masters', 9, 140, 2, 5000.0000, 0.0000, 1, 1, 'admin', '2022-03-13 17:20:42', '2022-03-15 06:19:42'),
(81, 39, 81, 'N/A', 'Purchase with cash', NULL, 'Account', '2022-03-13', 'voucher_masters', 1, 16, 1, 0.0000, 5000.0000, 1, 1, 'admin', '2022-03-13 17:20:42', '2022-03-15 06:19:42'),
(82, 40, 82, 'N/A', 's', NULL, 'Account', '2022-03-14', 'voucher_masters', 1, 16, 1, 5000.0000, 0.0000, 1, 1, 'admin', '2022-03-13 18:27:05', '2022-03-13 18:27:05'),
(83, 40, 83, 'N/A', 's', NULL, 'Account', '2022-03-14', 'voucher_masters', 8, 85, 4, 0.0000, 5000.0000, 1, 1, 'admin', '2022-03-13 18:27:05', '2022-03-13 18:27:05'),
(84, 41, 84, 'N/A', 'capital', NULL, 'Account', '2022-03-15', 'voucher_masters', 1, 16, 1, 30000.0000, 0.0000, 1, 1, 'admin', '2022-03-15 11:47:00', '2022-03-15 11:47:00'),
(85, 41, 85, 'N/A', 'capital', NULL, 'Account', '2022-03-15', 'voucher_masters', 7, 73, 49, 0.0000, 30000.0000, 1, 1, 'admin', '2022-03-15 11:47:00', '2022-03-15 11:47:00'),
(86, 42, 86, 'N/A', 'Sales Return', NULL, 'Account', '2022-03-15', 'voucher_masters', 8, 85, 5, 5000.0000, 0.0000, 1, 1, 'admin', '2022-03-15 15:20:08', '2022-03-15 15:20:08'),
(87, 42, 87, 'N/A', 'Sales Return', NULL, 'Account', '2022-03-15', 'voucher_masters', 1, 16, 1, 0.0000, 5000.0000, 1, 1, 'admin', '2022-03-15 15:20:09', '2022-03-15 15:20:09'),
(88, 43, 88, 'N/A', 'Sales adjusted with cost of goods sold', NULL, 'Account', '2022-03-15', 'voucher_masters', 9, 140, 50, 25000.0000, 0.0000, 1, 1, 'admin', '2022-03-16 18:47:30', '2022-03-16 18:47:30'),
(89, 43, 89, 'N/A', 'Sales adjusted with cost of goods sold', NULL, 'Account', '2022-03-15', 'voucher_masters', 2, 6, 7, 0.0000, 25000.0000, 1, 1, 'admin', '2022-03-16 18:47:30', '2022-03-16 18:47:30');

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

INSERT INTO `account_ledgers` (`id`, `_account_group_id`, `_account_head_id`, `_name`, `_code`, `_image`, `_nid`, `_other_document`, `_email`, `_phone`, `_address`, `_credit_limit`, `_branch_id`, `_is_user`, `_user_id`, `_is_sales_form`, `_is_purchase_form`, `_is_all_branch`, `_short`, `_status`, `_show`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 16, 1, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:46:36', '2022-03-09 11:46:36'),
(2, 129, 10, 'Purchase', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 1, 1, 1, '1-admin', '1-admin', '2022-03-09 11:48:41', '2022-03-17 11:51:11'),
(3, 129, 10, 'Purchase Return', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', '1-admin', '2022-03-09 11:49:00', '2022-03-17 11:51:11'),
(4, 85, 8, 'Sales', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:49:50', '2022-03-16 11:06:54'),
(5, 85, 8, 'Sales Return', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:50:46', '2022-03-16 11:06:54'),
(6, 96, 11, 'Purchase Discount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:51:26', '2022-03-16 11:06:54'),
(7, 6, 2, 'Inventory', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', '1-admin', '2022-03-09 11:52:42', '2022-03-10 09:28:42'),
(8, 142, 10, 'Sales Discount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:55:02', '2022-03-16 11:06:54'),
(9, 110, 10, 'Commission on sales', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:56:06', '2022-03-16 11:06:54'),
(10, 115, 10, 'VAT Payable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:56:44', '2022-03-16 11:06:54'),
(11, 124, 10, 'Conveyance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:57:27', '2022-03-16 11:06:54'),
(12, 134, 10, 'Electricity Bill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:57:57', '2022-03-16 11:06:54'),
(13, 122, 10, 'Cleaning Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:58:27', '2022-03-16 11:06:54'),
(14, 127, 10, 'Repair & Maintenance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:58:49', '2022-03-16 11:06:54'),
(15, 122, 10, 'Entertainment Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:59:12', '2022-03-16 11:06:54'),
(16, 122, 10, 'Printing Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:59:28', '2022-03-16 11:06:54'),
(17, 122, 10, 'Stationery Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 11:59:46', '2022-03-16 11:06:54'),
(18, 128, 10, 'Postage & Courier Bill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:00:20', '2022-03-16 11:06:54'),
(19, 134, 10, 'Internet Bill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:00:44', '2022-03-16 11:06:54'),
(20, 131, 10, 'Travelling Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:01:08', '2022-03-16 11:06:54'),
(21, 122, 10, 'License Renewal Fee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:01:58', '2022-03-16 11:06:54'),
(22, 118, 10, 'Audit Fee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:02:15', '2022-03-16 11:06:54'),
(23, 126, 10, 'Office Rent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:02:35', '2022-03-16 11:06:54'),
(24, 134, 10, 'Fuel & Oil Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:03:19', '2022-03-16 11:06:54'),
(25, 116, 10, 'Insurance Premium', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:03:32', '2022-03-16 11:06:54'),
(26, 123, 10, 'Miscellaneous Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:04:18', '2022-03-16 11:06:54'),
(27, 122, 10, 'Medical Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:06:48', '2022-03-16 11:06:54'),
(28, 104, 10, 'Business Promotional Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:07:05', '2022-03-16 11:06:54'),
(29, 109, 10, 'Donation Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:08:44', '2022-03-16 11:06:54'),
(30, 121, 10, 'Food Allowance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:08:58', '2022-03-16 11:06:54'),
(31, 104, 10, 'Marketing Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:09:25', '2022-03-16 11:06:54'),
(32, 123, 10, 'Other Office Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:09:48', '2022-03-16 11:06:54'),
(33, 122, 10, 'News Paper & Cable-Tv Bill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:10:05', '2022-03-16 11:06:54'),
(34, 130, 10, 'Tax & VAT Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:10:37', '2022-03-16 11:06:54'),
(35, 118, 10, 'Legal Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:10:52', '2022-03-16 11:06:54'),
(36, 108, 10, 'Bank Charges', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:11:11', '2022-03-16 11:06:54'),
(37, 106, 10, 'Rounding Off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:11:51', '2022-03-16 11:06:54'),
(38, 96, 11, 'Rounding Add', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:12:23', '2022-03-16 11:06:54'),
(39, 1, 13, 'Greenland Services Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:17:20', '2022-03-09 12:17:20'),
(40, 1, 13, 'Just Juice Limited.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:17:31', '2022-03-09 12:17:31'),
(41, 15, 1, 'Trust Bank Limited', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', '1-admin', '2022-03-09 12:17:50', '2022-03-09 12:18:24'),
(42, 89, 8, 'Software Service Sales', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:18:47', '2022-03-16 11:06:54'),
(43, 89, 8, 'Monthly Subscription', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:19:16', '2022-03-16 11:06:54'),
(44, 1, 13, 'United General Electric Company Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:19:36', '2022-03-09 12:19:36'),
(45, 29, 3, 'Computer-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:20:00', '2022-03-09 12:20:00'),
(46, 125, 10, 'Salary', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:20:49', '2022-03-16 11:06:54'),
(47, 1, 13, 'Hasten Business Consulting', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:21:21', '2022-03-09 12:21:21'),
(48, 1, 13, 'Rana Builders (Pvt) Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:21:33', '2022-03-09 12:21:33'),
(49, 73, 7, 'Md. Nazmul Hossian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-09 12:22:45', '2022-03-09 12:22:45'),
(50, 140, 9, 'Cost of goods sold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, '1-admin', NULL, '2022-03-16 10:44:00', '2022-03-16 11:06:54');

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
  `_barcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_ledger_id` bigint(20) UNSIGNED NOT NULL,
  `_image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_discount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_vat` double(15,4) NOT NULL DEFAULT 0.0000,
  `_pur_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_sale_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_manufacture_company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(94, '2022_02_01_144326_create_inventories_table', 16),
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
(116, '2022_02_01_145606_create_store_house_selves_table', 17);

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
(46, 'income-statement-settings', 'web', 'Accounts Report', NULL, NULL);

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
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_item_id` bigint(20) UNSIGNED NOT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_details`
--

CREATE TABLE `purchase_return_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_item_id` bigint(20) UNSIGNED NOT NULL,
  `_qty` double(15,4) NOT NULL DEFAULT 0.0000,
  `_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_vat` double(15,4) NOT NULL DEFAULT 0.0000,
  `_value` double(15,4) NOT NULL DEFAULT 0.0000,
  `_purchase_ref_id` int(11) DEFAULT NULL,
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
(46, 1);

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
(1, 'admin', 'admin@gmail.com', NULL, 'admin', '1,2', '1', NULL, NULL, '$2y$10$2hWspUMjme8z/a.4J/2vXOqoMVnpfrMrx4LO37yk0il6iJVcqBuMe', 1, NULL, '2021-05-29 11:33:16', '2022-03-15 09:21:57'),
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
(43, 'AC-43', '2022-03-15', '18:47:30', 1, 'admin', 'Sales adjusted with cost of goods sold', 'JV', NULL, NULL, 'voucher_masters', 25000.0000, 1, 1, '1-admin', NULL, '2022-03-16 12:47:30', '2022-03-16 12:47:30');

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
(89, 43, 2, 6, 7, 0.0000, 25000.0000, NULL, 'N/A', 1, 1, 1, '1-admin', NULL, '2022-03-16 12:47:30', '2022-03-16 12:47:30');

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
  ADD PRIMARY KEY (`_id`);

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
  ADD KEY `inventories__ledger_id_foreign` (`_ledger_id`);

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
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_details__item_id_foreign` (`_item_id`),
  ADD KEY `purchase_details__no_foreign` (`_no`),
  ADD KEY `purchase_details__branch_id_foreign` (`_branch_id`);

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
-- Indexes for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_return_details__item_id_foreign` (`_item_id`),
  ADD KEY `purchase_return_details__no_foreign` (`_no`),
  ADD KEY `purchase_return_details__branch_id_foreign` (`_branch_id`);

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
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_inventories`
--
ALTER TABLE `item_inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_account_head`
--
ALTER TABLE `main_account_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `page_rows`
--
ALTER TABLE `page_rows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `product_price_lists`
--
ALTER TABLE `product_price_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `voucher_masters`
--
ALTER TABLE `voucher_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `voucher_master_details`
--
ALTER TABLE `voucher_master_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

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
  ADD CONSTRAINT `inventories__ledger_id_foreign` FOREIGN KEY (`_ledger_id`) REFERENCES `account_ledgers` (`id`);

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
