-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Oct 14, 2016 at 01:23 PM
-- Server version: 5.5.52-cll
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `solution_gen`
--

-- --------------------------------------------------------

--
-- Table structure for table `jos_banner`
--

CREATE TABLE IF NOT EXISTS `jos_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `jos_banner`
--

INSERT INTO `jos_banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES
(1, 1, 'banner', 'OSM 1', 'osm-1', 0, 43, 0, 'osmbanner1.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2, 1, 'banner', 'OSM 2', 'osm-2', 0, 49, 0, 'osmbanner2.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(3, 1, '', 'Joomla!', 'joomla', 0, 25, 0, '', 'http://www.joomla.org', '2006-05-29 14:21:28', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! The most popular and widely used Open Source CMS Project in the world.', 14, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(4, 1, '', 'JoomlaCode', 'joomlacode', 0, 25, 0, '', 'http://joomlacode.org', '2006-05-29 14:19:26', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomlaCode, development and distribution made easy.', 14, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(5, 1, '', 'Joomla! Extensions', 'joomla-extensions', 0, 20, 0, '', 'http://extensions.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! Components, Modules, Plugins and Languages by the bucket load.', 14, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(6, 1, '', 'Joomla! Shop', 'joomla-shop', 0, 20, 0, '', 'http://shop.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nFor all your Joomla! merchandise.', 14, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(7, 1, '', 'Joomla! Promo Shop', 'joomla-promo-shop', 0, 23, 1, 'shop-ad.jpg', 'http://shop.joomla.org', '2007-09-19 17:26:24', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(8, 1, '', 'Joomla! Promo Books', 'joomla-promo-books', 0, 27, 0, 'shop-ad-books.jpg', 'http://shop.joomla.org/amazoncom-bookstores.html', '2007-09-19 17:28:01', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_bannerclient`
--

CREATE TABLE IF NOT EXISTS `jos_bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_bannerclient`
--

INSERT INTO `jos_bannerclient` (`cid`, `name`, `contact`, `email`, `extrainfo`, `checked_out`, `checked_out_time`, `editor`) VALUES
(1, 'Open Source Matters', 'Administrator', 'admin@opensourcematters.org', '', 0, '00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jos_bannertrack`
--

CREATE TABLE IF NOT EXISTS `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_categories`
--

CREATE TABLE IF NOT EXISTS `jos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `jos_categories`
--

INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES
(1, 0, 'Latest', '', 'latest-news', 'taking_notes.jpg', '1', 'left', 'The latest news from the Joomla! Team', 1, 0, '0000-00-00 00:00:00', '', 1, 0, 1, ''),
(2, 0, 'Joomla! Specific Links', '', 'joomla-specific-links', 'clock.jpg', 'com_weblinks', 'left', 'A selection of links that are all related to the Joomla! Project.', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(3, 0, 'Newsflash', '', 'newsflash', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', '', 2, 0, 0, ''),
(4, 0, 'Joomla!', '', 'joomla', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(5, 0, 'Free and Open Source Software', '', 'free-and-open-source-software', '', 'com_newsfeeds', 'left', 'Read the latest news about free and open source software from some of its leading advocates.', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(6, 0, 'Related Projects', '', 'related-projects', '', 'com_newsfeeds', 'left', 'Joomla builds on and collaborates with many other free and open source projects. Keep up with the latest news from some of them.', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(12, 0, 'Contacts', '', 'contacts', '', 'com_contact_details', 'left', 'Contact Details for this Web site', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(13, 0, 'Joomla', '', 'joomla', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(14, 0, 'Text Ads', '', 'text-ads', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(15, 0, 'Features', '', 'features', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(17, 0, 'Benefits', '', 'benefits', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(18, 0, 'Platforms', '', 'platforms', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(19, 0, 'Other Resources', '', 'other-resources', '', 'com_weblinks', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(29, 0, 'The CMS', '', 'the-cms', '', '4', 'left', 'Information about the software behind Joomla!<br />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(28, 0, 'Current Users', '', 'current-users', '', '3', 'left', 'Questions that users migrating to Joomla! 1.5 are likely to raise<br />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(25, 0, 'The Project', '', 'the-project', '', '4', 'left', 'General facts about Joomla!<br />', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(27, 0, 'New to Joomla!', '', 'new-to-joomla', '', '3', 'left', 'Questions for new users of Joomla!', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(30, 0, 'The Community', '', 'the-community', '', '4', 'left', 'About the millions of Joomla! users and Web sites<br />', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(31, 0, 'General', '', 'general', '', '3', 'left', 'General questions about the Joomla! CMS', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(32, 0, 'Languages', '', 'languages', '', '3', 'left', 'Questions related to localisation and languages', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(33, 0, 'Joomla! Promo', '', 'joomla-promo', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(34, 0, 'profile', '', 'profile', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_components`
--

CREATE TABLE IF NOT EXISTS `jos_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `jos_components`
--

INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES
(1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1),
(2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1),
(5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1),
(9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, 'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 1),
(13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1),
(15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1),
(16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1),
(17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1),
(18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1),
(19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n', 1),
(20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\n\n', 1),
(21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1),
(22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1),
(23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, '', 1),
(24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1),
(25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1),
(27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1),
(28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1),
(29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1),
(30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1),
(31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1),
(32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1),
(33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1),
(34, 'VirtueMart', 'option=com_virtuemart', 0, 0, 'option=com_virtuemart', 'VirtueMart', 'com_virtuemart', 0, '../components/com_virtuemart/shop_image/ps_image/menu_icon.png', 0, '', 1),
(35, 'virtuemart_version', '', 0, 9999, '', '', '', 0, '', 0, 'RELEASE=1.1.5\nDEV_STATUS=stable', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_contact_details`
--

CREATE TABLE IF NOT EXISTS `jos_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_contact_details`
--

INSERT INTO `jos_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`) VALUES
(1, 'Solution''s H-21 Trading Corp.', 'name', '', 'Unit S-17 Cluster Bldg. II Tutuban Center, C. M. Recto Ave. Manila, Philippines', '', '', '', '', '(+632) 986-4817', '(+632) 253-7201', 'Miscellanous info', 'articles.jpg', 'top', 'solutionsh21@gmail.com', 0, 1, 0, '0000-00-00 00:00:00', 1, 'show_name=1\nshow_position=0\nshow_email=1\nshow_street_address=0\nshow_suburb=0\nshow_state=0\nshow_postcode=0\nshow_country=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nshow_webpage=0\nshow_misc=0\nshow_image=0\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=emailButton.png\nicon_telephone=con_fax.png\nicon_mobile=con_mobile.png\nicon_fax=con_fax.png\nicon_misc=\nshow_email_form=1\nemail_description=1\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', 0, 12, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content`
--

CREATE TABLE IF NOT EXISTS `jos_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `jos_content`
--

INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(1, 'Welcome to Joomla!', 'welcome-to-joomla', '', '<div align="left"><strong>Joomla! is a free open source framework and content publishing system designed for quickly creating highly interactive multi-language Web sites, online communities, media portals, blogs and eCommerce applications. <br /></strong></div><p><strong><br /></strong><img src="images/stories/powered_by.png" border="0" alt="Joomla! Logo" title="Example Caption" hspace="6" vspace="0" width="165" height="68" align="left" />Joomla! provides an easy-to-use graphical user interface that simplifies the management and publishing of large volumes of content including HTML, documents, and rich media.  Joomla! is used by organisations of all sizes for intranets and extranets and is supported by a community of tens of thousands of users. </p>', 'With a fully documented library of developer resources, Joomla! allows the customisation of every aspect of a Web site including presentation, layout, administration, and the rapid integration with third-party applications.<p>Joomla! now provides more developer power while making the user experience all the more friendly. For those who always wanted increased extensibility, Joomla! 1.5 can make this happen.</p><p>A new framework, ground-up refactoring, and a highly-active development team brings the excitement of ''the next generation CMS'' to your fingertips.  Whether you are a systems architect or a complete ''noob'' Joomla! can take you to the next level of content delivery. ''More than a CMS'' is something we have been playing with as a catchcry because the new Joomla! API has such incredible power and flexibility, you are free to take whatever direction your creative mind takes you and Joomla! can help you get there so much more easily than ever before.</p><p>Thinking Web publishing? Think Joomla!</p>', -2, 1, 0, 1, '2008-08-12 10:00:00', 62, '', '2008-08-12 10:00:00', 62, 0, '0000-00-00 00:00:00', '2006-01-03 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 29, 0, 0, '', '', 0, 92, 'robots=\nauthor='),
(2, 'Newsflash 1', 'newsflash-1', '', '<p>Joomla! makes it easy to launch a Web site of any kind. Whether you want a brochure site or you are building a large online community, Joomla! allows you to deploy a new site in minutes and add extra functionality as you need it. The hundreds of available Extensions will help to expand your site and allow you to deliver new services that extend your reach into the Internet.</p>', '', -2, 1, 0, 3, '2008-08-10 06:30:34', 62, '', '2008-08-10 06:30:34', 62, 0, '0000-00-00 00:00:00', '2004-08-09 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 1, 'robots=\nauthor='),
(3, 'Newsflash 2', 'newsflash-2', '', '<p>The one thing about a Web site, it always changes! Joomla! makes it easy to add Articles, content, images, videos, and more. Site administrators can edit and manage content ''in-context'' by clicking the ''Edit'' link. Webmasters can also edit content through a graphical Control Panel that gives you complete control over your site.</p>', '', -2, 1, 0, 3, '2008-08-09 22:30:34', 62, '', '2008-08-09 22:30:34', 62, 0, '0000-00-00 00:00:00', '2004-08-09 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(4, 'Newsflash 3', 'newsflash-3', '', '<p>With a library of thousands of free <a href="http://extensions.joomla.org" target="_blank" title="The Joomla! Extensions Directory">Extensions</a>, you can add what you need as your site grows. Don''t wait, look through the <a href="http://extensions.joomla.org/" target="_blank" title="Joomla! Extensions">Joomla! Extensions</a>  library today. </p>', '', -2, 1, 0, 3, '2008-08-10 06:30:34', 62, '', '2008-08-10 06:30:34', 62, 0, '0000-00-00 00:00:00', '2004-08-09 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 1, 'robots=\nauthor='),
(5, 'Joomla! License Guidelines', 'joomla-license-guidelines', 'joomla-license-guidelines', '<p>This Web site is powered by <a href="http://joomla.org/" target="_blank" title="Joomla!">Joomla!</a> The software and default templates on which it runs are Copyright 2005-2008 <a href="http://www.opensourcematters.org/" target="_blank" title="Open Source Matters">Open Source Matters</a>. The sample content distributed with Joomla! is licensed under the <a href="http://docs.joomla.org/JEDL" target="_blank" title="Joomla! Electronic Document License">Joomla! Electronic Documentation License.</a> All data entered into this Web site and templates added after installation, are copyrighted by their respective copyright owners.</p> <p>If you want to distribute, copy, or modify Joomla!, you are welcome to do so under the terms of the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC1" target="_blank" title="GNU General Public License"> GNU General Public License</a>. If you are unfamiliar with this license, you might want to read <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC4" target="_blank" title="How To Apply These Terms To Your Program">''How To Apply These Terms To Your Program''</a> and the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0-faq.html" target="_blank" title="GNU General Public License FAQ">''GNU General Public License FAQ''</a>.</p> <p>The Joomla! licence has always been GPL.</p>', '', -2, 4, 0, 25, '2008-08-20 10:11:07', 62, '', '2008-08-20 10:11:07', 62, 0, '0000-00-00 00:00:00', '2004-08-19 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 100, 'robots=\nauthor='),
(6, 'We are Volunteers', 'we-are-volunteers', '', '<p>The Joomla Core Team and Working Group members are volunteer developers, designers, administrators and managers who have worked together to take Joomla! to new heights in its relatively short life. Joomla! has some wonderfully talented people taking Open Source concepts to the forefront of industry standards.  Joomla! 1.5 is a major leap forward and represents the most exciting Joomla! release in the history of the project. </p>', '', -2, 1, 0, 1, '2007-07-07 09:54:06', 62, '', '2007-07-07 09:54:06', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 0, '', '', 0, 54, 'robots=\nauthor='),
(9, 'Millions of Smiles', 'millions-of-smiles', '', '<p>The Joomla! team has millions of good reasons to be smiling about the Joomla! 1.5. In its current incarnation, it''s had millions of downloads, taking it to an unprecedented level of popularity.  The new code base is almost an entire re-factor of the old code base.  The user experience is still extremely slick but for developers the API is a dream.  A proper framework for real PHP architects seeking the best of the best.</p><p>If you''re a former Mambo User or a 1.0 series Joomla! User, 1.5 is the future of CMSs for a number of reasons.  It''s more powerful, more flexible, more secure, and intuitive.  Our developers and interface designers have worked countless hours to make this the most exciting release in the content management system sphere.</p><p>Go on ... get your FREE copy of Joomla! today and spread the word about this benchmark project. </p>', '', -2, 1, 0, 1, '2007-07-07 09:54:06', 62, '', '2007-07-07 09:54:06', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 23, 'robots=\nauthor='),
(10, 'How do I localise Joomla! to my language?', 'how-do-i-localise-joomla-to-my-language', '', '<h4>General<br /></h4><p>In Joomla! 1.5 all User interfaces can be localised. This includes the installation, the Back-end Control Panel and the Front-end Site.</p><p>The core release of Joomla! 1.5 is shipped with multiple language choices in the installation but, other than English (the default), languages for the Site and Administration interfaces need to be added after installation. Links to such language packs exist below.</p>', '<p>Translation Teams for Joomla! 1.5 may have also released fully localised installation packages where site, administrator and sample data are in the local language. These localised releases can be found in the specific team projects on the <a href="http://extensions.joomla.org/component/option,com_mtree/task,listcats/cat_id,1837/Itemid,35/" target="_blank" title="JED">Joomla! Extensions Directory</a>.</p><h4>How do I install language packs?</h4><ul><li>First download both the admin and the site language packs that you require.</li><li>Install each pack separately using the Extensions-&gt;Install/Uninstall Menu selection and then the package file upload facility.</li><li>Go to the Language Manager and be sure to select Site or Admin in the sub-menu. Then select the appropriate language and make it the default one using the Toolbar button.</li></ul><h4>How do I select languages?</h4><ul><li>Default languages can be independently set for Site and for Administrator</li><li>In addition, users can define their preferred language for each Site and Administrator. This takes affect after logging in.</li><li>While logging in to the Administrator Back-end, a language can also be selected for the particular session.</li></ul><h4>Where can I find Language Packs and Localised Releases?</h4><p><em>Please note that Joomla! 1.5 is new and language packs for this version may have not been released at this time.</em> </p><ul><li><a href="http://joomlacode.org/gf/project/jtranslation/" target="_blank" title="Accredited Translations">The Joomla! Accredited Translations Project</a>  - This is a joint repository for language packs that were developed by teams that are members of the Joomla! Translations Working Group.</li><li><a href="http://extensions.joomla.org/component/option,com_mtree/task,listcats/cat_id,1837/Itemid,35/" target="_blank" title="Translations">The Joomla! Extensions Site - Translations</a>  </li><li><a href="http://community.joomla.org/translations.html" target="_blank" title="Translation Work Group Teams">List of Translation Teams and Translation Partner Sites for Joomla! 1.5</a> </li></ul>', -2, 3, 0, 32, '2008-07-30 14:06:37', 62, '', '2008-07-30 14:06:37', 62, 0, '0000-00-00 00:00:00', '2006-09-29 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 0, '', '', 0, 10, 'robots=\nauthor='),
(11, 'How do I upgrade to Joomla! 1.5 ?', 'how-do-i-upgrade-to-joomla-15', '', '<p>Joomla! 1.5 does not provide an upgrade path from earlier versions. Converting an older site to a Joomla! 1.5 site requires creation of a new empty site using Joomla! 1.5 and then populating the new site with the content from the old site. This migration of content is not a one-to-one process and involves conversions and modifications to the content dump.</p> <p>There are two ways to perform the migration:</p>', ' <div id="post_content-107"><li>An automated method of migration has been provided which uses a migrator Component to create the migration dump out of the old site (Mambo 4.5.x up to Joomla! 1.0.x) and a smart import facility in the Joomla! 1.5 Installation that performs required conversions and modifications during the installation process.</li> <li>Migration can be performed manually. This involves exporting the required tables, manually performing required conversions and modifications and then importing the content to the new site after it is installed.</li>  <p><!--more--></p> <h2><strong> Automated migration</strong></h2>  <p>This is a two phased process using two tools. The first tool is a migration Component named <font face="courier new,courier">com_migrator</font>. This Component has been contributed by Harald Baer and is based on his <strong>eBackup </strong>Component. The migrator needs to be installed on the old site and when activated it prepares the required export dump of the old site''s data. The second tool is built into the Joomla! 1.5 installation process. The exported content dump is loaded to the new site and all conversions and modification are performed on-the-fly.</p> <h3><u> Step 1 - Using com_migrator to export data from old site:</u></h3> <li>Install the <font face="courier new,courier">com_migrator</font> Component on the <u><strong>old</strong></u> site. It can be found at the <a href="http://joomlacode.org/gf/project/pasamioprojects/frs/" target="_blank" title="JoomlaCode">JoomlaCode developers forge</a>.</li> <li>Select the Component in the Component Menu of the Control Panel.</li> <li>Click on the <strong>Dump it</strong> icon. Three exported <em>gzipped </em>export scripts will be created. The first is a complete backup of the old site. The second is the migration content of all core elements which will be imported to the new site. The third is a backup of all 3PD Component tables.</li> <li>Click on the download icon of the particular exports files needed and store locally.</li> <li>Multiple export sets can be created.</li> <li>The exported data is not modified in anyway and the original encoding is preserved. This makes the <font face="courier new,courier">com_migrator</font> tool a recommended tool to use for manual migration as well.</li> <h3><u> Step 2 - Using the migration facility to import and convert data during Joomla! 1.5 installation:</u></h3><p>Note: This function requires the use of the <em><font face="courier new,courier">iconv </font></em>function in PHP to convert encodings. If <em><font face="courier new,courier">iconv </font></em>is not found a warning will be provided.</p> <li>In step 6 - Configuration select the ''Load Migration Script'' option in the ''Load Sample Data, Restore or Migrate Backed Up Content'' section of the page.</li> <li>Enter the table prefix used in the content dump. For example: ''jos_'' or ''site2_'' are acceptable values.</li> <li>Select the encoding of the dumped content in the dropdown list. This should be the encoding used on the pages of the old site. (As defined in the _ISO variable in the language file or as seen in the browser page info/encoding/source)</li> <li>Browse the local host and select the migration export and click on <strong>Upload and Execute</strong></li> <li>A success message should appear or alternately a listing of database errors</li> <li>Complete the other required fields in the Configuration step such as Site Name and Admin details and advance to the final step of installation. (Admin details will be ignored as the imported data will take priority. Please remember admin name and password from the old site)</li> <p><u><br /></u></p></div>', -2, 3, 0, 28, '2008-07-30 20:27:52', 62, '', '2008-07-30 20:27:52', 62, 0, '0000-00-00 00:00:00', '2006-09-29 12:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 0, '', '', 0, 14, 'robots=\nauthor='),
(12, 'Why does Joomla! 1.5 use UTF-8 encoding?', 'why-does-joomla-15-use-utf-8-encoding', '', '<p>Well... how about never needing to mess with encoding settings again?</p><p>Ever needed to display several languages on one page or site and something always came up in Giberish?</p><p>With utf-8 (a variant of Unicode) glyphs (character forms) of basically all languages can be displayed with one single encoding setting. </p>', '', -2, 3, 0, 31, '2008-08-05 01:11:29', 62, '', '2008-08-05 01:11:29', 62, 0, '0000-00-00 00:00:00', '2006-10-03 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 0, '', '', 0, 29, 'robots=\nauthor='),
(13, 'What happened to the locale setting?', 'what-happened-to-the-locale-setting', '', 'This is now defined in the Language [<em>lang</em>].xml file in the Language metadata settings. If you are having locale problems such as dates do not appear in your language for example, you might want to check/edit the entries in the locale tag. Note that multiple locale strings can be set and the host will usually accept the first one recognised.', '', -2, 3, 0, 28, '2008-08-06 16:47:35', 62, '', '2008-08-06 16:47:35', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 11, 'robots=\nauthor='),
(14, 'What is the FTP layer for?', 'what-is-the-ftp-layer-for', '', '<p>The FTP Layer allows file operations (such as installing Extensions or updating the main configuration file) without having to make all the folders and files writable. This has been an issue on Linux and other Unix based platforms in respect of file permissions. This makes the site admin''s life a lot easier and increases security of the site.</p><p>You can check the write status of relevent folders by going to ''''Help-&gt;System Info" and then in the sub-menu to "Directory Permissions". With the FTP Layer enabled even if all directories are red, Joomla! will operate smoothly.</p><p>NOTE: the FTP layer is not required on a Windows host/server. </p>', '', -2, 3, 0, 31, '2008-08-06 21:27:49', 62, '', '2008-08-06 21:27:49', 62, 0, '0000-00-00 00:00:00', '2006-10-05 16:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 6, 0, 0, '', '', 0, 23, 'robots=\nauthor='),
(15, 'Can Joomla! 1.5 operate with PHP Safe Mode On?', 'can-joomla-15-operate-with-php-safe-mode-on', '', '<p>Yes it can! This is a significant security improvement.</p><p>The <em>safe mode</em> limits PHP to be able to perform actions only on files/folders who''s owner is the same as PHP is currently using (this is usually ''apache''). As files normally are created either by the Joomla! application or by FTP access, the combination of PHP file actions and the FTP Layer allows Joomla! to operate in PHP Safe Mode.</p>', '', -2, 3, 0, 31, '2008-08-06 19:28:35', 62, '', '2008-08-06 19:28:35', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 8, 'robots=\nauthor='),
(16, 'Only one edit window! How do I create "Read more..."?', 'only-one-edit-window-how-do-i-create-read-more', '', '<p>This is now implemented by inserting a <strong>Read more...</strong> tag (the button is located below the editor area) a dotted line appears in the edited text showing the split location for the <em>Read more....</em> A new Plugin takes care of the rest.</p><p>It is worth mentioning that this does not have a negative effect on migrated data from older sites. The new implementation is fully backward compatible.</p>', '', -2, 3, 0, 28, '2008-08-06 19:29:28', 62, '', '2008-08-06 19:29:28', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 20, 'robots=\nauthor='),
(17, 'My MySQL database does not support UTF-8. Do I have a problem?', 'my-mysql-database-does-not-support-utf-8-do-i-have-a-problem', '', 'No you don''t. Versions of MySQL lower than 4.1 do not have built in UTF-8 support. However, Joomla! 1.5 has made provisions for backward compatibility and is able to use UTF-8 on older databases. Let the installer take care of all the settings and there is no need to make any changes to the database (charset, collation, or any other).', '', -2, 3, 0, 31, '2008-08-07 09:30:37', 62, '', '2008-08-07 09:30:37', 62, 0, '0000-00-00 00:00:00', '2006-10-05 20:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 0, '', '', 0, 9, 'robots=\nauthor='),
(18, 'Joomla! Features', 'joomla-features', '', '<h4><font color="#ff6600">Joomla! features:</font></h4> <ul><li>Completely database driven site engines </li><li>News, products, or services sections fully editable and manageable</li><li>Topics sections can be added to by contributing Authors </li><li>Fully customisable layouts including <em>left</em>, <em>center</em>, and <em>right </em>Menu boxes </li><li>Browser upload of images to your own library for use anywhere in the site </li><li>Dynamic Forum/Poll/Voting booth for on-the-spot results </li><li>Runs on Linux, FreeBSD, MacOSX server, Solaris, and AIX', '  </li></ul> <h4>Extensive Administration:</h4> <ul><li>Change order of objects including news, FAQs, Articles etc. </li><li>Random Newsflash generator </li><li>Remote Author submission Module for News, Articles, FAQs, and Links </li><li>Object hierarchy - as many Sections, departments, divisions, and pages as you want </li><li>Image library - store all your PNGs, PDFs, DOCs, XLSs, GIFs, and JPEGs online for easy use </li><li>Automatic Path-Finder. Place a picture and let Joomla! fix the link </li><li>News Feed Manager. Easily integrate news feeds into your Web site.</li><li>E-mail a friend and Print format available for every story and Article </li><li>In-line Text editor similar to any basic word processor software </li><li>User editable look and feel </li><li>Polls/Surveys - Now put a different one on each page </li><li>Custom Page Modules. Download custom page Modules to spice up your site </li><li>Template Manager. Download Templates and implement them in seconds </li><li>Layout preview. See how it looks before going live </li><li>Banner Manager. Make money out of your site.</li></ul>', -2, 4, 0, 29, '2008-08-08 23:32:45', 62, '', '2008-08-08 23:32:45', 62, 0, '0000-00-00 00:00:00', '2006-10-07 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 0, '', '', 0, 59, 'robots=\nauthor='),
(19, 'Joomla! Overview', 'joomla-overview', '', '<p>If you''re new to Web publishing systems, you''ll find that Joomla! delivers sophisticated solutions to your online needs. It can deliver a robust enterprise-level Web site, empowered by endless extensibility for your bespoke publishing needs. Moreover, it is often the system of choice for small business or home users who want a professional looking site that''s simple to deploy and use. <em>We do content right</em>.<br /> </p><p>So what''s the catch? How much does this system cost?</p><p> Well, there''s good news ... and more good news! Joomla! 1.5 is free, it is released under an Open Source license - the GNU/General Public License v 2.0. Had you invested in a mainstream, commercial alternative, there''d be nothing but moths left in your wallet and to add new functionality would probably mean taking out a second mortgage each time you wanted something adding!</p><p>Joomla! changes all that ... <br />Joomla! is different from the normal models for content management software. For a start, it''s not complicated. Joomla! has been developed for everybody, and anybody can develop it further. It is designed to work (primarily) with other Open Source, free, software such as PHP, MySQL, and Apache. </p><p>It is easy to install and administer, and is reliable. </p><p>Joomla! doesn''t even require the user or administrator of the system to know HTML to operate it once it''s up and running.</p><p>To get the perfect Web site with all the functionality that you require for your particular application may take additional time and effort, but with the Joomla! Community support that is available and the many Third Party Developers actively creating and releasing new Extensions for the 1.5 platform on an almost daily basis, there is likely to be something out there to meet your needs. Or you could develop your own Extensions and make these available to the rest of the community. </p>', '', -2, 4, 0, 29, '2008-08-09 07:49:20', 62, '', '2008-08-09 07:49:20', 62, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 0, '', '', 0, 150, 'robots=\nauthor='),
(20, 'Support and Documentation', 'support-and-documentation', '', '<h1>Support </h1><p>Support for the Joomla! CMS can be found on several places. The best place to start would be the <a href="http://docs.joomla.org/" target="_blank" title="Joomla! Official Documentation Wiki">Joomla! Official Documentation Wiki</a>. Here you can help yourself to the information that is regularly published and updated as Joomla! develops. There is much more to come too!</p> <p>Of course you should not forget the Help System of the CMS itself. On the <em>topmenu </em>in the Back-end Control panel you find the Help button which will provide you with lots of explanation on features.</p> <p>Another great place would of course be the <a href="http://forum.joomla.org/" target="_blank" title="Forum">Forum</a> . On the Joomla! Forum you can find help and support from Community members as well as from Joomla! Core members and Working Group members. The forum contains a lot of information, FAQ''s, just about anything you are looking for in terms of support.</p> <p>Two other resources for Support are the <a href="http://developer.joomla.org/" target="_blank" title="Joomla! Developer Site">Joomla! Developer Site</a> and the <a href="http://extensions.joomla.org/" target="_blank" title="Joomla! Extensions Directory">Joomla! Extensions Directory</a> (JED). The Joomla! Developer Site provides lots of technical information for the experienced Developer as well as those new to Joomla! and development work in general. The JED whilst not a support site in the strictest sense has many of the Extensions that you will need as you develop your own Web site.</p> <p>The Joomla! Developers and Bug Squad members are regularly posting their blog reports about several topics such as programming techniques and security issues.</p> <h1>Documentation</h1> <p>Joomla! Documentation can of course be found on the <a href="http://docs.joomla.org/" target="_blank" title="Joomla! Official Documentation Wiki">Joomla! Official Documentation Wiki</a>. You can find information for beginners, installation, upgrade, Frequently Asked Questions, developer topics, and a lot more. The Documentation Team helps oversee the wiki but you are invited to contribute content, as well.</p> <p>There are also books written about Joomla! You can find a listing of these books in the <a href="http://shop.joomla.org/" target="_blank" title="Joomla! Shop">Joomla! Shop</a>.</p>', '', -2, 4, 0, 25, '2008-08-09 08:33:57', 62, '', '2008-08-09 08:33:57', 62, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 0, '', '', 0, 6, 'robots=\nauthor='),
(21, 'Joomla! Facts', 'joomla-facts', '', '<p>Here are some interesting facts about Joomla!</p><ul><li><span>Over 210,000 active registered Users on the <a href="http://forum.joomla.org" target="_blank" title="Joomla Forums">Official Joomla! community forum</a> and more on the many international community sites.</span><ul><li><span>over 1,000,000 posts in over 200,000 topics</span></li><li>over 1,200 posts per day</li><li>growing at 150 new participants each day!</li></ul></li><li><span>1168 Projects on the JoomlaCode (<a href="http://joomlacode.org/" target="_blank" title="JoomlaCode">joomlacode.org</a> ). All for open source addons by third party developers.</span><ul><li><span>Well over 6,000,000 downloads of Joomla! since the migration to JoomlaCode in March 2007.<br /></span></li></ul></li><li><span>Nearly 4,000 extensions for Joomla! have been registered on the <a href="http://extensions.joomla.org" target="_blank" title="http://extensions.joomla.org">Joomla! Extension Directory</a>  </span></li><li><span>Joomla.org exceeds 2 TB of traffic per month!</span></li></ul>', '', -2, 4, 0, 30, '2008-08-09 16:46:37', 62, '', '2008-08-09 16:46:37', 62, 0, '0000-00-00 00:00:00', '2006-10-07 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 0, '', '', 0, 50, 'robots=\nauthor='),
(22, 'What''s New in 1.5?', 'whats-new-in-15', '', '<p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>', '<p style="margin-bottom: 0in">In Joomla! 1.5, you''ll notice: </p>    <ul><li>     <p style="margin-bottom: 0in">       Substantially improved usability, manageability, and scalability far beyond the original Mambo foundations</p>   </li><li>     <p style="margin-bottom: 0in"> Expanded accessibility to support internationalisation, double-byte characters and right-to-left support for Arabic, Farsi, and Hebrew languages among others</p>   </li><li>     <p style="margin-bottom: 0in"> Extended integration of external applications through Web services and remote authentication such as the Lightweight Directory Access Protocol (LDAP)</p>   </li><li>     <p style="margin-bottom: 0in"> Enhanced content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination</p>   </li><li>     <p style="margin-bottom: 0in">       A more sustainable and flexible framework for Component and Extension developers</p>   </li><li>     <p style="margin-bottom: 0in">Backward compatibility with previous releases of Components, Templates, Modules, and other Extensions</p></li></ul>', -2, 4, 0, 29, '2008-08-11 22:13:58', 62, '', '2008-08-11 22:13:58', 62, 0, '0000-00-00 00:00:00', '2006-10-10 18:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 0, '', '', 0, 106, 'robots=\nauthor='),
(23, 'Platforms and Open Standards', 'platforms-and-open-standards', '', '<p class="MsoNormal">Joomla! runs on any platform including Windows, most flavours of Linux, several Unix versions, and the Apple OS/X platform.  Joomla! depends on PHP and the MySQL database to deliver dynamic content.  </p>            <p class="MsoNormal">The minimum requirements are:</p>      <ul><li>Apache 1.x, 2.x and higher</li><li>PHP 4.3 and higher</li><li>MySQL 3.23 and higher</li></ul>It will also run on alternative server platforms such as Windows IIS - provided they support PHP and MySQL - but these require additional configuration in order for the Joomla! core package to be successful installed and operated.', '', -2, 4, 0, 25, '2008-08-11 04:22:14', 62, '', '2008-08-11 04:22:14', 62, 0, '0000-00-00 00:00:00', '2006-10-10 08:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 11, 'robots=\nauthor='),
(24, 'Content Layouts', 'content-layouts', '', '<p>Joomla! provides plenty of flexibility when displaying your Web content. Whether you are using Joomla! for a blog site, news or a Web site for a company, you''ll find one or more content styles to showcase your information. You can also change the style of content dynamically depending on your preferences. Joomla! calls how a page is laid out a <strong>layout</strong>. Use the guide below to understand which layouts are available and how you might use them. </p> <h2>Content </h2> <p>Joomla! makes it extremely easy to add and display content. All content  is placed where your mainbody tag in your template is located. There are three main types of layouts available in Joomla! and all of them can be customised via parameters. The display and parameters are set in the Menu Item used to display the content your working on. You create these layouts by creating a Menu Item and choosing how you want the content to display.</p> <h3>Blog Layout<br /> </h3> <p>Blog layout will show a listing of all Articles of the selected blog type (Section or Category) in the mainbody position of your template. It will give you the standard title, and Intro of each Article in that particular Category and/or Section. You can customise this layout via the use of the Preferences and Parameters, (See Article Parameters) this is done from the Menu not the Section Manager!</p> <h3>Blog Archive Layout<br /> </h3> <p>A Blog Archive layout will give you a similar output of Articles as the normal Blog Display but will add, at the top, two drop down lists for month and year plus a search button to allow Users to search for all Archived Articles from a specific month and year.</p> <h3>List Layout<br /> </h3> <p>Table layout will simply give you a <em>tabular </em>list<em> </em>of all the titles in that particular Section or Category. No Intro text will be displayed just the titles. You can set how many titles will be displayed in this table by Parameters. The table layout will also provide a filter Section so that Users can reorder, filter, and set how many titles are listed on a single page (up to 50)</p> <h2>Wrapper</h2> <p>Wrappers allow you to place stand alone applications and Third Party Web sites inside your Joomla! site. The content within a Wrapper appears within the primary content area defined by the "mainbody" tag and allows you to display their content as a part of your own site. A Wrapper will place an IFRAME into the content Section of your Web site and wrap your standard template navigation around it so it appears in the same way an Article would.</p> <h2>Content Parameters</h2> <p>The parameters for each layout type can be found on the right hand side of the editor boxes in the Menu Item configuration screen. The parameters available depend largely on what kind of layout you are configuring.</p>', '', -2, 4, 0, 29, '2008-08-12 22:33:10', 62, '', '2008-08-12 22:33:10', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 0, '', '', 0, 70, 'robots=\nauthor='),
(25, 'Solutions H-21', 'what-are-the-requirements-to-run-joomla-15', '', '<p>tttt</p>', '', 1, 3, 0, 31, '2008-08-11 00:42:31', 62, '', '2010-09-03 13:30:34', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 1, '', '', 0, 69537, 'robots=\nauthor='),
(26, 'Extensions', 'extensions', '', '<p>Out of the box, Joomla! does a great job of managing the content needed to make your Web site sing. But for many people, the true power of Joomla! lies in the application framework that makes it possible for developers all around the world to create powerful add-ons that are called <strong>Extensions</strong>. An Extension is used to add capabilities to Joomla! that do not exist in the base core code. Here are just some examples of the hundreds of available Extensions:</p> <ul>   <li>Dynamic form builders</li>   <li>Business or organisational directories</li>   <li>Document management</li>   <li>Image and multimedia galleries</li>   <li>E-commerce and shopping cart engines</li>   <li>Forums and chat software</li>   <li>Calendars</li>   <li>E-mail newsletters</li>   <li>Data collection and reporting tools</li>   <li>Banner advertising systems</li>   <li>Paid subscription services</li>   <li>and many, many, more</li> </ul> <p>You can find more examples over at our ever growing <a href="http://extensions.joomla.org" target="_blank" title="Joomla! Extensions Directory">Joomla! Extensions Directory</a>. Prepare to be amazed at the amount of exciting work produced by our active developer community!</p><p>A useful guide to the Extension site can be found at:<br /><a href="http://extensions.joomla.org/content/view/15/63/" target="_blank" title="Guide to the Joomla! Extension site">http://extensions.joomla.org/content/view/15/63/</a> </p> <h3>Types of Extensions </h3><p>There are five types of extensions:</p> <ul>   <li>Components</li>   <li>Modules</li>   <li>Templates</li>   <li>Plugins</li>   <li>Languages</li> </ul> <p>You can read more about the specifics of these using the links in the Article Index - a Table of Contents (yet another useful feature of Joomla!) - at the top right or by clicking on the <strong>Next </strong>link below.<br /> </p> <hr title="Components" class="system-pagebreak" /> <h3><img src="images/stories/ext_com.png" border="0" alt="Component - Joomla! Extension Directory" title="Component - Joomla! Extension Directory" width="17" height="17" /> Components</h3> <p>A Component is the largest and most complex of the Extension types.  Components are like mini-applications that render the main body of the  page. An analogy that might make the relationship easier to understand  would be that Joomla! is a book and all the Components are chapters in  the book. The core Article Component (<font face="courier new,courier">com_content</font>), for example, is the  mini-application that handles all core Article rendering just as the  core registration Component (<font face="courier new,courier">com_user</font>) is the mini-application  that handles User registration.</p> <p>Many of Joomla!''s core features are provided by the use of default Components such as:</p> <ul>   <li>Contacts</li>   <li>Front Page</li>   <li>News Feeds</li>   <li>Banners</li>   <li>Mass Mail</li>   <li>Polls</li></ul><p>A Component will manage data, set displays, provide functions, and in general can perform any operation that does not fall under the general functions of the core code.</p> <p>Components work hand in hand with Modules and Plugins to provide a rich variety of content display and functionality aside from the standard Article and content display. They make it possible to completely transform Joomla! and greatly expand its capabilities.</p>  <hr title="Modules" class="system-pagebreak" /> <h3><img src="images/stories/ext_mod.png" border="0" alt="Module - Joomla! Extension Directory" title="Module - Joomla! Extension Directory" width="17" height="17" /> Modules</h3> <p>A more lightweight and flexible Extension used for page rendering is a Module. Modules are used for small bits of the page that are generally  less complex and able to be seen across different Components. To  continue in our book analogy, a Module can be looked at as a footnote  or header block, or perhaps an image/caption block that can be rendered  on a particular page. Obviously you can have a footnote on any page but  not all pages will have them. Footnotes also might appear regardless of  which chapter you are reading. Simlarly Modules can be rendered  regardless of which Component you have loaded.</p> <p>Modules are like little mini-applets that can be placed anywhere on your site. They work in conjunction with Components in some cases and in others are complete stand alone snippets of code used to display some data from the database such as Articles (Newsflash) Modules are usually used to output data but they can also be interactive form items to input data for example the Login Module or Polls.</p> <p>Modules can be assigned to Module positions which are defined in your Template and in the back-end using the Module Manager and editing the Module Position settings. For example, "left" and "right" are common for a 3 column layout. </p> <h4>Displaying Modules</h4> <p>Each Module is assigned to a Module position on your site. If you wish it to display in two different locations you must copy the Module and assign the copy to display at the new location. You can also set which Menu Items (and thus pages) a Module will display on, you can select all Menu Items or you can pick and choose by holding down the control key and selecting multiple locations one by one in the Modules [Edit] screen</p> <p>Note: Your Main Menu is a Module! When you create a new Menu in the Menu Manager you are actually copying the Main Menu Module (<font face="courier new,courier">mod_mainmenu</font>) code and giving it the name of your new Menu. When you copy a Module you do not copy all of its parameters, you simply allow Joomla! to use the same code with two separate settings.</p> <h4>Newsflash Example</h4> <p>Newsflash is a Module which will display Articles from your site in an assignable Module position. It can be used and configured to display one Category, all Categories, or to randomly choose Articles to highlight to Users. It will display as much of an Article as you set, and will show a <em>Read more...</em> link to take the User to the full Article.</p> <p>The Newsflash Component is particularly useful for things like Site News or to show the latest Article added to your Web site.</p>  <hr title="Plugins" class="system-pagebreak" /> <h3><img src="images/stories/ext_plugin.png" border="0" alt="Plugin - Joomla! Extension Directory" title="Plugin - Joomla! Extension Directory" width="17" height="17" /> Plugins</h3> <p>One  of the more advanced Extensions for Joomla! is the Plugin. In previous  versions of Joomla! Plugins were known as Mambots. Aside from changing their name their  functionality has been expanded. A Plugin is a section of code that  runs when a pre-defined event happens within Joomla!. Editors are Plugins, for example, that execute when the Joomla! event <font face="courier new,courier">onGetEditorArea</font> occurs. Using a Plugin allows a developer to change  the way their code behaves depending upon which Plugins are installed  to react to an event.</p>  <hr title="Languages" class="system-pagebreak" /> <h3><img src="images/stories/ext_lang.png" border="0" alt="Language - Joomla! Extensions Directory" title="Language - Joomla! Extensions Directory" width="17" height="17" /> Languages</h3> <p>New  to Joomla! 1.5 and perhaps the most basic and critical Extension is a Language. Joomla! is released with multiple Installation Languages but the base Site and Administrator are packaged in just the one Language <strong>en-GB</strong> - being English with GB spelling for example. To include all the translations currently available would bloat the core package and make it unmanageable for uploading purposes. The Language files enable all the User interfaces both Front-end and Back-end to be presented in the local preferred language. Note these packs do not have any impact on the actual content such as Articles. </p> <p>More information on languages is available from the <br />   <a href="http://community.joomla.org/translations.html" target="_blank" title="Joomla! Translation Teams">http://community.joomla.org/translations.html</a></p>', '', -2, 4, 0, 29, '2008-08-11 06:00:00', 62, '', '2008-08-11 06:00:00', 62, 0, '0000-00-00 00:00:00', '2006-10-10 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 24, 0, 0, 'About Joomla!, General, Extensions', '', 0, 102, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(27, 'The Joomla! Community', 'the-joomla-community', '', '<p><strong>Got a question? </strong>With more than 210,000 members, the Joomla! Discussion Forums at <a href="http://forum.joomla.org/" target="_blank" title="Forums">forum.joomla.org</a> are a great resource for both new and experienced users. Ask your toughest questions the community is waiting to see what you''ll do with your Joomla! site.</p><p><strong>Do you want to show off your new Joomla! Web site?</strong> Visit the <a href="http://forum.joomla.org/viewforum.php?f=514" target="_blank" title="Site Showcase">Site Showcase</a> section of our forum.</p><p><strong>Do you want to contribute?</strong></p><p>If you think working with Joomla is fun, wait until you start working on it. We''re passionate about helping Joomla users become contributors. There are many ways you can help Joomla''s development:</p><ul>	<li>Submit news about Joomla. We syndicate Joomla-related news on <a href="http://news.joomla.org" target="_blank" title="JoomlaConnect">JoomlaConnect<sup>TM</sup></a>. If you have Joomla news that you would like to share with the community, find out how to get connected <a href="http://community.joomla.org/connect.html" target="_blank" title="JoomlaConnect">here</a>.</li>	<li>Report bugs and request features in our <a href="http://joomlacode.org/gf/project/joomla/tracker/" target="_blank" title="Joomla! developement trackers">trackers</a>. Please read <a href="http://docs.joomla.org/Filing_bugs_and_issues" target="_blank" title="Reporting Bugs">Reporting Bugs</a>, for details on how we like our bug reports served up</li><li>Submit patches for new and/or fixed behaviour. Please read <a href="http://docs.joomla.org/Patch_submission_guidelines" target="_blank" title="Submitting Patches">Submitting Patches</a>, for details on how to submit a patch.</li><li>Join the <a href="http://forum.joomla.org/viewforum.php?f=509" target="_blank" title="Joomla! development forums">developer forums</a> and share your ideas for how to improve Joomla. We''re always open to suggestions, although we''re likely to be sceptical of large-scale suggestions without some code to back it up.</li><li>Join any of the <a href="http://www.joomla.org/about-joomla/the-project/working-groups.html" target="_blank" title="Joomla! working groups">Joomla Working Groups</a> and bring your personal expertise to the Joomla community. </li></ul><p>These are just a few ways you can contribute. See <a href="http://www.joomla.org/about-joomla/contribute-to-joomla.html" target="_blank" title="Contribute">Contribute to Joomla</a> for many more ways.</p>', '', -2, 4, 0, 30, '2008-08-12 16:50:48', 62, '', '2008-08-12 16:50:48', 62, 0, '0000-00-00 00:00:00', '2006-10-11 02:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 12, 0, 0, '', '', 0, 56, 'robots=\nauthor='),
(28, 'How do I install Joomla! 1.5?', 'how-do-i-install-joomla-15', '', '<p>Installing of Joomla! 1.5 is pretty easy. We assume you have set-up your Web site, and it is accessible with your browser.<br /><br />Download Joomla! 1.5, unzip it and upload/copy the files into the directory you Web site points to, fire up your browser and enter your Web site address and the installation will start.  </p><p>For full details on the installation processes check out the <a href="http://help.joomla.org/content/category/48/268/302" target="_blank" title="Joomla! 1.5 Installation Manual">Installation Manual</a> on the <a href="http://help.joomla.org" target="_blank" title="Joomla! Help Site">Joomla! Help Site</a> where you will also find download instructions for a PDF version too. </p>', '', -2, 3, 0, 31, '2008-08-11 01:10:59', 62, '', '2008-08-11 01:10:59', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 5, 'robots=\nauthor='),
(29, 'What is the purpose of the collation selection in the installation screen?', 'what-is-the-purpose-of-the-collation-selection-in-the-installation-screen', '', 'The collation option determines the way ordering in the database is done. In languages that use special characters, for instance the German umlaut, the database collation determines the sorting order. If you don''t know which collation you need, select the "utf8_general_ci" as most languages use this. The other collations listed are exceptions in regards to the general collation. If your language is not listed in the list of collations it most likely means that "utf8_general_ci is suitable.', '', -2, 3, 0, 32, '2008-08-11 03:11:38', 62, '', '2008-08-11 03:11:38', 62, 0, '0000-00-00 00:00:00', '2006-10-10 08:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 4, 0, 0, '', '', 0, 6, 'robots=\nauthor='),
(30, 'What languages are supported by Joomla! 1.5?', 'what-languages-are-supported-by-joomla-15', '', 'Within the Installer you will find a wide collection of languages. The installer currently supports the following languages: Arabic, Bulgarian, Bengali, Czech, Danish, German, Greek, English, Spanish, Finnish, French, Hebrew, Devanagari(India), Croatian(Croatia), Magyar (Hungary), Italian, Malay, Norwegian bokmal, Dutch, Portuguese(Brasil), Portugues(Portugal), Romanian, Russian, Serbian, Svenska, Thai and more are being added all the time.<br />By default the English language is installed for the Back and Front-ends. You can download additional language files from the <a href="http://extensions.joomla.org" target="_blank" title="Joomla! Extensions Directory">Joomla!Extensions Directory</a>. ', '', -2, 3, 0, 32, '2008-08-11 01:12:18', 62, '', '2008-08-11 01:12:18', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 8, 'robots=\nauthor='),
(31, 'Is it useful to install the sample data?', 'is-it-useful-to-install-the-sample-data', '', 'Well you are reading it right now! This depends on what you want to achieve. If you are new to Joomla! and have no clue how it all fits together, just install the sample data. If you don''t like the English sample data because you - for instance - speak Chinese, then leave it out.', '', -2, 3, 0, 27, '2008-08-11 09:12:55', 62, '', '2008-08-11 09:12:55', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 3, 'robots=\nauthor='),
(32, 'Where is the Static Content Item?', 'where-is-the-static-content', '', '<p>In Joomla! versions prior to 1.5 there were separate processes for creating a Static Content Item and normal Content Items. The processes have been combined now and whilst both content types are still around they are renamed as Articles for Content Items and Uncategorized Articles for Static Content Items. </p><p>If you want to create a static item, create a new Article in the same way as for standard content and rather than relating this to a particular Section and Category just select <span style="font-style: italic">Uncategorized</span> as the option in the Section and Category drop down lists.</p>', '', -2, 3, 0, 28, '2008-08-10 23:13:33', 62, '', '2008-08-10 23:13:33', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 5, 'robots=\nauthor='),
(33, 'What is an Uncategorised Article?', 'what-is-uncategorised-article', '', 'Most Articles will be assigned to a Section and Category. In many cases, you might not know where you want it to appear so put the Article in the <em>Uncategorized </em>Section/Category. The Articles marked as <em>Uncategorized </em>are handled as static content.', '', -2, 3, 0, 31, '2008-08-11 15:14:11', 62, '', '2008-08-11 15:14:11', 62, 0, '0000-00-00 00:00:00', '2006-10-10 12:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 0, '', '', 0, 6, 'robots=\nauthor='),
(34, 'Does the PDF icon render pictures and special characters?', 'does-the-pdf-icon-render-pictures-and-special-characters', '', 'Yes! Prior to Joomla! 1.5, only the text values of an Article and only for ISO-8859-1 encoding was allowed in the PDF rendition. With the new PDF library in place, the complete Article including images is rendered and applied to the PDF. The PDF generator also handles the UTF-8 texts and can handle any character sets from any language. The appropriate fonts must be installed but this is done automatically during a language pack installation.', '', -2, 3, 0, 32, '2008-08-11 17:14:57', 62, '', '2008-08-11 17:14:57', 62, 0, '0000-00-00 00:00:00', '2006-10-10 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 6, 'robots=\nauthor='),
(35, 'Is it possible to change A Menu Item''s Type?', 'is-it-possible-to-change-the-types-of-menu-entries', '', '<p>You indeed can change the Menu Item''s Type to whatever you want, even after they have been created. </p><p>If, for instance, you want to change the Blog Section of a Menu link, go to the Control Panel-&gt;Menus Menu-&gt;[menuname]-&gt;Menu Item Manager and edit the Menu Item. Select the <strong>Change Type</strong> button and choose the new style of Menu Item Type from the available list. Thereafter, alter the Details and Parameters to reconfigure the display for the new selection  as you require it.</p>', '', -2, 3, 0, 31, '2008-08-10 23:15:36', 62, '', '2008-08-10 23:15:36', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 18, 'robots=\nauthor='),
(36, 'Where did the Installers go?', 'where-did-the-installer-go', '', 'The improved Installer can be found under the Extensions Menu. With versions prior to Joomla! 1.5 you needed to select a specific Extension type when you wanted to install it and use the Installer associated with it, with Joomla! 1.5 you just select the Extension you want to upload, and click on install. The Installer will do all the hard work for you.', '', -2, 3, 0, 28, '2008-08-10 23:16:20', 62, '', '2008-08-10 23:16:20', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 4, 'robots=\nauthor='),
(37, 'Where did the Mambots go?', 'where-did-the-mambots-go', '', '<p>Mambots have been renamed as Plugins. </p><p>Mambots were introduced in Mambo and offered possibilities to add plug-in logic to your site mainly for the purpose of manipulating content. In Joomla! 1.5, Plugins will now have much broader capabilities than Mambots. Plugins are able to extend functionality at the framework layer as well.</p>', '', -2, 3, 0, 28, '2008-08-11 09:17:00', 62, '', '2008-08-11 09:17:00', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 4, 'robots=\nauthor='),
(38, 'I installed with my own language, but the Back-end is still in English', 'i-installed-with-my-own-language-but-the-back-end-is-still-in-english', '', '<p>A lot of different languages are available for the Back-end, but by default this language may not be installed. If you want a translated Back-end, get your language pack and install it using the Extension Installer. After this, go to the Extensions Menu, select Language Manager and make your language the default one. Your Back-end will be translated immediately.</p><p>Users who have access rights to the Back-end may choose the language they prefer in their Personal Details parameters. This is of also true for the Front-end language.</p><p> A good place to find where to download your languages and localised versions of Joomla! is <a href="http://extensions.joomla.org/index.php?option=com_mtree&task=listcats&cat_id=1837&Itemid=35" target="_blank" title="Translations for Joomla!">Translations for Joomla!</a> on JED.</p>', '', -2, 3, 0, 32, '2008-08-11 17:18:14', 62, '', '2008-08-11 17:18:14', 62, 0, '0000-00-00 00:00:00', '2006-10-10 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 7, 'robots=\nauthor='),
(39, 'How do I remove an Article?', 'how-do-i-remove-an-article', '', '<p>To completely remove an Article, select the Articles that you want to delete and move them to the Trash. Next, open the Article Trash in the Content Menu and select the Articles you want to delete. After deleting an Article, it is no longer available as it has been deleted from the database and it is not possible to undo this operation.  </p>', '', -2, 3, 0, 27, '2008-08-11 09:19:01', 62, '', '2008-08-11 09:19:01', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 4, 'robots=\nauthor='),
(40, 'What is the difference between Archiving and Trashing an Article? ', 'what-is-the-difference-between-archiving-and-trashing-an-article', '', '<p>When you <em>Archive </em>an Article, the content is put into a state which removes it from your site as published content. The Article is still available from within the Control Panel and can be <em>retrieved </em>for editing or republishing purposes. Trashed Articles are just one step from being permanently deleted but are still available until you Remove them from the Trash Manager. You should use Archive if you consider an Article important, but not current. Trash should be used when you want to delete the content entirely from your site and from future search results.  </p>', '', -2, 3, 0, 27, '2008-08-11 05:19:43', 62, '', '2008-08-11 05:19:43', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 0, '', '', 0, 5, 'robots=\nauthor='),
(41, 'Newsflash 5', 'newsflash-5', '', 'Joomla! 1.5 - ''Experience the Freedom''!. It has never been easier to create your own dynamic Web site. Manage all your content from the best CMS admin interface and in virtually any language you speak.', '', -2, 1, 0, 3, '2008-08-12 00:17:31', 62, '', '2008-08-12 00:17:31', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 4, 'robots=\nauthor='),
(42, 'Newsflash 4', 'newsflash-4', '', 'Yesterday all servers in the U.S. went out on strike in a bid to get more RAM and better CPUs. A spokes person said that the need for better RAM was due to some fool increasing the front-side bus speed. In future, buses will be told to slow down in residential motherboards.', '', -2, 1, 0, 3, '2008-08-12 00:25:50', 62, '', '2008-08-12 00:25:50', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 5, 'robots=\nauthor='),
(43, 'Example Pages and Menu Links', 'example-pages-and-menu-links', '', '<p>This page is an example of content that is <em>Uncategorized</em>; that is, it does not belong to any Section or Category. You will see there is a new Menu in the left column. It shows links to the same content presented in 4 different page layouts.</p><ul><li>Section Blog</li><li>Section Table</li><li> Blog Category</li><li>Category Table</li></ul><p>Follow the links in the <strong>Example Pages</strong> Menu to see some of the options available to you to present all the different types of content included within the default installation of Joomla!.</p><p>This includes Components and individual Articles. These links or Menu Item Types (to give them their proper name) are all controlled from within the <strong><font face="courier new,courier">Menu Manager-&gt;[menuname]-&gt;Menu Items Manager</font></strong>. </p>', '', -2, 0, 0, 0, '2008-08-12 09:26:52', 62, '', '2008-08-12 09:26:52', 62, 0, '0000-00-00 00:00:00', '2006-10-11 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, 'Uncategorized, Uncategorized, Example Pages and Menu Links', '', 0, 43, 'robots=\nauthor='),
(44, 'Joomla! Security Strike Team', 'joomla-security-strike-team', '', '<p>The Joomla! Project has assembled a top-notch team of experts to form the new Joomla! Security Strike Team. This new team will solely focus on investigating and resolving security issues. Instead of working in relative secrecy, the JSST will have a strong public-facing presence at the <a href="http://developer.joomla.org/security.html" target="_blank" title="Joomla! Security Center">Joomla! Security Center</a>.</p>', '<p>The new JSST will call the new <a href="http://developer.joomla.org/security.html" target="_blank" title="Joomla! Security Center">Joomla! Security Center</a> their home base. The Security Center provides a public presence for <a href="http://developer.joomla.org/security/news.html" target="_blank" title="Joomla! Security News">security issues</a> and a platform for the JSST to <a href="http://developer.joomla.org/security/articles-tutorials.html" target="_blank" title="Joomla! Security Articles">help the general public better understand security</a> and how it relates to Joomla!. The Security Center also offers users a clearer understanding of how security issues are handled. There''s also a <a href="http://feeds.joomla.org/JoomlaSecurityNews" target="_blank" title="Joomla! Security News Feed">news feed</a>, which provides subscribers an up-to-the-minute notification of security issues as they arise.</p>', -2, 1, 0, 1, '2007-07-07 09:54:06', 62, '', '2007-07-07 09:54:06', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(45, 'Joomla! Community Portal', 'joomla-community-portal', '', '<p>The <a href="http://community.joomla.org/" target="_blank" title="Joomla! Community Portal">Joomla! Community Portal</a> is now online. There, you will find a constant source of information about the activities of contributors powering the Joomla! Project. Learn about <a href="http://community.joomla.org/events.html" target="_blank" title="Joomla! Events">Joomla! Events</a> worldwide, and see if there is a <a href="http://community.joomla.org/user-groups.html" target="_blank" title="Joomla! User Groups">Joomla! User Group</a> nearby.</p><p>The <a href="http://magazine.joomla.org/" target="_blank" title="Joomla! Community Magazine">Joomla! Community Magazine</a> promises an interesting overview of feature articles, community accomplishments, learning topics, and project updates each month. Also, check out <a href="http://community.joomla.org/connect.html" target="_blank" title="JoomlaConnect">JoomlaConnect&#0153;</a>. This aggregated RSS feed brings together Joomla! news from all over the world in your language. Get the latest and greatest by clicking <a href="http://community.joomla.org/connect.html" target="_blank" title="JoomlaConnect">here</a>.</p>', '', -2, 1, 0, 1, '2007-07-07 09:54:06', 62, '', '2007-07-07 09:54:06', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 5, 'robots=\nauthor='),
(46, 'test', 'test', '', '<p>test</p>', '', -2, 4, 0, 25, '2010-08-16 00:45:07', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-08-16 00:45:07', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(47, 'Company Profile', 'solutionsh21profile', '', '<h4></h4>', '', 1, 5, 0, 34, '2010-08-16 01:37:48', 62, '', '2013-03-18 11:11:46', 62, 0, '0000-00-00 00:00:00', '2010-08-16 01:37:48', '0000-00-00 00:00:00', '', '', 'show_title=0\nlink_titles=0\nshow_intro=\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_vote=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=en-GB\nkeyref=\nreadmore=', 4, 0, 1, '', '', 0, 4240, 'robots=\nauthor=');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_content_frontpage`
--

INSERT INTO `jos_content_frontpage` (`content_id`, `ordering`) VALUES
(45, 4),
(6, 5),
(44, 6),
(5, 7),
(9, 8),
(30, 9),
(16, 10),
(46, 3),
(33, 2),
(47, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_rating`
--

CREATE TABLE IF NOT EXISTS `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `jos_core_acl_aro`
--

INSERT INTO `jos_core_acl_aro` (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', '62', 0, 'Administrator', 0),
(11, 'users', '63', 0, 'mrawesome', 0),
(12, 'users', '64', 0, 'keinelust', 0),
(13, 'users', '65', 0, 'Jared Horseman', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_groups`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `jos_core_acl_aro_groups`
--

INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES
(17, 0, 'ROOT', 1, 22, 'ROOT'),
(28, 17, 'USERS', 2, 21, 'USERS'),
(29, 28, 'Public Frontend', 3, 12, 'Public Frontend'),
(18, 29, 'Registered', 4, 11, 'Registered'),
(19, 18, 'Author', 5, 10, 'Author'),
(20, 19, 'Editor', 6, 9, 'Editor'),
(21, 20, 'Publisher', 7, 8, 'Publisher'),
(30, 28, 'Public Backend', 13, 20, 'Public Backend'),
(23, 30, 'Manager', 14, 19, 'Manager'),
(24, 23, 'Administrator', 15, 18, 'Administrator'),
(25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_sections`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `jos_core_acl_aro_sections`
--

INSERT INTO `jos_core_acl_aro_sections` (`id`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_groups_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_groups_aro_map`
--

INSERT INTO `jos_core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`) VALUES
(18, '', 11),
(18, '', 12),
(18, '', 13),
(25, '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_items`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_groups`
--

CREATE TABLE IF NOT EXISTS `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_groups`
--

INSERT INTO `jos_groups` (`id`, `name`) VALUES
(0, 'Public'),
(1, 'Registered'),
(2, 'Special');

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu`
--

CREATE TABLE IF NOT EXISTS `jos_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `jos_menu`
--

INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES
(18, 'topmenu', 'Contact Us', 'contact-us', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 0, 7, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'show_contact_list=1\nshow_category_crumb=0\ncontact_icons=2\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=0\nshow_email=1\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nallow_vcard=1\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=Contact Us\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(28, 'topmenu', 'Home', 'solutions-h21', 'index.php?option=com_content&view=article&id=25', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=0\nshow_title=\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 1),
(29, 'topmenu', 'Company Profile', 'solutions-h21-profile', 'index.php?option=com_content&view=article&id=47', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=0\nfeed_summary=0\npage_title=Company Profile\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(30, 'topmenu', 'The Community', 'the-community', 'index.php?option=com_content&view=article&id=27', 'component', -2, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(53, 'topmenu', 'Products', 'solutions-h21-products', 'index.php?option=com_virtuemart', 'component', 1, 0, 34, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'product_id=\ncategory_id=\nflypage=\npage=\npage_title=Solutions H-21''s Product\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu_types`
--

CREATE TABLE IF NOT EXISTS `jos_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jos_menu_types`
--

INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(3, 'topmenu', 'Top Menu', 'Top level navigation');

-- --------------------------------------------------------

--
-- Table structure for table `jos_messages`
--

CREATE TABLE IF NOT EXISTS `jos_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_migration_backlinks`
--

CREATE TABLE IF NOT EXISTS `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_modules`
--

CREATE TABLE IF NOT EXISTS `jos_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `jos_modules`
--

INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES
(2, 'Login', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, ''),
(3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, ''),
(4, 'Recent added Articles', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, ''),
(5, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, ''),
(6, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, ''),
(7, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, ''),
(8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, ''),
(9, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, ''),
(10, 'Logged in Users', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, ''),
(11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, ''),
(12, 'Admin Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, ''),
(13, 'Admin SubMenu', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, ''),
(14, 'User Status', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, ''),
(15, 'Title', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, ''),
(16, 'Polls', '', 1, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_poll', 0, 0, 1, 'id=14\ncache=1', 0, 0, ''),
(18, 'Login Form', '', 8, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, 'greeting=1\nname=0', 1, 0, ''),
(19, 'Latest News', '', 4, 'user1', 0, '0000-00-00 00:00:00', 1, 'mod_latestnews', 0, 0, 1, 'cache=1', 1, 0, ''),
(20, 'Statistics', '', 6, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_stats', 0, 0, 1, 'serverinfo=1\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=', 0, 0, ''),
(21, 'Who''s Online', '', 1, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_whosonline', 0, 0, 1, 'online=1\nusers=1\nmoduleclass_sfx=', 0, 0, ''),
(22, 'Popular', '', 6, 'user2', 0, '0000-00-00 00:00:00', 1, 'mod_mostread', 0, 0, 1, 'cache=1', 0, 0, ''),
(23, 'Archive', '', 9, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_archive', 0, 0, 1, 'cache=1', 1, 0, ''),
(24, 'Sections', '', 10, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_sections', 0, 0, 1, 'cache=1', 1, 0, ''),
(25, 'Newsflash', '', 1, 'top', 0, '0000-00-00 00:00:00', 1, 'mod_newsflash', 0, 0, 1, 'catid=3\r\nstyle=random\r\nitems=\r\nmoduleclass_sfx=', 0, 0, ''),
(26, 'Related Items', '', 11, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_related_items', 0, 0, 1, '', 0, 0, ''),
(27, 'Search', '', 1, 'user4', 0, '0000-00-00 00:00:00', 1, 'mod_search', 0, 0, 0, 'cache=1', 0, 0, ''),
(28, 'Random Image', '', 9, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_random_image', 0, 0, 1, '', 0, 0, ''),
(29, 'Top Menu', '', 1, 'topmenu', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'menutype=topmenu\nmenu_style=list_flat\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=-nav\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images_link=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=-1\nindent_image2=-1\nindent_image3=-1\nindent_image4=-1\nindent_image5=-1\nindent_image6=-1\nspacer=\nend_spacer=\n\n', 1, 0, ''),
(30, 'Banners', '', 1, 'footer', 62, '2010-08-29 14:02:53', 1, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=1\ncatid=33\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n', 1, 0, ''),
(32, 'Wrapper', '', 12, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_wrapper', 0, 0, 1, '', 0, 0, ''),
(33, 'Footer', '', 2, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 0, 'cache=1\n\n', 1, 0, ''),
(34, 'Feed Display', '', 13, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_feed', 0, 0, 1, '', 1, 0, ''),
(35, 'Breadcrumbs', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 0, 0, 1, 'moduleclass_sfx=\ncache=0\nshowHome=1\nhomeText=Home\nshowComponent=1\nseparator=\n\n', 1, 0, ''),
(36, 'Syndication', '', 3, 'syndicate', 0, '0000-00-00 00:00:00', 1, 'mod_syndicate', 0, 0, 0, '', 1, 0, ''),
(38, 'Advertisement', '', 3, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 1, 'count=4\r\nrandomise=0\r\ncid=0\r\ncatid=14\r\nheader_text=Featured Links:\r\nfooter_text=<a href="http://www.joomla.org">Ads by Joomla!</a>\r\nmoduleclass_sfx=_text\r\ncache=0\r\n\r\n', 0, 0, ''),
(41, 'Welcome to Joomla!', '<div style="padding: 5px">  <p>   Congratulations on choosing Joomla! as your content management system. To   help you get started, check out these excellent resources for securing your   server and pointers to documentation and other helpful resources. </p> <p>   <strong>Security</strong><br /> </p> <p>   On the Internet, security is always a concern. For that reason, you are   encouraged to subscribe to the   <a href="http://feedburner.google.com/fb/a/mailverify?uri=JoomlaSecurityNews" target="_blank">Joomla!   Security Announcements</a> for the latest information on new Joomla! releases,   emailed to you automatically. </p> <p>   If this is one of your first Web sites, security considerations may   seem complicated and intimidating. There are three simple steps that go a long   way towards securing a Web site: (1) regular backups; (2) prompt updates to the   <a href="http://www.joomla.org/download.html" target="_blank">latest Joomla! release;</a> and (3) a <a href="http://docs.joomla.org/Security_Checklist_2_-_Hosting_and_Server_Setup" target="_blank" title="good Web host">good Web host</a>. There are many other important security considerations that you can learn about by reading the <a href="http://docs.joomla.org/Category:Security_Checklist" target="_blank" title="Joomla! Security Checklist">Joomla! Security Checklist</a>. </p> <p>If you believe your Web site was attacked, or you think you have discovered a security issue in Joomla!, please do not post it in the Joomla! forums. Publishing this information could put other Web sites at risk. Instead, report possible security vulnerabilities to the <a href="http://developer.joomla.org/security/contact-the-team.html" target="_blank" title="Joomla! Security Task Force">Joomla! Security Task Force</a>.</p><p><strong>Learning Joomla!</strong> </p> <p>   A good place to start learning Joomla! is the   "<a href="http://docs.joomla.org/beginners" target="_blank">Absolute Beginner''s   Guide to Joomla!.</a>" There, you will find a Quick Start to Joomla!   <a href="http://help.joomla.org/ghop/feb2008/task048/joomla_15_quickstart.pdf" target="_blank">guide</a>   and <a href="http://help.joomla.org/ghop/feb2008/task167/index.html" target="_blank">video</a>,   amongst many other tutorials. The   <a href="http://community.joomla.org/magazine/view-all-issues.html" target="_blank">Joomla!   Community Magazine</a> also has   <a href="http://community.joomla.org/magazine/article/522-introductory-learning-joomla-using-sample-data.html" target="_blank">articles   for new learners</a> and experienced users, alike. A great place to look for   answers is the   <a href="http://docs.joomla.org/Category:FAQ" target="_blank">Frequently Asked   Questions (FAQ)</a>. If you are stuck on a particular screen in the   Administrator (which is where you are now), try clicking the Help toolbar   button to get assistance specific to that page. </p> <p>   If you still have questions, please feel free to use the   <a href="http://forum.joomla.org/" target="_blank">Joomla! Forums.</a> The forums   are an incredibly valuable resource for all levels of Joomla! users. Before   you post a question, though, use the forum search (located at the top of each   forum page) to see if the question has been asked and answered. </p> <p>   <strong>Getting Involved</strong> </p> <p>   <a name="twjs" title="twjs"></a> If you want to help make Joomla! better, consider getting   involved. There are   <a href="http://www.joomla.org/about-joomla/contribute-to-joomla.html" target="_blank">many ways   you can make a positive difference.</a> Have fun using Joomla!.</p></div>', 0, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 2, 1, 'moduleclass_sfx=\n\n', 1, 1, ''),
(42, 'Joomla! Security Newsfeed', '', 6, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_feed', 0, 0, 1, 'cache=1\ncache_time=15\nmoduleclass_sfx=\nrssurl=http://feeds.joomla.org/JoomlaSecurityNews\nrssrtl=0\nrsstitle=1\nrssdesc=0\nrssimage=1\nrssitems=1\nrssitemdesc=1\nword_count=0\n\n', 0, 1, ''),
(43, 'VirtueMart Shopping Cart', '', 0, 'cart', 0, '0000-00-00 00:00:00', 1, 'mod_virtuemart_cart', 0, 0, 0, 'moduleclass_sfx=h21cart\nvmCartDirection=1\nvmEnableGreyBox=0\n\n', 0, 0, ''),
(44, 'VirtueMart Featured Products', '', 0, 'vmfeatured', 0, '0000-00-00 00:00:00', 1, 'mod_virtuemart_featureprod', 0, 0, 0, 'max_items=21\nshow_price=0\nshow_addtocart=0\ndisplay_style=table\nproducts_per_row=3\ncategory_id=\ncache=0\nmoduleclass_sfx=\nclass_sfx=\n\n', 0, 0, ''),
(45, 'VirtueMart Product Categories', '', 0, 'vmcategories', 0, '0000-00-00 00:00:00', 1, 'mod_product_categories', 0, 0, 1, 'menutype=links\njscook_type=tree\njscookMenu_style=ThemeOffice\nmenu_orientation=vbr\njscookTree_style=ThemeXP\nroot_label=Shop\ncache=0\nmoduleclass_sfx=\nclass_sfx=\n\n', 0, 0, ''),
(46, 'VirtueMart Search', '', 17, 'vm_search', 62, '2010-08-29 09:43:15', 1, 'mod_virtuemart_search', 0, 0, 1, 'moduleclass_sfx=\nclass_sfx=\n\n', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_modules_menu`
--

CREATE TABLE IF NOT EXISTS `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_modules_menu`
--

INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES
(16, 1),
(18, 1),
(19, 1),
(19, 2),
(19, 4),
(19, 27),
(19, 36),
(21, 1),
(22, 1),
(22, 2),
(22, 4),
(22, 27),
(22, 36),
(25, 0),
(27, 0),
(29, 0),
(30, 0),
(31, 1),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(38, 1),
(39, 43),
(39, 44),
(39, 45),
(39, 46),
(39, 47),
(40, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `jos_newsfeeds`
--

INSERT INTO `jos_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`) VALUES
(4, 1, 'Joomla! Announcements', 'joomla-official-news', 'http://feeds.joomla.org/JoomlaAnnouncements', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(4, 2, 'Joomla! Core Team Blog', 'joomla-core-team-blog', 'http://feeds.joomla.org/JoomlaCommunityCoreTeamBlog', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(4, 3, 'Joomla! Community Magazine', 'joomla-community-magazine', 'http://feeds.joomla.org/JoomlaMagazine', '', 1, 20, 3600, 0, '0000-00-00 00:00:00', 3, 0),
(4, 4, 'Joomla! Developer News', 'joomla-developer-news', 'http://feeds.joomla.org/JoomlaDeveloper', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(4, 5, 'Joomla! Security News', 'joomla-security-news', 'http://feeds.joomla.org/JoomlaSecurityNews', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(5, 6, 'Free Software Foundation Blogs', 'free-software-foundation-blogs', 'http://www.fsf.org/blogs/RSS', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(5, 7, 'Free Software Foundation', 'free-software-foundation', 'http://www.fsf.org/news/RSS', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 3, 0),
(5, 8, 'Software Freedom Law Center Blog', 'software-freedom-law-center-blog', 'http://www.softwarefreedom.org/feeds/blog/', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(5, 9, 'Software Freedom Law Center News', 'software-freedom-law-center', 'http://www.softwarefreedom.org/feeds/news/', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(5, 10, 'Open Source Initiative Blog', 'open-source-initiative-blog', 'http://www.opensource.org/blog/feed', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(6, 11, 'PHP News and Announcements', 'php-news-and-announcements', 'http://www.php.net/feed.atom', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(6, 12, 'Planet MySQL', 'planet-mysql', 'http://www.planetmysql.org/rss20.xml', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(6, 13, 'Linux Foundation Announcements', 'linux-foundation-announcements', 'http://www.linuxfoundation.org/press/rss20.xml', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 3, 0),
(6, 14, 'Mootools Blog', 'mootools-blog', 'http://feeds.feedburner.com/mootools-blog', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_plugins`
--

CREATE TABLE IF NOT EXISTS `jos_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `jos_plugins`
--

INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),
(3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n'),
(6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),
(7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),
(13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n'),
(15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n'),
(17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n'),
(18, 'Editor - No Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'Editor - TinyMCE', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'mode=advanced\nskin=0\ncompressed=0\ncleanup_startup=0\ncleanup_save=2\nentity_encoding=raw\nlang_mode=0\nlang_code=en\ntext_direction=ltr\ncontent_css=1\ncontent_css_custom=\nrelative_urls=1\nnewlines=0\ninvalid_elements=applet\nextended_elements=\ntoolbar=top\ntoolbar_align=left\nhtml_height=550\nhtml_width=750\nelement_path=1\nfonts=1\npaste=1\nsearchreplace=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\ncolors=1\ntable=1\nsmilies=1\nmedia=1\nhr=1\ndirectionality=1\nfullscreen=1\nstyle=1\nlayer=1\nxhtmlxtras=1\nvisualchars=1\nnonbreaking=1\ntemplate=0\nadvimage=1\nadvlink=1\nautosave=1\ncontextmenu=1\ninlinepopups=1\nsafari=1\ncustom_plugin=\ncustom_button=\n\n'),
(20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n'),
(27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n'),
(29, 'System - Legacy', 'legacy', 'system', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n'),
(30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n'),
(31, 'System - Log', 'log', 'system', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(34, 'System - Mootools Upgrade', 'mtupgrade', 'system', 0, 8, 0, 1, 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_polls`
--

CREATE TABLE IF NOT EXISTS `jos_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `jos_polls`
--

INSERT INTO `jos_polls` (`id`, `title`, `alias`, `voters`, `checked_out`, `checked_out_time`, `published`, `access`, `lag`) VALUES
(14, 'Joomla! is used for?', 'joomla-is-used-for', 11, 0, '0000-00-00 00:00:00', 1, 0, 86400);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_data`
--

CREATE TABLE IF NOT EXISTS `jos_poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `jos_poll_data`
--

INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES
(1, 14, 'Community Sites', 2),
(2, 14, 'Public Brand Sites', 3),
(3, 14, 'eCommerce', 1),
(4, 14, 'Blogs', 0),
(5, 14, 'Intranets', 0),
(6, 14, 'Photo and Media Sites', 2),
(7, 14, 'All of the Above!', 3),
(8, 14, '', 0),
(9, 14, '', 0),
(10, 14, '', 0),
(11, 14, '', 0),
(12, 14, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_date`
--

CREATE TABLE IF NOT EXISTS `jos_poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `jos_poll_date`
--

INSERT INTO `jos_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES
(1, '2006-10-09 13:01:58', 1, 14),
(2, '2006-10-10 15:19:43', 7, 14),
(3, '2006-10-11 11:08:16', 7, 14),
(4, '2006-10-11 15:02:26', 2, 14),
(5, '2006-10-11 15:43:03', 7, 14),
(6, '2006-10-11 15:43:38', 7, 14),
(7, '2006-10-12 00:51:13', 2, 14),
(8, '2007-05-10 19:12:29', 3, 14),
(9, '2007-05-14 14:18:00', 6, 14),
(10, '2007-06-10 15:20:29', 6, 14),
(11, '2007-07-03 12:37:53', 2, 14);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_menu`
--

CREATE TABLE IF NOT EXISTS `jos_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_sections`
--

CREATE TABLE IF NOT EXISTS `jos_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `jos_sections`
--

INSERT INTO `jos_sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES
(1, 'News', '', 'news', 'articles.jpg', 'content', 'right', 'Select a news topic from the list below, then select a news article to read.', 1, 0, '0000-00-00 00:00:00', 3, 0, 2, ''),
(3, 'FAQs', '', 'faqs', 'key.jpg', 'content', 'left', 'From the list below choose one of our FAQs topics, then select an FAQ to read. If you have a question which is not in this section, please contact us.', 1, 0, '0000-00-00 00:00:00', 5, 0, 23, ''),
(4, 'About Joomla!', '', 'about-joomla', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 2, 0, 15, ''),
(5, 'solutionsh21', '', 'solutionsh21', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 6, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_session`
--

CREATE TABLE IF NOT EXISTS `jos_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_session`
--

INSERT INTO `jos_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`) VALUES
('', '1476356861', '62744f42291c46f394e5eff6f7a45018', 1, 0, '', 0, 0, 'sNZlH9BAoykm_E3gsZJZgphl9-XjC4vmCaPZ2C201I-sTU14OV-zLUhk6sOkQ8tj4A8RiXca3Zh5-IEbf2q8DBCKOgv-IdSPZ2Oqv5G6qFEJ_idXxpzV5fWyYl7IpyNv4lrFH-3mwKC2f0NIEyh9TuJzMJqJz_gB44dGsnwyE8CfXBUBzxx_YYrp42pKNxZkhfu07z4112a2vZK4LdXW3dRqj7eHv6RzwdO1SH__pWcoBRdmMy80QP_n4TlPkNvA8ewaDUzufDHBeNk-8r3y6ScKvT3LlA6pe_q0VlguIz0OYo7xHSBWxJFNo389jc91TriS9JB8U-NE_23IiXvh7aPz87x2P3naPX4_RDfT08rPw5sYNS6lHR_iWO4gacOaHHYKPn6s11rBZ3ybDs-BqMS9NcmcjTi0cg_-dDkjcjwcy9noq1nwjrAafTUN3u7HR7cNzNaHbfGuRRpiasucv-EJe3ffM1_L6ad1FADmQtFWGm-_MF2Z4L-IcQAB0akpfwsWvpBKu0U05h1Q9LflIOo5xmJ6ilMF4uCWhYlGtZxur3fubyl_ix0ul3dTbxjE9BGf_dUrdvgXJw_6Y30BFtAL_syAEWsQH6ym45LqjasR92bspQDV_EN2D9xovgNmuMSsRrKJt_5oLlhZ-QoRXoGhQ_2-lg-cNVt54W9Xni7ZkNKlygTnKwkM_CicupffAABD2PXgZjCQbBssaetC6ykJW6SbBBe8VgF-V6VxEttGkcAhrjFn5u7hciHgTWrpj4itt7EMGQETTEEaKcrnp48h-UNk6bSXYgOF7yOf778jat91OiPK2X4kdcG7UvVVBT3j24V8_P5eDeyk2LZ7t8VSFpB_aYd13tJmh_zZN-O0pZvxQy75cvv8sHNhkeezVX906hXm4VPhxanULxAHWmHo7XwPBwz54bUR9B1swoqnPScISj58-SC77He9ZMpK_Y-WyKxhnvy7yWHQCcDitIWCFQAxomilO32uFT-owII3wvehsXffDb6SaQAmlACBXJIqG9lUvDJu8wHEln6EaWe9Ki2dMhReLNLY_RhC7e9WJ2cDUEtWdJGcdiaPjxDNvdLDu1kXdcJuNusVohI8qCEoIFW8CryGNHNogilKj6ukk9FT4h4XNjUD6VOk8LtKTrVCNRf8p2YpB5V-5FUB2p3jK9Q6cNdRsN8NTvoUZSINBcClrnSYG2ZxM49bWMzUsmxnxJYIQIC3hq1dFA-HSg7tX2MS9L5ejBcM_0BEDIlyWlwVkX1UEU0-uLY5NqxCNhw2UYN6kKbzy0SlCu2ZCTKcThGHK9TERBAD6zuMOL_dT6RpkwiJNizTbHDG5yrvLBiflc5MSMZJwFj6E5XuM-BMI0LZn9P41rz5nqTJHXcznO1YqFfgR40qoLF4y07ifr2l9HoLL3tJOJVIGxLv1DALCcD1Dpvsq2GILv23nTwsngbhzMVD9wZ_19WDh5JM_XZ5zuCWf_PjIatsKDVDiDcXi2iH1e8nDTimxMXXWVyM3GozbXL0WBrXQGczCfx1-tBQ5zsjWSmjQcLPO79OfDoeTbxT5Gu-smWdo4MMutRrxphPCW0lVUITvJ2W5HWrn99A_UShC-4C267lBTjhbydEmCDJ0KSiCI-kNUnRQDo_dxd6nwbzwIgQemu7GtLqnXiLuWT51HvN9BSvnYN0luaxbiyDS9fqOvfZeOHsDUD-rDX6twAnE17Ys0STzTVCGr8SsMwc902j1_3gpE29YphvsGqDQ5qmFntxmviYcpT3HUgNTe_fxCBPymLxzgPFsCK7p2PTG2p0uiOZ0SEwdIdGlxALqPpLrS8qynMBCwKazb7-gJChs0PJ9w9XRPxn2KMNapHxoOiQRAZ7mOLcPmBKU0FPRJVvccEj3ivx4GCIIZEOIxWOVcY3L3pvH0abxXT4Vo3k7gXatpQTxLQu_lzFgedD7lDwuFEv2xEc4XKwz5JLvpHm2Nlk4P9ydcU5fLmlSOY4y7oJIF73ksprT0MIUneYkvRkEGh1huijbnXGkcfKyHwptXq-27p5Tl9eyjhYB1rhJHRKTij2E0fjaXMRe1BKL3CiK3H8Xrcxk3rr7LPVeKLLuMaYTIIvZLj8Z2MqiQKm76_qgTjn2MUUUba8yOxUkUhJaI3uT4qTdhYf-pGVl57TbiNxXGwWl0bdbSdDTHI1XLgEvWA3AmhxNmzVevRv8dWxZ9O2cuYh2u7G_ALDVWC1t2lImbXdXmzlJKAkvAIvnTQ7jVNzCS8EOgJ_8L-FRMjg_Z2b6uFykeeRreuIInryBpyXUGggEGcBeJ2cs0qeOVVcESAnQQjxwkh1PmvtccA6suHuNwzM7qDx3mEScggf-Nmd0twaOCt8lPAvK-QxNmwaPe2_PnqSYgGozB-fbdKgScFhT81e2tncQRwIjtDK8vIRuzNRb4psN9tDZRXQMA1FjS0ieh00dqY3p59T107ARB4mZFFK7i-Xlpw5v-Twe5hrOkbblJ5tBuImVNiSkybiWSV0XK6q0Nt5ZSJD10_RJIH1LSPMzIeSJRKfIMESVmPSFGwa4XmQ4gPtkdz9rWc7FhTcUgIKhrmoGa_Uq8RHG57SCW5Tg1IAJY_y_Z2DqIfLqT5VtyIKUGddyrkpIfW_J7KfqoiSxNor8tVaY6jO_GC5aJCQUAP-Vr_s7NdA1OUo4dWLMjR2BgqllTIWKsaRZQOWALXh_6jbAJWB5ghidHyXBn-V95bVy43yaY4H3TUbimghTrvY33GdUkGXd9asTd7zz147PFfIbaHtYwffnQ8yvfOwC_17rVgIVrDXVl4kVxalXsaj6dMZYoE4FmJ0lBHSF3TKgH7qtjeepDB71FSOz3JkxkBHv4tWkN3x067-sZvYVnerLdWiZNcKYuTPyDrv5WeFRM5CpqsPLXtFvX0GEpg7lBM.');

-- --------------------------------------------------------

--
-- Table structure for table `jos_stats_agents`
--

CREATE TABLE IF NOT EXISTS `jos_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_templates_menu`
--

CREATE TABLE IF NOT EXISTS `jos_templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_templates_menu`
--

INSERT INTO `jos_templates_menu` (`template`, `menuid`, `client_id`) VALUES
('rhuk_milkyway', 0, 0),
('khepri', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_users`
--

CREATE TABLE IF NOT EXISTS `jos_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `jos_users`
--

INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(62, 'Administrator', 'admin', 'dingkyduo@yahoo.com', '99012862977ee1a708cdf32247d4085d:W3SnyIuS1okeDCgXiEBUqCyBuoERGQgH', 'Super Administrator', 0, 1, 25, '2010-08-15 16:50:59', '2016-10-12 05:36:15', '', ''),
(63, 'mrawesome', 'mrawesome', 'NtS6cmCc@discoparanoia.in', 'a58f25509598a6fd473dd51f2d0c52d8:pc6T5uAHutU3fTbP3zg7HARqwfXiSdI2', 'Registered', 1, 0, 18, '2014-01-15 01:45:47', '0000-00-00 00:00:00', 'ef37eddf5b3b9dc854374643dbc37c13', '\n'),
(64, 'keinelust', 'keinelust', 'NbEN95Ve@discoparanoia.in', '2a488a9c18af755d53c6cca063424e2e:9RbqcGGxkh4wDW1yJis2IBE4Aua9x3AW', 'Registered', 0, 0, 18, '2014-01-15 13:33:20', '2014-01-16 20:13:02', '', '\n'),
(65, 'Jared Horseman', 'cinembanosiaz', 'givibi@poxiv.pl', '42cfbab13669fa2bbc63c7f78595be22:wKSMOk5pk4c9v8a29bqxvyQDT9U1JbSv', 'Registered', 0, 0, 18, '2015-06-18 15:42:17', '2015-06-24 21:30:17', '', '\n');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_auth_group`
--

CREATE TABLE IF NOT EXISTS `jos_vm_auth_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(128) DEFAULT NULL,
  `group_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds all the user groups' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jos_vm_auth_group`
--

INSERT INTO `jos_vm_auth_group` (`group_id`, `group_name`, `group_level`) VALUES
(1, 'admin', 0),
(2, 'storeadmin', 250),
(3, 'shopper', 500),
(4, 'demo', 750);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_auth_user_group`
--

CREATE TABLE IF NOT EXISTS `jos_vm_auth_user_group` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps the user to user groups';

--
-- Dumping data for table `jos_vm_auth_user_group`
--

INSERT INTO `jos_vm_auth_user_group` (`user_id`, `group_id`) VALUES
(62, 2);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_auth_user_vendor`
--

CREATE TABLE IF NOT EXISTS `jos_vm_auth_user_vendor` (
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  KEY `idx_auth_user_vendor_user_id` (`user_id`),
  KEY `idx_auth_user_vendor_vendor_id` (`vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps a user to a vendor';

--
-- Dumping data for table `jos_vm_auth_user_vendor`
--

INSERT INTO `jos_vm_auth_user_vendor` (`user_id`, `vendor_id`) VALUES
(62, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_cart`
--

CREATE TABLE IF NOT EXISTS `jos_vm_cart` (
  `user_id` int(11) NOT NULL,
  `cart_content` text NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores the cart contents of a user';

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_category`
--

CREATE TABLE IF NOT EXISTS `jos_vm_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `category_name` varchar(128) NOT NULL DEFAULT '',
  `category_description` text,
  `category_thumb_image` varchar(255) DEFAULT NULL,
  `category_full_image` varchar(255) DEFAULT NULL,
  `category_publish` char(1) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `category_browsepage` varchar(255) NOT NULL DEFAULT 'browse_1',
  `products_per_row` tinyint(2) NOT NULL DEFAULT '1',
  `category_flypage` varchar(255) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `xOrder` int(11) NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `idx_category_vendor_id` (`vendor_id`),
  KEY `idx_category_name` (`category_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Product Categories are stored here' AUTO_INCREMENT=130 ;

--
-- Dumping data for table `jos_vm_category`
--

INSERT INTO `jos_vm_category` (`category_id`, `vendor_id`, `category_name`, `category_description`, `category_thumb_image`, `category_full_image`, `category_publish`, `cdate`, `mdate`, `category_browsepage`, `products_per_row`, `category_flypage`, `list_order`, `xOrder`) VALUES
(81, 1, 'Patch Cable Cat 5e', '', 'resized/Patch_Cable_Cat__4c970684c79fb_90x90.jpg', 'Patch_Cable_Cat__4c970684d2ca0.jpg', 'Y', 1284966020, 1284966020, 'managed', 3, 'flypage.tpl', 1, 1),
(82, 1, 'Patch Cable Cat 6', '', 'resized/Patch_Cable_Cat6_4c970703423c0_90x90.jpg', 'Patch_Cable_Cat6_4c97070351503.jpg', 'Y', 1284966147, 1284966187, 'managed', 3, 'flypage.tpl', 2, 2),
(33, 1, 'USB Cables', '<p>USB ( Universal Serial Bus ) 100 % plug play, USB allows the connection of up to 127 devices to a single PC.</p>', 'resized/USB_CABLE_4c96d2a56aa25_90x90.jpg', 'USB_CABLE_4c96d2a580ba4.jpg', 'Y', 1179232645, 1284966944, 'browse_1', 1, 'flypage-ask.tpl', 1, 1),
(72, 1, 'USB Cable 2.0', '', 'resized/USB_Cable_2.0_4c96d484cf4ee_90x90.jpg', 'USB_Cable_2.0_4c96d484d9b62.jpg', 'Y', 1284953220, 1284953220, 'managed', 3, 'flypage.tpl', 2, 2),
(34, 1, 'HDMI Cable', '', 'resized/HDMI_Cable_4c96db072570b_90x90.jpg', 'HDMI_Cable_4c96db072f626.jpg', 'Y', 1179232716, 1284954887, 'browse_1', 1, 'flypage-ask.tpl', 1, 2),
(35, 1, 'Serial Cable', '', 'resized/RS232_Serial_Cab_4c96e4cfebfef_90x90.jpg', 'RS232_Serial_Cab_4c96e4d00373d.jpg', 'Y', 1179232757, 1284957407, 'browse_1', 1, 'flypage-ask.tpl', 3, 10),
(36, 1, 'Firewire Cable', 'Firewire Cable', '32cfc5b6f3d7d3bd60106b9f306a4b00.jpg', '9653cd51240a9b502d2489307e9170e9.jpg', 'Y', 1179233051, 1179815726, 'browse_1', 1, 'flypage-ask.tpl', 4, 5),
(37, 1, 'Power Cable', '', 'bb578ae4c1f3e38e4aeda0bd2a535919.jpg', 'ef846b2aed8635bf3fd400759d108b3b.jpg', 'Y', 1179233088, 1285816325, 'browse_1', 1, 'flypage-ask.tpl', 5, 11),
(38, 1, 'External Power Cables', '', '402a75d89d1c3e4d956f78e700959b82.jpg', 'f56f129cd258c59335a6e7f813c3e503.jpg', 'Y', 1179233132, 1200908270, 'browse_1', 1, 'flypage-ask.tpl', 1, 1),
(65, 1, 'Network Tools', '', 'c2b85f2e1ef1aad704e7725c4845d1b7.jpg', '8c86f92d52f7bced88a06e6acec518c7.jpg', 'Y', 1200036493, 1216284639, '', 0, 'flypage-ask.tpl', 17, 8),
(39, 1, 'Internal  Power Cables', '', 'b9b240d9ddc0d05fed7bdf0172367c7e.jpg', '500eaaf1afa48fa6bff75478a000f1a1.jpg', 'Y', 1179233239, 1297493538, 'browse_1', 1, 'flypage-ask.tpl', 2, 2),
(40, 1, 'LAN Cables', '', 'bfc202847d5809e1dce8681240a57e84.jpg', '914554eb9dff0c2344bbcabba9ab74f1.jpg', 'Y', 1179233872, 1284965667, 'browse_1', 1, 'flypage-ask.tpl', 6, 9),
(44, 1, 'UTP and STP by roll', '', '', '', 'Y', 1179234518, 1179234868, 'browse_1', 1, 'flypage-ask.tpl', 2, 2),
(43, 1, 'Patch Cable', 'Patch Cable molded Cat. 5e and Cat. 6 stranded cable ETL, CSA and UL Verified cable', '', '', 'Y', 1179234370, 1179234370, 'browse_1', 1, 'flypage-ask.tpl', 1, 1),
(45, 1, 'Various Cables', 'Various Cables', 'c7c713342eca403b85a174b9fbfb7501.jpg', '4fd7ba2e0e5da40e586799cf46ab791f.jpg', 'Y', 1179234670, 1179817302, 'browse_1', 1, 'flypage-ask.tpl', 8, 13),
(50, 1, 'PVC Molded Printer Cable', '', '', '', 'Y', 1179726049, 1319004194, 'managed', 0, 'flypage-ask.tpl', 1, 2),
(52, 1, 'Modem Cable', '', 'resized/Modem_Cable_4c985ee07f6fe_90x90.jpg', 'Modem_Cable_4c985ee090397.jpg', 'Y', 1179726117, 1286247235, 'managed', 0, 'flypage-ask.tpl', 2, 1),
(53, 1, 'SCSI  CABLE', 'SCSI  CABLE', 'aaa5b440d8b091a8920e627aaca191d8.jpg', '374638d9f575f64ea2b93fbc2e59ecaa.jpg', 'Y', 1179726148, 1179816227, '', 0, 'flypage-ask.tpl', 9, 11),
(54, 1, 'SCSI III', '', '', '', 'Y', 1179726174, 1179726174, '', 0, 'flypage-ask.tpl', 1, 1),
(55, 1, 'Very High Density SCSI Cables', '', '', '', 'Y', 1179726198, 1179726198, '', 0, 'flypage-ask.tpl', 2, 2),
(56, 1, 'Flat Cables', '<p>INTERNAL CABLES</p>', 'e73623281bb48563b1586fdf57ef2ef8.jpg', '9817837f5ad121e40fcf5783011bc64f.jpg', 'Y', 1179726219, 1284966903, 'managed', 0, 'flypage-ask.tpl', 10, 6),
(57, 1, 'Notebook Accessories', '', 'resized/Notebook_Accesso_4c96d8cc93775_90x90.jpg', 'Notebook_Accesso_4c96d8cc9cfbb.jpg', 'Y', 1179726246, 1335237516, 'managed', 0, 'flypage-ask.tpl', 1, 15),
(58, 1, 'USB Peripherals', '3 C Products USB Series', 'cdf83394b2e6def2fac79411fa101e46.jpg', '1c32b68a11b455c6e487732c369fee49.jpg', 'Y', 1179726345, 1335237575, 'managed', 0, 'flypage-ask.tpl', 2, 3),
(69, 1, 'Headsets & Earphones', '', '750c24ccaa78a0ed97da1d87a306d501.jpg', '324944cd874dbdea9b050aeefd159019.jpg', 'Y', 1259807127, 1284956478, 'managed', 0, 'flypage-ask.tpl', 1, 5),
(60, 1, 'Wireless Devices', 'Wireless Devices', '806d6cf7c0e1a31532368421141d2864.jpg', 'b485354a6c0c92977bfdad55a87b758e.jpg', 'Y', 1179726429, 1179817971, '', 0, 'flypage-ask.tpl', 14, 14),
(61, 1, 'Video Devices', 'VGA and KVM Switches', '097c6d5ddd574f28cd8abcc3aad9d09e.jpg', 'e7204f5056e2d6366d145172bd52caaf.jpg', 'Y', 1179726470, 1285819264, 'managed', 0, 'flypage-ask.tpl', 15, 16),
(62, 1, 'I pod series', '', 'ac1b9a13fe5ef7fc1c074f7904aa53ab.jpg', '3235019b930ad5cf8324202057069d66.jpg', 'Y', 1179726519, 1284956360, 'managed', 0, 'flypage-ask.tpl', 1, 1),
(67, 1, 'Desktop Accessories', '', '0dcf35c2aeedb73b179917749b481ea4.jpg', 'c44dc59fea65a39d75b6e5dfe225bc57.jpg', 'Y', 1200559326, 1335237647, 'managed', 0, 'flypage-ask.tpl', 3, 15),
(68, 1, 'Expansion Cards', '', '8a31d0323d6df38de12f3516c3ac8dc9.jpg', '29ab5902e5d64b9bccb2006e3d63f5e0.jpg', 'Y', 1216282365, 1424419098, 'managed', 0, 'flypage-ask.tpl', 7, 2),
(70, 1, 'NB Cooler', '', 'resized/Cooler_Pad_4c96d86e69b88_90x90.jpg', 'Cooler_Pad_4c96d86ea30f1.jpg', 'Y', 1260937672, 1284954413, 'managed', 0, 'flypage-ask.tpl', 1, 1),
(71, 1, 'USB Cable 3.0', '<p>USB 3.0 cable provided 10 times data transfer speed than USB 2.0. Its data transfer rate up to 4.8 Gbps. Compatible with USB 2.0. 4. Efficient in power supply then USB2.0. USB 3.0 cable power ability is 900mA compared with former USB 100mA</p>', 'resized/USB_Cable_3.0_4c96d3adc4858_90x90.jpg', 'USB_Cable_3.0_4c96d3add5414.jpg', 'Y', 1284953005, 1284953087, 'managed', 3, 'flypage.tpl', 1, 3),
(73, 1, 'USB Series', '', 'resized/USB_Series_4c96d73936ebe_90x90.jpg', 'USB_Series_4c96d73946deb.jpg', 'Y', 1284953503, 1284953913, 'managed', 3, 'flypage.tpl', 3, 1),
(74, 1, 'Video Cable', '', 'resized/Video_Cable_4c96da8a2ec80_90x90.jpg', 'Video_Cable_4c96da8a39521.jpg', 'Y', 1284954762, 1284954762, 'managed', 3, 'flypage.tpl', 21, 4),
(75, 1, 'DVI Cable', '', 'resized/DVI_Cable_4c96dc3c056b9_90x90.jpg', 'DVI_Cable_4c96dc3c0f536.jpg', 'Y', 1284955195, 1284955231, 'managed', 3, 'flypage.tpl', 2, 3),
(76, 1, 'VGA Cable', '', 'resized/VGA_Cable_4c96dc85a0dbe_90x90.jpg', 'VGA_Cable_4c96dc85aaac6.jpg', 'Y', 1284955269, 1284955269, 'managed', 3, 'flypage.tpl', 3, 1),
(77, 1, 'KVM Cable', '', 'resized/KVM_Cable_4c96dcf255230_90x90.jpg', 'KVM_Cable_4c96dcf25fea6.jpg', 'Y', 1284955378, 1284955378, 'managed', 3, 'flypage.tpl', 4, 4),
(78, 1, 'Video Cable Series', '', 'resized/Video_Cable_Seri_4c96dd7c28762_90x90.jpg', 'Video_Cable_Seri_4c96dd7c34127.jpg', 'Y', 1284955516, 1284955516, 'managed', 3, 'flypage.tpl', 5, 5),
(79, 1, 'Other Products', '', 'resized/Other_Products_4c96e093c5820_90x90.jpg', 'Other_Products_4c96e093ce208.jpg', 'Y', 1284956307, 1284962932, 'managed', 3, 'flypage.tpl', 22, 21),
(80, 1, 'USB Converter', '', 'resized/USB_Device_4c96e26ca04a7_90x90.jpg', 'USB_Device_4c96e26ca3897.jpg', 'Y', 1284956780, 1285822133, 'managed', 3, 'flypage.tpl', 23, 2),
(111, 1, 'iPad Accessories', '', '', '', 'Y', 1335145514, 1335237760, 'managed', 3, 'flypage.tpl', 5, 0),
(98, 1, 'VGA Splitter', '', 'resized/VGA_Splitter_4ca40c5c1a623_90x90.jpg', 'VGA_Splitter_4ca40c5c2720b.jpg', 'Y', 1285819484, 1285819484, 'managed', 3, 'flypage.tpl', 1, 1),
(109, 1, 'Organizer', '', '', '', 'Y', 1302487752, 1302487758, 'managed', 3, 'flypage.tpl', 6, 0),
(83, 1, 'DB25 Series', '', 'resized/DB25_Series_4c985b7d53268_90x90.jpg', 'DB25_Series_4c985b7d5e071.jpg', 'Y', 1285053239, 1285053309, 'managed', 3, 'flypage.tpl', 1, 2),
(84, 1, 'DB9 Series', '', 'resized/DB9_Series_4c985d3996aa8_90x90.jpg', 'DB9_Series_4c985d39a2166.jpg', 'Y', 1285053753, 1285053753, 'managed', 3, 'flypage.tpl', 2, 1),
(85, 1, 'Keyboard Extension', '', 'resized/Keyboard_Extensi_4c985d9c9a0a0_90x90.jpg', 'Keyboard_Extensi_4c985d9ca627d.jpg', 'Y', 1285053852, 1285053852, 'managed', 3, 'flypage.tpl', 3, 3),
(87, 1, 'Adapter', '', 'resized/Adapter_4c9872019226e_90x90.jpg', 'Adapter_4c9872019f231.jpg', 'Y', 1285059073, 1285059073, 'managed', 3, 'flypage.tpl', 25, 12),
(88, 1, 'Gender Changer', '', 'resized/Gender_Changer_4c98723346062_90x90.jpg', 'Gender_Changer_4c9872336a126.jpg', 'Y', 1285059123, 1285815700, 'managed', 3, 'flypage.tpl', 1, 1),
(89, 1, 'Connector with Hood', '', 'resized/Connector_with_H_4ca3ff24755a1_90x90.jpg', 'Connector_with_H_4ca3ff247f937.jpg', 'Y', 1285816100, 1285816100, 'managed', 3, 'flypage.tpl', 2, 2),
(90, 1, 'Crimping Tool', '', '', '', 'Y', 1285816511, 1285816511, 'managed', 3, 'flypage.tpl', 1, 1),
(91, 1, 'RJ45 Connector / Boot', '', 'resized/RJ45_Connector___4ca4013704b2e_90x90.jpg', 'RJ45_Connector___4ca401370ae67.jpg', 'Y', 1285816630, 1285816630, 'managed', 3, 'flypage.tpl', 2, 3),
(92, 1, 'Service Tools', '', 'resized/Service_Tools_4ca4017461a50_90x90.jpg', 'Service_Tools_4ca401747f7a7.jpg', 'Y', 1285816692, 1285816692, 'managed', 3, 'flypage.tpl', 3, 2),
(93, 1, 'Sata Cable', '', 'resized/Sata_Cable_4ca401ad68d56_90x90.jpg', 'Sata_Cable_4ca401ad7b5ea.jpg', 'Y', 1285816749, 1285816749, 'managed', 3, 'flypage.tpl', 26, 7),
(94, 1, 'NB Sleeves / Bag', '', 'resized/NB_Sleeves___Bag_4ca4024be39d8_90x90.jpg', 'NB_Sleeves___Bag_4ca4024c03162.jpg', 'Y', 1285816907, 1285816907, 'managed', 3, 'flypage.tpl', 2, 2),
(95, 1, 'NB Peripherals', '', 'resized/NB_Peripherals_4ca402c6d84c0_90x90.jpg', 'NB_Peripherals_4ca402c7e33c7.jpg', 'Y', 1285817029, 1285817029, 'managed', 3, 'flypage.tpl', 3, 3),
(96, 1, 'NB Power Adapter', '', 'resized/NB_Power_Adapter_4ca403078630a_90x90.jpg', 'NB_Power_Adapter_4ca40307aeed5.jpg', 'Y', 1285817095, 1285817095, 'managed', 3, 'flypage.tpl', 4, 4),
(97, 1, 'Special Adapter', '', 'resized/HD_Adapter__Mini_4ca40603a8737_90x90.jpg', 'HD_Adapter__Mini_4ca40603bf7aa.jpg', 'Y', 1285817859, 1286507022, 'managed', 3, 'flypage.tpl', 28, 0),
(99, 1, 'Video Transmitter', '', 'resized/Video_Transmitte_4ca40c7f9be31_90x90.jpg', 'Video_Transmitte_4ca40c7fa886e.jpg', 'Y', 1285819519, 1285819575, 'managed', 3, 'flypage.tpl', 2, 2),
(100, 1, 'KVM Switches', '', 'resized/KVM_Switches_4ca40cfbccc32_90x90.jpg', 'KVM_Switches_4ca40cfbde757.jpg', 'Y', 1285819643, 1285819643, 'managed', 3, 'flypage.tpl', 3, 3),
(101, 1, 'Optical Mouse', '', 'resized/Optical_Mouse_4ca40f3898dbb_90x90.jpg', 'Optical_Mouse_4ca40f38a5492.jpg', 'Y', 1285820216, 1285820216, 'managed', 3, 'flypage.tpl', 2, 2),
(102, 1, 'Keyboard', '', '', '', 'Y', 1285820284, 1285820284, 'managed', 3, 'flypage.tpl', 3, 3),
(103, 1, 'Mouse Pad', '', 'resized/Mouse_Pad_4ca40fbedc66c_90x90.jpg', 'Mouse_Pad_4ca40fbeeb24f.jpg', 'Y', 1285820350, 1285820350, 'managed', 3, 'flypage.tpl', 4, 1),
(104, 1, 'Web Camera', '', 'resized/Web_Camera_4ca40fec2cf1f_90x90.jpg', 'Web_Camera_4ca40fec5007a.jpg', 'Y', 1285820396, 1285820422, 'managed', 3, 'flypage.tpl', 5, 4),
(105, 1, 'USB Hub 2.0', '', 'resized/USB_Hub_2.0_4ca57b55ac71a_90x90.jpg', 'USB_Hub_2.0_4ca57b55c19ad.jpg', 'Y', 1285913429, 1285913429, 'managed', 3, 'flypage.tpl', 1, 1),
(106, 1, 'USB Card Reader', '', '', '', 'Y', 1285913558, 1285913558, 'managed', 3, 'flypage.tpl', 2, 2),
(107, 1, 'USB Collectors Item', '', 'resized/USB_Collectors_I_4ca57c5cbb866_90x90.jpg', 'USB_Collectors_I_4ca57c5cc84ee.jpg', 'Y', 1285913692, 1285913692, 'managed', 3, 'flypage.tpl', 3, 3),
(108, 1, 'Power Extension', '', 'resized/Power_Extension_4cae8d930e67d_90x90.jpg', 'Power_Extension_4cae8d931c752.jpg', 'Y', 1286507923, 1286507923, 'managed', 3, 'flypage.tpl', 3, 0),
(110, 1, 'Collectors Items', '', 'resized/Collector_s_Item_4e4df56c72b3f_90x90.jpg', 'Collector_s_Item_4e4df56c7ce2e.jpg', 'Y', 1313731948, 1335237694, 'managed', 3, 'flypage.tpl', 4, 0),
(112, 1, 'Accessories', '', '', '', 'Y', 1335237410, 1335237410, 'managed', 3, 'flypage.tpl', 30, 0),
(113, 1, 'Galaxy Accessories', '', '', '', 'Y', 1335238760, 1335238766, 'managed', 3, 'flypage.tpl', 6, 0),
(114, 1, 'iPad Screen', '', 'resized/iPad_Screen_5077881251c7b_90x90.jpg', 'iPad_Screen_50778812dfde2.jpg', 'Y', 1350010897, 1350010897, 'managed', 3, 'flypage.tpl', 1, 0),
(115, 1, 'iPad Stand', '', 'resized/iPad_Stand_50778df387504_90x90.jpg', 'iPad_Stand_50778df3a6a3d.jpg', 'Y', 1350012185, 1350012402, 'managed', 3, 'flypage.tpl', 2, 0),
(116, 1, 'iPad Cover', '', 'resized/iPad_Cover_50778ef004f32_90x90.jpg', 'iPad_Cover_50778ef1073ae.jpg', 'Y', 1350012654, 1350012654, 'managed', 3, 'flypage.tpl', 3, 0),
(117, 1, 'iPad Sleeve', '', '', '', 'Y', 1350012692, 1350012692, 'managed', 3, 'flypage.tpl', 4, 0),
(118, 1, 'iPad Adapter', '', 'resized/iPad_Adapter_50778f673f10f_90x90.jpg', 'iPad_Adapter_50778f6782f88.jpg', 'Y', 1350012775, 1350012775, 'managed', 3, 'flypage.tpl', 5, 0),
(119, 1, 'Others', '', 'resized/Others__50778fd9b5f35_90x90.jpg', 'Others__50778fdb07ba8.jpg', 'Y', 1350012888, 1350012888, 'managed', 3, 'flypage.tpl', 6, 0),
(120, 1, 'Gadgets', 'Collection of Different Gadgets', 'resized/Gadgets_51a0553634a71_90x90.jpg', 'Gadgets_51a05537048e0.jpg', 'Y', 1369462069, 1369463613, 'managed', 3, 'flypage.tpl', 31, 0),
(121, 1, 'Video Converter', '', '', '', 'Y', 1404187671, 1404187671, 'managed', 3, 'flypage.tpl', 32, 0),
(122, 1, 'Display Port', '', '', '', 'Y', 1415418963, 1415418963, 'managed', 3, 'flypage.tpl', 6, 0),
(123, 1, 'HDMI Splitter', '', '', '', 'Y', 1415593354, 1415593354, 'managed', 3, 'flypage.tpl', 4, 0),
(124, 1, 'Power Adapter', '', '', '', 'Y', 1415601902, 1415601902, 'managed', 3, 'flypage.tpl', 33, 0),
(125, 1, 'RCA Cables', '', '', '', 'Y', 1424416217, 1424417694, 'managed', 3, 'flypage.tpl', 34, 0),
(126, 1, 'HDMI Switch', '', '', '', 'Y', 1424418610, 1424418610, 'managed', 3, 'flypage.tpl', 5, 0),
(127, 1, 'USB Type C', '', '', '', 'Y', 1450410919, 1450410919, 'managed', 3, 'flypage.tpl', 35, 0),
(128, 1, 'Apple Accessories', '', '', '', 'Y', 1453971172, 1453971172, 'managed', 3, 'flypage.tpl', 36, 0),
(129, 1, 'Speaker', '', 'resized/Speaker_571834f2ce4af_90x90.jpg', 'Speaker_571834f30b93c.jpg', 'Y', 1461204210, 1461204210, 'managed', 3, 'flypage.tpl', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_category_xref`
--

CREATE TABLE IF NOT EXISTS `jos_vm_category_xref` (
  `category_parent_id` int(11) NOT NULL DEFAULT '0',
  `category_child_id` int(11) NOT NULL DEFAULT '0',
  `category_list` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_child_id`),
  KEY `category_xref_category_parent_id` (`category_parent_id`),
  KEY `idx_category_xref_category_list` (`category_list`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Category child-parent relation list';

--
-- Dumping data for table `jos_vm_category_xref`
--

INSERT INTO `jos_vm_category_xref` (`category_parent_id`, `category_child_id`, `category_list`) VALUES
(35, 83, NULL),
(43, 81, NULL),
(43, 82, NULL),
(0, 1, NULL),
(74, 34, NULL),
(0, 33, NULL),
(79, 62, NULL),
(0, 61, NULL),
(0, 60, NULL),
(67, 69, NULL),
(112, 58, NULL),
(112, 57, NULL),
(0, 56, NULL),
(53, 55, NULL),
(53, 54, NULL),
(0, 53, NULL),
(45, 52, NULL),
(61, 98, NULL),
(45, 50, NULL),
(0, 45, NULL),
(40, 43, NULL),
(40, 44, NULL),
(0, 40, NULL),
(37, 39, NULL),
(37, 38, NULL),
(0, 37, NULL),
(0, 36, NULL),
(0, 35, NULL),
(0, 65, NULL),
(112, 67, NULL),
(67, 68, NULL),
(57, 70, NULL),
(33, 71, NULL),
(33, 72, NULL),
(33, 73, NULL),
(0, 74, NULL),
(74, 75, NULL),
(74, 76, NULL),
(74, 77, NULL),
(74, 78, NULL),
(0, 79, NULL),
(0, 80, NULL),
(35, 84, NULL),
(35, 85, NULL),
(0, 87, NULL),
(87, 88, NULL),
(87, 89, NULL),
(65, 90, NULL),
(65, 91, NULL),
(65, 92, NULL),
(0, 93, NULL),
(57, 94, NULL),
(57, 95, NULL),
(57, 96, NULL),
(0, 97, NULL),
(61, 99, NULL),
(61, 100, NULL),
(67, 101, NULL),
(67, 102, NULL),
(67, 103, NULL),
(67, 104, NULL),
(58, 105, NULL),
(58, 106, NULL),
(58, 107, NULL),
(37, 108, NULL),
(67, 109, NULL),
(112, 110, NULL),
(112, 111, NULL),
(0, 112, NULL),
(112, 113, NULL),
(111, 114, NULL),
(111, 115, NULL),
(111, 116, NULL),
(111, 117, NULL),
(111, 118, NULL),
(111, 119, NULL),
(0, 120, NULL),
(0, 121, NULL),
(74, 122, NULL),
(61, 123, NULL),
(0, 124, NULL),
(0, 125, NULL),
(61, 126, NULL),
(0, 127, NULL),
(0, 128, NULL),
(112, 129, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_country`
--

CREATE TABLE IF NOT EXISTS `jos_vm_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_id` int(11) NOT NULL DEFAULT '1',
  `country_name` varchar(64) DEFAULT NULL,
  `country_3_code` char(3) DEFAULT NULL,
  `country_2_code` char(2) DEFAULT NULL,
  PRIMARY KEY (`country_id`),
  KEY `idx_country_name` (`country_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Country records' AUTO_INCREMENT=246 ;

--
-- Dumping data for table `jos_vm_country`
--

INSERT INTO `jos_vm_country` (`country_id`, `zone_id`, `country_name`, `country_3_code`, `country_2_code`) VALUES
(1, 1, 'Afghanistan', 'AFG', 'AF'),
(2, 1, 'Albania', 'ALB', 'AL'),
(3, 1, 'Algeria', 'DZA', 'DZ'),
(4, 1, 'American Samoa', 'ASM', 'AS'),
(5, 1, 'Andorra', 'AND', 'AD'),
(6, 1, 'Angola', 'AGO', 'AO'),
(7, 1, 'Anguilla', 'AIA', 'AI'),
(8, 1, 'Antarctica', 'ATA', 'AQ'),
(9, 1, 'Antigua and Barbuda', 'ATG', 'AG'),
(10, 1, 'Argentina', 'ARG', 'AR'),
(11, 1, 'Armenia', 'ARM', 'AM'),
(12, 1, 'Aruba', 'ABW', 'AW'),
(13, 1, 'Australia', 'AUS', 'AU'),
(14, 1, 'Austria', 'AUT', 'AT'),
(15, 1, 'Azerbaijan', 'AZE', 'AZ'),
(16, 1, 'Bahamas', 'BHS', 'BS'),
(17, 1, 'Bahrain', 'BHR', 'BH'),
(18, 1, 'Bangladesh', 'BGD', 'BD'),
(19, 1, 'Barbados', 'BRB', 'BB'),
(20, 1, 'Belarus', 'BLR', 'BY'),
(21, 1, 'Belgium', 'BEL', 'BE'),
(22, 1, 'Belize', 'BLZ', 'BZ'),
(23, 1, 'Benin', 'BEN', 'BJ'),
(24, 1, 'Bermuda', 'BMU', 'BM'),
(25, 1, 'Bhutan', 'BTN', 'BT'),
(26, 1, 'Bolivia', 'BOL', 'BO'),
(27, 1, 'Bosnia and Herzegowina', 'BIH', 'BA'),
(28, 1, 'Botswana', 'BWA', 'BW'),
(29, 1, 'Bouvet Island', 'BVT', 'BV'),
(30, 1, 'Brazil', 'BRA', 'BR'),
(31, 1, 'British Indian Ocean Territory', 'IOT', 'IO'),
(32, 1, 'Brunei Darussalam', 'BRN', 'BN'),
(33, 1, 'Bulgaria', 'BGR', 'BG'),
(34, 1, 'Burkina Faso', 'BFA', 'BF'),
(35, 1, 'Burundi', 'BDI', 'BI'),
(36, 1, 'Cambodia', 'KHM', 'KH'),
(37, 1, 'Cameroon', 'CMR', 'CM'),
(38, 1, 'Canada', 'CAN', 'CA'),
(39, 1, 'Cape Verde', 'CPV', 'CV'),
(40, 1, 'Cayman Islands', 'CYM', 'KY'),
(41, 1, 'Central African Republic', 'CAF', 'CF'),
(42, 1, 'Chad', 'TCD', 'TD'),
(43, 1, 'Chile', 'CHL', 'CL'),
(44, 1, 'China', 'CHN', 'CN'),
(45, 1, 'Christmas Island', 'CXR', 'CX'),
(46, 1, 'Cocos (Keeling) Islands', 'CCK', 'CC'),
(47, 1, 'Colombia', 'COL', 'CO'),
(48, 1, 'Comoros', 'COM', 'KM'),
(49, 1, 'Congo', 'COG', 'CG'),
(50, 1, 'Cook Islands', 'COK', 'CK'),
(51, 1, 'Costa Rica', 'CRI', 'CR'),
(52, 1, 'Cote D''Ivoire', 'CIV', 'CI'),
(53, 1, 'Croatia', 'HRV', 'HR'),
(54, 1, 'Cuba', 'CUB', 'CU'),
(55, 1, 'Cyprus', 'CYP', 'CY'),
(56, 1, 'Czech Republic', 'CZE', 'CZ'),
(57, 1, 'Denmark', 'DNK', 'DK'),
(58, 1, 'Djibouti', 'DJI', 'DJ'),
(59, 1, 'Dominica', 'DMA', 'DM'),
(60, 1, 'Dominican Republic', 'DOM', 'DO'),
(61, 1, 'East Timor', 'TMP', 'TP'),
(62, 1, 'Ecuador', 'ECU', 'EC'),
(63, 1, 'Egypt', 'EGY', 'EG'),
(64, 1, 'El Salvador', 'SLV', 'SV'),
(65, 1, 'Equatorial Guinea', 'GNQ', 'GQ'),
(66, 1, 'Eritrea', 'ERI', 'ER'),
(67, 1, 'Estonia', 'EST', 'EE'),
(68, 1, 'Ethiopia', 'ETH', 'ET'),
(69, 1, 'Falkland Islands (Malvinas)', 'FLK', 'FK'),
(70, 1, 'Faroe Islands', 'FRO', 'FO'),
(71, 1, 'Fiji', 'FJI', 'FJ'),
(72, 1, 'Finland', 'FIN', 'FI'),
(73, 1, 'France', 'FRA', 'FR'),
(74, 1, 'France, Metropolitan', 'FXX', 'FX'),
(75, 1, 'French Guiana', 'GUF', 'GF'),
(76, 1, 'French Polynesia', 'PYF', 'PF'),
(77, 1, 'French Southern Territories', 'ATF', 'TF'),
(78, 1, 'Gabon', 'GAB', 'GA'),
(79, 1, 'Gambia', 'GMB', 'GM'),
(80, 1, 'Georgia', 'GEO', 'GE'),
(81, 1, 'Germany', 'DEU', 'DE'),
(82, 1, 'Ghana', 'GHA', 'GH'),
(83, 1, 'Gibraltar', 'GIB', 'GI'),
(84, 1, 'Greece', 'GRC', 'GR'),
(85, 1, 'Greenland', 'GRL', 'GL'),
(86, 1, 'Grenada', 'GRD', 'GD'),
(87, 1, 'Guadeloupe', 'GLP', 'GP'),
(88, 1, 'Guam', 'GUM', 'GU'),
(89, 1, 'Guatemala', 'GTM', 'GT'),
(90, 1, 'Guinea', 'GIN', 'GN'),
(91, 1, 'Guinea-bissau', 'GNB', 'GW'),
(92, 1, 'Guyana', 'GUY', 'GY'),
(93, 1, 'Haiti', 'HTI', 'HT'),
(94, 1, 'Heard and Mc Donald Islands', 'HMD', 'HM'),
(95, 1, 'Honduras', 'HND', 'HN'),
(96, 1, 'Hong Kong', 'HKG', 'HK'),
(97, 1, 'Hungary', 'HUN', 'HU'),
(98, 1, 'Iceland', 'ISL', 'IS'),
(99, 1, 'India', 'IND', 'IN'),
(100, 1, 'Indonesia', 'IDN', 'ID'),
(101, 1, 'Iran (Islamic Republic of)', 'IRN', 'IR'),
(102, 1, 'Iraq', 'IRQ', 'IQ'),
(103, 1, 'Ireland', 'IRL', 'IE'),
(104, 1, 'Israel', 'ISR', 'IL'),
(105, 1, 'Italy', 'ITA', 'IT'),
(106, 1, 'Jamaica', 'JAM', 'JM'),
(107, 1, 'Japan', 'JPN', 'JP'),
(108, 1, 'Jordan', 'JOR', 'JO'),
(109, 1, 'Kazakhstan', 'KAZ', 'KZ'),
(110, 1, 'Kenya', 'KEN', 'KE'),
(111, 1, 'Kiribati', 'KIR', 'KI'),
(112, 1, 'Korea, Democratic People''s Republic of', 'PRK', 'KP'),
(113, 1, 'Korea, Republic of', 'KOR', 'KR'),
(114, 1, 'Kuwait', 'KWT', 'KW'),
(115, 1, 'Kyrgyzstan', 'KGZ', 'KG'),
(116, 1, 'Lao People''s Democratic Republic', 'LAO', 'LA'),
(117, 1, 'Latvia', 'LVA', 'LV'),
(118, 1, 'Lebanon', 'LBN', 'LB'),
(119, 1, 'Lesotho', 'LSO', 'LS'),
(120, 1, 'Liberia', 'LBR', 'LR'),
(121, 1, 'Libyan Arab Jamahiriya', 'LBY', 'LY'),
(122, 1, 'Liechtenstein', 'LIE', 'LI'),
(123, 1, 'Lithuania', 'LTU', 'LT'),
(124, 1, 'Luxembourg', 'LUX', 'LU'),
(125, 1, 'Macau', 'MAC', 'MO'),
(126, 1, 'Macedonia, The Former Yugoslav Republic of', 'MKD', 'MK'),
(127, 1, 'Madagascar', 'MDG', 'MG'),
(128, 1, 'Malawi', 'MWI', 'MW'),
(129, 1, 'Malaysia', 'MYS', 'MY'),
(130, 1, 'Maldives', 'MDV', 'MV'),
(131, 1, 'Mali', 'MLI', 'ML'),
(132, 1, 'Malta', 'MLT', 'MT'),
(133, 1, 'Marshall Islands', 'MHL', 'MH'),
(134, 1, 'Martinique', 'MTQ', 'MQ'),
(135, 1, 'Mauritania', 'MRT', 'MR'),
(136, 1, 'Mauritius', 'MUS', 'MU'),
(137, 1, 'Mayotte', 'MYT', 'YT'),
(138, 1, 'Mexico', 'MEX', 'MX'),
(139, 1, 'Micronesia, Federated States of', 'FSM', 'FM'),
(140, 1, 'Moldova, Republic of', 'MDA', 'MD'),
(141, 1, 'Monaco', 'MCO', 'MC'),
(142, 1, 'Mongolia', 'MNG', 'MN'),
(143, 1, 'Montserrat', 'MSR', 'MS'),
(144, 1, 'Morocco', 'MAR', 'MA'),
(145, 1, 'Mozambique', 'MOZ', 'MZ'),
(146, 1, 'Myanmar', 'MMR', 'MM'),
(147, 1, 'Namibia', 'NAM', 'NA'),
(148, 1, 'Nauru', 'NRU', 'NR'),
(149, 1, 'Nepal', 'NPL', 'NP'),
(150, 1, 'Netherlands', 'NLD', 'NL'),
(151, 1, 'Netherlands Antilles', 'ANT', 'AN'),
(152, 1, 'New Caledonia', 'NCL', 'NC'),
(153, 1, 'New Zealand', 'NZL', 'NZ'),
(154, 1, 'Nicaragua', 'NIC', 'NI'),
(155, 1, 'Niger', 'NER', 'NE'),
(156, 1, 'Nigeria', 'NGA', 'NG'),
(157, 1, 'Niue', 'NIU', 'NU'),
(158, 1, 'Norfolk Island', 'NFK', 'NF'),
(159, 1, 'Northern Mariana Islands', 'MNP', 'MP'),
(160, 1, 'Norway', 'NOR', 'NO'),
(161, 1, 'Oman', 'OMN', 'OM'),
(162, 1, 'Pakistan', 'PAK', 'PK'),
(163, 1, 'Palau', 'PLW', 'PW'),
(164, 1, 'Panama', 'PAN', 'PA'),
(165, 1, 'Papua New Guinea', 'PNG', 'PG'),
(166, 1, 'Paraguay', 'PRY', 'PY'),
(167, 1, 'Peru', 'PER', 'PE'),
(168, 1, 'Philippines', 'PHL', 'PH'),
(169, 1, 'Pitcairn', 'PCN', 'PN'),
(170, 1, 'Poland', 'POL', 'PL'),
(171, 1, 'Portugal', 'PRT', 'PT'),
(172, 1, 'Puerto Rico', 'PRI', 'PR'),
(173, 1, 'Qatar', 'QAT', 'QA'),
(174, 1, 'Reunion', 'REU', 'RE'),
(175, 1, 'Romania', 'ROM', 'RO'),
(176, 1, 'Russian Federation', 'RUS', 'RU'),
(177, 1, 'Rwanda', 'RWA', 'RW'),
(178, 1, 'Saint Kitts and Nevis', 'KNA', 'KN'),
(179, 1, 'Saint Lucia', 'LCA', 'LC'),
(180, 1, 'Saint Vincent and the Grenadines', 'VCT', 'VC'),
(181, 1, 'Samoa', 'WSM', 'WS'),
(182, 1, 'San Marino', 'SMR', 'SM'),
(183, 1, 'Sao Tome and Principe', 'STP', 'ST'),
(184, 1, 'Saudi Arabia', 'SAU', 'SA'),
(185, 1, 'Senegal', 'SEN', 'SN'),
(186, 1, 'Seychelles', 'SYC', 'SC'),
(187, 1, 'Sierra Leone', 'SLE', 'SL'),
(188, 1, 'Singapore', 'SGP', 'SG'),
(189, 1, 'Slovakia (Slovak Republic)', 'SVK', 'SK'),
(190, 1, 'Slovenia', 'SVN', 'SI'),
(191, 1, 'Solomon Islands', 'SLB', 'SB'),
(192, 1, 'Somalia', 'SOM', 'SO'),
(193, 1, 'South Africa', 'ZAF', 'ZA'),
(194, 1, 'South Georgia and the South Sandwich Islands', 'SGS', 'GS'),
(195, 1, 'Spain', 'ESP', 'ES'),
(196, 1, 'Sri Lanka', 'LKA', 'LK'),
(197, 1, 'St. Helena', 'SHN', 'SH'),
(198, 1, 'St. Pierre and Miquelon', 'SPM', 'PM'),
(199, 1, 'Sudan', 'SDN', 'SD'),
(200, 1, 'Suriname', 'SUR', 'SR'),
(201, 1, 'Svalbard and Jan Mayen Islands', 'SJM', 'SJ'),
(202, 1, 'Swaziland', 'SWZ', 'SZ'),
(203, 1, 'Sweden', 'SWE', 'SE'),
(204, 1, 'Switzerland', 'CHE', 'CH'),
(205, 1, 'Syrian Arab Republic', 'SYR', 'SY'),
(206, 1, 'Taiwan', 'TWN', 'TW'),
(207, 1, 'Tajikistan', 'TJK', 'TJ'),
(208, 1, 'Tanzania, United Republic of', 'TZA', 'TZ'),
(209, 1, 'Thailand', 'THA', 'TH'),
(210, 1, 'Togo', 'TGO', 'TG'),
(211, 1, 'Tokelau', 'TKL', 'TK'),
(212, 1, 'Tonga', 'TON', 'TO'),
(213, 1, 'Trinidad and Tobago', 'TTO', 'TT'),
(214, 1, 'Tunisia', 'TUN', 'TN'),
(215, 1, 'Turkey', 'TUR', 'TR'),
(216, 1, 'Turkmenistan', 'TKM', 'TM'),
(217, 1, 'Turks and Caicos Islands', 'TCA', 'TC'),
(218, 1, 'Tuvalu', 'TUV', 'TV'),
(219, 1, 'Uganda', 'UGA', 'UG'),
(220, 1, 'Ukraine', 'UKR', 'UA'),
(221, 1, 'United Arab Emirates', 'ARE', 'AE'),
(222, 1, 'United Kingdom', 'GBR', 'GB'),
(223, 1, 'United States', 'USA', 'US'),
(224, 1, 'United States Minor Outlying Islands', 'UMI', 'UM'),
(225, 1, 'Uruguay', 'URY', 'UY'),
(226, 1, 'Uzbekistan', 'UZB', 'UZ'),
(227, 1, 'Vanuatu', 'VUT', 'VU'),
(228, 1, 'Vatican City State (Holy See)', 'VAT', 'VA'),
(229, 1, 'Venezuela', 'VEN', 'VE'),
(230, 1, 'Viet Nam', 'VNM', 'VN'),
(231, 1, 'Virgin Islands (British)', 'VGB', 'VG'),
(232, 1, 'Virgin Islands (U.S.)', 'VIR', 'VI'),
(233, 1, 'Wallis and Futuna Islands', 'WLF', 'WF'),
(234, 1, 'Western Sahara', 'ESH', 'EH'),
(235, 1, 'Yemen', 'YEM', 'YE'),
(236, 1, 'Serbia', 'SRB', 'RS'),
(237, 1, 'The Democratic Republic of Congo', 'DRC', 'DC'),
(238, 1, 'Zambia', 'ZMB', 'ZM'),
(239, 1, 'Zimbabwe', 'ZWE', 'ZW'),
(240, 1, 'East Timor', 'XET', 'XE'),
(241, 1, 'Jersey', 'XJE', 'XJ'),
(242, 1, 'St. Barthelemy', 'XSB', 'XB'),
(243, 1, 'St. Eustatius', 'XSE', 'XU'),
(244, 1, 'Canary Islands', 'XCA', 'XC'),
(245, 1, 'Montenegro', 'MNE', 'ME');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_coupons`
--

CREATE TABLE IF NOT EXISTS `jos_vm_coupons` (
  `coupon_id` int(16) NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(32) NOT NULL DEFAULT '',
  `percent_or_total` enum('percent','total') NOT NULL DEFAULT 'percent',
  `coupon_type` enum('gift','permanent') NOT NULL DEFAULT 'gift',
  `coupon_value` decimal(12,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Used to store coupon codes' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jos_vm_coupons`
--

INSERT INTO `jos_vm_coupons` (`coupon_id`, `coupon_code`, `percent_or_total`, `coupon_type`, `coupon_value`) VALUES
(1, 'test1', 'total', 'gift', '6.00'),
(2, 'test2', 'percent', 'permanent', '15.00'),
(3, 'test3', 'total', 'permanent', '4.00'),
(4, 'test4', 'total', 'gift', '15.00');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_creditcard`
--

CREATE TABLE IF NOT EXISTS `jos_vm_creditcard` (
  `creditcard_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `creditcard_name` varchar(70) NOT NULL DEFAULT '',
  `creditcard_code` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`creditcard_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Used to store credit card types' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `jos_vm_creditcard`
--

INSERT INTO `jos_vm_creditcard` (`creditcard_id`, `vendor_id`, `creditcard_name`, `creditcard_code`) VALUES
(1, 1, 'Visa', 'VISA'),
(2, 1, 'MasterCard', 'MC'),
(3, 1, 'American Express', 'amex'),
(4, 1, 'Discover Card', 'discover'),
(5, 1, 'Diners Club', 'diners'),
(6, 1, 'JCB', 'jcb'),
(7, 1, 'Australian Bankcard', 'australian_bc');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_csv`
--

CREATE TABLE IF NOT EXISTS `jos_vm_csv` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` varchar(128) NOT NULL DEFAULT '',
  `field_default_value` text,
  `field_ordering` int(3) NOT NULL DEFAULT '0',
  `field_required` char(1) DEFAULT 'N',
  PRIMARY KEY (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds all fields which are used on CVS Ex-/Import' AUTO_INCREMENT=26 ;

--
-- Dumping data for table `jos_vm_csv`
--

INSERT INTO `jos_vm_csv` (`field_id`, `field_name`, `field_default_value`, `field_ordering`, `field_required`) VALUES
(1, 'product_sku', '', 1, 'Y'),
(2, 'product_s_desc', '', 5, 'N'),
(3, 'product_desc', '', 6, 'N'),
(4, 'product_thumb_image', '', 7, 'N'),
(5, 'product_full_image', '', 8, 'N'),
(6, 'product_weight', '', 9, 'N'),
(7, 'product_weight_uom', 'KG', 10, 'N'),
(8, 'product_length', '', 11, 'N'),
(9, 'product_width', '', 12, 'N'),
(10, 'product_height', '', 13, 'N'),
(11, 'product_lwh_uom', '', 14, 'N'),
(12, 'product_in_stock', '0', 15, 'N'),
(13, 'product_available_date', '', 16, 'N'),
(14, 'product_discount_id', '', 17, 'N'),
(15, 'product_name', '', 2, 'Y'),
(16, 'product_price', '', 4, 'N'),
(17, 'category_path', '', 3, 'Y'),
(18, 'manufacturer_id', '', 18, 'N'),
(19, 'product_tax_id', '', 19, 'N'),
(20, 'product_sales', '', 20, 'N'),
(21, 'product_parent_id', '0', 21, 'N'),
(22, 'attribute', '', 22, 'N'),
(23, 'custom_attribute', '', 23, 'N'),
(24, 'attributes', '', 24, 'N'),
(25, 'attribute_values', '', 25, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_currency`
--

CREATE TABLE IF NOT EXISTS `jos_vm_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(64) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL,
  PRIMARY KEY (`currency_id`),
  KEY `idx_currency_name` (`currency_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Used to store currencies' AUTO_INCREMENT=159 ;

--
-- Dumping data for table `jos_vm_currency`
--

INSERT INTO `jos_vm_currency` (`currency_id`, `currency_name`, `currency_code`) VALUES
(1, 'Andorran Peseta', 'ADP'),
(2, 'United Arab Emirates Dirham', 'AED'),
(3, 'Afghanistan Afghani', 'AFA'),
(4, 'Albanian Lek', 'ALL'),
(5, 'Netherlands Antillian Guilder', 'ANG'),
(6, 'Angolan Kwanza', 'AOK'),
(7, 'Argentine Peso', 'ARS'),
(9, 'Australian Dollar', 'AUD'),
(10, 'Aruban Florin', 'AWG'),
(11, 'Barbados Dollar', 'BBD'),
(12, 'Bangladeshi Taka', 'BDT'),
(14, 'Bulgarian Lev', 'BGL'),
(15, 'Bahraini Dinar', 'BHD'),
(16, 'Burundi Franc', 'BIF'),
(17, 'Bermudian Dollar', 'BMD'),
(18, 'Brunei Dollar', 'BND'),
(19, 'Bolivian Boliviano', 'BOB'),
(20, 'Brazilian Real', 'BRL'),
(21, 'Bahamian Dollar', 'BSD'),
(22, 'Bhutan Ngultrum', 'BTN'),
(23, 'Burma Kyat', 'BUK'),
(24, 'Botswanian Pula', 'BWP'),
(25, 'Belize Dollar', 'BZD'),
(26, 'Canadian Dollar', 'CAD'),
(27, 'Swiss Franc', 'CHF'),
(28, 'Chilean Unidades de Fomento', 'CLF'),
(29, 'Chilean Peso', 'CLP'),
(30, 'Yuan (Chinese) Renminbi', 'CNY'),
(31, 'Colombian Peso', 'COP'),
(32, 'Costa Rican Colon', 'CRC'),
(33, 'Czech Koruna', 'CZK'),
(34, 'Cuban Peso', 'CUP'),
(35, 'Cape Verde Escudo', 'CVE'),
(36, 'Cyprus Pound', 'CYP'),
(40, 'Danish Krone', 'DKK'),
(41, 'Dominican Peso', 'DOP'),
(42, 'Algerian Dinar', 'DZD'),
(43, 'Ecuador Sucre', 'ECS'),
(44, 'Egyptian Pound', 'EGP'),
(46, 'Ethiopian Birr', 'ETB'),
(47, 'Euro', 'EUR'),
(49, 'Fiji Dollar', 'FJD'),
(50, 'Falkland Islands Pound', 'FKP'),
(52, 'British Pound', 'GBP'),
(53, 'Ghanaian Cedi', 'GHC'),
(54, 'Gibraltar Pound', 'GIP'),
(55, 'Gambian Dalasi', 'GMD'),
(56, 'Guinea Franc', 'GNF'),
(58, 'Guatemalan Quetzal', 'GTQ'),
(59, 'Guinea-Bissau Peso', 'GWP'),
(60, 'Guyanan Dollar', 'GYD'),
(61, 'Hong Kong Dollar', 'HKD'),
(62, 'Honduran Lempira', 'HNL'),
(63, 'Haitian Gourde', 'HTG'),
(64, 'Hungarian Forint', 'HUF'),
(65, 'Indonesian Rupiah', 'IDR'),
(66, 'Irish Punt', 'IEP'),
(67, 'Israeli Shekel', 'ILS'),
(68, 'Indian Rupee', 'INR'),
(69, 'Iraqi Dinar', 'IQD'),
(70, 'Iranian Rial', 'IRR'),
(73, 'Jamaican Dollar', 'JMD'),
(74, 'Jordanian Dinar', 'JOD'),
(75, 'Japanese Yen', 'JPY'),
(76, 'Kenyan Shilling', 'KES'),
(77, 'Kampuchean (Cambodian) Riel', 'KHR'),
(78, 'Comoros Franc', 'KMF'),
(79, 'North Korean Won', 'KPW'),
(80, '(South) Korean Won', 'KRW'),
(81, 'Kuwaiti Dinar', 'KWD'),
(82, 'Cayman Islands Dollar', 'KYD'),
(83, 'Lao Kip', 'LAK'),
(84, 'Lebanese Pound', 'LBP'),
(85, 'Sri Lanka Rupee', 'LKR'),
(86, 'Liberian Dollar', 'LRD'),
(87, 'Lesotho Loti', 'LSL'),
(89, 'Libyan Dinar', 'LYD'),
(90, 'Moroccan Dirham', 'MAD'),
(91, 'Malagasy Franc', 'MGF'),
(92, 'Mongolian Tugrik', 'MNT'),
(93, 'Macau Pataca', 'MOP'),
(94, 'Mauritanian Ouguiya', 'MRO'),
(95, 'Maltese Lira', 'MTL'),
(96, 'Mauritius Rupee', 'MUR'),
(97, 'Maldive Rufiyaa', 'MVR'),
(98, 'Malawi Kwacha', 'MWK'),
(99, 'Mexican Peso', 'MXP'),
(100, 'Malaysian Ringgit', 'MYR'),
(101, 'Mozambique Metical', 'MZM'),
(102, 'Nigerian Naira', 'NGN'),
(103, 'Nicaraguan Cordoba', 'NIC'),
(105, 'Norwegian Kroner', 'NOK'),
(106, 'Nepalese Rupee', 'NPR'),
(107, 'New Zealand Dollar', 'NZD'),
(108, 'Omani Rial', 'OMR'),
(109, 'Panamanian Balboa', 'PAB'),
(110, 'Peruvian Nuevo Sol', 'PEN'),
(111, 'Papua New Guinea Kina', 'PGK'),
(112, 'Philippine Peso', 'PHP'),
(113, 'Pakistan Rupee', 'PKR'),
(114, 'Polish Złoty', 'PLN'),
(116, 'Paraguay Guarani', 'PYG'),
(117, 'Qatari Rial', 'QAR'),
(118, 'Romanian Leu', 'RON'),
(119, 'Rwanda Franc', 'RWF'),
(120, 'Saudi Arabian Riyal', 'SAR'),
(121, 'Solomon Islands Dollar', 'SBD'),
(122, 'Seychelles Rupee', 'SCR'),
(123, 'Sudanese Pound', 'SDP'),
(124, 'Swedish Krona', 'SEK'),
(125, 'Singapore Dollar', 'SGD'),
(126, 'St. Helena Pound', 'SHP'),
(127, 'Sierra Leone Leone', 'SLL'),
(128, 'Somali Shilling', 'SOS'),
(129, 'Suriname Guilder', 'SRG'),
(130, 'Sao Tome and Principe Dobra', 'STD'),
(131, 'Russian Ruble', 'RUB'),
(132, 'El Salvador Colon', 'SVC'),
(133, 'Syrian Potmd', 'SYP'),
(134, 'Swaziland Lilangeni', 'SZL'),
(135, 'Thai Bath', 'THB'),
(136, 'Tunisian Dinar', 'TND'),
(137, 'Tongan Pa''anga', 'TOP'),
(138, 'East Timor Escudo', 'TPE'),
(139, 'Turkish Lira', 'TRY'),
(140, 'Trinidad and Tobago Dollar', 'TTD'),
(141, 'Taiwan Dollar', 'TWD'),
(142, 'Tanzanian Shilling', 'TZS'),
(143, 'Uganda Shilling', 'UGS'),
(144, 'US Dollar', 'USD'),
(145, 'Uruguayan Peso', 'UYP'),
(146, 'Venezualan Bolivar', 'VEB'),
(147, 'Vietnamese Dong', 'VND'),
(148, 'Vanuatu Vatu', 'VUV'),
(149, 'Samoan Tala', 'WST'),
(150, 'Democratic Yemeni Dinar', 'YDD'),
(151, 'Yemeni Rial', 'YER'),
(152, 'Dinar', 'RSD'),
(153, 'South African Rand', 'ZAR'),
(154, 'Zambian Kwacha', 'ZMK'),
(155, 'Zaire Zaire', 'ZRZ'),
(156, 'Zimbabwe Dollar', 'ZWD'),
(157, 'Slovak Koruna', 'SKK'),
(158, 'Armenian Dram', 'AMD');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_export`
--

CREATE TABLE IF NOT EXISTS `jos_vm_export` (
  `export_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) DEFAULT NULL,
  `export_name` varchar(255) DEFAULT NULL,
  `export_desc` text NOT NULL,
  `export_class` varchar(50) NOT NULL,
  `export_enabled` char(1) NOT NULL DEFAULT 'N',
  `export_config` text NOT NULL,
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`export_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Export Modules' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_function`
--

CREATE TABLE IF NOT EXISTS `jos_vm_function` (
  `function_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) DEFAULT NULL,
  `function_name` varchar(32) DEFAULT NULL,
  `function_class` varchar(32) DEFAULT NULL,
  `function_method` varchar(32) DEFAULT NULL,
  `function_description` text,
  `function_perms` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`function_id`),
  KEY `idx_function_module_id` (`module_id`),
  KEY `idx_function_name` (`function_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Used to map a function alias to a ''real'' class::function' AUTO_INCREMENT=195 ;

--
-- Dumping data for table `jos_vm_function`
--

INSERT INTO `jos_vm_function` (`function_id`, `module_id`, `function_name`, `function_class`, `function_method`, `function_description`, `function_perms`) VALUES
(1, 1, 'userAdd', 'ps_user', 'add', '', 'admin,storeadmin'),
(2, 1, 'userDelete', 'ps_user', 'delete', '', 'admin,storeadmin'),
(3, 1, 'userUpdate', 'ps_user', 'update', '', 'admin,storeadmin'),
(31, 2, 'productAdd', 'ps_product', 'add', '', 'admin,storeadmin'),
(6, 1, 'functionAdd', 'ps_function', 'add', '', 'admin'),
(7, 1, 'functionUpdate', 'ps_function', 'update', '', 'admin'),
(8, 1, 'functionDelete', 'ps_function', 'delete', '', 'admin'),
(9, 1, 'userLogout', 'ps_user', 'logout', '', 'none'),
(10, 1, 'userAddressAdd', 'ps_user_address', 'add', '', 'admin,storeadmin,shopper,demo'),
(11, 1, 'userAddressUpdate', 'ps_user_address', 'update', '', 'admin,storeadmin,shopper'),
(12, 1, 'userAddressDelete', 'ps_user_address', 'delete', '', 'admin,storeadmin,shopper'),
(13, 1, 'moduleAdd', 'ps_module', 'add', '', 'admin'),
(14, 1, 'moduleUpdate', 'ps_module', 'update', '', 'admin'),
(15, 1, 'moduleDelete', 'ps_module', 'delete', '', 'admin'),
(16, 1, 'userLogin', 'ps_user', 'login', '', 'none'),
(17, 3, 'vendorAdd', 'ps_vendor', 'add', '', 'admin'),
(18, 3, 'vendorUpdate', 'ps_vendor', 'update', '', 'admin,storeadmin'),
(19, 3, 'vendorDelete', 'ps_vendor', 'delete', '', 'admin'),
(20, 3, 'vendorCategoryAdd', 'ps_vendor_category', 'add', '', 'admin'),
(21, 3, 'vendorCategoryUpdate', 'ps_vendor_category', 'update', '', 'admin'),
(22, 3, 'vendorCategoryDelete', 'ps_vendor_category', 'delete', '', 'admin'),
(23, 4, 'shopperAdd', 'ps_shopper', 'add', '', 'none'),
(24, 4, 'shopperDelete', 'ps_shopper', 'delete', '', 'admin,storeadmin'),
(25, 4, 'shopperUpdate', 'ps_shopper', 'update', '', 'admin,storeadmin,shopper'),
(26, 4, 'shopperGroupAdd', 'ps_shopper_group', 'add', '', 'admin,storeadmin'),
(27, 4, 'shopperGroupUpdate', 'ps_shopper_group', 'update', '', 'admin,storeadmin'),
(28, 4, 'shopperGroupDelete', 'ps_shopper_group', 'delete', '', 'admin,storeadmin'),
(30, 5, 'orderStatusSet', 'ps_order', 'order_status_update', '', 'admin,storeadmin'),
(32, 2, 'productDelete', 'ps_product', 'delete', '', 'admin,storeadmin'),
(33, 2, 'productUpdate', 'ps_product', 'update', '', 'admin,storeadmin'),
(34, 2, 'productCategoryAdd', 'ps_product_category', 'add', '', 'admin,storeadmin'),
(35, 2, 'productCategoryUpdate', 'ps_product_category', 'update', '', 'admin,storeadmin'),
(36, 2, 'productCategoryDelete', 'ps_product_category', 'delete', '', 'admin,storeadmin'),
(37, 2, 'productPriceAdd', 'ps_product_price', 'add', '', 'admin,storeadmin'),
(38, 2, 'productPriceUpdate', 'ps_product_price', 'update', '', 'admin,storeadmin'),
(39, 2, 'productPriceDelete', 'ps_product_price', 'delete', '', 'admin,storeadmin'),
(40, 2, 'productAttributeAdd', 'ps_product_attribute', 'add', '', 'admin,storeadmin'),
(41, 2, 'productAttributeUpdate', 'ps_product_attribute', 'update', '', 'admin,storeadmin'),
(42, 2, 'productAttributeDelete', 'ps_product_attribute', 'delete', '', 'admin,storeadmin'),
(43, 7, 'cartAdd', 'ps_cart', 'add', '', 'none'),
(44, 7, 'cartUpdate', 'ps_cart', 'update', '', 'none'),
(45, 7, 'cartDelete', 'ps_cart', 'delete', '', 'none'),
(46, 10, 'checkoutComplete', 'ps_checkout', 'add', '', 'admin,storeadmin,shopper,demo,none'),
(48, 8, 'paymentMethodUpdate', 'ps_payment_method', 'update', '', 'admin,storeadmin'),
(49, 8, 'paymentMethodAdd', 'ps_payment_method', 'add', '', 'admin,storeadmin'),
(50, 8, 'paymentMethodDelete', 'ps_payment_method', 'delete', '', 'admin,storeadmin'),
(51, 5, 'orderDelete', 'ps_order', 'delete', '', 'admin,storeadmin'),
(52, 11, 'addTaxRate', 'ps_tax', 'add', '', 'admin,storeadmin'),
(53, 11, 'updateTaxRate', 'ps_tax', 'update', '', 'admin,storeadmin'),
(54, 11, 'deleteTaxRate', 'ps_tax', 'delete', '', 'admin,storeadmin'),
(55, 10, 'checkoutValidateST', 'ps_checkout', 'validate_shipto', '', 'none'),
(59, 5, 'orderStatusUpdate', 'ps_order_status', 'update', '', 'admin,storeadmin'),
(60, 5, 'orderStatusAdd', 'ps_order_status', 'add', '', 'storeadmin,admin'),
(61, 5, 'orderStatusDelete', 'ps_order_status', 'delete', '', 'admin,storeadmin'),
(62, 1, 'currencyAdd', 'ps_currency', 'add', 'add a currency', 'storeadmin,admin'),
(63, 1, 'currencyUpdate', 'ps_currency', 'update', '        update a currency', 'storeadmin,admin'),
(64, 1, 'currencyDelete', 'ps_currency', 'delete', 'delete a currency', 'storeadmin,admin'),
(65, 1, 'countryAdd', 'ps_country', 'add', 'Add a country ', 'storeadmin,admin'),
(66, 1, 'countryUpdate', 'ps_country', 'update', 'Update a country record', 'storeadmin,admin'),
(67, 1, 'countryDelete', 'ps_country', 'delete', 'Delete a country record', 'storeadmin,admin'),
(68, 2, 'product_csv', 'ps_csv', 'upload_csv', '', 'admin'),
(110, 7, 'waitingListAdd', 'zw_waiting_list', 'add', '', 'none'),
(111, 13, 'addzone', 'ps_zone', 'add', 'This will add a zone', 'admin,storeadmin'),
(112, 13, 'updatezone', 'ps_zone', 'update', 'This will update a zone', 'admin,storeadmin'),
(113, 13, 'deletezone', 'ps_zone', 'delete', 'This will delete a zone', 'admin,storeadmin'),
(114, 13, 'zoneassign', 'ps_zone', 'assign', 'This will assign a country to a zone', 'admin,storeadmin'),
(115, 1, 'writeConfig', 'ps_config', 'writeconfig', 'This will write the configuration details to virtuemart.cfg.php', 'admin'),
(116, 12839, 'carrierAdd', 'ps_shipping', 'add', '', 'admin,storeadmin'),
(117, 12839, 'carrierDelete', 'ps_shipping', 'delete', '', 'admin,storeadmin'),
(118, 12839, 'carrierUpdate', 'ps_shipping', 'update', '', 'admin,storeadmin'),
(119, 12839, 'rateAdd', 'ps_shipping', 'rate_add', '', 'admin,storeadmin'),
(120, 12839, 'rateUpdate', 'ps_shipping', 'rate_update', '', 'admin,shopadmin'),
(121, 12839, 'rateDelete', 'ps_shipping', 'rate_delete', '', 'admin,storeadmin'),
(122, 10, 'checkoutProcess', 'ps_checkout', 'process', '', 'none'),
(123, 5, 'downloadRequest', 'ps_order', 'download_request', 'This checks if the download request is valid and sends the file to the browser as file download if the request was successful, otherwise echoes an error', 'none'),
(128, 99, 'manufacturerAdd', 'ps_manufacturer', 'add', '', 'admin,storeadmin'),
(129, 99, 'manufacturerUpdate', 'ps_manufacturer', 'update', '', 'admin,storeadmin'),
(130, 99, 'manufacturerDelete', 'ps_manufacturer', 'delete', '', 'admin,storeadmin'),
(131, 99, 'manufacturercategoryAdd', 'ps_manufacturer_category', 'add', '', 'admin,storeadmin'),
(132, 99, 'manufacturercategoryUpdate', 'ps_manufacturer_category', 'update', '', 'admin,storeadmin'),
(133, 99, 'manufacturercategoryDelete', 'ps_manufacturer_category', 'delete', '', 'admin,storeadmin'),
(134, 7, 'addReview', 'ps_reviews', 'process_review', 'This lets the user add a review and rating to a product.', 'admin,storeadmin,shopper,demo'),
(135, 7, 'productReviewDelete', 'ps_reviews', 'delete_review', 'This deletes a review and from a product.', 'admin,storeadmin'),
(136, 8, 'creditcardAdd', 'ps_creditcard', 'add', 'Adds a Credit Card entry.', 'admin,storeadmin'),
(137, 8, 'creditcardUpdate', 'ps_creditcard', 'update', 'Updates a Credit Card entry.', 'admin,storeadmin'),
(138, 8, 'creditcardDelete', 'ps_creditcard', 'delete', 'Deletes a Credit Card entry.', 'admin,storeadmin'),
(139, 2, 'changePublishState', 'vmAbstractObject.class', 'handlePublishState', 'Changes the publish field of an item, so that it can be published or unpublished easily.', 'admin,storeadmin'),
(140, 2, 'export_csv', 'ps_csv', 'export_csv', 'This function exports all relevant product data to CSV.', 'admin,storeadmin'),
(141, 2, 'reorder', 'ps_product_category', 'reorder', 'Changes the list order of a category.', 'admin,storeadmin'),
(142, 2, 'discountAdd', 'ps_product_discount', 'add', 'Adds a discount.', 'admin,storeadmin'),
(143, 2, 'discountUpdate', 'ps_product_discount', 'update', 'Updates a discount.', 'admin,storeadmin'),
(144, 2, 'discountDelete', 'ps_product_discount', 'delete', 'Deletes a discount.', 'admin,storeadmin'),
(145, 8, 'shippingmethodSave', 'ps_shipping_method', 'save', '', 'admin,storeadmin'),
(146, 2, 'uploadProductFile', 'ps_product_files', 'add', 'Uploads and Adds a Product Image/File.', 'admin,storeadmin'),
(147, 2, 'updateProductFile', 'ps_product_files', 'update', 'Updates a Product Image/File.', 'admin,storeadmin'),
(148, 2, 'deleteProductFile', 'ps_product_files', 'delete', 'Deletes a Product Image/File.', 'admin,storeadmin'),
(149, 12843, 'couponAdd', 'ps_coupon', 'add_coupon_code', 'Adds a Coupon.', 'admin,storeadmin'),
(150, 12843, 'couponUpdate', 'ps_coupon', 'update_coupon', 'Updates a Coupon.', 'admin,storeadmin'),
(151, 12843, 'couponDelete', 'ps_coupon', 'remove_coupon_code', 'Deletes a Coupon.', 'admin,storeadmin'),
(152, 12843, 'couponProcess', 'ps_coupon', 'process_coupon_code', 'Processes a Coupon.', 'admin,storeadmin,shopper,demo'),
(153, 2, 'ProductTypeAdd', 'ps_product_type', 'add', 'Function add a Product Type and create new table product_type_<id>.', 'admin'),
(154, 2, 'ProductTypeUpdate', 'ps_product_type', 'update', 'Update a Product Type.', 'admin'),
(155, 2, 'ProductTypeDelete', 'ps_product_type', 'delete', 'Delete a Product Type and drop table product_type_<id>.', 'admin'),
(156, 2, 'ProductTypeReorder', 'ps_product_type', 'reorder', 'Changes the list order of a Product Type.', 'admin'),
(157, 2, 'ProductTypeAddParam', 'ps_product_type_parameter', 'add_parameter', 'Function add a Parameter into a Product Type and create new column in table product_type_<id>.', 'admin'),
(158, 2, 'ProductTypeUpdateParam', 'ps_product_type_parameter', 'update_parameter', 'Function update a Parameter in a Product Type and a column in table product_type_<id>.', 'admin'),
(159, 2, 'ProductTypeDeleteParam', 'ps_product_type_parameter', 'delete_parameter', 'Function delete a Parameter from a Product Type and drop a column in table product_type_<id>.', 'admin'),
(160, 2, 'ProductTypeReorderParam', 'ps_product_type_parameter', 'reorder_parameter', 'Changes the list order of a Parameter.', 'admin'),
(161, 2, 'productProductTypeAdd', 'ps_product_product_type', 'add', 'Add a Product into a Product Type.', 'admin,storeadmin'),
(162, 2, 'productProductTypeDelete', 'ps_product_product_type', 'delete', 'Delete a Product from a Product Type.', 'admin,storeadmin'),
(163, 1, 'stateAdd', 'ps_country', 'addState', 'Add a State ', 'storeadmin,admin'),
(164, 1, 'stateUpdate', 'ps_country', 'updateState', 'Update a state record', 'storeadmin,admin'),
(165, 1, 'stateDelete', 'ps_country', 'deleteState', 'Delete a state record', 'storeadmin,admin'),
(166, 2, 'csvFieldAdd', 'ps_csv', 'add', 'Add a CSV Field ', 'storeadmin,admin'),
(167, 2, 'csvFieldUpdate', 'ps_csv', 'update', 'Update a CSV Field', 'storeadmin,admin'),
(168, 2, 'csvFieldDelete', 'ps_csv', 'delete', 'Delete a CSV Field', 'storeadmin,admin'),
(169, 1, 'userfieldSave', 'ps_userfield', 'savefield', 'add or edit a user field', 'admin'),
(170, 1, 'userfieldDelete', 'ps_userfield', 'deletefield', '', 'admin'),
(171, 1, 'changeordering', 'vmAbstractObject.class', 'handleordering', '', 'admin'),
(172, 2, 'moveProduct', 'ps_product', 'move', 'Move products from one category to another.', 'admin,storeadmin'),
(173, 7, 'productAsk', 'ps_communication', 'mail_question', 'Lets the customer send a question about a specific product.', 'none'),
(174, 7, 'recommendProduct', 'ps_communication', 'sendRecommendation', 'Lets the customer send a recommendation about a specific product to a friend.', 'none'),
(175, 2, 'reviewUpdate', 'ps_reviews', 'update', 'Modify a review about a specific product.', 'admin'),
(176, 8, 'ExportUpdate', 'ps_export', 'update', '', 'admin,storeadmin'),
(177, 8, 'ExportAdd', 'ps_export', 'add', '', 'admin,storeadmin'),
(178, 8, 'ExportDelete', 'ps_export', 'delete', '', 'admin,storeadmin'),
(179, 1, 'writeThemeConfig', 'ps_config', 'writeThemeConfig', 'Writes a theme configuration file.', 'admin'),
(180, 1, 'usergroupAdd', 'usergroup.class', 'add', 'Add a new user group', 'admin'),
(181, 1, 'usergroupUpdate', 'usergroup.class', 'update', 'Update an user group', 'admin'),
(182, 1, 'usergroupDelete', 'usergroup.class', 'delete', 'Delete an user group', 'admin'),
(183, 1, 'setModulePermissions', 'ps_module', 'update_permissions', '', 'admin'),
(184, 1, 'setFunctionPermissions', 'ps_function', 'update_permissions', '', 'admin'),
(185, 2, 'insertDownloadsForProduct', 'ps_order', 'insert_downloads_for_product', '', 'admin'),
(186, 5, 'mailDownloadId', 'ps_order', 'mail_download_id', '', 'storeadmin,admin'),
(187, 7, 'replaceSavedCart', 'ps_cart', 'replaceCart', 'Replace cart with saved cart', 'none'),
(188, 7, 'mergeSavedCart', 'ps_cart', 'mergeSaved', 'Merge saved cart with cart', 'none'),
(189, 7, 'deleteSavedCart', 'ps_cart', 'deleteCart', 'Delete saved cart', 'none'),
(190, 7, 'savedCartDelete', 'ps_cart', 'deleteSaved', 'Delete items from saved cart', 'none'),
(191, 7, 'savedCartUpdate', 'ps_cart', 'updateSaved', 'Update saved cart items', 'none'),
(192, 1, 'getupdatepackage', 'update.class', 'getPatchPackage', 'Retrieves the Patch Package from the virtuemart.net Servers.', 'admin'),
(193, 1, 'applypatchpackage', 'update.class', 'applyPatch', 'Applies the Patch using the instructions from the update.xml file in the downloaded patch.', 'admin'),
(194, 1, 'removePatchPackage', 'update.class', 'removePackageFile', 'Removes  a Patch Package File and its extracted contents.', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_manufacturer`
--

CREATE TABLE IF NOT EXISTS `jos_vm_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `mf_name` varchar(64) DEFAULT NULL,
  `mf_email` varchar(255) DEFAULT NULL,
  `mf_desc` text,
  `mf_category_id` int(11) DEFAULT NULL,
  `mf_url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Manufacturers are those who create products' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_vm_manufacturer`
--

INSERT INTO `jos_vm_manufacturer` (`manufacturer_id`, `mf_name`, `mf_email`, `mf_desc`, `mf_category_id`, `mf_url`) VALUES
(1, 'Manufacturer', 'info@manufacturer.com', 'An example for a manufacturer', 1, 'http://www.a-url.com');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_manufacturer_category`
--

CREATE TABLE IF NOT EXISTS `jos_vm_manufacturer_category` (
  `mf_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `mf_category_name` varchar(64) DEFAULT NULL,
  `mf_category_desc` text,
  PRIMARY KEY (`mf_category_id`),
  KEY `idx_manufacturer_category_category_name` (`mf_category_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Manufacturers are assigned to these categories' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_vm_manufacturer_category`
--

INSERT INTO `jos_vm_manufacturer_category` (`mf_category_id`, `mf_category_name`, `mf_category_desc`) VALUES
(1, '-default-', 'This is the default manufacturer category');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_module`
--

CREATE TABLE IF NOT EXISTS `jos_vm_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) DEFAULT NULL,
  `module_description` text,
  `module_perms` varchar(255) DEFAULT NULL,
  `module_publish` char(1) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`module_id`),
  KEY `idx_module_name` (`module_name`),
  KEY `idx_module_list_order` (`list_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='VirtueMart Core Modules, not: Joomla modules' AUTO_INCREMENT=12844 ;

--
-- Dumping data for table `jos_vm_module`
--

INSERT INTO `jos_vm_module` (`module_id`, `module_name`, `module_description`, `module_perms`, `module_publish`, `list_order`) VALUES
(1, 'admin', '<h4>ADMINISTRATIVE USERS ONLY</h4>\r\n\r\n<p>Only used for the following:</p>\r\n<OL>\r\n\r\n<LI>User Maintenance</LI>\r\n<LI>Module Maintenance</LI>\r\n<LI>Function Maintenance</LI>\r\n</OL>\r\n', 'admin', 'Y', 1),
(2, 'product', '<p>Here you can adminster your online catalog of products.  The Product Administrator allows you to create product categories, create new products, edit product attributes, and add product items for each attribute value.</p>', 'admin,storeadmin', 'Y', 4),
(3, 'vendor', '<h4>ADMINISTRATIVE USERS ONLY</h4>\r\n<p>Here you can manage the vendors on the phpShop system.</p>', 'admin', 'Y', 6),
(4, 'shopper', '<p>Manage shoppers in your store.  Allows you to create shopper groups.  Shopper groups can be used when setting the price for a product.  This allows you to create different prices for different types of users.  An example of this would be to have a ''wholesale'' group and a ''retail'' group. </p>', 'admin,storeadmin', 'Y', 4),
(5, 'order', '<p>View Order and Update Order Status.</p>', 'admin,storeadmin', 'Y', 5),
(6, 'msgs', 'This module is unprotected an used for displaying system messages to users.  We need to have an area that does not require authorization when things go wrong.', 'none', 'N', 99),
(7, 'shop', 'This is the Washupito store module.  This is the demo store included with the phpShop distribution.', 'none', 'Y', 99),
(8, 'store', '', 'admin,storeadmin', 'Y', 2),
(9, 'account', 'This module allows shoppers to update their account information and view previously placed orders.', 'admin,storeadmin,shopper,demo', 'N', 99),
(10, 'checkout', '', 'none', 'N', 99),
(11, 'tax', 'The tax module allows you to set tax rates for states or regions within a country.  The rate is set as a decimal figure.  For example, 2 percent tax would be 0.02.', 'admin,storeadmin', 'Y', 8),
(12, 'reportbasic', 'The report basic module allows you to do queries on all orders.', 'admin,storeadmin', 'Y', 7),
(13, 'zone', 'This is the zone-shipping module. Here you can manage your shipping costs according to Zones.', 'admin,storeadmin', 'N', 9),
(12839, 'shipping', '<h4>Shipping</h4><p>Let this module calculate the shipping fees for your customers.<br>Create carriers for shipping areas and weight groups.</p>', 'admin,storeadmin', 'Y', 10),
(99, 'manufacturer', 'Manage the manufacturers of products in your store.', 'admin,storeadmin', 'Y', 12),
(12842, 'help', 'Help Module', 'admin,storeadmin', 'Y', 13),
(12843, 'coupon', 'Coupon Management', 'admin,storeadmin', 'Y', 11);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_orders`
--

CREATE TABLE IF NOT EXISTS `jos_vm_orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `order_number` varchar(32) DEFAULT NULL,
  `user_info_id` varchar(32) DEFAULT NULL,
  `order_total` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_subtotal` decimal(15,5) DEFAULT NULL,
  `order_tax` decimal(10,2) DEFAULT NULL,
  `order_tax_details` text NOT NULL,
  `order_shipping` decimal(10,2) DEFAULT NULL,
  `order_shipping_tax` decimal(10,2) DEFAULT NULL,
  `coupon_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(32) DEFAULT NULL,
  `order_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `order_currency` varchar(16) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `ship_method_id` varchar(255) DEFAULT NULL,
  `customer_note` text NOT NULL,
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`order_id`),
  KEY `idx_orders_user_id` (`user_id`),
  KEY `idx_orders_vendor_id` (`vendor_id`),
  KEY `idx_orders_order_number` (`order_number`),
  KEY `idx_orders_user_info_id` (`user_info_id`),
  KEY `idx_orders_ship_method_id` (`ship_method_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used to store all orders' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_order_history`
--

CREATE TABLE IF NOT EXISTS `jos_vm_order_history` (
  `order_status_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `order_status_code` char(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `customer_notified` int(1) DEFAULT '0',
  `comments` text,
  PRIMARY KEY (`order_status_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all actions and changes that occur to an order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_order_item`
--

CREATE TABLE IF NOT EXISTS `jos_vm_order_item` (
  `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `user_info_id` varchar(32) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_item_sku` varchar(64) NOT NULL DEFAULT '',
  `order_item_name` varchar(64) NOT NULL DEFAULT '',
  `product_quantity` int(11) DEFAULT NULL,
  `product_item_price` decimal(15,5) DEFAULT NULL,
  `product_final_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `order_item_currency` varchar(16) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `product_attribute` text,
  PRIMARY KEY (`order_item_id`),
  KEY `idx_order_item_order_id` (`order_id`),
  KEY `idx_order_item_user_info_id` (`user_info_id`),
  KEY `idx_order_item_vendor_id` (`vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all items (products) which are part of an order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_order_payment`
--

CREATE TABLE IF NOT EXISTS `jos_vm_order_payment` (
  `order_id` int(11) NOT NULL DEFAULT '0',
  `payment_method_id` int(11) DEFAULT NULL,
  `order_payment_code` varchar(30) NOT NULL DEFAULT '',
  `order_payment_number` blob,
  `order_payment_expire` int(11) DEFAULT NULL,
  `order_payment_name` varchar(255) DEFAULT NULL,
  `order_payment_log` text,
  `order_payment_trans_id` text NOT NULL,
  KEY `idx_order_payment_order_id` (`order_id`),
  KEY `idx_order_payment_method_id` (`payment_method_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The payment method that was chosen for a specific order';

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_order_status`
--

CREATE TABLE IF NOT EXISTS `jos_vm_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_status_code` char(1) NOT NULL DEFAULT '',
  `order_status_name` varchar(64) DEFAULT NULL,
  `order_status_description` text NOT NULL,
  `list_order` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_status_id`),
  KEY `idx_order_status_list_order` (`list_order`),
  KEY `idx_order_status_vendor_id` (`vendor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='All available order statuses' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `jos_vm_order_status`
--

INSERT INTO `jos_vm_order_status` (`order_status_id`, `order_status_code`, `order_status_name`, `order_status_description`, `list_order`, `vendor_id`) VALUES
(1, 'P', 'Pending', '', 1, 1),
(2, 'C', 'Confirmed', '', 2, 1),
(3, 'X', 'Cancelled', '', 3, 1),
(4, 'R', 'Refunded', '', 4, 1),
(5, 'S', 'Shipped', '', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_order_user_info`
--

CREATE TABLE IF NOT EXISTS `jos_vm_order_user_info` (
  `order_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `address_type` char(2) DEFAULT NULL,
  `address_type_name` varchar(32) DEFAULT NULL,
  `company` varchar(64) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `middle_name` varchar(32) DEFAULT NULL,
  `phone_1` varchar(32) DEFAULT NULL,
  `phone_2` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `address_1` varchar(64) NOT NULL DEFAULT '',
  `address_2` varchar(64) DEFAULT NULL,
  `city` varchar(32) NOT NULL DEFAULT '',
  `state` varchar(32) NOT NULL DEFAULT '',
  `country` varchar(32) NOT NULL DEFAULT 'US',
  `zip` varchar(32) NOT NULL DEFAULT '',
  `user_email` varchar(255) DEFAULT NULL,
  `extra_field_1` varchar(255) DEFAULT NULL,
  `extra_field_2` varchar(255) DEFAULT NULL,
  `extra_field_3` varchar(255) DEFAULT NULL,
  `extra_field_4` char(1) DEFAULT NULL,
  `extra_field_5` char(1) DEFAULT NULL,
  `bank_account_nr` varchar(32) NOT NULL DEFAULT '',
  `bank_name` varchar(32) NOT NULL DEFAULT '',
  `bank_sort_code` varchar(16) NOT NULL DEFAULT '',
  `bank_iban` varchar(64) NOT NULL DEFAULT '',
  `bank_account_holder` varchar(48) NOT NULL DEFAULT '',
  `bank_account_type` enum('Checking','Business Checking','Savings') NOT NULL DEFAULT 'Checking',
  PRIMARY KEY (`order_info_id`),
  KEY `idx_order_info_order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores the BillTo and ShipTo Information at order time' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_payment_method`
--

CREATE TABLE IF NOT EXISTS `jos_vm_payment_method` (
  `payment_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) DEFAULT NULL,
  `payment_method_name` varchar(255) DEFAULT NULL,
  `payment_class` varchar(50) NOT NULL DEFAULT '',
  `shopper_group_id` int(11) DEFAULT NULL,
  `payment_method_discount` decimal(12,2) DEFAULT NULL,
  `payment_method_discount_is_percent` tinyint(1) NOT NULL,
  `payment_method_discount_max_amount` decimal(10,2) NOT NULL,
  `payment_method_discount_min_amount` decimal(10,2) NOT NULL,
  `list_order` int(11) DEFAULT NULL,
  `payment_method_code` varchar(8) DEFAULT NULL,
  `enable_processor` char(1) DEFAULT NULL,
  `is_creditcard` tinyint(1) NOT NULL DEFAULT '0',
  `payment_enabled` char(1) NOT NULL DEFAULT 'N',
  `accepted_creditcards` varchar(128) NOT NULL DEFAULT '',
  `payment_extrainfo` text NOT NULL,
  `payment_passkey` blob NOT NULL,
  PRIMARY KEY (`payment_method_id`),
  KEY `idx_payment_method_vendor_id` (`vendor_id`),
  KEY `idx_payment_method_name` (`payment_method_name`),
  KEY `idx_payment_method_list_order` (`list_order`),
  KEY `idx_payment_method_shopper_group_id` (`shopper_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='The payment methods of your store' AUTO_INCREMENT=20 ;

--
-- Dumping data for table `jos_vm_payment_method`
--

INSERT INTO `jos_vm_payment_method` (`payment_method_id`, `vendor_id`, `payment_method_name`, `payment_class`, `shopper_group_id`, `payment_method_discount`, `payment_method_discount_is_percent`, `payment_method_discount_max_amount`, `payment_method_discount_min_amount`, `list_order`, `payment_method_code`, `enable_processor`, `is_creditcard`, `payment_enabled`, `accepted_creditcards`, `payment_extrainfo`, `payment_passkey`) VALUES
(1, 1, 'Purchase Order', '', 6, '0.00', 0, '0.00', '0.00', 4, 'PO', 'N', 0, 'N', '', '', ''),
(2, 1, 'Cash On Delivery', '', 5, '-2.00', 0, '0.00', '0.00', 5, 'COD', 'N', 0, 'Y', '', '', ''),
(3, 1, 'Credit Card', 'ps_authorize', 5, '0.00', 0, '0.00', '0.00', 0, 'AN', 'Y', 0, 'N', '1,2,6,7,', '', ''),
(4, 1, 'PayPal (new API)', 'ps_paypal_api', 5, '0.00', 0, '0.00', '0.00', 0, 'PP_API', 'P', 0, 'N', '', '', ''),
(5, 1, 'PayMate', 'ps_paymate', 5, '0.00', 0, '0.00', '0.00', 0, 'PM', 'P', 0, 'N', '', '<script type="text/javascript" language="javascript">\n  function openExpress(){\n      var url = ''https://www.paymate.com/PayMate/ExpressPayment?mid=<?php echo PAYMATE_USERNAME.\n          "&amt=".$db->f("order_total").\n   "&currency=".$_SESSION[''vendor_currency''].\n       "&ref=".$db->f("order_id").\n      "&pmt_sender_email=".$user->email.\n         "&pmt_contact_firstname=".$user->first_name.\n       "&pmt_contact_surname=".$user->last_name.\n          "&regindi_address1=".$user->address_1.\n     "&regindi_address2=".$user->address_2.\n     "&regindi_sub=".$user->city.\n       "&regindi_pcode=".$user->zip;?>''\n        var newWin = window.open(url, ''wizard'', ''height=640,width=500,scrollbars=0,toolbar=no'');\n  self.name = ''parent'';\n       newWin.focus();\n  }\n  </script>\n  <div align="center">\n  <p>\n  <a href="javascript:openExpress();">\n  <img src="https://www.paymate.com/homepage/images/butt_PayNow.gif" border="0" alt="Pay with Paymate Express">\n  <br />click here to pay your account</a>\n  </p>\n  </div>', ''),
(6, 1, 'WorldPay', 'ps_worldpay', 5, '0.00', 0, '0.00', '0.00', 0, 'WP', 'P', 0, 'N', '', '<form action="https://select.worldpay.com/wcc/purchase" method="post">\n                                                <input type=hidden name="testMode" value="100"> \n                                                  <input type="hidden" name="instId" value="<?php echo WORLDPAY_INST_ID ?>" />\n                                            <input type="hidden" name="cartId" value="<?php echo $db->f("order_id") ?>" />\n                                               <input type="hidden" name="amount" value="<?php echo $db->f("order_total") ?>" />\n                                            <input type="hidden" name="currency" value="<?php echo $_SESSION[''vendor_currency''] ?>" />\n                                           <input type="hidden" name="desc" value="Products" />\n                                            <input type="hidden" name="email" value="<?php echo $user->email?>" />\n                                                 <input type="hidden" name="address" value="<?php echo $user->address_1?>&#10<?php echo $user->address_2?>&#10<?php echo\n                                                $user->city?>&#10<?php echo $user->state?>" />\n                                             <input type="hidden" name="name" value="<?php echo $user->title?><?php echo $user->first_name?>. <?php echo $user->middle_name?><?php echo $user->last_name?>" />\n                                           <input type="hidden" name="country" value="<?php echo $user->country?>"/>\n                                              <input type="hidden" name="postcode" value="<?php echo $user->zip?>" />\n                                                <input type="hidden" name="tel"  value="<?php echo $user->phone_1?>">\n                                                  <input type="hidden" name="withDelivery"  value="true">\n                                                 <br />\n                                                <input type="submit" value ="PROCEED TO PAYMENT PAGE" />\n                                                  </form>', ''),
(7, 1, '2Checkout', 'ps_twocheckout', 5, '0.00', 0, '0.00', '0.00', 0, '2CO', 'P', 0, 'N', '', '<?php\n      $q  = "SELECT * FROM #__users WHERE user_info_id=''".$db->f("user_info_id")."''"; \n    $dbbt = new ps_DB;\n   $dbbt->setQuery($q);\n        $dbbt->query();\n      $dbbt->next_record(); \n       // Get ship_to information\n    if( $db->f("user_info_id") != $dbbt->f("user_info_id")) {\n         $q2  = "SELECT * FROM #__vm_user_info WHERE user_info_id=''".$db->f("user_info_id")."''"; \n    $dbst = new ps_DB;\n   $dbst->setQuery($q2);\n       $dbst->query();\n      $dbst->next_record();\n      }\n     else  {\n         $dbst = $dbbt;\n    }\n                     \n      //Authnet vars to send\n        $formdata = array (\n   ''x_login'' => TWOCO_LOGIN,\n   ''x_email_merchant'' => ((TWOCO_MERCHANT_EMAIL == ''True'') ? ''TRUE'' : ''FALSE''),\n                  \n      // Customer Name and Billing Address\n  ''x_first_name'' => $dbbt->f("first_name"),\n        ''x_last_name'' => $dbbt->f("last_name"),\n  ''x_company'' => $dbbt->f("company"),\n      ''x_address'' => $dbbt->f("address_1"),\n    ''x_city'' => $dbbt->f("city"),\n    ''x_state'' => $dbbt->f("state"),\n  ''x_zip'' => $dbbt->f("zip"),\n      ''x_country'' => $dbbt->f("country"),\n      ''x_phone'' => $dbbt->f("phone_1"),\n        ''x_fax'' => $dbbt->f("fax"),\n      ''x_email'' => $dbbt->f("email"),\n \n       // Customer Shipping Address\n  ''x_ship_to_first_name'' => $dbst->f("first_name"),\n        ''x_ship_to_last_name'' => $dbst->f("last_name"),\n  ''x_ship_to_company'' => $dbst->f("company"),\n      ''x_ship_to_address'' => $dbst->f("address_1"),\n    ''x_ship_to_city'' => $dbst->f("city"),\n    ''x_ship_to_state'' => $dbst->f("state"),\n  ''x_ship_to_zip'' => $dbst->f("zip"),\n      ''x_ship_to_country'' => $dbst->f("country"),\n     \n       ''x_invoice_num'' => $db->f("order_number"),\n       ''x_receipt_link_url'' => SECUREURL."2checkout_notify.php"\n  );\n    \n     if( TWOCO_TESTMODE == "Y" )\n   $formdata[''demo''] = "Y";\n       \n       $version = "2";\n    $url = "https://www2.2checkout.com/2co/buyer/purchase";\n    $formdata[''x_amount''] = number_format($db->f("order_total"), 2, ''.'', '''');\n \n       //build the post string\n       $poststring = '''';\n  foreach($formdata AS $key => $val){\n          $poststring .= "<input type=''hidden'' name=''$key'' value=''$val'' />\n ";\n    }\n    \n      ?>\n    <form action="<?php echo $url ?>" method="post" target="_blank">\n       <?php echo $poststring ?>\n    <p>Click on the Image below to pay...</p>\n     <input type="image" name="submit" src="https://www.2checkout.com/images/buy_logo.gif" border="0" alt="Make payments with 2Checkout, it''s fast and secure!" title="Pay your Order with 2Checkout, it''s fast and secure!" />\n      </form>', ''),
(8, 1, 'NoChex', 'ps_nochex', 5, '0.00', 0, '0.00', '0.00', 0, 'NOCHEX', 'P', 0, 'N', '', '<form action="https://www.nochex.com/nochex.dll/checkout" method=post target="_blank"> \n                                                                                     <input type="hidden" name="email" value="<?php echo NOCHEX_EMAIL ?>" />\n                                                                                 <input type="hidden" name="amount" value="<?php printf("%.2f", $db->f("order_total"))?>" />\n                                                                                        <input type="hidden" name="ordernumber" value="<?php $db->p("order_id") ?>" />\n                                                                                       <input type="hidden" name="logo" value="<?php echo $vendor_image_url ?>" />\n                                                                                    <input type="hidden" name="returnurl" value="<?php echo SECUREURL ."index.php?option=com_virtuemart&amp;page=checkout.result&amp;order_id=".$db->f("order_id") ?>" />\n                                                                                      <input type="image" name="submit" src="http://www.nochex.com/web/images/paymeanimated.gif"> \n                                                                                    </form>', ''),
(9, 1, 'Credit Card (PayMeNow)', 'ps_paymenow', 5, '0.00', 0, '0.00', '0.00', 0, 'PN', 'Y', 0, 'N', '1,2,3,', '', ''),
(10, 1, 'eWay', 'ps_eway', 5, '0.00', 0, '0.00', '0.00', 0, 'EWAY', 'Y', 0, 'N', '', '', ''),
(11, 1, 'eCheck.net', 'ps_echeck', 5, '0.00', 0, '0.00', '0.00', 0, 'ECK', 'B', 0, 'N', '', '', ''),
(12, 1, 'Credit Card (eProcessingNetwork)', 'ps_epn', 5, '0.00', 0, '0.00', '0.00', 0, 'EPN', 'Y', 0, 'N', '1,2,3,', '', ''),
(13, 1, 'iKobo', '', 5, '0.00', 0, '0.00', '0.00', 0, 'IK', 'P', 0, 'N', '', '<form action="https://www.iKobo.com/store/index.php" method="post"> \n  <input type="hidden" name="cmd" value="cart" />Click on the image below to Pay with iKobo\n  <input type="image" src="https://www.ikobo.com/merchant/buttons/ikobo_pay1.gif" name="submit" alt="Pay with iKobo" /> \n  <input type="hidden" name="poid" value="USER_ID" /> \n  <input type="hidden" name="item" value="Order: <?php $db->p("order_id") ?>" /> \n  <input type="hidden" name="price" value="<?php printf("%.2f", $db->f("order_total"))?>" /> \n  <input type="hidden" name="firstname" value="<?php echo $user->first_name?>" /> \n  <input type="hidden" name="lastname" value="<?php echo $user->last_name?>" /> \n  <input type="hidden" name="address" value="<?php echo $user->address_1?>&#10<?php echo $user->address_2?>" /> \n  <input type="hidden" name="city" value="<?php echo $user->city?>" /> \n  <input type="hidden" name="state" value="<?php echo $user->state?>" /> \n  <input type="hidden" name="zip" value="<?php echo $user->zip?>" /> \n  <input type="hidden" name="phone" value="<?php echo $user->phone_1?>" /> \n  <input type="hidden" name="email" value="<?php echo $user->email?>" /> \n  </form> >', ''),
(14, 1, 'iTransact', '', 5, '0.00', 0, '0.00', '0.00', 0, 'ITR', 'P', 0, 'N', '', '<?php\n  //your iTransact account details\n  $vendorID = "XXXXX";\n  global $vendor_name;\n  $mername = $vendor_name;\n  \n  //order details\n  $total = $db->f("order_total");$first_name = $user->first_name;$last_name = $user->last_name;$address = $user->address_1;$city = $user->city;$state = $user->state;$zip = $user->zip;$country = $user->country;$email = $user->email;$phone = $user->phone_1;$home_page = $mosConfig_live_site."/index.php";$ret_addr = $mosConfig_live_site."/index.php";$cc_payment_image = $mosConfig_live_site."/components/com_virtuemart/shop_image/ps_image/cc_payment.jpg";\n  ?>\n  <form action="https://secure.paymentclearing.com/cgi-bin/mas/split.cgi" method="POST"> \n                <input type="hidden" name="vendor_id" value="<?php echo $vendorID; ?>" />\n              <input type="hidden" name="home_page" value="<?php echo $home_page; ?>" />\n             <input type="hidden" name="ret_addr" value="<?php echo $ret_addr; ?>" />\n               <input type="hidden" name="mername" value="<?php echo $mername; ?>" />\n         <!--Enter text in the next value that should appear on the bottom of the order form.-->\n               <INPUT type="hidden" name="mertext" value="" />\n         <!--If you are accepting checks, enter the number 1 in the next value.  Enter the number 0 if you are not accepting checks.-->\n                <INPUT type="hidden" name="acceptchecks" value="0" />\n           <!--Enter the number 1 in the next value if you want to allow pre-registered customers to pay with a check.  Enter the number 0 if not.-->\n            <INPUT type="hidden" name="allowreg" value="0" />\n               <!--If you are set up with Check Guarantee, enter the number 1 in the next value.  Enter the number 0 if not.-->\n              <INPUT type="hidden" name="checkguar" value="0" />\n              <!--Enter the number 1 in the next value if you are accepting credit card payments.  Enter the number zero if not.-->\n         <INPUT type="hidden" name="acceptcards" value="1">\n              <!--Enter the number 1 in the next value if you want to allow a separate mailing address for credit card orders.  Enter the number 0 if not.-->\n               <INPUT type="hidden" name="altaddr" value="0" />\n                <!--Enter the number 1 in the next value if you want the customer to enter the CVV number for card orders.  Enter the number 0 if not.-->\n             <INPUT type="hidden" name="showcvv" value="1" />\n                \n              <input type="hidden" name="1-desc" value="Order Total" />\n               <input type="hidden" name="1-cost" value="<?php echo $total; ?>" />\n            <input type="hidden" name="1-qty" value="1" />\n          <input type="hidden" name="total" value="<?php echo $total; ?>" />\n             <input type="hidden" name="first_name" value="<?php echo $first_name; ?>" />\n           <input type="hidden" name="last_name" value="<?php echo $last_name; ?>" />\n             <input type="hidden" name="address" value="<?php echo $address; ?>" />\n         <input type="hidden" name="city" value="<?php echo $city; ?>" />\n               <input type="hidden" name="state" value="<?php echo $state; ?>" />\n             <input type="hidden" name="zip" value="<?php echo $zip; ?>" />\n         <input type="hidden" name="country" value="<?php echo $country; ?>" />\n         <input type="hidden" name="phone" value="<?php echo $phone; ?>" />\n             <input type="hidden" name="email" value="<?php echo $email; ?>" />\n             <p><input type="image" alt="Process Secure Credit Card Transaction using iTransact" border="0" height="60" width="210" src="<?php echo $cc_payment_image; ?>" /> </p>\n            </form>', ''),
(15, 1, 'Verisign PayFlow Pro', 'payflow_pro', 5, '0.00', 0, '0.00', '0.00', 0, 'PFP', 'Y', 0, 'N', '1,2,6,7,', '', ''),
(16, 1, 'Dankort/PBS via ePay', 'ps_epay', 5, '0.00', 0, '0.00', '0.00', 0, 'EPAY', 'P', 0, 'N', '', '<?php\r\nrequire_once(CLASSPATH ."payment/ps_epay.cfg.php");\r\n$url=basename($mosConfig_live_site);\r\nfunction get_iso_code($code) {\r\nswitch ($code) {\r\ncase "ADP": return "020"; break;\r\ncase "AED": return "784"; break;\r\ncase "AFA": return "004"; break;\r\ncase "ALL": return "008"; break;\r\ncase "AMD": return "051"; break;\r\ncase "ANG": return "532"; break;\r\ncase "AOA": return "973"; break;\r\ncase "ARS": return "032"; break;\r\ncase "AUD": return "036"; break;\r\ncase "AWG": return "533"; break;\r\ncase "AZM": return "031"; break;\r\ncase "BAM": return "977"; break;\r\ncase "BBD": return "052"; break;\r\ncase "BDT": return "050"; break;\r\ncase "BGL": return "100"; break;\r\ncase "BGN": return "975"; break;\r\ncase "BHD": return "048"; break;\r\ncase "BIF": return "108"; break;\r\ncase "BMD": return "060"; break;\r\ncase "BND": return "096"; break;\r\ncase "BOB": return "068"; break;\r\ncase "BOV": return "984"; break;\r\ncase "BRL": return "986"; break;\r\ncase "BSD": return "044"; break;\r\ncase "BTN": return "064"; break;\r\ncase "BWP": return "072"; break;\r\ncase "BYR": return "974"; break;\r\ncase "BZD": return "084"; break;\r\ncase "CAD": return "124"; break;\r\ncase "CDF": return "976"; break;\r\ncase "CHF": return "756"; break;\r\ncase "CLF": return "990"; break;\r\ncase "CLP": return "152"; break;\r\ncase "CNY": return "156"; break;\r\ncase "COP": return "170"; break;\r\ncase "CRC": return "188"; break;\r\ncase "CUP": return "192"; break;\r\ncase "CVE": return "132"; break;\r\ncase "CYP": return "196"; break;\r\ncase "CZK": return "203"; break;\r\ncase "DJF": return "262"; break;\r\ncase "DKK": return "208"; break;\r\ncase "DOP": return "214"; break;\r\ncase "DZD": return "012"; break;\r\ncase "ECS": return "218"; break;\r\ncase "ECV": return "983"; break;\r\ncase "EEK": return "233"; break;\r\ncase "EGP": return "818"; break;\r\ncase "ERN": return "232"; break;\r\ncase "ETB": return "230"; break;\r\ncase "EUR": return "978"; break;\r\ncase "FJD": return "242"; break;\r\ncase "FKP": return "238"; break;\r\ncase "GBP": return "826"; break;\r\ncase "GEL": return "981"; break;\r\ncase "GHC": return "288"; break;\r\ncase "GIP": return "292"; break;\r\ncase "GMD": return "270"; break;\r\ncase "GNF": return "324"; break;\r\ncase "GTQ": return "320"; break;\r\ncase "GWP": return "624"; break;\r\ncase "GYD": return "328"; break;\r\ncase "HKD": return "344"; break;\r\ncase "HNL": return "340"; break;\r\ncase "HRK": return "191"; break;\r\ncase "HTG": return "332"; break;\r\ncase "HUF": return "348"; break;\r\ncase "IDR": return "360"; break;\r\ncase "ILS": return "376"; break;\r\ncase "INR": return "356"; break;\r\ncase "IQD": return "368"; break;\r\ncase "IRR": return "364"; break;\r\ncase "ISK": return "352"; break;\r\ncase "JMD": return "388"; break;\r\ncase "JOD": return "400"; break;\r\ncase "JPY": return "392"; break;\r\ncase "KES": return "404"; break;\r\ncase "KGS": return "417"; break;\r\ncase "KHR": return "116"; break;\r\ncase "KMF": return "174"; break;\r\ncase "KPW": return "408"; break;\r\ncase "KRW": return "410"; break;\r\ncase "KWD": return "414"; break;\r\ncase "KYD": return "136"; break;\r\ncase "KZT": return "398"; break;\r\ncase "LAK": return "418"; break;\r\ncase "LBP": return "422"; break;\r\ncase "LKR": return "144"; break;\r\ncase "LRD": return "430"; break;\r\ncase "LSL": return "426"; break;\r\ncase "LTL": return "440"; break;\r\ncase "LVL": return "428"; break;\r\ncase "LYD": return "434"; break;\r\ncase "MAD": return "504"; break;\r\ncase "MDL": return "498"; break;\r\ncase "MGF": return "450"; break;\r\ncase "MKD": return "807"; break;\r\ncase "MMK": return "104"; break;\r\ncase "MNT": return "496"; break;\r\ncase "MOP": return "446"; break;\r\ncase "MRO": return "478"; break;\r\ncase "MTL": return "470"; break;\r\ncase "MUR": return "480"; break;\r\ncase "MVR": return "462"; break;\r\ncase "MWK": return "454"; break;\r\ncase "MXN": return "484"; break;\r\ncase "MXV": return "979"; break;\r\ncase "MYR": return "458"; break;\r\ncase "MZM": return "508"; break;\r\ncase "NAD": return "516"; break;\r\ncase "NGN": return "566"; break;\r\ncase "NIO": return "558"; break;\r\ncase "NOK": return "578"; break;\r\ncase "NPR": return "524"; break;\r\ncase "NZD": return "554"; break;\r\ncase "OMR": return "512"; break;\r\ncase "PAB": return "590"; break;\r\ncase "PEN": return "604"; break;\r\ncase "PGK": return "598"; break;\r\ncase "PHP": return "608"; break;\r\ncase "PKR": return "586"; break;\r\ncase "PLN": return "985"; break;\r\ncase "PYG": return "600"; break;\r\ncase "QAR": return "634"; break;\r\ncase "ROL": return "642"; break;\r\ncase "RUB": return "643"; break;\r\ncase "RUR": return "810"; break;\r\ncase "RWF": return "646"; break;\r\ncase "SAR": return "682"; break;\r\ncase "SBD": return "090"; break;\r\ncase "SCR": return "690"; break;\r\ncase "SDD": return "736"; break;\r\ncase "SEK": return "752"; break;\r\ncase "SGD": return "702"; break;\r\ncase "SHP": return "654"; break;\r\ncase "SIT": return "705"; break;\r\ncase "SKK": return "703"; break;\r\ncase "SLL": return "694"; break;\r\ncase "SOS": return "706"; break;\r\ncase "SRG": return "740"; break;\r\ncase "STD": return "678"; break;\r\ncase "SVC": return "222"; break;\r\ncase "SYP": return "760"; break;\r\ncase "SZL": return "748"; break;\r\ncase "THB": return "764"; break;\r\ncase "TJS": return "972"; break;\r\ncase "TMM": return "795"; break;\r\ncase "TND": return "788"; break;\r\ncase "TOP": return "776"; break;\r\ncase "TPE": return "626"; break;\r\ncase "TRL": return "792"; break;\r\ncase "TRY": return "949"; break;\r\ncase "TTD": return "780"; break;\r\ncase "TWD": return "901"; break;\r\ncase "TZS": return "834"; break;\r\ncase "UAH": return "980"; break;\r\ncase "UGX": return "800"; break;\r\ncase "USD": return "840"; break;\r\ncase "UYU": return "858"; break;\r\ncase "UZS": return "860"; break;\r\ncase "VEB": return "862"; break;\r\ncase "VND": return "704"; break;\r\ncase "VUV": return "548"; break;\r\ncase "XAF": return "950"; break;\r\ncase "XCD": return "951"; break;\r\ncase "XOF": return "952"; break;\r\ncase "XPF": return "953"; break;\r\ncase "YER": return "886"; break;\r\ncase "YUM": return "891"; break;\r\ncase "ZAR": return "710"; break;\r\ncase "ZMK": return "894"; break;\r\ncase "ZWD": return "716"; break;\r\n}\r\nreturn "XXX"; // return invalid code if the currency is not found \r\n}\r\n\r\nfunction calculateePayCurrency($order_id)\r\n{\r\n$db = new ps_DB;\r\n$currency_code = "208";\r\n$q = "SELECT order_currency FROM #__vm_orders where order_id = " . $order_id;\r\n$db->query($q);\r\nif ($db->next_record()) {\r\n	$currency_code = get_iso_code($db->f("order_currency"));\r\n}\r\nreturn $currency_code;\r\n}\r\n echo $VM_LANG->_(''VM_CHECKOUT_EPAY_PAYMENT_CHECKOUT_HEADER'');\r\n?>\r\n<script type="text/javascript" src="http://www.epay.dk/js/standardwindow.js"></script>\r\n<script type="text/javascript">\r\nfunction printCard(cardId)\r\n{\r\ndocument.write ("<table border=0 cellspacing=10 cellpadding=10>");\r\nswitch (cardId) {\r\ncase 1: document.write ("<input type=hidden name=cardtype value=1>"); break;\r\ncase 2: document.write ("<input type=hidden name=cardtype value=2>"); break;\r\ncase 3: document.write ("<input type=hidden name=cardtype value=3>"); break;\r\ncase 4: document.write ("<input type=hidden name=cardtype value=4>"); break;\r\ncase 5: document.write ("<input type=hidden name=cardtype value=5>"); break;\r\ncase 6: document.write ("<input type=hidden name=cardtype value=6>"); break;\r\ncase 7: document.write ("<input type=hidden name=cardtype value=7>"); break;\r\ncase 8: document.write ("<input type=hidden name=cardtype value=8>"); break;\r\ncase 9: document.write ("<input type=hidden name=cardtype value=9>"); break;\r\ncase 10: document.write ("<input type=hidden name=cardtype value=10>"); break;\r\ncase 12: document.write ("<input type=hidden name=cardtype value=12>"); break;\r\ncase 13: document.write ("<input type=hidden name=cardtype value=13>"); break;\r\ncase 14: document.write ("<input type=hidden name=cardtype value=14>"); break;\r\ncase 15: document.write ("<input type=hidden name=cardtype value=15>"); break;\r\ncase 16: document.write ("<input type=hidden name=cardtype value=16>"); break;\r\ncase 17: document.write ("<input type=hidden name=cardtype value=17>"); break;\r\ncase 18: document.write ("<input type=hidden name=cardtype value=18>"); break;\r\ncase 19: document.write ("<input type=hidden name=cardtype value=19>"); break;\r\ncase 21: document.write ("<input type=hidden name=cardtype value=21>"); break;\r\ncase 22: document.write ("<input type=hidden name=cardtype value=22>"); break;\r\n}\r\ndocument.write ("</table>");\r\n}\r\n</script>\r\n<form action="https://ssl.ditonlinebetalingssystem.dk/popup/default.asp" method="post" name="ePay" target="ePay_window" id="ePay">\r\n<input type="hidden" name="merchantnumber" value="<?php echo EPAY_MERCHANTNUMBER ?>">\r\n<input type="hidden" name="amount" value="<?php echo round($db->f("order_total")*100, 2 ) ?>">\r\n<input type="hidden" name="currency" value="<?php echo calculateePayCurrency($order_id)?>">\r\n<input type="hidden" name="orderid" value="<?php echo $order_id ?>">\r\n<input type="hidden" name="ordretext" value="">\r\n<?php \r\nif (EPAY_CALLBACK == "1")\r\n{\r\n	echo ''<input type="hidden" name="callbackurl" value="'' . $mosConfig_live_site . ''/index.php?page=checkout.epay_result&accept=1&sessionid='' . $sessionid . ''&option=com_virtuemart&Itemid=1">'';\r\n}\r\n?>\r\n<input type="hidden" name="accepturl" value="<?php echo $mosConfig_live_site ?>/index.php?page=checkout.epay_result&accept=1&sessionid=<?php echo $sessionid ?>&option=com_virtuemart&Itemid=1">\r\n<input type="hidden" name="declineurl" value="<?php echo $mosConfig_live_site ?>/index.php?page=checkout.epay_result&accept=0&sessionid=<?php echo $sessionid ?>&option=com_virtuemart&Itemid=1">\r\n<input type="hidden" name="group" value="<?php echo EPAY_GROUP ?>">\r\n<input type="hidden" name="instant" value="<?php echo EPAY_INSTANT_CAPTURE ?>">\r\n<input type="hidden" name="language" value="<?php echo EPAY_LANGUAGE ?>">\r\n<input type="hidden" name="authsms" value="<?php echo EPAY_AUTH_SMS ?>">\r\n<input type="hidden" name="authmail" value="<?php echo EPAY_AUTH_MAIL . (strlen(EPAY_AUTH_MAIL) > 0 && EPAY_AUTHEMAILCUSTOMER == 1 ? ";" : "") . (EPAY_AUTHEMAILCUSTOMER == 1 ? $user->user_email : ""); ?>">\r\n<input type="hidden" name="windowstate" value="<?php echo EPAY_WINDOW_STATE ?>">\r\n<input type="hidden" name="use3D" value="<?php echo EPAY_3DSECURE ?>">\r\n<input type="hidden" name="addfee" value="<?php echo EPAY_ADDFEE ?>">\r\n<input type="hidden" name="subscription" value="<?php echo EPAY_SUBSCRIPTION ?>">\r\n<input type="hidden" name="MD5Key" value="<?php if (EPAY_MD5_TYPE == 2) echo md5( calculateePayCurrency($order_id) . round($db->f("order_total")*100, 2 ) . $order_id  . EPAY_MD5_KEY)?>">\r\n<?php\r\nif (EPAY_CARDTYPES_1 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(1)</script>";\r\nif (EPAY_CARDTYPES_2 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(2)</script>";\r\nif (EPAY_CARDTYPES_3 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(3)</script>";\r\nif (EPAY_CARDTYPES_4 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(4)</script>";\r\nif (EPAY_CARDTYPES_5 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(5)</script>";\r\nif (EPAY_CARDTYPES_6 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(6)</script>";\r\nif (EPAY_CARDTYPES_7 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(7)</script>";\r\nif (EPAY_CARDTYPES_8 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(8)</script>";\r\nif (EPAY_CARDTYPES_9 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(9)</script>";\r\nif (EPAY_CARDTYPES_10 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(10)</script>";\r\nif (EPAY_CARDTYPES_11 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(11)</script>";\r\nif (EPAY_CARDTYPES_12 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(12)</script>";\r\nif (EPAY_CARDTYPES_14 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(14)</script>";\r\nif (EPAY_CARDTYPES_15 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(15)</script>";\r\nif (EPAY_CARDTYPES_16 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(16)</script>";\r\nif (EPAY_CARDTYPES_17 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(17)</script>";\r\nif (EPAY_CARDTYPES_18 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(18)</script>";\r\nif (EPAY_CARDTYPES_19 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(19)</script>";\r\nif (EPAY_CARDTYPES_21 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(21)</script>";\r\nif (EPAY_CARDTYPES_22 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(22)</script>";;\r\n?>\r\n</form>\r\n<script>open_ePay_window();</script>\r\n<br>\r\n<table border="0" width="100%"><tr><td><input type="button" onClick="open_ePay_window()" value="<?php echo $VM_LANG->_(''VM_CHECKOUT_EPAY_BUTTON_OPEN_WINDOW'') ?>"></td><td width="100%" id="flashLoader"></td></tr></table><br><br><br>\r\n<?php echo $VM_LANG->_(''VM_CHECKOUT_EPAY_PAYMENT_CHECKOUT_FOOTER'') ?>\r\n<br><br>\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/epay_logo.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/mastercard_securecode.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/pci.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/verisign_secure.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/visa_secure.gif" border="0">&nbsp;&nbsp;&nbsp;;', ''),
(17, 1, 'PaySbuy', 'ps_paysbuy', 5, '0.00', 0, '0.00', '0.00', 0, 'PSB', 'P', 0, 'N', '', '', ''),
(18, 1, 'PayPal', 'ps_paypal', 5, '0.00', 0, '0.00', '0.00', 0, 'PP', 'P', 0, 'N', '', '<?php\r\n$db1 = new ps_DB();\r\n$q = "SELECT country_2_code FROM #__vm_country WHERE country_3_code=''".$user->country."'' ORDER BY country_2_code ASC";\r\n$db1->query($q);\r\n\r\n$url = "https://www.paypal.com/cgi-bin/webscr";\r\n$tax_total = $db->f("order_tax") + $db->f("order_shipping_tax");\r\n$discount_total = $db->f("coupon_discount") + $db->f("order_discount");\r\n$post_variables = Array(\r\n"cmd" => "_ext-enter",\r\n"redirect_cmd" => "_xclick",\r\n"upload" => "1",\r\n"business" => PAYPAL_EMAIL,\r\n"receiver_email" => PAYPAL_EMAIL,\r\n"item_name" => $VM_LANG->_(''PHPSHOP_ORDER_PRINT_PO_NUMBER'').": ". $db->f("order_id"),\r\n"order_id" => $db->f("order_id"),\r\n"invoice" => $db->f("order_number"),\r\n"amount" => round( $db->f("order_total")-$db->f("order_shipping"), 2),\r\n"shipping" => sprintf("%.2f", $db->f("order_shipping")),\r\n"currency_code" => $_SESSION[''vendor_currency''],\r\n\r\n"address_override" => "1",\r\n"first_name" => $dbbt->f(''first_name''),\r\n"last_name" => $dbbt->f(''last_name''),\r\n"address1" => $dbbt->f(''address_1''),\r\n"address2" => $dbbt->f(''address_2''),\r\n"zip" => $dbbt->f(''zip''),\r\n"city" => $dbbt->f(''city''),\r\n"state" => $dbbt->f(''state''),\r\n"country" => $db1->f(''country_2_code''),\r\n"email" => $dbbt->f(''user_email''),\r\n"night_phone_b" => $dbbt->f(''phone_1''),\r\n"cpp_header_image" => $vendor_image_url,\r\n\r\n"return" => SECUREURL ."index.php?option=com_virtuemart&page=checkout.result&order_id=".$db->f("order_id"),\r\n"notify_url" => SECUREURL ."administrator/components/com_virtuemart/notify.php",\r\n"cancel_return" => SECUREURL ."index.php",\r\n"undefined_quantity" => "0",\r\n\r\n"test_ipn" => PAYPAL_DEBUG,\r\n"pal" => "NRUBJXESJTY24",\r\n"no_shipping" => "1",\r\n"no_note" => "1"\r\n);\r\nif( $page == "checkout.thankyou" ) {\r\n$query_string = "?";\r\nforeach( $post_variables as $name => $value ) {\r\n$query_string .= $name. "=" . urlencode($value) ."&";\r\n}\r\nvmRedirect( $url . $query_string );\r\n} else {\r\necho ''<form action="''.$url.''" method="post" target="_blank">'';\r\necho ''<input type="image" name="submit" src="https://www.paypal.com/en_US/i/btn/x-click-but6.gif" alt="Click to pay with PayPal - it is fast, free and secure!" />'';\r\n\r\nforeach( $post_variables as $name => $value ) {\r\necho ''<input type="hidden" name="''.$name.''" value="''.htmlspecialchars($value).''" />'';\r\n}\r\necho ''</form>'';\r\n\r\n}\r\n?>', ''),
(19, 1, 'MerchantWarrior', 'ps_merchantwarrior', 5, '0.00', 0, '0.00', '0.00', 1, 'MW', 'Y', 1, 'N', '1,2,3,5,7,', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `product_parent_id` int(11) NOT NULL DEFAULT '0',
  `product_sku` varchar(64) NOT NULL DEFAULT '',
  `product_s_desc` varchar(255) DEFAULT NULL,
  `product_desc` text,
  `product_thumb_image` varchar(255) DEFAULT NULL,
  `product_full_image` varchar(255) DEFAULT NULL,
  `product_publish` char(1) DEFAULT NULL,
  `product_weight` decimal(10,4) DEFAULT NULL,
  `product_weight_uom` varchar(32) DEFAULT 'pounds.',
  `product_length` decimal(10,4) DEFAULT NULL,
  `product_width` decimal(10,4) DEFAULT NULL,
  `product_height` decimal(10,4) DEFAULT NULL,
  `product_lwh_uom` varchar(32) DEFAULT 'inches',
  `product_url` varchar(255) DEFAULT NULL,
  `product_in_stock` int(11) NOT NULL DEFAULT '0',
  `product_available_date` int(11) DEFAULT NULL,
  `product_availability` varchar(56) NOT NULL DEFAULT '',
  `product_special` char(1) DEFAULT NULL,
  `product_discount_id` int(11) DEFAULT NULL,
  `ship_code_id` int(11) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `product_name` varchar(64) DEFAULT NULL,
  `product_sales` int(11) NOT NULL DEFAULT '0',
  `attribute` text,
  `custom_attribute` text NOT NULL,
  `product_tax_id` int(11) DEFAULT NULL,
  `product_unit` varchar(32) DEFAULT NULL,
  `product_packaging` int(11) DEFAULT NULL,
  `child_options` varchar(45) DEFAULT NULL,
  `quantity_options` varchar(45) DEFAULT NULL,
  `child_option_ids` varchar(45) DEFAULT NULL,
  `product_order_levels` varchar(45) DEFAULT NULL,
  `promo` int(11) DEFAULT '0',
  PRIMARY KEY (`product_id`),
  KEY `idx_product_vendor_id` (`vendor_id`),
  KEY `idx_product_product_parent_id` (`product_parent_id`),
  KEY `idx_product_sku` (`product_sku`),
  KEY `idx_product_ship_code_id` (`ship_code_id`),
  KEY `idx_product_name` (`product_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='All products are stored here.' AUTO_INCREMENT=862 ;

--
-- Dumping data for table `jos_vm_product`
--

INSERT INTO `jos_vm_product` (`product_id`, `vendor_id`, `product_parent_id`, `product_sku`, `product_s_desc`, `product_desc`, `product_thumb_image`, `product_full_image`, `product_publish`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_available_date`, `product_availability`, `product_special`, `product_discount_id`, `ship_code_id`, `cdate`, `mdate`, `product_name`, `product_sales`, `attribute`, `custom_attribute`, `product_tax_id`, `product_unit`, `product_packaging`, `child_options`, `quantity_options`, `child_option_ids`, `product_order_levels`, `promo`) VALUES
(408, 1, 0, 'LPS120', 'Universal power supply for any electronic sensitive devices.', '', 'resized/LPS120_Multiple__54606076a7fa2_90x90.jpg', 'LPS120_Multiple__54606076ca4c1.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1183782015, 1415603184, 'Multiple Power Supply (Exagerate Brand)', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(292, 1, 0, 'CT1011-100X-20', '"Data Cable Brand:\r\nPure Copper\r\n100% Tested\r\nMachine Crimp/ Molded', '', 'resized/CT1011_100X_20_P_546069e645a4b_90x90.jpg', 'CT1011_100X_20_P_546069e663f02.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179811244, 1415606473, 'CT1011-100X-20 Patch Cable 10 Meters Cat 5e', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(293, 1, 0, 'CT1011-010X-30', '"Data Cable Brand:\r\nPure Copper\r\n100% Tested\r\nMachine Crimp/ Molded', '', 'resized/CT1011_010X_30_P_54606a3550bca_90x90.jpg', 'CT1011_010X_30_P_54606a35bd242.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179811341, 1415606119, 'CT1011-010X-30 Patch Cable 1 Meter Cat 6', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(294, 1, 0, 'CT1011-020X-30', '"Data Cable Brand:\r\nPure Copper\r\n100% Tested\r\nMachine Crimp/ Molded', '', 'resized/CT1011_020X_30_P_54606a7b3f7fb_90x90.jpg', 'CT1011_020X_30_P_54606a7bba31f.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179811362, 1415606128, 'CT1011-020X-30 Patch Cable 2 Meters Cat 6', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(295, 1, 0, 'CT1011-030X-30', '"Data Cable Brand:\r\nPure Copper\r\n100% Tested\r\nMachine Crimp/ Molded', '', 'resized/CT1011_030X_30_P_54606c6d04843_90x90.jpg', 'CT1011_030X_30_P_54606c6d92b79.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179811411, 1415606137, 'CT1011-030X-30 Patch Cable 3 Meters Cat 6', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(296, 1, 0, 'CT1011-050X-30', '"Data Cable Brand:\r\nPure Copper\r\n100% Tested\r\nMachine Crimp/ Molded', '', 'resized/CT1011_050X_30_P_54606ca7e1a80_90x90.jpg', 'CT1011_050X_30_P_54606ca867637.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179811493, 1415606159, 'CT1011-050X-30 Patch Cable 5 Meters Cat 6', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(297, 1, 0, 'TC700', 'UL / CSA approved  EIA / TIA verified 1000 ft. per Roll  in Tangle Free box', '', 'resized/UTP_AWG_24_Cat_5_5460674a1b630_90x90.jpg', 'UTP_AWG_24_Cat_5_5460674a363f1.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179811578, 1415604409, 'UTP AWG#24 Cat 5e Indoor 4Pairs PVC Cable 1,000ft/ Roll', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(298, 1, 0, 'TC600', 'UL / CSA approved EIA / TIA verified 1000 ft. per Roll in Tangle Free box ( not available now )\r\n                                    “DATA CABLE” brand  STRANDED', '', 'resized/UTP_CAT._5e_STRA_5460683058cd2_90x90.jpg', 'UTP_CAT._5e_STRA_54606830665be.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179811779, 1415604439, 'UTP CAT. 5e STRANDED', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(300, 1, 0, 'TA1288-BR50', '50 micron gold plated conductors', '<p>RJ-45 Connector ( 8P8C ) 50 Micron Gold Plated</p>', 'resized/RJ___45_Connecto_4caa955288619_90x90.jpg', 'RJ___45_Connecto_4caa9552a97bd.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179811884, 1286247762, 'RJ - 45 Connector  ( 8P8C )', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(301, 1, 0, 'CB020M-25', 'length:  25 ft.', '', 'resized/PVC_Molded_Print_56a9d23ca04ac_90x90.jpg', 'PVC_Molded_Print_56a9d23ca9655.jpg', 'Y', '0.0000', 'pounds', '6.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179705600, '', 'N', 0, NULL, 1179811954, 1453969980, 'PVC Molded Printer Cable AWG # 28 18 C 25ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(302, 1, 0, 'CB020M-06', 'length: 6ft.', '', 'resized/PVC_Molded_Print_56a9d2050855c_90x90.jpg', 'PVC_Molded_Print_56a9d20510f07.jpg', 'Y', '0.0000', 'pounds', '6.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179705600, '', 'N', 0, NULL, 1179811976, 1453969930, 'PVC Molded Printer Cable  AWG # 28 18 C 6FT.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(304, 1, 0, 'CB020M-15', 'length:  15 ft.', '', 'resized/PVC_Molded_Print_56a9d2272b644_90x90.jpg', 'PVC_Molded_Print_56a9d2273539b.jpg', 'Y', '0.0000', 'pounds', '25.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179705600, '', 'N', 0, NULL, 1179812030, 1453969959, 'PVC Molded Printer Cable AWG # 28 18 C 15ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(821, 1, 0, 'CB109M-25-E251', '', '', 'resized/DB25_M_M_Laplink_556965d906dd9_90x90.jpg', 'DB25_M_M_Laplink_556965d91bc57.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424420663, 1432970713, 'DB25 M/M Laplink Cable 25ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(819, 1, 0, 'CB109-06-E251', '', '', 'resized/DB25_M_M_Null_Mo_5569661a7b3f5_90x90.jpg', 'DB25_M_M_Null_Mo_5569661a7f5a2.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424420595, 1432970778, 'DB25 M/M Null Modem Cable 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(820, 1, 0, 'CB109M-06-E251', '', '', 'resized/DB25_M_M_Laplink_556965aaae1fd_90x90.jpg', 'DB25_M_M_Laplink_556965aac5a48.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424420632, 1432970666, 'DB25 M/M Laplink Cable 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(814, 1, 0, 'CB109M-06', '', '', 'resized/DB25_M_M_Serial__55696580ee1bc_90x90.jpg', 'DB25_M_M_Serial__556965810da64.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424419858, 1432970625, 'DB25 M/M Serial Cable 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(815, 1, 0, 'CB109M-25', '', '', 'resized/DB25_M_M_Serial__556965f817433_90x90.jpg', 'DB25_M_M_Serial__556965f82109e.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424420017, 1432970744, 'DB25 M/M Serial Cable 25ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(816, 1, 0, 'CB110M-06', '', '', 'resized/DB25_M_F_Serial__5569653bc06a0_90x90.jpg', 'DB25_M_F_Serial__5569653bd41e5.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424420098, 1432970555, 'DB25 M/F Serial Cable 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(817, 1, 0, 'CB110M-15', '', '', 'resized/DB25_M_F_Serial__5569655484815_90x90.jpg', 'DB25_M_F_Serial__556965549575f.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424420512, 1432970580, 'DB25 M/F Serial Cable 15ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(818, 1, 0, 'CB110M-25', '', '', 'resized/DB25_M_F_Serial__556965679c3b4_90x90.jpg', 'DB25_M_F_Serial__55696567abc9a.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424420558, 1432970599, 'DB25 M/F Serial Cable 25ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(312, 1, 0, 'CB111M-06', 'Legth:', '<p>Legth: 15ft.</p>', 'resized/DB25_F_F_Serial__5569650a744e3_90x90.jpg', 'DB25_F_F_Serial__5569650a77a46.jpg', 'Y', '0.0000', 'ft.', '15.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179812280, 1432970506, 'DB25 F/F Serial Cable 6ft.', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(822, 1, 0, 'CB150M-06-E251', '', '', 'resized/DB9_F___DB25M__B_54e6efa45630b_90x90.jpg', 'DB9_F___DB25M__B_54e6efa47ea6a.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424420772, 1424420772, 'DB9 F - DB25M  Barcode Printer Cable 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(314, 1, 0, 'Modem Cable AT Modem DB 9F / DB 25M', 'length:  6 ft.', '', '6b68ebc22760a70e9ba6f2e49e92109b.jpg', '7ff052db5fef74ed58ae0d0421534222.jpg', 'Y', '0.0000', 'pounds', '6.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179763200, '', 'N', 0, NULL, 1179812347, 1185595582, 'Modem Cable AT Modem DB 9F / DB 25M', 0, '', '', 2, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(315, 1, 0, 'Modem Cable AT Modem DB 9F / DB 25 M', 'length:  15 ft.', '', '586a9c02ec50af6983c378e41d337d03.jpg', 'e4192ff067d51dcd5d3570575de1b52b.jpg', 'Y', '0.0000', 'ft.', '15.0000', '0.0000', '0.0000', 'inches', '', 0, 1179763200, '', 'N', 0, NULL, 1179812390, 1185595574, 'Modem Cable AT Modem DB 9F / DB 25 M', 0, '', '', 2, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(316, 1, 0, 'PC/XT  Modem DB 25 M/ F', 'length: 6ft.', 'length: 6ft.', '', '', 'Y', '0.0000', 'pounds', '6.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179763200, '', 'N', 0, NULL, 1179812410, 1182740711, 'PC/XT  Modem DB 25 M/ F', 0, '', '', 2, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(317, 1, 0, 'PC/XT Modem DB 25 M/F', 'lenght:  15 ft.', 'lenght:  15 ft. ', '', '', 'Y', '0.0000', 'pounds', '15.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179763200, '', 'N', 0, NULL, 1179812441, 1179977643, 'PC/XT Modem DB 25 M/F', 0, '', '', 2, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(318, 1, 0, 'HP68 M / DB25 M', 'length: 3ft.', 'length: 3ft.', '', '', 'Y', '0.0000', 'pounds', '3.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179763200, '', 'N', 0, NULL, 1179812497, 1179984644, 'SCII III HP68 M / DB25 M', 0, '', '', 2, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(319, 1, 0, 'HP68 M / C50 M', 'length: 3ft.\r\n', '', '68ab5e6340fd143056766e549afa22a1.jpg', 'feee54c64e4ba5fc71361f0a6f3593c3.jpg', 'Y', '0.0000', 'pounds', '3.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179763200, '', 'N', 0, NULL, 1179812516, 1185592854, 'SCII III HP68 M / C50 M', 0, '', '', 2, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(320, 1, 0, 'HP68 M / HP50 M', 'length: 3ft.', '', 'cc12b7e138f1393264cdeb653d61997d.jpg', '64df3b016a74b8227d7b753d2341799e.jpg', 'Y', '0.0000', 'pounds', '3.0000', '0.0000', '0.0000', 'ft', '', 0, 1179763200, '', 'N', 0, NULL, 1179812552, 1185592864, 'SCII III HP68 M / HP50 M', 0, '', '', 2, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(321, 1, 0, 'HP68 M / HP68 M', 'length: 3ft.', '', '0e5da957d45fa7eddb5a2693621d5b2e.jpg', 'e06449f12e7ec81714a7ff3b36cdaefb.jpg', 'Y', '0.0000', 'pounds', '3.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179763200, '', 'N', 0, NULL, 1179812592, 1185593222, 'SCII III HP68 M / HP68 M', 0, '', '', 2, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(322, 1, 0, 'CBV600-03', 'length:  3 ft', '', 'e49e9bfa656738c3d5c133fc6eb3b8bc.jpg', 'bf69780da5d642adf918e572b015382d.jpg', 'Y', '0.0000', 'pounds', '3.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179763200, '', 'N', 0, NULL, 1179812620, 1185593216, 'HDDB 68 M/ VHDC 68 M', 0, '', '', 2, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(323, 1, 0, 'CBV600-06', 'length: 6ft.', '', '602b51cbad01b010d2d5c6cd46ccc54a.jpg', 'd0c42020e7b467179af0080eeecb4032.jpg', 'Y', '0.0000', 'pounds', '6.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179763200, '', 'N', 0, NULL, 1179812656, 1185593203, 'HDDB 68 M/ VHDC 68 M', 0, '', '', 2, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(324, 1, 0, 'CBV610-03', 'length: 3ft.', '', 'cf7182b2e1a8686f0e58acf3ec81f087.jpg', '0daf2297e98f8a9e13e0c0a9bb6412b0.jpg', 'Y', '0.0000', 'pounds', '3.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179763200, '', 'N', 0, NULL, 1179812714, 1185593230, 'VHDC 68 M/M', 0, '', '', 2, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(326, 1, 0, 'CB3015-18', 'length:  length:  6ft.', '', '0a76fa3f9a98b6b2ca9e6f49a97140ab.jpg', '819df59523f27e47e692a292337417db.jpg', 'Y', '0.0000', 'pounds', '6.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179763200, '', 'N', 0, NULL, 1179812790, 1203498410, 'CB3015-18 IDC 34 Three connectors', 0, '', '', 3, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(327, 1, 0, 'CB3025-18', 'length:  1.5 ft', '', 'bd971587dfd970c01dc7050d569844ec.jpg', '4933f99e0514b87000b437d0dc6ec57f.jpg', 'Y', '0.0000', 'pounds', '1.5000', '0.0000', '0.0000', 'ft.', '', 0, 1179763200, '', 'N', 0, NULL, 1179812822, 1203499090, 'CB3025-18 IDC 40 Three Connectors', 0, '', '', 3, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(328, 1, 0, 'IDC 50', 'length:  1.5 ft.', '', '158261bfdb3c191d59e5bd6beb8d1f1f.jpg', '522c36480c6fc7cf519f3f540063796d.jpg', 'Y', '0.0000', 'ft.', '1.5000', '0.0000', '0.0000', 'inches', '', 0, 1179763200, '', 'N', 0, NULL, 1179812842, 1185593758, 'Internal Cables Three connectors', 0, '', '', 2, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(329, 1, 0, 'CB3035-18', 'length:  1.5 ft', '', '7e8bef616406e3c6b2e51b397a62651c.jpg', 'b19e63f52dde4caf313ed7593c60bf7f.jpg', 'Y', '0.0000', 'pounds', '1.5000', '0.0000', '0.0000', 'ft.', '', 0, 1179763200, '', 'N', 0, NULL, 1179812874, 1203499388, 'CB3035-18 ATA100  Three Connectors', 0, '', '', 3, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(330, 1, 0, 'FR100', 'length:  1.5 ft', '', '', '', 'Y', '0.0000', 'pounds', '1.5000', '0.0000', '0.0000', 'ft.', '', 0, 1179763200, '', 'N', 0, NULL, 1179812920, 1203497460, 'FR100 ATA100 Round Three Connectors', 0, '', '', 3, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(331, 1, 0, 'HD 68 THREE CONNECTORS 24” 0.635mm pitch', '', '', 'bb076ae1dc925605bd24d427a39698a8.jpg', 'b28c0d4cf088ad05814e9a8f66ffaef0.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179763200, '', 'N', 0, NULL, 1179812942, 1185593732, 'HD 68 THREE CONNECTORS 24” 0.635mm pitch', 0, '', '', 2, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(332, 1, 0, 'CF801G', '', '', '533d6f4a07596a2d89a39b72dd6166ee.jpg', 'fa02fc3c935f9b59011ea0f6d252bdf1.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179763200, '', 'N', 0, NULL, 1179812965, 1203499233, 'CF801G ULTRA (320)  SCSI LVD/SE, 5 Connector W/ Terminator', 0, '', '', 3, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(333, 1, 0, 'LSP100', '', '', '98ca09c7b991a28bef3cec8c07f2238a.jpg', '7db1d6328dcbe38f5890ead192019511.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179813020, 1285817235, 'LSP100 Exagerate LCD Screen Protector', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(358, 1, 0, 'UP0051', 'USB to parallel cable 2M USB series A plug to cent. 36P', '', 'resized/UP0051_USB_to_Pa_56372f29e9e60_90x90.jpg', 'UP0051_USB_to_Pa_56372f2a0523a.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179815574, 1446457130, 'UP0051 USB to Parallel Cable 2M (Cent 36)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(340, 1, 0, 'DCI 100', 'DC to AC Power Inverter with Air Cleaner and USB port (150 watts)', '', 'resized/DCI_100_DC_to_AC_55e5629d0b08f_90x90.jpg', 'DCI_100_DC_to_AC_55e5629d333a0.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179813309, 1441096349, 'DCI 100 DC to AC Power Inverter (150 watt)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(343, 1, 0, 'NL100', '', '', '8c1c6d224d9b0b19b0344aaa41608ba4.jpg', 'e9a40593f86160d2104716100fa2e698.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179813449, 1285817318, 'NL100 Notebook Lock Key Type', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(345, 1, 0, 'EC-PCI-2.0', '', '', 'resized/NEC_Chipset_USB__53ba6ad058a3a_90x90.jpg', 'NEC_Chipset_USB__53ba6ad08319f.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179813675, 1404725968, 'NEC Chipset USB PCI 4-Port 2.0', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(635, 1, 0, 'UTA140', 'UTA140 Universal Travel Adapter w/ USB', '', 'resized/UTA140_Universal_56a9d3c354484_90x90.jpg', 'UTA140_Universal_56a9d3c35c7fd.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1318982400, '', 'N', 0, NULL, 1318997424, 1453970371, 'UTA140 Universal Travel Adapter w/ USB', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(634, 1, 0, 'UH340', 'USB 2.0 7-Ports Individual Switch Hub\r\nCOLOR: BLACK, WHITE', '', 'resized/UH340_USB_2.0_7__4e9e4d092dd48_90x90.jpg', 'UH340_USB_2.0_7__4e9e4d093afce.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1318982400, '', 'N', 0, NULL, 1318997257, 1318997257, 'UH340 USB 2.0 7-Ports Individual Switch Hub', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(633, 1, 0, 'UH330', 'USB 2.0 4-Ports Individual Switch Hub\r\nCOLOR: white, black', '', 'resized/UH330_USB_2.0_4__4e9e4cca3c2b1_90x90.jpg', 'UH330_USB_2.0_4__4e9e4cca481ae.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1318982400, '', 'N', 0, NULL, 1318997144, 1318997194, 'UH330 USB 2.0 4-Ports Individual Switch Hub', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(642, 1, 0, 'CT-120', 'CT-120 Crimping Tool 3 in 1 \r\nFOR: RJ45, RJ11, RJ12', '', 'resized/CT_120_Crimping__4e9e5eb7b7eed_90x90.jpg', 'CT_120_Crimping__4e9e5eb80b847.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1318982400, '', 'N', 0, NULL, 1319001784, 1319002035, 'CT-120 Crimping Tool 3 in 1', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(357, 1, 0, 'UC610', 'USB repeater cable, The USB repeater cable acts as a single port Hub which means that multiple cables can be Cascaded ( up to 5) to increase the distance between your Computer and USB devices. It extend the distance of a USB Device by 16 feet.', '', 'resized/UC610_USB_Repeat_55e56343122f0_90x90.jpg', 'UC610_USB_Repeat_55e5634320bbd.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179815434, 1441096515, 'UC610 USB Repeater Cable', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(363, 1, 0, 'CBYU006', 'USB A M to 2 x PS 2 Y splitter\r\nEnable to have PS/2 Port for MOUSE & Keyboards using USB convert to PS/2 Female.', '', 'resized/USB_A_M_to_2_x_P_5530d6d704ec8_90x90.png', 'USB_A_M_to_2_x_P_5530d6d711095.png', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179815975, 1429264102, 'USB A M to 2 x PS 2 Y splitter', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(364, 1, 0, 'UC310', 'PRODUCT FEATURES:\r\n1. Over 500kbps data transfer rate.\r\n2. Draws its power from the USB Connection - No power adapter required.\r\n3. Work with cellular phone, PDA, Digital Cameras and Modems.\r\n4. No IRQs, No IRQ Conflicts.  \r\n***Compatible with WINDOWS', '<p>FEATURES: 1.	Over 500kps data transfer rate. 2.	Draws its power from the USB Connection- No Power Adapter Required. 3.	Work with cellular phone, PDA, Digital Cameras and Modems. 4.	NO IRQs, NO IRQ Conflicts. 5.	License Software  6.	Compatible with Windows 2000, XP, Vista, Windows 7 or Later , MAC OS (X)</p>', 'resized/UC310_USB_A_M_to_5539dda152f4a_90x90.jpg', 'UC310_USB_A_M_to_5539dda15e283.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179816020, 1429855649, 'UC310 USB A M to DB 9 M Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(665, 1, 0, 'iStand101', '', '', 'resized/iStand101_Mobile_514bba35ea5fe_90x90.jpg', 'iStand101_Mobile_514bba36ee1ab.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1363910400, '', 'N', 0, NULL, 1363917367, 1363917367, 'iStand101 Mobile Stand for Tablet PC', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(423, 1, 0, 'CB991C-06', 'COPPER MATERIAL\r\n100% TESTED, GOOD QUALITY\r\nDATA CABLE BRAND\r\nLength: 6ft', '', 'resized/USB___Micro_B_5P_4c94417f9063a_90x90.jpg', 'USB___Micro_B_5P_4c94417f9d2d7.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1200035619, 1363770930, 'CB991C-06	USB Series A: Micro 5Pins 6ft.', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(424, 1, 0, 'CB162-06', '', '', '', 'BD9F_RJ12_Cable_53b3b5d5784e6.', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1200035777, 1404286421, 'BD9F-RJ12 Cable', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(666, 1, 0, 'iStand102', '', '', 'resized/iStand102_Tripod_514bbc149e9d3_90x90.jpg', 'iStand102_Tripod_514bbc1557d33.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1363910400, '', 'N', 0, NULL, 1363917845, 1363917845, 'iStand102	Tripod Stand for iPad/ Tablet PC', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(428, 1, 0, 'NKP110', '', '', '3ae6201801b25dbb7606ea1b277240dd.jpg', '71c9520292c34844a200709b38add5a8.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1200036349, 1285817302, 'NKP110 Universal NB Keyboard Skin', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(639, 1, 0, 'MP170', '', '', 'resized/MP170_Mouse_Pad__4e9e4fffb9a02_90x90.jpg', 'MP170_Mouse_Pad__4e9e4fffd29ac.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1318982400, '', 'N', 0, NULL, 1318998015, 1318998015, 'MP170 Mouse Pad Gel Type with Design', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(650, 1, 0, 'GT110', 'GT110	Galaxy Tab Card Reader 5- Slots', '', 'resized/GT110_Galaxy_Tab_4f962131eee06_90x90.jpg', 'GT110_Galaxy_Tab_4f9621321f9bb.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1335225600, '', 'N', 0, NULL, 1335238962, 1335238967, 'GT110 Galaxy Tab Card Reader 5- Slots', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(651, 1, 0, 'GT120', 'GT120	Galaxy Tab to USB 2.0 Adapter', '', 'resized/GT120_Galaxy_Tab_4f962188660f4_90x90.jpg', 'GT120_Galaxy_Tab_4f962188811d0.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1335225600, '', 'N', 0, NULL, 1335239048, 1335239054, 'GT120 Galaxy Tab to USB 2.0 Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(383, 1, 0, 'VS101', 'The video splitter takes one video signal input and amplifies/duplicates the same signal on multiple monitors.', '<p>The video splitter takes one video signal input and amplifies/duplicates the same signal on multiple monitors. It supports daisy chain function that enables a user to connect as many monitors as required. It is also provides flexible and cost-effective solutions for video broadcasting and remote monitoring at airlines, restaurants, production and industrial control, security companies, schools and training centers and others.</p>\r\n<p><strong>Key features:</strong></p>\r\n<p>o One video inputs to two, four, eight video outputs</p>\r\n<p>o Supports VGA, SVGA, XGA and multi sync monitors</p>\r\n<p>o Long distance transmission: up to 165 feet (50m)</p>\r\n<p>o Supports 150/250/350MHz video bandwidth (model related)</p>\r\n<p>o Supports resolution 1,600 x 1,200/1,920 x 1,440/2,300 x 1,920 (model related)</p>\r\n<p>o DDC and DDC2 support at port 1</p>\r\n<p>o Ideal for video broadcasting: remote monitoring, security monitoring, production and industrial control monitoring, educational facilities</p>\r\n<p>o Daisy-chainable</p>\r\n<p>o Compact design with all metal casing</p>\r\n<p><strong> </strong></p>\r\n<p><strong>Specifications:</strong></p>\r\n<p>> Video input connectors: 1 x HDB-15 male</p>\r\n<p>> Video output connectors: 4 x HDB-15 female</p>\r\n<p>> Cable distance (device to monitor): 165 feet/50m (maximum)</p>\r\n<p>> Signal type: VGA, SVGA, XGA, multi sync MSV235: MSV225: 1,920 x 1,440  MSV215: 1,600 x 1,200 </p>\r\n<p> </p>\r\n<p>Maximum resolution: 2,300 x 1,920 MSV235: 350MHz MSV225: 250MHz  MSV215: 150MHz Bandwidth:</p>\r\n<p>Housing: metal</p>\r\n<p>DC power adapter: 9V Dimensions: 13 x 7.5 x 4.2cm</p>\r\n<p>Weight: 0.42kg</p>', 'resized/VGA__Splitter_4__53ba60b052d98_90x90.jpg', 'VGA__Splitter_4__53ba60b0e5fd1.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'Y', 0, NULL, 1179817205, 1404723377, 'VGA  Splitter 4 ports	250 MHZ', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(750, 1, 0, 'GC-6002', '', '', 'resized/Mini_HDMI__M__to_546034ca7d0a3_90x90.jpg', 'Mini_HDMI__M__to_546034ca7f2a4.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415591114, 1415591114, 'Mini HDMI (M) to HDMI (F) Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(751, 1, 0, 'HDMI-1592C', '', '', 'resized/HDMI_1592C_HDMI__5460350af2daf_90x90.jpg', 'HDMI_1592C_HDMI__5460350b09c31.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415591179, 1415591179, 'HDMI-1592C HDMI M/F Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(752, 1, 0, 'HDMI-1592CC', '', '', 'resized/HDMI_1592CC_HDMI_5460355f06664_90x90.jpg', 'HDMI_1592CC_HDMI_5460355f1091d.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415591263, 1415591263, 'HDMI-1592CC HDMI F/F Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(753, 1, 0, 'CL-1777', '', '', 'resized/CL_1777_RJ45_Cou_54603af3d4c28_90x90.jpg', 'CL_1777_RJ45_Cou_54603af3d8bba.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415592691, 1415592691, 'CL-1777 RJ45 Coupler', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(754, 1, 0, 'CP-3140', '', '', 'resized/CP_3140_Punch_Do_54603b4965025_90x90.jpg', 'CP_3140_Punch_Do_54603b4979f2d.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415592777, 1415603836, 'CP-3140 Punch Down Tool (Impact Tool)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(755, 1, 0, 'BYL-920L', '', '', 'resized/USB_2.0_Ethernet_55e5636c90014_90x90.jpg', 'USB_2.0_Ethernet_55e5636c9833c.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415592990, 1441096556, 'USB 2.0 Ethernet Adapter 10/100Mbps', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(756, 1, 0, 'LPS130', '', '', 'resized/Universal_Laptop_546061014f590_90x90.jpg', 'Universal_Laptop_5460610153711.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415602380, 1415602518, 'Universal Power  Adapter 90Watts 14Diff. Connectors', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(757, 1, 0, 'BYL-3010C', '', '', 'resized/Power_Charger_US_54606195ebcb1_90x90.jpg', 'Power_Charger_US_5460619611ec8.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415602582, 1415602611, 'Power Charger USB 10-ports W/ Switch 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(385, 1, 0, 'VS110', 'Key Specifications/Special Features:\r\n•	The video splitter takes one video signal input and amplifies/duplicates the same signal on multiple monitors \r\n•	The splitter supports daisy chain function that enables a user to connect as many monitors as require', '', 'resized/VGA__Splitter_8__5549b3466b234_90x90.jpg', 'VGA__Splitter_8__5549b34670c3d.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179817273, 1430893382, 'VGA  Splitter 8 ports	250 MHZ', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(748, 1, 0, 'GC-6008', '', '', 'resized/GC_6008_HDMI_F_F_546034551f758_90x90.jpg', 'GC_6008_HDMI_F_F_546034552bcb1.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415590997, 1415590997, 'GC-6008 HDMI F/F Gender Changer', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(749, 1, 0, 'GC-6019', '', '', 'resized/GC_6019_HDMI_M_F_5460348d42b55_90x90.jpg', 'GC_6019_HDMI_M_F_5460348d43c9e.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415591053, 1415591053, 'GC-6019 HDMI M/F L-Type Gender Changer', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(747, 1, 0, 'GC-6021', '', '', 'resized/GC_6021_HDMI_M_M_5460341f01c50_90x90.jpg', 'GC_6021_HDMI_M_M_5460341f11820.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415590943, 1415590943, 'GC-6021 HDMI M/M Gender Changer', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(388, 1, 0, 'KS104-2', '', '', '95be5b71d26a4fbcb8e9e41b50e38ec4.jpg', 'da5095ab16f5561965d0247b0ef50905.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179817438, 1285819753, 'KVM Switch 4 ports Pocket type', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(389, 1, 0, 'KS 108', '', '', '498f0424192485c9d9e2130aad715b9f.jpg', '0ac621f960266566764e0d44808f161b.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179817483, 1285819772, 'KVM Switch 8 port with cables', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(390, 1, 0, 'KS 116', '', '', '0f9ad43e53233207e400fb7c9a974baf.jpg', 'a7fc1caae2728262a256eb494e54b21a.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, -86400, '', 'N', 0, NULL, 1179817522, 1285819714, 'KVM Switch 16 ports Rack Mount', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(391, 1, 0, 'KVM001-06', 'lenght:  6 ft\r\n\r\n1 HDDB15M : 2 MD 6M to 1 HDDB15M : 2 MD 6M', '', 'a766280e035e2e4dc4008d9834d68d5c.jpg', 'bcd2bc7123b143eea9f452213ff8c589.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179817637, 1285048009, 'KVM Cable (1 HDDB15M : 2 MD 6M to 1 HDDB15M : 2 MD 6M) 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(392, 1, 0, 'KVM002-15', 'length:  15 ft.\r\n\r\n1 HDDB15M : 2 MD 6M to 1 HDDB15M : 2 MD 6M', '', 'afd61bd4595df546a85461a2b396c715.jpg', 'e91a47e73568a04486464d1e15972886.jpg', 'Y', '0.0000', 'ft.', '15.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179817771, 1285047938, 'KVM Cable (1 HDDB15M : 2 MD 6M to 1 HDDB15M : 2 MD 6M) 15ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(393, 1, 0, 'CT230-C', '', '', 'dae618eba591303355ea65ead96cba86.jpg', '85dbf94cf025bc09184995ea8eb81256.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179817809, 1286249604, 'CT230-C LAN Tester', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(511, 1, 0, 'IP100', '', '', '2073d9ac7870aa8e9b08ccf0e2f15db9.jpg', 'ccb3826556de5bcb0bba7355c9b968fa.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -28800, '', 'N', 0, NULL, 1259807294, 1259807294, 'IP100 I-phone 3 in 1 Charger', 0, '', '', 3, '', 0, NULL, NULL, NULL, NULL, 0),
(396, 1, 0, 'UP 100', '', '', '22f9b1e8e7513e479eb7205bc9224110.jpg', '4936587e3b7da66192c4651968c5988d.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179817916, 1286248592, 'USB Phone ( US Scientific Brand )', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(398, 1, 0, 'UC130', '', '', 'a9477cdd4a798dc676c01322b45ea07c.jpg', 'a5e3bdfd330bccb151f8142c391d656b.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179763200, '', 'N', 0, NULL, 1179818049, 1219201560, 'UC130 PCI to PCMCIA controller card', 0, '', '', 3, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(399, 1, 0, 'IPS00010', '', '', '', '', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179763200, '', 'N', 0, NULL, 1179818108, 1179818108, 'Ipod Iskin for APG4 colors : White , Pink , Blue', 0, '', '', 2, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(400, 1, 0, 'IPS00020', '', '', '', '', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179763200, '', 'N', 0, NULL, 1179818184, 1179818184, 'Iskin for Nano colors: White, Pink, Blue, Purple, Grey', 0, '', '', 2, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(401, 1, 0, 'IPS00030', '', '', '', '', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179763200, '', 'N', 0, NULL, 1179818230, 1179818230, 'Iskin for Ipod Video', 0, '', '', 2, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(402, 1, 0, 'IPC00010', '', '', '', '', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179763200, '', 'N', 0, NULL, 1179818293, 1179818293, 'Ipod travel charger', 0, '', '', 2, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(403, 1, 0, 'IPC00020', '', '', 'c1074a7c4fa8c41b43671c3b1cccf164.jpg', '2c9c44159f78a6ebd1cde8dfb79ffb38.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179763200, '', 'N', 0, NULL, 1179818350, 1197357653, 'IPC00020 Ipod Car Charger', 0, '', '', 3, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(291, 1, 0, 'CT1011-080X-20', '"Data Cable Brand:\r\nPure Copper\r\n100% Tested\r\nMachine Crimp/ Molded', '', 'resized/CT1011_080X_20_P_546069c7ab9f2_90x90.jpg', 'CT1011_080X_20_P_546069c7d45c9.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179811226, 1415606458, 'CT1011-080X-20 Patch Cable 8 Meters Cat 5e', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(287, 1, 0, 'CT1011-010X-20', '"Data Cable Brand:\r\nPure Copper\r\n100% Tested\r\nMachine Crimp/ Molded', '', 'resized/CT1011_010X_20_P_54606943ef3b9_90x90.jpg', 'CT1011_010X_20_P_546069441a214.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179811141, 1415606395, 'CT1011-010X-20 Patch Cable 1 Meter Cat 5e', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(222, 1, 0, 'UCR-100', '', '', 'c79237d109e6afff9eb3d0f66b591f1e.jpg', '4d8f606a063699caffced35272fb2303.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1179730050, 1286248246, 'UCR-100 USB 75 :1 Card Reader (Exagerate Brand)', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(710, 1, 0, 'EP-9601', '', '', 'resized/PCI_e_Wireless_C_53ba6b6992211_90x90.jpg', 'PCI_e_Wireless_C_53ba6b69c5e37.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1404691200, '', 'N', 0, NULL, 1404726121, 1404726121, 'PCI-e Wireless Card', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(425, 1, 0, 'WF-130', '', '', 'resized/Wireless_PCI_Car_53ba6d377aea0_90x90.jpg', 'Wireless_PCI_Car_53ba6d378161c.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1200035896, 1404726583, 'Wireless PCI Card', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(225, 1, 0, 'LC100', '', '', '18df25b01cb4d12c04e737f5ede41045.jpg', '04affddca3c297182630025a79bad480.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1179730945, 1285817200, 'LC100 LCD Cleaning Set', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(227, 1, 0, 'CB961C-06', 'COPPER MATERIAL\r\n100% TESTED, GOOD QUALITY\r\nDATA CABLE BRAND\r\nlength:  6 ft', '', 'resized/CB961C_06_USB_Se_51497da3d6795_90x90.jpg', 'CB961C_06_USB_Se_51497da6745e9.jpg', 'Y', '0.0000', 'ft.', '6.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179806003, 1363770790, 'CB961C-06 USB Series A : A M/F 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(228, 1, 0, 'CB931C-06-2', 'COPPER MATERIAL\r\n100% TESTED, GOOD QUALITY\r\nDATA CABLE BRAND\r\nlength:   6 ft.', '', 'resized/CB931C_06_2_USB__51497b8132dc9_90x90.jpg', 'CB931C_06_2_USB__51497b8435bc8.jpg', 'Y', '0.0000', 'ft.', '6.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179806183, 1363770244, 'CB931C-06-2 USB series A : B M/M 24/28 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(230, 1, 0, 'CB931C-15', 'COPPER MATERIAL\r\n100% TESTED, GOOD QUALITY\r\nDATA CABLE BRAND\r\nlength:  15 ft', '', 'resized/CB931C_15_USB_Se_51497c2455d9e_90x90.jpg', 'CB931C_15_USB_Se_51497c2750720.jpg', 'Y', '0.0000', 'ft.', '15.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179806476, 1363770407, 'CB931C-15 USB Series A : B M/M 24/28 15ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(231, 1, 0, 'CB981C-06', 'COPPER MATERIAL \r\n100% TESTED, GOOD QUALITY \r\nDATA CABLE BRAND\r\nlength:  6 ft.', '', '3216402914eec16caf02f788e2d8dd75.jpg', 'd7f4f4f1ac3a41ebfe3cfb287381aeeb.jpg', 'Y', '0.0000', 'ft.', '6.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179806584, 1363835439, 'CB981C-06 USB Ver . 2.0 series A : B 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(232, 1, 0, 'CB941C-06', 'COPPER MATERIAL\r\n100% TESTED, GOOD QUALITY\r\nDATA CABLE BRAND\r\nlength:  6 ft.', '', 'resized/CB941C_06_USB_Se_51497c95a4048_90x90.jpg', 'CB941C_06_USB_Se_51497c98d6b40.jpg', 'Y', '0.0000', 'ft.', '6.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179806619, 1363770520, 'CB941C-06 USB Series B : B 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(233, 1, 0, 'CB951C-06', 'COPPER MATERIAL\r\n100% TESTED, GOOD QUALITY\r\nDATA CABLE BRAND\r\nLenght: 6ft', '', 'resized/CB951C_06_USB_se_51497d6447fa2_90x90.jpg', 'CB951C_06_USB_se_51497d67374fd.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179806660, 1363770727, 'CB951C-06 USB series A : Mini USB 4 pins 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(234, 1, 0, 'CB971C-06', 'COPPER MATERIAL\r\n100% TESTED, GOOD QUALITY \r\nDATA ABLE BRAND\r\nLength: 6ft', '', 'resized/CB971C_06_USB_se_4c9442753a14e_90x90.jpg', 'CB971C_06_USB_se_4c9442754c0d6.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179806708, 1363835494, 'CB971C-06 USB series A : Mini USB 5 pins 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(235, 1, 0, 'CB921C-06', 'COPPER MATERIAL\r\n100% TESTED, GOOD QUALITY\r\nDATA CABLE BRAND\r\nlength:6 ft.', '', 'resized/CB921C_06_USB_Se_55150d7e49e6c_90x90.jpg', 'CB921C_06_USB_Se_55150d7e5226a.jpg', 'Y', '0.0000', 'ft.', '6.0000', '0.0000', '0.0000', 'inches', '', 0, -86400, '', 'N', 0, NULL, 1179806830, 1427443070, 'CB921C-06 USB Series A : A M/M 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(236, 1, 0, 'CB961C-15', 'COPPER MATERIAL\r\n100% TESTED, GOOD QUALITY\r\nDATA CABLE BRAND\r\nlength:  15 ft.', '', 'resized/CB961C_15_USB_se_51497df4c8d5d_90x90.jpg', 'CB961C_15_USB_se_51497df764aea.jpg', 'Y', '0.0000', 'ft.', '15.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179806870, 1363770871, 'CB961C-15 USB series A : A M/F 15ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(664, 1, 0, 'iStand100', '', '', 'resized/iStand100_Tablet_514bb990e3f64_90x90.jpg', 'iStand100_Tablet_514bb991b5dd5.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1363910400, '', 'N', 0, NULL, 1363917201, 1363917201, 'iStand100 Tablet PC’s Stand', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(240, 1, 0, 'IP0010', 'IP0010 USB + IEEE1394 + IPOD IPAD 30PINS CABLE\r\n\r\nCOPPER MATERIAL\r\n100% TESTED GOOD QUALITY\r\nDATA CABLE BRAND', '', 'resized/IP0010_USB_IEEE1_518866f711a3e_90x90.jpg', 'IP0010_USB_IEEE1_518866fa8487f.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179807218, 1367897383, 'IP0010 USB+IEEE1394 to 30P cable', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(241, 1, 0, 'HDMI-382-06', 'COPPER MATERIAL\r\n100% TESTED GOOD QUALITY\r\nDATA CABLE BRAND\r\nlength:  6 ft', '', 'resized/HDMI00382_06_HDM_513aea922bd53_90x90.jpg', 'HDMI00382_06_HDM_513aea94e937d.jpg', 'Y', '0.0000', 'ft.', '6.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179807266, 1363670996, 'HDMI-382-06 HDMI M / M CABLE 6Ft.', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(242, 1, 0, 'HDMI-563-15', 'COPPER MATERIAL\r\n100% TESTED GOOD QUALITY\r\nDATA CABLE BRAND\r\nlength:  15 ft', '', 'resized/HDMI00382_15_HDM_513aeae8ecf98_90x90.jpg', 'HDMI00382_15_HDM_513aeaebc9d0f.jpg', 'Y', '0.0000', 'ft.', '15.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179807316, 1363670959, 'HDMI-563-15 HDMI M/M CABLE 15FT', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(243, 1, 0, 'HDMI-564-25', 'COPPER MATERIAL\r\n100% TESTED GOOD QUALITY\r\nDATA CABLE BRAND\r\nlength:  25 ft', '', 'resized/HDMI00382_25_HDM_513aeb21a463e_90x90.jpg', 'HDMI00382_25_HDM_513aeb246e4ec.jpg', 'Y', '0.0000', 'ft.', '25.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179807360, 1363671038, 'HDMI-564-25 HDMI M/M CABLE 25FT', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(244, 1, 0, 'HDMI383-06', 'COPPER MATERIAL\r\n100% TESTED, GOOD QUALITY\r\nDATA CABLE BRAND\r\nLENGTH: 6FT', '', 'resized/HDMI00383_06_HDM_513aed2442b52_90x90.jpg', 'HDMI00383_06_HDM_513aed26b12b0.jpg', 'Y', '0.0000', 'ft.', '6.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179807436, 1362816575, 'HDMI-383-06	HDMI - DVI 18+1 M/M CABLE 6ft.', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(245, 1, 0, 'HDMI-565-15', 'COPPER MATERIAL\r\n100% TESTED, GOOD QUALITY\r\nDATA CABLE BRAND\r\nlength:  15 ft', '', 'resized/HDMI_565_15_HDMI_513aed7c152a2_90x90.jpg', 'HDMI_565_15_HDMI_513aed7e803e7.jpg', 'Y', '0.0000', 'ft.', '15.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179807554, 1362816410, 'HDMI-565-15	HDMI - DVI 18+1 M/M CABLE 15ft.', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(246, 1, 0, 'HDMI-566-25', 'COPPER MATERIAL\r\n100% TESTED, GOOD QUALITY\r\nDATA CABLE BRAND\r\nlength:  25 ft', '', 'resized/HDMI_566_25_HDMI_513aedd6cf24d_90x90.jpg', 'HDMI_566_25_HDMI_513aedd945086.jpg', 'Y', '0.0000', 'ft.', '25.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179807595, 1362816473, 'HDMI-566-25	HDMI - DVI 18+1 M/M CABLE 25ft.', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(247, 1, 0, 'DVI-1787-06', 'COPPER MATERIAL \r\n100%TESTED GOOD QUALITY\r\nDATA CABLE BRAND\r\n\r\nLENGTH: 6FT', '', 'resized/DVI_1787_06_DVI__51441e7f53d2a_90x90.jpg', 'DVI_1787_06_DVI__51441e81e7571.jpg', 'Y', '0.0000', 'pounds', '6.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179705600, '', 'N', 0, NULL, 1179809404, 1363418753, 'DVI-1787-06 DVI 18+5 / VGA M/M CABLE 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(248, 1, 0, 'DVI-1788-06', 'DVI-D SINGLE LINK\r\nCOPPER MATERIAL \r\n100%TESTED GOOD QUALITY\r\nDATA CABLE BRAND\r\nLength: 6ft', '', 'resized/DVI001788_06_DVI_514418d509426_90x90.jpg', 'DVI001788_06_DVI_514418d8289cb.jpg', 'Y', '0.0000', 'pounds', '6.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179705600, '', 'N', 0, NULL, 1179809441, 1363418507, 'DVI-1788-06 DVI 18+1 / DVI 18+1 M/ M CABLE 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(249, 1, 0, 'DVI-1789-06', 'DVI-D DUAL LINK\r\nCOPPER MATERIAL \r\n100%TESTED GOOD QUALITY\r\nDATA CABLE BRAND\r\n\r\nlenght:  6ft', '', 'resized/DVI001789_06_DVI_5144195907bb1_90x90.jpg', 'DVI001789_06_DVI_5144195c3db43.jpg', 'Y', '0.0000', 'ft.', '6.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179809492, 1363419037, 'DVI-1789-06 DVI 24+1 / DVI 24+1 M/M CABLE 6FT', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(250, 1, 0, 'DVI-1790-06', 'DVI-I SINGLE LINK\r\nCOPPER MATERIAL \r\n100%TESTED GOOD QUALITY\r\nDATA CABLE BRAND\r\n\r\nlength:  6 ft.', '', 'resized/DVI001790_06_DVI_51441bcc6ae8b_90x90.jpg', 'DVI001790_06_DVI_51441bcee3b7f.jpg', 'Y', '0.0000', 'pounds', '6.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179705600, '', 'N', 0, NULL, 1179809522, 1363419073, 'DVI-1790-06 DVI 18+5 / DVI 18+5 M/M CABLE 6FT', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(252, 1, 0, 'DVI-1791-06', 'DVI-I DUAL LINK\r\nCOPPER MATERIAL \r\n100%TESTED GOOD QUALITY\r\nDATA CABLE LENGTH: 6FT', '', 'resized/DVI001791_06_DVI_51441c2b1858f_90x90.jpg', 'DVI001791_06_DVI_51441c2e38c60.jpg', 'Y', '0.0000', 'pounds', '6.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179705600, '', 'N', 0, NULL, 1179809610, 1363419100, 'DVI-1791-06 DVI 24+5 / DVI 24+5 M/M CABLE 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(253, 1, 0, 'DVI-1968-15', 'DVI-I DUAL LINK\r\nCOPPER MATERIAL \r\n100%TESTED GOOD QUALITY\r\nDATA CABLE BRAND\r\n\r\nlength: 15ft.', '', 'resized/DVI_1968_15_DVI__51441c871faec_90x90.jpg', 'DVI_1968_15_DVI__51441c8a3fb48.jpg', 'Y', '0.0000', 'pounds', '15.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179705600, '', 'N', 0, NULL, 1179809684, 1363419120, 'DVI-1968-15	DVI 24+5 / DVI 24+5 M/M CABLE 15ft', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(254, 1, 0, 'MGDVI001183', 'DVI 12+4 Pin  Male / VGA F Adapter', '', 'resized/MGDVI001183_DVI__53c34b936c614_90x90.jpg', 'MGDVI001183_DVI__53c34b938cd76.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179809726, 1409994257, 'MGDVI001183 DVI 12+4 Pin  Male / VGA F Adapter', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(255, 1, 0, 'MGDVI001184', 'DVI 24+5 Female / VGA M Adapter', '', 'resized/MGDVI001184_DVI__55e5620a4fdaa_90x90.jpg', 'MGDVI001184_DVI__55e5620a57099.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179809759, 1441096202, 'MGDVI001184 DVI 24+5 Female / VGA M Adapter', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(256, 1, 0, 'MGDVI001185', 'MGDVI001185 DVI M / DVI F Adapter', '', 'aade91d2ecda43e69d59025f32bb30a5.jpg', 'e28d04865c93756d52b0d35af832cc67.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179809829, 1409994679, 'MGDVI001185 DVI M / DVI F Adapter', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(257, 1, 0, 'CB160M-06', 'length:  6 ft.', '', 'resized/CB160M_06_Monito_54602ae5694b3_90x90.jpg', 'CB160M_06_Monito_54602ae573de5.jpg', 'Y', '0.0000', 'pounds', '6.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179705600, '', 'N', 0, NULL, 1179809862, 1415588581, 'CB160M-06 Monitor Extension Cable DB 9 M/M', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(258, 1, 0, 'CB161M-06', 'length: 6ft.', '', 'resized/CB161M_06_Monito_54602b7a801c6_90x90.jpg', 'CB161M_06_Monito_54602b7a868c3.jpg', 'Y', '0.0000', 'pounds', '6.0000', '0.0000', '0.0000', 'ft', '', 0, 1179705600, '', 'N', 0, NULL, 1179809897, 1415588730, 'CB161M-06 Monitor Extension Cable DB 9 M/F', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(260, 1, 0, 'CB165M-06', 'COPPER MATERIAL 100% TESTED DATA CABLE BRAND\r\nlength: 6ft.', '', 'resized/CB165M_06_VGA_Ex_513ac4f2d7ded_90x90.jpg', 'CB165M_06_VGA_Ex_513ac4f633341.jpg', 'Y', '0.0000', 'pounds', '6.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179705600, '', 'N', 0, NULL, 1179809977, 1362806049, 'CB165M-06 VGA Extension Cable HDDB 15 M/M', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0);
INSERT INTO `jos_vm_product` (`product_id`, `vendor_id`, `product_parent_id`, `product_sku`, `product_s_desc`, `product_desc`, `product_thumb_image`, `product_full_image`, `product_publish`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_available_date`, `product_availability`, `product_special`, `product_discount_id`, `ship_code_id`, `cdate`, `mdate`, `product_name`, `product_sales`, `attribute`, `custom_attribute`, `product_tax_id`, `product_unit`, `product_packaging`, `child_options`, `quantity_options`, `child_option_ids`, `product_order_levels`, `promo`) VALUES
(419, 1, 0, 'CB166M-100-E251', 'UL2919 FULLY SHIELDED\r\nCOPPER MATERIAL\r\n100% TESTED\r\nDATA CABLLE BRAND\r\nlength: 100ft.\r\nwith FC', '', 'resized/CB166M_100_E251__51381d776e367_90x90.jpg', 'CB166M_100_E251__51381d7aeaa04.jpg', 'N', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1196754015, 1362632059, 'CB166M-100-E251 VGA Extension Cable HDDB 15 M/F', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(262, 1, 0, 'CB165M-15', 'COPPER MATERIAL 100% TESTED DATA CABLE BRAND\r\nlenght: 15 ft.', '', 'resized/CB165M_15_VGA_Ex_513ac559d6b07_90x90.jpg', 'CB165M_15_VGA_Ex_513ac55d1cbc2.jpg', 'Y', '0.0000', 'pounds', '15.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179705600, '', 'N', 0, NULL, 1179810041, 1362806109, 'CB165M-15 VGA Extension Cable HDDB 15 M/M', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(416, 1, 0, 'CB165M-75-FC', 'UL2919 FULLY SHIELDED\r\nCOPPER MATERIAL\r\n100% TESTED\r\nDATA CABLLE BRAND\r\nLength: 75ft', '', 'resized/CB165M_75_VGA_Ex_51380f4b98763_90x90.jpg', 'CB165M_75_VGA_Ex_51380f510d3eb.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1196753312, 1362631699, 'CB165M-75 VGA Extension Cable HDDB 15 M/M', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(263, 1, 0, 'CB165M-50-FC', 'UL2919 FULLY SHIELDED\r\nCOPPER MATERIAL\r\n100% TESTED\r\nDATA CABLLE BRAND\r\nLength: 50ft', '', 'resized/CB165M_50_VGA_Ex_51380ef406c5b_90x90.jpg', 'CB165M_50_VGA_Ex_51380ef7abe2d.jpg', 'Y', '0.0000', 'pounds', '50.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179705600, '', 'N', 0, NULL, 1179810111, 1362629020, 'CB165M-50 VGA Extension Cable HDDB 15 M/M', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(417, 1, 0, 'CB165M-100-FC', 'UL2919 FULLY SHIELDED\r\nCOPPER MATERIAL\r\n100% TESTED\r\nDATA CABLLE BRAND\r\nLength: 100ft', '', 'resized/CB165M_100_VGA_E_5138107b10a29_90x90.jpg', 'CB165M_100_VGA_E_5138107eb374c.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1196753597, 1362631556, 'CB165M-100 VGA Extension Cable HDDB 15 M/M', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(264, 1, 0, 'CB165M-25', 'COPPER MATERIAL 100% TESTED DATA CABLE BRAND\r\nlength: 25ft.', '', 'resized/CB165M_25_VGA_Ex_513ac5896bf72_90x90.jpg', 'CB165M_25_VGA_Ex_513ac58caa20b.jpg', 'Y', '0.0000', 'pounds', '25.0000', '0.0000', '0.0000', 'ft.', '', 0, -86400, '', 'N', 0, NULL, 1179810130, 1362806156, 'CB165M-25 VGA Extension Cables HDDB 15 M/M', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(265, 1, 0, 'CB166M-06-E251', 'COPPER MATERIAL 100% TESTED DATA CABLE BRAND\r\nlength: 6ft.', '', 'resized/CB166M_06_E251_V_513ac6133f0b9_90x90.jpg', 'CB166M_06_E251_V_513ac615eb1f8.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179810157, 1362806501, 'CB166M-06-E251 VGA Extension Cable  HDDB 15 M/F', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(266, 1, 0, 'CB166M-15-E251', 'COPPER MATERIAL 100% TESTED DATA CABLE BRAND\r\nlength:  15 ft.', '', 'resized/CB166M_15_E251_V_513ac6545b0e5_90x90.jpg', 'CB166M_15_E251_V_513ac65712054.jpg', 'Y', '0.0000', 'pounds', '15.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179705600, '', 'N', 0, NULL, 1179810181, 1362806359, 'CB166M-15-E251 VGA Extension Cable HDDB15 M/F', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(267, 1, 0, 'CB166M-25-E251', 'COPPER MATERIAL 100% TESTED DATA CABLE BRAND\r\nlength: 25 ft.', '', 'resized/CB166M_25_E251_V_513ac699898f8_90x90.jpg', 'CB166M_25_E251_V_513ac69c3fb7e.jpg', 'Y', '0.0000', 'pounds', '25.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179705600, '', 'N', 0, NULL, 1179810220, 1362806428, 'CB166M-25-E251 VGA Extension Cable HDDB 15 M/F', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(268, 1, 0, 'CB166M-50-E251', 'UL2919 FULLY SHIELDED\r\nCOPPER MATERIAL\r\n100% TESTED\r\nDATA CABLLE BRAND\r\nLength: 50ft.', '', 'resized/CB166M_50_E251_V_51381ca515c98_90x90.jpg', 'CB166M_50_E251_V_51381ca88eb5d.jpg', 'Y', '0.0000', 'pounds', '50.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179705600, '', 'N', 0, NULL, 1179810272, 1362631848, 'CB166M-50-E251 VGA Extension Cable HDDB 15 M/F', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(418, 1, 0, 'CB166M-75-E251', 'UL2919 FULLY SHIELDED\r\nCOPPER MATERIAL\r\n100% TESTED\r\nDATA CABLLE BRAND\r\nLength: 75ft.', '', 'resized/CB166M_75_E251_V_51381d1aa44cc_90x90.jpg', 'CB166M_75_E251_V_51381d1e2ecd5.jpg', 'N', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1196753874, 1362631966, 'CB166M-75-E251 VGA Extension Cable HDDB 15 M/F', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(270, 1, 0, 'CB248M-06', 'length: 6ft.', '', '3aa42d765a68e4bf29bec0aee1f4f565.jpg', '5c114219b4c517e5fdb1bc420756e54c.jpg', 'Y', '0.0000', 'pounds', '6.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179705600, '', 'N', 0, NULL, 1179810339, 1285818686, 'CB248M-06 Din 5 M/M Keyboard Extension Cable 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(271, 1, 0, 'CB250M-06', '', '', '', '', 'Y', '0.0000', 'ft.', '15.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179810381, 1285818699, 'CB250M-06 Din 5 M/F Keyboard Extension Cable 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(272, 1, 0, 'CB252M-06', 'length:  6ft.', '', '', '', 'Y', '0.0000', 'pounds', '6.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179705600, '', 'N', 0, NULL, 1179810408, 1285818711, 'CB252M-06 MD 6 M/F PS/2 - Keyboard Extension Cable', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(273, 1, 0, 'CB255M-06', '', '', '', '', 'Y', '0.0000', 'pounds', '6.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179705600, '', 'N', 0, NULL, 1179810435, 1285818723, 'CB255M-06 MD 6 M/M PS/2 - Keyboard Extension Cable 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(420, 1, 0, 'CBY166-01', 'VGA Y-Splitter (VGA X 2-VGA F)', '', '618fd6af132de0da13455196eae54316.jpg', '93064cf1cf261cd7f03853aea91c3c67.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', -1, -86400, '', 'N', 0, NULL, 1196754072, 1302489871, 'CBY166-01 VGA Y-Splitter', 1, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(421, 1, 0, 'CB252M-15', '', '', '608b27fc8f50e81f1917c3b15eadfc37.jpg', '384885844a48a4e8977ab2f9ecb839e8.jpg', 'N', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1196754153, 1285818880, 'CB252M-15 MD 6 M/F PS/2 - Keyboard Extension Cable 15ft.', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(275, 1, 0, 'CF010M-06', 'COPPER MATERIAL\r\n100% TESTED, GOOD QUALITY\r\nDATA CABLE BRAND\r\n\r\nlength:  6 ft.', '', 'resized/CF010M_06_FireWi_5149794a95e07_90x90.jpg', 'CF010M_06_FireWi_5149794db3b2a.jpg', 'Y', '0.0000', 'pounds', '6.0000', '0.0000', '0.0000', 'ft.', '', 0, -86400, '', 'N', 0, NULL, 1179810489, 1363769677, 'CF010M-06 FireWire Cable 6 Pin - 6 Pin 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(276, 1, 0, 'CF020M-06', 'COPPER MATERIAL\r\n100% TESTED, GOOD QUALITY\r\nDATA CABLE BRAND\r\nlength:  6 ft', '', 'resized/CF020M_06_FireWi_5149797fc98cf_90x90.jpg', 'CF020M_06_FireWi_5149798299f91.jpg', 'Y', '0.0000', 'pounds', '6.0000', '0.0000', '0.0000', 'ft.', '', 0, 1179705600, '', 'N', 0, NULL, 1179810537, 1363769730, 'CF020M-06 FireWire Cable 6 Pin - 4 Pin 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(277, 1, 0, 'CF030M-06', 'COPPER MATERIAL\r\n100% TESTED, GOOD QUALITY\r\nDATA CABLE BRAND\r\nlength: 6ft.', '', 'resized/CF030M_06_FireWi_514979a840aad_90x90.jpg', 'CF030M_06_FireWi_514979aa9d8ca.jpg', 'Y', '0.0000', 'pounds', '6.0000', '0.0000', '0.0000', 'ft.', '', -1, -86400, '', 'N', 0, NULL, 1179810571, 1363769770, 'CF030M-06 FireWire Cable 4 Pin - 4 Pin 6ft.', 1, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(278, 1, 0, 'PCO-120', 'UL Type\r\nLength: 5ft.\r\nAWG#18\r\nSJT Type', '', 'resized/SJT_AWG__18_AC_P_53ba65432348e_90x90.jpg', 'SJT_AWG__18_AC_P_53ba654364393.jpg', 'Y', '0.0000', 'pounds', '1.5000', '0.0000', '0.0000', 'METER', '', 0, 1179705600, '', 'N', 0, NULL, 1179810777, 1404724547, 'SJT AWG #18 AC Power Cord 1.5 Meter (UL)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(282, 1, 0, 'PCN-100', 'UL Type\r\nLength : 5ft\r\nAWG#18', '', 'resized/SJT_AWG__18_Note_53ba657393c49_90x90.jpg', 'SJT_AWG__18_Note_53ba6573ec61b.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179810907, 1404724595, 'SJT AWG #18 Notebook Power Cord 1.5 Meter (UL)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(283, 1, 0, 'CB4102-06', '', '', 'de86b2ad7e0c34085cf071553fb57d4d.jpg', '605c213f19e48f3884e6697472d8a9ff.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179763200, '', 'N', 0, NULL, 1179810971, 1203497206, 'CB4102-06 “ Y “ SPLITTER  2 X 5.25', 0, '', '', 3, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(284, 1, 0, 'CB4103-6', '', '', '2385f59e6d26ecd003dd943b58c36143.jpg', 'e71d1bc6196c4d8fd5a19fb2ef3c66d3.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179763200, '', 'N', 0, NULL, 1179810992, 1203497159, 'CB4103-6 “ Y “ SPLITTER  2 X 3.5', 0, '', '', 3, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(285, 1, 0, '“ Y “ SPLITTER  1 X 3.5 , 1 X 5.25', '', '', '535934055d081cc1035dc7dff8734e76.jpg', '3291b539f37189543e3b01eb294615b3.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179763200, '', 'N', 0, NULL, 1179811013, 1185591202, '“ Y “ SPLITTER  1 X 3.5 , 1 X 5.25', 0, '', '', 2, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(794, 1, 0, 'S-K07', '', '', 'resized/Mobile_Phone_OTG_54e6dbf603024_90x90.jpg', 'Mobile_Phone_OTG_54e6dbf60bd49.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424415734, 1424415734, 'Mobile Phone OTG Connection Kit', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(290, 1, 0, 'CT1011-050X-20', '"Data Cable Brand:\r\nPure Copper\r\n100% Tested\r\nMachine Crimp/ Molded', '', 'resized/CT1011_050X_20_P_546069afcfda2_90x90.jpg', 'CT1011_050X_20_P_546069b009ab4.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179811206, 1415606440, 'CT1011-050X-20 Patch Cable 5 Meters Cat 5e', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(289, 1, 0, 'CT1011-030X-20', '"Data Cable Brand:\r\nPure Copper\r\n100% Tested\r\nMachine Crimp/ Molded', '', 'resized/CT1011_030X_20_P_5460698777392_90x90.jpg', 'CT1011_030X_20_P_546069877a2fd.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179811185, 1415606425, 'CT1011-030X-20 Patch Cable 3 Meters Cat 5e', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(288, 1, 0, 'CT1011-020X-20', '"Data Cable Brand:\r\nPure Copper\r\n100% Tested\r\nMachine Crimp/ Molded', '', 'resized/CT1011_020X_20_P_5460696459e31_90x90.jpg', 'CT1011_020X_20_P_546069647be65.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179705600, '', 'N', 0, NULL, 1179811163, 1415606405, 'CT1011-020X-20 Patch Cable 2 Meters Cat 5e', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(286, 1, 0, 'CB259-01', '', '', 'fd20b75c45d64c4efb10446d65819312.jpg', '63228d76107ad79588184e71487da21d.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1179763200, '', 'N', 0, NULL, 1179811035, 1203496918, 'CB259-01 “ Y “ MD6 M X 2 MD6 F', 0, '', '', 3, 'piece', 0, NULL, NULL, NULL, NULL, 0),
(219, 1, 0, 'CB931C-06', 'COPPER MATERIAL\r\n100% TESTED, GOOD QUALITY\r\nDATA CABLE BRAND\r\nLength: 6ft', '', 'resized/CB931C_06_USB_Se_51497b3dcc158_90x90.jpg', 'CB931C_06_USB_Se_51497b40c5f44.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1179728573, 1363770176, 'CB931C-06 USB Series A : B M/M 28/28  6ft.', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(221, 1, 0, 'DCI110', 'DC-AC Inverter with two outlet (300 watts)', '', '2ab5d8478bbdd1b40ddbc358590be1c7.jpg', 'e033011fcededfff8031f6586aee681c.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1179729757, 1415603331, 'DCI 110 DC to AC Power Inverter (300 watt)', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(415, 1, 0, 'NPS', 'Color: Red, Blue, Black and Gray\r\nSize: 12, 13, 14, 15 and 16', '', '51719d874314bf6be928febcbab07d15.jpg', 'a340a94ea695ce7ca17da2491d463303.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1195630796, 1285817146, 'Colored Notebook Protective Sleeves', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(411, 1, 0, 'NCP110', '', '', '10f8551afbbc272da29b4284172b04e6.jpg', 'eac81f269cd32d05c37926f6b3d5a3a2.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -28800, '', 'N', 0, NULL, 1190453043, 1264563175, 'NCP110 Notebook Cooling Pad with USB Ports', 0, '', '', 3, '', 0, NULL, NULL, NULL, NULL, 0),
(652, 1, 0, 'MGDVI-1388', 'DVI 24P+1 Pin M - VGA F Adapter', '', 'resized/MGDVI_1388_DVI_2_540acdf98e9a7_90x90.jpg', 'MGDVI_1388_DVI_2_540acdf9aff00.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1340409600, '', 'N', 0, NULL, 1340423653, 1409994233, 'MGDVI-1388 DVI 24+1 Pin Male /  VGA F Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(438, 1, 0, 'PCM-110', 'UL Type\r\nLength: 5ft\r\nAWG#18\r\nSJT TYPE', '', 'resized/PCM_110_CPU_to_M_4cae8e9851aaa_90x90.jpg', 'PCM_110_CPU_to_M_4cae8e9890a50.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1203496680, 1404724479, 'SJT AWG #18 Monitor Power Cord 1.5 Meter (UL)', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(439, 1, 0, 'MP100', '', '', '5ea65f9776cbc9cb339bc49ea7a99266.jpg', '3258276dcae6f46abd807c4c4848530f.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1206951337, 1285820774, 'MP100 Mouse Pad (Plain)', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(440, 1, 0, 'MP110', '', '', '517db901e9ee4dc916beb49cb0b6bafb.jpg', '4ede7f9ba480f6b77d2e67d44229bdd5.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1206951492, 1285820794, 'MP110 Mouse Pad with Wrist Rest', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(441, 1, 0, 'MP120', '', '', 'ef695010c6f836550aa48d3c9aa60ade.jpg', '3c4e4e27775e474c619752afe2335027.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1206951664, 1285820812, 'MP120 Mouse Pad with Wrist Rest (Gel Type)', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(444, 1, 0, 'NCP130', '', '', '92af8b5cc3945fadcf66db16d9d1990e.jpg', 'e149194dd98054f4d9686e31678635b4.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, 1200931200, '', 'N', 0, NULL, 1211269766, 1264563208, 'NCP130  NB Cooling Pad “3 in 1” (NB Stand, USB Hub 2.0, Cooler)', 0, '', '', 3, '', 0, NULL, NULL, NULL, NULL, 0),
(449, 1, 0, 'LSP110', 'LCD Screen Protector for Wide Screen 22 inch', '', '080b521fd7ae45d64dbeeb98c81d6ba6.jpg', 'db4674bf311fea5e3665552f81f61186.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1216198087, 1285817259, 'LSP110 Exagerate LCD Screen Protector for Wide Screen 22 inch', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(450, 1, 0, 'EC-PCI-100', '', '', 'resized/Oxford_Chipset_P_53ba6a54a2161_90x90.jpg', 'Oxford_Chipset_P_53ba6a5505c54.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1216198399, 1404725845, 'Oxford Chipset PCI Parallel Card', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(451, 1, 0, 'NCP150', '50% OFF \r\nLIMITED STOCKS ONLY!!!\r\n\r\nFeatures: \r\n\r\n-	Completely scalable and capable of adjusting to notebooks up to 17" sizes\r\n-	Made of durable metal with protective contact tips to prevent furniture scratches\r\n-	Raised end provides natural air flow to p', '50% OFF \r\nLIMITED STOCKS ONLY!!!\r\n\r\nFeatures: \r\n\r\n-	Completely scalable and capable of adjusting to notebooks up to 17" sizes\r\n-	Made of durable metal with protective contact tips to prevent furniture scratches\r\n-	Raised end provides natural air flow to prevent notebook overheating\r\n-	Collapsible for easy portability\r\n-	Strong Aluminum built with 5.6 oz weight\r\n-	Best for travelers, users at public places', 'resized/NCP150_Notebook__4dfffe51b1059_90x90.jpg', 'NCP150_Notebook__4dfffe51e54e5.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1216198605, 1335239528, 'NCP150 Notebook Cooling X-Stand (Lapara)', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(457, 1, 0, 'CF040M-06', 'COPPER MATERIAL\r\n100% TESTED, GOOD QUALITY\r\nDATA CABLE BRAND\r\nLength: 6ft', '', 'resized/CF040M_06_IEEE_1_514979fe80a8e_90x90.jpg', 'CF040M_06_IEEE_1_51497a019eacb.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1218703364, 1363769857, 'CF040M-06 IEEE 1394 Firewire  9 Pin - 9 Pin 6ft.', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(458, 1, 0, 'CF050M-06', 'COPPER MATERIAL\r\n100% TESTED, GOOD QUALITY\r\nDATA CABLE BRAND\r\nLength: 6ft', '', 'resized/CF050M_06_IEEE_1_51497a327efa7_90x90.jpg', 'CF050M_06_IEEE_1_51497a3546e68.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1218703473, 1363769909, 'CF050M-06 IEEE 1394 Firewire  9 Pin - 6 Pin 6ft.', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(459, 1, 0, 'CF060M-06', 'COPPER MATERIAL\r\n100% TESTED, GOOD QUALITY\r\nDATA CABLE BRAND\r\nLength: 6ft', '', 'resized/CF060M_06_IEEE_1_51497a64965d1_90x90.jpg', 'CF060M_06_IEEE_1_51497a67825fc.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1218703671, 1363769959, 'CF060M-06 IEEE 1394 Firewire  9 Pin - 4 Pin 6ft.', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(462, 1, 0, 'NL120', '', '', '32b61b9f33fa63d15f86c8c45f8b0afb.jpg', '53ce56caa40dc30d07c88dbd2aecf33f.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1219906771, 1285817347, 'NL120 EXAGERATE Notebook Lock Key Type', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(463, 1, 0, 'XAN-07A', '', '', 'dcb3e9bf7bddc52b720b78f9ce945aa7.jpg', '1c01b31475766a3e2ef99807d77fcaa8.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -28800, '', 'N', 0, NULL, 1220234289, 1220234330, 'XAN-07A ALL Direction Antenna 2.4GHZ', 0, '', '', 3, '', 0, NULL, NULL, NULL, NULL, 0),
(464, 1, 0, 'XAN-68A', '', '', 'dd8e148b5abee85596664e49d3d2be51.jpg', '1ad1569a50e4f8872d1753136cad3a6b.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -28800, '', 'N', 0, NULL, 1220234447, 1239160078, 'XAN-68A Multi Direction Magnetic Antenna Dual Band 5GHZ', 0, '', '', 3, '', 0, NULL, NULL, NULL, NULL, 0),
(465, 1, 0, 'NPS009', '" CRAZY SALE!!! 50% OFF for ALL Sizes of EXAGERATE LAPTOP SLEEVE!"\r\n\r\nAvialable Size: 7-9" , 10", 12, 13, 14, 15 & 16" \r\n\r\n<p />Anti-shock Polyurethane Sponge Notebook Bag has been specially designed to absorb shock energy. It releases the external shock', '<p>High density POLYURETHANE, “Memory Sponge”, protects your notebook from scratches, shock and water spillages. -</p>\r\n<p>Corners and side protections -</p>\r\n<p>Transparent upper elastic bands holds your notebook without blocking the LCD Screen -</p>\r\n<p>Designed to access your notebook without having to be removed. -</p>\r\n<p>Designed to be carried into another bag.</p>\r\n<p> </p>\r\n<p>Brand: Exagerate</p>\r\n<p>Colors: Red, Black, Pink, Blue & Grey</p>\r\n<p> </p>', '6b55270502f088d44cefc452dc5920c1.jpg', 'd72dfa6e9920267eb92d3339bbdc614f.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1220234543, 1308621874, 'NPS009 Mini Notebook Sleeve 7-8- 9"', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(466, 1, 0, 'NV1000', 'NAS 2-Bay 3.5" SATA type HDD Network Video Recorder Enclosure', '', 'c23fa6f631b90663913744ea6300966d.jpg', 'a7e43453e38685ed668a560f1d1c3929.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1220235277, 1286249725, 'NV1000 NAS Network Access Storage', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(467, 1, 0, 'CS101A', '', '', 'f73069b38c8a0009002169d792537668.jpg', 'e9a9ab366a3e9e0330cacd407f5a75ae.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1220236160, 1284561630, 'CS101A Wireless MJPEG IP Camera', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(468, 1, 0, 'CS1013', 'Accessible by cell phone', '', '071630cf8e920b1e3eddf3cf71a5ccca.jpg', 'b21101ddec0d4d1a04571d290ef4bebb.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1220238109, 1284561663, 'CS1013 Wireless Day & Night 2 Way Audio MJPEG / Mpeg4 IP Camera', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(469, 1, 0, 'CS1310', 'Accessible by cell phone', '', 'c25af10bc8af02026c18df0d44255f77.jpg', 'cd9d2817b812234e877e7552882fa866.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1220239147, 1284561633, 'CS1310 Wireless Day & Night P / T IP Camera IP CAM', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(470, 1, 0, 'MDVI-HDMIF-020', 'MINI DVI 32Pin - HDMI 19Pin Female Adapter - 0.2 Meter', '', 'resized/MINI_DVI_32Pin___53c34ac5dd4d1_90x90.jpg', 'MINI_DVI_32Pin___53c34ac612487.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1222066332, 1423642733, 'MINI DVI 32Pin - HDMI 19Pin Female Adapter - 0.2 Meter', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(471, 1, 0, 'MDVI-VGA15F-020', 'MINI DVI 32Pin - HDD15 Pin Female Adapter -0.2 Meter', '', 'resized/MINI_DVI_32Pin___55150d12326c9_90x90.jpg', 'MINI_DVI_32Pin___55150d1235cc2.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1222066412, 1427442962, 'MINI DVI 32Pin - VGA HDD15 Pin Female Adapter -0.2 Meter', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(474, 1, 0, 'MDVI-DVI25F-020', 'MINI DVI 32Pin - DVI 24+KEY F Adapter– 0.2 Meter', '', 'resized/MINI_DVI_32Pin___53c349c0eccdc_90x90.jpg', 'MINI_DVI_32Pin___53c349c122490.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1222066925, 1405307329, 'MINI DVI 32Pin - DVI 24+KEY F Adapter– 0.2 Meter', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(473, 1, 0, 'UD110', 'Upgrade to a new computer is not easier. The Easy Transfer Cable offers a quick way to transfer your files and settings from your old computer to a new one. Just install the software provided on the enclosed CD onto your XP computer', '', 'resized/UD110_Easy_Trans_514a7b0515b43_90x90.jpg', 'UD110_Easy_Trans_514a7b0572bc4.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1222066700, 1423642697, 'UD110 Easy Transfer Cable', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(477, 1, 0, 'UTEC10', 'USB extension cord make your USB based ExpressCard such as (3.5G HSDPA, Broadband Wireless, memory, RS232, 3G modems and WiMax) works universally with all your Desktop, Laptop and Notebook through USB port.', '<p>USB extension cord make your USB based ExpressCard such as (3.5G HSDPA, Broadband Wireless, memory, RS232, 3G modems and WiMax) works universally with all your Desktop, Laptop and Notebook through USB port. It supports USB-Based ExpressCard Host Adapters including 3.5G HSDPA, Broadband Wireless, memory, 3G modems, WiMax, RS232 and Solid State Disk</p>\r\n<p><strong>Features:</strong></p>\r\n<p> Compliant with USB 2.0 Standard</p>\r\n<p> Allows USB Base ExpressCard/34 or ExpressCard/54 module working via USB Port</p>\r\n<p> Compatible with all USB 2.0-MODE ExpressCards including many WLAN, WiMax, 3G (HSDPA and CDMA) and memory, e.g. storage media ExpressCards.</p>\r\n<p> Compact design with low power consumption</p>\r\n<p> Compatible with MAC and PC laptops  RoHs compliance, easy installation</p>\r\n<p> Support Windows 2000, ME, XP, Vista and Mac 8.6 and above</p>\r\n<p> </p>\r\n<p>NOTE: NOT COMPATIBLE WITH ANY PCI-e based ExpressCards</p>\r\n<p> </p>\r\n<p> </p>', '62e692a83f6a86d842beaf8e10e72352.jpg', '9581b20a839ca755d83ce2bb59d1bc3c.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1233823849, 1423642660, 'UTEC10  USB 2.0 to 34/54mm USB based Express Card Adaptor', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(478, 1, 0, 'MP140', '', '', '66c38bf9be8f754dfd592e0d71bdb61d.jpg', '31b0ad364f31e40c95bdbcbf3951e160.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1238728935, 1285820844, 'MP140 Mouse Pad Rubberized', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(479, 1, 0, 'MP130', '', '', '231e6f5e35dda769026213b83f7571cd.jpg', 'c7ea136c3248f35df80bc66ac33a2803.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1238729341, 1285820827, 'MP130 Mouse Pad with Photo Frame', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(623, 1, 0, 'RF-6040', 'ASSORTED COLORS', '', 'resized/RF_6040_2.4_GHz__4e9cf35c95b73_90x90.jpg', 'RF_6040_2.4_GHz__4e9cf35c9f0d9.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1318896000, '', 'N', 0, NULL, 1318908764, 1318908764, 'RF-6040 2.4 GHz Micro Wireless Mouse', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(663, 1, 0, 'CB952C-06', 'COPPER MATERIAL\r\n100% TESTED, GOOD QUALITY\r\nDATA CABLE BRAND\r\nLength: 6ft', '', 'resized/CB952C_06_USB_Se_51497e7cc4492_90x90.jpg', 'CB952C_06_USB_Se_51497e7f780ed.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1363737600, '', 'N', 0, NULL, 1363771007, 1363771007, 'CB952C-06	USB Series A: IEEE1394 4pins FireWire', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(486, 1, 0, 'UCR130', '', '', 'a933c7992e77949c1d59ac6bb07df1d6.jpg', '27665d955529b4fec3df3065472b31f4.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1239942870, 1286248843, 'UCR130 3.5 Internal Card Reader', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(785, 1, 0, 'QHS-901', '', '', 'resized/Fashion_Stereo_H_54e6d7c76ee8d_90x90.jpg', 'Fashion_Stereo_H_54e6d7c7749ba.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424414603, 1424414663, 'Fashion Stereo Headphone', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(489, 1, 0, 'NPS120', 'ON-SALE! 50% OFF!\r\nUNIVERSAL LAPTOP BAG!!!\r\nAVAILABLE COLOR: BLACK & PINK\r\n\r\n\r\nCALL US FOR MORE INFO. ""', '', '1af167b07e7aefba9ba893014918f59a.jpg', 'cdc9f5c15f905d0dc36c22b5878112ae.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1239943351, 1296786921, 'NPS120 Universal Notebook Bag 3 in 1', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(494, 1, 0, 'DLT10', 'The audio video extender uses a local transmitter (DLT10), and a remote receiver (the DLR10) to extend the transmission distance up to 150M via CAT 5/5e/6 UTP/STP cable.', '<p>The audio video extender uses a local transmitter (DLT10), and a remote receiver (the DLR10) to extend the transmission distance up to 150M via CAT 5/5e/6 UTP/STP cable. DLT10 can be daisy chained with another DLT50 and DLT10 to upgrade its application.</p>\r\n<p><strong>Key features:</strong></p>\r\n<p>>Compact desktop size transmitter and receiver Works with Cat 5, Czt 5E, Czt 6 Ethernet cable Transmission distance of up to 500ft (150 meters maximum)</p>\r\n<p>>Easily installs and makes adjustment for video signal set-up</p>\r\n<p>>Compatible with DOS, MS Windows, Linux, Unix, and Netware</p>\r\n<p>>No software installation required Supports high VGA resolution up to 1,024 x 768</p>\r\n<p>>Power LED and data transmission LED indication</p>\r\n<p>>Simple and easy to use with PS/2 mouse and PS/2 keyboard</p>\r\n<p>>Connects between transmitter and receiver with a standard network cable</p>\r\n<p> </p>', '5fb10dd44769ff4a4f4cb0feb7780628.jpg', 'c87df92b062fb1de3f96f1f2efdd70c8.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1248940520, 1285819672, 'DLT10 Video Transmitter and Receiver', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0);
INSERT INTO `jos_vm_product` (`product_id`, `vendor_id`, `product_parent_id`, `product_sku`, `product_s_desc`, `product_desc`, `product_thumb_image`, `product_full_image`, `product_publish`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_available_date`, `product_availability`, `product_special`, `product_discount_id`, `ship_code_id`, `cdate`, `mdate`, `product_name`, `product_sales`, `attribute`, `custom_attribute`, `product_tax_id`, `product_unit`, `product_packaging`, `child_options`, `quantity_options`, `child_option_ids`, `product_order_levels`, `promo`) VALUES
(730, 1, 0, 'VRP01', 'This VGA UTP Extender 1X1 Splitter with Audio is an ideal device for local displaying and remote viewing. It combines split function and extension function. It distributes the input of the VGA signal and audio signal into the local and remote outputs simu', '<p> </p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h3 style="margin: 1em 0in;"><span style="color: #000000; font-family: Times New Roman; font-size: medium;"> </span></h3>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h3 style="margin: 1em 0in;"><span style="color: #000000; font-family: Times New Roman; font-size: medium;">VGA UTP Extender with Audio--VRP01</span></h3>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<div style="padding: 5pt 0in; margin-right: 0in; margin-left: -13pt; mso-element: para-border-div; mso-border-top-alt: dotted #CCCCCC .5pt; mso-border-bottom-alt: dotted #CCCCCC .5pt; border: 1pt medium dotted none #cccccc currentColor;"><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt 0.25in; padding: 0in; border: currentColor; border-image: none; line-height: 17pt; text-indent: -0.25in; display: none; mso-border-top-alt: dotted #CCCCCC .5pt; mso-border-bottom-alt: dotted #CCCCCC .5pt; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-list: l0 level1 lfo1; tab-stops: list .5in; mso-padding-alt: 5.0pt 0in 5.0pt 0in;"><span style="display: none; mso-bidi-font-size: 6.0pt; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-hide: all;"><span style="mso-list: Ignore;"><span style="color: #000000; font-family: Times New Roman; font-size: small;"><img width="5" src="file:///D:/H21%20files/Product%20Details/PicExportError" border="0" height="5" alt="*" /></span></span></span><span style="color: #333333; font-family: ">Price:Price Available</span></p>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></div>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="font-family: "><span style="color: #000000;">P/N:  VRP01</span></span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="font-family: "><span style="color: #000000;">Description</span></span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p><span style="color: #333333; font-family: ">This VGA UTP Extender 1X1 Splitter with Audio is an ideal device for local displaying and remote viewing. It combines split function and extension function. It distributes the input of the VGA signal and audio signal into the local and remote outputs simultaneously. Receiver by Cat5 x1 works with the Sender as a full functional module by receiving the distributed signal from the sender and transmitting to display. Only by the most inexpensive UTP cable with cross stand inside, the full functional module extend the VGA display max up to 300 meters.</span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p><span style="color: #333333; font-family: ">It offers solutions for VGA retail and show site and Projector factory, noise, space and security concerns, data center control, information distribution, conference room presentation, school and corporate training environments. </span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="font-family: "><span style="color: #000000;">Specifications</span></span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p><span style="color: #333333; font-family: ">This device has many features that enable it to perform in a superior manner. Among those features you will find:</span><span style="color: #333333; font-family: "><br /><span style="font-size: small;"> </span></span><span style="color: #333333; font-family: ">1</span><span style="color: #333333; font-family: ">、</span><span style="color: #333333; font-family: ">Extend VGA video and stereo audio signal max up to 300m over one UTP cable with cross stand inside</span><span style="color: #333333; font-family: "><br /><span style="font-size: small;"> </span></span><span style="color: #333333; font-family: ">2</span><span style="color: #333333; font-family: ">、</span><span style="color: #333333; font-family: ">Adjusting GAIN and PEAK to adapt for the different length of UTP cable.</span><span style="color: #333333; font-family: "><br /><span style="font-size: small;"> </span></span><span style="color: #333333; font-family: "> GAIN: Brightness adjustment.</span><span style="color: #333333; font-family: "><br /><span style="font-size: small;"> </span></span><span style="color: #333333; font-family: "> PEAK: Skew adjustment.</span><span style="color: #333333; font-family: "><br /><span style="font-size: small;"> </span></span><span style="color: #333333; font-family: ">3</span><span style="color: #333333; font-family: ">、</span><span style="color: #333333; font-family: ">Supports resolution max up to 1920x1200.</span><span style="color: #333333; font-family: "><br /><span style="font-size: small;"> </span></span><span style="color: #333333; font-family: ">4</span><span style="color: #333333; font-family: ">、</span><span style="color: #333333; font-family: ">Dual output at local unit: 1 x VGA output for local site, plus 1 x UTP output for remote site.</span><span style="color: #333333; font-family: "><br /><span style="font-size: small;"> </span></span><span style="color: #333333; font-family: ">5</span><span style="color: #333333; font-family: ">、</span><span style="color: #333333; font-family: ">Work with monitors projectors, HDTV, and flat panels.</span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="font-family: "><span style="color: #000000;">Connection</span></span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="color: #000000; font-family: Times New Roman; font-size: small;"><img width="601" src="data:image/png;base64,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I/75rQoAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKr3VhaXwUXVtFPs+75iBsfnViigDP/sHSP8AoGWv/foUf2DpH/QMtf8Av0K0KKAM/wDsHSP+gZa/9+hR/YOkf9Ay1/79CtCigDP/ALB0j/oGWv8A36FH9g6R/wBAy1/79CtCigDP/sHSP+gZa/8AfoUf2DpH/QMtf+/QrQooAz/7B0j/AKBlr/36FH9g6R/0DLX/AL9CtCigDP8A7B0j/oGWv/foUf2DpH/QMtf+/QrQooAz/wCwdI/6Blr/AN+hR/YOkf8AQMtf+/QrQooAz/7B0j/oGWv/AH6FH9g6R/0DLX/v0K0KKAM/+wdI/wCgZa/9+hR/YOkf9Ay1/wC/QrQooAz/AOwdI/6Blr/36FH9g6R/0DLX/v0K0KKAM/8AsHSP+gZa/wDfoUf2DpH/AEDLX/v0K0KKAM/+wdI/6Blr/wB+hR/YOkf9Ay1/79CtCigDP/sHSP8AoGWv/foUf2DpH/QMtf8Av0K0KKAM/wDsHSP+gZa/9+hR/YOkf9Ay1/79CtCigDP/ALB0j/oGWv8A36FH9g6R/wBAy1/79CtCigCOGCK3hWGCNY41GFRBgCpKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAa7BFyQT9KaZQBnDdM4xUlFADUcOu4Aj6inUUUAf//Z" border="0" height="300" /></span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="color: #000000; font-family: Times New Roman; font-size: small;"><img width="200" src="data:image/png;base64,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" border="0" height="140" /><img width="188" src="data:image/png;base64,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" border="0" height="132" /><img width="176" src="data:image/png;base64,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" border="0" height="123" /></span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="font-family: "><br /><span style="color: #000000;"> </span></span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 0pt;"><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>', 'resized/VRP01_VGA_Extend_53c49d5aa8f03_90x90.jpg', 'VRP01_VGA_Extend_53c49d5ad4a77.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1405296000, '', 'Y', 0, NULL, 1405311922, 1424419398, 'VRP01 VGA Extender w/ audio (Transmitter/Receiver Single Port)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(501, 1, 0, 'FC-143', '', '', '404b3c6f3693225f23af4bf3612f379e.jpg', 'b54e165e1653e08eace08e393c2cdbe6.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1250046131, 1285820474, 'FC-143 Mini Optical Mouse', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(502, 1, 0, 'FC-530', '', '', '92b459be7edb9c068756130b7ced5d04.jpg', '9203883d9610a810aa808771af9e505b.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1250046746, 1424414456, 'FC-530 Smart Keyboard', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(503, 1, 0, 'FC-780', '', '', 'ba3985eca106dade905a0fb66021f77d.jpg', 'b1dd0d2d317b0a5b77c5d86364cbfef9.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1250046826, 1285820565, 'FC-780 Mini Keyboard', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(624, 1, 0, 'RF-9100', 'BLACK & WHITE', '', 'resized/RF_9100_USB_Blue_4e9cf41d69628_90x90.jpg', 'RF_9100_USB_Blue_4e9cf41d79391.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1318896000, '', 'N', 0, NULL, 1318908957, 1318908957, 'RF-9100 USB Bluetooth Wireless Mouse', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(827, 1, 0, 'DTV-101', 'USB HDTV tuner allows users to capture free HDTV broadcast and Radio Stations using an indoor HDTV antenna. \r\nThe antenna is connected to the HDTV USB Device, which then connects to a USB slot on your computer. Once HDTV broadcasts are captured you can wa', 'USB 2.0 Digital TV Receiver \r\nHDTV Tuner Dongle Stick Antenna with Remote\r\n\r\nUSB HDTV tuner allows users to capture free HDTV broadcast and Radio Stations using an indoor HDTV antenna. \r\nThe antenna is connected to the HDTV USB Device, which then connects to a USB slot on your computer. Once HDTV broadcasts are captured you can watch and record the channels and listen to the radio stations that your antenna can pick up.\r\n\r\n \r\nFeatures:\r\n•	Watch digital TV Live on Laptop or Desktop \r\n•	Listen Radio Stations\r\n•	Still image snapshots\r\n•	Time-shifting\r\n•	Digital TV recording and playback\r\n•	Support EPG\r\n•	Support Teletext\r\n•	Support Microsoft DBA Drivers\r\n•	Remote Control\r\n•	Support Win OS\r\n\r\nSpecifications:\r\nUSB 2.0 Standard Interface\r\nFrequency: TV/473, 143-803, 143Mhz\r\nPunctured Codes: ½, 2/3, ¾, 4/5, 5/6 & 7/8\r\nBandwidth: 6 Mhz- Multiplexing\r\nStream Capture: PES & TS\r\n\r\nPackage Content:\r\n1 x Digital TV Stick\r\n1 x Antenna\r\n1 x Remote Control Unit\r\n1 x Installation CD', 'resized/USB_Digital_TV_f_556c18e7124c6_90x90.jpg', 'USB_Digital_TV_f_556c18e71c7d3.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1433116800, '', 'N', 0, NULL, 1433147623, 1433405497, 'USB Digital TV for Computers', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 1),
(509, 1, 0, 'VB100', 'The USB Video Snake Scope  allows you to record the video footage while having it traveling through those hard-to-reach corners.', 'The Snake Scope Video Inspection Borescope comes with a 300k water-resistant camera complete with two adjustable white LEDs. It is easily operated by plugging the USB connector directly into your computers USB port. The Snake Scope is able to capture high quality colour images and video by the touch of a button on the handle and requires no batteries because it draws its power directly from the USB port on your computer.', 'resized/VB100_USB_Video__51a05cbb8e476_90x90.jpg', 'VB100_USB_Video__51a05cbcc3fad.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1255579331, 1369463996, 'VB100 USB Video Snake Scope', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(510, 1, 0, 'VB110', 'Helping you to search inside hard to see places the Video Borescope is a very handy pipeline inspection tool.', '<p>This video borescope inspection system features a 2.4-inch LCD color monitor for real-time viewing, with a 10mm flexible camera probe that retains its configured shape for inspecting hard-to-reach areas. A standard 1-meter probe length is provided with the unit.</p>\r\n<p>• Home inspection: Inspect in walls for mold, insect infestation, electrical wire or water pipe location</p>\r\n<p>• Pest Control: Inspect for termites in wall cavities</p>\r\n<p>• HVAC: Inspect inside ducts, behind motors and compressors</p>\r\n<p>• Automotive: View inside or around engines and transmissions</p>\r\n<p>• Government: Safety and security inspections</p>\r\n<p>• Industrial: Inspect weld integrity, process equipment, gears, molding machines</p>\r\n<p>• Aerospace: Aircraft inspections for contamination, debris, cracks or other damage</p>\r\n<p> </p>\r\n<p><strong>Magnet and Hook Tips</strong></p>\r\n<p>Included Strong Magnetic Tip allows you to pick-up nuts, bolts and screws you may have dropped in inaccessible places. Easy clip on design for fast installation. Hook Tip: J-shaped extension used to tug, pull or pick up small objects or wires.</p>\r\n<p><strong>Specifications:</strong></p>\r\n<p>• Sensor:1/18 inch analog CMOS</p>\r\n<p>• Array Size:320 x 240 (NTSC)</p>\r\n<p>• View Angle:54°</p>\r\n<p>• LED:2 pcs (light adjustable)</p>\r\n<p>• Focal Distance:3-6cm</p>\r\n<p>• LCD:2.4 inch TFT 234x320 pixel</p>\r\n<p>• Video out Format :NTSC</p>\r\n<p>• Level of Waterproof: IP68</p>\r\n<p>• Outer Diameter of Camera:10mm</p>\r\n<p>• Outer Diameter of Tube:6.8mm</p>\r\n<p> • Length of Metal tube:1m)</p>\r\n<p>• Continuous Working time:10h(Max)</p>\r\n<p>• Battery:4 X AAA</p>\r\n<p>• Body Size(LxWxH):81x75x62mm(Max)</p>\r\n<p> </p>\r\n<p><strong>Features:</strong></p>\r\n<p>• 2 adjustable white LED lighting .</p>\r\n<p>• Lens: F2.8 view of angele 54.</p>\r\n<p>• 1/18 inch analog CMOS.</p>\r\n<p>• Focal distance:3-6cm .</p>\r\n<p>• Lens outer diameter 10mm .</p>\r\n<p>• NTSC TV Video output .</p>\r\n<p>• Picture vertical mirror/normal function .</p>\r\n<p>• Metal tube in 1meter length(1m~20m option) .</p>\r\n<p>• Tube outer diameter 6.8mm.</p>\r\n<p>• 2.4 inch Color LCD:234*320 pixels.</p>\r\n<p>• Powered by 4 X AAA batteries.</p>\r\n<p>• PE covered tube, ABS Handler.</p>\r\n<p>• Magnetic & Hook accessories. Package Includes:</p>\r\n<p>• 1x Video Borescope • 1x Tool Box • 1x Video cable • 1x Hook and Magnetic Tip</p>\r\n<p> </p>\r\n<p> </p>', 'resized/VB110_Video_Bore_51a05d04b1861_90x90.jpg', 'VB110_Video_Bore_51a05d0515502.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1255580830, 1369464069, 'VB110 Video Borescope with LCD Screen', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(534, 1, 0, 'SK-810', '', '', '64a7f36ef7876409bbdbd64b42c4fbc1.jpg', 'a910df3655100ead3084e6eda343346f.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -28800, '', 'N', 0, NULL, 1260936086, 1267150961, 'SK-810 Communication Headset', 0, '', '', 3, '', 0, NULL, NULL, NULL, NULL, 0),
(537, 1, 0, 'WC140', 'This modern PC Camera with built-in Microphone with 640x480 resolution.', '<p><strong>FEATURES:</strong></p>\r\n<p> Modern PC Camera</p>\r\n<p> 640x480 Resolution</p>\r\n<p> 10K Megapixel image sensor</p>\r\n<p> USB Power Supply</p>\r\n<p> Communication speed USB 2.0</p>\r\n<p> USB plug & Play</p>\r\n<p> Maximum Frame rate 30</p>\r\n<p> Manual zoom lens</p>\r\n<p> Independent Microphone</p>\r\n<p> </p>\r\n<p><strong>Compatible with:</strong></p>\r\n<p>*****Windows 2000, Windows XP/Vista & Windows 7</p>\r\n<p>*****Mac10.4.8 or Later</p>', '527dee5d060ded0a6b3c51099f24f11b.jpg', '0580492637b94e2bb6bb47c3187ff5b7.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1263200850, 1285821089, 'WC140 Desktop USB Camera With Microphone 10 Megapixel', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(540, 1, 0, 'SK-614', '', '', '33ee7a3b7ca36d52cdeb4e29f1b8b148.jpg', '4f2dd55f512bc95728c85c65d5a121a2.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -28800, '', 'N', 0, NULL, 1267150438, 1267150438, 'SK-614 Stereo Headphone', 0, '', '', 3, '', 0, NULL, NULL, NULL, NULL, 0),
(542, 1, 0, 'SK-890', 'Hi-Fi Headphone Speaker \r\n\r\n： Φ40mm Sensitivity \r\n\r\n： 105dB S.P.L at 1KHz Impedance \r\n\r\n： 32Ω Frequency Response \r\n\r\n： 20Hz-20,000Hz Rated Power\r\n\r\n ： 100mW Cable \r\n\r\n： Approx.2.0m±0.3m (PU cable) Plug Type \r\n\r\n： 3.5mm stereo plug x 1', '<p>Hi-Fi Headphone Speaker</p>\r\n<p>： Φ40mm Sensitivity</p>\r\n<p>： 105dB S.P.L at 1KHz Impedance</p>\r\n<p>： 32Ω Frequency Response</p>\r\n<p>： 20Hz-20,000Hz Rated Power</p>\r\n<p>： 100mW Cable</p>\r\n<p>： Approx.2.0m±0.3m (PU cable) Plug Type</p>\r\n<p>： 3.5mm stereo plug x 1</p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>', '827d8042e743438968a886a8a20cd131.jpg', '8793f6e79f0876cb01b7310b2a10e34e.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1267150737, 1335239304, 'SK-890 DJ Stereo Headphone', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(543, 1, 0, 'SK-890C', '', '', 'd1b4f88a87f6eba01d428a6b877bfade.jpg', '27eeb1e84161cdd7e856933e8f0b6256.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -28800, '', 'N', 0, NULL, 1267150817, 1267150817, 'SK-890 DJ Stereo Headphone with Microphone', 0, '', '', 3, '', 0, NULL, NULL, NULL, NULL, 0),
(550, 1, 0, 'UCR160', '', '', '0d3cf2744387fa24dac8c287f3fdc1b4.jpg', 'ad3131374f6901cba8f061306c18ad68.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1267153427, 1286248963, 'UCR160 USB Micro SD Card Reader', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(551, 1, 0, 'NPS170 & NPS180', '', '', '7d84014a1748b126365a0b13f1604b27.jpg', '12c2ddd23b646d6af486c987e6a72819.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1267153891, 1285817378, 'Notebook Sleeve Size 12" & 14" (low cost)', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(553, 1, 0, 'NPS140 , NPS150& NPS160', '', '', 'bba76b9b0c715e8535fc697b7db0b9fa.jpg', 'f0f682b2aa3e9c99edf7f35e80bf8901.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1267154962, 1285817364, 'Notebook Reversible Pouch', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(554, 1, 0, 'UP0052', 'Features: \r\n*** Single chip (ASIC)USB to Parallel host to host Com. *** Windows 98 and NT5.0 Support. *** USB Spec. compliant. *** USB full speed communication & bus powered. *** USB Printer Class Spec. 1.0 compliant. *** IEEE - 1284 1994 (Bi-directional', '', 'resized/UP0052_USB_to_Pa_55694e7fa378b_90x90.jpg', 'UP0052_USB_to_Pa_55694e7fa97b1.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1273031699, 1432964735, 'UP0052 USB to Parallel Cable (25 Female)', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(557, 1, 0, 'TL68', 'Size: 10" , 12" & 14', '', '0b67d8d9ac9f6bd04a20c573f9ed1dcc.jpg', '32a9efd71d314574456720a441318e0e.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1275275826, 1285817420, 'TL68 Netbook Slip Case 10" ,12" & 14', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(559, 1, 0, 'XH-V2', '', '', 'd3e4dd337d491705e900518dc96e5c58.jpg', 'f9907d18127d5832f7aa2b2e7ebd84d9.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1277084707, 1285821574, 'XH-V2 USB Optical Mouse', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(563, 1, 0, 'UH310', '', '', '6a223695732cf42150d08fc26b6d014d.png', '2130bdacf33009d45412fbebb54abc5e.png', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1277085198, 1286248414, 'UH310 USB HUB 10 Ports with Power Supply', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(564, 1, 0, 'SY660', '', '', 'db1b4544f7b71a123d9f8736b6d0dcea.jpg', '08be9ea59283ed42721ad149a1231220.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1277085318, 1286248114, 'SY660 Kino Card Reader 8-Slots', 0, '', '', 0, '', 0, 'N,N,N,N,N,N,,,', 'none,0,0,1', '', '0,0', 0),
(566, 1, 0, 'AP210', 'The Mini Display Port to DVI Adapter lets you connect an advanced digital monitor, such as the 20- or 23-inch Cinema Display, to a MacBook, MacBook Pro, or MacBook Air with a Mini DisplayProt.', '<p>The Mini Display Port to DVI Adapter lets you connect an advanced digital monitor, such as the 20- or 23-inch Cinema Display, to a MacBook, MacBook Pro, or MacBook Air with a Mini DisplayProt.</p>\r\n<p>The new MacBook, MacBook Pro, and MacBook Air each have a Mini Display Port that allows you to connect an external display or projector using an adapter. You can use an external display as your main workspace or to extend your desktop, or you can work in mirrored mode with a projector so you can view what your audience see. Use the Mini Display port to DVI Adapter to connect an advanced digital monitor, such as the 20- or 23-inch Cinema Display, that includes a DVI connector.</p>\r\n<p>Review the documentation or check with the manufacturer of your monitor to make sure you''re choosing the right adapter.</p>\r\n<p>Compatible only with MacBook, MacBook Pro, and MacBook Air with Mini DisplayPort.</p>', 'resized/AP210_Mini_Displ_53ba68a8cfb96_90x90.jpg', 'AP210_Mini_Displ_53ba68a927007.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1277085592, 1404725595, 'AP210 Mini Display Port to DVI Female Adapter', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0);
INSERT INTO `jos_vm_product` (`product_id`, `vendor_id`, `product_parent_id`, `product_sku`, `product_s_desc`, `product_desc`, `product_thumb_image`, `product_full_image`, `product_publish`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_available_date`, `product_availability`, `product_special`, `product_discount_id`, `ship_code_id`, `cdate`, `mdate`, `product_name`, `product_sales`, `attribute`, `custom_attribute`, `product_tax_id`, `product_unit`, `product_packaging`, `child_options`, `quantity_options`, `child_option_ids`, `product_order_levels`, `promo`) VALUES
(568, 1, 0, 'CB962C-06', 'SuperSpeed USB will deliver 10x the data transfer rate of Hi-Speed USB, as well improved power efficiency.This USB is backward compatible with USB 2.0 Devices interoperate with USB 2.0 platforms. Host support USB 2.0 legacy devices.', '<p>Feature:</p>\r\n<p>1. USB 3.0 cable provided 10 times data transfer speed than USB 2.0;</p>\r\n<p>2. Data transfer rate up to 4.8 Gbps.</p>\r\n<p>3. Compatible with USB 2.0.</p>\r\n<p>4. Efficient in power supply then USB2.0. USB 3.0 cable power ability is 900mA compared with former USB 100mA</p>\r\n<p> </p>\r\n<p>Specification: .</p>\r\n<p>> USB 3.0 connector 30u" UL94V-0 .</p>\r\n<p>> USB 3.0 Cable UL2725 28/28/28 AWG OD: 5.5mm .</p>\r\n<p>> Blue Color</p>\r\n<p> </p>\r\n<p> </p>', '4ca21fed3c33a828ec9217e2bcccc129.jpg', '004ac5d95cbbfc6682d978a1d11d16f7.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1277086286, 1453971758, 'CB962C-06 USB 3.0 A: A M/F Extension Cable 6ft.', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(569, 1, 0, 'CB932C-06', 'SuperSpeed USB brings significant performance enhancements to the ubiquitous USB Standard, while remaining compatible with the billions of USB-enabled devices currently deployed in the market.', '<p>Feature:</p>\r\n<p>1. USB 3.0 cable provided 10 times data transfer speed than USB 2.0;</p>\r\n<p>2. Data transfer rate up to 4.8 Gbps.</p>\r\n<p>3. Compatible with USB 2.0.</p>\r\n<p>4. Efficient in power supply then USB2.0. USB 3.0 cable power ability is 900mA compared with former USB 100mA</p>\r\n<p> </p>\r\n<p>Specification: .</p>\r\n<p>USB 3.0 connector 30u" UL94V-0 .</p>\r\n<p>USB 3.0 Cable UL2725 28/28/28 AWG OD: 5.5mm .</p>\r\n<p>Blue Color</p>', '48853da1ad691a920848806c2b5f392a.jpg', 'd09e83a2cfcea57e812ea4d1c932ae76.jpg', 'Y', '0.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, -86400, '', 'N', 0, NULL, 1277086792, 1424419447, 'CB932C-06 USB 3.0 A: B M/M Cable 6ft.', 0, '', '', 0, '', 0, 'N,N,N,N,N,Y,,,', 'none,0,0,1', '', '0,0', 0),
(631, 1, 0, 'LED100', '', '', 'resized/LED100_USB_LED_P_4e9cfe62c9d3b_90x90.jpg', 'LED100_USB_LED_P_4e9cfe62d18c3.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1318896000, '', 'N', 0, NULL, 1318911586, 1318911586, 'LED100 USB LED Portable Light', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(636, 1, 0, 'FC-1188', 'USB Variable Size Mouse', '', 'resized/FC_1188_USB_Vari_4e9e4e5244ab2_90x90.jpg', 'FC_1188_USB_Vari_4e9e4e5254688.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1318982400, '', 'N', 0, NULL, 1318997586, 1318997586, 'FC-1188 USB Variable Size Mouse', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(626, 1, 0, 'TL98', 'ASSORTED COLORS\r\nSIZE: 12", & 14"', '', 'resized/TL98_Netbook_Sli_4e9cf73fc756a_90x90.jpg', 'TL98_Netbook_Sli_4e9cf73fd758c.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1318896000, '', 'N', 0, NULL, 1318909759, 1318909759, 'TL98 Netbook Slip Case', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(628, 1, 0, 'TL0714', 'Size: 14', '', 'resized/TL0714_Netbook_S_4e9cf8385646e_90x90.jpg', 'TL0714_Netbook_S_4e9cf83865bb4.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1318896000, '', 'N', 0, NULL, 1318910008, 1318910008, 'TL0714 Netbook Slip Case Slim', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(573, 1, 0, 'RJ-45-G', 'RJ-45 Shielded (for STP Cable)', '<p>RJ-45 Shielded (for STP Cable)</p>', 'resized/RJ_45_Shielded___4caa95c38c36a_90x90.jpg', 'RJ_45_Shielded___4caa95c392838.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1286236800, '', 'N', 0, NULL, 1286247875, 1286247875, 'RJ-45 Shielded (for STP Cable)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(574, 1, 0, 'RB100', '', '', 'resized/RJ_45_Rubber_Boo_4caa960a3d036_90x90.jpg', 'RJ_45_Rubber_Boo_4caa960a44be6.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1286236800, '', 'N', 0, NULL, 1286247946, 1286247946, 'RJ-45 Rubber Boot', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(771, 1, 0, 'MP230', '', '', 'resized/Mouse_Pad_Round__54e6d0f4821e1_90x90.jpg', 'Mouse_Pad_Round__54e6d0f504f57.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424412917, 1424412917, 'Mouse Pad Round Silicon Type', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(649, 1, 0, 'GT100', 'GT100 Galaxy Tab to Card Reader w/ USB 2.0', '', 'resized/GT100_Galaxy_Tab_4f9620d49512c_90x90.jpg', 'GT100_Galaxy_Tab_4f9620d4f1b86.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1335225600, '', 'N', 0, NULL, 1335238868, 1335239158, 'GT100 Galaxy Tab to Card Reader w/ USB 2.0', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(575, 1, 0, 'PCY-100', 'UL Type\r\nAWG # 18', '', 'resized/PCY_100_CPU___Mo_4cae901adc756_90x90.jpg', 'PCY_100_CPU___Mo_4cae901b1021a.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1286496000, '', 'N', 0, NULL, 1286508571, 1286508571, 'PCY-100 CPU / Monitor Y-Power Cord', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(576, 1, 0, 'PC 20+19', 'UL Type\r\nLength: 5ft\r\nAWG#16', '', 'resized/AWG__16_SJT_Powe_55694c771679a_90x90.jpg', 'AWG__16_SJT_Powe_55694c77282c9.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1286496000, '', 'N', 0, NULL, 1286508692, 1432964259, 'AWG #16 SJT Power Cord C20 + C19 1.5 Meter (UL)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(776, 1, 0, 'WB-1610B', '', '', 'resized/USB_Gaming_Mouse_54e6d44249e84_90x90.jpg', 'USB_Gaming_Mouse_54e6d4427a071.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424413762, 1424413762, 'USB Gaming Mouse 6D', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(777, 1, 0, 'WB-1620B', '', '', 'resized/USB_Gaming_Mouse_54e6d4805a91a_90x90.jpg', 'USB_Gaming_Mouse_54e6d4809debc.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424413824, 1424413824, 'USB Gaming Mouse 6D', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(778, 1, 0, 'WB-1630', '', '', 'resized/USB_Gaming_Mouse_54e6d4b5d4411_90x90.jpg', 'USB_Gaming_Mouse_54e6d4b608e7e.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424413878, 1424413878, 'USB Gaming Mouse 6D', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(779, 1, 0, 'WB-1650', '', '', 'resized/USB_Gaming_Mouse_54e6d4e45be54_90x90.jpg', 'USB_Gaming_Mouse_54e6d4e4929c0.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424413924, 1424413924, 'USB Gaming Mouse 6D', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(780, 1, 0, 'WB-5150B', '', '', 'resized/USB_Gaming_Mouse_54e6d512667d4_90x90.jpg', 'USB_Gaming_Mouse_54e6d5129cc63.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424413970, 1424413970, 'USB Gaming Mouse 6D', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(625, 1, 0, 'FC-3004', '', '', 'resized/FC_3004_USB_Opti_4e9cf49bcd708_90x90.jpg', 'FC_3004_USB_Opti_4e9cf49bd85b2.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1318896000, '', 'N', 0, NULL, 1318909083, 1318909083, 'FC-3004 USB Optical Mouse', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(627, 1, 0, 'TL88', 'ASSORTED COLOR\r\nSIZE: 12" & 14"', '', 'resized/TL88_Netbook_Sli_4e9cf79cce328_90x90.jpg', 'TL88_Netbook_Sli_4e9cf79ce31d8.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1318896000, '', 'N', 0, NULL, 1318909852, 1318909852, 'TL88 Netbook Slip Case', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(580, 1, 0, 'AP250-2C', '', '', 'resized/AP250_2C_DB9_F_F_4cbfafebc27ea_90x90.jpg', 'AP250_2C_DB9_F_F_4cbfafebca8af.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1287619200, '', 'N', 0, NULL, 1287630827, 1287631263, 'AP250-2C DB9 F/F Gender Changer', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(581, 1, 0, 'AP250-1C', '', '', 'resized/AP250_1C_DB9_M_M_4cbfb02828a83_90x90.jpg', 'AP250_1C_DB9_M_M_4cbfb0282c4c5.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1287619200, '', 'N', 0, NULL, 1287630888, 1287631217, 'AP250-1C DB9 M/M Gender Changer', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(582, 1, 0, 'AP300-1C', '', '', 'resized/AP300_1C_HDDB_15_4cbfb0dc4bbb1_90x90.jpg', 'AP300_1C_HDDB_15_4cbfb0dc520ed.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1287619200, '', 'N', 0, NULL, 1287631068, 1287631305, 'AP300-1C HDDB 15 M/M VGA Gender Changer', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(583, 1, 0, 'AP310-1C', '', '', 'resized/AP310_1C_HDDB_15_4cbfb1129fa3f_90x90.jpg', 'AP310_1C_HDDB_15_4cbfb112a95d7.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1287619200, '', 'N', 0, NULL, 1287631122, 1287631347, 'AP310-1C HDDB 15 F/F VGA Gender Changer', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(584, 1, 0, 'AP252-1C', '', '', 'resized/AP252_1C_DB25_M__4cbfb2942e298_90x90.jpg', 'AP252_1C_DB25_M__4cbfb29439c32.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1287619200, '', 'N', 0, NULL, 1287631508, 1287631508, 'AP252-1C DB25 M/M Gender Changer', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(585, 1, 0, 'AP252-2C', '', '', 'resized/AP252_2C_DB25_F__4cbfb2f3f1803_90x90.jpg', 'AP252_2C_DB25_F__4cbfb2f3f3c10.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1287619200, '', 'N', 0, NULL, 1287631603, 1287631603, 'AP252-2C DB25 F/F Gender Changer', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(586, 1, 0, 'AP252-3', '', '', 'resized/AP252_3_DB25_M_F_4cbfb3f626b40_90x90.jpg', 'AP252_3_DB25_M_F_4cbfb3f62ffaf.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1287619200, '', 'N', 0, NULL, 1287631862, 1287631862, 'AP252-3 DB25 M/F Gender Changer', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(587, 1, 0, '1PK-810B', 'SET Includes: \r\n\r\n5" side cutter\r\n5" long nose plier\r\n9.5 "crimping tool\r\nstainless tweezer\r\nIC Extractor\r\nIC insert tool\r\nsolder wick\r\nquick heat ceramic soldering iron\r\n6" adjustable wrench\r\npro-soft duplex \r\n8pcs bits pack\r\n3pcs soldering aid kit\r\npart', 'Items Inside:\r\n\r\n5" side cutter\r\n5" long nose plier\r\n9.5 "crimping tool\r\nstainless tweezer\r\nIC Extractor\r\nIC insert tool\r\nsolder wick\r\nquick heat ceramic soldering iron\r\n6" adjustable wrench\r\npro-soft duplex \r\n8pcs bits pack\r\n3pcs soldering aid kit\r\nparts tube\r\nheat sink\r\ndesoldering pump\r\n3 prong holder\r\nsolder core\r\ncarrying zipper bag (325x195x48mm)', 'resized/1PK_810B_PRO_____4cbfb6b112d5e_90x90.jpg', '1PK_810B_PRO_____4cbfb6b12888a.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1287619200, '', 'N', 0, NULL, 1287632561, 1319002177, '1PK-810B PRO –KITS Tool Kit 1PK –810 (Computer Service Tool Kit)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(588, 1, 0, 'AX3237', '', '', 'resized/SATA_Power_Cable_4d562eeded07c_90x90.jpg', 'SATA_Power_Cable_4d562eee052f1.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1297468800, '', 'N', 0, NULL, 1297493742, 1297493742, 'SATA Power Cable (4PIN IDE TO 1 SATA)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(589, 1, 0, 'SATA 1316', '', '', 'resized/SATA_01316_Sata__4d562fd5cc918_90x90.jpg', 'SATA_01316_Sata__4d562fd5dfde5.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1297468800, '', 'N', 0, NULL, 1297493973, 1297652940, 'SATA 7 Pin to SATA 7 Pin 50CM', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(590, 1, 0, 'SATA 1576', '', '', 'resized/SATA_22_Pin_to_S_4d589c25acb2a_90x90.jpg', 'SATA_22_Pin_to_S_4d589c2629036.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1297641600, '', 'N', 0, NULL, 1297649551, 1297652774, 'SATA 22 Pin to Sata 7 Pin 61CM', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(591, 1, 0, 'SATA 101577', '', '', 'resized/SATA_32_Pin_to_S_4d58976f66dd6_90x90.jpg', 'SATA_32_Pin_to_S_4d58977076be9.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1297641600, '', 'N', 0, NULL, 1297649652, 1297651568, 'SATA 32 Pin to SATA 7 Pin x4 50CM', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(592, 1, 0, 'SATA 201577', '', '', 'resized/SATA_32_Pin_to_S_4d5896b5c6c84_90x90.jpg', 'SATA_32_Pin_to_S_4d5896b6c7168.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1297641600, '', 'N', 0, NULL, 1297649688, 1297651382, 'SATA 32 Pin to SATA 7 Pin x4 75CM', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(593, 1, 0, 'SATA 301577', '', '', 'resized/SATA_32_Pin_to_S_4d589637a8732_90x90.jpg', 'SATA_32_Pin_to_S_4d589638a214c.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1297641600, '', 'N', 0, NULL, 1297649720, 1297651256, 'SATA 32 Pin to SATA 7 Pin x4 100CM', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(594, 1, 0, 'SATA 101578', '', '', 'resized/SATA_32_Pin_to_S_4d589419ce79d_90x90.jpg', 'SATA_32_Pin_to_S_4d58941acbb59.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1297641600, '', 'N', 0, NULL, 1297649758, 1297650753, 'SATA 32 Pin to Sata 32 Pin 50CM', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(595, 1, 0, 'SATA 201578', '', '', 'resized/SATA_32_Pin_to_S_4d5894ee23ee1_90x90.jpg', 'SATA_32_Pin_to_S_4d5894ef475b4.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1297641600, '', 'N', 0, NULL, 1297649803, 1297650927, 'SATA 32 Pin to Sata 32 Pin 100CM', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(596, 1, 0, 'PK808376C', 'PRO- KITS Crimping Tool 8P8C\r\nFOR: RJ45\r\nTAIWAN MADE\r\nPROS-KIT BRAND', '', 'resized/PRO__KITS_Crimpi_4e9e5d12eb3c8_90x90.jpg', 'PRO__KITS_Crimpi_4e9e5d13288e6.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1297641600, '', 'N', 0, NULL, 1297649974, 1319001996, 'PRO- KITS Crimping Tool 8P8C', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(597, 1, 0, 'PK808376B', 'PRO- KITS Crimping Tool 6P6C\r\nFOR: RJ11\r\nTAIWAN MADE\r\nPROS-KIT BRAND', '', 'resized/PRO__KITS_Crimpi_4e9e5d4247f85_90x90.jpg', 'PRO__KITS_Crimpi_4e9e5d4261a48.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1297641600, '', 'N', 0, NULL, 1297650022, 1319001970, 'PRO- KITS Crimping Tool 6P6C', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(598, 1, 0, 'CT-100', 'CT-100 Crimping Tool Combo\r\nfor: 8P8c and 6P6C (Generic)', '', 'resized/COMBO_Crimping_T_4e9e5ce68552b_90x90.jpg', 'COMBO_Crimping_T_4e9e5ce6b56e5.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1297641600, '', 'N', 0, NULL, 1297650058, 1319001850, 'CT-100 Crimping Tool Combo', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(599, 1, 0, 'CT-110', 'CT-110 Crimping Tool Single\r\nfor:RJ45 8P8c (Generic)', '', 'resized/Single_Crimping__4e9e5e10556de_90x90.jpg', 'Single_Crimping__4e9e5e1083136.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1297641600, '', 'N', 0, NULL, 1297650085, 1319001910, 'CT-110 Crimping Tool Single', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(600, 1, 0, 'CT-120 Trio', '', '', '', '', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1297641600, '', 'N', 0, NULL, 1297650110, 1297650110, 'Crimping Tool (Generic)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(604, 1, 0, 'CZ9001', '', '', 'resized/Cable_Zip_Organi_4da2632eb60f7_90x90.jpg', 'Cable_Zip_Organi_4da2632ec81a8.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1302480000, '', 'N', 0, NULL, 1302487854, 1424412731, 'Cable Zip Organizer w/ clip', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(825, 1, 0, 'C19+5-15P', 'UL Type\r\nLength: 5ft\r\nAWG#16', '', 'resized/AWG__16_SJT_Nema_55694b832cb9f_90x90.jpg', 'AWG__16_SJT_Nema_55694b8333fef.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1432944000, '', 'N', 0, NULL, 1432963971, 1432964269, 'AWG #16 SJT Nema 5 -15 to C19 13A 1.5M (UL)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(826, 1, 0, 'C20+C13', 'UL Type\r\nLength: 5ft\r\nAWG#16', '', 'resized/AWG__16_SJT_C20__55694bcf8baea_90x90.jpg', 'AWG__16_SJT_C20__55694bcfca694.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1432944000, '', 'N', 0, NULL, 1432964047, 1432964281, 'AWG #16 SJT C20 to C13 13A 1.5M (UL)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(609, 1, 0, 'UCR170', '', '', 'resized/HT39_Floral_Card_4da265d624915_90x90.jpg', 'HT39_Floral_Card_4da265d62f58f.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1302480000, '', 'N', 0, NULL, 1302488534, 1302488569, 'HT39 Floral Card Reader', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(610, 1, 0, 'UCR180', '', '', 'resized/HT38_USB_2.0_6_S_4da266308ff05_90x90.jpg', 'HT38_USB_2.0_6_S_4da26630a09e4.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1302480000, '', 'N', 0, NULL, 1302488624, 1302488624, 'HT38 USB 2.0 6-Slot Card Reader', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(612, 1, 0, 'UH320', '', '', 'resized/USB_2.0_Hub_w__4_4da266de7bac8_90x90.jpg', 'USB_2.0_Hub_w__4_4da266de863d1.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1302480000, '', 'N', 0, NULL, 1302488798, 1302488798, 'USB 2.0 Hub w/ 4- Slots Card Reader', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(613, 1, 0, 'NB', '', 'COLOR: BLACK\r\nAVAILABLE SIZE:\r\n\r\nNB10	Memory Foam NB Sleeve 10”\r\nNB12	Memory Foam NB Sleeve 12”\r\nNB13	Memory Foam NB Sleeve 13”\r\nNB14	Memory Foam NB Sleeve 14”\r\nNB15	Memory Foam NB Sleeve 15”', 'resized/Memory_Foam_NB_S_4da2684655cb8_90x90.jpg', 'Memory_Foam_NB_S_4da2684668894.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1302480000, '', 'N', 0, NULL, 1302489158, 1302489166, 'Memory Foam NB Sleeve', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(765, 1, 0, 'CT101I-100X-30', '"Data Cable Brand:\r\nPure Copper\r\n100% Tested\r\nMachine Crimp/ Molded', '', 'resized/CT101I_100X_30_P_54606e8924d9b_90x90.jpg', 'CT101I_100X_30_P_54606e89b89e7.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415605897, 1415606319, 'CT101I-100X-30 Patch Cable 10 Meters Cat 6', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(616, 1, 0, 'MP180', 'Assorted Design', '', 'resized/Mouse_Pad_w__Fan_4da26a08a9dbb_90x90.jpg', 'Mouse_Pad_w__Fan_4da26a08b5bd6.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1302480000, '', 'N', 0, NULL, 1302489608, 1302489642, 'Mouse Pad w/ Fancy Design', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(617, 1, 0, 'HNB003', '** Casual Professional Stylish Designed.\r\n** Lightweight, durable 1680 denier water proof nylon for superior protection.\r\n** Padded computer Compartment holds most 12" to 16" laptops', '** Casual Professional Stylish Designed.\r\n** Lightweight, durable 1680 denier water proof nylon for superior protection.\r\n** Padded computer Compartment holds most 12" to 16" laptops\r\n** Full-featured organizational panel stores your portable electronics, pens and more.\r\n** Adjustble padded strap for both shoulder and hand carry.\r\n** fabric : 1680 Deneir Nylon', 'resized/Exagerate_Notebo_4e44ce586e9e4_90x90.jpg', 'Exagerate_Notebo_4e44ce58892f8.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1313107200, '', 'N', 0, NULL, 1313131871, 1313132234, 'Exagerate Notebook Bag 3 in 1', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(758, 1, 0, 'UST-US05BC', 'Charges up to 5 devices at once, support most MP3 players, cell phones, digital cameras, tablet PC and other portable devises that use a USB input to charge.', '<p>Charges up to 5 devices at once, support most MP3 players, cell phones, digital cameras, tablet PC and other portable devises that use a USB input to charge. Specifications and</p>\r\n<p>Feature:</p>\r\n<p>•	Input AC 100-240V, 50/60HZ, 0.08A</p>\r\n<p>•	Output DC 5V/5A</p>\r\n<p>•	LED power light</p>\r\n<p>•	Portable, small, multi-usage</p>\r\n<p>•	Convenient and equipped with a variety of plug specification</p>\r\n<p>•	General wire length: 1M</p>\r\n<p>•	In accordance with the CE, RoHS standard, lead-free encapsulation</p>\r\n<p>•	Ambient temperature range: 0°C to +70°C</p>\r\n<p> </p>', 'resized/USB_5_Ports_Char_55e55a083ee69_90x90.jpg', 'USB_5_Ports_Char_55e55a084c982.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'Y', 0, NULL, 1415602685, 1441094152, 'USB 5-Ports Charging Station', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(759, 1, 0, 'CT46U-UNI', '', '', 'resized/USB_Power_Adapte_55e562c881910_90x90.jpg', 'USB_Power_Adapte_55e562c8914a2.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415602895, 1441096392, 'USB Power Adapter (4-PORTS)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(760, 1, 0, 'UTA150', '', '', 'resized/USB_Power_Adapte_5460633e1bf18_90x90.jpg', 'USB_Power_Adapte_5460633e1fc0f.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415603006, 1415603044, 'USB Power Adapter 10Watts', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(761, 1, 0, 'PS005', '', '', 'resized/Surge_Protector__546063cb0c285_90x90.jpg', 'Surge_Protector__546063cb53d59.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415603147, 1415603147, 'Surge Protector 6-Outlet (w/ ground & breaker 3 Prong) 1M', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(716, 1, 0, 'BSQ6', 'Power Bank \r\nMetallic Glossy \r\n6,500 mAh\r\nwith Four (4)different connectors', '', 'resized/BSQ6_Power_Bank__53c34f3355360_90x90.jpg', 'BSQ6_Power_Bank__53c34f335f2f0.jpg', 'N', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1405296000, '', 'N', 0, NULL, 1405308723, 1405308723, 'BSQ6 Power Bank Metallic Glossy 6,500 mAh', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(717, 1, 0, 'HD17', 'Power Bank 6,000 mAh', '', 'resized/HD17_Power_Bank__53c34fae0ae80_90x90.jpg', 'HD17_Power_Bank__53c34faecbbad.jpg', 'N', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1405296000, '', 'N', 0, NULL, 1405308846, 1405308846, 'HD17 Power Bank 6,000 mAh', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(629, 1, 0, 'PCR100', 'PCR100 PC Remote Controller (GPRS)', '', 'resized/PCR100_PC_Remote_4e9cfa6caec0e_90x90.jpg', 'PCR100_PC_Remote_4e9cfa6cb64f7.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1318896000, '', 'N', 0, NULL, 1318910276, 1340425240, 'PCR100 PC Remote Controller (GPRS)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(630, 1, 0, 'WC170', 'ASSORTED COLOR', '', 'resized/WC170_Crystal_Cl_4e9cfcac2fb49_90x90.jpg', 'WC170_Crystal_Cl_4e9cfcac393e0.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1318896000, '', 'N', 0, NULL, 1318911148, 1318911148, 'WC170 Crystal Clip On Camera', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(645, 1, 0, 'Ipad130', 'iPad130 IPad Camera Connection Kit', '', 'resized/iPad130_IPad_Cam_4f961109f1997_90x90.jpg', 'iPad130_IPad_Cam_4f96110a42977.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1335225600, '', 'N', 0, NULL, 1335234826, 1404186753, 'iPad130 IPad Camera Connection Kit', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(646, 1, 0, 'ipad140', 'Ipad140 IPad Protective Sleeve Angry Bird', '', 'resized/Ipad140_IPad_Pro_4f9612c258e0d_90x90.jpg', 'Ipad140_IPad_Pro_4f9612c26da46.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1335225600, '', 'N', 0, NULL, 1335235266, 1362633309, 'Ipad140 IPad Protective Sleeve Angry Bird', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(648, 1, 0, 'iPad', 'iPad141 iPad Reversible Pouch', '', 'resized/iPad141_iPad_Rev_4f9617d3ca560_90x90.jpg', 'iPad141_iPad_Rev_4f9617d3d9d19.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1335225600, '', 'N', 0, NULL, 1335236563, 1404723507, 'iPad141 iPad Reversible Pouch', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(653, 1, 0, 'iPad101', 'IPAD SCREEN PROTECTOR\r\nGLOSSY TYPE\r\nFOR IPAD 2/ 3/ 4', '', 'resized/iPad101_Screen_P_513821503eacd_90x90.jpg', 'iPad101_Screen_P_513821518920a.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1341360000, '', 'N', 0, NULL, 1341381661, 1363918643, 'iPad101 Screen Protector for iPad Glossy', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(654, 1, 0, 'CB165M-35-FC', 'UL2919 FULLY SHIELDED\r\nCOPPER MATERIAL\r\n100% TESTED\r\nDATA CABLLE BRAND\r\nLength: 35ft', '', 'resized/HDDB15_M_M_VGA_E_513812fdd1a7c_90x90.jpg', 'HDDB15_M_M_VGA_E_513812fed7101.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1362614400, '', 'N', 0, NULL, 1362628237, 1362631592, 'CB165M-35-FC HDDB15 M/M VGA Extension Cable (with FC) 35ft', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(655, 1, 0, 'CB165M-150-FC', 'UL2919 FULLY SHIELDED\r\nCOPPER MATERIAL\r\n100% TESTED\r\nDATA CABLLE BRAND\r\nLength: 150ft.', '', 'resized/HDDB15_M_M_VGA_E_5138110ab9587_90x90.jpg', 'HDDB15_M_M_VGA_E_5138110e6be49.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1362614400, '', 'N', 0, NULL, 1362628878, 1362631474, 'CB165M-150-FC HDDB15 M/M VGA Extension Cable (with FC) 150ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(656, 1, 0, 'CB166M-35-FC', 'UL2919 FULLY SHIELDED\r\nCOPPER MATERIAL\r\n100% TESTED\r\nDATA CABLLE BRAND\r\nLength: 35ft', '', 'resized/HDDB15_M_F_VGA_E_5138116864842_90x90.jpg', 'HDDB15_M_F_VGA_E_5138116be477d.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1362614400, '', 'N', 0, NULL, 1362628971, 1362631630, 'CB166M-35-FC HDDB15 M/F VGA Extension Cable (with FC) 35ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(657, 1, 0, 'CB166M-150-FC', 'UL2919 FULLY SHIELDED\r\nCOPPER MATERIAL\r\n100% TESTED\r\nDATA CABLLE BRAND\r\nLength: 150ft.', '', 'resized/CB166M_150_FC_HD_51381e67ba478_90x90.jpg', 'CB166M_150_FC_HD_51381e6b481dd.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1362614400, '', 'N', 0, NULL, 1362632299, 1362632299, 'CB166M-150-FC HDDB15 M/F VGA Extension Cable (with FC) 150ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(658, 1, 0, 'iPad103', 'Ipad Screen Protector\r\nMatte Type (no finger print)\r\nfor IPAD 2/3/4', '', 'resized/Screen_Protector_51382599bdeab_90x90.jpg', 'Screen_Protector_5138259bdb8f0.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1362614400, '', 'N', 0, NULL, 1362634139, 1363918677, 'iPad103 Screen Protector for IPad', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(659, 1, 0, 'Ipad102', 'iPad102	iPad Skin\r\nfor ipad 2/ 3/ 4', '', 'resized/iPad102_iPad_Ski_514bc2d1def40_90x90.jpg', 'iPad102_iPad_Ski_514bc2d300965.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1362614400, '', 'N', 0, NULL, 1362634294, 1363919571, 'iPad102 iPad Skin', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(660, 1, 0, 'HDMI-890-06-G', 'COPPER MATERIAL\r\n100% TESTED, GOOD QUALITY\r\nDATA CABLE BRAND\r\nLENGTH: 6FT', '', 'resized/HDMI_890_06_G_HD_513aebd805232_90x90.jpg', 'HDMI_890_06_G_HD_513aebda3a24b.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1362787200, '', 'N', 0, NULL, 1362815962, 1362815962, 'HDMI-890-06-G HDMI - Mini HDMI M/M Cable 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(661, 1, 0, 'HDMI-900-06', 'COPPER MATERIAL\r\n100% TESTED, GOOD QUALITY\r\nDATA CABLE BRAND\r\nLENGTH: 6FT', '', 'resized/HDMI_900_06_HDMI_513aec57cd87c_90x90.jpg', 'HDMI_900_06_HDMI_513aec5a8a9bf.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1362787200, '', 'N', 0, NULL, 1362816090, 1362816090, 'HDMI-900-06	HDMI - Micro HDMI M/M Cable 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(662, 1, 0, 'DVI-1969-25', 'DVI-I DUAL LINK\r\nCOPPER MATERIAL \r\n100%TESTED GOOD QUALITY\r\nDATA CABLE BRAND\r\nLENGTH: 25FT', '', 'resized/DVI_1969_25_DVI__51441cf472c46_90x90.jpg', 'DVI_1969_25_DVI__51441cf796194.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1363392000, '', 'N', 0, NULL, 1363418359, 1363419140, 'DVI-1969-25	DVI 24+5 / DVI 24+5 M/M CABLE 25ft', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(667, 1, 0, 'LS10', '', '', 'resized/LS10_Universal_S_514bbe00a75ec_90x90.jpg', 'LS10_Universal_S_514bbe011d555.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1363910400, '', 'N', 0, NULL, 1363918337, 1363918337, 'LS10	Universal Stand (for iPad or any Tablet PC)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(668, 1, 0, 'YZ-8881', '', '', 'resized/YZ_8881_Universa_514bbebde91fc_90x90.jpg', 'YZ_8881_Universa_514bbebec5a80.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1363910400, '', 'N', 0, NULL, 1363918526, 1363918553, 'YZ-8881 Universal Tablet Mini Stand', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(669, 1, 0, 'CB933C-03', 'COPPER MATERIAL\r\n100% TESTED GOOD QUALITY\r\nDATA CABLE BRAND', '', 'resized/CB933C_03_USB_3._5188748e2a56f_90x90.jpg', 'CB933C_03_USB_3._5188749168755.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1367884800, '', 'Y', 0, NULL, 1367897233, 1367897233, 'CB933C-03	USB 3.0 A: Micro B 10P Cable 3ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(670, 1, 0, 'CB933C-06', 'COPPER MATERIAL\r\n100% TESTED GOOD QUALITY\r\nDATA CABLE BRAND', '', 'resized/CB933C_06_USB_3._518874dd88664_90x90.jpg', 'CB933C_06_USB_3._518874dfc16ed.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1367884800, '', 'N', 0, NULL, 1367897311, 1367897311, 'CB933C-06	USB 3.0 A: Micro B 10P Cable 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(673, 1, 0, 'IPL120', 'IPL120	USB Triple Adapter(Micro, Lightning, 30P Tab)', '', 'resized/IPL120_USB_Tripl_518876670fea3_90x90.jpg', 'IPL120_USB_Tripl_51887667613b8.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1367884800, '', 'N', 0, NULL, 1367897703, 1367897712, 'IPL120	USB Triple Adapter(Micro, Lightning, Tab)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(674, 1, 0, 'IPL130', 'IPL130	Lightning to Ipad 30P Female Adapter', '', 'resized/IPL130_Lightning_518876bed84cd_90x90.jpg', 'IPL130_Lightning_518876bf87147.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1367884800, '', 'N', 0, NULL, 1367897791, 1367897791, 'IPL130	Lightning to Ipad Female Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(675, 1, 0, 'IPAD104', 'iPad104	iPad Mini Screen Protector', '', '', '', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1367884800, '', 'N', 0, NULL, 1367898007, 1367898007, 'iPad104	iPad Mini Screen Protector', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(676, 1, 0, 'IPAD160', 'iPad160	Origami Smart Cover for iPad\r\nSIZE: 10"\r\nIPAD 2/3/4\r\nASSORTED COLOR', '', 'resized/iPad160_Origami__51887be90d156_90x90.jpg', 'iPad160_Origami__51887bea0dd3a.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1367884800, '', 'N', 0, NULL, 1367898799, 1367899114, 'iPad160	Origami Smart Cover for iPad', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(677, 1, 0, 'IPAD161', 'iPad161	Origami Ultralight IPad Cover\r\nSIZE: 10"\r\nIPAD 2/3/4\r\nASSORTED COLOR', '', 'resized/iPad161_Origami__51887b4709e0b_90x90.jpg', 'iPad161_Origami__51887b47e0ca9.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1367884800, '', 'N', 0, NULL, 1367898951, 1367898951, 'iPad161	Origami Ultralight IPad Cover', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(678, 1, 0, 'IPAD165', 'IPAD165	iPad Mini Smart Cover\r\n\r\nSIZE: 7"\r\nIPAD MINI\r\nASSORTED COLOR', '', 'resized/IPAD165_iPad_Min_51887bbd154d6_90x90.jpg', 'IPAD165_iPad_Min_51887bbd82a19.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1367884800, '', 'N', 0, NULL, 1367899069, 1367899591, 'IPAD165	iPad Mini Smart Cover', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(680, 1, 0, 'IPAD170', 'iPad170	iPad Shell Cover Silicon Type\r\n\r\nSIZE: 10"\r\nIPAD 2/3/4\r\nASSORTED COLOR', '', 'resized/iPad170_iPad_She_51887e4344b6d_90x90.jpg', 'iPad170_iPad_She_51887e446ba8c.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1367884800, '', 'N', 0, NULL, 1367899716, 1367899716, 'iPad170	iPad Shell Cover Silicon Type', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(681, 1, 0, 'IPAD171', 'iPad171	iPad Shell Cover Hard Plastic\r\n\r\nSIZE: 10"\r\nIPAD 2/3/4\r\nASSORTED COLOR', '', 'resized/iPad171_iPad_She_51887e877db5d_90x90.jpg', 'iPad171_iPad_She_51887e88d3f4c.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1367884800, '', 'N', 0, NULL, 1367899784, 1367899784, 'iPad171	iPad Shell Cover Hard Plastic', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(682, 1, 0, 'ipad167', 'iPad167	iPad Mini Sleeve Case\r\n\r\nSIZE: 7"\r\nIPAD MINI\r\nASSORTED COLOR', '', 'resized/iPad167_iPad_Min_51887f1651ff3_90x90.jpg', 'iPad167_iPad_Min_51887f16da3e3.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1367884800, '', 'N', 0, NULL, 1367899888, 1367899926, 'iPad167	iPad Mini Sleeve Case', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(683, 1, 0, 'IPAD172', 'iPad172	iPad Mini Shock Protector \r\n\r\nSIZE: 7"\r\nIPAD MINI\r\nASSORTED COLOR', '', 'resized/iPad172_iPad_Min_51887f615fc00_90x90.jpg', 'iPad172_iPad_Min_51887f620202a.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1367884800, '', 'N', 0, NULL, 1367900002, 1367900002, 'iPad172	iPad Mini Shock Protector', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(684, 1, 0, 'TUP100', 'TUP100	Tablet Universal Pouch 7" w/ pocket\r\n\r\n\r\nSIZE: 7"\r\nANY TABLET UPTO 7" \r\nASSORTED COLOR', '', 'resized/TUP100_Tablet_Un_51887fc0afa66_90x90.jpg', 'TUP100_Tablet_Un_51887fc1940b6.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1367884800, '', 'N', 0, NULL, 1367900097, 1367900210, 'TUP100	Tablet Universal Pouch 7" w/ pocket', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(685, 1, 0, 'TUP110', 'TUP110	Tablet Universal Pouch 10" w/ pocket\r\n\r\nSIZE: 10"\r\nANY TABLET 10"\r\nASSORTED COLOR', '', 'resized/TUP110_Tablet_Un_518880056957d_90x90.jpg', 'TUP110_Tablet_Un_5188800658ff1.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1367884800, '', 'N', 0, NULL, 1367900166, 1367900166, 'TUP110	Tablet Universal Pouch 10" w/ pocket', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(686, 1, 0, 'IPAD142', 'IPAD142	iPad142 iPad Sleeve 10”\r\n\r\nSIZE: 10"\r\nASSORTED COLOR', '', 'resized/IPAD142_iPad142__5188814aa68af_90x90.jpg', 'IPAD142_iPad142__5188814bdb4c1.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1367884800, '', 'N', 0, NULL, 1367900491, 1367900491, 'IPAD142	iPad142 iPad Sleeve 10”', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(687, 1, 0, 'IPAD143', 'IPAD143	iPad143 iPad Mini Sleeve 7”\r\n\r\nSIZE: 7"\r\nASSORTED COLOR', '', 'resized/IPAD143_iPad143__518881d46e226_90x90.jpg', 'IPAD143_iPad143__518881d566a61.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1367884800, '', 'N', 0, NULL, 1367900629, 1367900629, 'IPAD143	iPad143 iPad Mini Sleeve 7”', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(720, 1, 0, 'HD20', 'Power Bank 15,600 mAh\r\nAvailable Assorted Colors', '', 'resized/HD20_Power_Bank__53c350a6e625d_90x90.jpg', 'HD20_Power_Bank__53c350a7970dc.jpg', 'N', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1405296000, '', 'N', 0, NULL, 1405309095, 1405309095, 'HD20 Power Bank 15,600 mAh', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(721, 1, 0, 'BS28', 'BS28 Power Bank 2800mAh 4-Connectors\r\nAvailable in Different Colors', '', 'resized/BS28_Power_Bank__53c350fd19014_90x90.jpg', 'BS28_Power_Bank__53c350fd21e1e.jpg', 'N', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1405296000, '', 'N', 0, NULL, 1405309181, 1405309181, 'BS28 Power Bank 2800mAh 4-Connectors', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(722, 1, 0, 'NDO13-09S', '', '', 'resized/NDO13_09S_DB9_Fe_53c3521e1e0d7_90x90.jpg', 'NDO13_09S_DB9_Fe_53c3521e2e003.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1405296000, '', 'N', 0, NULL, 1405309470, 1405309470, 'NDO13-09S DB9 Female Connector', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(723, 1, 0, 'NDO13-09P', '', '', 'resized/NDO13_09P_DB9_Ma_53c3529720160_90x90.jpg', 'NDO13_09P_DB9_Ma_53c3529737098.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1405296000, '', 'N', 0, NULL, 1405309591, 1405309591, 'NDO13-09P DB9 Male Connector', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(724, 1, 0, 'NDO13-H15S', '', '', 'resized/NDO13_H15S_HDDB1_53c35357c4d6b_90x90.jpg', 'NDO13_H15S_HDDB1_53c35357c93ab.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1405296000, '', 'N', 0, NULL, 1405309783, 1405309783, 'NDO13-H15S	HDDB15 VGA Female Connector', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(725, 1, 0, 'NDO13-H15P', '', '', 'resized/NDO13_H15P_HDDB1_53c353a167f6b_90x90.jpg', 'NDO13_H15P_HDDB1_53c353a16c9e6.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1405296000, '', 'N', 0, NULL, 1405309857, 1405309857, 'NDO13-H15P	HDDB15 VGA Male Connector', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(693, 1, 0, 'MD80', 'Compact design, wide product UV coating machine, wearable and fashion and a variety of portable tools \r\nSupport net-camera, it has net-chatting function. \r\nSupport AVI video format \r\nThe high-definition images also can be recorded in the weak illuminatio', '<p>FEATURES: 	Compact design, wide product UV coating machine, wearable and fashion and a variety of portable tools  	Support net-camera, it has net-chatting function.  	Support AVI video format  	The high-definition images also can be recorded in the weak illumination 	Support 720 * 480 video resolution and 30 frames per second video recording speed.  	Support the common USB1.1 and the USB2.0 interface with high-speed transmission 	The maximum size of T-flash card is 8G 	The power of the built-in lithium battery can last for 2 hours’ videoing and the standby time is 250 hours.</p>', 'resized/MD80_Mini_DV_Poc_51a06be27093f_90x90.jpg', 'MD80_Mini_DV_Poc_51a06be328bce.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1369440000, '', 'N', 0, NULL, 1369467875, 1423638108, 'MD80 Mini DV Pocket Camera Recorder', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 1),
(728, 1, 0, 'NDO13-25P', '', '', 'resized/NDO13_25P_DB25_M_53c354c1ccffb_90x90.jpg', 'NDO13_25P_DB25_M_53c354c21a630.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1405296000, '', 'N', 0, NULL, 1405310146, 1405310146, 'NDO13-25P	DB25 Male Connector', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(729, 1, 0, 'NH118-25G', '', '', 'resized/NH118_25G_Snap_o_53c35a7b204b1_90x90.jpg', 'NH118_25G_Snap_o_53c35a7b41da8.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1405296000, '', 'N', 0, NULL, 1405311611, 1405311611, 'NH118-25G Snap on Plastic Hood', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(726, 1, 0, 'NH118-09G', '', '', 'resized/NH118_09G_Snap_o_53c353e9897b7_90x90.jpg', 'NH118_09G_Snap_o_53c353e9b54b3.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1405296000, '', 'N', 0, NULL, 1405309929, 1405309929, 'NH118-09G	Snap on Plastic Hood', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(727, 1, 0, 'NDO13-25S', '', '', 'resized/NDO13_25S_DB25_F_53c354829debb_90x90.jpg', 'NDO13_25S_DB25_F_53c35482b960c.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1405296000, '', 'N', 0, NULL, 1405310082, 1405310082, 'NDO13-25S	DB25 Female Connector', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(697, 1, 0, 'ITV4.0', 'This is the smallest Android TV player in the world,it looks like a USB flash drive, twice as big as a USB stick,but compared to a regular small Android TV box,the size is only 25%. You can attach it to the back of your TV, easy to hide.', '', 'resized/ITV4.0_Android_4_51a06fa95402a_90x90.jpg', 'ITV4.0_Android_4_51a06fa9ae58d.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1369440000, '', 'N', 0, NULL, 1369468841, 1423638089, 'ITV4.0 Android 4.0 Internet TV & Mini PC', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 1),
(764, 1, 0, 'CT101I-080X-30', '"Data Cable Brand:\r\nPure Copper\r\n100% Tested\r\nMachine Crimp/ Molded', '', 'resized/Patch_Cable_Cat__54606d7cbc8ba_90x90.jpg', 'Patch_Cable_Cat__54606d7d2e83b.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415605629, 1415606267, 'CT101I-080X-30 Patch Cable 8 Meters Cat 6', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0);
INSERT INTO `jos_vm_product` (`product_id`, `vendor_id`, `product_parent_id`, `product_sku`, `product_s_desc`, `product_desc`, `product_thumb_image`, `product_full_image`, `product_publish`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_available_date`, `product_availability`, `product_special`, `product_discount_id`, `ship_code_id`, `cdate`, `mdate`, `product_name`, `product_sales`, `attribute`, `custom_attribute`, `product_tax_id`, `product_unit`, `product_packaging`, `child_options`, `quantity_options`, `child_option_ids`, `product_order_levels`, `promo`) VALUES
(699, 1, 0, 'UST-DTH06', 'Support Display Port 1.1a input and HDMI High Speed HDMI Cable output.\r\n\r\n\r\n2.Support HDMI highest video resolutions 1080p.\r\n\r\n\r\n3.Support HDMI 225 Mhz/ 2.2Gbps per channel (6.75Gps all channel) bandwidth. \r\n\r\n\r\n4.Support HDMI 12bit per channel (36bit all', '<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><strong style="mso-bidi-font-weight: normal;"><span style="line-height: 115%; font-size: 18pt; mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri;">UST-DTH06 Display Port (M) To HDMI (F) Adapter</span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><span style="color: #000000; font-family: Times New Roman; font-size: small;"><img src="data:image/png;base64,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" border="0" hspace="12" width="337" height="252" align="left" style="width: 165px; height: 168px;" /></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><strong style="mso-bidi-font-weight: normal;"><span style="line-height: 115%; font-size: 18pt; mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri;"> </span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><strong style="mso-bidi-font-weight: normal;"><span style="line-height: 115%; font-size: 18pt; mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri;"> </span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><strong style="mso-bidi-font-weight: normal;"><span style="line-height: 115%; font-size: 18pt; mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri;"> </span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><strong style="mso-bidi-font-weight: normal;"><span style="line-height: 115%; font-size: 18pt; mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri;"> </span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><strong style="mso-bidi-font-weight: normal;"><span style="line-height: 115%; font-size: 18pt; mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri;"> </span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"> </p>\r\n<p style="margin: 0in 0in 10pt;"> </p>\r\n<p style="margin: 0in 0in 10pt;"> </p>\r\n<p style="margin: 0in 0in 10pt;"> </p>\r\n<p style="margin: 0in 0in 10pt;"> </p>\r\n<p style="margin: 0in 0in 10pt;"> </p>\r\n<p style="margin: 0in 0in 10pt;"> </p>\r\n<p style="margin: 0in 0in 10pt;"> </p>\r\n<p style="margin: 0in 0in 10pt;"><strong style="mso-bidi-font-weight: normal;"><span style="line-height: 115%; font-size: 15pt; mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri;">Specifications:</span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<ol style="list-style-type: decimal; direction: ltr;">\r\n<li style="font-style: normal; font-weight: normal;">\r\n<p style="font-style: normal; font-weight: normal; margin-top: 0in; margin-bottom: 10pt; mso-list: l0 level1 lfo1;"><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH">Support Display Port 1.1a input and HDMI High Speed HDMI Cable output.</span></p>\r\n</li>\r\n<li style="color: #000000; font-family: ">\r\n<p style="color: #000000; font-family: "><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH">Support HDMI highest video resolutions 1080p.</span></p>\r\n</li>\r\n<li style="color: #000000; font-family: ">\r\n<p style="color: #000000; font-family: "><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH">Support HDMI 225 Mhz/ 2.2Gbps per channel (6.75Gps all channel) bandwidth. </span></p>\r\n</li>\r\n<li style="color: #000000; font-family: ">\r\n<p style="color: #000000; font-family: "><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH">Support HDMI 12bit per channel (36bit all channel) deep color. </span></p>\r\n</li>\r\n<li style="color: #000000; font-family: ">\r\n<p style="color: #000000; font-family: "><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH">Support uncompressed audio such LPCM.</span></p>\r\n</li>\r\n<li style="color: #000000; font-family: ">\r\n<p style="color: #000000; font-family: "><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH">Support compressed audio such a DTS Digital, Dolby Digital (including DTS-HD and Dolby True HD).</span></p>\r\n</li>\r\n<li style="color: #000000; font-family: ">\r\n<p style="color: #000000; font-family: "><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH">Powered from Display Port Source</span></p>\r\n<p style="color: #000000; font-family: "><strong style="mso-bidi-font-weight: normal;"><span style="line-height: 115%; font-size: 18pt; mso-fareast-font-family: " lang="EN-PH"> </span></strong></p>\r\n<p style="color: #000000; font-family: "><strong style="mso-bidi-font-weight: normal;"><span style="line-height: 115%; font-size: 18pt; mso-fareast-font-family: " lang="EN-PH"> </span></strong></p>\r\n</li>\r\n</ol>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>', 'resized/Display_Port__M__561dcd1e09455_90x90.jpg', 'Display_Port__M__561dcd1e0e87a.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1404172800, '', 'Y', 0, NULL, 1404193466, 1444793630, 'Display Port (M) To HDMI (F) Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(700, 1, 0, 'UST-MHL01', 'The MHL (Mobile High-Definition Link) Adapter is an accessory made with one purpose in mind to connect your MHL Host like MHL Phone or Tablet to your HDTV for viewing content on a larger screen. This state-of-the –art technology connects your MHL Host to', '<p>With MHL to HDMI Adapter, your MHL phone can be connected to high-definition TV. But if your MHL Phone is Samsung Smartphones, you need an adapter MHL 11pin to Micro 5pin Adapter. Because the terminal product of MHL to HDMI Adapter is Micro USB 5Pin, while the Samsung mobile phone female is Samsung 11Pin.</p>\r\n<p>1.	Uses a single, thin adapter to connect the mobile device to the HDTV.</p>\r\n<p>2.	Connect Micro USB female port to computer or power adapter for charging and getting power using a Micro USB to USB M/M cable.</p>\r\n<p>3.	Built-in MHL Receiver converts a single differential pair to HDMI four differential pairs.</p>\r\n<p>4.	Supports Max resolution to 1280x720p and all bandwidth between 25-75MHz.</p>', 'resized/MHL_USB_Micro__M_53ba670523795_90x90.jpg', 'MHL_USB_Micro__M_53ba670533174.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1404259200, '', 'Y', 0, NULL, 1404273524, 1423642515, 'MHL USB Micro (M) 5P to HDMI (F) Adapter  w/ 5to11 converter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(701, 1, 0, 'UST-MHTV08', 'Specifications:\r\nThis product has many features that enable it to perform in a superior manner. Among those features you will find:\r\n•	Easy to Use : Install in seconds, no need of setting\r\n•	Conversion : It can convert complete HDMI into VGA video\r\n•	Supp', '<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><strong style="mso-bidi-font-weight: normal;"><span style="line-height: 115%; font-size: 17pt; mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri;">UST-MHTV08 HDMI Micro- D (M) To VGA (F) Adapter with audio</span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span style="mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span style="mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Times New Roman; font-size: small;">Specifications:</span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span style="mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Times New Roman; font-size: small;">This product has many features that enable it to perform in a superior manner. Among those features you will find:</span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<ul style="margin-top: 0in;" type="disc">\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; line-height: normal; font-style: normal; font-weight: normal; mso-add-space: auto; mso-list: l0 level1 lfo1;"><span style="mso-fareast-font-family: " lang="EN-PH">Easy to Use : Install in seconds, no      need of setting</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; line-height: normal; font-style: normal; font-weight: normal; mso-add-space: auto; mso-list: l0 level1 lfo1;"><span style="mso-fareast-font-family: " lang="EN-PH">Conversion : It can convert complete      HDMI into VGA video</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; line-height: normal; font-style: normal; font-weight: normal; mso-add-space: auto; mso-list: l0 level1 lfo1;"><span style="mso-fareast-font-family: " lang="EN-PH">Supports HDCP 1.2</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; line-height: normal; font-style: normal; font-weight: normal; mso-add-space: auto; mso-list: l0 level1 lfo1;"><span style="mso-fareast-font-family: " lang="EN-PH">Supports 165MHz / 1.65Gbps per channel      (6.75Gbps all channel) bandwidth for HDMI Input</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; line-height: normal; font-style: normal; font-weight: normal; mso-add-space: auto; mso-list: l0 level1 lfo1;"><span style="mso-fareast-font-family: " lang="EN-PH">Supports Analogue Video output up to      UXGA and 1080p with 10-bit DAC</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span> \r\n</ul>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>', 'resized/HDMI_Micro__D__M_561dcd64457ae_90x90.jpg', 'HDMI_Micro__D__M_561dcd644a5a6.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1404259200, '', 'Y', 0, NULL, 1404273763, 1444793700, 'HDMI Micro- D (M) To VGA (F) Adapter w/ audio', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(702, 1, 0, 'UST-HTVA07', 'Specifications\r\nThis HDMI A male to VGA Adapter has many features that enable it to perform in a superior manner.', '<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><strong style="mso-bidi-font-weight: normal;"><span style="line-height: 115%; font-size: 18pt; mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri;">UST-HTVA07 HDMI (M) To VGA (F) Adapter with audio</span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><span lang="EN-PH"><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><strong style="mso-bidi-font-weight: normal;"><span style="line-height: 115%; font-size: 15pt; mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri;">Specifications</span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri;">This HDMI A male to VGA Adapter has many features that enable it to perform in a superior manner. </span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri;"> </span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri;">Among those features you will find:</span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<ol style="list-style-type: decimal; direction: ltr;">\r\n<li style="font-style: normal; font-weight: normal;">\r\n<p style="font-style: normal; font-weight: normal; margin-top: 0in; margin-bottom: 10pt; mso-list: l0 level1 lfo1;"><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH">Easy to Use: Install in seconds, no need of setting.</span></p>\r\n</li>\r\n<li style="color: #000000; font-family: ">\r\n<p style="color: #000000; font-family: "><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH">Conversion: It can convert complete HDMI into VGA video.</span></p>\r\n</li>\r\n<li style="color: #000000; font-family: ">\r\n<p style="color: #000000; font-family: "><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH">Supports 165Mhz/ 1.6Gbps per channel (6.75 Gbps all channel) bandwidth for HDMI Input.</span></p>\r\n</li>\r\n<li style="color: #000000; font-family: ">\r\n<p style="color: #000000; font-family: "><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH">Supports Analog Video output upto UXGA and 1080p with 10-bit DAC </span></p>\r\n<p style="color: #000000; font-family: "><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH"> </span></p>\r\n<p style="color: #000000; font-family: "><strong style="mso-bidi-font-weight: normal;"><span style="line-height: 115%; font-size: 15pt; mso-fareast-font-family: " lang="EN-PH"> </span></strong></p>\r\n</li>\r\n</ol>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>', 'resized/HDMI__M__To_VGA__561dcdf8cb9f7_90x90.jpg', 'HDMI__M__To_VGA__561dcdf8cf880.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1404259200, '', 'Y', 0, NULL, 1404273878, 1444793848, 'HDMI (M) To VGA (F) Adapter w/ audio', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0);
INSERT INTO `jos_vm_product` (`product_id`, `vendor_id`, `product_parent_id`, `product_sku`, `product_s_desc`, `product_desc`, `product_thumb_image`, `product_full_image`, `product_publish`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_available_date`, `product_availability`, `product_special`, `product_discount_id`, `ship_code_id`, `cdate`, `mdate`, `product_name`, `product_sales`, `attribute`, `custom_attribute`, `product_tax_id`, `product_unit`, `product_packaging`, `child_options`, `quantity_options`, `child_option_ids`, `product_order_levels`, `promo`) VALUES
(703, 1, 0, 'UST-VTH03', 'VGA to HDMI Converter box converts PC VGA and audio to HDMI, allowing connection of PC to 1080p HDTV.', '<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH" style="font-size: 18pt; mso-fareast-font-family: "><span style="color: #000000; font-family: Calibri;">UST-VTH03 HD Video Converter VGA to HDMI with Power</span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><span lang="EN-PH"><span style="color: #000000; font-family: Calibri; font-size: small;"> </span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="color: #000000; font-family: Times New Roman; font-size: small;">Product Description:</span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="color: #000000; font-family: Times New Roman; font-size: small;">VGA to HDMI Converter box converts PC VGA and audio to HDMI, allowing connection of PC to 1080p HDTV.</span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span></p>\r\n<table style="border: currentColor; border-image: none; border-collapse: collapse; mso-border-alt: solid black .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 5.4pt 0in 5.4pt; mso-border-insideh: .5pt solid black; mso-border-insidev: .5pt solid black;" border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr style="mso-yfti-irow: 0; mso-yfti-firstrow: yes;">\r\n<td width="638" style="padding: 0in 5.4pt; border: 1pt solid black; border-image: none; width: 6.65in; background-color: transparent; mso-border-alt: solid black .5pt;" colspan="2" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">SPECIFICATION</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 1;">\r\n<td width="319" style="padding: 0in 5.4pt; border-image: none; width: 239.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Input</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td width="319" style="padding: 0in 5.4pt; width: 239.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">VGA Stereo Audio</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 2;">\r\n<td width="319" style="padding: 0in 5.4pt; border-image: none; width: 239.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Output</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td width="319" style="padding: 0in 5.4pt; width: 239.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">HDMI</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 3;">\r\n<td width="319" style="padding: 0in 5.4pt; border-image: none; width: 239.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">PC VGA Resolution</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td width="319" style="padding: 0in 5.4pt; width: 239.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">1920 x 1080 @ 60Hz</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">1360 x 768 @ 60Hz</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">1280 x 1024 @ 60Hz</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">1024 x 768 @ 60Hz</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">1280 x 720 @ 60Hz</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">1280 x 768 @ 60Hz</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">800 x 600 @ 60Hz</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">640 x 480 @ 60Hz</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">720 x 400 @ 85Hz</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 4; mso-yfti-lastrow: yes;">\r\n<td width="319" style="padding: 0in 5.4pt; border-image: none; width: 239.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Support</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td width="319" style="padding: 0in 5.4pt; width: 239.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">8bit per channel   (24bit all channel) deep color</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Uncompressed 2   channel audio such as LPCM</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span style="font-family: Times New Roman;"><span style="color: #000000; font-size: small;"><img width="343" src="data:image/png;base64,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" border="0" hspace="12" height="343" align="left" /></span><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="color: #000000; font-size: small;">Packaging Contents:</span></span></strong></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="color: #000000; font-family: Times New Roman; font-size: small;">1 pc VGA to HDMI converter box</span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="color: #000000; font-family: Times New Roman; font-size: small;">1 pc Power Adapter</span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="color: #000000; font-family: Times New Roman; font-size: small;">1 pc User Manual</span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>', 'resized/HD_Video_Convert_53ba5ec542248_90x90.jpg', 'HD_Video_Convert_53ba5ec647213.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1404259200, '', 'Y', 0, NULL, 1404274032, 1404722886, 'HD Video Converter VGA To HDMI w/ Power', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0);
INSERT INTO `jos_vm_product` (`product_id`, `vendor_id`, `product_parent_id`, `product_sku`, `product_s_desc`, `product_desc`, `product_thumb_image`, `product_full_image`, `product_publish`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_available_date`, `product_availability`, `product_special`, `product_discount_id`, `ship_code_id`, `cdate`, `mdate`, `product_name`, `product_sales`, `attribute`, `custom_attribute`, `product_tax_id`, `product_unit`, `product_packaging`, `child_options`, `quantity_options`, `child_option_ids`, `product_order_levels`, `promo`) VALUES
(704, 1, 0, 'WS-UG17D1', 'The USB 2.0 Multi-Display Adapter allows you to connect an extra monitor (CRT, LCD, Projector...) to your desktop PC or laptop’s USB port. The connected monitor can be configured to either clone your primary screen, or extend the Windows desktop allowing', '<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH" style="line-height: 115%; font-size: 18pt; mso-fareast-font-family: "><span style="color: #000000; font-family: Calibri;">WS-UG17D1 USB 2.0 Multi-Display Adapter (DVI, HDMI, VGA)</span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><span style="color: #000000; font-family: Times New Roman; font-size: small;"><img width="416" src="data:image/png;base64,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" border="0" hspace="12" height="253" align="left" /></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH" style="mso-fareast-font-family: "><span style="color: #000000; font-family: Times New Roman; font-size: small;">Product Description:</span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; text-align: justify; line-height: normal; mso-add-space: auto;"><span lang="EN-PH" style="mso-fareast-font-family: "><span style="color: #000000; font-family: Times New Roman; font-size: small;">The USB 2.0 Multi-Display Adapter allows you to connect an extra monitor (CRT, LCD, Projector...) to your desktop PC or laptop’s USB port. The connected monitor can be configured to either clone your primary screen, or extend the Windows desktop allowing visibility of more applications at the same time.</span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; text-align: justify; line-height: normal; mso-add-space: auto;"><span lang="EN-PH" style="mso-fareast-font-family: "><span style="color: #000000; font-family: Times New Roman; font-size: small;">The USB 2.0 Multi-Display Adapter driver used to control the extra screen uses very little computer resources and offers a vast array of screen resolutions and color depths. This ensures that there is little difference in performance between a directly connected screen and a screen connected through the USB 2.0 Multi-Display Adapter.</span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; text-align: justify; line-height: normal; mso-add-space: auto;"><span lang="EN-PH" style="mso-fareast-font-family: "><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; text-align: justify; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH" style="mso-fareast-font-family: "><span style="color: #000000; font-family: Times New Roman; font-size: small;">Features:</span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<ul type="disc" style="margin-top: 0in;">\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; text-align: justify; line-height: normal; font-style: normal; font-weight: normal; mso-add-space: auto; mso-list: l1 level1 lfo1;"><span lang="EN-PH" style="mso-fareast-font-family: ">Easily connect additional monitors using      a USB 2.0 cable</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; text-align: justify; line-height: normal; font-style: normal; font-weight: normal; mso-add-space: auto; mso-list: l1 level1 lfo1;"><span lang="EN-PH" style="mso-fareast-font-family: ">Simple to install and use</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; text-align: justify; line-height: normal; font-style: normal; font-weight: normal; mso-add-space: auto; mso-list: l1 level1 lfo1;"><span lang="EN-PH" style="mso-fareast-font-family: ">Quickly add up to six display to a      desktop or a notebook PC with minimal configuration and without an      additional graphics card</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; text-align: justify; line-height: normal; font-style: normal; font-weight: normal; mso-add-space: auto; mso-list: l1 level1 lfo1;"><span lang="EN-PH" style="mso-fareast-font-family: ">Mirror or Extend a computer display      workspace</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; text-align: justify; line-height: normal; font-style: normal; font-weight: normal; mso-add-space: auto; mso-list: l1 level1 lfo1;"><span lang="EN-PH" style="mso-fareast-font-family: ">Allows for effortless multitasking</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; text-align: justify; line-height: normal; font-style: normal; font-weight: normal; mso-add-space: auto; mso-list: l1 level1 lfo1;"><span lang="EN-PH" style="mso-fareast-font-family: ">Bus Powered – No external power supply      needed</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; text-align: justify; line-height: normal; font-style: normal; font-weight: normal; mso-add-space: auto; mso-list: l1 level1 lfo1;"><span lang="EN-PH" style="mso-fareast-font-family: ">Supports usage through powered KVMP’s      or USB hubs</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span> \r\n</ul>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; text-align: justify; line-height: normal; mso-add-space: auto;"><span lang="EN-PH" style="mso-fareast-font-family: "><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; text-align: justify; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH" style="mso-fareast-font-family: "><span style="color: #000000; font-family: Times New Roman; font-size: small;">Minimal System Requirements:</span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<ul type="disc" style="margin-top: 0in;">\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; text-align: justify; line-height: normal; font-style: normal; font-weight: bold; mso-add-space: auto; mso-list: l0 level1 lfo2;"><span lang="EN-PH" style="mso-fareast-font-family: ">CPU with 1.2GHz or higher processor      (Intel Pentium/Celeron family, AMD K6/Athlon/Duron family, or compatible      processor)</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; text-align: justify; line-height: normal; font-style: normal; font-weight: bold; mso-add-space: auto; mso-list: l0 level1 lfo2;"><span lang="EN-PH" style="mso-fareast-font-family: ">256 MB RAM</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; text-align: justify; line-height: normal; font-style: normal; font-weight: bold; mso-add-space: auto; mso-list: l0 level1 lfo2;"><span lang="EN-PH" style="mso-fareast-font-family: ">One available USB 2.0 port</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; text-align: justify; line-height: normal; font-style: normal; font-weight: bold; mso-add-space: auto; mso-list: l0 level1 lfo2;"><span lang="EN-PH" style="mso-fareast-font-family: ">30Mb of available disk space</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; text-align: justify; line-height: normal; font-style: normal; font-weight: bold; mso-add-space: auto; mso-list: l0 level1 lfo2;"><span lang="EN-PH" style="mso-fareast-font-family: ">Super VGA ()800 x 600 or higher      resolution monitor</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; text-align: justify; line-height: normal; font-style: normal; font-weight: bold; mso-add-space: auto; mso-list: l0 level1 lfo2;"><span lang="EN-PH" style="mso-fareast-font-family: ">Win2K / XP / Vista 32 / 64-bit,      Windows 7 or Later , Intel-based Mac OS 10.4.11 or later Linux OS</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span> \r\n</ul>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; text-align: justify; line-height: normal; mso-add-space: auto;"><span lang="EN-PH" style="mso-fareast-font-family: "><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; text-align: justify; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH" style="mso-fareast-font-family: "><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>', 'resized/USB_2.0_Multi_Di_56a9d35dca465_90x90.jpg', 'USB_2.0_Multi_Di_56a9d35dda681.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1404259200, '', 'Y', 0, NULL, 1404274493, 1453970269, 'USB 2.0 Multi-Display Adapter (DVI, HDMI, VGA)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0);
INSERT INTO `jos_vm_product` (`product_id`, `vendor_id`, `product_parent_id`, `product_sku`, `product_s_desc`, `product_desc`, `product_thumb_image`, `product_full_image`, `product_publish`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_available_date`, `product_availability`, `product_special`, `product_discount_id`, `ship_code_id`, `cdate`, `mdate`, `product_name`, `product_sales`, `attribute`, `custom_attribute`, `product_tax_id`, `product_unit`, `product_packaging`, `child_options`, `quantity_options`, `child_option_ids`, `product_order_levels`, `promo`) VALUES
(705, 1, 0, 'EP-8523', 'The EP-8523 150Mbps high-power outdoor wireless 802.11N USB adapter is characterized by high gain and long transmission distance. In case of no obstacles, it offers better transmission effect than other common products. The built-in 16dB directional anten', '<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><strong style="mso-bidi-font-weight: normal;"><span style="font-size: 20pt; mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri;">EP-8523 Long Range USB Wifi Antenna</span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="background: white; margin: 0in 0in 0pt; line-height: 15pt;"><strong><span style="color: #333333; font-family: " lang="EN-PH"> </span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="background: white; margin: 0in 0in 0pt; line-height: 15pt;"><strong><span style="color: #333333; font-family: " lang="EN-PH">Features: </span></strong><span style="color: #333333; font-family: " lang="EN-PH"><br /> 1. Transmission rate up to 150Mbps.<br /> 2. Comply with IEEE 802.11b, 802.11, and 802.11n standards.<br /> 3. Support USB2.0.<br /> 4. A built-in 16dB directional antenna.<br /> 5. A five-meter-long USB extension cord is provided.<br /> 6. Rainproof and lightning proof.</span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="background: white; margin: 0in 0in 0pt; line-height: 15pt;"><span style="color: #333333; font-family: " lang="EN-PH"> </span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="background: white; margin: 0in 0in 0pt; line-height: 15pt;"><strong><span style="color: #333333; font-family: " lang="EN-PH">Product Description:</span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="background: white; margin: 3.75pt 0in 6pt; line-height: 15pt;"><span style="color: #333333; font-family: " lang="EN-PH">The EP-8523 150Mbps high-power outdoor wireless 802.11N USB adapter is characterized by high gain and long transmission distance. In case of no obstacles, it offers better transmission effect than other common products. The built-in 16dB directional antenna further improves the performance of this product. For safe wireless connection, our product supports 64/128-bit WEP data encryption, WPA, and other encryption ways.</span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="background: white; margin: 3.75pt 0in 6pt; line-height: 15pt;"><span style="color: #333333; font-family: " lang="EN-PH"> </span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span></p>\r\n<table style="border: currentColor; border-image: none; border-collapse: collapse; mso-border-alt: solid black .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 5.4pt 0in 5.4pt; mso-border-insideh: .5pt solid black; mso-border-insidev: .5pt solid black;" border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr style="mso-yfti-irow: 0; mso-yfti-firstrow: yes;">\r\n<td style="padding: 0in 5.4pt; border: 1pt solid black; border-image: none; width: 6.65in; background-color: transparent; mso-border-alt: solid black .5pt;" colspan="2" width="638" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">SPECIFICATIONS</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 1;">\r\n<td style="padding: 0in 5.4pt; border-image: none; width: 113.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" width="151" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">Standards</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td style="padding: 0in 5.4pt; width: 365.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" width="487" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">IEEE 802.11n</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">IEEE 802.11g</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">IEEE 802.11b</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 2;">\r\n<td style="padding: 0in 5.4pt; border-image: none; width: 113.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" width="151" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">Wireless   Signal Rates with Automatic Fallback</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td style="padding: 0in 5.4pt; width: 365.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" width="487" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">802.11b (11Mbps, 9Mbsp, 6Mbps, 5, 5Mbps, 2Mbps,   1Mbps)</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">801.11g (54Mbps, 48Mbps, 36Mbps, 24Mbps, 18Mbps,   12Mbps, 11Mbps, 9Mbps, 6Mbps)</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">802.11n(150Mbps, 135Mbps, 108Mbps, 65Mbps)</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 3;">\r\n<td style="padding: 0in 5.4pt; border-image: none; width: 113.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" width="151" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">Antenna Type</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td style="padding: 0in 5.4pt; width: 365.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" width="487" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">With 16DB high-gain internal Antenna</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 4;">\r\n<td style="padding: 0in 5.4pt; border-image: none; width: 113.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" width="151" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">Frequency   Range</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td style="padding: 0in 5.4pt; width: 365.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" width="487" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">2.4 – 2.4835 GHz</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 5;">\r\n<td style="padding: 0in 5.4pt; border-image: none; width: 113.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" width="151" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">Modulation   Type</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td style="padding: 0in 5.4pt; width: 365.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" width="487" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">PBCC, CCK, DQPSK, DBPSK</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 6;">\r\n<td style="padding: 0in 5.4pt; border-image: none; width: 113.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" width="151" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">Work Mode</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td style="padding: 0in 5.4pt; width: 365.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" width="487" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">Ad-Hoc Infrastructure, 1T1R</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 7;">\r\n<td style="padding: 0in 5.4pt; border-image: none; width: 113.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" width="151" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">Wireless   Security</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td style="padding: 0in 5.4pt; width: 365.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" width="487" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">WPS, 64/128bit WEP, WPA/WPA2,   WPA-PSK/WPA2-PSK(TKIP/AES)</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 8;">\r\n<td style="padding: 0in 5.4pt; border-image: none; width: 113.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" width="151" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">Driver support</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td style="padding: 0in 5.4pt; width: 365.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" width="487" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">Windows XP / VISTA / Win7 / Linux / Mac</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 9; mso-yfti-lastrow: yes;">\r\n<td style="padding: 0in 5.4pt; border-image: none; width: 113.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" width="151" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">Interface</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td style="padding: 0in 5.4pt; width: 365.4pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" width="487" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt; line-height: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">USB 2.0 Hi-Speed connector</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><span style="color: #000000; font-family: Times New Roman; font-size: small;"><img src="data:image/png;base64,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2JPvTaK8eviZ1nrt2O6nSjBaBRRRXMahRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQBYtL6a0fMbHHcVqreWN+B9ojKSDo6nBrCo6VvCvKOj1RnKmnqdZbyX9qB9nuluI+yucGtOLVZTHtuLFj6/Ln+VcLHdTwnKSMv0NX4fEF7HjMhYD1r0qWYKOjf6nPPDt7Hawz2MzFhE4boACR/OrIi0+RQHnuUB67cfliuOi8WXCDlAfwqZfGlwikJEgz1O0E/rXeswotas53h59EdYmjaVOwzc6iW7LsBP8AOrR8MaMF3SR3iAHB8+4WMfU1w8njS/ZSA5BNUJvEd7O255ZGb1LGsZ4vD9xqhU7HoX2PwjZA+e4lI/5ZwAsfxZv8KgufGWl6ONukadbxbRxLINz5/HivN5L+4fo236VWLFjliSfeuSePgtIxubLDyfxM6XVvGuo6mf3txJIB0y2APoKwJrue4bMjk1DRXDUxVWpo3odEKUI7IKKKK5jUKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigD/2Q==" border="0" hspace="12" width="346" height="339" align="left" /></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><span lang="EN-PH"><span style="color: #000000; font-family: Calibri; font-size: small;"> </span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>', 'resized/Long_Range_USB_W_56a9d5cd3b400_90x90.jpg', 'Long_Range_USB_W_56a9d5cd444b6.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1404259200, '', 'N', 0, NULL, 1404275138, 1453970893, 'Long Range USB Wifi Antenna', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0);
INSERT INTO `jos_vm_product` (`product_id`, `vendor_id`, `product_parent_id`, `product_sku`, `product_s_desc`, `product_desc`, `product_thumb_image`, `product_full_image`, `product_publish`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_available_date`, `product_availability`, `product_special`, `product_discount_id`, `ship_code_id`, `cdate`, `mdate`, `product_name`, `product_sales`, `attribute`, `custom_attribute`, `product_tax_id`, `product_unit`, `product_packaging`, `child_options`, `quantity_options`, `child_option_ids`, `product_order_levels`, `promo`) VALUES
(706, 1, 0, 'EP-N1567', 'Wireless Standards	IEEE 802.11n(draft)\r\nIEEE 802.11g\r\nIEEE 802.11B\r\nHost Interface	High Speed USB2.0/1.1 interface\r\nData Rate	802.11n: up to 300Mbps (downlink) and 150Mbps (uplink)\r\n802.11g: 54 / 48 / 36 / 24 / 18 / 12 / 9 / 6 Mbps auto fallback\r\n802.11b:', '<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 0pt; text-align: center; line-height: normal;" align="center"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH" style="font-size: 18pt; mso-fareast-font-family: "><span style="color: #000000; font-family: Calibri;">EP-N1567 High Power Wireless USB Adapter</span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><span style="color: #000000; font-family: Times New Roman; font-size: small;"><img width="186" style="width: 206px; height: 242px;" src="data:image/png;base64,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" border="0" hspace="12" height="248" align="left" /></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span><span style="color: #000000; font-family: Times New Roman;"> </span></p>\r\n<table width="100%" style="border: currentColor; border-image: none; width: 100%; border-collapse: collapse; mso-border-alt: solid black .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 5.4pt 0in 5.4pt; mso-border-insideh: .5pt solid black; mso-border-insidev: .5pt solid black;" border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr style="mso-yfti-irow: 0; mso-yfti-firstrow: yes;">\r\n<td width="100%" style="padding: 0in 5.4pt; border: 1pt solid black; border-image: none; width: 100%; background-color: transparent; mso-border-alt: solid black .5pt;" colspan="2" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 10pt;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Calibri; font-size: small;">SPECIFICATION</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 1;">\r\n<td width="30%" style="padding: 0in 5.4pt; border-image: none; width: 30.26%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Wireless Standards</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td width="69%" style="padding: 0in 5.4pt; width: 69.74%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">IEEE 802.11n(draft)</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">IEEE 802.11g</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">IEEE 802.11B</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 2;">\r\n<td width="30%" style="padding: 0in 5.4pt; border-image: none; width: 30.26%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Host Interface</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td width="69%" style="padding: 0in 5.4pt; width: 69.74%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">High Speed USB2.0/1.1   interface</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 3;">\r\n<td width="30%" style="padding: 0in 5.4pt; border-image: none; width: 30.26%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Data Rate</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td width="69%" style="padding: 0in 5.4pt; width: 69.74%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">802.11n: up to   300Mbps (downlink) and 150Mbps (uplink)</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">802.11g: 54 / 48 / 36   / 24 / 18 / 12 / 9 / 6 Mbps auto fallback</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">802.11b: 11 / 5.5 / 2   / 1 Mbps auto fallback</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 4;">\r\n<td width="30%" style="padding: 0in 5.4pt; border-image: none; width: 30.26%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Frequency Band</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td width="69%" style="padding: 0in 5.4pt; width: 69.74%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">2.4GHz ISM   (Industrial Scientific Medical) Band</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 5;">\r\n<td width="30%" style="padding: 0in 5.4pt; border-image: none; width: 30.26%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">RF Frequency</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td width="69%" style="padding: 0in 5.4pt; width: 69.74%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">2412 – 2462 MHz   (North America)</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">2412 – 2472 MHz   (Europe)</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">2412 – 2484 MHz   (Japan)</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 6;">\r\n<td width="30%" style="padding: 0in 5.4pt; border-image: none; width: 30.26%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Radio Channel</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td width="69%" style="padding: 0in 5.4pt; width: 69.74%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">1 – 14 channels   (Universal Domain Selection)</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 7;">\r\n<td width="30%" style="padding: 0in 5.4pt; border-image: none; width: 30.26%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Range Coverage</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td width="69%" style="padding: 0in 5.4pt; width: 69.74%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Up to 3 times farther   range than 802.11g</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 8;">\r\n<td width="30%" style="padding: 0in 5.4pt; border-image: none; width: 30.26%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Antenna type</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td width="69%" style="padding: 0in 5.4pt; width: 69.74%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">8DB Omnidirectional   Antenna</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 9;">\r\n<td width="30%" style="padding: 0in 5.4pt; border-image: none; width: 30.26%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Roaming</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td width="69%" style="padding: 0in 5.4pt; width: 69.74%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Fully mobility and   seamless roaming from cell to cell</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 10;">\r\n<td width="30%" style="padding: 0in 5.4pt; border-image: none; width: 30.26%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">RF Output Power</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td width="69%" style="padding: 0in 5.4pt; width: 69.74%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">13 – 17 dBm (Typical)</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 11;">\r\n<td width="30%" style="padding: 0in 5.4pt; border-image: none; width: 30.26%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Modulation</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td width="69%" style="padding: 0in 5.4pt; width: 69.74%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">11n: BPSK, QPSK,   16Qam, 64QAM with OFDM</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">11g: BPSK, QPSK,   16Qam, 64QAM, OFDM</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">K11b: DQPSK, DBPSK,   DSSS, CCK</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 12;">\r\n<td width="30%" style="padding: 0in 5.4pt; border-image: none; width: 30.26%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Data Security</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td width="69%" style="padding: 0in 5.4pt; width: 69.74%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">64/128-bit WEP   Encryption</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">WPA, WPA-PSK, WPA2,   WPA2-PSK. TKIP/AES</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 13;">\r\n<td width="30%" style="padding: 0in 5.4pt; border-image: none; width: 30.26%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Environment</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td width="69%" style="padding: 0in 5.4pt; width: 69.74%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Operating   Temperature: 0 degrees Celsius to 40 degrees Celsius</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Storage Temperature:   -20 degrees Celsius to 75 Degrees Celsius</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Operating Humidity:   10% - 90% (Non Condensing)</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Storage Humidity: 5%   - 95% (Non Condensing)</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 14;">\r\n<td width="30%" style="padding: 0in 5.4pt; border-image: none; width: 30.26%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Operating System</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td width="69%" style="padding: 0in 5.4pt; width: 69.74%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Windows 2000, XP   32/64-bit, Vista, Win7, Win8 32/64-bit, Linux and Mac</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 15; mso-yfti-lastrow: yes;">\r\n<td width="30%" style="padding: 0in 5.4pt; border-image: none; width: 30.26%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">Media Access Control</span></span></strong></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n<td width="69%" style="padding: 0in 5.4pt; width: 69.74%; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top"><span style="font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span lang="EN-PH"><span style="font-family: Times New Roman; font-size: small;">CSMA/CA with ACK</span></span></p>\r\n<span style="font-family: Times New Roman; font-size: small;"> </span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><span lang="EN-PH"><span style="color: #000000; font-family: Calibri; font-size: small;"> </span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><span lang="EN-PH"><span style="color: #000000; font-family: Calibri; font-size: small;"> </span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>', 'resized/High_Power_Wirel_53ba5c7364431_90x90.jpg', 'High_Power_Wirel_53ba5c73eb0f6.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1404259200, '', 'Y', 0, NULL, 1404275516, 1404722291, 'High Power Wireless USB Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0);
INSERT INTO `jos_vm_product` (`product_id`, `vendor_id`, `product_parent_id`, `product_sku`, `product_s_desc`, `product_desc`, `product_thumb_image`, `product_full_image`, `product_publish`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_available_date`, `product_availability`, `product_special`, `product_discount_id`, `ship_code_id`, `cdate`, `mdate`, `product_name`, `product_sales`, `attribute`, `custom_attribute`, `product_tax_id`, `product_unit`, `product_packaging`, `child_options`, `quantity_options`, `child_option_ids`, `product_order_levels`, `promo`) VALUES
(707, 1, 0, 'UST-MDTH04', 'Specifications:\r\n\r\n\r\n•Supports Mini Display Port 1.1a input and HDMI output\r\n•Supports HDMI highest video resolution 1080p\r\n•Supports HDMI 225MHz / 2.25Gbps per channel (6.75Gbps all channel) bandwidth\r\n•Supports HDMI 12bit per channel (36bit all channel)', '<p> </p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><strong style="mso-bidi-font-weight: normal;"><span style="line-height: 115%; font-size: 18pt; mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri;">UST-MDTH04 Mini Display Port (M) To HDMI (F) Adapter</span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><span style="mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri; font-size: small;"> </span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><strong style="mso-bidi-font-weight: normal;"><span style="mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Times New Roman; font-size: small;">Specifications:</span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<ul style="margin-top: 0in;" type="disc">\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; line-height: normal; font-style: normal; font-weight: normal; mso-add-space: auto; mso-list: l0 level1 lfo1;"><span style="mso-fareast-font-family: " lang="EN-PH">Supports Mini Display Port 1.1a input      and HDMI output</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; line-height: normal; font-style: normal; font-weight: normal; mso-add-space: auto; mso-list: l0 level1 lfo1;"><span style="mso-fareast-font-family: " lang="EN-PH">Supports HDMI highest video resolution      1080p</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; line-height: normal; font-style: normal; font-weight: normal; mso-add-space: auto; mso-list: l0 level1 lfo1;"><span style="mso-fareast-font-family: " lang="EN-PH">Supports HDMI 225MHz / 2.25Gbps per      channel (6.75Gbps all channel) bandwidth</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; line-height: normal; font-style: normal; font-weight: normal; mso-add-space: auto; mso-list: l0 level1 lfo1;"><span style="mso-fareast-font-family: " lang="EN-PH">Supports HDMI 12bit per channel (36bit      all channel) deep color</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; line-height: normal; font-style: normal; font-weight: normal; mso-add-space: auto; mso-list: l0 level1 lfo1;"><span style="mso-fareast-font-family: " lang="EN-PH">Supports uncompressed audio such as      LPCM</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<li style="margin: auto auto 0pt; line-height: normal; font-style: normal; font-weight: normal; mso-add-space: auto; mso-list: l0 level1 lfo1;"><span style="mso-fareast-font-family: " lang="EN-PH">Powered from Mini Display Port source</span></li>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span> \r\n</ul>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span style="mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span style="mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 1em 0px 0pt; line-height: normal; mso-add-space: auto;"><span style="color: #000000; font-family: Times New Roman; font-size: small;"><img src="data:image/png;base64,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" border="0" hspace="12" width="337" height="194" align="left" /></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>', 'resized/Mini_Display_Por_561dccaa80dff_90x90.jpg', 'Mini_Display_Por_561dccaa84704.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1404691200, '', 'Y', 0, NULL, 1404724174, 1444793522, 'Mini Display Port (M) To HDMI (F) Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(767, 1, 0, 'NC-261', '', '', 'resized/Notebook_Cooling_54e6c3d6835bf_90x90.jpg', 'Notebook_Cooling_54e6c3d6ae15d.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424409558, 1424409565, 'Notebook Cooling Pad', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(768, 1, 0, 'NC2088', '', '', 'resized/Aluminum_Noteboo_54e6c44527e01_90x90.jpg', 'Aluminum_Noteboo_54e6c445311d4.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424409669, 1424409673, 'Aluminum Notebook Cooler', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(769, 1, 0, 'HZT520', '', '', 'resized/Notebook_Cooler__54e6ce698b20c_90x90.jpg', 'Notebook_Cooler__54e6ce6a0d109.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424409786, 1424412266, 'Notebook Cooler upto 17"', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(770, 1, 0, 'HZT2208', '', '', 'resized/Notebook_Cooler__54e6c5a260c14_90x90.jpg', 'Notebook_Cooler__54e6c5a39c449.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424410019, 1424410019, 'Notebook Cooler Adjustable', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(772, 1, 0, 'MP240', '', '', 'resized/Mouse_Pad_Rectan_54e6d13c50c61_90x90.jpg', 'Mouse_Pad_Rectan_54e6d13c56336.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424412988, 1424412988, 'Mouse Pad Rectangular Silicon Type', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(773, 1, 0, 'MP101', '', '', 'resized/Mouse_Pad_Plain__54e6d15e1350a_90x90.jpg', 'Mouse_Pad_Plain__54e6d15e22309.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424413022, 1424413022, 'Mouse Pad Plain Big', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(774, 1, 0, 'MP102', '', '', 'resized/Mouse_Pad_Big_Ga_54e6d1e07c5ce_90x90.jpg', 'Mouse_Pad_Big_Ga_54e6d1e08b837.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424413071, 1424413152, 'Mouse Pad Big Gaming', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(775, 1, 0, 'MP103', '', '', 'resized/Mouse_Pad_Big_wi_54e6d1c7de208_90x90.jpg', 'Mouse_Pad_Big_wi_54e6d1c86570a.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424413128, 1424413128, 'Mouse Pad Big with Design', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(781, 1, 0, 'WB-5160B', '', '', 'resized/USB_Gaming_Mouse_54e6d53de38aa_90x90.jpg', 'USB_Gaming_Mouse_54e6d53e26618.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424414014, 1424414014, 'USB Gaming Mouse 6D', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(782, 1, 0, 'FC-715', 'USB Wired Gaming Keyboard', '', 'resized/USB_Gaming_Keybo_54e6d5b3ea0cf_90x90.jpg', 'USB_Gaming_Keybo_54e6d5b3edc7b.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424414131, 1424414153, 'USB Gaming Keyboard', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(783, 1, 0, 'FC-8520', '', '', 'resized/Multimedia_Keybo_54e6d5fb2a484_90x90.jpg', 'Multimedia_Keybo_54e6d5fb325ef.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424414203, 1424414203, 'Multimedia Keyboard', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(784, 1, 0, 'RF-7100', '', '', 'resized/Ultra_Thin_Wirel_54e6d6a0d55a8_90x90.jpg', 'Ultra_Thin_Wirel_54e6d6a14dc5b.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424414369, 1424414369, 'Ultra Thin Wireless Bluetooth Keyboard', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(786, 1, 0, 'QHP-903', '', '', 'resized/Stereo_Headphone_54e6d809d10b8_90x90.jpg', 'Stereo_Headphone_54e6d809d69ac.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424414729, 1424414729, 'Stereo Headphone w/ Extra Cover', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(787, 1, 0, 'QHP-907', '', '', 'resized/Stereo_Headphone_54e6d8446e8ff_90x90.jpg', 'Stereo_Headphone_54e6d844766c1.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424414788, 1424414788, 'Stereo Headphone w/ PC Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(788, 1, 0, 'MHS-58A', '', '', 'resized/Portable_Multime_54e6d8858aad7_90x90.jpg', 'Portable_Multime_54e6d8858e153.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424414853, 1424414853, 'Portable Multimedia Headset w/ Mic', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(789, 1, 0, 'HSZ200', '', '', 'resized/Rubberized_Earph_54e6d8eaed72b_90x90.jpg', 'Rubberized_Earph_54e6d8eb4ac8a.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424414955, 1424414955, 'Rubberized Earphone with Mic', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(790, 1, 0, 'XU-160', '', '', 'resized/USB_Headphone_Su_54e6d93b37e20_90x90.jpg', 'USB_Headphone_Su_54e6d93ba7646.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424415035, 1424415035, 'USB Headphone Super Bass w/ Mic', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(791, 1, 0, 'MK-EL3021', '', '', 'resized/Maike_Super_Bass_54e6d97dec444_90x90.jpg', 'Maike_Super_Bass_54e6d97df2815.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424415101, 1424415101, 'Maike Super Bass Earphone', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(792, 1, 0, 'SK-570', '', '', 'resized/Ear_hook_Stereo__54e6d9d0b02a9_90x90.jpg', 'Ear_hook_Stereo__54e6d9d0b71e9.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424415184, 1424415184, 'Ear-hook Stereo Headphone', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(793, 1, 0, 'SK-30', '', '', 'resized/SK_30_Stereo_Ear_54e6da06a2189_90x90.jpg', 'SK_30_Stereo_Ear_54e6da06a4477.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424415238, 1424415238, 'SK-30 Stereo Earphone w/ Microphone', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(795, 1, 0, 'RCA1592-3R', 'GENERIC TYPE', '', 'resized/HDMI_to_3Wire_RC_54e6de3ac4e9a_90x90.jpg', 'HDMI_to_3Wire_RC_54e6de3b2b19f.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424416315, 1424417625, 'HDMI to 3Wire RCA Cable 1.5 Meters', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(796, 1, 0, 'RCA550-3R', '', '', 'resized/VGA_to_3Wire_RCA_54e6de72ecb72_90x90.jpg', 'VGA_to_3Wire_RCA_54e6de7366c67.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424416371, 1424416371, 'VGA to 3Wire RCA Cable 1.5 Meters', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(797, 1, 0, 'C306A-', 'Available Length:\r\n1.5 meters\r\n3 Meters\r\n\r\nGeneric Type', '', 'resized/Audio___Video____54e6e299896c1_90x90.jpg', 'Audio___Video____54e6e299cbe0c.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424416617, 1424417433, 'Audio / Video / Stereo Cable', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(798, 1, 0, 'C402-', 'Available Length:\r\n1.5 meters\r\n3 Meters\r\n\r\nGeneric Type', '', 'resized/3.5mm_Extension__54e6dfbf7fec1_90x90.jpg', '3.5mm_Extension__54e6dfbfcbf62.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424416703, 1424416743, '3.5mm Extension Cable M/F', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(799, 1, 0, 'TA412-1', 'Available Length:\r\n1.5 meters\r\n\r\n\r\nGeneric Type', '', 'resized/3.5mm_Stereo_Fla_5515089ad09eb_90x90.jpg', '3.5mm_Stereo_Fla_5515089b095c0.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424416877, 1427441832, '3.5mm Stereo Flat Cable M/M 1M', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(800, 1, 0, 'TC412-2', 'Available Length:\r\n2 meters\r\n\r\nGeneric Type', '', 'resized/3.5mm_Stereo_Spi_55150906470d7_90x90.jpg', '3.5mm_Stereo_Spi_551509066e5f4.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424417105, 1427441926, '3.5mm Stereo Spiral Cable M/M 2M', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(801, 1, 0, 'RCA404D', 'GENERIC TYPE', '', 'resized/RCA_Cable_1.5_Me_55150991b67fb_90x90.jpg', 'RCA_Cable_1.5_Me_55150991bee2d.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424417139, 1427442065, 'RCA Cable 1.5 Meter 2- Wires', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(802, 1, 0, 'RCA846D', 'GENERIC TYPE', '', 'resized/RCA_Cable_1.5_Me_55150b97835cd_90x90.jpg', 'RCA_Cable_1.5_Me_55150b97e1ebb.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424417167, 1427442583, 'RCA Cable 1.5 Meter 3- Wires', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(803, 1, 0, 'RCA412A', 'GENERIC TYPE', '', 'resized/Audio_Jack_3.5_t_5515095234034_90x90.jpg', 'Audio_Jack_3.5_t_551509523e5ab.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424417199, 1427442002, 'Audio Jack 3.5 to 2- RCA 1.5 Meters', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(804, 1, 0, 'C412A-1.5', 'Available Length:\r\n1.5 meters\r\n3 Meters\r\n\r\nGeneric Type', '', 'resized/3.5mm_to_2_Wire__54e6e1f73a211_90x90.jpg', '3.5mm_to_2_Wire__54e6e1f7996d0.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424417271, 1424417271, '3.5mm to 2-Wire RCA Cable', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(805, 1, 0, 'C1518-1.5', 'Available Length:\r\n1.5 meters\r\n3 Meters\r\n\r\nGeneric Type', '', 'resized/3.5mm_to_3_Wire__54e6e26da38bd_90x90.jpg', '3.5mm_to_3_Wire__54e6e26e32cc9.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424417390, 1424417390, '3.5mm to 3-Wire RCA Cable', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(806, 1, 0, 'HSP0102', '', '', 'resized/HDMI_Splitter_2__54e6e5dc3d1e5_90x90.jpg', 'HDMI_Splitter_2__54e6e5dc49568.jpg', 'N', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424418268, 1424418268, 'HDMI Splitter 2-Ports (1IN- 2OUT)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(807, 1, 0, 'HSP0104BS', '', '', 'resized/HDMI_Splitter_4__54e6e61a73b88_90x90.jpg', 'HDMI_Splitter_4__54e6e61a7979c.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424418330, 1424418330, 'HDMI Splitter 4-Ports (1IN- 4OUT)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(808, 1, 0, 'HSP0108BS', '', '', 'resized/HDMI_Splitter_8__54e6e64e8ecd5_90x90.jpg', 'HDMI_Splitter_8__54e6e64ea84a2.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424418382, 1424418382, 'HDMI Splitter 8- Ports (1IN- 8OUT)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(809, 1, 0, 'CEHSP0102', 'This is a small, beautiful, practical HDMI Splitter. It distributes the input of the HDMI signal into the four identical outputs simultaneously. It supports full 3D format and 4Kx2K. Its video amplifier bandwidth can be up to 3.4 Gpbs/340MHz. The HDMI Spl', '<p>CODE: CESP0102 DESCRIPTION:  HDMI 1x2 Splitter with Full 3D and 4Kx2K (340MHz)  Introduction This is a small, beautiful, practical HDMI Splitter. It distributes the input of the HDMI signal into the four identical outputs simultaneously. It supports full 3D format and 4Kx2K. Its video amplifier bandwidth can be up to 3.4 Gpbs/340MHz. The HDMI Splitter offers solutions for HDTV retail and show site, HDTV, STB, DVD and Projector factory, noise space and security concerns, data center control, information distribution, conference room presentation, school and corporate training environments. Features This HDMI Splitter has many features that enable it to perform in a superior manner. Among those features you will find; •	Easy to Use: Install in seconds, no need of setting. •	One HDMI input, two HDMI outputs. •	Supports Full 3D and 4Kx2K resolution. •	Supports 340MHZ/3.4Gbps per channel (10.2Gbps all channel) bandwidth. •	Supports 12bit per channel (36bit all channel) deep color. •	Supports HDCP 1.3. •	Supports uncompressed audio such as LPCM. •	Supports compressed audio such as TS Digital, Dolby Digital (including DTS-HD and Dolby True HD).  Specifications  Signal Inputs/Output	 Input DDC Signal	5 volts p-p (TTL) Maximum Single Link Range	4Kx2K Output Video	HDMI (with full 3D and 4Kx2K) Operating Frequency	 Vertical Frequency Range	50 / 60HZ Video Amplifier Bandwidth	3.4Gbps / 340MHz Resolutions(HDTV)	 Interlaced(50&60Hz)	480i, 576i, 1080i Progressive(50&60Hz)	480p, 576p, 720p, 1080p, 4Kx2K Mechanical	 Size(L-W-H)	157 x 70 x 23mm Weight(Net)	265g Warranty	 Limited Warranty	1 Year Service Environmental	 Operating Temperature	0°C to +70°C Operating Humidity	10% to 85% RH (no condensation) Storage Temperature	-10°C to +80°C Storage Humidity	5% to 90% RH (no condensation) Power Requirement	 External Power Supply	5V DC @ 3A Power consumption (Max)	12W Regulatory Approvals	 Converter Unit	FCC, CE, UL Power Supply	UL, CE, FCC Accessories Adapter	 AC Power Adapter	US Standard, UK standard and so on User Manual	  Note: Specifications are subject to change without prior notice.  Package Contents Before attempting to use this unit, please check the packaging and make sure the following items are contained in the shipping caption: 1.	Main Unit 2.	5V DC Power Supply 3.	User’s Manual  Connection and Operation 1.	Connect the HDMI input source and output device into the HDMI Splitter. (HDMI cables are optional). 2.	Insert the DC side of 5V power supply into it and then connect the AC side of the power supply into the wall outlet. 3.	Turn on the power.</p>', 'resized/HDMI_Splitter_2__5549af2d0ddc5_90x90.jpg', 'HDMI_Splitter_2__5549af2d13998.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424418422, 1430892478, 'HDMI Splitter 2-Ports w/ Full 3D 340Mhz', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(810, 1, 0, 'CEHSP0108', '', '', 'resized/HDMI_Splitter_8__54e6e6a586c50_90x90.jpg', 'HDMI_Splitter_8__54e6e6a588d6f.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424418469, 1424418469, 'HDMI Splitter 8-Ports w/ Full 3D 340Mhz', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(811, 1, 0, 'HSS0402', '', '', 'resized/HDMI_Matrix_Swit_54e6e6ed121c6_90x90.jpg', 'HDMI_Matrix_Swit_54e6e6ed5ef1d.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424418541, 1424418652, 'HDMI Matrix Switch Splitter (4Input - 2Output)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(812, 1, 0, 'HS100', '', '', 'resized/HS100_HDMI_Switc_555313d17512b_90x90.jpg', 'HS100_HDMI_Switc_555313d177149.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424418721, 1431507926, 'HS100 HDMI Switch 3-Ports', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(813, 1, 0, 'RM-501', '', '', 'resized/HDMI_Switch_5_Po_54e6e7d4b9497_90x90.jpg', 'HDMI_Switch_5_Po_54e6e7d51ff0d.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1424390400, '', 'N', 0, NULL, 1424418773, 1424418773, 'HDMI Switch 5-Ports with Remote', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(823, 1, 0, 'MT-1610', '', '', 'resized/MT_1610_3_in_1_N_56a9d2e2cb008_90x90.jpg', 'MT_1610_3_in_1_N_56a9d2e2d3c74.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1427414400, '', 'N', 0, NULL, 1427443323, 1453970146, 'MT-1610	3-in-1 Network Digital Multimeter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(824, 1, 0, '3PK-NT023N', '3PK-NT023N Amplifier Probe & Tone Generator\r\nProskit Brand \r\nTaiwan Made', '', 'resized/Amplifier_Probe__55e55a50dda0a_90x90.jpg', 'Amplifier_Probe__55e55a50ec534.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1427414400, '', 'N', 0, NULL, 1427443527, 1441094249, 'Amplifier Probe & Tone Generator', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(708, 1, 0, 'PCC-100', 'UL Type\r\n1.5Meters\r\nData Cable Brand\r\nSPT-2', '', 'resized/SPT_AWG__18_Cass_53ba664408571_90x90.jpg', 'SPT_AWG__18_Cass_53ba664480beb.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1404691200, '', 'N', 0, NULL, 1404724804, 1404724804, 'SPT AWG #18 Cassette Power Cord 1.5 Meter (UL)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0);
INSERT INTO `jos_vm_product` (`product_id`, `vendor_id`, `product_parent_id`, `product_sku`, `product_s_desc`, `product_desc`, `product_thumb_image`, `product_full_image`, `product_publish`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_available_date`, `product_availability`, `product_special`, `product_discount_id`, `ship_code_id`, `cdate`, `mdate`, `product_name`, `product_sales`, `attribute`, `custom_attribute`, `product_tax_id`, `product_unit`, `product_packaging`, `child_options`, `quantity_options`, `child_option_ids`, `product_order_levels`, `promo`) VALUES
(709, 1, 0, 'UST-DPTV05', 'This product has many features that enable into performing a superior manner. Among those features you will find:\r\n\r\n\r\n\r\n1.Display Port 1.1a compliant receiver offering 5.4 Gbps bandwidth over two lanes. \r\n\r\n\r\n2.Integrated triple 10-bit, 162 Mhz video DAC', '<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><strong style="mso-bidi-font-weight: normal;"><span style="line-height: 115%; font-size: 18pt; mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri;">UST-DPTV05 Display Port (M) To VGA (F) Adapter</span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><span style="color: #000000; font-family: Times New Roman; font-size: small;"><img src="data:image/png;base64,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IKKKKACiiigAooooAKQDFLRQAnWsHWPBeha2/mXdknmf314Nb9Jk+lAHDN8I/DjNn98B6BqtW/wv8LwEE2bSEf3nNdhRSsBi2vg/w9Z4MOk24I7lcn9a1IrO1hGIreJB/soBU1FHKgEAA6CloopgFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRSbgWK5GRyRQAtZut315ZWimwtTczyOEAHRcjqazrjWtQi8UtpYSPy5Ix5PHQnncfXvxUMuo6reLeW2n2rpbwRyK9xJ953APT8aB20uZenyajeeJG07ULn7XHKp+0Rq25F4z24BBx0qz4Klaz1S+0yU4Ycge6nB/nVLwsNWljWPTbeOCLzA09245cA/d//VXbW+mWdveTXkUKieY5dzyfw9KQjyv4saDJb6qusxAmK4wsv+ywGB+YFefweFL/AFq432mnXExPGVQhT+Jr6blhinXbLGki+jLkU5URFCooUDoAMVCjJbMNDxHSvg1q1yoa7eGyRlwUzuP6d/xrsdL+EOhWZV7tpLqQAAljgGu/op8ndgZ2n6BpWloFs7CCLHcIM/nWgAAMCloqkktgCiiimAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFceLw6H4xvROztDcx71zk89QB+ORXX1xniq8tzqQfYGMChGPc5OcVMnZG1Cn7SdnstX6FfWEuoDZeIpGO9pvu9lXqo/Q13MbJLErpgo65HuDVO+0631fShavuSJwrKVGCAORVq2t47S2jt4gRHEoVcnJwKaVkZzlzSbHoiRoEjVUUcBVGAKdRRTJCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooASoBYWgYN9njyG3AlQefWrFFA7sKKKKBBRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAf//Z" border="0" hspace="12" width="363" height="257" align="left" /></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><strong style="mso-bidi-font-weight: normal;"><span style="line-height: 115%; font-size: 18pt; mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri;"> </span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><strong style="mso-bidi-font-weight: normal;"><span style="line-height: 115%; font-size: 18pt; mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri;"> </span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><strong style="mso-bidi-font-weight: normal;"><span style="line-height: 115%; font-size: 18pt; mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri;"> </span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><strong style="mso-bidi-font-weight: normal;"><span style="line-height: 115%; font-size: 18pt; mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri;"> </span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"><strong style="mso-bidi-font-weight: normal;"><span style="line-height: 115%; font-size: 18pt; mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri;"> </span></span></strong></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 10pt;"> </p>\r\n<p style="margin: 0in 0in 10pt;"> </p>\r\n<p style="margin: 0in 0in 10pt;"> </p>\r\n<p style="margin: 0in 0in 10pt;"> </p>\r\n<p style="margin: 0in 0in 10pt;"> </p>\r\n<p style="margin: 0in 0in 10pt;"> </p>\r\n<p style="margin: 0in 0in 10pt;"> </p>\r\n<p style="margin: 0in 0in 10pt;"> </p>\r\n<p style="margin: 0in 0in 10pt;"> </p>\r\n<p style="margin: 0in 0in 10pt;"> </p>\r\n<p style="margin: 0in 0in 10pt;"> </p>\r\n<p style="margin: 0in 0in 10pt;"><span style="line-height: 115%; font-size: 15pt; mso-fareast-font-family: " lang="EN-PH"><span style="color: #000000; font-family: Calibri;">This product has many features that enable into performing a superior manner. Among those features you will find:</span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<ol style="list-style-type: decimal; direction: ltr;">\r\n<li style="font-style: normal; font-weight: normal;">\r\n<p style="font-style: normal; font-weight: normal; margin-top: 0in; margin-bottom: 10pt; mso-list: l0 level1 lfo1;"><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH">Display Port 1.1a compliant receiver offering 5.4 Gbps bandwidth over two lanes. </span></p>\r\n</li>\r\n<li style="color: #000000; font-family: ">\r\n<p style="color: #000000; font-family: "><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH">Integrated triple 10-bit, 162 Mhz video DAC for analog VGA Signal output. </span></p>\r\n</li>\r\n<li style="color: #000000; font-family: ">\r\n<p style="color: #000000; font-family: "><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH">Supports upto 1080p , 1920x1200 reduced blanking video resolution. </span></p>\r\n</li>\r\n<li style="color: #000000; font-family: ">\r\n<p style="color: #000000; font-family: "><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH">EDID pass- through from PC source to display</span></p>\r\n</li>\r\n<li style="color: #000000; font-family: ">\r\n<p style="color: #000000; font-family: "><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH">Spread Spectrum (de-spreading) for EMI reduction</span></p>\r\n</li>\r\n<li style="color: #000000; font-family: ">\r\n<p style="color: #000000; font-family: "><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH">Automatic sink detection.</span></p>\r\n</li>\r\n<li style="color: #000000; font-family: ">\r\n<p style="color: #000000; font-family: "><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH">Low power standby mode operation initiated based on sink detection status. </span></p>\r\n</li>\r\n<li style="color: #000000; font-family: ">\r\n<p style="color: #000000; font-family: "><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH">Powered from Display Port source</span></p>\r\n</li>\r\n<li style="color: #000000; font-family: ">\r\n<p style="color: #000000; font-family: "><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH">3.3V IO , 1.2V Core</span></p>\r\n</li>\r\n<li style="color: #000000; font-family: ">\r\n<p style="color: #000000; font-family: "><span style="line-height: 115%; font-size: 13pt; mso-fareast-font-family: " lang="EN-PH">Low power operation – Active 400mW, standby mode 15mW</span></p>\r\n<p style="color: #000000; font-family: "><strong style="mso-bidi-font-weight: normal;"><span style="line-height: 115%; font-size: 18pt; mso-fareast-font-family: " lang="EN-PH"> </span></strong></p>\r\n<p style="color: #000000; font-family: "><strong style="mso-bidi-font-weight: normal;"><span style="line-height: 115%; font-size: 15pt; mso-fareast-font-family: " lang="EN-PH"> </span></strong></p>\r\n</li>\r\n</ol>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>', 'resized/Display_Port__M__561dccde903d2_90x90.jpg', 'Display_Port__M__561dccde94a22.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1404691200, '', 'Y', 0, NULL, 1404725163, 1444793566, 'Display Port (M) To VGA (F) Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(711, 1, 0, 'EC-PCI-3.0', '', '', 'resized/VIA_Chipset_PCI__53ba6bb3179eb_90x90.jpg', 'VIA_Chipset_PCI__53ba6bb32ff01.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1404691200, '', 'N', 0, NULL, 1404726195, 1404726195, 'VIA Chipset PCI-E USB 4-Ports 3.0', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(712, 1, 0, 'EC-PCI-500', '', '', 'resized/Oxford_Chipset_P_53ba6c05857c3_90x90.jpg', 'Oxford_Chipset_P_53ba6c05a2653.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1404691200, '', 'N', 0, NULL, 1404726277, 1404726312, 'Oxford Chipset PCI-E Parallel Card', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(713, 1, 0, 'EC-PCI-200', '', '', 'resized/Oxford_Chipset_P_53ba6c98576fd_90x90.jpg', 'Oxford_Chipset_P_53ba6c9886139.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1404691200, '', 'N', 0, NULL, 1404726424, 1404726424, 'Oxford Chipset PCI Serial (DB9 M) 2-Ports', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(714, 1, 0, 'EC-PCI-600', '', '', 'resized/Oxford_Chipset_P_53ba6ce917ae0_90x90.jpg', 'Oxford_Chipset_P_53ba6ce92f1c1.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1404691200, '', 'N', 0, NULL, 1404726505, 1404726505, 'Oxford Chipset PCI-E Serial (DB9 M) 2-Ports', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0);
INSERT INTO `jos_vm_product` (`product_id`, `vendor_id`, `product_parent_id`, `product_sku`, `product_s_desc`, `product_desc`, `product_thumb_image`, `product_full_image`, `product_publish`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_available_date`, `product_availability`, `product_special`, `product_discount_id`, `ship_code_id`, `cdate`, `mdate`, `product_name`, `product_sales`, `attribute`, `custom_attribute`, `product_tax_id`, `product_unit`, `product_packaging`, `child_options`, `quantity_options`, `child_option_ids`, `product_order_levels`, `promo`) VALUES
(731, 1, 0, 'VSP0104-S', 'This VGA UTP Extender 1X4 Splitter with Audio is an ideal device for local displaying and remote viewing. It combines split function and extension function. It distributes the input of the VGA signal and audio signal into the four identical outputs simult', '<p> </p>\r\n<p> </p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h3 style="margin: 1em 0in;"><span style="color: windowtext; font-family: "><span style="font-size: medium;">VGA UTP Extender 1X4 Splitter/ Receiver  with Audio</span></span></h3>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<div style="padding: 5pt 0in; margin-right: 0in; margin-left: -13pt; mso-element: para-border-div; mso-border-top-alt: dotted #CCCCCC .5pt; mso-border-bottom-alt: dotted #CCCCCC .5pt; border: 1pt medium dotted none #cccccc currentColor;"><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span>\r\n<p style="margin: 0in 0in 0pt 0.25in; padding: 0in; border: currentColor; border-image: none; line-height: 17pt; text-indent: -0.25in; display: none; mso-border-top-alt: dotted #CCCCCC .5pt; mso-border-bottom-alt: dotted #CCCCCC .5pt; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-list: l0 level1 lfo1; tab-stops: list .5in; mso-padding-alt: 5.0pt 0in 5.0pt 0in;"><span style="display: none; mso-bidi-font-size: 6.0pt; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-hide: all;"><span style="mso-list: Ignore;"><span style="color: #000000; font-family: Times New Roman; font-size: small;"><img width="5" src="file:///D:/H21%20files/Product%20Details/PicExportError" border="0" alt="*" height="5" /></span></span></span><span style="font-family: "><span style="color: #000000;">Price:Price Available</span></span></p>\r\n<span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></div>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="color: windowtext; font-family: ">P/N:  VSP0104-S</span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="color: windowtext; font-family: ">Description</span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p><span style="font-family: "><span style="color: #000000;">This VGA UTP Extender 1X4 Splitter with Audio is an ideal device for local displaying and remote viewing. It combines split function and extension function. It distributes the input of the VGA signal and audio signal into the four identical outputs simultaneously. Each receiver by Cat5 x1 works with the Sender as a full functional module by receiving the distributed signal from the sender and transmitting to displays individually. Only by the most inexpensive UTP cable with cross stand inside, the full functional module extend the VGA display max up to 300 meters.</span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p><span style="font-family: "><span style="color: #000000;">It offers solutions for VGA retail and show site and Projector factory, noise space and security concerns, data center control, information distribution, conference room presentation, school and corporate training environments. </span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="color: windowtext; font-family: ">Specifications</span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p><span style="font-family: "><span style="color: #000000;">This device has many features that enable it to perform in a superior manner. Among those features you will find:<br /></span><span style="color: #000000;"> 1</span></span><span style="font-family: "><span style="color: #000000;">.</span></span><span style="font-family: "><span style="color: #000000;">Extends VGA video and stereo audio signal max up to 300m over one UTP cable with cross stand inside.</span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p><span style="font-family: "><span style="color: #000000;">2. Adjusting GAIN and PEAK to adapt for the different length of UTP cable.<br /></span><span style="color: #000000;"> GAIN: Brightness adjustment.<br /></span><span style="color: #000000;"> PEAK: Skew adjustment.<br /></span><span style="color: #000000;"> 3</span></span><span style="font-family: "><span style="color: #000000;">. </span></span><span style="font-family: "><span style="color: #000000;">Supports resolution max up to 1920x1200.<br /></span><span style="color: #000000;"> 4. Dual output at local unit: 1 x VGA output for local site, plus 4 x UTP output for remote site.<br /></span><span style="color: #000000;"> 5</span></span><span style="font-family: "><span style="color: #000000;">. </span></span><span style="font-family: "><span style="color: #000000;">Works with monitors, projectors, HDTV, and flat panels.</span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="color: windowtext; font-family: ">Connection</span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="color: #000000; font-family: Times New Roman; font-size: small;"><img width="654" src="data:image/png;base64,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FFFACEZGDSeWn91fyoooAPLT+6v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn9xfyoooAPLT+4v5UeWn91fyoooAPLT+6v5UeWn91fyoooAPLT+6v5UeWn91fyoooAPLT+6v5UeWn91fyoooAPLT+6v5UeWn91fyoooAPLT+6v5UeWn91fyoooAUAAYFLRRQAUUUUAFFFFAH//2Q==" border="0" height="293" /></span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="color: windowtext; font-family: "> </span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="color: windowtext; font-family: "> </span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="color: #000000; font-family: Times New Roman; font-size: small;"><img width="397" src="data:image/png;base64,/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwgHBgoICAgLCgoLDhgQDg0NDh0VFhEYIx8lJCIfIiEmKzcvJik0KSEiMEExNDk7Pj4+JS5ESUM8SDc9Pjv/2wBDAQoLCw4NDhwQEBw7KCIoOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozv/wAARCADnAY0DASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD2aiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiqWsXjWGlT3KffRfl+p4rjX8XasqhvnIJwNsIOTTA7+ivPX8Z6tGQJI7hc9M2uM/pSN401ZBueO4QeptCP6UWFc9Dorzo+N9SBxi4zjOPsh6flQPG+pFN4W5KjuLQ4/lRYLnotFedJ431KT7guW/wB2zJx+lNPjq+BIJuAR/wBOh/wosFz0eivOD48vf70//gKf8KT/AITy8/v3H/gKf8KLBc9Iorzb/hPbz+/c/wDgKf8ACkPj27/56XP/AICH/CiwXPSqK80Pj67/AOel1/4CH/Ck/wCE+u/+el1/4CH/AAosFz0yivMv+E/u/wDnpdf+Ah/wo/4T+8/56XX/AICH/Ciwz02ivMf+E+vf+el3/wCAh/wpD4+vv793/wCAh/wosB6fRXl58fX/APfvP/AQ/wCFJ/wn1/8A89Lz/wABD/hRYD1GivLP+E91E/8ALS8/8BD/AIUHx7qX9+9P/bqf8KLAep0V5V/wnupnob7/AMBT/hR/wnmqet9/4C//AFqLAeq0V5V/wnWqnvf/APgNR/wnOret9/4D0WA9Voryk+OdYzgfbv8AwHFN/wCE51r/AKfv/AcUWA9Yoryc+ONbPT7b/wB+Vo/4TbXPW9/79LRYD1iivJ/+E11w97wf9s0/xqRPF2uuuftEyezhQaLAeqUVS0i8OoaTbXRxukjBbH97v+tXaQBRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAc94yuRDpUceM+ZKMj1A5rlBrssb2phghjS2LFEAJBJ65zWv46uN11bW4P3ELEe5P/1q5PBNFwNqXxHNcmFJoYxDHMsrKvViD6mkvNfluVuVWJUW5PzksWOM54BOB+FYw4ozTuI2H153eWX7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hjUOojRj1xnoc159qd9NqmrXeoyKqSXUplZU6LnsK9Zk+HOtyibf4mDefGIpSbflkHQE5rPHwbm6HWY/wtz/APFUnboGp5eJPWuv8JeNtY0azXSNMs7e4MkrOoZGLEnr/EPSuhPwWB663/5L/wD2VPj+EN1ZMLiw1/ZdRkGNjDtA9ehNAHK+KRqviu7U33hyNbhAXaS3ibMg29SwbBAA4rN0PSbzR9XSaDww11MRtWK5gdlycYPJ69K9DHgHxfjH/CUpt3bsbWxnGOnpjjFPl8B+L5pXkbxaAXYMQqMBkHIwO1O0Q1Oc1n4k+JpNDcXOl28FrfrJAkxRhnjDbfm7ZrzTaAMZ6cV67cfCPW7u3jtrjxHHJDESY42RiqE9cDPFVG+B98R/yGrYH/ri3+NJ26DPK2OKZu5r1T/hRl+Rg65b/wDfhv8AGk/4UXff9By3/wC/Df40gPM42zXt/wAGIdnhe7l/56XZ/RRXPr8Dr1f+Y5B/34b/ABr0bwf4aHhXQU037T9ofe0jybdoJPoPwoA3aKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAoopM0ALRSUtABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFRCBRu5PzDB5oooAHt0kILFsj0NSDgUUUAf//Z" border="0" height="231" /><img width="432" src="data:image/png;base64,/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwgHBgoICAgLCgoLDhgQDg0NDh0VFhEYIx8lJCIfIiEmKzcvJik0KSEiMEExNDk7Pj4+JS5ESUM8SDc9Pjv/2wBDAQoLCw4NDhwQEBw7KCIoOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozv/wAARCAD8AbADASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD2aiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKK5rxVqtxZSQQ20zRsQWYqfwH9ao2evLPZD7VfzwywvlimSZl9PQGgDs6K5C38QiZZGe4aCcyfJFKWKhPbHU/WnXGtQSXieXq0iQomZdiklj6LmnYR1tFcZqWvCSFJdO1CZHB2vCwOWHqKkj1jzY7Jjq3l7f+PpXLBjz0Ax6UWGdfRXIWviQNdXQlmIgAdocs24n+EcUWviVPsck11O4mMgCRIScLjryf60WA6+iuLHiOSbVY9lxLBaFgHDtnA71dvtdTym+yXqZ3AA7znGaLCudPRXKzatGmxotWllHmASLkDavcj5eakGpwPdTg6zJHEpHlgEHI7nOP0osFzpqK5H+11RZWOq3EmJgqAYUlP73SnJqi+ZNnWZGCyARgkLuX1zg5+lFgudZRXNDVbeS6n/4nLxRKwEagDkY5OSPWqkmumO2lddTmmkEpWNVCrlccMePWiwzsKK8+/wCEl1Q/8vZ/IUn/AAkmqf8AP435CkB6FRXnn/CR6r/z+N+Qo/4STVf+fxvyH+FAHodFeef8JNqw/wCXs/8AfIo/4SjVv+fr/wAdH+FAHodFeeHxPq3/AD9n/vkf4Uw+J9W/5+z/AN8j/CgD0aivNz4o1b/n8b/vkf4Uh8UawP8Al8b/AL5H+FAHpNFeaHxXrP8Az+H/AL5H+FJ/wletf8/h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mR/yHLj/AL8L/jTf+FJ2v/Qdn/8AAdf8a9QopDPMR8GI1OV8Q3APTIhH/wAVSN8GFIx/wkdxj0MI/wDiq9Pop3YHlp+CuSzDxHOGbhj5HJ+vzUxvgmWXafEcpGMYMHGPT71eq0UXYHkp+Ba/9B8/+A3/ANlTT8C/TX//ACV/+yr1yikB5F/wotv+hg/8lf8A7KtHw/8ABuDSNattRu9Xe6W2cSLEsOwFh0ycnivTKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKi8395s2H61LRQBE021chCeTwKdFJ5ibtpX2NPooA//9k=" border="0" height="252" /></span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 0pt;"><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>', 'resized/VSP0104_S_VGA_Ex_53c39b404275d_90x90.jpg', 'VSP0104_S_VGA_Ex_53c39b407b5d9.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1405296000, '', 'N', 0, NULL, 1405312104, 1405328192, 'VSP0104-S VGA Extender w/ audio (1 Sender/4 Receiver)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0);
INSERT INTO `jos_vm_product` (`product_id`, `vendor_id`, `product_parent_id`, `product_sku`, `product_s_desc`, `product_desc`, `product_thumb_image`, `product_full_image`, `product_publish`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_available_date`, `product_availability`, `product_special`, `product_discount_id`, `ship_code_id`, `cdate`, `mdate`, `product_name`, `product_sales`, `attribute`, `custom_attribute`, `product_tax_id`, `product_unit`, `product_packaging`, `child_options`, `quantity_options`, `child_option_ids`, `product_order_levels`, `promo`) VALUES
(732, 1, 0, 'IPAD500', 'IPAD 5 Air Rotating Glossy\r\nASSORTED COLORS\r\nBUY 1 TAKE 1', '', 'resized/IPAD500_IPAD_5_A_53c3972d0d349_90x90.jpg', 'IPAD500_IPAD_5_A_53c3972d7c442.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1405296000, '', 'N', 0, NULL, 1405327149, 1423638012, 'IPAD500	IPAD 5 Air Rotating Glossy', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(733, 1, 0, 'IPAD600', 'IPAD600	IPAD Mini-2 Cover Rotating Glossy\r\nassorted colors', '', 'resized/IPAD600_IPAD_Min_53c397a57e4d4_90x90.jpg', 'IPAD600_IPAD_Min_53c397a5c9700.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1405296000, '', 'N', 0, NULL, 1405327269, 1405327269, 'IPAD600	IPAD Mini-2 Cover Rotating Glossy', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(734, 1, 0, 'E-30', 'This kind of HDMI Extender by CAT-5e/6 uses two pieces of CAT-5e/6 cables to extend the HDTV display up to 30 meters for 1080p.  It not only breaks the limitation of the HDMI cable transmission length but also CAT-5e/6 has more flexibility and convenience', '<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> <br /></span></p>\r\n<h3 style="margin: 1em 0in;"><span style="color: windowtext; font-family: "><span style="font-size: medium;"> </span></span><span style="color: windowtext; font-family: "><span style="font-size: medium;">HDMI Extender 30m By CAT-5e/6--E30D</span></span></h3>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> <br /></span></p>\r\n<h2 style="margin: 0in 0in 0pt;"><span style="font-family: ">Product Name:HDMI Extender 30m By CAT-5e/6--E30D</span></h2>\r\n<h2></h2>\r\n<h2 style="border-width: 1pt medium; border-style: dotted none; border-color: #cccccc currentColor; padding: 5pt 0in; margin-right: 0in; margin-left: -13pt; mso-element: para-border-div; mso-border-top-alt: dotted #CCCCCC .5pt; mso-border-bottom-alt: dotted #CCCCCC .5pt;"></h2>\r\n<h2 style="margin: 0in 0in 0pt 0.25in; padding: 0in; border: currentColor; border-image: none; line-height: 17pt; text-indent: -0.25in; display: none; mso-border-top-alt: dotted #CCCCCC .5pt; mso-border-bottom-alt: dotted #CCCCCC .5pt; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-list: l0 level1 lfo1; tab-stops: list .5in; mso-padding-alt: 5.0pt 0in 5.0pt 0in;"><span style="display: none; mso-bidi-font-size: 6.0pt; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-hide: all;"><span style="mso-list: Ignore;"><img width="5" src="file:///D:/H21%20files/Product%20Details/PicExportError" border="0" alt="*" height="5" /></span></span><span style="font-family: ">Price:Price Available</span></h2>\r\n<h2 style="border-width: 1pt medium; border-style: dotted none; border-color: #cccccc currentColor; padding: 5pt 0in; margin-right: 0in; margin-left: -13pt; mso-element: para-border-div; mso-border-top-alt: dotted #CCCCCC .5pt; mso-border-bottom-alt: dotted #CCCCCC .5pt;"></h2>\r\n<h2></h2>\r\n<h4 style="margin: 1.33em 0in;"><span style="color: windowtext; font-family: ">P/N: E30D</span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> <br /></span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="color: windowtext; font-family: ">Description</span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> <br /></span></p>\r\n<p><span style="font-family: "><span style="color: #000000;">This kind of HDMI Extender by CAT-5e/6 uses two pieces of CAT-5e/6 cables to extend the HDTV display up to 30 meters for 1080p.  It not only breaks the limitation of the HDMI cable transmission length</span></span><span style="font-family: "><span style="color: #000000;"> </span></span><span style="font-family: "><span style="color: #000000;">but also CAT-5e/6 has more flexibility and convenience in cable construction.</span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> <br /></span></p>\r\n<p><span style="font-family: "><span style="color: #000000;">Both the sender and receiver are equipped with fixed HDMI cable that allows consumers reduce cost and time for setting. It is capable of supporting DVI (digital visual interface) equipment when used with an HDMI to DVI Adapter, providing greater flexibility and options when integrating several home theater components.</span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> <br /></span></p>\r\n<p><span style="font-family: "><span style="color: #000000;">This product offers solutions for residential consumers: HDTV retail and show site, HDTV, STUB, DVD and Projector factories, noise, space and security concerns, data center control, information distribution, conference room presentation, school and corporate training environments. </span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> <br /></span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="color: windowtext; font-family: ">Specifications</span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> <br /></span></p>\r\n<p style="margin: 1em 0in;"><span style="font-family: "><span style="color: #000000;">This HDMI Extender has many features that enable it to perform in a superior manner. Among those features you will find:</span></span><span style="font-family: "><br /><span style="color: #000000;"> </span></span><span style="font-family: "><span style="color: #000000;">1</span></span><span style="font-family: "><span style="color: #000000;">、</span></span><span style="font-family: "><span style="color: #000000;">One pair as a full functional module, no need of setting. </span></span><span style="font-family: "><br /><span style="color: #000000;"> </span></span><span style="font-family: "><span style="color: #000000;">2</span></span><span style="font-family: "><span style="color: #000000;">、</span></span><span style="font-family: "><span style="color: #000000;">CAT-5e/6 cable can substitute HDMI cable to achieve long distance transmission. </span></span><span style="font-family: "><br /><span style="color: #000000;"> </span></span><span style="font-family: "><span style="color: #000000;">3</span></span><span style="font-family: "><span style="color: #000000;">、</span></span><span style="font-family: "><span style="color: #000000;">Follow the standard of IEEE-568B. </span></span><span style="font-family: "><br /><span style="color: #000000;"> </span></span><span style="font-family: "><span style="color: #000000;">4</span></span><span style="font-family: "><span style="color: #000000;">、</span></span><span style="font-family: "><span style="color: #000000;">Transmission distance can be up to 30 meters for 1080p using CAT-6 Cable.</span></span><span style="font-family: "><br /><span style="color: #000000;"> </span></span><span style="font-family: "><span style="color: #000000;">5</span></span><span style="font-family: "><span style="color: #000000;">、</span></span><span style="font-family: "><span style="color: #000000;">Compact size.</span></span><span style="font-family: "><br /><span style="color: #000000;"> </span></span><span style="font-family: "><span style="color: #000000;">6</span></span><span style="font-family: "><span style="color: #000000;">、</span></span><span style="font-family: "><span style="color: #000000;">Signaling rates up to1.65Gbps in support of 1080P display.</span></span><span style="font-family: "><br /><span style="color: #000000;"> </span></span><span style="font-family: "><span style="color: #000000;">7</span></span><span style="font-family: "><span style="color: #000000;">、</span></span><span style="font-family: "><span style="color: #000000;">HDCP compliant.</span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> <br /></span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="color: windowtext; font-family: ">Connection</span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> <br /></span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="color: #000000; font-family: Times New Roman; font-size: small;"><img width="379" src="data:image/png;base64,/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwgHBgoICAgLCgoLDhgQDg0NDh0VFhEYIx8lJCIfIiEmKzcvJik0KSEiMEExNDk7Pj4+JS5ESUM8SDc9Pjv/2wBDAQoLCw4NDhwQEBw7KCIoOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozv/wAARCAC9AXsDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD2aiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigApKWkoAia6jWUxfMzgZKqCcD3pfPH9yT/vg1lajNJaeFNSvIHKTrbzShx1DAHB/DA/KvBJ9W8V21nFdTa5fbJdvS8YspZdy7hnjI5oA+kPPH9yT/vg0eeP7kn/fBrn/AIeXt1qPgXTLq8need0YNI5yzYcgZPfgCuloAga6iQqH3JuOAXUgE+mamBzTJ40lgeNxlWUgimWbM9nC7HLNGpJ9eKAJ6KKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAwta/5EjVP+vOf+TV4Rq//IFX/ftP/Savd9a/5EjVP+vOf+TV4jdafcahplpFAEH2kwPG7thSqW2HbPop4Pvx1oA9f+F//JPNK/3X/wDRjV1lcB4X8TaN4W8K22nXs8+LSHzGmNuwDBmzkAZIxuHBwfatuw8eaFqsLS6fLLcIr7GYRMoU4zkkjAH+IoA6JvuH6VDYf8eFv/1zX+VR2GpW+qWIubffsbIw6FWBHsf8mpLD/jwt/wDrmv8AKgCxRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFJQBh61n/hCNUx1+xz/yavGbJrLRrS81aztrRktYo0tJkud0k4kIDbxk7TjJzgbSO9e7eVLAHjWITwuSQmQCoPUc8EVz+s+CtG1nTmsTopskaRZC9mY42JGcZx1HJ60AeeaXDq3ijTbqTw7o37supuzdSqqXLghiOANzHGCcgYPTJqzc6d4k0OyuNU1TQI7fTVdTLbWUykkYwS64wynjOehAPrXqmmWkej6dDYWOmNDbwLtRQ6/meeSfWrDyzSRsj2DsrDDKWQgj0PNAHDfDHxW2vS6tasjIsRWWJXfe205B59BgAAcAV3lh/wAeFv8A9c1/lXM6B4IsfD2oXt1pcE1s14uxvNlDLEuc4RR/U8V1kaLHGqLwqgAD2FADqKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACimswRSzEADkk9qgW/tm+7IT7hTj+VAFmioFu4HYqrnIGfukcU4XER6N+hoAkoqE3luOsmPwNSRyLKgdGDKehByKAH0UUUAJS0UUAFFFFABRRRQAUUUh4FAC0VF9pg7zx/99ij7Vb/894/++xQBLRUX2q3/AOe8f/fYpftEJ4E0ZP8AvCgCSimCaI9JE/76FJ50X/PRP++hQBJRSUtABRRSUALRUX2mAHBmjBH+2KBcwE8TRn/gYoAloqL7TAP+W0f/AH2K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QDg4zxnp2preFtEcKG0+M7bZbUfM3+qVgyr17EA+ta1FAEU9vFdQSW88ayxSqUdGGQwPBBrGbwV4fFn9lj02JVDF1YlmYMRjJJOSMYGCcYGK3qKAMiPwzph0C30W4h+0W0AGC5IYsOd+RghiSTkepqeTQdLk0lNKNnGLKMDZCmVCYOQQRyDnvWhRQBjL4R0BJ45k0yJHiRETYSoAUELwDjgEj8adZeFtE0/H2WwSPDK33mPIUoOp6BSRjpzWvRQBn6XoemaKkiabZpbiUgvtyScDAGT2A4A6CtCiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKAMXUL2TTvDM91D9+NTtOOmWxn8M1DpnhjTBbRz3tul9cyqHkluB5mSeeAeK04reK70praZQ0UodHX1BJrzzW9S8deGru20ax+zy2j/u7a9lUAY7B2PAIHHv2oA6m703whPP5DxW0EwbaHt8wlW9mXHP41l3X9mPfjw9feJU1CDAulgmw80JiYPy44IwDw3NWNP0PxDa6dGt+1lqErKwYRLjywSW+XJGcEnkEfQ4FWdK8FaQs9xd3mjWyzSyblDAE9ACTjjJOTgetAGvFqNpq1lZXtjOs8EsqlXX6H8jWnXKpZW+keLktrKMRQXiLK8MYwiOpI3Y7ZH8q6qgAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiikoA4vxHfXNld6EQ+orp7tcfa/sCMzdPkztBP3qgbXNEdSryeKGU9Q1vcEf+g1015pcNwvk3Vil9bhy6KxGYyeo56jk1bjlkijWOOwlVEAVVDJwB+NAHHjXtGAwJfFIA9Le4/wDia5rVb3xDqGtS/wBh65q2n6eqRhPtlvMSzENuI+UnAwPzr1f7TN/z5Tf99J/jUV0Be2729zpsksMgwyMyYP60Acl4IGrNayNrN7LfTLdx+VPJGykKUBKjcAeD1967usyx0+O28uOC0S0to2LrEpyWY9zitOgAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA//Z" border="0" height="189" /></span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> <br /></span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="color: #000000; font-family: Times New Roman; font-size: small;"><img width="318" src="data:image/png;base64,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" border="0" height="207" /></span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> <br /></span></p>', 'resized/E_30_HDMI_Extend_53c4a92357144_90x90.jpg', 'E_30_HDMI_Extend_53c4a9235b0ed.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1405382400, '', 'Y', 0, NULL, 1405397283, 1405398164, 'E-30	HDMI Extender (Transmitter/Receiver Single Port)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0);
INSERT INTO `jos_vm_product` (`product_id`, `vendor_id`, `product_parent_id`, `product_sku`, `product_s_desc`, `product_desc`, `product_thumb_image`, `product_full_image`, `product_publish`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_available_date`, `product_availability`, `product_special`, `product_discount_id`, `ship_code_id`, `cdate`, `mdate`, `product_name`, `product_sales`, `attribute`, `custom_attribute`, `product_tax_id`, `product_unit`, `product_packaging`, `child_options`, `quantity_options`, `child_option_ids`, `product_order_levels`, `promo`) VALUES
(735, 1, 0, 'HSP0104E', 'This HDMI Splitter is an HDMI splitter with four RJ45 outputs. It distributes the input of the HDMI signal into the four identical outputs simultaneously. Four HDMI Extender Receivers by Cat5 x1 receive the distributed signal from the splitter and transmi', '<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h3 style="margin: 1em 0in;"><span style="color: windowtext; font-family: "><span style="font-size: medium;"> </span></span></h3>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h3 style="margin: 1em 0in;"><span style="font-family: "><span style="color: #000000; font-size: medium;">HDMI Splitter Amplifier (1 Sender/4 Receiver)</span></span></h3>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h3 style="margin: 1em 0in;"><span style="color: windowtext; font-family: ">P/N:  HSP0104E</span></h3>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="color: windowtext; font-family: ">Description</span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="text-align: justify;"><span style="font-family: "><span style="color: #000000;">This HDMI Splitter is an HDMI splitter with four RJ45 outputs. It distributes the input of the HDMI signal into the four identical outputs simultaneously. Four HDMI Extender Receivers by Cat5 x1 receive the distributed signal from the splitter and transmit to displays individually. <br /></span><span style="color: #000000;"> Each receiver works with the splitter as a full functional module. Only by the most inexpensive CAT-5e/6 cable the full functional module extend the HDTV display up to 50 meters for 1080p. <br /></span><span style="color: #000000;"> This HDMI Splitter offers solutions for HDTV retail and show site, HDTV, STB, DVD and Projector factory, noise, space and security concerns, data center control, information distribution, conference room presentation, school and corporate training environments. </span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="color: windowtext; font-family: ">Specifications</span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p><span style="font-family: "><span style="color: #000000;">This HDMI Splitter has many features that enable it to perform in a superior manner. Among those features you will find:<br /></span><span style="color: #000000;"> 1</span></span><span style="font-family: "><span style="color: #000000;">. </span></span><span style="font-family: "><span style="color: #000000;">Easy to Use: Install in seconds, no need of setting.<br /></span><span style="color: #000000;"> 2</span></span><span style="font-family: "><span style="color: #000000;">. </span></span><span style="font-family: "><span style="color: #000000;">One pair as a full functional module, <br /></span><span style="color: #000000;"> 3</span></span><span style="font-family: "><span style="color: #000000;">. </span></span><span style="font-family: "><span style="color: #000000;">One piece of CAT-5e/6 cable can substitute HDMI cable to achieve long distance transmission. <br /></span><span style="color: #000000;"> 4</span></span><span style="font-family: "><span style="color: #000000;">. </span></span><span style="font-family: "><span style="color: #000000;">Follow the standard of IEEE-568B. <br /></span><span style="color: #000000;"> 5</span></span><span style="font-family: "><span style="color: #000000;">. </span></span><span style="font-family: "><span style="color: #000000;">Transmission distance can be up to 50 meters for 1080p using CAT-6 Cable.<br /></span><span style="color: #000000;"> 6</span></span><span style="font-family: "><span style="color: #000000;">. </span></span><span style="font-family: "><span style="color: #000000;">Support uncompressed audio such as LPCM7</span></span><span style="font-family: "><span style="color: #000000;">、</span></span><span style="font-family: "><span style="color: #000000;">Support highest video resolution 1080p.<br /></span><span style="color: #000000;"> 8</span></span><span style="font-family: "><span style="color: #000000;">. </span></span><span style="font-family: "><span style="color: #000000;">Support 165MHz/1.65Gbps per channel (4.95Gbps all channel) bandwidth.<br /></span><span style="color: #000000;"> 9</span></span><span style="font-family: "><span style="color: #000000;">. </span></span><span style="font-family: "><span style="color: #000000;">Support 8bit per channel (24bit all channel) deep color.</span></span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="color: #000000; font-family: Times New Roman; font-size: small;"><img width="328" src="data:image/png;base64,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dpyO+aYdF1aSOFjqJjdZAZdkjklc5IBJ788dBnigDpKKp6WlzHYILyTzLg5LnsPb8BirdAC0UmcUZHPtQAtFJkf0paACiiigAooooAKKKKACiiigAooooAKKKKACiiigAqtd3lpahFu5EQSnChhwas1UvrAXpjPnyRbQynYB8yt1ByD+lADttic/LBwQDwOp6CnwPbEHyGixxnZj9aym8MW3nySJPIqyyrI6FVI4DDjI4PzdevFJF4Yt4L77THPKd0yyOGxyFBwvA6ZIPOegoEblFFFAwooooAKKKKACiiigAooooAKz9VewZY7a/sxdRSZcq0IkVAuPmIPpuFaFV7mxgu3jeYOTHkDa7KCDjIIB5HA4NAGR9k8JK5jOn6WHDKpX7MnBIyB09Kuafc6LbwvDp/2a3RW+eOJBGAxA6gY56Ur6Dp73YufLkWTgHbKwDADGCM8j2pE8P6fFIrxRMmJxORvJ3MAQOvYZ6CgDTooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKAP/9k=" border="0" height="322" hspace="12" align="left" /></span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="color: #000000; font-family: Times New Roman; font-size: small;"><img width="361" src="data:image/png;base64,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" border="0" height="146" /></span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="color: #000000; font-family: Times New Roman; font-size: small;"><img width="371" src="data:image/png;base64,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" border="0" height="137" /></span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<h4 style="margin: 1.33em 0in;"><span style="color: windowtext; font-family: "><span style="font-size: small;"> </span></span></h4>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p style="margin: 0in 0in 0pt;"><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>\r\n<p><span style="color: #000000; font-family: Times New Roman; font-size: small;"> </span></p>', 'resized/HSP0104E_HDMI_Sp_53c4aea7e0d06_90x90.jpg', 'HSP0104E_HDMI_Sp_53c4aea815224.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1405382400, '', 'Y', 0, NULL, 1405398696, 1405398696, 'HSP0104E HDMI Splitter Amplifier (1 Sender/4 Receiver)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(763, 1, 0, 'TC800', 'UTP AWG#24 Cat 5e Outdoor Cable 1,000ft/ Roll\r\n\r\n"Data Cable Brand"\r\n**Outdoor\r\n**Pure Copper, Solid Wire', '', 'resized/UTP_AWG_24_Cat_5_546067ca42508_90x90.jpg', 'UTP_AWG_24_Cat_5_546067ca56db0.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415604170, 1415604170, 'UTP AWG#24 Cat 5e Outdoor Cable 1,000ft/ Roll', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(736, 1, 0, 'UST-RJ45-06', 'Console cable USB - RJ45 Male Chipset - FT232RL Length - 1.8M/6ft chips are in the USB connector 3.3V and 5V \r\nA single 1.8M (6 ft) RJ45 Serial RS-232 Mgnt Console port cable that directly connects to your USB port and it just works! Check the pin out spe', '<p>Specifications:</p>\r\n<p>Console cable USB - RJ45 Male Chipset - FT232RL Length - 1.8M/6ft chips are in the USB connector 3.3V and 5V  A single 1.8M (6 ft) RJ45 Serial RS-232 Mgnt Console port cable that directly connects to your USB port and it just works! Check the pin out specification for your particular application before buying.</p>\r\n<p>Functionally equivalent to the Cisco 72-3383-01 plus a USB to DB-9 Serial cable.</p>\r\n<p> </p>\r\n<p>Features:</p>\r\n<p>•	Full support for Windows, MAC and Linux, see the detailed list below.</p>\r\n<p>•	Microsoft (HCL) certified to be compatible with Windows, no CD needed because the drivers are part of the OS distribution.</p>\r\n<p>•	Supports hardware flow control used to implement the CISCO break sequence.</p>\r\n<p>•	FTDI FT232R chip + RS232 Level Shifter.</p>\r\n<p>•	RJ-45 DTE Pin outs RTS (1), DTR (2), TXD (3), GND (4), GND (5), RXD (6), DSR (7), CTS (8).</p>\r\n<p>•	UART interface support for 7 or 8 data bits, 1 or 2 stop bits and odd / even / mark / space / no parity.</p>\r\n<p>•	Cable length is 1.80m (6 feet).</p>\r\n<p>•	USB 2.0 Full Speed compatible.  Benefits:</p>\r\n<p>•	No more cables & adapters to buy and/or make to gets it working.</p>\r\n<p>•	No more DB-9 Adapters.</p>\r\n<p>•	No more Mickey Mouse Prolific driver problems.</p>\r\n<p>•	No more fake prolific chip.</p>\r\n<p> </p>\r\n<p>Supported Operating System:</p>\r\n<p>Drivers are available which allow USB FTDI devices to work with the following operating systems:</p>\r\n<p>•	Windows 8 x32</p>\r\n<p>•	Windows 8 x64</p>\r\n<p>•	Windows Server 2008 R2 x64</p>\r\n<p>•	Windows 7 x32</p>\r\n<p>•	Windows 7 x64</p>\r\n<p>•	Windows Server 2008</p>\r\n<p>•	Windows Server 2008 x64</p>\r\n<p>•	Windows Vista x32</p>\r\n<p>•	Windows Vista x64</p>\r\n<p>•	Windows Server 2003 x32</p>\r\n<p>•	Windows Server 2003 x64</p>\r\n<p>•	Windows XP x32</p>\r\n<p>•	Windows XP x64</p>\r\n<p>•	Windows ME</p>\r\n<p>•	Windows 98</p>\r\n<p>•	Linux</p>\r\n<p>•	Mac OS X</p>\r\n<p>•	Mac OS 9</p>\r\n<p>•	Mac OS 8</p>\r\n<p>•	Windows CE.NET (Version 4.2 and greater)</p>\r\n<p>•	Android</p>\r\n<p> </p>', 'resized/Console_USB_A_to_545d958e47ec9_90x90.jpg', 'Console_USB_A_to_545d958e9e4bf.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415404800, '', 'Y', 0, NULL, 1415419278, 1423641280, 'Console USB A to RJ-45 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(737, 1, 0, 'HDMI-382-35', '', '', 'resized/HDMI_Cable_M_M_3_545d97ae38556_90x90.jpg', 'HDMI_Cable_M_M_3_545d97ae8fae2.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415404800, '', 'N', 0, NULL, 1415419822, 1415586026, 'HDMI-382-35 HDMI M/M CABLE 35ft', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(738, 1, 0, 'HDMI-382-50', '', '', 'resized/HDMI_382_50_HDMI_5460255d2d084_90x90.jpg', 'HDMI_382_50_HDMI_5460255d96677.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415587165, 1415587285, 'HDMI-382-50 HDMI M/M Cable 50ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(739, 1, 0, 'HDMI-382-75', '', '', 'resized/HDMI_382_75_HDMI_5460277a881f2_90x90.jpg', 'HDMI_382_75_HDMI_5460277ad6989.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415587706, 1415587706, 'HDMI-382-75 HDMI M/M Cable 75ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(740, 1, 0, 'HDMI-382-100', '', '', 'resized/HDMI_382_100_HDM_546027df08c1d_90x90.jpg', 'HDMI_382_100_HDM_546027df832e8.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415587807, 1415587807, 'HDMI-382-100 HDMI M/M 100ft. with booster', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(741, 1, 0, 'UST-MDTV03', 'Specifications:\r\n•	Mini Display Port 1.1a compliant receiver offering 5.4GBPS bandwidth over 2 lanes\r\n•	Integrated triple 10-bit, 162MHz video DAC for analog VGA signal output\r\n•	Supports up to 1080p, 1920 x 1200 reduced blanking video resolution\r\n•	EDID', '<p>Specifications: •	Mini Display Port 1.1a compliant receiver offering 5.4GBPS bandwidth over 2 lanes •	Integrated triple 10-bit, 162MHz video DAC for analog VGA signal output •	Supports up to 1080p, 1920 x 1200 reduced blanking video resolution •	EDID pass-through from PC source display •	Spread Spectrum (de-spreading) for EMI redirection Automatic sink detection •	Low power standby mode operation initiated based on sink detection status •	Powered from Mini Display Port source 3.3V IO, 1.2V Core •	Low power protection – Active 400mW, standby mode 15mW</p>', 'resized/Mini_Display_Por_55e559c1b987c_90x90.jpg', 'Mini_Display_Por_55e559c1c39fc.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415589038, 1441094081, 'Mini Display Port (M) to VGA (F) Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(742, 1, 0, 'UST-DTDV09', '', '', 'resized/Display_Port__M__55e558009e23e_90x90.jpg', 'Display_Port__M__55e55800a6a3a.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415589293, 1441093632, 'Display Port (M) to DVI-I (24+5) (F) Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(743, 1, 0, 'UST-MDPDHV', '', '', 'resized/Mini_Display_Por_54602e0d93534_90x90.jpg', 'Mini_Display_Por_54602e0da0266.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415589389, 1415589389, 'Mini Display Port (M) to DVI / HDMI / VGA (F) Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(744, 1, 0, 'UST-MNHTV10', 'Specifications:\r\nThis product has many features that enable it to perform in a superior manner. Among those features you will find:\r\n1.	Easy to Use: Install in seconds, no need of setting.\r\n2.	Conversion: It can convert complete HDMI into VGA video.\r\n3.	S', '<p>Specifications:</p>\r\n<p>This product has many features that enable it to perform in a superior manner.</p>\r\n<p>Among those features you will find:</p>\r\n<p>1.	Easy to Use: Install in seconds, no need of setting.</p>\r\n<p>2.	Conversion: It can convert complete HDMI into VGA video.</p>\r\n<p>3.	Supports HDCP 1.2.</p>\r\n<p>4.	Supports 165MHz/1.65Gbps per channel (6.75Gbps all channel) bandwidth for HDMI Input.</p>\r\n<p>5.	Supports Analogue Video output up to UXGA and 1080p with 10-bit DAC.</p>\r\n<p> </p>\r\n<p> </p>', 'resized/Mini_HDMI__M__to_561dce1e8061c_90x90.jpg', 'Mini_HDMI__M__to_561dce1e8456b.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'Y', 0, NULL, 1415589476, 1444793886, 'Mini HDMI (M) to VGA (F) with audio Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(745, 1, 0, 'UST-HTDV01', '', '', 'resized/HDMI__M__to_DVI__54602ebd298dc_90x90.jpg', 'HDMI__M__to_DVI__54602ebd3313a.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415589565, 1415589565, 'HDMI (M) to DVI-D 24+1 (M) Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(746, 1, 0, 'UST-HTDV245', '', '', 'resized/HDMI__M__to_DVI__54602f533d705_90x90.jpg', 'HDMI__M__to_DVI__54602f534b215.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415577600, '', 'N', 0, NULL, 1415589715, 1415589715, 'HDMI (M) to DVI-D 24+5 (F) Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(766, 1, 0, 'CEHSP0104', '', '', 'resized/CEHSP0104_HDMI_S_54658d2886d13_90x90.jpg', 'CEHSP0104_HDMI_S_54658d28a91ae.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1415923200, '', 'N', 0, NULL, 1415941416, 1424418094, 'CEHSP0104 HDMI Splitter 4-ports with Full 3D 340Mhz', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(828, 1, 0, 'UTC-H01', 'UTC-H01\r\nUSB Type-C to HDMI (F) Adapter\r\nData Cable Brand', '', 'resized/UTC_H01_USB_Type_567384198dbd1_90x90.jpg', 'UTC_H01_USB_Type_5673841996a84.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1450396800, '', 'Y', 0, NULL, 1450411033, 1450411042, 'UTC-H01 USB Type-C to HDMI (F) Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(829, 1, 0, 'UTC-V01', 'UTC-V01\r\nUSB Type-C to VGA (F) Adapter\r\nData Cable Brand', '', 'resized/UTC_V01_USB_Type_567384680f0ec_90x90.jpg', 'UTC_V01_USB_Type_56738468176bd.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1450396800, '', 'Y', 0, NULL, 1450411112, 1450411112, 'UTC-V01	USB Type-C to VGA (F) Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(830, 1, 0, 'UTC-UGA', 'UTC-UGA\r\nUSB Type-C to Gigabit Adapter\r\nData Cable Brand', '', 'resized/UTC_UGA_USB_Type_56738498687ce_90x90.jpg', 'UTC_UGA_USB_Type_56738498719ea.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1450396800, '', 'Y', 0, NULL, 1450411160, 1450411164, 'UTC-UGA	USB Type-C to Gigabit Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0);
INSERT INTO `jos_vm_product` (`product_id`, `vendor_id`, `product_parent_id`, `product_sku`, `product_s_desc`, `product_desc`, `product_thumb_image`, `product_full_image`, `product_publish`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_available_date`, `product_availability`, `product_special`, `product_discount_id`, `ship_code_id`, `cdate`, `mdate`, `product_name`, `product_sales`, `attribute`, `custom_attribute`, `product_tax_id`, `product_unit`, `product_packaging`, `child_options`, `quantity_options`, `child_option_ids`, `product_order_levels`, `promo`) VALUES
(831, 1, 0, 'UTC-UBM-06', 'UTC-UBM-06\r\nUSB Type-C to USB 2.0 B Male Cable 6ft.\r\n\r\nData Cable Brand', '', 'resized/UTC_UBM_06_USB_T_567384ccb4958_90x90.jpg', 'UTC_UBM_06_USB_T_567384ccc1346.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1450396800, '', 'Y', 0, NULL, 1450411212, 1450411212, 'UTC-UBM-06	USB Type-C to USB 2.0 B Male Cable 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(832, 1, 0, 'UTC-UAF', 'UTC-UAF\r\nUSB Type-C to USB 2.0 A Female Adapter\r\nData Cable Brand', '', 'resized/UTC_UAF_USB_Type_5673850797c8a_90x90.jpg', 'UTC_UAF_USB_Type_567385079fef3.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1450396800, '', 'Y', 0, NULL, 1450411271, 1450411271, 'UTC-UAF	USB Type-C to USB 2.0 A Female Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(833, 1, 0, 'MD818ZM/A', '•	MFI-Approved\r\n•	Compact & portable\r\n•	Transfers data, syncs and charges your device\r\n•	Easy to store and use\r\n•	Compatible with Apple Product', '•	MFI-Approved\r\n•	Compact & portable\r\n•	Transfers data, syncs and charges your device\r\n•	Easy to store and use\r\n•	Compatible with Apple Product', 'resized/Foxconn_Licensed_56a9d771e7e79_90x90.jpg', 'Foxconn_Licensed_56a9d771f2b22.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1453939200, '', 'Y', 0, NULL, 1453971313, 1453971313, 'Foxconn Licensed USB to Lightning Cable 1M', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(834, 1, 0, 'WP-504', '•	Perfect combination by air mouse and wireless presenter\r\n•	Annotation with highlighter , no need driver\r\n•	Virtual Keyboard to input letter directly.\r\n•	Easily control multimedia with functions (volume, play and pause)\r\n•	Shortcut keys to switch window', 'WP-504 Laser Pointer Presenter\r\n\r\n•	Perfect combination by air mouse and wireless presenter\r\n•	Annotation with highlighter , no need driver\r\n•	Virtual Keyboard to input letter directly.\r\n•	Easily control multimedia with functions (volume, play and pause)\r\n•	Shortcut keys to switch window and desktop\r\n•	Presentation functions include page down/up, play and black screen.\r\n•	AAAx2 Battery supply, convenient to replace\r\n•	2.4 GHz RF Technology Connection\r\n\r\nProduct Name: Laser Pointer Presenter\r\nModel: WP-504\r\nSize: 137x38.5x29mm\r\nNet Weight: 68G\r\nDistance: 15-20 M\r\nLaser Range:', 'resized/WP_504_Laser_Poi_56a9d894f2d67_90x90.jpg', 'WP_504_Laser_Poi_56a9d895145ed.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1453939200, '', 'Y', 0, NULL, 1453971605, 1453971708, 'WP-504 Laser Pointer Presenter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(835, 1, 0, 'WS-UG35D6', 'USB 3.0 to Multi Display Adapter (DVI/HDMI/VGA)', '', 'resized/USB_3.0_to_Multi_57182d4061ffb_90x90.jpg', 'USB_3.0_to_Multi_57182d406deab.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461202240, 1461202240, 'USB 3.0 to Multi Display Adapter (DVI/HDMI/VGA)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(836, 1, 0, 'UST-MDMD-06', 'Data Cable UST-MDMD-06	Mini Display Port Cable M/M 6ft.', '', 'resized/Mini_Display_Por_57182dd81e56d_90x90.jpg', 'Mini_Display_Por_57182dd827938.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461202392, 1461202398, 'Mini Display Port Cable M/M 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(837, 1, 0, 'UST-MDPC-06', 'Data Cable UST-MDPC-06	Mini Display Port to Display Port M/M 6ft.', '', 'resized/Mini_Display_Por_57182e19d1a57_90x90.jpg', 'Mini_Display_Por_57182e19d8af2.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461202457, 1461202457, 'Mini Display Port to Display Port M/M 6ft.', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(838, 1, 0, 'UST-DPC-06', 'Data Cable UST-DPC-06	Display Port to Display Port Cable 6ft. (1.8M)', '', 'resized/Display_Port_to__57182e633a795_90x90.jpg', 'Display_Port_to__57182e633caae.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461202531, 1461202531, 'Display Port to Display Port Cable 6ft. (1.8M)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(839, 1, 0, 'GC-6025', 'GC-6025	DVI 24+1(M) To HDMI(F) Adapter', '', 'resized/DVI_24_1_M__To_H_57182f5d35d95_90x90.jpg', 'DVI_24_1_M__To_H_57182f5d6ee0a.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461202781, 1461202828, 'DVI 24+1(M) To HDMI(F) Adapter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(841, 1, 0, 'NL130', 'US Scientific	NL130 Notebook Key Lock (1.5M)', '', 'resized/NL130_Notebook_K_571832d521b9a_90x90.jpg', 'NL130_Notebook_K_571832d524115.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461203669, 1461203669, 'NL130 Notebook Key Lock (1.5M)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(842, 1, 0, 'SP-112', 'SP-112 Mini Digital Speaker', '', 'resized/SP_112_Mini_Digi_571835239c8f0_90x90.jpg', 'SP_112_Mini_Digi_57183523d0905.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461204259, 1461204259, 'SP-112 Mini Digital Speaker', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(843, 1, 0, 'SP-878', 'SP-878 USB CAMAC Speaker', '', 'resized/SP_878_USB_CAMAC_5718355473c24_90x90.jpg', 'SP_878_USB_CAMAC_5718355475a55.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461204308, 1461204308, 'SP-878 USB CAMAC Speaker', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(844, 1, 0, 'SP-858', 'SP-858 USB Multimedia Speaker', '', 'resized/SP_858_USB_Multi_571835753ef91_90x90.jpg', 'SP_858_USB_Multi_571835753fdd5.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461204341, 1461204341, 'SP-858 USB Multimedia Speaker', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(845, 1, 0, 'SPN-2012', 'SPN-2012 Laptop Mini Speaker', '', 'resized/SPN_2012_Laptop__571835c0b4ca3_90x90.jpg', 'SPN_2012_Laptop__571835c0b63b0.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461204416, 1461204416, 'SPN-2012 Laptop Mini Speaker', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(846, 1, 0, 'CMK-808N', 'CMK-808N 2.1CH Speaker w/ Sub-woofer', '', 'resized/CMK_808N_2.1CH_S_571835fc10861_90x90.jpg', 'CMK_808N_2.1CH_S_571835fc14119.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461204476, 1461204476, 'CMK-808N 2.1CH Speaker w/ Sub-woofer', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(847, 1, 0, 'SPB-MWS01', 'SPB-MWS01 Mini Wireless Speaker', '', 'resized/SPB_MWS01_Mini_W_5718365f06788_90x90.jpg', 'SPB_MWS01_Mini_W_5718365f08f4e.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461204575, 1461204575, 'SPB-MWS01 Mini Wireless Speaker', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(848, 1, 0, 'SPB-MS03', 'SPB-MS03 Capsule Music Speaker', '', 'resized/SPB_MS03_Capsule_571836ee1b7bc_90x90.jpg', 'SPB_MS03_Capsule_571836ee1e32d.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461204718, 1461204718, 'SPB-MS03 Capsule Music Speaker', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(849, 1, 0, 'SPB-GS04', 'SPB-GS04 Portable Speaker Super Bass', '', 'resized/SPB_GS04_Portabl_5718371285137_90x90.jpg', 'SPB_GS04_Portabl_5718371288b2a.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461204754, 1461204754, 'SPB-GS04 Portable Speaker Super Bass', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(850, 1, 0, 'SPB-DS05', 'SPB-DS05 Dream Speaker', '', 'resized/SPB_DS05_Dream_S_57197dd043d6a_90x90.jpg', 'SPB_DS05_Dream_S_57197dd045c2c.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461204848, 1461288400, 'SPB-DS05 Dream Speaker', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(851, 1, 0, 'SPB-KH06', 'SPB-KH06	Mini Portable Speaker With Lights', '', 'resized/Mini_Portable_Sp_571837e66bb85_90x90.png', 'Mini_Portable_Sp_571837e672984.png', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461204966, 1461204966, 'Mini Portable Speaker With Lights', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(852, 1, 0, 'SPB-N10', 'SPB-N10	Mini Rectangular Bluetooth Speaker', '', 'resized/SPB_N10_Mini_Rec_5718382deb12f_90x90.jpg', 'SPB_N10_Mini_Rec_5718382e05d59.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461205038, 1461205038, 'SPB-N10	Mini Rectangular Bluetooth Speaker', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(853, 1, 0, 'BK-7299', 'BK-7299	Micro / Nano Sim Cutter', '', 'resized/BK_7299_Micro____571839241c770_90x90.jpg', 'BK_7299_Micro____5718392426c98.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461205284, 1461205284, 'BK-7299	Micro / Nano Sim Cutter', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(854, 1, 0, 'WP-RC8', 'WP-RC8 Smart Remote Keyboard', '', 'resized/WP_RC8_Smart_Rem_57183bc754a55_90x90.jpg', 'WP_RC8_Smart_Rem_57183bc7648d6.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461205959, 1461205959, 'WP-RC8 Smart Remote Keyboard', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(855, 1, 0, 'ELS-100', 'ELS-100	Electronic Luggage Scale', '', 'resized/ELS_100_Electron_57183bfe24b7d_90x90.jpg', 'ELS_100_Electron_57183bfe3761b.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461206014, 1461206014, 'ELS-100	Electronic Luggage Scale', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(856, 1, 0, 'VR3DG', 'VR3DG	Virtual Reality 3D Glasses', '', 'resized/Virtual_Reality__57183c4c07677_90x90.jpg', 'Virtual_Reality__57183c4c2054f.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461206092, 1461206092, 'Virtual Reality 3D Glasses', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(857, 1, 0, 'USBEX200', 'BRAND: Data Cable\r\n\r\nUSBEX200USB Extender via UTP (up to 150ft)', '', 'resized/USB_Extender_via_57183e2b88603_90x90.jpg', 'USB_Extender_via_57183e2bb071f.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461206571, 1461206571, 'USB Extender via UTP (up to 150ft)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(858, 1, 0, 'UST-HU04SU3', 'Data Cable UST-HU04SU3	USB 3.0 Superspeed 4-Ports Hub w/ Power', '', 'resized/UST_HU04SU3_USB__57183ef997964_90x90.jpg', 'UST_HU04SU3_USB__57183ef9d0d95.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461206777, 1461206777, 'UST-HU04SU3	USB 3.0 Superspeed 4-Ports Hub w/ Power', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(859, 1, 0, 'UM100', 'UM100 USB Microphone', '', 'resized/UM100_USB_Microp_57183f4fc644a_90x90.jpg', 'UM100_USB_Microp_57183f4fccc3b.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461206863, 1461206863, 'UM100 USB Microphone', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(860, 1, 0, 'EP-AB003', 'Edup EP-AB003 Broadband Amplifier', '', 'resized/EP_AB003_Broadba_5718402259b01_90x90.jpg', 'EP_AB003_Broadba_57184022623fe.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461207074, 1461207074, 'EP-AB003 Broadband Amplifier', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0),
(861, 1, 0, 'EP-3703', 'Edup EP-3703 Wifi Smart Remote Socket', '', 'resized/EP_3703_Wifi_Sma_57184095e5fd1_90x90.jpg', 'EP_3703_Wifi_Sma_57184095e7b2c.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1461196800, '', 'N', 0, NULL, 1461207189, 1461207189, 'EP-3703 Wifi Smart Remote Socket', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_attribute`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `attribute_name` char(255) NOT NULL DEFAULT '',
  `attribute_value` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`attribute_id`),
  KEY `idx_product_attribute_product_id` (`product_id`),
  KEY `idx_product_attribute_name` (`attribute_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Stores attributes + their specific values for Child Products' AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_attribute_sku`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_attribute_sku` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `attribute_name` char(255) NOT NULL DEFAULT '',
  `attribute_list` int(11) NOT NULL DEFAULT '0',
  KEY `idx_product_attribute_sku_product_id` (`product_id`),
  KEY `idx_product_attribute_sku_attribute_name` (`attribute_name`),
  KEY `idx_product_attribute_list` (`attribute_list`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Attributes for a Parent Product used by its Child Products';

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_category_xref`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_category_xref` (
  `category_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `product_list` int(11) DEFAULT NULL,
  KEY `idx_product_category_xref_category_id` (`category_id`),
  KEY `idx_product_category_xref_product_id` (`product_id`),
  KEY `idx_product_category_xref_product_list` (`product_list`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';

--
-- Dumping data for table `jos_vm_product_category_xref`
--

INSERT INTO `jos_vm_product_category_xref` (`category_id`, `product_id`, `product_list`) VALUES
(94, 627, 1),
(88, 580, 1),
(103, 639, 1),
(95, 449, 1),
(56, 332, NULL),
(56, 331, NULL),
(56, 330, NULL),
(56, 329, NULL),
(56, 328, NULL),
(56, 327, NULL),
(56, 326, NULL),
(121, 566, 1),
(55, 324, NULL),
(55, 323, NULL),
(55, 322, NULL),
(54, 321, NULL),
(54, 320, NULL),
(54, 319, NULL),
(54, 318, NULL),
(52, 317, NULL),
(52, 316, NULL),
(52, 315, NULL),
(52, 314, NULL),
(72, 236, 1),
(72, 230, 1),
(115, 666, 1),
(73, 736, 1),
(62, 403, NULL),
(62, 402, NULL),
(62, 401, NULL),
(62, 400, NULL),
(62, 399, NULL),
(68, 398, NULL),
(102, 502, 1),
(69, 785, 1),
(62, 511, NULL),
(107, 466, 1),
(94, 415, 1),
(77, 392, 1),
(88, 747, 1),
(98, 383, 1),
(100, 389, 1),
(100, 388, 1),
(88, 749, 1),
(88, 748, 1),
(98, 385, 1),
(88, 751, 1),
(113, 650, 1),
(69, 789, 1),
(92, 393, 1),
(92, 823, 1),
(91, 300, 1),
(68, 425, NULL),
(52, 424, NULL),
(121, 474, 1),
(115, 665, 1),
(115, 664, 1),
(114, 675, 1),
(80, 363, 1),
(69, 792, 1),
(69, 791, 1),
(124, 758, 1),
(107, 396, 1),
(80, 358, 1),
(103, 775, 1),
(80, 364, 1),
(106, 222, 1),
(90, 599, 1),
(80, 477, 1),
(69, 788, 1),
(106, 486, 1),
(105, 563, 1),
(116, 676, 1),
(125, 796, 1),
(105, 633, 1),
(125, 800, 1),
(105, 634, 1),
(68, 345, NULL),
(113, 794, 1),
(102, 784, 1),
(124, 635, 1),
(75, 253, 1),
(95, 462, 1),
(50, 302, NULL),
(75, 252, 1),
(70, 769, 1),
(71, 670, 1),
(95, 428, 1),
(75, 250, 1),
(36, 277, NULL),
(36, 276, NULL),
(36, 275, NULL),
(83, 816, 1),
(83, 821, 1),
(38, 575, 1),
(72, 227, 1),
(81, 292, 1),
(82, 296, 1),
(82, 295, 1),
(82, 294, 1),
(50, 301, NULL),
(84, 258, 1),
(101, 776, 1),
(97, 256, 1),
(97, 255, 1),
(75, 248, 1),
(125, 798, 1),
(80, 357, 1),
(121, 470, 1),
(71, 568, 1),
(34, 242, NULL),
(34, 241, NULL),
(78, 246, 1),
(78, 245, 1),
(34, 243, NULL),
(71, 569, 1),
(39, 284, NULL),
(72, 219, 1),
(73, 473, 1),
(80, 554, 1),
(50, 304, NULL),
(38, 576, 1),
(91, 573, 1),
(83, 815, 1),
(82, 764, 1),
(44, 298, NULL),
(44, 297, NULL),
(82, 293, 1),
(39, 286, NULL),
(39, 285, NULL),
(38, 282, NULL),
(39, 283, NULL),
(99, 494, 1),
(83, 814, 1),
(83, 817, 1),
(83, 820, 1),
(126, 813, 1),
(83, 819, 1),
(72, 228, 1),
(115, 667, 1),
(68, 710, 1),
(117, 646, 1),
(76, 268, 1),
(76, 267, 1),
(76, 262, 1),
(85, 270, 1),
(76, 266, 1),
(77, 391, 1),
(81, 291, 1),
(81, 289, 1),
(83, 818, 1),
(75, 249, 1),
(95, 225, 1),
(72, 423, 1),
(38, 278, NULL),
(81, 287, 1),
(76, 264, 1),
(76, 260, 1),
(76, 417, 1),
(124, 408, 1),
(83, 822, 1),
(85, 273, 1),
(85, 272, 1),
(85, 271, 1),
(76, 265, 1),
(80, 755, 1),
(72, 233, 1),
(81, 290, 1),
(81, 288, 1),
(71, 669, 1),
(76, 263, 1),
(76, 416, 1),
(96, 340, 1),
(82, 765, 1),
(70, 411, NULL),
(97, 652, 1),
(113, 651, 1),
(85, 421, 1),
(76, 418, 1),
(76, 419, 1),
(83, 312, 1),
(103, 771, 1),
(95, 343, 1),
(116, 677, 1),
(97, 254, 1),
(121, 471, 1),
(38, 438, NULL),
(103, 440, 1),
(103, 441, 1),
(103, 479, 1),
(95, 333, 1),
(70, 444, NULL),
(101, 625, 1),
(107, 631, 1),
(94, 626, 1),
(68, 450, NULL),
(70, 451, NULL),
(124, 756, 1),
(36, 457, NULL),
(36, 458, NULL),
(36, 459, NULL),
(124, 757, 1),
(94, 553, 1),
(60, 463, NULL),
(60, 464, NULL),
(94, 489, 1),
(44, 763, 1),
(60, 467, NULL),
(60, 468, NULL),
(60, 469, NULL),
(78, 244, 1),
(98, 420, 1),
(78, 247, 1),
(72, 231, 1),
(103, 478, 1),
(103, 773, 1),
(101, 623, 1),
(70, 770, 1),
(103, 774, 1),
(118, 674, 1),
(118, 673, 1),
(106, 550, 1),
(125, 797, 1),
(104, 537, 1),
(94, 557, 1),
(115, 668, 1),
(120, 509, 1),
(99, 730, 1),
(100, 390, 1),
(118, 240, 1),
(94, 628, 1),
(102, 503, 1),
(101, 781, 1),
(101, 624, 1),
(101, 780, 1),
(120, 510, 1),
(70, 767, 1),
(126, 811, 1),
(126, 812, 1),
(123, 810, 1),
(110, 827, 1),
(38, 826, 1),
(38, 825, 1),
(92, 824, 1),
(125, 805, 1),
(123, 807, 1),
(69, 534, NULL),
(123, 808, 1),
(125, 804, 1),
(102, 783, 1),
(102, 782, 1),
(123, 806, 1),
(69, 540, NULL),
(123, 809, 1),
(69, 542, NULL),
(69, 543, NULL),
(72, 663, 1),
(101, 777, 1),
(125, 795, 1),
(101, 636, 1),
(94, 465, 1),
(94, 551, 1),
(69, 793, 1),
(106, 564, 1),
(69, 787, 1),
(101, 559, 1),
(103, 439, 1),
(101, 501, 1),
(103, 772, 1),
(125, 799, 1),
(68, 711, 1),
(84, 257, 1),
(72, 234, 1),
(72, 232, 1),
(91, 574, 1),
(72, 235, 1),
(88, 581, 1),
(88, 582, 1),
(88, 583, 1),
(88, 584, 1),
(88, 585, 1),
(88, 586, 1),
(92, 587, 1),
(39, 588, 1),
(93, 589, 1),
(93, 590, 1),
(93, 591, 1),
(93, 592, 1),
(93, 593, 1),
(93, 594, 1),
(93, 595, 1),
(90, 596, 1),
(90, 597, 1),
(90, 598, 1),
(90, 642, 1),
(0, 600, 1),
(125, 802, 1),
(125, 801, 1),
(125, 803, 1),
(109, 604, 1),
(101, 779, 1),
(70, 768, 1),
(101, 778, 1),
(113, 649, 1),
(106, 610, 1),
(106, 609, 1),
(69, 790, 1),
(105, 612, 1),
(94, 613, 1),
(118, 645, 1),
(103, 616, 1),
(94, 617, 1),
(88, 750, 1),
(110, 629, 1),
(104, 630, 1),
(117, 648, 1),
(114, 658, 1),
(76, 654, 1),
(76, 655, 1),
(76, 656, 1),
(76, 657, 1),
(114, 653, 1),
(114, 659, 1),
(34, 660, 1),
(34, 661, 1),
(75, 662, 1),
(88, 752, 1),
(116, 678, 1),
(116, 680, 1),
(116, 681, 1),
(116, 682, 1),
(116, 683, 1),
(117, 684, 1),
(117, 685, 1),
(117, 686, 1),
(117, 687, 1),
(120, 716, 1),
(120, 693, 1),
(120, 717, 1),
(69, 786, 1),
(120, 697, 1),
(92, 754, 1),
(121, 699, 1),
(121, 700, 1),
(121, 701, 1),
(121, 702, 1),
(121, 703, 1),
(80, 704, 1),
(60, 705, 1),
(60, 706, 1),
(121, 707, 1),
(38, 708, 1),
(121, 709, 1),
(68, 712, 1),
(68, 713, 1),
(68, 714, 1),
(120, 720, 1),
(120, 721, 1),
(89, 722, 1),
(89, 723, 1),
(89, 724, 1),
(89, 725, 1),
(89, 726, 1),
(89, 727, 1),
(89, 728, 1),
(89, 729, 1),
(99, 731, 1),
(116, 732, 1),
(116, 733, 1),
(99, 735, 1),
(99, 734, 1),
(91, 753, 1),
(34, 737, 1),
(34, 739, 1),
(34, 738, 1),
(34, 740, 1),
(121, 741, 1),
(121, 742, 1),
(121, 743, 1),
(121, 744, 1),
(121, 745, 1),
(121, 746, 1),
(124, 759, 1),
(124, 760, 1),
(124, 761, 1),
(124, 221, 1),
(123, 766, 1),
(127, 828, 1),
(127, 829, 1),
(127, 830, 1),
(127, 831, 1),
(127, 832, 1),
(128, 833, 1),
(120, 834, 1),
(80, 835, 1),
(122, 836, 1),
(122, 837, 1),
(122, 838, 1),
(88, 839, 1),
(95, 841, 1),
(129, 842, 1),
(129, 843, 1),
(129, 844, 1),
(129, 845, 1),
(129, 846, 1),
(129, 847, 1),
(129, 848, 1),
(129, 849, 1),
(129, 850, 1),
(129, 851, 1),
(129, 852, 1),
(110, 853, 1),
(120, 854, 1),
(120, 855, 1),
(120, 856, 1),
(97, 857, 1),
(105, 858, 1),
(107, 859, 1),
(120, 860, 1),
(60, 861, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_discount`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_discount` (
  `discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `is_percent` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`discount_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Discounts that can be assigned to products' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_vm_product_discount`
--

INSERT INTO `jos_vm_product_discount` (`discount_id`, `amount`, `is_percent`, `start_date`, `end_date`) VALUES
(1, '20.00', 1, 1097704800, 1194390000),
(2, '2.00', 0, 1098655200, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_download`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_download` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  `download_max` int(11) NOT NULL DEFAULT '0',
  `download_id` varchar(32) NOT NULL DEFAULT '',
  `file_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Active downloads for selling downloadable goods';

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_files`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_files` (
  `file_id` int(19) NOT NULL AUTO_INCREMENT,
  `file_product_id` int(11) NOT NULL DEFAULT '0',
  `file_name` varchar(128) NOT NULL DEFAULT '',
  `file_title` varchar(128) NOT NULL DEFAULT '',
  `file_description` mediumtext NOT NULL,
  `file_extension` varchar(128) NOT NULL DEFAULT '',
  `file_mimetype` varchar(64) NOT NULL DEFAULT '',
  `file_url` varchar(254) NOT NULL DEFAULT '',
  `file_published` tinyint(1) NOT NULL DEFAULT '0',
  `file_is_image` tinyint(1) NOT NULL DEFAULT '0',
  `file_image_height` int(11) NOT NULL DEFAULT '0',
  `file_image_width` int(11) NOT NULL DEFAULT '0',
  `file_image_thumb_height` int(11) NOT NULL DEFAULT '50',
  `file_image_thumb_width` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Additional Images and Files which are assigned to products' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_mf_xref`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_mf_xref` (
  `product_id` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  KEY `idx_product_mf_xref_product_id` (`product_id`),
  KEY `idx_product_mf_xref_manufacturer_id` (`manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps a product to a manufacturer';

--
-- Dumping data for table `jos_vm_product_mf_xref`
--

INSERT INTO `jos_vm_product_mf_xref` (`product_id`, `manufacturer_id`) VALUES
(510, 1),
(417, 1),
(275, 1),
(465, 1),
(569, 1),
(566, 1),
(219, 1),
(236, 1),
(568, 1),
(231, 1),
(420, 1),
(730, 1),
(221, 1),
(467, 1),
(469, 1),
(468, 1),
(415, 1),
(459, 1),
(458, 1),
(457, 1),
(749, 1),
(383, 1),
(542, 1),
(803, 1),
(477, 1),
(473, 1),
(631, 1),
(537, 1),
(494, 1),
(509, 1),
(423, 1),
(234, 1),
(756, 1),
(235, 1),
(228, 1),
(230, 1),
(232, 1),
(233, 1),
(227, 1),
(665, 1),
(664, 1),
(474, 1),
(247, 1),
(248, 1),
(249, 1),
(250, 1),
(253, 1),
(252, 1),
(471, 1),
(470, 1),
(241, 1),
(244, 1),
(245, 1),
(246, 1),
(287, 1),
(293, 1),
(288, 1),
(294, 1),
(289, 1),
(295, 1),
(290, 1),
(296, 1),
(291, 1),
(292, 1),
(391, 1),
(392, 1),
(302, 1),
(340, 1),
(225, 1),
(827, 1),
(333, 1),
(449, 1),
(626, 1),
(428, 1),
(343, 1),
(794, 1),
(462, 1),
(553, 1),
(551, 1),
(489, 1),
(557, 1),
(787, 1),
(408, 1),
(257, 1),
(258, 1),
(822, 1),
(755, 1),
(260, 1),
(262, 1),
(264, 1),
(263, 1),
(416, 1),
(265, 1),
(266, 1),
(267, 1),
(268, 1),
(270, 1),
(271, 1),
(272, 1),
(273, 1),
(419, 1),
(418, 1),
(421, 1),
(312, 1),
(821, 1),
(820, 1),
(819, 1),
(818, 1),
(817, 1),
(816, 1),
(815, 1),
(814, 1),
(390, 1),
(747, 1),
(388, 1),
(389, 1),
(385, 1),
(748, 1),
(501, 1),
(628, 1),
(502, 1),
(503, 1),
(824, 1),
(823, 1),
(625, 1),
(813, 1),
(812, 1),
(811, 1),
(810, 1),
(439, 1),
(440, 1),
(441, 1),
(479, 1),
(478, 1),
(809, 1),
(486, 1),
(639, 1),
(550, 1),
(793, 1),
(636, 1),
(784, 1),
(785, 1),
(783, 1),
(782, 1),
(624, 1),
(781, 1),
(780, 1),
(623, 1),
(773, 1),
(774, 1),
(770, 1),
(769, 1),
(559, 1),
(357, 1),
(300, 1),
(573, 1),
(574, 1),
(826, 1),
(805, 1),
(564, 1),
(799, 1),
(798, 1),
(364, 1),
(757, 1),
(222, 1),
(808, 1),
(771, 1),
(797, 1),
(635, 1),
(634, 1),
(796, 1),
(633, 1),
(795, 1),
(563, 1),
(772, 1),
(775, 1),
(358, 1),
(554, 1),
(792, 1),
(791, 1),
(790, 1),
(363, 1),
(396, 1),
(301, 1),
(304, 1),
(642, 1),
(767, 1),
(825, 1),
(649, 1),
(393, 1),
(466, 1),
(754, 1),
(753, 1),
(438, 1),
(282, 1),
(278, 1),
(575, 1),
(576, 1),
(254, 1),
(255, 1),
(256, 1),
(776, 1),
(777, 1),
(627, 1),
(580, 1),
(581, 1),
(582, 1),
(583, 1),
(584, 1),
(585, 1),
(586, 1),
(587, 1),
(588, 1),
(589, 1),
(590, 1),
(591, 1),
(592, 1),
(593, 1),
(594, 1),
(595, 1),
(596, 1),
(597, 1),
(598, 1),
(599, 1),
(600, 1),
(801, 1),
(800, 1),
(802, 1),
(604, 1),
(779, 1),
(768, 1),
(778, 1),
(788, 1),
(609, 1),
(610, 1),
(789, 1),
(612, 1),
(613, 1),
(751, 1),
(616, 1),
(451, 1),
(617, 1),
(750, 1),
(629, 1),
(630, 1),
(645, 1),
(646, 1),
(648, 1),
(650, 1),
(651, 1),
(652, 1),
(653, 1),
(654, 1),
(655, 1),
(656, 1),
(657, 1),
(658, 1),
(659, 1),
(242, 1),
(243, 1),
(660, 1),
(661, 1),
(662, 1),
(276, 1),
(277, 1),
(663, 1),
(666, 1),
(667, 1),
(668, 1),
(240, 1),
(669, 1),
(670, 1),
(673, 1),
(674, 1),
(675, 1),
(676, 1),
(677, 1),
(678, 1),
(752, 1),
(680, 1),
(681, 1),
(682, 1),
(683, 1),
(684, 1),
(685, 1),
(686, 1),
(687, 1),
(806, 1),
(716, 1),
(804, 1),
(807, 1),
(693, 1),
(717, 1),
(786, 1),
(697, 1),
(297, 1),
(699, 1),
(700, 1),
(701, 1),
(702, 1),
(703, 1),
(704, 1),
(705, 1),
(706, 1),
(424, 1),
(707, 1),
(708, 1),
(709, 1),
(450, 1),
(345, 1),
(710, 1),
(711, 1),
(712, 1),
(713, 1),
(714, 1),
(425, 1),
(720, 1),
(721, 1),
(722, 1),
(723, 1),
(724, 1),
(725, 1),
(726, 1),
(727, 1),
(728, 1),
(729, 1),
(731, 1),
(732, 1),
(733, 1),
(734, 1),
(735, 1),
(736, 1),
(737, 1),
(738, 1),
(739, 1),
(740, 1),
(741, 1),
(742, 1),
(743, 1),
(744, 1),
(745, 1),
(746, 1),
(758, 1),
(759, 1),
(760, 1),
(761, 1),
(763, 1),
(298, 1),
(764, 1),
(765, 1),
(766, 1),
(828, 1),
(829, 1),
(830, 1),
(831, 1),
(832, 1),
(833, 1),
(834, 1),
(835, 1),
(836, 1),
(837, 1),
(838, 1),
(839, 1),
(841, 1),
(842, 1),
(843, 1),
(844, 1),
(845, 1),
(846, 1),
(847, 1),
(848, 1),
(849, 1),
(850, 1),
(851, 1),
(852, 1),
(853, 1),
(854, 1),
(855, 1),
(856, 1),
(857, 1),
(858, 1),
(859, 1),
(860, 1),
(861, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_price`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_price` (
  `product_price_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `product_price` decimal(12,5) DEFAULT NULL,
  `product_currency` char(16) DEFAULT NULL,
  `product_price_vdate` int(11) DEFAULT NULL,
  `product_price_edate` int(11) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `shopper_group_id` int(11) DEFAULT NULL,
  `price_quantity_start` int(11) unsigned NOT NULL DEFAULT '0',
  `price_quantity_end` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_price_id`),
  KEY `idx_product_price_product_id` (`product_id`),
  KEY `idx_product_price_shopper_group_id` (`shopper_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds price records for a product' AUTO_INCREMENT=18 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_product_type_xref`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_product_type_xref` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `product_type_id` int(11) NOT NULL DEFAULT '0',
  KEY `idx_product_product_type_xref_product_id` (`product_id`),
  KEY `idx_product_product_type_xref_product_type_id` (`product_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps products to a product type';

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_relations`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_relations` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `related_products` text,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_vm_product_relations`
--

INSERT INTO `jos_vm_product_relations` (`product_id`, `related_products`) VALUES
(510, '509'),
(473, '357|356|427'),
(730, '494|383|385'),
(494, '495|384|386'),
(509, '510'),
(566, '565|567'),
(423, '234|233'),
(234, '233'),
(823, '587|596|597'),
(800, '799|797|792'),
(645, '643|644|615'),
(581, '580|582|583'),
(580, '581|582|583'),
(582, '583|581|580'),
(583, '581|580|582'),
(584, '581|580|583'),
(585, '584|582|580'),
(586, '584|585|583'),
(568, '569|227|228'),
(569, '568|227|228'),
(591, '594|590|589'),
(594, '591|595|590'),
(595, '594|590|589'),
(593, '590|594|589'),
(592, '593|589|595'),
(617, '465|489'),
(312, '817|821|814'),
(646, '615|645|643'),
(824, '587|823|596'),
(648, '615|646|647'),
(701, '699|698|700'),
(702, '699|698|701'),
(703, '701|702|698'),
(704, '701|703|698'),
(705, '425|618|463'),
(706, '464|618|705'),
(699, '698|702|701'),
(707, '565|566|567'),
(708, '278|438|282'),
(709, '699|707|698'),
(450, '345|398|425'),
(345, '450|398|425'),
(710, '425|398|450'),
(711, '345|710|398'),
(712, '345|450|711'),
(713, '712|450|711'),
(714, '713|450|710'),
(474, '471|470|652'),
(471, '470|474|652'),
(470, '474|471|566'),
(254, '652|255|256'),
(554, '358|364'),
(716, '715|408|693'),
(717, '715|716'),
(826, '825|576|438'),
(825, '576|278|438'),
(720, '719|718|716'),
(721, '717|715|720'),
(722, '581|580|584'),
(723, '581|585|722'),
(724, '723|722|580'),
(725, '723|722|724'),
(726, '723|722|725'),
(727, '724|726|722'),
(728, '727|724|726'),
(729, '726|728|727'),
(731, '730|494|383'),
(732, '676|677|682'),
(733, '679|682|681'),
(734, '494|730|731'),
(735, '734|730|731'),
(736, '241|417|655|248|249|250'),
(737, '417|248|655'),
(738, '655|737|662'),
(739, '249|248|655'),
(756, '408'),
(757, '408'),
(758, '408'),
(754, '597|596|587|393'),
(297, '763|298|292|291|294|296'),
(816, '312|815|819|820');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_reviews`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_reviews` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `user_rating` tinyint(1) NOT NULL DEFAULT '0',
  `review_ok` int(11) NOT NULL DEFAULT '0',
  `review_votes` int(11) NOT NULL DEFAULT '0',
  `published` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`review_id`),
  UNIQUE KEY `product_id` (`product_id`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_type`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_type` (
  `product_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_type_name` varchar(255) NOT NULL DEFAULT '',
  `product_type_description` text,
  `product_type_publish` char(1) DEFAULT NULL,
  `product_type_browsepage` varchar(255) DEFAULT NULL,
  `product_type_flypage` varchar(255) DEFAULT NULL,
  `product_type_list_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_type_parameter`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_type_parameter` (
  `product_type_id` int(11) NOT NULL DEFAULT '0',
  `parameter_name` varchar(255) NOT NULL DEFAULT '',
  `parameter_label` varchar(255) NOT NULL DEFAULT '',
  `parameter_description` text,
  `parameter_list_order` int(11) NOT NULL DEFAULT '0',
  `parameter_type` char(1) NOT NULL DEFAULT 'T',
  `parameter_values` varchar(255) DEFAULT NULL,
  `parameter_multiselect` char(1) DEFAULT NULL,
  `parameter_default` varchar(255) DEFAULT NULL,
  `parameter_unit` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`product_type_id`,`parameter_name`),
  KEY `idx_product_type_parameter_product_type_id` (`product_type_id`),
  KEY `idx_product_type_parameter_parameter_order` (`parameter_list_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Parameters which are part of a product type';

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_votes`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_votes` (
  `product_id` int(255) NOT NULL DEFAULT '0',
  `votes` text NOT NULL,
  `allvotes` int(11) NOT NULL DEFAULT '0',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all votes for a product';

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_shipping_carrier`
--

CREATE TABLE IF NOT EXISTS `jos_vm_shipping_carrier` (
  `shipping_carrier_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_carrier_name` char(80) NOT NULL DEFAULT '',
  `shipping_carrier_list_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_carrier_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Shipping Carriers as used by the Standard Shipping Module' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_vm_shipping_carrier`
--

INSERT INTO `jos_vm_shipping_carrier` (`shipping_carrier_id`, `shipping_carrier_name`, `shipping_carrier_list_order`) VALUES
(1, 'DHL', 0),
(2, 'UPS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_shipping_label`
--

CREATE TABLE IF NOT EXISTS `jos_vm_shipping_label` (
  `order_id` int(11) NOT NULL DEFAULT '0',
  `shipper_class` varchar(32) DEFAULT NULL,
  `ship_date` varchar(32) DEFAULT NULL,
  `service_code` varchar(32) DEFAULT NULL,
  `special_service` varchar(32) DEFAULT NULL,
  `package_type` varchar(16) DEFAULT NULL,
  `order_weight` decimal(10,2) DEFAULT NULL,
  `is_international` tinyint(1) DEFAULT NULL,
  `additional_protection_type` varchar(16) DEFAULT NULL,
  `additional_protection_value` decimal(10,2) DEFAULT NULL,
  `duty_value` decimal(10,2) DEFAULT NULL,
  `content_desc` varchar(255) DEFAULT NULL,
  `label_is_generated` tinyint(1) NOT NULL DEFAULT '0',
  `tracking_number` varchar(32) DEFAULT NULL,
  `label_image` blob,
  `have_signature` tinyint(1) NOT NULL DEFAULT '0',
  `signature_image` blob,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores information used in generating shipping labels';

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_shipping_rate`
--

CREATE TABLE IF NOT EXISTS `jos_vm_shipping_rate` (
  `shipping_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_rate_name` varchar(255) NOT NULL DEFAULT '',
  `shipping_rate_carrier_id` int(11) NOT NULL DEFAULT '0',
  `shipping_rate_country` text NOT NULL,
  `shipping_rate_zip_start` varchar(32) NOT NULL DEFAULT '',
  `shipping_rate_zip_end` varchar(32) NOT NULL DEFAULT '',
  `shipping_rate_weight_start` decimal(10,3) NOT NULL DEFAULT '0.000',
  `shipping_rate_weight_end` decimal(10,3) NOT NULL DEFAULT '0.000',
  `shipping_rate_value` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_rate_package_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_rate_currency_id` int(11) NOT NULL DEFAULT '0',
  `shipping_rate_vat_id` int(11) NOT NULL DEFAULT '0',
  `shipping_rate_list_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_rate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Shipping Rates, used by the Standard Shipping Module' AUTO_INCREMENT=22 ;

--
-- Dumping data for table `jos_vm_shipping_rate`
--

INSERT INTO `jos_vm_shipping_rate` (`shipping_rate_id`, `shipping_rate_name`, `shipping_rate_carrier_id`, `shipping_rate_country`, `shipping_rate_zip_start`, `shipping_rate_zip_end`, `shipping_rate_weight_start`, `shipping_rate_weight_end`, `shipping_rate_value`, `shipping_rate_package_fee`, `shipping_rate_currency_id`, `shipping_rate_vat_id`, `shipping_rate_list_order`) VALUES
(1, 'Inland > 4kg', 1, 'DEU', '00000', '99999', '0.000', '4.000', '5.62', '2.00', 47, 0, 1),
(2, 'Inland > 8kg', 1, 'DEU', '00000', '99999', '4.000', '8.000', '6.39', '2.00', 47, 0, 2),
(3, 'Inland > 12kg', 1, 'DEU', '00000', '99999', '8.000', '12.000', '7.16', '2.00', 47, 0, 3),
(4, 'Inland > 20kg', 1, 'DEU', '00000', '99999', '12.000', '20.000', '8.69', '2.00', 47, 0, 4),
(5, 'EU+ >  4kg', 1, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', '0.000', '4.000', '14.57', '2.00', 47, 0, 5),
(6, 'EU+ >  8kg', 1, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', '4.000', '8.000', '18.66', '2.00', 47, 0, 6),
(7, 'EU+ > 12kg', 1, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', '8.000', '12.000', '22.57', '2.00', 47, 0, 7),
(8, 'EU+ > 20kg', 1, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', '12.000', '20.000', '30.93', '2.00', 47, 0, 8),
(9, 'Europe > 4kg', 1, 'ALB;ARM;AZE;BLR;BIH;BGR;EST;GEO;GIB;ISL;YUG;KAZ;HRV;LVA;LTU;MLT;MKD;MDA;NOR;ROM;RUS;SVN;TUR;UKR;HUN;BLR;CYP', '00000', '99999', '0.000', '4.000', '23.78', '2.00', 47, 0, 9),
(10, 'Europe >  8kg', 1, 'ALB;ARM;AZE;BLR;BIH;BGR;EST;GEO;GIB;ISL;YUG;KAZ;HRV;LVA;LTU;MLT;MKD;MDA;NOR;ROM;RUS;SVN;TUR;UKR;HUN;BLR;CYP', '00000', '99999', '4.000', '8.000', '29.91', '2.00', 47, 0, 10),
(11, 'Europe > 12kg', 1, 'ALB;ARM;AZE;BLR;BIH;BGR;EST;GEO;GIB;ISL;YUG;KAZ;HRV;LVA;LTU;MLT;MKD;MDA;NOR;ROM;RUS;SVN;TUR;UKR;HUN;BLR;CYP', '00000', '99999', '8.000', '12.000', '36.05', '2.00', 47, 0, 11),
(12, 'Europe > 20kg', 1, 'ALB;ARM;AZE;BLR;BIH;BGR;EST;GEO;GIB;ISL;YUG;KAZ;HRV;LVA;LTU;MLT;MKD;MDA;NOR;ROM;RUS;SVN;TUR;UKR;HUN;BLR;CYP', '00000', '99999', '12.000', '20.000', '48.32', '2.00', 47, 0, 12),
(13, 'World_1 >  4kg', 1, 'EGY;DZA;BHR;IRQ;IRN;ISR;YEM;JOR;CAN;QAT;KWT;LBN;LBY;MAR;OMN;SAU;SYR;TUN;ARE;USA', '00000', '99999', '0.000', '4.000', '26.84', '2.00', 47, 0, 13),
(14, 'World_1 > 8kg', 1, 'EGY;DZA;BHR;IRQ;IRN;ISR;YEM;JOR;CAN;QAT;KWT;LBN;LBY;MAR;OMN;SAU;SYR;TUN;ARE;USA', '00000', '99999', '4.000', '8.000', '35.02', '2.00', 47, 0, 14),
(15, 'World_1 > 12kg', 1, 'EGY;DZA;BHR;IRQ;IRN;ISR;YEM;JOR;CAN;QAT;KWT;LBN;LBY;MAR;OMN;SAU;SYR;TUN;ARE;USA', '00000', '99999', '8.000', '12.000', '43.20', '2.00', 47, 0, 15),
(16, 'World_1 > 20kg', 1, 'EGY;DZA;BHR;IRQ;IRN;ISR;YEM;JOR;CAN;QAT;KWT;LBN;LBY;MAR;OMN;SAU;SYR;TUN;ARE;USA', '00000', '99999', '12.000', '20.000', '59.57', '2.00', 47, 0, 16),
(17, 'World_2 > 4kg', 1, '', '00000', '99999', '0.000', '4.000', '32.98', '2.00', 47, 0, 17),
(18, 'World_2 > 8kg', 1, '', '00000', '99999', '4.000', '8.000', '47.29', '2.00', 47, 0, 18),
(19, 'World_2 > 12kg', 1, '', '00000', '99999', '8.000', '12.000', '61.61', '2.00', 47, 0, 19),
(20, 'World_2 > 20kg', 1, '', '00000', '99999', '12.000', '20.000', '90.24', '2.00', 47, 0, 20),
(21, 'UPS Express', 2, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', '0.000', '20.000', '5.24', '2.00', 47, 0, 21);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_shopper_group`
--

CREATE TABLE IF NOT EXISTS `jos_vm_shopper_group` (
  `shopper_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) DEFAULT NULL,
  `shopper_group_name` varchar(32) DEFAULT NULL,
  `shopper_group_desc` text,
  `shopper_group_discount` decimal(5,2) NOT NULL DEFAULT '0.00',
  `show_price_including_tax` tinyint(1) NOT NULL DEFAULT '1',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`shopper_group_id`),
  KEY `idx_shopper_group_vendor_id` (`vendor_id`),
  KEY `idx_shopper_group_name` (`shopper_group_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Shopper Groups that users can be assigned to' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `jos_vm_shopper_group`
--

INSERT INTO `jos_vm_shopper_group` (`shopper_group_id`, `vendor_id`, `shopper_group_name`, `shopper_group_desc`, `shopper_group_discount`, `show_price_including_tax`, `default`) VALUES
(5, 1, '-default-', 'This is the default shopper group.', '0.00', 1, 1),
(6, 1, 'Gold Level', 'Gold Level Shoppers.', '0.00', 1, 0),
(7, 1, 'Wholesale', 'Shoppers that can buy at wholesale.', '0.00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_shopper_vendor_xref`
--

CREATE TABLE IF NOT EXISTS `jos_vm_shopper_vendor_xref` (
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `shopper_group_id` int(11) DEFAULT NULL,
  `customer_number` varchar(32) DEFAULT NULL,
  KEY `idx_shopper_vendor_xref_user_id` (`user_id`),
  KEY `idx_shopper_vendor_xref_vendor_id` (`vendor_id`),
  KEY `idx_shopper_vendor_xref_shopper_group_id` (`shopper_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps a user to a Shopper Group of a Vendor';

--
-- Dumping data for table `jos_vm_shopper_vendor_xref`
--

INSERT INTO `jos_vm_shopper_vendor_xref` (`user_id`, `vendor_id`, `shopper_group_id`, `customer_number`) VALUES
(62, 1, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_state`
--

CREATE TABLE IF NOT EXISTS `jos_vm_state` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL DEFAULT '1',
  `state_name` varchar(64) DEFAULT NULL,
  `state_3_code` char(3) DEFAULT NULL,
  `state_2_code` char(2) DEFAULT NULL,
  PRIMARY KEY (`state_id`),
  UNIQUE KEY `state_3_code` (`country_id`,`state_3_code`),
  UNIQUE KEY `state_2_code` (`country_id`,`state_2_code`),
  KEY `idx_country_id` (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='States that are assigned to a country' AUTO_INCREMENT=449 ;

--
-- Dumping data for table `jos_vm_state`
--

INSERT INTO `jos_vm_state` (`state_id`, `country_id`, `state_name`, `state_3_code`, `state_2_code`) VALUES
(1, 223, 'Alabama', 'ALA', 'AL'),
(2, 223, 'Alaska', 'ALK', 'AK'),
(3, 223, 'Arizona', 'ARZ', 'AZ'),
(4, 223, 'Arkansas', 'ARK', 'AR'),
(5, 223, 'California', 'CAL', 'CA'),
(6, 223, 'Colorado', 'COL', 'CO'),
(7, 223, 'Connecticut', 'CCT', 'CT'),
(8, 223, 'Delaware', 'DEL', 'DE'),
(9, 223, 'District Of Columbia', 'DOC', 'DC'),
(10, 223, 'Florida', 'FLO', 'FL'),
(11, 223, 'Georgia', 'GEA', 'GA'),
(12, 223, 'Hawaii', 'HWI', 'HI'),
(13, 223, 'Idaho', 'IDA', 'ID'),
(14, 223, 'Illinois', 'ILL', 'IL'),
(15, 223, 'Indiana', 'IND', 'IN'),
(16, 223, 'Iowa', 'IOA', 'IA'),
(17, 223, 'Kansas', 'KAS', 'KS'),
(18, 223, 'Kentucky', 'KTY', 'KY'),
(19, 223, 'Louisiana', 'LOA', 'LA'),
(20, 223, 'Maine', 'MAI', 'ME'),
(21, 223, 'Maryland', 'MLD', 'MD'),
(22, 223, 'Massachusetts', 'MSA', 'MA'),
(23, 223, 'Michigan', 'MIC', 'MI'),
(24, 223, 'Minnesota', 'MIN', 'MN'),
(25, 223, 'Mississippi', 'MIS', 'MS'),
(26, 223, 'Missouri', 'MIO', 'MO'),
(27, 223, 'Montana', 'MOT', 'MT'),
(28, 223, 'Nebraska', 'NEB', 'NE'),
(29, 223, 'Nevada', 'NEV', 'NV'),
(30, 223, 'New Hampshire', 'NEH', 'NH'),
(31, 223, 'New Jersey', 'NEJ', 'NJ'),
(32, 223, 'New Mexico', 'NEM', 'NM'),
(33, 223, 'New York', 'NEY', 'NY'),
(34, 223, 'North Carolina', 'NOC', 'NC'),
(35, 223, 'North Dakota', 'NOD', 'ND'),
(36, 223, 'Ohio', 'OHI', 'OH'),
(37, 223, 'Oklahoma', 'OKL', 'OK'),
(38, 223, 'Oregon', 'ORN', 'OR'),
(39, 223, 'Pennsylvania', 'PEA', 'PA'),
(40, 223, 'Rhode Island', 'RHI', 'RI'),
(41, 223, 'South Carolina', 'SOC', 'SC'),
(42, 223, 'South Dakota', 'SOD', 'SD'),
(43, 223, 'Tennessee', 'TEN', 'TN'),
(44, 223, 'Texas', 'TXS', 'TX'),
(45, 223, 'Utah', 'UTA', 'UT'),
(46, 223, 'Vermont', 'VMT', 'VT'),
(47, 223, 'Virginia', 'VIA', 'VA'),
(48, 223, 'Washington', 'WAS', 'WA'),
(49, 223, 'West Virginia', 'WEV', 'WV'),
(50, 223, 'Wisconsin', 'WIS', 'WI'),
(51, 223, 'Wyoming', 'WYO', 'WY'),
(52, 38, 'Alberta', 'ALB', 'AB'),
(53, 38, 'British Columbia', 'BRC', 'BC'),
(54, 38, 'Manitoba', 'MAB', 'MB'),
(55, 38, 'New Brunswick', 'NEB', 'NB'),
(56, 38, 'Newfoundland and Labrador', 'NFL', 'NL'),
(57, 38, 'Northwest Territories', 'NWT', 'NT'),
(58, 38, 'Nova Scotia', 'NOS', 'NS'),
(59, 38, 'Nunavut', 'NUT', 'NU'),
(60, 38, 'Ontario', 'ONT', 'ON'),
(61, 38, 'Prince Edward Island', 'PEI', 'PE'),
(62, 38, 'Quebec', 'QEC', 'QC'),
(63, 38, 'Saskatchewan', 'SAK', 'SK'),
(64, 38, 'Yukon', 'YUT', 'YT'),
(65, 222, 'England', 'ENG', 'EN'),
(66, 222, 'Northern Ireland', 'NOI', 'NI'),
(67, 222, 'Scotland', 'SCO', 'SD'),
(68, 222, 'Wales', 'WLS', 'WS'),
(69, 13, 'Australian Capital Territory', 'ACT', 'AC'),
(70, 13, 'New South Wales', 'NSW', 'NS'),
(71, 13, 'Northern Territory', 'NOT', 'NT'),
(72, 13, 'Queensland', 'QLD', 'QL'),
(73, 13, 'South Australia', 'SOA', 'SA'),
(74, 13, 'Tasmania', 'TAS', 'TS'),
(75, 13, 'Victoria', 'VIC', 'VI'),
(76, 13, 'Western Australia', 'WEA', 'WA'),
(77, 138, 'Aguascalientes', 'AGS', 'AG'),
(78, 138, 'Baja California Norte', 'BCN', 'BN'),
(79, 138, 'Baja California Sur', 'BCS', 'BS'),
(80, 138, 'Campeche', 'CAM', 'CA'),
(81, 138, 'Chiapas', 'CHI', 'CS'),
(82, 138, 'Chihuahua', 'CHA', 'CH'),
(83, 138, 'Coahuila', 'COA', 'CO'),
(84, 138, 'Colima', 'COL', 'CM'),
(85, 138, 'Distrito Federal', 'DFM', 'DF'),
(86, 138, 'Durango', 'DGO', 'DO'),
(87, 138, 'Guanajuato', 'GTO', 'GO'),
(88, 138, 'Guerrero', 'GRO', 'GU'),
(89, 138, 'Hidalgo', 'HGO', 'HI'),
(90, 138, 'Jalisco', 'JAL', 'JA'),
(91, 138, 'México (Estado de)', 'EDM', 'EM'),
(92, 138, 'Michoacán', 'MCN', 'MI'),
(93, 138, 'Morelos', 'MOR', 'MO'),
(94, 138, 'Nayarit', 'NAY', 'NY'),
(95, 138, 'Nuevo León', 'NUL', 'NL'),
(96, 138, 'Oaxaca', 'OAX', 'OA'),
(97, 138, 'Puebla', 'PUE', 'PU'),
(98, 138, 'Querétaro', 'QRO', 'QU'),
(99, 138, 'Quintana Roo', 'QUR', 'QR'),
(100, 138, 'San Luis Potosí', 'SLP', 'SP'),
(101, 138, 'Sinaloa', 'SIN', 'SI'),
(102, 138, 'Sonora', 'SON', 'SO'),
(103, 138, 'Tabasco', 'TAB', 'TA'),
(104, 138, 'Tamaulipas', 'TAM', 'TM'),
(105, 138, 'Tlaxcala', 'TLX', 'TX'),
(106, 138, 'Veracruz', 'VER', 'VZ'),
(107, 138, 'Yucatán', 'YUC', 'YU'),
(108, 138, 'Zacatecas', 'ZAC', 'ZA'),
(109, 30, 'Acre', 'ACR', 'AC'),
(110, 30, 'Alagoas', 'ALG', 'AL'),
(111, 30, 'Amapá', 'AMP', 'AP'),
(112, 30, 'Amazonas', 'AMZ', 'AM'),
(113, 30, 'Bahía', 'BAH', 'BA'),
(114, 30, 'Ceará', 'CEA', 'CE'),
(115, 30, 'Distrito Federal', 'DFB', 'DF'),
(116, 30, 'Espirito Santo', 'ESS', 'ES'),
(117, 30, 'Goiás', 'GOI', 'GO'),
(118, 30, 'Maranhão', 'MAR', 'MA'),
(119, 30, 'Mato Grosso', 'MAT', 'MT'),
(120, 30, 'Mato Grosso do Sul', 'MGS', 'MS'),
(121, 30, 'Minas Geraís', 'MIG', 'MG'),
(122, 30, 'Paraná', 'PAR', 'PR'),
(123, 30, 'Paraíba', 'PRB', 'PB'),
(124, 30, 'Pará', 'PAB', 'PA'),
(125, 30, 'Pernambuco', 'PER', 'PE'),
(126, 30, 'Piauí', 'PIA', 'PI'),
(127, 30, 'Rio Grande do Norte', 'RGN', 'RN'),
(128, 30, 'Rio Grande do Sul', 'RGS', 'RS'),
(129, 30, 'Rio de Janeiro', 'RDJ', 'RJ'),
(130, 30, 'Rondônia', 'RON', 'RO'),
(131, 30, 'Roraima', 'ROR', 'RR'),
(132, 30, 'Santa Catarina', 'SAC', 'SC'),
(133, 30, 'Sergipe', 'SER', 'SE'),
(134, 30, 'São Paulo', 'SAP', 'SP'),
(135, 30, 'Tocantins', 'TOC', 'TO'),
(136, 44, 'Anhui', 'ANH', '34'),
(137, 44, 'Beijing', 'BEI', '11'),
(138, 44, 'Chongqing', 'CHO', '50'),
(139, 44, 'Fujian', 'FUJ', '35'),
(140, 44, 'Gansu', 'GAN', '62'),
(141, 44, 'Guangdong', 'GUA', '44'),
(142, 44, 'Guangxi Zhuang', 'GUZ', '45'),
(143, 44, 'Guizhou', 'GUI', '52'),
(144, 44, 'Hainan', 'HAI', '46'),
(145, 44, 'Hebei', 'HEB', '13'),
(146, 44, 'Heilongjiang', 'HEI', '23'),
(147, 44, 'Henan', 'HEN', '41'),
(148, 44, 'Hubei', 'HUB', '42'),
(149, 44, 'Hunan', 'HUN', '43'),
(150, 44, 'Jiangsu', 'JIA', '32'),
(151, 44, 'Jiangxi', 'JIX', '36'),
(152, 44, 'Jilin', 'JIL', '22'),
(153, 44, 'Liaoning', 'LIA', '21'),
(154, 44, 'Nei Mongol', 'NML', '15'),
(155, 44, 'Ningxia Hui', 'NIH', '64'),
(156, 44, 'Qinghai', 'QIN', '63'),
(157, 44, 'Shandong', 'SNG', '37'),
(158, 44, 'Shanghai', 'SHH', '31'),
(159, 44, 'Shaanxi', 'SHX', '61'),
(160, 44, 'Sichuan', 'SIC', '51'),
(161, 44, 'Tianjin', 'TIA', '12'),
(162, 44, 'Xinjiang Uygur', 'XIU', '65'),
(163, 44, 'Xizang', 'XIZ', '54'),
(164, 44, 'Yunnan', 'YUN', '53'),
(165, 44, 'Zhejiang', 'ZHE', '33'),
(166, 104, 'Israel', 'ISL', 'IL'),
(167, 104, 'Gaza Strip', 'GZS', 'GZ'),
(168, 104, 'West Bank', 'WBK', 'WB'),
(169, 151, 'St. Maarten', 'STM', 'SM'),
(170, 151, 'Bonaire', 'BNR', 'BN'),
(171, 151, 'Curacao', 'CUR', 'CR'),
(172, 175, 'Alba', 'ABA', 'AB'),
(173, 175, 'Arad', 'ARD', 'AR'),
(174, 175, 'Arges', 'ARG', 'AG'),
(175, 175, 'Bacau', 'BAC', 'BC'),
(176, 175, 'Bihor', 'BIH', 'BH'),
(177, 175, 'Bistrita-Nasaud', 'BIS', 'BN'),
(178, 175, 'Botosani', 'BOT', 'BT'),
(179, 175, 'Braila', 'BRL', 'BR'),
(180, 175, 'Brasov', 'BRA', 'BV'),
(181, 175, 'Bucuresti', 'BUC', 'B'),
(182, 175, 'Buzau', 'BUZ', 'BZ'),
(183, 175, 'Calarasi', 'CAL', 'CL'),
(184, 175, 'Caras Severin', 'CRS', 'CS'),
(185, 175, 'Cluj', 'CLJ', 'CJ'),
(186, 175, 'Constanta', 'CST', 'CT'),
(187, 175, 'Covasna', 'COV', 'CV'),
(188, 175, 'Dambovita', 'DAM', 'DB'),
(189, 175, 'Dolj', 'DLJ', 'DJ'),
(190, 175, 'Galati', 'GAL', 'GL'),
(191, 175, 'Giurgiu', 'GIU', 'GR'),
(192, 175, 'Gorj', 'GOR', 'GJ'),
(193, 175, 'Hargita', 'HRG', 'HR'),
(194, 175, 'Hunedoara', 'HUN', 'HD'),
(195, 175, 'Ialomita', 'IAL', 'IL'),
(196, 175, 'Iasi', 'IAS', 'IS'),
(197, 175, 'Ilfov', 'ILF', 'IF'),
(198, 175, 'Maramures', 'MAR', 'MM'),
(199, 175, 'Mehedinti', 'MEH', 'MH'),
(200, 175, 'Mures', 'MUR', 'MS'),
(201, 175, 'Neamt', 'NEM', 'NT'),
(202, 175, 'Olt', 'OLT', 'OT'),
(203, 175, 'Prahova', 'PRA', 'PH'),
(204, 175, 'Salaj', 'SAL', 'SJ'),
(205, 175, 'Satu Mare', 'SAT', 'SM'),
(206, 175, 'Sibiu', 'SIB', 'SB'),
(207, 175, 'Suceava', 'SUC', 'SV'),
(208, 175, 'Teleorman', 'TEL', 'TR'),
(209, 175, 'Timis', 'TIM', 'TM'),
(210, 175, 'Tulcea', 'TUL', 'TL'),
(211, 175, 'Valcea', 'VAL', 'VL'),
(212, 175, 'Vaslui', 'VAS', 'VS'),
(213, 175, 'Vrancea', 'VRA', 'VN'),
(214, 105, 'Agrigento', 'AGR', 'AG'),
(215, 105, 'Alessandria', 'ALE', 'AL'),
(216, 105, 'Ancona', 'ANC', 'AN'),
(217, 105, 'Aosta', 'AOS', 'AO'),
(218, 105, 'Arezzo', 'ARE', 'AR'),
(219, 105, 'Ascoli Piceno', 'API', 'AP'),
(220, 105, 'Asti', 'AST', 'AT'),
(221, 105, 'Avellino', 'AVE', 'AV'),
(222, 105, 'Bari', 'BAR', 'BA'),
(223, 105, 'Belluno', 'BEL', 'BL'),
(224, 105, 'Benevento', 'BEN', 'BN'),
(225, 105, 'Bergamo', 'BEG', 'BG'),
(226, 105, 'Biella', 'BIE', 'BI'),
(227, 105, 'Bologna', 'BOL', 'BO'),
(228, 105, 'Bolzano', 'BOZ', 'BZ'),
(229, 105, 'Brescia', 'BRE', 'BS'),
(230, 105, 'Brindisi', 'BRI', 'BR'),
(231, 105, 'Cagliari', 'CAG', 'CA'),
(232, 105, 'Caltanissetta', 'CAL', 'CL'),
(233, 105, 'Campobasso', 'CBO', 'CB'),
(234, 105, 'Carbonia-Iglesias', 'CAR', 'CI'),
(235, 105, 'Caserta', 'CAS', 'CE'),
(236, 105, 'Catania', 'CAT', 'CT'),
(237, 105, 'Catanzaro', 'CTZ', 'CZ'),
(238, 105, 'Chieti', 'CHI', 'CH'),
(239, 105, 'Como', 'COM', 'CO'),
(240, 105, 'Cosenza', 'COS', 'CS'),
(241, 105, 'Cremona', 'CRE', 'CR'),
(242, 105, 'Crotone', 'CRO', 'KR'),
(243, 105, 'Cuneo', 'CUN', 'CN'),
(244, 105, 'Enna', 'ENN', 'EN'),
(245, 105, 'Ferrara', 'FER', 'FE'),
(246, 105, 'Firenze', 'FIR', 'FI'),
(247, 105, 'Foggia', 'FOG', 'FG'),
(248, 105, 'Forli-Cesena', 'FOC', 'FC'),
(249, 105, 'Frosinone', 'FRO', 'FR'),
(250, 105, 'Genova', 'GEN', 'GE'),
(251, 105, 'Gorizia', 'GOR', 'GO'),
(252, 105, 'Grosseto', 'GRO', 'GR'),
(253, 105, 'Imperia', 'IMP', 'IM'),
(254, 105, 'Isernia', 'ISE', 'IS'),
(255, 105, 'L''Aquila', 'AQU', 'AQ'),
(256, 105, 'La Spezia', 'LAS', 'SP'),
(257, 105, 'Latina', 'LAT', 'LT'),
(258, 105, 'Lecce', 'LEC', 'LE'),
(259, 105, 'Lecco', 'LCC', 'LC'),
(260, 105, 'Livorno', 'LIV', 'LI'),
(261, 105, 'Lodi', 'LOD', 'LO'),
(262, 105, 'Lucca', 'LUC', 'LU'),
(263, 105, 'Macerata', 'MAC', 'MC'),
(264, 105, 'Mantova', 'MAN', 'MN'),
(265, 105, 'Massa-Carrara', 'MAS', 'MS'),
(266, 105, 'Matera', 'MAA', 'MT'),
(267, 105, 'Medio Campidano', 'MED', 'VS'),
(268, 105, 'Messina', 'MES', 'ME'),
(269, 105, 'Milano', 'MIL', 'MI'),
(270, 105, 'Modena', 'MOD', 'MO'),
(271, 105, 'Napoli', 'NAP', 'NA'),
(272, 105, 'Novara', 'NOV', 'NO'),
(273, 105, 'Nuoro', 'NUR', 'NU'),
(274, 105, 'Ogliastra', 'OGL', 'OG'),
(275, 105, 'Olbia-Tempio', 'OLB', 'OT'),
(276, 105, 'Oristano', 'ORI', 'OR'),
(277, 105, 'Padova', 'PDA', 'PD'),
(278, 105, 'Palermo', 'PAL', 'PA'),
(279, 105, 'Parma', 'PAA', 'PR'),
(280, 105, 'Pavia', 'PAV', 'PV'),
(281, 105, 'Perugia', 'PER', 'PG'),
(282, 105, 'Pesaro e Urbino', 'PES', 'PU'),
(283, 105, 'Pescara', 'PSC', 'PE'),
(284, 105, 'Piacenza', 'PIA', 'PC'),
(285, 105, 'Pisa', 'PIS', 'PI'),
(286, 105, 'Pistoia', 'PIT', 'PT'),
(287, 105, 'Pordenone', 'POR', 'PN'),
(288, 105, 'Potenza', 'PTZ', 'PZ'),
(289, 105, 'Prato', 'PRA', 'PO'),
(290, 105, 'Ragusa', 'RAG', 'RG'),
(291, 105, 'Ravenna', 'RAV', 'RA'),
(292, 105, 'Reggio Calabria', 'REG', 'RC'),
(293, 105, 'Reggio Emilia', 'REE', 'RE'),
(294, 105, 'Rieti', 'RIE', 'RI'),
(295, 105, 'Rimini', 'RIM', 'RN'),
(296, 105, 'Roma', 'ROM', 'RM'),
(297, 105, 'Rovigo', 'ROV', 'RO'),
(298, 105, 'Salerno', 'SAL', 'SA'),
(299, 105, 'Sassari', 'SAS', 'SS'),
(300, 105, 'Savona', 'SAV', 'SV'),
(301, 105, 'Siena', 'SIE', 'SI'),
(302, 105, 'Siracusa', 'SIR', 'SR'),
(303, 105, 'Sondrio', 'SOO', 'SO'),
(304, 105, 'Taranto', 'TAR', 'TA'),
(305, 105, 'Teramo', 'TER', 'TE'),
(306, 105, 'Terni', 'TRN', 'TR'),
(307, 105, 'Torino', 'TOR', 'TO'),
(308, 105, 'Trapani', 'TRA', 'TP'),
(309, 105, 'Trento', 'TRE', 'TN'),
(310, 105, 'Treviso', 'TRV', 'TV'),
(311, 105, 'Trieste', 'TRI', 'TS'),
(312, 105, 'Udine', 'UDI', 'UD'),
(313, 105, 'Varese', 'VAR', 'VA'),
(314, 105, 'Venezia', 'VEN', 'VE'),
(315, 105, 'Verbano Cusio Ossola', 'VCO', 'VB'),
(316, 105, 'Vercelli', 'VER', 'VC'),
(317, 105, 'Verona', 'VRN', 'VR'),
(318, 105, 'Vibo Valenzia', 'VIV', 'VV'),
(319, 105, 'Vicenza', 'VII', 'VI'),
(320, 105, 'Viterbo', 'VIT', 'VT'),
(321, 195, 'A Coruña', 'ACO', '15'),
(322, 195, 'Alava', 'ALA', '01'),
(323, 195, 'Albacete', 'ALB', '02'),
(324, 195, 'Alicante', 'ALI', '03'),
(325, 195, 'Almeria', 'ALM', '04'),
(326, 195, 'Asturias', 'AST', '33'),
(327, 195, 'Avila', 'AVI', '05'),
(328, 195, 'Badajoz', 'BAD', '06'),
(329, 195, 'Baleares', 'BAL', '07'),
(330, 195, 'Barcelona', 'BAR', '08'),
(331, 195, 'Burgos', 'BUR', '09'),
(332, 195, 'Caceres', 'CAC', '10'),
(333, 195, 'Cadiz', 'CAD', '11'),
(334, 195, 'Cantabria', 'CAN', '39'),
(335, 195, 'Castellon', 'CAS', '12'),
(336, 195, 'Ceuta', 'CEU', '51'),
(337, 195, 'Ciudad Real', 'CIU', '13'),
(338, 195, 'Cordoba', 'COR', '14'),
(339, 195, 'Cuenca', 'CUE', '16'),
(340, 195, 'Girona', 'GIR', '17'),
(341, 195, 'Granada', 'GRA', '18'),
(342, 195, 'Guadalajara', 'GUA', '19'),
(343, 195, 'Guipuzcoa', 'GUI', '20'),
(344, 195, 'Huelva', 'HUL', '21'),
(345, 195, 'Huesca', 'HUS', '22'),
(346, 195, 'Jaen', 'JAE', '23'),
(347, 195, 'La Rioja', 'LRI', '26'),
(348, 195, 'Las Palmas', 'LPA', '35'),
(349, 195, 'Leon', 'LEO', '24'),
(350, 195, 'Lleida', 'LLE', '25'),
(351, 195, 'Lugo', 'LUG', '27'),
(352, 195, 'Madrid', 'MAD', '28'),
(353, 195, 'Malaga', 'MAL', '29'),
(354, 195, 'Melilla', 'MEL', '52'),
(355, 195, 'Murcia', 'MUR', '30'),
(356, 195, 'Navarra', 'NAV', '31'),
(357, 195, 'Ourense', 'OUR', '32'),
(358, 195, 'Palencia', 'PAL', '34'),
(359, 195, 'Pontevedra', 'PON', '36'),
(360, 195, 'Salamanca', 'SAL', '37'),
(361, 195, 'Santa Cruz de Tenerife', 'SCT', '38'),
(362, 195, 'Segovia', 'SEG', '40'),
(363, 195, 'Sevilla', 'SEV', '41'),
(364, 195, 'Soria', 'SOR', '42'),
(365, 195, 'Tarragona', 'TAR', '43'),
(366, 195, 'Teruel', 'TER', '44'),
(367, 195, 'Toledo', 'TOL', '45'),
(368, 195, 'Valencia', 'VAL', '46'),
(369, 195, 'Valladolid', 'VLL', '47'),
(370, 195, 'Vizcaya', 'VIZ', '48'),
(371, 195, 'Zamora', 'ZAM', '49'),
(372, 195, 'Zaragoza', 'ZAR', '50'),
(373, 11, 'Aragatsotn', 'ARG', 'AG'),
(374, 11, 'Ararat', 'ARR', 'AR'),
(375, 11, 'Armavir', 'ARM', 'AV'),
(376, 11, 'Gegharkunik', 'GEG', 'GR'),
(377, 11, 'Kotayk', 'KOT', 'KT'),
(378, 11, 'Lori', 'LOR', 'LO'),
(379, 11, 'Shirak', 'SHI', 'SH'),
(380, 11, 'Syunik', 'SYU', 'SU'),
(381, 11, 'Tavush', 'TAV', 'TV'),
(382, 11, 'Vayots-Dzor', 'VAD', 'VD'),
(383, 11, 'Yerevan', 'YER', 'ER'),
(384, 99, 'Andaman & Nicobar Islands', 'ANI', 'AI'),
(385, 99, 'Andhra Pradesh', 'AND', 'AN'),
(386, 99, 'Arunachal Pradesh', 'ARU', 'AR'),
(387, 99, 'Assam', 'ASS', 'AS'),
(388, 99, 'Bihar', 'BIH', 'BI'),
(389, 99, 'Chandigarh', 'CHA', 'CA'),
(390, 99, 'Chhatisgarh', 'CHH', 'CH'),
(391, 99, 'Dadra & Nagar Haveli', 'DAD', 'DD'),
(392, 99, 'Daman & Diu', 'DAM', 'DA'),
(393, 99, 'Delhi', 'DEL', 'DE'),
(394, 99, 'Goa', 'GOA', 'GO'),
(395, 99, 'Gujarat', 'GUJ', 'GU'),
(396, 99, 'Haryana', 'HAR', 'HA'),
(397, 99, 'Himachal Pradesh', 'HIM', 'HI'),
(398, 99, 'Jammu & Kashmir', 'JAM', 'JA'),
(399, 99, 'Jharkhand', 'JHA', 'JH'),
(400, 99, 'Karnataka', 'KAR', 'KA'),
(401, 99, 'Kerala', 'KER', 'KE'),
(402, 99, 'Lakshadweep', 'LAK', 'LA'),
(403, 99, 'Madhya Pradesh', 'MAD', 'MD'),
(404, 99, 'Maharashtra', 'MAH', 'MH'),
(405, 99, 'Manipur', 'MAN', 'MN'),
(406, 99, 'Meghalaya', 'MEG', 'ME'),
(407, 99, 'Mizoram', 'MIZ', 'MI'),
(408, 99, 'Nagaland', 'NAG', 'NA'),
(409, 99, 'Orissa', 'ORI', 'OR'),
(410, 99, 'Pondicherry', 'PON', 'PO'),
(411, 99, 'Punjab', 'PUN', 'PU'),
(412, 99, 'Rajasthan', 'RAJ', 'RA'),
(413, 99, 'Sikkim', 'SIK', 'SI'),
(414, 99, 'Tamil Nadu', 'TAM', 'TA'),
(415, 99, 'Tripura', 'TRI', 'TR'),
(416, 99, 'Uttaranchal', 'UAR', 'UA'),
(417, 99, 'Uttar Pradesh', 'UTT', 'UT'),
(418, 99, 'West Bengal', 'WES', 'WE'),
(419, 101, 'Ahmadi va Kohkiluyeh', 'BOK', 'BO'),
(420, 101, 'Ardabil', 'ARD', 'AR'),
(421, 101, 'Azarbayjan-e Gharbi', 'AZG', 'AG'),
(422, 101, 'Azarbayjan-e Sharqi', 'AZS', 'AS'),
(423, 101, 'Bushehr', 'BUS', 'BU'),
(424, 101, 'Chaharmahal va Bakhtiari', 'CMB', 'CM'),
(425, 101, 'Esfahan', 'ESF', 'ES'),
(426, 101, 'Fars', 'FAR', 'FA'),
(427, 101, 'Gilan', 'GIL', 'GI'),
(428, 101, 'Gorgan', 'GOR', 'GO'),
(429, 101, 'Hamadan', 'HAM', 'HA'),
(430, 101, 'Hormozgan', 'HOR', 'HO'),
(431, 101, 'Ilam', 'ILA', 'IL'),
(432, 101, 'Kerman', 'KER', 'KE'),
(433, 101, 'Kermanshah', 'BAK', 'BA'),
(434, 101, 'Khorasan-e Junoubi', 'KHJ', 'KJ'),
(435, 101, 'Khorasan-e Razavi', 'KHR', 'KR'),
(436, 101, 'Khorasan-e Shomali', 'KHS', 'KS'),
(437, 101, 'Khuzestan', 'KHU', 'KH'),
(438, 101, 'Kordestan', 'KOR', 'KO'),
(439, 101, 'Lorestan', 'LOR', 'LO'),
(440, 101, 'Markazi', 'MAR', 'MR'),
(441, 101, 'Mazandaran', 'MAZ', 'MZ'),
(442, 101, 'Qazvin', 'QAS', 'QA'),
(443, 101, 'Qom', 'QOM', 'QO'),
(444, 101, 'Semnan', 'SEM', 'SE'),
(445, 101, 'Sistan va Baluchestan', 'SBA', 'SB'),
(446, 101, 'Tehran', 'TEH', 'TE'),
(447, 101, 'Yazd', 'YAZ', 'YA'),
(448, 101, 'Zanjan', 'ZAN', 'ZA');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_tax_rate`
--

CREATE TABLE IF NOT EXISTS `jos_vm_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) DEFAULT NULL,
  `tax_state` varchar(64) DEFAULT NULL,
  `tax_country` varchar(64) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `tax_rate` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`tax_rate_id`),
  KEY `idx_tax_rate_vendor_id` (`vendor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='The tax rates for your store' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_vm_tax_rate`
--

INSERT INTO `jos_vm_tax_rate` (`tax_rate_id`, `vendor_id`, `tax_state`, `tax_country`, `mdate`, `tax_rate`) VALUES
(2, 1, 'CA', 'USA', 964565926, '0.09750');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_userfield`
--

CREATE TABLE IF NOT EXISTS `jos_vm_userfield` (
  `fieldid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT '',
  `maxlength` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `required` tinyint(4) DEFAULT '0',
  `ordering` int(11) DEFAULT NULL,
  `cols` int(11) DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `default` int(11) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `registration` tinyint(1) NOT NULL DEFAULT '0',
  `shipping` tinyint(1) NOT NULL DEFAULT '0',
  `account` tinyint(1) NOT NULL DEFAULT '1',
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `calculated` tinyint(1) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `vendor_id` int(11) DEFAULT NULL,
  `params` mediumtext,
  PRIMARY KEY (`fieldid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds the fields for the user information' AUTO_INCREMENT=36 ;

--
-- Dumping data for table `jos_vm_userfield`
--

INSERT INTO `jos_vm_userfield` (`fieldid`, `name`, `title`, `description`, `type`, `maxlength`, `size`, `required`, `ordering`, `cols`, `rows`, `value`, `default`, `published`, `registration`, `shipping`, `account`, `readonly`, `calculated`, `sys`, `vendor_id`, `params`) VALUES
(1, 'email', 'REGISTER_EMAIL', '', 'emailaddress', 100, 30, 1, 2, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL),
(7, 'title', 'PHPSHOP_SHOPPER_FORM_TITLE', '', 'select', 0, 0, 0, 8, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL),
(3, 'password', 'PHPSHOP_SHOPPER_FORM_PASSWORD_1', '', 'password', 25, 30, 1, 4, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL),
(4, 'password2', 'PHPSHOP_SHOPPER_FORM_PASSWORD_2', '', 'password', 25, 30, 1, 5, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL),
(6, 'company', 'PHPSHOP_SHOPPER_FORM_COMPANY_NAME', '', 'text', 64, 30, 0, 7, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(5, 'delimiter_billto', 'PHPSHOP_USER_FORM_BILLTO_LBL', '', 'delimiter', 25, 30, 0, 6, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 0, 1, NULL),
(2, 'username', 'REGISTER_UNAME', '', 'text', 25, 30, 1, 3, 0, 0, '', 0, 1, 1, 0, 1, 0, 0, 1, 1, ''),
(35, 'address_type_name', 'PHPSHOP_USER_FORM_ADDRESS_LABEL', '', 'text', 32, 30, 1, 6, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, 1, NULL),
(8, 'first_name', 'PHPSHOP_SHOPPER_FORM_FIRST_NAME', '', 'text', 32, 30, 1, 9, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(9, 'last_name', 'PHPSHOP_SHOPPER_FORM_LAST_NAME', '', 'text', 32, 30, 1, 10, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(10, 'middle_name', 'PHPSHOP_SHOPPER_FORM_MIDDLE_NAME', '', 'text', 32, 30, 0, 11, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(11, 'address_1', 'PHPSHOP_SHOPPER_FORM_ADDRESS_1', '', 'text', 64, 30, 1, 12, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(12, 'address_2', 'PHPSHOP_SHOPPER_FORM_ADDRESS_2', '', 'text', 64, 30, 0, 13, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(13, 'city', 'PHPSHOP_SHOPPER_FORM_CITY', '', 'text', 32, 30, 1, 14, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(14, 'zip', 'PHPSHOP_SHOPPER_FORM_ZIP', '', 'text', 32, 30, 1, 15, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(15, 'country', 'PHPSHOP_SHOPPER_FORM_COUNTRY', '', 'select', 0, 0, 1, 16, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(16, 'state', 'PHPSHOP_SHOPPER_FORM_STATE', '', 'select', 0, 0, 1, 17, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(17, 'phone_1', 'PHPSHOP_SHOPPER_FORM_PHONE', '', 'text', 32, 30, 1, 18, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(18, 'phone_2', 'PHPSHOP_SHOPPER_FORM_PHONE2', '', 'text', 32, 30, 0, 19, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(19, 'fax', 'PHPSHOP_SHOPPER_FORM_FAX', '', 'text', 32, 30, 0, 20, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(20, 'delimiter_bankaccount', 'PHPSHOP_ACCOUNT_BANK_TITLE', '', 'delimiter', 25, 30, 0, 21, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 0, 1, NULL),
(21, 'bank_account_holder', 'PHPSHOP_ACCOUNT_LBL_BANK_ACCOUNT_HOLDER', '', 'text', 48, 30, 0, 22, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(22, 'bank_account_nr', 'PHPSHOP_ACCOUNT_LBL_BANK_ACCOUNT_NR', '', 'text', 32, 30, 0, 23, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(23, 'bank_sort_code', 'PHPSHOP_ACCOUNT_LBL_BANK_SORT_CODE', '', 'text', 16, 30, 0, 24, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(24, 'bank_name', 'PHPSHOP_ACCOUNT_LBL_BANK_NAME', '', 'text', 32, 30, 0, 25, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(25, 'bank_account_type', 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE', '', 'select', 0, 0, 0, 26, 0, 0, '', 0, 1, 0, 0, 1, 1, 0, 1, 1, ''),
(26, 'bank_iban', 'PHPSHOP_ACCOUNT_LBL_BANK_IBAN', '', 'text', 64, 30, 0, 27, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(27, 'delimiter_sendregistration', 'BUTTON_SEND_REG', '', 'delimiter', 25, 30, 0, 28, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 1, NULL),
(28, 'agreed', 'PHPSHOP_I_AGREE_TO_TOS', '', 'checkbox', NULL, NULL, 1, 29, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 1, 1, NULL),
(29, 'delimiter_userinfo', 'PHPSHOP_ORDER_PRINT_CUST_INFO_LBL', '', 'delimiter', NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 0, 1, NULL),
(30, 'extra_field_1', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_1', '', 'text', 255, 30, 0, 31, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL),
(31, 'extra_field_2', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_2', '', 'text', 255, 30, 0, 32, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL),
(32, 'extra_field_3', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_3', '', 'text', 255, 30, 0, 33, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL),
(33, 'extra_field_4', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_4', '', 'select', 1, 1, 0, 34, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL),
(34, 'extra_field_5', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_5', '', 'select', 1, 1, 0, 35, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_userfield_values`
--

CREATE TABLE IF NOT EXISTS `jos_vm_userfield_values` (
  `fieldvalueid` int(11) NOT NULL AUTO_INCREMENT,
  `fieldid` int(11) NOT NULL DEFAULT '0',
  `fieldtitle` varchar(255) NOT NULL DEFAULT '',
  `fieldvalue` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldvalueid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds the different values for dropdown and radio lists' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jos_vm_userfield_values`
--

INSERT INTO `jos_vm_userfield_values` (`fieldvalueid`, `fieldid`, `fieldtitle`, `fieldvalue`, `ordering`, `sys`) VALUES
(1, 25, 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE_BUSINESSCHECKING', 'Checking', 1, 1),
(2, 25, 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE_CHECKING', 'Business Checking', 2, 1),
(3, 25, 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE_SAVINGS', 'Savings', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_user_info`
--

CREATE TABLE IF NOT EXISTS `jos_vm_user_info` (
  `user_info_id` varchar(32) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `address_type` char(2) DEFAULT NULL,
  `address_type_name` varchar(32) DEFAULT NULL,
  `company` varchar(64) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `middle_name` varchar(32) DEFAULT NULL,
  `phone_1` varchar(32) DEFAULT NULL,
  `phone_2` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `address_1` varchar(64) NOT NULL DEFAULT '',
  `address_2` varchar(64) DEFAULT NULL,
  `city` varchar(32) NOT NULL DEFAULT '',
  `state` varchar(32) NOT NULL DEFAULT '',
  `country` varchar(32) NOT NULL DEFAULT 'US',
  `zip` varchar(32) NOT NULL DEFAULT '',
  `user_email` varchar(255) DEFAULT NULL,
  `extra_field_1` varchar(255) DEFAULT NULL,
  `extra_field_2` varchar(255) DEFAULT NULL,
  `extra_field_3` varchar(255) DEFAULT NULL,
  `extra_field_4` char(1) DEFAULT NULL,
  `extra_field_5` char(1) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `perms` varchar(40) NOT NULL DEFAULT 'shopper',
  `bank_account_nr` varchar(32) NOT NULL DEFAULT '',
  `bank_name` varchar(32) NOT NULL DEFAULT '',
  `bank_sort_code` varchar(16) NOT NULL DEFAULT '',
  `bank_iban` varchar(64) NOT NULL DEFAULT '',
  `bank_account_holder` varchar(48) NOT NULL DEFAULT '',
  `bank_account_type` enum('Checking','Business Checking','Savings') NOT NULL DEFAULT 'Checking',
  PRIMARY KEY (`user_info_id`),
  KEY `idx_user_info_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Customer Information, BT = BillTo and ST = ShipTo';

--
-- Dumping data for table `jos_vm_user_info`
--

INSERT INTO `jos_vm_user_info` (`user_info_id`, `user_id`, `address_type`, `address_type_name`, `company`, `title`, `last_name`, `first_name`, `middle_name`, `phone_1`, `phone_2`, `fax`, `address_1`, `address_2`, `city`, `state`, `country`, `zip`, `user_email`, `extra_field_1`, `extra_field_2`, `extra_field_3`, `extra_field_4`, `extra_field_5`, `cdate`, `mdate`, `perms`, `bank_account_nr`, `bank_name`, `bank_sort_code`, `bank_iban`, `bank_account_holder`, `bank_account_type`) VALUES
('328043b8e280c5e829717462c96a15d2', 62, 'BT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'US', '', 'dingkyduo@yahoo.com', NULL, NULL, NULL, NULL, NULL, 1281916259, 1281941606, 'shopper', '', '', '', '', '', 'Checking');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_vendor`
--

CREATE TABLE IF NOT EXISTS `jos_vm_vendor` (
  `vendor_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_name` varchar(64) DEFAULT NULL,
  `contact_last_name` varchar(32) NOT NULL DEFAULT '',
  `contact_first_name` varchar(32) NOT NULL DEFAULT '',
  `contact_middle_name` varchar(32) DEFAULT NULL,
  `contact_title` varchar(32) DEFAULT NULL,
  `contact_phone_1` varchar(32) NOT NULL DEFAULT '',
  `contact_phone_2` varchar(32) DEFAULT NULL,
  `contact_fax` varchar(32) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `vendor_phone` varchar(32) DEFAULT NULL,
  `vendor_address_1` varchar(64) NOT NULL DEFAULT '',
  `vendor_address_2` varchar(64) DEFAULT NULL,
  `vendor_city` varchar(32) NOT NULL DEFAULT '',
  `vendor_state` varchar(32) NOT NULL DEFAULT '',
  `vendor_country` varchar(32) NOT NULL DEFAULT 'US',
  `vendor_zip` varchar(32) NOT NULL DEFAULT '',
  `vendor_store_name` varchar(128) NOT NULL DEFAULT '',
  `vendor_store_desc` text,
  `vendor_category_id` int(11) DEFAULT NULL,
  `vendor_thumb_image` varchar(255) DEFAULT NULL,
  `vendor_full_image` varchar(255) DEFAULT NULL,
  `vendor_currency` varchar(16) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `vendor_image_path` varchar(255) DEFAULT NULL,
  `vendor_terms_of_service` text NOT NULL,
  `vendor_url` varchar(255) NOT NULL DEFAULT '',
  `vendor_min_pov` decimal(10,2) DEFAULT NULL,
  `vendor_freeshipping` decimal(10,2) NOT NULL DEFAULT '0.00',
  `vendor_currency_display_style` varchar(64) NOT NULL DEFAULT '',
  `vendor_accepted_currencies` text NOT NULL,
  `vendor_address_format` text NOT NULL,
  `vendor_date_format` varchar(255) NOT NULL,
  PRIMARY KEY (`vendor_id`),
  KEY `idx_vendor_name` (`vendor_name`),
  KEY `idx_vendor_category_id` (`vendor_category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Vendors manage their products in your store' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_vm_vendor`
--

INSERT INTO `jos_vm_vendor` (`vendor_id`, `vendor_name`, `contact_last_name`, `contact_first_name`, `contact_middle_name`, `contact_title`, `contact_phone_1`, `contact_phone_2`, `contact_fax`, `contact_email`, `vendor_phone`, `vendor_address_1`, `vendor_address_2`, `vendor_city`, `vendor_state`, `vendor_country`, `vendor_zip`, `vendor_store_name`, `vendor_store_desc`, `vendor_category_id`, `vendor_thumb_image`, `vendor_full_image`, `vendor_currency`, `cdate`, `mdate`, `vendor_image_path`, `vendor_terms_of_service`, `vendor_url`, `vendor_min_pov`, `vendor_freeshipping`, `vendor_currency_display_style`, `vendor_accepted_currencies`, `vendor_address_format`, `vendor_date_format`) VALUES
(1, 'Solutions H-21 Trading Corp.', '', '', '', '', '(+632)986-4817', '', '(+632)253-7201', 'solutionsh21@gmail.com', '(+632)986-4817', 'Unit S-17 Cluster Bldg. II, Tutuban Center Tondo Manila, Philipp', '', '', ' - ', 'PHL', '1112', 'Solutions H-21', '', 0, '', 'Washupito_s_Tien_4c711f4e62257.jpg', 'PHP', 950302468, 1284521495, '', '', 'http://www.solutionsh-21.com', '0.00', '0.00', '1|Php|2|.|,|2|1', 'USD', '{storename}\r\n{address_1}\r\n{address_2}\r\n{city}, {zip}', '%A, %d %B %Y %H:%M');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_vendor_category`
--

CREATE TABLE IF NOT EXISTS `jos_vm_vendor_category` (
  `vendor_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_category_name` varchar(64) DEFAULT NULL,
  `vendor_category_desc` text,
  PRIMARY KEY (`vendor_category_id`),
  KEY `idx_vendor_category_category_name` (`vendor_category_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='The categories that vendors are assigned to' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jos_vm_vendor_category`
--

INSERT INTO `jos_vm_vendor_category` (`vendor_category_id`, `vendor_category_name`, `vendor_category_desc`) VALUES
(6, '-default-', 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_waiting_list`
--

CREATE TABLE IF NOT EXISTS `jos_vm_waiting_list` (
  `waiting_list_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notify_email` varchar(150) NOT NULL DEFAULT '',
  `notified` enum('0','1') DEFAULT '0',
  `notify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`waiting_list_id`),
  KEY `product_id` (`product_id`),
  KEY `notify_email` (`notify_email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores notifications, users waiting f. products out of stock' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_zone_shipping`
--

CREATE TABLE IF NOT EXISTS `jos_vm_zone_shipping` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(255) DEFAULT NULL,
  `zone_cost` decimal(10,2) DEFAULT NULL,
  `zone_limit` decimal(10,2) DEFAULT NULL,
  `zone_description` text NOT NULL,
  `zone_tax_rate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='The Zones managed by the Zone Shipping Module' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jos_vm_zone_shipping`
--

INSERT INTO `jos_vm_zone_shipping` (`zone_id`, `zone_name`, `zone_cost`, `zone_limit`, `zone_description`, `zone_tax_rate`) VALUES
(1, 'Default', '6.00', '35.00', 'This is the default Shipping Zone. This is the zone information that all countries will use until you assign each individual country to a Zone.', 2),
(2, 'Zone 1', '1000.00', '10000.00', 'This is a zone example', 2),
(3, 'Zone 2', '2.00', '22.00', 'This is the second zone. You can use this for notes about this zone', 2),
(4, 'Zone 3', '11.00', '64.00', 'Another usefull thing might be details about this zone or special instructions.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `jos_weblinks`
--

CREATE TABLE IF NOT EXISTS `jos_weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jos_weblinks`
--

INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES
(1, 2, 0, 'Joomla!', 'joomla', 'http://www.joomla.org', 'Home of Joomla!', '2005-02-14 15:19:02', 3, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=0'),
(2, 2, 0, 'php.net', 'php', 'http://www.php.net', 'The language that Joomla! is developed in', '2004-07-07 11:33:24', 6, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, ''),
(3, 2, 0, 'MySQL', 'mysql', 'http://www.mysql.com', 'The database that Joomla! uses', '2004-07-07 10:18:31', 1, 1, 0, '0000-00-00 00:00:00', 5, 0, 1, ''),
(4, 2, 0, 'OpenSourceMatters', 'opensourcematters', 'http://www.opensourcematters.org', 'Home of OSM', '2005-02-14 15:19:02', 11, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 'target=0'),
(5, 2, 0, 'Joomla! - Forums', 'joomla-forums', 'http://forum.joomla.org', 'Joomla! Forums', '2005-02-14 15:19:02', 4, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, 'target=0'),
(6, 2, 0, 'Ohloh Tracking of Joomla!', 'ohloh-tracking-of-joomla', 'http://www.ohloh.net/projects/20', 'Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.', '2007-07-19 09:28:31', 1, 1, 0, '0000-00-00 00:00:00', 6, 0, 1, 'target=0\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `product_category_xref`
--

CREATE TABLE IF NOT EXISTS `product_category_xref` (
  `category_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `product_list` int(11) DEFAULT NULL,
  KEY `idx_product_category_xref_category_id` (`category_id`),
  KEY `idx_product_category_xref_product_id` (`product_id`),
  KEY `idx_product_category_xref_product_list` (`product_list`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
