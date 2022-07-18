-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 07:17 PM
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
-- Database: `accounting_v_1_2`
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
  `_voucher_type` varchar(10) NOT NULL DEFAULT 'JV',
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

INSERT INTO `accounts` (`id`, `_ref_master_id`, `_ref_detail_id`, `_short_narration`, `_narration`, `_reference`, `_transaction`, `_voucher_type`, `_date`, `_table_name`, `_account_head`, `_account_group`, `_account_ledger`, `_dr_amount`, `_cr_amount`, `_branch_id`, `_cost_center`, `_name`, `_status`, `_serial`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'MD Rasel Molla', 'Purchase', NULL, 'Purchase', 'JV', '2022-07-01', 'purchases', 10, 129, 2, 116000.0000, 0.0000, 1, 1, 'jony', 1, 1, '2022-07-01 03:10:46', '2022-07-01 03:10:46'),
(2, 1, 1, 'Purchase', 'Purchase', NULL, 'Purchase', 'JV', '2022-07-01', 'purchases', 12, 43, 85, 0.0000, 116000.0000, 1, 1, 'jony', 1, 2, '2022-07-01 03:10:46', '2022-07-01 03:10:46'),
(3, 1, 1, 'Purchase', 'Purchase', NULL, 'Purchase', 'JV', '2022-07-01', 'purchases', 2, 6, 7, 116000.0000, 0.0000, 1, 1, 'jony', 1, 3, '2022-07-01 03:10:46', '2022-07-01 03:10:46'),
(4, 1, 1, 'Inventory', 'Purchase', NULL, 'Purchase', 'JV', '2022-07-01', 'purchases', 10, 129, 2, 0.0000, 116000.0000, 1, 1, 'jony', 1, 4, '2022-07-01 03:10:46', '2022-07-01 03:10:46'),
(5, 2, 2, 'MD Salamot Hossain', 'Purchase', NULL, 'Purchase', 'JV', '2022-07-01', 'purchases', 10, 129, 2, 58000.0000, 0.0000, 1, 1, 'jony', 1, 1, '2022-07-01 03:13:13', '2022-07-01 03:13:13'),
(6, 2, 2, 'Purchase', 'Purchase', NULL, 'Purchase', 'JV', '2022-07-01', 'purchases', 13, 1, 254, 0.0000, 58000.0000, 1, 1, 'jony', 1, 2, '2022-07-01 03:13:13', '2022-07-01 03:13:13'),
(7, 2, 2, 'Purchase', 'Purchase', NULL, 'Purchase', 'JV', '2022-07-01', 'purchases', 2, 6, 7, 58000.0000, 0.0000, 1, 1, 'jony', 1, 3, '2022-07-01 03:13:13', '2022-07-01 03:13:13'),
(8, 2, 2, 'Inventory', 'Purchase', NULL, 'Purchase', 'JV', '2022-07-01', 'purchases', 10, 129, 2, 0.0000, 58000.0000, 1, 1, 'jony', 1, 4, '2022-07-01 03:13:13', '2022-07-01 03:13:13'),
(9, 3, 3, 'Abdullah Al Mamun (Layer)', 'Purchase', NULL, 'Purchase', 'JV', '2022-07-01', 'purchases', 10, 129, 2, 58000.0000, 0.0000, 1, 1, 'jony', 1, 1, '2022-07-01 03:17:54', '2022-07-01 03:18:19'),
(10, 3, 3, 'Purchase', 'Purchase', NULL, 'Purchase', 'JV', '2022-07-01', 'purchases', 13, 1, 152, 0.0000, 58000.0000, 1, 1, 'jony', 1, 2, '2022-07-01 03:17:54', '2022-07-01 03:18:19'),
(11, 3, 3, 'Purchase', 'Purchase', NULL, 'Purchase', 'JV', '2022-07-01', 'purchases', 2, 6, 7, 58000.0000, 0.0000, 1, 1, 'jony', 1, 3, '2022-07-01 03:17:54', '2022-07-01 03:18:19'),
(12, 3, 3, 'Inventory', 'Purchase', NULL, 'Purchase', 'JV', '2022-07-01', 'purchases', 10, 129, 2, 0.0000, 58000.0000, 1, 1, 'jony', 1, 4, '2022-07-01 03:17:54', '2022-07-01 03:18:19'),
(13, 4, 4, 'MD Moslem Mia', 'purchase', NULL, 'Purchase', 'JV', '2022-07-01', 'purchases', 10, 129, 2, 1300.0000, 0.0000, 1, 1, 'jony', 1, 1, '2022-07-01 14:52:30', '2022-07-01 14:52:30'),
(14, 4, 4, 'Purchase', 'purchase', NULL, 'Purchase', 'JV', '2022-07-01', 'purchases', 13, 1, 189, 0.0000, 1300.0000, 1, 1, 'jony', 1, 2, '2022-07-01 14:52:30', '2022-07-01 14:52:30'),
(15, 4, 4, 'Purchase', 'purchase', NULL, 'Purchase', 'JV', '2022-07-01', 'purchases', 2, 6, 7, 1300.0000, 0.0000, 1, 1, 'jony', 1, 3, '2022-07-01 14:52:30', '2022-07-01 14:52:30'),
(16, 4, 4, 'Inventory', 'purchase', NULL, 'Purchase', 'JV', '2022-07-01', 'purchases', 10, 129, 2, 0.0000, 1300.0000, 1, 1, 'jony', 1, 4, '2022-07-01 14:52:30', '2022-07-01 14:52:30'),
(17, 5, 5, 'MD Moslem Mia', 'purchase', NULL, 'Purchase', 'JV', '2022-07-01', 'purchases', 10, 129, 2, 2600.0000, 0.0000, 1, 1, 'jony', 1, 1, '2022-07-01 14:56:12', '2022-07-01 14:56:12'),
(18, 5, 5, 'Purchase', 'purchase', NULL, 'Purchase', 'JV', '2022-07-01', 'purchases', 13, 1, 189, 0.0000, 2600.0000, 1, 1, 'jony', 1, 2, '2022-07-01 14:56:12', '2022-07-01 14:56:12'),
(19, 5, 5, 'Purchase', 'purchase', NULL, 'Purchase', 'JV', '2022-07-01', 'purchases', 2, 6, 7, 2600.0000, 0.0000, 1, 1, 'jony', 1, 3, '2022-07-01 14:56:12', '2022-07-01 14:56:12'),
(20, 5, 5, 'Inventory', 'purchase', NULL, 'Purchase', 'JV', '2022-07-01', 'purchases', 10, 129, 2, 0.0000, 2600.0000, 1, 1, 'jony', 1, 4, '2022-07-01 14:56:12', '2022-07-01 14:56:12'),
(21, 1, 1, 'Sales', 'Sales', NULL, 'Sales', 'JV', '2022-07-01', 'sales', 13, 1, 121, 280.0000, 0.0000, 1, 1, 'jony', 1, 1, '2022-07-01 15:01:07', '2022-07-01 15:01:07'),
(22, 1, 1, 'Walking Customer', 'Sales', NULL, 'Sales', 'JV', '2022-07-01', 'sales', 8, 85, 4, 0.0000, 280.0000, 1, 1, 'jony', 1, 2, '2022-07-01 15:01:07', '2022-07-01 15:01:07'),
(23, 1, 1, 'Inventory', 'Sales', NULL, 'Sales', 'JV', '2022-07-01', 'sales', 9, 140, 50, 260.0000, 0.0000, 1, 1, 'jony', 1, 3, '2022-07-01 15:01:07', '2022-07-01 15:01:07'),
(24, 1, 1, 'Cost of goods sold', 'Sales', NULL, 'Sales', 'JV', '2022-07-01', 'sales', 2, 6, 7, 0.0000, 260.0000, 1, 1, 'jony', 1, 4, '2022-07-01 15:01:07', '2022-07-01 15:01:07'),
(25, 1, 1, 'N/A', 'Sales', NULL, 'Sales', 'JV', '2022-07-01', 'sales_accounts', 1, 16, 1, 280.0000, 0.0000, 1, 1, 'jony', 1, 9, '2022-07-01 15:01:07', '2022-07-01 15:01:07'),
(26, 1, 2, 'Sales Payment', 'Sales', NULL, 'Sales', 'JV', '2022-07-01', 'sales_accounts', 13, 1, 121, 0.0000, 280.0000, 1, 1, 'jony', 1, 20, '2022-07-01 15:01:07', '2022-07-01 15:01:07'),
(27, 2, 2, 'Sales', 'sales', NULL, 'Sales', 'JV', '2022-07-07', 'sales', 13, 1, 158, 1820.0000, 0.0000, 1, 1, 'jony', 1, 1, '2022-07-07 11:18:39', '2022-07-07 11:18:39'),
(28, 2, 2, 'Abdullah Al Mamun (Sonali-1)', 'sales', NULL, 'Sales', 'JV', '2022-07-07', 'sales', 8, 85, 4, 0.0000, 1820.0000, 1, 1, 'jony', 1, 2, '2022-07-07 11:18:39', '2022-07-07 11:18:39'),
(29, 2, 2, 'Inventory', 'sales', NULL, 'Sales', 'JV', '2022-07-07', 'sales', 9, 140, 50, 1690.0000, 0.0000, 1, 1, 'jony', 1, 3, '2022-07-07 11:18:39', '2022-07-07 11:18:39'),
(30, 2, 2, 'Cost of goods sold', 'sales', NULL, 'Sales', 'JV', '2022-07-07', 'sales', 2, 6, 7, 0.0000, 1690.0000, 1, 1, 'jony', 1, 4, '2022-07-07 11:18:39', '2022-07-07 11:18:39');

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
(68, 'Withrow', '', '', 1, NULL, NULL, 7, 0, 1, 5, '2022-03-02 12:50:01', '2022-07-01 14:08:01'),
(69, 'Equity in earnings of subsidiaries', '', 'Use Equity in earnings of subsidiaries to track the original investment in shares of subsidiaries plus the share of earnings or losses from the operations of the subsidiary.', 1, NULL, NULL, 7, 0, 1, 5, '2022-03-02 12:50:14', '2022-03-02 12:50:14'),
(73, 'Owner\'s Equity', '', 'Corporations use Owner’s equity to show the cumulative net income or loss of their business as of the beginning of the financial year.', 1, NULL, NULL, 7, 0, 1, 5, '2022-03-02 12:51:28', '2022-03-02 12:51:28'),
(79, 'Retained Earnings', '', 'QuickBooks Online Plus adds this account when you create your company.\r\nRetained earnings tracks net income from previous financial years.\r\n\r\nQuickBooks Online Plus automatically transfers your profit (or loss) to Retained earnings at the end of each financial year.', 1, NULL, NULL, 7, 0, 1, 5, '2022-03-02 12:53:06', '2022-03-02 12:53:06'),
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
  `_alious` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_nid` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_other_document` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'N/A',
  `_address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT 'N/A',
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
  `_is_used` tinyint(4) NOT NULL DEFAULT 0,
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

INSERT INTO `account_ledgers` (`id`, `_account_group_id`, `_account_head_id`, `_name`, `_alious`, `_code`, `_image`, `_nid`, `_other_document`, `_email`, `_phone`, `_address`, `_credit_limit`, `_balance`, `_branch_id`, `_is_user`, `_user_id`, `_is_sales_form`, `_is_purchase_form`, `_is_all_branch`, `_short`, `_status`, `_is_used`, `_show`, `_note`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 16, 1, 'Cash In Hand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0.0000, 280.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, NULL, '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-03-09 11:46:36', '2022-06-02 08:38:04'),
(2, 129, 10, 'Purchase', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 0, NULL, '1-admin', '1-admin', '2022-03-09 11:48:41', '2022-04-18 14:45:23'),
(3, 129, 10, 'Purchase Return', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 0, NULL, '1-admin', '1-admin', '2022-03-09 11:49:00', '2022-04-18 14:45:23'),
(4, 85, 8, 'Sales', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, -2100.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, NULL, '1-admin', NULL, '2022-03-09 11:49:50', '2022-03-16 11:06:54'),
(5, 85, 8, 'Sales Return', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 14620.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, NULL, '1-admin', NULL, '2022-03-09 11:50:46', '2022-03-16 11:06:54'),
(6, 96, 11, 'Purchase Discount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 11:51:26', '2022-03-16 11:06:54'),
(7, 6, 2, 'Inventory', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 233950.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, NULL, '1-admin', '1-admin', '2022-03-09 11:52:42', '2022-03-10 09:28:42'),
(8, 142, 10, 'Sales Discount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 70.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, NULL, '1-admin', NULL, '2022-03-09 11:55:02', '2022-03-16 11:06:54'),
(9, 110, 10, 'Commission on sales', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 11:56:06', '2022-03-16 11:06:54'),
(10, 115, 10, 'VAT Payable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, -70.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, NULL, '1-admin', NULL, '2022-03-09 11:56:44', '2022-03-16 11:06:54'),
(11, 124, 10, 'Conveyance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 11:57:27', '2022-03-16 11:06:54'),
(12, 134, 10, 'Electricity Bill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 11:57:57', '2022-03-16 11:06:54'),
(13, 122, 10, 'Cleaning Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 11:58:27', '2022-03-16 11:06:54'),
(14, 127, 10, 'Repair & Maintenance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 11:58:49', '2022-03-16 11:06:54'),
(15, 121, 10, 'Entertainment Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-03-09 11:59:12', '2022-06-09 13:36:25'),
(16, 122, 10, 'Printing Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 11:59:28', '2022-03-16 11:06:54'),
(17, 122, 10, 'Stationery Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 11:59:46', '2022-03-16 11:06:54'),
(18, 128, 10, 'Postage & Courier Bill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:00:20', '2022-03-16 11:06:54'),
(19, 134, 10, 'Internet Bill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:00:44', '2022-03-16 11:06:54'),
(20, 131, 10, 'Travelling Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:01:08', '2022-03-16 11:06:54'),
(21, 122, 10, 'License Renewal Fee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:01:58', '2022-03-16 11:06:54'),
(22, 118, 10, 'Audit Fee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:02:15', '2022-03-16 11:06:54'),
(23, 126, 10, 'Warehouse Rent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-03-09 12:02:35', '2022-06-07 08:05:04'),
(24, 134, 10, 'Fuel & Oil Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:03:19', '2022-03-16 11:06:54'),
(25, 116, 10, 'Insurance Premium', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:03:32', '2022-03-16 11:06:54'),
(26, 123, 10, 'Miscellaneous Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:04:18', '2022-03-16 11:06:54'),
(27, 122, 10, 'Medical Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:06:48', '2022-03-16 11:06:54'),
(28, 104, 10, 'Business Promotional Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:07:05', '2022-03-16 11:06:54'),
(29, 109, 10, 'Donation Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:08:44', '2022-03-16 11:06:54'),
(30, 121, 10, 'Food Allowance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:08:58', '2022-03-16 11:06:54'),
(31, 104, 10, 'Marketing Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:09:25', '2022-03-16 11:06:54'),
(32, 123, 10, 'Other Office Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:09:48', '2022-03-16 11:06:54'),
(33, 122, 10, 'News Paper & Cable-Tv Bill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:10:05', '2022-03-16 11:06:54'),
(34, 130, 10, 'Tax & VAT Expenses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:10:37', '2022-03-16 11:06:54'),
(35, 118, 10, 'Legal Fee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-03-09 12:10:52', '2022-06-06 17:40:50'),
(36, 108, 10, 'Bank Charges', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:11:11', '2022-03-16 11:06:54'),
(37, 106, 10, 'Rounding Off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:11:51', '2022-03-16 11:06:54'),
(38, 96, 11, 'Rounding Add', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:12:23', '2022-03-16 11:06:54'),
(42, 89, 8, 'Software Service Sales', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:18:47', '2022-03-16 11:06:54'),
(43, 89, 8, 'Monthly Subscription', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:19:16', '2022-03-16 11:06:54'),
(45, 29, 3, 'Computer-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:20:00', '2022-03-09 12:20:00'),
(46, 125, 10, 'Salary', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-03-09 12:20:49', '2022-03-16 11:06:54'),
(49, 73, 7, 'Capital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-admin', '2022-03-09 12:22:45', '2022-05-25 03:55:48'),
(50, 140, 9, 'Cost of goods sold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 1950.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, NULL, '1-admin', NULL, '2022-03-16 10:44:00', '2022-03-16 11:06:54'),
(51, 47, 5, 'Purchase VAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-04-15 11:41:21', '2022-04-15 11:41:21'),
(58, 43, 12, 'Opening Inventory Adjustment', NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(59, 43, 12, 'Manikganj Poultry Feed (Md Ayub Ali)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801748918975', 'Horali Manson,Bus Stand,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(64, 43, 12, 'Renata Limited', NULL, NULL, NULL, NULL, NULL, NULL, '+8801847128233', 'Mirpur,Dhaka,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(65, 43, 12, 'R.R.P Agro Farms', NULL, NULL, NULL, NULL, NULL, NULL, '+8801708417641', 'RRP Garden,B-15/1,Shimultola,Jaleshwor,Savar,Dhaka.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(67, 43, 12, 'Kazi Farms Limited', NULL, NULL, NULL, NULL, NULL, NULL, '+8801714071395', 'Dhaka,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, 'Code: Mani032', NULL, '1-Wali Ul Bari Chowdhury (Shawn)', NULL, '2022-06-07 14:33:44'),
(68, 43, 12, 'R.R.P Breeder Farms', NULL, NULL, NULL, NULL, NULL, NULL, '+8801708417641', 'Ishwardi,Pabna,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(69, 43, 12, 'Solid Hacharies Limited', NULL, NULL, NULL, NULL, NULL, NULL, '+8801704173707', 'Gazipur,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(70, 43, 12, 'Paragon Poultry Limited', NULL, NULL, NULL, NULL, NULL, NULL, '+8801313034413', 'Jamgora,Ashulia,Savar,Dhaka.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, 'Code: 100434', NULL, '1-Wali Ul Bari Chowdhury (Shawn)', NULL, '2022-06-07 14:34:55'),
(71, 43, 12, 'New Hope Feed Mill BD Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, '+8801722759848', 'Gazipur,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(72, 43, 12, 'New Hope Farms BD Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, '+8801704979898', 'Gazipur,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(73, 43, 12, 'ACI Limited', NULL, NULL, NULL, NULL, NULL, NULL, '+8801723173187', 'Dhaka,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(74, 43, 12, 'Elanco Bangladesh Limited', NULL, NULL, NULL, NULL, NULL, NULL, '+8801713241669', 'Dhaka,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(75, 43, 12, 'Agrovet Pharma', NULL, NULL, NULL, NULL, NULL, NULL, '+8801914242832', 'Dhaka,Bangladesh.', 0.0000, -13900.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, NULL, NULL, NULL, NULL, NULL),
(76, 43, 12, 'Pharma & Firm', NULL, NULL, NULL, NULL, NULL, NULL, '+8801970010912,+8801718000489', 'Dhaka,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(77, 43, 12, 'FnF Pharmaceuticals', NULL, NULL, NULL, NULL, NULL, NULL, '+8801711150175', 'Dhaka,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(78, 43, 12, 'Avansis Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, '+8801718964622', 'Manikganj,Dhaka,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(79, 43, 12, 'Avesta Agrovet', NULL, NULL, NULL, NULL, NULL, NULL, '+8801799395192', 'Dhaka,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(80, 43, 12, 'Impex Marketing Limited', NULL, NULL, NULL, NULL, NULL, NULL, '+8801777761411', 'Dhaka,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(81, 43, 12, 'Eon Animal Health Products Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, '+8801713249403', 'Gazipur,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(82, 43, 12, 'Opening Stock', NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(83, 43, 12, 'Rafique Medicine Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, '+8801741547492', 'Ishwardi,Pabna,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(84, 43, 12, 'Dr Mehedi Hasan', NULL, NULL, NULL, NULL, NULL, NULL, '+8801722759848', 'Joyra,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(85, 43, 12, 'MD Rasel Molla', NULL, NULL, NULL, NULL, NULL, NULL, '+8801671125045, +8801712314921', 'Nimtoli Bazar,Manikganj.', 0.0000, -116000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, 'Molla Electronics', NULL, '1-Wali Ul Bari Chowdhury (Shawn)', NULL, '2022-06-02 08:31:48'),
(86, 43, 12, 'Balaka Poultry Complex (MD Kamal Hossain)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801711954069, +8801923969497', 'Nobab Super Market,Bus Stand,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(87, 43, 12, 'Brother\'s Poultry & Dairy Medicine Corner (MD Mizanur Rahaman)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801740573672', 'Ranu Super Market,Joyra College Road,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(88, 43, 12, 'Bismillah Business Center (MD Shahin Mia Hasin)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801765076063', 'Baniazuri Bus Stand,Tora,Ghior,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(89, 43, 12, 'M/S Abir Traders (MD Zakir Hossain)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801750181777, +8801956930172', 'Joyra College Road,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(90, 43, 12, 'M/S Maa Poultry & Dairy Medicine Corner (Md Delower Hossain)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801710950518', 'Joyra Road,Bus Stand,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(91, 43, 12, 'M/S Sifat Poultry Feed (Md Towhid Mahmud Sujon)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801708949409', 'Joyra College Road,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(92, 43, 12, 'Mayer Doa Poultry Feed (Md Anisur Rahaman Anis)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801712170653', 'Bewtha Ghat,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(93, 43, 12, 'Bhai Bhai Poultry Farm (MD Lucky Chowdhury)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801790998854', 'Bewtha Mas Bazar,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(94, 43, 12, 'Eng. Bengir Ahmed', NULL, NULL, NULL, NULL, NULL, NULL, '+8801711988761', 'Badda,Dhaka.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(95, 43, 12, 'Karz-A-Hasana', NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'Bangladesh', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(96, 43, 12, 'Mama Vagina Poultry & Dairy Medicine (Md Shihabur Rahaman Babu)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801712464426', 'Bus Stand,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(97, 43, 12, 'Mayer Charon Poultry Farm (Uaday Saha)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801775982362', 'Borai,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(98, 43, 12, 'Incepta Pharmaceuticals Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, '+8801674203780', 'Dhaka,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(99, 43, 12, 'Newtec Pharmaceuticals Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, '+8801766201962', 'Dhaka,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(100, 43, 12, 'M/S Rasin Enterprise (Md Habibur Rahaman)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801683153460, +8801729384989', 'Horgoj Mor,Saturia,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(101, 43, 12, 'C.P Bangladesh Co; Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, '+8801713364158', 'Chandra,Gazipur,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(102, 43, 12, 'Index Poultry Private Company', NULL, NULL, NULL, NULL, NULL, NULL, '+8801844019227', 'Gulshan,Dhaka.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(103, 43, 12, 'Md Parvez Mia', NULL, NULL, NULL, NULL, NULL, NULL, '+8801711513973', 'Deshgram,Nirali,Daulotpur,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(104, 43, 12, 'Goalondo Gazi Agro Farm', NULL, NULL, NULL, NULL, NULL, NULL, '+8801721404267, +8801972404267, +8801770654254', 'Goalondo,Rajbari.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(105, 43, 12, 'Navana Pharmaceuticals Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, '+8801321130666', 'Rupshi,Narayanganj,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(106, 43, 12, 'Orbit Poultry & Hatchery', NULL, NULL, NULL, NULL, NULL, NULL, '+8801716023391', 'Rajbari,Dhaka,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(107, 43, 12, 'Suguna Foods Bangladesh Pvt. Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, '+8801709650913', 'H#76,Gausul Azam Avenue,S#13,Uttara,Dhaka.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(108, 43, 12, 'Walking Supplier', NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, '1-admin', NULL, '2022-05-25 01:42:10'),
(121, 1, 13, 'Walking Customer', NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, NULL, NULL, NULL, NULL, NULL),
(123, 1, 13, 'Mohammad Subel Mia', NULL, NULL, NULL, NULL, NULL, NULL, '+8801747888113', 'Sadinagor,Painjonkhara,Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(124, 1, 13, 'Md Abdul Alim', NULL, NULL, NULL, NULL, NULL, NULL, '+8801686144842, +8801787011075', 'Chor Ghosta,Putail,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(125, 1, 13, 'Nana-Nati Agro', NULL, NULL, NULL, NULL, NULL, NULL, '+8801777371443, +8801767648378', 'Madrasa Mor,Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(128, 1, 13, 'Md Robin Hossain', NULL, NULL, NULL, NULL, NULL, NULL, '+8801714482059, +8801639216356', 'Koyra,Shushunda,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(129, 1, 13, 'Sushil Kumar Ghosh', NULL, NULL, NULL, NULL, NULL, NULL, '+8801775247014', '621,East Dashora,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(130, 1, 13, 'Mohammad Monir Hossain (Monu)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801767709899, +8801638306448', 'Chor Ghosta,Putail,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(131, 1, 13, 'Akkas Ali (Broiler-1)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801953694279, +8801323150051', 'Sorupai,Naboggram,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(132, 1, 13, 'Mohammad Abdul Kader', NULL, NULL, NULL, NULL, NULL, NULL, '+8801747853183, +8801744169123', 'Tewta,Shibalaya,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(133, 1, 13, 'Mohammad Rubel Ahammed', NULL, NULL, NULL, NULL, NULL, NULL, '+8801710123474, +8801788781670, +8801624076774', 'Moddhokhalpadhoa,Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(134, 1, 13, 'Mohammad Shamim Ahammed', NULL, NULL, NULL, NULL, NULL, NULL, '+8801735718923, +8801792505334', 'Koyra,Shushunda,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(135, 1, 13, 'Mohammad Aowlad Hossain', NULL, NULL, NULL, NULL, NULL, NULL, '+8801706063373, +8801743883709, +8801641129134', 'Bengrui,Naboggram,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(136, 1, 13, 'Mohammad Milon Uddin', NULL, NULL, NULL, NULL, NULL, NULL, '+8801621903088', 'Vatbaur,Shushunda,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(137, 1, 13, 'Mohammad Rayhan Biswash (Broiler-1)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801787395736, +8801735108734', 'Dokhkhin Uthuli,Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(138, 1, 13, 'Mohammad Selim Mia', NULL, NULL, NULL, NULL, NULL, NULL, '+8801797294895', 'Koyra,Shushunda,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(139, 1, 13, 'Mohammad Mominur Rahaman Ripok', NULL, NULL, NULL, NULL, NULL, NULL, '+8801683966358', 'Sadinagor,Painjonkhara,Garpara.Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(140, 1, 13, 'Mohammad Milon Mia/Shamim', NULL, NULL, NULL, NULL, NULL, NULL, '+8801742370920, +8801792557983', 'Chor Ghosta,Putail,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(141, 1, 13, 'Mohammad Shahriar Nadim Rabbi', NULL, NULL, NULL, NULL, NULL, NULL, '+8801618501090', 'Rouhadoho,Shushunda,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(142, 1, 13, 'Mohammad Faruq Hasan/ Md Mizan', NULL, NULL, NULL, NULL, NULL, NULL, '+8801727020922, +8801679292829', 'Modhdhokhalpadhoa,Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(146, 1, 13, 'Afsana Khanom (Elahi Rahaman)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801786140457', 'Porgora,Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, NULL, NULL, NULL, NULL, NULL),
(148, 1, 13, 'Mohammad Monirul Islam', NULL, NULL, NULL, NULL, NULL, NULL, '+8801766374597, +8801709854655', 'Joyra,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(149, 1, 13, 'Mohammad Shahidul Islam', NULL, NULL, NULL, NULL, NULL, NULL, '+8801715431505', 'Meghshimul,Jagir,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(150, 1, 13, 'Mohammad Jewel Hossain (Broiler-1)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801689037881', 'Garakul,Jagir,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(151, 1, 13, 'Mohammad Tajul Islam Liton', NULL, NULL, NULL, NULL, NULL, NULL, '+8801718364839', 'Porgora,Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(152, 1, 13, 'Abdullah Al Mamun (Layer)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801687896802, +8801714215466', '656,East Dashora,Manikganj.', 0.0000, -58000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, NULL, NULL, NULL, NULL, NULL),
(153, 1, 13, 'Md Rukunul Islam Shibly (Layer)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801768982368, +8801677102599', 'Ramonpur,Muljan,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(154, 1, 13, 'Mohammad Liton Mia', NULL, NULL, NULL, NULL, NULL, NULL, '+8801751375809', 'Horgoj,Fukurhati,Saturia,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(155, 1, 13, 'Md Rukunul Islam Shibly (Sonali)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801768982368, +8801677102599', 'Ramonpur,Muljan,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(157, 1, 13, 'Mohammad Jahangir Alam', NULL, NULL, NULL, NULL, NULL, NULL, '+8801764105026', 'Koitta,Dhankora,Saturia,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(158, 1, 13, 'Abdullah Al Mamun (Sonali-1)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801687896802, +8801714215466', '656,East Dashora,Manikganj.', 0.0000, 1820.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, NULL, NULL, NULL, NULL, NULL),
(159, 1, 13, 'Mohammad Shofiqul Islam (Poyla)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801678583830', 'Poyla,Terosry,Ghior,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(160, 1, 13, 'Mohammad Azahar Ali', NULL, NULL, NULL, NULL, NULL, NULL, '+8801724175735', 'Uvajani,Ramdianali,Ghior,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(161, 1, 13, 'Mohammad Rubel Hossain', NULL, NULL, NULL, NULL, NULL, NULL, '+8801630452639', 'Golora,Dhankora,Saturia,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(163, 1, 13, 'MD Anower Hossain', NULL, NULL, NULL, NULL, NULL, NULL, '+8801719846126', 'Golora,Dhankora,Saturia,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(164, 1, 13, 'Md Towhid Hasan (Sonali)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801319869484, +8801710790798', 'Golora,Dhankora,Saturia,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(165, 1, 13, 'MD Borhan Mia & MD Rayhan Mia', NULL, NULL, NULL, NULL, NULL, NULL, '+8801740619166, +8801714945035', 'Tora Hat,Khagrakuri,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(166, 1, 13, 'Mohammad Yousuf Ali', NULL, NULL, NULL, NULL, NULL, NULL, '+8801720102900', 'Nimtoli Bazar,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(167, 1, 13, 'Mohammad Amirul Islam Ronju', NULL, NULL, NULL, NULL, NULL, NULL, '+8801776542308, +8801862129411', 'Nimtoli Bazar,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(168, 1, 13, 'MD Shahjahan', NULL, NULL, NULL, '2816369413', NULL, NULL, '+8801725391584, +8801688671903', 'Uchutia Molla Bazar,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, 'Security Cheque No: SA 8140317,SA 8140318 (Marcantile Bank)', NULL, '1-admin', NULL, '2022-05-30 03:19:34'),
(169, 1, 13, 'Mohammad Uzzal Mia', NULL, NULL, NULL, NULL, NULL, NULL, '+8801717114511', 'Powli Bazar,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(171, 1, 13, 'Mohammad Taher Uddin Tota', NULL, NULL, NULL, NULL, NULL, NULL, '+8801706064123, +8801720964927', 'Kachari Bazar,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(172, 1, 13, 'MD Noab Ali (Newaz)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801621625988, +8801726530078', 'Pachbaroil,Naboggram,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(173, 1, 13, 'MD Nurul Haq & MD Kohinur', NULL, NULL, NULL, NULL, NULL, NULL, '+8801733692870, +8801715743869', 'Baimail Bazar,Bayra,Singair,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(174, 1, 13, 'Mohammad Atowar', NULL, NULL, NULL, NULL, NULL, NULL, '+8801758858958, +8801727992048, +8801991894050', 'Kewarjani,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(175, 1, 13, 'Abdur Rohim Geda', NULL, NULL, NULL, NULL, NULL, NULL, '+8801721859391', 'Nimtoli Bazar,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(176, 1, 13, 'Shamima Akter', NULL, NULL, NULL, NULL, NULL, NULL, '+8801700829677, +8801726129098', 'Sadinagar,Painjonkhara,Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(177, 1, 13, 'Mohammad Joshim Mia', NULL, NULL, NULL, NULL, NULL, NULL, '+8801725879596', 'Nimtoli Bazar,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(178, 1, 13, 'Mohammad Alom Mia', NULL, NULL, NULL, NULL, NULL, NULL, '+8801741513775', 'Kachabazar,Bus Stand,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(179, 1, 13, 'Mohammad Afzal Hossain', NULL, NULL, NULL, NULL, NULL, NULL, '+8801916905923, +8801742022920', 'Ghosher Bazar,Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(181, 1, 13, 'Mohammad Atikur Rahaman', NULL, NULL, NULL, NULL, NULL, NULL, '+8801621248141', 'Dauli,Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(182, 1, 13, 'Mohammad Helal Uddin', NULL, NULL, NULL, NULL, NULL, NULL, '+8801715548765', 'Nimtoli Bazar,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(183, 1, 13, 'Mohammad Anik Dewan', NULL, NULL, NULL, NULL, NULL, NULL, '+8801771066012', 'Bayra Bazar,Singair,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(184, 1, 13, 'M/S Monir Enterprise (MD Monir Uddin)', NULL, NULL, NULL, NULL, NULL, NULL, '01741114441, 01715783035, 01990021188', 'Sahobotpur Bazar,Nagorpur,Tangail.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(185, 1, 13, 'MD Abdul Jalil', NULL, NULL, NULL, NULL, NULL, NULL, '+8801775046539', 'Sorupai Bazar,Naboggram,Manikganj.', 0.0000, -19000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, NULL, NULL, NULL, NULL, NULL),
(186, 1, 13, 'MD Pata Mia', NULL, NULL, NULL, NULL, NULL, NULL, '+8801858330642', 'Nimtoli Bazar,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(187, 1, 13, 'MD Babu Mia', NULL, NULL, NULL, NULL, NULL, NULL, '+8801729859479', 'Saturia,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(188, 1, 13, 'MD Abdur Rahaman & MD Nur Islam', NULL, NULL, NULL, NULL, NULL, NULL, '+8801716442143', 'Maloncho,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(189, 1, 13, 'MD Moslem Mia', NULL, NULL, NULL, NULL, NULL, NULL, '+88017', 'Nimtoli Bazar,Manikganj.', 0.0000, -3900.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, NULL, NULL, NULL, NULL, NULL),
(190, 1, 13, 'MD Sirajul Islam', NULL, NULL, NULL, NULL, NULL, NULL, '+8801749883919, +8801766398912', 'Basudebpur,Krisnopur,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(191, 1, 13, 'MD Azahar Ali (East Dashora)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801743055611', 'East Dashora,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(192, 1, 13, 'M/S Showkat Poultry Farm', NULL, NULL, NULL, NULL, NULL, NULL, '+8801716877950, +8801673638134, +8801768982368', 'Manora,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(193, 1, 13, 'MD Sojib Mia', NULL, NULL, NULL, NULL, NULL, NULL, '+8801782421491', 'Dergram,Jagir,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(194, 1, 13, 'MD Abul Hossain', NULL, NULL, NULL, NULL, NULL, NULL, '+8801612972243', 'Kachabazar,Bus Stand,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(195, 1, 13, 'MD Shahin', NULL, NULL, NULL, NULL, NULL, NULL, '+8801760150500', 'Kachabazar,Bus Stand,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(196, 1, 13, 'Md Selim Mia (Mama)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801309960381', 'Ramdianali,Ghior,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(197, 1, 13, 'MD Waz Uddin', NULL, NULL, NULL, NULL, NULL, NULL, '+880181105421', 'Dautia Bazar,Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(198, 1, 13, 'MD Mizanur Rahaman', NULL, NULL, NULL, NULL, NULL, NULL, '+88017', 'Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(199, 1, 13, 'MD Abdus Salam', NULL, NULL, NULL, NULL, NULL, NULL, '+8801833990655, +8801757641922', 'Bokzuri,Betila,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(201, 1, 13, 'MD Jahangir Alom (Boiragi)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801728492747', 'Boiragi,Borohatkora,Doulatpur,Manikganj.', 0.0000, -4000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, NULL, NULL, NULL, NULL, NULL),
(202, 1, 13, 'Md Rasel Mia', NULL, NULL, NULL, NULL, NULL, NULL, '+8801766323821, +8801739443018', 'Nimtoli Bazar,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(203, 1, 13, 'M/S Brother\'s Owsodhaloy (MD Abdur Rouf Sumon)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801686437493', 'Jhitka Bazar,Horirampur,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(204, 1, 13, 'MD Abdul Ahad', NULL, NULL, NULL, NULL, NULL, NULL, '+8801727109677', 'Palora,Betila,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(205, 1, 13, 'MD Rofiqul Islam (West Dashora)', NULL, NULL, NULL, NULL, NULL, NULL, '+88017', 'West Dashora,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(207, 1, 13, 'MD Bokhtiar', NULL, NULL, NULL, NULL, NULL, NULL, '+88017', 'Baichail,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(209, 1, 13, 'MD Sukur Ali', NULL, NULL, NULL, NULL, NULL, NULL, '+8801751239733, +8801705342382', 'Gilondo,Noboggram,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(210, 1, 13, 'MD Aminur Islam', NULL, NULL, NULL, NULL, NULL, NULL, '+8801886167877', 'Baliabil,Putail,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(211, 1, 13, 'MD Nazmul', NULL, NULL, NULL, NULL, NULL, NULL, '+8801611881213, +8801883378136', 'Bhai Bhai Bazar,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(212, 1, 13, 'Mohammad Ali', NULL, NULL, NULL, NULL, NULL, NULL, '+8801788940324', 'Saheb Bazar,Saturia,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(213, 1, 13, 'MD Selim Parvez', NULL, NULL, NULL, NULL, NULL, NULL, '+8801712186520', 'East Dashora,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(214, 1, 13, 'MD Saiful Islam Hiron', NULL, NULL, NULL, NULL, NULL, NULL, '+8801710861694, +8801792696940', 'Koyra,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(215, 1, 13, 'M/S A.S.A Poultry Farm (Md Saiful Islam)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801722449127, +8801921354093, +8801993334060', 'Char Baliabil,Putail,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(216, 1, 13, 'Mohammad Arshad Hossain', NULL, NULL, NULL, NULL, NULL, NULL, '+8801715415542, +8801615622244', 'Narangai,Uchutia,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(217, 1, 13, 'Mohammad Younus Ali', NULL, NULL, NULL, NULL, NULL, NULL, '+8801720566816', 'Vatbaur,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(218, 1, 13, 'MD Rofiqul Islam (Boiragi)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801303220915', 'Boiragi,Borohatkora,Doulatpur,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(219, 1, 13, 'Mohammad Delower Hossain', NULL, NULL, NULL, NULL, NULL, NULL, '+8801798321356, +8801300313835', 'Dighulia,Putail,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(220, 1, 13, 'MD Habibur Rahaman', NULL, NULL, NULL, NULL, NULL, NULL, '+8801753363875', 'Golora Bus Stand,Dhankora,Saturia,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(222, 1, 13, 'MD Shofiqul Islam', NULL, NULL, NULL, NULL, NULL, NULL, '+8801788435808', 'Kachabazar,Bus Stand,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(223, 1, 13, 'MD Tuhin Mia', NULL, NULL, NULL, NULL, NULL, NULL, '+8801776687221, +8801701484254', 'Kachabazar Bus Stand,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(225, 1, 13, 'Mohammad Tuhin Mia', NULL, NULL, NULL, NULL, NULL, NULL, '+8801733167562, +8801880842882', 'Dergram,Jagir,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(226, 1, 13, 'MD Ismail Hossain (Koyra)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801732940234', 'Koyra,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(227, 1, 13, 'Md Sajib Hossain (Koyra)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801763804067', 'Koyra,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(228, 1, 13, 'MD Chanchal Mia', NULL, NULL, NULL, NULL, NULL, NULL, '+8801740209002, +8801641353231', 'Shushunda,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(229, 1, 13, 'Mohammad Azizul Islam', NULL, NULL, NULL, NULL, NULL, NULL, '+8801731759150, +8801950553125', 'Molla Bazar,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(230, 1, 13, 'MD Raihan', NULL, NULL, NULL, NULL, NULL, NULL, '+8801771067182', 'Nimtoli Bazar,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(232, 1, 13, 'M/S Al Aksa Traders (MD Sumon Ahmmed)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801759190599', 'Romzan Ali College Road,Joyra,Manikganj.', 0.0000, -320.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, NULL, NULL, NULL, NULL, NULL),
(233, 1, 13, 'MD Abdur Rouf Ronju', NULL, NULL, NULL, NULL, NULL, NULL, '+8801810535401, +8801720940127', 'Sadinagor,Painjonkhara,Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(234, 1, 13, 'Mohammad Nahid Hasan Sajal', NULL, NULL, NULL, NULL, NULL, NULL, '+8801810535808,+8801318791385', 'Koyra,Shushunda,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(235, 1, 13, 'Mohammad Mizanur Rahaman', NULL, NULL, NULL, NULL, NULL, NULL, '+8801772129515', 'Dautia,Shushunda,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(236, 1, 13, 'Md Abdur Roshid & Md Harunur Roshid', NULL, NULL, NULL, NULL, NULL, NULL, '+8801717237150, +8801715754246', 'Janna,Fukurhati,Saturia,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(237, 1, 13, 'Mohammad Shamim Mia', NULL, NULL, NULL, NULL, NULL, NULL, '+8801712797456, +8801567848603', 'Ghos Baroil Bazar,Noboggram,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(238, 1, 13, 'MD Helal Mia', NULL, NULL, NULL, NULL, NULL, NULL, '+8801725883820, +8801627184258', 'Baniajuri Bazar,Tora,Ghior,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(239, 1, 13, 'Mohammad Romzan Ali', NULL, NULL, NULL, NULL, NULL, NULL, '+8801731702232', 'Vatbaur,Shushunda,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(240, 1, 13, 'Al Arafat Enterprise (Md Parvez Mia & Md Biplob)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801711513973, +8801957773344', 'Niralibazar,Borohatkora,Daulotpur,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(241, 1, 13, 'M/S Rokeya Enterprise (Md Arshed Hossain)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801624323702, +8801753864728', 'Kaliakoir,Singair,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(243, 1, 13, 'Md Towhid Hasan (Sales Center)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801319869484, +8801710790798', 'Golora Bus Stand,Dhankora,Saturia,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(244, 1, 13, 'Md Noab Ali & Rabeya', NULL, NULL, NULL, NULL, NULL, NULL, '+8801762785606', 'Bewtha Ghat,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(245, 1, 13, 'Md Azom & Md Firoz', NULL, NULL, NULL, NULL, NULL, NULL, '+8801953405121', 'Ghoser Bazar,Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(248, 1, 13, 'Babu Nirod Sarkar', NULL, NULL, NULL, NULL, NULL, NULL, '+8801975755790', 'Naboggram Bazar,Naboggram,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(249, 1, 13, 'MD Samad Hossain', NULL, NULL, NULL, NULL, NULL, NULL, '+8801934422213', 'Janna Bazar,Fukurhati,Saturia.Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(250, 1, 13, 'Akkas Ali (Broiler-2)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801953694279, +8801323150051', 'Sorupai,Naboggram,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(251, 1, 13, 'MD Abdur Roshid Mistri', NULL, NULL, NULL, NULL, NULL, NULL, '+8801714617972', 'Kachari Bazar,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(252, 1, 13, 'Shron Hasan Amit', NULL, NULL, NULL, NULL, NULL, NULL, '+8801638352891, +8801877359003', 'Sadinagor,Painjonkhara,Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(254, 1, 13, 'MD Salamot Hossain', NULL, NULL, NULL, NULL, NULL, NULL, '+8801727963836', 'Dhakuli Poschimpara,Jagir,Manikganj.', 0.0000, -58000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, NULL, NULL, NULL, NULL, NULL),
(255, 1, 13, 'Md Yousuf Khan', NULL, NULL, NULL, NULL, NULL, NULL, '+8801724309163', 'Railla Poschimpara,Fukurhati,Saturia,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(256, 1, 13, 'Mohammad Al-Amin', NULL, NULL, NULL, NULL, NULL, NULL, '+8801609266808, +8801775367148', 'Railla Poschimpara,Fukurhati,Saturia,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(257, 1, 13, 'MD Forhad Hossain', NULL, NULL, NULL, NULL, NULL, NULL, '+8801725355137, +8801707696534', 'Kamta,Golora,Saturia,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(259, 1, 13, 'Mohammad Arifur Rahaman', NULL, NULL, NULL, NULL, NULL, NULL, '+8801713530047, +8801553972108', 'Tora Bazar,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(260, 1, 13, 'Mohammad Abdul Korim', NULL, NULL, NULL, NULL, NULL, NULL, '+8801714615858', 'Kachabazar,Bus Stand,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(261, 1, 13, 'MD Masudur Rahaman Masud', NULL, NULL, NULL, NULL, NULL, NULL, '+8801728116388', 'Bayra Bazar,Bayra,Singair,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(264, 1, 13, 'MD Mahabub Hossain', NULL, NULL, NULL, NULL, NULL, NULL, '+8801704232273', 'Geraida Bazar,Singair,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(265, 1, 13, 'Mohammad Obaydullah', NULL, NULL, NULL, NULL, NULL, NULL, '+8801795826871,+8801715394359', 'Notunbosti,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(266, 1, 13, 'Mohammad Abdul Mannan (Broiler-1)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801713515786', 'Poshchim Uriajani,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(268, 1, 13, 'Mohammad Toyobur Ali', NULL, NULL, NULL, NULL, NULL, NULL, '+8801728489141', 'Bus Stand Kachabazar,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(269, 1, 13, 'MD Sobed Ali', NULL, NULL, NULL, NULL, NULL, NULL, '+8801727019384', 'Bathuimuri Bazar,Ghior,Manikganj', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(270, 1, 13, 'Mohammad Rayhan Biswash (Broiler-2)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801787395736, +8801735108734', 'Dokhkhin Uthuli,Gorpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(271, 1, 13, 'Mohammad Bador Uddin', NULL, NULL, NULL, NULL, NULL, NULL, '+8801715245688', 'Bangladesh Hat,Gorpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(272, 1, 13, 'Mohammad Abdul Mannan (Broiler-2)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801713515786', 'Poshchim Uriajani,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(273, 1, 13, 'Mohammad Mohidur Rahaman (Sonali-1)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801726695924, +8801642129839', 'East Sanbandha,Balirtek,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(274, 1, 13, 'Md Ashraful Islam', NULL, NULL, NULL, NULL, NULL, NULL, '+8801777940795', 'Uvajani,Ramdianali,Ghior,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(275, 1, 13, 'Md Tomej Uddin (Budhdhi)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801721186411', 'Chamta,Dighi,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(277, 1, 13, 'Mohammad Jewel Hossain (Broiler-2)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801689037881', 'Garakul,Jagir,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(280, 1, 13, 'Nana-Nati (Quel)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801789510449', 'Madrasa Mor,Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(281, 1, 13, 'Md Milon Ali', NULL, NULL, NULL, NULL, NULL, NULL, '+8801785509127', 'Joyra(Purbo Para),Jagir,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(282, 1, 13, 'Mohammad Hanif Mia', NULL, NULL, NULL, NULL, NULL, NULL, '+8801731541880', 'Bangladesh Hat,Gorpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(283, 1, 13, 'Damage Adjustment Account', NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(284, 1, 13, 'Md Jalal Uddin', NULL, NULL, NULL, NULL, NULL, NULL, '+8801915232145', 'Betila Bazar,Betila-Mitora,Manikganj.', 0.0000, -12000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, NULL, NULL, NULL, NULL, NULL),
(285, 1, 13, 'Md Murad Hossain', NULL, NULL, NULL, NULL, NULL, NULL, '+8801303510680', 'North Bil Dauli,Garpara,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(286, 1, 13, 'Abdullah Al Mamun (Sonali-2)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801687896802, +8801714215466', '656,East Dashora,Manikganj.', 0.0000, -2000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, NULL, NULL, NULL, NULL, NULL),
(287, 1, 13, 'Mosammad Suborna Akter', NULL, NULL, NULL, NULL, NULL, NULL, '+8801741678332', 'Joyra Moddho Para,Joyra,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(288, 1, 13, 'Abdullah Al Mamun (Sonali-3)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801687896802, +8801714215466', '656,East Dashora,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(289, 1, 13, 'Md Imran', NULL, NULL, NULL, NULL, NULL, NULL, '+8801716245195', 'Kachari Bazar,Hizuli,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(291, 1, 13, 'MD Shahjahan (Broiler)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801725391584, +8801688671903', 'Holding No:29,Uchutia(Ghurki),Jagir,Manikganj.', 0.0000, 4000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, NULL, NULL, NULL, NULL, NULL),
(292, 1, 13, 'Mohammad Mohidur Rahaman (Sonali-2)', NULL, NULL, NULL, NULL, NULL, NULL, '+8801726695924, +8801642129839', 'East Sanbandha,Balirtek,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL),
(293, 1, 13, 'Sajidul Islam Babu', NULL, NULL, NULL, NULL, NULL, NULL, '+8801625451661', 'Powli,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 0, 1, 1, 5, 1, 0, 1, NULL, NULL, '1-Admin', NULL, '2022-06-13 10:09:06');
INSERT INTO `account_ledgers` (`id`, `_account_group_id`, `_account_head_id`, `_name`, `_alious`, `_code`, `_image`, `_nid`, `_other_document`, `_email`, `_phone`, `_address`, `_credit_limit`, `_balance`, `_branch_id`, `_is_user`, `_user_id`, `_is_sales_form`, `_is_purchase_form`, `_is_all_branch`, `_short`, `_status`, `_is_used`, `_show`, `_note`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(376, 56, 5, 'Kamrunnahar Chowdhury (Bakul)', NULL, NULL, NULL, '1916464132', NULL, 'kamrunnahar1967@gmail.com', '+8801711049308', '363,East Dashora,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, 'Position: Chairman', '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 02:33:30', '2022-06-04 22:49:24'),
(377, 56, 5, 'Md Ashraful Islam (Mehedi)', NULL, NULL, NULL, '1954342885', NULL, 'ashraful3101@gmail.com', '+8801761886242, +8801777940795', 'Uvajani,Ramdianali,Ghior,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, 'Position: Admin Manager Monthly Salary=15000 taka Yearly Bonus=2 times (Half of monthly salary each time)', '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 02:34:21', '2022-05-31 22:53:09'),
(378, 56, 5, 'Shikder Saud Al Faisal (Sandu)', NULL, NULL, NULL, '1486340415', NULL, 'ssafaisal270382@gmail.com', '+8801611955988, +8801911962433', 'Rajar Kalta,Ramdianali,Harirampur,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, 'Position: Accounting Manager Monthly Salary=15000 taka Yearly Bonus=2 times (Half of monthly salary each time)', '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 02:35:03', '2022-05-31 13:08:33'),
(379, 56, 5, 'Sumaia Akter (Alo)', NULL, NULL, NULL, '5982700139', NULL, 'sumaiaalo95@gmail.com', '+8801688454764, +8801730944799', '363,East Dashora,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, 'Position: Director Monthly Honorarium=5000 taka Yearly Bonus=2 times (Half of monthly honorarium each time)', '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 02:35:47', '2022-05-31 22:58:04'),
(380, 56, 5, 'Wali Ul Bari Chowdhury (Shawn)', NULL, NULL, NULL, '5066436725', NULL, 'walishawn.nov28@gmail.com', '+8801730712346, +8801684489239', '363,East Dashora,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, 'Position: Proprietor Monthly Salary=45000 taka Yearly Bonus=2 times (Half of monthly salary each time)', '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 02:36:24', '2022-05-31 12:55:45'),
(381, 84, 8, 'Incentive Received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 0, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 02:39:35', '2022-06-11 14:52:08'),
(382, 141, 11, 'Discount Received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 02:40:12', '2022-06-11 14:50:43'),
(383, 129, 10, 'Damage Expense', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 17020.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, NULL, '1-admin', NULL, '2022-05-25 02:43:19', '2022-05-25 02:43:19'),
(384, 129, 10, 'Chicks Transportation Expense', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 02:44:04', '2022-06-07 09:02:18'),
(385, 109, 10, 'Zakat Determination', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 02:44:23', '2022-06-06 18:00:04'),
(386, 101, 9, 'Chicks Delivery Expense', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 02:44:39', '2022-06-07 08:16:36'),
(387, 109, 10, 'Mosque Contribution', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 02:44:53', '2022-06-06 17:55:34'),
(388, 129, 10, 'Feed Transportation Expense', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 02:45:19', '2022-06-07 09:02:50'),
(389, 108, 10, 'ATM Card Fee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 02:45:34', '2022-06-06 17:53:09'),
(390, 108, 10, 'Excise Duty', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 02:45:51', '2022-06-06 17:50:55'),
(391, 108, 10, 'Bank Account Fee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 02:46:01', '2022-06-06 14:31:27'),
(392, 108, 10, 'Cheque Book Fee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 02:46:12', '2022-06-06 17:49:20'),
(393, 101, 9, 'Feed Delivery Expense', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 02:46:24', '2022-06-07 08:13:49'),
(394, 132, 10, 'Collection Expense', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 02:46:35', '2022-06-07 09:41:30'),
(395, 117, 10, 'Loan Interest', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, 'IFIC Bank Limited', '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 02:47:23', '2022-06-06 17:45:45'),
(396, 116, 10, 'Life Insurance Premium', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 02:47:32', '2022-06-06 14:25:55'),
(397, 138, 15, 'Incentive Paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-05-25 02:47:43', '2022-05-25 02:47:43'),
(398, 138, 15, 'Discount Paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-05-25 02:47:54', '2022-05-25 02:47:54'),
(399, 126, 10, 'Office Rent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 02:48:06', '2022-06-07 08:05:46'),
(400, 122, 10, 'Administration Expense', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 02:50:23', '2022-06-07 08:19:12'),
(401, 41, 4, 'Reserve for Depreciation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-admin', '2022-05-25 03:08:26', '2022-05-25 03:09:29'),
(402, 65, 6, 'Accumulated Depreciation Account', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-05-25 03:09:45', '2022-05-25 03:09:45'),
(403, 2, 2, 'Allowance For Bad Debt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-admin', '2022-05-25 03:13:27', '2022-05-25 03:23:12'),
(404, 41, 4, 'Office Furniture', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-05-25 03:15:51', '2022-05-25 03:15:51'),
(405, 42, 4, 'Security Deposit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, 'Mr Fozlur Rahaman', '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 03:16:30', '2022-06-01 07:08:08'),
(406, 15, 1, 'Al-Arafah Islami Bank Limited', NULL, NULL, NULL, NULL, NULL, NULL, '+8802996612151', 'Sargo Tower,Shahid Rofiq Sarak,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, '1631220000084', '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 03:23:33', '2022-06-01 16:45:53'),
(407, 15, 1, 'IFIC Bank Limited', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rudronil Plaza,Shahid Rofiq Sarak,Manikganj.', 0.0000, 5000.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, '1206552978001', '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-25 03:24:03', '2022-06-01 16:39:49'),
(408, 53, 5, 'Brac Bank Loan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-05-25 04:24:38', '2022-05-25 04:24:38'),
(409, 41, 4, 'Opening Assets', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 0, NULL, 0, 0, 0, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-05-26 04:49:18', '2022-05-26 04:49:18'),
(410, 99, 9, 'Labour Bill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-27 15:49:39', '2022-06-07 09:06:11'),
(411, 15, 1, 'Brac Bank Limited', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jinnat Ali Plaza,Shahid Rafiq Sarak,Manikganj.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, '3701204591582001', '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-05-27 16:32:43', '2022-06-01 16:37:41'),
(412, 102, 9, 'Delivery Labour Bill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-admin', NULL, '2022-05-28 16:34:17', '2022-05-28 16:34:17'),
(413, 134, 10, 'Water Bill', NULL, NULL, NULL, 'N/A', NULL, NULL, NULL, 'N/A', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-Wali Ul Bari Chowdhury (Shawn)', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-06-06 11:57:59', '2022-06-06 11:59:11'),
(414, 134, 10, 'Mobile Bill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-Wali Ul Bari Chowdhury (Shawn)', NULL, '2022-06-06 14:19:46', '2022-06-06 14:19:46'),
(415, 134, 10, 'Server Bill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, NULL, '1-Wali Ul Bari Chowdhury (Shawn)', NULL, '2022-06-06 14:20:10', '2022-06-06 14:20:10'),
(416, 41, 4, 'Manikganj Poultry Association Donation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manikganj,Dhaka,Bangladesh.', 0.0000, 0.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 0, 1, 'Monthly Donation Amount=5,000 Taka', '1-Wali Ul Bari Chowdhury (Shawn)', NULL, '2022-06-11 16:53:09', '2022-06-11 16:53:09'),
(417, 43, 12, 'Mobile House', NULL, NULL, NULL, NULL, NULL, NULL, '01756256562', 'Dhaka', 0.0000, -186360.0000, 1, 1, NULL, 1, 1, 1, 5, 1, 1, 1, NULL, '1-Admin', '1-Admin', '2022-06-19 11:30:18', '2022-06-23 17:46:34');

-- --------------------------------------------------------

--
-- Table structure for table `barcode_details`
--

CREATE TABLE `barcode_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_p_p_id` int(11) NOT NULL,
  `_item_id` int(11) NOT NULL,
  `_no_id` int(11) NOT NULL,
  `_no_detail_id` int(11) NOT NULL,
  `_qty` int(11) NOT NULL DEFAULT 1,
  `_barcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Head Office', 'Shop No:09,Holding No:84,Romzan Ali Collage Road,Joyra,Manikganj.', '2022-03-25', 'chowdhurypoultryfeeds@gmail.com', '+8801730712346, +880', 1, '1-admin', '1-Wali Ul Bari Chowdhury (Shawn)', '2022-03-03 10:35:57', '2022-06-01 16:48:49');

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
-- Table structure for table `damage_adjustments`
--

