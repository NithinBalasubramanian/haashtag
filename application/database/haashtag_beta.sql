-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 03, 2020 at 08:16 PM
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
(726, '<p>The page you requested was not found.</p>', '2020-11-03 23:36:08', 'http://localhost:8081/haashtag/assets/lib/bootstrap/js/bootstrap.bundle.min.js.map', '0', NULL, '404 Page Not Found', 0, '');

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
(1, 'SUP', '2020-11-03 23:39:57', 'WEB', '49.206.6.182', 'Chrome', '86.0.4240.111', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '1f20ae6be560f7d0c7948f05824e94549', '0', NULL),
(1, 'SUP', '2020-11-03 23:47:56', 'WEB', '103.130.109.215', 'Chrome', '86.0.4240.111', 'Windows 7', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '195fc90189ec61357df29bea911a90c70', '0', NULL);

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
-- Table structure for table `haashtag_rate_card`
--

CREATE TABLE `haashtag_rate_card` (
  `rate_id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `rate_card_code` varchar(20) NOT NULL,
  `partner_code` varchar(15) NOT NULL,
  `service_id` bigint(20) NOT NULL,
  `mode` varchar(50) NOT NULL,
  `doc_type` varchar(100) NOT NULL,
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
  `no_of_colours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haashtag_rate_card`
--

INSERT INTO `haashtag_rate_card` (`rate_id`, `name`, `rate_card_code`, `partner_code`, `service_id`, `mode`, `doc_type`, `adl_weight`, `adl_price`, `entry_by`, `entry_date_time`, `update_by`, `update_date_time`, `status`, `is_clone`, `clone_rate_id`, `active_from`, `country_code`, `description`, `no_of_colours`) VALUES
(1, 'Rate Card A', 'Yfsd', 'DTDC', 1, 'AC', 'DX', 0.000, 0.000, 1, '2020-10-04 18:56:12', 0, NULL, '1', '0', NULL, '0000-00-00 00:00:00', 'IND', 'asdasdasd', 0),
(2, 'Rate  BCard C', 'Yfsds', 'DTDC', 1, 'AC', 'DX,NX', 0.000, 0.000, 1, '2020-10-04 18:56:59', 1, '2020-11-03 23:22:25', '1', '0', NULL, '0000-00-00 00:00:00', 'IND', 'asdasdasd', 2),
(3, 'Rate Card ZA', '456745', 'DTDC', 1, 'AC', 'DX', 0.000, 0.000, 1, '2020-10-04 18:57:35', 1, '2020-11-03 23:35:58', '1', '0', NULL, '0000-00-00 00:00:00', 'IND', 'asdasdasd', 2);

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
(1, '#fd6363', 2, '12', '2020-11-03', '1', 0),
(2, '#000000', 2, '5', '0000-00-00', '1', 1),
(3, '#fd6363', 2, '12', '2020-11-03', '1', 0),
(4, '#000000', 2, '12', '0000-00-00', '1', 1),
(5, '#fd6363', 2, '12', '2020-11-03', '1', 0),
(6, '#000000', 2, '12', '0000-00-00', '1', 1),
(7, '#fd6363', 2, '12', '2020-11-03', '1', 0),
(8, '#000000', 2, '12', '0000-00-00', '1', 1),
(9, '#fd6363', 2, '12', '2020-11-03', '1', 0),
(10, '#000000', 2, '12', '0000-00-00', '1', 1),
(11, '#fd6363', 2, '12', '2020-11-03', '1', 0),
(12, '#000000', 2, '12', '0000-00-00', '1', 1),
(13, '#fd6363', 2, '12', '2020-11-03', '1', 0),
(14, '#000000', 2, '12', '0000-00-00', '1', 1),
(15, '#000000', 3, '2', '0000-00-00', '1', 0),
(16, '#000000', 3, '1', '0001-01-01', '1', 1);

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
  `doc_type` varchar(100) NOT NULL,
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
(1, 'L', '', 3, 0),
(2, 'Z', 'EST', 3, 1),
(3, 'Z', 'NRT', 3, 2),
(4, 'Z', 'SOT', 3, 3),
(5, 'S', 'KAR,KER', 3, 4),
(6, 'S', 'TEL', 3, 5),
(7, 'C', '1', 3, 6),
(8, 'C', '2', 3, 7),
(9, 'L', '', 0, 0),
(10, 'Z', 'EST,NRT', 0, 1),
(11, 'Z', 'SOT', 0, 2),
(12, 'S', 'KAR,KER,TEL', 0, 3),
(13, 'C', '1', 0, 4),
(14, 'C', '3', 0, 5),
(15, 'L', '', 0, 0),
(16, 'Z', 'EST,NRT', 0, 1),
(17, 'S', 'KER,WBN', 0, 2),
(18, 'C', '1', 0, 3),
(19, 'L', '', 0, 0),
(20, 'Z', 'EST,NRT', 0, 1),
(21, 'S', 'KER,WBN', 0, 2),
(22, 'C', '1', 0, 3),
(23, 'L', '', 0, 0),
(24, 'Z', 'EST,NRT', 0, 1),
(25, 'S', 'KER,WBN', 0, 2),
(26, 'C', '1', 0, 3),
(27, 'L', '', 0, 0),
(28, 'Z', 'EST,NRT', 0, 1),
(29, 'S', 'KER,WBN', 0, 2),
(30, 'C', '1', 0, 3),
(31, 'L', '', 0, 0),
(32, 'Z', 'EST,NRT', 0, 1),
(33, 'S', 'KER,WBN', 0, 2),
(34, 'C', '1', 0, 3),
(35, 'L', '', 0, 0),
(36, 'Z', 'EST,NRT', 0, 1),
(37, 'S', 'KER,WBN', 0, 2),
(38, 'C', '1', 0, 3),
(39, 'L', '', 0, 0),
(40, 'Z', 'EST,NRT', 0, 1),
(41, 'S', 'KER,WBN', 0, 2),
(42, 'C', '1', 0, 3),
(43, 'L', '', 0, 0),
(44, 'Z', 'EST,NRT', 0, 1),
(45, 'L', '', 0, 0),
(46, 'Z', 'EST,NRT', 0, 1),
(47, 'L', '', 0, 0),
(48, 'Z', 'NRT,SOT', 0, 1),
(49, 'L', '', 0, 0),
(50, 'Z', 'EST,NRT', 0, 1),
(51, 'L', '', 2, 0),
(52, 'Z', 'EST,NRT', 2, 1);

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
(1, 7, 16, 3, 0, 0.000, 1, 1.000, 25, NULL),
(2, 7, 16, 3, 0, 0.000, 2, 1.000, 26, NULL),
(3, 7, 16, 3, 0, 0.000, 3, 1.000, 27, NULL),
(4, 7, 16, 3, 0, 0.000, 4, 1.000, 28, NULL),
(5, 7, 16, 3, 0, 0.000, 5, 1.000, 29, NULL),
(6, 7, 16, 3, 0, 0.000, 6, 1.000, 30, NULL),
(7, 7, 16, 3, 0, 0.000, 7, 1.000, 31, NULL),
(8, 7, 16, 3, 0, 0.000, 8, 5.000, 32, NULL),
(9, 8, 16, 3, 0, 0.000, 1, 5.000, 33, NULL),
(10, 8, 16, 3, 0, 0.000, 2, 5.000, 34, NULL),
(11, 8, 16, 3, 0, 0.000, 3, 5.000, 35, NULL),
(12, 8, 16, 3, 0, 0.000, 4, 5.000, 36, NULL),
(13, 8, 16, 3, 0, 0.000, 5, 5.000, 37, NULL),
(14, 8, 16, 3, 0, 0.000, 6, 5.000, 38, NULL),
(15, 8, 16, 3, 0, 0.000, 7, 5.000, 39, NULL),
(16, 8, 16, 3, 0, 0.000, 8, 5.000, 40, NULL),
(17, 9, 16, 3, 0, 0.000, 1, 5.000, 41, NULL),
(18, 9, 16, 3, 0, 0.000, 2, 5.000, 42, NULL),
(19, 9, 16, 3, 0, 0.000, 3, 5.000, 43, NULL),
(20, 9, 16, 3, 0, 0.000, 4, 5.000, 44, NULL),
(21, 9, 16, 3, 0, 0.000, 5, 5.000, 45, NULL),
(22, 9, 16, 3, 0, 0.000, 6, 5.000, 46, NULL),
(23, 9, 16, 3, 0, 0.000, 7, 5.000, 47, NULL),
(24, 9, 16, 3, 0, 0.000, 8, 5.000, 48, NULL),
(25, 0, 0, 3, 1, 15.000, 1, 16.000, 24, 0),
(26, 0, 0, 3, 1, 15.000, 2, 17.000, 24, 1),
(27, 0, 0, 3, 1, 15.000, 3, 18.000, 24, 2),
(28, 0, 0, 3, 1, 15.000, 4, 19.000, 24, 3),
(29, 0, 0, 3, 1, 15.000, 5, 20.000, 24, 4),
(30, 0, 0, 3, 1, 15.000, 6, 21.000, 24, 5),
(31, 0, 0, 3, 1, 15.000, 7, 22.000, 24, 6),
(32, 0, 0, 3, 1, 15.000, 8, 23.000, 24, 7),
(33, 4, 0, 2, 0, 0.000, 9, 1.000, 0, NULL),
(34, 4, 0, 2, 0, 0.000, 10, 1.000, 1, NULL),
(35, 4, 0, 2, 0, 0.000, 11, 1.000, 2, NULL),
(36, 4, 0, 2, 0, 0.000, 12, 1.000, 3, NULL),
(37, 4, 0, 2, 0, 0.000, 13, 1.000, 4, NULL),
(38, 4, 0, 2, 0, 0.000, 14, 1.000, 5, NULL),
(39, 5, 0, 2, 0, 0.000, 9, 1.000, 6, NULL),
(40, 5, 0, 2, 0, 0.000, 10, 11.000, 7, NULL),
(41, 5, 0, 2, 0, 0.000, 11, 1.000, 8, NULL),
(42, 5, 0, 2, 0, 0.000, 12, 1.000, 9, NULL),
(43, 5, 0, 2, 0, 0.000, 13, 11.000, 10, NULL),
(44, 5, 0, 2, 0, 0.000, 14, 1.000, 11, NULL),
(45, 6, 0, 2, 0, 0.000, 9, 1.000, 12, NULL),
(46, 6, 0, 2, 0, 0.000, 10, 1.000, 13, NULL),
(47, 6, 0, 2, 0, 0.000, 11, 1.000, 14, NULL),
(48, 6, 0, 2, 0, 0.000, 12, 1.000, 15, NULL),
(49, 6, 0, 2, 0, 0.000, 13, 1.000, 16, NULL),
(50, 6, 0, 2, 0, 0.000, 14, 1.000, 17, NULL),
(51, 0, 0, 2, 1, 1.000, 9, 1.000, 18, 0),
(52, 0, 0, 2, 1, 1.000, 10, 1.000, 18, 1),
(53, 0, 0, 2, 1, 1.000, 11, 1.000, 18, 2),
(54, 0, 0, 2, 1, 1.000, 12, 1.000, 18, 3),
(55, 0, 0, 2, 1, 1.000, 13, 1.000, 18, 4),
(56, 0, 0, 2, 1, 1.000, 14, 1.000, 18, 5),
(57, 4, 11, 2, 0, 0.000, 35, 1.000, 0, NULL),
(58, 4, 11, 2, 0, 0.000, 36, 2.000, 1, NULL),
(59, 4, 11, 2, 0, 0.000, 37, 3.000, 2, NULL),
(60, 4, 11, 2, 0, 0.000, 38, 4.000, 3, NULL),
(61, 5, 11, 2, 0, 0.000, 35, 5.000, 4, NULL),
(62, 5, 11, 2, 0, 0.000, 36, 6.000, 5, NULL),
(63, 5, 11, 2, 0, 0.000, 37, 7.000, 6, NULL),
(64, 5, 11, 2, 0, 0.000, 38, 8.000, 7, NULL),
(65, 6, 11, 2, 0, 0.000, 35, 9.000, 8, NULL),
(66, 6, 11, 2, 0, 0.000, 36, 10.000, 9, NULL),
(67, 6, 11, 2, 0, 0.000, 37, 11.000, 10, NULL),
(68, 6, 11, 2, 0, 0.000, 38, 12.000, 11, NULL),
(69, 4, 12, 2, 0, 0.000, 35, 5.000, 12, NULL),
(70, 4, 12, 2, 0, 0.000, 36, 6.000, 13, NULL),
(71, 4, 12, 2, 0, 0.000, 37, 7.000, 14, NULL),
(72, 4, 12, 2, 0, 0.000, 38, 8.000, 15, NULL),
(73, 5, 12, 2, 0, 0.000, 35, 2.000, 16, NULL),
(74, 5, 12, 2, 0, 0.000, 36, 5.000, 17, NULL),
(75, 5, 12, 2, 0, 0.000, 37, 6.000, 18, NULL),
(76, 5, 12, 2, 0, 0.000, 38, 4.000, 19, NULL),
(77, 6, 12, 2, 0, 0.000, 35, 2.000, 20, NULL),
(78, 6, 12, 2, 0, 0.000, 36, 5.000, 21, NULL),
(79, 6, 12, 2, 0, 0.000, 37, 4.000, 22, NULL),
(80, 6, 12, 2, 0, 0.000, 38, 2.000, 23, NULL),
(81, 4, 13, 2, 0, 0.000, 39, 1.000, 0, NULL),
(82, 4, 13, 2, 0, 0.000, 40, 2.000, 1, NULL),
(83, 4, 13, 2, 0, 0.000, 41, 3.000, 2, NULL),
(84, 4, 13, 2, 0, 0.000, 42, 4.000, 3, NULL),
(85, 5, 13, 2, 0, 0.000, 39, 5.000, 4, NULL),
(86, 5, 13, 2, 0, 0.000, 40, 6.000, 5, NULL),
(87, 5, 13, 2, 0, 0.000, 41, 7.000, 6, NULL),
(88, 5, 13, 2, 0, 0.000, 42, 8.000, 7, NULL),
(89, 6, 13, 2, 0, 0.000, 39, 9.000, 8, NULL),
(90, 6, 13, 2, 0, 0.000, 40, 10.000, 9, NULL),
(91, 6, 13, 2, 0, 0.000, 41, 11.000, 10, NULL),
(92, 6, 13, 2, 0, 0.000, 42, 12.000, 11, NULL),
(93, 4, 14, 2, 0, 0.000, 39, 5.000, 13, NULL),
(94, 4, 14, 2, 0, 0.000, 40, 6.000, 14, NULL),
(95, 4, 14, 2, 0, 0.000, 41, 7.000, 15, NULL),
(96, 4, 14, 2, 0, 0.000, 42, 8.000, 16, NULL),
(97, 5, 14, 2, 0, 0.000, 39, 2.000, 17, NULL),
(98, 5, 14, 2, 0, 0.000, 40, 5.000, 18, NULL),
(99, 5, 14, 2, 0, 0.000, 41, 6.000, 19, NULL),
(100, 5, 14, 2, 0, 0.000, 42, 4.000, 20, NULL),
(101, 6, 14, 2, 0, 0.000, 39, 2.000, 21, NULL),
(102, 6, 14, 2, 0, 0.000, 40, 5.000, 22, NULL),
(103, 6, 14, 2, 0, 0.000, 41, 4.000, 23, NULL),
(104, 6, 14, 2, 0, 0.000, 42, 2.000, 24, NULL),
(105, 4, 1, 2, 0, 0.000, 45, 2.000, 0, NULL),
(106, 4, 1, 2, 0, 0.000, 46, 2.000, 1, NULL),
(107, 5, 1, 2, 0, 0.000, 45, 2.000, 2, NULL),
(108, 5, 1, 2, 0, 0.000, 46, 2.000, 3, NULL),
(109, 6, 1, 2, 0, 0.000, 45, 2.000, 4, NULL),
(110, 6, 1, 2, 0, 0.000, 46, 2.000, 5, NULL),
(111, 4, 2, 2, 0, 0.000, 45, 5.000, 7, NULL),
(112, 4, 2, 2, 0, 0.000, 46, 5.000, 8, NULL),
(113, 5, 2, 2, 0, 0.000, 45, 5.000, 9, NULL),
(114, 5, 2, 2, 0, 0.000, 46, 5.000, 10, NULL),
(115, 6, 2, 2, 0, 0.000, 45, 5.000, 11, NULL),
(116, 6, 2, 2, 0, 0.000, 46, 5.000, 12, NULL),
(117, 4, 1, 2, 0, 0.000, 47, 32.000, 0, NULL),
(118, 4, 1, 2, 0, 0.000, 48, 3.000, 1, NULL),
(119, 5, 1, 2, 0, 0.000, 47, 23.000, 2, NULL),
(120, 5, 1, 2, 0, 0.000, 48, 324.000, 3, NULL),
(121, 6, 1, 2, 0, 0.000, 47, 324.000, 4, NULL),
(122, 6, 1, 2, 0, 0.000, 48, 324.000, 5, NULL),
(123, 4, 2, 2, 0, 0.000, 47, 234.000, 7, NULL),
(124, 4, 2, 2, 0, 0.000, 48, 324.000, 8, NULL),
(125, 5, 2, 2, 0, 0.000, 47, 324324224.000, 9, NULL),
(126, 5, 2, 2, 0, 0.000, 48, 234.000, 10, NULL),
(127, 6, 2, 2, 0, 0.000, 47, 342.000, 11, NULL),
(128, 6, 2, 2, 0, 0.000, 48, 2344.000, 12, NULL),
(129, 4, 1, 2, 0, 0.000, 51, 53.000, 0, NULL),
(130, 4, 1, 2, 0, 0.000, 52, 46.000, 1, NULL),
(131, 5, 1, 2, 0, 0.000, 51, 56.000, 2, NULL),
(132, 5, 1, 2, 0, 0.000, 52, 56.000, 3, NULL),
(133, 6, 1, 2, 0, 0.000, 51, 56.000, 4, NULL),
(134, 6, 1, 2, 0, 0.000, 52, 5467.000, 5, NULL),
(135, 4, 2, 2, 0, 0.000, 51, 53.000, 7, NULL),
(136, 4, 2, 2, 0, 0.000, 52, 45.000, 8, NULL),
(137, 5, 2, 2, 0, 0.000, 51, 34534536.000, 9, NULL),
(138, 5, 2, 2, 0, 0.000, 52, 52345.000, 10, NULL),
(139, 6, 2, 2, 0, 0.000, 51, 235324.000, 11, NULL),
(140, 6, 2, 2, 0, 0.000, 52, 5234532.000, 12, NULL),
(141, 7, 15, 3, 0, 0.000, 1, 1.000, 0, NULL),
(142, 7, 15, 3, 0, 0.000, 2, 1.000, 1, NULL),
(143, 7, 15, 3, 0, 0.000, 3, 1.000, 2, NULL),
(144, 7, 15, 3, 0, 0.000, 4, 1.000, 3, NULL),
(145, 7, 15, 3, 0, 0.000, 5, 1.000, 4, NULL),
(146, 7, 15, 3, 0, 0.000, 6, 1.000, 5, NULL),
(147, 7, 15, 3, 0, 0.000, 7, 1.000, 6, NULL),
(148, 7, 15, 3, 0, 0.000, 8, 1.000, 7, NULL),
(149, 8, 15, 3, 0, 0.000, 1, 1.000, 8, NULL),
(150, 8, 15, 3, 0, 0.000, 2, 1.000, 9, NULL),
(151, 8, 15, 3, 0, 0.000, 3, 1.000, 10, NULL),
(152, 8, 15, 3, 0, 0.000, 4, 1.000, 11, NULL),
(153, 8, 15, 3, 0, 0.000, 5, 1.000, 12, NULL),
(154, 8, 15, 3, 0, 0.000, 6, 1.000, 13, NULL),
(155, 8, 15, 3, 0, 0.000, 7, 1.000, 14, NULL),
(156, 8, 15, 3, 0, 0.000, 8, 1.000, 15, NULL),
(157, 9, 15, 3, 0, 0.000, 1, 1.000, 16, NULL),
(158, 9, 15, 3, 0, 0.000, 2, 1.000, 17, NULL),
(159, 9, 15, 3, 0, 0.000, 3, 1.000, 18, NULL),
(160, 9, 15, 3, 0, 0.000, 4, 1.000, 19, NULL),
(161, 9, 15, 3, 0, 0.000, 5, 1.000, 20, NULL),
(162, 9, 15, 3, 0, 0.000, 6, 1.000, 21, NULL),
(163, 9, 15, 3, 0, 0.000, 7, 1.000, 22, NULL),
(164, 9, 15, 3, 0, 0.000, 8, 1.000, 23, NULL),
(165, 0, 15, 3, 1, 1.000, 1, 1.000, 24, 0),
(166, 0, 15, 3, 1, 1.000, 2, 1.000, 24, 1),
(167, 0, 15, 3, 1, 1.000, 3, 1.000, 24, 2),
(168, 0, 15, 3, 1, 1.000, 4, 1.000, 24, 3),
(169, 0, 15, 3, 1, 1.000, 5, 1.000, 24, 4),
(170, 0, 15, 3, 1, 1.000, 6, 1.000, 24, 5),
(171, 0, 15, 3, 1, 1.000, 7, 1.000, 24, 6),
(172, 0, 15, 3, 1, 1.000, 8, 1.000, 24, 7),
(173, 0, 16, 3, 1, 5.000, 1, 5.000, 49, 0),
(174, 0, 16, 3, 1, 5.000, 2, 5.000, 49, 1),
(175, 0, 16, 3, 1, 5.000, 3, 5.000, 49, 2),
(176, 0, 16, 3, 1, 5.000, 4, 5.000, 49, 3),
(177, 0, 16, 3, 1, 5.000, 5, 5.000, 49, 4),
(178, 0, 16, 3, 1, 5.000, 6, 5.000, 49, 5),
(179, 0, 16, 3, 1, 5.000, 7, 5.000, 49, 6),
(180, 0, 16, 3, 1, 5.000, 8, 5.000, 49, 7);

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
(1, 201.000, 300.000, '1', 3, 2),
(2, 0.000, 100.000, '1', 4, 0),
(2, 101.000, 200.000, '1', 5, 1),
(2, 201.000, 300.000, '1', 6, 2),
(3, 0.000, 100.000, '1', 7, 0),
(3, 101.000, 200.000, '1', 8, 1),
(3, 201.000, 300.000, '1', 9, 2);

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
('1bfn1esqd46ud0so7h70jbroc1agb1gk', '::1', 1604426769, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343432363534313b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313865616462383363393062646331396230316362636338333665646437363964223b),
('lnpvljqvvpmht1cjje5637pd0lp7mk2f', '::1', 1604426541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343432363534313b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313865616462383363393062646331396230316362636338333665646437363964223b),
('hv7uac7a0n23ct6o11102ejsj8tanab2', '::1', 1604425948, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343432353934383b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313865616462383363393062646331396230316362636338333665646437363964223b),
('8kjgkein79l8cbo6q1difh9hv5jh4jc1', '::1', 1604425540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343432353534303b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313865616462383363393062646331396230316362636338333665646437363964223b),
('6dc853c58e39481ceb1739824fa94c392dbece61', '49.206.6.182', 1604428004, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343432373939363b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316632306165366265353630663764306337393438663035383234653934353439223b),
('f68410a7eabfa097ee91561026398cfa0b522bad', '49.206.6.182', 1604427312, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343432373331323b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316632306165366265353630663764306337393438663035383234653934353439223b),
('a2be15707adba6a14af924660fe320292513ead8', '103.130.109.215', 1604427586, 0x63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b5f5f63695f6c6173745f726567656e65726174657c693a313630343432373436393b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22313935666339303138396563363133353764663239626561393131613930633730223b),
('b882f83250f2960c93bb4734f9aa8b8b97cda346', '49.206.6.182', 1604427996, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343432373939363b63757272656e745f6c616e677c733a323a22454e223b63757272656e745f6c616e675f6e616d657c733a373a22456e676c697368223b63757272656e745f6c616e675f69636f6e7c733a31373a22556e697465642d5374617465732e706e67223b757365726e616d657c733a31303a22737570657261646d696e223b757365725f69647c733a313a2231223b70617373776f72647c733a33323a223138336536303561356330316131363031353035336232643031313361663764223b726f6c657c733a333a22535550223b616363657373506167657c613a303a7b7d726f6c655f6e616d657c733a31303a22537570657261646d696e223b757365725f6e616d657c733a31303a22737570657261646d696e223b6e616d657c733a31303a22537570657261646d696e223b76656e646f725f69647c733a313a2231223b656d61696c5f69647c733a32343a22737570657261646d696e407375657261646d696e2e636f6d223b6d6f62696c655f6e756d6265727c733a31303a2230313233343536373839223b6163636573735f6b65797c733a33333a22316632306165366265353630663764306337393438663035383234653934353439223b);

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
(1, 'SUPER', 'superadmin', 1, 'Superadmin', '', 'SUP', 'superadmin@sueradmin.com', '0123456789', '', '', 'SUP', '', '', '1', '', '', '', '', '', '', '1', '1', NULL, '183e605a5c01a16015053b2d0113af7d', '2020-03-27 00:00:00', NULL, 0, '195fc90189ec61357df29bea911a90c70', '0', NULL),
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
-- Indexes for table `haashtag_input_type`
--
ALTER TABLE `haashtag_input_type`
  ADD PRIMARY KEY (`type_id`),
  ADD UNIQUE KEY `type_code` (`type_code`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=727;

--
-- AUTO_INCREMENT for table `haashtag_gst`
--
ALTER TABLE `haashtag_gst`
  MODIFY `gst_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `haashtag_input_type`
--
ALTER TABLE `haashtag_input_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `haashtag_partner_service`
--
ALTER TABLE `haashtag_partner_service`
  MODIFY `service_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `haashtag_rate_card`
--
ALTER TABLE `haashtag_rate_card`
  MODIFY `rate_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `haashtag_rate_card_colour`
--
ALTER TABLE `haashtag_rate_card_colour`
  MODIFY `colour_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `haashtag_rate_card_history`
--
ALTER TABLE `haashtag_rate_card_history`
  MODIFY `history_id` bigint(31) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `haashtag_rate_card_location`
--
ALTER TABLE `haashtag_rate_card_location`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `haashtag_rate_card_price`
--
ALTER TABLE `haashtag_rate_card_price`
  MODIFY `price_id` bigint(31) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `haashtag_rate_card_weight_range`
--
ALTER TABLE `haashtag_rate_card_weight_range`
  MODIFY `weight_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
