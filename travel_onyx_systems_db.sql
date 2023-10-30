-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 30 2023 г., 12:48
-- Версия сервера: 8.0.24
-- Версия PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `travel_onyx_systems_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `os_commentmeta`
--

CREATE TABLE `os_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `os_comments`
--

CREATE TABLE `os_comments` (
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
-- Дамп данных таблицы `os_comments`
--

INSERT INTO `os_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-10-26 11:37:20', '2023-10-26 11:37:20', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0),
(2, 46, 'ruslan', 'ruslantoloshnyi@gmail.com', 'http://travel-onyx-systems', '127.0.0.1', '2023-10-26 15:44:42', '2023-10-26 15:44:42', 'comment', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 OPR/103.0.0.0', 'comment', 0, 1),
(3, 49, 'ruslan', 'ruslantoloshnyi@gmail.com', 'http://travel-onyx-systems', '127.0.0.1', '2023-10-26 16:07:03', '2023-10-26 16:07:03', 'comment2', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 OPR/103.0.0.0', 'comment', 0, 1),
(4, 42, 'ruslan', 'ruslantoloshnyi@gmail.com', 'http://travel-onyx-systems', '127.0.0.1', '2023-10-26 16:07:38', '2023-10-26 16:07:38', 'comment3', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 OPR/103.0.0.0', 'comment', 0, 1),
(5, 105, 'ruslan', 'ruslantoloshnyi@gmail.com', 'http://travel-onyx-systems', '127.0.0.1', '2023-10-27 12:11:30', '2023-10-27 12:11:30', 'coomment', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 OPR/103.0.0.0', 'comment', 0, 1),
(6, 125, 'ruslan', 'ruslantoloshnyi@gmail.com', 'http://travel-onyx-systems', '127.0.0.1', '2023-10-27 13:59:32', '2023-10-27 13:59:32', 'comment', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 OPR/103.0.0.0', 'comment', 0, 1),
(7, 105, 'ruslan', 'ruslantoloshnyi@gmail.com', '', '127.0.0.1', '2023-10-28 13:18:28', '2023-10-28 13:18:28', 'comm', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 OPR/103.0.0.0', 'comment', 0, 1),
(8, 99, 'ruslan', 'ruslantoloshnyi@gmail.com', '', '127.0.0.1', '2023-10-28 14:30:12', '2023-10-28 14:30:12', 'comment', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 OPR/103.0.0.0', 'comment', 0, 1),
(9, 99, 'ruslan', 'ruslantoloshnyi@gmail.com', '', '127.0.0.1', '2023-10-28 14:30:23', '2023-10-28 14:30:23', 'comment2', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 OPR/103.0.0.0', 'comment', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `os_links`
--

CREATE TABLE `os_links` (
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
-- Структура таблицы `os_options`
--

CREATE TABLE `os_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `os_options`
--

INSERT INTO `os_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://travel-onyx-systems', 'yes'),
(2, 'home', 'http://travel-onyx-systems', 'yes'),
(3, 'blogname', 'Travel onyx systems', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ruslantoloshnyi@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:163:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:38:\"wpdiscuzsubscription/([a-z0-9-]+)[/]?$\";s:42:\"index.php?wpdiscuzsubscription=$matches[1]\";s:11:\"dest-cpt/?$\";s:28:\"index.php?post_type=dest-cpt\";s:41:\"dest-cpt/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=dest-cpt&feed=$matches[1]\";s:36:\"dest-cpt/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=dest-cpt&feed=$matches[1]\";s:28:\"dest-cpt/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=dest-cpt&paged=$matches[1]\";s:11:\"tips-cpt/?$\";s:28:\"index.php?post_type=tips-cpt\";s:41:\"tips-cpt/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=tips-cpt&feed=$matches[1]\";s:36:\"tips-cpt/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=tips-cpt&feed=$matches[1]\";s:28:\"tips-cpt/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=tips-cpt&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:41:\"wpdiscuz_form/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"wpdiscuz_form/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"wpdiscuz_form/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"wpdiscuz_form/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"wpdiscuz_form/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"wpdiscuz_form/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"wpdiscuz_form/([^/]+)/embed/?$\";s:46:\"index.php?wpdiscuz_form=$matches[1]&embed=true\";s:34:\"wpdiscuz_form/([^/]+)/trackback/?$\";s:40:\"index.php?wpdiscuz_form=$matches[1]&tb=1\";s:42:\"wpdiscuz_form/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?wpdiscuz_form=$matches[1]&paged=$matches[2]\";s:49:\"wpdiscuz_form/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?wpdiscuz_form=$matches[1]&cpage=$matches[2]\";s:38:\"wpdiscuz_form/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?wpdiscuz_form=$matches[1]&page=$matches[2]\";s:30:\"wpdiscuz_form/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"wpdiscuz_form/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"wpdiscuz_form/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"wpdiscuz_form/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"wpdiscuz_form/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"wpdiscuz_form/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"dest-cpt/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"dest-cpt/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"dest-cpt/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"dest-cpt/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"dest-cpt/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"dest-cpt/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"dest-cpt/([^/]+)/embed/?$\";s:41:\"index.php?dest-cpt=$matches[1]&embed=true\";s:29:\"dest-cpt/([^/]+)/trackback/?$\";s:35:\"index.php?dest-cpt=$matches[1]&tb=1\";s:49:\"dest-cpt/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?dest-cpt=$matches[1]&feed=$matches[2]\";s:44:\"dest-cpt/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?dest-cpt=$matches[1]&feed=$matches[2]\";s:37:\"dest-cpt/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?dest-cpt=$matches[1]&paged=$matches[2]\";s:44:\"dest-cpt/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?dest-cpt=$matches[1]&cpage=$matches[2]\";s:33:\"dest-cpt/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?dest-cpt=$matches[1]&page=$matches[2]\";s:25:\"dest-cpt/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"dest-cpt/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"dest-cpt/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"dest-cpt/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"dest-cpt/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"dest-cpt/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"tips-cpt/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"tips-cpt/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"tips-cpt/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"tips-cpt/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"tips-cpt/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"tips-cpt/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"tips-cpt/([^/]+)/embed/?$\";s:41:\"index.php?tips-cpt=$matches[1]&embed=true\";s:29:\"tips-cpt/([^/]+)/trackback/?$\";s:35:\"index.php?tips-cpt=$matches[1]&tb=1\";s:49:\"tips-cpt/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?tips-cpt=$matches[1]&feed=$matches[2]\";s:44:\"tips-cpt/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?tips-cpt=$matches[1]&feed=$matches[2]\";s:37:\"tips-cpt/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?tips-cpt=$matches[1]&paged=$matches[2]\";s:44:\"tips-cpt/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?tips-cpt=$matches[1]&cpage=$matches[2]\";s:33:\"tips-cpt/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?tips-cpt=$matches[1]&page=$matches[2]\";s:25:\"tips-cpt/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"tips-cpt/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"tips-cpt/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"tips-cpt/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"tips-cpt/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"tips-cpt/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:46:\"local/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?local=$matches[1]&feed=$matches[2]\";s:41:\"local/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?local=$matches[1]&feed=$matches[2]\";s:22:\"local/([^/]+)/embed/?$\";s:38:\"index.php?local=$matches[1]&embed=true\";s:34:\"local/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?local=$matches[1]&paged=$matches[2]\";s:16:\"local/([^/]+)/?$\";s:27:\"index.php?local=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=19&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:31:\"query-monitor/query-monitor.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:3;s:33:\"classic-editor/classic-editor.php\";i:4;s:36:\"contact-form-7/wp-contact-form-7.php\";i:5;s:31:\"what-the-file/what-the-file.php\";i:6;s:31:\"wpdiscuz/class.WpdiscuzCore.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'tos', 'yes'),
(41, 'stylesheet', 'tos', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '19', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1713872240', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '55853', 'yes'),
(100, 'os_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:73:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"read_wpdiscuz_form\";b:1;s:19:\"read_wpdiscuz_forms\";b:1;s:18:\"edit_wpdiscuz_form\";b:1;s:19:\"edit_wpdiscuz_forms\";b:1;s:26:\"edit_others_wpdiscuz_forms\";b:1;s:29:\"edit_published_wpdiscuz_forms\";b:1;s:22:\"publish_wpdiscuz_forms\";b:1;s:20:\"delete_wpdiscuz_form\";b:1;s:21:\"delete_wpdiscuz_forms\";b:1;s:28:\"delete_others_wpdiscuz_forms\";b:1;s:29:\"delete_private_wpdiscuz_forms\";b:1;s:31:\"delete_published_wpdiscuz_forms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:23:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}i:7;a:1:{s:7:\"content\";s:217:\"<!-- wp:paragraph -->\n<p>We are location independent bloggers, digital influencers, small group tour organizers and world travelers with a serious passion for the sun, the sea and adventure.</p>\n<!-- /wp:paragraph -->\";}i:8;a:1:{s:7:\"content\";s:126:\"<!-- wp:paragraph -->\n<p>Eight years and 60-something countries later and we are still on the road.</p>\n<!-- /wp:paragraph -->\";}i:9;a:1:{s:7:\"content\";s:102:\"<!-- wp:paragraph -->\n<p>Add: 221B John hope Street, Lekki, Lagos, Nigeria.</p>\n<!-- /wp:paragraph -->\";}i:10;a:1:{s:7:\"content\";s:72:\"<!-- wp:paragraph -->\n<p>T: +234 706 507 8544</p>\n<!-- /wp:paragraph -->\";}i:11;a:1:{s:7:\"content\";s:76:\"<!-- wp:paragraph -->\n<p>E: info@redexplorers.com</p>\n<!-- /wp:paragraph -->\";}i:13;a:1:{s:7:\"content\";s:80:\"<!-- wp:paragraph -->\n<p>Add: 221B John hope Street, </p>\n<!-- /wp:paragraph -->\";}i:16;a:1:{s:7:\"content\";s:76:\"<!-- wp:paragraph -->\n<p>W: www. redexplorers.com</p>\n<!-- /wp:paragraph -->\";}i:17;a:1:{s:7:\"content\";s:59:\"<!-- wp:paragraph -->\n<p>My List</p>\n<!-- /wp:paragraph -->\";}i:18;a:1:{s:7:\"content\";s:63:\"<!-- wp:paragraph -->\n<p>My Requests</p>\n<!-- /wp:paragraph -->\";}i:19;a:1:{s:7:\"content\";s:62:\"<!-- wp:paragraph -->\n<p>My Credits</p>\n<!-- /wp:paragraph -->\";}i:20;a:1:{s:7:\"content\";s:59:\"<!-- wp:paragraph -->\n<p>My Info</p>\n<!-- /wp:paragraph -->\";}i:21;a:1:{s:7:\"content\";s:59:\"<!-- wp:paragraph -->\n<p>Contact</p>\n<!-- /wp:paragraph -->\";}i:22;a:1:{s:7:\"content\";s:58:\"<!-- wp:paragraph -->\n<p>Travel</p>\n<!-- /wp:paragraph -->\";}i:23;a:1:{s:7:\"content\";s:62:\"<!-- wp:paragraph -->\n<p>Why Travel</p>\n<!-- /wp:paragraph -->\";}i:24;a:1:{s:7:\"content\";s:69:\"<!-- wp:paragraph -->\n<p>Become a Traveler</p>\n<!-- /wp:paragraph -->\";}i:25;a:1:{s:7:\"content\";s:65:\"<!-- wp:paragraph -->\n<p>How Its Works</p>\n<!-- /wp:paragraph -->\";}i:26;a:1:{s:7:\"content\";s:66:\"<!-- wp:paragraph -->\n<p>Traveling FAQs</p>\n<!-- /wp:paragraph -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:8:\"block-17\";i:1;s:8:\"block-13\";}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:20:\"footer-content-first\";a:2:{i:0;s:7:\"block-7\";i:1;s:7:\"block-8\";}s:21:\"footer-content-second\";a:4:{i:0;s:7:\"block-9\";i:1;s:8:\"block-10\";i:2;s:8:\"block-11\";i:3;s:8:\"block-16\";}s:20:\"footer-content-third\";a:4:{i:0;s:8:\"block-18\";i:1;s:8:\"block-19\";i:2;s:8:\"block-20\";i:3;s:8:\"block-21\";}s:21:\"footer-content-fourth\";a:5:{i:0;s:8:\"block-22\";i:1;s:8:\"block-23\";i:2;s:8:\"block-24\";i:3;s:8:\"block-25\";i:4;s:8:\"block-26\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:9:{i:1698662243;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1698665843;a:5:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1698665863;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1698665867;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1698671526;a:1:{s:33:\"wpdiscuz_delete_unattached_images\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:43:\"wpdiscuz_delete_unattached_images_every_48h\";s:4:\"args\";a:0:{}s:8:\"interval\";i:172800;}}}i:1698676594;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1698925110;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1699011443;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `os_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(120, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.3.2\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}', 'yes'),
(121, 'nonce_key', 'Ia9Q1Ijy:E?^Z<$9:j:ff^r(M(#C/1q%oAi0u]TvA&.uwdA;)?z M1BW1cfA:90_', 'no'),
(122, 'nonce_salt', 'MsQ[h.rwQW&Q_)06QnRP83hwn,JM*I))*1m2_(*$DjL`bj1dO[}jyPV!RhBk;Ap6', 'no'),
(124, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1698320639;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(125, 'recovery_keys', 'a:0:{}', 'yes'),
(126, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(127, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.3.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.2\";s:7:\"version\";s:5:\"6.3.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1698659296;s:15:\"version_checked\";s:5:\"6.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(132, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1698659298;s:7:\"checked\";a:1:{s:3:\"tos\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(133, 'auth_key', '2YUhk{_=>c|h>5xu,wkOLQfv}h-C5IS/izaNWK7TiCr;2IDDVi8~DsU{`Yh9LuKe', 'no'),
(134, 'auth_salt', '$f~*/ 5; VJL:3pqAct4S)#!6Nvgg|~OxR5f0Z<,?HvdN#<sd4:7R/86!9R;u$JY', 'no'),
(135, 'logged_in_key', '-6=~oO)(LZGt`wBB+5Ti)S5%o6pJo04|<^T[6Wt5EslhdN,-vM?6rpH^ELC&: 8R', 'no'),
(136, 'logged_in_salt', '%ib,hX;+.qI5V+T%s]_PJQgT!G41)-dx]K<Cd3QsrW=N3Nmc[#Dse)0bRBZyjMw_', 'no'),
(137, '_site_transient_timeout_browser_f732fc5564f430b726d151fd7a4feb2f', '1698925064', 'no'),
(138, '_site_transient_browser_f732fc5564f430b726d151fd7a4feb2f', 'a:10:{s:4:\"name\";s:5:\"Opera\";s:7:\"version\";s:9:\"103.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:22:\"https://www.opera.com/\";s:7:\"img_src\";s:42:\"http://s.w.org/images/browsers/opera.png?1\";s:11:\"img_src_ssl\";s:43:\"https://s.w.org/images/browsers/opera.png?1\";s:15:\"current_version\";s:5:\"12.18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(139, '_site_transient_timeout_php_check_d564ef3bc004ad591bb7443752129422', '1698925066', 'no'),
(140, '_site_transient_php_check_d564ef3bc004ad591bb7443752129422', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(154, 'can_compress_scripts', '1', 'yes'),
(160, 'whatthefile-install-date', '2023-10-26', 'no'),
(161, 'recently_activated', 'a:0:{}', 'yes'),
(163, 'finished_updating_comment_type', '1', 'yes'),
(166, 'current_theme', 'Travel onyx systems', 'yes'),
(167, 'theme_mods_tos', 'a:15:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"menu-1\";i:2;s:11:\"footer-menu\";i:16;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:6;s:16:\"header_textcolor\";s:5:\"blank\";s:20:\"tos_custom_head_code\";s:63:\"THE COUNTER: <span>70</span> Countries <span>1036</span> Cities\";s:23:\"tos_custom_subhead_code\";s:37:\"Leave your mark on all over the world\";s:22:\"tos_custom_button_code\";s:9:\"Read More\";s:22:\"tos_custom_bottom_code\";s:23:\"Scroll Down to Continue\";s:16:\"tos_custom_image\";s:70:\"http://travel-onyx-systems/wp-content/uploads/2023/10/header-arrow.png\";s:23:\"tos_custom_footer_image\";s:75:\"http://travel-onyx-systems/wp-content/uploads/2023/10/footer-bottom-img.png\";s:30:\"tos_custom_social_footer_image\";s:64:\"http://travel-onyx-systems/wp-content/uploads/2023/10/social.png\";s:16:\"footer_copyright\";s:70:\"© 2021 RedExplorers. All rights reserved | Terms | Privacy | Site Map\";s:18:\"footer_social_link\";s:26:\"https://www.instagram.com/\";s:22:\"tos_custom_button_link\";s:39:\"http://travel-onyx-systems/destination/\";}', 'yes'),
(168, 'theme_switched', '', 'yes'),
(174, 'site_logo', '6', 'yes'),
(175, 'recovery_mode_email_last_sent', '1698325093', 'yes'),
(187, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(190, 'acf_version', '6.1.6', 'yes'),
(199, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(250, 'options_banner_image', '85', 'no'),
(251, '_options_banner_image', 'field_653b9e71f9dd5', 'no'),
(252, 'options_banner_text', '<span>Want Me</span> to Purchase Something For You That isn’t available in your Country?', 'no'),
(253, '_options_banner_text', 'field_653b9eaef9dd6', 'no'),
(254, 'options_banner_button_value', 'Place Order', 'no'),
(255, '_options_banner_button_value', 'field_653b9ec5f9dd7', 'no'),
(256, 'options_banner_button_link', 'https://ru.wikipedia.org/', 'no'),
(257, '_options_banner_button_link', 'field_653b9ee9f9dd8', 'no'),
(261, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":5,\"critical\":1}', 'yes'),
(270, 'location_children', 'a:0:{}', 'yes'),
(297, 'options_instagram_repeater_0_instagram_repeater_image', '159', 'no'),
(298, '_options_instagram_repeater_0_instagram_repeater_image', 'field_653cb3bb47080', 'no'),
(299, 'options_instagram_repeater_1_instagram_repeater_image', '157', 'no'),
(300, '_options_instagram_repeater_1_instagram_repeater_image', 'field_653cb3bb47080', 'no'),
(301, 'options_instagram_repeater_2_instagram_repeater_image', '159', 'no'),
(302, '_options_instagram_repeater_2_instagram_repeater_image', 'field_653cb3bb47080', 'no'),
(303, 'options_instagram_repeater_3_instagram_repeater_image', '157', 'no'),
(304, '_options_instagram_repeater_3_instagram_repeater_image', 'field_653cb3bb47080', 'no'),
(305, 'options_instagram_repeater_4_instagram_repeater_image', '159', 'no'),
(306, '_options_instagram_repeater_4_instagram_repeater_image', 'field_653cb3bb47080', 'no'),
(307, 'options_instagram_repeater_5_instagram_repeater_image', '157', 'no'),
(308, '_options_instagram_repeater_5_instagram_repeater_image', 'field_653cb3bb47080', 'no'),
(309, 'options_instagram_repeater_6_instagram_repeater_image', '159', 'no'),
(310, '_options_instagram_repeater_6_instagram_repeater_image', 'field_653cb3bb47080', 'no'),
(311, 'options_instagram_repeater_7_instagram_repeater_image', '157', 'no'),
(312, '_options_instagram_repeater_7_instagram_repeater_image', 'field_653cb3bb47080', 'no'),
(313, 'options_instagram_repeater', '8', 'no'),
(314, '_options_instagram_repeater', 'field_653cb37a4707f', 'no'),
(315, 'options_instagram_button_value', 'Follow @ instagram', 'no'),
(316, '_options_instagram_button_value', 'field_653cb4b8ec223', 'no'),
(317, 'options_instagram_button_link', 'https://www.instagram.com/', 'no'),
(318, '_options_instagram_button_link', 'field_653cb4dd4a1cc', 'no'),
(319, 'options_form_text', 'Join <span>98,641</span> Monthly Readers. Subscribe Today!', 'no'),
(320, '_options_form_text', 'field_653cb957423a8', 'no'),
(328, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.8.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1698478735;s:7:\"version\";s:5:\"5.8.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(345, 'wc_plugin_version', '7.6.11', 'yes'),
(346, 'wc_hash_key', '099a981d1e72899a94c733a38ad7dc0e', 'no'),
(347, 'wc_options', 'a:15:{s:4:\"form\";a:18:{s:15:\"commentFormView\";s:9:\"collapsed\";s:19:\"enableDropAnimation\";i:1;s:10:\"richEditor\";s:7:\"desktop\";s:10:\"boldButton\";i:1;s:12:\"italicButton\";i:1;s:15:\"underlineButton\";i:1;s:12:\"strikeButton\";i:1;s:8:\"olButton\";i:1;s:8:\"ulButton\";i:1;s:16:\"blockquoteButton\";i:1;s:15:\"codeblockButton\";i:1;s:10:\"linkButton\";i:1;s:16:\"sourcecodeButton\";i:1;s:13:\"spoilerButton\";i:1;s:15:\"enableQuickTags\";i:0;s:22:\"commenterNameMinLength\";i:3;s:22:\"commenterNameMaxLength\";i:50;s:18:\"storeCommenterData\";i:-1;}s:9:\"recaptcha\";a:8:{s:7:\"siteKey\";s:0:\"\";s:9:\"secretKey\";s:0:\"\";s:5:\"theme\";s:5:\"light\";s:4:\"lang\";s:0:\"\";s:13:\"requestMethod\";s:4:\"auto\";s:13:\"showForGuests\";i:0;s:12:\"showForUsers\";i:0;s:21:\"isShowOnSubscribeForm\";i:0;}s:5:\"login\";a:9:{s:20:\"showLoggedInUsername\";i:1;s:22:\"showLoginLinkForGuests\";i:1;s:15:\"showActivityTab\";i:1;s:20:\"showSubscriptionsTab\";i:1;s:14:\"showFollowsTab\";i:1;s:17:\"enableProfileURLs\";i:1;s:19:\"websiteAsProfileUrl\";i:1;s:13:\"isUserByEmail\";i:0;s:8:\"loginUrl\";s:0:\"\";}s:6:\"social\";a:60:{s:28:\"socialLoginAgreementCheckbox\";i:1;s:26:\"socialLoginInSecondaryForm\";i:0;s:19:\"displaySocialAvatar\";i:1;s:19:\"displayIconOnAvatar\";i:1;s:20:\"rememberLoggedinUser\";i:1;s:13:\"enableFbLogin\";i:0;s:13:\"enableFbShare\";i:0;s:7:\"fbAppID\";s:0:\"\";s:11:\"fbAppSecret\";s:0:\"\";s:11:\"fbUseOAuth2\";i:0;s:18:\"enableTwitterLogin\";i:0;s:18:\"enableTwitterShare\";i:1;s:12:\"twitterAppID\";s:0:\"\";s:16:\"twitterAppSecret\";s:0:\"\";s:17:\"enableGoogleLogin\";i:0;s:14:\"googleClientID\";s:0:\"\";s:18:\"googleClientSecret\";s:0:\"\";s:19:\"enableTelegramLogin\";i:0;s:13:\"telegramToken\";s:0:\"\";s:17:\"enableDisqusLogin\";i:0;s:15:\"disqusPublicKey\";s:0:\"\";s:15:\"disqusSecretKey\";s:0:\"\";s:20:\"enableWordpressLogin\";i:0;s:17:\"wordpressClientID\";s:0:\"\";s:21:\"wordpressClientSecret\";s:0:\"\";s:20:\"enableInstagramLogin\";i:0;s:14:\"instagramAppID\";s:0:\"\";s:18:\"instagramAppSecret\";s:0:\"\";s:19:\"enableLinkedinLogin\";i:0;s:25:\"enableLinkedinLoginOpenID\";i:0;s:16:\"linkedinClientID\";s:0:\"\";s:20:\"linkedinClientSecret\";s:0:\"\";s:19:\"enableWhatsappShare\";i:0;s:17:\"enableYandexLogin\";i:0;s:8:\"yandexID\";s:0:\"\";s:14:\"yandexPassword\";s:0:\"\";s:17:\"enableMailruLogin\";i:0;s:14:\"mailruClientID\";s:0:\"\";s:18:\"mailruClientSecret\";s:0:\"\";s:16:\"enableWeiboLogin\";i:0;s:8:\"weiboKey\";s:0:\"\";s:11:\"weiboSecret\";s:0:\"\";s:17:\"enableWechatLogin\";i:0;s:11:\"wechatAppID\";s:0:\"\";s:12:\"wechatSecret\";s:0:\"\";s:13:\"enableQQLogin\";i:0;s:7:\"qqAppID\";s:0:\"\";s:8:\"qqSecret\";s:0:\"\";s:16:\"enableBaiduLogin\";i:0;s:10:\"baiduAppID\";s:0:\"\";s:11:\"baiduSecret\";s:0:\"\";s:13:\"enableVkLogin\";i:0;s:13:\"enableVkShare\";i:1;s:7:\"vkAppID\";s:0:\"\";s:11:\"vkAppSecret\";s:0:\"\";s:13:\"enableOkLogin\";i:0;s:13:\"enableOkShare\";i:1;s:7:\"okAppID\";s:0:\"\";s:8:\"okAppKey\";s:0:\"\";s:11:\"okAppSecret\";s:0:\"\";}s:6:\"rating\";a:6:{s:22:\"enablePostRatingSchema\";i:0;s:19:\"displayRatingOnPost\";a:1:{i:0;s:19:\"before_comment_form\";}s:23:\"ratingCssOnNoneSingular\";i:0;s:16:\"ratingHoverColor\";s:7:\"#FFED85\";s:19:\"ratingInactiveColor\";s:7:\"#DDDDDD\";s:17:\"ratingActiveColor\";s:7:\"#FFD700\";}s:14:\"thread_display\";a:11:{s:17:\"firstLoadWithAjax\";i:0;s:19:\"commentListLoadType\";i:0;s:24:\"isLoadOnlyParentComments\";i:0;s:23:\"showReactedFilterButton\";i:1;s:23:\"showHottestFilterButton\";i:1;s:18:\"showSortingButtons\";i:1;s:18:\"mostVotedByDefault\";i:0;s:15:\"reverseChildren\";i:0;s:23:\"highlightUnreadComments\";i:0;s:15:\"scrollToComment\";i:1;s:15:\"orderCommentsBy\";s:10:\"comment_ID\";}s:14:\"thread_layouts\";a:12:{s:15:\"showCommentLink\";i:1;s:15:\"showCommentDate\";i:1;s:17:\"showVotingButtons\";i:1;s:17:\"votingButtonsIcon\";s:16:\"fa-plus|fa-minus\";s:18:\"votingButtonsStyle\";i:0;s:19:\"enableDislikeButton\";i:1;s:14:\"isGuestCanVote\";i:1;s:22:\"highlightVotingButtons\";i:1;s:11:\"showAvatars\";i:1;s:23:\"defaultAvatarUrlForUser\";s:0:\"\";s:24:\"defaultAvatarUrlForGuest\";s:0:\"\";s:23:\"changeAvatarsEverywhere\";i:1;}s:13:\"thread_styles\";a:22:{s:5:\"theme\";s:11:\"wpd-default\";s:12:\"primaryColor\";s:7:\"#00B38F\";s:23:\"newLoadedCommentBGColor\";s:7:\"#FFFAD6\";s:18:\"primaryButtonColor\";s:7:\"#FFFFFF\";s:15:\"primaryButtonBG\";s:7:\"#07B290\";s:12:\"bubbleColors\";s:7:\"#1DB99A\";s:20:\"inlineFeedbackColors\";s:7:\"#1DB99A\";s:20:\"defaultCommentAreaBG\";s:0:\"\";s:23:\"defaultCommentTextColor\";s:7:\"#777777\";s:22:\"defaultCommentFieldsBG\";s:0:\"\";s:31:\"defaultCommentFieldsBorderColor\";s:7:\"#DDDDDD\";s:29:\"defaultCommentFieldsTextColor\";s:7:\"#777777\";s:36:\"defaultCommentFieldsPlaceholderColor\";s:0:\"\";s:17:\"darkCommentAreaBG\";s:7:\"#111111\";s:20:\"darkCommentTextColor\";s:7:\"#CCCCCC\";s:19:\"darkCommentFieldsBG\";s:7:\"#999999\";s:28:\"darkCommentFieldsBorderColor\";s:7:\"#D1D1D1\";s:26:\"darkCommentFieldsTextColor\";s:7:\"#000000\";s:33:\"darkCommentFieldsPlaceholderColor\";s:7:\"#DDDDDD\";s:15:\"commentTextSize\";s:4:\"14px\";s:17:\"enableFontAwesome\";i:1;s:9:\"customCss\";s:27:\".comments-area{width:auto;}\";}s:12:\"subscription\";a:27:{s:20:\"enableUserMentioning\";i:1;s:24:\"sendMailToMentionedUsers\";i:1;s:24:\"isNotifyOnCommentApprove\";i:1;s:19:\"enableMemberConfirm\";i:0;s:19:\"enableGuestsConfirm\";i:1;s:16:\"subscriptionType\";i:1;s:17:\"showReplyCheckbox\";i:1;s:21:\"isReplyDefaultChecked\";i:0;s:34:\"usePostmaticForCommentNotification\";i:0;s:14:\"isFollowActive\";i:1;s:28:\"disableFollowConfirmForUsers\";i:1;s:23:\"emailSubjectPostComment\";s:11:\"New Comment\";s:23:\"emailContentPostComment\";s:292:\"Hi [SUBSCRIBER_NAME],<br/><br/> new comment has been posted by the <em><strong>[COMMENT_AUTHOR]</em></strong> on the discussion section you\'ve been interested in<br/><br/><a href=\'[COMMENT_URL]\'>[COMMENT_URL]</a><br/><br/>[COMMENT_CONTENT]<br/><br/><a href=\'[UNSUBSCRIBE_URL]\'>Unsubscribe</a>\";s:27:\"emailSubjectAllCommentReply\";s:27:\"New Reply ( your comments )\";s:27:\"emailContentAllCommentReply\";s:290:\"Hi [SUBSCRIBER_NAME],<br/><br/> new reply has been posted by the <em><strong>[COMMENT_AUTHOR]</em></strong> on the discussion section you\'ve been interested in<br/><br/><a href=\'[COMMENT_URL]\'>[COMMENT_URL]</a><br/><br/>[COMMENT_CONTENT]<br/><br/><a href=\'[UNSUBSCRIBE_URL]\'>Unsubscribe</a>\";s:24:\"emailSubjectCommentReply\";s:35:\"New Reply ( your specific comment )\";s:24:\"emailContentCommentReply\";s:290:\"Hi [SUBSCRIBER_NAME],<br/><br/> new reply has been posted by the <em><strong>[COMMENT_AUTHOR]</em></strong> on the discussion section you\'ve been interested in<br/><br/><a href=\'[COMMENT_URL]\'>[COMMENT_URL]</a><br/><br/>[COMMENT_CONTENT]<br/><br/><a href=\'[UNSUBSCRIBE_URL]\'>Unsubscribe</a>\";s:36:\"emailSubjectSubscriptionConfirmation\";s:25:\"Subscription Confirmation\";s:36:\"emailContentSubscriptionConfirmation\";s:470:\"Hi, <br/> You just subscribed for new comments on our website. This means you will receive an email when new comments are posted according to subscription option you\'ve chosen. <br/> To activate, click confirm below. If you believe this is an error, ignore this message and we\'ll never bother you again. <br/><br/><a href=\'[POST_URL]\'>[POST_TITLE]</a><br/><br/><a href=\'[CONFIRM_URL]\'>Confirm Your Subscription</a><br/><br/><a href=\'[CANCEL_URL]\'>Cancel Subscription</a>\";s:27:\"emailSubjectCommentApproved\";s:25:\"Your comment is approved!\";s:27:\"emailContentCommentApproved\";s:139:\"Hi [COMMENT_AUTHOR],<br/><br/>your comment has been approved.<br/><br/><a href=\"[COMMENT_URL]\">[COMMENT_URL]</a><br/><br/>[COMMENT_CONTENT]\";s:25:\"emailSubjectUserMentioned\";s:34:\"You have been mentioned in comment\";s:25:\"emailContentUserMentioned\";s:181:\"Hi [MENTIONED_USER_NAME]!<br/>You have been mentioned in a comment posted on \"[POST_TITLE]\" post by [COMMENT_AUTHOR].<br/><br/>Comment URL: <a href=\"[COMMENT_URL]\">[COMMENT_URL]</a>\";s:30:\"emailSubjectFollowConfirmation\";s:27:\"User Following Confirmation\";s:30:\"emailContentFollowConfirmation\";s:433:\"Hi, <br/> You just started following a new user. You\'ll get email notification once new comment is posted by this user. <br/> Please click on \"user following confirmation\" link to confirm your request. If you believe this is an error, ignore this message and we\'ll never bother you again. <br/><br/><a href=\"[POST_URL]\">[POST_TITLE]</a><br/><br/><a href=\"[CONFIRM_URL]\">Confirm Follow</a><br/><br/><a href=\"[CANCEL_URL]\">Unfollow</a>\";s:25:\"emailSubjectFollowComment\";s:11:\"New Comment\";s:25:\"emailContentFollowComment\";s:248:\"Hi [FOLLOWER_NAME],<br/><br/> new comment has been posted by the <em><strong>[COMMENT_AUTHOR]</em></strong> you are following<br/><br/><a href=\"[COMMENT_URL]\">[COMMENT_URL]</a><br/><br/>[COMMENT_CONTENT]<br/><br/><a href=\"[CANCEL_URL]\">Unfollow</a>\";}s:6:\"labels\";a:2:{s:14:\"blogRoleLabels\";a:7:{s:13:\"administrator\";i:1;s:6:\"editor\";i:1;s:6:\"author\";i:0;s:11:\"contributor\";i:0;s:10:\"subscriber\";i:0;s:11:\"post_author\";i:1;s:5:\"guest\";i:0;}s:9:\"blogRoles\";a:7:{s:13:\"administrator\";s:7:\"#00B38F\";s:6:\"editor\";s:7:\"#00B38F\";s:6:\"author\";s:7:\"#00B38F\";s:11:\"contributor\";s:7:\"#00B38F\";s:10:\"subscriber\";s:7:\"#00B38F\";s:11:\"post_author\";s:7:\"#00B38F\";s:5:\"guest\";s:7:\"#00B38F\";}}s:10:\"moderation\";a:8:{s:19:\"commentEditableTime\";i:900;s:28:\"enableEditingWhenHaveReplies\";i:0;s:18:\"displayEditingInfo\";i:1;s:17:\"enableStickButton\";i:1;s:17:\"enableCloseButton\";i:1;s:25:\"restrictCommentingPerUser\";s:7:\"disable\";s:22:\"commentRestrictionType\";s:4:\"both\";s:17:\"userCommentsLimit\";i:1;}s:7:\"content\";a:16:{s:20:\"commentTextMinLength\";i:1;s:18:\"replyTextMinLength\";i:1;s:20:\"commentTextMaxLength\";s:0:\"\";s:18:\"replyTextMaxLength\";s:0:\"\";s:21:\"enableImageConversion\";i:1;s:16:\"enableShortcodes\";i:0;s:20:\"commentReadMoreLimit\";i:0;s:12:\"wmuIsEnabled\";i:1;s:17:\"wmuIsGuestAllowed\";i:1;s:13:\"wmuIsLightbox\";i:1;s:12:\"wmuMimeTypes\";a:9:{s:3:\"jpg\";s:10:\"image/jpeg\";s:4:\"jpeg\";s:10:\"image/jpeg\";s:3:\"jpe\";s:10:\"image/jpeg\";s:3:\"gif\";s:9:\"image/gif\";s:3:\"png\";s:9:\"image/png\";s:3:\"bmp\";s:9:\"image/bmp\";s:4:\"tiff\";s:10:\"image/tiff\";s:3:\"tif\";s:10:\"image/tiff\";s:3:\"ico\";s:12:\"image/x-icon\";}s:14:\"wmuMaxFileSize\";i:2;s:23:\"wmuIsShowFilesDashboard\";i:1;s:19:\"wmuSingleImageWidth\";s:4:\"auto\";s:20:\"wmuSingleImageHeight\";i:200;s:13:\"wmuImageSizes\";a:4:{i:0;s:9:\"thumbnail\";i:1;s:6:\"medium\";i:2;s:12:\"medium_large\";i:3;s:5:\"large\";}}s:4:\"live\";a:9:{s:12:\"enableBubble\";i:1;s:16:\"bubbleLiveUpdate\";i:0;s:14:\"bubbleLocation\";s:12:\"content_left\";s:27:\"bubbleShowNewCommentMessage\";i:1;s:17:\"bubbleHintTimeout\";i:45;s:21:\"bubbleHintHideTimeout\";i:10;s:21:\"commentListUpdateType\";i:0;s:16:\"liveUpdateGuests\";i:0;s:22:\"commentListUpdateTimer\";i:60;}s:6:\"inline\";a:2:{s:22:\"showInlineFilterButton\";i:1;s:28:\"inlineFeedbackAttractionType\";s:5:\"blink\";}s:7:\"general\";a:12:{s:14:\"isEnableOnHome\";i:1;s:19:\"isNativeAjaxEnabled\";i:1;s:16:\"loadComboVersion\";i:1;s:14:\"loadMinVersion\";i:1;s:17:\"commentLinkFilter\";i:1;s:12:\"redirectPage\";i:0;s:17:\"simpleCommentDate\";i:0;s:14:\"dateDiffFormat\";s:32:\"[number] [time_unit] [adjective]\";s:9:\"isUsePoMo\";i:0;s:23:\"showPluginPoweredByLink\";i:0;s:14:\"isCacheEnabled\";i:1;s:12:\"cacheTimeout\";i:10;}}', 'yes'),
(348, 'wpdiscuz_form_content_type_rel', 'a:4:{s:4:\"post\";a:1:{s:5:\"en_US\";i:177;}s:10:\"attachment\";a:0:{}s:4:\"page\";a:0:{}s:8:\"dest-cpt\";a:1:{s:5:\"en_US\";i:177;}}', 'yes'),
(349, 'wpdiscuz_show_vote_regenerate_message', '0', 'no'),
(350, 'wpdiscuz_show_closed_regenerate_message', '0', 'no'),
(351, 'wpdiscuz_show_vote_data_regenerate_message', '0', 'no'),
(352, 'wpdiscuz_show_sync_commenters_message', '0', 'no'),
(353, 'wpdiscuz_wizard_completed', '1', 'no'),
(354, 'wpdiscuz_wizard_after_update', '0', 'no'),
(356, 'wpd_admin_notices', 'a:0:{}', 'yes'),
(357, 'wpdiscuz_form_post_rel', 'a:0:{}', 'yes'),
(366, 'local_children', 'a:0:{}', 'yes'),
(370, 'category_children', 'a:1:{i:3;a:1:{i:0;i:6;}}', 'yes'),
(375, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1698659296;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.2.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.4\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20231025\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.79\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.79.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2969581\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2969581\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.8.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.8.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:31:\"query-monitor/query-monitor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/query-monitor\";s:4:\"slug\";s:13:\"query-monitor\";s:6:\"plugin\";s:31:\"query-monitor/query-monitor.php\";s:11:\"new_version\";s:6:\"3.14.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/query-monitor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/query-monitor.3.14.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2870124\";s:3:\"svg\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2870124\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/query-monitor/assets/banner-1544x500.png?rev=2870124\";s:2:\"1x\";s:68:\"https://ps.w.org/query-monitor/assets/banner-772x250.png?rev=2457098\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}s:31:\"what-the-file/what-the-file.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/what-the-file\";s:4:\"slug\";s:13:\"what-the-file\";s:6:\"plugin\";s:31:\"what-the-file/what-the-file.php\";s:11:\"new_version\";s:5:\"1.6.0\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/what-the-file/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/what-the-file.1.6.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/what-the-file/assets/icon-256x256.png?rev=1223609\";s:2:\"1x\";s:66:\"https://ps.w.org/what-the-file/assets/icon-128x128.png?rev=1223609\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/what-the-file/assets/banner-772x250.jpg?rev=685200\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.1\";}s:31:\"wpdiscuz/class.WpdiscuzCore.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:22:\"w.org/plugins/wpdiscuz\";s:4:\"slug\";s:8:\"wpdiscuz\";s:6:\"plugin\";s:31:\"wpdiscuz/class.WpdiscuzCore.php\";s:11:\"new_version\";s:6:\"7.6.11\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/wpdiscuz/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/wpdiscuz.7.6.11.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/wpdiscuz/assets/icon-256x256.png?rev=1076265\";s:2:\"1x\";s:61:\"https://ps.w.org/wpdiscuz/assets/icon-128x128.png?rev=1076265\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/wpdiscuz/assets/banner-1544x500.png?rev=1767022\";s:2:\"1x\";s:63:\"https://ps.w.org/wpdiscuz/assets/banner-772x250.png?rev=1767022\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}}}', 'no'),
(376, 'ai1wm_secret_key', 'caQaEPxP6NEP', 'yes'),
(378, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:332:\"<a href=\"http://travel-onyx-systems/wp-content/ai1wm-backups/travel-onyx-systems-20231028-211605-din4lr.wpress\" class=\"ai1wm-button-green ai1wm-emphasize ai1wm-button-download\" title=\"travel-onyx-systems\" download=\"travel-onyx-systems-20231028-211605-din4lr.wpress\"><span>Download travel-onyx-systems</span><em>Size: 131 MB</em></a>\";}', 'yes'),
(383, '_transient_timeout_wpdiscuz_posts_authors', '1698702491', 'no'),
(384, '_transient_wpdiscuz_posts_authors', 'a:1:{i:0;s:1:\"1\";}', 'no'),
(385, '_site_transient_ai1wm_last_check_for_updates', '1698659296', 'no'),
(386, 'ai1wm_updater', 'a:0:{}', 'yes'),
(387, '_transient_timeout_acf_plugin_updates', '1698832097', 'no'),
(388, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.2.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.4\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20231025\";}}s:9:\"no_update\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.1.6\";}}', 'no'),
(389, '_site_transient_timeout_theme_roots', '1698661097', 'no'),
(390, '_site_transient_theme_roots', 'a:1:{s:3:\"tos\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `os_postmeta`
--

CREATE TABLE `os_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `os_postmeta`
--

INSERT INTO `os_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_wp_attached_file', '2023/10/Logo.png'),
(4, 6, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:133;s:6:\"height\";i:56;s:4:\"file\";s:16:\"2023/10/Logo.png\";s:8:\"filesize\";i:3610;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 6, '_wp_attachment_image_alt', 'logo'),
(6, 7, '_edit_lock', '1698324283:1'),
(7, 7, '_customize_restore_dismissed', '1'),
(8, 8, '_wp_trash_meta_status', 'publish'),
(9, 8, '_wp_trash_meta_time', '1698324330'),
(10, 9, '_wp_trash_meta_status', 'publish'),
(11, 9, '_wp_trash_meta_time', '1698324713'),
(12, 10, '_edit_lock', '1698325943:1'),
(13, 10, '_wp_trash_meta_status', 'publish'),
(14, 10, '_wp_trash_meta_time', '1698325955'),
(15, 11, '_wp_trash_meta_status', 'publish'),
(16, 11, '_wp_trash_meta_time', '1698326024'),
(17, 12, '_wp_trash_meta_status', 'publish'),
(18, 12, '_wp_trash_meta_time', '1698326416'),
(19, 13, '_wp_trash_meta_status', 'publish'),
(20, 13, '_wp_trash_meta_time', '1698326491'),
(21, 14, '_wp_trash_meta_status', 'publish'),
(22, 14, '_wp_trash_meta_time', '1698326894'),
(23, 15, '_wp_attached_file', '2023/10/header-arrow.png'),
(24, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:24:\"2023/10/header-arrow.png\";s:8:\"filesize\";i:698;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 15, '_wp_attachment_image_alt', 'next'),
(26, 16, '_wp_trash_meta_status', 'publish'),
(27, 16, '_wp_trash_meta_time', '1698327336'),
(28, 2, '_wp_trash_meta_status', 'publish'),
(29, 2, '_wp_trash_meta_time', '1698328114'),
(30, 2, '_wp_desired_post_slug', 'sample-page'),
(31, 18, '_edit_lock', '1698327998:1'),
(32, 19, '_edit_last', '1'),
(33, 19, '_edit_lock', '1698409547:1'),
(34, 21, '_edit_last', '1'),
(35, 21, '_edit_lock', '1698417635:1'),
(36, 23, '_edit_last', '1'),
(37, 23, '_edit_lock', '1698417827:1'),
(38, 25, '_menu_item_type', 'custom'),
(39, 25, '_menu_item_menu_item_parent', '0'),
(40, 25, '_menu_item_object_id', '25'),
(41, 25, '_menu_item_object', 'custom'),
(42, 25, '_menu_item_target', ''),
(43, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 25, '_menu_item_xfn', ''),
(45, 25, '_menu_item_url', 'http://travel-onyx-systems/'),
(46, 25, '_menu_item_orphaned', '1698328395'),
(74, 29, '_menu_item_type', 'post_type'),
(75, 29, '_menu_item_menu_item_parent', '0'),
(76, 29, '_menu_item_object_id', '19'),
(77, 29, '_menu_item_object', 'page'),
(78, 29, '_menu_item_target', ''),
(79, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 29, '_menu_item_xfn', ''),
(81, 29, '_menu_item_url', ''),
(82, 29, '_menu_item_orphaned', '1698328400'),
(83, 30, '_menu_item_type', 'post_type'),
(84, 30, '_menu_item_menu_item_parent', '0'),
(85, 30, '_menu_item_object_id', '19'),
(86, 30, '_menu_item_object', 'page'),
(87, 30, '_menu_item_target', ''),
(88, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 30, '_menu_item_xfn', ''),
(90, 30, '_menu_item_url', ''),
(103, 19, '_wp_page_template', 'home-page.php'),
(104, 33, '_edit_last', '1'),
(105, 33, '_edit_lock', '1698404720:1'),
(106, 39, '_wp_attached_file', '2023/10/about-image.jpg'),
(107, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:365;s:6:\"height\";i:295;s:4:\"file\";s:23:\"2023/10/about-image.jpg\";s:8:\"filesize\";i:66780;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"about-image-300x242.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:242;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11367;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"about-image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4773;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(108, 39, '_wp_attachment_image_alt', 'My image'),
(109, 19, 'about_me_image', '39'),
(110, 19, '_about_me_image', 'field_653a732e5ea79'),
(111, 19, 'about_me_title', 'About Me'),
(112, 19, '_about_me_title', 'field_653a73865ea7a'),
(113, 19, 'about_me_content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum in vel massa donec sit. Mi ut risus sem malesuada ornare. Ac eu erat eget et lorem est arcu. Gravida hendrerit sit blandit semper lacus. Nulla amet suscipit sit lectus tortor. Dolor non eget suspendisse leo scelerisque sed d.'),
(114, 19, '_about_me_content', 'field_653a73c15ea7b'),
(115, 19, 'about_me_button_value', 'Read more'),
(116, 19, '_about_me_button_value', 'field_653a73f35ea7c'),
(117, 19, 'about_me_button_url', 'https://ru.wikipedia.org/'),
(118, 19, '_about_me_button_url', 'field_653a74375ea7d'),
(119, 40, 'about_me_image', '39'),
(120, 40, '_about_me_image', 'field_653a732e5ea79'),
(121, 40, 'about_me_title', 'About Me'),
(122, 40, '_about_me_title', 'field_653a73865ea7a'),
(123, 40, 'about_me_content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum in vel massa donec sit. Mi ut risus sem malesuada ornare. Ac eu erat eget et lorem est arcu. Gravida hendrerit sit blandit semper lacus. Nulla amet suscipit sit lectus tortor. Dolor non eget suspendisse leo scelerisque sed d.'),
(124, 40, '_about_me_content', 'field_653a73c15ea7b'),
(125, 40, 'about_me_button_value', 'Read more'),
(126, 40, '_about_me_button_value', 'field_653a73f35ea7c'),
(127, 40, 'about_me_button_url', 'https://ru.wikipedia.org/'),
(128, 40, '_about_me_button_url', 'field_653a74375ea7d'),
(129, 1, '_wp_trash_meta_status', 'publish'),
(130, 1, '_wp_trash_meta_time', '1698331153'),
(131, 1, '_wp_desired_post_slug', 'hello-world'),
(132, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(133, 42, '_edit_last', '1'),
(134, 42, '_edit_lock', '1698501662:1'),
(140, 46, '_edit_last', '1'),
(141, 46, '_edit_lock', '1698392937:1'),
(147, 49, '_edit_last', '1'),
(148, 49, '_edit_lock', '1698393028:1'),
(159, 52, '_wp_attached_file', '2023/10/front-big-post.jpg'),
(160, 52, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:783;s:6:\"height\";i:453;s:4:\"file\";s:26:\"2023/10/front-big-post.jpg\";s:8:\"filesize\";i:449000;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"front-big-post-300x174.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:174;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18805;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"front-big-post-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8318;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"front-big-post-768x444.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:94652;}s:13:\"custom-slider\";a:5:{s:4:\"file\";s:26:\"front-big-post-400x270.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33600;}s:13:\"custom-recent\";a:5:{s:4:\"file\";s:25:\"front-big-post-100x80.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3666;}s:12:\"custom-posts\";a:5:{s:4:\"file\";s:26:\"front-big-post-780x450.jpg\";s:5:\"width\";i:780;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:97984;}s:12:\"custom-insta\";a:5:{s:4:\"file\";s:26:\"front-big-post-261x296.jpg\";s:5:\"width\";i:261;s:6:\"height\";i:296;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23203;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(161, 52, '_wp_attachment_image_alt', 'posts'),
(162, 46, '_thumbnail_id', '52'),
(165, 49, '_thumbnail_id', '52'),
(167, 42, '_thumbnail_id', '52'),
(169, 19, 'social_button_0_social_button_image', '62'),
(170, 19, '_social_button_0_social_button_image', 'field_653b7333248d0'),
(171, 19, 'social_button_0_social_button_value', '65k likes'),
(172, 19, '_social_button_0_social_button_value', 'field_653b7351248d1'),
(173, 19, 'social_button_0_social_button_image_2', '63'),
(174, 19, '_social_button_0_social_button_image_2', 'field_653b73cbc55b7'),
(175, 19, 'social_button_0_social_button_value_2', '70k likes'),
(176, 19, '_social_button_0_social_button_value_2', 'field_653b73edc55b8'),
(177, 19, 'social_button', '2'),
(178, 19, '_social_button', 'field_653b7307248cf'),
(179, 61, 'about_me_image', '39'),
(180, 61, '_about_me_image', 'field_653a732e5ea79'),
(181, 61, 'about_me_title', 'About Me'),
(182, 61, '_about_me_title', 'field_653a73865ea7a'),
(183, 61, 'about_me_content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum in vel massa donec sit. Mi ut risus sem malesuada ornare. Ac eu erat eget et lorem est arcu. Gravida hendrerit sit blandit semper lacus. Nulla amet suscipit sit lectus tortor. Dolor non eget suspendisse leo scelerisque sed d.'),
(184, 61, '_about_me_content', 'field_653a73c15ea7b'),
(185, 61, 'about_me_button_value', 'Read more'),
(186, 61, '_about_me_button_value', 'field_653a73f35ea7c'),
(187, 61, 'about_me_button_url', 'https://ru.wikipedia.org/'),
(188, 61, '_about_me_button_url', 'field_653a74375ea7d'),
(189, 61, 'social_button_0_social_button_image', ''),
(190, 61, '_social_button_0_social_button_image', 'field_653b7333248d0'),
(191, 61, 'social_button_0_social_button_value', '65k'),
(192, 61, '_social_button_0_social_button_value', 'field_653b7351248d1'),
(193, 61, 'social_button_0_social_button_image_2', ''),
(194, 61, '_social_button_0_social_button_image_2', 'field_653b73cbc55b7'),
(195, 61, 'social_button_0_social_button_value_2', ''),
(196, 61, '_social_button_0_social_button_value_2', 'field_653b73edc55b8'),
(197, 61, 'social_button', '1'),
(198, 61, '_social_button', 'field_653b7307248cf'),
(199, 62, '_wp_attached_file', '2023/10/facebook.png'),
(200, 62, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:16;s:6:\"height\";i:32;s:4:\"file\";s:20:\"2023/10/facebook.png\";s:8:\"filesize\";i:301;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(201, 62, '_wp_attachment_image_alt', 'facebook'),
(202, 63, '_wp_attached_file', '2023/10/twitter.png'),
(203, 63, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:19:\"2023/10/twitter.png\";s:8:\"filesize\";i:503;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 63, '_wp_attachment_image_alt', 'twitter'),
(205, 64, '_wp_attached_file', '2023/10/youtube.png'),
(206, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:50;s:6:\"height\";i:51;s:4:\"file\";s:19:\"2023/10/youtube.png\";s:8:\"filesize\";i:441;s:5:\"sizes\";a:1:{s:13:\"custom-social\";a:5:{s:4:\"file\";s:17:\"youtube-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:354;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(207, 64, '_wp_attachment_image_alt', 'youtube'),
(208, 65, '_wp_attached_file', '2023/10/instagramm.png'),
(209, 65, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:22:\"2023/10/instagramm.png\";s:8:\"filesize\";i:655;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(210, 65, '_wp_attachment_image_alt', 'instagramm'),
(211, 19, 'social_button_1_social_button_image', '64'),
(212, 19, '_social_button_1_social_button_image', 'field_653b7333248d0'),
(213, 19, 'social_button_1_social_button_value', '74k likes'),
(214, 19, '_social_button_1_social_button_value', 'field_653b7351248d1'),
(215, 19, 'social_button_1_social_button_image_2', '65'),
(216, 19, '_social_button_1_social_button_image_2', 'field_653b73cbc55b7'),
(217, 19, 'social_button_1_social_button_value_2', '105k likes'),
(218, 19, '_social_button_1_social_button_value_2', 'field_653b73edc55b8'),
(219, 66, 'about_me_image', '39'),
(220, 66, '_about_me_image', 'field_653a732e5ea79'),
(221, 66, 'about_me_title', 'About Me'),
(222, 66, '_about_me_title', 'field_653a73865ea7a'),
(223, 66, 'about_me_content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum in vel massa donec sit. Mi ut risus sem malesuada ornare. Ac eu erat eget et lorem est arcu. Gravida hendrerit sit blandit semper lacus. Nulla amet suscipit sit lectus tortor. Dolor non eget suspendisse leo scelerisque sed d.'),
(224, 66, '_about_me_content', 'field_653a73c15ea7b'),
(225, 66, 'about_me_button_value', 'Read more'),
(226, 66, '_about_me_button_value', 'field_653a73f35ea7c'),
(227, 66, 'about_me_button_url', 'https://ru.wikipedia.org/'),
(228, 66, '_about_me_button_url', 'field_653a74375ea7d'),
(229, 66, 'social_button_0_social_button_image', '62'),
(230, 66, '_social_button_0_social_button_image', 'field_653b7333248d0'),
(231, 66, 'social_button_0_social_button_value', '65k likes'),
(232, 66, '_social_button_0_social_button_value', 'field_653b7351248d1'),
(233, 66, 'social_button_0_social_button_image_2', '63'),
(234, 66, '_social_button_0_social_button_image_2', 'field_653b73cbc55b7'),
(235, 66, 'social_button_0_social_button_value_2', '70k likes'),
(236, 66, '_social_button_0_social_button_value_2', 'field_653b73edc55b8'),
(237, 66, 'social_button', '2'),
(238, 66, '_social_button', 'field_653b7307248cf'),
(239, 66, 'social_button_1_social_button_image', '64'),
(240, 66, '_social_button_1_social_button_image', 'field_653b7333248d0'),
(241, 66, 'social_button_1_social_button_value', '74k likes'),
(242, 66, '_social_button_1_social_button_value', 'field_653b7351248d1'),
(243, 66, 'social_button_1_social_button_image_2', '65'),
(244, 66, '_social_button_1_social_button_image_2', 'field_653b73cbc55b7'),
(245, 66, 'social_button_1_social_button_value_2', '105k likes'),
(246, 66, '_social_button_1_social_button_value_2', 'field_653b73edc55b8'),
(247, 19, 'social_facebook_image', '62'),
(248, 19, '_social_facebook_image', 'field_653b783d46fd1'),
(249, 19, 'social_facebook_text', '65k likes'),
(250, 19, '_social_facebook_text', 'field_653b786f46fd2'),
(251, 19, 'social_twitter_image', '63'),
(252, 19, '_social_twitter_image', 'field_653b788a46fd3'),
(253, 19, 'social_twitter_text', '68k likes'),
(254, 19, '_social_twitter_text', 'field_653b78a946fd4'),
(255, 19, 'social_youtube_image', '64'),
(256, 19, '_social_youtube_image', 'field_653b78c046fd5'),
(257, 19, 'social_youtube_text', '90k likes'),
(258, 19, '_social_youtube_text', 'field_653b78d846fd6'),
(259, 19, 'social_instagramm_image', '65'),
(260, 19, '_social_instagramm_image', 'field_653b78ee46fd7'),
(261, 19, 'social_instagramm_value', '102k likes'),
(262, 19, '_social_instagramm_value', 'field_653b790b46fd8'),
(263, 75, 'about_me_image', '39'),
(264, 75, '_about_me_image', 'field_653a732e5ea79'),
(265, 75, 'about_me_title', 'About Me'),
(266, 75, '_about_me_title', 'field_653a73865ea7a'),
(267, 75, 'about_me_content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum in vel massa donec sit. Mi ut risus sem malesuada ornare. Ac eu erat eget et lorem est arcu. Gravida hendrerit sit blandit semper lacus. Nulla amet suscipit sit lectus tortor. Dolor non eget suspendisse leo scelerisque sed d.'),
(268, 75, '_about_me_content', 'field_653a73c15ea7b'),
(269, 75, 'about_me_button_value', 'Read more'),
(270, 75, '_about_me_button_value', 'field_653a73f35ea7c'),
(271, 75, 'about_me_button_url', 'https://ru.wikipedia.org/'),
(272, 75, '_about_me_button_url', 'field_653a74375ea7d'),
(273, 75, 'social_button_0_social_button_image', '62'),
(274, 75, '_social_button_0_social_button_image', 'field_653b7333248d0'),
(275, 75, 'social_button_0_social_button_value', '65k likes'),
(276, 75, '_social_button_0_social_button_value', 'field_653b7351248d1'),
(277, 75, 'social_button_0_social_button_image_2', '63'),
(278, 75, '_social_button_0_social_button_image_2', 'field_653b73cbc55b7'),
(279, 75, 'social_button_0_social_button_value_2', '70k likes'),
(280, 75, '_social_button_0_social_button_value_2', 'field_653b73edc55b8'),
(281, 75, 'social_button', '2'),
(282, 75, '_social_button', 'field_653b7307248cf'),
(283, 75, 'social_button_1_social_button_image', '64'),
(284, 75, '_social_button_1_social_button_image', 'field_653b7333248d0'),
(285, 75, 'social_button_1_social_button_value', '74k likes'),
(286, 75, '_social_button_1_social_button_value', 'field_653b7351248d1'),
(287, 75, 'social_button_1_social_button_image_2', '65'),
(288, 75, '_social_button_1_social_button_image_2', 'field_653b73cbc55b7'),
(289, 75, 'social_button_1_social_button_value_2', '105k likes'),
(290, 75, '_social_button_1_social_button_value_2', 'field_653b73edc55b8'),
(291, 75, 'social_facebook_image', '62'),
(292, 75, '_social_facebook_image', 'field_653b783d46fd1'),
(293, 75, 'social_facebook_text', '65k likes'),
(294, 75, '_social_facebook_text', 'field_653b786f46fd2'),
(295, 75, 'social_twitter_image', '63'),
(296, 75, '_social_twitter_image', 'field_653b788a46fd3'),
(297, 75, 'social_twitter_text', '68k likes'),
(298, 75, '_social_twitter_text', 'field_653b78a946fd4'),
(299, 75, 'social_youtube_image', '64'),
(300, 75, '_social_youtube_image', 'field_653b78c046fd5'),
(301, 75, 'social_youtube_text', '90k likes'),
(302, 75, '_social_youtube_text', 'field_653b78d846fd6'),
(303, 75, 'social_instagramm_image', '65'),
(304, 75, '_social_instagramm_image', 'field_653b78ee46fd7'),
(305, 75, 'social_instagramm_value', '102k likes'),
(306, 75, '_social_instagramm_value', 'field_653b790b46fd8'),
(307, 19, 'social_facebook_link', 'https://facebook.com'),
(308, 19, '_social_facebook_link', 'field_653b7ac5be709'),
(309, 19, 'social_twitter_link', 'https://twitter.com'),
(310, 19, '_social_twitter_link', 'field_653b7aecbe70a'),
(311, 19, 'social_youtube_link', 'https://youtube.com'),
(312, 19, '_social_youtube_link', 'field_653b7b0cbe70b'),
(313, 19, 'social_instagramm_link', 'https://instagram.com'),
(314, 19, '_social_instagramm_link', 'field_653b7b38be70c'),
(315, 80, 'about_me_image', '39'),
(316, 80, '_about_me_image', 'field_653a732e5ea79'),
(317, 80, 'about_me_title', 'About Me'),
(318, 80, '_about_me_title', 'field_653a73865ea7a'),
(319, 80, 'about_me_content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum in vel massa donec sit. Mi ut risus sem malesuada ornare. Ac eu erat eget et lorem est arcu. Gravida hendrerit sit blandit semper lacus. Nulla amet suscipit sit lectus tortor. Dolor non eget suspendisse leo scelerisque sed d.'),
(320, 80, '_about_me_content', 'field_653a73c15ea7b'),
(321, 80, 'about_me_button_value', 'Read more'),
(322, 80, '_about_me_button_value', 'field_653a73f35ea7c'),
(323, 80, 'about_me_button_url', 'https://ru.wikipedia.org/'),
(324, 80, '_about_me_button_url', 'field_653a74375ea7d'),
(325, 80, 'social_button_0_social_button_image', '62'),
(326, 80, '_social_button_0_social_button_image', 'field_653b7333248d0'),
(327, 80, 'social_button_0_social_button_value', '65k likes'),
(328, 80, '_social_button_0_social_button_value', 'field_653b7351248d1'),
(329, 80, 'social_button_0_social_button_image_2', '63'),
(330, 80, '_social_button_0_social_button_image_2', 'field_653b73cbc55b7'),
(331, 80, 'social_button_0_social_button_value_2', '70k likes'),
(332, 80, '_social_button_0_social_button_value_2', 'field_653b73edc55b8'),
(333, 80, 'social_button', '2'),
(334, 80, '_social_button', 'field_653b7307248cf'),
(335, 80, 'social_button_1_social_button_image', '64'),
(336, 80, '_social_button_1_social_button_image', 'field_653b7333248d0'),
(337, 80, 'social_button_1_social_button_value', '74k likes'),
(338, 80, '_social_button_1_social_button_value', 'field_653b7351248d1'),
(339, 80, 'social_button_1_social_button_image_2', '65'),
(340, 80, '_social_button_1_social_button_image_2', 'field_653b73cbc55b7'),
(341, 80, 'social_button_1_social_button_value_2', '105k likes'),
(342, 80, '_social_button_1_social_button_value_2', 'field_653b73edc55b8'),
(343, 80, 'social_facebook_image', '62'),
(344, 80, '_social_facebook_image', 'field_653b783d46fd1'),
(345, 80, 'social_facebook_text', '65k likes'),
(346, 80, '_social_facebook_text', 'field_653b786f46fd2'),
(347, 80, 'social_twitter_image', '63'),
(348, 80, '_social_twitter_image', 'field_653b788a46fd3'),
(349, 80, 'social_twitter_text', '68k likes'),
(350, 80, '_social_twitter_text', 'field_653b78a946fd4'),
(351, 80, 'social_youtube_image', '64'),
(352, 80, '_social_youtube_image', 'field_653b78c046fd5'),
(353, 80, 'social_youtube_text', '90k likes'),
(354, 80, '_social_youtube_text', 'field_653b78d846fd6'),
(355, 80, 'social_instagramm_image', '65'),
(356, 80, '_social_instagramm_image', 'field_653b78ee46fd7'),
(357, 80, 'social_instagramm_value', '102k likes'),
(358, 80, '_social_instagramm_value', 'field_653b790b46fd8'),
(359, 80, 'social_facebook_link', 'https://facebook.com'),
(360, 80, '_social_facebook_link', 'field_653b7ac5be709'),
(361, 80, 'social_twitter_link', 'https://twitter.com'),
(362, 80, '_social_twitter_link', 'field_653b7aecbe70a'),
(363, 80, 'social_youtube_link', 'https://youtube.com'),
(364, 80, '_social_youtube_link', 'field_653b7b0cbe70b'),
(365, 80, 'social_instagramm_link', 'https://instagram.com'),
(366, 80, '_social_instagramm_link', 'field_653b7b38be70c'),
(367, 85, '_wp_attached_file', '2023/10/front-banner.jpg'),
(368, 85, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:777;s:6:\"height\";i:425;s:4:\"file\";s:24:\"2023/10/front-banner.jpg\";s:8:\"filesize\";i:235078;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"front-banner-300x164.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13687;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"front-banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7793;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"front-banner-768x420.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:55415;}s:13:\"custom-slider\";a:5:{s:4:\"file\";s:24:\"front-banner-400x270.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24300;}s:13:\"custom-recent\";a:5:{s:4:\"file\";s:23:\"front-banner-100x80.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3703;}s:12:\"custom-insta\";a:5:{s:4:\"file\";s:24:\"front-banner-261x296.jpg\";s:5:\"width\";i:261;s:6:\"height\";i:296;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18898;}s:13:\"custom-social\";a:5:{s:4:\"file\";s:22:\"front-banner-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:909;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(369, 85, '_wp_attachment_image_alt', 'banner'),
(370, 19, 'banner_image', '85'),
(371, 19, '_banner_image', 'field_653b846820fd6'),
(372, 19, 'banner_text', '<span>Want Me</span> to Purchase Something For You That isn’t available in your Country?'),
(373, 19, '_banner_text', 'field_653b848d20fd7'),
(374, 19, 'banner_button_value', 'Place Order'),
(375, 19, '_banner_button_value', 'field_653b84e320fd8'),
(376, 19, 'banner_button_url', 'https://ru.wikipedia.org/'),
(377, 19, '_banner_button_url', 'field_653b854620fd9'),
(378, 86, 'about_me_image', '39'),
(379, 86, '_about_me_image', 'field_653a732e5ea79'),
(380, 86, 'about_me_title', 'About Me'),
(381, 86, '_about_me_title', 'field_653a73865ea7a'),
(382, 86, 'about_me_content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum in vel massa donec sit. Mi ut risus sem malesuada ornare. Ac eu erat eget et lorem est arcu. Gravida hendrerit sit blandit semper lacus. Nulla amet suscipit sit lectus tortor. Dolor non eget suspendisse leo scelerisque sed d.'),
(383, 86, '_about_me_content', 'field_653a73c15ea7b'),
(384, 86, 'about_me_button_value', 'Read more'),
(385, 86, '_about_me_button_value', 'field_653a73f35ea7c'),
(386, 86, 'about_me_button_url', 'https://ru.wikipedia.org/'),
(387, 86, '_about_me_button_url', 'field_653a74375ea7d'),
(388, 86, 'social_button_0_social_button_image', '62'),
(389, 86, '_social_button_0_social_button_image', 'field_653b7333248d0'),
(390, 86, 'social_button_0_social_button_value', '65k likes'),
(391, 86, '_social_button_0_social_button_value', 'field_653b7351248d1'),
(392, 86, 'social_button_0_social_button_image_2', '63'),
(393, 86, '_social_button_0_social_button_image_2', 'field_653b73cbc55b7'),
(394, 86, 'social_button_0_social_button_value_2', '70k likes'),
(395, 86, '_social_button_0_social_button_value_2', 'field_653b73edc55b8'),
(396, 86, 'social_button', '2'),
(397, 86, '_social_button', 'field_653b7307248cf'),
(398, 86, 'social_button_1_social_button_image', '64'),
(399, 86, '_social_button_1_social_button_image', 'field_653b7333248d0'),
(400, 86, 'social_button_1_social_button_value', '74k likes'),
(401, 86, '_social_button_1_social_button_value', 'field_653b7351248d1'),
(402, 86, 'social_button_1_social_button_image_2', '65'),
(403, 86, '_social_button_1_social_button_image_2', 'field_653b73cbc55b7'),
(404, 86, 'social_button_1_social_button_value_2', '105k likes'),
(405, 86, '_social_button_1_social_button_value_2', 'field_653b73edc55b8'),
(406, 86, 'social_facebook_image', '62'),
(407, 86, '_social_facebook_image', 'field_653b783d46fd1'),
(408, 86, 'social_facebook_text', '65k likes'),
(409, 86, '_social_facebook_text', 'field_653b786f46fd2'),
(410, 86, 'social_twitter_image', '63'),
(411, 86, '_social_twitter_image', 'field_653b788a46fd3'),
(412, 86, 'social_twitter_text', '68k likes'),
(413, 86, '_social_twitter_text', 'field_653b78a946fd4'),
(414, 86, 'social_youtube_image', '64'),
(415, 86, '_social_youtube_image', 'field_653b78c046fd5'),
(416, 86, 'social_youtube_text', '90k likes'),
(417, 86, '_social_youtube_text', 'field_653b78d846fd6'),
(418, 86, 'social_instagramm_image', '65'),
(419, 86, '_social_instagramm_image', 'field_653b78ee46fd7'),
(420, 86, 'social_instagramm_value', '102k likes'),
(421, 86, '_social_instagramm_value', 'field_653b790b46fd8'),
(422, 86, 'social_facebook_link', 'https://facebook.com'),
(423, 86, '_social_facebook_link', 'field_653b7ac5be709'),
(424, 86, 'social_twitter_link', 'https://twitter.com'),
(425, 86, '_social_twitter_link', 'field_653b7aecbe70a'),
(426, 86, 'social_youtube_link', 'https://youtube.com'),
(427, 86, '_social_youtube_link', 'field_653b7b0cbe70b'),
(428, 86, 'social_instagramm_link', 'https://instagram.com'),
(429, 86, '_social_instagramm_link', 'field_653b7b38be70c'),
(430, 86, 'banner_image', '85'),
(431, 86, '_banner_image', 'field_653b846820fd6'),
(432, 86, 'banner_text', 'Want Me to Purchase Something For You That isn’t available in your Country?'),
(433, 86, '_banner_text', 'field_653b848d20fd7'),
(434, 86, 'banner_button_value', 'Place Order'),
(435, 86, '_banner_button_value', 'field_653b84e320fd8'),
(436, 86, 'banner_button_url', 'https://ru.wikipedia.org/'),
(437, 86, '_banner_button_url', 'field_653b854620fd9'),
(438, 87, 'about_me_image', '39'),
(439, 87, '_about_me_image', 'field_653a732e5ea79'),
(440, 87, 'about_me_title', 'About Me'),
(441, 87, '_about_me_title', 'field_653a73865ea7a'),
(442, 87, 'about_me_content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum in vel massa donec sit. Mi ut risus sem malesuada ornare. Ac eu erat eget et lorem est arcu. Gravida hendrerit sit blandit semper lacus. Nulla amet suscipit sit lectus tortor. Dolor non eget suspendisse leo scelerisque sed d.'),
(443, 87, '_about_me_content', 'field_653a73c15ea7b'),
(444, 87, 'about_me_button_value', 'Read more'),
(445, 87, '_about_me_button_value', 'field_653a73f35ea7c'),
(446, 87, 'about_me_button_url', 'https://ru.wikipedia.org/'),
(447, 87, '_about_me_button_url', 'field_653a74375ea7d'),
(448, 87, 'social_button_0_social_button_image', '62'),
(449, 87, '_social_button_0_social_button_image', 'field_653b7333248d0'),
(450, 87, 'social_button_0_social_button_value', '65k likes'),
(451, 87, '_social_button_0_social_button_value', 'field_653b7351248d1'),
(452, 87, 'social_button_0_social_button_image_2', '63'),
(453, 87, '_social_button_0_social_button_image_2', 'field_653b73cbc55b7'),
(454, 87, 'social_button_0_social_button_value_2', '70k likes'),
(455, 87, '_social_button_0_social_button_value_2', 'field_653b73edc55b8'),
(456, 87, 'social_button', '2'),
(457, 87, '_social_button', 'field_653b7307248cf'),
(458, 87, 'social_button_1_social_button_image', '64'),
(459, 87, '_social_button_1_social_button_image', 'field_653b7333248d0'),
(460, 87, 'social_button_1_social_button_value', '74k likes'),
(461, 87, '_social_button_1_social_button_value', 'field_653b7351248d1'),
(462, 87, 'social_button_1_social_button_image_2', '65'),
(463, 87, '_social_button_1_social_button_image_2', 'field_653b73cbc55b7'),
(464, 87, 'social_button_1_social_button_value_2', '105k likes'),
(465, 87, '_social_button_1_social_button_value_2', 'field_653b73edc55b8'),
(466, 87, 'social_facebook_image', '62'),
(467, 87, '_social_facebook_image', 'field_653b783d46fd1'),
(468, 87, 'social_facebook_text', '65k likes'),
(469, 87, '_social_facebook_text', 'field_653b786f46fd2'),
(470, 87, 'social_twitter_image', '63'),
(471, 87, '_social_twitter_image', 'field_653b788a46fd3'),
(472, 87, 'social_twitter_text', '68k likes'),
(473, 87, '_social_twitter_text', 'field_653b78a946fd4'),
(474, 87, 'social_youtube_image', '64'),
(475, 87, '_social_youtube_image', 'field_653b78c046fd5'),
(476, 87, 'social_youtube_text', '90k likes'),
(477, 87, '_social_youtube_text', 'field_653b78d846fd6'),
(478, 87, 'social_instagramm_image', '65'),
(479, 87, '_social_instagramm_image', 'field_653b78ee46fd7'),
(480, 87, 'social_instagramm_value', '102k likes'),
(481, 87, '_social_instagramm_value', 'field_653b790b46fd8'),
(482, 87, 'social_facebook_link', 'https://facebook.com'),
(483, 87, '_social_facebook_link', 'field_653b7ac5be709'),
(484, 87, 'social_twitter_link', 'https://twitter.com'),
(485, 87, '_social_twitter_link', 'field_653b7aecbe70a'),
(486, 87, 'social_youtube_link', 'https://youtube.com'),
(487, 87, '_social_youtube_link', 'field_653b7b0cbe70b'),
(488, 87, 'social_instagramm_link', 'https://instagram.com'),
(489, 87, '_social_instagramm_link', 'field_653b7b38be70c'),
(490, 87, 'banner_image', '85'),
(491, 87, '_banner_image', 'field_653b846820fd6'),
(492, 87, 'banner_text', '<span>Want Me</span> to Purchase Something For You That isn’t available in your Country?'),
(493, 87, '_banner_text', 'field_653b848d20fd7'),
(494, 87, 'banner_button_value', 'Place Order'),
(495, 87, '_banner_button_value', 'field_653b84e320fd8'),
(496, 87, 'banner_button_url', 'https://ru.wikipedia.org/'),
(497, 87, '_banner_button_url', 'field_653b854620fd9'),
(498, 88, '_edit_last', '1'),
(499, 88, '_edit_lock', '1698403685:1'),
(500, 88, '_thumbnail_id', '52'),
(502, 90, '_edit_last', '1'),
(503, 90, '_edit_lock', '1698403849:1'),
(504, 90, '_thumbnail_id', '52'),
(506, 92, '_edit_last', '1'),
(507, 92, '_edit_lock', '1698403909:1'),
(508, 92, '_thumbnail_id', '52'),
(510, 95, '_edit_last', '1'),
(511, 95, '_edit_lock', '1698403974:1'),
(512, 95, '_thumbnail_id', '52'),
(514, 97, '_edit_last', '1'),
(515, 97, '_edit_lock', '1698404045:1'),
(516, 97, '_thumbnail_id', '52'),
(518, 99, '_edit_last', '1'),
(519, 99, '_edit_lock', '1698503600:1'),
(520, 99, '_thumbnail_id', '189'),
(522, 101, '_edit_last', '1'),
(523, 101, '_edit_lock', '1698404148:1'),
(524, 101, '_thumbnail_id', '52'),
(526, 103, '_edit_last', '1'),
(527, 103, '_edit_lock', '1698503035:1'),
(528, 103, '_thumbnail_id', '189'),
(530, 105, '_edit_last', '1'),
(531, 105, '_edit_lock', '1698415419:1'),
(532, 105, '_thumbnail_id', '52'),
(534, 107, '_edit_last', '1'),
(535, 107, '_edit_lock', '1698405052:1'),
(536, 107, '_wp_trash_meta_status', 'publish'),
(537, 107, '_wp_trash_meta_time', '1698405202'),
(538, 107, '_wp_desired_post_slug', 'group_653b9a053f195'),
(539, 108, '_wp_trash_meta_status', 'publish'),
(540, 108, '_wp_trash_meta_time', '1698405202'),
(541, 108, '_wp_desired_post_slug', 'field_653b9a0566c83'),
(542, 109, '_wp_trash_meta_status', 'publish'),
(543, 109, '_wp_trash_meta_time', '1698405202'),
(544, 109, '_wp_desired_post_slug', 'field_653b9a2e66c84'),
(545, 110, '_wp_trash_meta_status', 'publish'),
(546, 110, '_wp_trash_meta_time', '1698405202'),
(547, 110, '_wp_desired_post_slug', 'field_653b9aa266c85'),
(548, 111, '_wp_trash_meta_status', 'publish'),
(549, 111, '_wp_trash_meta_time', '1698405202'),
(550, 111, '_wp_desired_post_slug', 'field_653b9abc66c86'),
(551, 112, '_edit_last', '1'),
(552, 112, '_edit_lock', '1698476602:1'),
(553, 117, '_edit_last', '1'),
(554, 117, '_edit_lock', '1698476774:1'),
(555, 21, '_wp_page_template', 'tips-template.php'),
(556, 123, '_edit_last', '1'),
(557, 123, '_edit_lock', '1698412698:1'),
(558, 124, '_wp_attached_file', '2023/10/destination-image.jpg'),
(559, 124, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:380;s:6:\"height\";i:360;s:4:\"file\";s:29:\"2023/10/destination-image.jpg\";s:8:\"filesize\";i:198728;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"destination-image-300x284.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:284;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30530;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"destination-image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9568;}s:13:\"custom-slider\";a:5:{s:4:\"file\";s:29:\"destination-image-380x270.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:39104;}s:13:\"custom-recent\";a:5:{s:4:\"file\";s:28:\"destination-image-100x80.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3919;}s:12:\"custom-insta\";a:5:{s:4:\"file\";s:29:\"destination-image-261x296.jpg\";s:5:\"width\";i:261;s:6:\"height\";i:296;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:27075;}s:13:\"custom-social\";a:5:{s:4:\"file\";s:27:\"destination-image-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:871;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(560, 124, '_wp_attachment_image_alt', 'destination'),
(561, 123, '_thumbnail_id', '124'),
(562, 125, '_edit_last', '1'),
(563, 125, '_edit_lock', '1698412769:1'),
(564, 125, '_thumbnail_id', '124'),
(565, 126, '_edit_last', '1'),
(566, 126, '_edit_lock', '1698414276:1'),
(567, 126, '_thumbnail_id', '124'),
(577, 30, '_wp_old_date', '2023-10-26'),
(588, 23, '_wp_page_template', 'home-page.php'),
(589, 129, '_edit_last', '1'),
(590, 129, '_edit_lock', '1698417878:1'),
(591, 129, '_wp_page_template', 'destination-template.php'),
(592, 21, '_wp_trash_meta_status', 'publish'),
(593, 21, '_wp_trash_meta_time', '1698418025'),
(594, 21, '_wp_desired_post_slug', 'destination'),
(595, 23, '_wp_trash_meta_status', 'publish'),
(596, 23, '_wp_trash_meta_time', '1698418034'),
(597, 23, '_wp_desired_post_slug', 'tips'),
(598, 129, '_wp_trash_meta_status', 'publish'),
(599, 129, '_wp_trash_meta_time', '1698418041'),
(600, 129, '_wp_desired_post_slug', 'top'),
(601, 131, '_edit_last', '1'),
(602, 131, '_edit_lock', '1698417946:1'),
(603, 131, '_wp_page_template', 'destination-template.php'),
(604, 133, '_edit_last', '1'),
(605, 133, '_edit_lock', '1698421749:1'),
(606, 133, '_wp_page_template', 'tips-template.php'),
(607, 135, '_menu_item_type', 'post_type'),
(608, 135, '_menu_item_menu_item_parent', '0'),
(609, 135, '_menu_item_object_id', '133'),
(610, 135, '_menu_item_object', 'page'),
(611, 135, '_menu_item_target', ''),
(612, 135, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(613, 135, '_menu_item_xfn', ''),
(614, 135, '_menu_item_url', ''),
(616, 136, '_menu_item_type', 'post_type'),
(617, 136, '_menu_item_menu_item_parent', '0'),
(618, 136, '_menu_item_object_id', '131'),
(619, 136, '_menu_item_object', 'page'),
(620, 136, '_menu_item_target', ''),
(621, 136, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(622, 136, '_menu_item_xfn', ''),
(623, 136, '_menu_item_url', ''),
(625, 137, '_edit_last', '1'),
(626, 137, '_edit_lock', '1698421525:1'),
(627, 137, '_thumbnail_id', '124'),
(628, 138, '_edit_last', '1'),
(629, 138, '_edit_lock', '1698476655:1'),
(630, 139, '_wp_attached_file', '2023/10/travel-posts.jpg'),
(631, 139, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:374;s:6:\"height\";i:221;s:4:\"file\";s:24:\"2023/10/travel-posts.jpg\";s:8:\"filesize\";i:87292;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"travel-posts-300x177.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10427;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"travel-posts-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4712;}s:13:\"custom-recent\";a:5:{s:4:\"file\";s:23:\"travel-posts-100x80.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2127;}s:12:\"custom-insta\";a:5:{s:4:\"file\";s:24:\"travel-posts-261x221.jpg\";s:5:\"width\";i:261;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11707;}s:13:\"custom-social\";a:5:{s:4:\"file\";s:22:\"travel-posts-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:642;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(632, 139, '_wp_attachment_image_alt', 'tips'),
(633, 138, '_thumbnail_id', '139'),
(634, 140, '_edit_last', '1'),
(635, 140, '_edit_lock', '1698421644:1'),
(636, 140, '_thumbnail_id', '139'),
(637, 141, '_edit_last', '1'),
(638, 141, '_edit_lock', '1698421600:1'),
(639, 141, '_thumbnail_id', '52'),
(640, 142, '_edit_last', '1'),
(641, 142, '_edit_lock', '1698498480:1'),
(642, 146, '_wp_attached_file', '2023/10/Marker-travel.png'),
(643, 146, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:37;s:6:\"height\";i:37;s:4:\"file\";s:25:\"2023/10/Marker-travel.png\";s:8:\"filesize\";i:621;s:5:\"sizes\";a:1:{s:13:\"custom-social\";a:5:{s:4:\"file\";s:23:\"Marker-travel-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:571;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(644, 147, '_wp_attached_file', '2023/10/Communication-travel.png'),
(645, 147, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:38;s:6:\"height\";i:38;s:4:\"file\";s:32:\"2023/10/Communication-travel.png\";s:8:\"filesize\";i:680;s:5:\"sizes\";a:1:{s:13:\"custom-social\";a:5:{s:4:\"file\";s:30:\"Communication-travel-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:594;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(646, 148, '_wp_attached_file', '2023/10/Star-travel.png'),
(647, 148, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:33;s:6:\"height\";i:33;s:4:\"file\";s:23:\"2023/10/Star-travel.png\";s:8:\"filesize\";i:529;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(648, 133, 'tips_card_image_1', '146'),
(649, 133, '_tips_card_image_1', 'field_653bda66866f1'),
(650, 133, 'tips_card_image_2', '147'),
(651, 133, '_tips_card_image_2', 'field_653bdad69299b'),
(652, 133, 'tips_card_image_3', '148'),
(653, 133, '_tips_card_image_3', 'field_653bdaf29299c'),
(654, 149, 'tips_card_image_1', '146'),
(655, 149, '_tips_card_image_1', 'field_653bda66866f1'),
(656, 149, 'tips_card_image_2', '147'),
(657, 149, '_tips_card_image_2', 'field_653bdad69299b'),
(658, 149, 'tips_card_image_3', '148'),
(659, 149, '_tips_card_image_3', 'field_653bdaf29299c'),
(660, 141, 'tips_card_image_1', '146'),
(661, 141, '_tips_card_image_1', 'field_653bda66866f1'),
(662, 141, 'tips_card_image_2', '147'),
(663, 141, '_tips_card_image_2', 'field_653bdad69299b'),
(664, 141, 'tips_card_image_3', '148'),
(665, 141, '_tips_card_image_3', 'field_653bdaf29299c'),
(666, 140, 'tips_card_image_1', '146'),
(667, 140, '_tips_card_image_1', 'field_653bda66866f1'),
(668, 140, 'tips_card_image_2', '147'),
(669, 140, '_tips_card_image_2', 'field_653bdad69299b'),
(670, 140, 'tips_card_image_3', '148'),
(671, 140, '_tips_card_image_3', 'field_653bdaf29299c'),
(672, 138, 'tips_card_image_1', '146'),
(673, 138, '_tips_card_image_1', 'field_653bda66866f1'),
(674, 138, 'tips_card_image_2', '147'),
(675, 138, '_tips_card_image_2', 'field_653bdad69299b'),
(676, 138, 'tips_card_image_3', '148'),
(677, 138, '_tips_card_image_3', 'field_653bdaf29299c'),
(678, 112, '_wp_trash_meta_status', 'publish'),
(679, 112, '_wp_trash_meta_time', '1698476863'),
(680, 112, '_wp_desired_post_slug', 'group_653b9b9301e5f'),
(681, 113, '_wp_trash_meta_status', 'publish'),
(682, 113, '_wp_trash_meta_time', '1698476863'),
(683, 113, '_wp_desired_post_slug', 'field_653b9b93fc779'),
(684, 114, '_wp_trash_meta_status', 'publish'),
(685, 114, '_wp_trash_meta_time', '1698476863'),
(686, 114, '_wp_desired_post_slug', 'field_653b9c35fc77a'),
(687, 115, '_wp_trash_meta_status', 'publish'),
(688, 115, '_wp_trash_meta_time', '1698476863'),
(689, 115, '_wp_desired_post_slug', 'field_653b9c4dfc77b'),
(690, 116, '_wp_trash_meta_status', 'publish'),
(691, 116, '_wp_trash_meta_time', '1698476863'),
(692, 116, '_wp_desired_post_slug', 'field_653b9c64fc77c'),
(693, 151, '_edit_last', '1'),
(694, 151, '_edit_lock', '1698478527:1'),
(695, 157, '_wp_attached_file', '2023/10/inst1.jpg'),
(696, 157, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:261;s:6:\"height\";i:296;s:4:\"file\";s:17:\"2023/10/inst1.jpg\";s:8:\"filesize\";i:82206;s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"inst1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6158;}s:13:\"custom-slider\";a:5:{s:4:\"file\";s:17:\"inst1-261x270.jpg\";s:5:\"width\";i:261;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14962;}s:13:\"custom-recent\";a:5:{s:4:\"file\";s:16:\"inst1-100x80.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3004;}s:13:\"custom-social\";a:5:{s:4:\"file\";s:15:\"inst1-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:761;}s:11:\"custom-tips\";a:5:{s:4:\"file\";s:17:\"inst1-261x221.jpg\";s:5:\"width\";i:261;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13510;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(697, 157, '_wp_attachment_image_alt', 'insta'),
(700, 159, '_wp_attached_file', '2023/10/inst2.jpg'),
(701, 159, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:261;s:6:\"height\";i:296;s:4:\"file\";s:17:\"2023/10/inst2.jpg\";s:8:\"filesize\";i:106172;s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"inst2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6267;}s:13:\"custom-slider\";a:5:{s:4:\"file\";s:17:\"inst2-261x270.jpg\";s:5:\"width\";i:261;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17596;}s:13:\"custom-recent\";a:5:{s:4:\"file\";s:16:\"inst2-100x80.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2865;}s:13:\"custom-social\";a:5:{s:4:\"file\";s:15:\"inst2-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:744;}s:11:\"custom-tips\";a:5:{s:4:\"file\";s:17:\"inst2-261x221.jpg\";s:5:\"width\";i:261;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14575;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(702, 159, '_wp_attachment_image_alt', 'insta'),
(703, 160, '_edit_last', '1'),
(704, 160, '_edit_lock', '1698478405:1'),
(705, 162, '_form', '[email* email-962 id:email placeholder \"Email adress\"]\n[submit class:button class:form-input \"Subscribe\"]'),
(706, 162, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:45:\"[_site_title] <wordpress@travel-onyx-systems>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:191:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(707, 162, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:45:\"[_site_title] <wordpress@travel-onyx-systems>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `os_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(708, 162, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(709, 162, '_additional_settings', ''),
(710, 162, '_locale', 'en_US'),
(711, 162, '_hash', '6be531a48590a1507d2b0e1029cecc4f985e88e4'),
(715, 163, '_menu_item_type', 'post_type'),
(716, 163, '_menu_item_menu_item_parent', '0'),
(717, 163, '_menu_item_object_id', '133'),
(718, 163, '_menu_item_object', 'page'),
(719, 163, '_menu_item_target', ''),
(720, 163, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(721, 163, '_menu_item_xfn', ''),
(722, 163, '_menu_item_url', ''),
(724, 164, '_menu_item_type', 'post_type'),
(725, 164, '_menu_item_menu_item_parent', '0'),
(726, 164, '_menu_item_object_id', '131'),
(727, 164, '_menu_item_object', 'page'),
(728, 164, '_menu_item_target', ''),
(729, 164, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(730, 164, '_menu_item_xfn', ''),
(731, 164, '_menu_item_url', ''),
(742, 166, '_menu_item_type', 'post_type'),
(743, 166, '_menu_item_menu_item_parent', '0'),
(744, 166, '_menu_item_object_id', '19'),
(745, 166, '_menu_item_object', 'page'),
(746, 166, '_menu_item_target', ''),
(747, 166, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(748, 166, '_menu_item_xfn', ''),
(749, 166, '_menu_item_url', ''),
(751, 167, '_wp_attached_file', '2023/10/footer-bottom-img.png'),
(752, 167, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:189;s:6:\"height\";i:41;s:4:\"file\";s:29:\"2023/10/footer-bottom-img.png\";s:8:\"filesize\";i:6641;s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"footer-bottom-img-150x41.png\";s:5:\"width\";i:150;s:6:\"height\";i:41;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6221;}s:13:\"custom-recent\";a:5:{s:4:\"file\";s:28:\"footer-bottom-img-100x41.png\";s:5:\"width\";i:100;s:6:\"height\";i:41;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4205;}s:13:\"custom-social\";a:5:{s:4:\"file\";s:27:\"footer-bottom-img-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1356;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(753, 167, '_wp_attachment_image_alt', 'foot'),
(754, 168, '_edit_lock', '1698481829:1'),
(755, 168, '_customize_restore_dismissed', '1'),
(756, 169, '_edit_lock', '1698483091:1'),
(757, 169, '_wp_trash_meta_status', 'publish'),
(758, 169, '_wp_trash_meta_time', '1698483123'),
(759, 170, '_wp_attached_file', '2023/10/social.png'),
(760, 170, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:123;s:6:\"height\";i:20;s:4:\"file\";s:18:\"2023/10/social.png\";s:8:\"filesize\";i:1355;s:5:\"sizes\";a:2:{s:13:\"custom-recent\";a:5:{s:4:\"file\";s:17:\"social-100x20.png\";s:5:\"width\";i:100;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:825;}s:13:\"custom-social\";a:5:{s:4:\"file\";s:16:\"social-32x20.png\";s:5:\"width\";i:32;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:378;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(761, 170, '_wp_attachment_image_alt', 'social'),
(762, 171, '_wp_trash_meta_status', 'publish'),
(763, 171, '_wp_trash_meta_time', '1698483258'),
(764, 172, '_edit_lock', '1698483346:1'),
(765, 172, '_wp_trash_meta_status', 'publish'),
(766, 172, '_wp_trash_meta_time', '1698483367'),
(767, 173, '_wp_trash_meta_status', 'publish'),
(768, 173, '_wp_trash_meta_time', '1698484096'),
(769, 174, '_wp_trash_meta_status', 'publish'),
(770, 174, '_wp_trash_meta_time', '1698484450'),
(771, 175, '_wp_trash_meta_status', 'publish'),
(772, 175, '_wp_trash_meta_time', '1698484632'),
(773, 162, '_config_validation', 'a:2:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";s:22:\"invalid_mailbox_syntax\";s:4:\"args\";a:3:{s:7:\"message\";s:31:\"Invalid mailbox syntax is used.\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";s:22:\"invalid_mailbox_syntax\";s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(775, 142, '_wp_trash_meta_status', 'publish'),
(776, 142, '_wp_trash_meta_time', '1698498630'),
(777, 142, '_wp_desired_post_slug', 'group_653bda655ded2'),
(778, 143, '_wp_trash_meta_status', 'publish'),
(779, 143, '_wp_trash_meta_time', '1698498630'),
(780, 143, '_wp_desired_post_slug', 'field_653bda66866f1'),
(781, 144, '_wp_trash_meta_status', 'publish'),
(782, 144, '_wp_trash_meta_time', '1698498630'),
(783, 144, '_wp_desired_post_slug', 'field_653bdad69299b'),
(784, 145, '_wp_trash_meta_status', 'publish'),
(785, 145, '_wp_trash_meta_time', '1698498630'),
(786, 145, '_wp_desired_post_slug', 'field_653bdaf29299c'),
(787, 177, 'wpd_form_custom_css', ''),
(788, 177, 'wpdiscuz_form_general_options', 'a:20:{s:4:\"lang\";s:5:\"en_US\";s:25:\"roles_cannot_see_comments\";a:0:{}s:22:\"guest_can_see_comments\";i:1;s:20:\"roles_cannot_comment\";a:0:{}s:17:\"guest_can_comment\";i:1;s:21:\"show_subscription_bar\";i:1;s:19:\"guest_can_subscribe\";i:1;s:19:\"roles_can_subscribe\";a:4:{i:0;s:6:\"editor\";i:1;s:6:\"author\";i:2;s:11:\"contributor\";i:3;s:10:\"subscriber\";}s:18:\"header_text_single\";s:7:\"Comment\";s:18:\"header_text_plural\";s:8:\"Comments\";s:24:\"wpdiscuz_form_post_types\";a:2:{s:4:\"post\";s:4:\"post\";s:8:\"dest-cpt\";s:8:\"dest-cpt\";}s:6:\"postid\";s:0:\"\";s:12:\"postidsArray\";a:0:{}s:27:\"show_subscription_agreement\";i:0;s:28:\"subscription_agreement_label\";s:119:\"I allow to use my email address and send notification about new comments and replies (you can unsubscribe at any time).\";s:5:\"theme\";s:84:\"C:/OpenServer/domains/travel-onyx-systems/wp-content/plugins/wpdiscuz/themes/default\";s:6:\"layout\";i:1;s:18:\"enable_post_rating\";i:1;s:17:\"post_rating_title\";s:14:\"Article Rating\";s:25:\"allow_guests_rate_on_post\";i:1;}'),
(789, 177, 'wpdiscuz_form_structure', 'a:1:{s:19:\"wpd-form-row-wrap_0\";a:4:{s:11:\"column_type\";s:3:\"two\";s:9:\"row_order\";i:0;s:4:\"left\";a:3:{s:7:\"wc_name\";a:9:{s:4:\"name\";s:4:\"Name\";s:4:\"desc\";s:0:\"\";s:4:\"icon\";s:11:\"fas fa-user\";s:8:\"required\";i:1;s:4:\"type\";s:35:\"wpdFormAttr\\Field\\DefaultField\\Name\";s:18:\"is_show_on_comment\";i:0;s:13:\"is_show_sform\";i:0;s:15:\"show_for_guests\";i:0;s:14:\"show_for_users\";i:0;}s:8:\"wc_email\";a:9:{s:4:\"name\";s:5:\"Email\";s:4:\"desc\";s:0:\"\";s:4:\"icon\";s:9:\"fas fa-at\";s:8:\"required\";i:1;s:4:\"type\";s:36:\"wpdFormAttr\\Field\\DefaultField\\Email\";s:18:\"is_show_on_comment\";i:0;s:13:\"is_show_sform\";i:0;s:15:\"show_for_guests\";i:0;s:14:\"show_for_users\";i:0;}s:10:\"wc_website\";a:5:{s:4:\"name\";s:7:\"Website\";s:4:\"desc\";s:0:\"\";s:4:\"icon\";s:11:\"fas fa-link\";s:6:\"enable\";i:1;s:4:\"type\";s:38:\"wpdFormAttr\\Field\\DefaultField\\Website\";}}s:5:\"right\";a:2:{s:10:\"wc_captcha\";a:5:{s:4:\"name\";s:0:\"\";s:4:\"desc\";s:0:\"\";s:15:\"show_for_guests\";s:1:\"0\";s:14:\"show_for_users\";s:1:\"0\";s:4:\"type\";s:38:\"wpdFormAttr\\Field\\DefaultField\\Captcha\";}s:6:\"submit\";a:2:{s:4:\"name\";s:12:\"Post Comment\";s:4:\"type\";s:37:\"wpdFormAttr\\Field\\DefaultField\\Submit\";}}}}'),
(790, 177, 'wpdiscuz_form_fields', 'a:5:{s:7:\"wc_name\";a:9:{s:4:\"name\";s:4:\"Name\";s:4:\"desc\";s:0:\"\";s:4:\"icon\";s:11:\"fas fa-user\";s:8:\"required\";i:1;s:4:\"type\";s:35:\"wpdFormAttr\\Field\\DefaultField\\Name\";s:18:\"is_show_on_comment\";i:0;s:13:\"is_show_sform\";i:0;s:15:\"show_for_guests\";i:0;s:14:\"show_for_users\";i:0;}s:8:\"wc_email\";a:9:{s:4:\"name\";s:5:\"Email\";s:4:\"desc\";s:0:\"\";s:4:\"icon\";s:9:\"fas fa-at\";s:8:\"required\";i:1;s:4:\"type\";s:36:\"wpdFormAttr\\Field\\DefaultField\\Email\";s:18:\"is_show_on_comment\";i:0;s:13:\"is_show_sform\";i:0;s:15:\"show_for_guests\";i:0;s:14:\"show_for_users\";i:0;}s:10:\"wc_website\";a:5:{s:4:\"name\";s:7:\"Website\";s:4:\"desc\";s:0:\"\";s:4:\"icon\";s:11:\"fas fa-link\";s:6:\"enable\";i:1;s:4:\"type\";s:38:\"wpdFormAttr\\Field\\DefaultField\\Website\";}s:10:\"wc_captcha\";a:5:{s:4:\"name\";s:0:\"\";s:4:\"desc\";s:0:\"\";s:15:\"show_for_guests\";s:1:\"0\";s:14:\"show_for_users\";s:1:\"0\";s:4:\"type\";s:38:\"wpdFormAttr\\Field\\DefaultField\\Captcha\";}s:6:\"submit\";a:2:{s:4:\"name\";s:12:\"Post Comment\";s:4:\"type\";s:37:\"wpdFormAttr\\Field\\DefaultField\\Submit\";}}'),
(791, 177, '_edit_lock', '1698500969:1'),
(792, 177, '_edit_last', '1'),
(793, 105, '_wpdiscuz_statistics', 'a:1:{s:7:\"reacted\";i:0;}'),
(794, 178, '_wp_trash_meta_status', 'publish'),
(795, 178, '_wp_trash_meta_time', '1698501532'),
(797, 180, '_edit_last', '1'),
(798, 180, '_edit_lock', '1698501992:1'),
(799, 180, '_thumbnail_id', '184'),
(800, 182, '_wp_attached_file', '2023/10/dest2.jpg'),
(801, 182, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:380;s:6:\"height\";i:360;s:4:\"file\";s:17:\"2023/10/dest2.jpg\";s:8:\"filesize\";i:110158;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"dest2-300x284.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:284;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18385;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"dest2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6967;}s:13:\"custom-slider\";a:5:{s:4:\"file\";s:17:\"dest2-380x270.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21492;}s:13:\"custom-recent\";a:5:{s:4:\"file\";s:16:\"dest2-100x80.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3396;}s:12:\"custom-insta\";a:5:{s:4:\"file\";s:17:\"dest2-261x296.jpg\";s:5:\"width\";i:261;s:6:\"height\";i:296;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16474;}s:13:\"custom-social\";a:5:{s:4:\"file\";s:15:\"dest2-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:849;}s:11:\"custom-tips\";a:5:{s:4:\"file\";s:17:\"dest2-374x221.jpg\";s:5:\"width\";i:374;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17169;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(802, 183, '_wp_attached_file', '2023/10/dest3.jpg'),
(803, 183, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:380;s:6:\"height\";i:360;s:4:\"file\";s:17:\"2023/10/dest3.jpg\";s:8:\"filesize\";i:159712;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"dest3-300x284.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:284;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24373;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"dest3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7999;}s:13:\"custom-slider\";a:5:{s:4:\"file\";s:17:\"dest3-380x270.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30446;}s:13:\"custom-recent\";a:5:{s:4:\"file\";s:16:\"dest3-100x80.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3466;}s:12:\"custom-insta\";a:5:{s:4:\"file\";s:17:\"dest3-261x296.jpg\";s:5:\"width\";i:261;s:6:\"height\";i:296;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22078;}s:13:\"custom-social\";a:5:{s:4:\"file\";s:15:\"dest3-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:836;}s:11:\"custom-tips\";a:5:{s:4:\"file\";s:17:\"dest3-374x221.jpg\";s:5:\"width\";i:374;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23262;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(804, 184, '_wp_attached_file', '2023/10/dest4.jpg'),
(805, 184, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:380;s:6:\"height\";i:360;s:4:\"file\";s:17:\"2023/10/dest4.jpg\";s:8:\"filesize\";i:154263;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"dest4-300x284.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:284;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25058;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"dest4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8130;}s:13:\"custom-slider\";a:5:{s:4:\"file\";s:17:\"dest4-380x270.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:31534;}s:13:\"custom-recent\";a:5:{s:4:\"file\";s:16:\"dest4-100x80.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3373;}s:12:\"custom-insta\";a:5:{s:4:\"file\";s:17:\"dest4-261x296.jpg\";s:5:\"width\";i:261;s:6:\"height\";i:296;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23406;}s:13:\"custom-social\";a:5:{s:4:\"file\";s:15:\"dest4-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:795;}s:11:\"custom-tips\";a:5:{s:4:\"file\";s:17:\"dest4-374x221.jpg\";s:5:\"width\";i:374;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23191;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(806, 184, '_wp_attachment_image_alt', 'dest'),
(807, 183, '_wp_attachment_image_alt', 'dest'),
(808, 182, '_wp_attachment_image_alt', 'dest'),
(809, 185, '_edit_last', '1'),
(810, 185, '_edit_lock', '1698502082:1'),
(811, 185, '_thumbnail_id', '183'),
(812, 186, '_edit_last', '1'),
(813, 186, '_edit_lock', '1698502137:1'),
(814, 186, '_thumbnail_id', '182'),
(815, 187, '_edit_last', '1'),
(816, 187, '_edit_lock', '1698502226:1'),
(817, 187, '_thumbnail_id', '124'),
(818, 188, '_edit_last', '1'),
(819, 188, '_edit_lock', '1698502913:1'),
(820, 188, '_thumbnail_id', '184'),
(822, 189, '_wp_attached_file', '2023/10/post-image.jpg'),
(823, 189, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:783;s:6:\"height\";i:443;s:4:\"file\";s:22:\"2023/10/post-image.jpg\";s:8:\"filesize\";i:269252;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"post-image-300x170.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14232;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"post-image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7277;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"post-image-768x435.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:435;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:60389;}s:13:\"custom-slider\";a:5:{s:4:\"file\";s:22:\"post-image-400x270.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24760;}s:13:\"custom-recent\";a:5:{s:4:\"file\";s:21:\"post-image-100x80.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3481;}s:12:\"custom-posts\";a:5:{s:4:\"file\";s:22:\"post-image-780x443.jpg\";s:5:\"width\";i:780;s:6:\"height\";i:443;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66227;}s:12:\"custom-insta\";a:5:{s:4:\"file\";s:22:\"post-image-261x296.jpg\";s:5:\"width\";i:261;s:6:\"height\";i:296;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17453;}s:13:\"custom-social\";a:5:{s:4:\"file\";s:20:\"post-image-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:889;}s:18:\"custom-destination\";a:5:{s:4:\"file\";s:22:\"post-image-380x360.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:28049;}s:11:\"custom-tips\";a:5:{s:4:\"file\";s:22:\"post-image-374x221.jpg\";s:5:\"width\";i:374;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21021;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(824, 189, '_wp_attachment_image_alt', 'post'),
(827, 99, '_wpdiscuz_statistics', 'a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблицы `os_posts`
--

CREATE TABLE `os_posts` (
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
-- Дамп данных таблицы `os_posts`
--

INSERT INTO `os_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-10-26 11:37:20', '2023-10-26 11:37:20', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2023-10-26 14:39:13', '2023-10-26 14:39:13', '', 0, 'http://travel-onyx-systems/?p=1', 0, 'post', '', 1),
(2, 1, '2023-10-26 11:37:20', '2023-10-26 11:37:20', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://travel-onyx-systems/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2023-10-26 13:48:34', '2023-10-26 13:48:34', '', 0, 'http://travel-onyx-systems/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-10-26 11:37:20', '2023-10-26 11:37:20', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://travel-onyx-systems.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-10-26 11:37:20', '2023-10-26 11:37:20', '', 0, 'http://travel-onyx-systems/?page_id=3', 0, 'page', '', 0),
(4, 0, '2023-10-26 11:37:25', '2023-10-26 11:37:25', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2023-10-26 11:37:25', '2023-10-26 11:37:25', '', 0, 'http://travel-onyx-systems/2023/10/26/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2023-10-26 11:37:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-10-26 11:37:47', '0000-00-00 00:00:00', '', 0, 'http://travel-onyx-systems/?p=5', 0, 'post', '', 0),
(6, 1, '2023-10-26 12:41:43', '2023-10-26 12:41:43', '', 'Logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2023-10-26 12:41:55', '2023-10-26 12:41:55', '', 0, 'http://travel-onyx-systems/wp-content/uploads/2023/10/Logo.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2023-10-26 12:42:17', '0000-00-00 00:00:00', '{\n    \"tos::custom_logo\": {\n        \"value\": 6,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 12:42:17\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'b382634b-0ee6-4d24-ab0a-c20c4cac1698', '', '', '2023-10-26 12:42:17', '0000-00-00 00:00:00', '', 0, 'http://travel-onyx-systems/?p=7', 0, 'customize_changeset', '', 0),
(8, 1, '2023-10-26 12:45:30', '2023-10-26 12:45:30', '{\n    \"tos::custom_logo\": {\n        \"value\": 6,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 12:45:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1a80738e-fbe4-4838-b77d-0be31d87b686', '', '', '2023-10-26 12:45:30', '2023-10-26 12:45:30', '', 0, 'http://travel-onyx-systems/2023/10/26/1a80738e-fbe4-4838-b77d-0be31d87b686/', 0, 'customize_changeset', '', 0),
(9, 1, '2023-10-26 12:51:53', '2023-10-26 12:51:53', '{\n    \"tos::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 12:51:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '33178156-9761-49f9-b5e0-820244e173bf', '', '', '2023-10-26 12:51:53', '2023-10-26 12:51:53', '', 0, 'http://travel-onyx-systems/2023/10/26/33178156-9761-49f9-b5e0-820244e173bf/', 0, 'customize_changeset', '', 0),
(10, 1, '2023-10-26 13:12:35', '2023-10-26 13:12:35', '{\n    \"tos::tos_custom_head_code\": {\n        \"value\": \"THE COUNTER: <span>70</span> Countries <span>1036</span> Cities\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 13:12:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '70e363ac-2b0c-4395-bdd1-61f755375860', '', '', '2023-10-26 13:12:35', '2023-10-26 13:12:35', '', 0, 'http://travel-onyx-systems/?p=10', 0, 'customize_changeset', '', 0),
(11, 1, '2023-10-26 13:13:44', '2023-10-26 13:13:44', '{\n    \"tos::tos_custom_head_code\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 13:13:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '33abdfbd-6ba2-4f58-8216-d79a001c0556', '', '', '2023-10-26 13:13:44', '2023-10-26 13:13:44', '', 0, 'http://travel-onyx-systems/2023/10/26/33abdfbd-6ba2-4f58-8216-d79a001c0556/', 0, 'customize_changeset', '', 0),
(12, 1, '2023-10-26 13:20:16', '2023-10-26 13:20:16', '{\n    \"tos::tos_custom_head_code\": {\n        \"value\": \"THE COUNTER: <span>70</span> Countries <span>1036</span> Cities\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 13:20:16\"\n    },\n    \"tos::tos_custom_subhead_code\": {\n        \"value\": \"Leave your mark on all over the world\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 13:20:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '394d2787-9e03-4fd7-a79c-95411328e1fc', '', '', '2023-10-26 13:20:16', '2023-10-26 13:20:16', '', 0, 'http://travel-onyx-systems/2023/10/26/394d2787-9e03-4fd7-a79c-95411328e1fc/', 0, 'customize_changeset', '', 0),
(13, 1, '2023-10-26 13:21:31', '2023-10-26 13:21:31', '{\n    \"tos::tos_custom_button_code\": {\n        \"value\": \"Read More\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 13:21:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '719b86c1-0468-461e-83a1-5d17a4b3872b', '', '', '2023-10-26 13:21:31', '2023-10-26 13:21:31', '', 0, 'http://travel-onyx-systems/2023/10/26/719b86c1-0468-461e-83a1-5d17a4b3872b/', 0, 'customize_changeset', '', 0),
(14, 1, '2023-10-26 13:28:14', '2023-10-26 13:28:14', '{\n    \"tos::tos_custom_bottom_code\": {\n        \"value\": \"Scroll Down to Continue\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 13:28:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c4709a56-bf80-4c53-835d-01cbcf9dfb76', '', '', '2023-10-26 13:28:14', '2023-10-26 13:28:14', '', 0, 'http://travel-onyx-systems/2023/10/26/c4709a56-bf80-4c53-835d-01cbcf9dfb76/', 0, 'customize_changeset', '', 0),
(15, 1, '2023-10-26 13:35:05', '2023-10-26 13:35:05', '', 'header-arrow', '', 'inherit', 'open', 'closed', '', 'header-arrow', '', '', '2023-10-26 13:35:23', '2023-10-26 13:35:23', '', 0, 'http://travel-onyx-systems/wp-content/uploads/2023/10/header-arrow.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2023-10-26 13:35:36', '2023-10-26 13:35:36', '{\n    \"tos::tos_custom_image\": {\n        \"value\": \"http://travel-onyx-systems/wp-content/uploads/2023/10/header-arrow.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 13:35:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1263aa10-553a-4a60-acb1-f608899324fb', '', '', '2023-10-26 13:35:36', '2023-10-26 13:35:36', '', 0, 'http://travel-onyx-systems/2023/10/26/1263aa10-553a-4a60-acb1-f608899324fb/', 0, 'customize_changeset', '', 0),
(17, 1, '2023-10-26 13:48:34', '2023-10-26 13:48:34', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://travel-onyx-systems/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-10-26 13:48:34', '2023-10-26 13:48:34', '', 2, 'http://travel-onyx-systems/?p=17', 0, 'revision', '', 0),
(18, 1, '2023-10-26 13:48:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-26 13:48:44', '0000-00-00 00:00:00', '', 0, 'http://travel-onyx-systems/?page_id=18', 0, 'page', '', 0),
(19, 1, '2023-10-26 13:50:23', '2023-10-26 13:50:23', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-10-27 09:50:16', '2023-10-27 09:50:16', '', 0, 'http://travel-onyx-systems/?page_id=19', 0, 'page', '', 0),
(20, 1, '2023-10-26 13:50:23', '2023-10-26 13:50:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-10-26 13:50:23', '2023-10-26 13:50:23', '', 19, 'http://travel-onyx-systems/?p=20', 0, 'revision', '', 0),
(21, 1, '2023-10-26 13:51:21', '2023-10-26 13:51:21', '', 'Destination', '', 'trash', 'closed', 'closed', '', 'destination__trashed', '', '', '2023-10-27 14:47:05', '2023-10-27 14:47:05', '', 0, 'http://travel-onyx-systems/?page_id=21', 0, 'page', '', 0),
(22, 1, '2023-10-26 13:51:21', '2023-10-26 13:51:21', '', 'Destination', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2023-10-26 13:51:21', '2023-10-26 13:51:21', '', 21, 'http://travel-onyx-systems/?p=22', 0, 'revision', '', 0),
(23, 1, '2023-10-26 13:51:38', '2023-10-26 13:51:38', '', 'Tips', '', 'trash', 'closed', 'closed', '', 'tips__trashed', '', '', '2023-10-27 14:47:14', '2023-10-27 14:47:14', '', 0, 'http://travel-onyx-systems/?page_id=23', 0, 'page', '', 0),
(24, 1, '2023-10-26 13:51:38', '2023-10-26 13:51:38', '', 'Tips', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-10-26 13:51:38', '2023-10-26 13:51:38', '', 23, 'http://travel-onyx-systems/?p=24', 0, 'revision', '', 0),
(25, 1, '2023-10-26 13:53:14', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-10-26 13:53:14', '0000-00-00 00:00:00', '', 0, 'http://travel-onyx-systems/?p=25', 1, 'nav_menu_item', '', 0),
(29, 1, '2023-10-26 13:53:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-10-26 13:53:20', '0000-00-00 00:00:00', '', 0, 'http://travel-onyx-systems/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2023-10-27 14:48:55', '2023-10-26 13:55:12', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2023-10-27 14:48:55', '2023-10-27 14:48:55', '', 0, 'http://travel-onyx-systems/?p=30', 1, 'nav_menu_item', '', 0),
(33, 1, '2023-10-26 14:15:02', '2023-10-26 14:15:02', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"home-page.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home page fields', 'home-page-fields', 'publish', 'closed', 'closed', '', 'group_653a732e0ae88', '', '', '2023-10-27 11:07:33', '2023-10-27 11:07:33', '', 0, 'http://travel-onyx-systems/?post_type=acf-field-group&#038;p=33', 0, 'acf-field-group', '', 0),
(34, 1, '2023-10-26 14:15:02', '2023-10-26 14:15:02', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:9:\"add image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:4:\"full\";}', 'about me image', 'about_me_image', 'publish', 'closed', 'closed', '', 'field_653a732e5ea79', '', '', '2023-10-26 14:15:02', '2023-10-26 14:15:02', '', 33, 'http://travel-onyx-systems/?post_type=acf-field&p=34', 0, 'acf-field', '', 0),
(35, 1, '2023-10-26 14:15:02', '2023-10-26 14:15:02', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:9:\"add title\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:8:\"About Me\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'about me title', 'about_me_title', 'publish', 'closed', 'closed', '', 'field_653a73865ea7a', '', '', '2023-10-26 14:15:02', '2023-10-26 14:15:02', '', 33, 'http://travel-onyx-systems/?post_type=acf-field&p=35', 1, 'acf-field', '', 0),
(36, 1, '2023-10-26 14:15:02', '2023-10-26 14:15:02', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:11:\"add content\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'about me content', 'about_me_content', 'publish', 'closed', 'closed', '', 'field_653a73c15ea7b', '', '', '2023-10-26 14:15:02', '2023-10-26 14:15:02', '', 33, 'http://travel-onyx-systems/?post_type=acf-field&p=36', 2, 'acf-field', '', 0),
(37, 1, '2023-10-26 14:15:02', '2023-10-26 14:15:02', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:16:\"add Button value\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:9:\"Read more\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'about me button value', 'about_me_button_value', 'publish', 'closed', 'closed', '', 'field_653a73f35ea7c', '', '', '2023-10-26 14:15:02', '2023-10-26 14:15:02', '', 33, 'http://travel-onyx-systems/?post_type=acf-field&p=37', 3, 'acf-field', '', 0),
(38, 1, '2023-10-26 14:15:02', '2023-10-26 14:15:02', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:14:\"add button url\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'about me button url', 'about_me_button_url', 'publish', 'closed', 'closed', '', 'field_653a74375ea7d', '', '', '2023-10-26 14:15:02', '2023-10-26 14:15:02', '', 33, 'http://travel-onyx-systems/?post_type=acf-field&p=38', 4, 'acf-field', '', 0),
(39, 1, '2023-10-26 14:16:50', '2023-10-26 14:16:50', '', 'about-image', '', 'inherit', 'open', 'closed', '', 'about-image', '', '', '2023-10-26 14:17:02', '2023-10-26 14:17:02', '', 19, 'http://travel-onyx-systems/wp-content/uploads/2023/10/about-image.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2023-10-26 14:18:32', '2023-10-26 14:18:32', '', 'Home', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-10-26 14:18:32', '2023-10-26 14:18:32', '', 19, 'http://travel-onyx-systems/?p=40', 0, 'revision', '', 0),
(41, 1, '2023-10-26 14:39:13', '2023-10-26 14:39:13', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-10-26 14:39:13', '2023-10-26 14:39:13', '', 1, 'http://travel-onyx-systems/?p=41', 0, 'revision', '', 0),
(42, 1, '2023-10-26 14:46:33', '2023-10-26 14:46:33', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.</div>', 'A traveler’s guide to Penang', '', 'publish', 'open', 'open', '', 'a-travelers-guide-to-penang-malaysia-where-to-eat-drink-sleep-and-explore', '', '', '2023-10-28 14:02:47', '2023-10-28 14:02:47', '', 0, 'http://travel-onyx-systems/?p=42', 0, 'post', '', 1),
(44, 1, '2023-10-26 14:46:33', '2023-10-26 14:46:33', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.</div>', 'A traveler’s guide to Penang, Malaysia - Where to Eat, Drink, Sleep and Explore', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2023-10-26 14:46:33', '2023-10-26 14:46:33', '', 42, 'http://travel-onyx-systems/?p=44', 0, 'revision', '', 0),
(46, 1, '2023-10-26 14:52:23', '2023-10-26 14:52:23', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.', 'Have you read The Beach by Alex?', '', 'publish', 'open', 'open', '', 'have-you-read-the-beach-by-alex', '', '', '2023-10-27 07:51:08', '2023-10-27 07:51:08', '', 0, 'http://travel-onyx-systems/?p=46', 0, 'post', '', 1),
(48, 1, '2023-10-26 14:52:23', '2023-10-26 14:52:23', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.', 'Have you read The Beach by Alex?', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2023-10-26 14:52:23', '2023-10-26 14:52:23', '', 46, 'http://travel-onyx-systems/?p=48', 0, 'revision', '', 0),
(49, 1, '2023-10-26 14:54:20', '2023-10-26 14:54:20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.', 'The writer actually live in Philippines', '', 'publish', 'open', 'open', '', 'the-writer-actually-live-in-philippines', '', '', '2023-10-27 07:52:41', '2023-10-27 07:52:41', '', 0, 'http://travel-onyx-systems/?p=49', 0, 'post', '', 1),
(51, 1, '2023-10-26 14:54:20', '2023-10-26 14:54:20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.', 'The writer actually live in Philippines', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2023-10-26 14:54:20', '2023-10-26 14:54:20', '', 49, 'http://travel-onyx-systems/?p=51', 0, 'revision', '', 0),
(52, 1, '2023-10-27 07:50:52', '2023-10-27 07:50:52', '', 'front-big-post', '', 'inherit', 'open', 'closed', '', 'front-big-post', '', '', '2023-10-27 07:51:02', '2023-10-27 07:51:02', '', 46, 'http://travel-onyx-systems/wp-content/uploads/2023/10/front-big-post.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2023-10-27 07:52:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-10-27 07:52:50', '0000-00-00 00:00:00', '', 0, 'http://travel-onyx-systems/?p=53', 0, 'post', '', 0),
(61, 1, '2023-10-27 08:35:44', '2023-10-27 08:35:44', '', 'Home', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-10-27 08:35:44', '2023-10-27 08:35:44', '', 19, 'http://travel-onyx-systems/?p=61', 0, 'revision', '', 0),
(62, 1, '2023-10-27 08:38:14', '2023-10-27 08:38:14', '', 'facebook', '', 'inherit', 'open', 'closed', '', 'facebook', '', '', '2023-10-27 08:38:23', '2023-10-27 08:38:23', '', 19, 'http://travel-onyx-systems/wp-content/uploads/2023/10/facebook.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2023-10-27 08:39:23', '2023-10-27 08:39:23', '', 'twitter', '', 'inherit', 'open', 'closed', '', 'twitter', '', '', '2023-10-27 08:39:32', '2023-10-27 08:39:32', '', 19, 'http://travel-onyx-systems/wp-content/uploads/2023/10/twitter.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2023-10-27 08:39:53', '2023-10-27 08:39:53', '', 'youtube', '', 'inherit', 'open', 'closed', '', 'youtube', '', '', '2023-10-27 08:40:02', '2023-10-27 08:40:02', '', 19, 'http://travel-onyx-systems/wp-content/uploads/2023/10/youtube.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2023-10-27 08:40:26', '2023-10-27 08:40:26', '', 'instagramm', '', 'inherit', 'open', 'closed', '', 'instagramm', '', '', '2023-10-27 08:40:36', '2023-10-27 08:40:36', '', 19, 'http://travel-onyx-systems/wp-content/uploads/2023/10/instagramm.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2023-10-27 08:41:08', '2023-10-27 08:41:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-10-27 08:41:08', '2023-10-27 08:41:08', '', 19, 'http://travel-onyx-systems/?p=66', 0, 'revision', '', 0),
(67, 1, '2023-10-27 08:47:31', '2023-10-27 08:47:31', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:18:\"add facebook image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:4:\"full\";}', 'social facebook image', 'social_facebook_image', 'publish', 'closed', 'closed', '', 'field_653b783d46fd1', '', '', '2023-10-27 08:47:31', '2023-10-27 08:47:31', '', 33, 'http://travel-onyx-systems/?post_type=acf-field&p=67', 5, 'acf-field', '', 0),
(68, 1, '2023-10-27 08:47:31', '2023-10-27 08:47:31', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:18:\"add facebook value\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'social facebook text', 'social_facebook_text', 'publish', 'closed', 'closed', '', 'field_653b786f46fd2', '', '', '2023-10-27 08:47:31', '2023-10-27 08:47:31', '', 33, 'http://travel-onyx-systems/?post_type=acf-field&p=68', 6, 'acf-field', '', 0),
(69, 1, '2023-10-27 08:47:31', '2023-10-27 08:47:31', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:17:\"add twitter image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'social twitter image', 'social_twitter_image', 'publish', 'closed', 'closed', '', 'field_653b788a46fd3', '', '', '2023-10-27 08:47:31', '2023-10-27 08:47:31', '', 33, 'http://travel-onyx-systems/?post_type=acf-field&p=69', 7, 'acf-field', '', 0),
(70, 1, '2023-10-27 08:47:31', '2023-10-27 08:47:31', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:17:\"add twitter value\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'social twitter text', 'social_twitter_text', 'publish', 'closed', 'closed', '', 'field_653b78a946fd4', '', '', '2023-10-27 08:47:31', '2023-10-27 08:47:31', '', 33, 'http://travel-onyx-systems/?post_type=acf-field&p=70', 8, 'acf-field', '', 0),
(71, 1, '2023-10-27 08:47:31', '2023-10-27 08:47:31', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:17:\"add youtube image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'social youtube image', 'social_youtube_image', 'publish', 'closed', 'closed', '', 'field_653b78c046fd5', '', '', '2023-10-27 08:47:31', '2023-10-27 08:47:31', '', 33, 'http://travel-onyx-systems/?post_type=acf-field&p=71', 9, 'acf-field', '', 0),
(72, 1, '2023-10-27 08:47:31', '2023-10-27 08:47:31', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:16:\"add youtube text\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'social youtube text', 'social_youtube_text', 'publish', 'closed', 'closed', '', 'field_653b78d846fd6', '', '', '2023-10-27 08:47:31', '2023-10-27 08:47:31', '', 33, 'http://travel-onyx-systems/?post_type=acf-field&p=72', 10, 'acf-field', '', 0),
(73, 1, '2023-10-27 08:47:31', '2023-10-27 08:47:31', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:20:\"add instagramm image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:4:\"full\";}', 'social instagramm image', 'social_instagramm_image', 'publish', 'closed', 'closed', '', 'field_653b78ee46fd7', '', '', '2023-10-27 08:47:31', '2023-10-27 08:47:31', '', 33, 'http://travel-onyx-systems/?post_type=acf-field&p=73', 11, 'acf-field', '', 0),
(74, 1, '2023-10-27 08:47:31', '2023-10-27 08:47:31', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:20:\"add instagramm value\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'social instagramm value', 'social_instagramm_value', 'publish', 'closed', 'closed', '', 'field_653b790b46fd8', '', '', '2023-10-27 08:47:31', '2023-10-27 08:47:31', '', 33, 'http://travel-onyx-systems/?post_type=acf-field&p=74', 12, 'acf-field', '', 0),
(75, 1, '2023-10-27 08:52:58', '2023-10-27 08:52:58', '', 'Home', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-10-27 08:52:58', '2023-10-27 08:52:58', '', 19, 'http://travel-onyx-systems/?p=75', 0, 'revision', '', 0),
(76, 1, '2023-10-27 08:56:53', '2023-10-27 08:56:53', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:17:\"add facebook link\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'social facebook link', 'social_facebook_link', 'publish', 'closed', 'closed', '', 'field_653b7ac5be709', '', '', '2023-10-27 08:56:53', '2023-10-27 08:56:53', '', 33, 'http://travel-onyx-systems/?post_type=acf-field&p=76', 13, 'acf-field', '', 0),
(77, 1, '2023-10-27 08:56:53', '2023-10-27 08:56:53', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:15:\"add twitter url\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'social twitter link', 'social_twitter_link', 'publish', 'closed', 'closed', '', 'field_653b7aecbe70a', '', '', '2023-10-27 08:56:53', '2023-10-27 08:56:53', '', 33, 'http://travel-onyx-systems/?post_type=acf-field&p=77', 14, 'acf-field', '', 0),
(78, 1, '2023-10-27 08:56:53', '2023-10-27 08:56:53', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:16:\"add youtube link\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'social youtube link', 'social_youtube_link', 'publish', 'closed', 'closed', '', 'field_653b7b0cbe70b', '', '', '2023-10-27 08:56:53', '2023-10-27 08:56:53', '', 33, 'http://travel-onyx-systems/?post_type=acf-field&p=78', 15, 'acf-field', '', 0),
(79, 1, '2023-10-27 08:56:53', '2023-10-27 08:56:53', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:19:\"add instagramm link\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'social instagramm link', 'social_instagramm_link', 'publish', 'closed', 'closed', '', 'field_653b7b38be70c', '', '', '2023-10-27 08:56:53', '2023-10-27 08:56:53', '', 33, 'http://travel-onyx-systems/?post_type=acf-field&p=79', 16, 'acf-field', '', 0),
(80, 1, '2023-10-27 09:01:07', '2023-10-27 09:01:07', '', 'Home', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-10-27 09:01:07', '2023-10-27 09:01:07', '', 19, 'http://travel-onyx-systems/?p=80', 0, 'revision', '', 0),
(85, 1, '2023-10-27 09:40:36', '2023-10-27 09:40:36', '', 'front-banner', '', 'inherit', 'open', 'closed', '', 'front-banner', '', '', '2023-10-27 09:40:49', '2023-10-27 09:40:49', '', 19, 'http://travel-onyx-systems/wp-content/uploads/2023/10/front-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2023-10-27 09:42:09', '2023-10-27 09:42:09', '', 'Home', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-10-27 09:42:09', '2023-10-27 09:42:09', '', 19, 'http://travel-onyx-systems/?p=86', 0, 'revision', '', 0),
(87, 1, '2023-10-27 09:50:16', '2023-10-27 09:50:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-10-27 09:50:16', '2023-10-27 09:50:16', '', 19, 'http://travel-onyx-systems/?p=87', 0, 'revision', '', 0),
(88, 1, '2023-10-27 10:50:16', '2023-10-27 10:50:16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.', 'Finding Love & home in Tbilisi, Georgia', '', 'publish', 'open', 'open', '', 'finding-love-home-in-tbilisi-georgia', '', '', '2023-10-27 10:50:16', '2023-10-27 10:50:16', '', 0, 'http://travel-onyx-systems/?p=88', 0, 'post', '', 0),
(89, 1, '2023-10-27 10:50:16', '2023-10-27 10:50:16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.', 'Finding Love & home in Tbilisi, Georgia', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2023-10-27 10:50:16', '2023-10-27 10:50:16', '', 88, 'http://travel-onyx-systems/?p=89', 0, 'revision', '', 0),
(90, 1, '2023-10-27 10:52:30', '2023-10-27 10:52:30', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.', 'Finding Love & home in Tbilisi, Georgia', '', 'publish', 'open', 'open', '', 'finding-love-home-in-tbilisi-georgia-2', '', '', '2023-10-27 10:52:30', '2023-10-27 10:52:30', '', 0, 'http://travel-onyx-systems/?p=90', 0, 'post', '', 0),
(91, 1, '2023-10-27 10:52:30', '2023-10-27 10:52:30', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.', 'Finding Love & home in Tbilisi, Georgia', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2023-10-27 10:52:30', '2023-10-27 10:52:30', '', 90, 'http://travel-onyx-systems/?p=91', 0, 'revision', '', 0),
(92, 1, '2023-10-27 10:54:00', '2023-10-27 10:54:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.', 'A traveler’s guide to Penang, Malaysia - Where to Eat, Drink, Sleep and Explore', '', 'publish', 'open', 'open', '', 'a-travelers-guide-to-penang-malaysia-where-to-eat-drink-sleep-and-explore-2', '', '', '2023-10-27 10:54:00', '2023-10-27 10:54:00', '', 0, 'http://travel-onyx-systems/?p=92', 0, 'post', '', 0),
(93, 1, '2023-10-27 10:54:00', '2023-10-27 10:54:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.', 'A traveler’s guide to Penang, Malaysia - Where to Eat, Drink, Sleep and Explore', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2023-10-27 10:54:00', '2023-10-27 10:54:00', '', 92, 'http://travel-onyx-systems/?p=93', 0, 'revision', '', 0),
(94, 1, '2023-10-27 10:54:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-10-27 10:54:11', '0000-00-00 00:00:00', '', 0, 'http://travel-onyx-systems/?p=94', 0, 'post', '', 0),
(95, 1, '2023-10-27 10:55:06', '2023-10-27 10:55:06', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.', 'A traveler’s guide to Penang, Malaysia - Where to Eat, Drink, Sleep and Explore', '', 'publish', 'open', 'open', '', 'a-travelers-guide-to-penang-malaysia-where-to-eat-drink-sleep-and-explore-3', '', '', '2023-10-27 10:55:06', '2023-10-27 10:55:06', '', 0, 'http://travel-onyx-systems/?p=95', 0, 'post', '', 0),
(96, 1, '2023-10-27 10:55:06', '2023-10-27 10:55:06', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.', 'A traveler’s guide to Penang, Malaysia - Where to Eat, Drink, Sleep and Explore', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2023-10-27 10:55:06', '2023-10-27 10:55:06', '', 95, 'http://travel-onyx-systems/?p=96', 0, 'revision', '', 0),
(97, 1, '2023-10-27 10:56:18', '2023-10-27 10:56:18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.', 'A traveler’s guide to Penang, Malaysia - Where to Eat, Drink, Sleep and Explore', '', 'publish', 'open', 'open', '', 'a-travelers-guide-to-penang-malaysia-where-to-eat-drink-sleep-and-explore-4', '', '', '2023-10-27 10:56:18', '2023-10-27 10:56:18', '', 0, 'http://travel-onyx-systems/?p=97', 0, 'post', '', 0),
(98, 1, '2023-10-27 10:56:18', '2023-10-27 10:56:18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.', 'A traveler’s guide to Penang, Malaysia - Where to Eat, Drink, Sleep and Explore', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2023-10-27 10:56:18', '2023-10-27 10:56:18', '', 97, 'http://travel-onyx-systems/?p=98', 0, 'revision', '', 0),
(99, 1, '2023-10-27 10:57:16', '2023-10-27 10:57:16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.', 'A traveler’s guide to Penang, Malaysia - Where to Eat, Drink, Sleep and Explore', '', 'publish', 'open', 'open', '', 'a-travelers-guide-to-penang-malaysia-where-to-eat-drink-sleep-and-explore-5', '', '', '2023-10-28 14:27:35', '2023-10-28 14:27:35', '', 0, 'http://travel-onyx-systems/?p=99', 0, 'post', '', 2),
(100, 1, '2023-10-27 10:57:16', '2023-10-27 10:57:16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.', 'A traveler’s guide to Penang, Malaysia - Where to Eat, Drink, Sleep and Explore', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2023-10-27 10:57:16', '2023-10-27 10:57:16', '', 99, 'http://travel-onyx-systems/?p=100', 0, 'revision', '', 0),
(101, 1, '2023-10-27 10:58:00', '2023-10-27 10:58:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.', 'A traveler’s guide to Penang, Malaysia - Where to Eat, Drink, Sleep and Explore', '', 'publish', 'open', 'open', '', 'a-travelers-guide-to-penang-malaysia-where-to-eat-drink-sleep-and-explore-6', '', '', '2023-10-27 10:58:00', '2023-10-27 10:58:00', '', 0, 'http://travel-onyx-systems/?p=101', 0, 'post', '', 0),
(102, 1, '2023-10-27 10:58:00', '2023-10-27 10:58:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.', 'A traveler’s guide to Penang, Malaysia - Where to Eat, Drink, Sleep and Explore', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2023-10-27 10:58:00', '2023-10-27 10:58:00', '', 101, 'http://travel-onyx-systems/?p=102', 0, 'revision', '', 0),
(103, 1, '2023-10-27 10:58:44', '2023-10-27 10:58:44', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.', 'A traveler’s guide to Penang, Malaysia - Where to Eat, Drink, Sleep and Explore', '', 'publish', 'open', 'open', '', 'a-travelers-guide-to-penang-malaysia-where-to-eat-drink-sleep-and-explore-7', '', '', '2023-10-28 14:26:04', '2023-10-28 14:26:04', '', 0, 'http://travel-onyx-systems/?p=103', 0, 'post', '', 0),
(104, 1, '2023-10-27 10:58:44', '2023-10-27 10:58:44', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.', 'A traveler’s guide to Penang, Malaysia - Where to Eat, Drink, Sleep and Explore', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2023-10-27 10:58:44', '2023-10-27 10:58:44', '', 103, 'http://travel-onyx-systems/?p=104', 0, 'revision', '', 0),
(105, 1, '2023-10-27 10:59:48', '2023-10-27 10:59:48', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.', 'A traveler’s guide to Penang, Malaysia - Where to Eat, Drink, Sleep and Explore', '', 'publish', 'open', 'open', '', 'a-travelers-guide-to-penang-malaysia-where-to-eat-drink-sleep-and-explore-8', '', '', '2023-10-27 10:59:48', '2023-10-27 10:59:48', '', 0, 'http://travel-onyx-systems/?p=105', 0, 'post', '', 2),
(106, 1, '2023-10-27 10:59:48', '2023-10-27 10:59:48', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.', 'A traveler’s guide to Penang, Malaysia - Where to Eat, Drink, Sleep and Explore', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2023-10-27 10:59:48', '2023-10-27 10:59:48', '', 105, 'http://travel-onyx-systems/?p=106', 0, 'revision', '', 0),
(107, 1, '2023-10-27 11:11:16', '2023-10-27 11:11:16', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'posts fields', 'posts-fields', 'trash', 'closed', 'closed', '', 'group_653b9a053f195__trashed', '', '', '2023-10-27 11:13:22', '2023-10-27 11:13:22', '', 0, 'http://travel-onyx-systems/?post_type=acf-field-group&#038;p=107', 0, 'acf-field-group', '', 0),
(108, 1, '2023-10-27 11:11:16', '2023-10-27 11:11:16', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:16:\"add banner image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:4:\"full\";}', 'banner image', 'banner_image', 'trash', 'closed', 'closed', '', 'field_653b9a0566c83__trashed', '', '', '2023-10-27 11:13:22', '2023-10-27 11:13:22', '', 107, 'http://travel-onyx-systems/?post_type=acf-field&#038;p=108', 0, 'acf-field', '', 0),
(109, 1, '2023-10-27 11:11:16', '2023-10-27 11:11:16', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:15:\"add banner text\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'banner text', 'banner_text', 'trash', 'closed', 'closed', '', 'field_653b9a2e66c84__trashed', '', '', '2023-10-27 11:13:22', '2023-10-27 11:13:22', '', 107, 'http://travel-onyx-systems/?post_type=acf-field&#038;p=109', 1, 'acf-field', '', 0);
INSERT INTO `os_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(110, 1, '2023-10-27 11:11:16', '2023-10-27 11:11:16', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:23:\"add banner button value\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'banner button value', 'banner_button_value', 'trash', 'closed', 'closed', '', 'field_653b9aa266c85__trashed', '', '', '2023-10-27 11:13:22', '2023-10-27 11:13:22', '', 107, 'http://travel-onyx-systems/?post_type=acf-field&#038;p=110', 2, 'acf-field', '', 0),
(111, 1, '2023-10-27 11:11:16', '2023-10-27 11:11:16', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:22:\"add banner button link\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'banner button link', 'banner_button_link', 'trash', 'closed', 'closed', '', 'field_653b9abc66c86__trashed', '', '', '2023-10-27 11:13:22', '2023-10-27 11:13:22', '', 107, 'http://travel-onyx-systems/?post_type=acf-field&#038;p=111', 3, 'acf-field', '', 0),
(112, 1, '2023-10-27 11:18:19', '2023-10-27 11:18:19', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"theme-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Banner fields', 'banner-fields', 'trash', 'closed', 'closed', '', 'group_653b9b9301e5f__trashed', '', '', '2023-10-28 07:07:43', '2023-10-28 07:07:43', '', 0, 'http://travel-onyx-systems/?post_type=acf-field-group&#038;p=112', 0, 'acf-field-group', '', 0),
(113, 1, '2023-10-27 11:18:19', '2023-10-27 11:18:19', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'banner image', 'banner_image', 'trash', 'closed', 'closed', '', 'field_653b9b93fc779__trashed', '', '', '2023-10-28 07:07:43', '2023-10-28 07:07:43', '', 112, 'http://travel-onyx-systems/?post_type=acf-field&#038;p=113', 0, 'acf-field', '', 0),
(114, 1, '2023-10-27 11:18:19', '2023-10-27 11:18:19', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:15:\"add banner text\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'banner text', 'banner_text', 'trash', 'closed', 'closed', '', 'field_653b9c35fc77a__trashed', '', '', '2023-10-28 07:07:43', '2023-10-28 07:07:43', '', 112, 'http://travel-onyx-systems/?post_type=acf-field&#038;p=114', 1, 'acf-field', '', 0),
(115, 1, '2023-10-27 11:18:19', '2023-10-27 11:18:19', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:23:\"add banner button value\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'bannet button value', 'bannet_button_value', 'trash', 'closed', 'closed', '', 'field_653b9c4dfc77b__trashed', '', '', '2023-10-28 07:07:43', '2023-10-28 07:07:43', '', 112, 'http://travel-onyx-systems/?post_type=acf-field&#038;p=115', 2, 'acf-field', '', 0),
(116, 1, '2023-10-27 11:18:19', '2023-10-27 11:18:19', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:22:\"add banner button link\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'bannet button link', 'bannet_button_link', 'trash', 'closed', 'closed', '', 'field_653b9c64fc77c__trashed', '', '', '2023-10-28 07:07:43', '2023-10-28 07:07:43', '', 112, 'http://travel-onyx-systems/?post_type=acf-field&#038;p=116', 3, 'acf-field', '', 0),
(117, 1, '2023-10-27 11:29:08', '2023-10-27 11:29:08', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"theme-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Banner fields', 'banner-fields', 'publish', 'closed', 'closed', '', 'group_653b9e7133a3d', '', '', '2023-10-28 07:08:26', '2023-10-28 07:08:26', '', 0, 'http://travel-onyx-systems/?post_type=acf-field-group&#038;p=117', 0, 'acf-field-group', '', 0),
(118, 1, '2023-10-27 11:29:07', '2023-10-27 11:29:07', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:16:\"add banner image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:4:\"full\";}', 'banner image', 'banner_image', 'publish', 'closed', 'closed', '', 'field_653b9e71f9dd5', '', '', '2023-10-27 11:29:07', '2023-10-27 11:29:07', '', 117, 'http://travel-onyx-systems/?post_type=acf-field&p=118', 0, 'acf-field', '', 0),
(119, 1, '2023-10-27 11:29:07', '2023-10-27 11:29:07', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:15:\"add banner text\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'banner text', 'banner_text', 'publish', 'closed', 'closed', '', 'field_653b9eaef9dd6', '', '', '2023-10-27 11:29:07', '2023-10-27 11:29:07', '', 117, 'http://travel-onyx-systems/?post_type=acf-field&p=119', 1, 'acf-field', '', 0),
(120, 1, '2023-10-27 11:29:08', '2023-10-27 11:29:08', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:11:\"Place Order\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'banner button value', 'banner_button_value', 'publish', 'closed', 'closed', '', 'field_653b9ec5f9dd7', '', '', '2023-10-27 11:29:08', '2023-10-27 11:29:08', '', 117, 'http://travel-onyx-systems/?post_type=acf-field&p=120', 2, 'acf-field', '', 0),
(121, 1, '2023-10-27 11:29:08', '2023-10-27 11:29:08', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:22:\"add banner button link\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'banner button link', 'banner_button_link', 'publish', 'closed', 'closed', '', 'field_653b9ee9f9dd8', '', '', '2023-10-27 11:29:08', '2023-10-27 11:29:08', '', 117, 'http://travel-onyx-systems/?post_type=acf-field&p=121', 3, 'acf-field', '', 0),
(122, 1, '2023-10-27 12:28:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2023-10-27 12:28:14', '0000-00-00 00:00:00', '', 0, 'http://travel-onyx-systems/?post_type=destination&p=122', 0, 'destination', '', 0),
(123, 1, '2023-10-27 13:20:29', '2023-10-27 13:20:29', 'Matsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one of', 'Matsumoto castle is considered one of', '', 'publish', 'open', 'closed', '', 'matsumoto-castle-is-considered-one-of', '', '', '2023-10-27 13:20:29', '2023-10-27 13:20:29', '', 0, 'http://travel-onyx-systems/?post_type=destination&#038;p=123', 0, 'destination', '', 0),
(124, 1, '2023-10-27 13:19:54', '2023-10-27 13:19:54', '', 'destination-image', '', 'inherit', 'open', 'closed', '', 'destination-image', '', '', '2023-10-27 13:20:04', '2023-10-27 13:20:04', '', 123, 'http://travel-onyx-systems/wp-content/uploads/2023/10/destination-image.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2023-10-27 13:21:29', '2023-10-27 13:21:29', 'Matsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one of', 'Matsumoto castle is considered one of', '', 'publish', 'open', 'closed', '', 'matsumoto-castle-is-considered-one-of-2', '', '', '2023-10-27 13:21:40', '2023-10-27 13:21:40', '', 0, 'http://travel-onyx-systems/?post_type=destination&#038;p=125', 0, 'destination', '', 1),
(126, 1, '2023-10-27 13:22:29', '2023-10-27 13:22:29', 'Matsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one of', 'Matsumoto castle is considered one of', '', 'publish', 'open', 'closed', '', 'matsumoto-castle-is-considered-one-of-3', '', '', '2023-10-27 13:22:29', '2023-10-27 13:22:29', '', 0, 'http://travel-onyx-systems/?post_type=destination&#038;p=126', 0, 'destination', '', 0),
(129, 1, '2023-10-27 14:46:24', '2023-10-27 14:46:24', '', 'top', '', 'trash', 'closed', 'closed', '', 'top__trashed', '', '', '2023-10-27 14:47:21', '2023-10-27 14:47:21', '', 0, 'http://travel-onyx-systems/?page_id=129', 0, 'page', '', 0),
(130, 1, '2023-10-27 14:46:24', '2023-10-27 14:46:24', '', 'top', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2023-10-27 14:46:24', '2023-10-27 14:46:24', '', 129, 'http://travel-onyx-systems/?p=130', 0, 'revision', '', 0),
(131, 1, '2023-10-27 14:47:47', '2023-10-27 14:47:47', '', 'Destination', '', 'publish', 'closed', 'closed', '', 'destination', '', '', '2023-10-27 14:47:47', '2023-10-27 14:47:47', '', 0, 'http://travel-onyx-systems/?page_id=131', 0, 'page', '', 0),
(132, 1, '2023-10-27 14:47:47', '2023-10-27 14:47:47', '', 'Destination', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2023-10-27 14:47:47', '2023-10-27 14:47:47', '', 131, 'http://travel-onyx-systems/?p=132', 0, 'revision', '', 0),
(133, 1, '2023-10-27 14:48:20', '2023-10-27 14:48:20', '', 'Tips', '', 'publish', 'closed', 'closed', '', 'tips', '', '', '2023-10-27 15:46:48', '2023-10-27 15:46:48', '', 0, 'http://travel-onyx-systems/?page_id=133', 0, 'page', '', 0),
(134, 1, '2023-10-27 14:48:20', '2023-10-27 14:48:20', '', 'Tips', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2023-10-27 14:48:20', '2023-10-27 14:48:20', '', 133, 'http://travel-onyx-systems/?p=134', 0, 'revision', '', 0),
(135, 1, '2023-10-27 14:48:56', '2023-10-27 14:48:56', ' ', '', '', 'publish', 'closed', 'closed', '', '135', '', '', '2023-10-27 14:48:56', '2023-10-27 14:48:56', '', 0, 'http://travel-onyx-systems/?p=135', 3, 'nav_menu_item', '', 0),
(136, 1, '2023-10-27 14:48:55', '2023-10-27 14:48:55', ' ', '', '', 'publish', 'closed', 'closed', '', '136', '', '', '2023-10-27 14:48:55', '2023-10-27 14:48:55', '', 0, 'http://travel-onyx-systems/?p=136', 2, 'nav_menu_item', '', 0),
(137, 1, '2023-10-27 15:01:30', '2023-10-27 15:01:30', 'Matsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one of', 'Matsumoto castle is considered one of', '', 'publish', 'open', 'closed', '', 'matsumoto-castle-is-considered-one-of', '', '', '2023-10-27 15:06:56', '2023-10-27 15:06:56', '', 0, 'http://travel-onyx-systems/?post_type=dest-cpt&#038;p=137', 0, 'dest-cpt', '', 0),
(138, 1, '2023-10-27 15:19:02', '2023-10-27 15:19:02', 'Going to the Extreme -The Northern PoleGoing to the Extreme -The Northern PoleGoing to the Extreme -The Northern PoleGoing to the Extreme -The Northern PoleGoing to the Extreme -The Northern PoleGoing to the Extreme -The Northern Pole', 'Going to the Extreme -The Northern Pole', '', 'publish', 'closed', 'closed', '', 'going-to-the-extreme-the-northern-pole', '', '', '2023-10-27 15:50:19', '2023-10-27 15:50:19', '', 0, 'http://travel-onyx-systems/?post_type=tips-cpt&#038;p=138', 0, 'tips-cpt', '', 0),
(139, 1, '2023-10-27 15:18:44', '2023-10-27 15:18:44', '', 'travel-posts', '', 'inherit', 'open', 'closed', '', 'travel-posts', '', '', '2023-10-27 15:18:52', '2023-10-27 15:18:52', '', 138, 'http://travel-onyx-systems/wp-content/uploads/2023/10/travel-posts.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2023-10-27 15:38:15', '2023-10-27 15:38:15', 'Going to the Extreme -The Northern PoleGoing to the Extreme -The Northern PoleGoing to the Extreme -The Northern PoleGoing to the Extreme -The Northern PoleGoing to the Extreme -The Northern PoleGoing to the Extreme -The Northern Pole', 'Going to the Extreme -The Northern Pole', '', 'publish', 'closed', 'closed', '', 'going-to-the-extreme-the-northern-pole-2', '', '', '2023-10-27 15:49:34', '2023-10-27 15:49:34', '', 0, 'http://travel-onyx-systems/?post_type=tips-cpt&#038;p=140', 0, 'tips-cpt', '', 0),
(141, 1, '2023-10-27 15:40:39', '2023-10-27 15:40:39', 'Going to the Extreme -The Northern PoleGoing to the Extreme -The Northern PoleGoing to the Extreme -The Northern PoleGoing to the Extreme -The Northern PoleGoing to the Extreme -The Northern Pole', 'Going to the Extreme -The Northern Pole', '', 'publish', 'closed', 'closed', '', 'going-to-the-extreme-the-northern-pole-3', '', '', '2023-10-27 15:48:55', '2023-10-27 15:48:55', '', 0, 'http://travel-onyx-systems/?post_type=tips-cpt&#038;p=141', 0, 'tips-cpt', '', 0),
(142, 1, '2023-10-27 15:43:46', '2023-10-27 15:43:46', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"tips-cpt\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'tips fields', 'tips-fields', 'trash', 'closed', 'closed', '', 'group_653bda655ded2__trashed', '', '', '2023-10-28 13:10:30', '2023-10-28 13:10:30', '', 0, 'http://travel-onyx-systems/?post_type=acf-field-group&#038;p=142', 0, 'acf-field-group', '', 0),
(143, 1, '2023-10-27 15:43:46', '2023-10-27 15:43:46', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:19:\"add tips card image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:4:\"full\";}', 'tips card image 1', 'tips_card_image_1', 'trash', 'closed', 'closed', '', 'field_653bda66866f1__trashed', '', '', '2023-10-28 13:10:30', '2023-10-28 13:10:30', '', 142, 'http://travel-onyx-systems/?post_type=acf-field&#038;p=143', 0, 'acf-field', '', 0),
(144, 1, '2023-10-27 15:45:23', '2023-10-27 15:45:23', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:19:\"add tips card image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:4:\"full\";}', 'tips card image 2', 'tips_card_image_2', 'trash', 'closed', 'closed', '', 'field_653bdad69299b__trashed', '', '', '2023-10-28 13:10:30', '2023-10-28 13:10:30', '', 142, 'http://travel-onyx-systems/?post_type=acf-field&#038;p=144', 1, 'acf-field', '', 0),
(145, 1, '2023-10-27 15:45:23', '2023-10-27 15:45:23', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:19:\"add tips card image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:4:\"full\";}', 'tips card image 3', 'tips_card_image_3', 'trash', 'closed', 'closed', '', 'field_653bdaf29299c__trashed', '', '', '2023-10-28 13:10:30', '2023-10-28 13:10:30', '', 142, 'http://travel-onyx-systems/?post_type=acf-field&#038;p=145', 2, 'acf-field', '', 0),
(146, 1, '2023-10-27 15:46:09', '2023-10-27 15:46:09', '', 'Marker-travel', '', 'inherit', 'open', 'closed', '', 'marker-travel', '', '', '2023-10-27 15:46:09', '2023-10-27 15:46:09', '', 133, 'http://travel-onyx-systems/wp-content/uploads/2023/10/Marker-travel.png', 0, 'attachment', 'image/png', 0),
(147, 1, '2023-10-27 15:46:25', '2023-10-27 15:46:25', '', 'Communication-travel', '', 'inherit', 'open', 'closed', '', 'communication-travel', '', '', '2023-10-27 15:46:25', '2023-10-27 15:46:25', '', 133, 'http://travel-onyx-systems/wp-content/uploads/2023/10/Communication-travel.png', 0, 'attachment', 'image/png', 0),
(148, 1, '2023-10-27 15:46:36', '2023-10-27 15:46:36', '', 'Star-travel', '', 'inherit', 'open', 'closed', '', 'star-travel', '', '', '2023-10-27 15:46:36', '2023-10-27 15:46:36', '', 133, 'http://travel-onyx-systems/wp-content/uploads/2023/10/Star-travel.png', 0, 'attachment', 'image/png', 0),
(149, 1, '2023-10-27 15:46:48', '2023-10-27 15:46:48', '', 'Tips', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2023-10-27 15:46:48', '2023-10-27 15:46:48', '', 133, 'http://travel-onyx-systems/?p=149', 0, 'revision', '', 0),
(150, 1, '2023-10-28 07:05:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-28 07:05:12', '0000-00-00 00:00:00', '', 0, 'http://travel-onyx-systems/?post_type=acf-field-group&p=150', 0, 'acf-field-group', '', 0),
(151, 1, '2023-10-28 07:13:41', '2023-10-28 07:13:41', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"theme-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Instagram fields', 'instagram-fields', 'publish', 'closed', 'closed', '', 'group_653cb37a5f25a', '', '', '2023-10-28 07:22:41', '2023-10-28 07:22:41', '', 0, 'http://travel-onyx-systems/?post_type=acf-field-group&#038;p=151', 0, 'acf-field-group', '', 0),
(152, 1, '2023-10-28 07:13:41', '2023-10-28 07:13:41', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";i:8;s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'instagram_repeater', 'instagram_repeater', 'publish', 'closed', 'closed', '', 'field_653cb37a4707f', '', '', '2023-10-28 07:13:41', '2023-10-28 07:13:41', '', 151, 'http://travel-onyx-systems/?post_type=acf-field&p=152', 0, 'acf-field', '', 0),
(153, 1, '2023-10-28 07:13:41', '2023-10-28 07:13:41', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:20:\"add instagramm image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:4:\"full\";}', 'instagram repeater image', 'instagram_repeater_image', 'publish', 'closed', 'closed', '', 'field_653cb3bb47080', '', '', '2023-10-28 07:13:41', '2023-10-28 07:13:41', '', 152, 'http://travel-onyx-systems/?post_type=acf-field&p=153', 0, 'acf-field', '', 0),
(155, 1, '2023-10-28 07:14:33', '2023-10-28 07:14:33', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:27:\"add instagramm button value\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'instagram button value', 'instagram_button_value', 'publish', 'closed', 'closed', '', 'field_653cb4b8ec223', '', '', '2023-10-28 07:14:33', '2023-10-28 07:14:33', '', 151, 'http://travel-onyx-systems/?post_type=acf-field&p=155', 1, 'acf-field', '', 0),
(156, 1, '2023-10-28 07:15:04', '2023-10-28 07:15:04', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:25:\"add instagram button link\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'instagram button link', 'instagram_button_link', 'publish', 'closed', 'closed', '', 'field_653cb4dd4a1cc', '', '', '2023-10-28 07:15:04', '2023-10-28 07:15:04', '', 151, 'http://travel-onyx-systems/?post_type=acf-field&p=156', 2, 'acf-field', '', 0),
(157, 1, '2023-10-28 07:21:49', '2023-10-28 07:21:49', '', 'inst1', '', 'inherit', 'open', 'closed', '', 'inst1', '', '', '2023-10-28 07:21:57', '2023-10-28 07:21:57', '', 0, 'http://travel-onyx-systems/wp-content/uploads/2023/10/inst1.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2023-10-28 07:23:27', '2023-10-28 07:23:27', '', 'inst2', '', 'inherit', 'open', 'closed', '', 'inst2', '', '', '2023-10-28 07:23:37', '2023-10-28 07:23:37', '', 0, 'http://travel-onyx-systems/wp-content/uploads/2023/10/inst2.jpg', 0, 'attachment', 'image/jpeg', 0),
(160, 1, '2023-10-28 07:35:12', '2023-10-28 07:35:12', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"theme-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'form fields', 'form-fields', 'publish', 'closed', 'closed', '', 'group_653cb9572e0fb', '', '', '2023-10-28 07:35:12', '2023-10-28 07:35:12', '', 0, 'http://travel-onyx-systems/?post_type=acf-field-group&#038;p=160', 0, 'acf-field-group', '', 0),
(161, 1, '2023-10-28 07:35:12', '2023-10-28 07:35:12', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:13:\"add form text\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'form text', 'form_text', 'publish', 'closed', 'closed', '', 'field_653cb957423a8', '', '', '2023-10-28 07:35:12', '2023-10-28 07:35:12', '', 160, 'http://travel-onyx-systems/?post_type=acf-field&p=161', 0, 'acf-field', '', 0),
(162, 1, '2023-10-28 07:38:55', '2023-10-28 07:38:55', '[email* email-962 id:email placeholder \"Email adress\"]\r\n[submit class:button class:form-input \"Subscribe\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@travel-onyx-systems>\n[_site_admin_email]\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@travel-onyx-systems>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2023-10-28 10:43:08', '2023-10-28 10:43:08', '', 0, 'http://travel-onyx-systems/?post_type=wpcf7_contact_form&#038;p=162', 0, 'wpcf7_contact_form', '', 0),
(163, 1, '2023-10-28 08:12:21', '2023-10-28 08:07:44', ' ', '', '', 'publish', 'closed', 'closed', '', '163', '', '', '2023-10-28 08:12:21', '2023-10-28 08:12:21', '', 0, 'http://travel-onyx-systems/?p=163', 3, 'nav_menu_item', '', 0),
(164, 1, '2023-10-28 08:12:21', '2023-10-28 08:07:44', ' ', '', '', 'publish', 'closed', 'closed', '', '164', '', '', '2023-10-28 08:12:21', '2023-10-28 08:12:21', '', 0, 'http://travel-onyx-systems/?p=164', 2, 'nav_menu_item', '', 0),
(166, 1, '2023-10-28 08:12:21', '2023-10-28 08:12:21', ' ', '', '', 'publish', 'closed', 'closed', '', '166', '', '', '2023-10-28 08:12:21', '2023-10-28 08:12:21', '', 0, 'http://travel-onyx-systems/?p=166', 1, 'nav_menu_item', '', 0),
(167, 1, '2023-10-28 08:27:53', '2023-10-28 08:27:53', '', 'footer-bottom-img', '', 'inherit', 'open', 'closed', '', 'footer-bottom-img', '', '', '2023-10-28 08:28:00', '2023-10-28 08:28:00', '', 0, 'http://travel-onyx-systems/wp-content/uploads/2023/10/footer-bottom-img.png', 0, 'attachment', 'image/png', 0),
(168, 1, '2023-10-28 08:29:00', '0000-00-00 00:00:00', '{\n    \"tos::tos_custom_footer_image\": {\n        \"value\": \"http://travel-onyx-systems/wp-content/uploads/2023/10/footer-bottom-img.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-28 08:29:00\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'df0c9d53-53bc-4424-8b37-51240dfa1300', '', '', '2023-10-28 08:29:00', '0000-00-00 00:00:00', '', 0, 'http://travel-onyx-systems/?p=168', 0, 'customize_changeset', '', 0),
(169, 1, '2023-10-28 08:52:03', '2023-10-28 08:52:03', '{\n    \"tos::tos_custom_footer_image\": {\n        \"value\": \"http://travel-onyx-systems/wp-content/uploads/2023/10/footer-bottom-img.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-28 08:49:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '485e9928-2ead-4c37-a6e3-f681015a8b37', '', '', '2023-10-28 08:52:03', '2023-10-28 08:52:03', '', 0, 'http://travel-onyx-systems/?p=169', 0, 'customize_changeset', '', 0),
(170, 1, '2023-10-28 08:53:59', '2023-10-28 08:53:59', '', 'social', '', 'inherit', 'open', 'closed', '', 'social', '', '', '2023-10-28 08:54:07', '2023-10-28 08:54:07', '', 0, 'http://travel-onyx-systems/wp-content/uploads/2023/10/social.png', 0, 'attachment', 'image/png', 0),
(171, 1, '2023-10-28 08:54:18', '2023-10-28 08:54:18', '{\n    \"tos::tos_custom_social_footer_image\": {\n        \"value\": \"http://travel-onyx-systems/wp-content/uploads/2023/10/social.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-28 08:54:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '129af9a5-1e2d-4cba-9342-8886ca9e000b', '', '', '2023-10-28 08:54:18', '2023-10-28 08:54:18', '', 0, 'http://travel-onyx-systems/129af9a5-1e2d-4cba-9342-8886ca9e000b/', 0, 'customize_changeset', '', 0),
(172, 1, '2023-10-28 08:56:07', '2023-10-28 08:56:07', '{\n    \"tos::footer_copyright\": {\n        \"value\": \"\\u00a9 2021 RedExplorers. All rights reserved | Terms | Privacy | Site Map\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-28 08:54:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1296f986-e266-4028-9904-0c1ba18ee0b3', '', '', '2023-10-28 08:56:07', '2023-10-28 08:56:07', '', 0, 'http://travel-onyx-systems/?p=172', 0, 'customize_changeset', '', 0),
(173, 1, '2023-10-28 09:08:16', '2023-10-28 09:08:16', '{\n    \"tos::footer_social_link\": {\n        \"value\": \"https://www.instagram.com/\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-28 09:08:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '485adbe0-c4cd-4d5e-9ce0-85efba3bdcb7', '', '', '2023-10-28 09:08:16', '2023-10-28 09:08:16', '', 0, 'http://travel-onyx-systems/485adbe0-c4cd-4d5e-9ce0-85efba3bdcb7/', 0, 'customize_changeset', '', 0),
(174, 1, '2023-10-28 09:14:10', '2023-10-28 09:14:10', '{\n    \"tos::footer_copyright\": {\n        \"value\": \"\\u043a\\u0430\\u043a\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-28 09:14:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a87c8959-c53b-40de-b041-ce9191ba8778', '', '', '2023-10-28 09:14:10', '2023-10-28 09:14:10', '', 0, 'http://travel-onyx-systems/a87c8959-c53b-40de-b041-ce9191ba8778/', 0, 'customize_changeset', '', 0),
(175, 1, '2023-10-28 09:17:12', '2023-10-28 09:17:12', '{\n    \"tos::footer_copyright\": {\n        \"value\": \"\\u00a9 2021 RedExplorers. All rights reserved | Terms | Privacy | Site Map\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-28 09:17:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '657ebb6b-3902-48c7-a2c2-1d61e6356b1e', '', '', '2023-10-28 09:17:12', '2023-10-28 09:17:12', '', 0, 'http://travel-onyx-systems/657ebb6b-3902-48c7-a2c2-1d61e6356b1e/', 0, 'customize_changeset', '', 0),
(176, 1, '2023-10-28 13:05:49', '2023-10-28 13:05:49', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.</div>', 'A traveler’s guide to Penang, Malaysia - Where to Eat', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2023-10-28 13:05:49', '2023-10-28 13:05:49', '', 42, 'http://travel-onyx-systems/?p=176', 0, 'revision', '', 0),
(177, 1, '2023-10-28 13:12:06', '2023-10-28 13:12:06', '', 'Default Form', '', 'publish', 'closed', 'closed', '', 'default-form', '', '', '2023-10-28 13:17:17', '2023-10-28 13:17:17', '', 0, 'http://travel-onyx-systems/?p=177', 0, 'wpdiscuz_form', '', 0),
(178, 1, '2023-10-28 13:58:52', '2023-10-28 13:58:52', '{\n    \"tos::tos_custom_button_link\": {\n        \"value\": \"http://travel-onyx-systems/destination/\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-28 13:58:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '95a06a33-7eda-4286-9ff2-e82b24e95b0f', '', '', '2023-10-28 13:58:52', '2023-10-28 13:58:52', '', 0, 'http://travel-onyx-systems/95a06a33-7eda-4286-9ff2-e82b24e95b0f/', 0, 'customize_changeset', '', 0),
(179, 1, '2023-10-28 14:02:47', '2023-10-28 14:02:47', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra pharetra ac erat commodo non leo eget gravida viverra. Pharetra pharetra.</div>', 'A traveler’s guide to Penang', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2023-10-28 14:02:47', '2023-10-28 14:02:47', '', 42, 'http://travel-onyx-systems/?p=179', 0, 'revision', '', 0),
(180, 1, '2023-10-28 14:04:44', '2023-10-28 14:04:44', 'Have you read the Beach by Alex?Have you read the Beach by Alex?Have you read the Beach by Alex?Have you read the Beach by Alex?Have you read the Beach by Alex?Have you read the Beach by Alex?Have you read the Beach by Alex?Have you read the Beach by Alex?Have you read the Beach by Alex?Have you read the Beach by Alex?Have you read the Beach by Alex?Have you read the Beach by Alex?Have you read the Beach by Alex?Have you read the Beach by Alex?', 'Have you read the Beach by Alex?', '', 'publish', 'open', 'closed', '', 'have-you-read-the-beach-by-alex', '', '', '2023-10-28 14:08:44', '2023-10-28 14:08:44', '', 0, 'http://travel-onyx-systems/?post_type=dest-cpt&#038;p=180', 0, 'dest-cpt', '', 0),
(181, 1, '2023-10-28 14:06:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2023-10-28 14:06:29', '0000-00-00 00:00:00', '', 0, 'http://travel-onyx-systems/?post_type=dest-cpt&p=181', 0, 'dest-cpt', '', 0),
(182, 1, '2023-10-28 14:07:57', '2023-10-28 14:07:57', '', 'dest2', '', 'inherit', 'open', 'closed', '', 'dest2', '', '', '2023-10-28 14:08:26', '2023-10-28 14:08:26', '', 180, 'http://travel-onyx-systems/wp-content/uploads/2023/10/dest2.jpg', 0, 'attachment', 'image/jpeg', 0),
(183, 1, '2023-10-28 14:08:01', '2023-10-28 14:08:01', '', 'dest3', '', 'inherit', 'open', 'closed', '', 'dest3', '', '', '2023-10-28 14:08:23', '2023-10-28 14:08:23', '', 180, 'http://travel-onyx-systems/wp-content/uploads/2023/10/dest3.jpg', 0, 'attachment', 'image/jpeg', 0),
(184, 1, '2023-10-28 14:08:05', '2023-10-28 14:08:05', '', 'dest4', '', 'inherit', 'open', 'closed', '', 'dest4', '', '', '2023-10-28 14:08:17', '2023-10-28 14:08:17', '', 180, 'http://travel-onyx-systems/wp-content/uploads/2023/10/dest4.jpg', 0, 'attachment', 'image/jpeg', 0),
(185, 1, '2023-10-28 14:09:57', '2023-10-28 14:09:57', 'The writer actually\r\nlive in philippinesThe writer actually\r\nlive in philippinesThe writer actually\r\nlive in philippinesThe writer actually\r\nlive in philippinesThe writer actually\r\nlive in philippines', 'The writer actually live in philippines', '', 'publish', 'open', 'closed', '', 'the-writer-actually-live-in-philippines', '', '', '2023-10-28 14:09:57', '2023-10-28 14:09:57', '', 0, 'http://travel-onyx-systems/?post_type=dest-cpt&#038;p=185', 0, 'dest-cpt', '', 0),
(186, 1, '2023-10-28 14:11:08', '2023-10-28 14:11:08', 'Matsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one of', 'Matsumoto castle is considered one of', '', 'publish', 'open', 'closed', '', 'matsumoto-castle-is-considered-one-of-2', '', '', '2023-10-28 14:11:08', '2023-10-28 14:11:08', '', 0, 'http://travel-onyx-systems/?post_type=dest-cpt&#038;p=186', 0, 'dest-cpt', '', 0),
(187, 1, '2023-10-28 14:12:00', '2023-10-28 14:12:00', 'Matsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one of', 'Matsumoto castle is considered one of', '', 'publish', 'open', 'closed', '', 'matsumoto-castle-is-considered-one-of-3', '', '', '2023-10-28 14:12:00', '2023-10-28 14:12:00', '', 0, 'http://travel-onyx-systems/?post_type=dest-cpt&#038;p=187', 0, 'dest-cpt', '', 0),
(188, 1, '2023-10-28 14:13:33', '2023-10-28 14:13:33', 'Matsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one ofMatsumoto castle is considered one of', 'Matsumoto castle is considered one of', '', 'publish', 'open', 'closed', '', 'matsumoto-castle-is-considered-one-of-4', '', '', '2023-10-28 14:19:42', '2023-10-28 14:19:42', '', 0, 'http://travel-onyx-systems/?post_type=dest-cpt&#038;p=188', 0, 'dest-cpt', '', 0),
(189, 1, '2023-10-28 14:25:50', '2023-10-28 14:25:50', '', 'post-image', '', 'inherit', 'open', 'closed', '', 'post-image', '', '', '2023-10-28 14:25:59', '2023-10-28 14:25:59', '', 103, 'http://travel-onyx-systems/wp-content/uploads/2023/10/post-image.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `os_termmeta`
--

CREATE TABLE `os_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `os_terms`
--

CREATE TABLE `os_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `os_terms`
--

INSERT INTO `os_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'Europe', 'europe', 0),
(4, 'Mountains', 'mountains', 0),
(5, 'Travaling video', 'travaling-video', 0),
(6, 'Georgia', 'georgia', 0),
(7, 'Georgia', 'georgia', 0),
(8, 'Penang', 'penang', 0),
(9, 'Malaysia', 'malaysia', 0),
(10, 'Philipines', 'philipines', 0),
(11, 'Canada', 'canada', 0),
(12, 'Europe', 'europe', 0),
(13, 'Africa', 'africa', 0),
(14, 'Asia', 'asia', 0),
(15, 'Europe', 'europe', 0),
(16, 'Footer Menu', 'footer-menu', 0),
(17, 'Asia', 'asia', 0),
(18, 'Africa', 'africa', 0),
(19, 'South America', 'south-america', 0),
(20, 'North America', 'north-america', 0),
(21, 'Australia', 'australia', 0),
(22, 'Beauty of Seas', 'beauty-of-seas', 0),
(23, 'Guides for traveler', 'guides-for-traveler', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `os_term_relationships`
--

CREATE TABLE `os_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `os_term_relationships`
--

INSERT INTO `os_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(30, 2, 0),
(42, 5, 0),
(42, 10, 0),
(46, 3, 0),
(46, 7, 0),
(49, 4, 0),
(49, 8, 0),
(49, 9, 0),
(88, 3, 0),
(88, 7, 0),
(90, 3, 0),
(90, 7, 0),
(92, 5, 0),
(92, 11, 0),
(95, 3, 0),
(95, 7, 0),
(97, 4, 0),
(97, 10, 0),
(99, 7, 0),
(99, 23, 0),
(101, 3, 0),
(101, 7, 0),
(103, 7, 0),
(103, 22, 0),
(105, 3, 0),
(105, 7, 0),
(123, 12, 0),
(125, 13, 0),
(126, 14, 0),
(135, 2, 0),
(136, 2, 0),
(137, 12, 0),
(137, 15, 0),
(163, 16, 0),
(164, 16, 0),
(166, 16, 0),
(180, 17, 0),
(185, 18, 0),
(186, 19, 0),
(187, 20, 0),
(188, 7, 0),
(188, 21, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `os_term_taxonomy`
--

CREATE TABLE `os_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `os_term_taxonomy`
--

INSERT INTO `os_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'category', '', 0, 6),
(4, 4, 'category', '', 0, 2),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 3, 0),
(7, 7, 'post_tag', '', 0, 9),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 2),
(11, 11, 'post_tag', '', 0, 1),
(12, 12, 'location', '', 0, 1),
(13, 13, 'location', '', 0, 1),
(14, 14, 'location', '', 0, 1),
(15, 15, 'local', '', 0, 1),
(16, 16, 'nav_menu', '', 0, 3),
(17, 17, 'local', '', 0, 1),
(18, 18, 'local', '', 0, 1),
(19, 19, 'local', '', 0, 1),
(20, 20, 'local', '', 0, 1),
(21, 21, 'local', '', 0, 1),
(22, 22, 'category', '', 0, 1),
(23, 23, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `os_usermeta`
--

CREATE TABLE `os_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `os_usermeta`
--

INSERT INTO `os_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ruslan'),
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
(12, 1, 'os_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'os_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"792d743e180a6537846a435ba5080d4c5f96ef01a8dc01d029a20baad50827d7\";a:4:{s:10:\"expiration\";i:1699529860;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:125:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 OPR/103.0.0.0\";s:5:\"login\";i:1698320260;}}'),
(17, 1, 'os_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'os_user-settings', 'libraryContent=browse&editor=html'),
(20, 1, 'os_user-settings-time', '1698400215'),
(21, 1, 'os_persisted_preferences', 'a:3:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2023-10-28T09:18:58.880Z\";s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}}'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'nav_menu_recently_edited', '16'),
(25, 1, 'meta-box-order_toplevel_page_theme-general-settings', 'a:2:{s:4:\"side\";s:33:\"submitdiv,acf-group_653b9e7133a3d\";s:6:\"normal\";s:47:\"acf-group_653cb9572e0fb,acf-group_653cb37a5f25a\";}'),
(26, 1, 'screen_layout_toplevel_page_theme-general-settings', '2');

-- --------------------------------------------------------

--
-- Структура таблицы `os_users`
--

CREATE TABLE `os_users` (
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
-- Дамп данных таблицы `os_users`
--

INSERT INTO `os_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ruslan', '$P$B0Dk9t9ylKe2hwFColb80gCANnjLxG0', 'ruslan', 'ruslantoloshnyi@gmail.com', 'http://travel-onyx-systems', '2023-10-26 11:37:20', '', 0, 'ruslan');

-- --------------------------------------------------------

--
-- Структура таблицы `os_wc_comments_subscription`
--

CREATE TABLE `os_wc_comments_subscription` (
  `id` int NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `subscribtion_id` int NOT NULL,
  `post_id` int NOT NULL,
  `subscribtion_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `activation_key` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `confirm` tinyint DEFAULT '0',
  `subscription_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `imported_from` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `os_wc_feedback_forms`
--

CREATE TABLE `os_wc_feedback_forms` (
  `id` int NOT NULL,
  `post_id` int NOT NULL DEFAULT '0',
  `unique_id` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `opened` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `os_wc_follow_users`
--

CREATE TABLE `os_wc_follow_users` (
  `id` int NOT NULL,
  `post_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `follower_id` int NOT NULL DEFAULT '0',
  `follower_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `follower_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `activation_key` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `confirm` tinyint(1) NOT NULL DEFAULT '0',
  `follow_timestamp` int NOT NULL,
  `follow_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `os_wc_phrases`
--

CREATE TABLE `os_wc_phrases` (
  `id` int NOT NULL,
  `phrase_key` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `phrase_value` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `os_wc_users_rated`
--

CREATE TABLE `os_wc_users_rated` (
  `id` int NOT NULL,
  `post_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `user_ip` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `rating` int NOT NULL,
  `date` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `os_wc_users_voted`
--

CREATE TABLE `os_wc_users_voted` (
  `id` int NOT NULL,
  `user_id` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_id` int NOT NULL,
  `vote_type` int DEFAULT NULL,
  `is_guest` tinyint(1) DEFAULT '0',
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `date` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `os_commentmeta`
--
ALTER TABLE `os_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `os_comments`
--
ALTER TABLE `os_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `os_links`
--
ALTER TABLE `os_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `os_options`
--
ALTER TABLE `os_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `os_postmeta`
--
ALTER TABLE `os_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `os_posts`
--
ALTER TABLE `os_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `os_termmeta`
--
ALTER TABLE `os_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `os_terms`
--
ALTER TABLE `os_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `os_term_relationships`
--
ALTER TABLE `os_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `os_term_taxonomy`
--
ALTER TABLE `os_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `os_usermeta`
--
ALTER TABLE `os_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `os_users`
--
ALTER TABLE `os_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `os_wc_comments_subscription`
--
ALTER TABLE `os_wc_comments_subscription`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribe_unique_index` (`subscribtion_id`,`email`,`post_id`),
  ADD KEY `subscribtion_id` (`subscribtion_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `confirm` (`confirm`);

--
-- Индексы таблицы `os_wc_feedback_forms`
--
ALTER TABLE `os_wc_feedback_forms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_id` (`unique_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Индексы таблицы `os_wc_follow_users`
--
ALTER TABLE `os_wc_follow_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `follow_unique_key` (`user_email`,`follower_email`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_email` (`user_email`),
  ADD KEY `follower_id` (`follower_id`),
  ADD KEY `follower_email` (`follower_email`),
  ADD KEY `confirm` (`confirm`),
  ADD KEY `follow_timestamp` (`follow_timestamp`);

--
-- Индексы таблицы `os_wc_phrases`
--
ALTER TABLE `os_wc_phrases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phrase_key` (`phrase_key`);

--
-- Индексы таблицы `os_wc_users_rated`
--
ALTER TABLE `os_wc_users_rated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `os_wc_users_voted`
--
ALTER TABLE `os_wc_users_voted`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `vote_type` (`vote_type`),
  ADD KEY `is_guest` (`is_guest`),
  ADD KEY `post_id` (`post_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `os_commentmeta`
--
ALTER TABLE `os_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `os_comments`
--
ALTER TABLE `os_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `os_links`
--
ALTER TABLE `os_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `os_options`
--
ALTER TABLE `os_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=391;

--
-- AUTO_INCREMENT для таблицы `os_postmeta`
--
ALTER TABLE `os_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=828;

--
-- AUTO_INCREMENT для таблицы `os_posts`
--
ALTER TABLE `os_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT для таблицы `os_termmeta`
--
ALTER TABLE `os_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `os_terms`
--
ALTER TABLE `os_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `os_term_taxonomy`
--
ALTER TABLE `os_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `os_usermeta`
--
ALTER TABLE `os_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `os_users`
--
ALTER TABLE `os_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `os_wc_comments_subscription`
--
ALTER TABLE `os_wc_comments_subscription`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `os_wc_feedback_forms`
--
ALTER TABLE `os_wc_feedback_forms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `os_wc_follow_users`
--
ALTER TABLE `os_wc_follow_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `os_wc_phrases`
--
ALTER TABLE `os_wc_phrases`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `os_wc_users_rated`
--
ALTER TABLE `os_wc_users_rated`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `os_wc_users_voted`
--
ALTER TABLE `os_wc_users_voted`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