CREATE TABLE `damage_adjustments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_date` date NOT NULL,
  `_time` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_order_ref_id` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_referance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_ledger_id` bigint(20) UNSIGNED NOT NULL,
  `_user_id` bigint(20) UNSIGNED NOT NULL,
  `_user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_sub_total` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount_input` double(15,4) NOT NULL DEFAULT 0.0000,
  `_total_discount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_total_vat` double(15,4) NOT NULL DEFAULT 0.0000,
  `_total` double(15,4) NOT NULL DEFAULT 0.0000,
  `_p_balance` double(15,4) NOT NULL DEFAULT 0.0000,
  `_l_balance` double(15,4) NOT NULL DEFAULT 0.0000,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_store_id` int(11) DEFAULT NULL,
  `_cost_center_id` int(11) DEFAULT NULL,
  `_store_salves_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_lock` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `damage_adjustment_details`
--

CREATE TABLE `damage_adjustment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_item_id` bigint(20) UNSIGNED NOT NULL,
  `_p_p_l_id` bigint(20) UNSIGNED NOT NULL,
  `_qty` double(15,4) NOT NULL DEFAULT 0.0000,
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
  `_warranty` int(11) NOT NULL DEFAULT 0,
  `_barcode` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_purchase_invoice_no` int(11) DEFAULT NULL,
  `_purchase_detail_id` int(11) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `damage_barcodes`
--

CREATE TABLE `damage_barcodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_p_p_id` int(11) NOT NULL,
  `_item_id` int(11) NOT NULL,
  `_no_id` int(11) NOT NULL,
  `_no_detail_id` int(11) NOT NULL,
  `_qty` int(11) NOT NULL DEFAULT 1,
  `_barcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `damage_form_settings`
