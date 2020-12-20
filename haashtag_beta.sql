-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 18, 2020 at 11:17 PM
-- Server version: 5.6.49-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `haashtag_beta`
--

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_access_page`
--

CREATE TABLE `haashtag_access_page` (
  `page_code` varchar(50) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `lang_code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_access_page`
--

INSERT INTO `haashtag_access_page` (`page_code`, `cat_id`, `lang_code`, `name`) VALUES
('add_company', 6, 'add', 'Add Company'),
('add_custom_field', 7, 'add', 'Add Custom Field'),
('add_department', 4, 'add', 'Add department'),
('add_insurance', 13, 'Add', 'Add Insurance'),
('add_location', 3, 'add', 'Add location'),
('add_manufacturer', 11, 'add', 'Add manufacturer'),
('add_model', 9, 'add', 'Add model'),
('add_status', 10, 'add', 'Add status'),
('add_supplier', 8, 'add', 'Add supplier'),
('add_user', 12, 'add', 'Add User'),
('add_user_group', 5, 'add', 'Add User Group'),
('add_warehouse', 2, 'add', 'Add Warehouse'),
('configuration', 1, 'configuration', 'Configuration'),
('edit_company', 6, 'edit', 'Edit company'),
('edit_custom_field', 7, 'edit', 'Edit Custom Field'),
('edit_department', 4, 'edit', 'Edit department'),
('edit_insurance', 13, 'edit', 'edit insurance'),
('edit_location', 3, 'edit', 'Edit location'),
('edit_manufacturer', 11, 'edit', 'Edit manufacturer'),
('edit_model', 9, 'edit', 'Edit model'),
('edit_status', 10, 'edit', 'Edit status'),
('edit_supplier', 8, 'edit', 'Edit Supplier'),
('edit_user_group', 5, 'edit', 'Edit User Group'),
('edit_warehouse', 2, 'edit', 'Edit Warehouse'),
('email_setup', 1, 'email_setup', 'Email Setup'),
('export_user', 12, 'export', 'export user'),
('label_setup', 1, 'label_setup', 'Label Setup'),
('password_user', 12, 'change_password', 'Change user password'),
('sms_setup', 1, 'sms_setup', 'SMS Setup'),
('status_company', 6, 'status', 'company status'),
('status_custom_field', 7, 'status', 'Custom field status'),
('status_department', 4, 'status', 'department Status'),
('status_insurance', 13, 'status', 'isurance status'),
('status_location', 3, 'status', 'location Status'),
('status_manufacturer', 11, 'status', 'model manufacturer'),
('status_model', 9, 'status', 'model Status'),
('status_status', 10, 'status', 'model status'),
('status_supplier', 8, 'status', 'supplier Status'),
('status_user', 12, 'status', 'user status'),
('status_user_group', 5, 'status', 'user group Status'),
('status_warehouse', 2, 'status', 'Warehouse Status'),
('view_company', 6, 'view', 'View company'),
('view_custom_field', 7, 'view', 'View Custom Field'),
('view_department', 4, 'view', 'View department'),
('view_insurance', 13, 'view', 'view insurance'),
('view_location', 3, 'view', 'View location'),
('view_manufacturer', 11, 'view', 'View manufacturer'),
('view_model', 9, 'view', 'View model'),
('view_status', 10, 'view', 'View status'),
('view_supplier', 8, 'view', 'View Supplier'),
('view_user', 12, 'view', 'View user'),
('view_user_group', 5, 'view', 'View user group'),
('view_warehouse', 2, 'view', 'View Warehouse');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_booked_cnno`
--

CREATE TABLE `haashtag_booked_cnno` (
  `dsr_branch_code` varchar(100) NOT NULL,
  `dsr_cnno` varchar(50) NOT NULL,
  `dsr_booked_by` varchar(10) NOT NULL,
  `dsr_cust_code` varchar(100) NOT NULL,
  `dsr_cn_weight` varchar(100) NOT NULL,
  `dsr_cn_type` varchar(20) NOT NULL,
  `dsr_dest` varchar(50) NOT NULL,
  `dsr_mode` varchar(20) NOT NULL,
  `dsr_no_of_pieces` varchar(10) NOT NULL,
  `dsr_dest_pin` varchar(10) NOT NULL,
  `dsr_booking_date` date NOT NULL,
  `dsr_amt` varchar(100) NOT NULL,
  `dsr_status` varchar(10) NOT NULL,
  `dsr_pod_recd` varchar(100) NOT NULL,
  `dsr_transmf_no` varchar(100) NOT NULL,
  `dsr_booking_time` time NOT NULL,
  `dsr_dox` varchar(20) NOT NULL,
  `dsr_service_tax` varchar(50) NOT NULL,
  `dsr_spl_disc` varchar(50) NOT NULL,
  `dsr_contents` text NOT NULL,
  `dsr_remarks` text NOT NULL,
  `dsr_value` varchar(100) NOT NULL,
  `dsr_invno` varchar(100) NOT NULL,
  `dsr_invdate` date NOT NULL,
  `mod_date` date NOT NULL,
  `office_type` varchar(20) NOT NULL,
  `office_code` varchar(20) NOT NULL,
  `dsr_refno` varchar(50) NOT NULL,
  `mod_time` varchar(50) NOT NULL,
  `nodeid` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `trans_status` varchar(10) NOT NULL,
  `dsr_act_cust_code` varchar(50) NOT NULL,
  `dsr_mobile` varchar(20) NOT NULL,
  `dsr_email` varchar(50) NOT NULL,
  `dsr_ndx_paper` varchar(10) NOT NULL,
  `dsr_pickup_time` varchar(50) NOT NULL,
  `dsr_vol_weight` varchar(50) NOT NULL,
  `dsr_captured_weight` varchar(100) NOT NULL,
  `dsr_id_num` varchar(100) NOT NULL,
  `customer_code` varchar(100) NOT NULL,
  `track_id` varchar(100) NOT NULL,
  `entry_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_booked_cnno`
--

INSERT INTO `haashtag_booked_cnno` (`dsr_branch_code`, `dsr_cnno`, `dsr_booked_by`, `dsr_cust_code`, `dsr_cn_weight`, `dsr_cn_type`, `dsr_dest`, `dsr_mode`, `dsr_no_of_pieces`, `dsr_dest_pin`, `dsr_booking_date`, `dsr_amt`, `dsr_status`, `dsr_pod_recd`, `dsr_transmf_no`, `dsr_booking_time`, `dsr_dox`, `dsr_service_tax`, `dsr_spl_disc`, `dsr_contents`, `dsr_remarks`, `dsr_value`, `dsr_invno`, `dsr_invdate`, `mod_date`, `office_type`, `office_code`, `dsr_refno`, `mod_time`, `nodeid`, `userid`, `trans_status`, `dsr_act_cust_code`, `dsr_mobile`, `dsr_email`, `dsr_ndx_paper`, `dsr_pickup_time`, `dsr_vol_weight`, `dsr_captured_weight`, `dsr_id_num`, `customer_code`, `track_id`, `entry_date_time`) VALUES
('B26', '20428587', 'F', 'BF1850', '0.05', 'AR1', 'RMI', 'AR', '1', '560092', '2020-12-12', '', 'B', '', '', '07:56:15', 'D', '', '', '', '', '', '', '1970-01-01', '2020-12-12', 'BO', 'B61', 'B75151715', '756', '192.168.1.', '', 'A', 'BF1850', '', '', 'N', '', '0', '0.05', '', '', '1607860617204', '2020-12-13 17:26:57'),
('B26', 'B71732628', 'F', 'BF1850', '4.9', 'AC1', 'AGR', 'AC', '1', '282007', '2020-12-12', '340', 'B', '', '3677007429', '19:42:17', 'N', '', '', 'ELECTRONIC ITEMS', 'FR-D61835830', '500', '', '1970-01-01', '2020-12-12', 'MF', 'B26', '', '2017', '192.168.1.', 'BOS0044', 'A', 'BF1850', '', '', 'N', '', '4.9', '3.18', '', '', '1607857958505', '2020-12-13 16:42:41'),
('B26', 'B73372024', 'F', 'BF1850', '0.74', 'AR1', 'KRR', 'AR', '1', '639002', '2020-12-12', '18', 'B', '', '3677007430', '19:44:06', 'N', '', '', 'ELECTRONIC ITEMS', 'FR-B73372024', '500', '', '1970-01-01', '2020-12-12', 'MF', 'B26', '', '2024', '192.168.1.', 'BOS0044', 'A', 'BL10809', '', '', 'N', '', '0.167', '0.74', '', '', '1607860617204', '2020-12-13 17:26:58'),
('B26', 'B75149417', 'F', 'BF1850', '0.02', 'AR1', 'RPT', 'AR', '1', '632513', '2020-12-12', '8.5', 'B', '', '', '20:57:55', 'D', '', '', '', 'OPF', '', '', '1970-01-01', '2020-12-12', 'MF', 'B26', '', '2204', '192.168.1.', 'BOS0163', 'A', 'BF1850', '', '', 'N', '', '', '0.02', '', '', '1607860617204', '2020-12-13 17:26:58'),
('B26', 'B75149450', 'F', 'BF1850', '1.84', 'AR1', 'HIA', 'AR', '1', '700157', '2020-12-12', '146', 'B', '', '3677007426', '17:47:11', 'N', '', '', 'ELECTRONIC ITEMS', 'FR-B75149450', '10', '', '1970-01-01', '2020-12-12', 'MF', 'B26', '', '1822', '192.168.1.', 'BOS0045', 'A', 'BF1850', '', '', 'N', '', '', '1.84', '', '', '1607860617204', '2020-12-13 17:26:58'),
('B26', 'B75149451', 'F', 'BF1850', '0.63', 'AR1', 'MUB', 'AR', '1', '583234', '2020-12-12', '13.75', 'B', '', '3677007427', '17:48:11', 'N', '', '', 'DRY FRUITS', 'FR-B75149451', '100', '', '1970-01-01', '2020-12-12', 'MF', 'B26', '', '1822', '192.168.1.', 'BOS0045', 'A', 'BF1850', '', '', 'N', '', '', '0.63', '', '', '1607860617204', '2020-12-13 17:26:58'),
('B26', 'B75149555', 'F', 'BF1850', '0.05', 'AR1', 'BLR', 'AR', '1', '560064', '2020-12-12', '4.25', 'B', '', '3677007425', '09:29:55', 'D', '', '', '', 'FR-B75149555', '0', '', '1970-01-01', '2020-12-12', 'MF', 'B26', '', '1233', '192.168.1.', 'BOS0163', 'A', 'BF1850', '', '', 'N', '', '', '0.05', '', '', '1607860617204', '2020-12-13 17:26:58'),
('B26', 'B75149556', 'F', 'BF1850', '0.05', 'AR1', 'BLR', 'AR', '1', '560094', '2020-12-12', '4.25', 'B', '', '3677007424', '09:27:44', 'D', '', '', '', 'FR-B75149556', '0', '', '1970-01-01', '2020-12-12', 'MF', 'B26', '', '1602', '192.168.1.', 'BOS0163', 'A', 'BF1850', '', '', 'N', '', '', '0.05', '', '', '1607860617204', '2020-12-13 17:26:58'),
('B26', 'B75149557', 'F', 'BF1850', '0.25', 'AR1', 'BLR', 'AR', '1', '560025', '2020-12-12', '4.25', 'B', '', '3677007330', '17:29:45', 'D', '', '', '', 'FR-B75149557', '0', '', '1970-01-01', '2020-12-12', 'BO', 'B07', '1.21768E+11', '1822', '10.20.1.70', 'PBL2405', 'A', 'BF1850', '9845091018', '', 'N', '', '', '0.25', '', '', '1607860617204', '2020-12-13 17:26:58'),
('B26', 'B75149558', 'F', 'BF1850', '0.25', 'AR1', 'BLR', 'AR', '1', '560032', '2020-12-12', '4.25', 'B', '', '3677007330', '17:29:45', 'D', '', '', '', 'FR-B75149558', '0', '', '1970-01-01', '2020-12-12', 'BO', 'B07', '1.21768E+11', '1822', '10.20.1.70', 'PBL2405', 'A', 'BF1850', '9845091018', '', 'N', '', '', '0.25', '', '', '1607860617204', '2020-12-13 17:26:58'),
('B26', 'B75149559', 'F', 'BF1850', '0.25', 'AR1', 'BLR', 'AR', '1', '560052', '2020-12-12', '4.25', 'B', '', '3677007330', '17:29:45', 'D', '', '', '', 'FR-B75149559', '0', '', '1970-01-01', '2020-12-12', 'BO', 'B07', '1.21768E+11', '1822', '10.20.1.70', 'PBL2405', 'A', 'BF1850', '9845091018', '', 'N', '', '', '0.25', '', '', '1607860617204', '2020-12-13 17:26:58'),
('B26', 'B75149560', 'F', 'BF1850', '0.25', 'AR1', 'BLR', 'AR', '1', '560008', '2020-12-12', '4.25', 'B', '', '3677007330', '17:29:45', 'D', '', '', '', 'FR-B75149560', '0', '', '1970-01-01', '2020-12-12', 'BO', 'B07', '1.21768E+11', '1822', '10.20.1.70', 'PBL2405', 'A', 'BF1850', '9845091018', '', 'N', '', '', '0.25', '', '', '1607860617204', '2020-12-13 17:26:58'),
('B26', 'B75149561', 'F', 'BF1850', '0.25', 'AR1', 'BLR', 'AR', '1', '560061', '2020-12-12', '4.25', 'B', '', '3677007330', '17:29:45', 'D', '', '', '', 'FR-B75149561', '0', '', '1970-01-01', '2020-12-12', 'BO', 'B07', '1.21768E+11', '1822', '10.20.1.70', 'PBL2405', 'A', 'BF1850', '9845091018', '', 'N', '', '', '0.25', '', '', '1607860617204', '2020-12-13 17:26:58'),
('B26', 'B75149562', 'F', 'BF1850', '0.25', 'AR1', 'BLR', 'AR', '1', '560072', '2020-12-12', '4.25', 'B', '', '3677007330', '17:29:45', 'D', '', '', '', 'FR-B75149562', '0', '', '1970-01-01', '2020-12-12', 'BO', 'B07', '1.21768E+11', '1822', '10.20.1.70', 'PBL2405', 'A', 'BF1850', '9845091018', '', 'N', '', '', '0.25', '', '', '1607860617204', '2020-12-13 17:26:58'),
('B26', 'B75149563', 'F', 'BF1850', '0.25', 'AR1', 'BLR', 'AR', '1', '560042', '2020-12-12', '4.25', 'B', '', '3677007330', '17:29:45', 'D', '', '', '', 'FR-B75149563', '0', '', '1970-01-01', '2020-12-12', 'BO', 'B07', '1.21768E+11', '1822', '10.20.1.70', 'PBL2405', 'A', 'BF1850', '9845091018', '', 'N', '', '', '0.25', '', '', '1607860617204', '2020-12-13 17:26:58'),
('B26', 'B75149564', 'F', 'BF1850', '0.13', 'AR1', 'UDP', 'AR', '1', '576104', '2020-12-12', '6.5', 'B', '', '3677007331', '17:44:15', 'D', '', '', '', 'FR-B75149564', '0', '', '1970-01-01', '2020-12-12', 'BO', 'B07', '1.21768E+11', '1822', '10.20.1.74', 'PS00773', 'A', 'BF1850', '9845091018', '', 'N', '', '', '0.13', '', '', '1607860617204', '2020-12-13 17:26:59'),
('B26', 'B75149565', 'F', 'BF1850', '0.266', 'AR1', 'MUM', 'AR', '1', '400013', '2020-12-12', '14', 'B', '', '3677007329', '17:08:24', 'D', '', '', '', 'FR-B75149565', '0', '', '1970-01-01', '2020-12-12', 'BO', 'B07', '1.21768E+11', '1822', '10.20.1.71', 'C13507', 'A', 'BF1850', '9845091018', '', 'N', '', '', '0.266', '', '', '1607860617204', '2020-12-13 17:26:59'),
('B26', 'B75149566', 'F', 'BF1850', '0.25', 'AR1', 'BLR', 'AR', '1', '560005', '2020-12-12', '4.25', 'B', '', '3677007330', '17:29:45', 'D', '', '', '', 'FR-B75149566', '0', '', '1970-01-01', '2020-12-12', 'BO', 'B07', '1.21768E+11', '1822', '10.20.1.70', 'PBL2405', 'A', 'BF1850', '9845091018', '', 'N', '', '', '0.25', '', '', '1607860617204', '2020-12-13 17:26:59'),
('B26', 'B75149993', 'F', 'BF1850', '0.76', 'AR1', 'HDP', 'AR', '1', '515201', '2020-12-12', '18', 'B', '', '3677007430', '19:44:06', 'N', '', '', 'ELECTRONIC ITEMS', 'FR-B75149993', '500', '', '1970-01-01', '2020-12-12', 'MF', 'B26', '', '2034', '192.168.1.', 'BOS0044', 'A', 'BF1850', '', '', 'N', '', '0.167', '0.76', '', '', '1607860617204', '2020-12-13 17:26:59'),
('B26', 'B75149994', 'F', 'BF1850', '1.31', 'AR1', 'GLB', 'AR', '1', '584129', '2020-12-12', '20.5', 'B', '', '3677007430', '19:44:05', 'N', '', '', 'ELECTRONIC ITEMS', 'FR-B75149994', '500', '', '1970-01-01', '2020-12-12', 'MF', 'B26', '', '2034', '192.168.1.', 'BOS0044', 'A', 'BF1850', '', '', 'N', '', '0.167', '1.31', '', '', '1607860617204', '2020-12-13 17:26:59'),
('B26', 'B75149996', 'F', 'BF1850', '0.02', 'AR1', 'PNQ', 'AR', '1', '411038', '2020-12-12', '14', 'B', '', '', '20:43:08', 'D', '', '', '', 'OPF', '', '', '1970-01-01', '2020-12-12', 'MF', 'B26', '', '2204', '192.168.1.', 'BOS0044', 'A', 'BF1850', '', '', 'N', '', '', '0.02', '', '', '1607860617204', '2020-12-13 17:26:59'),
('B26', 'B75150043', 'F', 'BF1850', '0.05', 'AR1', 'BLR', 'AR', '1', '562102', '2020-12-12', '4.25', 'B', '', '3677007425', '09:29:55', 'D', '', '', '', 'FR-B75150043', '0', '', '1970-01-01', '2020-12-12', 'MF', 'B26', '1.21766E+11', '1846', '192.168.1.', 'BOS0163', 'A', 'BF1850', '', '', 'N', '', '', '0.05', '', '', '1607860617204', '2020-12-13 17:26:59'),
('B26', 'B75150044', 'F', 'BF1850', '0.05', 'AR1', 'BLR', 'AR', '1', '560092', '2020-12-12', '4.25', 'B', '', '3677007423', '09:26:11', 'D', '', '', '', 'FR-B75150044', '0', '', '1970-01-01', '2020-12-12', 'MF', 'B26', '1.21766E+11', '1825', '192.168.1.', 'BOS0163', 'A', 'BF1850', '', '', 'N', '', '', '0.05', '', '', '1607860617204', '2020-12-13 17:26:59'),
('B26', 'B75150046', 'F', 'BF1850', '0.05', 'AR1', 'BLR', 'AR', '1', '560064', '2020-12-12', '4.25', 'B', '', '3677007424', '09:27:44', 'D', '', '', '', 'FR-B75150046', '0', '', '1970-01-01', '2020-12-12', 'MF', 'B26', '1.21766E+11', '1603', '192.168.1.', 'BOS0163', 'A', 'BF1850', '', '', 'N', '', '', '0.05', '', '', '1607860617204', '2020-12-13 17:27:00'),
('B26', 'B75150118', 'F', 'BF1850', '1.35', 'AR1', 'KKL', 'AR', '1', '574105', '2020-12-12', '20.5', 'B', '', '3677007430', '19:44:05', 'N', '', '', 'ELECTRONIC ITEMS', 'FR-B75150118', '500', '', '1970-01-01', '2020-12-12', 'MF', 'B26', '', '2034', '192.168.1.', 'BOS0044', 'A', 'BF1850', '', '', 'N', '', '0.167', '1.35', '', '', '1607860617204', '2020-12-13 17:27:00'),
('B26', 'B75150119', 'F', 'BF1850', '0.1', 'AR1', 'BLR', 'AR', '1', '560038', '2020-12-12', '4.25', 'B', '', '', '21:44:59', 'D', '', '', '', 'OPF', '', '', '1970-01-01', '2020-12-12', 'MF', 'B26', '', '2245', '192.168.1.', 'BOS0163', 'A', 'BF1850', '', '', 'N', '', '', '0.1', '', '', '1607860617204', '2020-12-13 17:27:00'),
('B26', 'B75151372', 'F', 'BF1850', '0.4', 'AR1', 'BLR', 'AR', '1', '560105', '2020-12-12', '6.5', 'B', '', '3677007430', '19:44:06', 'N', '', '', 'ELECTRONIC ITEMS', 'FR-B75151372', '1000', '', '1970-01-01', '2020-12-12', 'MF', 'B26', '', '2034', '192.168.1.', 'BOS0044', 'A', 'BF1850', '', '', 'N', '', '', '0.4', '', '', '1607860617204', '2020-12-13 17:27:00'),
('B26', 'B75151729', 'F', 'BF1850', '0.05', 'AR1', 'BLR', 'AR', '1', '560064', '2020-12-12', '4.25', 'B', '', '3677007425', '09:29:55', 'D', '', '', '', 'FR-B75151729', '0', '', '1970-01-01', '2020-12-12', 'MF', 'B26', '', '1233', '192.168.1.', 'BOS0163', 'A', 'BF1850', '', '', 'N', '', '', '0.05', '', '', '1607860617204', '2020-12-13 17:27:00'),
('B26', 'D61835819', 'F', 'BF1850', '50', 'AC1', 'JMD', 'AC', '2', '831005', '2020-12-12', '3250', 'B', '', '3677007428', '19:39:42', 'N', '', '', 'ELECTRONIC ITEMS', 'FR-D61835819', '500', '', '1970-01-01', '2020-12-12', 'MF', 'B26', '', '2017', '192.168.1.', 'BOS0044', 'A', 'BF1850', '', '', 'N', '', '2.666', '50', '', '', '1607860617204', '2020-12-13 17:27:00'),
('B26', 'D61835830', 'F', 'BF1850', '4.9', 'AC1', 'AGR', 'AC', '1', '282007', '2020-12-12', '340', 'B', '', '3677007429', '19:42:17', 'N', '', '', 'ELECTRONIC ITEMS', 'FR-D61835830', '500', '', '1970-01-01', '2020-12-12', 'MF', 'B26', '', '2017', '192.168.1.', 'BOS0044', 'A', 'BF1850', '', '', 'N', '', '4.9', '3.18', '', '', '1607860617204', '2020-12-13 17:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_book_type`
--

CREATE TABLE `haashtag_book_type` (
  `book_type_id` bigint(20) NOT NULL,
  `partner_code` varchar(15) NOT NULL,
  `name` varchar(150) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `entry_by` bigint(20) NOT NULL,
  `entry_date_time` datetime NOT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `update_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_book_type`
--

INSERT INTO `haashtag_book_type` (`book_type_id`, `partner_code`, `name`, `status`, `entry_by`, `entry_date_time`, `update_by`, `update_date_time`) VALUES
(1, 'DTDC', 'EPOD V1', '1', 0, '2020-09-20 12:38:00', NULL, '2020-09-20 12:40:25');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_city`
--

CREATE TABLE `haashtag_city` (
  `city_id` bigint(12) NOT NULL,
  `state_code` char(12) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `entry_by` bigint(20) NOT NULL,
  `entry_date_time` datetime NOT NULL,
  `update_by` bigint(20) NOT NULL,
  `update_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `haashtag_city`
--

INSERT INTO `haashtag_city` (`city_id`, `state_code`, `name`, `status`, `entry_by`, `entry_date_time`, `update_by`, `update_date_time`) VALUES
(1, 'KAR', 'Bangalore Edit', '1', 0, '2020-09-18 17:26:39', 0, '2020-09-18 17:35:42'),
(2, 'KER', '601254', '1', 0, '2020-09-18 18:16:19', 0, NULL),
(3, 'KAR', 'Mysore', '1', 0, '2020-09-18 19:21:11', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_communication_config`
--

CREATE TABLE `haashtag_communication_config` (
  `vendor_id` int(11) NOT NULL,
  `type` char(1) NOT NULL,
  `from_mail_name` varchar(100) DEFAULT NULL,
  `replay_to_mail` varchar(50) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `sms_type` varchar(20) DEFAULT NULL,
  `mail_type` varchar(20) DEFAULT NULL,
  `port` varchar(20) NOT NULL,
  `host` varchar(100) NOT NULL,
  `ssl_flag` varchar(20) NOT NULL DEFAULT '0',
  `sms_source` varchar(50) NOT NULL,
  `sms_provider` varchar(10) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_communication_log`
--

CREATE TABLE `haashtag_communication_log` (
  `log_id` bigint(20) NOT NULL,
  `type` char(1) NOT NULL,
  `message` longtext NOT NULL,
  `response` text NOT NULL,
  `to_detail` varchar(50) NOT NULL,
  `entry_date_time` datetime NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `is_sent` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_country`
--

CREATE TABLE `haashtag_country` (
  `country_code` char(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `code` char(2) DEFAULT NULL,
  `phone_code` varchar(10) NOT NULL,
  `type` varchar(1) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `entry_by` bigint(20) NOT NULL,
  `entry_date_time` datetime NOT NULL,
  `update_by` bigint(20) NOT NULL,
  `update_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `haashtag_country`
--

INSERT INTO `haashtag_country` (`country_code`, `name`, `code`, `phone_code`, `type`, `status`, `entry_by`, `entry_date_time`, `update_by`, `update_date_time`) VALUES
('ABW', 'Aruba', 'AW', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('AFG', 'Afghanistan', 'AF', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('AGO', 'Angola', 'AO', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('AIA', 'Anguilla', 'AI', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('ALA', 'Åland', 'AX', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('ALB', 'Albania', 'AL', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('AND', 'Andorra', 'AD', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('ARE', 'United Arab Emirates', 'AE', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('ARG', 'Argentina', 'AR', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('ARM', 'Armenia', 'AM', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('ASM', 'American Samoa', 'AS', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('ATA', 'Antarctica', 'AQ', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('ATF', 'French Southern Territories', 'TF', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('ATG', 'Antigua and Barbuda', 'AG', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('AUS', 'Australia', 'AU', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('AUT', 'Austria', 'AT', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('AZE', 'Azerbaijan', 'AZ', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('BDI', 'Burundi', 'BI', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('BEL', 'Belgium', 'BE', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('BEN', 'Benin', 'BJ', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('BES', 'Bonaire', 'BQ', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('BFA', 'Burkina Faso', 'BF', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('BGD', 'Bangladesh', 'BD', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('BGR', 'Bulgaria', 'BG', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('BHR', 'Bahrain', 'BH', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('BHS', 'Bahamas', 'BS', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('BIH', 'Bosnia and Herzegovina', 'BA', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('BLM', 'Saint Barthélemy', 'BL', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('BLR', 'Belarus', 'BY', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('BLZ', 'Belize', 'BZ', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('BMU', 'Bermuda', 'BM', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('BOL', 'Bolivia', 'BO', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('BRA', 'Brazil', 'BR', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('BRB', 'Barbados', 'BB', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('BRN', 'Brunei', 'BN', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('BTN', 'Bhutan', 'BT', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('BVT', 'Bouvet Island', 'BV', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('BWA', 'Botswana', 'BW', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('CAF', 'Central African Republic', 'CF', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('CAN', 'Canada', 'CA', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('CCK', 'Cocos [Keeling] Islands', 'CC', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('CHE', 'Switzerland', 'CH', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('CHL', 'Chile', 'CL', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('CHN', 'China', 'CN', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('CIV', 'Ivory Coast', 'CI', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('CMR', 'Cameroon', 'CM', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('COD', 'Democratic Republic of the Congo', 'CD', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('COG', 'Republic of the Congo', 'CG', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('COK', 'Cook Islands', 'CK', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('COL', 'Colombia', 'CO', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('COM', 'Comoros', 'KM', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('CPV', 'Cape Verde', 'CV', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('CRI', 'Costa Rica', 'CR', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('CUB', 'Cuba', 'CU', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('CUW', 'Curacao', 'CW', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('CXR', 'Christmas Island', 'CX', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('CYM', 'Cayman Islands', 'KY', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('CYP', 'Cyprus', 'CY', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('CZE', 'Czech Republic', 'CZ', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('DEU', 'Germany', 'DE', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('DJI', 'Djibouti', 'DJ', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('DMA', 'Dominica', 'DM', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('DNK', 'Denmark', 'DK', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('DOM', 'Dominican Republic', 'DO', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('DZA', 'Algeria', 'DZ', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('ECU', 'Ecuador', 'EC', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('EGY', 'Egypt', 'EG', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('ERI', 'Eritrea', 'ER', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('ESH', 'Western Sahara', 'EH', '', '', '1', 0, '0000-00-00 00:00:00', 0, '2020-09-18 15:18:48'),
('ESP', 'Spain', 'ES', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('EST', 'Estonia', 'EE', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('ETH', 'Ethiopia', 'ET', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('FIN', 'Finland', 'FI', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('FJI', 'Fiji', 'FJ', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('FLK', 'Falkland Islands', 'FK', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('FRA', 'France', 'FR', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('FRO', 'Faroe Islands', 'FO', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('FSM', 'Micronesia', 'FM', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('GAB', 'Gabon', 'GA', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('GBR', 'United Kingdom', 'GB', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('GEO', 'Georgia', 'GE', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('GGY', 'Guernsey', 'GG', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('GHA', 'Ghana', 'GH', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('GIB', 'Gibraltar', 'GI', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('GIN', 'Guinea', 'GN', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('GLP', 'Guadeloupe', 'GP', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('GMB', 'Gambia', 'GM', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('GNB', 'Guinea-Bissau', 'GW', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('GNQ', 'Equatorial Guinea', 'GQ', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('GRC', 'Greece', 'GR', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('GRD', 'Grenada', 'GD', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('GRL', 'Greenland', 'GL', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('GTM', 'Guatemala', 'GT', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('GUF', 'French Guiana', 'GF', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('GUM', 'Guam', 'GU', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('GUY', 'Guyana', 'GY', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('HKG', 'Hong Kong', 'HK', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('HMD', 'Heard Island and McDonald Islands', 'HM', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('HND', 'Honduras', 'HN', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('HRV', 'Croatia', 'HR', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('HTI', 'Haiti', 'HT', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('HUN', 'Hungary', 'HU', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('IDN', 'Indonesia', 'ID', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('IMN', 'Isle of Man', 'IM', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('IND', 'India', 'IN', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('IOT', 'British Indian Ocean Territory', 'IO', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('IRL', 'Ireland', 'IE', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('IRN', 'Iran', 'IR', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('IRQ', 'Iraq', 'IQ', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('ISL', 'Iceland', 'IS', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('ISR', 'Israel', 'IL', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('ITA', 'Italy', 'IT', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('JAM', 'Jamaica', 'JM', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('JEY', 'Jersey', 'JE', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('JIS', 'Jails', NULL, '12', '', '1', 0, '2020-09-18 16:31:59', 0, '2020-09-26 10:43:53'),
('JOR', 'Jordan', 'JO', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('JPN', 'Japan', 'JP', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('KAZ', 'Kazakhstan', 'KZ', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('KEN', 'Kenya', 'KE', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('KGZ', 'Kyrgyzstan', 'KG', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('KHM', 'Cambodia', 'KH', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('KIR', 'Kiribati', 'KI', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('KNA', 'Saint Kitts and Nevis', 'KN', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('KOR', 'South Korea', 'KR', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('KWT', 'Kuwait', 'KW', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('LAO', 'Laos', 'LA', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('LBN', 'Lebanon', 'LB', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('LBR', 'Liberia', 'LR', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('LBY', 'Libya', 'LY', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('LCA', 'Saint Lucia', 'LC', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('LIE', 'Liechtenstein', 'LI', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('LKA', 'Sri Lanka', 'LK', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('LSO', 'Lesotho', 'LS', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('LTU', 'Lithuania', 'LT', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('LUX', 'Luxembourg', 'LU', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('LVA', 'Latvia', 'LV', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MAC', 'Macao', 'MO', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MAD', 'MMMM', NULL, '82', '', '1', 0, '2020-09-18 16:37:52', 0, '2020-09-26 10:27:15'),
('MAF', 'Saint Martin', 'MF', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MAR', 'Morocco', 'MA', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MCO', 'Monaco', 'MC', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MDA', 'Moldova', 'MD', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MDG', 'Madagascar', 'MG', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MDV', 'Maldives', 'MV', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MEX', 'Mexico', 'MX', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MHL', 'Marshall Islands', 'MH', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MKD', 'Macedonia', 'MK', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MLI', 'Mali', 'ML', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MLT', 'Malta', 'MT', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MMR', 'Myanmar [Burma]', 'MM', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MNE', 'Montenegro', 'ME', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MNG', 'Mongolia', 'MN', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MNP', 'Northern Mariana Islands', 'MP', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MOZ', 'Mozambique', 'MZ', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MRT', 'Mauritania', 'MR', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MSR', 'Montserrat', 'MS', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MTQ', 'Martinique', 'MQ', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MUS', 'Mauritius', 'MU', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MWI', 'Malawi', 'MW', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MYS', 'Malaysia', 'MY', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('MYT', 'Mayotte', 'YT', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('NAM', 'Namibia', 'NA', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('NCL', 'New Caledonia', 'NC', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('NER', 'Niger', 'NE', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('NFK', 'Norfolk Island', 'NF', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('NGA', 'Nigeria', 'NG', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('NIC', 'Nicaragua', 'NI', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('NIU', 'Niue', 'NU', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('NLD', 'Netherlands', 'NL', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('NOR', 'Norway', 'NO', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('NPL', 'Nepal', 'NP', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('NRU', 'Nauru', 'NR', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('NZL', 'New Zealand', 'NZ', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('OMN', 'Oman', 'OM', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('PAK', 'Pakistan', 'PK', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('PAN', 'Panama', 'PA', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('PCN', 'Pitcairn Islands', 'PN', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('PER', 'Peru', 'PE', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('PHL', 'Philippines', 'PH', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('PLW', 'Palau', 'PW', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('PNG', 'Papua New Guinea', 'PG', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('POL', 'Poland', 'PL', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('PRI', 'Puerto Rico', 'PR', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('PRK', 'North Korea', 'KP', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('PRT', 'Portugal', 'PT', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('PRY', 'Paraguay', 'PY', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('PSE', 'Palestine', 'PS', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('PYF', 'French Polynesia', 'PF', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('QAT', 'Qatar', 'QA', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('REU', 'Réunion', 'RE', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('ROU', 'Romania', 'RO', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('RUS', 'Russia', 'RU', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('RWA', 'Rwanda', 'RW', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SAU', 'Saudi Arabia', 'SA', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SDN', 'Sudan', 'SD', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SEN', 'Senegal', 'SN', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SGP', 'Singapore', 'SG', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SGS', 'South Georgia and the South Sandwich Islands', 'GS', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SHN', 'Saint Helena', 'SH', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SJM', 'Svalbard and Jan Mayen', 'SJ', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SLB', 'Solomon Islands', 'SB', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SLE', 'Sierra Leone', 'SL', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SLV', 'El Salvador', 'SV', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SMR', 'San Marino', 'SM', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SOM', 'Somalia', 'SO', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SPM', 'Saint Pierre and Miquelon', 'PM', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SRB', 'Serbia', 'RS', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SSD', 'South Sudan', 'SS', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('STP', 'São Tomé and Príncipe', 'ST', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SUR', 'Suriname', 'SR', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SVK', 'Slovakia', 'SK', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SVN', 'Slovenia', 'SI', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SWE', 'Sweden', 'SE', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SWZ', 'Swaziland', 'SZ', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SXM', 'Sint Maarten', 'SX', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SYC', 'Seychelles', 'SC', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('SYR', 'Syria', 'SY', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('TCA', 'Turks and Caicos Islands', 'TC', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('TCD', 'Chad', 'TD', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('TGO', 'Togo', 'TG', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('THA', 'Thailand', 'TH', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('TJK', 'Tajikistan', 'TJ', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('TKL', 'Tokelau', 'TK', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('TKM', 'Turkmenistan', 'TM', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('TLS', 'East Timor', 'TL', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('TON', 'Tonga', 'TO', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('TTO', 'Trinidad and Tobago', 'TT', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('TUN', 'Tunisia', 'TN', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('TUR', 'Turkey', 'TR', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('TUV', 'Tuvalu', 'TV', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('TWN', 'Taiwan', 'TW', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('TZA', 'Tanzania', 'TZ', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('UGA', 'Uganda', 'UG', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('UKR', 'Ukraine', 'UA', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('UMI', 'U.S. Minor Outlying Islands', 'UM', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('URY', 'Uruguay', 'UY', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('USA', 'United States', 'US', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('UZB', 'Uzbekistan', 'UZ', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('VAT', 'Vatican City', 'VA', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('VCT', 'Saint Vincent and the Grenadines', 'VC', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('VEN', 'Venezuela', 'VE', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('VGB', 'British Virgin Islands', 'VG', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('VIR', 'U.S. Virgin Islands', 'VI', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('VNM', 'Vietnam', 'VN', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('VUT', 'Vanuatu', 'VU', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('WLF', 'Wallis and Futuna', 'WF', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('WSM', 'Samoa', 'WS', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('XKX', 'Kosovo', 'XK', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('YEM', 'Yemen', 'YE', '', '', '1', 0, '0000-00-00 00:00:00', 0, '2020-09-18 15:18:49'),
('ZAF', 'South Africa', 'ZA', '', '', '1', 0, '0000-00-00 00:00:00', 0, NULL),
('ZMB', 'Zambia', 'ZM', '', '', '1', 0, '0000-00-00 00:00:00', 0, '2020-09-18 15:18:50'),
('ZWE', 'Zimbabwe A', 'ZW', '', '', '1', 0, '0000-00-00 00:00:00', 0, '2020-09-18 16:40:06');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_customer`
--

CREATE TABLE `haashtag_customer` (
  `customer_id` bigint(20) NOT NULL,
  `customer_code` varchar(100) NOT NULL,
  `name` varchar(150) NOT NULL,
  `billing_name` varchar(150) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `active_from` date NOT NULL,
  `notes` text NOT NULL,
  `enable_gst` char(1) NOT NULL DEFAULT '0',
  `gst_no` varchar(50) NOT NULL,
  `pan_no` varchar(50) NOT NULL,
  `logo` varchar(80) NOT NULL,
  `entry_by` int(11) NOT NULL,
  `entry_date_time` datetime NOT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date_time` datetime DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_customer`
--

INSERT INTO `haashtag_customer` (`customer_id`, `customer_code`, `name`, `billing_name`, `phone_no`, `email_id`, `active_from`, `notes`, `enable_gst`, `gst_no`, `pan_no`, `logo`, `entry_by`, `entry_date_time`, `update_by`, `update_date_time`, `status`) VALUES
(1, 'MK5605', 'Shiva Krishna', 'Madhu Pvt Ltd.', '0123456789', 'test@test.com', '2020-10-29', 'Test Customer', '1', '356346', '5463456', '16017993605635.PNG', 0, '2020-10-04 13:46:00', NULL, '2020-10-07 12:20:15', '1');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_customer_address`
--

CREATE TABLE `haashtag_customer_address` (
  `customer_id` bigint(20) NOT NULL,
  `state_code` varchar(15) NOT NULL,
  `city_id` int(11) NOT NULL,
  `country_code` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `is_default` char(1) NOT NULL DEFAULT '0',
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_customer_address`
--

INSERT INTO `haashtag_customer_address` (`customer_id`, `state_code`, `city_id`, `country_code`, `address`, `pincode`, `is_default`, `sequence`) VALUES
(1, 'KAR', 1, 'IND', 'asdfasdf', '560010', '1', 0),
(1, 'KAR', 3, 'IND', 'fhjghjgfhjfgj', '560125', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_customer_bank`
--

CREATE TABLE `haashtag_customer_bank` (
  `sequence` int(11) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `bank` varchar(150) NOT NULL,
  `ifsc_code` varchar(50) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `is_default` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_customer_bank`
--

INSERT INTO `haashtag_customer_bank` (`sequence`, `customer_id`, `name`, `bank`, `ifsc_code`, `account_number`, `is_default`) VALUES
(0, 1, 'MD', 'Vijaya Bank', '456456', '467574574576', '1'),
(1, 1, 'SD', 'SBI', '5448210', '766476765456789087', '0');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_customer_contact`
--

CREATE TABLE `haashtag_customer_contact` (
  `sequence` int(11) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `is_default` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_customer_contact`
--

INSERT INTO `haashtag_customer_contact` (`sequence`, `customer_id`, `name`, `designation`, `email_id`, `mobile_no`, `is_default`) VALUES
(0, 1, 'Madhu', 'MD', 'md@asd.sdf', '1211212', '1'),
(1, 1, 'Praveen', 'SE', 's@sd.sd', '64756745746', '0');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_custom_fields`
--

CREATE TABLE `haashtag_custom_fields` (
  `field_id` bigint(20) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `input_type` varchar(50) NOT NULL,
  `name` varchar(100) CHARACTER SET utf16 NOT NULL,
  `section` char(1) NOT NULL,
  `required` char(1) NOT NULL DEFAULT '0',
  `maxlength` int(11) NOT NULL,
  `minlength` int(11) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `is_child` char(1) NOT NULL DEFAULT '0',
  `parent_option_id` text,
  `option_length` int(11) DEFAULT NULL,
  `description` text,
  `status` char(1) NOT NULL DEFAULT '1',
  `entry_date_time` datetime NOT NULL,
  `update_date_time` datetime DEFAULT NULL,
  `is_deleted` char(1) NOT NULL DEFAULT '0',
  `deleted_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_custom_field_option`
--

CREATE TABLE `haashtag_custom_field_option` (
  `option_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `option_value` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_document_type_master`
--

CREATE TABLE `haashtag_document_type_master` (
  `code` varchar(10) NOT NULL,
  `name` varchar(150) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_document_type_master`
--

INSERT INTO `haashtag_document_type_master` (`code`, `name`, `status`) VALUES
('DX', 'DOCUMENT', '1'),
('NX', 'NON DOCUMENT', '1');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_exceptions`
--

CREATE TABLE `haashtag_exceptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` longtext,
  `created_time` datetime DEFAULT NULL,
  `link` varchar(250) NOT NULL,
  `mail_sent` enum('1','0') NOT NULL DEFAULT '0',
  `mail_sent_date` datetime DEFAULT NULL,
  `severity` varchar(50) DEFAULT NULL,
  `line` int(11) DEFAULT NULL,
  `filepath` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `haashtag_exceptions`
--

INSERT INTO `haashtag_exceptions` (`id`, `message`, `created_time`, `link`, `mail_sent`, `mail_sent_date`, `severity`, `line`, `filepath`) VALUES
(1, '<p>The page you requested was not found.</p>', '2020-09-20 14:24:04', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(2, 'Undefined variable: vendorDetails', '2020-09-20 14:25:19', 'http://localhost:8081/haashtag/login/authenticate', '0', NULL, 'Notice', 175, 'controllers/Login.php'),
(3, '<p>The page you requested was not found.</p>', '2020-09-20 14:25:35', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(4, '<p>The page you requested was not found.</p>', '2020-09-20 14:25:35', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(5, '<p>The page you requested was not found.</p>', '2020-09-26 10:08:19', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(6, '<p>The page you requested was not found.</p>', '2020-09-26 10:08:32', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(7, '<p>The page you requested was not found.</p>', '2020-09-26 10:08:51', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(8, '<p>The page you requested was not found.</p>', '2020-09-26 10:14:42', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(9, '<p>The page you requested was not found.</p>', '2020-09-26 10:16:09', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(10, '<p>The page you requested was not found.</p>', '2020-09-26 10:16:35', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(11, 'SELECT *\nFROM `haashtag_country`\nWHERE `phone_code` = \'91\'\nAND `country_code` != \'MAD\'', '2020-09-26 10:26:37', 'http://localhost:8081/haashtag/master/saveCountry', '0', NULL, 'FATAL', 64, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(12, '<p>The page you requested was not found.</p>', '2020-09-26 10:29:26', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(13, '<p>The page you requested was not found.</p>', '2020-09-26 10:29:33', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(14, '<p>The page you requested was not found.</p>', '2020-09-26 10:29:33', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(15, '<p>The page you requested was not found.</p>', '2020-09-26 10:37:21', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(16, '<p>The page you requested was not found.</p>', '2020-09-26 10:37:21', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(17, '<p>The page you requested was not found.</p>', '2020-09-26 10:38:08', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(18, '<p>The page you requested was not found.</p>', '2020-09-26 10:38:08', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(19, '<p>The page you requested was not found.</p>', '2020-09-26 10:38:48', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(20, '<p>The page you requested was not found.</p>', '2020-09-26 10:38:48', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(21, '<p>The page you requested was not found.</p>', '2020-09-26 10:39:10', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(22, '<p>The page you requested was not found.</p>', '2020-09-26 10:39:11', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(23, '<p>The page you requested was not found.</p>', '2020-09-26 10:39:58', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(24, '<p>The page you requested was not found.</p>', '2020-09-26 10:39:58', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(25, '<p>The page you requested was not found.</p>', '2020-09-26 10:40:13', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(26, '<p>The page you requested was not found.</p>', '2020-09-26 10:40:13', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(27, '<p>The page you requested was not found.</p>', '2020-09-26 10:41:21', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(28, '<p>The page you requested was not found.</p>', '2020-09-26 10:41:21', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(29, '<p>The page you requested was not found.</p>', '2020-09-26 10:43:42', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(30, '<p>The page you requested was not found.</p>', '2020-09-26 10:45:45', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(31, '<p>The page you requested was not found.</p>', '2020-09-26 10:45:51', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(32, '<p>The page you requested was not found.</p>', '2020-09-26 10:48:46', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(33, '<p>The page you requested was not found.</p>', '2020-09-26 10:49:29', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(34, '<p>The page you requested was not found.</p>', '2020-09-26 10:49:39', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(35, '<p>The page you requested was not found.</p>', '2020-09-26 10:50:07', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(36, '<p>The page you requested was not found.</p>', '2020-09-26 10:50:07', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(37, '<p>The page you requested was not found.</p>', '2020-09-26 10:52:27', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(38, '<p>The page you requested was not found.</p>', '2020-09-26 10:52:27', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(39, '<p>The page you requested was not found.</p>', '2020-09-26 11:01:12', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(40, '<p>The page you requested was not found.</p>', '2020-09-26 11:01:12', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(41, '<p>The page you requested was not found.</p>', '2020-09-26 11:15:13', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(42, '<p>The page you requested was not found.</p>', '2020-09-26 11:17:02', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(43, '<p>The page you requested was not found.</p>', '2020-09-26 11:44:27', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(44, '<p>The page you requested was not found.</p>', '2020-09-26 11:45:19', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(45, '<p>The page you requested was not found.</p>', '2020-09-26 11:45:19', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(46, '<p>The page you requested was not found.</p>', '2020-09-26 11:48:48', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(47, '<p>The page you requested was not found.</p>', '2020-09-26 11:48:48', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(48, '<p>The page you requested was not found.</p>', '2020-09-26 11:52:09', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(49, '<p>The page you requested was not found.</p>', '2020-09-26 11:52:22', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(50, '<p>The page you requested was not found.</p>', '2020-09-26 11:52:26', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(51, '<p>The page you requested was not found.</p>', '2020-09-26 11:52:37', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(52, '<p>The page you requested was not found.</p>', '2020-09-26 11:54:22', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(53, '<p>The page you requested was not found.</p>', '2020-09-26 11:54:22', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(54, '<p>The page you requested was not found.</p>', '2020-09-26 11:55:10', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(55, '<p>The page you requested was not found.</p>', '2020-09-26 11:55:10', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(56, '<p>The page you requested was not found.</p>', '2020-09-26 11:55:46', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(57, '<p>The page you requested was not found.</p>', '2020-09-26 11:55:46', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(58, '<p>The page you requested was not found.</p>', '2020-09-26 11:56:30', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(59, '<p>The page you requested was not found.</p>', '2020-09-26 11:56:30', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(60, '<p>The page you requested was not found.</p>', '2020-09-26 11:57:46', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(61, '<p>The page you requested was not found.</p>', '2020-09-26 11:57:46', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(62, '<p>The page you requested was not found.</p>', '2020-09-26 11:59:00', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(63, '<p>The page you requested was not found.</p>', '2020-09-26 11:59:00', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(64, '<p>The page you requested was not found.</p>', '2020-09-26 12:00:08', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(65, '<p>The page you requested was not found.</p>', '2020-09-26 12:00:08', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(66, '<p>The page you requested was not found.</p>', '2020-09-26 12:09:20', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(67, '<p>The page you requested was not found.</p>', '2020-09-26 12:09:20', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(68, '<p>The page you requested was not found.</p>', '2020-09-26 12:10:48', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(69, '<p>The page you requested was not found.</p>', '2020-09-26 12:10:48', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(70, '<p>The page you requested was not found.</p>', '2020-09-26 12:11:32', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(71, '<p>The page you requested was not found.</p>', '2020-09-26 12:11:32', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(72, '<p>The page you requested was not found.</p>', '2020-09-26 12:12:07', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(73, '<p>The page you requested was not found.</p>', '2020-09-26 12:12:07', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(74, 'SELECT `state_id`, `name`\nFROM `haashtag_state`', '2020-09-26 12:12:23', 'http://localhost:8081/haashtag/rateCard/getMainLocationTypeOptions', '0', NULL, 'FATAL', 64, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(75, '<p>The page you requested was not found.</p>', '2020-09-26 12:14:47', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(76, '<p>The page you requested was not found.</p>', '2020-09-26 12:15:33', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(77, '<p>The page you requested was not found.</p>', '2020-09-26 12:15:33', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(78, '<p>The page you requested was not found.</p>', '2020-09-26 12:21:20', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(79, '<p>The page you requested was not found.</p>', '2020-09-26 12:21:20', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(80, '<p>The page you requested was not found.</p>', '2020-09-26 12:23:29', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(81, '<p>The page you requested was not found.</p>', '2020-09-26 12:23:29', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(82, '<p>The page you requested was not found.</p>', '2020-09-26 12:29:17', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(83, '<p>The page you requested was not found.</p>', '2020-09-26 12:29:18', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(84, '<p>The page you requested was not found.</p>', '2020-09-26 12:30:34', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(85, '<p>The page you requested was not found.</p>', '2020-09-26 12:30:34', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(86, '<p>The page you requested was not found.</p>', '2020-09-26 12:33:03', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(87, '<p>The page you requested was not found.</p>', '2020-09-26 12:33:03', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(88, '<p>The page you requested was not found.</p>', '2020-09-26 12:33:19', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(89, '<p>The page you requested was not found.</p>', '2020-09-26 12:33:19', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(90, '<p>The page you requested was not found.</p>', '2020-09-26 13:14:36', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(91, 'Unsupported operand types', '2020-09-26 13:17:35', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Error', 107, 'F:xampphtdocshaashtagapplicationviews\ratecardprice_view.php'),
(92, 'Unsupported operand types', '2020-09-26 13:17:35', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Error', 107, 'F:xampphtdocshaashtagapplicationviews\ratecardprice_view.php'),
(93, 'Unsupported operand types', '2020-09-26 13:17:37', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Error', 107, 'F:xampphtdocshaashtagapplicationviews\ratecardprice_view.php'),
(94, 'Unsupported operand types', '2020-09-26 13:17:37', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Error', 107, 'F:xampphtdocshaashtagapplicationviews\ratecardprice_view.php'),
(95, '<p>The page you requested was not found.</p>', '2020-09-26 13:17:42', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(96, 'Unsupported operand types', '2020-09-26 13:17:49', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Error', 107, 'F:xampphtdocshaashtagapplicationviews\ratecardprice_view.php'),
(97, 'Unsupported operand types', '2020-09-26 13:17:50', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Error', 107, 'F:xampphtdocshaashtagapplicationviews\ratecardprice_view.php'),
(98, '<p>The page you requested was not found.</p>', '2020-09-26 13:21:30', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(99, '<p>The page you requested was not found.</p>', '2020-09-26 13:23:38', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(100, '<p>The page you requested was not found.</p>', '2020-09-26 13:23:38', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(101, '<p>The page you requested was not found.</p>', '2020-09-26 13:25:39', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(102, '<p>The page you requested was not found.</p>', '2020-09-26 13:28:04', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(103, '<p>The page you requested was not found.</p>', '2020-09-26 13:28:04', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(104, '<p>The page you requested was not found.</p>', '2020-09-26 13:28:52', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(105, '<p>The page you requested was not found.</p>', '2020-09-26 13:28:52', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(106, '<p>The page you requested was not found.</p>', '2020-09-26 14:01:35', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(107, '<p>The page you requested was not found.</p>', '2020-09-26 14:49:33', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(108, '<p>The page you requested was not found.</p>', '2020-09-26 14:49:42', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(109, '<p>The page you requested was not found.</p>', '2020-09-26 14:49:48', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(110, '<p>The page you requested was not found.</p>', '2020-09-26 14:55:58', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(111, '<p>The page you requested was not found.</p>', '2020-09-26 14:56:12', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(112, '<p>The page you requested was not found.</p>', '2020-09-26 16:08:54', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(113, '<p>The page you requested was not found.</p>', '2020-09-27 08:34:59', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(114, '<p>The page you requested was not found.</p>', '2020-09-27 08:35:22', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(115, '<p>The page you requested was not found.</p>', '2020-09-27 08:35:32', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(116, '<p>The page you requested was not found.</p>', '2020-09-27 08:35:38', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(117, 'Too few arguments to function Customer::manage(), 0 passed in F:xampphtdocshaashtagsystemcoreCodeIgniter.php on line 532 and exactly 1 expected', '2020-09-27 08:51:22', 'http://localhost:8081/haashtag/customer/manage', '0', NULL, 'ArgumentCountError', 42, 'F:xampphtdocshaashtagapplicationcontrollersCustomer.php'),
(118, 'Undefined variable: country_option', '2020-09-27 08:52:07', 'http://localhost:8081/haashtag/customer/manage', '0', NULL, 'Notice', 205, 'customer/manage.php'),
(119, 'Undefined variable: state_option', '2020-09-27 08:52:07', 'http://localhost:8081/haashtag/customer/manage', '0', NULL, 'Notice', 212, 'customer/manage.php'),
(120, 'Undefined variable: city_option', '2020-09-27 08:52:07', 'http://localhost:8081/haashtag/customer/manage', '0', NULL, 'Notice', 218, 'customer/manage.php'),
(121, '<p>The page you requested was not found.</p>', '2020-09-27 08:52:08', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(122, '<p>The page you requested was not found.</p>', '2020-09-27 08:52:25', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(123, '<p>The page you requested was not found.</p>', '2020-09-27 08:53:15', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(124, '<p>The page you requested was not found.</p>', '2020-09-27 08:53:34', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(125, '<p>The page you requested was not found.</p>', '2020-09-27 08:54:22', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(126, '<p>The page you requested was not found.</p>', '2020-09-27 08:56:13', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(127, '<p>The page you requested was not found.</p>', '2020-09-27 08:56:31', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(128, '<p>The page you requested was not found.</p>', '2020-09-27 09:20:18', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(129, '<p>The page you requested was not found.</p>', '2020-09-27 09:22:49', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(130, '<p>The page you requested was not found.</p>', '2020-09-27 09:22:49', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(131, '<p>The page you requested was not found.</p>', '2020-09-27 09:23:37', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(132, '<p>The page you requested was not found.</p>', '2020-09-27 09:23:37', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(133, '<p>The page you requested was not found.</p>', '2020-09-27 09:24:08', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(134, '<p>The page you requested was not found.</p>', '2020-09-27 09:24:08', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(135, '<p>The page you requested was not found.</p>', '2020-09-27 09:26:02', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(136, '<p>The page you requested was not found.</p>', '2020-09-27 09:26:02', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(137, '<p>The page you requested was not found.</p>', '2020-09-27 09:26:59', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(138, '<p>The page you requested was not found.</p>', '2020-09-27 09:27:00', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(139, '<p>The page you requested was not found.</p>', '2020-09-27 09:28:45', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(140, '<p>The page you requested was not found.</p>', '2020-09-27 09:28:45', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(141, '<p>The page you requested was not found.</p>', '2020-09-27 09:30:28', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(142, '<p>The page you requested was not found.</p>', '2020-09-27 09:30:28', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(143, '<p>The page you requested was not found.</p>', '2020-09-27 09:36:39', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(144, '<p>The page you requested was not found.</p>', '2020-09-27 09:36:39', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(145, '<p>The page you requested was not found.</p>', '2020-09-27 09:38:10', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(146, '<p>The page you requested was not found.</p>', '2020-09-27 09:38:10', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(147, '<p>The page you requested was not found.</p>', '2020-09-27 09:39:18', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(148, '<p>The page you requested was not found.</p>', '2020-09-27 09:39:18', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(149, '<p>The page you requested was not found.</p>', '2020-09-27 09:42:54', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(150, '<p>The page you requested was not found.</p>', '2020-09-27 09:42:54', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(151, '<p>The page you requested was not found.</p>', '2020-09-27 09:45:05', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(152, '<p>The page you requested was not found.</p>', '2020-09-27 09:45:05', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(153, '<p>The page you requested was not found.</p>', '2020-09-27 09:46:17', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(154, '<p>The page you requested was not found.</p>', '2020-09-27 09:46:17', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(155, '<p>The page you requested was not found.</p>', '2020-09-27 09:48:19', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(156, '<p>The page you requested was not found.</p>', '2020-09-27 09:48:19', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(157, '<p>The page you requested was not found.</p>', '2020-10-03 10:05:32', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(158, '<p>The page you requested was not found.</p>', '2020-10-03 10:05:39', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(159, '<p>The page you requested was not found.</p>', '2020-10-03 10:05:52', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(160, '<p>The page you requested was not found.</p>', '2020-10-03 10:05:58', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(161, '<p>The page you requested was not found.</p>', '2020-10-03 10:25:02', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(162, '<p>The page you requested was not found.</p>', '2020-10-04 10:58:43', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(163, '<p>The page you requested was not found.</p>', '2020-10-04 11:08:17', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(164, '<p>The page you requested was not found.</p>', '2020-10-04 11:08:22', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(165, '<p>The page you requested was not found.</p>', '2020-10-04 11:08:27', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(166, '<p>The page you requested was not found.</p>', '2020-10-04 11:09:27', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(167, '<p>The page you requested was not found.</p>', '2020-10-04 11:10:35', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(168, '<p>The page you requested was not found.</p>', '2020-10-04 11:29:22', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(169, '<p>The page you requested was not found.</p>', '2020-10-04 11:29:23', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(170, '<p>The page you requested was not found.</p>', '2020-10-04 11:43:52', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(171, '<p>The page you requested was not found.</p>', '2020-10-04 12:15:54', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(172, '<p>The page you requested was not found.</p>', '2020-10-04 12:15:55', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(173, '<p>The page you requested was not found.</p>', '2020-10-04 12:17:23', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(174, '<p>The page you requested was not found.</p>', '2020-10-04 12:17:23', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(175, '<p>The page you requested was not found.</p>', '2020-10-04 12:17:48', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(176, '<p>The page you requested was not found.</p>', '2020-10-04 12:17:48', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(177, '<p>The page you requested was not found.</p>', '2020-10-04 12:18:36', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(178, '<p>The page you requested was not found.</p>', '2020-10-04 12:18:36', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(179, '<p>The page you requested was not found.</p>', '2020-10-04 12:18:55', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(180, '<p>The page you requested was not found.</p>', '2020-10-04 12:18:56', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(181, '<p>The page you requested was not found.</p>', '2020-10-04 12:19:11', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(182, '<p>The page you requested was not found.</p>', '2020-10-04 12:19:11', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(183, '<p>The page you requested was not found.</p>', '2020-10-04 12:19:25', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(184, '<p>The page you requested was not found.</p>', '2020-10-04 12:19:26', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(185, '<p>The page you requested was not found.</p>', '2020-10-04 12:21:18', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(186, '<p>The page you requested was not found.</p>', '2020-10-04 12:21:18', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(187, '<p>The page you requested was not found.</p>', '2020-10-04 12:21:32', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(188, '<p>The page you requested was not found.</p>', '2020-10-04 12:21:32', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(189, '<p>The page you requested was not found.</p>', '2020-10-04 12:21:45', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(190, '<p>The page you requested was not found.</p>', '2020-10-04 12:21:45', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(191, '<p>The page you requested was not found.</p>', '2020-10-04 12:21:58', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(192, '<p>The page you requested was not found.</p>', '2020-10-04 12:21:58', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(193, '<p>The page you requested was not found.</p>', '2020-10-04 12:26:03', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(194, '<p>The page you requested was not found.</p>', '2020-10-04 12:26:03', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(195, '<p>The page you requested was not found.</p>', '2020-10-04 12:35:20', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(196, '<p>The page you requested was not found.</p>', '2020-10-04 12:35:20', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(197, '<p>The page you requested was not found.</p>', '2020-10-04 12:37:56', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(198, '<p>The page you requested was not found.</p>', '2020-10-04 12:38:04', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(199, '<p>The page you requested was not found.</p>', '2020-10-04 12:40:48', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(200, '<p>The page you requested was not found.</p>', '2020-10-04 12:41:46', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(201, '<p>The page you requested was not found.</p>', '2020-10-04 12:41:59', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(202, '<p>The page you requested was not found.</p>', '2020-10-04 12:42:00', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(203, '<p>The page you requested was not found.</p>', '2020-10-04 12:42:46', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(204, '<p>The page you requested was not found.</p>', '2020-10-04 12:42:46', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(205, '<p>The page you requested was not found.</p>', '2020-10-04 12:43:20', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(206, '<p>The page you requested was not found.</p>', '2020-10-04 12:43:21', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(207, '<p>The page you requested was not found.</p>', '2020-10-04 12:44:01', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(208, '<p>The page you requested was not found.</p>', '2020-10-04 12:44:01', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(209, '<p>The page you requested was not found.</p>', '2020-10-04 12:44:37', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(210, '<p>The page you requested was not found.</p>', '2020-10-04 12:44:37', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(211, '<p>The page you requested was not found.</p>', '2020-10-04 12:45:26', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(212, '<p>The page you requested was not found.</p>', '2020-10-04 12:45:26', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(213, '<p>The page you requested was not found.</p>', '2020-10-04 12:47:38', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(214, '<p>The page you requested was not found.</p>', '2020-10-04 12:47:38', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(215, '<p>The page you requested was not found.</p>', '2020-10-04 12:48:18', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(216, '<p>The page you requested was not found.</p>', '2020-10-04 12:48:45', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(217, '<p>The page you requested was not found.</p>', '2020-10-04 12:48:45', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(218, '<p>The page you requested was not found.</p>', '2020-10-04 13:08:15', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(219, '<p>The page you requested was not found.</p>', '2020-10-04 13:08:15', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(220, '<p>The page you requested was not found.</p>', '2020-10-04 13:09:27', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(221, '<p>The page you requested was not found.</p>', '2020-10-04 13:09:28', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(222, '<p>The page you requested was not found.</p>', '2020-10-04 13:11:13', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(223, '<p>The page you requested was not found.</p>', '2020-10-04 13:11:13', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(224, '<p>The page you requested was not found.</p>', '2020-10-04 13:12:59', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(225, '<p>The page you requested was not found.</p>', '2020-10-04 13:12:59', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(226, '<p>The page you requested was not found.</p>', '2020-10-04 13:14:14', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(227, '<p>The page you requested was not found.</p>', '2020-10-04 13:14:14', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(228, '<p>The page you requested was not found.</p>', '2020-10-04 13:14:26', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(229, '<p>The page you requested was not found.</p>', '2020-10-04 13:14:26', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(230, '<p>The page you requested was not found.</p>', '2020-10-04 13:14:58', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(231, '<p>The page you requested was not found.</p>', '2020-10-04 13:14:58', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(232, '<p>The page you requested was not found.</p>', '2020-10-04 13:15:51', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(233, '<p>The page you requested was not found.</p>', '2020-10-04 13:15:52', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(234, '<p>The page you requested was not found.</p>', '2020-10-04 13:37:30', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(235, '<p>The page you requested was not found.</p>', '2020-10-04 13:37:30', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(236, 'INSERT INTO `haashtag_customer` (`name`, `customer_code`, `billing_name`, `phone_no`, `email_id`, `active_from`, `notes`, `enable_gst`, `logo`, `partner_code`, `entry_date_time`, `status`) VALUES (\'dg\', \'gfhj\', \'fgj\', \'1212122112\', \'hhfhjfh@sdfg.sf\', \'2020-10-07\', \'sfgsdgf\', \'0\', \'16017989392827.PNG\', NULL, \'2020-10-04 13:38:59\', \'1\')', '2020-10-04 13:38:59', 'http://localhost:8081/haashtag/customer/manageCustomer', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(237, 'Undefined variable: insertId', '2020-10-04 13:39:48', 'http://localhost:8081/haashtag/customer/manageCustomer', '0', NULL, 'Notice', 317, 'controllers/Customer.php'),
(238, 'DELETE FROM `haashtag_customer_contact`\nWHERE `customer_id` = \'1\'\nAND `asset_id` IS NULL', '2020-10-04 13:39:48', 'http://localhost:8081/haashtag/customer/manageCustomer', '0', NULL, 'FATAL', 107, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(239, 'Undefined variable: insertId', '2020-10-04 13:41:02', 'http://localhost:8081/haashtag/customer/manageCustomer', '0', NULL, 'Notice', 342, 'controllers/Customer.php'),
(240, 'DELETE FROM `haashtag_customer_address`\nWHERE `customer_id` = \'1\'\nAND `asset_id` IS NULL', '2020-10-04 13:41:02', 'http://localhost:8081/haashtag/customer/manageCustomer', '0', NULL, 'FATAL', 107, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(241, 'INSERT INTO `haashtag_customer_bank` (`name`, `bank`, `account_no`, `ifsc_code`, `customer_id`, `sequence`, `is_default`) VALUES (\'sdff\', \'sadff\', \'asdfasdff\', \'asdff\', 3, 0, \'1\')', '2020-10-04 13:41:41', 'http://localhost:8081/haashtag/customer/manageCustomer', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(242, '<p>The page you requested was not found.</p>', '2020-10-04 13:42:24', 'http://localhost:8081/haashtag/customer', '0', NULL, '404 Page Not Found', 0, ''),
(243, '<p>The page you requested was not found.</p>', '2020-10-04 13:42:47', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(244, '<p>The page you requested was not found.</p>', '2020-10-04 13:42:47', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(245, '<p>The page you requested was not found.</p>', '2020-10-04 13:43:51', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, '');
INSERT INTO `haashtag_exceptions` (`id`, `message`, `created_time`, `link`, `mail_sent`, `mail_sent_date`, `severity`, `line`, `filepath`) VALUES
(246, '<p>The page you requested was not found.</p>', '2020-10-04 13:43:51', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(247, '<p>The page you requested was not found.</p>', '2020-10-04 13:46:03', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(248, '<p>The page you requested was not found.</p>', '2020-10-04 13:46:16', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(249, 'Undefined index: country_code', '2020-10-04 13:47:44', 'http://localhost:8081/haashtag/customer/getCustomerList?_search=false&nd=1601799379423&rows=10&page=1&sidx=code&sord=desc', '0', NULL, 'Notice', 107, 'controllers/Customer.php'),
(250, 'Undefined index: country_code', '2020-10-04 13:47:44', 'http://localhost:8081/haashtag/customer/getCustomerList?_search=false&nd=1601799379423&rows=10&page=1&sidx=code&sord=desc', '0', NULL, 'Notice', 109, 'controllers/Customer.php'),
(251, '<p>The page you requested was not found.</p>', '2020-10-04 13:51:12', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(252, '<p>The page you requested was not found.</p>', '2020-10-04 13:51:12', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(253, '<p>The page you requested was not found.</p>', '2020-10-04 13:54:15', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(254, '<p>The page you requested was not found.</p>', '2020-10-04 13:54:15', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(255, '<p>The page you requested was not found.</p>', '2020-10-04 13:55:55', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(256, '<p>The page you requested was not found.</p>', '2020-10-04 13:55:55', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(257, '<p>The page you requested was not found.</p>', '2020-10-04 13:56:00', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(258, '<p>The page you requested was not found.</p>', '2020-10-04 13:56:00', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(259, '<p>The page you requested was not found.</p>', '2020-10-04 14:16:40', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(260, '<p>The page you requested was not found.</p>', '2020-10-04 14:19:04', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(261, '<p>The page you requested was not found.</p>', '2020-10-04 14:19:15', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(262, '<p>The page you requested was not found.</p>', '2020-10-04 14:20:35', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(263, '<p>The page you requested was not found.</p>', '2020-10-04 14:20:48', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(264, '<p>The page you requested was not found.</p>', '2020-10-04 14:21:01', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(265, '<p>The page you requested was not found.</p>', '2020-10-04 14:24:10', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(266, '<p>The page you requested was not found.</p>', '2020-10-04 14:24:34', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(267, '<p>The page you requested was not found.</p>', '2020-10-04 14:27:10', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(268, '<p>The page you requested was not found.</p>', '2020-10-04 14:27:32', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(269, '<p>The page you requested was not found.</p>', '2020-10-04 14:29:15', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(270, '<p>The page you requested was not found.</p>', '2020-10-04 14:30:49', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(271, '<p>The page you requested was not found.</p>', '2020-10-04 14:31:30', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(272, '<p>The page you requested was not found.</p>', '2020-10-04 14:32:04', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(273, '<p>The page you requested was not found.</p>', '2020-10-04 14:32:36', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(274, '<p>The page you requested was not found.</p>', '2020-10-04 14:35:36', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(275, '<p>The page you requested was not found.</p>', '2020-10-04 14:36:10', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(276, '<p>The page you requested was not found.</p>', '2020-10-04 14:36:18', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(277, '<p>The page you requested was not found.</p>', '2020-10-04 14:36:24', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(278, '<p>The page you requested was not found.</p>', '2020-10-04 14:36:38', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(279, '<p>The page you requested was not found.</p>', '2020-10-04 14:36:43', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(280, '<p>The page you requested was not found.</p>', '2020-10-04 14:36:53', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(281, '<p>The page you requested was not found.</p>', '2020-10-04 14:36:59', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(282, '<p>The page you requested was not found.</p>', '2020-10-04 14:37:08', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(283, '<p>The page you requested was not found.</p>', '2020-10-04 14:44:18', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(284, '<p>The page you requested was not found.</p>', '2020-10-04 14:44:23', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(285, '<p>The page you requested was not found.</p>', '2020-10-04 14:46:31', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(286, '<p>The page you requested was not found.</p>', '2020-10-04 14:50:55', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(287, '<p>The page you requested was not found.</p>', '2020-10-04 14:53:17', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(288, '<p>The page you requested was not found.</p>', '2020-10-04 14:53:35', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(289, '<p>The page you requested was not found.</p>', '2020-10-04 14:53:49', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(290, '<p>The page you requested was not found.</p>', '2020-10-04 14:54:06', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(291, '<p>The page you requested was not found.</p>', '2020-10-04 14:54:12', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(292, '<p>The page you requested was not found.</p>', '2020-10-04 14:54:42', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(293, '<p>The page you requested was not found.</p>', '2020-10-04 14:54:47', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(294, '<p>The page you requested was not found.</p>', '2020-10-04 14:56:09', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(295, '<p>The page you requested was not found.</p>', '2020-10-04 14:57:47', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(296, 'Call to undefined method CommanModel::getVendorList()', '2020-10-04 14:57:48', 'http://localhost:8081/haashtag/vendor/getVendorList?_search=false&nd=1601803668327&rows=10&page=1&sidx=name&sord=asc', '0', NULL, 'Error', 86, 'F:xampphtdocshaashtagapplicationcontrollersVendor.php'),
(297, 'Call to undefined function arry()', '2020-10-04 14:57:52', 'http://localhost:8081/haashtag/vendor/manage', '0', NULL, 'Error', 146, 'F:xampphtdocshaashtagapplicationviewsvendormanage.php'),
(298, '<p>The page you requested was not found.</p>', '2020-10-04 14:58:29', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(299, '<p>The page you requested was not found.</p>', '2020-10-04 15:01:58', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(300, '<p>The page you requested was not found.</p>', '2020-10-04 15:02:04', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(301, '<p>The page you requested was not found.</p>', '2020-10-04 15:03:34', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(302, '<p>The page you requested was not found.</p>', '2020-10-04 15:03:48', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(303, '<p>The page you requested was not found.</p>', '2020-10-04 15:14:14', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(304, 'Undefined variable: country_option', '2020-10-04 15:50:28', 'http://localhost:8081/haashtag/rateCard/manage', '0', NULL, 'Notice', 89, 'ratecard/manage.php'),
(305, '<p>The page you requested was not found.</p>', '2020-10-04 15:50:30', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(306, '<p>The page you requested was not found.</p>', '2020-10-04 15:51:05', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(307, '<p>The page you requested was not found.</p>', '2020-10-04 15:51:32', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(308, '<p>The page you requested was not found.</p>', '2020-10-04 15:51:41', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(309, '<p>The page you requested was not found.</p>', '2020-10-04 15:52:39', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(310, 'count(): Parameter must be an array or an object that implements Countable', '2020-10-04 15:55:55', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 108, 'ratecard/price_view.php'),
(311, 'count(): Parameter must be an array or an object that implements Countable', '2020-10-04 15:55:55', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 108, 'ratecard/price_view.php'),
(312, '<p>The page you requested was not found.</p>', '2020-10-04 17:02:17', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(313, '<p>The page you requested was not found.</p>', '2020-10-04 17:02:18', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(314, '<p>The page you requested was not found.</p>', '2020-10-04 17:02:32', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(315, '<p>The page you requested was not found.</p>', '2020-10-04 17:04:46', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(316, '<p>The page you requested was not found.</p>', '2020-10-04 17:07:56', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(317, '<p>The page you requested was not found.</p>', '2020-10-04 17:11:26', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(318, '<p>The page you requested was not found.</p>', '2020-10-04 17:11:26', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(319, '<p>The page you requested was not found.</p>', '2020-10-04 17:11:34', 'http://localhost:8081/haashtag/ajaxhandler/getServiceList', '0', NULL, '404 Page Not Found', 0, ''),
(320, '<p>The page you requested was not found.</p>', '2020-10-04 17:11:53', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(321, '<p>The page you requested was not found.</p>', '2020-10-04 17:11:53', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(322, 'SELECT `service_id`, `name`\nFROM `haashtag_partner`\nWHERE `partner_code` = \'DTDC\'\nORDER BY `name` ASC', '2020-10-04 17:11:57', 'http://localhost:8081/haashtag/ajaxhandler/getServiceListByPartner', '0', NULL, 'FATAL', 102, 'F:/xampp/htdocs/haashtag/application/controllers/Ajaxhandler.php'),
(323, '<p>The page you requested was not found.</p>', '2020-10-04 17:13:37', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(324, '<p>The page you requested was not found.</p>', '2020-10-04 17:13:37', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(325, '<p>The page you requested was not found.</p>', '2020-10-04 17:14:42', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(326, '<p>The page you requested was not found.</p>', '2020-10-04 17:14:56', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(327, '<p>The page you requested was not found.</p>', '2020-10-04 17:23:30', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(328, '<p>The page you requested was not found.</p>', '2020-10-04 17:23:35', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(329, '<p>The page you requested was not found.</p>', '2020-10-04 18:23:41', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(330, '<p>The page you requested was not found.</p>', '2020-10-04 18:52:52', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(331, '<p>The page you requested was not found.</p>', '2020-10-04 18:52:52', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(332, 'INSERT INTO `haashtag_rate_card` (`partner_code`, `service_id`, `doc_type`, `mode`, `rate_card_code`, `name`, `country_code`, `description`, `entry_by`, `entry_date_time`) VALUES (\'DTDC\', \'1\', \'DX\', \'AC\', \'Yfsd\', \'asdf\', \'IND\', \'asdasdasd\', \'1\', \'2020-10-04 18:55:04\')', '2020-10-04 18:55:04', 'http://localhost:8081/haashtag/rateCard/manageRateCard', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(333, 'INSERT INTO `haashtag_rate_card_location` (`rate_id`, `from_weight`, `to_weight`, `status`, `sequence`) VALUES (1, \'201\', \'300\', \'1\', 2)', '2020-10-04 18:56:12', 'http://localhost:8081/haashtag/rateCard/manageRateCard', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(334, 'INSERT INTO `haashtag_rate_card_location` (`location_type`, `details`, `status`, `sequence`) VALUES (\'L\', \'\', \'1\', 0)', '2020-10-04 18:57:00', 'http://localhost:8081/haashtag/rateCard/manageRateCard', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(335, '<p>The page you requested was not found.</p>', '2020-10-04 18:57:40', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(336, '<p>The page you requested was not found.</p>', '2020-10-04 18:57:40', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(337, '<p>The page you requested was not found.</p>', '2020-10-04 18:58:21', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(338, '<p>The page you requested was not found.</p>', '2020-10-04 19:03:38', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(339, '<p>The page you requested was not found.</p>', '2020-10-04 19:03:38', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(340, '<p>The page you requested was not found.</p>', '2020-10-05 08:59:10', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(341, '<p>The page you requested was not found.</p>', '2020-10-05 08:59:11', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(342, '<p>The page you requested was not found.</p>', '2020-10-05 08:59:17', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(343, '<p>The page you requested was not found.</p>', '2020-10-05 08:59:23', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(344, 'SELECT `name`\nFROM `haashtag_mode_master`\nWHERE `mode_code` = \'AC\'', '2020-10-05 09:04:31', 'http://localhost:8081/haashtag/rateCard/getRateCardList?_search=false&nd=1601868871053&rows=10&page=1&sidx=rate_card_code&sord=asc', '0', NULL, 'FATAL', 115, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(345, 'SELECT `name`\nFROM `haashtag_mode_master`\nWHERE `mode_code` = \'AC\'', '2020-10-05 09:04:32', 'http://localhost:8081/haashtag/rateCard/getRateCardList?_search=false&nd=1601868872243&rows=10&page=1&sidx=rate_card_code&sord=desc', '0', NULL, 'FATAL', 115, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(346, 'SELECT `name`\nFROM `haashtag_mode_master`\nWHERE `mode_code` = \'AC\'', '2020-10-05 09:04:33', 'http://localhost:8081/haashtag/rateCard/getRateCardList?_search=false&nd=1601868872852&rows=10&page=1&sidx=name&sord=asc', '0', NULL, 'FATAL', 115, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(347, '<p>The page you requested was not found.</p>', '2020-10-05 09:08:33', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(348, '<p>The page you requested was not found.</p>', '2020-10-05 09:09:11', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(349, '<p>The page you requested was not found.</p>', '2020-10-05 09:11:11', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(350, '<p>The page you requested was not found.</p>', '2020-10-05 09:13:43', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(351, 'Cannot use [] for reading', '2020-10-05 09:16:15', 'http://localhost:8081/haashtag/rateCard/manage/3', '0', NULL, 'Compile Error', 151, 'ratecard/manage.php'),
(352, '<p>The page you requested was not found.</p>', '2020-10-05 09:16:31', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(353, '<p>The page you requested was not found.</p>', '2020-10-05 09:18:34', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(354, '<p>The page you requested was not found.</p>', '2020-10-05 09:19:39', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(355, '<p>The page you requested was not found.</p>', '2020-10-05 09:19:44', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(356, '<p>The page you requested was not found.</p>', '2020-10-05 09:20:26', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(357, '<p>The page you requested was not found.</p>', '2020-10-05 09:25:07', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(358, '<p>The page you requested was not found.</p>', '2020-10-05 09:25:47', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(359, '<p>The page you requested was not found.</p>', '2020-10-05 09:28:30', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(360, '<p>The page you requested was not found.</p>', '2020-10-05 09:28:49', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(361, '<p>The page you requested was not found.</p>', '2020-10-05 09:29:55', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(362, '<p>The page you requested was not found.</p>', '2020-10-05 09:33:20', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(363, '<p>The page you requested was not found.</p>', '2020-10-05 09:36:44', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(364, '<p>The page you requested was not found.</p>', '2020-10-05 09:37:10', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(365, '<p>The page you requested was not found.</p>', '2020-10-05 09:37:15', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(366, '<p>The page you requested was not found.</p>', '2020-10-05 09:37:15', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(367, 'SELECT `price`\nFROM `haashtag_rate_card_priceq`\nWHERE `location_id` = \'1\'\nAND `weight_id` = \'1\'', '2020-10-05 09:37:16', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'FATAL', 115, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(368, '<p>The page you requested was not found.</p>', '2020-10-05 09:39:17', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(369, '<p>The page you requested was not found.</p>', '2020-10-05 09:39:17', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(370, '<p>The page you requested was not found.</p>', '2020-10-05 09:39:25', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(371, '<p>The page you requested was not found.</p>', '2020-10-05 09:39:25', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(372, '<p>The page you requested was not found.</p>', '2020-10-05 09:40:06', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(373, '<p>The page you requested was not found.</p>', '2020-10-05 09:41:57', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(374, '<p>The page you requested was not found.</p>', '2020-10-05 09:44:51', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(375, '<p>The page you requested was not found.</p>', '2020-10-07 08:30:33', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(376, '<p>The page you requested was not found.</p>', '2020-10-07 08:30:39', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(377, '<p>The page you requested was not found.</p>', '2020-10-07 08:30:47', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(378, '<p>The page you requested was not found.</p>', '2020-10-07 08:30:56', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(379, '<p>The page you requested was not found.</p>', '2020-10-07 08:32:49', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(380, '<p>The page you requested was not found.</p>', '2020-10-07 08:34:03', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(381, '<p>The page you requested was not found.</p>', '2020-10-07 08:34:13', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(382, '<p>The page you requested was not found.</p>', '2020-10-07 08:34:27', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(383, '<p>The page you requested was not found.</p>', '2020-10-07 08:34:36', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(384, '<p>The page you requested was not found.</p>', '2020-10-07 08:34:52', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(385, '<p>The page you requested was not found.</p>', '2020-10-07 08:35:01', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(386, '<p>The page you requested was not found.</p>', '2020-10-07 08:46:29', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(387, '<p>The page you requested was not found.</p>', '2020-10-07 08:49:01', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(388, 'UPDATE `haashtag_rate_card` SET `partner_code` = \'DTDC\', `service_id` = \'1\', `doc_type` = \'DX\', `mode` = \'AC\', `rate_card_code` = NULL, `name` = \'Rate Card ZA\', `country_code` = \'IND\', `description` = \'asdasdasd\', `update_by` = \'1\', `update_date_time` = \'2020-10-07 08:49:21\'\nWHERE `customer_id` = \'3\'', '2020-10-07 08:49:21', 'http://localhost:8081/haashtag/rateCard/manageRateCard', '0', NULL, 'FATAL', 74, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(389, '<p>The page you requested was not found.</p>', '2020-10-07 08:49:28', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(390, 'UPDATE `haashtag_rate_card` SET `partner_code` = \'DTDC\', `service_id` = \'1\', `doc_type` = \'DX\', `mode` = \'AC\', `rate_card_code` = NULL, `name` = \'Rate Card ZA\', `country_code` = \'IND\', `description` = \'asdasdasd\', `update_by` = \'1\', `update_date_time` = \'2020-10-07 08:49:42\'\nWHERE `customer_id` = \'3\'', '2020-10-07 08:49:42', 'http://localhost:8081/haashtag/rateCard/manageRateCard', '0', NULL, 'FATAL', 74, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(391, '<p>The page you requested was not found.</p>', '2020-10-07 08:50:57', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(392, '<p>The page you requested was not found.</p>', '2020-10-07 08:50:57', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(393, '<p>The page you requested was not found.</p>', '2020-10-07 08:51:05', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(394, '<p>The page you requested was not found.</p>', '2020-10-07 08:51:05', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(395, '<p>The page you requested was not found.</p>', '2020-10-07 08:52:36', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(396, '<p>The page you requested was not found.</p>', '2020-10-07 08:52:36', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(397, '<p>The page you requested was not found.</p>', '2020-10-07 08:57:33', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(398, '<p>The page you requested was not found.</p>', '2020-10-07 08:57:33', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(399, '<p>The page you requested was not found.</p>', '2020-10-07 08:59:08', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(400, '<p>The page you requested was not found.</p>', '2020-10-07 08:59:08', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(401, '<p>The page you requested was not found.</p>', '2020-10-07 08:59:14', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(402, '<p>The page you requested was not found.</p>', '2020-10-07 08:59:14', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(403, '<p>The page you requested was not found.</p>', '2020-10-07 09:02:54', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(404, '<p>The page you requested was not found.</p>', '2020-10-07 09:02:54', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(405, '<p>The page you requested was not found.</p>', '2020-10-07 09:03:01', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(406, '<p>The page you requested was not found.</p>', '2020-10-07 09:03:01', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(407, '<p>The page you requested was not found.</p>', '2020-10-07 09:04:10', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(408, '<p>The page you requested was not found.</p>', '2020-10-07 09:04:10', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(409, '<p>The page you requested was not found.</p>', '2020-10-07 09:06:05', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(410, '<p>The page you requested was not found.</p>', '2020-10-07 09:06:05', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(411, '<p>The page you requested was not found.</p>', '2020-10-07 09:06:10', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(412, '<p>The page you requested was not found.</p>', '2020-10-07 09:06:10', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(413, '<p>The page you requested was not found.</p>', '2020-10-07 09:06:35', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(414, '<p>The page you requested was not found.</p>', '2020-10-07 09:06:35', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(415, '<p>The page you requested was not found.</p>', '2020-10-07 09:06:38', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(416, '<p>The page you requested was not found.</p>', '2020-10-07 09:06:39', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(417, 'SELECT `price`\nFROM `haashtag_rate_card_price1`\nWHERE `rate_id` = \'3\'\nAND `additional_weight` = \'100.000\'\nAND `sequence` = \'24\'\nAND `sub_sequence` =0\nAND `is_additional` = \'1\'', '2020-10-07 09:11:50', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'FATAL', 115, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(418, 'SELECT `price`\nFROM `haashtag_rate_card_price1`\nWHERE `rate_id` = \'3\'\nAND `additional_weight` = \'100.000\'\nAND `sequence` = \'24\'\nAND `sub_sequence` =0\nAND `is_additional` = \'1\'', '2020-10-07 09:11:51', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'FATAL', 115, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(419, '<p>The page you requested was not found.</p>', '2020-10-07 09:13:08', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(420, '<p>The page you requested was not found.</p>', '2020-10-07 09:13:08', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(421, '<p>The page you requested was not found.</p>', '2020-10-07 09:13:14', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(422, '<p>The page you requested was not found.</p>', '2020-10-07 09:13:14', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(423, '<p>The page you requested was not found.</p>', '2020-10-07 09:14:42', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(424, '<p>The page you requested was not found.</p>', '2020-10-07 09:14:43', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(425, '<p>The page you requested was not found.</p>', '2020-10-07 09:15:02', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(426, '<p>The page you requested was not found.</p>', '2020-10-07 09:15:02', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(427, '<p>The page you requested was not found.</p>', '2020-10-07 09:19:27', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(428, '<p>The page you requested was not found.</p>', '2020-10-07 09:19:27', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(429, '<p>The page you requested was not found.</p>', '2020-10-07 09:19:29', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(430, '<p>The page you requested was not found.</p>', '2020-10-07 09:19:29', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(431, '<p>The page you requested was not found.</p>', '2020-10-07 09:19:47', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(432, '<p>The page you requested was not found.</p>', '2020-10-07 09:19:47', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(433, '<p>The page you requested was not found.</p>', '2020-10-07 09:19:51', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(434, '<p>The page you requested was not found.</p>', '2020-10-07 09:19:51', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(435, '<p>The page you requested was not found.</p>', '2020-10-07 09:22:55', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(436, '<p>The page you requested was not found.</p>', '2020-10-07 09:22:55', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(437, '<p>The page you requested was not found.</p>', '2020-10-07 09:23:19', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(438, '<p>The page you requested was not found.</p>', '2020-10-07 09:23:19', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(439, '<p>The page you requested was not found.</p>', '2020-10-07 09:23:21', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(440, '<p>The page you requested was not found.</p>', '2020-10-07 09:23:21', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(441, '<p>The page you requested was not found.</p>', '2020-10-07 09:28:08', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(442, '<p>The page you requested was not found.</p>', '2020-10-07 09:28:12', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(443, '<p>The page you requested was not found.</p>', '2020-10-07 09:28:33', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(444, '<p>The page you requested was not found.</p>', '2020-10-07 09:28:45', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(445, '<p>The page you requested was not found.</p>', '2020-10-07 09:28:46', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(446, '<p>The page you requested was not found.</p>', '2020-10-07 09:29:00', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(447, '<p>The page you requested was not found.</p>', '2020-10-07 09:29:09', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(448, '<p>The page you requested was not found.</p>', '2020-10-07 09:50:49', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(449, '<p>The page you requested was not found.</p>', '2020-10-07 09:51:13', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(450, '<p>The page you requested was not found.</p>', '2020-10-07 09:51:13', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(451, 'Invalid argument supplied for foreach()', '2020-10-07 09:51:17', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 25, 'ratecard/rate_card_view.php'),
(452, 'Invalid argument supplied for foreach()', '2020-10-07 09:51:17', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 69, 'ratecard/rate_card_view.php'),
(453, 'Invalid argument supplied for foreach()', '2020-10-07 09:51:17', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 108, 'ratecard/rate_card_view.php'),
(454, '<p>The page you requested was not found.</p>', '2020-10-07 09:52:03', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(455, '<p>The page you requested was not found.</p>', '2020-10-07 09:52:03', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(456, 'Invalid argument supplied for foreach()', '2020-10-07 09:52:07', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 25, 'ratecard/rate_card_view.php'),
(457, 'Invalid argument supplied for foreach()', '2020-10-07 09:52:08', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 69, 'ratecard/rate_card_view.php'),
(458, 'Invalid argument supplied for foreach()', '2020-10-07 09:52:08', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 108, 'ratecard/rate_card_view.php'),
(459, 'Undefined variable: partner_option', '2020-10-07 09:53:37', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 46, 'ratecard/rate_card_view.php'),
(460, 'Undefined variable: edit', '2020-10-07 09:53:37', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 46, 'ratecard/rate_card_view.php'),
(461, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:53:37', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(462, 'Undefined variable: service_option', '2020-10-07 09:53:37', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 54, 'ratecard/rate_card_view.php'),
(463, 'Undefined variable: edit', '2020-10-07 09:53:38', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 54, 'ratecard/rate_card_view.php'),
(464, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:53:38', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(465, 'Undefined variable: document_option', '2020-10-07 09:53:38', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 62, 'ratecard/rate_card_view.php'),
(466, 'Undefined variable: edit', '2020-10-07 09:53:38', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 62, 'ratecard/rate_card_view.php'),
(467, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:53:38', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(468, 'Undefined variable: mode_option', '2020-10-07 09:53:39', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 70, 'ratecard/rate_card_view.php'),
(469, 'Undefined variable: edit', '2020-10-07 09:53:39', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 70, 'ratecard/rate_card_view.php'),
(470, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:53:39', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(471, 'Undefined variable: edit', '2020-10-07 09:53:39', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 78, 'ratecard/rate_card_view.php'),
(472, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:53:39', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(473, 'Undefined variable: edit', '2020-10-07 09:53:39', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 81, 'ratecard/rate_card_view.php'),
(474, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:53:40', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(475, 'Undefined variable: edit', '2020-10-07 09:53:40', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 90, 'ratecard/rate_card_view.php'),
(476, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:53:40', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(477, 'Undefined variable: country_option', '2020-10-07 09:53:40', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 96, 'ratecard/rate_card_view.php'),
(478, 'Undefined variable: edit', '2020-10-07 09:53:40', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 96, 'ratecard/rate_card_view.php'),
(479, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:53:40', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(480, 'Undefined variable: edit', '2020-10-07 09:53:41', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 103, 'ratecard/rate_card_view.php'),
(481, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:53:41', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(482, 'Undefined variable: edit', '2020-10-07 09:53:41', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 394, 'ratecard/rate_card_view.php'),
(483, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:53:41', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(484, 'Undefined variable: edit', '2020-10-07 09:53:42', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 423, 'ratecard/rate_card_view.php'),
(485, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:53:42', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(486, 'Undefined variable: edit', '2020-10-07 09:53:42', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 484, 'ratecard/rate_card_view.php');
INSERT INTO `haashtag_exceptions` (`id`, `message`, `created_time`, `link`, `mail_sent`, `mail_sent_date`, `severity`, `line`, `filepath`) VALUES
(487, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:53:42', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(488, 'Undefined variable: edit', '2020-10-07 09:53:42', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 705, 'ratecard/rate_card_view.php'),
(489, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:53:42', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(490, 'Undefined variable: edit', '2020-10-07 09:53:43', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 780, 'ratecard/rate_card_view.php'),
(491, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:53:43', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(492, '<p>The page you requested was not found.</p>', '2020-10-07 09:54:21', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(493, '<p>The page you requested was not found.</p>', '2020-10-07 09:54:21', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(494, '<p>The page you requested was not found.</p>', '2020-10-07 09:54:24', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(495, 'Undefined variable: partner_option', '2020-10-07 09:54:28', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 46, 'ratecard/rate_card_view.php'),
(496, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:54:28', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(497, 'Undefined variable: service_option', '2020-10-07 09:54:29', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 54, 'ratecard/rate_card_view.php'),
(498, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:54:29', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(499, 'Undefined variable: document_option', '2020-10-07 09:54:29', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 62, 'ratecard/rate_card_view.php'),
(500, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:54:29', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(501, 'Undefined variable: mode_option', '2020-10-07 09:54:30', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 70, 'ratecard/rate_card_view.php'),
(502, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:54:30', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(503, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:54:30', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(504, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:54:30', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(505, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:54:30', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(506, 'Undefined variable: country_option', '2020-10-07 09:54:30', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 96, 'ratecard/rate_card_view.php'),
(507, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:54:31', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(508, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:54:31', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(509, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:54:31', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(510, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:54:31', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(511, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:54:31', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(512, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:54:32', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(513, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:54:32', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(514, 'Undefined variable: partner_option', '2020-10-07 09:55:12', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 46, 'ratecard/rate_card_view.php'),
(515, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:55:13', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(516, 'Undefined variable: service_option', '2020-10-07 09:55:13', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 54, 'ratecard/rate_card_view.php'),
(517, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:55:13', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(518, 'Undefined variable: document_option', '2020-10-07 09:55:14', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 62, 'ratecard/rate_card_view.php'),
(519, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:55:14', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(520, 'Undefined variable: mode_option', '2020-10-07 09:55:14', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 70, 'ratecard/rate_card_view.php'),
(521, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:55:14', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(522, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:55:14', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(523, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:55:15', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(524, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:55:15', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(525, 'Undefined variable: country_option', '2020-10-07 09:55:15', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 96, 'ratecard/rate_card_view.php'),
(526, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:55:15', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(527, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:55:15', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(528, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:55:15', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(529, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:55:15', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(530, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:55:16', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(531, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:55:16', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(532, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:55:16', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(533, '<p>The page you requested was not found.</p>', '2020-10-07 09:56:10', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(534, '<p>The page you requested was not found.</p>', '2020-10-07 09:56:10', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(535, 'Undefined variable: partner_option', '2020-10-07 09:56:16', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 46, 'ratecard/rate_card_view.php'),
(536, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:56:16', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(537, 'Undefined variable: service_option', '2020-10-07 09:56:17', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 54, 'ratecard/rate_card_view.php'),
(538, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:56:17', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(539, 'Undefined variable: document_option', '2020-10-07 09:56:17', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 62, 'ratecard/rate_card_view.php'),
(540, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:56:17', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(541, 'Undefined variable: mode_option', '2020-10-07 09:56:18', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 70, 'ratecard/rate_card_view.php'),
(542, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:56:18', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(543, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:56:18', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(544, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:56:18', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(545, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:56:18', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(546, 'Undefined variable: country_option', '2020-10-07 09:56:18', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 96, 'ratecard/rate_card_view.php'),
(547, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:56:19', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(548, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:56:19', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(549, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:56:20', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(550, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:56:20', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(551, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:56:20', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(552, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:56:20', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(553, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 09:56:20', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(554, '<p>The page you requested was not found.</p>', '2020-10-07 09:56:36', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(555, '<p>The page you requested was not found.</p>', '2020-10-07 09:56:36', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(556, 'Undefined variable: partner_option', '2020-10-07 09:56:41', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 46, 'ratecard/rate_card_view.php'),
(557, 'Undefined variable: service_option', '2020-10-07 09:56:42', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 54, 'ratecard/rate_card_view.php'),
(558, 'Undefined variable: document_option', '2020-10-07 09:56:42', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 62, 'ratecard/rate_card_view.php'),
(559, 'Undefined variable: mode_option', '2020-10-07 09:56:42', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 70, 'ratecard/rate_card_view.php'),
(560, 'Undefined variable: country_option', '2020-10-07 09:56:43', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 96, 'ratecard/rate_card_view.php'),
(561, 'SELECT `name`\nFROM `haashtag_service`\nWHERE `service_id` = \'1\'', '2020-10-07 09:59:32', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'FATAL', 115, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(562, '<p>The page you requested was not found.</p>', '2020-10-07 09:59:57', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(563, '<p>The page you requested was not found.</p>', '2020-10-07 09:59:57', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(564, 'Undefined index: document_type', '2020-10-07 10:00:03', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 62, 'ratecard/rate_card_view.php'),
(565, 'Undefined variable: country_option', '2020-10-07 10:00:03', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 96, 'ratecard/rate_card_view.php'),
(566, 'Undefined variable: country_option', '2020-10-07 10:00:27', 'http://localhost:8081/haashtag/rateCard/viewAjax', '0', NULL, 'Notice', 96, 'ratecard/rate_card_view.php'),
(567, '<p>The page you requested was not found.</p>', '2020-10-07 10:16:03', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(568, '<p>The page you requested was not found.</p>', '2020-10-07 12:19:17', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(569, '<p>The page you requested was not found.</p>', '2020-10-07 12:19:19', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(570, '<p>The page you requested was not found.</p>', '2020-10-07 12:19:19', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(571, '<p>The page you requested was not found.</p>', '2020-10-07 12:19:26', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(572, '<p>The page you requested was not found.</p>', '2020-10-07 12:19:26', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(573, '<p>The page you requested was not found.</p>', '2020-10-07 12:19:39', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(574, '<p>The page you requested was not found.</p>', '2020-10-07 12:19:39', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(575, '<p>The page you requested was not found.</p>', '2020-10-07 12:19:54', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(576, '<p>The page you requested was not found.</p>', '2020-10-07 12:19:54', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(577, '<p>The page you requested was not found.</p>', '2020-10-07 12:20:04', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(578, '<p>The page you requested was not found.</p>', '2020-10-07 12:20:10', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(579, '<p>The page you requested was not found.</p>', '2020-10-07 12:20:17', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(580, '<p>The page you requested was not found.</p>', '2020-10-07 12:21:28', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(581, '<p>The page you requested was not found.</p>', '2020-10-07 12:24:16', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(582, '<p>The page you requested was not found.</p>', '2020-10-07 12:24:16', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(583, 'Undefined variable: country_option', '2020-10-07 12:24:19', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Notice', 363, 'customer/ajax_view.php'),
(584, 'Undefined variable: country_option', '2020-10-07 12:24:19', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Notice', 363, 'customer/ajax_view.php'),
(585, '<p>The page you requested was not found.</p>', '2020-10-07 12:33:36', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(586, '<p>The page you requested was not found.</p>', '2020-10-07 12:33:53', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(587, '<p>The page you requested was not found.</p>', '2020-10-07 12:34:13', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(588, '<p>The page you requested was not found.</p>', '2020-10-07 12:34:28', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(589, '<p>The page you requested was not found.</p>', '2020-10-07 12:37:58', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(590, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:00', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(591, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:01', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(592, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:01', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(593, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:01', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(594, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:01', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(595, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:01', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(596, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:01', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(597, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:02', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(598, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:02', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(599, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:02', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(600, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:02', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(601, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:02', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(602, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:02', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(603, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:02', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(604, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:02', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(605, '<p>The page you requested was not found.</p>', '2020-10-07 12:38:06', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(606, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:55', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(607, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:55', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(608, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:55', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(609, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:55', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(610, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:56', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(611, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:56', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(612, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:56', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(613, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:56', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(614, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:56', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(615, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:56', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(616, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:57', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(617, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:57', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(618, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:57', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(619, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:57', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(620, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:38:57', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(621, '<p>The page you requested was not found.</p>', '2020-10-07 12:39:37', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(622, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:39:41', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(623, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:39:41', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(624, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:39:41', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(625, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:39:42', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(626, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:39:42', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(627, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:39:42', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(628, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:39:42', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(629, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:39:43', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(630, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:39:43', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(631, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:39:43', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(632, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:39:43', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(633, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:39:43', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(634, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:39:44', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(635, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:39:44', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(636, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:39:44', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(637, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:40:09', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(638, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:40:10', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(639, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:40:10', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(640, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:40:10', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(641, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:40:10', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(642, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:40:10', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(643, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:40:11', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(644, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:40:11', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(645, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:40:11', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(646, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:40:11', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(647, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:40:11', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(648, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:40:11', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(649, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:40:12', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(650, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:40:12', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(651, 'array_key_exists() expects parameter 2 to be array, null given', '2020-10-07 12:40:12', 'http://localhost:8081/haashtag/customer/viewAjax', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(652, '<p>The page you requested was not found.</p>', '2020-10-07 12:40:25', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(653, '<p>The page you requested was not found.</p>', '2020-10-07 12:40:25', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(654, '<p>The page you requested was not found.</p>', '2020-10-31 12:07:02', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(655, '<p>The page you requested was not found.</p>', '2020-10-31 12:07:12', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(656, '<p>The page you requested was not found.</p>', '2020-10-31 12:07:25', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(657, '<p>The page you requested was not found.</p>', '2020-10-31 12:07:35', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(658, '<p>The page you requested was not found.</p>', '2020-10-31 12:07:42', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(659, '<p>The page you requested was not found.</p>', '2020-10-31 12:08:46', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(660, '<p>The page you requested was not found.</p>', '2020-10-31 12:08:56', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(661, '<p>The page you requested was not found.</p>', '2020-10-31 12:09:03', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(662, '<p>The page you requested was not found.</p>', '2020-10-31 12:09:20', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(663, '<p>The page you requested was not found.</p>', '2020-10-31 12:09:26', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(664, '<p>The page you requested was not found.</p>', '2020-10-31 12:09:43', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(665, '<p>The page you requested was not found.</p>', '2020-11-03 17:39:00', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(666, '<p>The page you requested was not found.</p>', '2020-11-03 17:39:01', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(667, '<p>The page you requested was not found.</p>', '2020-11-03 17:39:08', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(668, '<p>The page you requested was not found.</p>', '2020-11-03 17:39:19', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(669, '<p>The page you requested was not found.</p>', '2020-11-03 17:39:26', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(670, '<p>The page you requested was not found.</p>', '2020-11-03 17:43:13', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(671, '<p>The page you requested was not found.</p>', '2020-11-03 17:45:14', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(672, '<p>The page you requested was not found.</p>', '2020-11-03 17:46:48', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(673, '<p>The page you requested was not found.</p>', '2020-11-03 17:46:53', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(674, '<p>The page you requested was not found.</p>', '2020-11-03 17:46:53', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(675, 'SELECT *\nFROM `haashtag_rate_card_colour`\nWHERE `rate_id` = \'3\'\nGROUP BY `sequence`\nORDER BY `sequence`', '2020-11-03 18:31:48', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'FATAL', 64, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(676, 'SELECT *\nFROM `haashtag_rate_card_colour`\nWHERE `rate_id` = \'3\'\nGROUP BY `sequence`\nORDER BY `sequence`', '2020-11-03 18:31:49', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'FATAL', 64, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(677, '<p>The page you requested was not found.</p>', '2020-11-03 22:58:22', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(678, '<p>The page you requested was not found.</p>', '2020-11-03 22:58:26', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(679, '<p>The page you requested was not found.</p>', '2020-11-03 22:58:30', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(680, '<p>The page you requested was not found.</p>', '2020-11-03 22:58:35', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(681, '<p>The page you requested was not found.</p>', '2020-11-03 22:59:00', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(682, '<p>The page you requested was not found.</p>', '2020-11-03 22:59:10', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(683, '<p>The page you requested was not found.</p>', '2020-11-03 23:00:21', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(684, '<p>The page you requested was not found.</p>', '2020-11-03 23:00:21', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(685, '<p>The page you requested was not found.</p>', '2020-11-03 23:00:33', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(686, '<p>The page you requested was not found.</p>', '2020-11-03 23:00:33', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(687, 'Array to string conversion', '2020-11-03 23:06:47', 'http://localhost:8081/haashtag/rateCard/manageRateCard', '0', NULL, 'Notice', 1524, 'database/DB_driver.php'),
(688, 'UPDATE `haashtag_rate_card` SET `partner_code` = \'DTDC\', `service_id` = \'1\', `doc_type` = Array, `mode` = \'AC\', `name` = \'Rate  BCard C\', `country_code` = \'IND\', `description` = \'asdasdasd\', `update_by` = \'1\', `update_date_time` = \'2020-11-03 23:06:47\'\nWHERE `rate_id` = \'2\'', '2020-11-03 23:06:48', 'http://localhost:8081/haashtag/rateCard/manageRateCard', '0', NULL, 'FATAL', 74, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(689, '<p>The page you requested was not found.</p>', '2020-11-03 23:06:52', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(690, 'Array to string conversion', '2020-11-03 23:07:06', 'http://localhost:8081/haashtag/rateCard/manageRateCard', '0', NULL, 'Notice', 1524, 'database/DB_driver.php'),
(691, 'UPDATE `haashtag_rate_card` SET `partner_code` = \'DTDC\', `service_id` = \'1\', `doc_type` = Array, `mode` = \'AC\', `name` = \'Rate  BCard C\', `country_code` = \'IND\', `description` = \'asdasdasd\', `update_by` = \'1\', `update_date_time` = \'2020-11-03 23:07:06\'\nWHERE `rate_id` = \'2\'', '2020-11-03 23:07:06', 'http://localhost:8081/haashtag/rateCard/manageRateCard', '0', NULL, 'FATAL', 74, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(692, 'INSERT INTO `haashtag_edit_colour` (`colour_code`, `rate_id`, `fsc`, `with_effetive_date`, `sequence`) VALUES (\'#fd6363\', \'2\', \'12\', \'2020-11-03\', 0)', '2020-11-03 23:08:56', 'http://localhost:8081/haashtag/rateCard/manageRateCard', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(693, 'INSERT INTO `haashtag_rate_card_price` (`weight_id`, `location_id`, `rate_id`, `colour_id`, `is_additional`, `sequence`, `price`) VALUES (\'4\', 15, \'2\', 1, \'0\', 0, NULL)', '2020-11-03 23:09:43', 'http://localhost:8081/haashtag/rateCard/manageRateCard', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(694, 'INSERT INTO `haashtag_rate_card_price` (`weight_id`, `location_id`, `rate_id`, `colour_id`, `is_additional`, `sequence`, `price`) VALUES (\'4\', 19, \'2\', 3, \'0\', 0, NULL)', '2020-11-03 23:11:27', 'http://localhost:8081/haashtag/rateCard/manageRateCard', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(695, 'INSERT INTO `haashtag_rate_card_price` (`weight_id`, `location_id`, `rate_id`, `colour_id`, `is_additional`, `sequence`, `price`) VALUES (\'4\', 23, \'2\', 5, \'0\', 0, NULL)', '2020-11-03 23:12:46', 'http://localhost:8081/haashtag/rateCard/manageRateCard', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(696, 'Invalid argument supplied for foreach()', '2020-11-03 23:14:52', 'http://localhost:8081/haashtag/rateCard/manageRateCard', '0', NULL, 'Warning', 251, 'controllers/RateCard.php'),
(697, 'Invalid argument supplied for foreach()', '2020-11-03 23:14:53', 'http://localhost:8081/haashtag/rateCard/manageRateCard', '0', NULL, 'Warning', 251, 'controllers/RateCard.php'),
(698, '<p>The page you requested was not found.</p>', '2020-11-03 23:15:42', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(699, '<p>The page you requested was not found.</p>', '2020-11-03 23:15:42', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(700, '<p>The page you requested was not found.</p>', '2020-11-03 23:15:52', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(701, '<p>The page you requested was not found.</p>', '2020-11-03 23:16:01', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(702, '<p>The page you requested was not found.</p>', '2020-11-03 23:16:01', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(703, 'Undefined variable: editLocation', '2020-11-03 23:18:17', 'http://localhost:8081/haashtag/rateCard/manageRateCard', '0', NULL, 'Notice', 189, 'controllers/RateCard.php'),
(704, 'Undefined variable: editLocation', '2020-11-03 23:18:17', 'http://localhost:8081/haashtag/rateCard/manageRateCard', '0', NULL, 'Notice', 189, 'controllers/RateCard.php'),
(705, 'INSERT INTO `haashtag_rate_card_price` (`weight_id`, `location_id`, `rate_id`, `colour_id`, `is_additional`, `sequence`, `price`) VALUES (\'4\', 43, \'2\', NULL, \'0\', 0, \'2\')', '2020-11-03 23:18:18', 'http://localhost:8081/haashtag/rateCard/manageRateCard', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(706, '<p>The page you requested was not found.</p>', '2020-11-03 23:18:57', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(707, '<p>The page you requested was not found.</p>', '2020-11-03 23:18:57', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(708, '<p>The page you requested was not found.</p>', '2020-11-03 23:19:01', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(709, '<p>The page you requested was not found.</p>', '2020-11-03 23:19:09', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(710, '<p>The page you requested was not found.</p>', '2020-11-03 23:19:09', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(711, '<p>The page you requested was not found.</p>', '2020-11-03 23:19:42', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(712, '<p>The page you requested was not found.</p>', '2020-11-03 23:19:42', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(713, '<p>The page you requested was not found.</p>', '2020-11-03 23:19:45', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(714, '<p>The page you requested was not found.</p>', '2020-11-03 23:22:30', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(715, '<p>The page you requested was not found.</p>', '2020-11-03 23:22:30', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(716, '<p>The page you requested was not found.</p>', '2020-11-03 23:22:34', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(717, '<p>The page you requested was not found.</p>', '2020-11-03 23:23:03', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(718, '<p>The page you requested was not found.</p>', '2020-11-03 23:32:24', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(719, '<p>The page you requested was not found.</p>', '2020-11-03 23:34:59', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(720, '<p>The page you requested was not found.</p>', '2020-11-03 23:35:28', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(721, '<p>The page you requested was not found.</p>', '2020-11-03 23:35:28', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(722, '<p>The page you requested was not found.</p>', '2020-11-03 23:35:30', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(723, '<p>The page you requested was not found.</p>', '2020-11-03 23:35:30', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(724, '<p>The page you requested was not found.</p>', '2020-11-03 23:36:06', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(725, '<p>The page you requested was not found.</p>', '2020-11-03 23:36:06', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(726, '<p>The page you requested was not found.</p>', '2020-11-03 23:36:08', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(727, 'INSERT INTO `haashtag_rate_card_price` (`weight_id`, `location_id`, `rate_id`, `colour_id`, `is_additional`, `sequence`, `price`) VALUES (\'7\', \'1\', \'3\', \'15\', \'0\', 0, NULL)', '2020-11-03 23:42:06', 'http://localhost:8081/haashtag/rateCard/manageRateCard', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(728, '<p>The page you requested was not found.</p>', '2020-11-03 23:42:14', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(729, '<p>The page you requested was not found.</p>', '2020-11-03 23:42:17', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, '');
INSERT INTO `haashtag_exceptions` (`id`, `message`, `created_time`, `link`, `mail_sent`, `mail_sent_date`, `severity`, `line`, `filepath`) VALUES
(730, '<p>The page you requested was not found.</p>', '2020-11-03 23:42:17', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(731, '<p>The page you requested was not found.</p>', '2020-11-03 23:42:31', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(732, '<p>The page you requested was not found.</p>', '2020-11-03 23:42:31', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(733, '<p>The page you requested was not found.</p>', '2020-11-03 23:42:46', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(734, '<p>The page you requested was not found.</p>', '2020-11-03 23:42:46', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(735, '<p>The page you requested was not found.</p>', '2020-11-03 23:43:06', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(736, '<p>The page you requested was not found.</p>', '2020-11-03 23:43:06', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(737, '<p>The page you requested was not found.</p>', '2020-11-03 23:43:32', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(738, '<p>The page you requested was not found.</p>', '2020-11-03 23:43:32', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(739, '<p>The page you requested was not found.</p>', '2020-11-08 13:46:42', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(740, '<p>The page you requested was not found.</p>', '2020-11-08 13:46:50', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(741, '<p>The page you requested was not found.</p>', '2020-12-08 19:58:29', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(742, '<p>The page you requested was not found.</p>', '2020-12-08 19:58:48', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(743, '<p>The page you requested was not found.</p>', '2020-12-08 19:58:56', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(744, '<p>The page you requested was not found.</p>', '2020-12-08 19:59:06', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(745, '<p>The page you requested was not found.</p>', '2020-12-08 20:08:27', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(746, 'Undefined variable: main_type_details', '2020-12-08 20:08:33', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 4, 'ratecard/price_view.php'),
(747, 'Undefined variable: ksu', '2020-12-08 20:08:33', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 4, 'ratecard/price_view.php'),
(748, 'Undefined offset: 1', '2020-12-08 20:08:33', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 7, 'ratecard/price_view.php'),
(749, 'Undefined variable: mt', '2020-12-08 20:08:33', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 22, 'ratecard/price_view.php'),
(750, 'Undefined variable: mt', '2020-12-08 20:08:33', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 24, 'ratecard/price_view.php'),
(751, 'Undefined variable: mt', '2020-12-08 20:08:33', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 26, 'ratecard/price_view.php'),
(752, 'Undefined variable: mt', '2020-12-08 20:08:33', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 28, 'ratecard/price_view.php'),
(753, 'Undefined variable: main_type_details', '2020-12-08 20:08:34', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 4, 'ratecard/price_view.php'),
(754, 'Undefined variable: ksu', '2020-12-08 20:08:34', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 4, 'ratecard/price_view.php'),
(755, 'Undefined offset: 1', '2020-12-08 20:08:34', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 7, 'ratecard/price_view.php'),
(756, 'Undefined variable: mt', '2020-12-08 20:08:34', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 22, 'ratecard/price_view.php'),
(757, 'Undefined variable: mt', '2020-12-08 20:08:34', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 24, 'ratecard/price_view.php'),
(758, 'Undefined variable: mt', '2020-12-08 20:08:34', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 26, 'ratecard/price_view.php'),
(759, 'Undefined variable: mt', '2020-12-08 20:08:34', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 28, 'ratecard/price_view.php'),
(760, 'Undefined variable: mt', '2020-12-08 20:09:37', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 35, 'ratecard/price_view.php'),
(761, 'Undefined variable: mt', '2020-12-08 20:09:37', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 37, 'ratecard/price_view.php'),
(762, 'Undefined variable: mt', '2020-12-08 20:09:37', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 39, 'ratecard/price_view.php'),
(763, 'Undefined variable: mt', '2020-12-08 20:09:37', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 41, 'ratecard/price_view.php'),
(764, 'Undefined variable: mt', '2020-12-08 20:09:37', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 35, 'ratecard/price_view.php'),
(765, 'Undefined variable: mt', '2020-12-08 20:09:37', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 37, 'ratecard/price_view.php'),
(766, 'Undefined variable: mt', '2020-12-08 20:09:38', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 39, 'ratecard/price_view.php'),
(767, 'Undefined variable: mt', '2020-12-08 20:09:38', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 41, 'ratecard/price_view.php'),
(768, 'explode() expects parameter 2 to be string, array given', '2020-12-08 20:12:05', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 18, 'ratecard/price_view.php'),
(769, 'explode() expects parameter 2 to be string, array given', '2020-12-08 20:12:05', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 18, 'ratecard/price_view.php'),
(770, 'explode() expects parameter 2 to be string, array given', '2020-12-08 20:12:05', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 18, 'ratecard/price_view.php'),
(771, 'explode() expects parameter 2 to be string, array given', '2020-12-08 20:12:06', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 18, 'ratecard/price_view.php'),
(772, 'explode() expects parameter 2 to be string, array given', '2020-12-08 20:12:06', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 18, 'ratecard/price_view.php'),
(773, 'explode() expects parameter 2 to be string, array given', '2020-12-08 20:12:06', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 18, 'ratecard/price_view.php'),
(774, 'syntax error, unexpected end of file', '2020-12-08 20:17:01', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'ParseError', 84, 'F:xampphtdocshaashtagapplicationviews\ratecardprice_view.php'),
(775, 'syntax error, unexpected end of file', '2020-12-08 20:17:01', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'ParseError', 84, 'F:xampphtdocshaashtagapplicationviews\ratecardprice_view.php'),
(776, 'syntax error, unexpected end of file', '2020-12-08 20:22:07', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'ParseError', 112, 'F:xampphtdocshaashtagapplicationviews\ratecardprice_view.php'),
(777, 'syntax error, unexpected end of file', '2020-12-08 20:22:08', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'ParseError', 112, 'F:xampphtdocshaashtagapplicationviews\ratecardprice_view.php'),
(778, 'Undefined variable: no_of_colours', '2020-12-08 20:22:23', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 8, 'ratecard/price_view.php'),
(779, 'Undefined variable: from_weight', '2020-12-08 20:22:23', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 18, 'ratecard/price_view.php'),
(780, 'Invalid argument supplied for foreach()', '2020-12-08 20:22:23', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 18, 'ratecard/price_view.php'),
(781, 'Undefined variable: no_of_colours', '2020-12-08 20:22:23', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 8, 'ratecard/price_view.php'),
(782, 'Undefined variable: from_weight', '2020-12-08 20:22:24', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 18, 'ratecard/price_view.php'),
(783, 'Invalid argument supplied for foreach()', '2020-12-08 20:22:24', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 18, 'ratecard/price_view.php'),
(784, 'Undefined variable: editCol', '2020-12-08 20:30:39', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(785, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:39', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(786, 'Undefined variable: editCol', '2020-12-08 20:30:39', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(787, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:39', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(788, 'Undefined variable: editCol', '2020-12-08 20:30:39', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(789, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:40', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(790, 'Undefined variable: editCol', '2020-12-08 20:30:40', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(791, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:40', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(792, 'Undefined variable: editCol', '2020-12-08 20:30:40', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(793, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:40', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(794, 'Undefined variable: editCol', '2020-12-08 20:30:40', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(795, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:40', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(796, 'Undefined variable: editCol', '2020-12-08 20:30:41', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(797, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:41', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(798, 'Undefined variable: editCol', '2020-12-08 20:30:41', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(799, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:41', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(800, 'Undefined variable: editCol', '2020-12-08 20:30:41', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(801, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:41', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(802, 'Undefined variable: editCol', '2020-12-08 20:30:41', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(803, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:41', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(804, 'Undefined variable: editCol', '2020-12-08 20:30:41', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(805, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:42', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(806, 'Undefined variable: editCol', '2020-12-08 20:30:42', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(807, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:42', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(808, 'Undefined variable: editCol', '2020-12-08 20:30:42', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(809, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:42', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(810, 'Undefined variable: editCol', '2020-12-08 20:30:42', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(811, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:42', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(812, 'Undefined variable: editCol', '2020-12-08 20:30:42', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(813, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:43', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(814, 'Undefined variable: editCol', '2020-12-08 20:30:43', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(815, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:43', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(816, 'Undefined variable: editCol', '2020-12-08 20:30:43', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(817, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:43', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(818, 'Undefined variable: editCol', '2020-12-08 20:30:43', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(819, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:43', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(820, 'Undefined variable: editCol', '2020-12-08 20:30:43', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(821, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:44', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(822, 'Undefined variable: editCol', '2020-12-08 20:30:44', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(823, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:44', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(824, 'Undefined variable: editCol', '2020-12-08 20:30:44', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(825, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:44', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(826, 'Undefined variable: editCol', '2020-12-08 20:30:44', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(827, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:44', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(828, 'Undefined variable: editCol', '2020-12-08 20:30:44', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(829, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:44', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(830, 'Undefined variable: editCol', '2020-12-08 20:30:45', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(831, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:45', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(832, 'Undefined variable: editCol', '2020-12-08 20:30:45', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(833, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:45', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(834, 'Undefined variable: editCol', '2020-12-08 20:30:45', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(835, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:45', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(836, '<p>The page you requested was not found.</p>', '2020-12-08 20:30:45', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(837, 'Undefined variable: editCol', '2020-12-08 20:30:45', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(838, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:45', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(839, 'Undefined variable: editCol', '2020-12-08 20:30:46', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(840, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:46', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(841, 'Undefined variable: editCol', '2020-12-08 20:30:46', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(842, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:46', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(843, 'Undefined variable: editCol', '2020-12-08 20:30:46', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(844, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:46', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(845, 'Undefined variable: editCol', '2020-12-08 20:30:46', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(846, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:46', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(847, 'Undefined variable: editCol', '2020-12-08 20:30:46', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(848, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:46', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(849, 'Undefined variable: editCol', '2020-12-08 20:30:47', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(850, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:47', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(851, 'Undefined variable: editCol', '2020-12-08 20:30:47', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(852, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:47', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(853, 'Undefined variable: editCol', '2020-12-08 20:30:47', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(854, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:47', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(855, 'Undefined variable: editCol', '2020-12-08 20:30:47', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(856, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:47', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(857, 'Undefined variable: editCol', '2020-12-08 20:30:47', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(858, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:48', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(859, 'Undefined variable: editCol', '2020-12-08 20:30:48', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(860, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:48', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(861, 'Undefined variable: editCol', '2020-12-08 20:30:48', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(862, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:48', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(863, 'Undefined variable: editCol', '2020-12-08 20:30:48', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(864, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:48', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(865, 'Undefined variable: editCol', '2020-12-08 20:30:48', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(866, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:48', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(867, 'Undefined variable: editCol', '2020-12-08 20:30:49', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(868, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:49', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(869, 'Undefined variable: editCol', '2020-12-08 20:30:49', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(870, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:49', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(871, 'Undefined variable: editCol', '2020-12-08 20:30:49', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(872, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:49', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(873, 'Undefined variable: editCol', '2020-12-08 20:30:49', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(874, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:49', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(875, 'Undefined variable: editCol', '2020-12-08 20:30:49', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(876, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:49', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(877, 'Undefined variable: editCol', '2020-12-08 20:30:50', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(878, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:50', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(879, 'Undefined variable: editCol', '2020-12-08 20:30:50', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(880, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:50', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(881, 'Undefined variable: editCol', '2020-12-08 20:30:50', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(882, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:50', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(883, 'Undefined variable: editCol', '2020-12-08 20:30:50', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(884, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:50', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(885, 'Undefined variable: editCol', '2020-12-08 20:30:51', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(886, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:51', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(887, 'Undefined variable: editCol', '2020-12-08 20:30:51', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(888, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:51', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(889, 'Undefined variable: editCol', '2020-12-08 20:30:51', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(890, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:51', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(891, 'Undefined variable: editCol', '2020-12-08 20:30:51', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(892, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:51', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(893, 'Undefined variable: editCol', '2020-12-08 20:30:51', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(894, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:52', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(895, 'Undefined variable: editCol', '2020-12-08 20:30:52', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(896, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:52', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(897, 'Undefined variable: editCol', '2020-12-08 20:30:52', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(898, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:52', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(899, 'Undefined variable: editCol', '2020-12-08 20:30:52', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(900, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:53', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(901, 'Undefined variable: editCol', '2020-12-08 20:30:53', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(902, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:53', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(903, 'Undefined variable: editCol', '2020-12-08 20:30:53', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(904, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:53', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(905, 'Undefined variable: editCol', '2020-12-08 20:30:53', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(906, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:53', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(907, 'Undefined variable: editCol', '2020-12-08 20:30:53', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(908, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:53', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(909, 'Undefined variable: editCol', '2020-12-08 20:30:53', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(910, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:54', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(911, 'Undefined variable: editCol', '2020-12-08 20:30:54', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(912, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:54', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(913, 'Undefined variable: editCol', '2020-12-08 20:30:54', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(914, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:54', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(915, 'Undefined variable: editCol', '2020-12-08 20:30:54', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(916, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:54', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(917, 'Undefined variable: editCol', '2020-12-08 20:30:54', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(918, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:55', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(919, 'Undefined variable: editCol', '2020-12-08 20:30:55', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(920, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:55', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(921, 'Undefined variable: editCol', '2020-12-08 20:30:55', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(922, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:55', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(923, 'Undefined variable: editCol', '2020-12-08 20:30:55', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(924, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:55', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(925, 'Undefined variable: editCol', '2020-12-08 20:30:56', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(926, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:56', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(927, 'Undefined variable: editCol', '2020-12-08 20:30:56', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(928, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:56', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(929, 'Undefined variable: editCol', '2020-12-08 20:30:56', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(930, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:56', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(931, 'Undefined variable: editCol', '2020-12-08 20:30:56', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(932, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:56', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(933, 'Undefined variable: editCol', '2020-12-08 20:30:57', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(934, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:57', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(935, 'Undefined variable: editCol', '2020-12-08 20:30:57', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(936, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:57', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(937, 'Undefined variable: editCol', '2020-12-08 20:30:57', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(938, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:57', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(939, 'Undefined variable: editCol', '2020-12-08 20:30:57', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(940, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:57', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(941, 'Undefined variable: editCol', '2020-12-08 20:30:57', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(942, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:58', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(943, 'Undefined variable: editCol', '2020-12-08 20:30:58', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(944, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:58', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(945, 'Undefined variable: editCol', '2020-12-08 20:30:58', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(946, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:58', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(947, 'Undefined variable: editCol', '2020-12-08 20:30:58', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(948, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:58', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(949, 'Undefined variable: editCol', '2020-12-08 20:30:58', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(950, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:59', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(951, 'Undefined variable: editCol', '2020-12-08 20:30:59', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(952, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:59', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(953, 'Undefined variable: editCol', '2020-12-08 20:30:59', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(954, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:59', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(955, 'Undefined variable: editCol', '2020-12-08 20:30:59', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(956, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:59', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(957, 'Undefined variable: editCol', '2020-12-08 20:30:59', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(958, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:30:59', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(959, 'Undefined variable: editCol', '2020-12-08 20:31:00', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(960, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:31:00', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(961, 'Undefined variable: editCol', '2020-12-08 20:31:00', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(962, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:31:00', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(963, 'Undefined variable: editCol', '2020-12-08 20:31:00', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(964, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:31:00', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(965, 'Undefined variable: editCol', '2020-12-08 20:31:01', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(966, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:31:01', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(967, 'Undefined variable: editCol', '2020-12-08 20:31:01', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(968, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:31:01', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(969, 'Undefined variable: editCol', '2020-12-08 20:31:01', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 31, 'ratecard/price_view.php'),
(970, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:31:01', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(971, 'Undefined variable: editCol', '2020-12-08 20:31:02', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 34, 'ratecard/price_view.php'),
(972, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:31:02', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(973, 'Undefined variable: editCol', '2020-12-08 20:31:02', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 38, 'ratecard/price_view.php'),
(974, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:31:02', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(975, 'Undefined variable: editCol', '2020-12-08 20:31:02', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 42, 'ratecard/price_view.php'),
(976, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-08 20:31:02', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(977, '<p>The page you requested was not found.</p>', '2020-12-08 20:31:34', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(978, '<p>The page you requested was not found.</p>', '2020-12-08 20:36:47', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(979, '<p>The page you requested was not found.</p>', '2020-12-09 22:27:33', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(980, '<p>The page you requested was not found.</p>', '2020-12-09 22:27:33', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(981, '<p>The page you requested was not found.</p>', '2020-12-09 22:27:37', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(982, '<p>The page you requested was not found.</p>', '2020-12-09 22:27:41', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(983, '<p>The page you requested was not found.</p>', '2020-12-09 22:27:49', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(984, '<p>The page you requested was not found.</p>', '2020-12-09 22:30:18', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(985, '<p>The page you requested was not found.</p>', '2020-12-09 22:31:31', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(986, 'Undefined offset: 1', '2020-12-09 22:34:26', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(987, 'Undefined offset: 1', '2020-12-09 22:34:27', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(988, 'Undefined offset: 1', '2020-12-09 22:34:27', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(989, 'Undefined offset: 1', '2020-12-09 22:34:27', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(990, 'Undefined offset: 1', '2020-12-09 22:34:27', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(991, 'Undefined offset: 1', '2020-12-09 22:34:27', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(992, '<p>The page you requested was not found.</p>', '2020-12-09 22:34:56', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(993, '<p>The page you requested was not found.</p>', '2020-12-09 22:36:05', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(994, 'Undefined offset: 1', '2020-12-09 22:36:18', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(995, 'Undefined offset: 1', '2020-12-09 22:36:19', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(996, 'Undefined offset: 1', '2020-12-09 22:36:19', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(997, 'Undefined offset: 1', '2020-12-09 22:36:19', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php');
INSERT INTO `haashtag_exceptions` (`id`, `message`, `created_time`, `link`, `mail_sent`, `mail_sent_date`, `severity`, `line`, `filepath`) VALUES
(998, 'Undefined offset: 1', '2020-12-09 22:36:19', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(999, 'Undefined offset: 1', '2020-12-09 22:36:19', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1000, 'Undefined offset: 1', '2020-12-09 22:36:20', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1001, 'Undefined offset: 1', '2020-12-09 22:36:20', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1002, 'Undefined offset: 1', '2020-12-09 22:36:22', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1003, 'Undefined offset: 1', '2020-12-09 22:36:22', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1004, 'Undefined offset: 1', '2020-12-09 22:36:22', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1005, 'Undefined offset: 1', '2020-12-09 22:36:22', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1006, 'Undefined offset: 1', '2020-12-09 22:36:23', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1007, 'Undefined offset: 1', '2020-12-09 22:36:23', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1008, 'Undefined offset: 1', '2020-12-09 22:36:23', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1009, 'Undefined offset: 1', '2020-12-09 22:36:23', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1010, '<p>The page you requested was not found.</p>', '2020-12-09 22:37:00', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1011, 'Undefined offset: 1', '2020-12-09 22:37:47', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1012, 'Undefined offset: 1', '2020-12-09 22:37:47', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1013, 'Undefined offset: 1', '2020-12-09 22:37:47', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1014, 'Undefined offset: 1', '2020-12-09 22:37:47', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1015, 'Undefined offset: 1', '2020-12-09 22:37:48', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1016, 'Undefined offset: 1', '2020-12-09 22:37:48', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1017, 'Undefined offset: 1', '2020-12-09 22:37:48', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1018, 'Undefined offset: 1', '2020-12-09 22:37:48', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1019, 'Undefined offset: 1', '2020-12-09 22:38:23', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1020, 'Undefined offset: 1', '2020-12-09 22:38:23', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1021, 'Undefined offset: 1', '2020-12-09 22:38:24', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1022, 'Undefined offset: 1', '2020-12-09 22:38:24', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1023, 'Undefined offset: 1', '2020-12-09 22:38:24', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1024, 'Undefined offset: 1', '2020-12-09 22:38:24', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1025, 'Undefined offset: 1', '2020-12-09 22:38:24', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1026, 'Undefined offset: 1', '2020-12-09 22:38:24', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 59, 'ratecard/price_view.php'),
(1027, '<p>The page you requested was not found.</p>', '2020-12-09 22:38:45', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1028, '<p>The page you requested was not found.</p>', '2020-12-09 22:38:45', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1029, '<p>The page you requested was not found.</p>', '2020-12-09 22:39:04', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1030, '<p>The page you requested was not found.</p>', '2020-12-09 22:39:04', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1031, '<p>The page you requested was not found.</p>', '2020-12-09 22:41:33', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1032, '<p>The page you requested was not found.</p>', '2020-12-09 22:44:28', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1033, '<p>The page you requested was not found.</p>', '2020-12-09 22:50:57', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1034, '<p>The page you requested was not found.</p>', '2020-12-12 09:26:51', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(1035, '<p>The page you requested was not found.</p>', '2020-12-12 09:26:55', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(1036, '<p>The page you requested was not found.</p>', '2020-12-12 09:27:09', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1037, '<p>The page you requested was not found.</p>', '2020-12-12 09:27:19', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1038, '<p>The page you requested was not found.</p>', '2020-12-12 09:27:37', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1039, '<p>The page you requested was not found.</p>', '2020-12-12 09:47:22', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1040, '<p>The page you requested was not found.</p>', '2020-12-13 08:21:18', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(1041, '<p>The page you requested was not found.</p>', '2020-12-13 08:21:28', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1042, '<p>The page you requested was not found.</p>', '2020-12-13 08:21:33', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1043, '<p>The page you requested was not found.</p>', '2020-12-13 08:22:02', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1044, '<p>The page you requested was not found.</p>', '2020-12-13 08:22:44', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1045, '<p>The page you requested was not found.</p>', '2020-12-13 08:24:45', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1046, '<p>The page you requested was not found.</p>', '2020-12-13 08:35:42', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1047, '<p>The page you requested was not found.</p>', '2020-12-13 08:51:20', 'http://localhost:8081/haashtag/rateCard/undefined', '0', NULL, '404 Page Not Found', 0, ''),
(1048, '<p>The page you requested was not found.</p>', '2020-12-13 08:51:27', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1049, '<p>The page you requested was not found.</p>', '2020-12-13 08:52:58', 'http://localhost:8081/haashtag/rateCard/undefined', '0', NULL, '404 Page Not Found', 0, ''),
(1050, '<p>The page you requested was not found.</p>', '2020-12-13 08:53:29', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1051, '<p>The page you requested was not found.</p>', '2020-12-13 08:54:23', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1052, '<p>The page you requested was not found.</p>', '2020-12-13 08:54:23', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1053, 'INSERT INTO `haashtag_rate_card_price` (`weight_id`, `location_id`, `rate_id`, `colour_id`, `is_additional`, `sequence`, `price`) VALUES (1, 1, 1, 1, \'0\', 0, NULL)', '2020-12-13 08:57:49', 'http://localhost:8081/haashtag/rateCard/manageRateCard', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(1054, 'INSERT INTO `haashtag_rate_card` (`partner_code`, `service_id`, `no_of_colours`, `doc_type`, `mode`, `rate_card_code`, `name`, `country_code`, `description`, `entry_by`, `entry_date_time`) VALUES (\'DTDC\', \'1\', \'2\', \'DX,NX\', \'AC\', \'sdhds\', \'sfh\', \'IND\', \'asdadsd\', \'1\', \'2020-12-13 08:58:37\')', '2020-12-13 08:58:37', 'http://localhost:8081/haashtag/rateCard/manageRateCard', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(1055, '<p>The page you requested was not found.</p>', '2020-12-13 09:04:36', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1056, '<p>The page you requested was not found.</p>', '2020-12-13 09:04:37', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1057, '<p>The page you requested was not found.</p>', '2020-12-13 09:08:50', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1058, '<p>The page you requested was not found.</p>', '2020-12-13 09:08:50', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1059, '<p>The page you requested was not found.</p>', '2020-12-13 09:10:47', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1060, '<p>The page you requested was not found.</p>', '2020-12-13 09:10:47', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1061, '<p>The page you requested was not found.</p>', '2020-12-13 09:30:51', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1062, '<p>The page you requested was not found.</p>', '2020-12-13 09:30:52', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1063, '<p>The page you requested was not found.</p>', '2020-12-13 09:31:27', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1064, '<p>The page you requested was not found.</p>', '2020-12-13 09:31:27', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1065, '<p>The page you requested was not found.</p>', '2020-12-13 09:31:45', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1066, '<p>The page you requested was not found.</p>', '2020-12-13 09:31:45', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1067, '<p>The page you requested was not found.</p>', '2020-12-13 09:31:58', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1068, '<p>The page you requested was not found.</p>', '2020-12-13 09:31:58', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1069, '<p>The page you requested was not found.</p>', '2020-12-13 09:33:09', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1070, '<p>The page you requested was not found.</p>', '2020-12-13 09:33:40', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1071, '<p>The page you requested was not found.</p>', '2020-12-13 09:34:03', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1072, '<p>The page you requested was not found.</p>', '2020-12-13 09:34:27', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1073, '<p>The page you requested was not found.</p>', '2020-12-13 09:35:04', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1074, '<p>The page you requested was not found.</p>', '2020-12-13 09:35:06', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1075, '<p>The page you requested was not found.</p>', '2020-12-13 09:37:15', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1076, '<p>The page you requested was not found.</p>', '2020-12-13 09:38:21', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1077, '<p>The page you requested was not found.</p>', '2020-12-13 09:38:34', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1078, '<p>The page you requested was not found.</p>', '2020-12-13 09:45:13', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1079, '<p>The page you requested was not found.</p>', '2020-12-13 09:45:13', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1080, '<p>The page you requested was not found.</p>', '2020-12-13 09:45:36', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1081, '<p>The page you requested was not found.</p>', '2020-12-13 09:45:36', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1082, '<p>The page you requested was not found.</p>', '2020-12-13 09:49:11', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1083, '<p>The page you requested was not found.</p>', '2020-12-13 09:49:11', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1084, 'UPDATE `haashtag_rate_card_price1` SET `weight_id` = \'1\', `location_id` = \'1\', `rate_id` = \'1\', `colour_id` = \'1\', `is_additional` = \'0\', `sequence` = 0, `price` = \'1\'\nWHERE `price_id` = \'4\'\nAND `rate_id` = \'1\'', '2020-12-13 09:49:24', 'http://localhost:8081/haashtag/rateCard/manageRateCard', '0', NULL, 'FATAL', 74, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(1085, '<p>The page you requested was not found.</p>', '2020-12-13 09:50:15', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1086, '<p>The page you requested was not found.</p>', '2020-12-13 09:50:15', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1087, '<p>The page you requested was not found.</p>', '2020-12-13 09:50:38', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1088, '<p>The page you requested was not found.</p>', '2020-12-13 09:50:38', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1089, '<p>The page you requested was not found.</p>', '2020-12-13 09:53:10', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1090, '<p>The page you requested was not found.</p>', '2020-12-13 09:53:10', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1091, '<p>The page you requested was not found.</p>', '2020-12-13 09:56:01', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1092, '<p>The page you requested was not found.</p>', '2020-12-13 09:56:01', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1093, 'Undefined variable: editCol', '2020-12-13 09:57:42', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 53, 'ratecard/price_view.php'),
(1094, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-13 09:57:42', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(1095, 'Undefined variable: editCol', '2020-12-13 09:57:42', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 56, 'ratecard/price_view.php'),
(1096, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-13 09:57:42', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(1097, 'Undefined variable: editCol', '2020-12-13 09:57:43', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 60, 'ratecard/price_view.php'),
(1098, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-13 09:57:43', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(1099, 'Undefined variable: editCol', '2020-12-13 09:57:43', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 64, 'ratecard/price_view.php'),
(1100, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-13 09:57:43', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(1101, 'Undefined variable: editCol', '2020-12-13 09:57:43', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 53, 'ratecard/price_view.php'),
(1102, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-13 09:57:43', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(1103, 'Undefined variable: editCol', '2020-12-13 09:57:43', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 56, 'ratecard/price_view.php'),
(1104, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-13 09:57:43', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(1105, 'Undefined variable: editCol', '2020-12-13 09:57:44', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 60, 'ratecard/price_view.php'),
(1106, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-13 09:57:44', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(1107, 'Undefined variable: editCol', '2020-12-13 09:57:44', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 64, 'ratecard/price_view.php'),
(1108, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-13 09:57:44', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(1109, 'Undefined variable: editCol', '2020-12-13 09:57:44', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 53, 'ratecard/price_view.php'),
(1110, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-13 09:57:44', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(1111, 'Undefined variable: editCol', '2020-12-13 09:57:44', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 56, 'ratecard/price_view.php'),
(1112, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-13 09:57:44', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(1113, 'Undefined variable: editCol', '2020-12-13 09:57:45', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 60, 'ratecard/price_view.php'),
(1114, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-13 09:57:45', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(1115, 'Undefined variable: editCol', '2020-12-13 09:57:45', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 64, 'ratecard/price_view.php'),
(1116, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-13 09:57:45', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(1117, 'Undefined variable: editCol', '2020-12-13 09:57:45', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 53, 'ratecard/price_view.php'),
(1118, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-13 09:57:45', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(1119, 'Undefined variable: editCol', '2020-12-13 09:57:45', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 56, 'ratecard/price_view.php'),
(1120, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-13 09:57:46', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(1121, 'Undefined variable: editCol', '2020-12-13 09:57:46', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 60, 'ratecard/price_view.php'),
(1122, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-13 09:57:46', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(1123, 'Undefined variable: editCol', '2020-12-13 09:57:46', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Notice', 64, 'ratecard/price_view.php'),
(1124, 'array_key_exists() expects parameter 2 to be array, null given', '2020-12-13 09:57:46', 'http://localhost:8081/haashtag/rateCard/getPriceView', '0', NULL, 'Warning', 44, 'libraries/Generals_func.php'),
(1125, '<p>The page you requested was not found.</p>', '2020-12-13 10:00:33', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1126, '<p>The page you requested was not found.</p>', '2020-12-13 10:12:41', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1127, '<p>The page you requested was not found.</p>', '2020-12-13 10:13:16', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1128, '<p>The page you requested was not found.</p>', '2020-12-13 10:14:33', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1129, '<p>The page you requested was not found.</p>', '2020-12-13 10:14:46', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1130, '<p>The page you requested was not found.</p>', '2020-12-13 10:16:14', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1131, '<p>The page you requested was not found.</p>', '2020-12-13 10:16:18', 'http://localhost:8081/haashtag/operation/uploadCnno', '0', NULL, '404 Page Not Found', 0, ''),
(1132, '<p>The page you requested was not found.</p>', '2020-12-13 10:18:50', 'http://localhost:8081/haashtag/operation/uploadCnno', '0', NULL, '404 Page Not Found', 0, ''),
(1133, '<p>The page you requested was not found.</p>', '2020-12-13 10:19:02', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1134, '<p>The page you requested was not found.</p>', '2020-12-13 10:21:12', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1135, '<p>The page you requested was not found.</p>', '2020-12-13 10:21:59', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1136, '<p>The page you requested was not found.</p>', '2020-12-13 10:22:16', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1137, '<p>The page you requested was not found.</p>', '2020-12-13 10:22:44', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1138, '<p>The page you requested was not found.</p>', '2020-12-13 10:22:53', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1139, '<p>The page you requested was not found.</p>', '2020-12-13 10:23:07', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1140, '<p>The page you requested was not found.</p>', '2020-12-13 10:23:12', 'http://localhost:8081/haashtag/index.php/asset/import/', '0', NULL, '404 Page Not Found', 0, ''),
(1141, '<p>The page you requested was not found.</p>', '2020-12-13 10:23:41', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1142, '<p>The page you requested was not found.</p>', '2020-12-13 10:25:07', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1143, '<p>The page you requested was not found.</p>', '2020-12-13 10:25:25', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1144, '<p>The page you requested was not found.</p>', '2020-12-13 11:33:51', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1145, '<p>The page you requested was not found.</p>', '2020-12-13 11:43:28', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1146, '<p>The page you requested was not found.</p>', '2020-12-13 11:43:32', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1147, '<p>The page you requested was not found.</p>', '2020-12-13 11:44:51', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1148, '<p>The page you requested was not found.</p>', '2020-12-13 13:26:01', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1149, '<p>The page you requested was not found.</p>', '2020-12-13 13:29:52', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1150, '<p>The page you requested was not found.</p>', '2020-12-13 14:16:39', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1151, '<p>The page you requested was not found.</p>', '2020-12-13 14:17:49', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1152, '<p>The page you requested was not found.</p>', '2020-12-13 14:20:08', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1153, '<p>The page you requested was not found.</p>', '2020-12-13 14:20:08', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1154, '<p>The page you requested was not found.</p>', '2020-12-13 14:20:30', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1155, '<p>The page you requested was not found.</p>', '2020-12-13 14:20:30', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1156, '<p>The page you requested was not found.</p>', '2020-12-13 14:21:58', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1157, '<p>The page you requested was not found.</p>', '2020-12-13 14:21:58', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1158, '<p>The page you requested was not found.</p>', '2020-12-13 14:24:40', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1159, '<p>The page you requested was not found.</p>', '2020-12-13 14:24:40', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1160, '<p>The page you requested was not found.</p>', '2020-12-13 14:25:03', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1161, '<p>The page you requested was not found.</p>', '2020-12-13 14:28:07', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1162, '<p>The page you requested was not found.</p>', '2020-12-13 14:28:11', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1163, '<p>The page you requested was not found.</p>', '2020-12-13 14:28:50', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1164, 'Undefined index: message', '2020-12-13 15:29:52', 'http://localhost:8081/haashtag/index.php/operation/uploadInviceData/', '0', NULL, 'Notice', 449, 'controllers/Operation.php'),
(1165, 'Undefined index: message', '2020-12-13 15:31:08', 'http://localhost:8081/haashtag/index.php/operation/uploadInviceData/', '0', NULL, 'Notice', 450, 'controllers/Operation.php'),
(1166, 'Undefined index: message', '2020-12-13 15:31:20', 'http://localhost:8081/haashtag/index.php/operation/uploadInviceData/', '0', NULL, 'Notice', 451, 'controllers/Operation.php'),
(1167, 'Undefined index: dsr_cnno', '2020-12-13 15:31:48', 'http://localhost:8081/haashtag/index.php/operation/uploadInviceData/', '0', NULL, 'Notice', 380, 'controllers/Operation.php'),
(1168, 'SELECT *\nFROM `haashtag_invoice_entry`\nWHERE `dsr_cnno` IS NULL', '2020-12-13 15:31:48', 'http://localhost:8081/haashtag/index.php/operation/uploadInviceData/', '0', NULL, 'FATAL', 64, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(1169, '<p>The page you requested was not found.</p>', '2020-12-13 15:32:20', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1170, '<p>The page you requested was not found.</p>', '2020-12-13 15:34:58', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1171, '<p>The page you requested was not found.</p>', '2020-12-13 15:35:27', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1172, '<p>The page you requested was not found.</p>', '2020-12-13 15:35:51', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1173, '<p>The page you requested was not found.</p>', '2020-12-13 15:36:35', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1174, '<p>The page you requested was not found.</p>', '2020-12-13 15:37:56', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1175, 'INSERT INTO `haashtag_invoice_entry_dt` (`fr_code`, `fr_name`, `invoice_period`, `invoice_number`, `invoice_date`, `invoice_amount`, `service_charge`, `fuel_surcharge`, `discount`, `taxable_value`, `cgst_per`, `cgst_amt`, `sgst_per`, `sgst_amt`, `igst_per`, `igst_amt`, `utgst_per`, `utgst_amt`, `interest_free_refundable_sd`, `total_invoice_value`, `transaction_id`, `sac_no`, `description_of_service`, `dtdc_registered_state`, `dtdc_off_gstin_number`, `fr_registered_state`, `fr_gstin_number`, `track_id`, `entry_date_time`, `inv_type`, `consignment_number`, `manifest_number`, `booking_date`, `destination`, `weight`, `con_type`, `amount`, `transhipment`, `risk_surcharge`, `misc_charge`, `number_of_pieces`, `destination_pinocde`, `dox_type`, `invoice_no`, `invoice_id`) VALUES (\'\', \'BLR - SULTANPALYA (NEW)\', \'30-11-2020 to 30-11-2020\', \'KA2129082893\', \'1970-01-01\', \'35245.05\', \'\', \'12056.78\', \'0\', \'49352.52\', \'0\', \'4441.74\', \'0\', \'4441.74\', \'0\', \'0\', \'0\', \'0\', \'0\', \'58236\', \'\', \'9968\', \'\', \'KARNATAKA\', \'29AAACD8017H1ZO\', \'KARNATAKA\', \'29DXKPS1454Q1ZG\', \'1607854125291\', \'2020-12-13 15:38:45\', \'1\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'1\')', '2020-12-13 15:38:45', 'http://localhost:8081/haashtag/index.php/operation/uploadInviceData/', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(1176, 'INSERT INTO `haashtag_invoice_entry_dt` (`fr_code`, `fr_name`, `invoice_period`, `invoice_number`, `invoice_date`, `invoice_amount`, `service_charge`, `fuel_surcharge`, `discount`, `taxable_value`, `cgst_per`, `cgst_amt`, `sgst_per`, `sgst_amt`, `igst_per`, `igst_amt`, `utgst_per`, `utgst_amt`, `interest_free_refundable_sd`, `total_invoice_value`, `transaction_id`, `sac_no`, `description_of_service`, `dtdc_registered_state`, `dtdc_off_gstin_number`, `fr_registered_state`, `fr_gstin_number`, `track_id`, `entry_date_time`, `inv_type`, `consignment_number`, `manifest_number`, `booking_date`, `destination`, `weight`, `con_type`, `amount`, `transhipment`, `risk_surcharge`, `misc_charge`, `number_of_pieces`, `destination_pinocde`, `dox_type`, `invoice_no`, `invoice_id`) VALUES (\'\', \'BLR - SULTANPALYA (NEW)\', \'30-11-2020 to 30-11-2020\', \'KA2129082893\', \'1970-01-01\', \'35245.05\', \'\', \'12056.78\', \'0\', \'49352.52\', \'0\', \'4441.74\', \'0\', \'4441.74\', \'0\', \'0\', \'0\', \'0\', \'0\', \'58236\', \'\', \'9968\', \'\', \'KARNATAKA\', \'29AAACD8017H1ZO\', \'KARNATAKA\', \'29DXKPS1454Q1ZG\', \'1607854162915\', \'2020-12-13 15:39:22\', \'1\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'1\')', '2020-12-13 15:39:22', 'http://localhost:8081/haashtag/index.php/operation/uploadInviceData/', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(1177, 'INSERT INTO `haashtag_invoice_entry_dt` (`fr_code`, `fr_name`, `invoice_period`, `invoice_number`, `invoice_date`, `invoice_amount`, `service_charge`, `fuel_surcharge`, `discount`, `taxable_value`, `cgst_per`, `cgst_amt`, `sgst_per`, `sgst_amt`, `igst_per`, `igst_amt`, `utgst_per`, `utgst_amt`, `interest_free_refundable_sd`, `total_invoice_value`, `transaction_id`, `sac_no`, `description_of_service`, `dtdc_registered_state`, `dtdc_off_gstin_number`, `fr_registered_state`, `fr_gstin_number`, `track_id`, `entry_date_time`, `inv_type`, `consignment_number`, `manifest_number`, `booking_date`, `destination`, `weight`, `con_type`, `amount`, `transhipment`, `risk_surcharge`, `misc_charge`, `number_of_pieces`, `destination_pinocde`, `dox_type`, `invoice_no`, `invoice_id`) VALUES (\'\', \'BLR - SULTANPALYA (NEW)\', \'30-11-2020 to 30-11-2020\', \'KA2129082893\', \'1970-01-01\', \'35245.05\', \'\', \'12056.78\', \'0\', \'49352.52\', \'0\', \'4441.74\', \'0\', \'4441.74\', \'0\', \'0\', \'0\', \'0\', \'0\', \'58236\', \'\', \'9968\', \'\', \'KARNATAKA\', \'29AAACD8017H1ZO\', \'KARNATAKA\', \'29DXKPS1454Q1ZG\', \'1607854166764\', \'2020-12-13 15:39:26\', \'1\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'1\')', '2020-12-13 15:39:26', 'http://localhost:8081/haashtag/index.php/operation/uploadInviceData/', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(1178, 'INSERT INTO `haashtag_invoice_entry_dt` (`fr_code`, `fr_name`, `invoice_period`, `invoice_number`, `invoice_date`, `invoice_amount`, `service_charge`, `fuel_surcharge`, `discount`, `taxable_value`, `cgst_per`, `cgst_amt`, `sgst_per`, `sgst_amt`, `igst_per`, `igst_amt`, `utgst_per`, `utgst_amt`, `interest_free_refundable_sd`, `total_invoice_value`, `transaction_id`, `sac_no`, `description_of_service`, `dtdc_registered_state`, `dtdc_off_gstin_number`, `fr_registered_state`, `fr_gstin_number`, `track_id`, `entry_date_time`, `inv_type`, `consignment_number`, `manifest_number`, `booking_date`, `destination`, `weight`, `con_type`, `amount`, `transhipment`, `risk_surcharge`, `misc_charge`, `number_of_pieces`, `destination_pinocde`, `dox_type`, `invoice_no`, `invoice_id`) VALUES (\'\', \'BLR - SULTANPALYA (NEW)\', \'30-11-2020 to 30-11-2020\', \'KA2129082893\', \'1970-01-01\', \'35245.05\', \'\', \'12056.78\', \'0\', \'49352.52\', \'0\', \'4441.74\', \'0\', \'4441.74\', \'0\', \'0\', \'0\', \'0\', \'0\', \'58236\', \'\', \'9968\', \'\', \'KARNATAKA\', \'29AAACD8017H1ZO\', \'KARNATAKA\', \'29DXKPS1454Q1ZG\', \'1607854223586\', \'2020-12-13 15:40:23\', \'1\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'1\')', '2020-12-13 15:40:24', 'http://localhost:8081/haashtag/index.php/operation/uploadInviceData/', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(1179, 'INSERT INTO `haashtag_invoice_entry_dt` (`fr_code`, `consignment_number`, `manifest_number`, `booking_date`, `destination`, `weight`, `con_type`, `amount`, `transhipment`, `service_charge`, `risk_surcharge`, `misc_charge`, `number_of_pieces`, `destination_pinocde`, `dox_type`, `invoice_no`, `invoice_date`, `invoice_id`) VALUES (\'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'1\')', '2020-12-13 15:41:05', 'http://localhost:8081/haashtag/index.php/operation/uploadInviceData/', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(1180, '<p>The page you requested was not found.</p>', '2020-12-13 15:41:42', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1181, '<p>The page you requested was not found.</p>', '2020-12-13 15:43:45', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1182, '<p>The page you requested was not found.</p>', '2020-12-13 15:44:24', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1183, '<p>The page you requested was not found.</p>', '2020-12-13 15:44:33', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1184, '<p>The page you requested was not found.</p>', '2020-12-13 15:46:14', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1185, '<p>The page you requested was not found.</p>', '2020-12-13 16:00:12', 'http://localhost:8081/haashtag/operation/viewData', '0', NULL, '404 Page Not Found', 0, ''),
(1186, '<p>The page you requested was not found.</p>', '2020-12-13 16:00:24', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1187, '<p>The page you requested was not found.</p>', '2020-12-13 16:00:24', 'http://localhost:8081/haashtag/operation/getInvList?_search=false&nd=1607855424603&rows=10&page=1&sidx=name&sord=asc', '0', NULL, '404 Page Not Found', 0, ''),
(1188, '<p>The page you requested was not found.</p>', '2020-12-13 16:00:28', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1189, '<p>The page you requested was not found.</p>', '2020-12-13 16:00:32', 'http://localhost:8081/haashtag/operation/getInvList?_search=false&nd=1607855431982&rows=10&page=1&sidx=partner&sord=asc', '0', NULL, '404 Page Not Found', 0, ''),
(1190, 'Undefined index: type', '2020-12-13 16:07:02', 'http://localhost:8081/haashtag/operation/getInvList?_search=false&nd=1607855821889&rows=10&page=1&sidx=partner&sord=desc', '0', NULL, 'Notice', 523, 'controllers/Operation.php'),
(1191, '<p>The page you requested was not found.</p>', '2020-12-13 16:07:38', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1192, '<p>The page you requested was not found.</p>', '2020-12-13 16:07:39', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1193, '<p>The page you requested was not found.</p>', '2020-12-13 16:09:06', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1194, '<p>The page you requested was not found.</p>', '2020-12-13 16:09:06', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1195, '<p>The page you requested was not found.</p>', '2020-12-13 16:09:12', 'http://localhost:8081/haashtag/operation/analyze/1', '0', NULL, '404 Page Not Found', 0, ''),
(1196, 'SELECT *\nFROM `haashtag_invoice_entry1`\nWHERE `invoice_id` = \'1\'', '2020-12-13 16:15:27', 'http://localhost:8081/haashtag/operation/analyze/1', '0', NULL, 'FATAL', 64, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(1197, '<p>The page you requested was not found.</p>', '2020-12-13 16:42:32', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1198, '<p>The page you requested was not found.</p>', '2020-12-13 16:42:43', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1199, '<p>The page you requested was not found.</p>', '2020-12-13 16:50:40', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1200, '<p>The page you requested was not found.</p>', '2020-12-13 17:04:26', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1201, '<p>The page you requested was not found.</p>', '2020-12-13 17:04:37', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1202, '<p>The page you requested was not found.</p>', '2020-12-13 17:04:54', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1203, 'SELECT *\nFROM `haashtag_rate_card_location`\nWHERE `state_code` = \'KAR\'', '2020-12-13 17:06:12', 'http://localhost:8081/haashtag/operation/analyze/1', '0', NULL, 'FATAL', 64, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(1204, '<p>The page you requested was not found.</p>', '2020-12-13 17:12:45', 'http://localhost:8081/haashtag/operation/analyzeDownload', '0', NULL, '404 Page Not Found', 0, ''),
(1205, '<p>Unable to load the requested file: operation/analyze_download.php</p>', '2020-12-13 17:12:50', 'http://localhost:8081/haashtag/operation/analyze/1', '0', NULL, 'An Error Was Encountered', 0, ''),
(1206, '<p>Unable to load the requested file: operation/analyze_download.php</p>', '2020-12-13 17:13:14', 'http://localhost:8081/haashtag/operation/analyzeDownload/1', '0', NULL, 'An Error Was Encountered', 0, ''),
(1207, '<p>The page you requested was not found.</p>', '2020-12-13 17:22:59', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1208, '<p>The page you requested was not found.</p>', '2020-12-13 17:23:08', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1209, '<p>The page you requested was not found.</p>', '2020-12-13 17:26:46', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1210, '<p>The page you requested was not found.</p>', '2020-12-13 17:27:03', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1211, '<p>The page you requested was not found.</p>', '2020-12-13 17:27:27', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1212, '<p>The page you requested was not found.</p>', '2020-12-13 17:27:49', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1213, '<p>The page you requested was not found.</p>', '2020-12-13 17:28:10', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1214, '<p>The page you requested was not found.</p>', '2020-12-13 20:25:52', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(1215, '<p>The page you requested was not found.</p>', '2020-12-13 20:25:52', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(1216, '<p>The page you requested was not found.</p>', '2020-12-13 20:25:52', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(1217, '<p>The page you requested was not found.</p>', '2020-12-14 18:58:01', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(1218, '<p>The page you requested was not found.</p>', '2020-12-14 18:58:01', 'http://localhost:8081/haashtag/assets/js/lib/ionicons/ionicons.js', '0', NULL, '404 Page Not Found', 0, ''),
(1219, '<p>The page you requested was not found.</p>', '2020-12-14 18:58:06', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1220, '<p>The page you requested was not found.</p>', '2020-12-14 18:58:56', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1221, '<p>The page you requested was not found.</p>', '2020-12-14 19:00:34', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1222, '<p>The page you requested was not found.</p>', '2020-12-14 19:26:28', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, '');
INSERT INTO `haashtag_exceptions` (`id`, `message`, `created_time`, `link`, `mail_sent`, `mail_sent_date`, `severity`, `line`, `filepath`) VALUES
(1223, '<p>The page you requested was not found.</p>', '2020-12-14 19:26:59', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1224, '<p>The page you requested was not found.</p>', '2020-12-14 19:27:45', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1225, '<p>The page you requested was not found.</p>', '2020-12-14 19:28:02', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1226, '<p>The page you requested was not found.</p>', '2020-12-14 19:28:13', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1227, '<p>The page you requested was not found.</p>', '2020-12-14 19:28:34', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1228, '<p>The page you requested was not found.</p>', '2020-12-14 19:28:51', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1229, '<p>The page you requested was not found.</p>', '2020-12-14 19:30:37', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1230, '<p>The page you requested was not found.</p>', '2020-12-14 19:31:26', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1231, '<p>The page you requested was not found.</p>', '2020-12-14 19:31:54', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1232, '<p>The page you requested was not found.</p>', '2020-12-14 19:34:11', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1233, '<p>The page you requested was not found.</p>', '2020-12-14 19:34:28', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1234, '<p>The page you requested was not found.</p>', '2020-12-14 19:35:54', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1235, '<p>The page you requested was not found.</p>', '2020-12-14 19:35:55', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1236, '<p>The page you requested was not found.</p>', '2020-12-14 19:36:24', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1237, '<p>The page you requested was not found.</p>', '2020-12-14 19:36:24', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1238, '<p>The page you requested was not found.</p>', '2020-12-14 19:37:21', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1239, '<p>The page you requested was not found.</p>', '2020-12-14 19:37:21', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1240, '<p>The page you requested was not found.</p>', '2020-12-14 19:42:38', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1241, '<p>The page you requested was not found.</p>', '2020-12-14 19:43:11', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1242, '<p>The page you requested was not found.</p>', '2020-12-14 19:44:17', 'http://localhost:8081/haashtag/master/saveProfile', '0', NULL, '404 Page Not Found', 0, ''),
(1243, '<p>The page you requested was not found.</p>', '2020-12-14 19:44:20', 'http://localhost:8081/haashtag/master/saveProfile', '0', NULL, '404 Page Not Found', 0, ''),
(1244, '<p>The page you requested was not found.</p>', '2020-12-14 19:44:20', 'http://localhost:8081/haashtag/master/saveProfile', '0', NULL, '404 Page Not Found', 0, ''),
(1245, '<p>The page you requested was not found.</p>', '2020-12-14 19:44:20', 'http://localhost:8081/haashtag/master/saveProfile', '0', NULL, '404 Page Not Found', 0, ''),
(1246, '<p>The page you requested was not found.</p>', '2020-12-14 19:44:24', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1247, '<p>The page you requested was not found.</p>', '2020-12-14 19:44:29', 'http://localhost:8081/haashtag/master/saveProfile', '0', NULL, '404 Page Not Found', 0, ''),
(1248, '<p>The page you requested was not found.</p>', '2020-12-14 19:45:05', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1249, '<p>The page you requested was not found.</p>', '2020-12-14 19:45:05', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1250, '<p>The page you requested was not found.</p>', '2020-12-14 19:46:11', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1251, '<p>The page you requested was not found.</p>', '2020-12-14 19:46:11', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1252, '<p>The page you requested was not found.</p>', '2020-12-14 19:46:15', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1253, '<p>The page you requested was not found.</p>', '2020-12-14 19:46:15', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, ''),
(1254, 'UPDATE `haashtag_profile` SET `company_name` = \'sd\', `phone_no` = \'asd\', `email_id` = \'asd@adsf.sd\', `company_code` = \'asd\', `enable_gst` = \'1\', `gst_no` = \'sadf\', `pan_no` = \'sadf\', `country_code` = \'IND\', `zone_code` = \'SOT\', `state_code` = \'KAR\', `city_id` = \'1\', `pincode` = \'560010\', `address` = \'asdasd\', `last_updated_date_time` = \'2020-12-14 20:07:47\'\nWHERE `profile_id` IS NULL', '2020-12-14 20:07:47', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'FATAL', 74, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(1255, 'Undefined variable: status', '2020-12-14 20:08:21', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Notice', 161, 'controllers/Master.php'),
(1256, '<p>The page you requested was not found.</p>', '2020-12-14 20:08:23', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1257, 'Undefined variable: status', '2020-12-14 20:08:43', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Notice', 161, 'controllers/Master.php'),
(1258, '<p>The page you requested was not found.</p>', '2020-12-14 20:08:45', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1259, '<p>The page you requested was not found.</p>', '2020-12-14 20:08:57', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1260, 'INSERT INTO `haashtag_profile_contact` (`name`, `designation`, `email_id`, `mobile_no`, `is_default`, `profile_id`, `sequence`) VALUES (\'sdfsf\', \'gsdf\', \'gdsfgd@sdf.adf\', \'121122112\', \'1\', NULL, 0)', '2020-12-14 20:09:58', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(1261, 'INSERT INTO `haashtag_profile_contact` (`name`, `designation`, `email_id`, `mobile_no`, `is_default`, `profile_id`, `sequence`) VALUES (\'sdfsf\', \'gsdf\', \'gdsfgd@sdf.adf\', \'121122112\', \'1\', NULL, 0)', '2020-12-14 20:10:39', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(1262, 'INSERT INTO `haashtag_profile_contact` (`name`, `designation`, `email_id`, `mobile_no`, `is_default`, `profile_id`, `sequence`) VALUES (\'sdfsf\', \'gsdf\', \'gdsfgd@sdf.adf\', \'121122112\', \'1\', NULL, 0)', '2020-12-14 20:10:52', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(1263, 'SELECT `picode`\nFROM `haashtag_picode`\nWHERE `city_id` = \'1\'', '2020-12-14 20:11:06', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'FATAL', 64, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(1264, 'Undefined index: pincode', '2020-12-14 20:11:38', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Notice', 142, 'libraries/Generals_func.php'),
(1265, 'Undefined index: pincode', '2020-12-14 20:11:38', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Notice', 142, 'libraries/Generals_func.php'),
(1266, 'Undefined index: pincode', '2020-12-14 20:11:38', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Notice', 142, 'libraries/Generals_func.php'),
(1267, 'Undefined index: pincode', '2020-12-14 20:11:38', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Notice', 142, 'libraries/Generals_func.php'),
(1268, 'A non-numeric value encountered', '2020-12-14 20:11:39', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Warning', 247, 'master/profile.php'),
(1269, 'A non-numeric value encountered', '2020-12-14 20:11:39', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Warning', 247, 'master/profile.php'),
(1270, 'A non-numeric value encountered', '2020-12-14 20:11:40', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Warning', 247, 'master/profile.php'),
(1271, 'A non-numeric value encountered', '2020-12-14 20:11:40', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Warning', 247, 'master/profile.php'),
(1272, 'A non-numeric value encountered', '2020-12-14 20:11:40', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Warning', 247, 'master/profile.php'),
(1273, 'A non-numeric value encountered', '2020-12-14 20:11:41', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Warning', 247, 'master/profile.php'),
(1274, 'A non-numeric value encountered', '2020-12-14 20:11:41', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Warning', 247, 'master/profile.php'),
(1275, '<p>The page you requested was not found.</p>', '2020-12-14 20:11:44', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1276, 'A non-numeric value encountered', '2020-12-14 20:12:21', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Warning', 247, 'master/profile.php'),
(1277, 'A non-numeric value encountered', '2020-12-14 20:12:21', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Warning', 247, 'master/profile.php'),
(1278, 'A non-numeric value encountered', '2020-12-14 20:12:21', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Warning', 247, 'master/profile.php'),
(1279, 'A non-numeric value encountered', '2020-12-14 20:12:22', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Warning', 247, 'master/profile.php'),
(1280, 'A non-numeric value encountered', '2020-12-14 20:12:22', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Warning', 247, 'master/profile.php'),
(1281, 'A non-numeric value encountered', '2020-12-14 20:12:22', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Warning', 247, 'master/profile.php'),
(1282, 'A non-numeric value encountered', '2020-12-14 20:12:23', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Warning', 247, 'master/profile.php'),
(1283, '<p>The page you requested was not found.</p>', '2020-12-14 20:12:26', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1284, 'A non-numeric value encountered', '2020-12-14 20:13:39', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Warning', 247, 'master/profile.php'),
(1285, 'A non-numeric value encountered', '2020-12-14 20:13:40', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Warning', 247, 'master/profile.php'),
(1286, 'A non-numeric value encountered', '2020-12-14 20:13:40', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Warning', 247, 'master/profile.php'),
(1287, 'A non-numeric value encountered', '2020-12-14 20:13:40', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Warning', 247, 'master/profile.php'),
(1288, 'A non-numeric value encountered', '2020-12-14 20:13:41', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Warning', 247, 'master/profile.php'),
(1289, 'A non-numeric value encountered', '2020-12-14 20:13:41', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Warning', 247, 'master/profile.php'),
(1290, 'A non-numeric value encountered', '2020-12-14 20:13:42', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'Warning', 247, 'master/profile.php'),
(1291, '<p>The page you requested was not found.</p>', '2020-12-14 20:13:45', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1292, '<p>The page you requested was not found.</p>', '2020-12-14 20:14:27', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1293, '<p>The page you requested was not found.</p>', '2020-12-14 20:15:29', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1294, 'INSERT INTO `haashtag_profile` (`company_name`, `phone_no`, `email`, `company_code`, `enable_gst`, `gst_no`, `pan_no`, `country_code`, `zone_code`, `state_code`, `city_id`, `pincode`, `address`, `entry_date_time`, `profile_id`) VALUES (\'asdf\', \'asdf\', \'sadfasdf@adf.asdf\', \'3563456\', \'1\', \'dfas\', \'asdf\', \'IND\', \'SOT\', \'KAR\', \'1\', \'560010\', \'asasassdsd\', \'2020-12-14 20:16:18\', 1)', '2020-12-14 20:16:18', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(1295, 'INSERT INTO `haashtag_profile_contact` (`name`, `designation`, `email_id`, `mobile_no`, `is_default`, `profile_id`, `sequence`) VALUES (\'adf\', \'0asdfaf\', \'asdfadf@adf.asdf\', \'121122112\', \'1\', 1, 0)', '2020-12-14 20:16:39', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(1296, 'INSERT INTO `haashtag_profile` (`company_name`, `phone_no`, `email`, `company_code`, `enable_gst`, `gst_no`, `pan_no`, `country_code`, `zone_code`, `state_code`, `city_id`, `pincode`, `address`, `entry_date_time`, `profile_id`) VALUES (\'asdf\', \'asdf\', \'sadfasdf@adf.asdf\', \'3563456\', \'1\', \'dfas\', \'asdf\', \'IND\', \'SOT\', \'KAR\', \'1\', \'560010\', \'asasassdsd\', \'2020-12-14 20:17:21\', 1)', '2020-12-14 20:17:22', 'http://localhost:8081/haashtag/master/profile', '0', NULL, 'FATAL', 78, 'F:/xampp/htdocs/haashtag/application/models/UtilityModel.php'),
(1297, '<p>The page you requested was not found.</p>', '2020-12-14 20:17:49', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1298, '<p>The page you requested was not found.</p>', '2020-12-14 20:18:57', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1299, '<p>The page you requested was not found.</p>', '2020-12-14 20:19:31', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1300, '<p>The page you requested was not found.</p>', '2020-12-14 20:20:47', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1301, '<p>The page you requested was not found.</p>', '2020-12-14 20:20:59', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1302, '<p>The page you requested was not found.</p>', '2020-12-14 20:21:13', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1303, '<p>The page you requested was not found.</p>', '2020-12-14 20:21:29', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1304, '<p>The page you requested was not found.</p>', '2020-12-14 20:21:34', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1305, '<p>The page you requested was not found.</p>', '2020-12-14 20:22:13', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1306, '<p>The page you requested was not found.</p>', '2020-12-14 20:22:47', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, ''),
(1307, '<p>The page you requested was not found.</p>', '2020-12-14 20:23:11', 'http://localhost:8081/haashtag/assets/lib/ionicons/ionicons/ionicons.suuqn5vt.js', '0', NULL, '404 Page Not Found', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_gst`
--

CREATE TABLE `haashtag_gst` (
  `gst_id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `effective_date` date NOT NULL,
  `value` float(7,2) NOT NULL,
  `entry_by` bigint(20) NOT NULL,
  `entry_date_time` datetime NOT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `update_date_time` datetime DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_gst`
--

INSERT INTO `haashtag_gst` (`gst_id`, `name`, `effective_date`, `value`, `entry_by`, `entry_date_time`, `update_by`, `update_date_time`, `status`) VALUES
(1, 'GST', '2020-09-20', 17.00, 0, '2020-09-20 11:46:33', NULL, '2020-09-20 11:48:37', '1');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_import_history`
--

CREATE TABLE `haashtag_import_history` (
  `history_id` bigint(20) NOT NULL,
  `type` varchar(26) NOT NULL,
  `imported_user` bigint(20) NOT NULL,
  `imported_date` datetime NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `track_id` varchar(100) NOT NULL,
  `inserted` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `error` int(11) NOT NULL,
  `error_list` longtext NOT NULL,
  `success_list` longtext NOT NULL,
  `csv_file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_import_history`
--

INSERT INTO `haashtag_import_history` (`history_id`, `type`, `imported_user`, `imported_date`, `ip_address`, `track_id`, `inserted`, `updated`, `error`, `error_list`, `success_list`, `csv_file`) VALUES
(1, 'BOOK', 1, '2020-12-13 11:44:48', '::1', '1607840088400', 0, 29, 0, '[]', '[{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"20428587\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"RMI\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560092\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"\",\"dsr_booking_time\":\"07:56:15\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"\",\"dsr_value\":\"\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B61\",\"dsr_refno\":\"B75151715\",\"mod_time\":\"756\",\"nodeid\":\"192.168.1.\",\"userid\":\"\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B73372024\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.74\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"KRR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"639002\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"18\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:06\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B73372024\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2024\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BL10809\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0.167\",\"dsr_captured_weight\":\"0.74\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149417\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.02\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"RPT\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"632513\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"8.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"\",\"dsr_booking_time\":\"20:57:55\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"OPF\",\"dsr_value\":\"\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2204\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.02\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149450\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"1.84\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"HIA\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"700157\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"146\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007426\",\"dsr_booking_time\":\"17:47:11\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75149450\",\"dsr_value\":\"10\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1822\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0045\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"1.84\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149451\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.63\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"MUB\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"583234\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"13.75\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007427\",\"dsr_booking_time\":\"17:48:11\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"DRY FRUITS\",\"dsr_remarks\":\"FR-B75149451\",\"dsr_value\":\"100\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1822\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0045\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.63\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149555\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560064\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007425\",\"dsr_booking_time\":\"09:29:55\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149555\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1233\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149556\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560094\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007424\",\"dsr_booking_time\":\"09:27:44\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149556\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1602\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149557\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560025\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149557\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149558\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560032\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149558\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149559\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560052\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149559\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149560\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560008\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149560\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149561\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560061\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149561\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149562\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560072\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149562\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149563\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560042\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149563\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149564\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.13\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"UDP\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"576104\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"6.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007331\",\"dsr_booking_time\":\"17:44:15\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149564\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.74\",\"userid\":\"PS00773\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.13\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149565\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.266\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"MUM\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"400013\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"14\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007329\",\"dsr_booking_time\":\"17:08:24\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149565\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.71\",\"userid\":\"C13507\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.266\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149566\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560005\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149566\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149993\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.76\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"HDP\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"515201\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"18\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:06\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75149993\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2034\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0.167\",\"dsr_captured_weight\":\"0.76\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149994\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"1.31\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"GLB\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"584129\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"20.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:05\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75149994\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2034\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0.167\",\"dsr_captured_weight\":\"1.31\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149996\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.02\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"PNQ\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"411038\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"14\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"\",\"dsr_booking_time\":\"20:43:08\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"OPF\",\"dsr_value\":\"\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2204\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.02\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150043\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"562102\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007425\",\"dsr_booking_time\":\"09:29:55\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75150043\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"1.21766E+11\",\"mod_time\":\"1846\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150044\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560092\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007423\",\"dsr_booking_time\":\"09:26:11\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75150044\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"1.21766E+11\",\"mod_time\":\"1825\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150046\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560064\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007424\",\"dsr_booking_time\":\"09:27:44\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75150046\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"1.21766E+11\",\"mod_time\":\"1603\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150118\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"1.35\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"KKL\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"574105\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"20.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:05\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75150118\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2034\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0.167\",\"dsr_captured_weight\":\"1.35\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150119\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.1\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560038\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"\",\"dsr_booking_time\":\"21:44:59\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"OPF\",\"dsr_value\":\"\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2245\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.1\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75151372\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.4\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560105\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"6.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:06\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75151372\",\"dsr_value\":\"1000\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2034\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.4\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75151729\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560064\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007425\",\"dsr_booking_time\":\"09:29:55\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75151729\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1233\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"D61835819\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"50\",\"dsr_cn_type\":\"AC1\",\"dsr_dest\":\"JMD\",\"dsr_mode\":\"AC\",\"dsr_no_of_pieces\":\"2\",\"dsr_dest_pin\":\"831005\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"3250\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007428\",\"dsr_booking_time\":\"19:39:42\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-D61835819\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2017\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"2.666\",\"dsr_captured_weight\":\"50\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"D61835830\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"4.9\",\"dsr_cn_type\":\"AC1\",\"dsr_dest\":\"AGR\",\"dsr_mode\":\"AC\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"282007\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"340\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007429\",\"dsr_booking_time\":\"19:42:17\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-D61835830\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2017\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"4.9\",\"dsr_captured_weight\":\"3.18\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607840088400\",\"entry_date_time\":\"2020-12-13 11:44:48\"}]', '16078400882831.csv'),
(2, 'BOOK', 1, '2020-12-13 15:32:17', '::1', '1607853737778', 0, 0, 0, '[]', '[{\"fr_code\":\"BF1850\",\"fr_name\":\"BLR - SULTANPALYA (NEW)\",\"invoice_period\":\"30-11-2020 to 30-11-2020\",\"invoice_number\":\"KA2129082893\",\"invoice_date\":\"2020-12-01\",\"invoice_amount\":\"35245.05\",\"service_charge\":\"2050.83\",\"fuel_surcharge\":\"12056.78\",\"discount\":\"0\",\"taxable_value\":\"49352.52\",\"cgst_per\":\"0\",\"cgst_amt\":\"4441.74\",\"sgst_per\":\"0\",\"sgst_amt\":\"4441.74\",\"igst_per\":\"0\",\"igst_amt\":\"0\",\"utgst_per\":\"0\",\"utgst_amt\":\"0\",\"interest_free_refundable_sd\":\"0\",\"total_invoice_value\":\"58236\",\"transaction_id\":\"\",\"sac_no\":\"9968\",\"description_of_service\":\"\",\"dtdc_registered_state\":\"KARNATAKA\",\"dtdc_off_gstin_number\":\"29AAACD8017H1ZO\",\"fr_registered_state\":\"KARNATAKA\",\"fr_gstin_number\":\"29DXKPS1454Q1ZG\",\"track_id\":\"1607853737778\",\"entry_date_time\":\"2020-12-13 15:32:17\",\"inv_type\":\"1\"}]', '16078537372366.csv'),
(3, 'INV', 1, '2020-12-13 15:35:24', '::1', '1607853924330', 0, 0, 0, '[]', '[{\"fr_code\":\"BF1850\",\"fr_name\":\"BLR - SULTANPALYA (NEW)\",\"invoice_period\":\"30-11-2020 to 30-11-2020\",\"invoice_number\":\"KA2129082893\",\"invoice_date\":\"2020-12-01\",\"invoice_amount\":\"35245.05\",\"service_charge\":\"2050.83\",\"fuel_surcharge\":\"12056.78\",\"discount\":\"0\",\"taxable_value\":\"49352.52\",\"cgst_per\":\"0\",\"cgst_amt\":\"4441.74\",\"sgst_per\":\"0\",\"sgst_amt\":\"4441.74\",\"igst_per\":\"0\",\"igst_amt\":\"0\",\"utgst_per\":\"0\",\"utgst_amt\":\"0\",\"interest_free_refundable_sd\":\"0\",\"total_invoice_value\":\"58236\",\"transaction_id\":\"\",\"sac_no\":\"9968\",\"description_of_service\":\"\",\"dtdc_registered_state\":\"KARNATAKA\",\"dtdc_off_gstin_number\":\"29AAACD8017H1ZO\",\"fr_registered_state\":\"KARNATAKA\",\"fr_gstin_number\":\"29DXKPS1454Q1ZG\",\"track_id\":\"1607853924330\",\"entry_date_time\":\"2020-12-13 15:35:24\",\"inv_type\":\"1\"}]', '16078539245523.csv'),
(4, 'INV', 1, '2020-12-13 15:35:50', '::1', '1607853949294', 0, 0, 0, '[]', '[{\"fr_code\":\"BF1850\",\"fr_name\":\"BLR - SULTANPALYA (NEW)\",\"invoice_period\":\"30-11-2020 to 30-11-2020\",\"invoice_number\":\"KA2129082893\",\"invoice_date\":\"2020-12-01\",\"invoice_amount\":\"35245.05\",\"service_charge\":\"2050.83\",\"fuel_surcharge\":\"12056.78\",\"discount\":\"0\",\"taxable_value\":\"49352.52\",\"cgst_per\":\"0\",\"cgst_amt\":\"4441.74\",\"sgst_per\":\"0\",\"sgst_amt\":\"4441.74\",\"igst_per\":\"0\",\"igst_amt\":\"0\",\"utgst_per\":\"0\",\"utgst_amt\":\"0\",\"interest_free_refundable_sd\":\"0\",\"total_invoice_value\":\"58236\",\"transaction_id\":\"\",\"sac_no\":\"9968\",\"description_of_service\":\"\",\"dtdc_registered_state\":\"KARNATAKA\",\"dtdc_off_gstin_number\":\"29AAACD8017H1ZO\",\"fr_registered_state\":\"KARNATAKA\",\"fr_gstin_number\":\"29DXKPS1454Q1ZG\",\"track_id\":\"1607853949294\",\"entry_date_time\":\"2020-12-13 15:35:49\",\"inv_type\":\"1\"}]', '16078539498411.csv'),
(5, 'INV', 1, '2020-12-13 15:36:34', '::1', '1607853994223', 0, 0, 0, '[]', '[{\"fr_code\":\"BF1850\",\"fr_name\":\"BLR - SULTANPALYA (NEW)\",\"invoice_period\":\"30-11-2020 to 30-11-2020\",\"invoice_number\":\"KA2129082893\",\"invoice_date\":\"2020-12-01\",\"invoice_amount\":\"35245.05\",\"service_charge\":\"2050.83\",\"fuel_surcharge\":\"12056.78\",\"discount\":\"0\",\"taxable_value\":\"49352.52\",\"cgst_per\":\"0\",\"cgst_amt\":\"4441.74\",\"sgst_per\":\"0\",\"sgst_amt\":\"4441.74\",\"igst_per\":\"0\",\"igst_amt\":\"0\",\"utgst_per\":\"0\",\"utgst_amt\":\"0\",\"interest_free_refundable_sd\":\"0\",\"total_invoice_value\":\"58236\",\"transaction_id\":\"\",\"sac_no\":\"9968\",\"description_of_service\":\"\",\"dtdc_registered_state\":\"KARNATAKA\",\"dtdc_off_gstin_number\":\"29AAACD8017H1ZO\",\"fr_registered_state\":\"KARNATAKA\",\"fr_gstin_number\":\"29DXKPS1454Q1ZG\",\"track_id\":\"1607853994223\",\"entry_date_time\":\"2020-12-13 15:36:34\",\"inv_type\":\"1\"}]', '16078539931413.csv'),
(6, 'INV', 1, '2020-12-13 15:37:53', '::1', '1607854073516', 0, 0, 0, '[]', '[{\"fr_code\":\"BF1850\",\"fr_name\":\"BLR - SULTANPALYA (NEW)\",\"invoice_period\":\"30-11-2020 to 30-11-2020\",\"invoice_number\":\"KA2129082893\",\"invoice_date\":\"2020-12-01\",\"invoice_amount\":\"35245.05\",\"service_charge\":\"2050.83\",\"fuel_surcharge\":\"12056.78\",\"discount\":\"0\",\"taxable_value\":\"49352.52\",\"cgst_per\":\"0\",\"cgst_amt\":\"4441.74\",\"sgst_per\":\"0\",\"sgst_amt\":\"4441.74\",\"igst_per\":\"0\",\"igst_amt\":\"0\",\"utgst_per\":\"0\",\"utgst_amt\":\"0\",\"interest_free_refundable_sd\":\"0\",\"total_invoice_value\":\"58236\",\"transaction_id\":\"\",\"sac_no\":\"9968\",\"description_of_service\":\"\",\"dtdc_registered_state\":\"KARNATAKA\",\"dtdc_off_gstin_number\":\"29AAACD8017H1ZO\",\"fr_registered_state\":\"KARNATAKA\",\"fr_gstin_number\":\"29DXKPS1454Q1ZG\",\"track_id\":\"1607854073516\",\"entry_date_time\":\"2020-12-13 15:37:53\",\"inv_type\":\"1\"}]', '16078540731303.csv'),
(7, 'INV', 1, '2020-12-13 15:41:39', '::1', '1607854299294', 1, 0, 0, '[]', '[{\"fr_code\":\"BF1850\",\"fr_name\":\"BLR - SULTANPALYA (NEW)\",\"invoice_period\":\"30-11-2020 to 30-11-2020\",\"invoice_number\":\"KA2129082893\",\"invoice_date\":\"2020-12-01\",\"invoice_amount\":\"35245.05\",\"service_charge\":\"2050.83\",\"fuel_surcharge\":\"12056.78\",\"discount\":\"0\",\"taxable_value\":\"49352.52\",\"cgst_per\":\"0\",\"cgst_amt\":\"4441.74\",\"sgst_per\":\"0\",\"sgst_amt\":\"4441.74\",\"igst_per\":\"0\",\"igst_amt\":\"0\",\"utgst_per\":\"0\",\"utgst_amt\":\"0\",\"interest_free_refundable_sd\":\"0\",\"total_invoice_value\":\"58236\",\"transaction_id\":\"\",\"sac_no\":\"9968\",\"description_of_service\":\"\",\"dtdc_registered_state\":\"KARNATAKA\",\"dtdc_off_gstin_number\":\"29AAACD8017H1ZO\",\"fr_registered_state\":\"KARNATAKA\",\"fr_gstin_number\":\"29DXKPS1454Q1ZG\",\"track_id\":\"1607854299294\",\"entry_date_time\":\"2020-12-13 15:41:39\",\"inv_type\":\"1\"}]', '16078542991228.csv'),
(8, 'INV', 1, '2020-12-13 15:43:43', '::1', '1607854422315', 1, 0, 0, '[]', '[{\"fr_code\":\"BF1850\",\"fr_name\":\"BLR - SULTANPALYA (NEW)\",\"invoice_period\":\"30-11-2020 to 30-11-2020\",\"invoice_number\":\"KA2129082893\",\"invoice_date\":\"2020-12-01\",\"invoice_amount\":\"35245.05\",\"service_charge\":\"2050.83\",\"fuel_surcharge\":\"12056.78\",\"discount\":\"0\",\"taxable_value\":\"49352.52\",\"cgst_per\":\"0\",\"cgst_amt\":\"4441.74\",\"sgst_per\":\"0\",\"sgst_amt\":\"4441.74\",\"igst_per\":\"0\",\"igst_amt\":\"0\",\"utgst_per\":\"0\",\"utgst_amt\":\"0\",\"interest_free_refundable_sd\":\"0\",\"total_invoice_value\":\"58236\",\"transaction_id\":\"\",\"sac_no\":\"9968\",\"description_of_service\":\"\",\"dtdc_registered_state\":\"KARNATAKA\",\"dtdc_off_gstin_number\":\"29AAACD8017H1ZO\",\"fr_registered_state\":\"KARNATAKA\",\"fr_gstin_number\":\"29DXKPS1454Q1ZG\",\"track_id\":\"1607854422315\",\"entry_date_time\":\"2020-12-13 15:43:42\",\"inv_type\":\"1\"}]', '16078544228091.csv'),
(9, 'INV', 1, '2020-12-13 15:44:31', '::1', '1607854470887', 1, 1, 0, '[]', '[{\"fr_code\":\"BF1850\",\"fr_name\":\"BLR - SULTANPALYA (NEW)\",\"invoice_period\":\"30-11-2020 to 30-11-2020\",\"invoice_number\":\"KA2129082893\",\"invoice_date\":\"2020-12-01\",\"invoice_amount\":\"35245.05\",\"service_charge\":\"2050.83\",\"fuel_surcharge\":\"12056.78\",\"discount\":\"0\",\"taxable_value\":\"49352.52\",\"cgst_per\":\"0\",\"cgst_amt\":\"4441.74\",\"sgst_per\":\"0\",\"sgst_amt\":\"4441.74\",\"igst_per\":\"0\",\"igst_amt\":\"0\",\"utgst_per\":\"0\",\"utgst_amt\":\"0\",\"interest_free_refundable_sd\":\"0\",\"total_invoice_value\":\"58236\",\"transaction_id\":\"\",\"sac_no\":\"9968\",\"description_of_service\":\"\",\"dtdc_registered_state\":\"KARNATAKA\",\"dtdc_off_gstin_number\":\"29AAACD8017H1ZO\",\"fr_registered_state\":\"KARNATAKA\",\"fr_gstin_number\":\"29DXKPS1454Q1ZG\",\"track_id\":\"1607854470887\",\"entry_date_time\":\"2020-12-13 15:44:30\",\"inv_type\":\"1\"}]', '16078544708802.csv'),
(10, 'INV', 1, '2020-12-13 15:46:11', '::1', '1607854557669', 0, 246, 0, '[]', '[{\"fr_code\":\"BF1850\",\"fr_name\":\"BLR - SULTANPALYA (NEW)\",\"invoice_period\":\"30-11-2020 to 30-11-2020\",\"invoice_number\":\"KA2129082893\",\"invoice_date\":\"2020-12-01\",\"invoice_amount\":\"35245.05\",\"service_charge\":\"2050.83\",\"fuel_surcharge\":\"12056.78\",\"discount\":\"0\",\"taxable_value\":\"49352.52\",\"cgst_per\":\"0\",\"cgst_amt\":\"4441.74\",\"sgst_per\":\"0\",\"sgst_amt\":\"4441.74\",\"igst_per\":\"0\",\"igst_amt\":\"0\",\"utgst_per\":\"0\",\"utgst_amt\":\"0\",\"interest_free_refundable_sd\":\"0\",\"total_invoice_value\":\"58236\",\"transaction_id\":\"\",\"sac_no\":\"9968\",\"description_of_service\":\"\",\"dtdc_registered_state\":\"KARNATAKA\",\"dtdc_off_gstin_number\":\"29AAACD8017H1ZO\",\"fr_registered_state\":\"KARNATAKA\",\"fr_gstin_number\":\"29DXKPS1454Q1ZG\",\"track_id\":\"1607854557669\",\"entry_date_time\":\"2020-12-13 15:45:57\",\"inv_type\":\"1\"}]', '16078545575918.csv');
INSERT INTO `haashtag_import_history` (`history_id`, `type`, `imported_user`, `imported_date`, `ip_address`, `track_id`, `inserted`, `updated`, `error`, `error_list`, `success_list`, `csv_file`) VALUES
(11, 'BOOK', 1, '2020-12-13 16:42:41', '::1', '1607857958505', 29, 0, 0, '[]', '[{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"20428587\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"RMI\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560092\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"\",\"dsr_booking_time\":\"07:56:15\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"\",\"dsr_value\":\"\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B61\",\"dsr_refno\":\"B75151715\",\"mod_time\":\"756\",\"nodeid\":\"192.168.1.\",\"userid\":\"\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:38\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B73372024\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.74\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"KRR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"639002\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"18\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:06\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B73372024\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2024\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BL10809\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0.167\",\"dsr_captured_weight\":\"0.74\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:38\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149417\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.02\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"RPT\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"632513\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"8.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"\",\"dsr_booking_time\":\"20:57:55\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"OPF\",\"dsr_value\":\"\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2204\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.02\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:38\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149450\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"1.84\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"HIA\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"700157\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"146\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007426\",\"dsr_booking_time\":\"17:47:11\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75149450\",\"dsr_value\":\"10\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1822\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0045\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"1.84\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:38\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149451\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.63\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"MUB\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"583234\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"13.75\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007427\",\"dsr_booking_time\":\"17:48:11\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"DRY FRUITS\",\"dsr_remarks\":\"FR-B75149451\",\"dsr_value\":\"100\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1822\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0045\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.63\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:38\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149555\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560064\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007425\",\"dsr_booking_time\":\"09:29:55\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149555\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1233\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:38\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149556\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560094\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007424\",\"dsr_booking_time\":\"09:27:44\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149556\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1602\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:38\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149557\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560025\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149557\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:39\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149558\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560032\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149558\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:39\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149559\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560052\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149559\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:39\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149560\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560008\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149560\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:39\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149561\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560061\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149561\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:39\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149562\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560072\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149562\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:39\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149563\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560042\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149563\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:39\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149564\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.13\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"UDP\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"576104\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"6.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007331\",\"dsr_booking_time\":\"17:44:15\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149564\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.74\",\"userid\":\"PS00773\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.13\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:39\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149565\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.266\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"MUM\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"400013\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"14\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007329\",\"dsr_booking_time\":\"17:08:24\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149565\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.71\",\"userid\":\"C13507\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.266\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:39\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149566\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560005\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149566\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:39\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149993\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.76\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"HDP\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"515201\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"18\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:06\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75149993\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2034\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0.167\",\"dsr_captured_weight\":\"0.76\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:39\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149994\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"1.31\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"GLB\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"584129\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"20.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:05\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75149994\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2034\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0.167\",\"dsr_captured_weight\":\"1.31\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:40\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149996\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.02\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"PNQ\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"411038\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"14\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"\",\"dsr_booking_time\":\"20:43:08\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"OPF\",\"dsr_value\":\"\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2204\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.02\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:40\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150043\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"562102\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007425\",\"dsr_booking_time\":\"09:29:55\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75150043\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"1.21766E+11\",\"mod_time\":\"1846\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:40\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150044\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560092\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007423\",\"dsr_booking_time\":\"09:26:11\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75150044\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"1.21766E+11\",\"mod_time\":\"1825\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:40\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150046\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560064\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007424\",\"dsr_booking_time\":\"09:27:44\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75150046\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"1.21766E+11\",\"mod_time\":\"1603\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:40\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150118\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"1.35\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"KKL\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"574105\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"20.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:05\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75150118\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2034\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0.167\",\"dsr_captured_weight\":\"1.35\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:40\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150119\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.1\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560038\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"\",\"dsr_booking_time\":\"21:44:59\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"OPF\",\"dsr_value\":\"\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2245\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.1\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:40\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75151372\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.4\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560105\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"6.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:06\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75151372\",\"dsr_value\":\"1000\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2034\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.4\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:40\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75151729\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560064\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007425\",\"dsr_booking_time\":\"09:29:55\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75151729\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1233\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:40\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"D61835819\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"50\",\"dsr_cn_type\":\"AC1\",\"dsr_dest\":\"JMD\",\"dsr_mode\":\"AC\",\"dsr_no_of_pieces\":\"2\",\"dsr_dest_pin\":\"831005\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"3250\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007428\",\"dsr_booking_time\":\"19:39:42\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-D61835819\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2017\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"2.666\",\"dsr_captured_weight\":\"50\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:40\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"D61835830\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"4.9\",\"dsr_cn_type\":\"AC1\",\"dsr_dest\":\"AGR\",\"dsr_mode\":\"AC\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"282007\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"340\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007429\",\"dsr_booking_time\":\"19:42:17\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-D61835830\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2017\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"4.9\",\"dsr_captured_weight\":\"3.18\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607857958505\",\"entry_date_time\":\"2020-12-13 16:42:41\"}]', '16078579585207.csv');
INSERT INTO `haashtag_import_history` (`history_id`, `type`, `imported_user`, `imported_date`, `ip_address`, `track_id`, `inserted`, `updated`, `error`, `error_list`, `success_list`, `csv_file`) VALUES
(12, 'BOOK', 1, '2020-12-13 17:04:23', '::1', '1607859261351', 1, 28, 0, '[]', '[{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"20428587\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"RMI\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560092\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"\",\"dsr_booking_time\":\"07:56:15\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"\",\"dsr_value\":\"\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B61\",\"dsr_refno\":\"B75151715\",\"mod_time\":\"756\",\"nodeid\":\"192.168.1.\",\"userid\":\"\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:21\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B73372024\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.74\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"KRR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"639002\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"18\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:06\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B73372024\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2024\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BL10809\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0.167\",\"dsr_captured_weight\":\"0.74\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:21\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149417\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.02\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"RPT\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"632513\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"8.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"\",\"dsr_booking_time\":\"20:57:55\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"OPF\",\"dsr_value\":\"\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2204\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.02\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:21\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149450\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"1.84\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"HIA\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"700157\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"146\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007426\",\"dsr_booking_time\":\"17:47:11\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75149450\",\"dsr_value\":\"10\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1822\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0045\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"1.84\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:21\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149451\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.63\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"MUB\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"583234\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"13.75\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007427\",\"dsr_booking_time\":\"17:48:11\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"DRY FRUITS\",\"dsr_remarks\":\"FR-B75149451\",\"dsr_value\":\"100\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1822\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0045\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.63\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:21\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149555\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560064\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007425\",\"dsr_booking_time\":\"09:29:55\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149555\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1233\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:21\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149556\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560094\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007424\",\"dsr_booking_time\":\"09:27:44\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149556\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1602\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:21\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149557\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560025\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149557\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:22\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149558\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560032\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149558\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:22\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149559\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560052\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149559\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:22\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149560\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560008\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149560\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:22\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149561\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560061\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149561\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:22\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149562\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560072\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149562\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:22\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149563\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560042\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149563\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:22\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149564\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.13\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"UDP\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"576104\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"6.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007331\",\"dsr_booking_time\":\"17:44:15\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149564\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.74\",\"userid\":\"PS00773\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.13\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:22\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149565\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.266\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"MUM\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"400013\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"14\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007329\",\"dsr_booking_time\":\"17:08:24\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149565\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.71\",\"userid\":\"C13507\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.266\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:22\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149566\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560005\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149566\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:22\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149993\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.76\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"HDP\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"515201\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"18\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:06\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75149993\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2034\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0.167\",\"dsr_captured_weight\":\"0.76\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:22\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149994\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"1.31\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"GLB\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"584129\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"20.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:05\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75149994\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2034\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0.167\",\"dsr_captured_weight\":\"1.31\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:22\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149996\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.02\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"PNQ\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"411038\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"14\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"\",\"dsr_booking_time\":\"20:43:08\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"OPF\",\"dsr_value\":\"\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2204\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.02\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:22\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150043\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"562102\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007425\",\"dsr_booking_time\":\"09:29:55\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75150043\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"1.21766E+11\",\"mod_time\":\"1846\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:22\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150044\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560092\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007423\",\"dsr_booking_time\":\"09:26:11\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75150044\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"1.21766E+11\",\"mod_time\":\"1825\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:22\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150046\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560064\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007424\",\"dsr_booking_time\":\"09:27:44\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75150046\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"1.21766E+11\",\"mod_time\":\"1603\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:22\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150118\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"1.35\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"KKL\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"574105\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"20.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:05\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75150118\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2034\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0.167\",\"dsr_captured_weight\":\"1.35\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:22\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150119\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.1\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560038\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"\",\"dsr_booking_time\":\"21:44:59\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"OPF\",\"dsr_value\":\"\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2245\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.1\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:22\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75151372\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.4\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560105\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"6.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:06\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75151372\",\"dsr_value\":\"1000\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2034\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.4\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:23\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75151729\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560064\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007425\",\"dsr_booking_time\":\"09:29:55\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75151729\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1233\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:23\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"D61835819\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"50\",\"dsr_cn_type\":\"AC1\",\"dsr_dest\":\"JMD\",\"dsr_mode\":\"AC\",\"dsr_no_of_pieces\":\"2\",\"dsr_dest_pin\":\"831005\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"3250\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007428\",\"dsr_booking_time\":\"19:39:42\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-D61835819\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2017\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"2.666\",\"dsr_captured_weight\":\"50\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:23\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"D61835830\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"4.9\",\"dsr_cn_type\":\"AC1\",\"dsr_dest\":\"AGR\",\"dsr_mode\":\"AC\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"282007\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"340\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007429\",\"dsr_booking_time\":\"19:42:17\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-D61835830\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2017\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"4.9\",\"dsr_captured_weight\":\"3.18\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859261351\",\"entry_date_time\":\"2020-12-13 17:04:23\"}]', '16078592616687.csv');
INSERT INTO `haashtag_import_history` (`history_id`, `type`, `imported_user`, `imported_date`, `ip_address`, `track_id`, `inserted`, `updated`, `error`, `error_list`, `success_list`, `csv_file`) VALUES
(13, 'BOOK', 1, '2020-12-13 17:04:51', '::1', '1607859289397', 0, 29, 0, '[]', '[{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"20428587\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"RMI\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560092\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"\",\"dsr_booking_time\":\"07:56:15\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"\",\"dsr_value\":\"\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B61\",\"dsr_refno\":\"B75151715\",\"mod_time\":\"756\",\"nodeid\":\"192.168.1.\",\"userid\":\"\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:49\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B73372024\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.74\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"KRR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"639002\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"18\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:06\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B73372024\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2024\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BL10809\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0.167\",\"dsr_captured_weight\":\"0.74\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:49\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149417\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.02\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"RPT\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"632513\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"8.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"\",\"dsr_booking_time\":\"20:57:55\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"OPF\",\"dsr_value\":\"\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2204\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.02\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:49\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149450\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"1.84\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"HIA\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"700157\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"146\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007426\",\"dsr_booking_time\":\"17:47:11\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75149450\",\"dsr_value\":\"10\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1822\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0045\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"1.84\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:49\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149451\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.63\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"MUB\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"583234\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"13.75\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007427\",\"dsr_booking_time\":\"17:48:11\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"DRY FRUITS\",\"dsr_remarks\":\"FR-B75149451\",\"dsr_value\":\"100\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1822\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0045\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.63\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:49\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149555\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560064\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007425\",\"dsr_booking_time\":\"09:29:55\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149555\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1233\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:49\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149556\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560094\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007424\",\"dsr_booking_time\":\"09:27:44\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149556\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1602\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:50\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149557\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560025\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149557\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:50\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149558\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560032\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149558\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:50\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149559\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560052\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149559\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:50\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149560\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560008\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149560\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:50\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149561\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560061\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149561\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:50\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149562\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560072\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149562\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:50\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149563\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560042\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149563\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:50\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149564\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.13\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"UDP\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"576104\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"6.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007331\",\"dsr_booking_time\":\"17:44:15\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149564\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.74\",\"userid\":\"PS00773\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.13\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:50\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149565\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.266\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"MUM\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"400013\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"14\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007329\",\"dsr_booking_time\":\"17:08:24\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149565\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.71\",\"userid\":\"C13507\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.266\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:50\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149566\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560005\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149566\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:50\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149993\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.76\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"HDP\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"515201\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"18\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:06\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75149993\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2034\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0.167\",\"dsr_captured_weight\":\"0.76\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:51\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149994\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"1.31\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"GLB\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"584129\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"20.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:05\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75149994\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2034\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0.167\",\"dsr_captured_weight\":\"1.31\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:51\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149996\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.02\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"PNQ\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"411038\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"14\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"\",\"dsr_booking_time\":\"20:43:08\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"OPF\",\"dsr_value\":\"\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2204\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.02\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:51\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150043\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"562102\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007425\",\"dsr_booking_time\":\"09:29:55\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75150043\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"1.21766E+11\",\"mod_time\":\"1846\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:51\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150044\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560092\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007423\",\"dsr_booking_time\":\"09:26:11\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75150044\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"1.21766E+11\",\"mod_time\":\"1825\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:51\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150046\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560064\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007424\",\"dsr_booking_time\":\"09:27:44\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75150046\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"1.21766E+11\",\"mod_time\":\"1603\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:51\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150118\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"1.35\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"KKL\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"574105\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"20.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:05\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75150118\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2034\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0.167\",\"dsr_captured_weight\":\"1.35\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:51\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150119\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.1\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560038\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"\",\"dsr_booking_time\":\"21:44:59\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"OPF\",\"dsr_value\":\"\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2245\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.1\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:51\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75151372\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.4\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560105\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"6.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:06\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75151372\",\"dsr_value\":\"1000\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2034\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.4\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:51\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75151729\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560064\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007425\",\"dsr_booking_time\":\"09:29:55\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75151729\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1233\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:51\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"D61835819\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"50\",\"dsr_cn_type\":\"AC1\",\"dsr_dest\":\"JMD\",\"dsr_mode\":\"AC\",\"dsr_no_of_pieces\":\"2\",\"dsr_dest_pin\":\"831005\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"3250\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007428\",\"dsr_booking_time\":\"19:39:42\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-D61835819\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2017\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"2.666\",\"dsr_captured_weight\":\"50\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:51\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"D61835830\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"4.9\",\"dsr_cn_type\":\"AC1\",\"dsr_dest\":\"AGR\",\"dsr_mode\":\"AC\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"282007\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"340\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007429\",\"dsr_booking_time\":\"19:42:17\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-D61835830\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2017\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"4.9\",\"dsr_captured_weight\":\"3.18\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607859289397\",\"entry_date_time\":\"2020-12-13 17:04:51\"}]', '16078592899261.csv');
INSERT INTO `haashtag_import_history` (`history_id`, `type`, `imported_user`, `imported_date`, `ip_address`, `track_id`, `inserted`, `updated`, `error`, `error_list`, `success_list`, `csv_file`) VALUES
(14, 'BOOK', 1, '2020-12-13 17:27:00', '::1', '1607860617204', 0, 29, 0, '[]', '[{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"20428587\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"RMI\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560092\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"\",\"dsr_booking_time\":\"07:56:15\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"\",\"dsr_value\":\"\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B61\",\"dsr_refno\":\"B75151715\",\"mod_time\":\"756\",\"nodeid\":\"192.168.1.\",\"userid\":\"\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:26:57\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B73372024\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.74\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"KRR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"639002\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"18\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:06\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B73372024\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2024\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BL10809\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0.167\",\"dsr_captured_weight\":\"0.74\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:26:58\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149417\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.02\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"RPT\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"632513\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"8.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"\",\"dsr_booking_time\":\"20:57:55\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"OPF\",\"dsr_value\":\"\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2204\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.02\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:26:58\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149450\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"1.84\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"HIA\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"700157\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"146\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007426\",\"dsr_booking_time\":\"17:47:11\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75149450\",\"dsr_value\":\"10\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1822\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0045\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"1.84\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:26:58\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149451\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.63\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"MUB\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"583234\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"13.75\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007427\",\"dsr_booking_time\":\"17:48:11\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"DRY FRUITS\",\"dsr_remarks\":\"FR-B75149451\",\"dsr_value\":\"100\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1822\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0045\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.63\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:26:58\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149555\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560064\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007425\",\"dsr_booking_time\":\"09:29:55\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149555\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1233\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:26:58\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149556\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560094\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007424\",\"dsr_booking_time\":\"09:27:44\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149556\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1602\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:26:58\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149557\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560025\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149557\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:26:58\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149558\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560032\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149558\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:26:58\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149559\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560052\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149559\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:26:58\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149560\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560008\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149560\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:26:58\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149561\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560061\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149561\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:26:58\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149562\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560072\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149562\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:26:58\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149563\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560042\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149563\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:26:58\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149564\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.13\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"UDP\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"576104\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"6.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007331\",\"dsr_booking_time\":\"17:44:15\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149564\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.74\",\"userid\":\"PS00773\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.13\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:26:59\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149565\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.266\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"MUM\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"400013\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"14\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007329\",\"dsr_booking_time\":\"17:08:24\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149565\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.71\",\"userid\":\"C13507\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.266\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:26:59\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149566\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.25\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560005\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007330\",\"dsr_booking_time\":\"17:29:45\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75149566\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"BO\",\"office_code\":\"B07\",\"dsr_refno\":\"1.21768E+11\",\"mod_time\":\"1822\",\"nodeid\":\"10.20.1.70\",\"userid\":\"PBL2405\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"9845091018\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.25\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:26:59\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149993\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.76\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"HDP\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"515201\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"18\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:06\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75149993\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2034\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0.167\",\"dsr_captured_weight\":\"0.76\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:26:59\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149994\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"1.31\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"GLB\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"584129\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"20.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:05\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75149994\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2034\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0.167\",\"dsr_captured_weight\":\"1.31\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:26:59\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75149996\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.02\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"PNQ\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"411038\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"14\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"\",\"dsr_booking_time\":\"20:43:08\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"OPF\",\"dsr_value\":\"\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2204\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.02\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:26:59\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150043\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"562102\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007425\",\"dsr_booking_time\":\"09:29:55\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75150043\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"1.21766E+11\",\"mod_time\":\"1846\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:26:59\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150044\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560092\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007423\",\"dsr_booking_time\":\"09:26:11\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75150044\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"1.21766E+11\",\"mod_time\":\"1825\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:26:59\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150046\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560064\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007424\",\"dsr_booking_time\":\"09:27:44\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75150046\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"1.21766E+11\",\"mod_time\":\"1603\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:27:00\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150118\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"1.35\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"KKL\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"574105\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"20.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:05\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75150118\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2034\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"0.167\",\"dsr_captured_weight\":\"1.35\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:27:00\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75150119\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.1\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560038\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"\",\"dsr_booking_time\":\"21:44:59\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"OPF\",\"dsr_value\":\"\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2245\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.1\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:27:00\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75151372\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.4\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560105\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"6.5\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007430\",\"dsr_booking_time\":\"19:44:06\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-B75151372\",\"dsr_value\":\"1000\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2034\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.4\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:27:00\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"B75151729\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"0.05\",\"dsr_cn_type\":\"AR1\",\"dsr_dest\":\"BLR\",\"dsr_mode\":\"AR\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"560064\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"4.25\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007425\",\"dsr_booking_time\":\"09:29:55\",\"dsr_dox\":\"D\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"\",\"dsr_remarks\":\"FR-B75151729\",\"dsr_value\":\"0\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"1233\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0163\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"\",\"dsr_captured_weight\":\"0.05\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:27:00\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"D61835819\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"50\",\"dsr_cn_type\":\"AC1\",\"dsr_dest\":\"JMD\",\"dsr_mode\":\"AC\",\"dsr_no_of_pieces\":\"2\",\"dsr_dest_pin\":\"831005\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"3250\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007428\",\"dsr_booking_time\":\"19:39:42\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-D61835819\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2017\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"2.666\",\"dsr_captured_weight\":\"50\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:27:00\"},{\"dsr_branch_code\":\"B26\",\"dsr_cnno\":\"D61835830\",\"dsr_booked_by\":\"F\",\"dsr_cust_code\":\"BF1850\",\"dsr_cn_weight\":\"4.9\",\"dsr_cn_type\":\"AC1\",\"dsr_dest\":\"AGR\",\"dsr_mode\":\"AC\",\"dsr_no_of_pieces\":\"1\",\"dsr_dest_pin\":\"282007\",\"dsr_booking_date\":\"2020-12-12\",\"dsr_amt\":\"340\",\"dsr_status\":\"B\",\"dsr_pod_recd\":\"\",\"dsr_transmf_no\":\"3677007429\",\"dsr_booking_time\":\"19:42:17\",\"dsr_dox\":\"N\",\"dsr_service_tax\":\"\",\"dsr_spl_disc\":\"\",\"dsr_contents\":\"ELECTRONIC ITEMS\",\"dsr_remarks\":\"FR-D61835830\",\"dsr_value\":\"500\",\"dsr_invno\":\"\",\"dsr_invdate\":\"1970-01-01\",\"mod_date\":\"2020-12-12\",\"office_type\":\"MF\",\"office_code\":\"B26\",\"dsr_refno\":\"\",\"mod_time\":\"2017\",\"nodeid\":\"192.168.1.\",\"userid\":\"BOS0044\",\"trans_status\":\"A\",\"dsr_act_cust_code\":\"BF1850\",\"dsr_mobile\":\"\",\"dsr_email\":\"\",\"dsr_ndx_paper\":\"N\",\"dsr_pickup_time\":\"\",\"dsr_vol_weight\":\"4.9\",\"dsr_captured_weight\":\"3.18\",\"dsr_id_num\":\"\",\"customer_code\":\"\",\"track_id\":\"1607860617204\",\"entry_date_time\":\"2020-12-13 17:27:00\"}]', '16078606175894.csv'),
(15, 'INV', 1, '2020-12-13 17:27:47', '::1', '1607860652513', 0, 246, 0, '[]', '[{\"fr_code\":\"BF1850\",\"fr_name\":\"BLR - SULTANPALYA (NEW)\",\"invoice_period\":\"30-11-2020 to 30-11-2020\",\"invoice_number\":\"KA2129082893\",\"invoice_date\":\"2020-12-01\",\"invoice_amount\":\"35245.05\",\"service_charge\":\"2050.83\",\"fuel_surcharge\":\"12056.78\",\"discount\":\"0\",\"taxable_value\":\"49352.52\",\"cgst_per\":\"0\",\"cgst_amt\":\"4441.74\",\"sgst_per\":\"0\",\"sgst_amt\":\"4441.74\",\"igst_per\":\"0\",\"igst_amt\":\"0\",\"utgst_per\":\"0\",\"utgst_amt\":\"0\",\"interest_free_refundable_sd\":\"0\",\"total_invoice_value\":\"58236\",\"transaction_id\":\"\",\"sac_no\":\"9968\",\"description_of_service\":\"\",\"dtdc_registered_state\":\"KARNATAKA\",\"dtdc_off_gstin_number\":\"29AAACD8017H1ZO\",\"fr_registered_state\":\"KARNATAKA\",\"fr_gstin_number\":\"29DXKPS1454Q1ZG\",\"track_id\":\"1607860652513\",\"entry_date_time\":\"2020-12-13 17:27:32\",\"inv_type\":\"1\"}]', '16078606524736.csv');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_input_type`
--

CREATE TABLE `haashtag_input_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL,
  `type_code` varchar(10) NOT NULL,
  `is_multi` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_input_type`
--

INSERT INTO `haashtag_input_type` (`type_id`, `type_name`, `type_code`, `is_multi`) VALUES
(1, 'Text', 'text', '0'),
(2, 'Date', 'date', '0'),
(3, 'Colour', 'colour', '0'),
(4, 'Drop Down', 'select', '1'),
(5, 'Checkbox', 'checkbox', '1'),
(6, 'Radio', 'radio', '1'),
(7, 'File', 'file', '0');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_invoice_entry`
--

CREATE TABLE `haashtag_invoice_entry` (
  `invoice_id` bigint(20) NOT NULL,
  `fr_code` varchar(50) NOT NULL,
  `fr_name` varchar(100) NOT NULL,
  `invoice_period` varchar(100) NOT NULL,
  `invoice_number` varchar(50) NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_amount` varchar(50) NOT NULL,
  `service_charge` varchar(50) NOT NULL,
  `fuel_surcharge` varchar(50) NOT NULL,
  `discount` varchar(50) NOT NULL,
  `taxable_value` varchar(50) NOT NULL,
  `cgst_per` varchar(50) NOT NULL,
  `cgst_amt` varchar(50) NOT NULL,
  `sgst_per` varchar(50) NOT NULL,
  `sgst_amt` varchar(50) NOT NULL,
  `igst_per` varchar(50) NOT NULL,
  `igst_amt` varchar(50) NOT NULL,
  `utgst_per` varchar(50) NOT NULL,
  `utgst_amt` varchar(50) NOT NULL,
  `interest_free_refundable_sd` varchar(50) NOT NULL,
  `total_invoice_value` varchar(50) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `sac_no` varchar(50) NOT NULL,
  `description_of_service` text NOT NULL,
  `dtdc_registered_state` varchar(100) NOT NULL,
  `dtdc_off_gstin_number` varchar(50) NOT NULL,
  `fr_registered_state` varchar(50) NOT NULL,
  `fr_gstin_number` varchar(50) NOT NULL,
  `track_id` varchar(50) NOT NULL,
  `entry_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_invoice_entry`
--

INSERT INTO `haashtag_invoice_entry` (`invoice_id`, `fr_code`, `fr_name`, `invoice_period`, `invoice_number`, `invoice_date`, `invoice_amount`, `service_charge`, `fuel_surcharge`, `discount`, `taxable_value`, `cgst_per`, `cgst_amt`, `sgst_per`, `sgst_amt`, `igst_per`, `igst_amt`, `utgst_per`, `utgst_amt`, `interest_free_refundable_sd`, `total_invoice_value`, `transaction_id`, `sac_no`, `description_of_service`, `dtdc_registered_state`, `dtdc_off_gstin_number`, `fr_registered_state`, `fr_gstin_number`, `track_id`, `entry_date_time`) VALUES
(1, 'BF1850', 'BLR - SULTANPALYA (NEW)', '30-11-2020 to 30-11-2020', 'KA2129082893', '2020-12-01', '35245.05', '2050.83', '12056.78', '0', '49352.52', '0', '4441.74', '0', '4441.74', '0', '0', '0', '0', '0', '58236', '', '9968', '', 'KARNATAKA', '29AAACD8017H1ZO', 'KARNATAKA', '29DXKPS1454Q1ZG', '1607860652513', '2020-12-13 17:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_invoice_entry_dt`
--

CREATE TABLE `haashtag_invoice_entry_dt` (
  `fr_code` varchar(50) NOT NULL,
  `consignment_number` varchar(50) NOT NULL,
  `manifest_number` varchar(50) NOT NULL,
  `booking_date` date NOT NULL,
  `destination` varchar(100) NOT NULL,
  `destination1` varchar(100) NOT NULL,
  `con_type` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `transhipment` varchar(50) NOT NULL,
  `service_charge` varchar(50) NOT NULL,
  `risk_surcharge` varchar(50) NOT NULL,
  `misc_charge` varchar(50) NOT NULL,
  `number_of_pieces` varchar(50) NOT NULL,
  `destination_pinocde` varchar(50) NOT NULL,
  `dox_type` varchar(50) NOT NULL,
  `invoice_no` varchar(50) NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `weight` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_invoice_entry_dt`
--

INSERT INTO `haashtag_invoice_entry_dt` (`fr_code`, `consignment_number`, `manifest_number`, `booking_date`, `destination`, `destination1`, `con_type`, `amount`, `transhipment`, `service_charge`, `risk_surcharge`, `misc_charge`, `number_of_pieces`, `destination_pinocde`, `dox_type`, `invoice_no`, `invoice_date`, `invoice_id`, `weight`) VALUES
('BF1850', 'B71732628', '', '2020-11-18', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560010', 'D', 'KA2129082893', '2020-12-01', 1, '0.25'),
('BF1850', 'B72112137', '3677007205', '2020-11-17', 'CHENNAI', '', 'AR1', '24.91', '18', '0', '0', '0', '1', '600034', 'D', 'KA2129082893', '2020-12-01', 1, '0.94'),
('BF1850', 'B72112399', '3677007205', '2020-11-17', 'CHENNAI', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '600008', 'D', 'KA2129082893', '2020-12-01', 1, '0.03'),
('BF1850', 'B72112443', '', '2020-11-17', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560025', 'D', 'KA2129082893', '2020-12-01', 1, '0.25'),
('BF1850', 'B72112445', '3677007204', '2020-11-17', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560048', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B72112446', '', '2020-11-17', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560008', 'D', 'KA2129082893', '2020-12-01', 1, '0.25'),
('BF1850', 'B72112448', '3677007204', '2020-11-17', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560001', 'D', 'KA2129082893', '2020-12-01', 1, '0.12'),
('BF1850', 'B72112519', '3677007205', '2020-11-17', 'CHENNAI', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '600004', 'D', 'KA2129082893', '2020-12-01', 1, '0.05'),
('BF1850', 'B72112528', '', '2020-11-17', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560008', 'D', 'KA2129082893', '2020-12-01', 1, '0.25'),
('BF1850', 'B72113600', '3677007206', '2020-11-18', 'COCHIN', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '682020', 'D', 'KA2129082893', '2020-12-01', 1, '0.05'),
('BF1850', 'B72113698', '3677007207', '2020-11-18', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560008', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73364641', '3677007223', '2020-11-17', 'MUMBAI', '', 'AR1', '130.34', '94', '0', '0', '0', '1', '400008', 'N', 'KA2129082893', '2020-12-01', 1, '1.36'),
('BF1850', 'B73371478', '3677007289', '2020-11-24', 'RAICHUR', '', 'AR1', '9.45', '7', '0', '0', '0', '1', '584101', 'N', 'KA2129082893', '2020-12-01', 1, '0.3'),
('BF1850', 'B73371479', '', '2020-11-28', 'NOIDA', '', 'AR1', '24.77', '17.5', '0', '0', '0', '1', '201307', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73371480', '', '2020-11-28', 'KOLKATA', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '700010', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73371481', '3677007333', '2020-11-28', 'SAGAR(KA)', '', 'AR1', '19.17', '13.75', '0', '0', '0', '1', '577401', 'N', 'KA2129082893', '2020-12-01', 1, '0.81'),
('BF1850', 'B73371482', '', '2020-11-30', 'CUDDAPAH', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '516004', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73371483', '', '2020-11-30', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73371484', '', '2020-11-30', 'KOLKATA', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '700001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73371485', '', '2020-11-30', 'BELGAUM', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '590001', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73371486', '', '2020-11-30', 'HOSUR', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '635109', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73371707', '', '2020-11-25', 'BELGAUM', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '590001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372018', '', '2020-11-28', 'KARUR', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '639002', 'D', 'KA2129082893', '2020-12-01', 1, '0.2'),
('BF1850', 'B73372019', '', '2020-11-25', 'SALEM', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '636001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372020', '', '2020-11-25', 'SALEM', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '636001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372021', '3677007333', '2020-11-28', 'KARUR', '', 'AR1', '64.19', '45.75', '0', '0', '0', '1', '639002', 'N', 'KA2129082893', '2020-12-01', 1, '2.12'),
('BF1850', 'B73372022', '', '2020-11-30', 'SALEM', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '643101', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73372098', '3677007308', '2020-11-25', 'DELHI', '', 'AR1', '84.65', '61', '0', '0', '0', '1', '110021', 'N', 'KA2129082893', '2020-12-01', 1, '0.88'),
('BF1850', 'B73372099', '3677007310', '2020-11-25', 'MUMBAI', '', 'AR1', '130.34', '94', '0', '0', '0', '1', '400093', 'N', 'KA2129082893', '2020-12-01', 1, '1.23'),
('BF1850', 'B73372488', '', '2020-11-25', 'MANGALORE', '', 'AR1', '9.45', '7', '0', '0', '0', '1', '575011', 'D', 'KA2129082893', '2020-12-01', 1, '0.5'),
('BF1850', 'B73372489', '3677007307', '2020-11-25', 'FARIDABAD', '', 'AR1', '359.03', '260', '0', '0', '0', '1', '121010', 'N', 'KA2129082893', '2020-12-01', 1, '3.2'),
('BF1850', 'B73372490', '', '2020-11-27', 'SURATKAL', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '575019', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372491', '', '2020-11-27', 'DELHI', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '110089', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372492', '', '2020-11-27', 'PUNE', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '412207', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372493', '', '2020-11-27', 'GURGAON', '', 'AR1', '24.77', '17.5', '0', '0', '0', '1', '122001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372560', '', '2020-11-18', 'VISHAKAPATNAM', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '530001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372561', '', '2020-11-18', 'CHENNAI', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '600002', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73372562', '3677007246', '2020-11-19', 'DELHI', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '110049', 'N', 'KA2129082893', '2020-12-01', 1, '0.12'),
('BF1850', 'B73372563', '3677007245', '2020-11-19', 'GULBARGA', '', 'AR1', '19.17', '13.75', '0', '0', '0', '1', '585102', 'N', 'KA2129082893', '2020-12-01', 1, '0.52'),
('BF1850', 'B73372677', '', '2020-11-17', 'HYDERABAD', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '500081', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372678', '', '2020-11-17', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560071', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372679', '', '2020-11-18', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560082', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372680', '', '2020-11-18', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560082', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372681', '', '2020-11-18', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560082', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372682', '', '2020-11-18', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560034', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372683', '3677007245', '2020-11-19', 'KONNI', '', 'AR1', '24.91', '18', '0', '0', '0', '1', '689691', 'N', 'KA2129082893', '2020-12-01', 1, '0.66'),
('BF1850', 'B73372684', '', '2020-11-20', 'DHARWAD', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '580001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372685', '', '2020-11-20', 'HYDERABAD', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '500034', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372686', '3677007275', '2020-11-23', 'HYDERABAD', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '500001', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73372687', '', '2020-11-24', 'COCHIN', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '682002', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73372688', '3677007275', '2020-11-23', 'BANGALORE', '', 'AR1', '18.16', '13', '0', '0', '0', '1', '560043', 'D', 'KA2129082893', '2020-12-01', 1, '0.8'),
('BF1850', 'B73372689', '', '2020-11-24', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560010', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372690', '', '2020-11-24', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560068', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372691', '', '2020-11-25', 'BHUBANESHWAR', '', 'AR1', '24.77', '17.5', '0', '0', '0', '1', '751001', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73372692', '', '2020-11-25', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560038', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372693', '', '2020-11-25', 'HYDERABAD', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '500032', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73372694', '', '2020-11-26', 'COIMBATORE', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '641001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372695', '', '2020-11-26', 'THANE', '', 'AR1', '24.77', '17.5', '0', '0', '0', '1', '400701', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73372696', '3677007277', '2020-11-27', 'MUMBAI', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '400013', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372697', '3677007277', '2020-11-27', 'VASHI', '', 'AR1', '24.77', '17.5', '0', '0', '0', '1', '400710', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372805', '', '2020-11-18', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560058', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73372806', '', '2020-11-18', 'KHARGHAR', '', 'AR1', '24.77', '17.5', '0', '0', '0', '1', '410210', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73372807', '3677007241', '2020-11-19', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560064', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73372808', '', '2020-11-20', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560015', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372809', '', '2020-11-20', 'HYDERABAD', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '500032', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372810', '3677007282', '2020-11-24', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560064', 'D', 'KA2129082893', '2020-12-01', 1, '0.05'),
('BF1850', 'B73372811', '', '2020-11-23', 'MUMBAI', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '400059', 'D', 'KA2129082893', '2020-12-01', 1, '0.05'),
('BF1850', 'B73372813', '', '2020-11-24', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560109', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372815', '', '2020-11-26', 'MUMBAI', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '400059', 'D', 'KA2129082893', '2020-12-01', 1, '0.05'),
('BF1850', 'B73372816', '', '2020-11-30', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560018', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372875', '', '2020-11-16', 'CHENNAI', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '600049', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73372876', '', '2020-11-16', 'GURGAON', '', 'AR1', '24.77', '17.5', '0', '0', '0', '1', '122001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372877', '', '2020-11-16', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560041', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73372878', '3677007221', '2020-11-16', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560072', 'N', 'KA2129082893', '2020-12-01', 1, '0.2'),
('BF1850', 'B73372879', '', '2020-11-16', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560068', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372880', '3677007222', '2020-11-16', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560034', 'N', 'KA2129082893', '2020-12-01', 1, '0.22'),
('BF1850', 'B73372881', '3677007222', '2020-11-16', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560076', 'N', 'KA2129082893', '2020-12-01', 1, '0.2'),
('BF1850', 'B73372882', '', '2020-11-16', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560084', 'D', 'KA2129082893', '2020-12-01', 1, '0.15'),
('BF1850', 'B73372883', '', '2020-11-16', 'MUMBAI', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '400055', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73372884', '', '2020-11-16', 'MUMBAI', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '401202', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372885', '', '2020-11-16', 'UJJAIN', '', 'AR1', '24.77', '17.5', '0', '0', '0', '1', '456010', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372886', '', '2020-11-16', 'PALGHAR', '', 'AR1', '24.77', '17.5', '0', '0', '0', '1', '401209', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73372887', '', '2020-11-17', 'COIMBATORE', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '641037', 'D', 'KA2129082893', '2020-12-01', 1, '0.05'),
('BF1850', 'B73372888', '3677007219', '2020-11-16', 'BANGALORE', '', 'AR1', '18.16', '13', '0', '0', '0', '1', '560099', 'N', 'KA2129082893', '2020-12-01', 1, '0.86'),
('BF1850', 'B73372889', '3677007220', '2020-11-16', 'BANGALORE', '', 'AR1', '18.16', '13', '0', '0', '0', '1', '560102', 'N', 'KA2129082893', '2020-12-01', 1, '0.87'),
('BF1850', 'B73372890', '3677007219', '2020-11-16', 'SALEM', '', 'AR1', '24.91', '18', '0', '0', '0', '1', '636016', 'N', 'KA2129082893', '2020-12-01', 1, '0.86'),
('BF1850', 'B73372891', '3677007219', '2020-11-16', 'BANGALORE', '', 'AR1', '18.16', '13', '0', '0', '0', '1', '560070', 'N', 'KA2129082893', '2020-12-01', 1, '0.93'),
('BF1850', 'B73372892', '3677007220', '2020-11-16', 'BANGALORE', '', 'AR1', '18.16', '13', '0', '0', '0', '1', '560100', 'N', 'KA2129082893', '2020-12-01', 1, '0.85'),
('BF1850', 'B73372893', '3677007220', '2020-11-16', 'BANGALORE', '', 'AR1', '18.16', '13', '0', '0', '0', '1', '560035', 'N', 'KA2129082893', '2020-12-01', 1, '0.87'),
('BF1850', 'B73372894', '3677007219', '2020-11-16', 'BANGALORE', '', 'AR1', '18.16', '13', '0', '0', '0', '1', '560015', 'N', 'KA2129082893', '2020-12-01', 1, '0.93'),
('BF1850', 'B73372895', '3677007219', '2020-11-16', 'BANGALORE', '', 'AR1', '18.16', '13', '0', '0', '0', '1', '560105', 'N', 'KA2129082893', '2020-12-01', 1, '0.86'),
('BF1850', 'B73372896', '3677007219', '2020-11-16', 'BANGALORE', '', 'AR1', '18.16', '13', '0', '0', '0', '1', '560043', 'N', 'KA2129082893', '2020-12-01', 1, '0.92'),
('BF1850', 'B73372897', '3677007219', '2020-11-16', 'BANGALORE', '', 'AR1', '18.16', '13', '0', '0', '0', '1', '560102', 'N', 'KA2129082893', '2020-12-01', 1, '0.9'),
('BF1850', 'B73372898', '3677007219', '2020-11-16', 'ERODE', '', 'AR1', '24.91', '18', '0', '0', '0', '1', '638002', 'N', 'KA2129082893', '2020-12-01', 1, '0.9'),
('BF1850', 'B73372899', '3677007219', '2020-11-16', 'PADUBIDRI', '', 'AR1', '19.17', '13.75', '0', '0', '0', '1', '574111', 'N', 'KA2129082893', '2020-12-01', 1, '0.9'),
('BF1850', 'B73372904', '3677007227', '2020-11-17', 'KOLKATA', '', 'AR1', '176.04', '127', '0', '0', '0', '1', '700107', 'N', 'KA2129082893', '2020-12-01', 1, '1.7'),
('BF1850', 'B73372905', '3677007228', '2020-11-17', 'BANGALORE', '', 'AR1', '18.16', '13', '0', '0', '0', '1', '560037', 'N', 'KA2129082893', '2020-12-01', 1, '0.8'),
('BF1850', 'B73372906', '3677007239', '2020-11-18', 'SALKIA', '', 'AR1', '96.8', '70', '0', '0', '0', '1', '711106', 'N', 'KA2129082893', '2020-12-01', 1, '0.6'),
('BF1850', 'B73372907', '', '2020-11-18', 'DELHI', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '110017', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73372908', '3677007237', '2020-11-18', 'THANE', '', 'AR1', '24.77', '17.5', '0', '0', '0', '1', '400701', 'N', 'KA2129082893', '2020-12-01', 1, '0.17'),
('BF1850', 'B73372909', '', '2020-11-19', 'AMBUR', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '635802', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73372910', '', '2020-11-19', 'MANGALORE', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '575002', 'D', 'KA2129082893', '2020-12-01', 1, '0.03'),
('BF1850', 'B73372911', '', '2020-11-19', 'MUMBAI', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '400011', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73372912', '', '2020-11-20', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560029', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73372913', '', '2020-11-20', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560029', 'D', 'KA2129082893', '2020-12-01', 1, '0.05'),
('BF1850', 'B73372914', '3677007266', '2020-11-20', 'BANGALORE', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '560097', 'N', 'KA2129082893', '2020-12-01', 1, '0.48'),
('BF1850', 'B73372915', '3677007266', '2020-11-20', 'DAVANGERE', '', 'AR1', '9.45', '7', '0', '0', '0', '1', '577004', 'N', 'KA2129082893', '2020-12-01', 1, '0.3'),
('BF1850', 'B73372916', '3677007266', '2020-11-20', 'BANGALORE', '', 'AR1', '27.54', '19.5', '0', '0', '0', '1', '560019', 'N', 'KA2129082893', '2020-12-01', 1, '1.1'),
('BF1850', 'B73372917', '', '2020-11-21', 'GURGAON', '', 'AR1', '24.77', '17.5', '0', '0', '0', '1', '122001', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73372918', '', '2020-11-23', 'BHOPAL', '', 'AR1', '24.77', '17.5', '0', '0', '0', '1', '462015', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73372919', '', '2020-11-23', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560035', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372920', '', '2020-11-23', 'DELHI', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '110001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372921', '3677007281', '2020-11-23', 'BANGALORE', '', 'AR1', '46.31', '32.5', '0', '0', '0', '1', '560098', 'N', 'KA2129082893', '2020-12-01', 1, '2.5'),
('BF1850', 'B73372922', '', '2020-11-24', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372923', '3677007287', '2020-11-24', 'HUBLI', '', 'AR1', '9.45', '7', '0', '0', '0', '1', '580020', 'N', 'KA2129082893', '2020-12-01', 1, '0.36'),
('BF1850', 'B73372924', '3677007286', '2020-11-24', 'TARIKERE', '', 'AR1', '9.45', '7', '0', '0', '0', '1', '577228', 'N', 'KA2129082893', '2020-12-01', 1, '0.5'),
('BF1850', 'B73372925', '3677007311', '2020-11-25', 'BANGALORE', '', 'AR1', '18.16', '13', '0', '0', '0', '1', '560102', 'N', 'KA2129082893', '2020-12-01', 1, '0.53'),
('BF1850', 'B73372926', '3677007299', '2020-11-25', 'TIRUPATI', '', 'AR1', '24.91', '18', '0', '0', '0', '1', '517504', 'N', 'KA2129082893', '2020-12-01', 1, '0.85'),
('BF1850', 'B73372927', '', '2020-11-25', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560068', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372928', '3677007307', '2020-11-25', 'BANGALORE', '', 'AR1', '18.16', '13', '0', '0', '0', '1', '560004', 'N', 'KA2129082893', '2020-12-01', 1, '0.6'),
('BF1850', 'B73372929', '3677007321', '2020-11-26', 'BANGALORE', '', 'AR1', '18.16', '13', '0', '0', '0', '1', '560098', 'N', 'KA2129082893', '2020-12-01', 1, '0.63'),
('BF1850', 'B73372930', '', '2020-11-26', 'DELHI', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '110001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372931', '', '2020-11-27', 'HYDERABAD', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '500037', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372932', '3677007333', '2020-11-28', 'BANGALORE', '', 'AR1', '36.92', '26', '0', '0', '0', '1', '560077', 'N', 'KA2129082893', '2020-12-01', 1, '1.83'),
('BF1850', 'B73372933', '', '2020-11-28', 'DELHI', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '110019', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372934', '3677007341', '2020-11-30', 'PUNE', '', 'AR1', '38.95', '28', '0', '0', '0', '1', '411038', 'N', 'KA2129082893', '2020-12-01', 1, '0.4'),
('BF1850', 'B73372935', '3677007341', '2020-11-30', 'NASIK', '', 'AR1', '24.77', '17.5', '0', '0', '0', '1', '422101', 'N', 'KA2129082893', '2020-12-01', 1, '0.2'),
('BF1850', 'B73372936', '', '2020-11-30', 'PATNA', '', 'AR1', '24.77', '17.5', '0', '0', '0', '1', '800001', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73372954', '3677007229', '2020-11-17', 'MUMBAI', '', 'AR1', '38.95', '28', '0', '0', '0', '1', '400091', 'N', 'KA2129082893', '2020-12-01', 1, '0.35'),
('BF1850', 'B73372955', '3677007226', '2020-11-17', 'CHENNAI', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '600002', 'N', 'KA2129082893', '2020-12-01', 1, '0.2'),
('BF1850', 'B73372956', '', '2020-11-17', 'CHENNAI', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '600034', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372957', '', '2020-11-18', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560082', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372958', '', '2020-11-18', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560034', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73372959', '3677007232', '2020-11-18', 'HYDERABAD', '', 'AR1', '38', '27.25', '0', '0', '0', '1', '502307', 'N', 'KA2129082893', '2020-12-01', 1, '1.17'),
('BF1850', 'B73372962', '3677007280', '2020-11-30', 'BANGALORE', '', 'AR1', '18.16', '13', '0', '0', '0', '1', '560097', 'N', 'KA2129082893', '2020-12-01', 1, '0.8'),
('BF1850', 'B73373022', '', '2020-11-17', 'CHENNAI', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '600018', 'D', 'KA2129082893', '2020-12-01', 1, '0.05'),
('BF1850', 'B73373023', '', '2020-11-17', 'CHENNAI', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '600085', 'D', 'KA2129082893', '2020-12-01', 1, '0.05'),
('BF1850', 'B73373024', '', '2020-11-17', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560002', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73373025', '', '2020-11-17', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560002', 'D', 'KA2129082893', '2020-12-01', 1, '0.03'),
('BF1850', 'B73373026', '', '2020-11-17', 'COCHIN', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '682000', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373027', '', '2020-11-17', 'DELHI', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '110001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373028', '', '2020-11-18', 'CHENNAI', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '603103', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373029', '', '2020-11-18', 'COIMBATORE', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '641009', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373030', '', '2020-11-19', 'AHMEDABAD', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '380001', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73373031', '', '2020-11-18', 'CHENNAI', '', 'AR1', '11.81', '8.75', '0', '0', '0', '1', '600002', 'D', 'KA2129082893', '2020-12-01', 1, '0.4'),
('BF1850', 'B73373032', '', '2020-11-19', 'HYDERABAD', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '500004', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73373033', '', '2020-11-19', 'CHENNAI', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '600002', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73373034', '', '2020-11-20', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560029', 'D', 'KA2129082893', '2020-12-01', 1, '0.05'),
('BF1850', 'B73373035', '', '2020-11-20', 'COIMBATORE', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '642154', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373036', '', '2020-11-20', 'PUNE', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '412115', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373037', '', '2020-11-20', 'HYDERABAD', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '500032', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373038', '', '2020-11-20', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560037', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373039', '', '2020-11-20', 'CHENNAI', '', 'AR1', '11.81', '8.75', '0', '0', '0', '1', '600005', 'D', 'KA2129082893', '2020-12-01', 1, '0.3'),
('BF1850', 'B73373040', '', '2020-11-28', 'DELHI', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '110016', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373041', '', '2020-11-28', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560037', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373042', '', '2020-11-28', 'PALONCHA', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '507115', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373043', '', '2020-11-28', 'DELHI', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '110001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373044', '', '2020-11-28', 'GUNTUR', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '522017', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373045', '', '2020-11-28', 'KOLKATA', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '700010', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373046', '', '2020-11-28', 'COIMBATORE', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '641001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373047', '', '2020-11-28', 'KOLKATA', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '700001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373048', '', '2020-11-28', 'COIMBATORE', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '641001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373049', '', '2020-11-28', 'COIMBATORE', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '641001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373050', '', '2020-11-17', 'HASSAN', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '573103', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373051', '3677007225', '2020-11-17', 'TIRUPUR', '', 'AR1', '38', '27.25', '0', '0', '0', '1', '641602', 'N', 'KA2129082893', '2020-12-01', 1, '1.5'),
('BF1850', 'B73373052', '3677007226', '2020-11-17', 'MANALI -TN', '', 'AR1', '51.1', '36.5', '0', '0', '0', '1', '600068', 'N', 'KA2129082893', '2020-12-01', 1, '1.6'),
('BF1850', 'B73373053', '3677007225', '2020-11-17', 'CUDDAPAH', '', 'AR1', '24.91', '18', '0', '0', '0', '1', '516002', 'N', 'KA2129082893', '2020-12-01', 1, '0.77'),
('BF1850', 'B73373054', '', '2020-11-17', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560078', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373055', '', '2020-11-17', 'MYSORE', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '570015', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373056', '', '2020-11-18', 'DELHI', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '110001', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73373057', '', '2020-11-18', 'MYSORE', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '570001', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73373058', '3677007236', '2020-11-18', 'COCHIN', '', 'AR1', '24.91', '18', '0', '0', '0', '1', '682020', 'N', 'KA2129082893', '2020-12-01', 1, '0.51'),
('BF1850', 'B73373059', '', '2020-11-18', 'CHENNAI', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '600048', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73373060', '', '2020-11-18', 'CHICKAMAGALUR', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '577101', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73373061', '', '2020-11-18', 'PUNE', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '411001', 'D', 'KA2129082893', '2020-12-01', 1, '0.05'),
('BF1850', 'B73373062', '', '2020-11-18', 'THANE', '', 'AR1', '24.77', '17.5', '0', '0', '0', '1', '400602', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73373063', '', '2020-11-18', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560058', 'D', 'KA2129082893', '2020-12-01', 1, '0.05'),
('BF1850', 'B73373064', '3677007237', '2020-11-18', 'CUTTACK', '', 'AR1', '201.69', '146', '0', '0', '0', '1', '753002', 'N', 'KA2129082893', '2020-12-01', 1, '1.9'),
('BF1850', 'B73373065', '', '2020-11-18', 'MANDYA', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '571432', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373066', '', '2020-11-18', 'HYDERABAD', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '500081', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73373067', '', '2020-11-18', 'PATNA', '', 'AR1', '24.77', '17.5', '0', '0', '0', '1', '800007', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373068', '', '2020-11-18', 'CHENNAI', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '600007', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373069', '', '2020-11-19', 'PUNE', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '411001', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73373070', '3677007245', '2020-11-19', 'MUMBAI', '', 'AR1', '38.95', '28', '0', '0', '0', '1', '401107', 'N', 'KA2129082893', '2020-12-01', 1, '0.3'),
('BF1850', 'B73373071', '', '2020-11-19', 'BELGAUM', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '590001', 'D', 'KA2129082893', '2020-12-01', 1, '0.2'),
('BF1850', 'B73373072', '3677007243', '2020-11-19', 'KOTTAYAM', '', 'AR1', '24.91', '18', '0', '0', '0', '1', '686002', 'N', 'KA2129082893', '2020-12-01', 1, '0.79'),
('BF1850', 'B73373073', '', '2020-11-19', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560070', 'D', 'KA2129082893', '2020-12-01', 1, '0.05'),
('BF1850', 'B73373074', '', '2020-11-19', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560102', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373075', '3677007245', '2020-11-19', 'BANGALORE', '', 'AR1', '46.31', '32.5', '0', '0', '0', '1', '560102', 'N', 'KA2129082893', '2020-12-01', 1, '2.5'),
('BF1850', 'B73373076', '', '2020-11-19', 'MUMBAI', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '400705', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73373077', '', '2020-11-19', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560041', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373078', '3677007267', '2020-11-20', 'JAWAHAR', '', 'AR1', '44.35', '32', '0', '0', '0', '1', '401606', 'N', 'KA2129082893', '2020-12-01', 1, '0.42'),
('BF1850', 'B73373079', '', '2020-11-20', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560037', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73373080', '', '2020-11-20', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560102', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73373081', '3677007266', '2020-11-20', 'BELLARY', '', 'AR1', '19.17', '13.75', '0', '0', '0', '1', '583101', 'N', 'KA2129082893', '2020-12-01', 1, '0.75'),
('BF1850', 'B73373082', '3677007266', '2020-11-20', 'BANGALORE', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '560076', 'N', 'KA2129082893', '2020-12-01', 1, '0.48'),
('BF1850', 'B73373083', '3677007269', '2020-11-20', 'KOLKATA', '', 'AR1', '84.65', '61', '0', '0', '0', '1', '700089', 'N', 'KA2129082893', '2020-12-01', 1, '0.8'),
('BF1850', 'B73373084', '', '2020-11-20', 'COCHIN', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '682000', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373085', '3677007269', '2020-11-20', 'RUPNARAYANPUR', '', 'AR1', '96.8', '70', '0', '0', '0', '1', '713364', 'N', 'KA2129082893', '2020-12-01', 1, '0.95'),
('BF1850', 'B73373086', '3677007271', '2020-11-21', 'HYDERABAD', '', 'AR1', '38', '27.25', '0', '0', '0', '1', '500008', 'N', 'KA2129082893', '2020-12-01', 1, '1.45'),
('BF1850', 'B73373087', '', '2020-11-21', 'HOSPET', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '583201', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373088', '', '2020-11-21', 'SALEM', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '636001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373089', '3677007271', '2020-11-21', 'INDORE', '', 'AR1', '149.24', '108', '0', '0', '0', '1', '452015', 'N', 'KA2129082893', '2020-12-01', 1, '1.41'),
('BF1850', 'B73373090', '', '2020-11-21', 'MUNIRABAD', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '583234', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373091', '', '2020-11-21', 'CHENNAI', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '600081', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373092', '', '2020-11-21', 'CHENNAI', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '600018', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373093', '', '2020-11-21', 'MANGALORE', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '575001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373094', '', '2020-11-21', 'MYSORE', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '570011', 'D', 'KA2129082893', '2020-12-01', 1, '0.2'),
('BF1850', 'B73373095', '', '2020-11-21', 'COCHIN', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '682002', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373096', '', '2020-11-21', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560034', 'D', 'KA2129082893', '2020-12-01', 1, '0.05'),
('BF1850', 'B73373097', '', '2020-11-21', 'ANANTHPUR', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '515001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373098', '3677007279', '2020-11-23', 'BELGAUM', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '590005', 'N', 'KA2129082893', '2020-12-01', 1, '0.2'),
('BF1850', 'B73373099', '', '2020-11-23', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560002', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373100', '', '2020-11-17', 'HOSUR', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '635109', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373101', '', '2020-11-17', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560100', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373102', '', '2020-11-17', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560002', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373103', '', '2020-11-17', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560102', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373105', '', '2020-11-18', 'HYDERABAD', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '500081', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373106', '', '2020-11-19', 'BANGALORE', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '560094', 'D', 'KA2129082893', '2020-12-01', 1, '0.36'),
('BF1850', 'B73373107', '3677007232', '2020-11-18', 'CHIRALA', '', 'AR1', '51.1', '36.5', '0', '0', '0', '1', '523155', 'N', 'KA2129082893', '2020-12-01', 1, '1.94'),
('BF1850', 'B73373108', '3677007233', '2020-11-18', 'BANDEL', '', 'AR1', '201.69', '146', '0', '0', '0', '1', '712104', 'N', 'KA2129082893', '2020-12-01', 1, '1.92'),
('BF1850', 'B73373109', '3677007235', '2020-11-18', 'GANAPAVARAM', '', 'AR1', '51.1', '36.5', '0', '0', '0', '1', '534198', 'N', 'KA2129082893', '2020-12-01', 1, '2'),
('BF1850', 'B73373110', '3677007233', '2020-11-18', 'PRAKASHAM', '', 'AR1', '51.1', '36.5', '0', '0', '0', '1', '523001', 'N', 'KA2129082893', '2020-12-01', 1, '2'),
('BF1850', 'B73373111', '3677007237', '2020-11-18', 'GURGAON', '', 'AR1', '44.35', '32', '0', '0', '0', '1', '122018', 'N', 'KA2129082893', '2020-12-01', 1, '0.45'),
('BF1850', 'B73373112', '3677007234', '2020-11-18', 'BANGALORE', '', 'AR1', '65.07', '45.5', '0', '0', '0', '1', '560043', 'N', 'KA2129082893', '2020-12-01', 1, '3.1'),
('BF1850', 'B73373113', '', '2020-11-21', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560001', 'D', 'KA2129082893', '2020-12-01', 1, '0.05'),
('BF1850', 'B73373114', '', '2020-11-21', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560014', 'D', 'KA2129082893', '2020-12-01', 1, '0.05'),
('BF1850', 'B73373115', '', '2020-11-21', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560068', 'D', 'KA2129082893', '2020-12-01', 1, '0.05'),
('BF1850', 'B73373116', '', '2020-11-21', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560016', 'D', 'KA2129082893', '2020-12-01', 1, '0.05'),
('BF1850', 'B73373117', '', '2020-11-21', 'HYDERABAD', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '500015', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373118', '', '2020-11-21', 'COCHIN', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '682000', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373119', '', '2020-11-21', 'AHMEDABAD', '', 'AR1', '20.05', '14', '0', '0', '0', '1', '380001', 'D', 'KA2129082893', '2020-12-01', 1, '0.05'),
('BF1850', 'B73373120', '', '2020-11-21', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560061', 'D', 'KA2129082893', '2020-12-01', 1, '0.05'),
('BF1850', 'B73373121', '', '2020-11-21', 'VIJAYAWADA', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '520001', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373122', '3677007273', '2020-11-21', 'BANGALORE', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '560075', 'N', 'KA2129082893', '2020-12-01', 1, '0.4'),
('BF1850', 'B73373123', '3677007274', '2020-11-21', 'THANE', '', 'AR1', '44.35', '32', '0', '0', '0', '1', '400607', 'N', 'KA2129082893', '2020-12-01', 1, '0.4'),
('BF1850', 'B73373124', '', '2020-11-21', 'CHENNAI', '', 'AR1', '11.48', '8.5', '0', '0', '0', '1', '600018', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373125', '3677007273', '2020-11-21', 'BANGALORE', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '560058', 'N', 'KA2129082893', '2020-12-01', 1, '0.4'),
('BF1850', 'B73373126', '', '2020-11-23', 'GURGAON', '', 'AR1', '24.77', '17.5', '0', '0', '0', '1', '122015', 'D', 'KA2129082893', '2020-12-01', 1, '0.2'),
('BF1850', 'B73373127', '', '2020-11-23', 'TIPTUR', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '572201', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373129', '', '2020-11-24', 'BELGAUM', '', 'AR1', '8.78', '6.5', '0', '0', '0', '1', '590002', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73373130', '3677007317', '2020-11-26', 'MUMBAI', '', 'AR1', '313.13', '226', '0', '0', '0', '1', '400098', 'N', 'KA2129082893', '2020-12-01', 1, '3.37'),
('BF1850', 'B73373131', '', '2020-11-26', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560102', 'D', 'KA2129082893', '2020-12-01', 1, '0.1'),
('BF1850', 'B73373132', '3677007322', '2020-11-27', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '560092', 'D', 'KA2129082893', '2020-12-01', 1, '0.02'),
('BF1850', 'B73373133', '3677007320', '2020-11-26', 'BANGALORE', '', 'AR1', '36.92', '26', '0', '0', '0', '1', '560034', 'N', 'KA2129082893', '2020-12-01', 1, '1.63'),
('BF1850', 'B73373134', '3677007337', '2020-11-29', 'BANGALORE', '', 'AR1', '5.74', '4.25', '0', '0', '0', '1', '562157', 'D', 'KA2129082893', '2020-12-01', 1, '0.05');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_language`
--

CREATE TABLE `haashtag_language` (
  `code` varchar(50) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `display_name` varchar(150) NOT NULL,
  `page_name` varchar(50) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `is_default` char(1) DEFAULT '0',
  `status` char(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `haashtag_language`
--

INSERT INTO `haashtag_language` (`code`, `name`, `display_name`, `page_name`, `icon`, `is_default`, `status`) VALUES
('EN', 'English', 'English', '', 'United-States.png', '1', '1'),
('HI', 'Hindi', 'Hindi', '', 'hindi.png', '0', '1'),
('KN', 'Kannada', 'Kannada', '', 'karnataka.png', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_language_detail`
--

CREATE TABLE `haashtag_language_detail` (
  `language` varchar(50) NOT NULL,
  `conversion_type` varchar(100) NOT NULL,
  `detail` text CHARACTER SET utf8 NOT NULL,
  `entry_date_time` datetime NOT NULL,
  `update_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_language_detail`
--

INSERT INTO `haashtag_language_detail` (`language`, `conversion_type`, `detail`, `entry_date_time`, `update_date_time`) VALUES
('EN', 'account_blocked_by_admin', 'Your account is blocked by administrator', '2020-04-16 12:46:52', NULL),
('EN', 'action', 'Action', '2020-04-16 16:49:52', NULL),
('EN', 'add', 'Add', '2020-04-24 13:55:38', NULL),
('EN', 'address', 'Address', '2020-04-17 12:05:45', NULL),
('EN', 'add_company', 'Add company', '2020-04-29 22:15:30', NULL),
('EN', 'add_custom_field', 'Add Custom field', '2020-04-29 22:15:34', NULL),
('EN', 'add_department', 'Add Department', '2020-04-29 22:15:39', NULL),
('EN', 'add_language', 'Add Language', '2020-04-16 16:49:56', NULL),
('EN', 'add_translation', 'Add Translation', '2020-04-16 16:49:58', '2020-04-16 17:01:15'),
('EN', 'add_user_group', 'Add User Group', '2020-04-24 13:55:43', NULL),
('EN', 'all_fields_are_required', 'All Fields are required', '2020-04-16 16:50:05', NULL),
('EN', 'assets', 'Assets', '2020-04-29 22:08:21', NULL),
('EN', 'assets_custom_field_slogan', 'Add asset specific custom fields', '2020-04-29 22:08:25', NULL),
('EN', 'banner_colour', 'Banner Colour', '2020-04-17 12:05:41', NULL),
('EN', 'bar_code', 'Bar Code', '2020-04-22 11:08:32', NULL),
('EN', 'bar_code_height', 'Barcode Height', '2020-04-22 11:18:46', NULL),
('EN', 'bar_code_width', 'Barcode Width', '2020-04-22 11:18:50', NULL),
('EN', 'cancel', 'Cancel', '2020-04-17 15:10:02', NULL),
('EN', 'change_password', 'Change Password', '2020-04-29 22:03:16', NULL),
('EN', 'change_password_configuration_slogan', 'Keep your account safe ', '2020-04-29 22:04:33', '2020-05-05 09:55:54'),
('EN', 'check_all', 'Check All', '2020-04-24 14:14:41', NULL),
('EN', 'cheers', 'Cheers', '2020-05-14 16:30:29', NULL),
('EN', 'city', 'City', '2020-04-17 15:10:05', NULL),
('EN', 'click_here', 'Click Here', '2020-04-22 19:51:40', NULL),
('EN', 'code_already_exists', 'Code already exists', '2020-04-16 16:50:19', NULL),
('EN', 'code_is_available', 'Code is available', '2020-04-16 16:50:29', NULL),
('EN', 'code_is_not_available', 'Code is not available', '2020-04-16 16:50:34', NULL),
('EN', 'company', 'Company', '2020-04-17 15:10:08', NULL),
('EN', 'company_configuration_slogan', 'Configure multiple companies ', '2020-04-17 15:10:25', NULL),
('EN', 'company_details', 'Company Details', '2020-04-16 18:53:10', NULL),
('EN', 'company_name', 'Company Name', '2020-04-17 12:06:02', NULL),
('EN', 'configuration', 'Configuration', '2020-04-16 17:12:39', NULL),
('EN', 'country', 'Country', '2020-04-17 12:06:09', NULL),
('EN', 'currency', 'Currency', '2020-04-17 19:18:02', NULL),
('EN', 'custom_field', 'Custom field', '2020-04-29 22:15:49', NULL),
('EN', 'custom_fields', 'Custom Fields', '2020-04-29 22:04:43', NULL),
('EN', 'custom_fields_configuration_slogan', 'Add fields as per your requirement', '2020-04-29 22:05:04', NULL),
('EN', 'dashboard', 'Dashboard', '2020-04-13 00:06:58', NULL),
('EN', 'default_language', 'Default Language', '2020-04-17 12:06:14', NULL),
('EN', 'department', 'Department', '2020-04-17 15:10:39', NULL),
('EN', 'department_configuration_slogan', 'Add departments to assign users', '2020-04-17 15:10:36', NULL),
('EN', 'description', 'Description', '2020-04-17 12:22:11', NULL),
('EN', 'detail', 'Detail', '2020-04-16 16:50:37', NULL),
('EN', 'display_company_name', 'Display Company Name', '2020-04-23 15:23:33', NULL),
('EN', 'documentation', 'Documentation', '2020-04-16 12:50:31', '2020-04-16 15:50:55'),
('EN', 'edit', 'Edit', '2020-04-24 13:55:50', NULL),
('EN', 'email_id', 'Email ID', '2020-05-14 16:30:38', NULL),
('EN', 'email_setup', 'Email Setup', '2020-04-17 15:10:43', NULL),
('EN', 'email_setup_configuration_slogan', 'Add email details for sending email to users', '2020-04-17 15:10:48', NULL),
('EN', 'enable_bar_code', 'Enable Bar Code', '2020-04-22 11:08:07', '2020-04-22 11:08:28'),
('EN', 'enable_captcha', 'Enable Captcha', '2020-04-20 09:55:03', NULL),
('EN', 'enable_captcha_note', 'While login user has to enter the characters which is visible on image(Security)', '2020-04-20 09:56:02', NULL),
('EN', 'enable_depression', 'Enable Depression', '2020-04-17 18:31:04', NULL),
('EN', 'enable_mail', 'Enable Mail', '2020-04-22 10:56:14', '2020-04-22 19:52:51'),
('EN', 'enable_multipe_language', 'Enable Multiple Language', '2020-04-17 12:06:17', NULL),
('EN', 'enable_multiple_login', 'Enable multiple user login', '2020-04-20 09:56:17', NULL),
('EN', 'enable_qr_code', 'Enable QR Code', '2020-04-22 11:08:12', NULL),
('EN', 'enable_single_user_login', 'Enable single user login', '2020-04-17 19:58:04', NULL),
('EN', 'enable_single_user_login_slogan', 'On check of this user can login to single system at a time', '2020-04-17 19:57:51', NULL),
('EN', 'enable_sms', 'Enable SMS', '2020-04-22 10:56:21', NULL),
('EN', 'fav_icon', 'Favicon', '2020-04-17 12:06:24', NULL),
('EN', 'find_your_login_details_below', 'Find you login details below', '2020-05-14 16:30:44', NULL),
('EN', 'forgot_password_login', 'Forgot Password ? ', '2020-04-16 12:07:22', NULL),
('EN', 'for_any_query', 'For any query', '2020-05-14 16:30:49', '2020-05-14 16:30:49'),
('EN', 'from_mail_name', 'From Mail Name', '2020-04-22 10:27:10', NULL),
('EN', 'general_configuration_slogan', 'Setup your details ', '2020-04-16 17:42:55', NULL),
('EN', 'general_language_slogan', 'Manage multiple languages with ease.', '2020-04-16 16:56:39', NULL),
('EN', 'gst_code', 'GST Code', '2020-04-17 17:24:00', NULL),
('EN', 'hi', 'Hi', '2020-05-14 16:30:54', NULL),
('EN', 'home', 'Home', '2020-04-10 00:00:00', '2020-04-22 10:27:20'),
('EN', 'host', 'Host', '2020-04-22 10:27:14', NULL),
('EN', 'icon', 'Icon', '2020-04-17 12:06:28', NULL),
('EN', 'infodot', 'Infodot', '2020-04-16 12:07:25', NULL),
('EN', 'input_type', 'Input Type', '2020-04-29 22:15:58', NULL),
('EN', 'inserted_successfully', 'Inserted Successfully', '2020-04-22 17:11:02', NULL),
('EN', 'internal_purpose_only', 'Internal purpose only. Don\'t share this mail', '2020-05-14 16:32:26', NULL),
('EN', 'invalid_language', 'Invalid Language', '2020-04-16 12:46:57', NULL),
('EN', 'invalid_request', 'Invalid Request', '2020-04-16 16:50:44', NULL),
('EN', 'invalid_role', 'Invalid Role', '2020-04-16 12:47:02', NULL),
('EN', 'invalid_username_or_password', 'Invalid username or password', '2020-04-16 12:47:05', NULL),
('EN', 'is_this_custom_field_is_clild_for_other_custom_fie', 'Is this custom field is child for other custom field', '2020-04-29 22:16:04', NULL),
('EN', 'is_this_custom_field_is_clild_for_other_custom_field', 'Is This Custom field is clild for other custom field', '2020-04-29 22:59:12', NULL),
('EN', 'keep_me_logged_in', 'Keep me logged in ', '2020-04-16 12:07:28', NULL),
('EN', 'kepp_your_account_safely', 'Keep your account safe.', '2020-05-14 16:31:04', NULL),
('EN', 'label_config_note', 'Note :: all entry should be in inches', '2020-04-23 15:41:34', NULL),
('EN', 'label_setup', 'Label Setup', '2020-04-17 15:10:55', NULL),
('EN', 'label_setup_configuration_slogan', 'Configure your print label setup', '2020-04-17 15:13:17', NULL),
('EN', 'language', 'Language', '2020-04-16 16:50:54', NULL),
('EN', 'language_added_successfully', 'Language added successfully', '2020-04-16 16:50:51', NULL),
('EN', 'language_updated_successfully', 'Language updated successfully', '2020-04-16 12:47:10', NULL),
('EN', 'lang_code_missing', 'Language code is missing. refresh screen', '2020-04-16 12:19:08', NULL),
('EN', 'licence', 'Licence', '2020-04-29 22:08:37', NULL),
('EN', 'licence_custom_field_slogan', 'Add licence specific custom fields', '2020-04-29 22:08:40', NULL),
('EN', 'location', 'Location', '2020-04-17 15:10:58', NULL),
('EN', 'location_configuration_slogan', 'Add multiple locations (branches) to company ', '2020-04-17 15:11:02', NULL),
('EN', 'login_has_blocked_for', 'Login has blocked for', '2020-04-16 12:47:19', NULL),
('EN', 'logo', 'Logo', '2020-04-17 12:06:32', NULL),
('EN', 'log_in', 'Log In ', '2020-04-16 12:07:33', NULL),
('EN', 'log_in_to', 'Log In to', '2020-04-16 12:07:38', NULL),
('EN', 'maxlength', 'Maxlength', '2020-04-29 22:16:09', NULL),
('EN', 'minlength', 'Minlength', '2020-04-29 22:16:12', NULL),
('EN', 'multiple_user_login_note', 'Note :: on checking this user can log into multiple devices', '2020-04-20 09:57:04', NULL),
('EN', 'name', 'Name', '2020-04-16 16:50:58', NULL),
('EN', 'name_already_exists', 'Name already exists', '2020-04-16 16:51:03', NULL),
('EN', 'note_this_is_applictle_for_if_input_type_is_checkb', 'Note :: Thi is applicable for if input type is checkbox or radio or select', '2020-04-29 22:16:17', NULL),
('EN', 'note_this_is_applictle_for_if_input_type_is_checkbox_or_radio_or_select', 'Note :: Thi is applicable for if input type is checkbox or radio or select ', '2020-04-29 22:20:17', NULL),
('EN', 'on_checking_this_user_has_to_fill_this_field', 'On checking this user has to fill this field', '2020-04-29 22:59:37', NULL),
('EN', 'on_select_of_this_option_above_details_will_be_dis', 'On select of this option above details will be displayed', '2020-04-29 22:16:20', NULL),
('EN', 'on_select_of_this_option_above_details_will_be_displayed', 'On select of this option above details will be displayed', '2020-04-29 22:20:21', NULL),
('EN', 'pan_number', 'PAN Number', '2020-04-17 17:23:52', NULL),
('EN', 'parent_custom_field', 'Parent custom field', '2020-04-29 22:16:34', NULL),
('EN', 'password', 'Password', '2020-04-16 12:07:41', NULL),
('EN', 'port', 'Port', '2020-04-22 10:27:28', '2020-04-22 17:15:15'),
('EN', 'privacy', 'Privacy', '2020-04-16 12:21:12', NULL),
('EN', 'qr_code', 'QR Code', '2020-04-22 11:08:19', NULL),
('EN', 'qr_code_height', 'QR Code Height', '2020-04-22 11:19:08', NULL),
('EN', 'qr_code_width', 'QR Code Width', '2020-04-22 11:19:12', NULL),
('EN', 'remove', 'Remove', '2020-04-17 19:23:16', NULL),
('EN', 'replay_to_mail', 'Reply to Mail', '2020-04-22 10:27:49', NULL),
('EN', 'required', 'Required', '2020-04-29 22:16:27', NULL),
('EN', 'save', 'Save', '2020-04-16 16:51:14', '2020-04-16 16:51:27'),
('EN', 'save_changes', 'Save Changes', '2020-04-17 12:06:36', NULL),
('EN', 'search_placeholder', 'Search...', '2020-04-16 12:35:14', NULL),
('EN', 'setting', 'Setting', '2020-04-16 12:07:49', NULL),
('EN', 'settings', 'Settings', '2020-04-16 12:50:37', NULL),
('EN', 'set_default', 'Set Default', '2020-04-16 16:51:32', '2020-04-16 17:43:20'),
('EN', 'set_transition', 'Set Transition', '2020-04-16 16:51:36', '2020-04-16 17:02:31'),
('EN', 'set_translation', 'Set Translation', '2020-04-16 16:51:40', NULL),
('EN', 'short_name', 'Short Name', '2020-04-17 12:06:41', NULL),
('EN', 'show_password', 'Show Password', '2020-04-16 12:07:55', NULL),
('EN', 'sl_no', 'Sl No.', '2020-04-16 16:52:18', '2020-04-16 17:04:57'),
('EN', 'sms_provider', 'SMS Provider', '2020-04-22 10:47:45', NULL),
('EN', 'sms_setup', 'SMS Setup', '2020-04-17 15:11:08', NULL),
('EN', 'sms_setup_configuration_slogan', 'Add SMS details to communicate with users', '2020-04-17 15:11:13', NULL),
('EN', 'sms_source', 'SMS Source', '2020-04-22 10:47:50', NULL),
('EN', 'something_went_wrong', 'Something went wrong please try after some time', '2020-04-16 16:51:50', NULL),
('EN', 'ssl', 'SSL', '2020-04-22 10:28:09', NULL),
('EN', 'state', 'State', '2020-04-17 12:06:44', NULL),
('EN', 'std_smtp_settings', 'For standard list of SMTP settings please', '2020-04-22 19:51:29', NULL),
('EN', 'sticker_height', 'Sticker Height', '2020-04-22 11:19:20', NULL),
('EN', 'sticker_width', 'Sticker Width', '2020-04-22 11:19:23', NULL),
('EN', 'sync_language', 'Sync Language', '2020-04-16 16:51:56', NULL),
('EN', 'tag_n_track', 'Tag&Track', '2020-04-16 12:07:59', NULL),
('EN', 'team', 'Team', '2020-05-14 16:31:19', NULL),
('EN', 'terms', 'Terms', '2020-04-16 12:08:03', NULL),
('EN', 'timezone', 'Timezone', '2020-04-22 14:55:26', NULL),
('EN', 'translation_added_successfully', 'Translation added successfully', '2020-04-16 16:52:00', NULL),
('EN', 'type', 'Type', '2020-04-16 16:52:04', NULL),
('EN', 'unckeck_all', 'Uncheck All ', '2020-04-24 14:15:09', NULL),
('EN', 'updated_successfully', 'Updated Successfully', '2020-04-16 16:52:08', NULL),
('EN', 'username', 'Username', '2020-04-16 12:08:08', NULL),
('EN', 'username_and_password_is_required', 'Username and password is required', '2020-04-16 12:40:33', NULL),
('EN', 'users', 'Users', '2020-04-16 12:08:11', NULL),
('EN', 'users_custom_field_slogan', 'Add user specific custom fields', '2020-04-29 22:08:49', '2020-04-29 22:19:57'),
('EN', 'user_group', 'User Groups', '2020-04-17 15:11:19', NULL),
('EN', 'user_group_configuration_slogan', 'Organize access to users - Role', '2020-04-17 15:11:23', NULL),
('EN', 'user_group_disable_slogan', 'Note :: on disabling user access, user assigned to this group cannot login ', '2020-04-24 12:36:51', NULL),
('EN', 'view', 'View', '2020-04-24 13:56:15', NULL),
('EN', 'view_per_row', 'View Per Row', '2020-04-23 15:47:43', NULL),
('EN', 'view_user_group', 'View User Group', '2020-04-24 13:56:11', NULL),
('EN', 'warehouse', 'Warehouse', '2020-04-17 15:11:27', NULL),
('EN', 'warehouse_configuration_slogan', 'Add multiple warehouse to store assets', '2020-04-17 15:11:31', NULL),
('EN', 'welcome_to', 'Welcome to', '2020-05-14 16:32:55', NULL),
('EN', 'you_dont_have_access_to_login_to_web_portal', 'You don\'t have access to login to web portal', '2020-04-16 12:47:27', '2020-04-16 12:47:33'),
('EN', 'zip', 'Zip Code', '2020-04-17 12:06:50', NULL),
('HI', 'dashboard', 'डैशबोर्ड', '2020-04-13 00:07:06', '2020-04-13 00:07:28'),
('KN', 'dashboard', 'ಡ್ಯಾಶ್‌ಬೋರ್ಡ್', '2020-04-13 00:08:02', NULL),
('KN', 'home', 'ಮನೆ', '2020-04-10 19:49:55', NULL),
('KN', 'users', 'ಬಳಕೆದಾರರು', '2020-04-29 22:25:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_lang_conversion`
--

CREATE TABLE `haashtag_lang_conversion` (
  `keyword` varchar(100) NOT NULL,
  `title` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_lang_conversion`
--

INSERT INTO `haashtag_lang_conversion` (`keyword`, `title`) VALUES
('account_blocked_by_admin', 'Your account is blocked by adminstrator'),
('action', 'Action'),
('add', 'Add'),
('address', 'Address'),
('add_company', 'Add company'),
('add_custom_field', 'Add Custom field'),
('add_department', 'Add Department'),
('add_language', 'Add Language'),
('add_translation', 'Add Translation'),
('add_user_group', 'Add User Group'),
('all_fields_are_required', 'All Fields are required'),
('assets', 'Assets'),
('assets_custom_field_slogan', 'Add asset specific custom fields '),
('banner_colour', 'Banner Colour'),
('bar_code', 'Bar Code'),
('bar_code_height', 'Barcode Height'),
('bar_code_width', 'Barcode Width'),
('cancel', 'Cancel'),
('change_password', 'Change Password'),
('change_password_configuration_slogan', 'Change password configuration slogan'),
('check_all', 'Check All'),
('cheers', 'Cheers'),
('city', 'City'),
('click_here', 'Click Here'),
('code_already_exists', 'Code already exists'),
('code_is_available', 'Code is available'),
('code_is_not_available', 'Code is not available'),
('company', 'Company'),
('company name', 'company_name'),
('company_configuration_slogan', 'Configure Multiple companies'),
('company_details', 'Company Details'),
('company_name', 'Company Name'),
('configuration', 'configuration'),
('country', 'Country'),
('currency', 'Currency'),
('custom_field', 'Custom field'),
('custom_fields', 'Custom Fields'),
('custom_fields_configuration_slogan', 'Custom fields configuration slogan'),
('dashboard', 'Dashboard'),
('default_language', 'Default Language'),
('department', 'Department'),
('department_configuration_slogan', 'Add departments to assign users'),
('description', 'Description'),
('detail', 'Detail'),
('display_company_name', 'Display Company Name'),
('documentation', 'Documentation'),
('edit', 'Edit'),
('email_id', 'Email ID'),
('email_setup', 'Email Setup'),
('email_setup_configuration_slogan', 'Add email details for sending email to users'),
('enable_bar_code', 'Enable Bar Code'),
('enable_captcha', 'Enable Captcha'),
('enable_captcha_note', 'Enable captcha note'),
('enable_depression', 'Enable Depression'),
('enable_mail', 'Eable Mail'),
('enable_multipe_language', 'Enable Multiple Language'),
('enable_multiple_login', 'Enable multiple user login'),
('enable_qr_code', 'Enable QR Code'),
('enable_single_user_login', 'Enable single user login'),
('enable_single_user_login_slogan', 'Single user login slogan'),
('enable_sms', 'Enable SMS'),
('fav_icon', 'Favicon'),
('find_your_login_details_below', 'Find you login details below'),
('forgot_password_login', 'Forgot Password ?'),
('for_any_query', 'For any query'),
('from_mail_name', 'From Mail Name'),
('general_configuration_slogan', 'Setup your details'),
('general_language_slogan', 'Manage multiple languages with ease.'),
('gst_code', 'GST Code'),
('hi', 'Hi'),
('home', 'Home'),
('host', 'Host'),
('icon', 'Icon'),
('infodot', 'Infodot'),
('input_type', 'Input Type'),
('inserted_successfully', 'Inserted Successfully'),
('internal_purpose_only', 'internal purpose only slogan - Email'),
('invalid_language', 'Invalid Language'),
('invalid_request', 'Invalid Request'),
('invalid_role', 'Invalid Role'),
('invalid_username_or_password', 'Invalid username or password'),
('is_this_custom_field_is_clild_for_other_custom_fie', 'Is this custom field is child for other custom field'),
('is_this_custom_field_is_clild_for_other_custom_field', 'Is This Custom field is clild for other custom field'),
('keep_me_logged_in', 'Keep me logged in'),
('kepp_your_account_safely', 'Keep your account safe'),
('label_config_note', 'Label Config note'),
('label_setup', 'Label Setup'),
('label_setup_configuration_slogan', 'Configure your print label setup'),
('language', 'Language'),
('language_added_successfully', 'Language added successfully'),
('language_updated_successfully', 'Language updated successfully'),
('lang_code_missing', 'Language code is missing. refresh screen'),
('licence', 'Licence'),
('licence_custom_field_slogan', 'Add licence specific custom fields '),
('location', 'Location'),
('location_configuration_slogan', 'Add multiple locations (branches) to company'),
('login_has_blocked_for', 'Login has blocked for'),
('logo', 'Logo'),
('log_in', 'Log In'),
('log_in_to', 'Log In to '),
('maxlength', 'Maxlength'),
('minlength', 'Minlength'),
('multiple_user_login_note', 'Multiple user login note'),
('name', 'Name'),
('name_already_exists', 'Name already exists'),
('note_this_is_applictle_for_if_input_type_is_checkbox_or_radio_or_select', 'Note :: Thi is applicable for if input type is checkbox or radio or select'),
('on_checking_this_user_has_to_fill_this_field', 'On checking this user has to fill this field'),
('on_select_of_this_option_above_details_will_be_displayed', 'On select of this option above details will be displayed'),
('pan_number', 'PAN Number'),
('parent_custom_field', 'Parent custom field'),
('password', 'Password'),
('port', 'Port'),
('powerd_by ', 'Powered By '),
('privacy', 'Privacy'),
('qr_code', 'QR Code'),
('qr_code_height', 'QR Code Height'),
('qr_code_width', 'QR Code Width'),
('remove', 'remove'),
('replay_to_mail', 'Replay to Mail'),
('required', 'Required'),
('save', 'Save'),
('save_changes', 'Save Changes'),
('search_placeholder', 'search placeholder'),
('setting', 'Setting'),
('settings', 'Settings'),
('set_default', 'Set Default'),
('set_transition', 'Set Transition'),
('set_translation', 'Set Translation'),
('short_name', 'Short Name'),
('show_password', 'Show Password'),
('sl_no', 'Sl No'),
('sms_provider', 'SMS Provider'),
('sms_setup', 'SMS Setup'),
('sms_setup_configuration_slogan', 'Add SMS details to comunicate with users'),
('sms_source', 'SMS Source'),
('something_went_wrong', 'Something went wrong please try after some time'),
('ssl', 'SSL'),
('state', 'State'),
('std_smtp_settings', 'For standard list of SMTP settings please'),
('sticker_height', 'Sticker Height'),
('sticker_width', 'Sticker Width'),
('sync_language', 'Sync Language'),
('tag_n_track', 'Tag&Track'),
('team', 'Team'),
('terms', 'Terms'),
('timezone', 'Timezone'),
('translation_added_successfully', 'Translation added successfully'),
('type', 'Type'),
('unckeck_all', 'Uncheck All'),
('updated_successfully', 'Updated Successfully'),
('username', 'username'),
('username_and_password_is_required', 'Username and password is required'),
('users', 'Users'),
('users_custom_field_slogan', 'Add user specific custom fields'),
('user_group', 'User Groups'),
('user_group_configuration_slogan', 'Organize access to users - Role'),
('user_group_disable_slogan', 'User group disable slogan'),
('view', 'View'),
('view_per_row', 'View Per Row'),
('view_user_group', 'View User Group'),
('warehouse', 'Warehouse'),
('warehouse_configuration_slogan', 'Add multiple warehouse to store assets'),
('welcome_to', 'Welcome to '),
('you_dont_have_access_to_login_to_web_portal', 'You dont have access to login to web portal'),
('zip', 'Zip Code');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_log`
--

CREATE TABLE `haashtag_log` (
  `access_key` varchar(100) NOT NULL,
  `entry_date_time` datetime NOT NULL,
  `ip_address` varchar(26) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `updated_user` bigint(20) NOT NULL,
  `update_data` longtext NOT NULL,
  `message` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `main_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_log`
--

INSERT INTO `haashtag_log` (`access_key`, `entry_date_time`, `ip_address`, `vendor_id`, `updated_user`, `update_data`, `message`, `type`, `main_id`) VALUES
('1432e9a4da4270a3f5dd72338529bb75c', '2020-10-04 13:42:23', '::1', 1, 1, '{\"customer\":{\"name\":\"dg\",\"customer_code\":\"gfhj221dd3434\",\"billing_name\":\"fgj\",\"phone_no\":\"1212122112\",\"email_id\":\"hhfhjfh@sdfg.sf\",\"active_from\":\"2020-10-07\",\"notes\":\"sfgsdgf\",\"enable_gst\":\"0\",\"logo\":\"16017991424065.PNG\",\"entry_date_time\":\"2020-10-04 13:42:22\",\"status\":\"1\"},\"contact\":[{\"name\":\"sdf\",\"designation\":\"sf\",\"mobile_no\":\"sadf\",\"email_id\":\"asdf@asdff.asdf\",\"customer_id\":4,\"sequence\":0,\"is_default\":\"1\"},{\"name\":\"ff\",\"designation\":\"ffd\",\"mobile_no\":\"2345356\",\"email_id\":\"adfadsfad@adff.asdf\",\"customer_id\":4,\"sequence\":1,\"is_default\":\"0\"}],\"address\":[{\"name\":\"ff\",\"designation\":\"ffd\",\"mobile_no\":\"2345356\",\"email_id\":\"adfadsfad@adff.asdf\",\"customer_id\":4,\"sequence\":1,\"is_default\":\"0\"},{\"name\":\"ff\",\"designation\":\"ffd\",\"mobile_no\":\"2345356\",\"email_id\":\"adfadsfad@adff.asdf\",\"customer_id\":4,\"sequence\":1,\"is_default\":\"0\"}],\"bank\":[{\"name\":\"sdff\",\"bank\":\"sadff\",\"account_number\":\"asdfasdff\",\"ifsc_code\":\"asdff\",\"customer_id\":4,\"sequence\":0,\"is_default\":\"1\"},{\"name\":\"sadff\",\"bank\":\"asdff\",\"account_number\":\"sdffasdfdasfadsfsdfads\",\"ifsc_code\":\"sdffa\",\"customer_id\":4,\"sequence\":1,\"is_default\":\"0\"}]}', 'Inserted Successfully', 'Customer', '4'),
('1432e9a4da4270a3f5dd72338529bb75c', '2020-10-04 13:46:00', '::1', 1, 1, '{\"customer\":{\"name\":\"Madhu S\",\"customer_code\":\"MK5605\",\"billing_name\":\"Madhu Pvt Ltd.\",\"phone_no\":\"0123456789\",\"email_id\":\"test@test.com\",\"active_from\":\"2020-10-29\",\"notes\":\"Test Customer\",\"enable_gst\":\"0\",\"logo\":\"16017993605635.PNG\",\"entry_date_time\":\"2020-10-04 13:46:00\",\"status\":\"1\"},\"contact\":[{\"name\":\"Madhu\",\"designation\":\"MD\",\"mobile_no\":\"1211212\",\"email_id\":\"md@asd.sdf\",\"customer_id\":1,\"sequence\":0,\"is_default\":\"0\"},{\"name\":\"Praveen\",\"designation\":\"SE\",\"mobile_no\":\"64756745746\",\"email_id\":\"s@sd.sd\",\"customer_id\":1,\"sequence\":1,\"is_default\":\"0\"}],\"address\":[{\"name\":\"Praveen\",\"designation\":\"SE\",\"mobile_no\":\"64756745746\",\"email_id\":\"s@sd.sd\",\"customer_id\":1,\"sequence\":1,\"is_default\":\"0\"},{\"name\":\"Praveen\",\"designation\":\"SE\",\"mobile_no\":\"64756745746\",\"email_id\":\"s@sd.sd\",\"customer_id\":1,\"sequence\":1,\"is_default\":\"0\"}],\"bank\":[{\"name\":\"MD\",\"bank\":\"Vijaya Bank\",\"account_number\":\"467574574576\",\"ifsc_code\":\"456456\",\"customer_id\":1,\"sequence\":0,\"is_default\":\"0\"},{\"name\":\"SD\",\"bank\":\"SBI\",\"account_number\":\"766476765456789087\",\"ifsc_code\":\"5448210\",\"customer_id\":1,\"sequence\":1,\"is_default\":\"0\"}]}', 'Inserted Successfully', 'Customer', '1'),
('1432e9a4da4270a3f5dd72338529bb75c', '2020-10-04 14:36:17', '::1', 1, 1, '{\"customer\":{\"name\":\"Madhu S\",\"customer_code\":\"MK5605\",\"billing_name\":\"Madhu Pvt Ltd.\",\"phone_no\":\"0123456789\",\"email_id\":\"test@test.com\",\"active_from\":\"2020-10-29\",\"notes\":\"Test Customer\",\"enable_gst\":\"0\",\"logo\":\"16017993605635.PNG\",\"update_date_time\":\"2020-10-04 14:36:16\"},\"contact\":[{\"name\":\"Madhu\",\"designation\":\"MD\",\"mobile_no\":\"1211212\",\"email_id\":\"md@asd.sdf\",\"customer_id\":\"1\",\"sequence\":0,\"is_default\":\"1\"},{\"name\":\"Praveen\",\"designation\":\"SE\",\"mobile_no\":\"64756745746\",\"email_id\":\"s@sd.sd\",\"customer_id\":\"1\",\"sequence\":1,\"is_default\":\"0\"}],\"address\":[{\"name\":\"Praveen\",\"designation\":\"SE\",\"mobile_no\":\"64756745746\",\"email_id\":\"s@sd.sd\",\"customer_id\":\"1\",\"sequence\":1,\"is_default\":\"0\"},{\"name\":\"Praveen\",\"designation\":\"SE\",\"mobile_no\":\"64756745746\",\"email_id\":\"s@sd.sd\",\"customer_id\":\"1\",\"sequence\":1,\"is_default\":\"0\"}],\"bank\":[{\"name\":\"MD\",\"bank\":\"Vijaya Bank\",\"account_number\":\"467574574576\",\"ifsc_code\":\"456456\",\"customer_id\":\"1\",\"sequence\":0,\"is_default\":\"1\"},{\"name\":\"SD\",\"bank\":\"SBI\",\"account_number\":\"766476765456789087\",\"ifsc_code\":\"5448210\",\"customer_id\":\"1\",\"sequence\":1,\"is_default\":\"0\"}]}', 'Updated Successfully', 'Customer', '1'),
('1432e9a4da4270a3f5dd72338529bb75c', '2020-10-04 14:36:36', '::1', 1, 1, '{\"customer\":{\"name\":\"Shiva Krishna\",\"customer_code\":\"MK5605\",\"billing_name\":\"Madhu Pvt Ltd.\",\"phone_no\":\"0123456789\",\"email_id\":\"test@test.com\",\"active_from\":\"2020-10-29\",\"notes\":\"Test Customer\",\"enable_gst\":\"0\",\"logo\":\"16017993605635.PNG\",\"update_date_time\":\"2020-10-04 14:36:35\"},\"contact\":[{\"name\":\"Madhu\",\"designation\":\"MD\",\"mobile_no\":\"1211212\",\"email_id\":\"md@asd.sdf\",\"customer_id\":\"1\",\"sequence\":0,\"is_default\":\"1\"},{\"name\":\"Praveen\",\"designation\":\"SE\",\"mobile_no\":\"64756745746\",\"email_id\":\"s@sd.sd\",\"customer_id\":\"1\",\"sequence\":1,\"is_default\":\"0\"}],\"address\":[{\"name\":\"Praveen\",\"designation\":\"SE\",\"mobile_no\":\"64756745746\",\"email_id\":\"s@sd.sd\",\"customer_id\":\"1\",\"sequence\":1,\"is_default\":\"0\"},{\"name\":\"Praveen\",\"designation\":\"SE\",\"mobile_no\":\"64756745746\",\"email_id\":\"s@sd.sd\",\"customer_id\":\"1\",\"sequence\":1,\"is_default\":\"0\"}],\"bank\":[{\"name\":\"MD\",\"bank\":\"Vijaya Bank\",\"account_number\":\"467574574576\",\"ifsc_code\":\"456456\",\"customer_id\":\"1\",\"sequence\":0,\"is_default\":\"1\"},{\"name\":\"SD\",\"bank\":\"SBI\",\"account_number\":\"766476765456789087\",\"ifsc_code\":\"5448210\",\"customer_id\":\"1\",\"sequence\":1,\"is_default\":\"0\"}]}', 'Updated Successfully', 'Customer', '1'),
('1432e9a4da4270a3f5dd72338529bb75c', '2020-10-04 14:36:52', '::1', 1, 1, '{\"customer\":{\"name\":\"Shiva Krishna\",\"customer_code\":\"MK5605\",\"billing_name\":\"Madhu Pvt Ltd.\",\"phone_no\":\"0123456789\",\"email_id\":\"test@test.com\",\"active_from\":\"2020-10-29\",\"notes\":\"Test Customer\",\"enable_gst\":\"0\",\"logo\":\"16017993605635.PNG\",\"update_date_time\":\"2020-10-04 14:36:51\"},\"contact\":[{\"name\":\"Madhu\",\"designation\":\"MD\",\"mobile_no\":\"1211212\",\"email_id\":\"md@asd.sdf\",\"customer_id\":\"1\",\"sequence\":0,\"is_default\":\"1\"},{\"name\":\"Praveen\",\"designation\":\"SE\",\"mobile_no\":\"64756745746\",\"email_id\":\"s@sd.sd\",\"customer_id\":\"1\",\"sequence\":1,\"is_default\":\"0\"}],\"address\":[{\"name\":\"Praveen\",\"designation\":\"SE\",\"mobile_no\":\"64756745746\",\"email_id\":\"s@sd.sd\",\"customer_id\":\"1\",\"sequence\":1,\"is_default\":\"0\"},{\"name\":\"Praveen\",\"designation\":\"SE\",\"mobile_no\":\"64756745746\",\"email_id\":\"s@sd.sd\",\"customer_id\":\"1\",\"sequence\":1,\"is_default\":\"0\"}],\"bank\":[{\"name\":\"MD\",\"bank\":\"Vijaya Bank\",\"account_number\":\"467574574576\",\"ifsc_code\":\"456456\",\"customer_id\":\"1\",\"sequence\":0,\"is_default\":\"1\"},{\"name\":\"SD\",\"bank\":\"SBI\",\"account_number\":\"766476765456789087\",\"ifsc_code\":\"5448210\",\"customer_id\":\"1\",\"sequence\":1,\"is_default\":\"0\"}]}', 'Updated Successfully', 'Customer', '1'),
('1432e9a4da4270a3f5dd72338529bb75c', '2020-10-04 15:03:32', '::1', 1, 1, '{\"vendor\":{\"name\":\"Rg\",\"vendor_code\":\"VEN002\",\"billing_name\":\"adf\",\"phone_no\":\"32452345\",\"email_id\":\"sadf@adsf.ads\",\"active_from\":\"2020-10-04\",\"notes\":\"sdfgsdfgsg\",\"enable_gst\":\"1\",\"gst_no\":\"245345325\",\"pan_no\":\"ssfsagsfg\",\"logo\":\"16018040117460.PNG\",\"entry_date_time\":\"2020-10-04 15:03:31\",\"status\":\"1\"},\"contact\":[{\"name\":\"sfdg\",\"designation\":\"sdfg\",\"mobile_no\":\"353564356\",\"email_id\":\"sdg@ds.sds\",\"vendor_id\":1,\"sequence\":0,\"is_default\":\"0\"},{\"name\":\"asfg\",\"designation\":\"fgsdgsd\",\"mobile_no\":\"367567\",\"email_id\":\"gsdg@asdfsggf.dgf\",\"vendor_id\":1,\"sequence\":1,\"is_default\":\"0\"}],\"address\":[{\"name\":\"asfg\",\"designation\":\"fgsdgsd\",\"mobile_no\":\"367567\",\"email_id\":\"gsdg@asdfsggf.dgf\",\"vendor_id\":1,\"sequence\":1,\"is_default\":\"0\"},{\"name\":\"asfg\",\"designation\":\"fgsdgsd\",\"mobile_no\":\"367567\",\"email_id\":\"gsdg@asdfsggf.dgf\",\"vendor_id\":1,\"sequence\":1,\"is_default\":\"0\"}],\"bank\":[{\"name\":\"df\",\"bank\":\"dg\",\"account_number\":\"dgh\",\"ifsc_code\":\"df\",\"vendor_id\":1,\"sequence\":0,\"is_default\":\"0\"},{\"name\":\"yuio\",\"bank\":\"yuio\",\"account_number\":\"ioyu\",\"ifsc_code\":\"yuiouy\",\"vendor_id\":1,\"sequence\":1,\"is_default\":\"0\"}]}', 'Inserted Successfully', 'Vendor', '1'),
('18af78b3bba7a2e8ed14a9a48baf1d3c2', '2020-10-07 12:20:02', '::1', 1, 1, '{\"customer\":{\"name\":\"Shiva Krishna\",\"customer_code\":\"MK5605\",\"billing_name\":\"Madhu Pvt Ltd.\",\"phone_no\":\"0123456789\",\"email_id\":\"test@test.com\",\"active_from\":\"2020-10-29\",\"notes\":\"Test Customer\",\"enable_gst\":\"1\",\"gst_no\":\"356346\",\"pan_no\":\"5463456\",\"logo\":\"16017993605635.PNG\",\"update_date_time\":\"2020-10-07 12:20:01\"},\"contact\":[{\"name\":\"Madhu\",\"designation\":\"MD\",\"mobile_no\":\"1211212\",\"email_id\":\"md@asd.sdf\",\"customer_id\":\"1\",\"sequence\":0,\"is_default\":\"1\"},{\"name\":\"Praveen\",\"designation\":\"SE\",\"mobile_no\":\"64756745746\",\"email_id\":\"s@sd.sd\",\"customer_id\":\"1\",\"sequence\":1,\"is_default\":\"0\"}],\"address\":[{\"name\":\"Praveen\",\"designation\":\"SE\",\"mobile_no\":\"64756745746\",\"email_id\":\"s@sd.sd\",\"customer_id\":\"1\",\"sequence\":1,\"is_default\":\"0\"},{\"name\":\"Praveen\",\"designation\":\"SE\",\"mobile_no\":\"64756745746\",\"email_id\":\"s@sd.sd\",\"customer_id\":\"1\",\"sequence\":1,\"is_default\":\"0\"}],\"bank\":[{\"name\":\"MD\",\"bank\":\"Vijaya Bank\",\"account_number\":\"467574574576\",\"ifsc_code\":\"456456\",\"customer_id\":\"1\",\"sequence\":0,\"is_default\":\"1\"},{\"name\":\"SD\",\"bank\":\"SBI\",\"account_number\":\"766476765456789087\",\"ifsc_code\":\"5448210\",\"customer_id\":\"1\",\"sequence\":1,\"is_default\":\"0\"}]}', 'Updated Successfully', 'Customer', '1'),
('18af78b3bba7a2e8ed14a9a48baf1d3c2', '2020-10-07 12:20:16', '::1', 1, 1, '{\"customer\":{\"name\":\"Shiva Krishna\",\"customer_code\":\"MK5605\",\"billing_name\":\"Madhu Pvt Ltd.\",\"phone_no\":\"0123456789\",\"email_id\":\"test@test.com\",\"active_from\":\"2020-10-29\",\"notes\":\"Test Customer\",\"enable_gst\":\"1\",\"gst_no\":\"356346\",\"pan_no\":\"5463456\",\"logo\":\"16017993605635.PNG\",\"update_date_time\":\"2020-10-07 12:20:15\"},\"contact\":[{\"name\":\"Madhu\",\"designation\":\"MD\",\"mobile_no\":\"1211212\",\"email_id\":\"md@asd.sdf\",\"customer_id\":\"1\",\"sequence\":0,\"is_default\":\"1\"},{\"name\":\"Praveen\",\"designation\":\"SE\",\"mobile_no\":\"64756745746\",\"email_id\":\"s@sd.sd\",\"customer_id\":\"1\",\"sequence\":1,\"is_default\":\"0\"}],\"address\":[{\"name\":\"Praveen\",\"designation\":\"SE\",\"mobile_no\":\"64756745746\",\"email_id\":\"s@sd.sd\",\"customer_id\":\"1\",\"sequence\":1,\"is_default\":\"0\"},{\"name\":\"Praveen\",\"designation\":\"SE\",\"mobile_no\":\"64756745746\",\"email_id\":\"s@sd.sd\",\"customer_id\":\"1\",\"sequence\":1,\"is_default\":\"0\"}],\"bank\":[{\"name\":\"MD\",\"bank\":\"Vijaya Bank\",\"account_number\":\"467574574576\",\"ifsc_code\":\"456456\",\"customer_id\":\"1\",\"sequence\":0,\"is_default\":\"1\"},{\"name\":\"SD\",\"bank\":\"SBI\",\"account_number\":\"766476765456789087\",\"ifsc_code\":\"5448210\",\"customer_id\":\"1\",\"sequence\":1,\"is_default\":\"0\"}]}', 'Updated Successfully', 'Customer', '1'),
('1b5e42a7ccd3c27832f0314800482929e', '2020-09-26 10:14:49', '::1', 1, 1, '{\"name\":\"Telangana\",\"zone_code\":\"SOT\",\"country_code\":\"IND\",\"gst_code\":\"26\",\"update_date_time\":\"2020-09-26 10:14:49\"}', 'Updated Successfully', 'State', ''),
('1b5e42a7ccd3c27832f0314800482929e', '2020-09-26 10:15:02', '::1', 1, 1, '{\"name\":\"West Bengal\",\"zone_code\":\"EST\",\"country_code\":\"IND\",\"gst_code\":\"28\",\"update_date_time\":\"2020-09-26 10:15:02\"}', 'Updated Successfully', 'State', ''),
('1b5e42a7ccd3c27832f0314800482929e', '2020-09-26 10:16:15', '::1', 1, 1, '{\"name\":\"Kerala\",\"zone_code\":\"SOT\",\"country_code\":\"IND\",\"gst_code\":\"29\",\"update_date_time\":\"2020-09-26 10:16:15\"}', 'Updated Successfully', 'State', ''),
('1b5e42a7ccd3c27832f0314800482929e', '2020-09-26 10:16:24', '::1', 1, 1, '{\"name\":\"Kerala\",\"zone_code\":\"SOT\",\"country_code\":\"IND\",\"gst_code\":\"27\",\"update_date_time\":\"2020-09-26 10:16:23\"}', 'Updated Successfully', 'State', ''),
('1b5e42a7ccd3c27832f0314800482929e', '2020-09-26 10:16:28', '::1', 1, 1, '{\"name\":\"Karnataka\",\"zone_code\":\"SOT\",\"country_code\":\"IND\",\"gst_code\":\"29\",\"update_date_time\":\"2020-09-26 10:16:28\"}', 'Updated Successfully', 'State', ''),
('1b5e42a7ccd3c27832f0314800482929e', '2020-09-26 10:27:15', '::1', 1, 1, '{\"name\":\"MMMM\",\"phone_code\":\"82\",\"type\":null,\"update_date_time\":\"2020-09-26 10:27:15\"}', 'Updated Successfully', 'Country', ''),
('1b5e42a7ccd3c27832f0314800482929e', '2020-09-26 10:43:53', '::1', 1, 1, '{\"name\":\"Jails\",\"phone_code\":\"12\",\"type\":null,\"update_date_time\":\"2020-09-26 10:43:53\"}', 'Updated Successfully', 'Country', '');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_login_history`
--

CREATE TABLE `haashtag_login_history` (
  `user_id` int(11) NOT NULL,
  `role` varchar(10) NOT NULL,
  `logged_in_date_time` datetime NOT NULL,
  `logged_in_mode` varchar(50) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `browser` varchar(100) NOT NULL,
  `browserVersion` varchar(50) NOT NULL,
  `platform` varchar(150) NOT NULL,
  `full_user_agent_string` text NOT NULL,
  `access_key` varchar(100) NOT NULL,
  `logged_out` char(1) NOT NULL DEFAULT '0',
  `logged_out_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_login_history`
--

INSERT INTO `haashtag_login_history` (`user_id`, `role`, `logged_in_date_time`, `logged_in_mode`, `ip_address`, `browser`, `browserVersion`, `platform`, `full_user_agent_string`, `access_key`, `logged_out`, `logged_out_date_time`) VALUES
(1, 'SUP', '2020-04-07 18:37:25', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '13673ca22c8d2e38ee04e61fdaabdbb5d', '0', NULL),
(1, 'SUP', '2020-04-07 18:37:44', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '1dc2b84d7ca6408d93b1bcc0e4aa254fa', '0', NULL),
(1, 'SUP', '2020-04-07 22:26:18', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '1cd7c1c6f20f8b463dc95207425e763d1', '0', NULL),
(1, 'SUP', '2020-04-07 22:59:54', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '152f47f41f1adecb68b8cff7008a8f402', '0', NULL),
(1, 'SUP', '2020-04-10 11:05:28', 'WEB', '::1', 'Firefox', '74.0', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:74.0) Gecko/20100101 Firefox/74.0', '19d2e4a9d423e8f33322457c143364c6d', '0', NULL),
(1, 'SUP', '2020-04-10 16:24:30', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '152716d6d00ff60cb5a0db3b0744b84bc', '0', NULL),
(1, 'SUP', '2020-04-11 15:24:54', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '162ae209f6f75db43d6d8648973ed0a4e', '0', NULL),
(1, 'SUP', '2020-04-12 22:25:29', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '163f695692dbe67833b0d043084c9779f', '0', NULL),
(1, 'SUP', '2020-04-13 10:24:35', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '10e116a5281eedfa1d1fd6ddcbb80992b', '0', NULL),
(1, 'SUP', '2020-04-14 15:47:59', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '1f71af932567146e0ac6cc8f0ea3eb6ed', '0', NULL),
(1, 'SUP', '2020-04-16 11:51:36', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '165d5eea730e6f4c122c8568e991bfb68', '0', NULL),
(1, 'SUP', '2020-04-16 12:21:24', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '1fa0df55e60a83d79ca4cab47e161b994', '0', NULL),
(1, 'SUP', '2020-04-16 15:49:14', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '1da4c62fabdd224b0e7128693f6e35712', '0', NULL),
(1, 'SUP', '2020-04-17 10:11:13', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '115e70c28b504873242b2b7ed3340fdc9', '0', NULL),
(1, 'SUP', '2020-04-17 15:02:44', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '11969176d574078b9a0504343529edc8a', '0', NULL),
(1, 'SUP', '2020-04-17 17:03:33', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '1b44487f7c5229c1628f66a992b1de853', '0', NULL),
(1, 'SUP', '2020-04-20 09:37:23', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '181e3f1ed367d974ae26bb03308e6a0ba', '0', NULL),
(1, 'SUP', '2020-04-20 09:37:27', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '1aea12aa9eb60e5be424cbd4a4975e416', '0', NULL),
(1, 'SUP', '2020-04-20 09:37:36', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '12cc170638b8dc373605f3ff7b2831350', '0', NULL),
(1, 'SUP', '2020-04-20 09:38:35', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '149d26cc52c0267eee63e074d4d086304', '0', NULL),
(1, 'SUP', '2020-04-20 09:39:04', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '1c95edf0400dca643b79170fb41fc920f', '0', NULL),
(1, 'SUP', '2020-04-22 09:46:23', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '11277a61180c6d578af0524c33dc031c8', '0', NULL),
(1, 'SUP', '2020-04-22 18:27:40', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '11d4080c68a0e5d7e5dc5a7a453713248', '0', NULL),
(1, 'SUP', '2020-04-22 18:30:38', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '17e57fe5b3d5a91d4f72cee8e2b33cf84', '0', NULL),
(1, 'SUP', '2020-04-23 11:38:19', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '179cfde783d15babe42d5d142b68b2563', '0', NULL),
(1, 'SUP', '2020-04-23 15:23:06', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '1caf6b4474cee9f711fef4dd394e4578d', '0', NULL),
(1, 'SUP', '2020-04-24 10:44:45', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '112a49d6e5e93d9fedd6fbf2d33d7003d', '0', NULL),
(1, 'SUP', '2020-04-24 22:27:18', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '170b3023961f64e3dd60cdfd04503f215', '0', NULL),
(1, 'SUP', '2020-04-26 10:13:59', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '157afac05f0467390df6091c905cfbe94', '0', NULL),
(1, 'SUP', '2020-04-27 10:16:48', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '13c1f2e2f14d2873767982b0b87ede315', '0', NULL),
(1, 'SUP', '2020-04-28 13:30:34', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '1a7c0dbfce4a14459b161395383bb4eff', '0', NULL),
(1, 'SUP', '2020-04-28 19:38:01', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '1364dc225d744919fe1448d05105c6803', '0', NULL),
(1, 'SUP', '2020-04-28 20:41:09', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '124831023e379e9f752b10c2d9a9878d9', '0', NULL),
(1, 'SUP', '2020-04-29 09:32:11', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '1164a248ca794700af65abe5bf4be64b9', '0', NULL),
(1, 'SUP', '2020-04-29 21:40:37', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '1426763202cf31917ae5a78468d959cfa', '0', NULL),
(1, 'SUP', '2020-04-30 11:49:39', 'WEB', '::1', 'Chrome', '80.0.3987.163', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '12c987322c033c31f532dd988510177d0', '0', NULL),
(1, 'SUP', '2020-05-03 17:27:22', 'WEB', '::1', 'Chrome', '81.0.4044.129', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '177c13e1284138670b2d6a0b919cb597d', '0', NULL),
(1, 'SUP', '2020-05-04 15:27:57', 'WEB', '::1', 'Chrome', '81.0.4044.129', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1256874e7bfa1d3fb4a064ad1b4737ef3', '0', NULL),
(1, 'SUP', '2020-05-05 09:55:01', 'WEB', '::1', 'Chrome', '81.0.4044.129', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '174365512d30e1b757f2bd72e4da2482b', '0', NULL),
(1, 'SUP', '2020-05-05 13:07:03', 'WEB', '::1', 'Chrome', '81.0.4044.129', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1f9c7bb827609e76c6cfe91f3134437ec', '0', NULL),
(1, 'SUP', '2020-05-06 09:06:38', 'WEB', '::1', 'Chrome', '81.0.4044.129', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1c75822d75d78dac6225518d1619796d4', '0', NULL),
(1, 'SUP', '2020-05-06 14:50:56', 'WEB', '::1', 'Chrome', '81.0.4044.129', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1b1ff5068a4cbf36a52eaf9172e9088a7', '0', NULL),
(1, 'SUP', '2020-05-14 10:17:36', 'WEB', '::1', 'Chrome', '81.0.4044.138', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1738eb14a44f5b9257ab861dfac9f5e00', '0', NULL),
(1, 'SUP', '2020-05-14 19:50:28', 'WEB', '::1', 'Chrome', '81.0.4044.138', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '152d1284d37f153ad4a7fffa11b3a1ef4', '0', NULL),
(1, 'SUP', '2020-05-15 22:33:28', 'WEB', '::1', 'Chrome', '81.0.4044.138', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '18af30cad3e2bfbd64f9bc377abc08d12', '0', NULL),
(1, 'SUP', '2020-05-16 10:19:27', 'WEB', '::1', 'Chrome', '81.0.4044.138', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '18db26ece301f8b7eb8ffcbb316238b52', '0', NULL),
(1, 'SUP', '2020-05-16 10:32:49', 'WEB', '::1', 'Chrome', '81.0.4044.138', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1b6ed218e1de05ede7f7ce267381782c2', '0', NULL),
(1, 'SUP', '2020-09-18 12:59:52', 'WEB', '::1', 'Chrome', '69.2.0.1713', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.2.0.1713 Safari/537.36', '17332aabd549145aba632e3b22c3d67c8', '0', NULL),
(1, 'SUP', '2020-09-18 13:00:20', 'WEB', '::1', 'Chrome', '69.2.0.1713', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.2.0.1713 Safari/537.36', '1cdacee4e82a071f340584ccaf8ade1ff', '0', NULL),
(1, 'SUP', '2020-09-18 13:01:12', 'WEB', '::1', 'Chrome', '69.2.0.1713', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.2.0.1713 Safari/537.36', '1b06faaa8d492a6b376c50c34108a7872', '0', NULL),
(1, 'SUP', '2020-09-18 13:02:01', 'WEB', '::1', 'Chrome', '69.2.0.1713', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.2.0.1713 Safari/537.36', '16e7b8ce2308d2467365aeb322123bada', '0', NULL),
(1, 'SUP', '2020-09-18 13:02:03', 'WEB', '::1', 'Chrome', '69.2.0.1713', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.2.0.1713 Safari/537.36', '1ab73374b3a8cbd4c7e7391aed153af4b', '0', NULL),
(1, 'SUP', '2020-09-18 13:02:14', 'WEB', '::1', 'Chrome', '69.2.0.1713', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.2.0.1713 Safari/537.36', '10efabd7269bb206633f42d30c9f6ded0', '0', NULL),
(1, 'SUP', '2020-09-18 13:02:17', 'WEB', '::1', 'Chrome', '69.2.0.1713', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.2.0.1713 Safari/537.36', '1df9df792f8478c97a1903d79624318a6', '0', NULL),
(1, 'SUP', '2020-09-18 13:02:37', 'WEB', '::1', 'Chrome', '69.2.0.1713', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.2.0.1713 Safari/537.36', '1f0914628cda643103441535ff1f39773', '0', NULL),
(1, 'SUP', '2020-09-18 13:04:33', 'WEB', '::1', 'Chrome', '85.0.4183.102', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '1a98580b6493fa03e66b8cbdbcda6c660', '0', NULL),
(1, 'SUP', '2020-09-18 13:08:53', 'WEB', '::1', 'Chrome', '85.0.4183.102', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '1639c8ae1b86ab84e7a8f665c2c3ba4df', '0', NULL),
(1, 'SUP', '2020-09-18 15:25:26', 'WEB', '::1', 'Chrome', '85.0.4183.102', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '116ef81c6abdb11ee46ed5ad5142a1afd', '0', NULL),
(1, 'SUP', '2020-09-18 16:01:15', 'WEB', '::1', 'Chrome', '85.0.4183.102', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '1b6ef85a789d0f05ebf53c5e170a2c365', '0', NULL),
(1, 'SUP', '2020-09-18 17:32:19', 'WEB', '::1', 'Chrome', '85.0.4183.102', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '1d4cd521701113205dda3237f2154539c', '0', NULL),
(1, 'SUP', '2020-09-18 17:33:28', 'WEB', '::1', 'Chrome', '85.0.4183.102', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '15989562750b292e174e8a841bbf0801a', '0', NULL),
(1, 'SUP', '2020-09-18 17:33:47', 'WEB', '::1', 'Chrome', '85.0.4183.102', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '139c09099d1e9b91ef4839f40af93b0be', '0', NULL),
(1, 'SUP', '2020-09-19 10:12:27', 'WEB', '::1', 'Chrome', '85.0.4183.102', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '1c8be9ab76cd9ee5ed38b577d6ae3cbd5', '0', NULL),
(1, 'SUP', '2020-09-19 19:54:46', 'WEB', '::1', 'Chrome', '85.0.4183.102', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '1504ca89cd252adb777ee3a8e7740329c', '0', NULL),
(1, 'SUP', '2020-09-19 19:54:47', 'WEB', '::1', 'Chrome', '85.0.4183.102', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '1ef8b39f7acfcd5466117f5b20b609675', '0', NULL),
(1, 'SUP', '2020-09-20 10:37:44', 'WEB', '::1', 'Chrome', '85.0.4183.102', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '11f035f145dcd665c2157cdec34d63c8d', '0', NULL),
(1, 'SUP', '2020-09-20 14:23:57', 'WEB', '::1', 'Chrome', '85.0.4183.102', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '18dae5c64144b2cf194d2c08216988006', '0', NULL),
(1, 'SUP', '2020-09-20 14:24:10', 'WEB', '::1', 'Chrome', '85.0.4183.102', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '1c216d59a716d645b64ec8f1d107a9475', '0', NULL),
(1, 'SUP', '2020-09-20 14:25:18', 'WEB', '::1', 'Chrome', '85.0.4183.102', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '18c295e3874386a9c211a12ff9532c536', '0', NULL),
(1, 'SUP', '2020-09-20 14:25:33', 'WEB', '::1', 'Chrome', '85.0.4183.102', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '17f4cf37acf196c86ccf2a45b6ddd4fde', '0', NULL),
(1, 'SUP', '2020-09-26 10:08:29', 'WEB', '::1', 'Chrome', '85.0.4183.121', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', '1b5e42a7ccd3c27832f0314800482929e', '0', NULL),
(1, 'SUP', '2020-09-27 08:35:20', 'WEB', '::1', 'Chrome', '85.0.4183.121', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', '17b589f6e7a75dfb38e511fb1ab14dcff', '0', NULL),
(1, 'SUP', '2020-10-03 10:05:36', 'WEB', '::1', 'Chrome', '85.0.4183.121', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', '13e95b169a3128796afe784bad9dd1782', '0', NULL),
(1, 'SUP', '2020-10-04 11:08:15', 'WEB', '::1', 'Chrome', '85.0.4183.121', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', '1432e9a4da4270a3f5dd72338529bb75c', '0', NULL),
(1, 'SUP', '2020-10-05 08:59:15', 'WEB', '::1', 'Chrome', '85.0.4183.121', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', '15a7e917c399fea87707c344b3447678e', '0', NULL),
(1, 'SUP', '2020-10-07 08:30:37', 'WEB', '::1', 'Chrome', '85.0.4183.121', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', '12fe8ff3ca82b771cfd903a3dc8133ff3', '0', NULL),
(1, 'SUP', '2020-10-07 12:19:23', 'WEB', '::1', 'Chrome', '85.0.4183.121', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', '18af78b3bba7a2e8ed14a9a48baf1d3c2', '0', NULL),
(1, 'SUP', '2020-10-31 12:07:09', 'WEB', '::1', 'Chrome', '86.0.4240.111', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '1cb7f81949a7c402d5cc279f09f12db13', '0', NULL),
(1, 'SUP', '2020-11-03 17:39:06', 'WEB', '::1', 'Chrome', '86.0.4240.111', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '1156ba018e1bdb434e50c96a8a613dd38', '0', NULL),
(1, 'SUP', '2020-11-03 22:58:25', 'WEB', '::1', 'Chrome', '86.0.4240.111', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '18eadb83c90bdc19b01cbcc836edd769d', '0', NULL),
(1, 'SUP', '2020-12-08 19:58:45', 'WEB', '::1', 'Chrome', '86.0.4240.198', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '10e1a74f542bf13213ba1460c685dac6b', '0', NULL),
(1, 'SUP', '2020-12-09 22:27:36', 'WEB', '::1', 'Chrome', '87.0.4280.88', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '1166f54da00d587e8796a2b1f64a3e3e1', '0', NULL),
(1, 'SUP', '2020-12-12 09:27:02', 'WEB', '::1', 'Chrome', '87.0.4280.88', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '1335f1e1799f564f42673c6dabf19c3aa', '0', NULL),
(1, 'SUP', '2020-12-13 08:21:25', 'WEB', '::1', 'Chrome', '87.0.4280.88', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '1e16cc4e7aa7237b39dd2a2f1ef35d7d3', '0', NULL),
(1, 'SUP', '2020-12-14 18:58:06', 'WEB', '::1', 'Chrome', '87.0.4280.88', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '11acd57eafc9cf36dade9df4d9c1e8504', '0', NULL),
(1, 'SUP', '2020-12-14 21:32:39', 'WEB', '49.206.7.2', 'Chrome', '87.0.4280.88', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '1fbc355346ddaffbfc758be6f7a4151c3', '0', NULL),
(1, 'SUP', '2020-12-14 21:35:02', 'WEB', '103.130.108.131', 'Chrome', '87.0.4280.88', 'Windows 7', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '126f456cfd707f235cc5f3f5e65599b80', '0', NULL),
(1, 'SUP', '2020-12-15 15:29:09', 'WEB', '122.167.66.97', 'Chrome', '87.0.4280.88', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '1fc985f0272aee4d000142b2517dac35f', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_mode_master`
--

CREATE TABLE `haashtag_mode_master` (
  `mode_code` varchar(15) NOT NULL,
  `mode_name` varchar(150) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_mode_master`
--

INSERT INTO `haashtag_mode_master` (`mode_code`, `mode_name`, `status`) VALUES
('AC', 'Air Cargo/Saver', '1'),
('AR', 'Air/Express', '1'),
('DF', 'Direct/flight', '1'),
('SF', 'Surface/Economy', '1');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_partner`
--

CREATE TABLE `haashtag_partner` (
  `partner_code` varchar(15) NOT NULL,
  `name` varchar(150) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `entry_by` bigint(20) NOT NULL,
  `entry_date_time` datetime NOT NULL,
  `update_by` bigint(20) NOT NULL,
  `update_date_time` datetime DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `logo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_partner`
--

INSERT INTO `haashtag_partner` (`partner_code`, `name`, `contact`, `email_id`, `description`, `entry_by`, `entry_date_time`, `update_by`, `update_date_time`, `status`, `logo`) VALUES
('DTDC', 'DTDC South', '9874561230', 'asas@sdf.dg', 'dsgsdgs', 0, '2020-09-18 20:42:46', 0, '2020-09-18 20:43:30', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_partner_service`
--

CREATE TABLE `haashtag_partner_service` (
  `service_id` bigint(20) NOT NULL,
  `partner_code` varchar(10) NOT NULL,
  `name` varchar(150) NOT NULL,
  `entry_by` bigint(20) NOT NULL,
  `entry_date_time` datetime NOT NULL,
  `update_by` bigint(20) NOT NULL,
  `update_date_time` datetime DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_partner_service`
--

INSERT INTO `haashtag_partner_service` (`service_id`, `partner_code`, `name`, `entry_by`, `entry_date_time`, `update_by`, `update_date_time`, `status`) VALUES
(1, 'DTDC', 'DTDC Basic Plus', 0, '2020-09-18 21:08:34', 0, '2020-09-18 21:09:38', '1');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_pincode`
--

CREATE TABLE `haashtag_pincode` (
  `pincode` varchar(12) NOT NULL,
  `state_code` char(12) NOT NULL,
  `city_id` char(12) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `is_deliverable` char(1) NOT NULL DEFAULT '1',
  `entry_by` bigint(20) NOT NULL,
  `entry_date_time` datetime NOT NULL,
  `update_by` bigint(20) NOT NULL,
  `update_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `haashtag_pincode`
--

INSERT INTO `haashtag_pincode` (`pincode`, `state_code`, `city_id`, `name`, `status`, `is_deliverable`, `entry_by`, `entry_date_time`, `update_by`, `update_date_time`) VALUES
('560010', 'KAR', '1', '', '1', '1', 0, '2020-09-18 19:39:16', 0, NULL),
('560011', 'KAR', '1', '', '1', '1', 0, '2020-09-18 17:55:55', 0, '2020-09-18 19:38:46');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_profile`
--

CREATE TABLE `haashtag_profile` (
  `profile_id` int(11) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `company_code` varchar(50) NOT NULL,
  `enable_gst` char(1) NOT NULL DEFAULT '0',
  `gst_no` varchar(50) NOT NULL,
  `pan_no` varchar(50) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `country_code` varchar(20) NOT NULL,
  `zone_code` varchar(20) NOT NULL,
  `state_code` varchar(50) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `last_updated_date_time` datetime DEFAULT NULL,
  `entry_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_profile`
--

INSERT INTO `haashtag_profile` (`profile_id`, `company_name`, `phone_no`, `email`, `company_code`, `enable_gst`, `gst_no`, `pan_no`, `logo`, `country_code`, `zone_code`, `state_code`, `city_id`, `pincode`, `address`, `last_updated_date_time`, `entry_date_time`) VALUES
(1, 'asdf', 'asdf', 'sadfasdf@adf.asdf', '3563456', '1', 'dfas', 'asdf', '', 'IND', 'SOT', 'KAR', 1, '560010', 'asasassdsd', '2020-12-14 21:33:33', '2020-12-14 20:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_profile_bank`
--

CREATE TABLE `haashtag_profile_bank` (
  `profile_id` int(11) NOT NULL,
  `sequence` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `bank` varchar(150) NOT NULL,
  `ifsc_code` varchar(50) NOT NULL,
  `account_no` varchar(150) NOT NULL,
  `is_default` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_profile_bank`
--

INSERT INTO `haashtag_profile_bank` (`profile_id`, `sequence`, `name`, `bank`, `ifsc_code`, `account_no`, `is_default`) VALUES
(1, 0, 'Company Account', 'Vijaya Bank', 'VIJ00254522', '12365542222235122', '1');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_profile_contact`
--

CREATE TABLE `haashtag_profile_contact` (
  `profile_id` int(11) NOT NULL,
  `sequence` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `is_default` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_profile_contact`
--

INSERT INTO `haashtag_profile_contact` (`profile_id`, `sequence`, `name`, `designation`, `email_id`, `mobile_no`, `is_default`) VALUES
(1, 0, 'Shiva', 'COO', 'shiva@steed26.in', '1234567890', '1');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_rate_card`
--

CREATE TABLE `haashtag_rate_card` (
  `rate_id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `rate_card_code` varchar(20) NOT NULL,
  `partner_code` varchar(15) NOT NULL,
  `service_id` bigint(20) NOT NULL,
  `mode` varchar(50) NOT NULL,
  `doc_type` varchar(10) NOT NULL,
  `adl_weight` float(15,3) NOT NULL,
  `adl_price` float(15,3) NOT NULL,
  `entry_by` bigint(20) NOT NULL,
  `entry_date_time` datetime NOT NULL,
  `update_by` bigint(20) NOT NULL,
  `update_date_time` datetime DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `is_clone` char(1) NOT NULL DEFAULT '0',
  `clone_rate_id` bigint(20) DEFAULT NULL,
  `active_from` datetime NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `description` text,
  `no_of_colours` int(11) NOT NULL,
  `addl_weight` float(7,2) DEFAULT NULL,
  `enable_addl_weight` char(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_rate_card`
--

INSERT INTO `haashtag_rate_card` (`rate_id`, `name`, `rate_card_code`, `partner_code`, `service_id`, `mode`, `doc_type`, `adl_weight`, `adl_price`, `entry_by`, `entry_date_time`, `update_by`, `update_date_time`, `status`, `is_clone`, `clone_rate_id`, `active_from`, `country_code`, `description`, `no_of_colours`, `addl_weight`, `enable_addl_weight`) VALUES
(1, 'Test', 'GTF25', 'DTDC', 1, 'AC', 'D,N', 0.000, 0.000, 1, '2020-12-13 09:37:07', 1, '2020-12-13 10:00:22', '1', '0', NULL, '0000-00-00 00:00:00', 'IND', 'Test', 2, 250.00, '1');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_rate_card_colour`
--

CREATE TABLE `haashtag_rate_card_colour` (
  `colour_id` bigint(20) NOT NULL,
  `colour_code` varchar(50) NOT NULL,
  `rate_id` bigint(20) NOT NULL,
  `fsc` varchar(20) NOT NULL,
  `with_effetive_date` date NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_rate_card_colour`
--

INSERT INTO `haashtag_rate_card_colour` (`colour_id`, `colour_code`, `rate_id`, `fsc`, `with_effetive_date`, `status`, `sequence`) VALUES
(1, '#ff1a1a', 1, '12', '2020-01-02', '1', 0),
(2, '#21c033', 1, '12', '2020-01-01', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_rate_card_history`
--

CREATE TABLE `haashtag_rate_card_history` (
  `history_id` bigint(31) NOT NULL,
  `rate_id` bigint(20) NOT NULL,
  `name` int(11) NOT NULL,
  `rate_card_code` varchar(20) NOT NULL,
  `partner_code` varchar(15) NOT NULL,
  `service_id` bigint(20) NOT NULL,
  `mode` varchar(50) NOT NULL,
  `doc_type` varchar(10) NOT NULL,
  `adl_weight` float(15,3) NOT NULL,
  `adl_price` float(15,3) NOT NULL,
  `entry_by` bigint(20) NOT NULL,
  `entry_date_time` datetime NOT NULL,
  `update_by` bigint(20) NOT NULL,
  `update_date_time` datetime DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `is_clone` char(1) NOT NULL DEFAULT '0',
  `clone_rate_id` bigint(20) DEFAULT NULL,
  `active_from` datetime NOT NULL,
  `active_to` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_rate_card_location`
--

CREATE TABLE `haashtag_rate_card_location` (
  `location_id` bigint(20) NOT NULL,
  `location_type` char(5) NOT NULL,
  `details` text NOT NULL,
  `rate_id` bigint(20) NOT NULL,
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_rate_card_location`
--

INSERT INTO `haashtag_rate_card_location` (`location_id`, `location_type`, `details`, `rate_id`, `sequence`) VALUES
(1, 'L', '', 1, 0),
(2, 'Z', 'EST,NRT', 1, 1),
(3, 'Z', 'SOT', 1, 2),
(4, 'S', 'KAR,KER', 1, 3),
(5, 'C', '1', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_rate_card_location_history`
--

CREATE TABLE `haashtag_rate_card_location_history` (
  `location_id` bigint(20) NOT NULL,
  `history_id` bigint(31) NOT NULL,
  `location_type` char(5) NOT NULL,
  `details` text NOT NULL,
  `rate_id` bigint(20) NOT NULL,
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_rate_card_price`
--

CREATE TABLE `haashtag_rate_card_price` (
  `price_id` bigint(31) NOT NULL,
  `weight_id` bigint(20) NOT NULL,
  `colour_id` bigint(20) NOT NULL,
  `rate_id` bigint(20) NOT NULL,
  `is_additional` int(11) NOT NULL,
  `additional_weight` float(12,3) NOT NULL,
  `location_id` bigint(20) NOT NULL,
  `price` float(12,3) NOT NULL,
  `sequence` int(11) DEFAULT NULL,
  `sub_sequence` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_rate_card_price`
--

INSERT INTO `haashtag_rate_card_price` (`price_id`, `weight_id`, `colour_id`, `rate_id`, `is_additional`, `additional_weight`, `location_id`, `price`, `sequence`, `sub_sequence`) VALUES
(1, 1, 1, 1, 0, 0.000, 1, 1.000, 0, NULL),
(2, 2, 1, 1, 0, 0.000, 1, 2.000, 1, NULL),
(3, 3, 1, 1, 0, 0.000, 1, 3.000, 2, NULL),
(4, 0, 1, 1, 1, 250.000, 1, 4.000, 3, 0),
(5, 1, 2, 1, 0, 0.000, 1, 5.000, 3, NULL),
(6, 2, 2, 1, 0, 0.000, 1, 6.000, 4, NULL),
(7, 3, 2, 1, 0, 0.000, 1, 7.000, 5, NULL),
(8, 0, 2, 1, 1, 250.000, 1, 8.000, 6, 0),
(9, 1, 1, 1, 0, 0.000, 2, 9.000, 6, NULL),
(10, 2, 1, 1, 0, 0.000, 2, 10.000, 7, NULL),
(11, 3, 1, 1, 0, 0.000, 2, 11.000, 8, NULL),
(12, 0, 1, 1, 1, 250.000, 2, 12.000, 9, 1),
(13, 1, 2, 1, 0, 0.000, 2, 13.000, 9, NULL),
(14, 2, 2, 1, 0, 0.000, 2, 14.000, 10, NULL),
(15, 3, 2, 1, 0, 0.000, 2, 16.000, 11, NULL),
(16, 0, 2, 1, 1, 250.000, 2, 17.000, 12, 1),
(17, 1, 1, 1, 0, 0.000, 3, 18.000, 12, NULL),
(18, 2, 1, 1, 0, 0.000, 3, 19.000, 13, NULL),
(19, 3, 1, 1, 0, 0.000, 3, 20.000, 14, NULL),
(20, 0, 1, 1, 1, 250.000, 3, 21.000, 15, 2),
(21, 1, 2, 1, 0, 0.000, 3, 22.000, 15, NULL),
(22, 2, 2, 1, 0, 0.000, 3, 23.000, 16, NULL),
(23, 3, 2, 1, 0, 0.000, 3, 24.000, 17, NULL),
(24, 0, 2, 1, 1, 250.000, 3, 25.000, 18, 2),
(25, 1, 1, 1, 0, 0.000, 4, 26.000, 18, NULL),
(26, 2, 1, 1, 0, 0.000, 4, 27.000, 19, NULL),
(27, 3, 1, 1, 0, 0.000, 4, 28.000, 20, NULL),
(28, 0, 1, 1, 1, 250.000, 4, 29.000, 21, 3),
(29, 1, 2, 1, 0, 0.000, 4, 30.000, 21, NULL),
(30, 2, 2, 1, 0, 0.000, 4, 31.000, 22, NULL),
(31, 3, 2, 1, 0, 0.000, 4, 32.000, 23, NULL),
(32, 0, 2, 1, 1, 250.000, 4, 33.000, 24, 3),
(33, 1, 1, 1, 0, 0.000, 5, 34.000, 24, NULL),
(34, 2, 1, 1, 0, 0.000, 5, 35.000, 25, NULL),
(35, 3, 1, 1, 0, 0.000, 5, 36.000, 26, NULL),
(36, 0, 1, 1, 1, 250.000, 5, 37.000, 27, 4),
(37, 1, 2, 1, 0, 0.000, 5, 38.000, 27, NULL),
(38, 2, 2, 1, 0, 0.000, 5, 39.000, 28, NULL),
(39, 3, 2, 1, 0, 0.000, 5, 40.000, 29, NULL),
(40, 0, 2, 1, 1, 250.000, 5, 41.000, 30, 4);

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_rate_card_price_history`
--

CREATE TABLE `haashtag_rate_card_price_history` (
  `price_id` bigint(31) NOT NULL,
  `weight_id` bigint(20) NOT NULL,
  `history_id` bigint(31) NOT NULL,
  `rate_id` bigint(20) NOT NULL,
  `is_additional` int(11) NOT NULL,
  `from_weight` int(11) NOT NULL,
  `to_weight` int(11) NOT NULL,
  `location_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_rate_card_weight_range`
--

CREATE TABLE `haashtag_rate_card_weight_range` (
  `rate_id` bigint(20) NOT NULL,
  `from_weight` float(12,3) NOT NULL,
  `to_weight` float(12,3) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `weight_id` bigint(20) NOT NULL,
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_rate_card_weight_range`
--

INSERT INTO `haashtag_rate_card_weight_range` (`rate_id`, `from_weight`, `to_weight`, `status`, `weight_id`, `sequence`) VALUES
(1, 0.000, 100.000, '1', 1, 0),
(1, 101.000, 200.000, '1', 2, 1),
(1, 201.000, 300.000, '1', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_rate_card_weight_range_history`
--

CREATE TABLE `haashtag_rate_card_weight_range_history` (
  `rate_id` bigint(20) NOT NULL,
  `from_weight` float(12,3) NOT NULL,
  `history_id` bigint(31) NOT NULL,
  `to_weight` float(12,3) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `weight_id` bigint(20) NOT NULL,
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_role`
--

CREATE TABLE `haashtag_role` (
  `role_code` varchar(5) NOT NULL COMMENT 'Unique role code',
  `role_name` varchar(100) NOT NULL COMMENT 'Name of the code',
  `role_staus` enum('1','0') NOT NULL DEFAULT '1' COMMENT '1-active, 0-block',
  `entry_date_time` datetime NOT NULL,
  `update_date_time` datetime DEFAULT NULL,
  `single_user` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_role`
--

INSERT INTO `haashtag_role` (`role_code`, `role_name`, `role_staus`, `entry_date_time`, `update_date_time`, `single_user`) VALUES
('SUP', 'Superadmin', '1', '2020-03-27 00:00:00', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_role_page_map`
--

CREATE TABLE `haashtag_role_page_map` (
  `role_code` varchar(10) NOT NULL,
  `page_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_sessions`
--

CREATE TABLE `haashtag_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` bigint(20) NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_sessions`
--

INSERT INTO `haashtag_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('8avh3vt5ailll3pdbunol90ejqs7hcu0', '::1', 1607840006, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373834303030363b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('2unh1f7tmvridk3klnvumm58fp8njkg9', '::1', 1607839429, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373833393432393b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('iotogru5j8h7cc4u7a83g4odunbt1e6u', '::1', 1607835306, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373833353330363b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('kqkdokagoh06rcglpcle27ah54uma6hc', '::1', 1607834940, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373833343934303b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('32t58m88s9p4qtitrj3gal89gqrh76pp', '::1', 1607834559, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373833343535393b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('kl3uoll503ut3ecqig492ncirtpce8bj', '::1', 1607833556, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373833333535363b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('7flkuvl92qvc1nf95d2u6vatsembg0nj', '::1', 1607833212, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373833333231323b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('bi88onansc8bh1qilt06f5m3jtou1lu0', '::1', 1607832911, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373833323931313b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('10g0flohg5hi1vbo5815ft9vlsp7mgfs', '::1', 1607832433, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373833323433333b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('scmiduu59sp6h52gfg7a5p3ei7mkhses', '::1', 1607832048, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373833323034383b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('05rnd01h5ismfbb1fln93ehn55qi4els', '::1', 1607830844, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373833303834343b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('pqbnimn5eepo4ksgvf942i310icidups', '::1', 1607830472, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373833303437323b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('pklu6k2jak4n7jnbkbd2inu7pmb930a8', '::1', 1607829685, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373832393638353b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('4nnvg5mlhpluef17soqpinf64t9pf5ui', '::1', 1607746641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373734363634303b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313333356631653137393966353634663432363733633664616266313963336161223b),
('929oebn9mr07tdd9rmpsv49efasn70qo', '::1', 1607746640, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373734363634303b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313333356631653137393966353634663432363733633664616266313963336161223b),
('paql6v4rqf017jgnlit2lf8vke37ld36', '::1', 1607534588, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373533333839313b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313136366635346461303064353837653837393661326231663634613365336531223b),
('9bqaeqhs7lvolfd96n3ji1ekoi52sjqi', '::1', 1607533891, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373533333839313b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313136366635346461303064353837653837393661326231663634613365336531223b),
('henpi879h7s7tgube6q4asjefm3jjn9d', '::1', 1607533495, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373533333439353b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313136366635346461303064353837653837393661326231663634613365336531223b),
('1pb73abfn5hg7k06jmr8hqu30mst32fm', '::1', 1604823397, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343832333339323b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b),
('ni17fi97bhfc2gl5kslqaeontluv1nhn', '::1', 1607440716, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373433373730353b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313065316137346635343262663133323133626131343630633638356461633662223b),
('nfc35gie39k0aihqjoi5qidp1ll7cc5e', '::1', 1604427214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343432373133353b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313865616462383363393062646331396230316362636338333665646437363964223b),
('1bfn1esqd46ud0so7h70jbroc1agb1gk', '::1', 1604427135, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343432373133353b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313865616462383363393062646331396230316362636338333665646437363964223b),
('lnpvljqvvpmht1cjje5637pd0lp7mk2f', '::1', 1604426541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343432363534313b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313865616462383363393062646331396230316362636338333665646437363964223b),
('hv7uac7a0n23ct6o11102ejsj8tanab2', '::1', 1604425948, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343432353934383b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313865616462383363393062646331396230316362636338333665646437363964223b),
('8kjgkein79l8cbo6q1difh9hv5jh4jc1', '::1', 1604425540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343432353534303b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313865616462383363393062646331396230316362636338333665646437363964223b),
('e2spp82akmfhqncpbupqce6943co57f1', '::1', 1604409203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343430353731313b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313135366261303138653162646234333465353063393661386136313364643338223b),
('35n0ue772dq36j6m9shqvqesfn3gepmj', '::1', 1604405711, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343430353731313b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313135366261303138653162646234333465353063393661386136313364643338223b),
('s9dhjmn697h73uj50oumva9phogioaoo', '::1', 1604126384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343132363231383b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316362376638313934396137633430326435636332373966303966313264623133223b),
('pft6todu3ijqi6jjtshk7mld0t0sllav', '::1', 1602054629, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323035343632333b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313861663738623362626137613265386564313461396134386261663164336332223b),
('5b60e6hrjhi9pk49o0gpi4b9ps39gccn', '::1', 1602054623, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323035343632333b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313861663738623362626137613265386564313461396134386261663164336332223b),
('vjviacq5lc59trovvp25ivllb5iiil1a', '::1', 1602054214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323035343231343b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313861663738623362626137613265386564313461396134386261663164336332223b),
('5et9h9uihrgpbo28u6e8uumc8cjkcj81', '::1', 1602045988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323034343736383b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313266653866663363613832623737316366643930336133646338313333666633223b),
('bcrmk1ob5m0m86dgl6h4hpulmuuv62jg', '::1', 1602044768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323034343736383b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313266653866663363613832623737316366643930336133646338313333666633223b),
('3srejiqug7amfdkl5dpfn8pstlgfotmf', '::1', 1602044406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323034343430363b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313266653866663363613832623737316366643930336133646338313333666633223b),
('7bq904vecdcvn0niplhoojotj9in1v87', '::1', 1602043086, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323034333038363b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313266653866663363613832623737316366643930336133646338313333666633223b),
('thps29mbii2roo4dvn7ui8pad62982n4', '::1', 1602042565, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323034323536353b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313266653866663363613832623737316366643930336133646338313333666633223b),
('ghsnhnqnpv3nn5lupof9gftc2qscepar', '::1', 1602042186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323034323138363b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313266653866663363613832623737316366643930336133646338313333666633223b),
('4v8iits9119rj3rn4tdmnfv5q8444c3o', '::1', 1602041648, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323034313634383b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313266653866663363613832623737316366643930336133646338313333666633223b),
('bn9v7n8luunvjnjbjt5ng79adkss3qrs', '::1', 1602041346, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323034313334363b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313266653866663363613832623737316366643930336133646338313333666633223b),
('ed2sjltu2sqj63d9oo3hbll42r70rqf4', '::1', 1602040954, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323034303935343b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313266653866663363613832623737316366643930336133646338313333666633223b),
('k3do1giocmiefjak6fo6vljns4htrsi0', '::1', 1601917748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313931373734373b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b),
('cjfbcbd2qsnq3ndlr83v0dv43lj59vd7', '::1', 1602040585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323034303538353b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313266653866663363613832623737316366643930336133646338313333666633223b),
('abi05c468ne95g3n3dslokepigejsqfj', '::1', 1602039631, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630323033393633313b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b),
('3mun3a3vv7lbek8tlo1jg149fi26i7t8', '::1', 1601871341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313837313238383b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313561376539313763333939666561383737303763333434623334343736373865223b),
('dmii39ii3jukevbe6ca4nroc3l561tir', '::1', 1601871288, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313837313238383b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313561376539313763333939666561383737303763333434623334343736373865223b),
('rki3nfh570clo65nkf5fl017hmhlsnrf', '::1', 1601870953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313837303935333b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313561376539313763333939666561383737303763333434623334343736373865223b),
('5omqet7b23dhdd788r89ec1guv750ioo', '::1', 1601870598, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313837303539383b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313561376539313763333939666561383737303763333434623334343736373865223b),
('8on23evpk7ea1mt8qu79v6m0cqp0pk6p', '::1', 1601870106, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313837303130363b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313561376539313763333939666561383737303763333434623334343736373865223b),
('akgq8qqq2ft4509qqd4g6esrleq8nl41', '::1', 1601869777, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313836393737373b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313561376539313763333939666561383737303763333434623334343736373865223b),
('jd7pibd1e5k5rdlml4nasdl9l8uk6bco', '::1', 1601869422, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313836393432323b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313561376539313763333939666561383737303763333434623334343736373865223b),
('3f61q64otsju8dtl7263u8pp4j03v8u1', '::1', 1601869112, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313836393131323b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313561376539313763333939666561383737303763333434623334343736373865223b);
INSERT INTO `haashtag_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('schpj3k5tao8tb0aq6bi3mka6bseq728', '::1', 1601818416, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313831383431353b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313433326539613464613432373061336635646437323333383532396262373563223b),
('sfs0b89rok2esepqaao393ogrt67d905', '::1', 1601818415, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313831383431353b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313433326539613464613432373061336635646437323333383532396262373563223b),
('p0lo6r8ekd5qjs7sg16rphihoupdndp5', '::1', 1601818098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313831383039383b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313433326539613464613432373061336635646437323333383532396262373563223b),
('lfsk19ip1er1jht29av2loaoqg98va8a', '::1', 1601817770, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313831373737303b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313433326539613464613432373061336635646437323333383532396262373563223b),
('p338trv8ncin84ta8ekdt72a4ua5dfua', '::1', 1601806828, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313830363832383b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313433326539613464613432373061336635646437323333383532396262373563223b),
('3otqs6vc2ng6o745rdhnoiti23of3rge', '::1', 1601811133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313831313133333b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313433326539613464613432373061336635646437323333383532396262373563223b),
('qkc3l8vadd5psqcha5pl8upt6up4a3rf', '::1', 1601811684, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313831313638343b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313433326539613464613432373061336635646437323333383532396262373563223b),
('8590mh5qmftrcrbfjmf8f55i51hej013', '::1', 1601812408, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630313831323430383b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313433326539613464613432373061336635646437323333383532396262373563223b),
('365mide51n1iprj9tdfg4mh88s6ooqb0', '::1', 1607846160, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373834363136303b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b6d6573736167657c733a3137393a223c64697620636c6173733d27616c65727420616c6572742d7375636365737320637573746f6d2d616c657274273e0a090909090909090909093c64697620636c6173733d27756b2d6e6f746966792d6d65737361676520756b2d6e6f746966792d6d6573736167652d73756363657373273e0a0909090909090909092020092020204461746120496d706f72746564205375636365737366756c6c793c6469763e3c2f6469763e3c2f6469763e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('h74ri6bc88kgl4kkg5egv59o4el72krf', '::1', 1607849198, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373834393139383b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('htk9keus8e0uprd4ao62jii3acpboif2', '::1', 1607849514, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373834393531343b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('mljek70virdq1l80gcqoasnk6hps55fa', '::1', 1607849885, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373834393838353b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('f5c2e1684aavqhmqdsgdctmid6lgteka', '::1', 1607853117, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373835333131373b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('o2otf9e2pilhkihjgjodejhfhachglqu', '::1', 1607853592, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373835333539323b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('mkn1s7nck9d58ul0sg77n1ae74k45oes', '::1', 1607853897, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373835333839373b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('sfbv0m8qgnsslf6u6k2j6rfi54ub6l7o', '::1', 1607854223, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373835343232333b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('098r9lqo7157vkm9oahkbcbeeunkduh2', '::1', 1607854535, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373835343533353b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('a29133alpiurfomjdehjn8nn0chgfj69', '::1', 1607855422, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373835353432323b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b6d6573736167657c733a3137393a223c64697620636c6173733d27616c65727420616c6572742d7375636365737320637573746f6d2d616c657274273e0a090909090909090909093c64697620636c6173733d27756b2d6e6f746966792d6d65737361676520756b2d6e6f746966792d6d6573736167652d73756363657373273e0a0909090909090909092020092020204461746120496d706f72746564205375636365737366756c6c793c6469763e3c2f6469763e3c2f6469763e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('1qnnt27mjfva2dmv5n0uj2mkfpf35vrb', '::1', 1607855857, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373835353835373b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('pkvbgqhisl6cc2qmci0a6d88e87q6381', '::1', 1607856290, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373835363239303b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('4t349eoq5pmogcrkmrtkfgv46fqnnf8k', '::1', 1607857741, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373835373734313b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('1s242jfne6vvkndmho6cmfur9pmrmu5i', '::1', 1607858069, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373835383036393b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('7aanl0le1hh3qc5mf15cu9qv1h7ldldg', '::1', 1607858438, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373835383433383b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('uarfe0p9agjpja1lnkmpd3trb3ttoaj8', '::1', 1607859260, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373835393236303b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('0aphe2ncdknlfdvarnceqhc8c8e5mr9u', '::1', 1607859770, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373835393737303b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('uf701j3nq4artjfiravsvup7s71sutsc', '::1', 1607860377, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373836303337373b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('83v01pjgc0l9lvr79c59sk4qgl43lja3', '::1', 1607860688, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373836303638383b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b6d6573736167657c733a3137393a223c64697620636c6173733d27616c65727420616c6572742d7375636365737320637573746f6d2d616c657274273e0a090909090909090909093c64697620636c6173733d27756b2d6e6f746966792d6d65737361676520756b2d6e6f746966792d6d6573736167652d73756363657373273e0a0909090909090909092020092020204461746120496d706f72746564205375636365737366756c6c793c6469763e3c2f6469763e3c2f6469763e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('1gi0v7rl88njvck0s4amb5vje735mu4k', '::1', 1607860698, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630373836303638383b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316531366363346537616137323337623339646432613266316566333564376433223b),
('i8hctbuh3rhq3f53vtbli5shvotl2rtf', '::1', 1607871350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373837313334373b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b),
('udpe2urv2h55i28rihqeucuvgs1i90sm', '::1', 1607871349, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373837313334373b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b),
('cjjtin7clqas63qp9s9pf6svdtf2ld94', '::1', 1607871349, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373837313334373b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b),
('1j9aholhho1ov7q7cvlud08jrnvqc7dn', '::1', 1607954186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373935343138363b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313161636435376561666339636633366461646539646634643963316538353034223b),
('07aqip1vsqpvabml2h54c0j5p6g3bfmp', '::1', 1607954512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373935343531323b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313161636435376561666339636633366461646539646634643963316538353034223b),
('ap5p8ci11ulpd1tmggp99k9ga43qerb4', '::1', 1607954840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373935343834303b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313161636435376561666339636633366461646539646634643963316538353034223b),
('t1mum92tdnu10a5jqsih5ip8hfrpts2b', '::1', 1607955156, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373935353135363b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313161636435376561666339636633366461646539646634643963316538353034223b),
('8jllsldk49a07cd5d3obokjcn86gvpe5', '::1', 1607955490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373935353439303b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313161636435376561666339636633366461646539646634643963316538353034223b),
('ivt7p8d4k7p51n7nk6316plemr4a3gft', '::1', 1607956667, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373935363636373b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313161636435376561666339636633366461646539646634643963316538353034223b),
('g20bunpmd0qq0pbmlk387n6q8f6c27dg', '::1', 1607957018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373935373031383b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313161636435376561666339636633366461646539646634643963316538353034223b),
('236bcmgmu916v58ctueadjn3ugdlb3rn', '::1', 1607957335, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373935373333353b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313161636435376561666339636633366461646539646634643963316538353034223b6d6573736167657c733a3137343a223c64697620636c6173733d27616c65727420616c6572742d7375636365737320637573746f6d2d616c657274273e0a090909090909090909093c64697620636c6173733d27756b2d6e6f746966792d6d65737361676520756b2d6e6f746966792d6d6573736167652d73756363657373273e0a090909090909090909202009202020496e736572746564205375636365737366756c6c793c6469763e3c2f6469763e3c2f6469763e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('v4faau7ndv3b0n2sfluf2t8horacu9a2', '::1', 1607957590, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373935373333353b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313161636435376561666339636633366461646539646634643963316538353034223b),
('268ae9a97b4f3837f6d2e472818f199d1c627bfe', '49.206.7.2', 1607961813, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373936313732333b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316662633335353334366464616666626663373538626536663761343135316333223b6d6573736167657c733a3137333a223c64697620636c6173733d27616c65727420616c6572742d7375636365737320637573746f6d2d616c657274273e0a090909090909090909093c64697620636c6173733d27756b2d6e6f746966792d6d65737361676520756b2d6e6f746966792d6d6573736167652d73756363657373273e0a09090909090909090920200920202055706461746564205375636365737366756c6c793c6469763e3c2f6469763e3c2f6469763e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('480bfbb43fb6af98856a917d3256a6ff687c700d', '103.130.108.131', 1607961921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630373936313839363b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313236663435366366643730376632333563633566336635653635353939623830223b),
('5555eaef1480968781f6a73436b71f462290dd31', '122.167.66.97', 1608028265, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383032383236353b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316663393835663032373261656534643030303134326232353137646163333566223b),
('e040781c8c944a9fafdc17b4ce8985d5ad47eaf4', '103.5.134.18', 1608028265, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383032383236353b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316663393835663032373261656534643030303134326232353137646163333566223b);

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_state`
--

CREATE TABLE `haashtag_state` (
  `state_code` char(12) NOT NULL,
  `zone_code` varchar(15) NOT NULL,
  `country_code` char(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `gst_code` varchar(10) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `entry_by` bigint(20) NOT NULL,
  `entry_date_time` datetime NOT NULL,
  `update_by` bigint(20) NOT NULL,
  `update_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `haashtag_state`
--

INSERT INTO `haashtag_state` (`state_code`, `zone_code`, `country_code`, `name`, `gst_code`, `status`, `entry_by`, `entry_date_time`, `update_by`, `update_date_time`) VALUES
('KAR', 'SOT', 'IND', 'Karnataka', '29', '1', 0, '2020-09-18 16:59:06', 0, '2020-09-26 10:16:28'),
('KER', 'SOT', 'IND', 'Kerala', '27', '1', 0, '2020-09-18 17:03:14', 0, '2020-09-26 10:16:23'),
('TEL', 'SOT', 'IND', 'Telangana', '26', '1', 0, '2020-09-18 19:12:05', 0, '2020-09-26 10:14:49'),
('WBN', 'EST', 'IND', 'West Bengal', '28', '1', 0, '2020-09-18 19:07:05', 0, '2020-09-26 10:15:02');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_user`
--

CREATE TABLE `haashtag_user` (
  `user_id` int(11) NOT NULL COMMENT 'employee code',
  `emp_code` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL COMMENT 'User name for login',
  `vendor_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL COMMENT 'full name',
  `job_title` varchar(100) NOT NULL,
  `short_name` varchar(15) DEFAULT NULL,
  `email_id` varchar(100) NOT NULL COMMENT 'Email ID',
  `mobile_number` varchar(15) NOT NULL COMMENT 'Mobile number',
  `signature` varchar(200) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `role` varchar(5) NOT NULL COMMENT 'Role code of the user',
  `department_id` text NOT NULL,
  `company_id` text NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1' COMMENT '1-active, 0-block',
  `country_code` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `attend_tickets` char(1) NOT NULL,
  `app_access` enum('1','0') NOT NULL DEFAULT '1' COMMENT '1-active, 0-block',
  `web_access` enum('1','0') NOT NULL DEFAULT '1' COMMENT '1-active, 0-block',
  `description` text,
  `password` varchar(150) NOT NULL COMMENT 'Encrypted password',
  `entry_date_time` datetime NOT NULL COMMENT 'User created date',
  `update_date_time` datetime DEFAULT NULL COMMENT 'user last update date',
  `no_of_attempt` int(2) NOT NULL DEFAULT '0' COMMENT 'Invalid password attempt',
  `access_key` varchar(150) DEFAULT NULL COMMENT 'UID',
  `is_deleted` char(1) NOT NULL DEFAULT '0',
  `deleted_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_user`
--

INSERT INTO `haashtag_user` (`user_id`, `emp_code`, `user_name`, `vendor_id`, `name`, `job_title`, `short_name`, `email_id`, `mobile_number`, `signature`, `profile_pic`, `role`, `department_id`, `company_id`, `status`, `country_code`, `address`, `city`, `state`, `zip_code`, `attend_tickets`, `app_access`, `web_access`, `description`, `password`, `entry_date_time`, `update_date_time`, `no_of_attempt`, `access_key`, `is_deleted`, `deleted_date_time`) VALUES
(1, 'SUPER', 'superadmin', 1, 'Superadmin', '', 'SUP', 'superadmin@sueradmin.com', '0123456789', '', '', 'SUP', '', '', '1', '', '', '', '', '', '', '1', '1', NULL, '183e605a5c01a16015053b2d0113af7d', '2020-03-27 00:00:00', NULL, 0, '1fc985f0272aee4d000142b2517dac35f', '0', NULL),
(7, 'sadf', 'madhu', 1, 'Madhu', 'SE', NULL, 'id.madhus@gmail.com', '8892223725', '', '15894416987161.jpg', '1', '1', '4,7', '', 'AIA', 'asdffv af da s ds sd ', 'asdf', 'asdff', 'asdff', '1', '1', '1', 'sfdgdf ggsdgsdg dgh dsdsdbsdgds', '09f626496f7cd519a7e91f4d8bc0fa00', '0000-00-00 00:00:00', NULL, 0, NULL, '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_user_group`
--

CREATE TABLE `haashtag_user_group` (
  `group_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `name` varchar(150) CHARACTER SET utf16 NOT NULL,
  `access_pages` longtext NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `entry_date_time` datetime NOT NULL,
  `entry_by` int(11) NOT NULL,
  `last_updated_on` datetime DEFAULT NULL,
  `last_updated_by` bigint(20) DEFAULT NULL,
  `is_deleted` char(1) NOT NULL DEFAULT '0',
  `deleted_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_user_group`
--

INSERT INTO `haashtag_user_group` (`group_id`, `vendor_id`, `name`, `access_pages`, `status`, `entry_date_time`, `entry_by`, `last_updated_on`, `last_updated_by`, `is_deleted`, `deleted_date_time`) VALUES
(1, 1, 'Administrator', 'configuration,email_setup,label_setup,sms_setup,add_warehouse,edit_warehouse,status_warehouse,view_warehouse,add_location,edit_location,status_location,view_location,add_department,edit_department,status_department,view_department,add_user_group,edit_user_group,status_user_group,view_user_group,add_company,edit_company,status_company,view_company,add_custom_field,edit_custom_field,status_custom_field,view_custom_field,add_supplier,edit_supplier,status_supplier,view_supplier,add_model,edit_model,status_model,view_model,add_status,edit_status,status_status,view_status,add_manufacturer,edit_manufacturer,status_manufacturer,view_manufacturer,add_insurance,edit_insurance,status_insurance,view_insurance,add_user,export_user,password_user,status_user,view_user', '1', '0000-00-00 00:00:00', 0, NULL, NULL, '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_user_group_category`
--

CREATE TABLE `haashtag_user_group_category` (
  `cat_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `lang_code` varchar(50) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `entry_date_time` datetime NOT NULL,
  `entry_by` bigint(20) NOT NULL,
  `last_update_date_time` datetime DEFAULT NULL,
  `last_update_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_user_group_category`
--

INSERT INTO `haashtag_user_group_category` (`cat_id`, `name`, `lang_code`, `parent_id`, `status`, `entry_date_time`, `entry_by`, `last_update_date_time`, `last_update_by`) VALUES
(1, 'Setting', 'setting', 0, '1', '2020-04-24 00:00:00', 1, NULL, NULL),
(2, 'Warehouse', 'warehouse', 1, '1', '2020-04-24 00:00:00', 1, NULL, NULL),
(3, 'Location', 'location', 1, '1', '0000-00-00 00:00:00', 0, NULL, NULL),
(4, 'Department', 'department', 1, '1', '0000-00-00 00:00:00', 0, NULL, NULL),
(5, 'User Group', 'user_group', 1, '1', '0000-00-00 00:00:00', 0, NULL, NULL),
(6, 'Company', 'company', 1, '1', '0000-00-00 00:00:00', 0, NULL, NULL),
(7, 'Custom Field', 'custom_field', 1, '1', '2020-04-29 00:00:00', 1, NULL, NULL),
(8, 'Supplier', 'supplier', 1, '1', '0000-00-00 00:00:00', 0, NULL, NULL),
(9, 'Model', 'model', 1, '1', '0000-00-00 00:00:00', 0, NULL, NULL),
(10, 'Status', 'status', 1, '1', '0000-00-00 00:00:00', 0, NULL, NULL),
(11, 'Manufacturer', 'manufacturer', 1, '1', '0000-00-00 00:00:00', 0, NULL, NULL),
(12, 'Users', 'users', 0, '1', '0000-00-00 00:00:00', 0, NULL, NULL),
(13, 'insurance', 'insurance', 1, '1', '2020-05-14 00:00:00', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_vendor`
--

CREATE TABLE `haashtag_vendor` (
  `vendor_id` bigint(20) NOT NULL,
  `vendor_code` varchar(100) NOT NULL,
  `name` varchar(150) NOT NULL,
  `billing_name` varchar(150) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `active_from` date NOT NULL,
  `notes` text NOT NULL,
  `enable_gst` char(1) NOT NULL DEFAULT '0',
  `gst_no` varchar(50) NOT NULL,
  `pan_no` varchar(50) NOT NULL,
  `logo` varchar(80) NOT NULL,
  `entry_by` int(11) NOT NULL,
  `entry_date_time` datetime NOT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date_time` datetime DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_vendor`
--

INSERT INTO `haashtag_vendor` (`vendor_id`, `vendor_code`, `name`, `billing_name`, `phone_no`, `email_id`, `active_from`, `notes`, `enable_gst`, `gst_no`, `pan_no`, `logo`, `entry_by`, `entry_date_time`, `update_by`, `update_date_time`, `status`) VALUES
(1, 'VEN002', 'Rg', 'adf', '32452345', 'sadf@adsf.ads', '2020-10-04', 'sdfgsdfgsg', '1', '245345325', 'ssfsagsfg', '16018040117460.PNG', 0, '2020-10-04 15:03:31', NULL, '2020-10-04 15:03:41', '1');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_vendors`
--

CREATE TABLE `haashtag_vendors` (
  `vendor_id` int(11) NOT NULL,
  `vendor_code` varchar(10) NOT NULL,
  `licence_number` int(11) NOT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `name` varchar(100) CHARACTER SET utf16 NOT NULL,
  `short_name` varchar(50) CHARACTER SET utf16 NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `address` text CHARACTER SET utf16 NOT NULL,
  `banner_colour` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip_code` varchar(20) NOT NULL,
  `currency_code` varchar(5) NOT NULL,
  `gst_code` varchar(50) NOT NULL,
  `pan_number` varchar(50) DEFAULT NULL,
  `logo` varchar(50) NOT NULL,
  `fav_icon` varchar(50) NOT NULL,
  `max_assets` int(11) NOT NULL,
  `max_licence` int(11) NOT NULL,
  `max_users` int(11) NOT NULL,
  `description` text CHARACTER SET utf16 NOT NULL,
  `default_title` varchar(100) NOT NULL,
  `config_updated_key` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_vendor_address`
--

CREATE TABLE `haashtag_vendor_address` (
  `vendor_id` bigint(20) NOT NULL,
  `state_code` varchar(15) NOT NULL,
  `city_id` int(11) NOT NULL,
  `country_code` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `is_default` char(1) NOT NULL DEFAULT '0',
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_vendor_address`
--

INSERT INTO `haashtag_vendor_address` (`vendor_id`, `state_code`, `city_id`, `country_code`, `address`, `pincode`, `is_default`, `sequence`) VALUES
(1, 'KAR', 1, 'IND', 'dfgh', '34534', '0', 0),
(1, 'KER', 2, 'IND', 'dfghdsfdssdggd', '325635546', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_vendor_bank`
--

CREATE TABLE `haashtag_vendor_bank` (
  `sequence` int(11) NOT NULL,
  `vendor_id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `bank` varchar(150) NOT NULL,
  `ifsc_code` varchar(50) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `is_default` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_vendor_bank`
--

INSERT INTO `haashtag_vendor_bank` (`sequence`, `vendor_id`, `name`, `bank`, `ifsc_code`, `account_number`, `is_default`) VALUES
(0, 1, 'df', 'dg', 'df', 'dgh', '0'),
(1, 1, 'yuio', 'yuio', 'yuiouy', 'ioyu', '0');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_vendor_config`
--

CREATE TABLE `haashtag_vendor_config` (
  `vendor_id` int(11) NOT NULL,
  `default_language` varchar(10) NOT NULL,
  `allow_multiple_lannguage` char(1) NOT NULL DEFAULT '0',
  `language_list` text NOT NULL,
  `enable_depression` int(11) NOT NULL,
  `depression_type` text NOT NULL,
  `single_user_login` char(1) NOT NULL DEFAULT '0',
  `records_per_page` int(11) NOT NULL,
  `otp_length` int(11) NOT NULL,
  `otp_expiry` int(11) NOT NULL,
  `first_day_of_the_week` char(1) NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `date_format` varchar(20) NOT NULL,
  `time_format` varchar(15) NOT NULL,
  `date_time_format` varchar(20) NOT NULL,
  `enable_captcha_login` char(1) NOT NULL DEFAULT '0',
  `google_location_api` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_vendor_contact`
--

CREATE TABLE `haashtag_vendor_contact` (
  `sequence` int(11) NOT NULL,
  `vendor_id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `is_default` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_vendor_contact`
--

INSERT INTO `haashtag_vendor_contact` (`sequence`, `vendor_id`, `name`, `designation`, `email_id`, `mobile_no`, `is_default`) VALUES
(0, 1, 'sfdg', 'sdfg', 'sdg@ds.sds', '353564356', '0'),
(1, 1, 'asfg', 'fgsdgsd', 'gsdg@asdfsggf.dgf', '367567', '0');

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_zone`
--

CREATE TABLE `haashtag_zone` (
  `zone_code` char(12) NOT NULL,
  `country_code` char(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `entry_by` bigint(20) NOT NULL,
  `entry_date_time` datetime NOT NULL,
  `update_by` bigint(20) NOT NULL,
  `update_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `haashtag_zone`
--

INSERT INTO `haashtag_zone` (`zone_code`, `country_code`, `name`, `status`, `entry_by`, `entry_date_time`, `update_by`, `update_date_time`) VALUES
('EST', 'IND', 'East', '1', 0, '2020-09-18 19:06:03', 0, NULL),
('NRT', 'IND', 'Noth', '1', 0, '2020-09-18 19:05:49', 0, NULL),
('SOT', 'IND', 'South', '1', 0, '2020-09-18 19:10:17', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `haashtag_access_page`
--
ALTER TABLE `haashtag_access_page`
  ADD PRIMARY KEY (`page_code`);

--
-- Indexes for table `haashtag_booked_cnno`
--
ALTER TABLE `haashtag_booked_cnno`
  ADD PRIMARY KEY (`dsr_cnno`);

--
-- Indexes for table `haashtag_book_type`
--
ALTER TABLE `haashtag_book_type`
  ADD PRIMARY KEY (`book_type_id`);

--
-- Indexes for table `haashtag_city`
--
ALTER TABLE `haashtag_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `haashtag_communication_config`
--
ALTER TABLE `haashtag_communication_config`
  ADD PRIMARY KEY (`vendor_id`,`type`);

--
-- Indexes for table `haashtag_communication_log`
--
ALTER TABLE `haashtag_communication_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `haashtag_country`
--
ALTER TABLE `haashtag_country`
  ADD PRIMARY KEY (`country_code`);

--
-- Indexes for table `haashtag_customer`
--
ALTER TABLE `haashtag_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `haashtag_customer_address`
--
ALTER TABLE `haashtag_customer_address`
  ADD PRIMARY KEY (`customer_id`,`sequence`);

--
-- Indexes for table `haashtag_customer_bank`
--
ALTER TABLE `haashtag_customer_bank`
  ADD PRIMARY KEY (`sequence`,`customer_id`);

--
-- Indexes for table `haashtag_customer_contact`
--
ALTER TABLE `haashtag_customer_contact`
  ADD PRIMARY KEY (`sequence`,`customer_id`);

--
-- Indexes for table `haashtag_custom_fields`
--
ALTER TABLE `haashtag_custom_fields`
  ADD PRIMARY KEY (`field_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `haashtag_custom_field_option`
--
ALTER TABLE `haashtag_custom_field_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `haashtag_document_type_master`
--
ALTER TABLE `haashtag_document_type_master`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `haashtag_exceptions`
--
ALTER TABLE `haashtag_exceptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `haashtag_gst`
--
ALTER TABLE `haashtag_gst`
  ADD PRIMARY KEY (`gst_id`);

--
-- Indexes for table `haashtag_import_history`
--
ALTER TABLE `haashtag_import_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `haashtag_input_type`
--
ALTER TABLE `haashtag_input_type`
  ADD PRIMARY KEY (`type_id`),
  ADD UNIQUE KEY `type_code` (`type_code`);

--
-- Indexes for table `haashtag_invoice_entry`
--
ALTER TABLE `haashtag_invoice_entry`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `haashtag_invoice_entry_dt`
--
ALTER TABLE `haashtag_invoice_entry_dt`
  ADD PRIMARY KEY (`consignment_number`,`invoice_id`);

--
-- Indexes for table `haashtag_language`
--
ALTER TABLE `haashtag_language`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `haashtag_language_detail`
--
ALTER TABLE `haashtag_language_detail`
  ADD PRIMARY KEY (`language`,`conversion_type`);

--
-- Indexes for table `haashtag_lang_conversion`
--
ALTER TABLE `haashtag_lang_conversion`
  ADD PRIMARY KEY (`keyword`);

--
-- Indexes for table `haashtag_log`
--
ALTER TABLE `haashtag_log`
  ADD PRIMARY KEY (`access_key`,`entry_date_time`);

--
-- Indexes for table `haashtag_login_history`
--
ALTER TABLE `haashtag_login_history`
  ADD PRIMARY KEY (`user_id`,`logged_in_date_time`,`access_key`);

--
-- Indexes for table `haashtag_mode_master`
--
ALTER TABLE `haashtag_mode_master`
  ADD PRIMARY KEY (`mode_code`);

--
-- Indexes for table `haashtag_partner`
--
ALTER TABLE `haashtag_partner`
  ADD PRIMARY KEY (`partner_code`);

--
-- Indexes for table `haashtag_partner_service`
--
ALTER TABLE `haashtag_partner_service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `haashtag_pincode`
--
ALTER TABLE `haashtag_pincode`
  ADD PRIMARY KEY (`pincode`);

--
-- Indexes for table `haashtag_profile`
--
ALTER TABLE `haashtag_profile`
  ADD PRIMARY KEY (`profile_id`);

--
-- Indexes for table `haashtag_profile_bank`
--
ALTER TABLE `haashtag_profile_bank`
  ADD PRIMARY KEY (`profile_id`,`sequence`);

--
-- Indexes for table `haashtag_profile_contact`
--
ALTER TABLE `haashtag_profile_contact`
  ADD PRIMARY KEY (`profile_id`,`sequence`);

--
-- Indexes for table `haashtag_rate_card`
--
ALTER TABLE `haashtag_rate_card`
  ADD PRIMARY KEY (`rate_id`),
  ADD UNIQUE KEY `rate_card_code` (`rate_card_code`);

--
-- Indexes for table `haashtag_rate_card_colour`
--
ALTER TABLE `haashtag_rate_card_colour`
  ADD PRIMARY KEY (`colour_id`);

--
-- Indexes for table `haashtag_rate_card_history`
--
ALTER TABLE `haashtag_rate_card_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `haashtag_rate_card_location`
--
ALTER TABLE `haashtag_rate_card_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `rate_id` (`rate_id`);

--
-- Indexes for table `haashtag_rate_card_location_history`
--
ALTER TABLE `haashtag_rate_card_location_history`
  ADD PRIMARY KEY (`location_id`,`history_id`,`rate_id`);

--
-- Indexes for table `haashtag_rate_card_price`
--
ALTER TABLE `haashtag_rate_card_price`
  ADD PRIMARY KEY (`price_id`),
  ADD KEY `weight_id` (`weight_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `rate_id` (`rate_id`);

--
-- Indexes for table `haashtag_rate_card_price_history`
--
ALTER TABLE `haashtag_rate_card_price_history`
  ADD PRIMARY KEY (`price_id`,`weight_id`,`history_id`,`location_id`);

--
-- Indexes for table `haashtag_rate_card_weight_range`
--
ALTER TABLE `haashtag_rate_card_weight_range`
  ADD PRIMARY KEY (`weight_id`);

--
-- Indexes for table `haashtag_rate_card_weight_range_history`
--
ALTER TABLE `haashtag_rate_card_weight_range_history`
  ADD PRIMARY KEY (`rate_id`,`history_id`,`weight_id`);

--
-- Indexes for table `haashtag_role`
--
ALTER TABLE `haashtag_role`
  ADD PRIMARY KEY (`role_code`);

--
-- Indexes for table `haashtag_role_page_map`
--
ALTER TABLE `haashtag_role_page_map`
  ADD PRIMARY KEY (`role_code`,`page_code`);

--
-- Indexes for table `haashtag_sessions`
--
ALTER TABLE `haashtag_sessions`
  ADD PRIMARY KEY (`id`,`ip_address`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `haashtag_state`
--
ALTER TABLE `haashtag_state`
  ADD PRIMARY KEY (`state_code`);

--
-- Indexes for table `haashtag_user`
--
ALTER TABLE `haashtag_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD KEY `role` (`role`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `haashtag_user_group`
--
ALTER TABLE `haashtag_user_group`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `haashtag_user_group_category`
--
ALTER TABLE `haashtag_user_group_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `haashtag_vendor`
--
ALTER TABLE `haashtag_vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- Indexes for table `haashtag_vendors`
--
ALTER TABLE `haashtag_vendors`
  ADD PRIMARY KEY (`vendor_id`),
  ADD UNIQUE KEY `vendor_code` (`vendor_code`),
  ADD KEY `country_code` (`country_code`),
  ADD KEY `currency_code` (`currency_code`);

--
-- Indexes for table `haashtag_vendor_address`
--
ALTER TABLE `haashtag_vendor_address`
  ADD PRIMARY KEY (`vendor_id`,`sequence`);

--
-- Indexes for table `haashtag_vendor_bank`
--
ALTER TABLE `haashtag_vendor_bank`
  ADD PRIMARY KEY (`sequence`,`vendor_id`);

--
-- Indexes for table `haashtag_vendor_config`
--
ALTER TABLE `haashtag_vendor_config`
  ADD PRIMARY KEY (`vendor_id`);

--
-- Indexes for table `haashtag_vendor_contact`
--
ALTER TABLE `haashtag_vendor_contact`
  ADD PRIMARY KEY (`sequence`,`vendor_id`);

--
-- Indexes for table `haashtag_zone`
--
ALTER TABLE `haashtag_zone`
  ADD PRIMARY KEY (`zone_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `haashtag_book_type`
--
ALTER TABLE `haashtag_book_type`
  MODIFY `book_type_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `haashtag_city`
--
ALTER TABLE `haashtag_city`
  MODIFY `city_id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `haashtag_communication_log`
--
ALTER TABLE `haashtag_communication_log`
  MODIFY `log_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `haashtag_customer`
--
ALTER TABLE `haashtag_customer`
  MODIFY `customer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `haashtag_custom_fields`
--
ALTER TABLE `haashtag_custom_fields`
  MODIFY `field_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `haashtag_custom_field_option`
--
ALTER TABLE `haashtag_custom_field_option`
  MODIFY `option_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `haashtag_exceptions`
--
ALTER TABLE `haashtag_exceptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1308;

--
-- AUTO_INCREMENT for table `haashtag_gst`
--
ALTER TABLE `haashtag_gst`
  MODIFY `gst_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `haashtag_import_history`
--
ALTER TABLE `haashtag_import_history`
  MODIFY `history_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `haashtag_input_type`
--
ALTER TABLE `haashtag_input_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `haashtag_invoice_entry`
--
ALTER TABLE `haashtag_invoice_entry`
  MODIFY `invoice_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `haashtag_partner_service`
--
ALTER TABLE `haashtag_partner_service`
  MODIFY `service_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `haashtag_profile`
--
ALTER TABLE `haashtag_profile`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `haashtag_rate_card`
--
ALTER TABLE `haashtag_rate_card`
  MODIFY `rate_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `haashtag_rate_card_colour`
--
ALTER TABLE `haashtag_rate_card_colour`
  MODIFY `colour_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `haashtag_rate_card_history`
--
ALTER TABLE `haashtag_rate_card_history`
  MODIFY `history_id` bigint(31) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `haashtag_rate_card_location`
--
ALTER TABLE `haashtag_rate_card_location`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `haashtag_rate_card_price`
--
ALTER TABLE `haashtag_rate_card_price`
  MODIFY `price_id` bigint(31) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `haashtag_rate_card_weight_range`
--
ALTER TABLE `haashtag_rate_card_weight_range`
  MODIFY `weight_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `haashtag_user`
--
ALTER TABLE `haashtag_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'employee code', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `haashtag_user_group`
--
ALTER TABLE `haashtag_user_group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `haashtag_user_group_category`
--
ALTER TABLE `haashtag_user_group_category`
  MODIFY `cat_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `haashtag_vendor`
--
ALTER TABLE `haashtag_vendor`
  MODIFY `vendor_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `haashtag_vendors`
--
ALTER TABLE `haashtag_vendors`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
