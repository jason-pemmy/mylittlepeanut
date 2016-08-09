-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2016 at 08:28 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mylittlepeanut`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2016-08-04 16:13:11', '2016-08-04 20:13:11', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/dev/mylittlepeanut.ca/src', 'yes'),
(2, 'home', 'http://localhost/dev/mylittlepeanut.ca/src', 'yes'),
(3, 'blogname', 'mylittlepeanut', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jason.pemmy@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:88:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=5&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:27:"js_composer/js_composer.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'mylittlepeanut', 'yes'),
(41, 'stylesheet', 'mylittlepeanut', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '36686', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Toronto', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'WPLANG', 'en_CA', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:4:{i:1470816794;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1470834887;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1470860071;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(117, 'auth_key', 'SS>3[9f^LX!meI X|wg=3 w^qb{XO#00Mv-,s&wO@BbwA<M1Dz}Pl;BL{^oKmi-b', 'yes'),
(114, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/en_CA/wordpress-4.5.3.zip";s:6:"locale";s:5:"en_CA";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/en_CA/wordpress-4.5.3.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.3";s:7:"version";s:5:"4.5.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1470773661;s:15:"version_checked";s:5:"4.5.3";s:12:"translations";a:0:{}}', 'yes'),
(183, '_site_transient_timeout_theme_roots', '1470775467', 'yes'),
(184, '_site_transient_theme_roots', 'a:2:{s:14:"mylittlepeanut";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";}', 'yes'),
(185, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1470773673;s:7:"checked";a:2:{s:14:"mylittlepeanut";s:5:"1.0.1";s:13:"twentyfifteen";s:3:"1.3";}s:8:"response";a:1:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.5";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.5.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(186, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1470773671;s:8:"response";a:6:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":8:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.8";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.8.zip";s:6:"tested";s:5:"4.5.0";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:33:"theme-my-login/theme-my-login.php";O:8:"stdClass":8:{s:2:"id";s:4:"7109";s:4:"slug";s:14:"theme-my-login";s:6:"plugin";s:33:"theme-my-login/theme-my-login.php";s:11:"new_version";s:5:"6.4.5";s:3:"url";s:45:"https://wordpress.org/plugins/theme-my-login/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/theme-my-login.6.4.5.zip";s:6:"tested";s:5:"4.5.3";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:21:"usersnap/usersnap.php";O:8:"stdClass":8:{s:2:"id";s:5:"26910";s:4:"slug";s:8:"usersnap";s:6:"plugin";s:21:"usersnap/usersnap.php";s:11:"new_version";s:3:"4.4";s:3:"url";s:39:"https://wordpress.org/plugins/usersnap/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/usersnap.4.4.zip";s:6:"tested";s:5:"4.4.4";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":8:{s:2:"id";s:4:"5899";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:5:"3.4.2";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wordpress-seo.3.4.2.zip";s:6:"tested";s:3:"4.6";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:34:"advanced-custom-fields-pro/acf.php";O:8:"stdClass":5:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:5:"5.4.0";s:3:"url";s:37:"https://www.advancedcustomfields.com/";s:7:"package";s:0:"";}s:27:"js_composer/js_composer.php";O:8:"stdClass":5:{s:4:"slug";s:11:"js_composer";s:11:"new_version";s:4:"4.12";s:3:"url";s:0:"";s:7:"package";b:0;s:4:"name";s:24:"WPBakery Visual Composer";}}s:12:"translations";a:0:{}s:9:"no_update";a:11:{s:69:"add-descendants-as-submenu-items/add-descendants-as-submenu-items.php";O:8:"stdClass":7:{s:2:"id";s:5:"25326";s:4:"slug";s:32:"add-descendants-as-submenu-items";s:6:"plugin";s:69:"add-descendants-as-submenu-items/add-descendants-as-submenu-items.php";s:11:"new_version";s:5:"1.2.0";s:3:"url";s:63:"https://wordpress.org/plugins/add-descendants-as-submenu-items/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/add-descendants-as-submenu-items.zip";s:14:"upgrade_notice";s:18:"Various bug fixes.";}s:49:"advanced-browser-check/advanced-browser-check.php";O:8:"stdClass":6:{s:2:"id";s:5:"35031";s:4:"slug";s:22:"advanced-browser-check";s:6:"plugin";s:49:"advanced-browser-check/advanced-browser-check.php";s:11:"new_version";s:5:"4.3.0";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-browser-check/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-browser-check.4.3.0.zip";}s:49:"ajax-thumbnail-rebuild/ajax-thumbnail-rebuild.php";O:8:"stdClass":6:{s:2:"id";s:5:"10675";s:4:"slug";s:22:"ajax-thumbnail-rebuild";s:6:"plugin";s:49:"ajax-thumbnail-rebuild/ajax-thumbnail-rebuild.php";s:11:"new_version";s:4:"1.12";s:3:"url";s:53:"https://wordpress.org/plugins/ajax-thumbnail-rebuild/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/ajax-thumbnail-rebuild.1.12.zip";}s:29:"better-lorem/better-lorem.php";O:8:"stdClass":6:{s:2:"id";s:5:"18021";s:4:"slug";s:12:"better-lorem";s:6:"plugin";s:29:"better-lorem/better-lorem.php";s:11:"new_version";s:7:"0.9.3.7";s:3:"url";s:43:"https://wordpress.org/plugins/better-lorem/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/better-lorem.0.9.3.7.zip";}s:32:"disqus-comment-system/disqus.php";O:8:"stdClass":6:{s:2:"id";s:4:"4500";s:4:"slug";s:21:"disqus-comment-system";s:6:"plugin";s:32:"disqus-comment-system/disqus.php";s:11:"new_version";s:4:"2.85";s:3:"url";s:52:"https://wordpress.org/plugins/disqus-comment-system/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/disqus-comment-system.zip";}s:33:"duplicate-post/duplicate-post.php";O:8:"stdClass":7:{s:2:"id";s:4:"1295";s:4:"slug";s:14:"duplicate-post";s:6:"plugin";s:33:"duplicate-post/duplicate-post.php";s:11:"new_version";s:3:"2.6";s:3:"url";s:45:"https://wordpress.org/plugins/duplicate-post/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/duplicate-post.2.6.zip";s:14:"upgrade_notice";s:90:"PHP 5.4 (Strict Standards) compatible + Fixed possible XSS and SQL injections + other bugs";}s:39:"manual-image-crop/manual-image-crop.php";O:8:"stdClass":6:{s:2:"id";s:5:"44373";s:4:"slug";s:17:"manual-image-crop";s:6:"plugin";s:39:"manual-image-crop/manual-image-crop.php";s:11:"new_version";s:4:"1.12";s:3:"url";s:48:"https://wordpress.org/plugins/manual-image-crop/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip";}s:32:"slickplan-importer/slickplan.php";O:8:"stdClass":6:{s:2:"id";s:5:"33015";s:4:"slug";s:18:"slickplan-importer";s:6:"plugin";s:32:"slickplan-importer/slickplan.php";s:11:"new_version";s:3:"2.1";s:3:"url";s:49:"https://wordpress.org/plugins/slickplan-importer/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/slickplan-importer.zip";}s:27:"theme-check/theme-check.php";O:8:"stdClass":6:{s:2:"id";s:5:"18487";s:4:"slug";s:11:"theme-check";s:6:"plugin";s:27:"theme-check/theme-check.php";s:11:"new_version";s:10:"20160523.1";s:3:"url";s:42:"https://wordpress.org/plugins/theme-check/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/theme-check.20160523.1.zip";}s:33:"w3-total-cache/w3-total-cache.php";O:8:"stdClass":7:{s:2:"id";s:4:"9376";s:4:"slug";s:14:"w3-total-cache";s:6:"plugin";s:33:"w3-total-cache/w3-total-cache.php";s:11:"new_version";s:7:"0.9.4.1";s:3:"url";s:45:"https://wordpress.org/plugins/w3-total-cache/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/w3-total-cache.0.9.4.1.zip";s:14:"upgrade_notice";s:140:"Thanks for using W3 Total Cache! This release includes important security updates designed to contribute to a secure WordPress installation.";}s:41:"wordpress-importer/wordpress-importer.php";O:8:"stdClass":6:{s:2:"id";s:5:"14975";s:4:"slug";s:18:"wordpress-importer";s:6:"plugin";s:41:"wordpress-importer/wordpress-importer.php";s:11:"new_version";s:5:"0.6.1";s:3:"url";s:49:"https://wordpress.org/plugins/wordpress-importer/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.1.zip";}}}', 'yes'),
(118, 'auth_salt', ' <A!SM+rB;&%97oW{l`yDCDsyh_@`-Iys+i[Gu:,*c1sD=me}osn4WvzLu:NVckY', 'yes'),
(119, 'logged_in_key', '3H^KoE>LzS.cej!_{/$KV>$=oTq?bqM[E^ri`n9LU5X{]u9rC%@N68!)t2?nA!DW', 'yes'),
(120, 'logged_in_salt', 'bw?lhZ 8?#t(0#p8_I kVb.?x~z@;de;R>bW$gq3TN]Jew4y@HSgkxOs]^KL~.:I', 'yes'),
(121, 'nonce_key', '{Y8632~svh^Q17>l;weC&vr1QAsxEoEG]QryB5q_0qNM8:e1exBFBxw?C7ROh= X', 'yes'),
(122, 'nonce_salt', 'ULJKCA}[poN~*U!HEBZ{jR!`Eh)*{M;PmFB$D,xy*~p1v5<+.[*2[Yi1$0Jl^8)P', 'yes'),
(123, '_site_transient_timeout_browser_607a3301f9f52540dc0ec4cc88895069', '1470946472', 'yes'),
(124, '_site_transient_browser_607a3301f9f52540dc0ec4cc88895069', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"52.0.2743.82";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(126, 'can_compress_scripts', '1', 'yes'),
(127, 'theme_mods_tbk-base', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1470342083;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(128, 'current_theme', 'My Little Peanut', 'yes'),
(129, 'theme_mods_twentyfifteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1470342101;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(130, 'theme_switched', '', 'yes'),
(131, 'theme_mods_mylittlepeanut', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(139, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(142, '_transient_timeout_plugin_slugs', '1470845833', 'no'),
(143, '_transient_plugin_slugs', 'a:28:{i:0;s:69:"add-descendants-as-submenu-items/add-descendants-as-submenu-items.php";i:1;s:49:"advanced-browser-check/advanced-browser-check.php";i:2;s:30:"advanced-custom-fields/acf.php";i:3;s:34:"advanced-custom-fields-pro/acf.php";i:4;s:49:"ajax-thumbnail-rebuild/ajax-thumbnail-rebuild.php";i:5;s:29:"better-lorem/better-lorem.php";i:6;s:32:"disqus-comment-system/disqus.php";i:7;s:33:"duplicate-post/duplicate-post.php";i:8;s:29:"gravityforms/gravityforms.php";i:9;s:35:"gravityformsmailchimp/mailchimp.php";i:10;s:67:"gravity-forms-referral-tracking/gravity-forms-referral-tracking.php";i:11;s:39:"manual-image-crop/manual-image-crop.php";i:12;s:29:"masterslider/masterslider.php";i:13;s:45:"pagebuilder-panels-tbk/pagebuilder-panels.php";i:14;s:33:"relevanssi-premium/relevanssi.php";i:15;s:32:"slickplan-importer/slickplan.php";i:16;s:30:"tbk-careers/careers-module.php";i:17;s:32:"tbk-learning/learning-module.php";i:18;s:23:"tbk-testing/testing.php";i:19;s:27:"tbk_toolbox/tbk_toolbox.php";i:20;s:25:"templatera/templatera.php";i:21;s:27:"theme-check/theme-check.php";i:22;s:33:"theme-my-login/theme-my-login.php";i:23;s:21:"usersnap/usersnap.php";i:24;s:33:"w3-total-cache/w3-total-cache.php";i:25;s:41:"wordpress-importer/wordpress-importer.php";i:26;s:27:"js_composer/js_composer.php";i:27;s:24:"wordpress-seo/wp-seo.php";}', 'no'),
(144, 'recently_activated', 'a:0:{}', 'yes'),
(166, 'acf_version', '5.3.2.2', 'yes'),
(148, 'wpb_js_composer_license_activation_notified', 'yes', 'yes'),
(167, 'options_facebook_icon', 'icon-facebook', 'no'),
(168, '_options_facebook_icon', 'field_57aa059e454e1', 'no'),
(147, 'vc_version', '4.11.1', 'yes'),
(169, 'options_facebook_link', 'https://www.facebook.com/Mylittlepea2015', 'no'),
(170, '_options_facebook_link', 'field_57aa0f87454e2', 'no'),
(171, 'options_twitter_icon', 'icon-twitter', 'no'),
(172, '_options_twitter_icon', 'field_57aa10e68c6f3', 'no'),
(173, 'options_twitter_link', 'https://twitter.com/mylittlepea2015', 'no'),
(174, '_options_twitter_link', 'field_57aa11068c6f4', 'no'),
(175, 'options_pinterest_icon', 'icon-pinterest', 'no'),
(176, '_options_pinterest_icon', 'field_57aa11148c6f5', 'no'),
(177, 'options_pinterest_link', 'https://www.pinterest.com/mylittlepea2015/', 'no'),
(178, '_options_pinterest_link', 'field_57aa11208c6f6', 'no'),
(181, '_transient_timeout_acf_pro_get_remote_info', '1470816866', 'no'),
(182, '_transient_acf_pro_get_remote_info', 'a:15:{s:4:"name";s:26:"Advanced Custom Fields PRO";s:4:"slug";s:26:"advanced-custom-fields-pro";s:8:"homepage";s:37:"https://www.advancedcustomfields.com/";s:7:"version";s:5:"5.4.0";s:6:"author";s:13:"Elliot Condon";s:10:"author_url";s:28:"http://www.elliotcondon.com/";s:12:"contributors";s:12:"elliotcondon";s:8:"requires";s:5:"3.6.0";s:6:"tested";s:5:"4.6.0";s:4:"tags";a:40:{i:0;s:9:"5.4.0-RC1";i:1;s:5:"5.3.8";i:2;s:5:"5.3.7";i:3;s:5:"5.3.6";i:4;s:5:"5.3.5";i:5;s:5:"5.3.4";i:6;s:5:"5.3.3";i:7;s:5:"5.3.2";i:8;s:5:"5.3.1";i:9;s:5:"5.3.0";i:10;s:5:"5.2.9";i:11;s:5:"5.2.8";i:12;s:5:"5.2.7";i:13;s:5:"5.2.6";i:14;s:5:"5.2.5";i:15;s:5:"5.2.4";i:16;s:5:"5.2.3";i:17;s:5:"5.2.2";i:18;s:5:"5.2.1";i:19;s:5:"5.2.0";i:20;s:5:"5.1.9";i:21;s:5:"5.1.8";i:22;s:5:"5.1.7";i:23;s:5:"5.1.6";i:24;s:5:"5.1.5";i:25;s:5:"5.1.4";i:26;s:5:"5.1.3";i:27;s:5:"5.1.2";i:28;s:5:"5.1.1";i:29;s:5:"5.1.0";i:30;s:5:"5.0.9";i:31;s:5:"5.0.8";i:32;s:5:"5.0.7";i:33;s:5:"5.0.6";i:34;s:5:"5.0.5";i:35;s:5:"5.0.4";i:36;s:5:"5.0.3";i:37;s:5:"5.0.2";i:38;s:5:"5.0.1";i:39;s:5:"5.0.0";}s:6:"tagged";s:123:"acf, advanced, custom, field, fields, custom field, custom fields, simple fields, magic fields, more fields, repeater, edit";s:11:"description";s:4463:"<p>Advanced Custom Fields is the perfect solution for any WordPress website which needs more flexible data like other Content Management Systems. </p>\n<ul><li>Visually create your Fields</li><li>Select from multiple input types (text, textarea, wysiwyg, image, file, page link, post object, relationship, select, checkbox, radio buttons, date picker, true / false, repeater, flexible content, gallery and more to come!)</li><li>Assign your fields to multiple edit pages (via custom location rules)</li><li>Easily load data through a simple and friendly API</li><li>Uses the native WordPress custom post type for ease of use and fast processing</li><li>Uses the native WordPress metadata for ease of use and fast processing</li></ul>\n<h4> Field Types </h4>\n<ul><li>Text (type text, api returns text)</li><li>Text Area (type text, api returns text)</li><li>Number (type number, api returns integer)</li><li>Email (type email, api returns text)</li><li>Password (type password, api returns text)</li><li>WYSIWYG (a WordPress wysiwyg editor, api returns html)</li><li>Image (upload an image, api returns the url)</li><li>File (upload a file, api returns the url)</li><li>Select (drop down list of choices, api returns chosen item)</li><li>Checkbox (tickbox list of choices, api returns array of choices)</li><li>Radio Buttons ( radio button list of choices, api returns chosen item)</li><li>True / False (tick box with message, api returns true or false)</li><li>Page Link (select 1 or more page, post or custom post types, api returns the selected url)</li><li>Post Object (select 1 or more page, post or custom post types, api returns the selected post objects)</li><li>Relationship (search, select and order post objects with a tidy interface, api returns the selected post objects)</li><li>Taxonomy (select taxonomy terms with options to load, display and save, api returns the selected term objects)</li><li>User (select 1 or more WP users, api returns the selected user objects)</li><li>Google Maps (interactive map, api returns lat,lng,address data)</li><li>Date Picker (jquery date picker, options for format, api returns string)</li><li>Color Picker (WP color swatch picker)</li><li>Tab (Group fields into tabs)</li><li>Message (Render custom messages into the fields)</li><li>Repeater (ability to create repeatable blocks of fields!)</li><li>Flexible Content (ability to create flexible blocks of fields!)</li><li>Gallery (Add, edit and order multiple images in 1 simple field)</li><li>[Custom](<a href="https://http://www.advancedcustomfields.com/resources/tutorials/creating-a-new-field-type/)">http://www.advancedcustomfields.com/resources/tutorials/creating-a-new-field-type/)</a> (Create your own field type!)</li></ul>\n<h4> Tested on </h4>\n<ul><li>Mac Firefox 	:)</li><li>Mac Safari 	:)</li><li>Mac Chrome	:)</li><li>PC Safari 	:)</li><li>PC Chrome		:)</li><li>PC Firefox	:)</li><li>iPhone Safari :)</li><li>iPad Safari 	:)</li><li>PC ie7		:S</li></ul>\n<h4> Website </h4>\n<p><a href="https://http://www.advancedcustomfields.com/">http://www.advancedcustomfields.com/</a></p>\n<h4> Documentation </h4>\n<ul><li>[Getting Started](<a href="https://http://www.advancedcustomfields.com/resources/#getting-started)">http://www.advancedcustomfields.com/resources/#getting-started)</a></li><li>[Field Types](<a href="https://http://www.advancedcustomfields.com/resources/#field-types)">http://www.advancedcustomfields.com/resources/#field-types)</a></li><li>[Functions](<a href="https://http://www.advancedcustomfields.com/resources/#functions)">http://www.advancedcustomfields.com/resources/#functions)</a></li><li>[Actions](<a href="https://http://www.advancedcustomfields.com/resources/#actions)">http://www.advancedcustomfields.com/resources/#actions)</a></li><li>[Filters](<a href="https://http://www.advancedcustomfields.com/resources/#filters)">http://www.advancedcustomfields.com/resources/#filters)</a></li><li>[How to guides](<a href="https://http://www.advancedcustomfields.com/resources/#how-to)">http://www.advancedcustomfields.com/resources/#how-to)</a></li><li>[Tutorials](<a href="https://http://www.advancedcustomfields.com/resources/#tutorials)">http://www.advancedcustomfields.com/resources/#tutorials)</a></li></ul>\n<h4> Bug Submission and Forum Support </h4>\n<p><a href="http://support.advancedcustomfields.com/">support.advancedcustomfields.com/</a></p>\n<h4> Please Vote and Enjoy </h4>\n<p>Your votes really make a difference! Thanks.</p>\n";s:12:"installation";s:467:"<ol><li>Upload <code>advanced-custom-fields</code> to the <code>/wp-content/plugins/</code> directory</li><li>Activate the plugin through the <code>Plugins</code> menu in WordPress</li><li>Click on the new menu item "Custom Fields" and create your first Custom Field Group!</li><li>Your custom field group will now appear on the page / post / template you specified in the field group\'s location rules!</li><li>Read the documentation to display your data: </li></ol>\n";s:9:"changelog";s:6918:"<h4> 5.4.0 </h4>\n<ul><li>Clone field: Added new field type (<a href="https://http://www.advancedcustomfields.com/resources/clone/)">http://www.advancedcustomfields.com/resources/clone/)</a></li><li>Gallery field: Removed <code>Preview Size</code> setting and improved UI</li><li>Taxonomy field: Added compatibility to save/load terms to user object</li><li>Select field: Added new <code>Return Format</code> setting</li><li>Radio field: Added new <code>Return Format</code> setting</li><li>Checkbox field: Added new <code>Return Format</code> setting</li><li>Page link field: Added new <code>Allow Archives URLs</code> setting</li><li>Core: Fixed plugin update bug delaying updates</li><li>Core: Fixed bug when editing field settings in Chrome causing required setting to self toggle</li><li>Core: Improved speed and fixed bugs when creating and restoring revisions</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonca</li><li>Language: Updated Brazilian Portuguese translation - thanks to Augusto Simão</li><li>Language: Updated Dutch translation - thanks to Derk Oosterveld</li><li>Language: Updated Persian translation - thanks to Kamel</li><li>Language: Updated German translation - thanks to Ralf Koller</li><li>Language: Updated Swiss German translation - thanks to Raphael Hüni</li></ul>\n<h4> 5.3.10 </h4>\n<ul><li>Core: Added new <code>google_api_key</code> and <code>google_api_client</code> global settings</li><li>Google Map: Added new <code>acf/fields/google_map/api</code> filter</li></ul>\n<h4> 5.3.9.2 </h4>\n<ul><li>Time Picker field: Added compatibility with previous 3rd party field settings</li><li>Core: Fixed JS error setting l10n for Select2 with 3rd party libraries</li></ul>\n<h4> 5.3.9.1 </h4>\n<ul><li>Time Picker field: Fixed bug causing value to appear as current time</li><li>API: Fixed bug causing `have_rows()` to fail when using an object as $post_id parameter</li></ul>\n<h4> 5.3.9 </h4>\n<ul><li>Date Time Picker field: Added new field</li><li>Time Picker field: Added new field</li><li>Taxonomy field: Fixed bug preventing saved terms from being loaded during save/update actions</li><li>API: Added new function `the_row_index()` to output the current row number (1,2,3)</li><li>Core: Improved import tool to update existing field groups</li><li>Core: Added upgrade_notice message to plugins page for future announcements</li><li>Core: Fixed bug where updating value did not clear persistent cache</li><li>Core: Added Select2 JS strings to .pot for translation</li><li>Core: Added Date and Time picker JS strings to .pot for translation</li><li>Core: Improved compatibility with WPML during AJAX calls</li><li>Core: Fixed bug preventing access to network database upgrade page</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Swedish translation - thanks to Jonathan de Jong</li><li>Language: Updated Russian translation - thanks to Andy Toniyevych </li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonca</li><li>Language: Updated Polish translation - thanks to Michal Lepiarz</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li><li>Language: Updated German translation - thanks to Ralf Koller</li><li>Language: Added Arabic translation - thanks to Adil el hallaoui</li></ul>\n<h4> 5.3.8.1 </h4>\n<ul><li>Image field: Fixed JS bug causing errors when <code>Uploaded to post</code> library setting is checked</li><li>File field: Same as above</li><li>Gallery field: Same as above</li><li>Flexible Content field: Fixed bug preventing `get_sub_field()` from working within <code>layout_title</code> filter</li><li>Radio field: Fixed bug causing field name to change when adding <code>other</code> choice to a sub field</li></ul>\n<h4> 5.3.8 </h4>\n<ul><li>Gallery field: Added new <code>Insert</code> setting to control where new attachments are added</li><li>Radio field: Added new <code>Allow Null</code> setting</li><li>Relationship field: Added attachment mime type icons when no thumbnail is available</li><li>Core: Fixed bug causing customizer preview values from loading on newly added widgets</li><li>Core: Improved attachments location rule for future compatibility with specific mime types</li><li>Core: Fixed bug causing select2 to appear blank after duplicating a field setting</li><li>Core: Fixed bug causing PHP error on front-end plugin update check</li><li>Core: Updated title elements (h1, h2, h3) to match WP 4.5</li><li>Core: Minor fixes and improvements</li><li>Core: Fixed bug where comment fields appeared in different locations for logged in/out users</li><li>Language: Updated Polish translation - thanks to Michal Lepiarz</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonca</li><li>Language: Updated Swiss German translation - thanks to Raphael Hüni</li><li>Language: Updated French Translation - thanks to Maxime Bernard-Jacquet</li></ul>\n<h4> 5.3.7 </h4>\n<ul><li>Options page: Added new <code>update_button</code> setting to modify update button text</li><li>Options page: Added columns support (Screen Options)</li><li>Core: Added widget preview / save compatibility with the customizer</li><li>Core: Minor fixes and improvements</li><li>Language: Updated German translation - thanks to Ralf Koller</li><li>Language: Updated French Translation - thanks to Maxime Bernard-Jacquet</li></ul>\n<h4> 5.3.6.1 </h4>\n<ul><li>Flexible Content field: Fixed PHP error in <code>acf/fields/flexible_content/layout_title</code> filter (when used as a sub field)</li><li>Core: Fixed bug causing `get_field()` to load from the incorrect post (when within a custom WP_Query loop)</li></ul>\n<h4> 5.3.6 </h4>\n<ul><li>Flexible Content field: Added new <code>acf/fields/flexible_content/layout_title</code> filter to customize layout title</li><li>Image field: Fixed bug where searching within media library would ignore restriction settings</li><li>File field: Same as above</li><li>Field group: Added post types to comment form location rules</li><li>Color Picker field: Added <code>color_picker_args</code> JS filter to modify wpColorPicker args</li><li>API: Improved `get_` functions to load value from the current queried object (post, user, term)</li><li>Core: Added new <code>acf/translate_field</code> filter to translate field settings text</li><li>Core: Added new <code>acf/translate_field_group</code> filter to translate field group settings text</li><li>Core: Removed <code>l10n_field</code> and <code>l10n_field_group</code> settings</li><li>Core: Fixed bug causing <code>acf/input/admin_head</code> action to run twice</li><li>Core: Added support for new WP 4.5 term edit page</li><li>Core: Moved google map and wysiwyg JS initialisation later in the page load to help speed up edit screens</li><li>Core: Minor fixes and improvements</li></ul>\n";s:14:"upgrade_notice";s:565:"<h4> 5.2.7 </h4>\n<ul><li>Field class names have changed slightly in v5.2.7 from `field_type-{$type}` to `acf-field-{$type}`. This change was introduced to better optimise JS performance. The previous class names can be added back in with the following filter: <a href="https://http://www.advancedcustomfields.com/resources/acfcompatibility/">http://www.advancedcustomfields.com/resources/acfcompatibility/</a></li></ul>\n<h4> 3.0.0 </h4>\n<ul><li>Editor is broken in WordPress 3.3</li></ul>\n<h4> 2.1.4 </h4>\n<ul><li>Adds post_id column back into acf_values</li></ul>\n";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 1, '_wp_trash_meta_status', 'publish'),
(3, 1, '_wp_trash_meta_time', '1470661714'),
(4, 1, '_wp_desired_post_slug', 'hello-world'),
(5, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(6, 2, '_wp_trash_meta_status', 'publish'),
(7, 2, '_wp_trash_meta_time', '1470661879'),
(8, 2, '_wp_desired_post_slug', 'sample-page'),
(9, 5, '_edit_last', '1'),
(10, 5, '_edit_lock', '1470773030:1'),
(11, 5, '_wp_page_template', 'default'),
(12, 7, '_edit_last', '1'),
(13, 7, '_wp_page_template', 'default'),
(14, 7, '_edit_lock', '1470772971:1'),
(15, 9, '_edit_last', '1'),
(16, 9, '_edit_lock', '1470662229:1'),
(17, 9, '_wp_page_template', 'default'),
(18, 11, '_edit_last', '1'),
(19, 11, '_wp_page_template', 'default'),
(20, 11, '_edit_lock', '1470662269:1'),
(21, 13, '_menu_item_type', 'post_type'),
(22, 13, '_menu_item_menu_item_parent', '0'),
(23, 13, '_menu_item_object_id', '5'),
(24, 13, '_menu_item_object', 'page'),
(25, 13, '_menu_item_target', ''),
(26, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(27, 13, '_menu_item_xfn', ''),
(28, 13, '_menu_item_url', ''),
(60, 17, '_menu_item_object', 'page'),
(30, 14, '_menu_item_type', 'post_type'),
(31, 14, '_menu_item_menu_item_parent', '0'),
(32, 14, '_menu_item_object_id', '7'),
(33, 14, '_menu_item_object', 'page'),
(34, 14, '_menu_item_target', ''),
(35, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(36, 14, '_menu_item_xfn', ''),
(37, 14, '_menu_item_url', ''),
(59, 17, '_menu_item_object_id', '5'),
(39, 15, '_menu_item_type', 'post_type'),
(40, 15, '_menu_item_menu_item_parent', '0'),
(41, 15, '_menu_item_object_id', '9'),
(42, 15, '_menu_item_object', 'page'),
(43, 15, '_menu_item_target', ''),
(44, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(45, 15, '_menu_item_xfn', ''),
(46, 15, '_menu_item_url', ''),
(58, 17, '_menu_item_menu_item_parent', '0'),
(48, 16, '_menu_item_type', 'post_type'),
(49, 16, '_menu_item_menu_item_parent', '0'),
(50, 16, '_menu_item_object_id', '11'),
(51, 16, '_menu_item_object', 'page'),
(52, 16, '_menu_item_target', ''),
(53, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(54, 16, '_menu_item_xfn', ''),
(55, 16, '_menu_item_url', ''),
(57, 17, '_menu_item_type', 'post_type'),
(61, 17, '_menu_item_target', ''),
(62, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(63, 17, '_menu_item_xfn', ''),
(64, 17, '_menu_item_url', ''),
(93, 17, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(66, 18, '_menu_item_type', 'post_type'),
(67, 18, '_menu_item_menu_item_parent', '0'),
(68, 18, '_menu_item_object_id', '7'),
(69, 18, '_menu_item_object', 'page'),
(70, 18, '_menu_item_target', ''),
(71, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(72, 18, '_menu_item_xfn', ''),
(73, 18, '_menu_item_url', ''),
(94, 18, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(75, 19, '_menu_item_type', 'post_type'),
(76, 19, '_menu_item_menu_item_parent', '0'),
(77, 19, '_menu_item_object_id', '9'),
(78, 19, '_menu_item_object', 'page'),
(79, 19, '_menu_item_target', ''),
(80, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(81, 19, '_menu_item_xfn', ''),
(82, 19, '_menu_item_url', ''),
(95, 19, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(84, 20, '_menu_item_type', 'post_type'),
(85, 20, '_menu_item_menu_item_parent', '0'),
(86, 20, '_menu_item_object_id', '11'),
(87, 20, '_menu_item_object', 'page'),
(88, 20, '_menu_item_target', ''),
(89, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(90, 20, '_menu_item_xfn', ''),
(91, 20, '_menu_item_url', ''),
(96, 20, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(97, 22, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(98, 22, '_edit_last', '1'),
(99, 23, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(100, 24, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(101, 22, '_edit_lock', '1470763283:1'),
(102, 25, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(103, 26, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(104, 27, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(105, 28, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(106, 7, 'dropdown_menu_image', ''),
(107, 7, '_dropdown_menu_image', 'field_56bcbf1a4042f'),
(108, 7, 'dropdown_menu_icon', ''),
(109, 7, '_dropdown_menu_icon', 'field_dropdown_menu_icon'),
(110, 7, 'dropdown_menu_description', ''),
(111, 7, '_dropdown_menu_description', 'field_56bcbf3240430'),
(112, 7, '_wpb_vc_js_status', 'false'),
(113, 7, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-08-04 16:13:11', '2016-08-04 20:13:11', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2016-08-08 09:08:34', '2016-08-08 13:08:34', '', 0, 'http://localhost/dev/mylittlepeanut.ca/src/?p=1', 0, 'post', '', 1),
(2, 1, '2016-08-04 16:13:11', '2016-08-04 20:13:11', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Montreal, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/dev/mylittlepeanut.ca/src/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2016-08-08 09:11:19', '2016-08-08 13:11:19', '', 0, 'http://localhost/dev/mylittlepeanut.ca/src/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-08-08 09:08:34', '2016-08-08 13:08:34', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-08-08 09:08:34', '2016-08-08 13:08:34', '', 1, 'http://localhost/dev/mylittlepeanut.ca/src/2016/08/08/1-revision-v1/', 0, 'revision', '', 0),
(4, 1, '2016-08-08 09:11:19', '2016-08-08 13:11:19', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Montreal, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/dev/mylittlepeanut.ca/src/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-08-08 09:11:19', '2016-08-08 13:11:19', '', 2, 'http://localhost/dev/mylittlepeanut.ca/src/2016/08/08/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2016-08-08 09:15:24', '2016-08-08 13:15:24', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-08-08 09:15:24', '2016-08-08 13:15:24', '', 0, 'http://localhost/dev/mylittlepeanut.ca/src/?page_id=5', 0, 'page', '', 0),
(6, 1, '2016-08-08 09:15:24', '2016-08-08 13:15:24', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-08-08 09:15:24', '2016-08-08 13:15:24', '', 5, 'http://localhost/dev/mylittlepeanut.ca/src/2016/08/08/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2016-08-08 09:16:43', '2016-08-08 13:16:43', '', 'Products', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2016-08-09 16:02:40', '2016-08-09 20:02:40', '', 0, 'http://localhost/dev/mylittlepeanut.ca/src/?page_id=7', 0, 'page', '', 0),
(8, 1, '2016-08-08 09:16:43', '2016-08-08 13:16:43', '', 'Products', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-08-08 09:16:43', '2016-08-08 13:16:43', '', 7, 'http://localhost/dev/mylittlepeanut.ca/src/2016/08/08/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2016-08-08 09:18:42', '2016-08-08 13:18:42', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2016-08-08 09:18:42', '2016-08-08 13:18:42', '', 0, 'http://localhost/dev/mylittlepeanut.ca/src/?page_id=9', 0, 'page', '', 0),
(10, 1, '2016-08-08 09:18:42', '2016-08-08 13:18:42', '', 'About', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-08-08 09:18:42', '2016-08-08 13:18:42', '', 9, 'http://localhost/dev/mylittlepeanut.ca/src/2016/08/08/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2016-08-08 09:19:48', '2016-08-08 13:19:48', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2016-08-08 09:19:48', '2016-08-08 13:19:48', '', 0, 'http://localhost/dev/mylittlepeanut.ca/src/?page_id=11', 0, 'page', '', 0),
(12, 1, '2016-08-08 09:19:48', '2016-08-08 13:19:48', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-08-08 09:19:48', '2016-08-08 13:19:48', '', 11, 'http://localhost/dev/mylittlepeanut.ca/src/2016/08/08/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-08-08 09:21:47', '2016-08-08 13:21:47', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2016-08-08 09:21:47', '2016-08-08 13:21:47', '', 0, 'http://localhost/dev/mylittlepeanut.ca/src/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2016-08-08 09:21:47', '2016-08-08 13:21:47', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2016-08-08 09:21:47', '2016-08-08 13:21:47', '', 0, 'http://localhost/dev/mylittlepeanut.ca/src/?p=14', 2, 'nav_menu_item', '', 0),
(15, 1, '2016-08-08 09:21:48', '2016-08-08 13:21:48', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2016-08-08 09:21:48', '2016-08-08 13:21:48', '', 0, 'http://localhost/dev/mylittlepeanut.ca/src/?p=15', 3, 'nav_menu_item', '', 0),
(16, 1, '2016-08-08 09:21:48', '2016-08-08 13:21:48', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2016-08-08 09:21:48', '2016-08-08 13:21:48', '', 0, 'http://localhost/dev/mylittlepeanut.ca/src/?p=16', 4, 'nav_menu_item', '', 0),
(17, 1, '2016-08-08 12:06:48', '2016-08-08 16:06:48', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2016-08-08 12:06:48', '2016-08-08 16:06:48', '', 0, 'http://localhost/dev/mylittlepeanut.ca/src/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2016-08-08 12:06:48', '2016-08-08 16:06:48', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2016-08-08 12:06:48', '2016-08-08 16:06:48', '', 0, 'http://localhost/dev/mylittlepeanut.ca/src/?p=18', 2, 'nav_menu_item', '', 0),
(19, 1, '2016-08-08 12:06:48', '2016-08-08 16:06:48', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2016-08-08 12:06:48', '2016-08-08 16:06:48', '', 0, 'http://localhost/dev/mylittlepeanut.ca/src/?p=19', 3, 'nav_menu_item', '', 0),
(20, 1, '2016-08-08 12:06:48', '2016-08-08 16:06:48', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2016-08-08 12:06:48', '2016-08-08 16:06:48', '', 0, 'http://localhost/dev/mylittlepeanut.ca/src/?p=20', 4, 'nav_menu_item', '', 0),
(21, 1, '2016-08-09 09:08:51', '2016-08-09 13:08:51', '[vc_row][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2016-08-09 09:08:51', '2016-08-09 13:08:51', '', 5, 'http://localhost/dev/mylittlepeanut.ca/src/2016/08/09/5-autosave-v1/', 0, 'revision', '', 0),
(22, 1, '2016-08-09 13:16:08', '2016-08-09 17:16:08', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:18:"acf-options-footer";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Social Media Content', 'social-media-content', 'publish', 'closed', 'closed', '', 'group_57aa053b746eb', '', '', '2016-08-09 13:22:46', '2016-08-09 17:22:46', '', 0, 'http://localhost/dev/mylittlepeanut.ca/src/?post_type=acf-field-group&#038;p=22', 0, 'acf-field-group', '', 0),
(23, 1, '2016-08-09 13:16:08', '2016-08-09 17:16:08', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Facebook Icon', 'facebook_icon', 'publish', 'closed', 'closed', '', 'field_57aa059e454e1', '', '', '2016-08-09 13:22:44', '2016-08-09 17:22:44', '', 22, 'http://localhost/dev/mylittlepeanut.ca/src/?post_type=acf-field&#038;p=23', 0, 'acf-field', '', 0),
(24, 1, '2016-08-09 13:16:09', '2016-08-09 17:16:09', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Facebook Link', 'facebook_link', 'publish', 'closed', 'closed', '', 'field_57aa0f87454e2', '', '', '2016-08-09 13:22:45', '2016-08-09 17:22:45', '', 22, 'http://localhost/dev/mylittlepeanut.ca/src/?post_type=acf-field&#038;p=24', 1, 'acf-field', '', 0),
(25, 1, '2016-08-09 13:22:45', '2016-08-09 17:22:45', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Twitter Icon', 'twitter_icon', 'publish', 'closed', 'closed', '', 'field_57aa10e68c6f3', '', '', '2016-08-09 13:22:45', '2016-08-09 17:22:45', '', 22, 'http://localhost/dev/mylittlepeanut.ca/src/?post_type=acf-field&p=25', 2, 'acf-field', '', 0),
(26, 1, '2016-08-09 13:22:45', '2016-08-09 17:22:45', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Twitter Link', 'twitter_link', 'publish', 'closed', 'closed', '', 'field_57aa11068c6f4', '', '', '2016-08-09 13:22:45', '2016-08-09 17:22:45', '', 22, 'http://localhost/dev/mylittlepeanut.ca/src/?post_type=acf-field&p=26', 3, 'acf-field', '', 0),
(27, 1, '2016-08-09 13:22:45', '2016-08-09 17:22:45', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Pinterest Icon', 'pinterest_icon', 'publish', 'closed', 'closed', '', 'field_57aa11148c6f5', '', '', '2016-08-09 13:22:45', '2016-08-09 17:22:45', '', 22, 'http://localhost/dev/mylittlepeanut.ca/src/?post_type=acf-field&p=27', 4, 'acf-field', '', 0),
(28, 1, '2016-08-09 13:22:46', '2016-08-09 17:22:46', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Pinterest Link', 'pinterest_link', 'publish', 'closed', 'closed', '', 'field_57aa11208c6f6', '', '', '2016-08-09 13:22:46', '2016-08-09 17:22:46', '', 22, 'http://localhost/dev/mylittlepeanut.ca/src/?post_type=acf-field&p=28', 5, 'acf-field', '', 0),
(29, 1, '2016-08-09 15:57:03', '2016-08-09 19:57:03', 'sdfsdfds', 'Products', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2016-08-09 15:57:03', '2016-08-09 19:57:03', '', 7, 'http://localhost/dev/mylittlepeanut.ca/src/2016/08/09/7-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorized', 0),
(2, 'MainMenu', 'mainmenu', 0),
(3, 'FooterMenu', 'footermenu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 2, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 3, 0),
(18, 3, 0),
(19, 3, 0),
(20, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'tbkadmin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"09cecafa738497d48c6711b69e010e995d912949bcb2f66982fffc8e6bc1fdfe";a:4:{s:10:"expiration";i:1470834325;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.82 Safari/537.36";s:5:"login";i:1470661525;}s:64:"47fd1c6924fd6195417e998b377649127f298329558047edb101be1c4eac55e2";a:4:{s:10:"expiration";i:1470920170;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.82 Safari/537.36";s:5:"login";i:1470747370;}}'),
(15, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(16, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(17, 1, 'nav_menu_recently_edited', '3'),
(18, 1, 'wp_user-settings', 'editor=tinymce&mfold=o'),
(19, 1, 'wp_user-settings-time', '1470758943'),
(20, 1, 'closedpostboxes_page', 'a:1:{i:0;s:23:"acf-group_56bcbf0f33037";}'),
(21, 1, 'metaboxhidden_page', 'a:10:{i:0;s:19:"wpb_visual_composer";i:1;s:33:"acf-group_acf_contact-information";i:2;s:31:"acf-group_contact_form_settings";i:3;s:26:"acf-group_acf_site-options";i:4;s:23:"acf-group_57aa053b746eb";i:5;s:10:"postcustom";i:6;s:16:"commentstatusdiv";i:7;s:11:"commentsdiv";i:8;s:7:"slugdiv";i:9;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'tbkadmin', '$P$BN3ZKUw7jdI5tCW2R1H59Cj6/tYqTt.', 'tbkadmin', 'jason.pemmy@gmail.com', '', '2016-08-04 20:13:11', '', 0, 'tbkadmin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