--

CREATE TABLE `damage_form_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_default_inventory` int(11) NOT NULL,
  `_default_discount` int(11) NOT NULL,
  `_default_vat_account` int(11) NOT NULL,
  `_inline_discount` int(11) NOT NULL,
  `_show_barcode` int(11) NOT NULL,
  `_show_vat` int(11) NOT NULL,
  `_show_store` int(11) NOT NULL,
  `_show_self` int(11) NOT NULL,
  `_show_cost_rate` int(11) NOT NULL,
  `_show_expire_date` int(11) NOT NULL DEFAULT 0,
  `_show_manufacture_date` int(11) NOT NULL DEFAULT 0,
  `_show_warranty` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `damage_form_settings`
--

INSERT INTO `damage_form_settings` (`id`, `_default_inventory`, `_default_discount`, `_default_vat_account`, `_inline_discount`, `_show_barcode`, `_show_vat`, `_show_store`, `_show_self`, `_show_cost_rate`, `_show_expire_date`, `_show_manufacture_date`, `_show_warranty`, `created_at`, `updated_at`) VALUES
(1, 7, 8, 10, 0, 1, 0, 0, 0, 0, 0, 0, 1, '2022-06-04 17:56:56', '2022-06-24 08:43:15');

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
  `_email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_sales_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_sales_return__note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_purchse_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_purchase_return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_top_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_ac_type` tinyint(4) NOT NULL DEFAULT 0,
  `_sms_service` tinyint(4) NOT NULL DEFAULT 0,
  `_barcode_service` tinyint(4) NOT NULL DEFAULT 0,
  `_bank_group` int(11) DEFAULT NULL,
  `_cash_group` int(11) DEFAULT NULL,
  `_auto_lock` tinyint(4) NOT NULL DEFAULT 0,
  `_pur_base_model_barcode` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `title`, `name`, `_address`, `keywords`, `author`, `url`, `logo`, `bg_image`, `footerContent`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`, `_phone`, `_email`, `_sales_note`, `_sales_return__note`, `_purchse_note`, `_purchase_return_note`, `_top_title`, `_ac_type`, `_sms_service`, `_barcode_service`, `_bank_group`, `_cash_group`, `_auto_lock`, `_pur_base_model_barcode`) VALUES
(1, 'DEMO', 'Demo', 'Shop No:09,Holding No:84,Romzan Ali Collage Road,Joyra,Manikganj.', 'Demo', 'Farhad', '#', 'images/0611202223460062a4d4d84d7e2.jpg', NULL, NULL, NULL, NULL, NULL, '2021-06-06 08:00:54', '2022-07-06 04:34:44', '0175625652', 'demo@gmail.com', '', '', '', '', '﷽', 0, 0, 1, 15, 16, 0, 0);

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
  `_reorder` double(15,4) NOT NULL DEFAULT 0.0000,
  `_order_qty` double(15,4) NOT NULL DEFAULT 0.0000,
  `_manufacture_company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_is_used` tinyint(4) NOT NULL DEFAULT 0,
  `_unique_barcode` tinyint(2) NOT NULL DEFAULT 0,
  `_warranty` int(11) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `_item`, `_code`, `_unit_id`, `_barcode`, `_category_id`, `_image`, `_discount`, `_vat`, `_pur_rate`, `_sale_rate`, `_balance`, `_reorder`, `_order_qty`, `_manufacture_company`, `_status`, `_is_used`, `_unique_barcode`, `_warranty`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 'HP M22f 22Inc FHD IPS Monitor', NULL, 15, 'M22f', 2, NULL, 0.0000, 0.0000, 1600.0000, 16800.0000, 24, 0.0000, 0.0000, 'HP', 1, 1, 0, 0, '46-jony', '46-jony', '2022-06-30 20:40:11', '2022-06-30 20:46:48'),
(2, 'HP V19 18.5 Inch HD Monitor', NULL, 15, 'V19', 2, NULL, 0.0000, 0.0000, 10000.0000, 10800.0000, 20, 0.0000, 0.0000, 'HP', 1, 1, 0, 1, '46-jony', NULL, '2022-06-30 20:42:08', '2022-06-30 20:42:08'),
(3, 'Avolac', NULL, 15, '745125269832', 1, NULL, 0.0000, 0.0000, 130.0000, 140.0000, 15, 0.0000, 0.0000, NULL, 1, 1, 0, 0, '46-jony', NULL, '2022-07-01 08:52:05', '2022-07-01 08:52:05');

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
(1, 0, 'Monitor', NULL, '2022-06-30 20:33:33', '2022-06-30 20:33:33'),
(2, 1, 'HP Monitor', NULL, '2022-06-30 20:33:42', '2022-06-30 20:33:42'),
(3, 1, 'Dell Monitor', NULL, '2022-06-30 20:34:02', '2022-06-30 20:34:02'),
(4, 0, 'UPS', NULL, '2022-06-30 20:34:38', '2022-06-30 20:34:38'),
(5, 4, 'Online UPS', NULL, '2022-06-30 20:34:50', '2022-06-30 20:34:50'),
(6, 4, 'Offline UPS', NULL, '2022-06-30 20:35:01', '2022-06-30 20:35:01'),
(7, 0, 'Laptop Computer', NULL, '2022-06-30 20:35:27', '2022-06-30 20:35:27'),
(8, 2, 'HP M22f 22\" FHD IPS Monitor', NULL, '2022-06-30 20:35:46', '2022-06-30 20:35:46'),
(9, 2, 'HP P19V G4 18.5\" HD Monitor', NULL, '2022-06-30 20:35:59', '2022-06-30 20:35:59');

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
(1, 1, 'Samsung j5', 15, 9, '2022-06-26', '00:08:30', 'Purchase', 11, 24, 10.0000, 12000.0000, 11500.0000, 115000.0000, 115000.0000, NULL, NULL, 1, 1, 1, 0, 1, '1-Admin', NULL, '2022-06-25 18:08:30', '2022-06-25 18:08:30'),
(2, 1, 'Samsung j5', 15, 9, '2022-06-30', '22:41:34', 'Sales', 3, 12, -5.0000, 12000.0000, 11500.0000, 60000.0000, 57500.0000, NULL, NULL, 1, 1, 1, 0, 1, '46-jony', '46-jony', '2022-06-29 16:33:09', '2022-06-30 16:41:34'),
(3, 1, 'Samsung j5', 15, 9, '2022-06-30', '16:04:19', 'Purchase Return', 4, 8, -1.0000, 12000.0000, 11500.0000, -11500.0000, 11500.0000, NULL, NULL, 1, 1, 1, 0, 1, '46-jony', NULL, '2022-06-30 10:03:59', '2022-06-30 10:04:19'),
(4, 1, 'Samsung j5', 15, 9, '2022-06-30', '16:07:32', 'Sales Return', 6, 10, 1.0000, 12000.0000, 11500.0000, 12000.0000, 11500.0000, NULL, NULL, 1, 1, 1, 0, 1, '46-jony', NULL, '2022-06-30 10:05:57', '2022-06-30 10:07:32'),
(5, 1, 'Samsung j5', 15, 9, '2022-06-30', '16:09:30', 'Purchase', 12, 25, 1.0000, 12000.0000, 11500.0000, 11500.0000, 11500.0000, NULL, NULL, 1, 1, 1, 0, 1, '46-jony', '46-jony', '2022-06-30 10:09:20', '2022-06-30 10:09:30'),
(6, 1, 'Samsung j5', 15, 9, '2022-06-30', '16:12:32', 'Damage', 15, 13, -1.0000, 12000.0000, 11500.0000, 12000.0000, 11500.0000, NULL, NULL, 1, 1, 1, 0, 1, '46-jony', NULL, '2022-06-30 10:12:32', '2022-06-30 10:12:32'),
(7, 1, 'Samsung j5', 15, 9, '2022-06-30', '16:13:20', 'Sales', 15, 13, -1.0000, 12000.0000, 11500.0000, 12000.0000, 11500.0000, NULL, NULL, 1, 1, 1, 0, 1, '46-jony', '46-jony', '2022-06-30 10:13:20', '2022-06-30 10:13:20'),
(8, 1, 'HP M22f 22Inc FHD IPS Monitor', 15, 2, '2022-07-01', '03:10:46', 'Purchase', 1, 1, 10.0000, 16800.0000, 1600.0000, 16000.0000, 16000.0000, NULL, NULL, 1, 1, 1, 0, 1, '46-jony', NULL, '2022-06-30 21:10:46', '2022-06-30 21:10:46'),
(9, 2, 'HP V19 18.5 Inch HD Monitor', 15, 2, '2022-07-01', '03:10:46', 'Purchase', 1, 2, 10.0000, 10800.0000, 10000.0000, 100000.0000, 100000.0000, NULL, NULL, 1, 1, 1, 0, 1, '46-jony', NULL, '2022-06-30 21:10:46', '2022-06-30 21:10:46'),
(10, 1, 'HP M22f 22Inc FHD IPS Monitor', 15, 2, '2022-07-01', '03:13:13', 'Purchase', 2, 3, 5.0000, 16800.0000, 1600.0000, 8000.0000, 8000.0000, NULL, NULL, 1, 1, 1, 0, 1, '46-jony', NULL, '2022-06-30 21:13:13', '2022-06-30 21:13:13'),
(11, 2, 'HP V19 18.5 Inch HD Monitor', 15, 2, '2022-07-01', '03:13:13', 'Purchase', 2, 4, 5.0000, 10800.0000, 10000.0000, 50000.0000, 50000.0000, NULL, NULL, 1, 1, 1, 0, 1, '46-jony', NULL, '2022-06-30 21:13:13', '2022-06-30 21:13:13'),
(12, 1, 'HP M22f 22Inc FHD IPS Monitor', 15, 2, '2022-07-01', '03:18:19', 'Purchase', 3, 5, 5.0000, 16800.0000, 1600.0000, 8000.0000, 8000.0000, NULL, NULL, 1, 1, 1, 0, 1, '46-jony', '46-jony', '2022-06-30 21:17:54', '2022-06-30 21:18:19'),
(13, 2, 'HP V19 18.5 Inch HD Monitor', 15, 2, '2022-07-01', '03:18:19', 'Purchase', 3, 6, 5.0000, 10800.0000, 10000.0000, 50000.0000, 50000.0000, NULL, NULL, 1, 1, 1, 0, 1, '46-jony', '46-jony', '2022-06-30 21:17:54', '2022-06-30 21:18:19'),
(14, 3, 'Avolac', 15, 1, '2022-07-01', '14:52:30', 'Purchase', 4, 7, 10.0000, 140.0000, 130.0000, 1300.0000, 1300.0000, NULL, NULL, 1, 1, 1, 0, 1, '46-jony', NULL, '2022-07-01 08:52:30', '2022-07-01 08:52:30'),
(15, 3, 'Avolac', 15, 1, '2022-07-01', '14:56:12', 'Purchase', 5, 8, 20.0000, 140.0000, 130.0000, 2600.0000, 2600.0000, NULL, NULL, 1, 1, 1, 0, 1, '46-jony', NULL, '2022-07-01 08:56:12', '2022-07-01 08:56:12'),
(16, 3, 'Avolac', 15, 1, '2022-07-01', '15:01:07', 'Sales', 1, 1, -2.0000, 140.0000, 130.0000, 280.0000, 260.0000, NULL, NULL, 1, 1, 1, 0, 1, '46-jony', NULL, '2022-07-01 09:01:07', '2022-07-01 09:01:07'),
(17, 3, 'Avolac', 15, 1, '2022-07-07', '11:18:39', 'Sales', 2, 2, -5.0000, 140.0000, 130.0000, 700.0000, 650.0000, NULL, NULL, 1, 1, 1, 0, 1, '46-jony', NULL, '2022-07-07 05:18:39', '2022-07-07 05:18:39'),
(18, 3, 'Avolac', 15, 1, '2022-07-07', '11:18:39', 'Sales', 2, 3, -8.0000, 140.0000, 130.0000, 1120.0000, 1040.0000, NULL, NULL, 1, 1, 1, 0, 1, '46-jony', NULL, '2022-07-07 05:18:39', '2022-07-07 05:18:39');

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
(128, '2022_02_01_144901_create_purchase_return_details_table', 28),
(129, '2022_06_13_202705_create_barcode_details_table', 29),
(130, '2022_06_13_202912_create_purchase_barcodes_table', 30),
(131, '2022_06_13_202949_create_purchase_return_barcodes_table', 31),
(132, '2022_06_13_203011_create_sales_return_barcodes_table', 32),
(133, '2022_06_13_203027_create_sales_barcodes_table', 33),
(134, '2022_06_13_203049_create_damage_barcodes_table', 34),
(135, '2022_07_06_003940_create_productions_table', 35),
(136, '2022_07_06_004119_create_stock_ins_table', 36),
(137, '2022_07_06_004134_create_stock_outs_table', 37),
(138, '2022_07_18_205142_create_production_from_settings_table', 38);

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
(5, 'App\\Models\\User', 40),
(6, 'App\\Models\\User', 48),
(7, 'App\\Models\\User', 49);

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
(104, 'shortage-item', 'web', 'Inventory Report', NULL, NULL),
(105, 'damage-list', 'web', 'Damage Adjustment', NULL, NULL),
(106, 'damage-create', 'web', 'Damage Adjustment', NULL, NULL),
(107, 'damage-edit', 'web', 'Damage Adjustment', NULL, NULL),
(108, 'damage-delete', 'web', 'Damage Adjustment', NULL, NULL),
(109, 'damage-print', 'web', 'Damage Adjustment', NULL, NULL),
(110, 'damage-form-settings', 'web', 'Damage Adjustment', NULL, NULL),
(111, 'item-sales-price-update', 'web', 'Inventory', NULL, NULL),
(112, 'money-receipt-print', 'web', 'Voucher', NULL, NULL),
(113, 'lock-permission', 'web', 'General Settings', NULL, NULL),
(114, 'admin-settings', 'web', 'General Settings', NULL, NULL),
(115, 'admin-settings-store', 'web', 'General Settings', NULL, NULL),
(116, 'purchase-return-lock', 'web', 'Purchase Return', NULL, NULL),
(117, 'voucher-lock', 'web', 'Voucher', NULL, NULL),
(118, 'quick-link', 'web', 'Dashboard', NULL, NULL),
(119, 'top-due-customer', 'web', 'Dashboard', NULL, NULL),
(120, 'top-payable-supplier', 'web', 'Dashboard', NULL, NULL),
(121, 'total-purchase', 'web', 'Dashboard', NULL, NULL),
(122, 'total-sales', 'web', 'Dashboard', NULL, NULL),
(123, 'total-purchase-return', 'web', 'Dashboard', NULL, NULL),
(124, 'total-sales-return', 'web', 'Dashboard', NULL, NULL),
(125, 'daily-sales-chart', 'web', 'Dashboard', NULL, NULL),
(126, 'monthly-sales-chart', 'web', 'Dashboard', NULL, NULL),
(127, 'daily-purchase-chart', 'web', 'Dashboard', NULL, NULL),
(128, 'monthly-purchase-chart', 'web', 'Dashboard', NULL, NULL),
(129, 'product-stock-alert', 'web', 'Dashboard', NULL, NULL),
(130, 'stock-expiry-alert', 'web', 'Dashboard', NULL, NULL),
(131, 'daily-sales-return-chart', 'web', 'Dashboard', NULL, NULL),
(132, 'monthly-sales-return-chart', 'web', 'Dashboard', NULL, NULL),
(133, 'monthly-purchase-return-chart', 'web', 'Dashboard', NULL, NULL),
(134, 'daily-purchase-return-chart', 'web', 'Dashboard', NULL, NULL),
(135, 'daily-damage-chart', 'web', 'Dashboard', NULL, NULL),
(136, 'monthly-damage-chart', 'web', 'Dashboard', NULL, NULL),
(137, 'money-payment-receipt', 'web', 'Voucher', NULL, NULL),
(138, 'chart-of-account', 'web', 'Accounts Report', NULL, NULL),
(139, 'warranty-list', 'web', 'Warranty', NULL, NULL),
(140, 'warranty-create', 'web', 'Warranty', NULL, NULL),
(141, 'warranty-edit', 'web', 'Warranty', NULL, NULL),
(142, 'warranty-delete', 'web', 'Warranty', NULL, NULL),
(143, 'ledger-summary-report', 'web', 'Accounts Report', NULL, NULL),
(144, 'labels-print', 'web', 'Inventory', NULL, NULL),
(145, 'barcode-history', 'web', 'Inventory', NULL, NULL),
(146, 'user-wise-collection-report', 'web', 'Accounts Report', NULL, NULL),
(147, 'user-wise-payment-report', 'web', 'Accounts Report', NULL, NULL),
(148, 'account-menu', 'web', 'Accounts', NULL, NULL),
(149, 'cash-receive', 'web', 'Accounts', NULL, NULL),
(150, 'cash-payment', 'web', 'Accounts', NULL, NULL),
(151, 'bank-payment', 'web', 'Accounts', NULL, NULL),
(152, 'bank-receive', 'web', 'Accounts', NULL, NULL),
(153, 'cash-book', 'web', 'Accounts Report', NULL, NULL),
(154, 'bank-book', 'web', 'Accounts Report', NULL, NULL),
(155, 'receipt-payment', 'web', 'Accounts Report', NULL, NULL),
(156, 'user-wise-collection-payment', 'web', 'Advance Report', NULL, NULL),
(157, 'sales-man-wise-sales', 'web', 'Advance Report', NULL, NULL),
(158, 'delivery-man-sales', 'web', 'Advance Report', NULL, NULL),
(159, 'delivery-man-sales-return', 'web', 'Advance Report', NULL, NULL),
(160, 'sales-man-sales-return', 'web', 'Advance Report', NULL, NULL),
(161, 'date-wise-invoice-print', 'web', 'Advance Report', NULL, NULL),
(162, 'delivery-sales-invoice', 'web', 'Advance Report', NULL, NULL),
(163, 'advance-report-menu', 'web', 'Advance Report', NULL, NULL),
(164, 'day-book', 'web', 'Accounts Report', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productions`
--

