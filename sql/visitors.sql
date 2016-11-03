-- Adminer 4.2.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `visitors`;
CREATE TABLE `visitors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `country_code` varchar(6) NOT NULL,
  `country_name` text NOT NULL,
  `region_code` varchar(15) NOT NULL,
  `region_name` text NOT NULL,
  `city` text NOT NULL,
  `zip_code` varchar(6) NOT NULL,
  `time_zone` text NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `metro_code` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `visitors` (`id`, `ip`, `country_code`, `country_name`, `region_code`, `region_name`, `city`, `zip_code`, `time_zone`, `latitude`, `longitude`, `metro_code`) VALUES
(27,	'222.127.29.66',	'PH',	'Philippines',	'00',	'National Capital Region',	'Makati City',	'1214',	'Asia/Manila',	14.5501,	121.036,	0),
(28,	'222.127.29.66',	'PH',	'Philippines',	'00',	'National Capital Region',	'Makati City',	'1214',	'Asia/Manila',	14.5501,	121.036,	0),
(29,	'222.127.29.66',	'PH',	'Philippines',	'00',	'National Capital Region',	'Makati City',	'1214',	'Asia/Manila',	14.5501,	121.036,	0);

-- 2016-11-03 04:53:15
