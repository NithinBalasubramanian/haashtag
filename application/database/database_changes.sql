--
-- Table structure for table `haashtag_company_profile`
--

DROP TABLE IF EXISTS `haashtag_company_profile`;
CREATE TABLE IF NOT EXISTS `haashtag_company_profile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `billing_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `profile_email` varchar(255) NOT NULL,
  `gst_number` varchar(255) NOT NULL,
  `pan_number` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_company_profile_banks`
--

DROP TABLE IF EXISTS `haashtag_company_profile_banks`;
CREATE TABLE IF NOT EXISTS `haashtag_company_profile_banks` (
  `bank_account_name` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ifsc_code` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `is_default` varchar(5) NOT NULL DEFAULT '0' COMMENT '1-default|0-not default'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `haashtag_company_profile_contact`
--

DROP TABLE IF EXISTS `haashtag_company_profile_contact`;
CREATE TABLE IF NOT EXISTS `haashtag_company_profile_contact` (
  `profile_contact_name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `is_default` varchar(5) NOT NULL DEFAULT '0' COMMENT '1-default|0-not default'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;