CREATE TABLE `productions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_date` date NOT NULL,
  `_from_cost_center` int(11) NOT NULL,
  `_from_branch` int(11) NOT NULL,
  `_to_cost_center` int(11) NOT NULL,
  `_to_branch` int(11) NOT NULL,
  `_reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_p_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `_status` int(11) NOT NULL DEFAULT 0,
  `_lock` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `production_from_settings`
--

CREATE TABLE `production_from_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_default_inventory` int(11) NOT NULL,
  `_production_account` int(11) NOT NULL,
  `_transit_account` int(11) NOT NULL,
  `_show_barcode` int(11) NOT NULL,
  `_show_store` int(11) NOT NULL,
  `_show_self` int(11) NOT NULL,
  `_show_cost_rate` int(11) NOT NULL,
  `_show_warranty` int(11) NOT NULL,
  `_show_expire_date` int(11) NOT NULL,
  `_show_manufacture_date` int(11) NOT NULL,
  `_invoice_template` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `production_from_settings`
--

INSERT INTO `production_from_settings` (`id`, `_default_inventory`, `_production_account`, `_transit_account`, `_show_barcode`, `_show_store`, `_show_self`, `_show_cost_rate`, `_show_warranty`, `_show_expire_date`, `_show_manufacture_date`, `_invoice_template`, `created_at`, `updated_at`) VALUES
(1, 7, 7, 7, 1, 1, 1, 1, 1, 1, 1, 1, '2022-07-18 15:27:24', '2022-07-18 15:32:29');

-- --------------------------------------------------------

--
-- Table structure for table `production_status`
--

CREATE TABLE `production_status` (
  `id` int(11) NOT NULL,
  `_name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `production_status`
