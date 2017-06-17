-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июн 17 2017 г., 12:28
-- Версия сервера: 10.1.9-MariaDB
-- Версия PHP: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `giftcards`
--

-- --------------------------------------------------------

--
-- Структура таблицы `gift_assets`
--

CREATE TABLE `gift_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_assets`
--

INSERT INTO `gift_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 113, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 22, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 23, 24, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 25, 26, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 27, 28, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 29, 30, 1, 'com_login', 'com_login', '{}'),
(13, 1, 31, 32, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 33, 34, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 35, 36, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 37, 38, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 39, 40, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 41, 82, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 83, 86, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 87, 88, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 89, 90, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 91, 92, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 93, 94, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 95, 98, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 99, 100, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 21, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 84, 85, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 96, 97, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 101, 102, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 103, 104, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 105, 106, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 107, 108, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 109, 110, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 111, 112, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 42, 43, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 18, 44, 45, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 46, 47, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 48, 49, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 50, 51, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 52, 53, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 54, 55, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 56, 57, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 58, 59, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 60, 61, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 62, 63, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 64, 65, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 66, 67, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 68, 69, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 70, 71, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 18, 72, 73, 2, 'com_modules.module.87', 'კატეგორიების მოდული', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(55, 18, 74, 75, 2, 'com_modules.module.88', 'ქვედა მენიუ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(56, 27, 19, 20, 3, 'com_content.article.1', 'წესები და პირობები', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(57, 18, 76, 77, 2, 'com_modules.module.89', 'ფუტერი', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(58, 18, 78, 79, 2, 'com_modules.module.90', 'კატეგორიები', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(59, 18, 80, 81, 2, 'com_modules.module.91', 'ზედა მენიუ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}');

-- --------------------------------------------------------

--
-- Структура таблицы `gift_associations`
--

CREATE TABLE `gift_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_banners`
--

CREATE TABLE `gift_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_banners`
--

INSERT INTO `gift_banners` (`id`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `clickurl`, `state`, `catid`, `description`, `custombannercode`, `sticky`, `ordering`, `metakey`, `params`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `reset`, `created`, `language`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `version`) VALUES
(1, 0, 0, 'fghgfhgh', 'fghgfhgh', 0, 0, 0, '', 1, 3, '', '', 0, 1, '', '{"imageurl":"","width":"","height":"","alt":""}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-02-15 18:50:35', '*', 160, '', '0000-00-00 00:00:00', 0, 1),
(2, 0, 0, 'fghfghghghhfghfhg', 'fghfghghghhfghfhg', 0, 0, 0, '', 1, 3, '', '', 0, 2, '', '{"imageurl":"","width":"","height":"","alt":""}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-02-15 18:50:51', '*', 160, '', '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `gift_banner_clients`
--

CREATE TABLE `gift_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_banner_tracks`
--

CREATE TABLE `gift_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_categories`
--

CREATE TABLE `gift_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_categories`
--

INSERT INTO `gift_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `gift_contact_details`
--

CREATE TABLE `gift_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
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
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_content`
--

CREATE TABLE `gift_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_content`
--

INSERT INTO `gift_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 56, 'წესები და პირობები', 'terms-and-conditions', '<h1>წესები და პირობები</h1>\r\n<p> </p>\r\n<div>\r\n<p>ჩვენი ვებ გვერდის მეშვეობით თქვენ შეგიძლიათ ონლაინ რეჟიმში შეარჩიოთ სასურველი ბრენდის ან მაღაზიის სასაჩუქრე ბარათი და გაუგზავნოთ სასურველ ადრესატს ელექტრონული ან ფიზიკური ფორმით</p>\r\n<p> </p>\r\n<p>სასაჩუქრე ვაუჩერის შეძენის და გადახდის განხორციელების დროს ხარვეზების თავიდან ასაცილებლად, გთხოვთ სრულყოფილად გაეცნოთ და ყურადღებით გადაამოწმოთ თქვენს მიერ შეყვანილი ინფორმაციის სიზუსტე.</p>\r\n<p>საიტზე არ არის საჭირო რეგისტრაციის გავლა. ამიტომ აუცილებელია გადახდისას აუცილელად მიუთითოთ თქვენი ელ-ფოსტის მისამართი სადაც გადმოგეგზავნებათ დასტური გადახდის შესახებ და ლინკი ვაუჩერზე გადასასვლელად.</p>\r\n<p> </p>\r\n<p> <a href="http://www.siurpriz.ge/">www.siurpriz.ge</a> –ზე გადახდასთან დაკავშირებით  წარმოქმნილი შეკითხვების შემთხვევაში გთხოვთ გამოიყენოთ შემდეგი ინფორმაცია ტელეფონი:+995 558 24 44 88 ელ–ფოსტა: info.siurpriz.ge საიტის ცხელი ხაზი მუშაობს ყოველ დღე დილის 10:00 საათიდან საღამოს 21:00 საათამდე. </p>\r\n<p>თავად ბრენდის ან მაღაზიის მომსახურებასთან დაკავშირებული შეკითხვების შემთხვევაში დაუკავშირდით თავად მაღაზიას ცხელი ხაზის ნომერზე. </p>\r\n<h2>სასაჩურე ვაუჩერის  შეძენის წესები და პირობები.</h2>\r\n<p>ვებ გვერდზე თქვენ გაქვთ შესაძლებლობა შეიძინოთ სასურველი ბრენდის ან მაღაზიის ფულადი ვაუჩერი რომელსაც გამოიყენებთ ამ ბრენდის ნებისმიერ ფილალში. თავად ვაუჩერის ფასს განსაზღვრავთ თქვენ თვითონ შესაბამის ველში თანხის მითითებით. ვაუჩერის შეძენა შეძენა ხორციელდება  ქართული Visa ან MasterCard პლასტიკური ბარათების საშუალებით.</p>\r\n<p>ბრენდის ან მაღაზიის მომსახურებასთან დაკავშირებული შეკითხვების შემთხვევაში დაუკავშირდით თავად მაღაზიას ცხელი ხაზის ნომერზე.</p>\r\n<p>ვაუჩერის შეძნის დასრულების შემდეგ, დაგენერირდება უნიკალური 5 ნიშნა კოდი. რომელსაც ადრესატი წარადგენს მაღაზიში და მიიღებს პროდუქტს ან მომსახურებას.</p>\r\n<p> </p>\r\n<p>სასაჩუქრე ბარათის შესაძენად აუცილებელია აირჩიოთ. ბარათის ტიპი ( მობიური, ელ-ფოსტით ან ფიზიკური შეკვეთა ). მიუთითო გამგზავნი, შეძენამდე აუცილებელია პორტალზე მიუთითოთ თქვენი თქვენი სახელი, გვარი, ელ-ფოსტის და საკონტაქტო ტელეფონის მონაცემები. ყურადღება მიაქციეთ ინფორმაციის სისწორეს, რადგან მითითებულ ელ-ფოსტაზე გადმოგეგზავნებათ დასტური და ინფორმაცია ვაუჩერის შესახებ, ასევე ლინკი ვაუჩერზე გადასვლელად. </p>\r\n<p>მომსახურებით სარგებლობისთვის ადრესატმა საკმარისია წარადგნინოს მისტვის დაგენერირებული 5 ნიშნა კოდი</p>\r\n<p> </p>\r\n<p>ვაუჩერის შეძენა შეძენა ხორციელდება  ქართული Visa ან MasterCard პლასტიკური ბარათების საშუალებით</p>\r\n<p> </p>\r\n<p>ტრანზაქციის წარმატებით დასრულების შემდეგ თქვენ გამოგეგზავნებათ ინფორმაცია შეძენილი ვაუჩერის შესახებ შესახებ ასევე ლინკი ვაუჩერზე გადასასვლელად. </p>\r\n<p>ვაუჩერში გადახდილი თანხა უკან არ ბრუნდება</p>\r\n</div>', '', 1, 2, '2016-02-28 21:12:16', 160, '', '2016-03-20 16:51:15', 160, 160, '2016-03-20 16:51:15', '2016-02-28 21:12:16', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"0","show_tags":"0","show_intro":"0","info_block_position":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_vote":"0","show_hits":"0","show_noauth":"0","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 11, 0, '', '', 1, 165, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `gift_contentitem_tag_map`
--

CREATE TABLE `gift_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Структура таблицы `gift_content_frontpage`
--

CREATE TABLE `gift_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_content_rating`
--

CREATE TABLE `gift_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_content_types`
--

CREATE TABLE `gift_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_content_types`
--

