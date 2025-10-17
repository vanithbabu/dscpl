-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 17, 2025 at 05:11 AM
-- Server version: 8.0.40
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dscpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `dscpl_commentmeta`
--

CREATE TABLE `dscpl_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dscpl_comments`
--

CREATE TABLE `dscpl_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dscpl_comments`
--

INSERT INTO `dscpl_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2025-10-16 04:53:54', '2025-10-16 04:53:54', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dscpl_links`
--

CREATE TABLE `dscpl_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dscpl_options`
--

CREATE TABLE `dscpl_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dscpl_options`
--

INSERT INTO `dscpl_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:12:{i:1760680434;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1760680435;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1760682234;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1760684034;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1760720041;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1760763235;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1760763241;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1760763245;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1761196079;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1761196093;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1761281635;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://localhost:8888/dscpl', 'on'),
(3, 'home', 'http://localhost:8888/dscpl', 'on'),
(4, 'blogname', 'DSCPL', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'vanith@doodleblue.in', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '0', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'F j, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'https://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'dscpl/theme', 'on'),
(42, 'stylesheet', 'dscpl/theme', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '60421', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '0', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'posts', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:0:{}', 'on'),
(78, 'widget_text', 'a:0:{}', 'on'),
(79, 'widget_rss', 'a:0:{}', 'on'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '0', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1776142434', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '60421', 'on'),
(102, 'dscpl_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'user_count', '1', 'off'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(106, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.8.3\";s:5:\"files\";a:536:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:26:\"post-content/style-rtl.css\";i:309;s:30:\"post-content/style-rtl.min.css\";i:310;s:22:\"post-content/style.css\";i:311;s:26:\"post-content/style.min.css\";i:312;s:23:\"post-date/style-rtl.css\";i:313;s:27:\"post-date/style-rtl.min.css\";i:314;s:19:\"post-date/style.css\";i:315;s:23:\"post-date/style.min.css\";i:316;s:27:\"post-excerpt/editor-rtl.css\";i:317;s:31:\"post-excerpt/editor-rtl.min.css\";i:318;s:23:\"post-excerpt/editor.css\";i:319;s:27:\"post-excerpt/editor.min.css\";i:320;s:26:\"post-excerpt/style-rtl.css\";i:321;s:30:\"post-excerpt/style-rtl.min.css\";i:322;s:22:\"post-excerpt/style.css\";i:323;s:26:\"post-excerpt/style.min.css\";i:324;s:34:\"post-featured-image/editor-rtl.css\";i:325;s:38:\"post-featured-image/editor-rtl.min.css\";i:326;s:30:\"post-featured-image/editor.css\";i:327;s:34:\"post-featured-image/editor.min.css\";i:328;s:33:\"post-featured-image/style-rtl.css\";i:329;s:37:\"post-featured-image/style-rtl.min.css\";i:330;s:29:\"post-featured-image/style.css\";i:331;s:33:\"post-featured-image/style.min.css\";i:332;s:34:\"post-navigation-link/style-rtl.css\";i:333;s:38:\"post-navigation-link/style-rtl.min.css\";i:334;s:30:\"post-navigation-link/style.css\";i:335;s:34:\"post-navigation-link/style.min.css\";i:336;s:27:\"post-template/style-rtl.css\";i:337;s:31:\"post-template/style-rtl.min.css\";i:338;s:23:\"post-template/style.css\";i:339;s:27:\"post-template/style.min.css\";i:340;s:24:\"post-terms/style-rtl.css\";i:341;s:28:\"post-terms/style-rtl.min.css\";i:342;s:20:\"post-terms/style.css\";i:343;s:24:\"post-terms/style.min.css\";i:344;s:24:\"post-title/style-rtl.css\";i:345;s:28:\"post-title/style-rtl.min.css\";i:346;s:20:\"post-title/style.css\";i:347;s:24:\"post-title/style.min.css\";i:348;s:26:\"preformatted/style-rtl.css\";i:349;s:30:\"preformatted/style-rtl.min.css\";i:350;s:22:\"preformatted/style.css\";i:351;s:26:\"preformatted/style.min.css\";i:352;s:24:\"pullquote/editor-rtl.css\";i:353;s:28:\"pullquote/editor-rtl.min.css\";i:354;s:20:\"pullquote/editor.css\";i:355;s:24:\"pullquote/editor.min.css\";i:356;s:23:\"pullquote/style-rtl.css\";i:357;s:27:\"pullquote/style-rtl.min.css\";i:358;s:19:\"pullquote/style.css\";i:359;s:23:\"pullquote/style.min.css\";i:360;s:23:\"pullquote/theme-rtl.css\";i:361;s:27:\"pullquote/theme-rtl.min.css\";i:362;s:19:\"pullquote/theme.css\";i:363;s:23:\"pullquote/theme.min.css\";i:364;s:39:\"query-pagination-numbers/editor-rtl.css\";i:365;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:366;s:35:\"query-pagination-numbers/editor.css\";i:367;s:39:\"query-pagination-numbers/editor.min.css\";i:368;s:31:\"query-pagination/editor-rtl.css\";i:369;s:35:\"query-pagination/editor-rtl.min.css\";i:370;s:27:\"query-pagination/editor.css\";i:371;s:31:\"query-pagination/editor.min.css\";i:372;s:30:\"query-pagination/style-rtl.css\";i:373;s:34:\"query-pagination/style-rtl.min.css\";i:374;s:26:\"query-pagination/style.css\";i:375;s:30:\"query-pagination/style.min.css\";i:376;s:25:\"query-title/style-rtl.css\";i:377;s:29:\"query-title/style-rtl.min.css\";i:378;s:21:\"query-title/style.css\";i:379;s:25:\"query-title/style.min.css\";i:380;s:25:\"query-total/style-rtl.css\";i:381;s:29:\"query-total/style-rtl.min.css\";i:382;s:21:\"query-total/style.css\";i:383;s:25:\"query-total/style.min.css\";i:384;s:20:\"query/editor-rtl.css\";i:385;s:24:\"query/editor-rtl.min.css\";i:386;s:16:\"query/editor.css\";i:387;s:20:\"query/editor.min.css\";i:388;s:19:\"quote/style-rtl.css\";i:389;s:23:\"quote/style-rtl.min.css\";i:390;s:15:\"quote/style.css\";i:391;s:19:\"quote/style.min.css\";i:392;s:19:\"quote/theme-rtl.css\";i:393;s:23:\"quote/theme-rtl.min.css\";i:394;s:15:\"quote/theme.css\";i:395;s:19:\"quote/theme.min.css\";i:396;s:23:\"read-more/style-rtl.css\";i:397;s:27:\"read-more/style-rtl.min.css\";i:398;s:19:\"read-more/style.css\";i:399;s:23:\"read-more/style.min.css\";i:400;s:18:\"rss/editor-rtl.css\";i:401;s:22:\"rss/editor-rtl.min.css\";i:402;s:14:\"rss/editor.css\";i:403;s:18:\"rss/editor.min.css\";i:404;s:17:\"rss/style-rtl.css\";i:405;s:21:\"rss/style-rtl.min.css\";i:406;s:13:\"rss/style.css\";i:407;s:17:\"rss/style.min.css\";i:408;s:21:\"search/editor-rtl.css\";i:409;s:25:\"search/editor-rtl.min.css\";i:410;s:17:\"search/editor.css\";i:411;s:21:\"search/editor.min.css\";i:412;s:20:\"search/style-rtl.css\";i:413;s:24:\"search/style-rtl.min.css\";i:414;s:16:\"search/style.css\";i:415;s:20:\"search/style.min.css\";i:416;s:20:\"search/theme-rtl.css\";i:417;s:24:\"search/theme-rtl.min.css\";i:418;s:16:\"search/theme.css\";i:419;s:20:\"search/theme.min.css\";i:420;s:24:\"separator/editor-rtl.css\";i:421;s:28:\"separator/editor-rtl.min.css\";i:422;s:20:\"separator/editor.css\";i:423;s:24:\"separator/editor.min.css\";i:424;s:23:\"separator/style-rtl.css\";i:425;s:27:\"separator/style-rtl.min.css\";i:426;s:19:\"separator/style.css\";i:427;s:23:\"separator/style.min.css\";i:428;s:23:\"separator/theme-rtl.css\";i:429;s:27:\"separator/theme-rtl.min.css\";i:430;s:19:\"separator/theme.css\";i:431;s:23:\"separator/theme.min.css\";i:432;s:24:\"shortcode/editor-rtl.css\";i:433;s:28:\"shortcode/editor-rtl.min.css\";i:434;s:20:\"shortcode/editor.css\";i:435;s:24:\"shortcode/editor.min.css\";i:436;s:24:\"site-logo/editor-rtl.css\";i:437;s:28:\"site-logo/editor-rtl.min.css\";i:438;s:20:\"site-logo/editor.css\";i:439;s:24:\"site-logo/editor.min.css\";i:440;s:23:\"site-logo/style-rtl.css\";i:441;s:27:\"site-logo/style-rtl.min.css\";i:442;s:19:\"site-logo/style.css\";i:443;s:23:\"site-logo/style.min.css\";i:444;s:27:\"site-tagline/editor-rtl.css\";i:445;s:31:\"site-tagline/editor-rtl.min.css\";i:446;s:23:\"site-tagline/editor.css\";i:447;s:27:\"site-tagline/editor.min.css\";i:448;s:26:\"site-tagline/style-rtl.css\";i:449;s:30:\"site-tagline/style-rtl.min.css\";i:450;s:22:\"site-tagline/style.css\";i:451;s:26:\"site-tagline/style.min.css\";i:452;s:25:\"site-title/editor-rtl.css\";i:453;s:29:\"site-title/editor-rtl.min.css\";i:454;s:21:\"site-title/editor.css\";i:455;s:25:\"site-title/editor.min.css\";i:456;s:24:\"site-title/style-rtl.css\";i:457;s:28:\"site-title/style-rtl.min.css\";i:458;s:20:\"site-title/style.css\";i:459;s:24:\"site-title/style.min.css\";i:460;s:26:\"social-link/editor-rtl.css\";i:461;s:30:\"social-link/editor-rtl.min.css\";i:462;s:22:\"social-link/editor.css\";i:463;s:26:\"social-link/editor.min.css\";i:464;s:27:\"social-links/editor-rtl.css\";i:465;s:31:\"social-links/editor-rtl.min.css\";i:466;s:23:\"social-links/editor.css\";i:467;s:27:\"social-links/editor.min.css\";i:468;s:26:\"social-links/style-rtl.css\";i:469;s:30:\"social-links/style-rtl.min.css\";i:470;s:22:\"social-links/style.css\";i:471;s:26:\"social-links/style.min.css\";i:472;s:21:\"spacer/editor-rtl.css\";i:473;s:25:\"spacer/editor-rtl.min.css\";i:474;s:17:\"spacer/editor.css\";i:475;s:21:\"spacer/editor.min.css\";i:476;s:20:\"spacer/style-rtl.css\";i:477;s:24:\"spacer/style-rtl.min.css\";i:478;s:16:\"spacer/style.css\";i:479;s:20:\"spacer/style.min.css\";i:480;s:20:\"table/editor-rtl.css\";i:481;s:24:\"table/editor-rtl.min.css\";i:482;s:16:\"table/editor.css\";i:483;s:20:\"table/editor.min.css\";i:484;s:19:\"table/style-rtl.css\";i:485;s:23:\"table/style-rtl.min.css\";i:486;s:15:\"table/style.css\";i:487;s:19:\"table/style.min.css\";i:488;s:19:\"table/theme-rtl.css\";i:489;s:23:\"table/theme-rtl.min.css\";i:490;s:15:\"table/theme.css\";i:491;s:19:\"table/theme.min.css\";i:492;s:24:\"tag-cloud/editor-rtl.css\";i:493;s:28:\"tag-cloud/editor-rtl.min.css\";i:494;s:20:\"tag-cloud/editor.css\";i:495;s:24:\"tag-cloud/editor.min.css\";i:496;s:23:\"tag-cloud/style-rtl.css\";i:497;s:27:\"tag-cloud/style-rtl.min.css\";i:498;s:19:\"tag-cloud/style.css\";i:499;s:23:\"tag-cloud/style.min.css\";i:500;s:28:\"template-part/editor-rtl.css\";i:501;s:32:\"template-part/editor-rtl.min.css\";i:502;s:24:\"template-part/editor.css\";i:503;s:28:\"template-part/editor.min.css\";i:504;s:27:\"template-part/theme-rtl.css\";i:505;s:31:\"template-part/theme-rtl.min.css\";i:506;s:23:\"template-part/theme.css\";i:507;s:27:\"template-part/theme.min.css\";i:508;s:30:\"term-description/style-rtl.css\";i:509;s:34:\"term-description/style-rtl.min.css\";i:510;s:26:\"term-description/style.css\";i:511;s:30:\"term-description/style.min.css\";i:512;s:27:\"text-columns/editor-rtl.css\";i:513;s:31:\"text-columns/editor-rtl.min.css\";i:514;s:23:\"text-columns/editor.css\";i:515;s:27:\"text-columns/editor.min.css\";i:516;s:26:\"text-columns/style-rtl.css\";i:517;s:30:\"text-columns/style-rtl.min.css\";i:518;s:22:\"text-columns/style.css\";i:519;s:26:\"text-columns/style.min.css\";i:520;s:19:\"verse/style-rtl.css\";i:521;s:23:\"verse/style-rtl.min.css\";i:522;s:15:\"verse/style.css\";i:523;s:19:\"verse/style.min.css\";i:524;s:20:\"video/editor-rtl.css\";i:525;s:24:\"video/editor-rtl.min.css\";i:526;s:16:\"video/editor.css\";i:527;s:20:\"video/editor.min.css\";i:528;s:19:\"video/style-rtl.css\";i:529;s:23:\"video/style-rtl.min.css\";i:530;s:15:\"video/style.css\";i:531;s:19:\"video/style.min.css\";i:532;s:19:\"video/theme-rtl.css\";i:533;s:23:\"video/theme-rtl.min.css\";i:534;s:15:\"video/theme.css\";i:535;s:19:\"video/theme.min.css\";}}', 'on'),
(125, 'recovery_keys', 'a:0:{}', 'off'),
(126, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1760591237;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(127, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"2430dc1c1af266948655bcc2be98820e\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(128, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.8.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.8.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.3\";s:7:\"version\";s:5:\"6.8.3\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1760645792;s:15:\"version_checked\";s:5:\"6.8.3\";s:12:\"translations\";a:0:{}}', 'off'),
(132, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1760645794;s:7:\"checked\";a:1:{s:11:\"dscpl/theme\";s:5:\"0.1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'off'),
(133, '_site_transient_timeout_browser_209eaa299125147cabf09b35d947b794', '1761195244', 'off'),
(134, '_site_transient_browser_209eaa299125147cabf09b35d947b794', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:5:\"143.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(135, '_site_transient_timeout_php_check_02188af51d4a5a03791426b00985b4f3', '1761195245', 'off'),
(136, '_site_transient_php_check_02188af51d4a5a03791426b00985b4f3', 'a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(140, 'can_compress_scripts', '1', 'on'),
(153, 'finished_updating_comment_type', '1', 'auto'),
(154, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(155, 'recently_activated', 'a:0:{}', 'off'),
(156, 'current_theme', 'dscpl', 'auto'),
(157, 'theme_mods_dscpl/theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(158, 'theme_switched', '', 'auto'),
(166, 'acf_first_activated_version', '6.6.0', 'on'),
(167, 'acf_site_health', '{\"version\":\"6.6.0\",\"plugin_type\":\"Free\",\"update_source\":\"wordpress.org\",\"wp_version\":\"6.8.3\",\"mysql_version\":\"8.0.40\",\"is_multisite\":false,\"active_theme\":{\"name\":\"dscpl\",\"version\":\"0.1.0\",\"theme_uri\":\"https:\\/\\/underscoretw.com\\/\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.6.0\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"}},\"ui_field_groups\":\"0\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"all_location_rules\":[],\"number_of_fields_by_type\":[],\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"3\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1760591293,\"last_updated\":1760591294}', 'off'),
(169, 'acf_version', '6.6.0', 'auto'),
(250, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1760645795;s:8:\"response\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":14:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.6.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3374528\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3374528\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";s:6:\"tested\";s:5:\"6.8.3\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}s:18:\"disable_autoupdate\";b:1;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}s:7:\"checked\";a:1:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.6.0\";}}', 'off'),
(251, '_site_transient_timeout_wp_theme_files_patterns-3cd55ea800fa07af57930f5dcacc915c', '1760678464', 'off'),
(252, '_site_transient_wp_theme_files_patterns-3cd55ea800fa07af57930f5dcacc915c', 'a:2:{s:7:\"version\";s:5:\"0.1.0\";s:8:\"patterns\";a:0:{}}', 'off'),
(255, '_site_transient_timeout_theme_roots', '1760678917', 'off'),
(256, '_site_transient_theme_roots', 'a:1:{s:11:\"dscpl/theme\";s:7:\"/themes\";}', 'off'),
(257, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":6,\"critical\":1}', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `dscpl_postmeta`
--

CREATE TABLE `dscpl_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dscpl_postmeta`
--

INSERT INTO `dscpl_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_lock', '1760593638:1'),
(4, 9, '_wp_attached_file', '2025/10/african-american-manager.png'),
(5, 9, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:296;s:6:\"height\";i:442;s:4:\"file\";s:36:\"2025/10/african-american-manager.png\";s:8:\"filesize\";i:216838;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:36:\"african-american-manager-201x300.png\";s:5:\"width\";i:201;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:97255;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:36:\"african-american-manager-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:40554;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 10, '_wp_attached_file', '2025/10/calm-curly-brunette.png'),
(7, 10, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:204;s:6:\"height\";i:209;s:4:\"file\";s:31:\"2025/10/calm-curly-brunette.png\";s:8:\"filesize\";i:80829;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"calm-curly-brunette-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:39859;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 11, '_wp_attached_file', '2025/10/right-arrow.svg'),
(9, 11, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:378;}'),
(22, 18, '_wp_attached_file', '2025/10/cuboid.png'),
(23, 18, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:445;s:6:\"height\";i:468;s:4:\"file\";s:18:\"2025/10/cuboid.png\";s:8:\"filesize\";i:13799;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"cuboid-285x300.png\";s:5:\"width\";i:285;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16771;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"cuboid-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7795;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 19, '_wp_attached_file', '2025/10/hexagonal-bottom.png'),
(25, 19, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:673;s:6:\"height\";i:703;s:4:\"file\";s:28:\"2025/10/hexagonal-bottom.png\";s:8:\"filesize\";i:68847;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"hexagonal-bottom-287x300.png\";s:5:\"width\";i:287;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:30154;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"hexagonal-bottom-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12003;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 20, '_wp_attached_file', '2025/10/profile.png'),
(27, 20, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:266;s:6:\"height\";i:55;s:4:\"file\";s:19:\"2025/10/profile.png\";s:8:\"filesize\";i:30153;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"profile-150x55.png\";s:5:\"width\";i:150;s:6:\"height\";i:55;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17252;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 21, '_wp_attached_file', '2025/10/farmgrown.png'),
(29, 21, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:74;s:6:\"height\";i:209;s:4:\"file\";s:21:\"2025/10/farmgrown.png\";s:8:\"filesize\";i:26299;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"farmgrown-74x150.png\";s:5:\"width\";i:74;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:19484;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 22, '_wp_attached_file', '2025/10/hexagonal-top.png'),
(31, 22, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:919;s:6:\"height\";i:713;s:4:\"file\";s:25:\"2025/10/hexagonal-top.png\";s:8:\"filesize\";i:67743;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"hexagonal-top-300x233.png\";s:5:\"width\";i:300;s:6:\"height\";i:233;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:20802;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"hexagonal-top-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8852;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"hexagonal-top-768x596.png\";s:5:\"width\";i:768;s:6:\"height\";i:596;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:80249;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 23, '_wp_attached_file', '2025/10/applepay.svg'),
(33, 23, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:2099;}'),
(34, 24, '_wp_attached_file', '2025/10/Instagram.svg'),
(35, 24, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:9779;}'),
(36, 25, '_wp_attached_file', '2025/10/linked.svg'),
(37, 25, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:4819;}'),
(38, 26, '_wp_attached_file', '2025/10/microsoft.svg'),
(39, 26, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:6491;}'),
(40, 27, '_wp_attached_file', '2025/10/metallb.svg'),
(41, 27, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:6533;}'),
(42, 28, '_wp_attached_file', '2025/10/arrowFrame.svg'),
(43, 28, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1857;}'),
(44, 29, '_wp_attached_file', '2025/10/FrameNote.svg'),
(45, 29, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:2824;}'),
(46, 30, '_wp_attached_file', '2025/10/FrameDoodle.svg'),
(47, 30, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:3275;}'),
(48, 31, '_wp_attached_file', '2025/10/FrameCube.svg'),
(49, 31, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:2462;}'),
(52, 33, '_wp_attached_file', '2025/10/partner.png'),
(53, 33, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:840;s:6:\"height\";i:473;s:4:\"file\";s:19:\"2025/10/partner.png\";s:8:\"filesize\";i:657683;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"partner-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:83545;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"partner-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:40980;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"partner-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:473901;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 34, '_wp_attached_file', '2025/10/play.svg'),
(55, 34, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:747;}'),
(56, 35, '_wp_attached_file', '2025/10/gravity.svg'),
(57, 35, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:433;}'),
(58, 36, '_wp_attached_file', '2025/10/vector.svg'),
(59, 36, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:6901;}'),
(60, 37, '_wp_attached_file', '2025/10/Twitterpost.png'),
(61, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:560;s:4:\"file\";s:23:\"2025/10/Twitterpost.png\";s:8:\"filesize\";i:208311;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"Twitterpost-300x140.png\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:25029;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"Twitterpost-1024x478.png\";s:5:\"width\";i:1024;s:6:\"height\";i:478;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:186969;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"Twitterpost-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:19782;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"Twitterpost-768x358.png\";s:5:\"width\";i:768;s:6:\"height\";i:358;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:118035;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 38, '_wp_attached_file', '2025/10/dashboard.png'),
(63, 38, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:444;s:6:\"height\";i:274;s:4:\"file\";s:21:\"2025/10/dashboard.png\";s:8:\"filesize\";i:28694;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"dashboard-300x185.png\";s:5:\"width\";i:300;s:6:\"height\";i:185;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17360;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"dashboard-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9404;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(64, 39, '_wp_attached_file', '2025/10/logo.svg'),
(65, 39, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:15652;}'),
(66, 40, '_wp_attached_file', '2025/10/instagram-1.svg'),
(67, 40, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:575932;}'),
(68, 41, '_wp_attached_file', '2025/10/linkedin.svg'),
(69, 41, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1052;}'),
(70, 42, '_wp_attached_file', '2025/10/facebook.svg'),
(71, 42, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:948;}'),
(72, 43, '_wp_attached_file', '2025/10/twitter.svg'),
(73, 43, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1711;}'),
(74, 44, '_wp_attached_file', '2025/10/whiteLogo.svg'),
(75, 44, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:15522;}'),
(76, 45, '_wp_attached_file', '2025/10/apartment.svg'),
(77, 45, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:343;}'),
(78, 46, '_wp_attached_file', '2025/10/mail.svg'),
(79, 46, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:747;}'),
(80, 47, '_wp_attached_file', '2025/10/call.svg'),
(81, 47, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1519;}'),
(82, 48, '_edit_lock', '1760597008:1'),
(83, 50, '_edit_lock', '1760597024:1'),
(84, 52, '_edit_lock', '1760596890:1'),
(85, 54, '_wp_attached_file', '2025/10/analytics.svg'),
(86, 54, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:8435;}'),
(87, 55, '_wp_attached_file', '2025/10/roundicon.svg'),
(88, 55, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:13094;}'),
(89, 56, '_wp_attached_file', '2025/10/frameicon.svg'),
(90, 56, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:11107;}'),
(91, 57, '_wp_attached_file', '2025/10/saasframe.png'),
(92, 57, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:700;s:4:\"file\";s:21:\"2025/10/saasframe.png\";s:8:\"filesize\";i:315568;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"saasframe-300x146.png\";s:5:\"width\";i:300;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:33012;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"saasframe-1024x498.png\";s:5:\"width\";i:1024;s:6:\"height\";i:498;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:193642;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"saasframe-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14197;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"saasframe-768x373.png\";s:5:\"width\";i:768;s:6:\"height\";i:373;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:127599;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 58, '_wp_attached_file', '2025/10/compliance.png'),
(94, 58, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:150;s:6:\"height\";i:106;s:4:\"file\";s:22:\"2025/10/compliance.png\";s:8:\"filesize\";i:22497;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 59, '_wp_attached_file', '2025/10/3d-view-map.png'),
(96, 59, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:118;s:6:\"height\";i:94;s:4:\"file\";s:23:\"2025/10/3d-view-map.png\";s:8:\"filesize\";i:8401;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 60, '_wp_attached_file', '2025/10/mobile-payment-design.png'),
(98, 60, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:94;s:6:\"height\";i:74;s:4:\"file\";s:33:\"2025/10/mobile-payment-design.png\";s:8:\"filesize\";i:7236;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 61, '_wp_attached_file', '2025/10/cart.png'),
(100, 61, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:16:\"2025/10/cart.png\";s:8:\"filesize\";i:10233;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 62, '_wp_attached_file', '2025/10/red-laptop.png'),
(102, 62, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:82;s:6:\"height\";i:92;s:4:\"file\";s:22:\"2025/10/red-laptop.png\";s:8:\"filesize\";i:12417;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 63, '_wp_attached_file', '2025/10/supply-chain-representation.png'),
(104, 63, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:106;s:6:\"height\";i:72;s:4:\"file\";s:39:\"2025/10/supply-chain-representation.png\";s:8:\"filesize\";i:7791;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 64, '_wp_attached_file', '2025/10/secure-compliant.png'),
(106, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:93;s:6:\"height\";i:103;s:4:\"file\";s:28:\"2025/10/secure-compliant.png\";s:8:\"filesize\";i:13278;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 65, '_wp_attached_file', '2025/10/liveorderupdate.png'),
(108, 65, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:129;s:6:\"height\";i:75;s:4:\"file\";s:27:\"2025/10/liveorderupdate.png\";s:8:\"filesize\";i:9095;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 66, '_wp_attached_file', '2025/10/smartexpense.png'),
(110, 66, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:123;s:6:\"height\";i:71;s:4:\"file\";s:24:\"2025/10/smartexpense.png\";s:8:\"filesize\";i:7962;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 67, '_wp_attached_file', '2025/10/officesalecapability.png'),
(112, 67, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:101;s:6:\"height\";i:100;s:4:\"file\";s:32:\"2025/10/officesalecapability.png\";s:8:\"filesize\";i:10305;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 68, '_wp_attached_file', '2025/10/realtimestock.png'),
(114, 68, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:141;s:6:\"height\";i:83;s:4:\"file\";s:25:\"2025/10/realtimestock.png\";s:8:\"filesize\";i:16551;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 69, '_wp_attached_file', '2025/10/instantsetup.png'),
(116, 69, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:109;s:6:\"height\";i:73;s:4:\"file\";s:24:\"2025/10/instantsetup.png\";s:8:\"filesize\";i:11888;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 70, '_wp_attached_file', '2025/10/phone.png'),
(118, 70, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:244;s:6:\"height\";i:497;s:4:\"file\";s:17:\"2025/10/phone.png\";s:8:\"filesize\";i:49759;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"phone-147x300.png\";s:5:\"width\";i:147;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:27109;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"phone-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11251;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 71, '_edit_lock', '1760600178:1'),
(120, 73, '_wp_attached_file', '2025/10/rocket.svg'),
(121, 73, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1466;}'),
(122, 74, '_wp_attached_file', '2025/10/clockicon.svg'),
(123, 74, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:557;}'),
(124, 75, '_wp_attached_file', '2025/10/calendar.svg'),
(125, 75, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:608;}'),
(126, 76, '_wp_attached_file', '2025/10/checking.png'),
(127, 76, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:585;s:6:\"height\";i:271;s:4:\"file\";s:20:\"2025/10/checking.png\";s:8:\"filesize\";i:237614;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"checking-300x139.png\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:60324;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"checking-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:38820;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 77, '_wp_attached_file', '2025/10/braid.png'),
(129, 77, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:585;s:6:\"height\";i:271;s:4:\"file\";s:17:\"2025/10/braid.png\";s:8:\"filesize\";i:284524;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"braid-300x139.png\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:67542;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"braid-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:37931;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 78, '_wp_attached_file', '2025/10/headphone.png'),
(131, 78, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:585;s:6:\"height\";i:271;s:4:\"file\";s:21:\"2025/10/headphone.png\";s:8:\"filesize\";i:447637;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"headphone-300x139.png\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:109863;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"headphone-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:58823;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 79, '_wp_attached_file', '2025/10/truck.png'),
(133, 79, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:592;s:6:\"height\";i:277;s:4:\"file\";s:17:\"2025/10/truck.png\";s:8:\"filesize\";i:299166;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"truck-300x140.png\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:72947;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"truck-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:42872;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 80, '_wp_attached_file', '2025/10/saas.png'),
(135, 80, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:319;s:6:\"height\";i:230;s:4:\"file\";s:16:\"2025/10/saas.png\";s:8:\"filesize\";i:144456;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"saas-300x216.png\";s:5:\"width\";i:300;s:6:\"height\";i:216;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:115992;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"saas-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:43603;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 81, '_wp_attached_file', '2025/10/warehouse.png'),
(137, 81, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:319;s:6:\"height\";i:230;s:4:\"file\";s:21:\"2025/10/warehouse.png\";s:8:\"filesize\";i:131300;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"warehouse-300x216.png\";s:5:\"width\";i:300;s:6:\"height\";i:216;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:101364;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"warehouse-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:38779;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 82, '_wp_attached_file', '2025/10/Email.svg'),
(139, 82, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1526;}'),
(140, 83, '_wp_attached_file', '2025/10/yellow.png'),
(141, 83, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:181;s:6:\"height\";i:181;s:4:\"file\";s:18:\"2025/10/yellow.png\";s:8:\"filesize\";i:62508;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"yellow-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:42366;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 84, '_wp_attached_file', '2025/10/profile-1.png'),
(143, 84, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:29;s:6:\"height\";i:22;s:4:\"file\";s:21:\"2025/10/profile-1.png\";s:8:\"filesize\";i:1991;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(144, 85, '_edit_lock', '1760606483:1'),
(145, 87, '_wp_attached_file', '2025/10/high-angle-woman-talking-phone-1.png'),
(146, 87, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:543;s:6:\"height\";i:362;s:4:\"file\";s:44:\"2025/10/high-angle-woman-talking-phone-1.png\";s:8:\"filesize\";i:300028;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:44:\"high-angle-woman-talking-phone-1-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:88129;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:44:\"high-angle-woman-talking-phone-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:38315;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 88, '_wp_attached_file', '2025/10/Image.png'),
(148, 88, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:48;s:6:\"height\";i:49;s:4:\"file\";s:17:\"2025/10/Image.png\";s:8:\"filesize\";i:2586;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 89, '_wp_attached_file', '2025/10/Facebook-1.svg'),
(150, 89, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:753;}'),
(151, 90, '_wp_attached_file', '2025/10/Twitter-1.svg'),
(152, 90, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:8180;}'),
(153, 91, '_wp_attached_file', '2025/10/Instagram-2.svg'),
(154, 91, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1640;}'),
(155, 92, '_wp_attached_file', '2025/10/LinkedIn-1.svg'),
(156, 92, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1472;}'),
(157, 93, '_wp_attached_file', '2025/10/YouTube.svg'),
(158, 93, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1172;}'),
(159, 94, '_wp_attached_file', '2025/10/Leftcircle.png'),
(160, 94, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:623;s:6:\"height\";i:546;s:4:\"file\";s:22:\"2025/10/Leftcircle.png\";s:8:\"filesize\";i:27290;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"Leftcircle-300x263.png\";s:5:\"width\";i:300;s:6:\"height\";i:263;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16280;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"Leftcircle-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6566;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(161, 95, '_wp_attached_file', '2025/10/Rightcircle.png'),
(162, 95, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:702;s:6:\"height\";i:499;s:4:\"file\";s:23:\"2025/10/Rightcircle.png\";s:8:\"filesize\";i:19678;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"Rightcircle-300x213.png\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8017;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"Rightcircle-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3453;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(165, 97, '_wp_attached_file', '2025/10/map.svg'),
(166, 97, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1430;}'),
(171, 99, '_wp_attached_file', '2025/10/callicon.svg'),
(172, 99, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:2961;}'),
(175, 101, '_wp_attached_file', '2025/10/call-icon.svg'),
(176, 101, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:6322;}'),
(177, 102, '_wp_attached_file', '2025/10/email-icon.svg'),
(178, 102, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1530;}'),
(179, 2, '_wp_trash_meta_status', 'publish'),
(180, 2, '_wp_trash_meta_time', '1760607386'),
(181, 2, '_wp_desired_post_slug', 'sample-page'),
(182, 3, '_edit_lock', '1760607400:1'),
(183, 105, '_edit_lock', '1760607747:1'),
(184, 107, '_edit_lock', '1760608488:1'),
(193, 113, '_wp_attached_file', '2025/10/urban-office.svg'),
(194, 113, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1117;}'),
(195, 114, '_wp_attached_file', '2025/10/job-security.svg'),
(196, 114, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1866;}'),
(197, 115, '_wp_attached_file', '2025/10/remote-work.svg'),
(198, 115, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:2066;}'),
(199, 116, '_wp_attached_file', '2025/10/free-lunch.svg'),
(200, 116, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1365;}'),
(201, 117, '_wp_attached_file', '2025/10/Downarrow.svg'),
(202, 117, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:490;}'),
(203, 118, '_wp_attached_file', '2025/10/Uparrow.svg'),
(204, 118, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:505;}'),
(205, 119, '_wp_attached_file', '2025/10/GP1.jpg'),
(206, 119, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:480;s:6:\"height\";i:320;s:4:\"file\";s:15:\"2025/10/GP1.jpg\";s:8:\"filesize\";i:32763;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"GP1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12088;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"GP1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6439;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(207, 120, '_wp_attached_file', '2025/10/GP2.jpg'),
(208, 120, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:479;s:6:\"height\";i:384;s:4:\"file\";s:15:\"2025/10/GP2.jpg\";s:8:\"filesize\";i:25182;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"GP2-300x241.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:241;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8959;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"GP2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4521;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(209, 121, '_wp_attached_file', '2025/10/GP3.jpg'),
(210, 121, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:479;s:6:\"height\";i:320;s:4:\"file\";s:15:\"2025/10/GP3.jpg\";s:8:\"filesize\";i:28682;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"GP3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10619;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"GP3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5089;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(211, 122, '_wp_attached_file', '2025/10/CarrerAD-scaled.jpg'),
(212, 122, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1752;s:4:\"file\";s:27:\"2025/10/CarrerAD-scaled.jpg\";s:8:\"filesize\";i:424786;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"CarrerAD-300x205.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16849;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"CarrerAD-1024x701.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:701;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:100855;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"CarrerAD-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7836;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"CarrerAD-768x526.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:65180;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"CarrerAD-1536x1051.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1051;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:192739;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:22:\"CarrerAD-2048x1402.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1402;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:285807;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"CarrerAD.jpg\";}'),
(213, 123, '_wp_attached_file', '2025/10/packingImage.jpg'),
(214, 123, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:370;s:6:\"height\";i:370;s:4:\"file\";s:24:\"2025/10/packingImage.jpg\";s:8:\"filesize\";i:201711;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"packingImage-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21815;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"packingImage-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8023;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(215, 124, '_wp_attached_file', '2025/10/career-bg.png'),
(216, 124, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:670;s:4:\"file\";s:21:\"2025/10/career-bg.png\";s:8:\"filesize\";i:130556;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"career-bg-300x140.png\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9622;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"career-bg-1024x476.png\";s:5:\"width\";i:1024;s:6:\"height\";i:476;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:114914;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"career-bg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5164;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"career-bg-768x357.png\";s:5:\"width\";i:768;s:6:\"height\";i:357;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:59498;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(217, 125, '_wp_attached_file', '2025/10/career-main-page.png'),
(218, 125, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:682;s:6:\"height\";i:412;s:4:\"file\";s:28:\"2025/10/career-main-page.png\";s:8:\"filesize\";i:88803;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"career-main-page-300x181.png\";s:5:\"width\";i:300;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:84036;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"career-main-page-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:39311;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(219, 126, '_wp_attached_file', '2025/10/dashboard-1.png'),
(220, 126, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:299;s:6:\"height\";i:194;s:4:\"file\";s:23:\"2025/10/dashboard-1.png\";s:8:\"filesize\";i:26929;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"dashboard-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11859;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(221, 127, '_wp_attached_file', '2025/10/delivery-person.png'),
(222, 127, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:403;s:6:\"height\";i:268;s:4:\"file\";s:27:\"2025/10/delivery-person.png\";s:8:\"filesize\";i:76481;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"delivery-person-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:38604;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"delivery-person-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22709;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(223, 128, '_wp_attached_file', '2025/10/contact-sectonBG.svg'),
(224, 128, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:14745;}'),
(225, 129, '_wp_attached_file', '2025/10/NairoMap.jpg'),
(226, 129, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:446;s:6:\"height\";i:299;s:4:\"file\";s:20:\"2025/10/NairoMap.jpg\";s:8:\"filesize\";i:135735;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"NairoMap-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13057;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"NairoMap-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6499;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(227, 130, '_wp_attached_file', '2025/10/RIghtComp.svg'),
(228, 130, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:2061;}'),
(229, 131, '_wp_attached_file', '2025/10/LeftComp.svg'),
(230, 131, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:2048;}'),
(231, 132, '_wp_attached_file', '2025/10/event1.png'),
(232, 132, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:159;s:6:\"height\";i:158;s:4:\"file\";s:18:\"2025/10/event1.png\";s:8:\"filesize\";i:22428;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"event1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22937;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(233, 133, '_wp_attached_file', '2025/10/Health-Family.png'),
(234, 133, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:159;s:6:\"height\";i:158;s:4:\"file\";s:25:\"2025/10/Health-Family.png\";s:8:\"filesize\";i:23487;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"Health-Family-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23859;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(235, 134, '_wp_attached_file', '2025/10/ImageWiz2-scaled.jpg'),
(236, 134, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1577;s:4:\"file\";s:28:\"2025/10/ImageWiz2-scaled.jpg\";s:8:\"filesize\";i:332571;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"ImageWiz2-300x185.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:185;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13700;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"ImageWiz2-1024x631.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:631;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:79474;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"ImageWiz2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6825;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"ImageWiz2-768x473.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:473;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:52015;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"ImageWiz2-1536x946.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:946;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:149059;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:23:\"ImageWiz2-2048x1262.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1262;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:233478;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"ImageWiz2.jpg\";}'),
(237, 135, '_wp_attached_file', '2025/10/ImageWiz3-scaled.jpg');
INSERT INTO `dscpl_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(238, 135, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1705;s:4:\"file\";s:28:\"2025/10/ImageWiz3-scaled.jpg\";s:8:\"filesize\";i:278667;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"ImageWiz3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11734;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"ImageWiz3-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:67232;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"ImageWiz3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6141;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"ImageWiz3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43129;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"ImageWiz3-1536x1023.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:124834;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:23:\"ImageWiz3-2048x1364.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1364;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:194726;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"ImageWiz3.jpg\";}'),
(239, 136, '_wp_attached_file', '2025/10/ImageWiz4-scaled.jpg'),
(240, 136, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2025/10/ImageWiz4-scaled.jpg\";s:8:\"filesize\";i:247144;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"ImageWiz4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8860;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"ImageWiz4-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:55145;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"ImageWiz4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5201;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"ImageWiz4-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:34885;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"ImageWiz4-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:106949;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:23:\"ImageWiz4-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:172504;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"ImageWiz4.jpg\";}'),
(241, 137, '_wp_attached_file', '2025/10/left-arrow.svg'),
(242, 137, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:426;}'),
(243, 138, '_wp_attached_file', '2025/10/right-arrow-blue.svg'),
(244, 138, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:456;}'),
(245, 139, '_wp_attached_file', '2025/10/famicons_list-outline.svg'),
(246, 139, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:818;}'),
(247, 140, '_wp_attached_file', '2025/10/circle-avatar.svg'),
(248, 140, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1748;}'),
(249, 141, '_edit_lock', '1760612577:1'),
(250, 143, '_wp_attached_file', '2025/10/rightlines.svg'),
(251, 143, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:588;}'),
(252, 144, '_wp_attached_file', '2025/10/leftlines.svg'),
(253, 144, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:592;}'),
(254, 145, '_wp_attached_file', '2025/10/worldmap.png'),
(255, 145, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:804;s:6:\"height\";i:471;s:4:\"file\";s:20:\"2025/10/worldmap.png\";s:8:\"filesize\";i:158177;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"worldmap-300x176.png\";s:5:\"width\";i:300;s:6:\"height\";i:176;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:39382;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"worldmap-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22554;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"worldmap-768x450.png\";s:5:\"width\";i:768;s:6:\"height\";i:450;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:169429;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(256, 146, '_wp_attached_file', '2025/10/map.png'),
(257, 146, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:823;s:6:\"height\";i:798;s:4:\"file\";s:15:\"2025/10/map.png\";s:8:\"filesize\";i:64936;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"map-300x291.png\";s:5:\"width\";i:300;s:6:\"height\";i:291;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:40905;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"map-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14796;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"map-768x745.png\";s:5:\"width\";i:768;s:6:\"height\";i:745;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:180875;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(258, 147, '_wp_attached_file', '2025/10/eye.svg'),
(259, 147, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:44799;}'),
(260, 148, '_wp_attached_file', '2025/10/target.svg'),
(261, 148, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:2335;}'),
(262, 149, '_wp_attached_file', '2025/10/leftbadge.svg'),
(263, 149, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:386;}'),
(264, 150, '_wp_attached_file', '2025/10/rightbadge.svg'),
(265, 150, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:381;}'),
(266, 151, '_wp_attached_file', '2025/10/Ellipses.png'),
(267, 151, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:147;s:6:\"height\";i:135;s:4:\"file\";s:20:\"2025/10/Ellipses.png\";s:8:\"filesize\";i:2589;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(268, 152, '_wp_attached_file', '2025/10/LeftComp-1.svg'),
(269, 152, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:2048;}'),
(270, 153, '_wp_attached_file', '2025/10/pakage1.png'),
(271, 153, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:315;s:6:\"height\";i:321;s:4:\"file\";s:19:\"2025/10/pakage1.png\";s:8:\"filesize\";i:90163;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"pakage1-294x300.png\";s:5:\"width\";i:294;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:72922;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"pakage1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22365;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(272, 154, '_wp_attached_file', '2025/10/Pattern.png'),
(273, 154, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:720;s:6:\"height\";i:433;s:4:\"file\";s:19:\"2025/10/Pattern.png\";s:8:\"filesize\";i:42845;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"Pattern-300x180.png\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14672;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"Pattern-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7091;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(274, 155, '_wp_attached_file', '2025/10/selection.svg'),
(275, 155, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:852;}'),
(276, 156, '_wp_attached_file', '2025/10/our-story.svg'),
(277, 156, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:2804;}'),
(278, 157, '_wp_attached_file', '2025/10/big-orange.svg'),
(279, 157, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:431;}'),
(280, 158, '_wp_attached_file', '2025/10/small-orange.svg'),
(281, 158, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:437;}'),
(282, 159, '_wp_attached_file', '2025/10/check.svg'),
(283, 159, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:429;}'),
(284, 160, '_wp_attached_file', '2025/10/girl.png'),
(285, 160, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:221;s:6:\"height\";i:260;s:4:\"file\";s:16:\"2025/10/girl.png\";s:8:\"filesize\";i:91063;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"girl-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:37541;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(286, 161, '_wp_attached_file', '2025/10/groupmens.png'),
(287, 161, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:210;s:6:\"height\";i:187;s:4:\"file\";s:21:\"2025/10/groupmens.png\";s:8:\"filesize\";i:60926;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"groupmens-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:36908;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(288, 162, '_wp_attached_file', '2025/10/cuboid.svg'),
(289, 162, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:6857;}'),
(290, 163, '_wp_attached_file', '2025/10/hexa.svg'),
(291, 163, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:41131;}'),
(292, 164, '_wp_attached_file', '2025/10/hexgonal.svg'),
(293, 164, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:39489;}'),
(294, 165, '_wp_attached_file', '2025/10/vector-1.svg'),
(295, 165, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:6900;}'),
(296, 166, '_wp_attached_file', '2025/10/scanning-scaled.jpg'),
(297, 166, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:27:\"2025/10/scanning-scaled.jpg\";s:8:\"filesize\";i:322575;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"scanning-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14544;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"scanning-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:80346;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"scanning-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6993;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"scanning-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:53121;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"scanning-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:146812;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:22:\"scanning-2048x1366.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:219615;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"scanning.jpg\";}'),
(298, 167, '_wp_attached_file', '2025/10/worker-scaled.jpg'),
(299, 167, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:25:\"2025/10/worker-scaled.jpg\";s:8:\"filesize\";i:303304;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"worker-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11982;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"worker-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66713;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"worker-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6110;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"worker-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:42484;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"worker-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:129231;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:20:\"worker-2048x1366.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:202645;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:10:\"worker.jpg\";}'),
(300, 168, '_wp_attached_file', '2025/10/cubes.svg'),
(301, 168, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1579;}'),
(302, 169, '_wp_attached_file', '2025/10/Grouplogo.png'),
(303, 169, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1159;s:6:\"height\";i:376;s:4:\"file\";s:21:\"2025/10/Grouplogo.png\";s:8:\"filesize\";i:52792;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"Grouplogo-300x97.png\";s:5:\"width\";i:300;s:6:\"height\";i:97;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9339;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"Grouplogo-1024x332.png\";s:5:\"width\";i:1024;s:6:\"height\";i:332;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:51898;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"Grouplogo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6650;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"Grouplogo-768x249.png\";s:5:\"width\";i:768;s:6:\"height\";i:249;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:34388;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(304, 170, '_wp_attached_file', '2025/10/smallCube.svg'),
(305, 170, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1572;}'),
(306, 171, '_wp_attached_file', '2025/10/brands.png'),
(307, 171, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:235;s:6:\"height\";i:180;s:4:\"file\";s:18:\"2025/10/brands.png\";s:8:\"filesize\";i:79061;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"brands-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44982;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(308, 172, '_wp_attached_file', '2025/10/distribute.png'),
(309, 172, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:235;s:6:\"height\";i:180;s:4:\"file\";s:22:\"2025/10/distribute.png\";s:8:\"filesize\";i:92178;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"distribute-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:51402;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(310, 173, '_wp_attached_file', '2025/10/manufacturer.png'),
(311, 173, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:235;s:6:\"height\";i:180;s:4:\"file\";s:24:\"2025/10/manufacturer.png\";s:8:\"filesize\";i:84577;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"manufacturer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49726;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(312, 174, '_wp_attached_file', '2025/10/retails.png'),
(313, 174, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:235;s:6:\"height\";i:180;s:4:\"file\";s:19:\"2025/10/retails.png\";s:8:\"filesize\";i:80893;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"retails-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44435;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(314, 175, '_wp_attached_file', '2025/10/inventory.svg'),
(315, 175, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:2311;}'),
(316, 176, '_wp_attached_file', '2025/10/payment.svg'),
(317, 176, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:3418;}'),
(318, 177, '_wp_attached_file', '2025/10/reports.svg'),
(319, 177, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:2470;}'),
(320, 178, '_wp_attached_file', '2025/10/sales.svg'),
(321, 178, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:2032;}'),
(322, 179, '_wp_attached_file', '2025/10/van.svg'),
(323, 179, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:6767;}'),
(324, 180, '_wp_attached_file', '2025/10/inventory.png'),
(325, 180, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:192;s:6:\"height\";i:157;s:4:\"file\";s:21:\"2025/10/inventory.png\";s:8:\"filesize\";i:48969;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"inventory-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:34062;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(326, 181, '_wp_attached_file', '2025/10/payment.png'),
(327, 181, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:200;s:6:\"height\";i:157;s:4:\"file\";s:19:\"2025/10/payment.png\";s:8:\"filesize\";i:44852;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"payment-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:32730;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(328, 182, '_wp_attached_file', '2025/10/reporting.png'),
(329, 182, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:200;s:6:\"height\";i:158;s:4:\"file\";s:21:\"2025/10/reporting.png\";s:8:\"filesize\";i:45814;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"reporting-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:32259;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(330, 183, '_wp_attached_file', '2025/10/sales.png'),
(331, 183, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:192;s:6:\"height\";i:157;s:4:\"file\";s:17:\"2025/10/sales.png\";s:8:\"filesize\";i:17469;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"sales-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13164;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(332, 184, '_wp_attached_file', '2025/10/smart.png'),
(333, 184, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:200;s:6:\"height\";i:157;s:4:\"file\";s:17:\"2025/10/smart.png\";s:8:\"filesize\";i:48195;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"smart-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:33815;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(334, 185, '_wp_attached_file', '2025/10/star.svg'),
(335, 185, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:954;}'),
(336, 186, '_wp_attached_file', '2025/10/female.png'),
(337, 186, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:165;s:6:\"height\";i:167;s:4:\"file\";s:18:\"2025/10/female.png\";s:8:\"filesize\";i:51845;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"female-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:38923;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(338, 187, '_wp_attached_file', '2025/10/mobilegirl.png'),
(339, 187, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:165;s:6:\"height\";i:167;s:4:\"file\";s:22:\"2025/10/mobilegirl.png\";s:8:\"filesize\";i:62039;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"mobilegirl-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47872;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(340, 188, '_wp_attached_file', '2025/10/smilegirl.png'),
(341, 188, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:165;s:6:\"height\";i:167;s:4:\"file\";s:21:\"2025/10/smilegirl.png\";s:8:\"filesize\";i:58455;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"smilegirl-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45039;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(342, 189, '_wp_attached_file', '2025/10/work.png'),
(343, 189, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:165;s:6:\"height\";i:167;s:4:\"file\";s:16:\"2025/10/work.png\";s:8:\"filesize\";i:52923;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"work-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:39665;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(344, 190, '_wp_attached_file', '2025/10/cube.svg'),
(345, 190, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1624;}'),
(346, 191, '_wp_attached_file', '2025/10/dashscreen.png'),
(347, 191, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:458;s:6:\"height\";i:167;s:4:\"file\";s:22:\"2025/10/dashscreen.png\";s:8:\"filesize\";i:25156;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"dashscreen-300x109.png\";s:5:\"width\";i:300;s:6:\"height\";i:109;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13343;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"dashscreen-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7809;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(348, 192, '_wp_attached_file', '2025/10/dashfull.png'),
(349, 192, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:401;s:6:\"height\";i:260;s:4:\"file\";s:20:\"2025/10/dashfull.png\";s:8:\"filesize\";i:40428;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"dashfull-300x195.png\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:28448;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"dashfull-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11396;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(352, 194, '_wp_attached_file', '2025/10/menucard.png'),
(353, 194, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:402;s:6:\"height\";i:190;s:4:\"file\";s:20:\"2025/10/menucard.png\";s:8:\"filesize\";i:20109;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"menucard-300x142.png\";s:5:\"width\";i:300;s:6:\"height\";i:142;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13427;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"menucard-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7070;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(354, 195, '_wp_attached_file', '2025/10/swap.png'),
(355, 195, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:454;s:6:\"height\";i:264;s:4:\"file\";s:16:\"2025/10/swap.png\";s:8:\"filesize\";i:64390;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"swap-300x174.png\";s:5:\"width\";i:300;s:6:\"height\";i:174;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:37896;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"swap-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:19085;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(356, 196, '_wp_attached_file', '2025/10/AutomatedWorkflows.png'),
(357, 196, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:94;s:6:\"height\";i:62;s:4:\"file\";s:30:\"2025/10/AutomatedWorkflows.png\";s:8:\"filesize\";i:6554;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(358, 197, '_wp_attached_file', '2025/10/centralized-inventory-management.png'),
(359, 197, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:44:\"2025/10/centralized-inventory-management.png\";s:8:\"filesize\";i:6285;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(360, 198, '_wp_attached_file', '2025/10/mobile_web.png'),
(361, 198, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:94;s:6:\"height\";i:62;s:4:\"file\";s:22:\"2025/10/mobile_web.png\";s:8:\"filesize\";i:5328;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(362, 199, '_wp_attached_file', '2025/10/real-time.png'),
(363, 199, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:124;s:6:\"height\";i:77;s:4:\"file\";s:21:\"2025/10/real-time.png\";s:8:\"filesize\";i:9012;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(364, 200, '_wp_attached_file', '2025/10/Role-Based.png'),
(365, 200, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:94;s:6:\"height\";i:60;s:4:\"file\";s:22:\"2025/10/Role-Based.png\";s:8:\"filesize\";i:4182;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(366, 201, '_wp_attached_file', '2025/10/erp-payment.png'),
(367, 201, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:94;s:6:\"height\";i:73;s:4:\"file\";s:23:\"2025/10/erp-payment.png\";s:8:\"filesize\";i:7309;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(368, 202, '_wp_attached_file', '2025/10/cloud.svg'),
(369, 202, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1118;}'),
(370, 203, '_wp_attached_file', '2025/10/wheel.svg'),
(371, 203, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:6861;}'),
(372, 204, '_wp_attached_file', '2025/10/laptop.png'),
(373, 204, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:498;s:6:\"height\";i:267;s:4:\"file\";s:18:\"2025/10/laptop.png\";s:8:\"filesize\";i:60580;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"laptop-300x161.png\";s:5:\"width\";i:300;s:6:\"height\";i:161;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:28874;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"laptop-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17719;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(374, 205, '_edit_lock', '1760622653:1'),
(375, 208, '_wp_attached_file', '2025/10/teleicon.svg'),
(376, 208, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:575;}'),
(377, 209, '_wp_attached_file', '2025/10/blueCircle.svg'),
(378, 209, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:4113;}'),
(379, 210, '_wp_attached_file', '2025/10/card1.png'),
(380, 210, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:353;s:6:\"height\";i:200;s:4:\"file\";s:17:\"2025/10/card1.png\";s:8:\"filesize\";i:47752;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"card1-300x170.png\";s:5:\"width\";i:300;s:6:\"height\";i:170;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:111542;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"card1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:53713;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(381, 211, '_wp_attached_file', '2025/10/card2.png'),
(382, 211, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:353;s:6:\"height\";i:200;s:4:\"file\";s:17:\"2025/10/card2.png\";s:8:\"filesize\";i:38348;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"card2-300x170.png\";s:5:\"width\";i:300;s:6:\"height\";i:170;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:94877;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"card2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44578;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(383, 212, '_wp_attached_file', '2025/10/card3.png'),
(384, 212, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:353;s:6:\"height\";i:200;s:4:\"file\";s:17:\"2025/10/card3.png\";s:8:\"filesize\";i:46310;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"card3-300x170.png\";s:5:\"width\";i:300;s:6:\"height\";i:170;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:102915;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"card3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49272;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(385, 213, '_wp_attached_file', '2025/10/brawnhairgirl.png'),
(386, 213, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:377;s:6:\"height\";i:471;s:4:\"file\";s:25:\"2025/10/brawnhairgirl.png\";s:8:\"filesize\";i:77255;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"brawnhairgirl-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:124453;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"brawnhairgirl-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:43988;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(387, 214, '_wp_attached_file', '2025/10/book.svg'),
(388, 214, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1811;}'),
(389, 215, '_wp_attached_file', '2025/10/Circleprofile.svg'),
(390, 215, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1732;}'),
(391, 216, '_wp_attached_file', '2025/10/bluecube.svg'),
(392, 216, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:6853;}'),
(393, 217, '_wp_attached_file', '2025/10/blueEllipse.svg'),
(394, 217, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:615;}'),
(395, 218, '_wp_attached_file', '2025/10/Linear.svg'),
(396, 218, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:340;}'),
(397, 219, '_wp_attached_file', '2025/10/africanManager.png'),
(398, 219, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:169;s:6:\"height\";i:254;s:4:\"file\";s:26:\"2025/10/africanManager.png\";s:8:\"filesize\";i:66496;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"africanManager-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:35698;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(399, 220, '_wp_attached_file', '2025/10/curlyhair.png'),
(400, 220, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:338;s:6:\"height\";i:225;s:4:\"file\";s:21:\"2025/10/curlyhair.png\";s:8:\"filesize\";i:135794;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"curlyhair-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:96168;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"curlyhair-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:40345;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(401, 221, '_wp_attached_file', '2025/10/farm.png'),
(402, 221, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:169;s:6:\"height\";i:254;s:4:\"file\";s:16:\"2025/10/farm.png\";s:8:\"filesize\";i:92429;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"farm-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47298;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `dscpl_posts`
--

CREATE TABLE `dscpl_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dscpl_posts`
--

INSERT INTO `dscpl_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-10-16 04:53:54', '2025-10-16 04:53:54', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2025-10-16 04:53:54', '2025-10-16 04:53:54', '', 0, 'http://localhost:8888/dscpl/?p=1', 0, 'post', '', 1),
(2, 1, '2025-10-16 04:53:54', '2025-10-16 04:53:54', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/dscpl/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2025-10-16 09:36:26', '2025-10-16 09:36:26', '', 0, 'http://localhost:8888/dscpl/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-10-16 04:53:54', '2025-10-16 04:53:54', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:8888/dscpl.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2025-10-16 09:36:39', '2025-10-16 09:36:39', '', 0, 'http://localhost:8888/dscpl/?page_id=3', 0, 'page', '', 0),
(4, 0, '2025-10-16 04:53:55', '2025-10-16 04:53:55', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-10-16 04:53:55', '2025-10-16 04:53:55', '', 0, 'http://localhost:8888/dscpl/2025/10/16/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2025-10-16 04:54:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-10-16 04:54:05', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/dscpl/?p=5', 0, 'post', '', 0),
(6, 1, '2025-10-16 05:42:28', '2025-10-16 05:42:28', '', 'Success Stories', '', 'publish', 'closed', 'closed', '', 'success-stories', '', '', '2025-10-16 05:42:28', '2025-10-16 05:42:28', '', 0, 'http://localhost:8888/dscpl/?page_id=6', 0, 'page', '', 0),
(7, 1, '2025-10-16 05:42:08', '2025-10-16 05:42:08', '{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-dscpl%2ftheme', '', '', '2025-10-16 05:42:08', '2025-10-16 05:42:08', '', 0, 'http://localhost:8888/dscpl/2025/10/16/wp-global-styles-dscpl%2ftheme/', 0, 'wp_global_styles', '', 0),
(8, 1, '2025-10-16 05:42:28', '2025-10-16 05:42:28', '', 'Success Stories', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-10-16 05:42:28', '2025-10-16 05:42:28', '', 6, 'http://localhost:8888/dscpl/?p=8', 0, 'revision', '', 0),
(9, 1, '2025-10-16 05:47:28', '2025-10-16 05:47:28', '', 'african-american-manager', '', 'inherit', 'open', 'closed', '', 'african-american-manager', '', '', '2025-10-16 05:47:28', '2025-10-16 05:47:28', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/african-american-manager.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2025-10-16 05:48:22', '2025-10-16 05:48:22', '', 'calm-curly-brunette', '', 'inherit', 'open', 'closed', '', 'calm-curly-brunette', '', '', '2025-10-16 05:48:22', '2025-10-16 05:48:22', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/calm-curly-brunette.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2025-10-16 05:50:24', '2025-10-16 05:50:24', '', 'right-arrow', '', 'inherit', 'open', 'closed', '', 'right-arrow', '', '', '2025-10-16 05:50:24', '2025-10-16 05:50:24', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/right-arrow.svg', 0, 'attachment', 'image/svg+xml', 0),
(18, 1, '2025-10-16 05:57:42', '2025-10-16 05:57:42', '', 'cuboid', '', 'inherit', 'open', 'closed', '', 'cuboid', '', '', '2025-10-16 05:57:42', '2025-10-16 05:57:42', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/cuboid.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2025-10-16 05:57:42', '2025-10-16 05:57:42', '', 'hexagonal-bottom', '', 'inherit', 'open', 'closed', '', 'hexagonal-bottom', '', '', '2025-10-16 05:57:42', '2025-10-16 05:57:42', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/hexagonal-bottom.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2025-10-16 06:00:15', '2025-10-16 06:00:15', '', 'profile', '', 'inherit', 'open', 'closed', '', 'profile', '', '', '2025-10-16 06:00:15', '2025-10-16 06:00:15', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/profile.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2025-10-16 06:01:37', '2025-10-16 06:01:37', '', 'farmgrown', '', 'inherit', 'open', 'closed', '', 'farmgrown', '', '', '2025-10-16 06:01:37', '2025-10-16 06:01:37', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/farmgrown.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2025-10-16 06:03:21', '2025-10-16 06:03:21', '', 'hexagonal-top', '', 'inherit', 'open', 'closed', '', 'hexagonal-top', '', '', '2025-10-16 06:03:21', '2025-10-16 06:03:21', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/hexagonal-top.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2025-10-16 06:09:10', '2025-10-16 06:09:10', '', 'applepay', '', 'inherit', 'open', 'closed', '', 'applepay', '', '', '2025-10-16 06:09:10', '2025-10-16 06:09:10', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/applepay.svg', 0, 'attachment', 'image/svg+xml', 0),
(24, 1, '2025-10-16 06:09:11', '2025-10-16 06:09:11', '', 'Instagram', '', 'inherit', 'open', 'closed', '', 'instagram', '', '', '2025-10-16 06:09:11', '2025-10-16 06:09:11', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/Instagram.svg', 0, 'attachment', 'image/svg+xml', 0),
(25, 1, '2025-10-16 06:09:11', '2025-10-16 06:09:11', '', 'linked', '', 'inherit', 'open', 'closed', '', 'linked', '', '', '2025-10-16 06:09:11', '2025-10-16 06:09:11', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/linked.svg', 0, 'attachment', 'image/svg+xml', 0),
(26, 1, '2025-10-16 06:09:11', '2025-10-16 06:09:11', '', 'microsoft', '', 'inherit', 'open', 'closed', '', 'microsoft', '', '', '2025-10-16 06:09:11', '2025-10-16 06:09:11', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/microsoft.svg', 0, 'attachment', 'image/svg+xml', 0),
(27, 1, '2025-10-16 06:11:12', '2025-10-16 06:11:12', '', 'metallb', '', 'inherit', 'open', 'closed', '', 'metallb', '', '', '2025-10-16 06:11:12', '2025-10-16 06:11:12', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/metallb.svg', 0, 'attachment', 'image/svg+xml', 0),
(28, 1, '2025-10-16 06:16:07', '2025-10-16 06:16:07', '', 'arrowFrame', '', 'inherit', 'open', 'closed', '', 'arrowframe', '', '', '2025-10-16 06:16:07', '2025-10-16 06:16:07', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/arrowFrame.svg', 0, 'attachment', 'image/svg+xml', 0),
(29, 1, '2025-10-16 06:16:08', '2025-10-16 06:16:08', '', 'FrameNote', '', 'inherit', 'open', 'closed', '', 'framenote', '', '', '2025-10-16 06:16:08', '2025-10-16 06:16:08', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/FrameNote.svg', 0, 'attachment', 'image/svg+xml', 0),
(30, 1, '2025-10-16 06:16:08', '2025-10-16 06:16:08', '', 'FrameDoodle', '', 'inherit', 'open', 'closed', '', 'framedoodle', '', '', '2025-10-16 06:16:08', '2025-10-16 06:16:08', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/FrameDoodle.svg', 0, 'attachment', 'image/svg+xml', 0),
(31, 1, '2025-10-16 06:16:09', '2025-10-16 06:16:09', '', 'FrameCube', '', 'inherit', 'open', 'closed', '', 'framecube', '', '', '2025-10-16 06:16:09', '2025-10-16 06:16:09', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/FrameCube.svg', 0, 'attachment', 'image/svg+xml', 0),
(33, 1, '2025-10-16 06:20:43', '2025-10-16 06:20:43', '', 'partner', '', 'inherit', 'open', 'closed', '', 'partner', '', '', '2025-10-16 06:20:43', '2025-10-16 06:20:43', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/partner.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2025-10-16 06:23:06', '2025-10-16 06:23:06', '', 'play', '', 'inherit', 'open', 'closed', '', 'play', '', '', '2025-10-16 06:23:06', '2025-10-16 06:23:06', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/play.svg', 0, 'attachment', 'image/svg+xml', 0),
(35, 1, '2025-10-16 06:25:50', '2025-10-16 06:25:50', '', 'gravity', '', 'inherit', 'open', 'closed', '', 'gravity', '', '', '2025-10-16 06:25:50', '2025-10-16 06:25:50', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/gravity.svg', 0, 'attachment', 'image/svg+xml', 0),
(36, 1, '2025-10-16 06:27:15', '2025-10-16 06:27:15', '', 'vector', '', 'inherit', 'open', 'closed', '', 'vector', '', '', '2025-10-16 06:27:15', '2025-10-16 06:27:15', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/vector.svg', 0, 'attachment', 'image/svg+xml', 0),
(37, 1, '2025-10-16 06:28:21', '2025-10-16 06:28:21', '', 'Twitterpost', '', 'inherit', 'open', 'closed', '', 'twitterpost', '', '', '2025-10-16 06:28:21', '2025-10-16 06:28:21', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/Twitterpost.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2025-10-16 06:30:10', '2025-10-16 06:30:10', '', 'dashboard', '', 'inherit', 'open', 'closed', '', 'dashboard', '', '', '2025-10-16 06:30:10', '2025-10-16 06:30:10', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/dashboard.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2025-10-16 06:34:43', '2025-10-16 06:34:43', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2025-10-16 06:34:43', '2025-10-16 06:34:43', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(40, 1, '2025-10-16 06:37:03', '2025-10-16 06:37:03', '', 'instagram', '', 'inherit', 'open', 'closed', '', 'instagram-2', '', '', '2025-10-16 06:37:03', '2025-10-16 06:37:03', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/instagram-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(41, 1, '2025-10-16 06:37:03', '2025-10-16 06:37:03', '', 'linkedin', '', 'inherit', 'open', 'closed', '', 'linkedin', '', '', '2025-10-16 06:37:03', '2025-10-16 06:37:03', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/linkedin.svg', 0, 'attachment', 'image/svg+xml', 0),
(42, 1, '2025-10-16 06:37:04', '2025-10-16 06:37:04', '', 'facebook', '', 'inherit', 'open', 'closed', '', 'facebook', '', '', '2025-10-16 06:37:04', '2025-10-16 06:37:04', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/facebook.svg', 0, 'attachment', 'image/svg+xml', 0),
(43, 1, '2025-10-16 06:37:04', '2025-10-16 06:37:04', '', 'twitter', '', 'inherit', 'open', 'closed', '', 'twitter', '', '', '2025-10-16 06:37:04', '2025-10-16 06:37:04', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/twitter.svg', 0, 'attachment', 'image/svg+xml', 0),
(44, 1, '2025-10-16 06:37:05', '2025-10-16 06:37:05', '', 'whiteLogo', '', 'inherit', 'open', 'closed', '', 'whitelogo', '', '', '2025-10-16 06:37:05', '2025-10-16 06:37:05', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/whiteLogo.svg', 0, 'attachment', 'image/svg+xml', 0),
(45, 1, '2025-10-16 06:39:01', '2025-10-16 06:39:01', '', 'apartment', '', 'inherit', 'open', 'closed', '', 'apartment', '', '', '2025-10-16 06:39:01', '2025-10-16 06:39:01', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/apartment.svg', 0, 'attachment', 'image/svg+xml', 0),
(46, 1, '2025-10-16 06:39:01', '2025-10-16 06:39:01', '', 'mail', '', 'inherit', 'open', 'closed', '', 'mail', '', '', '2025-10-16 06:39:01', '2025-10-16 06:39:01', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/mail.svg', 0, 'attachment', 'image/svg+xml', 0),
(47, 1, '2025-10-16 06:39:35', '2025-10-16 06:39:35', '', 'call', '', 'inherit', 'open', 'closed', '', 'call', '', '', '2025-10-16 06:39:35', '2025-10-16 06:39:35', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/call.svg', 0, 'attachment', 'image/svg+xml', 0),
(48, 1, '2025-10-16 06:42:08', '2025-10-16 06:42:08', '', 'DDS Saas Platform for SMEs', '', 'publish', 'closed', 'closed', '', 'dds-saas-platform-for-smes', '', '', '2025-10-16 06:42:08', '2025-10-16 06:42:08', '', 0, 'http://localhost:8888/dscpl/?page_id=48', 0, 'page', '', 0),
(49, 1, '2025-10-16 06:42:08', '2025-10-16 06:42:08', '', 'DDS Saas Platform for SMEs', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2025-10-16 06:42:08', '2025-10-16 06:42:08', '', 48, 'http://localhost:8888/dscpl/?p=49', 0, 'revision', '', 0),
(50, 1, '2025-10-16 06:43:38', '2025-10-16 06:43:38', '', 'DDS Retail', '', 'publish', 'closed', 'closed', '', 'dds-retail', '', '', '2025-10-16 06:43:38', '2025-10-16 06:43:38', '', 0, 'http://localhost:8888/dscpl/?page_id=50', 0, 'page', '', 0),
(51, 1, '2025-10-16 06:43:38', '2025-10-16 06:43:38', '', 'DDS Retail', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2025-10-16 06:43:38', '2025-10-16 06:43:38', '', 50, 'http://localhost:8888/dscpl/?p=51', 0, 'revision', '', 0),
(52, 1, '2025-10-16 06:43:53', '2025-10-16 06:43:53', '', 'DDS Enterprise Cloud Platform', '', 'publish', 'closed', 'closed', '', 'dds-enterprise-cloud-platform', '', '', '2025-10-16 06:43:53', '2025-10-16 06:43:53', '', 0, 'http://localhost:8888/dscpl/?page_id=52', 0, 'page', '', 0),
(53, 1, '2025-10-16 06:43:53', '2025-10-16 06:43:53', '', 'DDS Enterprise Cloud Platform', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2025-10-16 06:43:53', '2025-10-16 06:43:53', '', 52, 'http://localhost:8888/dscpl/?p=53', 0, 'revision', '', 0),
(54, 1, '2025-10-16 06:53:29', '2025-10-16 06:53:29', '', 'analytics', '', 'inherit', 'open', 'closed', '', 'analytics', '', '', '2025-10-16 06:53:29', '2025-10-16 06:53:29', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/analytics.svg', 0, 'attachment', 'image/svg+xml', 0),
(55, 1, '2025-10-16 06:53:30', '2025-10-16 06:53:30', '', 'roundicon', '', 'inherit', 'open', 'closed', '', 'roundicon', '', '', '2025-10-16 06:53:30', '2025-10-16 06:53:30', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/roundicon.svg', 0, 'attachment', 'image/svg+xml', 0),
(56, 1, '2025-10-16 06:55:23', '2025-10-16 06:55:23', '', 'frameicon', '', 'inherit', 'open', 'closed', '', 'frameicon', '', '', '2025-10-16 06:55:23', '2025-10-16 06:55:23', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/frameicon.svg', 0, 'attachment', 'image/svg+xml', 0),
(57, 1, '2025-10-16 06:57:13', '2025-10-16 06:57:13', '', 'saasframe', '', 'inherit', 'open', 'closed', '', 'saasframe', '', '', '2025-10-16 06:57:13', '2025-10-16 06:57:13', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/saasframe.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2025-10-16 07:02:33', '2025-10-16 07:02:33', '', 'compliance', '', 'inherit', 'open', 'closed', '', 'compliance', '', '', '2025-10-16 07:02:33', '2025-10-16 07:02:33', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/compliance.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2025-10-16 07:02:34', '2025-10-16 07:02:34', '', '3d-view-map', '', 'inherit', 'open', 'closed', '', '3d-view-map', '', '', '2025-10-16 07:02:34', '2025-10-16 07:02:34', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/3d-view-map.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2025-10-16 07:02:34', '2025-10-16 07:02:34', '', 'mobile-payment-design', '', 'inherit', 'open', 'closed', '', 'mobile-payment-design', '', '', '2025-10-16 07:02:34', '2025-10-16 07:02:34', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/mobile-payment-design.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2025-10-16 07:02:35', '2025-10-16 07:02:35', '', 'cart', '', 'inherit', 'open', 'closed', '', 'cart', '', '', '2025-10-16 07:02:35', '2025-10-16 07:02:35', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/cart.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2025-10-16 07:02:35', '2025-10-16 07:02:35', '', 'red-laptop', '', 'inherit', 'open', 'closed', '', 'red-laptop', '', '', '2025-10-16 07:02:35', '2025-10-16 07:02:35', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/red-laptop.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2025-10-16 07:02:35', '2025-10-16 07:02:35', '', 'supply-chain-representation', '', 'inherit', 'open', 'closed', '', 'supply-chain-representation', '', '', '2025-10-16 07:02:35', '2025-10-16 07:02:35', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/supply-chain-representation.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2025-10-16 07:12:24', '2025-10-16 07:12:24', '', 'secure-compliant', '', 'inherit', 'open', 'closed', '', 'secure-compliant', '', '', '2025-10-16 07:12:24', '2025-10-16 07:12:24', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/secure-compliant.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2025-10-16 07:12:25', '2025-10-16 07:12:25', '', 'liveorderupdate', '', 'inherit', 'open', 'closed', '', 'liveorderupdate', '', '', '2025-10-16 07:12:25', '2025-10-16 07:12:25', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/liveorderupdate.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2025-10-16 07:12:25', '2025-10-16 07:12:25', '', 'smartexpense', '', 'inherit', 'open', 'closed', '', 'smartexpense', '', '', '2025-10-16 07:12:25', '2025-10-16 07:12:25', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/smartexpense.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2025-10-16 07:12:26', '2025-10-16 07:12:26', '', 'officesalecapability', '', 'inherit', 'open', 'closed', '', 'officesalecapability', '', '', '2025-10-16 07:12:26', '2025-10-16 07:12:26', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/officesalecapability.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2025-10-16 07:12:26', '2025-10-16 07:12:26', '', 'realtimestock', '', 'inherit', 'open', 'closed', '', 'realtimestock', '', '', '2025-10-16 07:12:26', '2025-10-16 07:12:26', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/realtimestock.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2025-10-16 07:12:27', '2025-10-16 07:12:27', '', 'instantsetup', '', 'inherit', 'open', 'closed', '', 'instantsetup', '', '', '2025-10-16 07:12:27', '2025-10-16 07:12:27', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/instantsetup.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2025-10-16 07:15:52', '2025-10-16 07:15:52', '', 'phone', '', 'inherit', 'open', 'closed', '', 'phone', '', '', '2025-10-16 07:15:52', '2025-10-16 07:15:52', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/phone.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2025-10-16 07:36:17', '2025-10-16 07:36:17', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2025-10-16 07:36:17', '2025-10-16 07:36:17', '', 0, 'http://localhost:8888/dscpl/?page_id=71', 0, 'page', '', 0),
(72, 1, '2025-10-16 07:36:17', '2025-10-16 07:36:17', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2025-10-16 07:36:17', '2025-10-16 07:36:17', '', 71, 'http://localhost:8888/dscpl/?p=72', 0, 'revision', '', 0),
(73, 1, '2025-10-16 07:39:55', '2025-10-16 07:39:55', '', 'rocket', '', 'inherit', 'open', 'closed', '', 'rocket', '', '', '2025-10-16 07:39:55', '2025-10-16 07:39:55', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/rocket.svg', 0, 'attachment', 'image/svg+xml', 0),
(74, 1, '2025-10-16 07:43:46', '2025-10-16 07:43:46', '', 'clockicon', '', 'inherit', 'open', 'closed', '', 'clockicon', '', '', '2025-10-16 07:43:46', '2025-10-16 07:43:46', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/clockicon.svg', 0, 'attachment', 'image/svg+xml', 0),
(75, 1, '2025-10-16 07:44:30', '2025-10-16 07:44:30', '', 'calendar', '', 'inherit', 'open', 'closed', '', 'calendar', '', '', '2025-10-16 07:44:30', '2025-10-16 07:44:30', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/calendar.svg', 0, 'attachment', 'image/svg+xml', 0),
(76, 1, '2025-10-16 08:58:55', '2025-10-16 08:58:55', '', 'checking', '', 'inherit', 'open', 'closed', '', 'checking', '', '', '2025-10-16 08:58:55', '2025-10-16 08:58:55', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/checking.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2025-10-16 08:59:36', '2025-10-16 08:59:36', '', 'braid', '', 'inherit', 'open', 'closed', '', 'braid', '', '', '2025-10-16 08:59:36', '2025-10-16 08:59:36', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/braid.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2025-10-16 09:00:19', '2025-10-16 09:00:19', '', 'headphone', '', 'inherit', 'open', 'closed', '', 'headphone', '', '', '2025-10-16 09:00:19', '2025-10-16 09:00:19', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/headphone.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2025-10-16 09:03:04', '2025-10-16 09:03:04', '', 'truck', '', 'inherit', 'open', 'closed', '', 'truck', '', '', '2025-10-16 09:03:04', '2025-10-16 09:03:04', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/truck.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2025-10-16 09:03:50', '2025-10-16 09:03:50', '', 'saas', '', 'inherit', 'open', 'closed', '', 'saas', '', '', '2025-10-16 09:03:50', '2025-10-16 09:03:50', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/saas.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2025-10-16 09:04:53', '2025-10-16 09:04:53', '', 'warehouse', '', 'inherit', 'open', 'closed', '', 'warehouse', '', '', '2025-10-16 09:04:53', '2025-10-16 09:04:53', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/warehouse.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2025-10-16 09:07:06', '2025-10-16 09:07:06', '', 'Email', '', 'inherit', 'open', 'closed', '', 'email', '', '', '2025-10-16 09:07:06', '2025-10-16 09:07:06', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/Email.svg', 0, 'attachment', 'image/svg+xml', 0),
(83, 1, '2025-10-16 09:08:13', '2025-10-16 09:08:13', '', 'yellow', '', 'inherit', 'open', 'closed', '', 'yellow', '', '', '2025-10-16 09:08:13', '2025-10-16 09:08:13', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/yellow.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2025-10-16 09:09:30', '2025-10-16 09:09:30', '', 'profile', '', 'inherit', 'open', 'closed', '', 'profile-2', '', '', '2025-10-16 09:09:30', '2025-10-16 09:09:30', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/profile-1.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2025-10-16 09:13:59', '2025-10-16 09:13:59', '', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2025-10-16 09:13:59', '2025-10-16 09:13:59', '', 0, 'http://localhost:8888/dscpl/?page_id=85', 0, 'page', '', 0),
(86, 1, '2025-10-16 09:13:59', '2025-10-16 09:13:59', '', 'Contact us', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2025-10-16 09:13:59', '2025-10-16 09:13:59', '', 85, 'http://localhost:8888/dscpl/?p=86', 0, 'revision', '', 0),
(87, 1, '2025-10-16 09:17:34', '2025-10-16 09:17:34', '', 'high-angle-woman-talking-phone 1', '', 'inherit', 'open', 'closed', '', 'high-angle-woman-talking-phone-1', '', '', '2025-10-16 09:17:34', '2025-10-16 09:17:34', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/high-angle-woman-talking-phone-1.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2025-10-16 09:18:56', '2025-10-16 09:18:56', '', 'Image', '', 'inherit', 'open', 'closed', '', 'image', '', '', '2025-10-16 09:18:56', '2025-10-16 09:18:56', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/Image.png', 0, 'attachment', 'image/png', 0),
(89, 1, '2025-10-16 09:20:46', '2025-10-16 09:20:46', '', 'Facebook', '', 'inherit', 'open', 'closed', '', 'facebook-2', '', '', '2025-10-16 09:20:46', '2025-10-16 09:20:46', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/Facebook-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(90, 1, '2025-10-16 09:21:33', '2025-10-16 09:21:33', '', 'Twitter', '', 'inherit', 'open', 'closed', '', 'twitter-2', '', '', '2025-10-16 09:21:33', '2025-10-16 09:21:33', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/Twitter-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(91, 1, '2025-10-16 09:22:17', '2025-10-16 09:22:17', '', 'Instagram', '', 'inherit', 'open', 'closed', '', 'instagram-3', '', '', '2025-10-16 09:22:17', '2025-10-16 09:22:17', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/Instagram-2.svg', 0, 'attachment', 'image/svg+xml', 0),
(92, 1, '2025-10-16 09:22:58', '2025-10-16 09:22:58', '', 'LinkedIn', '', 'inherit', 'open', 'closed', '', 'linkedin-2', '', '', '2025-10-16 09:22:58', '2025-10-16 09:22:58', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/LinkedIn-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(93, 1, '2025-10-16 09:23:39', '2025-10-16 09:23:39', '', 'YouTube', '', 'inherit', 'open', 'closed', '', 'youtube', '', '', '2025-10-16 09:23:39', '2025-10-16 09:23:39', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/YouTube.svg', 0, 'attachment', 'image/svg+xml', 0),
(94, 1, '2025-10-16 09:25:43', '2025-10-16 09:25:43', '', 'Leftcircle', '', 'inherit', 'open', 'closed', '', 'leftcircle', '', '', '2025-10-16 09:25:43', '2025-10-16 09:25:43', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/Leftcircle.png', 0, 'attachment', 'image/png', 0),
(95, 1, '2025-10-16 09:25:43', '2025-10-16 09:25:43', '', 'Rightcircle', '', 'inherit', 'open', 'closed', '', 'rightcircle', '', '', '2025-10-16 09:25:43', '2025-10-16 09:25:43', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/Rightcircle.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2025-10-16 09:28:23', '2025-10-16 09:28:23', '', 'map', '', 'inherit', 'open', 'closed', '', 'map', '', '', '2025-10-16 09:28:23', '2025-10-16 09:28:23', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/map.svg', 0, 'attachment', 'image/svg+xml', 0),
(99, 1, '2025-10-16 09:30:21', '2025-10-16 09:30:21', '', 'callicon', '', 'inherit', 'open', 'closed', '', 'callicon', '', '', '2025-10-16 09:30:21', '2025-10-16 09:30:21', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/callicon.svg', 0, 'attachment', 'image/svg+xml', 0),
(101, 1, '2025-10-16 09:31:56', '2025-10-16 09:31:56', '', 'call-icon', '', 'inherit', 'open', 'closed', '', 'call-icon', '', '', '2025-10-16 09:31:56', '2025-10-16 09:31:56', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/call-icon.svg', 0, 'attachment', 'image/svg+xml', 0),
(102, 1, '2025-10-16 09:34:16', '2025-10-16 09:34:16', '', 'email-icon', '', 'inherit', 'open', 'closed', '', 'email-icon', '', '', '2025-10-16 09:34:16', '2025-10-16 09:34:16', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/email-icon.svg', 0, 'attachment', 'image/svg+xml', 0),
(103, 1, '2025-10-16 09:36:26', '2025-10-16 09:36:26', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/dscpl/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-10-16 09:36:26', '2025-10-16 09:36:26', '', 2, 'http://localhost:8888/dscpl/?p=103', 0, 'revision', '', 0),
(104, 1, '2025-10-16 09:36:39', '2025-10-16 09:36:39', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:8888/dscpl.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2025-10-16 09:36:39', '2025-10-16 09:36:39', '', 3, 'http://localhost:8888/dscpl/?p=104', 0, 'revision', '', 0),
(105, 1, '2025-10-16 09:42:21', '2025-10-16 09:42:21', '', 'Terms and Conditions', '', 'publish', 'closed', 'closed', '', 'terms-and-conditions', '', '', '2025-10-16 09:42:21', '2025-10-16 09:42:21', '', 0, 'http://localhost:8888/dscpl/?page_id=105', 0, 'page', '', 0),
(106, 1, '2025-10-16 09:42:21', '2025-10-16 09:42:21', '', 'Terms and Conditions', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2025-10-16 09:42:21', '2025-10-16 09:42:21', '', 105, 'http://localhost:8888/dscpl/?p=106', 0, 'revision', '', 0),
(107, 1, '2025-10-16 09:54:50', '2025-10-16 09:54:50', '', 'Career', '', 'publish', 'closed', 'closed', '', 'career', '', '', '2025-10-16 09:54:50', '2025-10-16 09:54:50', '', 0, 'http://localhost:8888/dscpl/?page_id=107', 0, 'page', '', 0),
(108, 1, '2025-10-16 09:54:50', '2025-10-16 09:54:50', '', 'Career', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2025-10-16 09:54:50', '2025-10-16 09:54:50', '', 107, 'http://localhost:8888/dscpl/?p=108', 0, 'revision', '', 0),
(113, 1, '2025-10-16 10:05:15', '2025-10-16 10:05:15', '', 'urban-office', '', 'inherit', 'open', 'closed', '', 'urban-office', '', '', '2025-10-16 10:05:15', '2025-10-16 10:05:15', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/urban-office.svg', 0, 'attachment', 'image/svg+xml', 0),
(114, 1, '2025-10-16 10:05:15', '2025-10-16 10:05:15', '', 'job-security', '', 'inherit', 'open', 'closed', '', 'job-security', '', '', '2025-10-16 10:05:15', '2025-10-16 10:05:15', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/job-security.svg', 0, 'attachment', 'image/svg+xml', 0),
(115, 1, '2025-10-16 10:05:16', '2025-10-16 10:05:16', '', 'remote-work', '', 'inherit', 'open', 'closed', '', 'remote-work', '', '', '2025-10-16 10:05:16', '2025-10-16 10:05:16', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/remote-work.svg', 0, 'attachment', 'image/svg+xml', 0),
(116, 1, '2025-10-16 10:05:16', '2025-10-16 10:05:16', '', 'free-lunch', '', 'inherit', 'open', 'closed', '', 'free-lunch', '', '', '2025-10-16 10:05:16', '2025-10-16 10:05:16', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/free-lunch.svg', 0, 'attachment', 'image/svg+xml', 0),
(117, 1, '2025-10-16 10:07:17', '2025-10-16 10:07:17', '', 'Downarrow', '', 'inherit', 'open', 'closed', '', 'downarrow', '', '', '2025-10-16 10:07:17', '2025-10-16 10:07:17', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/Downarrow.svg', 0, 'attachment', 'image/svg+xml', 0),
(118, 1, '2025-10-16 10:07:18', '2025-10-16 10:07:18', '', 'Uparrow', '', 'inherit', 'open', 'closed', '', 'uparrow', '', '', '2025-10-16 10:07:18', '2025-10-16 10:07:18', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/Uparrow.svg', 0, 'attachment', 'image/svg+xml', 0),
(119, 1, '2025-10-16 10:09:09', '2025-10-16 10:09:09', '', 'GP1', '', 'inherit', 'open', 'closed', '', 'gp1', '', '', '2025-10-16 10:09:09', '2025-10-16 10:09:09', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/GP1.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2025-10-16 10:09:10', '2025-10-16 10:09:10', '', 'GP2', '', 'inherit', 'open', 'closed', '', 'gp2', '', '', '2025-10-16 10:09:10', '2025-10-16 10:09:10', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/GP2.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2025-10-16 10:09:10', '2025-10-16 10:09:10', '', 'GP3', '', 'inherit', 'open', 'closed', '', 'gp3', '', '', '2025-10-16 10:09:10', '2025-10-16 10:09:10', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/GP3.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2025-10-16 10:12:56', '2025-10-16 10:12:56', '', 'CarrerAD', '', 'inherit', 'open', 'closed', '', 'carrerad', '', '', '2025-10-16 10:12:56', '2025-10-16 10:12:56', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/CarrerAD.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2025-10-16 10:14:10', '2025-10-16 10:14:10', '', 'packingImage', '', 'inherit', 'open', 'closed', '', 'packingimage', '', '', '2025-10-16 10:14:10', '2025-10-16 10:14:10', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/packingImage.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2025-10-16 10:17:54', '2025-10-16 10:17:54', '', 'career-bg', '', 'inherit', 'open', 'closed', '', 'career-bg', '', '', '2025-10-16 10:17:54', '2025-10-16 10:17:54', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/career-bg.png', 0, 'attachment', 'image/png', 0),
(125, 1, '2025-10-16 10:19:37', '2025-10-16 10:19:37', '', 'career-main-page', '', 'inherit', 'open', 'closed', '', 'career-main-page', '', '', '2025-10-16 10:19:37', '2025-10-16 10:19:37', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/career-main-page.png', 0, 'attachment', 'image/png', 0),
(126, 1, '2025-10-16 10:22:00', '2025-10-16 10:22:00', '', 'dashboard', '', 'inherit', 'open', 'closed', '', 'dashboard-2', '', '', '2025-10-16 10:22:00', '2025-10-16 10:22:00', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/dashboard-1.png', 0, 'attachment', 'image/png', 0),
(127, 1, '2025-10-16 10:22:48', '2025-10-16 10:22:48', '', 'delivery-person', '', 'inherit', 'open', 'closed', '', 'delivery-person', '', '', '2025-10-16 10:22:48', '2025-10-16 10:22:48', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/delivery-person.png', 0, 'attachment', 'image/png', 0),
(128, 1, '2025-10-16 10:23:34', '2025-10-16 10:23:34', '', 'contact-sectonBG', '', 'inherit', 'open', 'closed', '', 'contact-sectonbg', '', '', '2025-10-16 10:23:34', '2025-10-16 10:23:34', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/contact-sectonBG.svg', 0, 'attachment', 'image/svg+xml', 0),
(129, 1, '2025-10-16 10:24:20', '2025-10-16 10:24:20', '', 'NairoMap', '', 'inherit', 'open', 'closed', '', 'nairomap', '', '', '2025-10-16 10:24:20', '2025-10-16 10:24:20', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/NairoMap.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2025-10-16 10:25:46', '2025-10-16 10:25:46', '', 'RIghtComp', '', 'inherit', 'open', 'closed', '', 'rightcomp', '', '', '2025-10-16 10:25:46', '2025-10-16 10:25:46', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/RIghtComp.svg', 0, 'attachment', 'image/svg+xml', 0),
(131, 1, '2025-10-16 10:26:31', '2025-10-16 10:26:31', '', 'LeftComp', '', 'inherit', 'open', 'closed', '', 'leftcomp', '', '', '2025-10-16 10:26:31', '2025-10-16 10:26:31', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/LeftComp.svg', 0, 'attachment', 'image/svg+xml', 0),
(132, 1, '2025-10-16 10:27:51', '2025-10-16 10:27:51', '', 'event1', '', 'inherit', 'open', 'closed', '', 'event1', '', '', '2025-10-16 10:27:51', '2025-10-16 10:27:51', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/event1.png', 0, 'attachment', 'image/png', 0),
(133, 1, '2025-10-16 10:33:18', '2025-10-16 10:33:18', '', 'Health-Family', '', 'inherit', 'open', 'closed', '', 'health-family', '', '', '2025-10-16 10:33:18', '2025-10-16 10:33:18', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/Health-Family.png', 0, 'attachment', 'image/png', 0),
(134, 1, '2025-10-16 10:50:46', '2025-10-16 10:50:46', '', 'ImageWiz2', '', 'inherit', 'open', 'closed', '', 'imagewiz2', '', '', '2025-10-16 10:50:46', '2025-10-16 10:50:46', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/ImageWiz2.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2025-10-16 10:50:50', '2025-10-16 10:50:50', '', 'ImageWiz3', '', 'inherit', 'open', 'closed', '', 'imagewiz3', '', '', '2025-10-16 10:50:50', '2025-10-16 10:50:50', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/ImageWiz3.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2025-10-16 10:50:55', '2025-10-16 10:50:55', '', 'ImageWiz4', '', 'inherit', 'open', 'closed', '', 'imagewiz4', '', '', '2025-10-16 10:50:55', '2025-10-16 10:50:55', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/ImageWiz4.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2025-10-16 10:57:00', '2025-10-16 10:57:00', '', 'left-arrow', '', 'inherit', 'open', 'closed', '', 'left-arrow', '', '', '2025-10-16 10:57:00', '2025-10-16 10:57:00', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/left-arrow.svg', 0, 'attachment', 'image/svg+xml', 0),
(138, 1, '2025-10-16 10:57:01', '2025-10-16 10:57:01', '', 'right-arrow-blue', '', 'inherit', 'open', 'closed', '', 'right-arrow-blue', '', '', '2025-10-16 10:57:01', '2025-10-16 10:57:01', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/right-arrow-blue.svg', 0, 'attachment', 'image/svg+xml', 0),
(139, 1, '2025-10-16 10:57:57', '2025-10-16 10:57:57', '', 'famicons_list-outline', '', 'inherit', 'open', 'closed', '', 'famicons_list-outline', '', '', '2025-10-16 10:57:57', '2025-10-16 10:57:57', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/famicons_list-outline.svg', 0, 'attachment', 'image/svg+xml', 0);
INSERT INTO `dscpl_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(140, 1, '2025-10-16 10:59:48', '2025-10-16 10:59:48', '', 'circle-avatar', '', 'inherit', 'open', 'closed', '', 'circle-avatar', '', '', '2025-10-16 10:59:48', '2025-10-16 10:59:48', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/circle-avatar.svg', 0, 'attachment', 'image/svg+xml', 0),
(141, 1, '2025-10-16 11:02:57', '2025-10-16 11:02:57', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2025-10-16 11:02:57', '2025-10-16 11:02:57', '', 0, 'http://localhost:8888/dscpl/?page_id=141', 0, 'page', '', 0),
(142, 1, '2025-10-16 11:02:57', '2025-10-16 11:02:57', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2025-10-16 11:02:57', '2025-10-16 11:02:57', '', 141, 'http://localhost:8888/dscpl/?p=142', 0, 'revision', '', 0),
(143, 1, '2025-10-16 11:04:28', '2025-10-16 11:04:28', '', 'rightlines', '', 'inherit', 'open', 'closed', '', 'rightlines', '', '', '2025-10-16 11:04:28', '2025-10-16 11:04:28', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/rightlines.svg', 0, 'attachment', 'image/svg+xml', 0),
(144, 1, '2025-10-16 11:05:23', '2025-10-16 11:05:23', '', 'leftlines', '', 'inherit', 'open', 'closed', '', 'leftlines', '', '', '2025-10-16 11:05:23', '2025-10-16 11:05:23', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/leftlines.svg', 0, 'attachment', 'image/svg+xml', 0),
(145, 1, '2025-10-16 11:07:01', '2025-10-16 11:07:01', '', 'worldmap', '', 'inherit', 'open', 'closed', '', 'worldmap', '', '', '2025-10-16 11:07:01', '2025-10-16 11:07:01', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/worldmap.png', 0, 'attachment', 'image/png', 0),
(146, 1, '2025-10-16 11:08:49', '2025-10-16 11:08:49', '', 'map', '', 'inherit', 'open', 'closed', '', 'map-2', '', '', '2025-10-16 11:08:49', '2025-10-16 11:08:49', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/map.png', 0, 'attachment', 'image/png', 0),
(147, 1, '2025-10-16 11:10:23', '2025-10-16 11:10:23', '', 'eye', '', 'inherit', 'open', 'closed', '', 'eye', '', '', '2025-10-16 11:10:23', '2025-10-16 11:10:23', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/eye.svg', 0, 'attachment', 'image/svg+xml', 0),
(148, 1, '2025-10-16 11:10:23', '2025-10-16 11:10:23', '', 'target', '', 'inherit', 'open', 'closed', '', 'target', '', '', '2025-10-16 11:10:23', '2025-10-16 11:10:23', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/target.svg', 0, 'attachment', 'image/svg+xml', 0),
(149, 1, '2025-10-16 11:11:19', '2025-10-16 11:11:19', '', 'leftbadge', '', 'inherit', 'open', 'closed', '', 'leftbadge', '', '', '2025-10-16 11:11:19', '2025-10-16 11:11:19', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/leftbadge.svg', 0, 'attachment', 'image/svg+xml', 0),
(150, 1, '2025-10-16 11:11:21', '2025-10-16 11:11:21', '', 'rightbadge', '', 'inherit', 'open', 'closed', '', 'rightbadge', '', '', '2025-10-16 11:11:21', '2025-10-16 11:11:21', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/rightbadge.svg', 0, 'attachment', 'image/svg+xml', 0),
(151, 1, '2025-10-16 11:13:08', '2025-10-16 11:13:08', '', 'Ellipses', '', 'inherit', 'open', 'closed', '', 'ellipses', '', '', '2025-10-16 11:13:08', '2025-10-16 11:13:08', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/Ellipses.png', 0, 'attachment', 'image/png', 0),
(152, 1, '2025-10-16 11:14:53', '2025-10-16 11:14:53', '', 'LeftComp', '', 'inherit', 'open', 'closed', '', 'leftcomp-2', '', '', '2025-10-16 11:14:53', '2025-10-16 11:14:53', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/LeftComp-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(153, 1, '2025-10-16 11:15:59', '2025-10-16 11:15:59', '', 'pakage1', '', 'inherit', 'open', 'closed', '', 'pakage1', '', '', '2025-10-16 11:15:59', '2025-10-16 11:15:59', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/pakage1.png', 0, 'attachment', 'image/png', 0),
(154, 1, '2025-10-16 11:17:33', '2025-10-16 11:17:33', '', 'Pattern', '', 'inherit', 'open', 'closed', '', 'pattern', '', '', '2025-10-16 11:17:33', '2025-10-16 11:17:33', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/Pattern.png', 0, 'attachment', 'image/png', 0),
(155, 1, '2025-10-16 11:19:09', '2025-10-16 11:19:09', '', 'selection', '', 'inherit', 'open', 'closed', '', 'selection', '', '', '2025-10-16 11:19:09', '2025-10-16 11:19:09', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/selection.svg', 0, 'attachment', 'image/svg+xml', 0),
(156, 1, '2025-10-16 11:21:01', '2025-10-16 11:21:01', '', 'our-story', '', 'inherit', 'open', 'closed', '', 'our-story', '', '', '2025-10-16 11:21:01', '2025-10-16 11:21:01', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/our-story.svg', 0, 'attachment', 'image/svg+xml', 0),
(157, 1, '2025-10-16 11:23:08', '2025-10-16 11:23:08', '', 'big-orange', '', 'inherit', 'open', 'closed', '', 'big-orange', '', '', '2025-10-16 11:23:08', '2025-10-16 11:23:08', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/big-orange.svg', 0, 'attachment', 'image/svg+xml', 0),
(158, 1, '2025-10-16 11:23:46', '2025-10-16 11:23:46', '', 'small-orange', '', 'inherit', 'open', 'closed', '', 'small-orange', '', '', '2025-10-16 11:23:46', '2025-10-16 11:23:46', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/small-orange.svg', 0, 'attachment', 'image/svg+xml', 0),
(159, 1, '2025-10-16 11:30:05', '2025-10-16 11:30:05', '', 'check', '', 'inherit', 'open', 'closed', '', 'check', '', '', '2025-10-16 11:30:05', '2025-10-16 11:30:05', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/check.svg', 0, 'attachment', 'image/svg+xml', 0),
(160, 1, '2025-10-16 11:49:11', '2025-10-16 11:49:11', '', 'girl', '', 'inherit', 'open', 'closed', '', 'girl', '', '', '2025-10-16 11:49:11', '2025-10-16 11:49:11', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/girl.png', 0, 'attachment', 'image/png', 0),
(161, 1, '2025-10-16 11:49:15', '2025-10-16 11:49:15', '', 'groupmens', '', 'inherit', 'open', 'closed', '', 'groupmens', '', '', '2025-10-16 11:49:15', '2025-10-16 11:49:15', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/groupmens.png', 0, 'attachment', 'image/png', 0),
(162, 1, '2025-10-16 11:51:25', '2025-10-16 11:51:25', '', 'cuboid', '', 'inherit', 'open', 'closed', '', 'cuboid-2', '', '', '2025-10-16 11:51:25', '2025-10-16 11:51:25', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/cuboid.svg', 0, 'attachment', 'image/svg+xml', 0),
(163, 1, '2025-10-16 11:52:01', '2025-10-16 11:52:01', '', 'hexa', '', 'inherit', 'open', 'closed', '', 'hexa', '', '', '2025-10-16 11:52:01', '2025-10-16 11:52:01', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/hexa.svg', 0, 'attachment', 'image/svg+xml', 0),
(164, 1, '2025-10-16 11:52:17', '2025-10-16 11:52:17', '', 'hexgonal', '', 'inherit', 'open', 'closed', '', 'hexgonal', '', '', '2025-10-16 11:52:17', '2025-10-16 11:52:17', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/hexgonal.svg', 0, 'attachment', 'image/svg+xml', 0),
(165, 1, '2025-10-16 11:53:04', '2025-10-16 11:53:04', '', 'vector', '', 'inherit', 'open', 'closed', '', 'vector-2', '', '', '2025-10-16 11:53:04', '2025-10-16 11:53:04', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/vector-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(166, 1, '2025-10-16 11:56:34', '2025-10-16 11:56:34', '', 'scanning', '', 'inherit', 'open', 'closed', '', 'scanning', '', '', '2025-10-16 11:56:34', '2025-10-16 11:56:34', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/scanning.jpg', 0, 'attachment', 'image/jpeg', 0),
(167, 1, '2025-10-16 11:56:39', '2025-10-16 11:56:39', '', 'worker', '', 'inherit', 'open', 'closed', '', 'worker', '', '', '2025-10-16 11:56:39', '2025-10-16 11:56:39', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/worker.jpg', 0, 'attachment', 'image/jpeg', 0),
(168, 1, '2025-10-16 11:58:31', '2025-10-16 11:58:31', '', 'cubes', '', 'inherit', 'open', 'closed', '', 'cubes', '', '', '2025-10-16 11:58:31', '2025-10-16 11:58:31', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/cubes.svg', 0, 'attachment', 'image/svg+xml', 0),
(169, 1, '2025-10-16 11:59:50', '2025-10-16 11:59:50', '', 'Grouplogo', '', 'inherit', 'open', 'closed', '', 'grouplogo', '', '', '2025-10-16 11:59:50', '2025-10-16 11:59:50', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/Grouplogo.png', 0, 'attachment', 'image/png', 0),
(170, 1, '2025-10-16 12:00:27', '2025-10-16 12:00:27', '', 'smallCube', '', 'inherit', 'open', 'closed', '', 'smallcube', '', '', '2025-10-16 12:00:27', '2025-10-16 12:00:27', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/smallCube.svg', 0, 'attachment', 'image/svg+xml', 0),
(171, 1, '2025-10-16 12:03:04', '2025-10-16 12:03:04', '', 'brands', '', 'inherit', 'open', 'closed', '', 'brands', '', '', '2025-10-16 12:03:04', '2025-10-16 12:03:04', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/brands.png', 0, 'attachment', 'image/png', 0),
(172, 1, '2025-10-16 12:03:05', '2025-10-16 12:03:05', '', 'distribute', '', 'inherit', 'open', 'closed', '', 'distribute', '', '', '2025-10-16 12:03:05', '2025-10-16 12:03:05', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/distribute.png', 0, 'attachment', 'image/png', 0),
(173, 1, '2025-10-16 12:03:05', '2025-10-16 12:03:05', '', 'manufacturer', '', 'inherit', 'open', 'closed', '', 'manufacturer', '', '', '2025-10-16 12:03:05', '2025-10-16 12:03:05', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/manufacturer.png', 0, 'attachment', 'image/png', 0),
(174, 1, '2025-10-16 12:03:06', '2025-10-16 12:03:06', '', 'retails', '', 'inherit', 'open', 'closed', '', 'retails', '', '', '2025-10-16 12:03:06', '2025-10-16 12:03:06', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/retails.png', 0, 'attachment', 'image/png', 0),
(175, 1, '2025-10-16 12:06:25', '2025-10-16 12:06:25', '', 'inventory', '', 'inherit', 'open', 'closed', '', 'inventory', '', '', '2025-10-16 12:06:25', '2025-10-16 12:06:25', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/inventory.svg', 0, 'attachment', 'image/svg+xml', 0),
(176, 1, '2025-10-16 12:06:26', '2025-10-16 12:06:26', '', 'payment', '', 'inherit', 'open', 'closed', '', 'payment', '', '', '2025-10-16 12:06:26', '2025-10-16 12:06:26', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/payment.svg', 0, 'attachment', 'image/svg+xml', 0),
(177, 1, '2025-10-16 12:06:26', '2025-10-16 12:06:26', '', 'reports', '', 'inherit', 'open', 'closed', '', 'reports', '', '', '2025-10-16 12:06:26', '2025-10-16 12:06:26', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/reports.svg', 0, 'attachment', 'image/svg+xml', 0),
(178, 1, '2025-10-16 12:06:27', '2025-10-16 12:06:27', '', 'sales', '', 'inherit', 'open', 'closed', '', 'sales', '', '', '2025-10-16 12:06:27', '2025-10-16 12:06:27', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/sales.svg', 0, 'attachment', 'image/svg+xml', 0),
(179, 1, '2025-10-16 12:06:28', '2025-10-16 12:06:28', '', 'van', '', 'inherit', 'open', 'closed', '', 'van', '', '', '2025-10-16 12:06:28', '2025-10-16 12:06:28', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/van.svg', 0, 'attachment', 'image/svg+xml', 0),
(180, 1, '2025-10-16 12:13:56', '2025-10-16 12:13:56', '', 'inventory', '', 'inherit', 'open', 'closed', '', 'inventory-2', '', '', '2025-10-16 12:13:56', '2025-10-16 12:13:56', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/inventory.png', 0, 'attachment', 'image/png', 0),
(181, 1, '2025-10-16 12:13:57', '2025-10-16 12:13:57', '', 'payment', '', 'inherit', 'open', 'closed', '', 'payment-2', '', '', '2025-10-16 12:13:57', '2025-10-16 12:13:57', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/payment.png', 0, 'attachment', 'image/png', 0),
(182, 1, '2025-10-16 12:13:57', '2025-10-16 12:13:57', '', 'reporting', '', 'inherit', 'open', 'closed', '', 'reporting', '', '', '2025-10-16 12:13:57', '2025-10-16 12:13:57', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/reporting.png', 0, 'attachment', 'image/png', 0),
(183, 1, '2025-10-16 12:13:58', '2025-10-16 12:13:58', '', 'sales', '', 'inherit', 'open', 'closed', '', 'sales-2', '', '', '2025-10-16 12:13:58', '2025-10-16 12:13:58', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/sales.png', 0, 'attachment', 'image/png', 0),
(184, 1, '2025-10-16 12:13:58', '2025-10-16 12:13:58', '', 'smart', '', 'inherit', 'open', 'closed', '', 'smart', '', '', '2025-10-16 12:13:58', '2025-10-16 12:13:58', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/smart.png', 0, 'attachment', 'image/png', 0),
(185, 1, '2025-10-16 12:18:56', '2025-10-16 12:18:56', '', 'star', '', 'inherit', 'open', 'closed', '', 'star', '', '', '2025-10-16 12:18:56', '2025-10-16 12:18:56', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/star.svg', 0, 'attachment', 'image/svg+xml', 0),
(186, 1, '2025-10-16 12:21:44', '2025-10-16 12:21:44', '', 'female', '', 'inherit', 'open', 'closed', '', 'female', '', '', '2025-10-16 12:21:44', '2025-10-16 12:21:44', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/female.png', 0, 'attachment', 'image/png', 0),
(187, 1, '2025-10-16 12:21:44', '2025-10-16 12:21:44', '', 'mobilegirl', '', 'inherit', 'open', 'closed', '', 'mobilegirl', '', '', '2025-10-16 12:21:44', '2025-10-16 12:21:44', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/mobilegirl.png', 0, 'attachment', 'image/png', 0),
(188, 1, '2025-10-16 12:21:45', '2025-10-16 12:21:45', '', 'smilegirl', '', 'inherit', 'open', 'closed', '', 'smilegirl', '', '', '2025-10-16 12:21:45', '2025-10-16 12:21:45', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/smilegirl.png', 0, 'attachment', 'image/png', 0),
(189, 1, '2025-10-16 12:21:45', '2025-10-16 12:21:45', '', 'work', '', 'inherit', 'open', 'closed', '', 'work', '', '', '2025-10-16 12:21:45', '2025-10-16 12:21:45', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/work.png', 0, 'attachment', 'image/png', 0),
(190, 1, '2025-10-16 12:23:01', '2025-10-16 12:23:01', '', 'cube', '', 'inherit', 'open', 'closed', '', 'cube', '', '', '2025-10-16 12:23:01', '2025-10-16 12:23:01', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/cube.svg', 0, 'attachment', 'image/svg+xml', 0),
(191, 1, '2025-10-16 12:24:20', '2025-10-16 12:24:20', '', 'dashscreen', '', 'inherit', 'open', 'closed', '', 'dashscreen', '', '', '2025-10-16 12:24:20', '2025-10-16 12:24:20', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/dashscreen.png', 0, 'attachment', 'image/png', 0),
(192, 1, '2025-10-16 12:25:25', '2025-10-16 12:25:25', '', 'dashfull', '', 'inherit', 'open', 'closed', '', 'dashfull', '', '', '2025-10-16 12:25:25', '2025-10-16 12:25:25', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/dashfull.png', 0, 'attachment', 'image/png', 0),
(194, 1, '2025-10-16 12:25:48', '2025-10-16 12:25:48', '', 'menucard', '', 'inherit', 'open', 'closed', '', 'menucard', '', '', '2025-10-16 12:25:48', '2025-10-16 12:25:48', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/menucard.png', 0, 'attachment', 'image/png', 0),
(195, 1, '2025-10-16 12:27:20', '2025-10-16 12:27:20', '', 'swap', '', 'inherit', 'open', 'closed', '', 'swap', '', '', '2025-10-16 12:27:20', '2025-10-16 12:27:20', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/swap.png', 0, 'attachment', 'image/png', 0),
(196, 1, '2025-10-16 12:43:03', '2025-10-16 12:43:03', '', 'AutomatedWorkflows', '', 'inherit', 'open', 'closed', '', 'automatedworkflows', '', '', '2025-10-16 12:43:03', '2025-10-16 12:43:03', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/AutomatedWorkflows.png', 0, 'attachment', 'image/png', 0),
(197, 1, '2025-10-16 12:43:03', '2025-10-16 12:43:03', '', 'centralized-inventory-management', '', 'inherit', 'open', 'closed', '', 'centralized-inventory-management', '', '', '2025-10-16 12:43:03', '2025-10-16 12:43:03', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/centralized-inventory-management.png', 0, 'attachment', 'image/png', 0),
(198, 1, '2025-10-16 12:43:03', '2025-10-16 12:43:03', '', 'mobile_web', '', 'inherit', 'open', 'closed', '', 'mobile_web', '', '', '2025-10-16 12:43:03', '2025-10-16 12:43:03', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/mobile_web.png', 0, 'attachment', 'image/png', 0),
(199, 1, '2025-10-16 12:43:04', '2025-10-16 12:43:04', '', 'real-time', '', 'inherit', 'open', 'closed', '', 'real-time', '', '', '2025-10-16 12:43:04', '2025-10-16 12:43:04', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/real-time.png', 0, 'attachment', 'image/png', 0),
(200, 1, '2025-10-16 12:43:04', '2025-10-16 12:43:04', '', 'Role-Based', '', 'inherit', 'open', 'closed', '', 'role-based', '', '', '2025-10-16 12:43:04', '2025-10-16 12:43:04', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/Role-Based.png', 0, 'attachment', 'image/png', 0),
(201, 1, '2025-10-16 12:44:26', '2025-10-16 12:44:26', '', 'erp-payment', '', 'inherit', 'open', 'closed', '', 'erp-payment', '', '', '2025-10-16 12:44:26', '2025-10-16 12:44:26', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/erp-payment.png', 0, 'attachment', 'image/png', 0),
(202, 1, '2025-10-16 12:45:44', '2025-10-16 12:45:44', '', 'cloud', '', 'inherit', 'open', 'closed', '', 'cloud', '', '', '2025-10-16 12:45:44', '2025-10-16 12:45:44', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/cloud.svg', 0, 'attachment', 'image/svg+xml', 0),
(203, 1, '2025-10-16 12:45:45', '2025-10-16 12:45:45', '', 'wheel', '', 'inherit', 'open', 'closed', '', 'wheel', '', '', '2025-10-16 12:45:45', '2025-10-16 12:45:45', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/wheel.svg', 0, 'attachment', 'image/svg+xml', 0),
(204, 1, '2025-10-16 12:47:38', '2025-10-16 12:47:38', '', 'laptop', '', 'inherit', 'open', 'closed', '', 'laptop', '', '', '2025-10-16 12:47:38', '2025-10-16 12:47:38', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/laptop.png', 0, 'attachment', 'image/png', 0),
(205, 1, '2025-10-16 13:13:22', '2025-10-16 13:13:22', '', 'Resources', '', 'publish', 'closed', 'closed', '', 'resources', '', '', '2025-10-16 13:14:08', '2025-10-16 13:14:08', '', 0, 'http://localhost:8888/dscpl/?page_id=205', 0, 'page', '', 0),
(206, 1, '2025-10-16 13:13:22', '2025-10-16 13:13:22', '', 'Resource', '', 'inherit', 'closed', 'closed', '', '205-revision-v1', '', '', '2025-10-16 13:13:22', '2025-10-16 13:13:22', '', 205, 'http://localhost:8888/dscpl/?p=206', 0, 'revision', '', 0),
(207, 1, '2025-10-16 13:14:05', '2025-10-16 13:14:05', '', 'Resources', '', 'inherit', 'closed', 'closed', '', '205-revision-v1', '', '', '2025-10-16 13:14:05', '2025-10-16 13:14:05', '', 205, 'http://localhost:8888/dscpl/?p=207', 0, 'revision', '', 0),
(208, 1, '2025-10-16 13:32:17', '2025-10-16 13:32:17', '', 'teleicon', '', 'inherit', 'open', 'closed', '', 'teleicon', '', '', '2025-10-16 13:32:17', '2025-10-16 13:32:17', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/teleicon.svg', 0, 'attachment', 'image/svg+xml', 0),
(209, 1, '2025-10-16 13:33:30', '2025-10-16 13:33:30', '', 'blueCircle', '', 'inherit', 'open', 'closed', '', 'bluecircle', '', '', '2025-10-16 13:33:30', '2025-10-16 13:33:30', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/blueCircle.svg', 0, 'attachment', 'image/svg+xml', 0),
(210, 1, '2025-10-16 13:38:24', '2025-10-16 13:38:24', '', 'card1', '', 'inherit', 'open', 'closed', '', 'card1', '', '', '2025-10-16 13:38:24', '2025-10-16 13:38:24', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/card1.png', 0, 'attachment', 'image/png', 0),
(211, 1, '2025-10-16 13:38:25', '2025-10-16 13:38:25', '', 'card2', '', 'inherit', 'open', 'closed', '', 'card2', '', '', '2025-10-16 13:38:25', '2025-10-16 13:38:25', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/card2.png', 0, 'attachment', 'image/png', 0),
(212, 1, '2025-10-16 13:38:25', '2025-10-16 13:38:25', '', 'card3', '', 'inherit', 'open', 'closed', '', 'card3', '', '', '2025-10-16 13:38:25', '2025-10-16 13:38:25', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/card3.png', 0, 'attachment', 'image/png', 0),
(213, 1, '2025-10-16 13:41:10', '2025-10-16 13:41:10', '', 'brawnhairgirl', '', 'inherit', 'open', 'closed', '', 'brawnhairgirl', '', '', '2025-10-16 13:41:10', '2025-10-16 13:41:10', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/brawnhairgirl.png', 0, 'attachment', 'image/png', 0),
(214, 1, '2025-10-16 13:43:11', '2025-10-16 13:43:11', '', 'book', '', 'inherit', 'open', 'closed', '', 'book', '', '', '2025-10-16 13:43:11', '2025-10-16 13:43:11', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/book.svg', 0, 'attachment', 'image/svg+xml', 0),
(215, 1, '2025-10-16 13:43:55', '2025-10-16 13:43:55', '', 'Circleprofile', '', 'inherit', 'open', 'closed', '', 'circleprofile', '', '', '2025-10-16 13:43:55', '2025-10-16 13:43:55', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/Circleprofile.svg', 0, 'attachment', 'image/svg+xml', 0),
(216, 1, '2025-10-16 13:47:30', '2025-10-16 13:47:30', '', 'bluecube', '', 'inherit', 'open', 'closed', '', 'bluecube', '', '', '2025-10-16 13:47:30', '2025-10-16 13:47:30', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/bluecube.svg', 0, 'attachment', 'image/svg+xml', 0),
(217, 1, '2025-10-16 13:47:31', '2025-10-16 13:47:31', '', 'blueEllipse', '', 'inherit', 'open', 'closed', '', 'blueellipse', '', '', '2025-10-16 13:47:31', '2025-10-16 13:47:31', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/blueEllipse.svg', 0, 'attachment', 'image/svg+xml', 0),
(218, 1, '2025-10-16 13:48:16', '2025-10-16 13:48:16', '', 'Linear', '', 'inherit', 'open', 'closed', '', 'linear', '', '', '2025-10-16 13:48:16', '2025-10-16 13:48:16', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/Linear.svg', 0, 'attachment', 'image/svg+xml', 0),
(219, 1, '2025-10-16 13:50:08', '2025-10-16 13:50:08', '', 'africanManager', '', 'inherit', 'open', 'closed', '', 'africanmanager', '', '', '2025-10-16 13:50:08', '2025-10-16 13:50:08', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/africanManager.png', 0, 'attachment', 'image/png', 0),
(220, 1, '2025-10-16 13:50:09', '2025-10-16 13:50:09', '', 'curlyhair', '', 'inherit', 'open', 'closed', '', 'curlyhair', '', '', '2025-10-16 13:50:09', '2025-10-16 13:50:09', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/curlyhair.png', 0, 'attachment', 'image/png', 0),
(221, 1, '2025-10-16 13:50:09', '2025-10-16 13:50:09', '', 'farm', '', 'inherit', 'open', 'closed', '', 'farm', '', '', '2025-10-16 13:50:09', '2025-10-16 13:50:09', '', 0, 'http://localhost:8888/dscpl/wp-content/uploads/2025/10/farm.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dscpl_termmeta`
--

CREATE TABLE `dscpl_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dscpl_terms`
--

CREATE TABLE `dscpl_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dscpl_terms`
--

INSERT INTO `dscpl_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'dscpl/theme', 'dscpl-theme', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dscpl_term_relationships`
--

CREATE TABLE `dscpl_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dscpl_term_relationships`
--

INSERT INTO `dscpl_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dscpl_term_taxonomy`
--

CREATE TABLE `dscpl_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dscpl_term_taxonomy`
--

INSERT INTO `dscpl_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dscpl_usermeta`
--

CREATE TABLE `dscpl_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dscpl_usermeta`
--

INSERT INTO `dscpl_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'dscpl_admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'dscpl_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'dscpl_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"7edc32ea7a01fde1e758cd4f49d007ee8415517806abb9874eff5913ff5c4f30\";a:4:{s:10:\"expiration\";i:1760763240;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:84:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:143.0) Gecko/20100101 Firefox/143.0\";s:5:\"login\";i:1760590440;}}'),
(17, 1, 'dscpl_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');

-- --------------------------------------------------------

--
-- Table structure for table `dscpl_users`
--

CREATE TABLE `dscpl_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dscpl_users`
--

INSERT INTO `dscpl_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'dscpl_admin', '$wp$2y$10$5NpjuaCpT9CL8GtDCe..w.5pF5ELS1s84Fr8hR5Vlqe9v4/C9E6SC', 'dscpl_admin', 'vanith@doodleblue.in', 'http://localhost:8888/dscpl', '2025-10-16 04:53:54', '', 0, 'dscpl_admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dscpl_commentmeta`
--
ALTER TABLE `dscpl_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `dscpl_comments`
--
ALTER TABLE `dscpl_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `dscpl_links`
--
ALTER TABLE `dscpl_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `dscpl_options`
--
ALTER TABLE `dscpl_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `dscpl_postmeta`
--
ALTER TABLE `dscpl_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `dscpl_posts`
--
ALTER TABLE `dscpl_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `dscpl_termmeta`
--
ALTER TABLE `dscpl_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `dscpl_terms`
--
ALTER TABLE `dscpl_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `dscpl_term_relationships`
--
ALTER TABLE `dscpl_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `dscpl_term_taxonomy`
--
ALTER TABLE `dscpl_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `dscpl_usermeta`
--
ALTER TABLE `dscpl_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `dscpl_users`
--
ALTER TABLE `dscpl_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dscpl_commentmeta`
--
ALTER TABLE `dscpl_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dscpl_comments`
--
ALTER TABLE `dscpl_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dscpl_links`
--
ALTER TABLE `dscpl_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dscpl_options`
--
ALTER TABLE `dscpl_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `dscpl_postmeta`
--
ALTER TABLE `dscpl_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT for table `dscpl_posts`
--
ALTER TABLE `dscpl_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `dscpl_termmeta`
--
ALTER TABLE `dscpl_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dscpl_terms`
--
ALTER TABLE `dscpl_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dscpl_term_taxonomy`
--
ALTER TABLE `dscpl_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dscpl_usermeta`
--
ALTER TABLE `dscpl_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `dscpl_users`
--
ALTER TABLE `dscpl_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