--

INSERT INTO `production_status` (`id`, `_name`, `created_at`, `updated_at`) VALUES
(1, 'Transit', '2022-07-18 22:02:08', NULL),
(2, 'Work-in-progress', '2022-07-18 22:02:08', NULL),
(3, 'Complete', '2022-07-18 22:02:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_price_lists`
--

CREATE TABLE `product_price_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_item_id` bigint(20) UNSIGNED NOT NULL,
  `_item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_unit_id` int(11) DEFAULT NULL,
  `_barcode` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `_warranty` int(11) NOT NULL DEFAULT 0,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_unique_barcode` tinyint(4) NOT NULL DEFAULT 0,
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

INSERT INTO `product_price_lists` (`id`, `_item_id`, `_item`, `_unit_id`, `_barcode`, `_manufacture_date`, `_expire_date`, `_qty`, `_sales_rate`, `_pur_rate`, `_sales_discount`, `_sales_vat`, `_value`, `_purchase_detail_id`, `_master_id`, `_branch_id`, `_cost_center_id`, `_store_id`, `_store_salves_id`, `_warranty`, `_status`, `_unique_barcode`, `_created_by`, `_updated_by`, `updated_at`, `created_at`, `_p_discount_input`, `_p_discount_amount`, `_p_vat`, `_p_vat_amount`) VALUES
(1, 1, 'HP M22f 22Inc FHD IPS Monitor', 15, 'M22f1', NULL, NULL, 10.0000, 16800.0000, 1600.0000, '0', '0', 16000.0000, 1, 1, 1, 1, 1, '', 0, 1, 0, '46-jony', NULL, '2022-07-01 03:10:46', '2022-07-01 03:10:46', 0.0000, 0.0000, 0.0000, 0.0000),
(2, 2, 'HP V19 18.5 Inch HD Monitor', 15, 'V191', NULL, NULL, 10.0000, 10800.0000, 10000.0000, '0', '0', 100000.0000, 2, 1, 1, 1, 1, '', 1, 1, 0, '46-jony', NULL, '2022-07-01 03:10:46', '2022-07-01 03:10:46', 0.0000, 0.0000, 0.0000, 0.0000),
(3, 1, 'HP M22f 22Inc FHD IPS Monitor', 15, 'M22f2', NULL, NULL, 5.0000, 16800.0000, 1600.0000, '0', '0', 8000.0000, 3, 2, 1, 1, 1, '', 0, 1, 0, '46-jony', NULL, '2022-07-01 03:13:13', '2022-07-01 03:13:13', 0.0000, 0.0000, 0.0000, 0.0000),
(4, 2, 'HP V19 18.5 Inch HD Monitor', 15, 'V192', NULL, NULL, 5.0000, 10800.0000, 10000.0000, '0', '0', 50000.0000, 4, 2, 1, 1, 1, '', 1, 1, 0, '46-jony', NULL, '2022-07-01 03:13:13', '2022-07-01 03:13:13', 0.0000, 0.0000, 0.0000, 0.0000),
(5, 1, 'HP M22f 22Inc FHD IPS Monitor', 15, 'M22f3', NULL, NULL, 5.0000, 16800.0000, 1600.0000, '0', '0', 8000.0000, 5, 3, 1, 1, 1, '', 0, 1, 0, '46-jony', '46-jony', '2022-07-01 03:18:19', '2022-07-01 03:17:54', 0.0000, 0.0000, 0.0000, 0.0000),
(6, 2, 'HP V19 18.5 Inch HD Monitor', 15, 'V193', NULL, NULL, 5.0000, 10800.0000, 10000.0000, '0', '0', 50000.0000, 6, 3, 1, 1, 1, '', 1, 1, 0, '46-jony', '46-jony', '2022-07-01 03:18:19', '2022-07-01 03:17:54', 0.0000, 0.0000, 0.0000, 0.0000),
(7, 3, 'Avolac', 15, '7451252698324', NULL, NULL, 5.0000, 140.0000, 130.0000, '0', '0', 1300.0000, 7, 4, 1, 1, 1, '', 0, 1, 0, '46-jony', NULL, '2022-07-07 11:18:39', '2022-07-01 14:52:30', 0.0000, 0.0000, 0.0000, 0.0000),
(8, 3, 'Avolac', 15, '745125269832', NULL, NULL, 10.0000, 140.0000, 130.0000, '0', '0', 2600.0000, 8, 5, 1, 1, 1, '', 0, 1, 0, '46-jony', NULL, '2022-07-07 11:18:39', '2022-07-01 14:56:12', 0.0000, 0.0000, 0.0000, 0.0000);

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
  `_lock` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `_order_number`, `_date`, `_time`, `_order_ref_id`, `_referance`, `_ledger_id`, `_address`, `_phone`, `_user_id`, `_user_name`, `_note`, `_sub_total`, `_discount_input`, `_total_discount`, `_total_vat`, `_total`, `_p_balance`, `_l_balance`, `_branch_id`, `_cost_center_id`, `_store_id`, `_status`, `_lock`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 'P-1', '2022-07-01', '03:10:46', NULL, NULL, 85, 'Nimtoli Bazar,Manikganj.', '+8801671125045, +8801712314921', 46, 'jony', 'Purchase', 116000.0000, 0.0000, 0.0000, 0.0000, 116000.0000, 0, -116000, 1, 1, 1, 1, 0, '46-jony', NULL, '2022-06-30 21:10:46', '2022-06-30 21:10:46'),
(2, 'P-2', '2022-07-01', '03:13:13', NULL, NULL, 254, 'Dhakuli Poschimpara,Jagir,Manikganj.', '+8801727963836', 46, 'jony', 'Purchase', 58000.0000, 0.0000, 0.0000, 0.0000, 58000.0000, 0, -58000, 1, 1, 1, 1, 0, '46-jony', NULL, '2022-06-30 21:13:13', '2022-06-30 21:13:13'),
(3, 'P-3', '2022-07-01', '03:18:19', NULL, NULL, 152, '656,East Dashora,Manikganj.', '+8801687896802, +8801714215466', 46, 'jony', 'Purchase', 58000.0000, 0.0000, 0.0000, 0.0000, 58000.0000, 0, -58000, 1, 1, 1, 1, 0, '46-jony', '46-jony', '2022-06-30 21:17:54', '2022-06-30 21:18:19'),
(4, 'P-4', '2022-07-01', '14:52:30', NULL, NULL, 189, 'Nimtoli Bazar,Manikganj.', '+88017', 46, 'jony', 'purchase', 1300.0000, 0.0000, 0.0000, 0.0000, 1300.0000, 0, -1300, 1, 1, 1, 1, 1, '46-jony', NULL, '2022-07-01 08:52:30', '2022-07-01 08:52:30'),
(5, 'P-5', '2022-07-01', '14:56:12', NULL, NULL, 189, 'Nimtoli Bazar,Manikganj.', '+88017', 46, 'jony', 'purchase', 2600.0000, 0.0000, 0.0000, 0.0000, 2600.0000, -1300, -3900, 1, 1, 1, 1, 0, '46-jony', NULL, '2022-07-01 08:56:12', '2022-07-01 08:56:12');

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

-- --------------------------------------------------------

--
-- Table structure for table `purchase_barcodes`
--

CREATE TABLE `purchase_barcodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_p_p_id` int(11) NOT NULL,
  `_item_id` int(11) NOT NULL,
  `_no_id` int(11) NOT NULL,
  `_no_detail_id` int(11) NOT NULL,
  `_qty` int(11) NOT NULL DEFAULT 1,
  `_barcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
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
(1, 1, 10.0000, 'M22f1', 1600.0000, 16800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 16000.0000, 1, 1, '', NULL, NULL, 1, 1, 1, '46-jony', NULL, '2022-06-30 21:10:46', '2022-06-30 21:10:46'),
(2, 2, 10.0000, 'V191', 10000.0000, 10800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100000.0000, 1, 1, '', NULL, NULL, 1, 1, 1, '46-jony', NULL, '2022-06-30 21:10:46', '2022-06-30 21:10:46'),
(3, 1, 5.0000, 'M22f2', 1600.0000, 16800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 8000.0000, 1, 1, '', NULL, NULL, 2, 1, 1, '46-jony', NULL, '2022-06-30 21:13:13', '2022-06-30 21:13:13'),
(4, 2, 5.0000, 'V192', 10000.0000, 10800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 50000.0000, 1, 1, '', NULL, NULL, 2, 1, 1, '46-jony', NULL, '2022-06-30 21:13:13', '2022-06-30 21:13:13'),
(5, 1, 5.0000, 'M22f3', 1600.0000, 16800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 8000.0000, 1, 1, '1', NULL, NULL, 3, 1, 1, '46-jony', '46-jony', '2022-06-30 21:17:54', '2022-06-30 21:18:19'),
(6, 2, 5.0000, 'V193', 10000.0000, 10800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 50000.0000, 1, 1, '1', NULL, NULL, 3, 1, 1, '46-jony', '46-jony', '2022-06-30 21:17:54', '2022-06-30 21:18:19'),
(7, 3, 10.0000, '7451252698324', 130.0000, 140.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1300.0000, 1, 1, '', NULL, NULL, 4, 1, 1, '46-jony', NULL, '2022-07-01 08:52:30', '2022-07-01 08:52:30'),
(8, 3, 20.0000, '745125269832', 130.0000, 140.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2600.0000, 1, 1, '', NULL, NULL, 5, 1, 1, '46-jony', NULL, '2022-07-01 08:56:12', '2022-07-01 08:56:12');

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
  `_invoice_template` int(11) NOT NULL DEFAULT 0,
  `_show_p_balance` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase_form_settings`
--

INSERT INTO `purchase_form_settings` (`id`, `_default_inventory`, `_default_purchase`, `_default_discount`, `_default_vat_account`, `_show_barcode`, `_show_vat`, `_show_store`, `_show_self`, `_show_manufacture_date`, `_show_expire_date`, `_invoice_template`, `_show_p_balance`, `created_at`, `updated_at`) VALUES
(1, 7, 2, 6, 10, 1, 1, 0, 0, 0, 0, 2, 1, '2022-04-14 18:43:06', '2022-07-03 16:17:42');

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
  `_p_balance` double NOT NULL DEFAULT 0,
  `_l_balance` double NOT NULL DEFAULT 0,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_cost_center_id` int(11) NOT NULL DEFAULT 1,
  `_store_id` int(11) NOT NULL DEFAULT 1,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_lock` tinyint(4) NOT NULL DEFAULT 0,
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
-- Table structure for table `purchase_return_barcodes`
--

CREATE TABLE `purchase_return_barcodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_p_p_id` int(11) NOT NULL,
  `_item_id` int(11) NOT NULL,
  `_no_id` int(11) NOT NULL,
  `_no_detail_id` int(11) NOT NULL,
  `_qty` int(11) NOT NULL DEFAULT 1,
  `_barcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
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
  `_barcode` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `_invoice_template` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_return_form_settings`
--

INSERT INTO `purchase_return_form_settings` (`id`, `_default_inventory`, `_default_purchase`, `_default_discount`, `_default_vat_account`, `_show_barcode`, `_show_vat`, `_show_store`, `_show_self`, `_show_p_balance`, `_invoice_template`, `created_at`, `updated_at`) VALUES
(1, 7, 3, 6, 51, 1, 1, 1, 1, 1, 2, '2022-04-19 14:10:35', '2022-06-14 17:55:42');

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
(5, 'Accountant', 'web', 'admin', '2021-06-04 05:59:56', '2022-04-22 10:17:31'),
(6, 'Accounting Manager', 'web', 'visitor', '2022-06-08 12:09:38', '2022-06-08 12:09:38'),
(7, 'Admin Manager', 'web', 'visitor', '2022-06-08 14:03:45', '2022-06-08 14:03:45');

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
(1, 6),
(1, 7),
(2, 1),
(2, 3),
(2, 5),
(2, 7),
(3, 1),
(3, 3),
(3, 5),
(4, 1),
(4, 3),
(4, 5),
(5, 1),
(5, 3),
(5, 5),
(5, 6),
(5, 7),
(6, 1),
(6, 3),
(6, 5),
(6, 7),
(7, 1),
(7, 3),
(7, 5),
(8, 1),
(8, 3),
(8, 5),
(9, 1),
(9, 3),
(9, 5),
(9, 6),
(9, 7),
(10, 1),
(10, 3),
(10, 5),
(10, 6),
(10, 7),
(11, 1),
(11, 3),
(11, 5),
(12, 1),
(12, 3),
(12, 5),
(13, 1),
(13, 3),
(13, 5),
(13, 6),
(13, 7),
(14, 1),
(14, 3),
(14, 5),
(14, 6),
(14, 7),
(15, 1),
(15, 3),
(15, 5),
(16, 1),
(16, 3),
(16, 5),
(17, 1),
(17, 3),
(17, 5),
(17, 6),
(17, 7),
(18, 1),
(18, 3),
(18, 5),
(18, 6),
(18, 7),
(19, 1),
(19, 3),
(19, 5),
(20, 1),
(20, 3),
(20, 5),
(21, 1),
(21, 3),
(21, 5),
(21, 6),
(21, 7),
(22, 1),
(22, 3),
(22, 5),
(22, 6),
(22, 7),
(23, 1),
(23, 3),
(23, 5),
(24, 1),
(24, 3),
(24, 5),
(25, 1),
(25, 3),
(25, 5),
(25, 6),
(25, 7),
(26, 1),
(26, 3),
(26, 5),
(26, 7),
(27, 1),
(27, 3),
(27, 5),
(28, 1),
(28, 3),
(28, 5),
(29, 5),
(30, 1),
(30, 3),
(30, 5),
(30, 6),
(30, 7),
(31, 1),
(31, 3),
(31, 5),
(31, 6),
(31, 7),
(32, 1),
(32, 3),
(32, 5),
(33, 1),
(33, 3),
(33, 5),
(34, 1),
(34, 3),
(34, 5),
(34, 6),
(34, 7),
(35, 1),
(35, 3),
(35, 5),
(35, 6),
(35, 7),
(36, 1),
(36, 3),
(36, 5),
(37, 1),
(37, 3),
(37, 5),
(38, 1),
(38, 3),
(38, 5),
(38, 6),
(38, 7),
(39, 1),
(39, 3),
(39, 5),
(39, 6),
(39, 7),
(40, 1),
(40, 3),
(40, 5),
(40, 6),
(40, 7),
(41, 1),
(41, 3),
(41, 5),
(41, 6),
(41, 7),
(42, 1),
(42, 3),
(42, 5),
(42, 6),
(42, 7),
(43, 1),
(43, 3),
(43, 5),
(43, 6),
(43, 7),
(44, 1),
(44, 3),
(44, 5),
(44, 6),
(44, 7),
(45, 1),
(45, 3),
(45, 5),
(45, 6),
(45, 7),
(46, 1),
(46, 3),
(46, 5),
(46, 7),
(47, 1),
(47, 3),
(47, 5),
(47, 6),
(47, 7),
(48, 1),
(48, 3),
(48, 5),
(48, 6),
(48, 7),
(49, 1),
(49, 3),
(49, 5),
(49, 6),
(49, 7),
(50, 1),
(50, 3),
(50, 5),
(51, 3),
(51, 5),
(52, 1),
(52, 3),
(52, 5),
(52, 6),
(52, 7),
(53, 1),
(53, 3),
(53, 5),
(53, 6),
(53, 7),
(54, 1),
(54, 3),
(54, 5),
(55, 3),
(55, 5),
(56, 1),
(56, 3),
(56, 5),
(56, 6),
(56, 7),
(57, 1),
(57, 3),
(57, 5),
(57, 6),
(57, 7),
(58, 1),
(58, 3),
(58, 5),
(59, 1),
(59, 3),
(59, 5),
(60, 1),
(60, 3),
(60, 5),
(60, 6),
(60, 7),
(61, 1),
(61, 3),
(61, 5),
(61, 6),
(61, 7),
(62, 1),
(62, 3),
(62, 5),
(63, 3),
(63, 5),
(64, 1),
(64, 3),
(64, 5),
(64, 6),
(64, 7),
(65, 1),
(65, 3),
(65, 5),
(65, 6),
(65, 7),
(66, 1),
(66, 3),
(66, 5),
(66, 6),
(66, 7),
(67, 1),
(67, 3),
(67, 5),
(67, 6),
(67, 7),
(68, 1),
(68, 3),
(68, 5),
(69, 1),
(69, 3),
(69, 5),
(70, 1),
(70, 3),
(70, 5),
(70, 7),
(71, 1),
(71, 3),
(71, 5),
(71, 6),
(71, 7),
(72, 1),
(72, 3),
(72, 5),
(72, 6),
(72, 7),
(73, 1),
(73, 3),
(73, 5),
(73, 6),
(73, 7),
(74, 1),
(74, 3),
(74, 5),
(75, 1),
(75, 3),
(75, 5),
(76, 1),
(76, 3),
(76, 5),
(76, 6),
(76, 7),
(77, 1),
(77, 3),
(77, 5),
(77, 6),
(77, 7),
(78, 1),
(78, 6),
(78, 7),
(79, 1),
(79, 6),
(79, 7),
(80, 1),
(81, 1),
(82, 1),
(82, 6),
(82, 7),
(83, 1),
(83, 6),
(83, 7),
(84, 1),
(84, 6),
(84, 7),
(85, 1),
(85, 6),
(85, 7),
(86, 1),
(86, 6),
(86, 7),
(87, 1),
(87, 6),
(87, 7),
(88, 1),
(88, 6),
(88, 7),
(89, 1),
(89, 6),
(89, 7),
(90, 1),
(90, 6),
(90, 7),
(91, 1),
(91, 6),
(91, 7),
(92, 1),
(92, 6),
(92, 7),
(93, 1),
(93, 6),
(93, 7),
(94, 1),
(94, 6),
(94, 7),
(95, 1),
(95, 6),
(95, 7),
(96, 1),
(96, 6),
(96, 7),
(97, 1),
(97, 6),
(97, 7),
(98, 1),
(98, 6),
(98, 7),
(99, 1),
(99, 6),
(99, 7),
(100, 6),
(100, 7),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(161, 1),
(163, 1),
(164, 1);

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
  `_sales_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lock` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `_order_number`, `_date`, `_time`, `_order_ref_id`, `_referance`, `_ledger_id`, `_address`, `_phone`, `_user_id`, `_user_name`, `_note`, `_sub_total`, `_discount_input`, `_total_discount`, `_total_vat`, `_total`, `_p_balance`, `_l_balance`, `_branch_id`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`, `_store_id`, `_cost_center_id`, `_store_salves_id`, `_delivery_man_id`, `_sales_man_id`, `_sales_type`, `_lock`) VALUES