INSERT INTO `gift_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Структура таблицы `gift_core_log_searches`
--

CREATE TABLE `gift_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_extensions`
--

CREATE TABLE `gift_extensions` (
  `extension_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_extensions`
--

INSERT INTO `gift_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"8144853f7d73f8d088068a7a3a8b4757"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.6","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.7","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"skin":"0","skin_admin":"0","mode":"2","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","resize_horizontal":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","image_advtab":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `gift_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"December 2015","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.8","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(701, 'com_gift', 'component', 'com_gift', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(702, 'jisrael', 'template', 'jisrael', '', 1, 1, 1, 0, '{"name":"jisrael","type":"template","creationDate":"5\\/11\\/2014","author":"Itamar Elharar","copyright":"Copyright (C) 2014 Itamar Elharar. All rights reserved.","authorEmail":"eitamar@j-guru.org","authorUrl":"","version":"1.0.1","description":"TPL_JISRAEL_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"loginTemplateColor":"#165387","loginTemplateColor2":"#142849","loginLogoFile":"","loginCustomText":"","templateColor":"#13294A","headerColor":"#34373c","sidebarColor":"#0088CC","logoFile":"","admin_menus":"1","displayHeader":"1","statusFixed":"1","stickyToolbar":"1","font":"alef"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(703, 'gift', 'template', 'gift', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(704, '', 'module', '', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(705, 'mod_categories', 'module', 'mod_categories', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(706, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_filters`
--

CREATE TABLE `gift_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_links`
--

CREATE TABLE `gift_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_links_terms0`
--

CREATE TABLE `gift_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_links_terms1`
--

CREATE TABLE `gift_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_links_terms2`
--

CREATE TABLE `gift_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_links_terms3`
--

CREATE TABLE `gift_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_links_terms4`
--

CREATE TABLE `gift_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_links_terms5`
--

CREATE TABLE `gift_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_links_terms6`
--

CREATE TABLE `gift_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_links_terms7`
--

CREATE TABLE `gift_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_links_terms8`
--

CREATE TABLE `gift_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_links_terms9`
--

CREATE TABLE `gift_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_links_termsa`
--

CREATE TABLE `gift_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_links_termsb`
--

CREATE TABLE `gift_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_links_termsc`
--

CREATE TABLE `gift_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_links_termsd`
--

CREATE TABLE `gift_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_links_termse`
--

CREATE TABLE `gift_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_links_termsf`
--

CREATE TABLE `gift_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_taxonomy`
--

CREATE TABLE `gift_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_finder_taxonomy`
--

INSERT INTO `gift_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_taxonomy_map`
--

CREATE TABLE `gift_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_terms`
--

CREATE TABLE `gift_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_terms_common`
--

CREATE TABLE `gift_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_finder_terms_common`
--

INSERT INTO `gift_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_tokens`
--

CREATE TABLE `gift_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_tokens_aggregate`
--

CREATE TABLE `gift_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_finder_types`
--

CREATE TABLE `gift_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_gallery`
--

CREATE TABLE `gift_gallery` (
  `id` int(11) NOT NULL,
  `gift_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` tinyint(4) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_gallery`
--

INSERT INTO `gift_gallery` (`id`, `gift_id`, `name`, `price`, `published`, `ordering`, `img`) VALUES
(6, 23, 'სურათი - 1', '', 1, 1, 'images/magaziebi/gallery/medi/item-1.png'),
(7, 23, 'სურათი - 3', '', 1, 3, 'images/magaziebi/gallery/medi/item-3.png'),
(8, 23, 'სურათი - 2', '', 1, 2, 'images/magaziebi/gallery/medi/item-2.png'),
(9, 24, 'სურათი - 1', '', 1, 4, 'images/magaziebi/gallery/axmeteli/item-1.jpg'),
(10, 24, 'სურათი - 2', '', 1, 5, 'images/magaziebi/gallery/axmeteli/item-2.jpg'),
(11, 24, 'სურათი - 3', '', 1, 6, 'images/magaziebi/gallery/axmeteli/item-3.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `gift_gifcards`
--

CREATE TABLE `gift_gifcards` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `list_image` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL,
  `website` varchar(255) NOT NULL,
  `fb_address` varchar(255) NOT NULL,
  `hot_line` varchar(255) NOT NULL,
  `minimum_amount` varchar(255) NOT NULL,
  `maximum_amount` varchar(255) NOT NULL,
  `amounts` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `big_image` varchar(255) NOT NULL,
  `checked_out` int(10) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `modified_by` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_gifcards`
--

INSERT INTO `gift_gifcards` (`id`, `group_id`, `name`, `alias`, `slogan`, `description`, `list_image`, `published`, `ordering`, `website`, `fb_address`, `hot_line`, `minimum_amount`, `maximum_amount`, `amounts`, `currency`, `big_image`, `checked_out`, `checked_out_time`, `modified_by`) VALUES
(23, 6, 'მედი', 'medi', 'არ იცით რა აჩუქოთ საყვარელ ადამიანს,მეგობარს ან თანამშრომელს?', '<p>გაუკეთეთ  დაუვიწყარი საჩუქარი ქალბატონებს!</p>\r\n<p> </p>\r\n<p>კლინიკა „მედი“ თბილისში 1998 წლიდან ფუნქციონირებს; იგი წარმოადგენს სანკტ-პეტერბურგსა და პრაღაში წარმატებული „მედი-ესთეტიკის კლინიკათა ჯგუფის“ წევრს საქართველოში.</p>\r\n<p>100 000 -მდე კმაყოფილი პაციენტი, 10 000 წარმატებული პლასტიკური ოპერაცია, 12 ევროპული სტანდარტების ფილიალი თბილისში, ბათუმსა და ქუთაისში და რაც მთავარია, უკვე ათწლეულის განმავლობაში მტკიცედ დამკვიდრებული „საიმედო ბრენდი-კლინიკა მედი“ - ასეთია დღეს-დღეობით კლინიკა „ მედი“ მიერ სამართლიანად დაგროვებული აქტივები საქართველოში;</p>\r\n<p>კლინიკაში წარმოდგენილია ესთეტიკური მედიცინის აბსოლუტური სპექტრი: პლასტიკური ქირურგია, კოსმეტოლოგია, სტომატოლოგია, გინეკოლოგია, რეაბილიტაციის ცენტრი (სპა და ფიტნესი); აქვე ყველაზე დიდი ყურადღება ეთმობა სახისა და სხეულის როგორც ქირურგიულ, ისე კოსმეტოლოგიურ გაახალგაზრდავებას, მოდელირებას, კორექციას;</p>\r\n<p>ესთეტიკური მედიცინის სფეროში ბევრი ინოვაციური მეთოდოლოგია და ტექნოლოგია პირდაპირ უკავშირდება „მედი-ესთეტიკის კლინიკათა ჯგუფის“ დამფუძნებლების, ქალბატონი მარინა და ბატონი გიორგი მჭედლიძეების სახელს; უშუალოდ მათ მიერ ესთეტიკური მედიცინიაში დანერგილ სტანდარტებს საქართველოში ბევრი მიმდევარი ჰყავს. ფაქტიურად საქართველოს ესთეტიკური მედიცინის ბაზარზე დღეს მოთამაშე კლინიკებისა და ცენტრების 80% კლინიკა „მედის“ მიერ აღზრდილი კადრებით ფუნქციონირებს.</p>\r\n<p>სასაჩუქრე ვაუჩერის გამოყენება შესაძლებელია კლინიკა მედის ნებისმიერ ფილიალში, ყველა სახის მომსახურებაზე. </p>\r\n<p> </p>\r\n<p> </p>', 'images/magaziebi/list/MEDI.png', 1, 1, 'http://www.medi.ge', 'https://www.facebook.com/mediEST', '+995 322 910 000', '60', '150', '50;100;150;200;300;500', 'GEL', 'images/magaziebi/details/medi.png', 0, '0000-00-00 00:00:00', 0),
(24, 5, 'ახმეტელის თეატრი', 'axmetelis-teatri', 'საუკეთესო საჩუქარი საყვარელი ადამიანისათვის', '', 'images/magaziebi/list/axmetelis-teatri.png', 1, 5, 'fsdfsdf', 'sdfsd', 'fsfsd', '200', 'fsdfds', '', 'GEL', 'images/magaziebi/details/axmetelis-teatri.jpg', 0, '0000-00-00 00:00:00', 0),
(25, 7, 'მოგზაურობა', 'davinci', 'საუკეთესო საჩუქარი საყვარელი ადამიანისათვის', '<p>fthfghgfhfghfgh  fgh fgh fgh ghf gh fghfhfgh fghfghfghfghgfhfgh</p>', 'images/magaziebi/list/travel.jpg', 1, 8, 'https://www.facebook.com/Zara?ref=nf', 'https://www.facebook.com/Zara?ref=nf', '+995598602084', '100', '2', '', 'GEL', 'images/magaziebi/details/davinci.jpg', 0, '0000-00-00 00:00:00', 0),
(26, 3, 'კავეა', 'cavea', 'საუკეთესო საჩუქარი საყვარელი ადამიანისათვის', '', 'images/magaziebi/list/cavea.png', 1, 4, 'www.cavea.ge', 'https://www.facebook.com/cavea.ge/', '+995598602084', '50', 'fsdfsd', '', 'GEL', 'images/magaziebi/details/cavea.jpg', 0, '0000-00-00 00:00:00', 0),
(27, 4, 'ქალთა ბედნიერება', 'vulevu', 'საუკეთესო საჩუქარი საყვარელი ადამიანისათვის', '', 'images/magaziebi/list/qalta-bedniereba.png', 1, 2, 'dfgdfg', 'dfgd', 'fgdfg', '150', 'dfgdf', '', 'GEL', 'images/magaziebi/details/qalta-bedniereba.png', 0, '0000-00-00 00:00:00', 0),
(28, 7, 'L WOOD', 'arttime', 'საუკეთესო საჩუქარი საყვარელი ადამიანისათვის', '', 'images/magaziebi/list/glassess.jpg', 1, 7, 'www.nike.com', 'www.facebook.com/nike', '+995598602084', '150', '1000', '', 'GEL', 'images/magaziebi/details/nike.jpg', 0, '0000-00-00 00:00:00', 0),
(29, 7, 'ხელნაკეთი ნივთები', 'gulf', 'საუკეთესო საჩუქარი საყვარელი ადამიანისათვის', '<p>სასაჩუქრე ვაუჩერის შეძენის და გადახდის განხორციელების დროს ხარვეზების თავიდან ასაცილებლად, გთხოვთ სრულყოფილად გაეცნოთ და ყურადღებით გადაამოწმოთ თქვენს მიერ შეყვანილი ინფორმაციის სიზუსტე.</p>\r\n<p> </p>\r\n<p>საიტზე არ არის საჭირო რეგისტრაციის გავლა. ამიტომ აუცილებელია გადახდისას აუცილელად მიუთითოთ თქვენი ელ-ფოსტის მისამართი სადაც გადმოგეგზავნებათ დასტური გადახდის შესახებ და ლინკი ვაუჩერზე გადასასვლელად.</p>\r\n<p> </p>', 'images/magaziebi/list/hand-made.jpg', 1, 3, 'sdfsdfds', 'sdfsdfsd', '+995598602084', '150', '1000', '', 'GEL', 'images/magaziebi/details/handmade.jpg', 0, '0000-00-00 00:00:00', 0),
(30, 7, '4WD', '4x4', 'გაუკეთე საუკეთესო საჩუქარი ავტომოყვარულებს ', '<p>გაუკეთე საუკეთესო საჩუქარი ავტომოყვარულებს </p>\r\n<p> </p>\r\n<p>ჩვენი მაღაზია <strong>4wd shop</strong> ავტომოყვარულების მიერაა ჩამოყალიბებული. ჩვენ ვიცით და ვაფასებთ ხარისხიან ატრიბუტიკასა და ნაწილებს.</p>\r\n<p> </p>\r\n<p>ყოველი დეტალი, რომელიც შეგიძლიათ ჩვენს მაღაზიაში შეიძინოთ დატესტილია, ხოლო მათი აუცილებლობა და ხარისხი ჩვენს მიერ შესწავლილია.</p>\r\n<p> </p>\r\n<p><strong>4wd shop</strong> ითვალისწინებს ექსტრემალურ თუ უსაფრთხო გადაადგილების ყველა პრინციპს და გთავაზობთ თქვენი 4x4 ავტომობილის აღჭურვისათვის საუკეთესო გადაწყვეტილებას.</p>\r\n<p> </p>\r\n<p>ჩვენთან შეძენილი ნებისმიერი პროდუქტის გარანტია გახლავთ მისივე ხარისხი.</p>\r\n<p> </p>\r\n<p><strong>4wd shop</strong>-ში ასევე შეგიძლიათ მიიღოთ კონსულტაცია იმის შესახებ, თუ როგორ მოამზადოთ თქვენი მანქანა - ექსტრემალური შეჯიბრებების, სამონადირეო, საექსპედიციო თუ ძალიან რთული ოფფ-როად მარშრუტებისათვის.</p>\r\n<p>სხვა ვერც ერთ მაღაზიაში თქვენ ვერ გაგიწევენ კონსულტაციას ისე როგორც ჩვენთან.</p>\r\n<p>ჩვენმა გუნდმა იცის თუ რა შესაძლებლობები აქვს 4x4 მანქანებს და როგორ შეიძლება გამოიყენოთ თქვენი ავტომობილის მოცემულობა ოპტიმალურად.</p>\r\n<p>ჩვენი გამოცდილება 4x4 ავტომობილებისა და ავტოსპორტის სფეროში 6 წელიწადზე მეტს ითვლის.</p>\r\n<p> </p>\r\n<p>მისამართი: ა. კერესელიძის ქუჩა 26. თბილისი 0154, საქართველო</p>\r\n<p>მაღაზიის ცხელი ხაზი: +995 32 2144 551</p>\r\n<p> </p>', 'images/magaziebi/list/4x4.png', 1, 6, 'http://www.4wd.ge/', 'https://www.facebook.com/4wdshop', '+995 32 2144 551', '50', '1000', '', 'GEL', 'images/magaziebi/details/4x4.jpg', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `gift_groups`
--

CREATE TABLE `gift_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` tinyint(4) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_groups`
--

INSERT INTO `gift_groups` (`id`, `name`, `alias`, `published`, `ordering`, `img`) VALUES
(3, 'კინო', 'cinema', 1, 4, 'images/categories/cinema.png'),
(4, 'პარფიუმერია', 'parfium', 1, 2, 'images/categories/beauty.png'),
(5, 'თეატრი', 'theater', 1, 3, 'images/categories/theater.png'),
(6, 'ჯამრთ. სილამაზე', 'estetic', 1, 1, 'images/categories/estetic.png'),
(7, 'სხვადასხვა', 'various', 1, 5, 'images/categories/various.png'),
(8, 'ყველა', 'all', 1, 6, 'images/categories/all.png');

-- --------------------------------------------------------

--
-- Структура таблицы `gift_languages`
--

CREATE TABLE `gift_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_languages`
--

INSERT INTO `gift_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `gift_menu`
--

CREATE TABLE `gift_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_menu`
--

INSERT INTO `gift_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 51, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 33, 34, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 35, 36, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 37, 38, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'მთავარი', 'home', '', 'home', 'index.php?option=com_gift&view=gift', 'component', 1, 1, 1, 701, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 0, '*', 0),
(102, 'menu', 'com_gift', 'Gift', '', 'Gift', 'index.php?option=com_gift', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(103, 'mainmenu', 'წესები და პირობები', 'terms-and-conditions', '', 'terms-and-conditions', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 43, 44, 0, '*', 0),
(104, 'header-menu', 'მთვარი', 'giftcards', '', 'giftcards', 'index.php?option=com_gift&view=gift', 'component', 1, 1, 1, 701, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 45, 46, 1, '*', 0),
(105, 'header-menu', 'როგორ მუშაობს?', 'how-it-works', '', 'how-it-works', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 0, '*', 0),
(106, 'header-menu', 'FAQ', 'questions', '', 'questions', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 49, 50, 0, '*', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `gift_menu_types`
--

CREATE TABLE `gift_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_menu_types`
--

INSERT INTO `gift_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'header-menu', 'Header Menu', 'Header Menu');

-- --------------------------------------------------------

--
-- Структура таблицы `gift_messages`
--

CREATE TABLE `gift_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_messages_cfg`
--

CREATE TABLE `gift_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_modules`
--

CREATE TABLE `gift_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_modules`
--

INSERT INTO `gift_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 2, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 54, 'კატეგორიების მოდული', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_categories', 1, 1, '{"label":"","width":"","text":"","button":"0","button_pos":"left","imagebutton":"0","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 55, 'ქვედა მენიუ', '', '', 1, 'footer_menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 57, 'ფუტერი', '', '', 1, 'footer_menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_footer', 1, 1, '{"label":"","width":"","text":"","button":"0","button_pos":"left","imagebutton":"0","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 58, 'კატეგორიები', '', '', 1, 'categories', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_categories', 1, 1, '{"label":"","width":"","text":"","button":"0","button_pos":"left","imagebutton":"0","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 59, 'ზედა მენიუ', '', '', 1, 'header_menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"header-menu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `gift_modules_menu`
--

CREATE TABLE `gift_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_modules_menu`
--

INSERT INTO `gift_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 101),
(88, 101),
(88, 103),
(88, 104),
(89, 101),
(89, 103),
(90, 101),
(90, 103),
(90, 104),
(91, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `gift_newsfeeds`
--

CREATE TABLE `gift_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_orders`
--

CREATE TABLE `gift_orders` (
  `id` int(11) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `gift_id` int(11) NOT NULL,
  `destinnation` tinyint(4) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `deliver` decimal(10,0) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `create_datetime` datetime NOT NULL,
  `pay_datetime` datetime NOT NULL,
  `sender_fullname` varchar(255) NOT NULL,
  `sender_mobile` varchar(255) NOT NULL,
  `sender_email` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `error` text NOT NULL,
  `sms_response` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_orders`
--

INSERT INTO `gift_orders` (`id`, `payment_id`, `gift_id`, `destinnation`, `amount`, `deliver`, `mobile`, `email`, `date`, `create_datetime`, `pay_datetime`, `sender_fullname`, `sender_mobile`, `sender_email`, `text`, `published`, `status`, `error`, `sms_response`) VALUES
(1, '', 23, 1, '50', '0', '598602084', '', '2016-03-24 20:00:00', '2016-03-24 19:03:17', '0000-00-00 00:00:00', 'ბიბისგან', 'giorgi.bibilashvili89@gmail.com', '598602084', 'დფსდფსდ დსფ სდ ფდაფ სდფ სდფ ადსფ ასდფ დსფ დს დს დსფ დს ფსდფ ადსფ სდფ აფ დსფ ასდ ფსდფ სადფ დსფ დფ დსაფ ასდფ ადსფ სდფ სდაფ ასდფ ადსფ ასდფ დსფდსჯჰბდსფჯჰბფ დ ფბჯბფ კჯფბდსჯკფბსფბ კდსჯფბდსჯკფბსკჯდფბსდჯფბ კჯსდბფ კჯსდბფკჯდსბფდსჯბფდსკჯფბდსფ', 1, 0, '', ''),
(2, '', 26, 1, '150', '0', '598602084', 'giorgi.bibilashvili89@gmail.cm', '2016-11-26 10:00:00', '2016-11-26 09:11:42', '0000-00-00 00:00:00', 'girgrigdgdfgdfgdfg', 'sdfsd', 'fsdfsdfsdf', 'asdbhjfbdsfbsdfgdfg sdfgdfgdfgdfdfgdfgdfg fdkfsdbdsfsdfsdf', 1, 0, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `gift_overrider`
--

CREATE TABLE `gift_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_postinstall_messages`
--

CREATE TABLE `gift_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_postinstall_messages`
--

INSERT INTO `gift_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `gift_redirect_links`
--

CREATE TABLE `gift_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_schemas`
--

CREATE TABLE `gift_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_schemas`
--

INSERT INTO `gift_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.4.0-2015-02-26');

-- --------------------------------------------------------

--
-- Структура таблицы `gift_session`
--

CREATE TABLE `gift_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_session`
--

INSERT INTO `gift_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('94dg3rjp1d7tklv7p9eq0usok7', 0, 1, '1497294273', 'joomla|s:1452:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aTozO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTQ5NzI5NDE2ODtzOjQ6Imxhc3QiO2k6MTQ5NzI5NDE3MDtzOjM6Im5vdyI7aToxNDk3Mjk0MjczO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoyNjp7czo5OiIAKgBpc1Jvb3QiO047czoyOiJpZCI7aTowO3M6NDoibmFtZSI7TjtzOjg6InVzZXJuYW1lIjtOO3M6NToiZW1haWwiO047czo4OiJwYXNzd29yZCI7TjtzOjE0OiJwYXNzd29yZF9jbGVhciI7czowOiIiO3M6NToiYmxvY2siO047czo5OiJzZW5kRW1haWwiO2k6MDtzOjEyOiJyZWdpc3RlckRhdGUiO047czoxMzoibGFzdHZpc2l0RGF0ZSI7TjtzOjEwOiJhY3RpdmF0aW9uIjtOO3M6NjoicGFyYW1zIjtOO3M6NjoiZ3JvdXBzIjthOjE6e2k6MDtzOjE6IjkiO31zOjU6Imd1ZXN0IjtpOjE7czoxMzoibGFzdFJlc2V0VGltZSI7TjtzOjEwOiJyZXNldENvdW50IjtOO3M6MTI6InJlcXVpcmVSZXNldCI7TjtzOjEwOiIAKgBfcGFyYW1zIjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjE0OiIAKgBfYXV0aEdyb3VwcyI7TjtzOjE0OiIAKgBfYXV0aExldmVscyI7YTozOntpOjA7aToxO2k6MTtpOjE7aToyO2k6NTt9czoxNToiACoAX2F1dGhBY3Rpb25zIjtOO3M6MTI6IgAqAF9lcnJvck1zZyI7TjtzOjEzOiIAKgB1c2VySGVscGVyIjtPOjE4OiJKVXNlcldyYXBwZXJIZWxwZXIiOjA6e31zOjEwOiIAKgBfZXJyb3JzIjthOjA6e31zOjM6ImFpZCI7aTowO319fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `gift_tags`
--

CREATE TABLE `gift_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_tags`
--

INSERT INTO `gift_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 42, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `gift_template_styles`
--

CREATE TABLE `gift_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_template_styles`
--

INSERT INTO `gift_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'jisrael', 1, '0', 'JISRAEL Administrator template - Default', '{"loginTemplateColor":"#165387","loginTemplateColor2":"#142849","loginLogoFile":"","loginCustomText":"","templateColor":"#13294A","headerColor":"#34373c","sidebarColor":"#0088CC","logoFile":"","admin_menus":"1","displayHeader":"1","statusFixed":"1","stickyToolbar":"1","font":"alef"}'),
(10, 'gift', 0, '1', 'gift - Default', '\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `gift_ucm_base`
--

CREATE TABLE `gift_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_ucm_content`
--

CREATE TABLE `gift_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Структура таблицы `gift_ucm_history`
--

CREATE TABLE `gift_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_ucm_history`
--

INSERT INTO `gift_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 9, '', '2016-02-15 18:50:35', 160, 643, 'b51661d5fe42578a3bbfee21e0bc4b0f4e781e12', '{"id":1,"cid":"0","type":"0","name":"fghgfhgh","alias":"fghgfhgh","imptotal":0,"impmade":"0","clicks":"0","clickurl":false,"state":"1","catid":"3","description":"","custombannercode":"","sticky":"0","ordering":1,"metakey":"","params":"{\\"imageurl\\":\\"\\",\\"width\\":\\"\\",\\"height\\":\\"\\",\\"alt\\":\\"\\"}","own_prefix":"0","metakey_prefix":"","purchase_type":"-1","track_clicks":"0","track_impressions":"0","checked_out":null,"checked_out_time":null,"publish_up":"","publish_down":"","reset":"''2016-03-15 00:00:00''","created":"2016-02-15 18:50:35","language":"*","created_by":"160","created_by_alias":"","modified":"","modified_by":null,"version":1}', 0),
(2, 2, 9, '', '2016-02-15 18:50:51', 160, 661, '445db62ba883ff6ff01a3f39d66ae11c34dfd1e8', '{"id":2,"cid":"0","type":"0","name":"fghfghghghhfghfhg","alias":"fghfghghghhfghfhg","imptotal":0,"impmade":"0","clicks":"0","clickurl":false,"state":"1","catid":"3","description":"","custombannercode":"","sticky":"0","ordering":2,"metakey":"","params":"{\\"imageurl\\":\\"\\",\\"width\\":\\"\\",\\"height\\":\\"\\",\\"alt\\":\\"\\"}","own_prefix":"0","metakey_prefix":"","purchase_type":"-1","track_clicks":"0","track_impressions":"0","checked_out":null,"checked_out_time":null,"publish_up":"","publish_down":"","reset":"''2016-03-15 00:00:00''","created":"2016-02-15 18:50:51","language":"*","created_by":"160","created_by_alias":"","modified":"","modified_by":null,"version":1}', 0),
(3, 1, 1, '', '2016-02-28 21:12:16', 160, 27176, 'c92783ebdbffd2a1fbf907d2f96231abd9d68ae6', '{"id":1,"asset_id":56,"title":"\\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8","alias":"2016-02-28-21-12-16","introtext":"<h1 style=\\"margin: 0px 0px 30px; padding: 0px 0px 14px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #cccccc; box-sizing: border-box; font-weight: 300; font-stretch: inherit; font-size: 24px; line-height: 24px; font-family: dejavusans-extralight; vertical-align: baseline; color: #4c4c4c; letter-spacing: -1px; background-color: #f2f2f2;\\">\\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8<\\/h1>\\r\\n<div style=\\"margin: 0px; padding: 0px; border: 0px; box-sizing: border-box; font-stretch: inherit; font-size: 10px; line-height: 10px; font-family: ''Times New Roman''; vertical-align: baseline; color: #000000; background-color: #f2f2f2;\\">\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10de\\u10dd\\u10e0\\u10e2\\u10d0\\u10da\\u10d8 \\u10d2\\u10d7\\u10d0\\u10d5\\u10d0\\u10d6\\u10dd\\u10d1\\u10d7 \\u10d5\\u10d4\\u10d1-\\u10d2\\u10d5\\u10d4\\u10e0\\u10d3\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e8\\u10e3\\u10d0\\u10da\\u10d4\\u10d1\\u10d8\\u10d7 Online \\u10e0\\u10d4\\u10df\\u10d8\\u10db\\u10e8\\u10d8 \\u10d0\\u10d3\\u10d2\\u10d8\\u10da\\u10dd\\u10d1\\u10e0\\u10d8\\u10d5\\u10d8 \\u10d9\\u10d8\\u10dc\\u10dd\\u10d7\\u10d4\\u10d0\\u10e2\\u10e0\\u10d4\\u10d1\\u10e8\\u10d8 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u10e1.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1 \\u10de\\u10e0\\u10dd\\u10ea\\u10d4\\u10d3\\u10e3\\u10e0\\u10d8\\u10e1\\u10d0 \\u10d3\\u10d0 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1 \\u10d2\\u10d0\\u10dc\\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d3\\u10e0\\u10dd\\u10e1 \\u10d9\\u10dd\\u10dc\\u10e4\\u10da\\u10d8\\u10e5\\u10e2\\u10e3\\u10e0\\u10d8 \\u10e1\\u10d8\\u10e2\\u10e3\\u10d0\\u10ea\\u10d8\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d7\\u10d0\\u10d5\\u10d8\\u10d3\\u10d0\\u10dc \\u10d0\\u10e1\\u10d0\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10da\\u10d0\\u10d3, \\u10d2\\u10d7\\u10ee\\u10dd\\u10d5\\u10d7 \\u10e1\\u10e0\\u10e3\\u10da\\u10e7\\u10dd\\u10e4\\u10d8\\u10da\\u10d0\\u10d3 \\u10d2\\u10d0\\u10d4\\u10ea\\u10dc\\u10dd\\u10d7 \\u10d8\\u10dc\\u10e2\\u10d4\\u10e0\\u10dc\\u10d4\\u10e2 \\u10d2\\u10d0\\u10e7\\u10d8\\u10d3\\u10d5\\u10d8\\u10e1 \\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10e1 \\u10d0\\u10dc \\u10d3\\u10d0\\u10d2\\u10d5\\u10d8\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d3\\u10d8\\u10d7.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d7\\u10e3 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d2\\u10d0\\u10e5\\u10d5\\u10d7 \\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8 \\u10e1\\u10d0\\u10d8\\u10e2\\u10d6\\u10d4 cinemax.ge \\u2013\\u10d6\\u10d4 \\u10dd\\u10de\\u10d4\\u10e0\\u10d8\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc \\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10d8\\u10d7 \\u10d2\\u10d7\\u10ee\\u10dd\\u10d5\\u10d7 \\u10d2\\u10d0\\u10db\\u10dd\\u10d8\\u10e7\\u10d4\\u10dc\\u10dd\\u10d7 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2\\u10d8 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10e2\\u10d4\\u10da\\u10d4\\u10e4\\u10dd\\u10dc\\u10d8:+995 32 2 193 195 \\u10d4\\u10da\\u2013\\u10e4\\u10dd\\u10e1\\u10e2\\u10d0:<span id=\\"cloak5399\\" style=\\"margin: 0px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\"><a style=\\"margin: 0px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\" href=\\"mailto:info@cinemax.ge\\">info@cinemax.ge<\\/a><\\/span>\\u00a0\\u10e1\\u10d0\\u10d8\\u10e2\\u10d8\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8 \\u10db\\u10e3\\u10e8\\u10d0\\u10dd\\u10d1\\u10e1 \\u10e7\\u10dd\\u10d5\\u10d4\\u10da \\u10d3\\u10e6\\u10d4 \\u10d3\\u10d8\\u10da\\u10d8\\u10e1 09:00 \\u10e1\\u10d0\\u10d0\\u10d7\\u10d8\\u10d3\\u10d0\\u10dc \\u10e1\\u10d0\\u10e6\\u10d0\\u10db\\u10dd\\u10e1 21:00 \\u10e1\\u10d0\\u10d0\\u10d7\\u10d0\\u10db\\u10d3\\u10d4.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10ee\\u10dd\\u10da\\u10dd \\u10d9\\u10d8\\u10dc\\u10dd\\u10d7\\u10d4\\u10d0\\u10e2\\u10e0\\u10e8\\u10d8, \\u10d3\\u10d0\\u10ef\\u10d0\\u10d5\\u10e8\\u10dc\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc, \\u10d3\\u10d0\\u10e0\\u10d1\\u10d0\\u10d6\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1, 3D \\u10e1\\u10d0\\u10d7\\u10d5\\u10d0\\u10da\\u10d4\\u10d4\\u10d1\\u10d8\\u10e1 \\u10db\\u10dd\\u10ee\\u10db\\u10d0\\u10e0\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d7\\u10e3 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1, \\u10d0\\u10dc \\u10e3\\u10e8\\u10e3\\u10d0\\u10da\\u10dd\\u10d3 \\u10d9\\u10d8\\u10dc\\u10dd\\u10d7\\u10d4\\u10d0\\u10e2\\u10e0\\u10d8\\u10e1 \\u10d0\\u10dc \\u10d9\\u10d8\\u10dc\\u10dd\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1 \\u10dc\\u10d4\\u10d1\\u10d8\\u10e1\\u10db\\u10d8\\u10d4\\u10e0\\u10d8 \\u10e1\\u10d0\\u10ee\\u10d8\\u10e1 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10db\\u10d8\\u10e1\\u10d0\\u10e6\\u10d4\\u10d1\\u10d0\\u10d3 \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10e1\\u10e2\\u10d0\\u10e2\\u10e3\\u10e1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10dd\\u10ec\\u10db\\u10d4\\u10d1\\u10d8\\u10e1\\u10d0\\u10d7\\u10d5\\u10d8\\u10e1 \\u10d3\\u10d0\\u10e0\\u10d4\\u10d9\\u10d4\\u10d7 \\u10d9\\u10d8\\u10dc\\u10dd\\u10d7\\u10d4\\u10d0\\u10e2\\u10e0\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10dd \\u10e1\\u10d0\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d8\\u10e1 \\u10dc\\u10dd\\u10db\\u10d4\\u10e0\\u10d6\\u10d4 \\u10e2\\u10d4\\u10da\\u10d4\\u10e4\\u10dd\\u10dc\\u10d8: +995 32 2 555 000<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<h2 style=\\"margin: 30px 0px 20px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 16px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1 \\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8.<\\/h2>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d5\\u10d4\\u10d1-\\u10d2\\u10d5\\u10d4\\u10e0\\u10d3\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e8\\u10e3\\u10d0\\u10da\\u10d4\\u10d1\\u10d8\\u10d7 \\u10e8\\u10d4\\u10e1\\u10d0\\u10eb\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10e1\\u10d0\\u10e5\\u10d0\\u10e0\\u10d7\\u10d5\\u10d4\\u10da\\u10dd\\u10e1 \\u10d9\\u10d8\\u10dc\\u10dd\\u10d7\\u10d4\\u10d0\\u10e2\\u10e0\\u10d4\\u10d1\\u10e8\\u10d8 \\u10d4\\u10da\\u10d4\\u10e5\\u10e2\\u10e0\\u10dd\\u10dc\\u10e3\\u10da\\u10d8 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0. \\u10d0\\u10e6\\u10dc\\u10d8\\u10e8\\u10dc\\u10e3\\u10da\\u10d8 \\u10e1\\u10d4\\u10e0\\u10d5\\u10d8\\u10e1\\u10d8 \\u10e4\\u10d0\\u10e1\\u10d8\\u10d0\\u10dc\\u10d8\\u10d0 \\u10d3\\u10d0 \\u10d3\\u10d0\\u10d3\\u10d2\\u10d4\\u10dc\\u10d8\\u10da\\u10d8\\u10d0 \\u10e8\\u10de\\u10e1 \\u201d\\u10d9\\u10d8\\u10dc\\u10dd \\u10d3\\u10d8\\u10e1\\u10e2\\u10e0\\u10d8\\u10d1\\u10e3\\u10ea\\u10d8\\u10d8\\u10e1\\u201d \\u10db\\u10d8\\u10d4\\u10e0. \\u10e6\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d4\\u10d1\\u10d0 \\u10d7\\u10d8\\u10d7\\u10dd\\u10d4\\u10e3\\u10da \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d6\\u10d4 \\u10d2\\u10d0\\u10db\\u10dd\\u10d8\\u10d7\\u10d5\\u10da\\u10d4\\u10d1\\u10d0 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1 \\u10de\\u10e0\\u10dd\\u10ea\\u10d4\\u10e1\\u10e8\\u10d8. \\u10d9\\u10d8\\u10dc\\u10dd\\u10e1 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0 \\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d3\\u10d4\\u10d1\\u10d0 \\u10e3\\u10dc\\u10d8\\u10e4\\u10d4\\u10d8\\u10e1 \\u10d4\\u10da\\u10d4\\u10e5\\u10e2\\u10e0\\u10dd\\u10dc\\u10e3\\u10da\\u10d8 \\u10e1\\u10d0\\u10e4\\u10e3\\u10da\\u10d8\\u10e1 \\u10db\\u10d4\\u10e8\\u10d5\\u10d4\\u10dd\\u10d1\\u10d8\\u10d7, \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10e5\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d8 Visa \\u10d0\\u10dc MasterCard \\u10d3\\u10d0 AMEX\\u2013\\u10d8\\u10e1 \\u10de\\u10da\\u10d0\\u10e1\\u10e2\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e8\\u10e3\\u10d0\\u10da\\u10d4\\u10d1\\u10d8\\u10d7. \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10e8\\u10d4\\u10d2\\u10d8\\u10eb\\u10da\\u10d8\\u10d0\\u10d7 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d4\\u10d1\\u10d8 \\u10e8\\u10d4\\u10d8\\u10eb\\u10d8\\u10dc\\u10dd\\u10d7 \\u10d9\\u10e0\\u10d8\\u10de\\u10e2\\u10dd \\u10d5\\u10d0\\u10da\\u10e3\\u10e2\\u10d8\\u10d7( \\u10d1\\u10d8\\u10e2\\u10d9\\u10dd\\u10d8\\u10dc\\u10d8, \\u10da\\u10d0\\u10d8\\u10d7\\u10d9\\u10dd\\u10d8\\u10dc\\u10d8 \\u10d0\\u10dc \\u10d3\\u10dd\\u10d2\\u10d9\\u10dd\\u10d8\\u10dc\\u10d8).<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10de\\u10dd\\u10e0\\u10e2\\u10d0\\u10da\\u10d6\\u10d4 \\u10d4\\u10d9\\u10dd\\u10dc\\u10dd\\u10db \\u10e2\\u10d8\\u10de\\u10d8\\u10e1 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e0\\u10d4\\u10d0\\u10da\\u10d8\\u10d6\\u10d0\\u10ea\\u10d8\\u10d0 \\u10d0\\u10e0 \\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d3\\u10d4\\u10d1\\u10d0. \\u10d4\\u10d9\\u10dd\\u10dc\\u10dd\\u10db \\u10e2\\u10d8\\u10de\\u10d8\\u10e1 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d4\\u10d1\\u10d6\\u10d4 \\u10db\\u10d8\\u10db\\u10d0\\u10e0\\u10d7\\u10d4\\u10d7 \\u10d9\\u10d8\\u10dc\\u10dd\\u10d7\\u10d4\\u10d0\\u10e2\\u10e0\\u10d8\\u10e1 \\u10e1\\u10d0\\u10da\\u10d0\\u10e0\\u10dd\\u10d4\\u10d1\\u10e1.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d9\\u10d8\\u10dc\\u10dd\\u10e1 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d8\\u10dc\\u10e2\\u10d4\\u10e0\\u10dc\\u10d4\\u10e2 \\u10d2\\u10d0\\u10e7\\u10d8\\u10d3\\u10d5\\u10d0 \\u10db\\u10dd\\u10d8\\u10ea\\u10d0\\u10d5\\u10e1 \\u10e0\\u10d0\\u10db\\u10dd\\u10d3\\u10d4\\u10dc\\u10d8\\u10db\\u10d4 \\u10d4\\u10e2\\u10d0\\u10de\\u10e1, \\u10e0\\u10dd\\u10db\\u10d4\\u10da\\u10d7\\u10d0 \\u10ec\\u10d0\\u10e0\\u10db\\u10d0\\u10e2\\u10d4\\u10d1\\u10d8\\u10d7 \\u10d2\\u10d0\\u10d5\\u10da\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2 \\u10db\\u10dd\\u10db\\u10ee\\u10db\\u10d0\\u10e0\\u10d4\\u10d1\\u10d4\\u10da\\u10d8 \\u10e7\\u10d8\\u10d3\\u10e3\\u10da\\u10dd\\u10d1\\u10e1 \\u10d4\\u10da\\u10d4\\u10e5\\u10e2\\u10e0\\u10dd\\u10dc\\u10e3\\u10da\\u10d8 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10e1, \\u10e0\\u10dd\\u10db\\u10d4\\u10da\\u10e1\\u10d0\\u10ea \\u10d4\\u10dc\\u10d8\\u10ed\\u10d4\\u10d1\\u10d0 \\u10e3\\u10dc\\u10d8\\u10d9\\u10d0\\u10da\\u10e3\\u10e0\\u10d8 \\u10dc\\u10dd\\u10db\\u10d4\\u10e0\\u10d8.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d9\\u10d8\\u10dc\\u10dd\\u10e1 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10eb\\u10d4\\u10dc\\u10d0\\u10d3 \\u10e3\\u10dc\\u10d3\\u10d0 \\u10d0\\u10d8\\u10e0\\u10e9\\u10d8\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da\\u10d8 \\u10d9\\u10d8\\u10dc\\u10dd \\u10d0\\u10dc \\u10d9\\u10d8\\u10dc\\u10dd\\u10d7\\u10d4\\u10d0\\u10e2\\u10e0\\u10d8, \\u10db\\u10dd\\u10dc\\u10d8\\u10e8\\u10dc\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da\\u10d8 \\u10d3\\u10d0\\u10e1\\u10ec\\u10e0\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d7\\u10d0\\u10e0\\u10d8\\u10e6\\u10d8 \\u10d3\\u10d0 \\u10e1\\u10d4\\u10d0\\u10dc\\u10d8\\u10e1\\u10e1 \\u10d3\\u10e0\\u10dd. \\u10de\\u10dd\\u10e0\\u10e2\\u10d0\\u10da\\u10d8 \\u10db\\u10dd\\u10d2\\u10d0\\u10ec\\u10dd\\u10d3\\u10d4\\u10d1\\u10d7 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0\\u10e1 \\u10ee\\u10d4\\u10da\\u10db\\u10d8\\u10e1\\u10d0\\u10ec\\u10d5\\u10d3\\u10dd\\u10db\\u10d8 \\u10d0\\u10d3\\u10d2\\u10d8\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1, \\u10db\\u10dd\\u10dc\\u10d8\\u10e8\\u10dc\\u10d4\\u10d7 \\u10d0\\u10d3\\u10d2\\u10d8\\u10da\\u10d8 \\u10d3\\u10d0 \\u10d2\\u10d0\\u10d3\\u10d0\\u10d3\\u10d8\\u10e1 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1 \\u10de\\u10e0\\u10dd\\u10ea\\u10d4\\u10d3\\u10e3\\u10e0\\u10d0\\u10d6\\u10d4. \\u10d9\\u10d8\\u10dc\\u10dd\\u10e1 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u10db\\u10d3\\u10d4 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10de\\u10dd\\u10e0\\u10e2\\u10d0\\u10da\\u10d6\\u10d4 \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10e1\\u10d0\\u10ee\\u10d4\\u10da\\u10d8, \\u10d2\\u10d5\\u10d0\\u10e0\\u10d8, \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10e1 \\u10d3\\u10d0 \\u10e1\\u10d0\\u10d9\\u10dd\\u10dc\\u10e2\\u10d0\\u10e5\\u10e2\\u10dd \\u10e2\\u10d4\\u10da\\u10d4\\u10e4\\u10dd\\u10dc\\u10d8\\u10e1 \\u10db\\u10dd\\u10dc\\u10d0\\u10ea\\u10d4\\u10db\\u10d4\\u10d1\\u10d8. \\u10e7\\u10e3\\u10e0\\u10d0\\u10d3\\u10e6\\u10d4\\u10d1\\u10d0 \\u10db\\u10d8\\u10d0\\u10e5\\u10ea\\u10d8\\u10d4\\u10d7 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d8\\u10e1\\u10ec\\u10dd\\u10e0\\u10d4\\u10e1, \\u10e0\\u10d0\\u10ea \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d0\\u10d0 \\u10d9\\u10d8\\u10dc\\u10dd\\u10e1 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10d2\\u10d4\\u10dc\\u10d4\\u10e0\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1\\u10d7\\u10d5\\u10d8\\u10e1.\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d4\\u10d0\\u10dc\\u10e1\\u10d6\\u10d4 \\u10db\\u10dd\\u10e1\\u10d0\\u10ee\\u10d5\\u10d4\\u10d3\\u10e0\\u10d0\\u10d3 \\u10e1\\u10d0\\u10ed\\u10d8\\u10e0\\u10dd\\u10d0 \\u10d0\\u10d3\\u10d2\\u10d8\\u10da\\u10d6\\u10d4 \\u10ec\\u10d0\\u10e0\\u10d0\\u10d3\\u10d2\\u10d8\\u10dc\\u10dd\\u10d7 \\u10d4\\u10da\\u10d4\\u10e5\\u10e2\\u10e0\\u10dd\\u10dc\\u10e3\\u10da\\u10d8 \\u10d9\\u10d8\\u10dc\\u10dd\\u10e1 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8, \\u10d0\\u10db\\u10dd\\u10d1\\u10d4\\u10ed\\u10d3\\u10d8\\u10da\\u10d8 \\u10d0\\u10dc \\u10d4\\u10da\\u10d4\\u10e5\\u10e2\\u10e0\\u10dd\\u10dc\\u10e3\\u10da\\u10d8 \\u10e1\\u10d0\\u10ee\\u10d8\\u10d7.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10e1 \\u10db\\u10d8\\u10d4\\u10e0 cinemax.ge \\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10da \\u10d7\\u10d0\\u10dc\\u10ee\\u10d0\\u10e8\\u10d8 \\u10d0\\u10e0 \\u10d0\\u10e0\\u10d8\\u10e1 \\u10d2\\u10d0\\u10d7\\u10d5\\u10d0\\u10da\\u10d8\\u10e1\\u10ec\\u10d8\\u10dc\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 3D \\u10e1\\u10d0\\u10d7\\u10d5\\u10d0\\u10da\\u10d4\\u10d4\\u10d1\\u10d8. \\u10d0\\u10e6\\u10dc\\u10d8\\u10e8\\u10dc\\u10e3\\u10da\\u10d8 \\u10de\\u10e0\\u10dd\\u10d3\\u10e3\\u10e5\\u10e2\\u10d8 \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10e3\\u10dc\\u10d3\\u10d0 \\u10d8\\u10e5\\u10dd\\u10dc\\u10d8\\u10dd\\u10d7 \\u10d0\\u10dc \\u10e8\\u10d4\\u10d2\\u10d8\\u10eb\\u10da\\u10d8\\u10d0\\u10d7 \\u10e8\\u10d4\\u10d8\\u10eb\\u10d8\\u10dc\\u10dd\\u10d7 \\u10d9\\u10d8\\u10dc\\u10dd\\u10d7\\u10d4\\u10d0\\u10e2\\u10e0\\u10d8\\u10e1 \\u10e1\\u10d0\\u10da\\u10d0\\u10e0\\u10dd\\u10d4\\u10d1\\u10e8\\u10d8.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<h2 style=\\"margin: 30px 0px 20px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 16px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10e4\\u10d0\\u10e1\\u10e3\\u10e0\\u10d8\\u10e1 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d0<\\/h2>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d9\\u10d8\\u10dc\\u10dd\\u10e1 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0 \\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d3\\u10d4\\u10d1\\u10d0 UniPAY -\\u10d8\\u10e1 \\u10d4\\u10da\\u10d4\\u10e5\\u10e2\\u10e0\\u10dd\\u10dc\\u10e3\\u10da\\u10d8 \\u10e1\\u10d0\\u10e4\\u10e3\\u10da\\u10d8\\u10e1 \\u10db\\u10d4\\u10e8\\u10d5\\u10d4\\u10dd\\u10d1\\u10d8\\u10d7, \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10e5\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d8 Visa, MasterCard \\u10d3\\u10d0 AMEX ( \\u10d0\\u10db\\u10d4\\u10e0\\u10d8\\u10e5\\u10d0\\u10dc \\u10d4\\u10e5\\u10e1\\u10de\\u10e0\\u10d4\\u10e1\\u10d8\\u10e1)\\u2013\\u10d8\\u10e1 \\u10de\\u10da\\u10d0\\u10e1\\u10e2\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e8\\u10e3\\u10d0\\u10da\\u10d4\\u10d1\\u10d8\\u10d7.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e2\\u10e0\\u10d0\\u10dc\\u10d6\\u10d0\\u10e5\\u10ea\\u10d8\\u10d8\\u10e1 \\u10ec\\u10d0\\u10e0\\u10db\\u10d0\\u10e2\\u10d4\\u10d1\\u10d8\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e0\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10db\\u10dd\\u10d2\\u10d4\\u10ea\\u10d4\\u10db\\u10d0\\u10d7 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10da\\u10d8 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1 , \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10dc\\u10dd\\u10db\\u10e0\\u10d8\\u10e1, \\u10d3\\u10d0 QR \\u10d9\\u10dd\\u10d3\\u10d8\\u10e1 \\u10d2\\u10d0\\u10db\\u10dd\\u10e1\\u10d0\\u10ee\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\\u10d7. \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10e8\\u10d4\\u10d2\\u10d8\\u10eb\\u10da\\u10d8\\u10d0\\u10d7 \\u10d0\\u10db\\u10dd\\u10d1\\u10d4\\u10ed\\u10d3\\u10dd\\u10d7 \\u10d0\\u10dc \\u10d3\\u10d0\\u10d8\\u10db\\u10d0\\u10ee\\u10e1\\u10dd\\u10d5\\u10e0\\u10dd\\u10d7 \\u10db\\u10dd\\u10ea\\u10d4\\u10db\\u10e3\\u10da\\u10d8 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0. \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10e8\\u10d4\\u10e2\\u10e7\\u10dd\\u10d1\\u10d8\\u10dc\\u10d4\\u10d1\\u10d0\\u10e1 \\u10db\\u10d8\\u10d8\\u10e6\\u10d4\\u10d1\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10e1 \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d0\\u10d6\\u10d4. ( \\u10d4\\u10da\\u2013\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10e1 \\u10e1\\u10ec\\u10dd\\u10e0\\u10d0\\u10d3 \\u10e8\\u10d4\\u10e7\\u10d5\\u10d0\\u10dc\\u10d0\\u10d6\\u10d4 \\u10de\\u10d0\\u10e1\\u10e3\\u10ee\\u10d8\\u10e1\\u10db\\u10d2\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10db\\u10dd\\u10db\\u10ee\\u10db\\u10d0\\u10e0\\u10d4\\u10d1\\u10d4\\u10da\\u10d8)<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0AMEX ( \\u10d0\\u10db\\u10d4\\u10e0\\u10d8\\u10e5\\u10d0\\u10dc \\u10d4\\u10e5\\u10e1\\u10de\\u10e0\\u10d4\\u10e1\\u10d8\\u10e1) \\u2013 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8\\u10d7 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1\\u10d0\\u10e1 \\u10d1\\u10d0\\u10dc\\u10d9\\u10d8 \\u10d0\\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10e1 \\u10d3\\u10d0\\u10db\\u10d0\\u10e2\\u10d4\\u10d1\\u10d8\\u10d7 \\u10e1\\u10d0\\u10d9\\u10dd\\u10db\\u10d8\\u10e1\\u10d8\\u10dd\\u10e1, \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1\\u10d0\\u10e1 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10da\\u10d0\\u10d3 \\u10d3\\u10d0\\u10d0\\u10d9\\u10d5\\u10d8\\u10e0\\u10d3\\u10d8\\u10d7 \\u10d7\\u10d0\\u10dc\\u10ee\\u10d8\\u10e1 \\u10dd\\u10d3\\u10d4\\u10dc\\u10dd\\u10d1\\u10d0\\u10e1 \\u10d3\\u10d0 \\u10d7\\u10e3 \\u10d4\\u10d7\\u10d0\\u10dc\\u10ee\\u10db\\u10d4\\u10d1\\u10d8\\u10d7 \\u10db\\u10ee\\u10dd\\u10da\\u10dd\\u10d3 \\u10db\\u10d0\\u10e1 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2 \\u10d3\\u10d0\\u10d0\\u10e1\\u10e0\\u10e3\\u10da\\u10d4\\u10d7 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d0. .<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d2\\u10d0\\u10e7\\u10d8\\u10d3\\u10e3\\u10da\\u10d8 \\u10d9\\u10d8\\u10dc\\u10dd\\u10e1 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10d3\\u10d0\\u10d1\\u10e0\\u10e3\\u10dc\\u10d4\\u10d1\\u10d0\\u10e1 \\u10d0\\u10e0 \\u10d4\\u10e5\\u10d5\\u10d4\\u10db\\u10d3\\u10d4\\u10d1\\u10d0\\u10e0\\u10d4\\u10d1\\u10d0.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d7\\u10e3 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10e1 \\u10db\\u10d8\\u10d4\\u10e0 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10da\\u10d8 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10e1\\u10d4\\u10d0\\u10dc\\u10e1\\u10d8 \\u10d2\\u10d0\\u10d3\\u10d0\\u10d8\\u10d3\\u10dd \\u10d0\\u10dc \\u10d2\\u10d0\\u10e3\\u10e5\\u10db\\u10d3\\u10d0, \\u10d9\\u10d8\\u10dc\\u10dd\\u10d7\\u10d4\\u10d0\\u10e2\\u10e0\\u10d8\\u10e1 \\u10d0\\u10d3\\u10db\\u10d8\\u10dc\\u10d8\\u10e1\\u10e2\\u10e0\\u10d0\\u10ea\\u10d8\\u10d0 \\u10d0\\u10d3\\u10d2\\u10d8\\u10da\\u10d6\\u10d4 \\u10e8\\u10d4\\u10db\\u10dd\\u10d2\\u10d7\\u10d0\\u10d5\\u10d0\\u10d6\\u10d4\\u10d1\\u10d7 \\u10e1\\u10ee\\u10d5\\u10d0 \\u10e1\\u10d4\\u10d0\\u10dc\\u10e1\\u10e8\\u10d8 \\u10d0\\u10dc \\u10e1\\u10ee\\u10d5\\u10d0 \\u10d3\\u10e0\\u10dd\\u10d6\\u10d4 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ea\\u10d5\\u10da\\u10d0\\u10e1.<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2016-02-28 21:12:16","created_by":"160","created_by_alias":"","modified":"2016-02-28 21:12:16","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-02-28 21:12:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `gift_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(4, 1, 1, '', '2016-02-28 21:15:37', 160, 27632, '8c2cd13e186a59e125959c0df77a8cbda9850b4e', '{"id":1,"asset_id":"56","title":"\\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8","alias":"2016-02-28-21-12-16","introtext":"<h1 style=\\"margin: 0px 0px 30px; padding: 0px 0px 14px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #cccccc; box-sizing: border-box; font-weight: 300; font-stretch: inherit; font-size: 24px; line-height: 24px; font-family: dejavusans-extralight; vertical-align: baseline; color: #4c4c4c; letter-spacing: -1px; background-color: #f2f2f2;\\">\\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8<\\/h1>\\r\\n<div style=\\"margin: 0px; padding: 0px; border: 0px; box-sizing: border-box; font-stretch: inherit; font-size: 10px; line-height: 10px; font-family: ''Times New Roman''; vertical-align: baseline; color: #000000; background-color: #f2f2f2;\\">\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e9\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d5\\u10d4\\u10d1 \\u10d2\\u10d5\\u10d4\\u10e0\\u10d3\\u10d8\\u10e1 \\u10db\\u10d4\\u10e8\\u10d5\\u10d4\\u10dd\\u10d1\\u10d8\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10e8\\u10d4\\u10d2\\u10d8\\u10eb\\u10da\\u10d8\\u10d0\\u10d7 \\u10dd\\u10dc\\u10da\\u10d0\\u10d8\\u10dc \\u10e0\\u10d4\\u10df\\u10d8\\u10db\\u10e8\\u10d8 \\u10e8\\u10d4\\u10d0\\u10e0\\u10e9\\u10d8\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da\\u10d8 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8 \\u10d3\\u10d0 \\u10d2\\u10d0\\u10e3\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10e1 \\u10d4\\u10da\\u10d4\\u10e5\\u10e2\\u10e0\\u10dd\\u10dc\\u10e3\\u10da\\u10d8 \\u10d0\\u10dc \\u10e4\\u10d8\\u10d6\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10e4\\u10dd\\u10e0\\u10db\\u10d8\\u10d7<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1 \\u10de\\u10e0\\u10dd\\u10ea\\u10d4\\u10d3\\u10e3\\u10e0\\u10d8\\u10e1\\u10d0 \\u10d3\\u10d0 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1 \\u10d2\\u10d0\\u10dc\\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d3\\u10e0\\u10dd\\u10e1 \\u10d9\\u10dd\\u10dc\\u10e4\\u10da\\u10d8\\u10e5\\u10e2\\u10e3\\u10e0\\u10d8 \\u10e1\\u10d8\\u10e2\\u10e3\\u10d0\\u10ea\\u10d8\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d7\\u10d0\\u10d5\\u10d8\\u10d3\\u10d0\\u10dc \\u10d0\\u10e1\\u10d0\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10da\\u10d0\\u10d3, \\u10d2\\u10d7\\u10ee\\u10dd\\u10d5\\u10d7 \\u10e1\\u10e0\\u10e3\\u10da\\u10e7\\u10dd\\u10e4\\u10d8\\u10da\\u10d0\\u10d3 \\u10d2\\u10d0\\u10d4\\u10ea\\u10dc\\u10dd\\u10d7 \\u10d8\\u10dc\\u10e2\\u10d4\\u10e0\\u10dc\\u10d4\\u10e2 \\u10d2\\u10d0\\u10e7\\u10d8\\u10d3\\u10d5\\u10d8\\u10e1 \\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10e1 \\u10d0\\u10dc \\u10d3\\u10d0\\u10d2\\u10d5\\u10d8\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d3\\u10d8\\u10d7.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d7\\u10e3 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d2\\u10d0\\u10e5\\u10d5\\u10d7 \\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8 \\u10e1\\u10d0\\u10d8\\u10e2\\u10d6\\u10d4 cinemax.ge \\u2013\\u10d6\\u10d4 \\u10dd\\u10de\\u10d4\\u10e0\\u10d8\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc \\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10d8\\u10d7 \\u10d2\\u10d7\\u10ee\\u10dd\\u10d5\\u10d7 \\u10d2\\u10d0\\u10db\\u10dd\\u10d8\\u10e7\\u10d4\\u10dc\\u10dd\\u10d7 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2\\u10d8 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10e2\\u10d4\\u10da\\u10d4\\u10e4\\u10dd\\u10dc\\u10d8:+995 32 2 193 195 \\u10d4\\u10da\\u2013\\u10e4\\u10dd\\u10e1\\u10e2\\u10d0:<span id=\\"cloak5399\\" style=\\"margin: 0px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\"><a style=\\"margin: 0px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\" href=\\"mailto:info@cinemax.ge\\">info@cinemax.ge<\\/a><\\/span>\\u00a0\\u10e1\\u10d0\\u10d8\\u10e2\\u10d8\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8 \\u10db\\u10e3\\u10e8\\u10d0\\u10dd\\u10d1\\u10e1 \\u10e7\\u10dd\\u10d5\\u10d4\\u10da \\u10d3\\u10e6\\u10d4 \\u10d3\\u10d8\\u10da\\u10d8\\u10e1 09:00 \\u10e1\\u10d0\\u10d0\\u10d7\\u10d8\\u10d3\\u10d0\\u10dc \\u10e1\\u10d0\\u10e6\\u10d0\\u10db\\u10dd\\u10e1 21:00 \\u10e1\\u10d0\\u10d0\\u10d7\\u10d0\\u10db\\u10d3\\u10d4.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10ee\\u10dd\\u10da\\u10dd \\u10d9\\u10d8\\u10dc\\u10dd\\u10d7\\u10d4\\u10d0\\u10e2\\u10e0\\u10e8\\u10d8, \\u10d3\\u10d0\\u10ef\\u10d0\\u10d5\\u10e8\\u10dc\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc, \\u10d3\\u10d0\\u10e0\\u10d1\\u10d0\\u10d6\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1, 3D \\u10e1\\u10d0\\u10d7\\u10d5\\u10d0\\u10da\\u10d4\\u10d4\\u10d1\\u10d8\\u10e1 \\u10db\\u10dd\\u10ee\\u10db\\u10d0\\u10e0\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d7\\u10e3 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1, \\u10d0\\u10dc \\u10e3\\u10e8\\u10e3\\u10d0\\u10da\\u10dd\\u10d3 \\u10d9\\u10d8\\u10dc\\u10dd\\u10d7\\u10d4\\u10d0\\u10e2\\u10e0\\u10d8\\u10e1 \\u10d0\\u10dc \\u10d9\\u10d8\\u10dc\\u10dd\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1 \\u10dc\\u10d4\\u10d1\\u10d8\\u10e1\\u10db\\u10d8\\u10d4\\u10e0\\u10d8 \\u10e1\\u10d0\\u10ee\\u10d8\\u10e1 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10db\\u10d8\\u10e1\\u10d0\\u10e6\\u10d4\\u10d1\\u10d0\\u10d3 \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10e1\\u10e2\\u10d0\\u10e2\\u10e3\\u10e1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10dd\\u10ec\\u10db\\u10d4\\u10d1\\u10d8\\u10e1\\u10d0\\u10d7\\u10d5\\u10d8\\u10e1 \\u10d3\\u10d0\\u10e0\\u10d4\\u10d9\\u10d4\\u10d7 \\u10d9\\u10d8\\u10dc\\u10dd\\u10d7\\u10d4\\u10d0\\u10e2\\u10e0\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10dd \\u10e1\\u10d0\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d8\\u10e1 \\u10dc\\u10dd\\u10db\\u10d4\\u10e0\\u10d6\\u10d4 \\u10e2\\u10d4\\u10da\\u10d4\\u10e4\\u10dd\\u10dc\\u10d8: +995 32 2 555 000<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<h2 style=\\"margin: 30px 0px 20px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 16px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1 \\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8.<\\/h2>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d5\\u10d4\\u10d1-\\u10d2\\u10d5\\u10d4\\u10e0\\u10d3\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e8\\u10e3\\u10d0\\u10da\\u10d4\\u10d1\\u10d8\\u10d7 \\u10e8\\u10d4\\u10e1\\u10d0\\u10eb\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10e1\\u10d0\\u10e5\\u10d0\\u10e0\\u10d7\\u10d5\\u10d4\\u10da\\u10dd\\u10e1 \\u10d9\\u10d8\\u10dc\\u10dd\\u10d7\\u10d4\\u10d0\\u10e2\\u10e0\\u10d4\\u10d1\\u10e8\\u10d8 \\u10d4\\u10da\\u10d4\\u10e5\\u10e2\\u10e0\\u10dd\\u10dc\\u10e3\\u10da\\u10d8 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0. \\u10d0\\u10e6\\u10dc\\u10d8\\u10e8\\u10dc\\u10e3\\u10da\\u10d8 \\u10e1\\u10d4\\u10e0\\u10d5\\u10d8\\u10e1\\u10d8 \\u10e4\\u10d0\\u10e1\\u10d8\\u10d0\\u10dc\\u10d8\\u10d0 \\u10d3\\u10d0 \\u10d3\\u10d0\\u10d3\\u10d2\\u10d4\\u10dc\\u10d8\\u10da\\u10d8\\u10d0 \\u10e8\\u10de\\u10e1 \\u201d\\u10d9\\u10d8\\u10dc\\u10dd \\u10d3\\u10d8\\u10e1\\u10e2\\u10e0\\u10d8\\u10d1\\u10e3\\u10ea\\u10d8\\u10d8\\u10e1\\u201d \\u10db\\u10d8\\u10d4\\u10e0. \\u10e6\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d4\\u10d1\\u10d0 \\u10d7\\u10d8\\u10d7\\u10dd\\u10d4\\u10e3\\u10da \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d6\\u10d4 \\u10d2\\u10d0\\u10db\\u10dd\\u10d8\\u10d7\\u10d5\\u10da\\u10d4\\u10d1\\u10d0 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1 \\u10de\\u10e0\\u10dd\\u10ea\\u10d4\\u10e1\\u10e8\\u10d8. \\u10d9\\u10d8\\u10dc\\u10dd\\u10e1 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0 \\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d3\\u10d4\\u10d1\\u10d0 \\u10e3\\u10dc\\u10d8\\u10e4\\u10d4\\u10d8\\u10e1 \\u10d4\\u10da\\u10d4\\u10e5\\u10e2\\u10e0\\u10dd\\u10dc\\u10e3\\u10da\\u10d8 \\u10e1\\u10d0\\u10e4\\u10e3\\u10da\\u10d8\\u10e1 \\u10db\\u10d4\\u10e8\\u10d5\\u10d4\\u10dd\\u10d1\\u10d8\\u10d7, \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10e5\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d8 Visa \\u10d0\\u10dc MasterCard \\u10d3\\u10d0 AMEX\\u2013\\u10d8\\u10e1 \\u10de\\u10da\\u10d0\\u10e1\\u10e2\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e8\\u10e3\\u10d0\\u10da\\u10d4\\u10d1\\u10d8\\u10d7. \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10e8\\u10d4\\u10d2\\u10d8\\u10eb\\u10da\\u10d8\\u10d0\\u10d7 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d4\\u10d1\\u10d8 \\u10e8\\u10d4\\u10d8\\u10eb\\u10d8\\u10dc\\u10dd\\u10d7 \\u10d9\\u10e0\\u10d8\\u10de\\u10e2\\u10dd \\u10d5\\u10d0\\u10da\\u10e3\\u10e2\\u10d8\\u10d7( \\u10d1\\u10d8\\u10e2\\u10d9\\u10dd\\u10d8\\u10dc\\u10d8, \\u10da\\u10d0\\u10d8\\u10d7\\u10d9\\u10dd\\u10d8\\u10dc\\u10d8 \\u10d0\\u10dc \\u10d3\\u10dd\\u10d2\\u10d9\\u10dd\\u10d8\\u10dc\\u10d8).<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10de\\u10dd\\u10e0\\u10e2\\u10d0\\u10da\\u10d6\\u10d4 \\u10d4\\u10d9\\u10dd\\u10dc\\u10dd\\u10db \\u10e2\\u10d8\\u10de\\u10d8\\u10e1 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e0\\u10d4\\u10d0\\u10da\\u10d8\\u10d6\\u10d0\\u10ea\\u10d8\\u10d0 \\u10d0\\u10e0 \\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d3\\u10d4\\u10d1\\u10d0. \\u10d4\\u10d9\\u10dd\\u10dc\\u10dd\\u10db \\u10e2\\u10d8\\u10de\\u10d8\\u10e1 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d4\\u10d1\\u10d6\\u10d4 \\u10db\\u10d8\\u10db\\u10d0\\u10e0\\u10d7\\u10d4\\u10d7 \\u10d9\\u10d8\\u10dc\\u10dd\\u10d7\\u10d4\\u10d0\\u10e2\\u10e0\\u10d8\\u10e1 \\u10e1\\u10d0\\u10da\\u10d0\\u10e0\\u10dd\\u10d4\\u10d1\\u10e1.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d9\\u10d8\\u10dc\\u10dd\\u10e1 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d8\\u10dc\\u10e2\\u10d4\\u10e0\\u10dc\\u10d4\\u10e2 \\u10d2\\u10d0\\u10e7\\u10d8\\u10d3\\u10d5\\u10d0 \\u10db\\u10dd\\u10d8\\u10ea\\u10d0\\u10d5\\u10e1 \\u10e0\\u10d0\\u10db\\u10dd\\u10d3\\u10d4\\u10dc\\u10d8\\u10db\\u10d4 \\u10d4\\u10e2\\u10d0\\u10de\\u10e1, \\u10e0\\u10dd\\u10db\\u10d4\\u10da\\u10d7\\u10d0 \\u10ec\\u10d0\\u10e0\\u10db\\u10d0\\u10e2\\u10d4\\u10d1\\u10d8\\u10d7 \\u10d2\\u10d0\\u10d5\\u10da\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2 \\u10db\\u10dd\\u10db\\u10ee\\u10db\\u10d0\\u10e0\\u10d4\\u10d1\\u10d4\\u10da\\u10d8 \\u10e7\\u10d8\\u10d3\\u10e3\\u10da\\u10dd\\u10d1\\u10e1 \\u10d4\\u10da\\u10d4\\u10e5\\u10e2\\u10e0\\u10dd\\u10dc\\u10e3\\u10da\\u10d8 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10e1, \\u10e0\\u10dd\\u10db\\u10d4\\u10da\\u10e1\\u10d0\\u10ea \\u10d4\\u10dc\\u10d8\\u10ed\\u10d4\\u10d1\\u10d0 \\u10e3\\u10dc\\u10d8\\u10d9\\u10d0\\u10da\\u10e3\\u10e0\\u10d8 \\u10dc\\u10dd\\u10db\\u10d4\\u10e0\\u10d8.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d9\\u10d8\\u10dc\\u10dd\\u10e1 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10eb\\u10d4\\u10dc\\u10d0\\u10d3 \\u10e3\\u10dc\\u10d3\\u10d0 \\u10d0\\u10d8\\u10e0\\u10e9\\u10d8\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da\\u10d8 \\u10d9\\u10d8\\u10dc\\u10dd \\u10d0\\u10dc \\u10d9\\u10d8\\u10dc\\u10dd\\u10d7\\u10d4\\u10d0\\u10e2\\u10e0\\u10d8, \\u10db\\u10dd\\u10dc\\u10d8\\u10e8\\u10dc\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da\\u10d8 \\u10d3\\u10d0\\u10e1\\u10ec\\u10e0\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d7\\u10d0\\u10e0\\u10d8\\u10e6\\u10d8 \\u10d3\\u10d0 \\u10e1\\u10d4\\u10d0\\u10dc\\u10d8\\u10e1\\u10e1 \\u10d3\\u10e0\\u10dd. \\u10de\\u10dd\\u10e0\\u10e2\\u10d0\\u10da\\u10d8 \\u10db\\u10dd\\u10d2\\u10d0\\u10ec\\u10dd\\u10d3\\u10d4\\u10d1\\u10d7 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0\\u10e1 \\u10ee\\u10d4\\u10da\\u10db\\u10d8\\u10e1\\u10d0\\u10ec\\u10d5\\u10d3\\u10dd\\u10db\\u10d8 \\u10d0\\u10d3\\u10d2\\u10d8\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1, \\u10db\\u10dd\\u10dc\\u10d8\\u10e8\\u10dc\\u10d4\\u10d7 \\u10d0\\u10d3\\u10d2\\u10d8\\u10da\\u10d8 \\u10d3\\u10d0 \\u10d2\\u10d0\\u10d3\\u10d0\\u10d3\\u10d8\\u10e1 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1 \\u10de\\u10e0\\u10dd\\u10ea\\u10d4\\u10d3\\u10e3\\u10e0\\u10d0\\u10d6\\u10d4. \\u10d9\\u10d8\\u10dc\\u10dd\\u10e1 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u10db\\u10d3\\u10d4 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10de\\u10dd\\u10e0\\u10e2\\u10d0\\u10da\\u10d6\\u10d4 \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10e1\\u10d0\\u10ee\\u10d4\\u10da\\u10d8, \\u10d2\\u10d5\\u10d0\\u10e0\\u10d8, \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10e1 \\u10d3\\u10d0 \\u10e1\\u10d0\\u10d9\\u10dd\\u10dc\\u10e2\\u10d0\\u10e5\\u10e2\\u10dd \\u10e2\\u10d4\\u10da\\u10d4\\u10e4\\u10dd\\u10dc\\u10d8\\u10e1 \\u10db\\u10dd\\u10dc\\u10d0\\u10ea\\u10d4\\u10db\\u10d4\\u10d1\\u10d8. \\u10e7\\u10e3\\u10e0\\u10d0\\u10d3\\u10e6\\u10d4\\u10d1\\u10d0 \\u10db\\u10d8\\u10d0\\u10e5\\u10ea\\u10d8\\u10d4\\u10d7 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d8\\u10e1\\u10ec\\u10dd\\u10e0\\u10d4\\u10e1, \\u10e0\\u10d0\\u10ea \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d0\\u10d0 \\u10d9\\u10d8\\u10dc\\u10dd\\u10e1 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10d2\\u10d4\\u10dc\\u10d4\\u10e0\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1\\u10d7\\u10d5\\u10d8\\u10e1.\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d4\\u10d0\\u10dc\\u10e1\\u10d6\\u10d4 \\u10db\\u10dd\\u10e1\\u10d0\\u10ee\\u10d5\\u10d4\\u10d3\\u10e0\\u10d0\\u10d3 \\u10e1\\u10d0\\u10ed\\u10d8\\u10e0\\u10dd\\u10d0 \\u10d0\\u10d3\\u10d2\\u10d8\\u10da\\u10d6\\u10d4 \\u10ec\\u10d0\\u10e0\\u10d0\\u10d3\\u10d2\\u10d8\\u10dc\\u10dd\\u10d7 \\u10d4\\u10da\\u10d4\\u10e5\\u10e2\\u10e0\\u10dd\\u10dc\\u10e3\\u10da\\u10d8 \\u10d9\\u10d8\\u10dc\\u10dd\\u10e1 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8, \\u10d0\\u10db\\u10dd\\u10d1\\u10d4\\u10ed\\u10d3\\u10d8\\u10da\\u10d8 \\u10d0\\u10dc \\u10d4\\u10da\\u10d4\\u10e5\\u10e2\\u10e0\\u10dd\\u10dc\\u10e3\\u10da\\u10d8 \\u10e1\\u10d0\\u10ee\\u10d8\\u10d7.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10e1 \\u10db\\u10d8\\u10d4\\u10e0 cinemax.ge \\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10da \\u10d7\\u10d0\\u10dc\\u10ee\\u10d0\\u10e8\\u10d8 \\u10d0\\u10e0 \\u10d0\\u10e0\\u10d8\\u10e1 \\u10d2\\u10d0\\u10d7\\u10d5\\u10d0\\u10da\\u10d8\\u10e1\\u10ec\\u10d8\\u10dc\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 3D \\u10e1\\u10d0\\u10d7\\u10d5\\u10d0\\u10da\\u10d4\\u10d4\\u10d1\\u10d8. \\u10d0\\u10e6\\u10dc\\u10d8\\u10e8\\u10dc\\u10e3\\u10da\\u10d8 \\u10de\\u10e0\\u10dd\\u10d3\\u10e3\\u10e5\\u10e2\\u10d8 \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10e3\\u10dc\\u10d3\\u10d0 \\u10d8\\u10e5\\u10dd\\u10dc\\u10d8\\u10dd\\u10d7 \\u10d0\\u10dc \\u10e8\\u10d4\\u10d2\\u10d8\\u10eb\\u10da\\u10d8\\u10d0\\u10d7 \\u10e8\\u10d4\\u10d8\\u10eb\\u10d8\\u10dc\\u10dd\\u10d7 \\u10d9\\u10d8\\u10dc\\u10dd\\u10d7\\u10d4\\u10d0\\u10e2\\u10e0\\u10d8\\u10e1 \\u10e1\\u10d0\\u10da\\u10d0\\u10e0\\u10dd\\u10d4\\u10d1\\u10e8\\u10d8.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<h2 style=\\"margin: 30px 0px 20px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 16px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10e4\\u10d0\\u10e1\\u10e3\\u10e0\\u10d8\\u10e1 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d0<\\/h2>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d9\\u10d8\\u10dc\\u10dd\\u10e1 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0 \\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d3\\u10d4\\u10d1\\u10d0 UniPAY -\\u10d8\\u10e1 \\u10d4\\u10da\\u10d4\\u10e5\\u10e2\\u10e0\\u10dd\\u10dc\\u10e3\\u10da\\u10d8 \\u10e1\\u10d0\\u10e4\\u10e3\\u10da\\u10d8\\u10e1 \\u10db\\u10d4\\u10e8\\u10d5\\u10d4\\u10dd\\u10d1\\u10d8\\u10d7, \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10e5\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d8 Visa, MasterCard \\u10d3\\u10d0 AMEX ( \\u10d0\\u10db\\u10d4\\u10e0\\u10d8\\u10e5\\u10d0\\u10dc \\u10d4\\u10e5\\u10e1\\u10de\\u10e0\\u10d4\\u10e1\\u10d8\\u10e1)\\u2013\\u10d8\\u10e1 \\u10de\\u10da\\u10d0\\u10e1\\u10e2\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e8\\u10e3\\u10d0\\u10da\\u10d4\\u10d1\\u10d8\\u10d7.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e2\\u10e0\\u10d0\\u10dc\\u10d6\\u10d0\\u10e5\\u10ea\\u10d8\\u10d8\\u10e1 \\u10ec\\u10d0\\u10e0\\u10db\\u10d0\\u10e2\\u10d4\\u10d1\\u10d8\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e0\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10db\\u10dd\\u10d2\\u10d4\\u10ea\\u10d4\\u10db\\u10d0\\u10d7 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10da\\u10d8 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1 , \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10dc\\u10dd\\u10db\\u10e0\\u10d8\\u10e1, \\u10d3\\u10d0 QR \\u10d9\\u10dd\\u10d3\\u10d8\\u10e1 \\u10d2\\u10d0\\u10db\\u10dd\\u10e1\\u10d0\\u10ee\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\\u10d7. \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10e8\\u10d4\\u10d2\\u10d8\\u10eb\\u10da\\u10d8\\u10d0\\u10d7 \\u10d0\\u10db\\u10dd\\u10d1\\u10d4\\u10ed\\u10d3\\u10dd\\u10d7 \\u10d0\\u10dc \\u10d3\\u10d0\\u10d8\\u10db\\u10d0\\u10ee\\u10e1\\u10dd\\u10d5\\u10e0\\u10dd\\u10d7 \\u10db\\u10dd\\u10ea\\u10d4\\u10db\\u10e3\\u10da\\u10d8 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0. \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10e8\\u10d4\\u10e2\\u10e7\\u10dd\\u10d1\\u10d8\\u10dc\\u10d4\\u10d1\\u10d0\\u10e1 \\u10db\\u10d8\\u10d8\\u10e6\\u10d4\\u10d1\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10e1 \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d0\\u10d6\\u10d4. ( \\u10d4\\u10da\\u2013\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10e1 \\u10e1\\u10ec\\u10dd\\u10e0\\u10d0\\u10d3 \\u10e8\\u10d4\\u10e7\\u10d5\\u10d0\\u10dc\\u10d0\\u10d6\\u10d4 \\u10de\\u10d0\\u10e1\\u10e3\\u10ee\\u10d8\\u10e1\\u10db\\u10d2\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10db\\u10dd\\u10db\\u10ee\\u10db\\u10d0\\u10e0\\u10d4\\u10d1\\u10d4\\u10da\\u10d8)<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0AMEX ( \\u10d0\\u10db\\u10d4\\u10e0\\u10d8\\u10e5\\u10d0\\u10dc \\u10d4\\u10e5\\u10e1\\u10de\\u10e0\\u10d4\\u10e1\\u10d8\\u10e1) \\u2013 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8\\u10d7 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1\\u10d0\\u10e1 \\u10d1\\u10d0\\u10dc\\u10d9\\u10d8 \\u10d0\\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10e1 \\u10d3\\u10d0\\u10db\\u10d0\\u10e2\\u10d4\\u10d1\\u10d8\\u10d7 \\u10e1\\u10d0\\u10d9\\u10dd\\u10db\\u10d8\\u10e1\\u10d8\\u10dd\\u10e1, \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1\\u10d0\\u10e1 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10da\\u10d0\\u10d3 \\u10d3\\u10d0\\u10d0\\u10d9\\u10d5\\u10d8\\u10e0\\u10d3\\u10d8\\u10d7 \\u10d7\\u10d0\\u10dc\\u10ee\\u10d8\\u10e1 \\u10dd\\u10d3\\u10d4\\u10dc\\u10dd\\u10d1\\u10d0\\u10e1 \\u10d3\\u10d0 \\u10d7\\u10e3 \\u10d4\\u10d7\\u10d0\\u10dc\\u10ee\\u10db\\u10d4\\u10d1\\u10d8\\u10d7 \\u10db\\u10ee\\u10dd\\u10da\\u10dd\\u10d3 \\u10db\\u10d0\\u10e1 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2 \\u10d3\\u10d0\\u10d0\\u10e1\\u10e0\\u10e3\\u10da\\u10d4\\u10d7 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d0. .<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d2\\u10d0\\u10e7\\u10d8\\u10d3\\u10e3\\u10da\\u10d8 \\u10d9\\u10d8\\u10dc\\u10dd\\u10e1 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10d3\\u10d0\\u10d1\\u10e0\\u10e3\\u10dc\\u10d4\\u10d1\\u10d0\\u10e1 \\u10d0\\u10e0 \\u10d4\\u10e5\\u10d5\\u10d4\\u10db\\u10d3\\u10d4\\u10d1\\u10d0\\u10e0\\u10d4\\u10d1\\u10d0.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d7\\u10e3 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10e1 \\u10db\\u10d8\\u10d4\\u10e0 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10da\\u10d8 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10e1\\u10d4\\u10d0\\u10dc\\u10e1\\u10d8 \\u10d2\\u10d0\\u10d3\\u10d0\\u10d8\\u10d3\\u10dd \\u10d0\\u10dc \\u10d2\\u10d0\\u10e3\\u10e5\\u10db\\u10d3\\u10d0, \\u10d9\\u10d8\\u10dc\\u10dd\\u10d7\\u10d4\\u10d0\\u10e2\\u10e0\\u10d8\\u10e1 \\u10d0\\u10d3\\u10db\\u10d8\\u10dc\\u10d8\\u10e1\\u10e2\\u10e0\\u10d0\\u10ea\\u10d8\\u10d0 \\u10d0\\u10d3\\u10d2\\u10d8\\u10da\\u10d6\\u10d4 \\u10e8\\u10d4\\u10db\\u10dd\\u10d2\\u10d7\\u10d0\\u10d5\\u10d0\\u10d6\\u10d4\\u10d1\\u10d7 \\u10e1\\u10ee\\u10d5\\u10d0 \\u10e1\\u10d4\\u10d0\\u10dc\\u10e1\\u10e8\\u10d8 \\u10d0\\u10dc \\u10e1\\u10ee\\u10d5\\u10d0 \\u10d3\\u10e0\\u10dd\\u10d6\\u10d4 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ea\\u10d5\\u10da\\u10d0\\u10e1.<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2016-02-28 21:12:16","created_by":"160","created_by_alias":"","modified":"2016-02-28 21:15:37","modified_by":"160","checked_out":"160","checked_out_time":"2016-02-28 21:14:01","publish_up":"2016-02-28 21:12:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `gift_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(5, 1, 1, '', '2016-02-28 21:34:00', 160, 24178, 'ec133820dbb1c5471cdf2ed3b5c576d614e14498', '{"id":1,"asset_id":"56","title":"\\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8","alias":"2016-02-28-21-12-16","introtext":"<h1 style=\\"margin: 0px 0px 30px; padding: 0px 0px 14px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #cccccc; box-sizing: border-box; font-weight: 300; font-stretch: inherit; font-size: 24px; line-height: 24px; font-family: dejavusans-extralight; vertical-align: baseline; color: #4c4c4c; letter-spacing: -1px; background-color: #f2f2f2;\\">\\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8<\\/h1>\\r\\n<div style=\\"margin: 0px; padding: 0px; border: 0px; box-sizing: border-box; font-stretch: inherit; font-size: 10px; line-height: 10px; font-family: ''Times New Roman''; vertical-align: baseline; color: #000000; background-color: #f2f2f2;\\">\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e9\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d5\\u10d4\\u10d1 \\u10d2\\u10d5\\u10d4\\u10e0\\u10d3\\u10d8\\u10e1 \\u10db\\u10d4\\u10e8\\u10d5\\u10d4\\u10dd\\u10d1\\u10d8\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10e8\\u10d4\\u10d2\\u10d8\\u10eb\\u10da\\u10d8\\u10d0\\u10d7 \\u10dd\\u10dc\\u10da\\u10d0\\u10d8\\u10dc \\u10e0\\u10d4\\u10df\\u10d8\\u10db\\u10e8\\u10d8 \\u10e8\\u10d4\\u10d0\\u10e0\\u10e9\\u10d8\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da\\u10d8 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8 \\u10d3\\u10d0 \\u10d2\\u10d0\\u10e3\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10e1 \\u10d4\\u10da\\u10d4\\u10e5\\u10e2\\u10e0\\u10dd\\u10dc\\u10e3\\u10da\\u10d8 \\u10d0\\u10dc \\u10e4\\u10d8\\u10d6\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10e4\\u10dd\\u10e0\\u10db\\u10d8\\u10d7<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1 \\u10d3\\u10d0 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1 \\u10d2\\u10d0\\u10dc\\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d3\\u10e0\\u10dd\\u10e1 \\u10ee\\u10d0\\u10e0\\u10d5\\u10d4\\u10d6\\u10d4\\u10d1\\u10d8\\u10e1\\u00a0\\u10d7\\u10d0\\u10d5\\u10d8\\u10d3\\u10d0\\u10dc \\u10d0\\u10e1\\u10d0\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10da\\u10d0\\u10d3, \\u10d2\\u10d7\\u10ee\\u10dd\\u10d5\\u10d7 \\u10e1\\u10e0\\u10e3\\u10da\\u10e7\\u10dd\\u10e4\\u10d8\\u10da\\u10d0\\u10d3 \\u10d2\\u10d0\\u10d4\\u10ea\\u10dc\\u10dd\\u10d7 \\u10d3\\u10d0 \\u10e7\\u10e3\\u10e0\\u10d0\\u10d3\\u10e6\\u10d4\\u10d1\\u10d8\\u10d7 \\u10d2\\u10d0\\u10d3\\u10d0\\u10d0\\u10db\\u10dd\\u10ec\\u10db\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10e1 \\u10db\\u10d8\\u10d4\\u10e0 \\u10e8\\u10d4\\u10e7\\u10d5\\u10d0\\u10dc\\u10d8\\u10da\\u10d8 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d8\\u10d6\\u10e3\\u10e1\\u10e2\\u10d4.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10d8\\u10e2\\u10d6\\u10d4 \\u10d0\\u10e0 \\u10d0\\u10e0\\u10d8\\u10e1 \\u10e1\\u10d0\\u10ed\\u10d8\\u10e0\\u10dd \\u10e0\\u10d4\\u10d2\\u10d8\\u10e1\\u10e2\\u10e0\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10d2\\u10d0\\u10d5\\u10da\\u10d0. \\u10d0\\u10db\\u10d8\\u10e2\\u10dd\\u10db \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1\\u10d0\\u10e1 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10da\\u10d0\\u10d3 \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10e1 \\u10db\\u10d8\\u10e1\\u10d0\\u10db\\u10d0\\u10e0\\u10d7\\u10d8 \\u10e1\\u10d0\\u10d3\\u10d0\\u10ea \\u10d2\\u10d0\\u10d3\\u10db\\u10dd\\u10d2\\u10d4\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d4\\u10d1\\u10d0\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e2\\u10e3\\u10e0\\u10d8 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1 \\u10d3\\u10d0 \\u10da\\u10d8\\u10dc\\u10d9\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10e1\\u10d0\\u10e1\\u10d5\\u10da\\u10d4\\u10da\\u10d0\\u10d3.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<a href=\\"http:\\/\\/www.siurpriz.ge\\">www.siurpriz.ge<\\/a>\\u00a0\\u2013\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc\\u00a0\\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10d8\\u10d7 \\u00a0\\u10ec\\u10d0\\u10e0\\u10db\\u10dd\\u10e5\\u10db\\u10dc\\u10d8\\u10da\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d7\\u10ee\\u10d5\\u10d4\\u10d5\\u10d0\\u10e8\\u10d8 \\u10d2\\u10d7\\u10ee\\u10dd\\u10d5\\u10d7 \\u10d2\\u10d0\\u10db\\u10dd\\u10d8\\u10e7\\u10d4\\u10dc\\u10dd\\u10d7 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2\\u10d8 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10e2\\u10d4\\u10da\\u10d4\\u10e4\\u10dd\\u10dc\\u10d8:+995 558 24 44 88 \\u10d4\\u10da\\u2013\\u10e4\\u10dd\\u10e1\\u10e2\\u10d0: info.siurpriz.ge\\u00a0\\u10e1\\u10d0\\u10d8\\u10e2\\u10d8\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8 \\u10db\\u10e3\\u10e8\\u10d0\\u10dd\\u10d1\\u10e1 \\u10e7\\u10dd\\u10d5\\u10d4\\u10da \\u10d3\\u10e6\\u10d4 \\u10d3\\u10d8\\u10da\\u10d8\\u10e1 10:00 \\u10e1\\u10d0\\u10d0\\u10d7\\u10d8\\u10d3\\u10d0\\u10dc \\u10e1\\u10d0\\u10e6\\u10d0\\u10db\\u10dd\\u10e1 21:00 \\u10e1\\u10d0\\u10d0\\u10d7\\u10d0\\u10db\\u10d3\\u10d4.\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc \\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d7\\u10ee\\u10d5\\u10d4\\u10d5\\u10d0\\u10e8\\u10d8 \\u10d3\\u10d0\\u10e3\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d3\\u10d8\\u10d7 \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d0\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8\\u10e1 \\u10dc\\u10dd\\u10db\\u10d4\\u10e0\\u10d6\\u10d4.\\u00a0<\\/p>\\r\\n<h2 style=\\"margin: 30px 0px 20px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 16px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e0\\u10d4 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1\\u00a0\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1 \\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8.<\\/h2>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d5\\u10d4\\u10d1 \\u10d2\\u10d5\\u10d4\\u10e0\\u10d3\\u10d6\\u10d4 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d2\\u10d0\\u10e5\\u10d5\\u10d7 \\u10e8\\u10d4\\u10e1\\u10d0\\u10eb\\u10da\\u10d4\\u10d1\\u10da\\u10dd\\u10d1\\u10d0 \\u10e8\\u10d4\\u10d8\\u10eb\\u10d8\\u10dc\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da\\u10d8 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10e4\\u10e3\\u10da\\u10d0\\u10d3\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8 \\u10e0\\u10dd\\u10db\\u10d4\\u10da\\u10e1\\u10d0\\u10ea \\u10d2\\u10d0\\u10db\\u10dd\\u10d8\\u10e7\\u10d4\\u10dc\\u10d4\\u10d1\\u10d7 \\u10d0\\u10db \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10dc\\u10d4\\u10d1\\u10d8\\u10e1\\u10db\\u10d8\\u10d4\\u10e0 \\u10e4\\u10d8\\u10da\\u10d0\\u10da\\u10e8\\u10d8. \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e4\\u10d0\\u10e1\\u10e1 \\u10d2\\u10d0\\u10dc\\u10e1\\u10d0\\u10d6\\u10e6\\u10d5\\u10e0\\u10d0\\u10d5\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d7\\u10d5\\u10d8\\u10d7\\u10dd\\u10dc \\u10e8\\u10d4\\u10e1\\u10d0\\u10d1\\u10d0\\u10db\\u10d8\\u10e1 \\u10d5\\u10d4\\u10da\\u10e8\\u10d8 \\u10d7\\u10d0\\u10dc\\u10ee\\u10d8\\u10e1 \\u10db\\u10d8\\u10d7\\u10d8\\u10d7\\u10d4\\u10d1\\u10d8\\u10d7. \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0 \\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d3\\u10d4\\u10d1\\u10d0 \\u00a0\\u10e5\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d8 Visa \\u10d0\\u10dc MasterCard \\u10de\\u10da\\u10d0\\u10e1\\u10e2\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e8\\u10e3\\u10d0\\u10da\\u10d4\\u10d1\\u10d8\\u10d7.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc \\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d7\\u10ee\\u10d5\\u10d4\\u10d5\\u10d0\\u10e8\\u10d8 \\u10d3\\u10d0\\u10e3\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d3\\u10d8\\u10d7 \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d0\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8\\u10e1 \\u10dc\\u10dd\\u10db\\u10d4\\u10e0\\u10d6\\u10d4.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10dc\\u10d8\\u10e1 \\u10d3\\u10d0\\u10e1\\u10e0\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2, \\u10d3\\u10d0\\u10d2\\u10d4\\u10dc\\u10d4\\u10e0\\u10d8\\u10e0\\u10d3\\u10d4\\u10d1\\u10d0 \\u10e3\\u10dc\\u10d8\\u10d9\\u10d0\\u10da\\u10e3\\u10e0\\u10d8 5 \\u10dc\\u10d8\\u10e8\\u10dc\\u10d0 \\u10d9\\u10dd\\u10d3\\u10d8. \\u10e0\\u10dd\\u10db\\u10d4\\u10da\\u10e1\\u10d0\\u10ea \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10d8 \\u10ec\\u10d0\\u10e0\\u10d0\\u10d3\\u10d2\\u10d4\\u10dc\\u10e1 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10e8\\u10d8 \\u10d3\\u10d0 \\u10db\\u10d8\\u10d8\\u10e6\\u10d4\\u10d1\\u10e1 \\u10de\\u10e0\\u10dd\\u10d3\\u10e3\\u10e5\\u10e2\\u10e1 \\u10d0\\u10dc \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10eb\\u10d4\\u10dc\\u10d0\\u10d3 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10d0\\u10d8\\u10e0\\u10e9\\u10d8\\u10dd\\u10d7. \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8\\u10e1 \\u10e2\\u10d8\\u10de\\u10d8 ( \\u10db\\u10dd\\u10d1\\u10d8\\u10e3\\u10e0\\u10d8, \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10d7 \\u10d0\\u10dc \\u10e4\\u10d8\\u10d6\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d5\\u10d4\\u10d7\\u10d0 ). \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd \\u10d2\\u10d0\\u10db\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d8, \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u10db\\u10d3\\u10d4 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10de\\u10dd\\u10e0\\u10e2\\u10d0\\u10da\\u10d6\\u10d4 \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10e1\\u10d0\\u10ee\\u10d4\\u10da\\u10d8, \\u10d2\\u10d5\\u10d0\\u10e0\\u10d8, \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10e1 \\u10d3\\u10d0 \\u10e1\\u10d0\\u10d9\\u10dd\\u10dc\\u10e2\\u10d0\\u10e5\\u10e2\\u10dd \\u10e2\\u10d4\\u10da\\u10d4\\u10e4\\u10dd\\u10dc\\u10d8\\u10e1 \\u10db\\u10dd\\u10dc\\u10d0\\u10ea\\u10d4\\u10db\\u10d4\\u10d1\\u10d8. \\u10e7\\u10e3\\u10e0\\u10d0\\u10d3\\u10e6\\u10d4\\u10d1\\u10d0 \\u10db\\u10d8\\u10d0\\u10e5\\u10ea\\u10d8\\u10d4\\u10d7 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d8\\u10e1\\u10ec\\u10dd\\u10e0\\u10d4\\u10e1, \\u10e0\\u10d0\\u10d3\\u10d2\\u10d0\\u10dc \\u10db\\u10d8\\u10d7\\u10d8\\u10d7\\u10d4\\u10d1\\u10e3\\u10da \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10db\\u10dd\\u10d2\\u10d4\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d4\\u10d1\\u10d0\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e2\\u10e3\\u10e0\\u10d8 \\u10d3\\u10d0 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1, \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10da\\u10d8\\u10dc\\u10d9\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10e1\\u10d5\\u10da\\u10d4\\u10da\\u10d0\\u10d3.\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0\\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d8\\u10d7 \\u10e1\\u10d0\\u10e0\\u10d2\\u10d4\\u10d1\\u10da\\u10dd\\u10d1\\u10d8\\u10e1\\u10d7\\u10d5\\u10d8\\u10e1 \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10db\\u10d0 \\u10e1\\u10d0\\u10d9\\u10db\\u10d0\\u10e0\\u10d8\\u10e1\\u10d8\\u10d0 \\u10ec\\u10d0\\u10e0\\u10d0\\u10d3\\u10d2\\u10dc\\u10d8\\u10dc\\u10dd\\u10e1 \\u10db\\u10d8\\u10e1\\u10e2\\u10d5\\u10d8\\u10e1 \\u10d3\\u10d0\\u10d2\\u10d4\\u10dc\\u10d4\\u10e0\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 5 \\u10dc\\u10d8\\u10e8\\u10dc\\u10d0 \\u10d9\\u10dd\\u10d3\\u10d8<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10e4\\u10d0\\u10e1\\u10e3\\u10e0\\u10d8\\u10e1 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d9\\u10d8\\u10dc\\u10dd\\u10e1 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0 \\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d3\\u10d4\\u10d1\\u10d0 UniPAY -\\u10d8\\u10e1 \\u10d4\\u10da\\u10d4\\u10e5\\u10e2\\u10e0\\u10dd\\u10dc\\u10e3\\u10da\\u10d8 \\u10e1\\u10d0\\u10e4\\u10e3\\u10da\\u10d8\\u10e1 \\u10db\\u10d4\\u10e8\\u10d5\\u10d4\\u10dd\\u10d1\\u10d8\\u10d7, \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10e5\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d8 Visa, MasterCard \\u10d3\\u10d0 AMEX ( \\u10d0\\u10db\\u10d4\\u10e0\\u10d8\\u10e5\\u10d0\\u10dc \\u10d4\\u10e5\\u10e1\\u10de\\u10e0\\u10d4\\u10e1\\u10d8\\u10e1)\\u2013\\u10d8\\u10e1 \\u10de\\u10da\\u10d0\\u10e1\\u10e2\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e8\\u10e3\\u10d0\\u10da\\u10d4\\u10d1\\u10d8\\u10d7.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e2\\u10e0\\u10d0\\u10dc\\u10d6\\u10d0\\u10e5\\u10ea\\u10d8\\u10d8\\u10e1 \\u10ec\\u10d0\\u10e0\\u10db\\u10d0\\u10e2\\u10d4\\u10d1\\u10d8\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e0\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10db\\u10dd\\u10d2\\u10d4\\u10ea\\u10d4\\u10db\\u10d0\\u10d7 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10da\\u10d8 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1 , \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10dc\\u10dd\\u10db\\u10e0\\u10d8\\u10e1, \\u10d3\\u10d0 QR \\u10d9\\u10dd\\u10d3\\u10d8\\u10e1 \\u10d2\\u10d0\\u10db\\u10dd\\u10e1\\u10d0\\u10ee\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\\u10d7. \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10e8\\u10d4\\u10d2\\u10d8\\u10eb\\u10da\\u10d8\\u10d0\\u10d7 \\u10d0\\u10db\\u10dd\\u10d1\\u10d4\\u10ed\\u10d3\\u10dd\\u10d7 \\u10d0\\u10dc \\u10d3\\u10d0\\u10d8\\u10db\\u10d0\\u10ee\\u10e1\\u10dd\\u10d5\\u10e0\\u10dd\\u10d7 \\u10db\\u10dd\\u10ea\\u10d4\\u10db\\u10e3\\u10da\\u10d8 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0. \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10e8\\u10d4\\u10e2\\u10e7\\u10dd\\u10d1\\u10d8\\u10dc\\u10d4\\u10d1\\u10d0\\u10e1 \\u10db\\u10d8\\u10d8\\u10e6\\u10d4\\u10d1\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10e1 \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d0\\u10d6\\u10d4. ( \\u10d4\\u10da\\u2013\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10e1 \\u10e1\\u10ec\\u10dd\\u10e0\\u10d0\\u10d3 \\u10e8\\u10d4\\u10e7\\u10d5\\u10d0\\u10dc\\u10d0\\u10d6\\u10d4 \\u10de\\u10d0\\u10e1\\u10e3\\u10ee\\u10d8\\u10e1\\u10db\\u10d2\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10db\\u10dd\\u10db\\u10ee\\u10db\\u10d0\\u10e0\\u10d4\\u10d1\\u10d4\\u10da\\u10d8)<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0AMEX ( \\u10d0\\u10db\\u10d4\\u10e0\\u10d8\\u10e5\\u10d0\\u10dc \\u10d4\\u10e5\\u10e1\\u10de\\u10e0\\u10d4\\u10e1\\u10d8\\u10e1) \\u2013 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8\\u10d7 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1\\u10d0\\u10e1 \\u10d1\\u10d0\\u10dc\\u10d9\\u10d8 \\u10d0\\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10e1 \\u10d3\\u10d0\\u10db\\u10d0\\u10e2\\u10d4\\u10d1\\u10d8\\u10d7 \\u10e1\\u10d0\\u10d9\\u10dd\\u10db\\u10d8\\u10e1\\u10d8\\u10dd\\u10e1, \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1\\u10d0\\u10e1 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10da\\u10d0\\u10d3 \\u10d3\\u10d0\\u10d0\\u10d9\\u10d5\\u10d8\\u10e0\\u10d3\\u10d8\\u10d7 \\u10d7\\u10d0\\u10dc\\u10ee\\u10d8\\u10e1 \\u10dd\\u10d3\\u10d4\\u10dc\\u10dd\\u10d1\\u10d0\\u10e1 \\u10d3\\u10d0 \\u10d7\\u10e3 \\u10d4\\u10d7\\u10d0\\u10dc\\u10ee\\u10db\\u10d4\\u10d1\\u10d8\\u10d7 \\u10db\\u10ee\\u10dd\\u10da\\u10dd\\u10d3 \\u10db\\u10d0\\u10e1 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2 \\u10d3\\u10d0\\u10d0\\u10e1\\u10e0\\u10e3\\u10da\\u10d4\\u10d7 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d0. .<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d2\\u10d0\\u10e7\\u10d8\\u10d3\\u10e3\\u10da\\u10d8 \\u10d9\\u10d8\\u10dc\\u10dd\\u10e1 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10d3\\u10d0\\u10d1\\u10e0\\u10e3\\u10dc\\u10d4\\u10d1\\u10d0\\u10e1 \\u10d0\\u10e0 \\u10d4\\u10e5\\u10d5\\u10d4\\u10db\\u10d3\\u10d4\\u10d1\\u10d0\\u10e0\\u10d4\\u10d1\\u10d0.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d7\\u10e3 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10e1 \\u10db\\u10d8\\u10d4\\u10e0 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10da\\u10d8 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d8\\u10e1 \\u10e1\\u10d4\\u10d0\\u10dc\\u10e1\\u10d8 \\u10d2\\u10d0\\u10d3\\u10d0\\u10d8\\u10d3\\u10dd \\u10d0\\u10dc \\u10d2\\u10d0\\u10e3\\u10e5\\u10db\\u10d3\\u10d0, \\u10d9\\u10d8\\u10dc\\u10dd\\u10d7\\u10d4\\u10d0\\u10e2\\u10e0\\u10d8\\u10e1 \\u10d0\\u10d3\\u10db\\u10d8\\u10dc\\u10d8\\u10e1\\u10e2\\u10e0\\u10d0\\u10ea\\u10d8\\u10d0 \\u10d0\\u10d3\\u10d2\\u10d8\\u10da\\u10d6\\u10d4 \\u10e8\\u10d4\\u10db\\u10dd\\u10d2\\u10d7\\u10d0\\u10d5\\u10d0\\u10d6\\u10d4\\u10d1\\u10d7 \\u10e1\\u10ee\\u10d5\\u10d0 \\u10e1\\u10d4\\u10d0\\u10dc\\u10e1\\u10e8\\u10d8 \\u10d0\\u10dc \\u10e1\\u10ee\\u10d5\\u10d0 \\u10d3\\u10e0\\u10dd\\u10d6\\u10d4 \\u10d1\\u10d8\\u10da\\u10d4\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ea\\u10d5\\u10da\\u10d0\\u10e1.<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2016-02-28 21:12:16","created_by":"160","created_by_alias":"","modified":"2016-02-28 21:34:00","modified_by":"160","checked_out":"160","checked_out_time":"2016-02-28 21:15:37","publish_up":"2016-02-28 21:12:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `gift_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(6, 1, 1, '', '2016-02-28 21:36:45', 160, 20273, '55f2aa33cd7e0e03575675f73cbafc3c8ade68bf', '{"id":1,"asset_id":"56","title":"\\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8","alias":"2016-02-28-21-12-16","introtext":"<h1 style=\\"margin: 0px 0px 30px; padding: 0px 0px 14px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #cccccc; box-sizing: border-box; font-weight: 300; font-stretch: inherit; font-size: 24px; line-height: 24px; font-family: dejavusans-extralight; vertical-align: baseline; color: #4c4c4c; letter-spacing: -1px; background-color: #f2f2f2;\\">\\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8<\\/h1>\\r\\n<div style=\\"margin: 0px; padding: 0px; border: 0px; box-sizing: border-box; font-stretch: inherit; font-size: 10px; line-height: 10px; font-family: ''Times New Roman''; vertical-align: baseline; color: #000000; background-color: #f2f2f2;\\">\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e9\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d5\\u10d4\\u10d1 \\u10d2\\u10d5\\u10d4\\u10e0\\u10d3\\u10d8\\u10e1 \\u10db\\u10d4\\u10e8\\u10d5\\u10d4\\u10dd\\u10d1\\u10d8\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10e8\\u10d4\\u10d2\\u10d8\\u10eb\\u10da\\u10d8\\u10d0\\u10d7 \\u10dd\\u10dc\\u10da\\u10d0\\u10d8\\u10dc \\u10e0\\u10d4\\u10df\\u10d8\\u10db\\u10e8\\u10d8 \\u10e8\\u10d4\\u10d0\\u10e0\\u10e9\\u10d8\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da\\u10d8 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8 \\u10d3\\u10d0 \\u10d2\\u10d0\\u10e3\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10e1 \\u10d4\\u10da\\u10d4\\u10e5\\u10e2\\u10e0\\u10dd\\u10dc\\u10e3\\u10da\\u10d8 \\u10d0\\u10dc \\u10e4\\u10d8\\u10d6\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10e4\\u10dd\\u10e0\\u10db\\u10d8\\u10d7<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1 \\u10d3\\u10d0 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1 \\u10d2\\u10d0\\u10dc\\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d3\\u10e0\\u10dd\\u10e1 \\u10ee\\u10d0\\u10e0\\u10d5\\u10d4\\u10d6\\u10d4\\u10d1\\u10d8\\u10e1\\u00a0\\u10d7\\u10d0\\u10d5\\u10d8\\u10d3\\u10d0\\u10dc \\u10d0\\u10e1\\u10d0\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10da\\u10d0\\u10d3, \\u10d2\\u10d7\\u10ee\\u10dd\\u10d5\\u10d7 \\u10e1\\u10e0\\u10e3\\u10da\\u10e7\\u10dd\\u10e4\\u10d8\\u10da\\u10d0\\u10d3 \\u10d2\\u10d0\\u10d4\\u10ea\\u10dc\\u10dd\\u10d7 \\u10d3\\u10d0 \\u10e7\\u10e3\\u10e0\\u10d0\\u10d3\\u10e6\\u10d4\\u10d1\\u10d8\\u10d7 \\u10d2\\u10d0\\u10d3\\u10d0\\u10d0\\u10db\\u10dd\\u10ec\\u10db\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10e1 \\u10db\\u10d8\\u10d4\\u10e0 \\u10e8\\u10d4\\u10e7\\u10d5\\u10d0\\u10dc\\u10d8\\u10da\\u10d8 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d8\\u10d6\\u10e3\\u10e1\\u10e2\\u10d4.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10d8\\u10e2\\u10d6\\u10d4 \\u10d0\\u10e0 \\u10d0\\u10e0\\u10d8\\u10e1 \\u10e1\\u10d0\\u10ed\\u10d8\\u10e0\\u10dd \\u10e0\\u10d4\\u10d2\\u10d8\\u10e1\\u10e2\\u10e0\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10d2\\u10d0\\u10d5\\u10da\\u10d0. \\u10d0\\u10db\\u10d8\\u10e2\\u10dd\\u10db \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1\\u10d0\\u10e1 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10da\\u10d0\\u10d3 \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10e1 \\u10db\\u10d8\\u10e1\\u10d0\\u10db\\u10d0\\u10e0\\u10d7\\u10d8 \\u10e1\\u10d0\\u10d3\\u10d0\\u10ea \\u10d2\\u10d0\\u10d3\\u10db\\u10dd\\u10d2\\u10d4\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d4\\u10d1\\u10d0\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e2\\u10e3\\u10e0\\u10d8 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1 \\u10d3\\u10d0 \\u10da\\u10d8\\u10dc\\u10d9\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10e1\\u10d0\\u10e1\\u10d5\\u10da\\u10d4\\u10da\\u10d0\\u10d3.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<a href=\\"http:\\/\\/www.siurpriz.ge\\">www.siurpriz.ge<\\/a>\\u00a0\\u2013\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc\\u00a0\\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10d8\\u10d7 \\u00a0\\u10ec\\u10d0\\u10e0\\u10db\\u10dd\\u10e5\\u10db\\u10dc\\u10d8\\u10da\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d7\\u10ee\\u10d5\\u10d4\\u10d5\\u10d0\\u10e8\\u10d8 \\u10d2\\u10d7\\u10ee\\u10dd\\u10d5\\u10d7 \\u10d2\\u10d0\\u10db\\u10dd\\u10d8\\u10e7\\u10d4\\u10dc\\u10dd\\u10d7 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2\\u10d8 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10e2\\u10d4\\u10da\\u10d4\\u10e4\\u10dd\\u10dc\\u10d8:+995 558 24 44 88 \\u10d4\\u10da\\u2013\\u10e4\\u10dd\\u10e1\\u10e2\\u10d0: info.siurpriz.ge\\u00a0\\u10e1\\u10d0\\u10d8\\u10e2\\u10d8\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8 \\u10db\\u10e3\\u10e8\\u10d0\\u10dd\\u10d1\\u10e1 \\u10e7\\u10dd\\u10d5\\u10d4\\u10da \\u10d3\\u10e6\\u10d4 \\u10d3\\u10d8\\u10da\\u10d8\\u10e1 10:00 \\u10e1\\u10d0\\u10d0\\u10d7\\u10d8\\u10d3\\u10d0\\u10dc \\u10e1\\u10d0\\u10e6\\u10d0\\u10db\\u10dd\\u10e1 21:00 \\u10e1\\u10d0\\u10d0\\u10d7\\u10d0\\u10db\\u10d3\\u10d4.\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc \\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d7\\u10ee\\u10d5\\u10d4\\u10d5\\u10d0\\u10e8\\u10d8 \\u10d3\\u10d0\\u10e3\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d3\\u10d8\\u10d7 \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d0\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8\\u10e1 \\u10dc\\u10dd\\u10db\\u10d4\\u10e0\\u10d6\\u10d4.\\u00a0<\\/p>\\r\\n<h2 style=\\"margin: 30px 0px 20px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 16px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e0\\u10d4 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1\\u00a0\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1 \\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8.<\\/h2>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d5\\u10d4\\u10d1 \\u10d2\\u10d5\\u10d4\\u10e0\\u10d3\\u10d6\\u10d4 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d2\\u10d0\\u10e5\\u10d5\\u10d7 \\u10e8\\u10d4\\u10e1\\u10d0\\u10eb\\u10da\\u10d4\\u10d1\\u10da\\u10dd\\u10d1\\u10d0 \\u10e8\\u10d4\\u10d8\\u10eb\\u10d8\\u10dc\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da\\u10d8 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10e4\\u10e3\\u10da\\u10d0\\u10d3\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8 \\u10e0\\u10dd\\u10db\\u10d4\\u10da\\u10e1\\u10d0\\u10ea \\u10d2\\u10d0\\u10db\\u10dd\\u10d8\\u10e7\\u10d4\\u10dc\\u10d4\\u10d1\\u10d7 \\u10d0\\u10db \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10dc\\u10d4\\u10d1\\u10d8\\u10e1\\u10db\\u10d8\\u10d4\\u10e0 \\u10e4\\u10d8\\u10da\\u10d0\\u10da\\u10e8\\u10d8. \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e4\\u10d0\\u10e1\\u10e1 \\u10d2\\u10d0\\u10dc\\u10e1\\u10d0\\u10d6\\u10e6\\u10d5\\u10e0\\u10d0\\u10d5\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d7\\u10d5\\u10d8\\u10d7\\u10dd\\u10dc \\u10e8\\u10d4\\u10e1\\u10d0\\u10d1\\u10d0\\u10db\\u10d8\\u10e1 \\u10d5\\u10d4\\u10da\\u10e8\\u10d8 \\u10d7\\u10d0\\u10dc\\u10ee\\u10d8\\u10e1 \\u10db\\u10d8\\u10d7\\u10d8\\u10d7\\u10d4\\u10d1\\u10d8\\u10d7. \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0 \\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d3\\u10d4\\u10d1\\u10d0 \\u00a0\\u10e5\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d8 Visa \\u10d0\\u10dc MasterCard \\u10de\\u10da\\u10d0\\u10e1\\u10e2\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e8\\u10e3\\u10d0\\u10da\\u10d4\\u10d1\\u10d8\\u10d7.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc \\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d7\\u10ee\\u10d5\\u10d4\\u10d5\\u10d0\\u10e8\\u10d8 \\u10d3\\u10d0\\u10e3\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d3\\u10d8\\u10d7 \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d0\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8\\u10e1 \\u10dc\\u10dd\\u10db\\u10d4\\u10e0\\u10d6\\u10d4.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10dc\\u10d8\\u10e1 \\u10d3\\u10d0\\u10e1\\u10e0\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2, \\u10d3\\u10d0\\u10d2\\u10d4\\u10dc\\u10d4\\u10e0\\u10d8\\u10e0\\u10d3\\u10d4\\u10d1\\u10d0 \\u10e3\\u10dc\\u10d8\\u10d9\\u10d0\\u10da\\u10e3\\u10e0\\u10d8 5 \\u10dc\\u10d8\\u10e8\\u10dc\\u10d0 \\u10d9\\u10dd\\u10d3\\u10d8. \\u10e0\\u10dd\\u10db\\u10d4\\u10da\\u10e1\\u10d0\\u10ea \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10d8 \\u10ec\\u10d0\\u10e0\\u10d0\\u10d3\\u10d2\\u10d4\\u10dc\\u10e1 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10e8\\u10d8 \\u10d3\\u10d0 \\u10db\\u10d8\\u10d8\\u10e6\\u10d4\\u10d1\\u10e1 \\u10de\\u10e0\\u10dd\\u10d3\\u10e3\\u10e5\\u10e2\\u10e1 \\u10d0\\u10dc \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10eb\\u10d4\\u10dc\\u10d0\\u10d3 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10d0\\u10d8\\u10e0\\u10e9\\u10d8\\u10dd\\u10d7. \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8\\u10e1 \\u10e2\\u10d8\\u10de\\u10d8 ( \\u10db\\u10dd\\u10d1\\u10d8\\u10e3\\u10e0\\u10d8, \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10d7 \\u10d0\\u10dc \\u10e4\\u10d8\\u10d6\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d5\\u10d4\\u10d7\\u10d0 ). \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd \\u10d2\\u10d0\\u10db\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d8, \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u10db\\u10d3\\u10d4 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10de\\u10dd\\u10e0\\u10e2\\u10d0\\u10da\\u10d6\\u10d4 \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10e1\\u10d0\\u10ee\\u10d4\\u10da\\u10d8, \\u10d2\\u10d5\\u10d0\\u10e0\\u10d8, \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10e1 \\u10d3\\u10d0 \\u10e1\\u10d0\\u10d9\\u10dd\\u10dc\\u10e2\\u10d0\\u10e5\\u10e2\\u10dd \\u10e2\\u10d4\\u10da\\u10d4\\u10e4\\u10dd\\u10dc\\u10d8\\u10e1 \\u10db\\u10dd\\u10dc\\u10d0\\u10ea\\u10d4\\u10db\\u10d4\\u10d1\\u10d8. \\u10e7\\u10e3\\u10e0\\u10d0\\u10d3\\u10e6\\u10d4\\u10d1\\u10d0 \\u10db\\u10d8\\u10d0\\u10e5\\u10ea\\u10d8\\u10d4\\u10d7 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d8\\u10e1\\u10ec\\u10dd\\u10e0\\u10d4\\u10e1, \\u10e0\\u10d0\\u10d3\\u10d2\\u10d0\\u10dc \\u10db\\u10d8\\u10d7\\u10d8\\u10d7\\u10d4\\u10d1\\u10e3\\u10da \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10db\\u10dd\\u10d2\\u10d4\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d4\\u10d1\\u10d0\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e2\\u10e3\\u10e0\\u10d8 \\u10d3\\u10d0 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1, \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10da\\u10d8\\u10dc\\u10d9\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10e1\\u10d5\\u10da\\u10d4\\u10da\\u10d0\\u10d3.\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d8\\u10d7 \\u10e1\\u10d0\\u10e0\\u10d2\\u10d4\\u10d1\\u10da\\u10dd\\u10d1\\u10d8\\u10e1\\u10d7\\u10d5\\u10d8\\u10e1 \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10db\\u10d0 \\u10e1\\u10d0\\u10d9\\u10db\\u10d0\\u10e0\\u10d8\\u10e1\\u10d8\\u10d0 \\u10ec\\u10d0\\u10e0\\u10d0\\u10d3\\u10d2\\u10dc\\u10d8\\u10dc\\u10dd\\u10e1 \\u10db\\u10d8\\u10e1\\u10e2\\u10d5\\u10d8\\u10e1 \\u10d3\\u10d0\\u10d2\\u10d4\\u10dc\\u10d4\\u10e0\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 5 \\u10dc\\u10d8\\u10e8\\u10dc\\u10d0 \\u10d9\\u10dd\\u10d3\\u10d8<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0 \\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d3\\u10d4\\u10d1\\u10d0 \\u00a0\\u10e5\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d8 Visa \\u10d0\\u10dc MasterCard \\u10de\\u10da\\u10d0\\u10e1\\u10e2\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e8\\u10e3\\u10d0\\u10da\\u10d4\\u10d1\\u10d8\\u10d7<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e2\\u10e0\\u10d0\\u10dc\\u10d6\\u10d0\\u10e5\\u10ea\\u10d8\\u10d8\\u10e1 \\u10ec\\u10d0\\u10e0\\u10db\\u10d0\\u10e2\\u10d4\\u10d1\\u10d8\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e0\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d2\\u10d0\\u10db\\u10dd\\u10d2\\u10d4\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d4\\u10d1\\u10d0\\u10d7 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10da\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1\\u00a0\\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1 \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10da\\u10d8\\u10dc\\u10d9\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10e1\\u10d0\\u10e1\\u10d5\\u10da\\u10d4\\u10da\\u10d0\\u10d3.\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10e8\\u10d8 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10da\\u10d8 \\u10d7\\u10d0\\u10dc\\u10ee\\u10d0 \\u10e3\\u10d9\\u10d0\\u10dc \\u10d0\\u10e0 \\u10d1\\u10e0\\u10e3\\u10dc\\u10d3\\u10d4\\u10d1\\u10d0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2016-02-28 21:12:16","created_by":"160","created_by_alias":"","modified":"2016-02-28 21:36:45","modified_by":"160","checked_out":"160","checked_out_time":"2016-02-28 21:34:00","publish_up":"2016-02-28 21:12:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(7, 1, 1, '', '2016-02-28 21:47:02', 160, 20293, '5447a94b706a16379d20125a7b8b9256e046387d', '{"id":1,"asset_id":"56","title":"\\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8","alias":"2016-02-28-21-12-16","introtext":"<h1 style=\\"margin: 0px 0px 30px; padding: 0px 0px 14px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #cccccc; box-sizing: border-box; font-weight: 300; font-stretch: inherit; font-size: 24px; line-height: 24px; font-family: dejavusans-extralight; vertical-align: baseline; color: #4c4c4c; letter-spacing: -1px; background-color: #f2f2f2;\\">\\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8<\\/h1>\\r\\n<div style=\\"margin: 0px; padding: 0px; border: 0px; box-sizing: border-box; font-stretch: inherit; font-size: 10px; line-height: 10px; font-family: ''Times New Roman''; vertical-align: baseline; color: #000000; background-color: #f2f2f2;\\">\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e9\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d5\\u10d4\\u10d1 \\u10d2\\u10d5\\u10d4\\u10e0\\u10d3\\u10d8\\u10e1 \\u10db\\u10d4\\u10e8\\u10d5\\u10d4\\u10dd\\u10d1\\u10d8\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10e8\\u10d4\\u10d2\\u10d8\\u10eb\\u10da\\u10d8\\u10d0\\u10d7 \\u10dd\\u10dc\\u10da\\u10d0\\u10d8\\u10dc \\u10e0\\u10d4\\u10df\\u10d8\\u10db\\u10e8\\u10d8 \\u10e8\\u10d4\\u10d0\\u10e0\\u10e9\\u10d8\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da\\u10d8 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8 \\u10d3\\u10d0 \\u10d2\\u10d0\\u10e3\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10e1 \\u10d4\\u10da\\u10d4\\u10e5\\u10e2\\u10e0\\u10dd\\u10dc\\u10e3\\u10da\\u10d8 \\u10d0\\u10dc \\u10e4\\u10d8\\u10d6\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10e4\\u10dd\\u10e0\\u10db\\u10d8\\u10d7<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1 \\u10d3\\u10d0 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1 \\u10d2\\u10d0\\u10dc\\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d3\\u10e0\\u10dd\\u10e1 \\u10ee\\u10d0\\u10e0\\u10d5\\u10d4\\u10d6\\u10d4\\u10d1\\u10d8\\u10e1\\u00a0\\u10d7\\u10d0\\u10d5\\u10d8\\u10d3\\u10d0\\u10dc \\u10d0\\u10e1\\u10d0\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10da\\u10d0\\u10d3, \\u10d2\\u10d7\\u10ee\\u10dd\\u10d5\\u10d7 \\u10e1\\u10e0\\u10e3\\u10da\\u10e7\\u10dd\\u10e4\\u10d8\\u10da\\u10d0\\u10d3 \\u10d2\\u10d0\\u10d4\\u10ea\\u10dc\\u10dd\\u10d7 \\u10d3\\u10d0 \\u10e7\\u10e3\\u10e0\\u10d0\\u10d3\\u10e6\\u10d4\\u10d1\\u10d8\\u10d7 \\u10d2\\u10d0\\u10d3\\u10d0\\u10d0\\u10db\\u10dd\\u10ec\\u10db\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10e1 \\u10db\\u10d8\\u10d4\\u10e0 \\u10e8\\u10d4\\u10e7\\u10d5\\u10d0\\u10dc\\u10d8\\u10da\\u10d8 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d8\\u10d6\\u10e3\\u10e1\\u10e2\\u10d4.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10d8\\u10e2\\u10d6\\u10d4 \\u10d0\\u10e0 \\u10d0\\u10e0\\u10d8\\u10e1 \\u10e1\\u10d0\\u10ed\\u10d8\\u10e0\\u10dd \\u10e0\\u10d4\\u10d2\\u10d8\\u10e1\\u10e2\\u10e0\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10d2\\u10d0\\u10d5\\u10da\\u10d0. \\u10d0\\u10db\\u10d8\\u10e2\\u10dd\\u10db \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1\\u10d0\\u10e1 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10da\\u10d0\\u10d3 \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10e1 \\u10db\\u10d8\\u10e1\\u10d0\\u10db\\u10d0\\u10e0\\u10d7\\u10d8 \\u10e1\\u10d0\\u10d3\\u10d0\\u10ea \\u10d2\\u10d0\\u10d3\\u10db\\u10dd\\u10d2\\u10d4\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d4\\u10d1\\u10d0\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e2\\u10e3\\u10e0\\u10d8 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1 \\u10d3\\u10d0 \\u10da\\u10d8\\u10dc\\u10d9\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10e1\\u10d0\\u10e1\\u10d5\\u10da\\u10d4\\u10da\\u10d0\\u10d3.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<a href=\\"http:\\/\\/www.siurpriz.ge\\">www.siurpriz.ge<\\/a>\\u00a0\\u2013\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc\\u00a0\\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10d8\\u10d7 \\u00a0\\u10ec\\u10d0\\u10e0\\u10db\\u10dd\\u10e5\\u10db\\u10dc\\u10d8\\u10da\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d7\\u10ee\\u10d5\\u10d4\\u10d5\\u10d0\\u10e8\\u10d8 \\u10d2\\u10d7\\u10ee\\u10dd\\u10d5\\u10d7 \\u10d2\\u10d0\\u10db\\u10dd\\u10d8\\u10e7\\u10d4\\u10dc\\u10dd\\u10d7 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2\\u10d8 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10e2\\u10d4\\u10da\\u10d4\\u10e4\\u10dd\\u10dc\\u10d8:+995 558 24 44 88 \\u10d4\\u10da\\u2013\\u10e4\\u10dd\\u10e1\\u10e2\\u10d0: info.siurpriz.ge\\u00a0\\u10e1\\u10d0\\u10d8\\u10e2\\u10d8\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8 \\u10db\\u10e3\\u10e8\\u10d0\\u10dd\\u10d1\\u10e1 \\u10e7\\u10dd\\u10d5\\u10d4\\u10da \\u10d3\\u10e6\\u10d4 \\u10d3\\u10d8\\u10da\\u10d8\\u10e1 10:00 \\u10e1\\u10d0\\u10d0\\u10d7\\u10d8\\u10d3\\u10d0\\u10dc \\u10e1\\u10d0\\u10e6\\u10d0\\u10db\\u10dd\\u10e1 21:00 \\u10e1\\u10d0\\u10d0\\u10d7\\u10d0\\u10db\\u10d3\\u10d4.\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc \\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d7\\u10ee\\u10d5\\u10d4\\u10d5\\u10d0\\u10e8\\u10d8 \\u10d3\\u10d0\\u10e3\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d3\\u10d8\\u10d7 \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d0\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8\\u10e1 \\u10dc\\u10dd\\u10db\\u10d4\\u10e0\\u10d6\\u10d4.\\u00a0<\\/p>\\r\\n<h2 style=\\"margin: 30px 0px 20px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 16px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e0\\u10d4 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1\\u00a0\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1 \\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8.<\\/h2>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d5\\u10d4\\u10d1 \\u10d2\\u10d5\\u10d4\\u10e0\\u10d3\\u10d6\\u10d4 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d2\\u10d0\\u10e5\\u10d5\\u10d7 \\u10e8\\u10d4\\u10e1\\u10d0\\u10eb\\u10da\\u10d4\\u10d1\\u10da\\u10dd\\u10d1\\u10d0 \\u10e8\\u10d4\\u10d8\\u10eb\\u10d8\\u10dc\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da\\u10d8 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10e4\\u10e3\\u10da\\u10d0\\u10d3\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8 \\u10e0\\u10dd\\u10db\\u10d4\\u10da\\u10e1\\u10d0\\u10ea \\u10d2\\u10d0\\u10db\\u10dd\\u10d8\\u10e7\\u10d4\\u10dc\\u10d4\\u10d1\\u10d7 \\u10d0\\u10db \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10dc\\u10d4\\u10d1\\u10d8\\u10e1\\u10db\\u10d8\\u10d4\\u10e0 \\u10e4\\u10d8\\u10da\\u10d0\\u10da\\u10e8\\u10d8. \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e4\\u10d0\\u10e1\\u10e1 \\u10d2\\u10d0\\u10dc\\u10e1\\u10d0\\u10d6\\u10e6\\u10d5\\u10e0\\u10d0\\u10d5\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d7\\u10d5\\u10d8\\u10d7\\u10dd\\u10dc \\u10e8\\u10d4\\u10e1\\u10d0\\u10d1\\u10d0\\u10db\\u10d8\\u10e1 \\u10d5\\u10d4\\u10da\\u10e8\\u10d8 \\u10d7\\u10d0\\u10dc\\u10ee\\u10d8\\u10e1 \\u10db\\u10d8\\u10d7\\u10d8\\u10d7\\u10d4\\u10d1\\u10d8\\u10d7. \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0 \\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d3\\u10d4\\u10d1\\u10d0 \\u00a0\\u10e5\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d8 Visa \\u10d0\\u10dc MasterCard \\u10de\\u10da\\u10d0\\u10e1\\u10e2\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e8\\u10e3\\u10d0\\u10da\\u10d4\\u10d1\\u10d8\\u10d7.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc \\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d7\\u10ee\\u10d5\\u10d4\\u10d5\\u10d0\\u10e8\\u10d8 \\u10d3\\u10d0\\u10e3\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d3\\u10d8\\u10d7 \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d0\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8\\u10e1 \\u10dc\\u10dd\\u10db\\u10d4\\u10e0\\u10d6\\u10d4.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10dc\\u10d8\\u10e1 \\u10d3\\u10d0\\u10e1\\u10e0\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2, \\u10d3\\u10d0\\u10d2\\u10d4\\u10dc\\u10d4\\u10e0\\u10d8\\u10e0\\u10d3\\u10d4\\u10d1\\u10d0 \\u10e3\\u10dc\\u10d8\\u10d9\\u10d0\\u10da\\u10e3\\u10e0\\u10d8 5 \\u10dc\\u10d8\\u10e8\\u10dc\\u10d0 \\u10d9\\u10dd\\u10d3\\u10d8. \\u10e0\\u10dd\\u10db\\u10d4\\u10da\\u10e1\\u10d0\\u10ea \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10d8 \\u10ec\\u10d0\\u10e0\\u10d0\\u10d3\\u10d2\\u10d4\\u10dc\\u10e1 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10e8\\u10d8 \\u10d3\\u10d0 \\u10db\\u10d8\\u10d8\\u10e6\\u10d4\\u10d1\\u10e1 \\u10de\\u10e0\\u10dd\\u10d3\\u10e3\\u10e5\\u10e2\\u10e1 \\u10d0\\u10dc \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10eb\\u10d4\\u10dc\\u10d0\\u10d3 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10d0\\u10d8\\u10e0\\u10e9\\u10d8\\u10dd\\u10d7. \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8\\u10e1 \\u10e2\\u10d8\\u10de\\u10d8 ( \\u10db\\u10dd\\u10d1\\u10d8\\u10e3\\u10e0\\u10d8, \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10d7 \\u10d0\\u10dc \\u10e4\\u10d8\\u10d6\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d5\\u10d4\\u10d7\\u10d0 ). \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd \\u10d2\\u10d0\\u10db\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d8, \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u10db\\u10d3\\u10d4 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10de\\u10dd\\u10e0\\u10e2\\u10d0\\u10da\\u10d6\\u10d4 \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10e1\\u10d0\\u10ee\\u10d4\\u10da\\u10d8, \\u10d2\\u10d5\\u10d0\\u10e0\\u10d8, \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10e1 \\u10d3\\u10d0 \\u10e1\\u10d0\\u10d9\\u10dd\\u10dc\\u10e2\\u10d0\\u10e5\\u10e2\\u10dd \\u10e2\\u10d4\\u10da\\u10d4\\u10e4\\u10dd\\u10dc\\u10d8\\u10e1 \\u10db\\u10dd\\u10dc\\u10d0\\u10ea\\u10d4\\u10db\\u10d4\\u10d1\\u10d8. \\u10e7\\u10e3\\u10e0\\u10d0\\u10d3\\u10e6\\u10d4\\u10d1\\u10d0 \\u10db\\u10d8\\u10d0\\u10e5\\u10ea\\u10d8\\u10d4\\u10d7 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d8\\u10e1\\u10ec\\u10dd\\u10e0\\u10d4\\u10e1, \\u10e0\\u10d0\\u10d3\\u10d2\\u10d0\\u10dc \\u10db\\u10d8\\u10d7\\u10d8\\u10d7\\u10d4\\u10d1\\u10e3\\u10da \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10db\\u10dd\\u10d2\\u10d4\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d4\\u10d1\\u10d0\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e2\\u10e3\\u10e0\\u10d8 \\u10d3\\u10d0 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1, \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10da\\u10d8\\u10dc\\u10d9\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10e1\\u10d5\\u10da\\u10d4\\u10da\\u10d0\\u10d3.\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d8\\u10d7 \\u10e1\\u10d0\\u10e0\\u10d2\\u10d4\\u10d1\\u10da\\u10dd\\u10d1\\u10d8\\u10e1\\u10d7\\u10d5\\u10d8\\u10e1 \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10db\\u10d0 \\u10e1\\u10d0\\u10d9\\u10db\\u10d0\\u10e0\\u10d8\\u10e1\\u10d8\\u10d0 \\u10ec\\u10d0\\u10e0\\u10d0\\u10d3\\u10d2\\u10dc\\u10d8\\u10dc\\u10dd\\u10e1 \\u10db\\u10d8\\u10e1\\u10e2\\u10d5\\u10d8\\u10e1 \\u10d3\\u10d0\\u10d2\\u10d4\\u10dc\\u10d4\\u10e0\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 5 \\u10dc\\u10d8\\u10e8\\u10dc\\u10d0 \\u10d9\\u10dd\\u10d3\\u10d8<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0 \\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d3\\u10d4\\u10d1\\u10d0 \\u00a0\\u10e5\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d8 Visa \\u10d0\\u10dc MasterCard \\u10de\\u10da\\u10d0\\u10e1\\u10e2\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e8\\u10e3\\u10d0\\u10da\\u10d4\\u10d1\\u10d8\\u10d7<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e2\\u10e0\\u10d0\\u10dc\\u10d6\\u10d0\\u10e5\\u10ea\\u10d8\\u10d8\\u10e1 \\u10ec\\u10d0\\u10e0\\u10db\\u10d0\\u10e2\\u10d4\\u10d1\\u10d8\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e0\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d2\\u10d0\\u10db\\u10dd\\u10d2\\u10d4\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d4\\u10d1\\u10d0\\u10d7 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10da\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1\\u00a0\\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1 \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10da\\u10d8\\u10dc\\u10d9\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10e1\\u10d0\\u10e1\\u10d5\\u10da\\u10d4\\u10da\\u10d0\\u10d3.\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10e8\\u10d8 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10da\\u10d8 \\u10d7\\u10d0\\u10dc\\u10ee\\u10d0 \\u10e3\\u10d9\\u10d0\\u10dc \\u10d0\\u10e0 \\u10d1\\u10e0\\u10e3\\u10dc\\u10d3\\u10d4\\u10d1\\u10d0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2016-02-28 21:12:16","created_by":"160","created_by_alias":"","modified":"2016-02-28 21:47:02","modified_by":"160","checked_out":"160","checked_out_time":"2016-02-28 21:45:44","publish_up":"2016-02-28 21:12:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `gift_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(8, 1, 1, '', '2016-02-28 21:47:28', 160, 20294, '460b778ba2fa1f55b28b2b6c21b1543ebef3b238', '{"id":1,"asset_id":"56","title":"\\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8","alias":"terms-and-conditions","introtext":"<h1 style=\\"margin: 0px 0px 30px; padding: 0px 0px 14px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #cccccc; box-sizing: border-box; font-weight: 300; font-stretch: inherit; font-size: 24px; line-height: 24px; font-family: dejavusans-extralight; vertical-align: baseline; color: #4c4c4c; letter-spacing: -1px; background-color: #f2f2f2;\\">\\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8<\\/h1>\\r\\n<div style=\\"margin: 0px; padding: 0px; border: 0px; box-sizing: border-box; font-stretch: inherit; font-size: 10px; line-height: 10px; font-family: ''Times New Roman''; vertical-align: baseline; color: #000000; background-color: #f2f2f2;\\">\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e9\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d5\\u10d4\\u10d1 \\u10d2\\u10d5\\u10d4\\u10e0\\u10d3\\u10d8\\u10e1 \\u10db\\u10d4\\u10e8\\u10d5\\u10d4\\u10dd\\u10d1\\u10d8\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10e8\\u10d4\\u10d2\\u10d8\\u10eb\\u10da\\u10d8\\u10d0\\u10d7 \\u10dd\\u10dc\\u10da\\u10d0\\u10d8\\u10dc \\u10e0\\u10d4\\u10df\\u10d8\\u10db\\u10e8\\u10d8 \\u10e8\\u10d4\\u10d0\\u10e0\\u10e9\\u10d8\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da\\u10d8 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8 \\u10d3\\u10d0 \\u10d2\\u10d0\\u10e3\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10e1 \\u10d4\\u10da\\u10d4\\u10e5\\u10e2\\u10e0\\u10dd\\u10dc\\u10e3\\u10da\\u10d8 \\u10d0\\u10dc \\u10e4\\u10d8\\u10d6\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10e4\\u10dd\\u10e0\\u10db\\u10d8\\u10d7<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1 \\u10d3\\u10d0 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1 \\u10d2\\u10d0\\u10dc\\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d3\\u10e0\\u10dd\\u10e1 \\u10ee\\u10d0\\u10e0\\u10d5\\u10d4\\u10d6\\u10d4\\u10d1\\u10d8\\u10e1\\u00a0\\u10d7\\u10d0\\u10d5\\u10d8\\u10d3\\u10d0\\u10dc \\u10d0\\u10e1\\u10d0\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10da\\u10d0\\u10d3, \\u10d2\\u10d7\\u10ee\\u10dd\\u10d5\\u10d7 \\u10e1\\u10e0\\u10e3\\u10da\\u10e7\\u10dd\\u10e4\\u10d8\\u10da\\u10d0\\u10d3 \\u10d2\\u10d0\\u10d4\\u10ea\\u10dc\\u10dd\\u10d7 \\u10d3\\u10d0 \\u10e7\\u10e3\\u10e0\\u10d0\\u10d3\\u10e6\\u10d4\\u10d1\\u10d8\\u10d7 \\u10d2\\u10d0\\u10d3\\u10d0\\u10d0\\u10db\\u10dd\\u10ec\\u10db\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10e1 \\u10db\\u10d8\\u10d4\\u10e0 \\u10e8\\u10d4\\u10e7\\u10d5\\u10d0\\u10dc\\u10d8\\u10da\\u10d8 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d8\\u10d6\\u10e3\\u10e1\\u10e2\\u10d4.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10d8\\u10e2\\u10d6\\u10d4 \\u10d0\\u10e0 \\u10d0\\u10e0\\u10d8\\u10e1 \\u10e1\\u10d0\\u10ed\\u10d8\\u10e0\\u10dd \\u10e0\\u10d4\\u10d2\\u10d8\\u10e1\\u10e2\\u10e0\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10d2\\u10d0\\u10d5\\u10da\\u10d0. \\u10d0\\u10db\\u10d8\\u10e2\\u10dd\\u10db \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1\\u10d0\\u10e1 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10da\\u10d0\\u10d3 \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10e1 \\u10db\\u10d8\\u10e1\\u10d0\\u10db\\u10d0\\u10e0\\u10d7\\u10d8 \\u10e1\\u10d0\\u10d3\\u10d0\\u10ea \\u10d2\\u10d0\\u10d3\\u10db\\u10dd\\u10d2\\u10d4\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d4\\u10d1\\u10d0\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e2\\u10e3\\u10e0\\u10d8 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1 \\u10d3\\u10d0 \\u10da\\u10d8\\u10dc\\u10d9\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10e1\\u10d0\\u10e1\\u10d5\\u10da\\u10d4\\u10da\\u10d0\\u10d3.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<a href=\\"http:\\/\\/www.siurpriz.ge\\">www.siurpriz.ge<\\/a>\\u00a0\\u2013\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc\\u00a0\\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10d8\\u10d7 \\u00a0\\u10ec\\u10d0\\u10e0\\u10db\\u10dd\\u10e5\\u10db\\u10dc\\u10d8\\u10da\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d7\\u10ee\\u10d5\\u10d4\\u10d5\\u10d0\\u10e8\\u10d8 \\u10d2\\u10d7\\u10ee\\u10dd\\u10d5\\u10d7 \\u10d2\\u10d0\\u10db\\u10dd\\u10d8\\u10e7\\u10d4\\u10dc\\u10dd\\u10d7 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2\\u10d8 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10e2\\u10d4\\u10da\\u10d4\\u10e4\\u10dd\\u10dc\\u10d8:+995 558 24 44 88 \\u10d4\\u10da\\u2013\\u10e4\\u10dd\\u10e1\\u10e2\\u10d0: info.siurpriz.ge\\u00a0\\u10e1\\u10d0\\u10d8\\u10e2\\u10d8\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8 \\u10db\\u10e3\\u10e8\\u10d0\\u10dd\\u10d1\\u10e1 \\u10e7\\u10dd\\u10d5\\u10d4\\u10da \\u10d3\\u10e6\\u10d4 \\u10d3\\u10d8\\u10da\\u10d8\\u10e1 10:00 \\u10e1\\u10d0\\u10d0\\u10d7\\u10d8\\u10d3\\u10d0\\u10dc \\u10e1\\u10d0\\u10e6\\u10d0\\u10db\\u10dd\\u10e1 21:00 \\u10e1\\u10d0\\u10d0\\u10d7\\u10d0\\u10db\\u10d3\\u10d4.\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc \\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d7\\u10ee\\u10d5\\u10d4\\u10d5\\u10d0\\u10e8\\u10d8 \\u10d3\\u10d0\\u10e3\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d3\\u10d8\\u10d7 \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d0\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8\\u10e1 \\u10dc\\u10dd\\u10db\\u10d4\\u10e0\\u10d6\\u10d4.\\u00a0<\\/p>\\r\\n<h2 style=\\"margin: 30px 0px 20px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 16px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e0\\u10d4 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1\\u00a0\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1 \\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8.<\\/h2>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d5\\u10d4\\u10d1 \\u10d2\\u10d5\\u10d4\\u10e0\\u10d3\\u10d6\\u10d4 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d2\\u10d0\\u10e5\\u10d5\\u10d7 \\u10e8\\u10d4\\u10e1\\u10d0\\u10eb\\u10da\\u10d4\\u10d1\\u10da\\u10dd\\u10d1\\u10d0 \\u10e8\\u10d4\\u10d8\\u10eb\\u10d8\\u10dc\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da\\u10d8 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10e4\\u10e3\\u10da\\u10d0\\u10d3\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8 \\u10e0\\u10dd\\u10db\\u10d4\\u10da\\u10e1\\u10d0\\u10ea \\u10d2\\u10d0\\u10db\\u10dd\\u10d8\\u10e7\\u10d4\\u10dc\\u10d4\\u10d1\\u10d7 \\u10d0\\u10db \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10dc\\u10d4\\u10d1\\u10d8\\u10e1\\u10db\\u10d8\\u10d4\\u10e0 \\u10e4\\u10d8\\u10da\\u10d0\\u10da\\u10e8\\u10d8. \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e4\\u10d0\\u10e1\\u10e1 \\u10d2\\u10d0\\u10dc\\u10e1\\u10d0\\u10d6\\u10e6\\u10d5\\u10e0\\u10d0\\u10d5\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d7\\u10d5\\u10d8\\u10d7\\u10dd\\u10dc \\u10e8\\u10d4\\u10e1\\u10d0\\u10d1\\u10d0\\u10db\\u10d8\\u10e1 \\u10d5\\u10d4\\u10da\\u10e8\\u10d8 \\u10d7\\u10d0\\u10dc\\u10ee\\u10d8\\u10e1 \\u10db\\u10d8\\u10d7\\u10d8\\u10d7\\u10d4\\u10d1\\u10d8\\u10d7. \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0 \\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d3\\u10d4\\u10d1\\u10d0 \\u00a0\\u10e5\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d8 Visa \\u10d0\\u10dc MasterCard \\u10de\\u10da\\u10d0\\u10e1\\u10e2\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e8\\u10e3\\u10d0\\u10da\\u10d4\\u10d1\\u10d8\\u10d7.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc \\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d7\\u10ee\\u10d5\\u10d4\\u10d5\\u10d0\\u10e8\\u10d8 \\u10d3\\u10d0\\u10e3\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d3\\u10d8\\u10d7 \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d0\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8\\u10e1 \\u10dc\\u10dd\\u10db\\u10d4\\u10e0\\u10d6\\u10d4.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10dc\\u10d8\\u10e1 \\u10d3\\u10d0\\u10e1\\u10e0\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2, \\u10d3\\u10d0\\u10d2\\u10d4\\u10dc\\u10d4\\u10e0\\u10d8\\u10e0\\u10d3\\u10d4\\u10d1\\u10d0 \\u10e3\\u10dc\\u10d8\\u10d9\\u10d0\\u10da\\u10e3\\u10e0\\u10d8 5 \\u10dc\\u10d8\\u10e8\\u10dc\\u10d0 \\u10d9\\u10dd\\u10d3\\u10d8. \\u10e0\\u10dd\\u10db\\u10d4\\u10da\\u10e1\\u10d0\\u10ea \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10d8 \\u10ec\\u10d0\\u10e0\\u10d0\\u10d3\\u10d2\\u10d4\\u10dc\\u10e1 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10e8\\u10d8 \\u10d3\\u10d0 \\u10db\\u10d8\\u10d8\\u10e6\\u10d4\\u10d1\\u10e1 \\u10de\\u10e0\\u10dd\\u10d3\\u10e3\\u10e5\\u10e2\\u10e1 \\u10d0\\u10dc \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10eb\\u10d4\\u10dc\\u10d0\\u10d3 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10d0\\u10d8\\u10e0\\u10e9\\u10d8\\u10dd\\u10d7. \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8\\u10e1 \\u10e2\\u10d8\\u10de\\u10d8 ( \\u10db\\u10dd\\u10d1\\u10d8\\u10e3\\u10e0\\u10d8, \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10d7 \\u10d0\\u10dc \\u10e4\\u10d8\\u10d6\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d5\\u10d4\\u10d7\\u10d0 ). \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd \\u10d2\\u10d0\\u10db\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d8, \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u10db\\u10d3\\u10d4 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10de\\u10dd\\u10e0\\u10e2\\u10d0\\u10da\\u10d6\\u10d4 \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10e1\\u10d0\\u10ee\\u10d4\\u10da\\u10d8, \\u10d2\\u10d5\\u10d0\\u10e0\\u10d8, \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10e1 \\u10d3\\u10d0 \\u10e1\\u10d0\\u10d9\\u10dd\\u10dc\\u10e2\\u10d0\\u10e5\\u10e2\\u10dd \\u10e2\\u10d4\\u10da\\u10d4\\u10e4\\u10dd\\u10dc\\u10d8\\u10e1 \\u10db\\u10dd\\u10dc\\u10d0\\u10ea\\u10d4\\u10db\\u10d4\\u10d1\\u10d8. \\u10e7\\u10e3\\u10e0\\u10d0\\u10d3\\u10e6\\u10d4\\u10d1\\u10d0 \\u10db\\u10d8\\u10d0\\u10e5\\u10ea\\u10d8\\u10d4\\u10d7 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d8\\u10e1\\u10ec\\u10dd\\u10e0\\u10d4\\u10e1, \\u10e0\\u10d0\\u10d3\\u10d2\\u10d0\\u10dc \\u10db\\u10d8\\u10d7\\u10d8\\u10d7\\u10d4\\u10d1\\u10e3\\u10da \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10db\\u10dd\\u10d2\\u10d4\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d4\\u10d1\\u10d0\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e2\\u10e3\\u10e0\\u10d8 \\u10d3\\u10d0 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1, \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10da\\u10d8\\u10dc\\u10d9\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10e1\\u10d5\\u10da\\u10d4\\u10da\\u10d0\\u10d3.\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d8\\u10d7 \\u10e1\\u10d0\\u10e0\\u10d2\\u10d4\\u10d1\\u10da\\u10dd\\u10d1\\u10d8\\u10e1\\u10d7\\u10d5\\u10d8\\u10e1 \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10db\\u10d0 \\u10e1\\u10d0\\u10d9\\u10db\\u10d0\\u10e0\\u10d8\\u10e1\\u10d8\\u10d0 \\u10ec\\u10d0\\u10e0\\u10d0\\u10d3\\u10d2\\u10dc\\u10d8\\u10dc\\u10dd\\u10e1 \\u10db\\u10d8\\u10e1\\u10e2\\u10d5\\u10d8\\u10e1 \\u10d3\\u10d0\\u10d2\\u10d4\\u10dc\\u10d4\\u10e0\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 5 \\u10dc\\u10d8\\u10e8\\u10dc\\u10d0 \\u10d9\\u10dd\\u10d3\\u10d8<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0 \\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d3\\u10d4\\u10d1\\u10d0 \\u00a0\\u10e5\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d8 Visa \\u10d0\\u10dc MasterCard \\u10de\\u10da\\u10d0\\u10e1\\u10e2\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e8\\u10e3\\u10d0\\u10da\\u10d4\\u10d1\\u10d8\\u10d7<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e2\\u10e0\\u10d0\\u10dc\\u10d6\\u10d0\\u10e5\\u10ea\\u10d8\\u10d8\\u10e1 \\u10ec\\u10d0\\u10e0\\u10db\\u10d0\\u10e2\\u10d4\\u10d1\\u10d8\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e0\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d2\\u10d0\\u10db\\u10dd\\u10d2\\u10d4\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d4\\u10d1\\u10d0\\u10d7 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10da\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1\\u00a0\\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1 \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10da\\u10d8\\u10dc\\u10d9\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10e1\\u10d0\\u10e1\\u10d5\\u10da\\u10d4\\u10da\\u10d0\\u10d3.\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10e8\\u10d8 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10da\\u10d8 \\u10d7\\u10d0\\u10dc\\u10ee\\u10d0 \\u10e3\\u10d9\\u10d0\\u10dc \\u10d0\\u10e0 \\u10d1\\u10e0\\u10e3\\u10dc\\u10d3\\u10d4\\u10d1\\u10d0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2016-02-28 21:12:16","created_by":"160","created_by_alias":"","modified":"2016-02-28 21:47:28","modified_by":"160","checked_out":"160","checked_out_time":"2016-02-28 21:47:02","publish_up":"2016-02-28 21:12:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"6","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(9, 1, 1, '', '2016-03-06 19:35:56', 160, 20203, 'cceadc7122f033b2ccf2a601268d6b49aee7e54f', '{"id":1,"asset_id":"56","title":"\\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8","alias":"terms-and-conditions","introtext":"<h1 style=\\"margin: 0px 0px 30px; padding: 0px 0px 14px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: #cccccc; box-sizing: border-box; font-weight: 300; font-stretch: inherit; font-size: 24px; line-height: 24px; font-family: dejavusans-extralight; vertical-align: baseline; color: #4c4c4c; letter-spacing: -1px; background-color: #f2f2f2;\\">\\u00a0<\\/h1>\\r\\n<div style=\\"margin: 0px; padding: 0px; border: 0px; box-sizing: border-box; font-stretch: inherit; font-size: 10px; line-height: 10px; font-family: ''Times New Roman''; vertical-align: baseline; color: #000000; background-color: #f2f2f2;\\">\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e9\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d5\\u10d4\\u10d1 \\u10d2\\u10d5\\u10d4\\u10e0\\u10d3\\u10d8\\u10e1 \\u10db\\u10d4\\u10e8\\u10d5\\u10d4\\u10dd\\u10d1\\u10d8\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10e8\\u10d4\\u10d2\\u10d8\\u10eb\\u10da\\u10d8\\u10d0\\u10d7 \\u10dd\\u10dc\\u10da\\u10d0\\u10d8\\u10dc \\u10e0\\u10d4\\u10df\\u10d8\\u10db\\u10e8\\u10d8 \\u10e8\\u10d4\\u10d0\\u10e0\\u10e9\\u10d8\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da\\u10d8 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8 \\u10d3\\u10d0 \\u10d2\\u10d0\\u10e3\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10e1 \\u10d4\\u10da\\u10d4\\u10e5\\u10e2\\u10e0\\u10dd\\u10dc\\u10e3\\u10da\\u10d8 \\u10d0\\u10dc \\u10e4\\u10d8\\u10d6\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10e4\\u10dd\\u10e0\\u10db\\u10d8\\u10d7<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1 \\u10d3\\u10d0 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1 \\u10d2\\u10d0\\u10dc\\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d3\\u10e0\\u10dd\\u10e1 \\u10ee\\u10d0\\u10e0\\u10d5\\u10d4\\u10d6\\u10d4\\u10d1\\u10d8\\u10e1\\u00a0\\u10d7\\u10d0\\u10d5\\u10d8\\u10d3\\u10d0\\u10dc \\u10d0\\u10e1\\u10d0\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10da\\u10d0\\u10d3, \\u10d2\\u10d7\\u10ee\\u10dd\\u10d5\\u10d7 \\u10e1\\u10e0\\u10e3\\u10da\\u10e7\\u10dd\\u10e4\\u10d8\\u10da\\u10d0\\u10d3 \\u10d2\\u10d0\\u10d4\\u10ea\\u10dc\\u10dd\\u10d7 \\u10d3\\u10d0 \\u10e7\\u10e3\\u10e0\\u10d0\\u10d3\\u10e6\\u10d4\\u10d1\\u10d8\\u10d7 \\u10d2\\u10d0\\u10d3\\u10d0\\u10d0\\u10db\\u10dd\\u10ec\\u10db\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10e1 \\u10db\\u10d8\\u10d4\\u10e0 \\u10e8\\u10d4\\u10e7\\u10d5\\u10d0\\u10dc\\u10d8\\u10da\\u10d8 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d8\\u10d6\\u10e3\\u10e1\\u10e2\\u10d4.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10d8\\u10e2\\u10d6\\u10d4 \\u10d0\\u10e0 \\u10d0\\u10e0\\u10d8\\u10e1 \\u10e1\\u10d0\\u10ed\\u10d8\\u10e0\\u10dd \\u10e0\\u10d4\\u10d2\\u10d8\\u10e1\\u10e2\\u10e0\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10d2\\u10d0\\u10d5\\u10da\\u10d0. \\u10d0\\u10db\\u10d8\\u10e2\\u10dd\\u10db \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1\\u10d0\\u10e1 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10da\\u10d0\\u10d3 \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10e1 \\u10db\\u10d8\\u10e1\\u10d0\\u10db\\u10d0\\u10e0\\u10d7\\u10d8 \\u10e1\\u10d0\\u10d3\\u10d0\\u10ea \\u10d2\\u10d0\\u10d3\\u10db\\u10dd\\u10d2\\u10d4\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d4\\u10d1\\u10d0\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e2\\u10e3\\u10e0\\u10d8 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1 \\u10d3\\u10d0 \\u10da\\u10d8\\u10dc\\u10d9\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10e1\\u10d0\\u10e1\\u10d5\\u10da\\u10d4\\u10da\\u10d0\\u10d3.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<a href=\\"http:\\/\\/www.siurpriz.ge\\">www.siurpriz.ge<\\/a>\\u00a0\\u2013\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc\\u00a0\\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10d8\\u10d7 \\u00a0\\u10ec\\u10d0\\u10e0\\u10db\\u10dd\\u10e5\\u10db\\u10dc\\u10d8\\u10da\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d7\\u10ee\\u10d5\\u10d4\\u10d5\\u10d0\\u10e8\\u10d8 \\u10d2\\u10d7\\u10ee\\u10dd\\u10d5\\u10d7 \\u10d2\\u10d0\\u10db\\u10dd\\u10d8\\u10e7\\u10d4\\u10dc\\u10dd\\u10d7 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2\\u10d8 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10e2\\u10d4\\u10da\\u10d4\\u10e4\\u10dd\\u10dc\\u10d8:+995 558 24 44 88 \\u10d4\\u10da\\u2013\\u10e4\\u10dd\\u10e1\\u10e2\\u10d0: info.siurpriz.ge\\u00a0\\u10e1\\u10d0\\u10d8\\u10e2\\u10d8\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8 \\u10db\\u10e3\\u10e8\\u10d0\\u10dd\\u10d1\\u10e1 \\u10e7\\u10dd\\u10d5\\u10d4\\u10da \\u10d3\\u10e6\\u10d4 \\u10d3\\u10d8\\u10da\\u10d8\\u10e1 10:00 \\u10e1\\u10d0\\u10d0\\u10d7\\u10d8\\u10d3\\u10d0\\u10dc \\u10e1\\u10d0\\u10e6\\u10d0\\u10db\\u10dd\\u10e1 21:00 \\u10e1\\u10d0\\u10d0\\u10d7\\u10d0\\u10db\\u10d3\\u10d4.\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc \\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d7\\u10ee\\u10d5\\u10d4\\u10d5\\u10d0\\u10e8\\u10d8 \\u10d3\\u10d0\\u10e3\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d3\\u10d8\\u10d7 \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d0\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8\\u10e1 \\u10dc\\u10dd\\u10db\\u10d4\\u10e0\\u10d6\\u10d4.\\u00a0<\\/p>\\r\\n<h2 style=\\"margin: 30px 0px 20px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 16px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e0\\u10d4 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1\\u00a0\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1 \\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8.<\\/h2>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d5\\u10d4\\u10d1 \\u10d2\\u10d5\\u10d4\\u10e0\\u10d3\\u10d6\\u10d4 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d2\\u10d0\\u10e5\\u10d5\\u10d7 \\u10e8\\u10d4\\u10e1\\u10d0\\u10eb\\u10da\\u10d4\\u10d1\\u10da\\u10dd\\u10d1\\u10d0 \\u10e8\\u10d4\\u10d8\\u10eb\\u10d8\\u10dc\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da\\u10d8 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10e4\\u10e3\\u10da\\u10d0\\u10d3\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8 \\u10e0\\u10dd\\u10db\\u10d4\\u10da\\u10e1\\u10d0\\u10ea \\u10d2\\u10d0\\u10db\\u10dd\\u10d8\\u10e7\\u10d4\\u10dc\\u10d4\\u10d1\\u10d7 \\u10d0\\u10db \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10dc\\u10d4\\u10d1\\u10d8\\u10e1\\u10db\\u10d8\\u10d4\\u10e0 \\u10e4\\u10d8\\u10da\\u10d0\\u10da\\u10e8\\u10d8. \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e4\\u10d0\\u10e1\\u10e1 \\u10d2\\u10d0\\u10dc\\u10e1\\u10d0\\u10d6\\u10e6\\u10d5\\u10e0\\u10d0\\u10d5\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d7\\u10d5\\u10d8\\u10d7\\u10dd\\u10dc \\u10e8\\u10d4\\u10e1\\u10d0\\u10d1\\u10d0\\u10db\\u10d8\\u10e1 \\u10d5\\u10d4\\u10da\\u10e8\\u10d8 \\u10d7\\u10d0\\u10dc\\u10ee\\u10d8\\u10e1 \\u10db\\u10d8\\u10d7\\u10d8\\u10d7\\u10d4\\u10d1\\u10d8\\u10d7. \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0 \\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d3\\u10d4\\u10d1\\u10d0 \\u00a0\\u10e5\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d8 Visa \\u10d0\\u10dc MasterCard \\u10de\\u10da\\u10d0\\u10e1\\u10e2\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e8\\u10e3\\u10d0\\u10da\\u10d4\\u10d1\\u10d8\\u10d7.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc \\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d7\\u10ee\\u10d5\\u10d4\\u10d5\\u10d0\\u10e8\\u10d8 \\u10d3\\u10d0\\u10e3\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d3\\u10d8\\u10d7 \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d0\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8\\u10e1 \\u10dc\\u10dd\\u10db\\u10d4\\u10e0\\u10d6\\u10d4.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10dc\\u10d8\\u10e1 \\u10d3\\u10d0\\u10e1\\u10e0\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2, \\u10d3\\u10d0\\u10d2\\u10d4\\u10dc\\u10d4\\u10e0\\u10d8\\u10e0\\u10d3\\u10d4\\u10d1\\u10d0 \\u10e3\\u10dc\\u10d8\\u10d9\\u10d0\\u10da\\u10e3\\u10e0\\u10d8 5 \\u10dc\\u10d8\\u10e8\\u10dc\\u10d0 \\u10d9\\u10dd\\u10d3\\u10d8. \\u10e0\\u10dd\\u10db\\u10d4\\u10da\\u10e1\\u10d0\\u10ea \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10d8 \\u10ec\\u10d0\\u10e0\\u10d0\\u10d3\\u10d2\\u10d4\\u10dc\\u10e1 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10e8\\u10d8 \\u10d3\\u10d0 \\u10db\\u10d8\\u10d8\\u10e6\\u10d4\\u10d1\\u10e1 \\u10de\\u10e0\\u10dd\\u10d3\\u10e3\\u10e5\\u10e2\\u10e1 \\u10d0\\u10dc \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1.<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10eb\\u10d4\\u10dc\\u10d0\\u10d3 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10d0\\u10d8\\u10e0\\u10e9\\u10d8\\u10dd\\u10d7. \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8\\u10e1 \\u10e2\\u10d8\\u10de\\u10d8 ( \\u10db\\u10dd\\u10d1\\u10d8\\u10e3\\u10e0\\u10d8, \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10d7 \\u10d0\\u10dc \\u10e4\\u10d8\\u10d6\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d5\\u10d4\\u10d7\\u10d0 ). \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd \\u10d2\\u10d0\\u10db\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d8, \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u10db\\u10d3\\u10d4 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10de\\u10dd\\u10e0\\u10e2\\u10d0\\u10da\\u10d6\\u10d4 \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10e1\\u10d0\\u10ee\\u10d4\\u10da\\u10d8, \\u10d2\\u10d5\\u10d0\\u10e0\\u10d8, \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10e1 \\u10d3\\u10d0 \\u10e1\\u10d0\\u10d9\\u10dd\\u10dc\\u10e2\\u10d0\\u10e5\\u10e2\\u10dd \\u10e2\\u10d4\\u10da\\u10d4\\u10e4\\u10dd\\u10dc\\u10d8\\u10e1 \\u10db\\u10dd\\u10dc\\u10d0\\u10ea\\u10d4\\u10db\\u10d4\\u10d1\\u10d8. \\u10e7\\u10e3\\u10e0\\u10d0\\u10d3\\u10e6\\u10d4\\u10d1\\u10d0 \\u10db\\u10d8\\u10d0\\u10e5\\u10ea\\u10d8\\u10d4\\u10d7 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d8\\u10e1\\u10ec\\u10dd\\u10e0\\u10d4\\u10e1, \\u10e0\\u10d0\\u10d3\\u10d2\\u10d0\\u10dc \\u10db\\u10d8\\u10d7\\u10d8\\u10d7\\u10d4\\u10d1\\u10e3\\u10da \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10db\\u10dd\\u10d2\\u10d4\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d4\\u10d1\\u10d0\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e2\\u10e3\\u10e0\\u10d8 \\u10d3\\u10d0 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1, \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10da\\u10d8\\u10dc\\u10d9\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10e1\\u10d5\\u10da\\u10d4\\u10da\\u10d0\\u10d3.\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d8\\u10d7 \\u10e1\\u10d0\\u10e0\\u10d2\\u10d4\\u10d1\\u10da\\u10dd\\u10d1\\u10d8\\u10e1\\u10d7\\u10d5\\u10d8\\u10e1 \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10db\\u10d0 \\u10e1\\u10d0\\u10d9\\u10db\\u10d0\\u10e0\\u10d8\\u10e1\\u10d8\\u10d0 \\u10ec\\u10d0\\u10e0\\u10d0\\u10d3\\u10d2\\u10dc\\u10d8\\u10dc\\u10dd\\u10e1 \\u10db\\u10d8\\u10e1\\u10e2\\u10d5\\u10d8\\u10e1 \\u10d3\\u10d0\\u10d2\\u10d4\\u10dc\\u10d4\\u10e0\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 5 \\u10dc\\u10d8\\u10e8\\u10dc\\u10d0 \\u10d9\\u10dd\\u10d3\\u10d8<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0 \\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d3\\u10d4\\u10d1\\u10d0 \\u00a0\\u10e5\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d8 Visa \\u10d0\\u10dc MasterCard \\u10de\\u10da\\u10d0\\u10e1\\u10e2\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e8\\u10e3\\u10d0\\u10da\\u10d4\\u10d1\\u10d8\\u10d7<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10e2\\u10e0\\u10d0\\u10dc\\u10d6\\u10d0\\u10e5\\u10ea\\u10d8\\u10d8\\u10e1 \\u10ec\\u10d0\\u10e0\\u10db\\u10d0\\u10e2\\u10d4\\u10d1\\u10d8\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e0\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d2\\u10d0\\u10db\\u10dd\\u10d2\\u10d4\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d4\\u10d1\\u10d0\\u10d7 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10da\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1\\u00a0\\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1 \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10da\\u10d8\\u10dc\\u10d9\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10e1\\u10d0\\u10e1\\u10d5\\u10da\\u10d4\\u10da\\u10d0\\u10d3.\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10e8\\u10d8 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10da\\u10d8 \\u10d7\\u10d0\\u10dc\\u10ee\\u10d0 \\u10e3\\u10d9\\u10d0\\u10dc \\u10d0\\u10e0 \\u10d1\\u10e0\\u10e3\\u10dc\\u10d3\\u10d4\\u10d1\\u10d0<\\/p>\\r\\n<p style=\\"margin: 0px 0px 10px; padding: 0px; border: 0px; box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: dejavusans_book; vertical-align: baseline; color: #4c4c4c;\\">\\u00a0<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2016-02-28 21:12:16","created_by":"160","created_by_alias":"","modified":"2016-03-06 19:35:56","modified_by":"160","checked_out":"160","checked_out_time":"2016-03-06 19:32:46","publish_up":"2016-02-28 21:12:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"72","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `gift_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(10, 1, 1, '', '2016-03-06 19:37:01', 160, 7574, '1f98e7b13086202b74ec2edda4d6e16a54c62e79', '{"id":1,"asset_id":"56","title":"\\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8","alias":"terms-and-conditions","introtext":"<p>\\u10d5\\u10d4\\u10d1 \\u10d2\\u10d5\\u10d4\\u10e0\\u10d3\\u10d6\\u10d4 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d2\\u10d0\\u10e5\\u10d5\\u10d7 \\u10e8\\u10d4\\u10e1\\u10d0\\u10eb\\u10da\\u10d4\\u10d1\\u10da\\u10dd\\u10d1\\u10d0 \\u10e8\\u10d4\\u10d8\\u10eb\\u10d8\\u10dc\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da\\u10d8 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10e4\\u10e3\\u10da\\u10d0\\u10d3\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8 \\u10e0\\u10dd\\u10db\\u10d4\\u10da\\u10e1\\u10d0\\u10ea \\u10d2\\u10d0\\u10db\\u10dd\\u10d8\\u10e7\\u10d4\\u10dc\\u10d4\\u10d1\\u10d7 \\u10d0\\u10db \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10dc\\u10d4\\u10d1\\u10d8\\u10e1\\u10db\\u10d8\\u10d4\\u10e0 \\u10e4\\u10d8\\u10da\\u10d0\\u10da\\u10e8\\u10d8. \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e4\\u10d0\\u10e1\\u10e1 \\u10d2\\u10d0\\u10dc\\u10e1\\u10d0\\u10d6\\u10e6\\u10d5\\u10e0\\u10d0\\u10d5\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d7\\u10d5\\u10d8\\u10d7\\u10dd\\u10dc \\u10e8\\u10d4\\u10e1\\u10d0\\u10d1\\u10d0\\u10db\\u10d8\\u10e1 \\u10d5\\u10d4\\u10da\\u10e8\\u10d8 \\u10d7\\u10d0\\u10dc\\u10ee\\u10d8\\u10e1 \\u10db\\u10d8\\u10d7\\u10d8\\u10d7\\u10d4\\u10d1\\u10d8\\u10d7. \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0 \\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d3\\u10d4\\u10d1\\u10d0 \\u00a0\\u10e5\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d8 Visa \\u10d0\\u10dc MasterCard \\u10de\\u10da\\u10d0\\u10e1\\u10e2\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e8\\u10e3\\u10d0\\u10da\\u10d4\\u10d1\\u10d8\\u10d7.<\\/p>\\r\\n<p>\\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc \\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d7\\u10ee\\u10d5\\u10d4\\u10d5\\u10d0\\u10e8\\u10d8 \\u10d3\\u10d0\\u10e3\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d3\\u10d8\\u10d7 \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d0\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8\\u10e1 \\u10dc\\u10dd\\u10db\\u10d4\\u10e0\\u10d6\\u10d4.<\\/p>\\r\\n<p>\\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10dc\\u10d8\\u10e1 \\u10d3\\u10d0\\u10e1\\u10e0\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2, \\u10d3\\u10d0\\u10d2\\u10d4\\u10dc\\u10d4\\u10e0\\u10d8\\u10e0\\u10d3\\u10d4\\u10d1\\u10d0 \\u10e3\\u10dc\\u10d8\\u10d9\\u10d0\\u10da\\u10e3\\u10e0\\u10d8 5 \\u10dc\\u10d8\\u10e8\\u10dc\\u10d0 \\u10d9\\u10dd\\u10d3\\u10d8. \\u10e0\\u10dd\\u10db\\u10d4\\u10da\\u10e1\\u10d0\\u10ea \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10d8 \\u10ec\\u10d0\\u10e0\\u10d0\\u10d3\\u10d2\\u10d4\\u10dc\\u10e1 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10e8\\u10d8 \\u10d3\\u10d0 \\u10db\\u10d8\\u10d8\\u10e6\\u10d4\\u10d1\\u10e1 \\u10de\\u10e0\\u10dd\\u10d3\\u10e3\\u10e5\\u10e2\\u10e1 \\u10d0\\u10dc \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10eb\\u10d4\\u10dc\\u10d0\\u10d3 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10d0\\u10d8\\u10e0\\u10e9\\u10d8\\u10dd\\u10d7. \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8\\u10e1 \\u10e2\\u10d8\\u10de\\u10d8 ( \\u10db\\u10dd\\u10d1\\u10d8\\u10e3\\u10e0\\u10d8, \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10d7 \\u10d0\\u10dc \\u10e4\\u10d8\\u10d6\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d5\\u10d4\\u10d7\\u10d0 ). \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd \\u10d2\\u10d0\\u10db\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d8, \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u10db\\u10d3\\u10d4 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10de\\u10dd\\u10e0\\u10e2\\u10d0\\u10da\\u10d6\\u10d4 \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10e1\\u10d0\\u10ee\\u10d4\\u10da\\u10d8, \\u10d2\\u10d5\\u10d0\\u10e0\\u10d8, \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10e1 \\u10d3\\u10d0 \\u10e1\\u10d0\\u10d9\\u10dd\\u10dc\\u10e2\\u10d0\\u10e5\\u10e2\\u10dd \\u10e2\\u10d4\\u10da\\u10d4\\u10e4\\u10dd\\u10dc\\u10d8\\u10e1 \\u10db\\u10dd\\u10dc\\u10d0\\u10ea\\u10d4\\u10db\\u10d4\\u10d1\\u10d8. \\u10e7\\u10e3\\u10e0\\u10d0\\u10d3\\u10e6\\u10d4\\u10d1\\u10d0 \\u10db\\u10d8\\u10d0\\u10e5\\u10ea\\u10d8\\u10d4\\u10d7 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d8\\u10e1\\u10ec\\u10dd\\u10e0\\u10d4\\u10e1, \\u10e0\\u10d0\\u10d3\\u10d2\\u10d0\\u10dc \\u10db\\u10d8\\u10d7\\u10d8\\u10d7\\u10d4\\u10d1\\u10e3\\u10da \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10db\\u10dd\\u10d2\\u10d4\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d4\\u10d1\\u10d0\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e2\\u10e3\\u10e0\\u10d8 \\u10d3\\u10d0 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1, \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10da\\u10d8\\u10dc\\u10d9\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10e1\\u10d5\\u10da\\u10d4\\u10da\\u10d0\\u10d3.\\u00a0<\\/p>\\r\\n<p>\\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d8\\u10d7 \\u10e1\\u10d0\\u10e0\\u10d2\\u10d4\\u10d1\\u10da\\u10dd\\u10d1\\u10d8\\u10e1\\u10d7\\u10d5\\u10d8\\u10e1 \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10db\\u10d0 \\u10e1\\u10d0\\u10d9\\u10db\\u10d0\\u10e0\\u10d8\\u10e1\\u10d8\\u10d0 \\u10ec\\u10d0\\u10e0\\u10d0\\u10d3\\u10d2\\u10dc\\u10d8\\u10dc\\u10dd\\u10e1 \\u10db\\u10d8\\u10e1\\u10e2\\u10d5\\u10d8\\u10e1 \\u10d3\\u10d0\\u10d2\\u10d4\\u10dc\\u10d4\\u10e0\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 5 \\u10dc\\u10d8\\u10e8\\u10dc\\u10d0 \\u10d9\\u10dd\\u10d3\\u10d8<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-02-28 21:12:16","created_by":"160","created_by_alias":"","modified":"2016-03-06 19:37:01","modified_by":"160","checked_out":"160","checked_out_time":"2016-03-06 19:35:56","publish_up":"2016-02-28 21:12:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"72","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(11, 1, 1, '', '2016-03-06 19:37:34', 160, 14498, '97597f8123bf8a9754e4e3747efbf73a72958fc5', '{"id":1,"asset_id":"56","title":"\\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8","alias":"terms-and-conditions","introtext":"<h1>\\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8<\\/h1>\\r\\n<div>\\r\\n<p>\\u10e9\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d5\\u10d4\\u10d1 \\u10d2\\u10d5\\u10d4\\u10e0\\u10d3\\u10d8\\u10e1 \\u10db\\u10d4\\u10e8\\u10d5\\u10d4\\u10dd\\u10d1\\u10d8\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10e8\\u10d4\\u10d2\\u10d8\\u10eb\\u10da\\u10d8\\u10d0\\u10d7 \\u10dd\\u10dc\\u10da\\u10d0\\u10d8\\u10dc \\u10e0\\u10d4\\u10df\\u10d8\\u10db\\u10e8\\u10d8 \\u10e8\\u10d4\\u10d0\\u10e0\\u10e9\\u10d8\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da\\u10d8 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8 \\u10d3\\u10d0 \\u10d2\\u10d0\\u10e3\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10e1 \\u10d4\\u10da\\u10d4\\u10e5\\u10e2\\u10e0\\u10dd\\u10dc\\u10e3\\u10da\\u10d8 \\u10d0\\u10dc \\u10e4\\u10d8\\u10d6\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10e4\\u10dd\\u10e0\\u10db\\u10d8\\u10d7<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1 \\u10d3\\u10d0 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1 \\u10d2\\u10d0\\u10dc\\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d3\\u10e0\\u10dd\\u10e1 \\u10ee\\u10d0\\u10e0\\u10d5\\u10d4\\u10d6\\u10d4\\u10d1\\u10d8\\u10e1\\u00a0\\u10d7\\u10d0\\u10d5\\u10d8\\u10d3\\u10d0\\u10dc \\u10d0\\u10e1\\u10d0\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10da\\u10d0\\u10d3, \\u10d2\\u10d7\\u10ee\\u10dd\\u10d5\\u10d7 \\u10e1\\u10e0\\u10e3\\u10da\\u10e7\\u10dd\\u10e4\\u10d8\\u10da\\u10d0\\u10d3 \\u10d2\\u10d0\\u10d4\\u10ea\\u10dc\\u10dd\\u10d7 \\u10d3\\u10d0 \\u10e7\\u10e3\\u10e0\\u10d0\\u10d3\\u10e6\\u10d4\\u10d1\\u10d8\\u10d7 \\u10d2\\u10d0\\u10d3\\u10d0\\u10d0\\u10db\\u10dd\\u10ec\\u10db\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10e1 \\u10db\\u10d8\\u10d4\\u10e0 \\u10e8\\u10d4\\u10e7\\u10d5\\u10d0\\u10dc\\u10d8\\u10da\\u10d8 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d8\\u10d6\\u10e3\\u10e1\\u10e2\\u10d4.<\\/p>\\r\\n<p>\\u10e1\\u10d0\\u10d8\\u10e2\\u10d6\\u10d4 \\u10d0\\u10e0 \\u10d0\\u10e0\\u10d8\\u10e1 \\u10e1\\u10d0\\u10ed\\u10d8\\u10e0\\u10dd \\u10e0\\u10d4\\u10d2\\u10d8\\u10e1\\u10e2\\u10e0\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10d2\\u10d0\\u10d5\\u10da\\u10d0. \\u10d0\\u10db\\u10d8\\u10e2\\u10dd\\u10db \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1\\u10d0\\u10e1 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10da\\u10d0\\u10d3 \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10e1 \\u10db\\u10d8\\u10e1\\u10d0\\u10db\\u10d0\\u10e0\\u10d7\\u10d8 \\u10e1\\u10d0\\u10d3\\u10d0\\u10ea \\u10d2\\u10d0\\u10d3\\u10db\\u10dd\\u10d2\\u10d4\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d4\\u10d1\\u10d0\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e2\\u10e3\\u10e0\\u10d8 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1 \\u10d3\\u10d0 \\u10da\\u10d8\\u10dc\\u10d9\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10e1\\u10d0\\u10e1\\u10d5\\u10da\\u10d4\\u10da\\u10d0\\u10d3.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<a href=\\"http:\\/\\/www.siurpriz.ge\\/\\">www.siurpriz.ge<\\/a>\\u00a0\\u2013\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc\\u00a0\\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10d8\\u10d7 \\u00a0\\u10ec\\u10d0\\u10e0\\u10db\\u10dd\\u10e5\\u10db\\u10dc\\u10d8\\u10da\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d7\\u10ee\\u10d5\\u10d4\\u10d5\\u10d0\\u10e8\\u10d8 \\u10d2\\u10d7\\u10ee\\u10dd\\u10d5\\u10d7 \\u10d2\\u10d0\\u10db\\u10dd\\u10d8\\u10e7\\u10d4\\u10dc\\u10dd\\u10d7 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2\\u10d8 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10e2\\u10d4\\u10da\\u10d4\\u10e4\\u10dd\\u10dc\\u10d8:+995 558 24 44 88 \\u10d4\\u10da\\u2013\\u10e4\\u10dd\\u10e1\\u10e2\\u10d0: info.siurpriz.ge\\u00a0\\u10e1\\u10d0\\u10d8\\u10e2\\u10d8\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8 \\u10db\\u10e3\\u10e8\\u10d0\\u10dd\\u10d1\\u10e1 \\u10e7\\u10dd\\u10d5\\u10d4\\u10da \\u10d3\\u10e6\\u10d4 \\u10d3\\u10d8\\u10da\\u10d8\\u10e1 10:00 \\u10e1\\u10d0\\u10d0\\u10d7\\u10d8\\u10d3\\u10d0\\u10dc \\u10e1\\u10d0\\u10e6\\u10d0\\u10db\\u10dd\\u10e1 21:00 \\u10e1\\u10d0\\u10d0\\u10d7\\u10d0\\u10db\\u10d3\\u10d4.\\u00a0<\\/p>\\r\\n<p>\\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc \\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d7\\u10ee\\u10d5\\u10d4\\u10d5\\u10d0\\u10e8\\u10d8 \\u10d3\\u10d0\\u10e3\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d3\\u10d8\\u10d7 \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d0\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8\\u10e1 \\u10dc\\u10dd\\u10db\\u10d4\\u10e0\\u10d6\\u10d4.\\u00a0<\\/p>\\r\\n<h2>\\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e0\\u10d4 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1\\u00a0\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1 \\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8.<\\/h2>\\r\\n<p>\\u10d5\\u10d4\\u10d1 \\u10d2\\u10d5\\u10d4\\u10e0\\u10d3\\u10d6\\u10d4 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d2\\u10d0\\u10e5\\u10d5\\u10d7 \\u10e8\\u10d4\\u10e1\\u10d0\\u10eb\\u10da\\u10d4\\u10d1\\u10da\\u10dd\\u10d1\\u10d0 \\u10e8\\u10d4\\u10d8\\u10eb\\u10d8\\u10dc\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da\\u10d8 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10e4\\u10e3\\u10da\\u10d0\\u10d3\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8 \\u10e0\\u10dd\\u10db\\u10d4\\u10da\\u10e1\\u10d0\\u10ea \\u10d2\\u10d0\\u10db\\u10dd\\u10d8\\u10e7\\u10d4\\u10dc\\u10d4\\u10d1\\u10d7 \\u10d0\\u10db \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10dc\\u10d4\\u10d1\\u10d8\\u10e1\\u10db\\u10d8\\u10d4\\u10e0 \\u10e4\\u10d8\\u10da\\u10d0\\u10da\\u10e8\\u10d8. \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e4\\u10d0\\u10e1\\u10e1 \\u10d2\\u10d0\\u10dc\\u10e1\\u10d0\\u10d6\\u10e6\\u10d5\\u10e0\\u10d0\\u10d5\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d7\\u10d5\\u10d8\\u10d7\\u10dd\\u10dc \\u10e8\\u10d4\\u10e1\\u10d0\\u10d1\\u10d0\\u10db\\u10d8\\u10e1 \\u10d5\\u10d4\\u10da\\u10e8\\u10d8 \\u10d7\\u10d0\\u10dc\\u10ee\\u10d8\\u10e1 \\u10db\\u10d8\\u10d7\\u10d8\\u10d7\\u10d4\\u10d1\\u10d8\\u10d7. \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0 \\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d3\\u10d4\\u10d1\\u10d0 \\u00a0\\u10e5\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d8 Visa \\u10d0\\u10dc MasterCard \\u10de\\u10da\\u10d0\\u10e1\\u10e2\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e8\\u10e3\\u10d0\\u10da\\u10d4\\u10d1\\u10d8\\u10d7.<\\/p>\\r\\n<p>\\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc \\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d7\\u10ee\\u10d5\\u10d4\\u10d5\\u10d0\\u10e8\\u10d8 \\u10d3\\u10d0\\u10e3\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d3\\u10d8\\u10d7 \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d0\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8\\u10e1 \\u10dc\\u10dd\\u10db\\u10d4\\u10e0\\u10d6\\u10d4.<\\/p>\\r\\n<p>\\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10dc\\u10d8\\u10e1 \\u10d3\\u10d0\\u10e1\\u10e0\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2, \\u10d3\\u10d0\\u10d2\\u10d4\\u10dc\\u10d4\\u10e0\\u10d8\\u10e0\\u10d3\\u10d4\\u10d1\\u10d0 \\u10e3\\u10dc\\u10d8\\u10d9\\u10d0\\u10da\\u10e3\\u10e0\\u10d8 5 \\u10dc\\u10d8\\u10e8\\u10dc\\u10d0 \\u10d9\\u10dd\\u10d3\\u10d8. \\u10e0\\u10dd\\u10db\\u10d4\\u10da\\u10e1\\u10d0\\u10ea \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10d8 \\u10ec\\u10d0\\u10e0\\u10d0\\u10d3\\u10d2\\u10d4\\u10dc\\u10e1 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10e8\\u10d8 \\u10d3\\u10d0 \\u10db\\u10d8\\u10d8\\u10e6\\u10d4\\u10d1\\u10e1 \\u10de\\u10e0\\u10dd\\u10d3\\u10e3\\u10e5\\u10e2\\u10e1 \\u10d0\\u10dc \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10eb\\u10d4\\u10dc\\u10d0\\u10d3 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10d0\\u10d8\\u10e0\\u10e9\\u10d8\\u10dd\\u10d7. \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8\\u10e1 \\u10e2\\u10d8\\u10de\\u10d8 ( \\u10db\\u10dd\\u10d1\\u10d8\\u10e3\\u10e0\\u10d8, \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10d7 \\u10d0\\u10dc \\u10e4\\u10d8\\u10d6\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d5\\u10d4\\u10d7\\u10d0 ). \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd \\u10d2\\u10d0\\u10db\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d8, \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u10db\\u10d3\\u10d4 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10de\\u10dd\\u10e0\\u10e2\\u10d0\\u10da\\u10d6\\u10d4 \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10e1\\u10d0\\u10ee\\u10d4\\u10da\\u10d8, \\u10d2\\u10d5\\u10d0\\u10e0\\u10d8, \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10e1 \\u10d3\\u10d0 \\u10e1\\u10d0\\u10d9\\u10dd\\u10dc\\u10e2\\u10d0\\u10e5\\u10e2\\u10dd \\u10e2\\u10d4\\u10da\\u10d4\\u10e4\\u10dd\\u10dc\\u10d8\\u10e1 \\u10db\\u10dd\\u10dc\\u10d0\\u10ea\\u10d4\\u10db\\u10d4\\u10d1\\u10d8. \\u10e7\\u10e3\\u10e0\\u10d0\\u10d3\\u10e6\\u10d4\\u10d1\\u10d0 \\u10db\\u10d8\\u10d0\\u10e5\\u10ea\\u10d8\\u10d4\\u10d7 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d8\\u10e1\\u10ec\\u10dd\\u10e0\\u10d4\\u10e1, \\u10e0\\u10d0\\u10d3\\u10d2\\u10d0\\u10dc \\u10db\\u10d8\\u10d7\\u10d8\\u10d7\\u10d4\\u10d1\\u10e3\\u10da \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10db\\u10dd\\u10d2\\u10d4\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d4\\u10d1\\u10d0\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e2\\u10e3\\u10e0\\u10d8 \\u10d3\\u10d0 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1, \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10da\\u10d8\\u10dc\\u10d9\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10e1\\u10d5\\u10da\\u10d4\\u10da\\u10d0\\u10d3.\\u00a0<\\/p>\\r\\n<p>\\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d8\\u10d7 \\u10e1\\u10d0\\u10e0\\u10d2\\u10d4\\u10d1\\u10da\\u10dd\\u10d1\\u10d8\\u10e1\\u10d7\\u10d5\\u10d8\\u10e1 \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10db\\u10d0 \\u10e1\\u10d0\\u10d9\\u10db\\u10d0\\u10e0\\u10d8\\u10e1\\u10d8\\u10d0 \\u10ec\\u10d0\\u10e0\\u10d0\\u10d3\\u10d2\\u10dc\\u10d8\\u10dc\\u10dd\\u10e1 \\u10db\\u10d8\\u10e1\\u10e2\\u10d5\\u10d8\\u10e1 \\u10d3\\u10d0\\u10d2\\u10d4\\u10dc\\u10d4\\u10e0\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 5 \\u10dc\\u10d8\\u10e8\\u10dc\\u10d0 \\u10d9\\u10dd\\u10d3\\u10d8<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0 \\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d3\\u10d4\\u10d1\\u10d0 \\u00a0\\u10e5\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d8 Visa \\u10d0\\u10dc MasterCard \\u10de\\u10da\\u10d0\\u10e1\\u10e2\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e8\\u10e3\\u10d0\\u10da\\u10d4\\u10d1\\u10d8\\u10d7<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u10e2\\u10e0\\u10d0\\u10dc\\u10d6\\u10d0\\u10e5\\u10ea\\u10d8\\u10d8\\u10e1 \\u10ec\\u10d0\\u10e0\\u10db\\u10d0\\u10e2\\u10d4\\u10d1\\u10d8\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e0\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d2\\u10d0\\u10db\\u10dd\\u10d2\\u10d4\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d4\\u10d1\\u10d0\\u10d7 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10da\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1\\u00a0\\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1 \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10da\\u10d8\\u10dc\\u10d9\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10e1\\u10d0\\u10e1\\u10d5\\u10da\\u10d4\\u10da\\u10d0\\u10d3.\\u00a0<\\/p>\\r\\n<p>\\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10e8\\u10d8 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10da\\u10d8 \\u10d7\\u10d0\\u10dc\\u10ee\\u10d0 \\u10e3\\u10d9\\u10d0\\u10dc \\u10d0\\u10e0 \\u10d1\\u10e0\\u10e3\\u10dc\\u10d3\\u10d4\\u10d1\\u10d0<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2016-02-28 21:12:16","created_by":"160","created_by_alias":"","modified":"2016-03-06 19:37:34","modified_by":"160","checked_out":"160","checked_out_time":"2016-03-06 19:37:01","publish_up":"2016-02-28 21:12:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":10,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"72","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(12, 1, 1, '', '2016-03-20 16:51:15', 160, 14517, 'e5014340844e0f966966a3088f4e4de0500b31c3', '{"id":1,"asset_id":"56","title":"\\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8","alias":"terms-and-conditions","introtext":"<h1>\\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8<\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<div>\\r\\n<p>\\u10e9\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d5\\u10d4\\u10d1 \\u10d2\\u10d5\\u10d4\\u10e0\\u10d3\\u10d8\\u10e1 \\u10db\\u10d4\\u10e8\\u10d5\\u10d4\\u10dd\\u10d1\\u10d8\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10e8\\u10d4\\u10d2\\u10d8\\u10eb\\u10da\\u10d8\\u10d0\\u10d7 \\u10dd\\u10dc\\u10da\\u10d0\\u10d8\\u10dc \\u10e0\\u10d4\\u10df\\u10d8\\u10db\\u10e8\\u10d8 \\u10e8\\u10d4\\u10d0\\u10e0\\u10e9\\u10d8\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da\\u10d8 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8 \\u10d3\\u10d0 \\u10d2\\u10d0\\u10e3\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10e1 \\u10d4\\u10da\\u10d4\\u10e5\\u10e2\\u10e0\\u10dd\\u10dc\\u10e3\\u10da\\u10d8 \\u10d0\\u10dc \\u10e4\\u10d8\\u10d6\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10e4\\u10dd\\u10e0\\u10db\\u10d8\\u10d7<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1 \\u10d3\\u10d0 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1 \\u10d2\\u10d0\\u10dc\\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d3\\u10e0\\u10dd\\u10e1 \\u10ee\\u10d0\\u10e0\\u10d5\\u10d4\\u10d6\\u10d4\\u10d1\\u10d8\\u10e1\\u00a0\\u10d7\\u10d0\\u10d5\\u10d8\\u10d3\\u10d0\\u10dc \\u10d0\\u10e1\\u10d0\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10da\\u10d0\\u10d3, \\u10d2\\u10d7\\u10ee\\u10dd\\u10d5\\u10d7 \\u10e1\\u10e0\\u10e3\\u10da\\u10e7\\u10dd\\u10e4\\u10d8\\u10da\\u10d0\\u10d3 \\u10d2\\u10d0\\u10d4\\u10ea\\u10dc\\u10dd\\u10d7 \\u10d3\\u10d0 \\u10e7\\u10e3\\u10e0\\u10d0\\u10d3\\u10e6\\u10d4\\u10d1\\u10d8\\u10d7 \\u10d2\\u10d0\\u10d3\\u10d0\\u10d0\\u10db\\u10dd\\u10ec\\u10db\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10e1 \\u10db\\u10d8\\u10d4\\u10e0 \\u10e8\\u10d4\\u10e7\\u10d5\\u10d0\\u10dc\\u10d8\\u10da\\u10d8 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d8\\u10d6\\u10e3\\u10e1\\u10e2\\u10d4.<\\/p>\\r\\n<p>\\u10e1\\u10d0\\u10d8\\u10e2\\u10d6\\u10d4 \\u10d0\\u10e0 \\u10d0\\u10e0\\u10d8\\u10e1 \\u10e1\\u10d0\\u10ed\\u10d8\\u10e0\\u10dd \\u10e0\\u10d4\\u10d2\\u10d8\\u10e1\\u10e2\\u10e0\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10d2\\u10d0\\u10d5\\u10da\\u10d0. \\u10d0\\u10db\\u10d8\\u10e2\\u10dd\\u10db \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1\\u10d0\\u10e1 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10da\\u10d0\\u10d3 \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10e1 \\u10db\\u10d8\\u10e1\\u10d0\\u10db\\u10d0\\u10e0\\u10d7\\u10d8 \\u10e1\\u10d0\\u10d3\\u10d0\\u10ea \\u10d2\\u10d0\\u10d3\\u10db\\u10dd\\u10d2\\u10d4\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d4\\u10d1\\u10d0\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e2\\u10e3\\u10e0\\u10d8 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1 \\u10d3\\u10d0 \\u10da\\u10d8\\u10dc\\u10d9\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10e1\\u10d0\\u10e1\\u10d5\\u10da\\u10d4\\u10da\\u10d0\\u10d3.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<a href=\\"http:\\/\\/www.siurpriz.ge\\/\\">www.siurpriz.ge<\\/a>\\u00a0\\u2013\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc\\u00a0\\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10d8\\u10d7 \\u00a0\\u10ec\\u10d0\\u10e0\\u10db\\u10dd\\u10e5\\u10db\\u10dc\\u10d8\\u10da\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d7\\u10ee\\u10d5\\u10d4\\u10d5\\u10d0\\u10e8\\u10d8 \\u10d2\\u10d7\\u10ee\\u10dd\\u10d5\\u10d7 \\u10d2\\u10d0\\u10db\\u10dd\\u10d8\\u10e7\\u10d4\\u10dc\\u10dd\\u10d7 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2\\u10d8 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10e2\\u10d4\\u10da\\u10d4\\u10e4\\u10dd\\u10dc\\u10d8:+995 558 24 44 88 \\u10d4\\u10da\\u2013\\u10e4\\u10dd\\u10e1\\u10e2\\u10d0: info.siurpriz.ge\\u00a0\\u10e1\\u10d0\\u10d8\\u10e2\\u10d8\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8 \\u10db\\u10e3\\u10e8\\u10d0\\u10dd\\u10d1\\u10e1 \\u10e7\\u10dd\\u10d5\\u10d4\\u10da \\u10d3\\u10e6\\u10d4 \\u10d3\\u10d8\\u10da\\u10d8\\u10e1 10:00 \\u10e1\\u10d0\\u10d0\\u10d7\\u10d8\\u10d3\\u10d0\\u10dc \\u10e1\\u10d0\\u10e6\\u10d0\\u10db\\u10dd\\u10e1 21:00 \\u10e1\\u10d0\\u10d0\\u10d7\\u10d0\\u10db\\u10d3\\u10d4.\\u00a0<\\/p>\\r\\n<p>\\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc \\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d7\\u10ee\\u10d5\\u10d4\\u10d5\\u10d0\\u10e8\\u10d8 \\u10d3\\u10d0\\u10e3\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d3\\u10d8\\u10d7 \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d0\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8\\u10e1 \\u10dc\\u10dd\\u10db\\u10d4\\u10e0\\u10d6\\u10d4.\\u00a0<\\/p>\\r\\n<h2>\\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e0\\u10d4 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1\\u00a0\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10e1 \\u10ec\\u10d4\\u10e1\\u10d4\\u10d1\\u10d8 \\u10d3\\u10d0 \\u10de\\u10d8\\u10e0\\u10dd\\u10d1\\u10d4\\u10d1\\u10d8.<\\/h2>\\r\\n<p>\\u10d5\\u10d4\\u10d1 \\u10d2\\u10d5\\u10d4\\u10e0\\u10d3\\u10d6\\u10d4 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d2\\u10d0\\u10e5\\u10d5\\u10d7 \\u10e8\\u10d4\\u10e1\\u10d0\\u10eb\\u10da\\u10d4\\u10d1\\u10da\\u10dd\\u10d1\\u10d0 \\u10e8\\u10d4\\u10d8\\u10eb\\u10d8\\u10dc\\u10dd\\u10d7 \\u10e1\\u10d0\\u10e1\\u10e3\\u10e0\\u10d5\\u10d4\\u10da\\u10d8 \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10e4\\u10e3\\u10da\\u10d0\\u10d3\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8 \\u10e0\\u10dd\\u10db\\u10d4\\u10da\\u10e1\\u10d0\\u10ea \\u10d2\\u10d0\\u10db\\u10dd\\u10d8\\u10e7\\u10d4\\u10dc\\u10d4\\u10d1\\u10d7 \\u10d0\\u10db \\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10dc\\u10d4\\u10d1\\u10d8\\u10e1\\u10db\\u10d8\\u10d4\\u10e0 \\u10e4\\u10d8\\u10da\\u10d0\\u10da\\u10e8\\u10d8. \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e4\\u10d0\\u10e1\\u10e1 \\u10d2\\u10d0\\u10dc\\u10e1\\u10d0\\u10d6\\u10e6\\u10d5\\u10e0\\u10d0\\u10d5\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d7\\u10d5\\u10d8\\u10d7\\u10dd\\u10dc \\u10e8\\u10d4\\u10e1\\u10d0\\u10d1\\u10d0\\u10db\\u10d8\\u10e1 \\u10d5\\u10d4\\u10da\\u10e8\\u10d8 \\u10d7\\u10d0\\u10dc\\u10ee\\u10d8\\u10e1 \\u10db\\u10d8\\u10d7\\u10d8\\u10d7\\u10d4\\u10d1\\u10d8\\u10d7. \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0 \\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d3\\u10d4\\u10d1\\u10d0 \\u00a0\\u10e5\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d8 Visa \\u10d0\\u10dc MasterCard \\u10de\\u10da\\u10d0\\u10e1\\u10e2\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e8\\u10e3\\u10d0\\u10da\\u10d4\\u10d1\\u10d8\\u10d7.<\\/p>\\r\\n<p>\\u10d1\\u10e0\\u10d4\\u10dc\\u10d3\\u10d8\\u10e1 \\u10d0\\u10dc \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1\\u10d7\\u10d0\\u10dc \\u10d3\\u10d0\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d8\\u10d7\\u10ee\\u10d5\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d7\\u10ee\\u10d5\\u10d4\\u10d5\\u10d0\\u10e8\\u10d8 \\u10d3\\u10d0\\u10e3\\u10d9\\u10d0\\u10d5\\u10e8\\u10d8\\u10e0\\u10d3\\u10d8\\u10d7 \\u10d7\\u10d0\\u10d5\\u10d0\\u10d3 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d0\\u10e1 \\u10ea\\u10ee\\u10d4\\u10da\\u10d8 \\u10ee\\u10d0\\u10d6\\u10d8\\u10e1 \\u10dc\\u10dd\\u10db\\u10d4\\u10e0\\u10d6\\u10d4.<\\/p>\\r\\n<p>\\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10dc\\u10d8\\u10e1 \\u10d3\\u10d0\\u10e1\\u10e0\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2, \\u10d3\\u10d0\\u10d2\\u10d4\\u10dc\\u10d4\\u10e0\\u10d8\\u10e0\\u10d3\\u10d4\\u10d1\\u10d0 \\u10e3\\u10dc\\u10d8\\u10d9\\u10d0\\u10da\\u10e3\\u10e0\\u10d8 5 \\u10dc\\u10d8\\u10e8\\u10dc\\u10d0 \\u10d9\\u10dd\\u10d3\\u10d8. \\u10e0\\u10dd\\u10db\\u10d4\\u10da\\u10e1\\u10d0\\u10ea \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10d8 \\u10ec\\u10d0\\u10e0\\u10d0\\u10d3\\u10d2\\u10d4\\u10dc\\u10e1 \\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10e8\\u10d8 \\u10d3\\u10d0 \\u10db\\u10d8\\u10d8\\u10e6\\u10d4\\u10d1\\u10e1 \\u10de\\u10e0\\u10dd\\u10d3\\u10e3\\u10e5\\u10e2\\u10e1 \\u10d0\\u10dc \\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d0\\u10e1.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u10e1\\u10d0\\u10e1\\u10d0\\u10e9\\u10e3\\u10e5\\u10e0\\u10d4 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10eb\\u10d4\\u10dc\\u10d0\\u10d3 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10d0\\u10d8\\u10e0\\u10e9\\u10d8\\u10dd\\u10d7. \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d8\\u10e1 \\u10e2\\u10d8\\u10de\\u10d8 ( \\u10db\\u10dd\\u10d1\\u10d8\\u10e3\\u10e0\\u10d8, \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10d7 \\u10d0\\u10dc \\u10e4\\u10d8\\u10d6\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10e8\\u10d4\\u10d9\\u10d5\\u10d4\\u10d7\\u10d0 ). \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd \\u10d2\\u10d0\\u10db\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d8, \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u10db\\u10d3\\u10d4 \\u10d0\\u10e3\\u10ea\\u10d8\\u10da\\u10d4\\u10d1\\u10d4\\u10da\\u10d8\\u10d0 \\u10de\\u10dd\\u10e0\\u10e2\\u10d0\\u10da\\u10d6\\u10d4 \\u10db\\u10d8\\u10e3\\u10d7\\u10d8\\u10d7\\u10dd\\u10d7 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc\\u10d8 \\u10e1\\u10d0\\u10ee\\u10d4\\u10da\\u10d8, \\u10d2\\u10d5\\u10d0\\u10e0\\u10d8, \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d8\\u10e1 \\u10d3\\u10d0 \\u10e1\\u10d0\\u10d9\\u10dd\\u10dc\\u10e2\\u10d0\\u10e5\\u10e2\\u10dd \\u10e2\\u10d4\\u10da\\u10d4\\u10e4\\u10dd\\u10dc\\u10d8\\u10e1 \\u10db\\u10dd\\u10dc\\u10d0\\u10ea\\u10d4\\u10db\\u10d4\\u10d1\\u10d8. \\u10e7\\u10e3\\u10e0\\u10d0\\u10d3\\u10e6\\u10d4\\u10d1\\u10d0 \\u10db\\u10d8\\u10d0\\u10e5\\u10ea\\u10d8\\u10d4\\u10d7 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d8\\u10e1 \\u10e1\\u10d8\\u10e1\\u10ec\\u10dd\\u10e0\\u10d4\\u10e1, \\u10e0\\u10d0\\u10d3\\u10d2\\u10d0\\u10dc \\u10db\\u10d8\\u10d7\\u10d8\\u10d7\\u10d4\\u10d1\\u10e3\\u10da \\u10d4\\u10da-\\u10e4\\u10dd\\u10e1\\u10e2\\u10d0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10db\\u10dd\\u10d2\\u10d4\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d4\\u10d1\\u10d0\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e2\\u10e3\\u10e0\\u10d8 \\u10d3\\u10d0 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1, \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10da\\u10d8\\u10dc\\u10d9\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10e1\\u10d5\\u10da\\u10d4\\u10da\\u10d0\\u10d3.\\u00a0<\\/p>\\r\\n<p>\\u10db\\u10dd\\u10db\\u10e1\\u10d0\\u10ee\\u10e3\\u10e0\\u10d4\\u10d1\\u10d8\\u10d7 \\u10e1\\u10d0\\u10e0\\u10d2\\u10d4\\u10d1\\u10da\\u10dd\\u10d1\\u10d8\\u10e1\\u10d7\\u10d5\\u10d8\\u10e1 \\u10d0\\u10d3\\u10e0\\u10d4\\u10e1\\u10d0\\u10e2\\u10db\\u10d0 \\u10e1\\u10d0\\u10d9\\u10db\\u10d0\\u10e0\\u10d8\\u10e1\\u10d8\\u10d0 \\u10ec\\u10d0\\u10e0\\u10d0\\u10d3\\u10d2\\u10dc\\u10d8\\u10dc\\u10dd\\u10e1 \\u10db\\u10d8\\u10e1\\u10e2\\u10d5\\u10d8\\u10e1 \\u10d3\\u10d0\\u10d2\\u10d4\\u10dc\\u10d4\\u10e0\\u10d8\\u10e0\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 5 \\u10dc\\u10d8\\u10e8\\u10dc\\u10d0 \\u10d9\\u10dd\\u10d3\\u10d8<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0\\u00a0\\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d0 \\u10ee\\u10dd\\u10e0\\u10ea\\u10d8\\u10d4\\u10da\\u10d3\\u10d4\\u10d1\\u10d0 \\u00a0\\u10e5\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d8 Visa \\u10d0\\u10dc MasterCard \\u10de\\u10da\\u10d0\\u10e1\\u10e2\\u10d8\\u10d9\\u10e3\\u10e0\\u10d8 \\u10d1\\u10d0\\u10e0\\u10d0\\u10d7\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10e8\\u10e3\\u10d0\\u10da\\u10d4\\u10d1\\u10d8\\u10d7<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u10e2\\u10e0\\u10d0\\u10dc\\u10d6\\u10d0\\u10e5\\u10ea\\u10d8\\u10d8\\u10e1 \\u10ec\\u10d0\\u10e0\\u10db\\u10d0\\u10e2\\u10d4\\u10d1\\u10d8\\u10d7 \\u10d3\\u10d0\\u10e1\\u10e0\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10d3\\u10d4\\u10d2 \\u10d7\\u10e5\\u10d5\\u10d4\\u10dc \\u10d2\\u10d0\\u10db\\u10dd\\u10d2\\u10d4\\u10d2\\u10d6\\u10d0\\u10d5\\u10dc\\u10d4\\u10d1\\u10d0\\u10d7 \\u10d8\\u10dc\\u10e4\\u10dd\\u10e0\\u10db\\u10d0\\u10ea\\u10d8\\u10d0 \\u10e8\\u10d4\\u10eb\\u10d4\\u10dc\\u10d8\\u10da\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1\\u00a0\\u10e8\\u10d4\\u10e1\\u10d0\\u10ee\\u10d4\\u10d1 \\u10d0\\u10e1\\u10d4\\u10d5\\u10d4 \\u10da\\u10d8\\u10dc\\u10d9\\u10d8 \\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10d6\\u10d4 \\u10d2\\u10d0\\u10d3\\u10d0\\u10e1\\u10d0\\u10e1\\u10d5\\u10da\\u10d4\\u10da\\u10d0\\u10d3.\\u00a0<\\/p>\\r\\n<p>\\u10d5\\u10d0\\u10e3\\u10e9\\u10d4\\u10e0\\u10e8\\u10d8 \\u10d2\\u10d0\\u10d3\\u10d0\\u10ee\\u10d3\\u10d8\\u10da\\u10d8 \\u10d7\\u10d0\\u10dc\\u10ee\\u10d0 \\u10e3\\u10d9\\u10d0\\u10dc \\u10d0\\u10e0 \\u10d1\\u10e0\\u10e3\\u10dc\\u10d3\\u10d4\\u10d1\\u10d0<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2016-02-28 21:12:16","created_by":"160","created_by_alias":"","modified":"2016-03-20 16:51:15","modified_by":"160","checked_out":"160","checked_out_time":"2016-03-20 16:51:09","publish_up":"2016-02-28 21:12:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":11,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"140","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `gift_updates`
--

CREATE TABLE `gift_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates';

--
-- Дамп данных таблицы `gift_updates`
--

INSERT INTO `gift_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(2, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(3, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(4, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(5, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(6, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(7, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(8, 3, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', ''),
(9, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.6.3.2', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(10, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(11, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(12, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(13, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(14, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.6.4.2', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(15, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(16, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(17, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(18, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.4.1.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(19, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(20, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(21, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(22, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(23, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.6.4', '', 'https://update.joomla.org/core/sts/extension_sts.xml', '', ''),
(24, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(25, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(26, 3, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(27, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(28, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(29, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(30, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(31, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(32, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(33, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(34, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.6.4.3', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(35, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(36, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(37, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(38, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(39, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(40, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(41, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(42, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(43, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(44, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(45, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(46, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(47, 3, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(48, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(49, 3, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(50, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(51, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(52, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(53, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(54, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(55, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(56, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(57, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(58, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(59, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(60, 3, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(61, 3, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(62, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(63, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(64, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(65, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(66, 3, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(67, 3, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(68, 3, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(69, 3, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(70, 3, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(71, 3, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(72, 3, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(73, 3, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(74, 3, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `gift_update_sites`
--

CREATE TABLE `gift_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Sites';

--
-- Дамп данных таблицы `gift_update_sites`
--

INSERT INTO `gift_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1480150964, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1480150964, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1480150962, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1480150962, '');

-- --------------------------------------------------------

--
-- Структура таблицы `gift_update_sites_extensions`
--

CREATE TABLE `gift_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `gift_update_sites_extensions`
--

INSERT INTO `gift_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 28);

-- --------------------------------------------------------

--
-- Структура таблицы `gift_usergroups`
--

CREATE TABLE `gift_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_usergroups`
--

INSERT INTO `gift_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Структура таблицы `gift_users`
--

CREATE TABLE `gift_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_users`
--

INSERT INTO `gift_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(160, 'Super User', 'admin', 'giorgi.bibilashvili89@gmail.com', '$2y$10$OG0qyLwW06mq.LqZczNwIe07MwElFms7MR4f2EgzZH.PMCyJw287m', 0, 1, '2016-02-12 16:58:43', '2016-11-26 09:02:38', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `gift_user_keys`
--

CREATE TABLE `gift_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_user_notes`
--

CREATE TABLE `gift_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gift_user_profiles`
--

CREATE TABLE `gift_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `gift_user_usergroup_map`
--

CREATE TABLE `gift_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_user_usergroup_map`
--

INSERT INTO `gift_user_usergroup_map` (`user_id`, `group_id`) VALUES
(160, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `gift_viewlevels`
--

CREATE TABLE `gift_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gift_viewlevels`
--

INSERT INTO `gift_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `gift_assets`
--
ALTER TABLE `gift_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Индексы таблицы `gift_associations`
--
ALTER TABLE `gift_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Индексы таблицы `gift_banners`
--
ALTER TABLE `gift_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `gift_banner_clients`
--
ALTER TABLE `gift_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`);

--
-- Индексы таблицы `gift_banner_tracks`
--
ALTER TABLE `gift_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Индексы таблицы `gift_categories`
--
ALTER TABLE `gift_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `gift_contact_details`
--
ALTER TABLE `gift_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `gift_content`
--
ALTER TABLE `gift_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `gift_contentitem_tag_map`
--
ALTER TABLE `gift_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_tag` (`tag_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Индексы таблицы `gift_content_frontpage`
--
ALTER TABLE `gift_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Индексы таблицы `gift_content_rating`
--
ALTER TABLE `gift_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Индексы таблицы `gift_content_types`
--
ALTER TABLE `gift_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`);

--
-- Индексы таблицы `gift_extensions`
--
ALTER TABLE `gift_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Индексы таблицы `gift_finder_filters`
--
ALTER TABLE `gift_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `gift_finder_links`
--
ALTER TABLE `gift_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Индексы таблицы `gift_finder_links_terms0`
--
ALTER TABLE `gift_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `gift_finder_links_terms1`
--
ALTER TABLE `gift_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `gift_finder_links_terms2`
--
ALTER TABLE `gift_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `gift_finder_links_terms3`
--
ALTER TABLE `gift_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `gift_finder_links_terms4`
--
ALTER TABLE `gift_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `gift_finder_links_terms5`
--
ALTER TABLE `gift_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `gift_finder_links_terms6`
--
ALTER TABLE `gift_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `gift_finder_links_terms7`
--
ALTER TABLE `gift_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `gift_finder_links_terms8`
--
ALTER TABLE `gift_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `gift_finder_links_terms9`
--
ALTER TABLE `gift_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `gift_finder_links_termsa`
--
ALTER TABLE `gift_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `gift_finder_links_termsb`
--
ALTER TABLE `gift_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `gift_finder_links_termsc`
--
ALTER TABLE `gift_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `gift_finder_links_termsd`
--
ALTER TABLE `gift_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `gift_finder_links_termse`
--
ALTER TABLE `gift_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `gift_finder_links_termsf`
--
ALTER TABLE `gift_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `gift_finder_taxonomy`
--
ALTER TABLE `gift_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Индексы таблицы `gift_finder_taxonomy_map`
--
ALTER TABLE `gift_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Индексы таблицы `gift_finder_terms`
--
ALTER TABLE `gift_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Индексы таблицы `gift_finder_terms_common`
--
ALTER TABLE `gift_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Индексы таблицы `gift_finder_tokens`
--
ALTER TABLE `gift_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Индексы таблицы `gift_finder_tokens_aggregate`
--
ALTER TABLE `gift_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Индексы таблицы `gift_finder_types`
--
ALTER TABLE `gift_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Индексы таблицы `gift_gallery`
--
ALTER TABLE `gift_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gift_gifcards`
--
ALTER TABLE `gift_gifcards`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gift_groups`
--
ALTER TABLE `gift_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gift_languages`
--
ALTER TABLE `gift_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_image` (`image`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Индексы таблицы `gift_menu`
--
ALTER TABLE `gift_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_path` (`path`(255)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `gift_menu_types`
--
ALTER TABLE `gift_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Индексы таблицы `gift_messages`
--
ALTER TABLE `gift_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Индексы таблицы `gift_messages_cfg`
--
ALTER TABLE `gift_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Индексы таблицы `gift_modules`
--
ALTER TABLE `gift_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `gift_modules_menu`
--
ALTER TABLE `gift_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Индексы таблицы `gift_newsfeeds`
--
ALTER TABLE `gift_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `gift_orders`
--
ALTER TABLE `gift_orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gift_overrider`
--
ALTER TABLE `gift_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gift_postinstall_messages`
--
ALTER TABLE `gift_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Индексы таблицы `gift_redirect_links`
--
ALTER TABLE `gift_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_link_old` (`old_url`),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Индексы таблицы `gift_schemas`
--
ALTER TABLE `gift_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Индексы таблицы `gift_session`
--
ALTER TABLE `gift_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Индексы таблицы `gift_tags`
--
ALTER TABLE `gift_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `gift_template_styles`
--
ALTER TABLE `gift_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Индексы таблицы `gift_ucm_base`
--
ALTER TABLE `gift_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Индексы таблицы `gift_ucm_content`
--
ALTER TABLE `gift_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Индексы таблицы `gift_ucm_history`
--
ALTER TABLE `gift_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Индексы таблицы `gift_updates`
--
ALTER TABLE `gift_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Индексы таблицы `gift_update_sites`
--
ALTER TABLE `gift_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Индексы таблицы `gift_update_sites_extensions`
--
ALTER TABLE `gift_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Индексы таблицы `gift_usergroups`
--
ALTER TABLE `gift_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Индексы таблицы `gift_users`
--
ALTER TABLE `gift_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Индексы таблицы `gift_user_keys`
--
ALTER TABLE `gift_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `gift_user_notes`
--
ALTER TABLE `gift_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Индексы таблицы `gift_user_profiles`
--
ALTER TABLE `gift_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Индексы таблицы `gift_user_usergroup_map`
--
ALTER TABLE `gift_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Индексы таблицы `gift_viewlevels`
--
ALTER TABLE `gift_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `gift_assets`
--
ALTER TABLE `gift_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT для таблицы `gift_banners`
--
ALTER TABLE `gift_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `gift_banner_clients`
--
ALTER TABLE `gift_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `gift_categories`
--
ALTER TABLE `gift_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `gift_contact_details`
--
ALTER TABLE `gift_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `gift_content`
--
ALTER TABLE `gift_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `gift_content_types`
--
ALTER TABLE `gift_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `gift_extensions`
--
ALTER TABLE `gift_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=707;
--
-- AUTO_INCREMENT для таблицы `gift_finder_filters`
--
ALTER TABLE `gift_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `gift_finder_links`
--
ALTER TABLE `gift_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `gift_finder_taxonomy`
--
ALTER TABLE `gift_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `gift_finder_terms`
--
ALTER TABLE `gift_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `gift_finder_types`
--
ALTER TABLE `gift_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `gift_gallery`
--
ALTER TABLE `gift_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `gift_gifcards`
--
ALTER TABLE `gift_gifcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT для таблицы `gift_groups`
--
ALTER TABLE `gift_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `gift_languages`
--
ALTER TABLE `gift_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `gift_menu`
--
ALTER TABLE `gift_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT для таблицы `gift_menu_types`
--
ALTER TABLE `gift_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `gift_messages`
--
ALTER TABLE `gift_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `gift_modules`
--
ALTER TABLE `gift_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT для таблицы `gift_newsfeeds`
--
ALTER TABLE `gift_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `gift_orders`
--
ALTER TABLE `gift_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `gift_overrider`
--
ALTER TABLE `gift_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT для таблицы `gift_postinstall_messages`
--
ALTER TABLE `gift_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `gift_redirect_links`
--
ALTER TABLE `gift_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `gift_tags`
--
ALTER TABLE `gift_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `gift_template_styles`
--
ALTER TABLE `gift_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `gift_ucm_content`
--
ALTER TABLE `gift_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `gift_ucm_history`
--
ALTER TABLE `gift_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `gift_updates`
--
ALTER TABLE `gift_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT для таблицы `gift_update_sites`
--
ALTER TABLE `gift_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `gift_usergroups`
--
ALTER TABLE `gift_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `gift_users`
--
ALTER TABLE `gift_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT для таблицы `gift_user_keys`
--
ALTER TABLE `gift_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `gift_user_notes`
--
ALTER TABLE `gift_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `gift_viewlevels`
--
ALTER TABLE `gift_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