(1, 'S-1', '2022-07-01', '15:01:07', NULL, NULL, 121, 'N/A', 'N/A', 46, 'jony', 'Sales', 280.0000, 0.0000, 0.0000, 0.0000, 280.0000, 0, 0, 1, 1, '46-jony', NULL, '2022-07-01 09:01:07', '2022-07-01 09:01:07', 1, 1, NULL, 0, 0, 'sales', 0),
(2, 'S-2', '2022-07-07', '11:18:39', NULL, NULL, 158, '656,East Dashora,Manikganj.', '+8801687896802, +8801714215466', 46, 'jony', 'sales', 1820.0000, 0.0000, 0.0000, 0.0000, 1820.0000, 0, 1820, 1, 1, '46-jony', NULL, '2022-07-07 05:18:39', '2022-07-07 05:18:39', 1, 1, NULL, 0, 0, 'sales', 0);

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
(1, 1, 1, 16, 1, 280.0000, 0.0000, NULL, 1, 1, 'N/A', 1, '46-jony', NULL, '2022-07-01 09:01:07', '2022-07-01 09:01:07'),
(2, 1, 13, 1, 121, 0.0000, 280.0000, NULL, 1, 1, 'Sales Payment', 1, '46-jony', NULL, '2022-07-01 09:01:07', '2022-07-01 09:01:07');

-- --------------------------------------------------------

--
-- Table structure for table `sales_barcodes`
--

CREATE TABLE `sales_barcodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_p_p_id` int(11) NOT NULL,
  `_item_id` int(11) NOT NULL,
  `_no_id` int(11) NOT NULL,
  `_no_detail_id` int(11) NOT NULL,
  `_qty` int(11) NOT NULL DEFAULT 1,
  `_barcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
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
  `_barcode` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `_warranty` int(11) NOT NULL DEFAULT 0,
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

INSERT INTO `sales_details` (`id`, `_item_id`, `_barcode`, `_p_p_l_id`, `_qty`, `_rate`, `_sales_rate`, `_discount`, `_discount_amount`, `_vat`, `_vat_amount`, `_value`, `_manufacture_date`, `_expire_date`, `_store_id`, `_cost_center_id`, `_store_salves_id`, `_warranty`, `_purchase_invoice_no`, `_purchase_detail_id`, `_no`, `_branch_id`, `_status`, `_created_by`, `_updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, '745125269832', 8, 2.0000, 130.0000, 140.0000, 0.0000, 0.0000, 0.0000, 0.0000, 280.0000, NULL, NULL, 1, 1, '', 0, 5, 8, 1, 1, 1, '46-jony', NULL, '2022-07-01 09:01:07', '2022-07-01 09:01:07'),
(2, 3, '7451252698324', 7, 5.0000, 130.0000, 140.0000, 0.0000, 0.0000, 0.0000, 0.0000, 700.0000, NULL, NULL, 1, 1, '', 0, 4, 7, 2, 1, 1, '46-jony', NULL, '2022-07-07 05:18:39', '2022-07-07 05:18:39'),
(3, 3, '745125269832', 8, 8.0000, 130.0000, 140.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1120.0000, NULL, NULL, 1, 1, '', 0, 5, 8, 2, 1, 1, '46-jony', NULL, '2022-07-07 05:18:39', '2022-07-07 05:18:39');

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
  `_show_p_balance` int(11) NOT NULL DEFAULT 0,
  `_invoice_template` int(11) NOT NULL DEFAULT 0,
  `_cash_customer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_show_warranty` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_form_settings`
--

INSERT INTO `sales_form_settings` (`id`, `_default_inventory`, `_default_sales`, `_default_cost_of_solds`, `_default_discount`, `_default_vat_account`, `_show_barcode`, `_inline_discount`, `_show_vat`, `_show_store`, `_show_self`, `created_at`, `updated_at`, `_show_delivery_man`, `_show_sales_man`, `_show_cost_rate`, `_show_manufacture_date`, `_show_expire_date`, `_show_p_balance`, `_invoice_template`, `_cash_customer`, `_show_warranty`) VALUES
(1, 7, 4, 50, 8, 10, 1, 1, 1, 1, 1, '2022-04-26 10:54:55', '2022-07-18 06:50:29', 1, 1, 1, 1, 1, 1, 2, '121', 1);

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
  `_sales_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lock` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `sales_return_barcodes`
--

CREATE TABLE `sales_return_barcodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_p_p_id` int(11) NOT NULL,
  `_item_id` int(11) NOT NULL,
  `_no_id` int(11) NOT NULL,
  `_no_detail_id` int(11) NOT NULL,
  `_qty` int(11) NOT NULL DEFAULT 1,
  `_barcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
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
  `_barcode` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `_warranty` int(11) NOT NULL DEFAULT 0,
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
  `_show_p_balance` int(11) NOT NULL DEFAULT 0,
  `_invoice_template` int(11) NOT NULL DEFAULT 0,
  `_show_warranty` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_return_form_settings`
--

INSERT INTO `sales_return_form_settings` (`id`, `_default_inventory`, `_default_sales`, `_default_cost_of_solds`, `_default_discount`, `_default_vat_account`, `_show_barcode`, `_show_vat`, `_show_store`, `_show_self`, `created_at`, `updated_at`, `_show_delivery_man`, `_show_sales_man`, `_show_cost_rate`, `_inline_discount`, `_show_expire_date`, `_show_manufacture_date`, `_show_p_balance`, `_invoice_template`, `_show_warranty`) VALUES
(1, 7, 5, 50, 8, 10, 1, 0, 0, 0, '2022-04-29 04:53:06', '2022-06-23 14:17:33', 1, 1, 0, 1, 0, 0, 1, 4, 1);

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
-- Table structure for table `stock_ins`
--

CREATE TABLE `stock_ins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_item_id` bigint(20) UNSIGNED NOT NULL,
  `_p_p_l_id` bigint(20) UNSIGNED NOT NULL,
  `_qty` double(15,4) NOT NULL DEFAULT 0.0000,
  `_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_sales_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_vat` double(15,4) NOT NULL DEFAULT 0.0000,
  `_vat_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_value` double(15,4) NOT NULL DEFAULT 0.0000,
  `_warranty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `_barcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_purchase_invoice_no` int(11) DEFAULT NULL,
  `_purchase_detail_id` int(11) DEFAULT NULL,
  `_manufacture_date` date DEFAULT NULL,
  `_expire_date` date DEFAULT NULL,
  `_no` bigint(20) UNSIGNED NOT NULL,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_store_id` int(11) DEFAULT NULL,
  `_cost_center_id` int(11) DEFAULT NULL,
  `_store_salves_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_outs`
--

CREATE TABLE `stock_outs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_item_id` bigint(20) UNSIGNED NOT NULL,
  `_p_p_l_id` bigint(20) UNSIGNED NOT NULL,
  `_qty` double(15,4) NOT NULL DEFAULT 0.0000,
  `_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_sales_rate` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_discount_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_vat` double(15,4) NOT NULL DEFAULT 0.0000,
  `_vat_amount` double(15,4) NOT NULL DEFAULT 0.0000,
  `_value` double(15,4) NOT NULL DEFAULT 0.0000,
  `_store_id` int(11) DEFAULT NULL,
  `_warranty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `_barcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_purchase_invoice_no` int(11) DEFAULT NULL,
  `_purchase_detail_id` int(11) DEFAULT NULL,
  `_manufacture_date` date DEFAULT NULL,
  `_expire_date` date DEFAULT NULL,
  `_no` bigint(20) UNSIGNED NOT NULL,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_cost_center_id` int(11) DEFAULT NULL,
  `_store_salves_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `_ac_type` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `user_type`, `branch_ids`, `cost_center_ids`, `ref_id`, `email_verified_at`, `password`, `status`, `_ac_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, 'admin', '1', '1', NULL, NULL, '$2y$10$X95FiyUlPn7hH/aHQvs7DuvprssbIkx.hXBHbCWZOGcMHapICk.w.', 1, 1, NULL, '2021-05-29 11:33:16', '2022-06-30 11:06:35'),
(2, 'farhad', 'farhadali0507@gmail.com', NULL, 'admin', '1,2', NULL, NULL, NULL, '$2y$10$dLHaWAH9He44h0qbKWsbZ.mrUSu7hfUlv9DjVlPBeqiNhSaa.szQW', 1, 0, NULL, '2021-05-29 11:35:46', '2022-03-04 13:03:28'),
(46, 'jony', 'jony0507@gmail.com', NULL, 'admin', '1', '1', 0, NULL, '$2y$10$a1x6VBU0VWqbI8T8HeDX3exLuF4XJm6sxCMNUJYxYQFOPh7VZSMh2', 1, 1, NULL, '2022-03-04 14:08:25', '2022-06-30 11:43:58'),
(47, 'Md. Joshim Uddin Sarder', 'jashimuddin@gmail.com', NULL, 'visitor', '1', '1', 0, NULL, '$2y$10$2zsNsUjIcucUTRtUTe65I.ifix4tn3XWK6nFYul/gj6bf4iAmHf1y', 1, 0, NULL, '2022-05-24 11:15:41', '2022-05-24 11:15:41'),
(48, 'Shikder Saud Al Faisal (Sandu)', 'ssafaisal270382@gmail.com', NULL, 'visitor', '1', '1', 0, NULL, '$2y$10$pVsRwVEo83i2oVrVN5WNo.EPXUACTTjfBmoMeIS0qMC4ZMxqBFCEm', 1, 1, NULL, '2022-06-08 12:11:53', '2022-06-11 18:06:34'),
(49, 'Ashraful Islam (Mehedi)', 'ashraful3101@gmail.com', NULL, 'visitor', '1', '1', 0, NULL, '$2y$10$5jRvZueJWS.WuwYyffT3h.P1.RixQuz34b86xOSgr.q.KD4t84guG', 1, 1, NULL, '2022-06-08 14:05:17', '2022-06-11 18:06:20');

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
  `_defalut_ledger_id` int(11) DEFAULT NULL,
  `_user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_voucher_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_transection_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_transection_ref` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_form_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_amount` double(15,4) DEFAULT NULL,
  `_branch_id` bigint(20) UNSIGNED NOT NULL,
  `_cost_center_id` int(11) DEFAULT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 0,
  `_lock` tinyint(4) NOT NULL DEFAULT 0,
  `_created_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_updated_by` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `warranties`
--

CREATE TABLE `warranties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_duration` int(11) NOT NULL,
  `_period` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warranties`
--

INSERT INTO `warranties` (`id`, `_name`, `_description`, `_duration`, `_period`, `_status`, `created_at`, `updated_at`) VALUES
(1, '1 Years', '1 Years', 1, 'years', 1, '2022-03-03 05:38:37', '2022-06-23 06:44:18'),
(3, '2 Years', '2 Years', 2, 'years', 1, '2022-06-23 10:41:32', '2022-06-23 10:41:32'),
(4, '6 Month', '6 Month', 6, 'months', 1, '2022-06-23 10:41:44', '2022-06-23 10:41:44'),
(5, '3 years', '3 years', 3, 'years', 1, '2022-06-23 10:41:59', '2022-06-23 10:41:59');

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
-- Indexes for table `barcode_details`
--
ALTER TABLE `barcode_details`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `damage_adjustments`
--
ALTER TABLE `damage_adjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `damage_adjustments__ledger_id_foreign` (`_ledger_id`),
  ADD KEY `damage_adjustments__user_id_foreign` (`_user_id`),
  ADD KEY `damage_adjustments__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `damage_adjustment_details`
--
ALTER TABLE `damage_adjustment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `damage_adjustment_details__item_id_foreign` (`_item_id`),
  ADD KEY `damage_adjustment_details__p_p_l_id_foreign` (`_p_p_l_id`),
  ADD KEY `damage_adjustment_details__no_foreign` (`_no`),
  ADD KEY `damage_adjustment_details__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `damage_barcodes`
--
ALTER TABLE `damage_barcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `damage_form_settings`
--
ALTER TABLE `damage_form_settings`
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
-- Indexes for table `productions`
--
ALTER TABLE `productions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production_from_settings`
--
ALTER TABLE `production_from_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production_status`
--
ALTER TABLE `production_status`
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
-- Indexes for table `purchase_barcodes`
--
ALTER TABLE `purchase_barcodes`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `purchase_return_barcodes`
--
ALTER TABLE `purchase_return_barcodes`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sales_barcodes`
--
ALTER TABLE `sales_barcodes`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sales_return_barcodes`
--
ALTER TABLE `sales_return_barcodes`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `stock_ins`
--
ALTER TABLE `stock_ins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_ins__item_id_foreign` (`_item_id`),
  ADD KEY `stock_ins__p_p_l_id_foreign` (`_p_p_l_id`),
  ADD KEY `stock_ins__no_foreign` (`_no`),
  ADD KEY `stock_ins__branch_id_foreign` (`_branch_id`);

--
-- Indexes for table `stock_outs`
--
ALTER TABLE `stock_outs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_outs__item_id_foreign` (`_item_id`),
  ADD KEY `stock_outs__p_p_l_id_foreign` (`_p_p_l_id`),
  ADD KEY `stock_outs__no_foreign` (`_no`),
  ADD KEY `stock_outs__branch_id_foreign` (`_branch_id`);

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
-- Indexes for table `warranties`
--
ALTER TABLE `warranties`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT for table `barcode_details`
--
ALTER TABLE `barcode_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `damage_adjustments`
--
ALTER TABLE `damage_adjustments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `damage_adjustment_details`
--
ALTER TABLE `damage_adjustment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `damage_barcodes`
--
ALTER TABLE `damage_barcodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `damage_form_settings`
--
ALTER TABLE `damage_form_settings`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `item_inventories`
--
ALTER TABLE `item_inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `main_account_head`
--
ALTER TABLE `main_account_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `page_rows`
--
ALTER TABLE `page_rows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `productions`
--
ALTER TABLE `productions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `production_from_settings`
--
ALTER TABLE `production_from_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `production_status`
--
ALTER TABLE `production_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_price_lists`
--
ALTER TABLE `product_price_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchase_accounts`
--
ALTER TABLE `purchase_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_barcodes`
--
ALTER TABLE `purchase_barcodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_return_accounts`
--
ALTER TABLE `purchase_return_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_return_barcodes`
--
ALTER TABLE `purchase_return_barcodes`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales_accounts`
--
ALTER TABLE `sales_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales_barcodes`
--
ALTER TABLE `sales_barcodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_return_accounts`
--
ALTER TABLE `sales_return_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_return_barcodes`
--
ALTER TABLE `sales_return_barcodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_return_details`
--
ALTER TABLE `sales_return_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `stock_ins`
--
ALTER TABLE `stock_ins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_outs`
--
ALTER TABLE `stock_outs`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `voucher_masters`
--
ALTER TABLE `voucher_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voucher_master_details`
--
ALTER TABLE `voucher_master_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voucher_types`
--
ALTER TABLE `voucher_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `warranties`
--
ALTER TABLE `warranties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- Constraints for table `damage_adjustments`
--
ALTER TABLE `damage_adjustments`
  ADD CONSTRAINT `damage_adjustments__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `damage_adjustments__ledger_id_foreign` FOREIGN KEY (`_ledger_id`) REFERENCES `account_ledgers` (`id`),
  ADD CONSTRAINT `damage_adjustments__user_id_foreign` FOREIGN KEY (`_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `damage_adjustment_details`
--
ALTER TABLE `damage_adjustment_details`
  ADD CONSTRAINT `damage_adjustment_details__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `damage_adjustment_details__item_id_foreign` FOREIGN KEY (`_item_id`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `damage_adjustment_details__no_foreign` FOREIGN KEY (`_no`) REFERENCES `damage_adjustments` (`id`),
  ADD CONSTRAINT `damage_adjustment_details__p_p_l_id_foreign` FOREIGN KEY (`_p_p_l_id`) REFERENCES `product_price_lists` (`id`);

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
-- Constraints for table `stock_ins`
--
ALTER TABLE `stock_ins`
  ADD CONSTRAINT `stock_ins__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `stock_ins__item_id_foreign` FOREIGN KEY (`_item_id`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `stock_ins__no_foreign` FOREIGN KEY (`_no`) REFERENCES `productions` (`id`),
  ADD CONSTRAINT `stock_ins__p_p_l_id_foreign` FOREIGN KEY (`_p_p_l_id`) REFERENCES `product_price_lists` (`id`);

--
-- Constraints for table `stock_outs`
--
ALTER TABLE `stock_outs`
  ADD CONSTRAINT `stock_outs__branch_id_foreign` FOREIGN KEY (`_branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `stock_outs__item_id_foreign` FOREIGN KEY (`_item_id`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `stock_outs__no_foreign` FOREIGN KEY (`_no`) REFERENCES `productions` (`id`),
  ADD CONSTRAINT `stock_outs__p_p_l_id_foreign` FOREIGN KEY (`_p_p_l_id`) REFERENCES `product_price_lists` (`id`);

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
