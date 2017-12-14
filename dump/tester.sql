-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Дек 03 2017 г., 22:42
-- Версия сервера: 10.1.28-MariaDB
-- Версия PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tester`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-12-01 22:33:33', '2017-12-01 19:33:33', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/tester', 'yes'),
(2, 'home', 'http://localhost/tester', 'yes'),
(3, 'blogname', 'Организатор олимпиад', 'yes'),
(4, 'blogdescription', 'АНО ДПО Академия развития передовых образовательных технологий', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'sgresr@gmail.com', 'yes'),
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
(22, 'posts_per_page', '2', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=13&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:22:\"cyr3lat/cyr-to-lat.php\";i:3;s:37:\"tinymce-advanced/tinymce-advanced.php\";i:4;s:23:\"wp-recall/wp-recall.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'tester', 'yes'),
(41, 'stylesheet', 'tester', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'author', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:10:{i:2;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;i:6;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:7;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:8;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:183:\"<a href=\"http://localhost/tester/\"><img class=\"alignnone size-full wp-image-22\" src=\"http://localhost/tester/wp-content/uploads/2017/12/logo.png\" alt=\"\" width=\"224\" height=\"67\" /></a>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:9;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:142:\"Наш телефон: +7 (4012) 39-10-16\r\n\r\nНаш адрес: 236015, г. Калининград, а/я 233\r\n\r\nНаш email: admin@domain.ru\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:11;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:0:\"\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '16', 'yes'),
(84, 'page_on_front', '13', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:12:\"need-confirm\";a:2:{s:4:\"name\";s:32:\"Неподтвержденные\";s:12:\"capabilities\";a:4:{s:4:\"read\";b:0;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;s:12:\"upload_files\";b:0;}}s:6:\"banned\";a:2:{s:4:\"name\";s:6:\"Бан\";s:12:\"capabilities\";a:4:{s:4:\"read\";b:0;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;s:12:\"upload_files\";b:0;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'ru_RU', 'yes'),
(95, 'widget_search', 'a:4:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:10:\"Поиск\";}i:4;a:1:{s:5:\"title\";s:10:\"Поиск\";}}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:11:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:6:\"text-4\";i:6;s:6:\"text-5\";i:7;s:12:\"categories-2\";i:8;s:14:\"recent-posts-2\";i:9;s:17:\"recent-comments-2\";i:10;s:8:\"search-4\";}s:14:\"cab_15_sidebar\";a:0:{}s:21:\"cab_15_sidebar_before\";a:0:{}s:20:\"cab_15_sidebar_after\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-6\";i:1;s:8:\"search-3\";i:2;s:6:\"text-7\";}s:9:\"sidebar-2\";a:2:{i:0;s:6:\"text-8\";i:1;s:13:\"custom_html-3\";}s:9:\"sidebar-3\";a:1:{i:0;s:6:\"text-9\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:102:\"<div class=\"footer-copy\">\r\n	&copy; &laquo;Академия знатоков&raquo; 2017 год\r\n</div>\";}}', 'yes'),
(110, 'cron', 'a:7:{i:1512338377;a:1:{s:24:\"rcl_cron_hourly_schedule\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1512372814;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1512375277;a:1:{s:28:\"rcl_cron_twicedaily_schedule\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1512416039;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1512417597;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1512419377;a:1:{s:23:\"rcl_cron_daily_schedule\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1512157641;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(123, '_site_transient_timeout_browser_588316b18dc575ab8a524feafc9e1899', '1512761639', 'no'),
(124, '_site_transient_browser_588316b18dc575ab8a524feafc9e1899', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"62.0.3202.94\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(128, 'can_compress_scripts', '1', 'no'),
(141, 'current_theme', 'Tester', 'yes'),
(142, 'theme_mods_tester', 'a:10:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:2;s:6:\"social\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:7:\"panel_1\";i:16;s:7:\"panel_2\";i:0;s:7:\"panel_3\";i:0;s:7:\"panel_4\";i:0;s:11:\"custom_logo\";i:22;s:12:\"header_image\";s:13:\"remove-header\";s:11:\"page_layout\";s:10:\"one-column\";}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(153, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(156, 'recently_activated', 'a:1:{s:37:\"recent-posts-widget-extended/rpwe.php\";i:1512330879;}', 'yes'),
(161, 'acf_version', '4.4.12', 'yes'),
(166, 'rcl_active_addons', 'a:5:{s:14:\"theme-sunshine\";a:9:{s:4:\"name\";s:8:\"Sunshine\";s:7:\"version\";s:3:\"0.1\";s:12:\"support-core\";s:6:\"15.0.0\";s:8:\"template\";s:8:\"Sunshine\";s:11:\"description\";s:44:\"Шаблон личного кабинета\";s:6:\"author\";s:58:\"Владимир Дружаев, Плечёв Андрей\";s:10:\"author-uri\";s:21:\"https://codeseller.ru\";s:4:\"path\";s:75:\"/opt/lampp/htdocs/tester/wp-content/plugins/wp-recall/add-on/theme-sunshine\";s:8:\"priority\";i:0;}s:7:\"profile\";a:9:{s:4:\"name\";s:49:\"Profile (Профиль пользователя)\";s:7:\"version\";s:5:\"3.0.0\";s:12:\"support-core\";s:6:\"16.0.0\";s:11:\"description\";s:94:\"Расширение настроек профиля пользователя для wp-recall\";s:6:\"author\";s:25:\"Плечев Андрей\";s:10:\"author-uri\";s:21:\"http://codeseller.ru/\";s:10:\"add-on-uri\";s:109:\"http://codeseller.ru/products/profile-recall-upravlenie-profilem-polzovatelya-na-sajte-s-pomoshhyu-wp-recall/\";s:4:\"path\";s:68:\"/opt/lampp/htdocs/tester/wp-content/plugins/wp-recall/add-on/profile\";s:8:\"priority\";i:0;}s:4:\"feed\";a:9:{s:4:\"name\";s:23:\"Feed (Подписки)\";s:7:\"version\";s:5:\"4.0.0\";s:12:\"support-core\";s:6:\"16.0.0\";s:11:\"description\";s:93:\"Формирование и вывод новостной ленты пользователя\";s:6:\"author\";s:25:\"Плечев Андрей\";s:10:\"author-uri\";s:21:\"http://codeseller.ru/\";s:10:\"add-on-uri\";s:115:\"http://codeseller.ru/products/feed-recall-dopolnenie-wp-recall-dlya-formirovaniya-feed-lenty-novostej-polzovatelya/\";s:4:\"path\";s:65:\"/opt/lampp/htdocs/tester/wp-content/plugins/wp-recall/add-on/feed\";s:8:\"priority\";i:0;}s:10:\"publicpost\";a:9:{s:4:\"name\";s:33:\"PublicPost (Публикация)\";s:7:\"version\";s:5:\"4.0.0\";s:12:\"support-core\";s:6:\"16.0.0\";s:11:\"description\";s:168:\"Дайте возможность посетителям вашего сайта публиковать свои записи с помощью плагина wp-recall\";s:6:\"author\";s:25:\"Плечев Андрей\";s:10:\"author-uri\";s:21:\"http://codeseller.ru/\";s:10:\"add-on-uri\";s:95:\"http://codeseller.ru/products/public-recall-publikaciya-zapisej-na-sajte-s-pomoshhyu-wp-recall/\";s:4:\"path\";s:71:\"/opt/lampp/htdocs/tester/wp-content/plugins/wp-recall/add-on/publicpost\";s:8:\"priority\";i:0;}s:12:\"user-balance\";a:8:{s:4:\"name\";s:36:\"User balance (Личный счет)\";s:7:\"version\";s:5:\"4.0.0\";s:12:\"support-core\";s:6:\"16.0.0\";s:11:\"description\";s:512:\"Дополнение позволяющее использовать на сайте личный счет пользователя. Может понадобиться для работы некоторых других дополнений, использующих личный счет пользователя. Используется для подключения к Робокассе или Интеркассе. Личный счет пользователя выводится через виджет.\";s:6:\"author\";s:25:\"Плечев Андрей\";s:3:\"url\";s:20:\"http://codeseller.ru\";s:4:\"path\";s:73:\"/opt/lampp/htdocs/tester/wp-content/plugins/wp-recall/add-on/user-balance\";s:8:\"priority\";i:0;}}', 'no'),
(167, 'rcl_active_template', 'theme-sunshine', 'yes'),
(168, 'rcl_global_options', 'a:42:{s:16:\"view_user_lk_rcl\";s:1:\"1\";s:11:\"lk_page_rcl\";s:2:\"49\";i:0;s:0:\"\";s:7:\"timeout\";s:2:\"10\";s:17:\"consol_access_rcl\";s:1:\"7\";s:7:\"rcl-log\";s:1:\"0\";s:13:\"primary-color\";s:7:\"#4C8CBD\";s:13:\"buttons_place\";s:1:\"0\";s:11:\"slide-pause\";s:1:\"0\";s:9:\"use_cache\";s:1:\"0\";s:10:\"cache_time\";s:4:\"3600\";s:12:\"cache_output\";s:1:\"0\";s:10:\"minify_css\";s:1:\"0\";s:9:\"minify_js\";s:1:\"0\";s:17:\"login_form_recall\";s:1:\"3\";s:22:\"page_login_form_recall\";s:0:\"\";s:23:\"confirm_register_recall\";s:1:\"0\";s:14:\"authorize_page\";s:1:\"0\";s:21:\"custom_authorize_page\";s:0:\"\";s:11:\"repeat_pass\";s:1:\"0\";s:17:\"difficulty_parole\";s:1:\"0\";s:14:\"view_recallbar\";s:1:\"0\";s:9:\"rcb_color\";s:1:\"0\";s:19:\"delete_user_account\";s:1:\"0\";s:13:\"avatar_weight\";s:1:\"2\";s:20:\"public_form_page_rcl\";s:2:\"52\";s:18:\"info_author_recall\";s:1:\"1\";s:17:\"publics_block_rcl\";s:1:\"1\";s:22:\"view_publics_block_rcl\";s:1:\"1\";s:14:\"public_preview\";s:1:\"0\";s:12:\"public_draft\";s:1:\"0\";s:18:\"default_size_thumb\";s:30:\"twentyseventeen-featured-image\";s:22:\"output_public_form_rcl\";s:1:\"1\";s:7:\"form-lk\";s:0:\"\";s:25:\"user_public_access_recall\";s:1:\"2\";s:19:\"guest_post_redirect\";s:0:\"\";s:22:\"moderation_public_post\";s:1:\"1\";s:13:\"front_editing\";a:1:{i:0;s:1:\"2\";}s:12:\"time_editing\";s:0:\"\";s:6:\"pm_rcl\";s:1:\"1\";s:8:\"pm_place\";s:1:\"0\";s:14:\"users_page_rcl\";s:2:\"51\";}', 'yes'),
(169, 'rcl_version', '16.8.10', 'yes'),
(170, 'widget_rcl-new-users', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(171, 'widget_rcl-online-users', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(172, 'widget_rcl-primary-panel', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(173, 'widget_widget-user-count', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(174, 'rcl_profile_fields', 'a:2:{i:0;a:11:{s:5:\"title\";s:14:\"Фамилия\";s:4:\"type\";s:4:\"text\";s:11:\"placeholder\";s:0:\"\";s:7:\"pattern\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:6:\"notice\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:3:\"req\";s:1:\"0\";s:5:\"admin\";s:1:\"0\";s:8:\"register\";s:1:\"0\";s:4:\"slug\";s:9:\"last_name\";}i:1;a:9:{s:5:\"title\";s:12:\"Статус\";s:4:\"type\";s:8:\"textarea\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:6:\"notice\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:5:\"admin\";s:1:\"0\";s:8:\"register\";s:1:\"0\";s:4:\"slug\";s:11:\"description\";}}', 'yes'),
(181, 'rcl_addons_need_update', 'a:0:{}', 'yes'),
(205, '_transient_timeout_plugin_slugs', '1512417279', 'no'),
(206, '_transient_plugin_slugs', 'a:7:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:22:\"cyr3lat/cyr-to-lat.php\";i:3;s:9:\"hello.php\";i:4;s:37:\"recent-posts-widget-extended/rpwe.php\";i:5;s:37:\"tinymce-advanced/tinymce-advanced.php\";i:6;s:23:\"wp-recall/wp-recall.php\";}', 'no'),
(220, 'tadv_settings', 'a:6:{s:9:\"toolbar_1\";s:106:\"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,undo,redo\";s:9:\"toolbar_2\";s:92:\"fontsizeselect,outdent,indent,pastetext,removeformat,charmap,wp_more,forecolor,table,wp_help\";s:9:\"toolbar_3\";s:0:\"\";s:9:\"toolbar_4\";s:0:\"\";s:7:\"options\";s:15:\"menubar,advlist\";s:7:\"plugins\";s:13:\"table,advlist\";}', 'yes'),
(221, 'tadv_admin_settings', 'a:1:{s:16:\"disabled_editors\";s:0:\"\";}', 'yes'),
(222, 'tadv_version', '4000', 'yes'),
(240, 'category_children', 'a:0:{}', 'yes'),
(242, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1512340163', 'no'),
(243, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4406;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2518;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2453;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2380;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1846;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1616;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1609;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1439;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1367;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1366;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1351;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1281;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1278;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1161;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1071;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1055;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1004;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:967;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:841;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:835;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:817;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:783;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:775;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:681;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:674;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:670;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:669;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:662;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:650;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:641;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:638;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:618;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:615;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:600;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:592;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:590;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:588;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:583;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:572;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:570;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:550;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:541;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:529;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:526;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:513;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:504;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:504;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:495;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:485;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:481;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:480;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:475;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:459;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:456;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:456;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:452;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:449;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:445;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:428;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:416;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:416;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:416;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:410;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:410;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:408;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:401;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:396;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:389;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:385;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:378;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:358;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:350;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:350;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:345;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:337;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:337;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:336;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:332;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:331;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:329;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:327;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:325;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:324;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:321;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:315;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:306;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:303;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:300;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:299;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:298;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:297;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:290;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:288;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:287;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:286;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:281;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:281;}s:7:\"tinymce\";a:3:{s:4:\"name\";s:7:\"tinyMCE\";s:4:\"slug\";s:7:\"tinymce\";s:5:\"count\";i:278;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:277;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:277;}}', 'no'),
(245, '_site_transient_timeout_theme_roots', '1512331334', 'no'),
(246, '_site_transient_theme_roots', 'a:4:{s:6:\"tester\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(247, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1512329576;s:15:\"version_checked\";s:5:\"4.9.1\";s:12:\"translations\";a:0:{}}', 'no'),
(248, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1512330873;s:7:\"checked\";a:7:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:19:\"akismet/akismet.php\";s:5:\"4.0.1\";s:22:\"cyr3lat/cyr-to-lat.php\";s:3:\"3.5\";s:9:\"hello.php\";s:3:\"1.6\";s:37:\"recent-posts-widget-extended/rpwe.php\";s:7:\"0.9.9.7\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:5:\"4.6.7\";s:23:\"wp-recall/wp-recall.php\";s:7:\"16.8.10\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:7:\"default\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:22:\"cyr3lat/cyr-to-lat.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/cyr3lat\";s:4:\"slug\";s:7:\"cyr3lat\";s:6:\"plugin\";s:22:\"cyr3lat/cyr-to-lat.php\";s:11:\"new_version\";s:3:\"3.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr3lat/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/cyr3lat.3.5.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"recent-posts-widget-extended/rpwe.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:42:\"w.org/plugins/recent-posts-widget-extended\";s:4:\"slug\";s:28:\"recent-posts-widget-extended\";s:6:\"plugin\";s:37:\"recent-posts-widget-extended/rpwe.php\";s:11:\"new_version\";s:7:\"0.9.9.7\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/recent-posts-widget-extended/\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/plugin/recent-posts-widget-extended.0.9.9.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:81:\"https://ps.w.org/recent-posts-widget-extended/assets/icon-128x128.png?rev=1240338\";s:7:\"default\";s:81:\"https://ps.w.org/recent-posts-widget-extended/assets/icon-128x128.png?rev=1240338\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:82:\"https://ps.w.org/recent-posts-widget-extended/assets/banner-772x250.png?rev=900647\";s:7:\"default\";s:82:\"https://ps.w.org/recent-posts-widget-extended/assets/banner-772x250.png?rev=900647\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"tinymce-advanced/tinymce-advanced.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/tinymce-advanced\";s:4:\"slug\";s:16:\"tinymce-advanced\";s:6:\"plugin\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:11:\"new_version\";s:5:\"4.6.7\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/tinymce-advanced/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/tinymce-advanced.4.6.7.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-128x128.png?rev=971511\";s:2:\"2x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511\";s:7:\"default\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:70:\"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=894078\";s:7:\"default\";s:70:\"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=894078\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"wp-recall/wp-recall.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/wp-recall\";s:4:\"slug\";s:9:\"wp-recall\";s:6:\"plugin\";s:23:\"wp-recall/wp-recall.php\";s:11:\"new_version\";s:7:\"16.8.10\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/wp-recall/\";s:7:\"package\";s:52:\"https://downloads.wordpress.org/plugin/wp-recall.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:62:\"https://ps.w.org/wp-recall/assets/icon-128x128.png?rev=1154807\";s:2:\"2x\";s:62:\"https://ps.w.org/wp-recall/assets/icon-256x256.png?rev=1154807\";s:7:\"default\";s:62:\"https://ps.w.org/wp-recall/assets/icon-256x256.png?rev=1154807\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:64:\"https://ps.w.org/wp-recall/assets/banner-772x250.png?rev=1154807\";s:7:\"default\";s:64:\"https://ps.w.org/wp-recall/assets/banner-772x250.png?rev=1154807\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(249, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1512329620;s:7:\"checked\";a:4:{s:6:\"tester\";s:3:\"1.4\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(272, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_customize_draft_post_name', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0'),
(3, 4, '_customize_changeset_uuid', 'b853eb12-ea69-44ac-9f90-af140293f59f'),
(4, 5, '_customize_draft_post_name', '%d0%be-%d0%bd%d0%b0%d1%81'),
(5, 5, '_customize_changeset_uuid', 'b853eb12-ea69-44ac-9f90-af140293f59f'),
(6, 6, '_customize_draft_post_name', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b'),
(7, 6, '_customize_changeset_uuid', 'b853eb12-ea69-44ac-9f90-af140293f59f'),
(8, 7, '_customize_draft_post_name', '%d0%b1%d0%bb%d0%be%d0%b3'),
(9, 7, '_customize_changeset_uuid', 'b853eb12-ea69-44ac-9f90-af140293f59f'),
(10, 8, '_customize_draft_post_name', '%d1%80%d0%b0%d0%b7%d0%b4%d0%b5%d0%bb-%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%be%d0%b9-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d1%8b'),
(11, 8, '_customize_changeset_uuid', 'b853eb12-ea69-44ac-9f90-af140293f59f'),
(12, 9, '_edit_lock', '1512157650:1'),
(13, 10, '_wp_attached_file', '2017/12/espresso.jpg'),
(14, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2017/12/espresso.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"espresso-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"espresso-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"espresso-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"espresso-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"espresso-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 10, '_starter_content_theme', 'tester'),
(17, 11, '_wp_attached_file', '2017/12/sandwich.jpg'),
(18, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2017/12/sandwich.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"sandwich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"sandwich-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"sandwich-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"sandwich-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"sandwich-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 11, '_starter_content_theme', 'tester'),
(21, 12, '_wp_attached_file', '2017/12/coffee.jpg'),
(22, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2017/12/coffee.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"coffee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"coffee-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"coffee-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"coffee-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"coffee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 12, '_starter_content_theme', 'tester'),
(26, 13, '_customize_changeset_uuid', 'a741ca54-05a4-4a98-b8e9-8b891da98c55'),
(27, 14, '_thumbnail_id', '11'),
(29, 14, '_customize_changeset_uuid', 'a741ca54-05a4-4a98-b8e9-8b891da98c55'),
(30, 15, '_thumbnail_id', '10'),
(32, 15, '_customize_changeset_uuid', 'a741ca54-05a4-4a98-b8e9-8b891da98c55'),
(35, 16, '_customize_changeset_uuid', 'a741ca54-05a4-4a98-b8e9-8b891da98c55'),
(36, 17, '_thumbnail_id', '10'),
(38, 17, '_customize_changeset_uuid', 'a741ca54-05a4-4a98-b8e9-8b891da98c55'),
(39, 18, '_edit_lock', '1512157840:1'),
(40, 19, '_wp_attached_file', '2017/12/back.png'),
(41, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1363;s:6:\"height\";i:1159;s:4:\"file\";s:16:\"2017/12/back.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"back-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"back-300x255.png\";s:5:\"width\";i:300;s:6:\"height\";i:255;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"back-768x653.png\";s:5:\"width\";i:768;s:6:\"height\";i:653;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"back-1024x871.png\";s:5:\"width\";i:1024;s:6:\"height\";i:871;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:16:\"back-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 20, '_wp_attached_file', '2017/12/background.png'),
(43, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:3363;s:4:\"file\";s:22:\"2017/12/background.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"background-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"background-122x300.png\";s:5:\"width\";i:122;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"background-768x1891.png\";s:5:\"width\";i:768;s:6:\"height\";i:1891;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"background-416x1024.png\";s:5:\"width\";i:416;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:24:\"background-1366x1200.png\";s:5:\"width\";i:1366;s:6:\"height\";i:1200;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"background-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 21, '_wp_attached_file', '2017/12/country.png'),
(45, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:794;s:6:\"height\";i:414;s:4:\"file\";s:19:\"2017/12/country.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"country-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"country-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"country-768x400.png\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:19:\"country-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 22, '_wp_attached_file', '2017/12/logo.png'),
(47, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:224;s:6:\"height\";i:67;s:4:\"file\";s:16:\"2017/12/logo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x67.png\";s:5:\"width\";i:150;s:6:\"height\";i:67;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:15:\"logo-100x67.png\";s:5:\"width\";i:100;s:6:\"height\";i:67;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 23, '_wp_attached_file', '2017/12/logo-1.png'),
(49, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:224;s:6:\"height\";i:67;s:4:\"file\";s:18:\"2017/12/logo-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo-1-150x67.png\";s:5:\"width\";i:150;s:6:\"height\";i:67;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:17:\"logo-1-100x67.png\";s:5:\"width\";i:100;s:6:\"height\";i:67;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(50, 24, '_wp_attached_file', '2017/12/news1.png'),
(51, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:17:\"2017/12/news1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"news1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"news1-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:17:\"news1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(52, 25, '_wp_attached_file', '2017/12/news2.png'),
(53, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:266;s:4:\"file\";s:17:\"2017/12/news2.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"news2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"news2-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:17:\"news2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 26, '_wp_attached_file', '2017/12/school.png'),
(55, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:874;s:6:\"height\";i:602;s:4:\"file\";s:18:\"2017/12/school.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"school-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"school-300x207.png\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"school-768x529.png\";s:5:\"width\";i:768;s:6:\"height\";i:529;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"school-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 27, '_wp_attached_file', '2017/12/step1.png'),
(57, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:93;s:6:\"height\";i:89;s:4:\"file\";s:17:\"2017/12/step1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 28, '_wp_attached_file', '2017/12/step2.png'),
(59, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:91;s:6:\"height\";i:89;s:4:\"file\";s:17:\"2017/12/step2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 29, '_wp_attached_file', '2017/12/step3.png'),
(61, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:89;s:6:\"height\";i:89;s:4:\"file\";s:17:\"2017/12/step3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 30, '_wp_attached_file', '2017/12/step4.png'),
(63, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:90;s:6:\"height\";i:89;s:4:\"file\";s:17:\"2017/12/step4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(64, 31, '_wp_attached_file', '2017/12/step5.png'),
(65, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:91;s:6:\"height\";i:89;s:4:\"file\";s:17:\"2017/12/step5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 32, '_wp_attached_file', '2017/12/step6.png'),
(67, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:93;s:6:\"height\";i:89;s:4:\"file\";s:17:\"2017/12/step6.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 33, '_wp_attached_file', '2017/12/step7.png'),
(69, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:94;s:6:\"height\";i:89;s:4:\"file\";s:17:\"2017/12/step7.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(70, 39, '_menu_item_type', 'custom'),
(71, 39, '_menu_item_menu_item_parent', '0'),
(72, 39, '_menu_item_object_id', '39'),
(73, 39, '_menu_item_object', 'custom'),
(74, 39, '_menu_item_target', ''),
(75, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(76, 39, '_menu_item_xfn', ''),
(77, 39, '_menu_item_url', 'http://localhost/tester/'),
(94, 42, '_menu_item_type', 'post_type'),
(95, 42, '_menu_item_menu_item_parent', '0'),
(96, 42, '_menu_item_object_id', '15'),
(97, 42, '_menu_item_object', 'page'),
(98, 42, '_menu_item_target', ''),
(99, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(100, 42, '_menu_item_xfn', ''),
(101, 42, '_menu_item_url', ''),
(102, 43, '_menu_item_type', 'custom'),
(103, 43, '_menu_item_menu_item_parent', '0'),
(104, 43, '_menu_item_object_id', '43'),
(105, 43, '_menu_item_object', 'custom'),
(106, 43, '_menu_item_target', ''),
(107, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(108, 43, '_menu_item_xfn', ''),
(109, 43, '_menu_item_url', 'https://www.yelp.com'),
(110, 44, '_menu_item_type', 'custom'),
(111, 44, '_menu_item_menu_item_parent', '0'),
(112, 44, '_menu_item_object_id', '44'),
(113, 44, '_menu_item_object', 'custom'),
(114, 44, '_menu_item_target', ''),
(115, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(116, 44, '_menu_item_xfn', ''),
(117, 44, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(118, 45, '_menu_item_type', 'custom'),
(119, 45, '_menu_item_menu_item_parent', '0'),
(120, 45, '_menu_item_object_id', '45'),
(121, 45, '_menu_item_object', 'custom'),
(122, 45, '_menu_item_target', ''),
(123, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(124, 45, '_menu_item_xfn', ''),
(125, 45, '_menu_item_url', 'https://twitter.com/wordpress'),
(126, 46, '_menu_item_type', 'custom'),
(127, 46, '_menu_item_menu_item_parent', '0'),
(128, 46, '_menu_item_object_id', '46'),
(129, 46, '_menu_item_object', 'custom'),
(130, 46, '_menu_item_target', ''),
(131, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(132, 46, '_menu_item_xfn', ''),
(133, 46, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(134, 47, '_menu_item_type', 'custom'),
(135, 47, '_menu_item_menu_item_parent', '0'),
(136, 47, '_menu_item_object_id', '47'),
(137, 47, '_menu_item_object', 'custom'),
(138, 47, '_menu_item_target', ''),
(139, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(140, 47, '_menu_item_xfn', ''),
(141, 47, '_menu_item_url', 'mailto:wordpress@example.com'),
(142, 18, '_wp_trash_meta_status', 'publish'),
(143, 18, '_wp_trash_meta_time', '1512157841'),
(144, 48, '_wp_trash_meta_status', 'publish'),
(145, 48, '_wp_trash_meta_time', '1512157878'),
(146, 9, '_customize_restore_dismissed', '1'),
(147, 53, '_edit_last', '1'),
(148, 53, 'field_5a21b4ccf09a2', 'a:14:{s:3:\"key\";s:19:\"field_5a21b4ccf09a2\";s:5:\"label\";s:31:\"Стоимость 1 теста\";s:4:\"name\";s:7:\"onetest\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(150, 53, 'position', 'normal'),
(151, 53, 'layout', 'no_box'),
(152, 53, 'hide_on_screen', ''),
(153, 53, '_edit_lock', '1512334843:1'),
(154, 54, '_wp_trash_meta_status', 'publish'),
(155, 54, '_wp_trash_meta_time', '1512158532'),
(156, 13, '_edit_lock', '1512333267:1'),
(157, 13, '_edit_last', '1'),
(158, 55, 'onetest', '25'),
(159, 55, '_onetest', 'field_5a21b4ccf09a2'),
(160, 13, 'onetest', '25'),
(161, 13, '_onetest', 'field_5a21b4ccf09a2'),
(162, 53, 'field_5a21b91472113', 'a:14:{s:3:\"key\";s:19:\"field_5a21b91472113\";s:5:\"label\";s:33:\"Главный заголовок\";s:4:\"name\";s:10:\"main_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(165, 53, 'field_5a21d8b1e4d8d', 'a:14:{s:3:\"key\";s:19:\"field_5a21d8b1e4d8d\";s:5:\"label\";s:39:\"Количество предметов\";s:4:\"name\";s:6:\"amount\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(167, 56, 'onetest', '25'),
(168, 56, '_onetest', 'field_5a21b4ccf09a2'),
(169, 56, 'main_title', 'Электронные <b>олимпиады</b> <span>для школьников</span>'),
(170, 56, '_main_title', 'field_5a21b91472113'),
(171, 56, '_', 'field_5a21d8b1e4d8d'),
(172, 13, 'main_title', '<div class=\"titleOne\">Электронные </div><div class=\"titleTwo\"> олимпиады</div><div class=\"titleThree\"> для школьников</div>'),
(173, 13, '_main_title', 'field_5a21b91472113'),
(174, 13, '_', 'field_5a21d8b1e4d8d'),
(175, 57, 'onetest', '25'),
(176, 57, '_onetest', 'field_5a21b4ccf09a2'),
(177, 57, 'main_title', '<div class=\"titleOne\">Электронные </div><div class=\"titleTwo\"> олимпиады<div class=\"titleThree\"> для школьников</div>'),
(178, 57, '_main_title', 'field_5a21b91472113'),
(179, 57, '_', 'field_5a21d8b1e4d8d'),
(180, 58, 'onetest', '25'),
(181, 58, '_onetest', 'field_5a21b4ccf09a2'),
(182, 58, 'main_title', '<div class=\"titleOne\">Электронные </div><div class=\"titleTwo\"> олимпиады</div><div class=\"titleThree\"> для школьников</div>'),
(183, 58, '_main_title', 'field_5a21b91472113'),
(184, 58, '_', 'field_5a21d8b1e4d8d'),
(186, 59, 'onetest', '25'),
(187, 59, '_onetest', 'field_5a21b4ccf09a2'),
(188, 59, 'main_title', '<div class=\"titleOne\">Электронные </div><div class=\"titleTwo\"> олимпиады</div><div class=\"titleThree\"> для школьников</div>'),
(189, 59, '_main_title', 'field_5a21b91472113'),
(190, 59, 'amount', 'по <b>15</b><br /> предметам'),
(191, 59, '_amount', 'field_5a21d8b1e4d8d'),
(192, 13, 'amount', 'по <b>15</b><br /> предметам'),
(193, 13, '_amount', 'field_5a21d8b1e4d8d'),
(194, 60, '_edit_last', '1'),
(195, 60, 'field_5a21e2c8f7098', 'a:14:{s:3:\"key\";s:19:\"field_5a21e2c8f7098\";s:5:\"label\";s:5:\"phone\";s:4:\"name\";s:5:\"phone\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(197, 60, 'position', 'normal'),
(198, 60, 'layout', 'no_box'),
(199, 60, 'hide_on_screen', ''),
(200, 60, '_edit_lock', '1512170643:1'),
(201, 60, 'field_5a21e2da05a72', 'a:12:{s:3:\"key\";s:19:\"field_5a21e2da05a72\";s:5:\"label\";s:5:\"email\";s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(203, 15, '_edit_lock', '1512318131:1'),
(205, 60, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(206, 15, '_edit_last', '1'),
(207, 61, 'phone', '+7 (4012) 39-10-16'),
(208, 61, '_phone', 'field_5a21e2c8f7098'),
(209, 61, 'email', 'info@domain.ru'),
(210, 61, '_email', 'field_5a21e2da05a72'),
(211, 15, 'phone', '+7 (4012) 39-10-16'),
(212, 15, '_phone', 'field_5a21e2c8f7098'),
(213, 15, 'email', 'info@domain.ru'),
(214, 15, '_email', 'field_5a21e2da05a72'),
(215, 62, '_edit_last', '1'),
(216, 62, '_edit_lock', '1512318188:1'),
(217, 63, 'phone', ''),
(218, 63, '_phone', 'field_5a21e2c8f7098'),
(219, 63, 'email', ''),
(220, 63, '_email', 'field_5a21e2da05a72'),
(221, 62, 'phone', ''),
(222, 62, '_phone', 'field_5a21e2c8f7098'),
(223, 62, 'email', ''),
(224, 62, '_email', 'field_5a21e2da05a72'),
(225, 1, '_wp_old_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(226, 13, '_wp_old_slug', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0'),
(227, 14, '_wp_old_slug', '%d0%be-%d0%bd%d0%b0%d1%81'),
(228, 15, '_wp_old_slug', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b'),
(229, 16, '_wp_old_slug', '%d0%b1%d0%bb%d0%be%d0%b3'),
(230, 17, '_wp_old_slug', '%d1%80%d0%b0%d0%b7%d0%b4%d0%b5%d0%bb-%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%be%d0%b9-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d1%8b'),
(231, 39, '_wp_old_slug', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0'),
(232, 62, '_wp_old_slug', '%d0%bf%d1%80%d0%b0%d0%b2%d0%b8%d0%bb%d0%b0-%d1%83%d1%87%d0%b0%d1%81%d1%82%d0%b8%d1%8f'),
(233, 64, '_edit_last', '1'),
(234, 64, '_edit_lock', '1512318250:1'),
(235, 65, 'phone', ''),
(236, 65, '_phone', 'field_5a21e2c8f7098'),
(237, 65, 'email', ''),
(238, 65, '_email', 'field_5a21e2da05a72'),
(239, 64, 'phone', ''),
(240, 64, '_phone', 'field_5a21e2c8f7098'),
(241, 64, 'email', ''),
(242, 64, '_email', 'field_5a21e2da05a72'),
(243, 66, '_edit_last', '1'),
(244, 66, '_edit_lock', '1512318274:1'),
(245, 67, 'phone', ''),
(246, 67, '_phone', 'field_5a21e2c8f7098'),
(247, 67, 'email', ''),
(248, 67, '_email', 'field_5a21e2da05a72'),
(249, 66, 'phone', ''),
(250, 66, '_phone', 'field_5a21e2c8f7098'),
(251, 66, 'email', ''),
(252, 66, '_email', 'field_5a21e2da05a72'),
(253, 68, '_edit_last', '1'),
(254, 69, 'phone', ''),
(255, 69, '_phone', 'field_5a21e2c8f7098'),
(256, 69, 'email', ''),
(257, 69, '_email', 'field_5a21e2da05a72'),
(258, 68, 'phone', ''),
(259, 68, '_phone', 'field_5a21e2c8f7098'),
(260, 68, 'email', ''),
(261, 68, '_email', 'field_5a21e2da05a72'),
(262, 68, '_edit_lock', '1512318306:1'),
(263, 70, 'phone', ''),
(264, 70, '_phone', 'field_5a21e2c8f7098'),
(265, 70, 'email', ''),
(266, 70, '_email', 'field_5a21e2da05a72'),
(267, 72, '_menu_item_type', 'post_type'),
(268, 72, '_menu_item_menu_item_parent', '0'),
(269, 72, '_menu_item_object_id', '68'),
(270, 72, '_menu_item_object', 'page'),
(271, 72, '_menu_item_target', ''),
(272, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(273, 72, '_menu_item_xfn', ''),
(274, 72, '_menu_item_url', ''),
(276, 73, '_menu_item_type', 'post_type'),
(277, 73, '_menu_item_menu_item_parent', '0'),
(278, 73, '_menu_item_object_id', '66'),
(279, 73, '_menu_item_object', 'page'),
(280, 73, '_menu_item_target', ''),
(281, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(282, 73, '_menu_item_xfn', ''),
(283, 73, '_menu_item_url', ''),
(285, 74, '_menu_item_type', 'post_type'),
(286, 74, '_menu_item_menu_item_parent', '0'),
(287, 74, '_menu_item_object_id', '64'),
(288, 74, '_menu_item_object', 'page'),
(289, 74, '_menu_item_target', ''),
(290, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(291, 74, '_menu_item_xfn', ''),
(292, 74, '_menu_item_url', ''),
(294, 75, '_menu_item_type', 'post_type'),
(295, 75, '_menu_item_menu_item_parent', '0'),
(296, 75, '_menu_item_object_id', '62'),
(297, 75, '_menu_item_object', 'page'),
(298, 75, '_menu_item_target', ''),
(299, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(300, 75, '_menu_item_xfn', ''),
(301, 75, '_menu_item_url', ''),
(303, 76, '_edit_last', '1'),
(304, 76, '_edit_lock', '1512327525:1'),
(305, 77, 'phone', ''),
(306, 77, '_phone', 'field_5a21e2c8f7098'),
(307, 77, 'email', ''),
(308, 77, '_email', 'field_5a21e2da05a72'),
(309, 76, 'phone', ''),
(310, 76, '_phone', 'field_5a21e2c8f7098'),
(311, 76, 'email', ''),
(312, 76, '_email', 'field_5a21e2da05a72'),
(313, 79, 'phone', ''),
(314, 79, '_phone', 'field_5a21e2c8f7098'),
(315, 79, 'email', ''),
(316, 79, '_email', 'field_5a21e2da05a72'),
(317, 80, 'phone', ''),
(318, 80, '_phone', 'field_5a21e2c8f7098'),
(319, 80, 'email', ''),
(320, 80, '_email', 'field_5a21e2da05a72'),
(321, 81, 'phone', ''),
(322, 81, '_phone', 'field_5a21e2c8f7098'),
(323, 81, 'email', ''),
(324, 81, '_email', 'field_5a21e2da05a72'),
(325, 82, 'phone', ''),
(326, 82, '_phone', 'field_5a21e2c8f7098'),
(327, 82, 'email', ''),
(328, 82, '_email', 'field_5a21e2da05a72'),
(329, 83, 'phone', ''),
(330, 83, '_phone', 'field_5a21e2c8f7098'),
(331, 83, 'email', ''),
(332, 83, '_email', 'field_5a21e2da05a72'),
(333, 84, 'phone', ''),
(334, 84, '_phone', 'field_5a21e2c8f7098'),
(335, 84, 'email', ''),
(336, 84, '_email', 'field_5a21e2da05a72'),
(337, 85, '_edit_lock', '1512327544:1'),
(338, 85, '_wp_trash_meta_status', 'publish'),
(339, 85, '_wp_trash_meta_time', '1512327544'),
(340, 86, 'phone', ''),
(341, 86, '_phone', 'field_5a21e2c8f7098'),
(342, 86, 'email', ''),
(343, 86, '_email', 'field_5a21e2da05a72'),
(344, 86, 'onetest', '25'),
(345, 86, '_onetest', 'field_5a21b4ccf09a2'),
(346, 86, 'main_title', '<div class=\"titleOne\">Электронные </div><div class=\"titleTwo\"> олимпиады</div><div class=\"titleThree\"> для школьников</div>'),
(347, 86, '_main_title', 'field_5a21b91472113'),
(348, 86, 'amount', 'по <b>15</b><br /> предметам'),
(349, 86, '_amount', 'field_5a21d8b1e4d8d'),
(350, 13, 'phone', ''),
(351, 13, '_phone', 'field_5a21e2c8f7098'),
(352, 13, 'email', ''),
(353, 13, '_email', 'field_5a21e2da05a72'),
(354, 16, '_edit_lock', '1512327687:1'),
(355, 16, '_edit_last', '1'),
(356, 16, 'phone', ''),
(357, 16, '_phone', 'field_5a21e2c8f7098'),
(358, 16, 'email', ''),
(359, 16, '_email', 'field_5a21e2da05a72'),
(360, 1, '_edit_lock', '1512331043:1'),
(361, 87, '_edit_last', '1'),
(362, 87, 'field_5a244b01624fa', 'a:14:{s:3:\"key\";s:19:\"field_5a244b01624fa\";s:5:\"label\";s:27:\"Превью новости\";s:4:\"name\";s:12:\"news_preview\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(363, 87, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(364, 87, 'position', 'normal'),
(365, 87, 'layout', 'no_box'),
(366, 87, 'hide_on_screen', ''),
(367, 87, '_edit_lock', '1512328364:1'),
(368, 1, '_edit_last', '1'),
(370, 1, '_thumbnail_id', '24'),
(372, 90, 'news_preview', 'Новые возможности сайта для большей надежности получения Ваших материалов!'),
(373, 90, '_news_preview', 'field_5a244b01624fa'),
(374, 1, '_wp_old_slug', 'privet-mir'),
(375, 1, 'news_preview', ''),
(376, 1, '_news_preview', 'field_5a244b01624fa'),
(377, 91, '_edit_last', '1'),
(378, 91, '_edit_lock', '1512331065:1'),
(380, 92, 'news_preview', 'Начинаем прием заявок на зимнюю сессию с 07 ноября 2017 года по 10 января 2018'),
(381, 92, '_news_preview', 'field_5a244b01624fa'),
(382, 91, 'news_preview', ''),
(383, 91, '_news_preview', 'field_5a244b01624fa'),
(384, 91, '_thumbnail_id', '25'),
(389, 94, 'news_preview', ''),
(390, 94, '_news_preview', 'field_5a244b01624fa'),
(392, 95, 'news_preview', ''),
(393, 95, '_news_preview', 'field_5a244b01624fa'),
(394, 87, '_wp_trash_meta_status', 'publish'),
(395, 87, '_wp_trash_meta_time', '1512331214'),
(396, 87, '_wp_desired_post_slug', 'acf_post-preview'),
(397, 96, '_edit_last', '1'),
(398, 96, '_edit_lock', '1512333107:1'),
(399, 97, 'phone', ''),
(400, 97, '_phone', 'field_5a21e2c8f7098'),
(401, 97, 'email', ''),
(402, 97, '_email', 'field_5a21e2da05a72'),
(403, 96, 'phone', ''),
(404, 96, '_phone', 'field_5a21e2c8f7098'),
(405, 96, 'email', ''),
(406, 96, '_email', 'field_5a21e2da05a72'),
(407, 53, 'field_5a24600e2c564', 'a:15:{s:3:\"key\";s:19:\"field_5a24600e2c564\";s:5:\"label\";s:56:\"Количество школ по всей России\";s:4:\"name\";s:7:\"schools\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(409, 98, 'phone', ''),
(410, 98, '_phone', 'field_5a21e2c8f7098'),
(411, 98, 'email', ''),
(412, 98, '_email', 'field_5a21e2da05a72'),
(413, 98, 'onetest', '25'),
(414, 98, '_onetest', 'field_5a21b4ccf09a2'),
(415, 98, 'main_title', '<div class=\"titleOne\">Электронные </div><div class=\"titleTwo\"> олимпиады</div><div class=\"titleThree\"> для школьников</div>'),
(416, 98, '_main_title', 'field_5a21b91472113'),
(417, 98, 'amount', 'по <b>15</b><br /> предметам'),
(418, 98, '_amount', 'field_5a21d8b1e4d8d'),
(419, 98, 'schools', '8970'),
(420, 98, '_schools', 'field_5a24600e2c564'),
(421, 13, 'schools', '8970'),
(422, 13, '_schools', 'field_5a24600e2c564'),
(427, 53, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"13\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(428, 99, '_edit_last', '1'),
(429, 99, '_edit_lock', '1512335232:1'),
(430, 100, 'phone', ''),
(431, 100, '_phone', 'field_5a21e2c8f7098'),
(432, 100, 'email', ''),
(433, 100, '_email', 'field_5a21e2da05a72'),
(434, 99, 'phone', ''),
(435, 99, '_phone', 'field_5a21e2c8f7098'),
(436, 99, 'email', ''),
(437, 99, '_email', 'field_5a21e2da05a72'),
(438, 101, '_edit_lock', '1512335948:1'),
(439, 101, '_wp_trash_meta_status', 'publish'),
(440, 101, '_wp_trash_meta_time', '1512335948'),
(441, 102, '_edit_lock', '1512336080:1'),
(442, 102, '_wp_trash_meta_status', 'publish'),
(443, 102, '_wp_trash_meta_time', '1512336080'),
(444, 103, '_wp_trash_meta_status', 'publish'),
(445, 103, '_wp_trash_meta_time', '1512336114'),
(446, 104, '_wp_trash_meta_status', 'publish'),
(447, 104, '_wp_trash_meta_time', '1512336212'),
(448, 105, '_edit_last', '1'),
(449, 105, '_edit_lock', '1512336465:1'),
(450, 106, 'phone', ''),
(451, 106, '_phone', 'field_5a21e2c8f7098'),
(452, 106, 'email', ''),
(453, 106, '_email', 'field_5a21e2da05a72'),
(454, 105, 'phone', ''),
(455, 105, '_phone', 'field_5a21e2c8f7098'),
(456, 105, 'email', ''),
(457, 105, '_email', 'field_5a21e2da05a72');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
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
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-12-01 22:33:33', '2017-12-01 19:33:33', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi asperiores commodi culpa dicta error fugit id incidunt ipsa ipsum laborum laudantium maxime molestiae nobis sit sunt, tempore velit, veritatis! Praesentium.', 'Внимание! Наградные материалы доступны для скачивания!', 'Новые возможности сайта для большей надежности получения Ваших материалов!', 'publish', 'open', 'open', '', 'vnimanie', '', '', '2017-12-03 22:52:38', '2017-12-03 19:52:38', '', 0, 'http://localhost/tester/?p=1', 0, 'post', '', 1),
(2, 1, '2017-12-01 22:33:33', '2017-12-01 19:33:33', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://localhost/tester/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-12-01 22:33:33', '2017-12-01 19:33:33', '', 0, 'http://localhost/tester/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-12-01 22:34:00', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-01 22:34:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/tester/?p=3', 0, 'post', '', 0),
(4, 1, '2017-12-01 22:47:26', '0000-00-00 00:00:00', 'Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.', 'Главная страница', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-01 22:47:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/tester/?page_id=4', 0, 'page', '', 0),
(5, 1, '2017-12-01 22:47:26', '0000-00-00 00:00:00', 'Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.', 'О нас', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-01 22:47:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/tester/?page_id=5', 0, 'page', '', 0),
(6, 1, '2017-12-01 22:47:26', '0000-00-00 00:00:00', 'Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.', 'Контакты', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-01 22:47:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/tester/?page_id=6', 0, 'page', '', 0),
(7, 1, '2017-12-01 22:47:26', '0000-00-00 00:00:00', '', 'Блог', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-01 22:47:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/tester/?page_id=7', 0, 'page', '', 0),
(8, 1, '2017-12-01 22:47:26', '0000-00-00 00:00:00', 'Это пример раздела главной страницы. Разделы домашней страницы могут быть любыми страницами кроме самой главной страницы, включая страницу последних записей блога.', 'Раздел главной страницы', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-01 22:47:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/tester/?page_id=8', 0, 'page', '', 0),
(9, 1, '2017-12-01 22:47:26', '0000-00-00 00:00:00', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIxOiLQndCw0LnQtNC40YLQtSDQvdCw0YEiO3M6NDoidGV4dCI7czoyMjY6IjxzdHJvbmc+0JDQtNGA0LXRgTwvc3Ryb25nPgoxMjMg0JzQtdC50L0g0YHRgtGA0LjRggrQndGM0Y4g0JnQvtGA0LosIE5ZIDEwMDAxCgo8c3Ryb25nPtCn0LDRgdGLPC9zdHJvbmc+CtCf0L7QvdC10LTQtdC70YzQvdC40LombWRhc2g70L/Rj9GC0L3QuNGG0LA6IDk6MDAmbmRhc2g7MTc6MDAK0KHRg9Cx0LHQvtGC0LAg0Lgg0LLQvtGB0LrRgNC10YHQtdC90YzQtTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u041d\\u0430\\u0439\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0441\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"bb5fb656bbf11b534633965e92db3003\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiLQn9C+0LjRgdC6Ijt9\",\n            \"title\": \"\\u041f\\u043e\\u0438\\u0441\\u043a\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"adfe04cc57a2024b8f2b0150d67792b6\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEzOiLQniDRgdCw0LnRgtC1IjtzOjQ6InRleHQiO3M6MjA1OiLQl9C00LXRgdGMINC80L7QttC10YIg0LHRi9GC0Ywg0L7RgtC70LjRh9C90L7QtSDQvNC10YHRgtC+INC00LvRjyDRgtC+0LPQviwg0YfRgtC+0LHRiyDQv9GA0LXQtNGB0YLQsNCy0LjRgtGMINGB0LXQsdGPLCDRgdCy0L7QuSDRgdCw0LnRgiDQuNC70Lgg0LLRi9GA0LDQt9C40YLRjCDQutCw0LrQuNC1LdGC0L4g0LHQu9Cw0LPQvtC00LDRgNC90L7RgdGC0LguIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\\u041e \\u0441\\u0430\\u0439\\u0442\\u0435\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"9d87dbfa1e4b95853ba7dc8677081a8a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\",\n            \"search-3\",\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIxOiLQndCw0LnQtNC40YLQtSDQvdCw0YEiO3M6NDoidGV4dCI7czoyMjY6IjxzdHJvbmc+0JDQtNGA0LXRgTwvc3Ryb25nPgoxMjMg0JzQtdC50L0g0YHRgtGA0LjRggrQndGM0Y4g0JnQvtGA0LosIE5ZIDEwMDAxCgo8c3Ryb25nPtCn0LDRgdGLPC9zdHJvbmc+CtCf0L7QvdC10LTQtdC70YzQvdC40LombWRhc2g70L/Rj9GC0L3QuNGG0LA6IDk6MDAmbmRhc2g7MTc6MDAK0KHRg9Cx0LHQvtGC0LAg0Lgg0LLQvtGB0LrRgNC10YHQtdC90YzQtTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u041d\\u0430\\u0439\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0441\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"bb5fb656bbf11b534633965e92db3003\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEzOiLQniDRgdCw0LnRgtC1IjtzOjQ6InRleHQiO3M6MjA1OiLQl9C00LXRgdGMINC80L7QttC10YIg0LHRi9GC0Ywg0L7RgtC70LjRh9C90L7QtSDQvNC10YHRgtC+INC00LvRjyDRgtC+0LPQviwg0YfRgtC+0LHRiyDQv9GA0LXQtNGB0YLQsNCy0LjRgtGMINGB0LXQsdGPLCDRgdCy0L7QuSDRgdCw0LnRgiDQuNC70Lgg0LLRi9GA0LDQt9C40YLRjCDQutCw0LrQuNC1LdGC0L4g0LHQu9Cw0LPQvtC00LDRgNC90L7RgdGC0LguIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\\u041e \\u0441\\u0430\\u0439\\u0442\\u0435\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"9d87dbfa1e4b95853ba7dc8677081a8a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiLQn9C+0LjRgdC6Ijt9\",\n            \"title\": \"\\u041f\\u043e\\u0438\\u0441\\u043a\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"adfe04cc57a2024b8f2b0150d67792b6\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            4,\n            5,\n            6,\n            7,\n            8\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"\\u0412\\u0435\\u0440\\u0445\\u043d\\u0435\\u0435 \\u043c\\u0435\\u043d\\u044e\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\n            \"url\": \"http://localhost/tester/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 5,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u041e \\u043d\\u0430\\u0441\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 7,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u0411\\u043b\\u043e\\u0433\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 6,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"tester::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"\\u041c\\u0435\\u043d\\u044e \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u0441\\u044b\\u043b\\u043e\\u043a\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"tester::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 4,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 7,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"tester::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"tester::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"tester::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 7,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    },\n    \"tester::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 6,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:47:26\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'b853eb12-ea69-44ac-9f90-af140293f59f', '', '', '2017-12-01 22:47:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/tester/?p=9', 0, 'customize_changeset', '', 0),
(10, 1, '2017-12-01 22:50:40', '2017-12-01 19:50:40', '', 'Эспрессо', '', 'inherit', 'open', 'closed', '', '%d1%8d%d1%81%d0%bf%d1%80%d0%b5%d1%81%d1%81%d0%be', '', '', '2017-12-01 22:50:40', '2017-12-01 19:50:40', '', 0, 'http://localhost/tester/wp-content/uploads/2017/12/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2017-12-01 22:50:40', '2017-12-01 19:50:40', '', 'Сэндвич', '', 'inherit', 'open', 'closed', '', '%d1%81%d1%8d%d0%bd%d0%b4%d0%b2%d0%b8%d1%87', '', '', '2017-12-01 22:50:40', '2017-12-01 19:50:40', '', 0, 'http://localhost/tester/wp-content/uploads/2017/12/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2017-12-01 22:50:40', '2017-12-01 19:50:40', '', 'Кофе', '', 'inherit', 'open', 'closed', '', '%d0%ba%d0%be%d1%84%d0%b5', '', '', '2017-12-01 22:50:40', '2017-12-01 19:50:40', '', 0, 'http://localhost/tester/wp-content/uploads/2017/12/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2017-12-01 22:50:40', '2017-12-01 19:50:40', '', 'Главная страница', '', 'publish', 'closed', 'closed', '', 'glavnaya-stranitsa', '', '', '2017-12-03 23:36:36', '2017-12-03 20:36:36', '', 0, 'http://localhost/tester/?page_id=13', 0, 'page', '', 0),
(14, 1, '2017-12-01 22:50:40', '2017-12-01 19:50:40', 'Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.', 'О нас', '', 'publish', 'closed', 'closed', '', 'o-nas', '', '', '2017-12-01 22:50:40', '2017-12-01 19:50:40', '', 0, 'http://localhost/tester/?page_id=14', 0, 'page', '', 0),
(15, 1, '2017-12-01 22:50:40', '2017-12-01 19:50:40', 'Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.', 'Контакты', '', 'publish', 'closed', 'closed', '', 'kontakty', '', '', '2017-12-02 02:24:34', '2017-12-01 23:24:34', '', 0, 'http://localhost/tester/?page_id=15', 0, 'page', '', 0),
(16, 1, '2017-12-01 22:50:40', '2017-12-01 19:50:40', '', 'Блог', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2017-12-03 22:03:03', '2017-12-03 19:03:03', '', 0, 'http://localhost/tester/?page_id=16', 0, 'page', '', 0),
(17, 1, '2017-12-01 22:50:40', '2017-12-01 19:50:40', 'Это пример раздела главной страницы. Разделы домашней страницы могут быть любыми страницами кроме самой главной страницы, включая страницу последних записей блога.', 'Раздел главной страницы', '', 'publish', 'closed', 'closed', '', 'razdel-glavnoj-stranitsy', '', '', '2017-12-01 22:50:40', '2017-12-01 19:50:40', '', 0, 'http://localhost/tester/?page_id=17', 0, 'page', '', 0),
(18, 1, '2017-12-01 22:50:40', '2017-12-01 19:50:40', '{\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIxOiLQndCw0LnQtNC40YLQtSDQvdCw0YEiO3M6NDoidGV4dCI7czoyMjY6IjxzdHJvbmc+0JDQtNGA0LXRgTwvc3Ryb25nPgoxMjMg0JzQtdC50L0g0YHRgtGA0LjRggrQndGM0Y4g0JnQvtGA0LosIE5ZIDEwMDAxCgo8c3Ryb25nPtCn0LDRgdGLPC9zdHJvbmc+CtCf0L7QvdC10LTQtdC70YzQvdC40LombWRhc2g70L/Rj9GC0L3QuNGG0LA6IDk6MDAmbmRhc2g7MTc6MDAK0KHRg9Cx0LHQvtGC0LAg0Lgg0LLQvtGB0LrRgNC10YHQtdC90YzQtTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u041d\\u0430\\u0439\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0441\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"bb5fb656bbf11b534633965e92db3003\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:49:28\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiLQn9C+0LjRgdC6Ijt9\",\n            \"title\": \"\\u041f\\u043e\\u0438\\u0441\\u043a\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"adfe04cc57a2024b8f2b0150d67792b6\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:49:28\"\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEzOiLQniDRgdCw0LnRgtC1IjtzOjQ6InRleHQiO3M6MjA1OiLQl9C00LXRgdGMINC80L7QttC10YIg0LHRi9GC0Ywg0L7RgtC70LjRh9C90L7QtSDQvNC10YHRgtC+INC00LvRjyDRgtC+0LPQviwg0YfRgtC+0LHRiyDQv9GA0LXQtNGB0YLQsNCy0LjRgtGMINGB0LXQsdGPLCDRgdCy0L7QuSDRgdCw0LnRgiDQuNC70Lgg0LLRi9GA0LDQt9C40YLRjCDQutCw0LrQuNC1LdGC0L4g0LHQu9Cw0LPQvtC00LDRgNC90L7RgdGC0LguIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\\u041e \\u0441\\u0430\\u0439\\u0442\\u0435\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"9d87dbfa1e4b95853ba7dc8677081a8a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:49:28\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-6\",\n            \"search-3\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:49:28\"\n    },\n    \"widget_text[8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIxOiLQndCw0LnQtNC40YLQtSDQvdCw0YEiO3M6NDoidGV4dCI7czoyMjY6IjxzdHJvbmc+0JDQtNGA0LXRgTwvc3Ryb25nPgoxMjMg0JzQtdC50L0g0YHRgtGA0LjRggrQndGM0Y4g0JnQvtGA0LosIE5ZIDEwMDAxCgo8c3Ryb25nPtCn0LDRgdGLPC9zdHJvbmc+CtCf0L7QvdC10LTQtdC70YzQvdC40LombWRhc2g70L/Rj9GC0L3QuNGG0LA6IDk6MDAmbmRhc2g7MTc6MDAK0KHRg9Cx0LHQvtGC0LAg0Lgg0LLQvtGB0LrRgNC10YHQtdC90YzQtTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u041d\\u0430\\u0439\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0441\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"bb5fb656bbf11b534633965e92db3003\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:49:28\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:49:28\"\n    },\n    \"widget_text[9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEzOiLQniDRgdCw0LnRgtC1IjtzOjQ6InRleHQiO3M6MjA1OiLQl9C00LXRgdGMINC80L7QttC10YIg0LHRi9GC0Ywg0L7RgtC70LjRh9C90L7QtSDQvNC10YHRgtC+INC00LvRjyDRgtC+0LPQviwg0YfRgtC+0LHRiyDQv9GA0LXQtNGB0YLQsNCy0LjRgtGMINGB0LXQsdGPLCDRgdCy0L7QuSDRgdCw0LnRgiDQuNC70Lgg0LLRi9GA0LDQt9C40YLRjCDQutCw0LrQuNC1LdGC0L4g0LHQu9Cw0LPQvtC00LDRgNC90L7RgdGC0LguIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\\u041e \\u0441\\u0430\\u0439\\u0442\\u0435\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"9d87dbfa1e4b95853ba7dc8677081a8a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:49:28\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiLQn9C+0LjRgdC6Ijt9\",\n            \"title\": \"\\u041f\\u043e\\u0438\\u0441\\u043a\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"adfe04cc57a2024b8f2b0150d67792b6\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:49:28\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-9\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:49:28\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            10,\n            11,\n            12,\n            13,\n            14,\n            15,\n            16,\n            17\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:49:28\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"\\u0412\\u0435\\u0440\\u0445\\u043d\\u0435\\u0435 \\u043c\\u0435\\u043d\\u044e\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:50:40\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\n            \"url\": \"http://localhost/tester/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:50:40\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 14,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041e \\u043d\\u0430\\u0441\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041e \\u043d\\u0430\\u0441\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:50:40\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 16,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0411\\u043b\\u043e\\u0433\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0411\\u043b\\u043e\\u0433\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:50:40\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 15,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:50:40\"\n    },\n    \"tester::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:49:28\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"\\u041c\\u0435\\u043d\\u044e \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u0441\\u044b\\u043b\\u043e\\u043a\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:50:40\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:50:40\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:50:40\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:50:40\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:50:40\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:50:40\"\n    },\n    \"tester::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:49:28\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:49:28\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 13,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:49:28\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 16,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:49:28\"\n    },\n    \"tester::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 17,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:49:28\"\n    },\n    \"tester::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 14,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:49:28\"\n    },\n    \"tester::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 16,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:49:28\"\n    },\n    \"tester::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 15,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:49:28\"\n    },\n    \"tester::custom_logo\": {\n        \"value\": 22,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:50:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a741ca54-05a4-4a98-b8e9-8b891da98c55', '', '', '2017-12-01 22:50:40', '2017-12-01 19:50:40', '', 0, 'http://localhost/tester/?p=18', 0, 'customize_changeset', '', 0),
(19, 1, '2017-12-01 22:49:57', '2017-12-01 19:49:57', '', 'back', '', 'inherit', 'open', 'closed', '', 'back', '', '', '2017-12-01 22:49:57', '2017-12-01 19:49:57', '', 0, 'http://localhost/tester/wp-content/uploads/2017/12/back.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2017-12-01 22:49:58', '2017-12-01 19:49:58', '', 'background', '', 'inherit', 'open', 'closed', '', 'background', '', '', '2017-12-01 22:49:58', '2017-12-01 19:49:58', '', 0, 'http://localhost/tester/wp-content/uploads/2017/12/background.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2017-12-01 22:50:02', '2017-12-01 19:50:02', '', 'country', '', 'inherit', 'open', 'closed', '', 'country', '', '', '2017-12-01 22:50:02', '2017-12-01 19:50:02', '', 0, 'http://localhost/tester/wp-content/uploads/2017/12/country.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2017-12-01 22:50:03', '2017-12-01 19:50:03', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2017-12-01 22:50:03', '2017-12-01 19:50:03', '', 0, 'http://localhost/tester/wp-content/uploads/2017/12/logo.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2017-12-01 22:50:04', '2017-12-01 19:50:04', '', 'logo (1)', '', 'inherit', 'open', 'closed', '', 'logo-1', '', '', '2017-12-01 22:50:04', '2017-12-01 19:50:04', '', 0, 'http://localhost/tester/wp-content/uploads/2017/12/logo-1.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2017-12-01 22:50:04', '2017-12-01 19:50:04', '', 'news1', '', 'inherit', 'open', 'closed', '', 'news1', '', '', '2017-12-01 22:50:04', '2017-12-01 19:50:04', '', 0, 'http://localhost/tester/wp-content/uploads/2017/12/news1.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2017-12-01 22:50:05', '2017-12-01 19:50:05', '', 'news2', '', 'inherit', 'open', 'closed', '', 'news2', '', '', '2017-12-01 22:50:05', '2017-12-01 19:50:05', '', 0, 'http://localhost/tester/wp-content/uploads/2017/12/news2.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2017-12-01 22:50:06', '2017-12-01 19:50:06', '', 'school', '', 'inherit', 'open', 'closed', '', 'school', '', '', '2017-12-01 22:50:06', '2017-12-01 19:50:06', '', 0, 'http://localhost/tester/wp-content/uploads/2017/12/school.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2017-12-01 22:50:07', '2017-12-01 19:50:07', '', 'step1', '', 'inherit', 'open', 'closed', '', 'step1', '', '', '2017-12-03 19:47:40', '2017-12-03 16:47:40', '', 76, 'http://localhost/tester/wp-content/uploads/2017/12/step1.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2017-12-01 22:50:08', '2017-12-01 19:50:08', '', 'step2', '', 'inherit', 'open', 'closed', '', 'step2', '', '', '2017-12-03 19:49:19', '2017-12-03 16:49:19', '', 76, 'http://localhost/tester/wp-content/uploads/2017/12/step2.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2017-12-01 22:50:08', '2017-12-01 19:50:08', '', 'step3', '', 'inherit', 'open', 'closed', '', 'step3', '', '', '2017-12-03 19:49:38', '2017-12-03 16:49:38', '', 76, 'http://localhost/tester/wp-content/uploads/2017/12/step3.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2017-12-01 22:50:09', '2017-12-01 19:50:09', '', 'step4', '', 'inherit', 'open', 'closed', '', 'step4', '', '', '2017-12-03 19:49:58', '2017-12-03 16:49:58', '', 76, 'http://localhost/tester/wp-content/uploads/2017/12/step4.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2017-12-01 22:50:09', '2017-12-01 19:50:09', '', 'step5', '', 'inherit', 'open', 'closed', '', 'step5', '', '', '2017-12-03 19:50:24', '2017-12-03 16:50:24', '', 76, 'http://localhost/tester/wp-content/uploads/2017/12/step5.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2017-12-01 22:50:10', '2017-12-01 19:50:10', '', 'step6', '', 'inherit', 'open', 'closed', '', 'step6', '', '', '2017-12-03 19:51:00', '2017-12-03 16:51:00', '', 76, 'http://localhost/tester/wp-content/uploads/2017/12/step6.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2017-12-01 22:50:11', '2017-12-01 19:50:11', '', 'step7', '', 'inherit', 'open', 'closed', '', 'step7', '', '', '2017-12-03 19:51:18', '2017-12-03 16:51:18', '', 76, 'http://localhost/tester/wp-content/uploads/2017/12/step7.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2017-12-01 22:50:40', '2017-12-01 19:50:40', 'Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-12-01 22:50:40', '2017-12-01 19:50:40', '', 13, 'http://localhost/tester/?p=34', 0, 'revision', '', 0),
(35, 1, '2017-12-01 22:50:40', '2017-12-01 19:50:40', 'Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.', 'О нас', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2017-12-01 22:50:40', '2017-12-01 19:50:40', '', 14, 'http://localhost/tester/?p=35', 0, 'revision', '', 0),
(36, 1, '2017-12-01 22:50:40', '2017-12-01 19:50:40', 'Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.', 'Контакты', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2017-12-01 22:50:40', '2017-12-01 19:50:40', '', 15, 'http://localhost/tester/?p=36', 0, 'revision', '', 0),
(37, 1, '2017-12-01 22:50:40', '2017-12-01 19:50:40', '', 'Блог', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2017-12-01 22:50:40', '2017-12-01 19:50:40', '', 16, 'http://localhost/tester/?p=37', 0, 'revision', '', 0),
(38, 1, '2017-12-01 22:50:40', '2017-12-01 19:50:40', 'Это пример раздела главной страницы. Разделы домашней страницы могут быть любыми страницами кроме самой главной страницы, включая страницу последних записей блога.', 'Раздел главной страницы', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2017-12-01 22:50:40', '2017-12-01 19:50:40', '', 17, 'http://localhost/tester/?p=38', 0, 'revision', '', 0),
(39, 1, '2017-12-01 22:50:40', '2017-12-01 19:50:40', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'glavnaya-stranitsa', '', '', '2017-12-03 19:28:45', '2017-12-03 16:28:45', '', 0, 'http://localhost/tester/?p=39', 1, 'nav_menu_item', '', 0),
(42, 1, '2017-12-01 22:50:41', '2017-12-01 19:50:41', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2017-12-03 19:28:45', '2017-12-03 16:28:45', '', 0, 'http://localhost/tester/?p=42', 6, 'nav_menu_item', '', 0),
(43, 1, '2017-12-01 22:50:41', '2017-12-01 19:50:41', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2017-12-01 22:50:41', '2017-12-01 19:50:41', '', 0, 'http://localhost/tester/?p=43', 0, 'nav_menu_item', '', 0),
(44, 1, '2017-12-01 22:50:41', '2017-12-01 19:50:41', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2017-12-01 22:50:41', '2017-12-01 19:50:41', '', 0, 'http://localhost/tester/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2017-12-01 22:50:41', '2017-12-01 19:50:41', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2017-12-01 22:50:41', '2017-12-01 19:50:41', '', 0, 'http://localhost/tester/?p=45', 2, 'nav_menu_item', '', 0),
(46, 1, '2017-12-01 22:50:41', '2017-12-01 19:50:41', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2017-12-01 22:50:41', '2017-12-01 19:50:41', '', 0, 'http://localhost/tester/?p=46', 3, 'nav_menu_item', '', 0),
(47, 1, '2017-12-01 22:50:41', '2017-12-01 19:50:41', '', 'E-mail', '', 'publish', 'closed', 'closed', '', 'e-mail', '', '', '2017-12-01 22:50:41', '2017-12-01 19:50:41', '', 0, 'http://localhost/tester/?p=47', 4, 'nav_menu_item', '', 0),
(48, 1, '2017-12-01 22:51:18', '2017-12-01 19:51:18', '{\n    \"blogdescription\": {\n        \"value\": \"\\u0410\\u041d\\u041e \\u0414\\u041f\\u041e \\u0410\\u043a\\u0430\\u0434\\u0435\\u043c\\u0438\\u044f \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u0438\\u044f \\u043f\\u0435\\u0440\\u0435\\u0434\\u043e\\u0432\\u044b\\u0445 \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0439\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 19:51:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '581de331-542e-454e-86a4-6171c51f3578', '', '', '2017-12-01 22:51:18', '2017-12-01 19:51:18', '', 0, 'http://localhost/tester/?p=48', 0, 'customize_changeset', '', 0),
(49, 1, '2017-12-01 22:54:08', '2017-12-01 19:54:08', '[wp-recall]', 'Личный кабинет', '', 'publish', 'closed', 'closed', '', 'account', '', '', '2017-12-01 22:54:08', '2017-12-01 19:54:08', '', 0, 'http://localhost/tester/?page_id=49', 0, 'page', '', 0),
(50, 1, '2017-12-01 22:54:08', '2017-12-01 19:54:08', '[feed]', 'FEED', '', 'publish', 'closed', 'closed', '', 'user-feed', '', '', '2017-12-01 22:54:08', '2017-12-01 19:54:08', '', 0, 'http://localhost/tester/?page_id=50', 0, 'page', '', 0),
(51, 1, '2017-12-01 22:54:08', '2017-12-01 19:54:08', '[userlist inpage=\"30\" orderby=\"time_action\" template=\"rows\" data=\"rating_total,comments_count,posts_count,description\" filters=\"1\" order=\"DESC\"]', 'Пользователи', '', 'publish', 'closed', 'closed', '', 'users', '', '', '2017-12-01 22:54:08', '2017-12-01 19:54:08', '', 0, 'http://localhost/tester/?page_id=51', 0, 'page', '', 0),
(52, 1, '2017-12-01 22:54:08', '2017-12-01 19:54:08', '[public-form]', 'Форма публикации', '', 'publish', 'closed', 'closed', '', 'rcl-postedit', '', '', '2017-12-01 22:54:08', '2017-12-01 19:54:08', '', 0, 'http://localhost/tester/?page_id=52', 0, 'page', '', 0),
(53, 1, '2017-12-01 23:00:48', '2017-12-01 20:00:48', '', 'MainPage', '', 'publish', 'closed', 'closed', '', 'acf_mainpage', '', '', '2017-12-03 23:39:19', '2017-12-03 20:39:19', '', 0, 'http://localhost/tester/?post_type=acf&#038;p=53', 0, 'acf', '', 0),
(54, 1, '2017-12-01 23:02:12', '2017-12-01 20:02:12', '{\n    \"tester::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 20:02:12\"\n    },\n    \"tester::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-01 20:02:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '48aa62fa-529e-47d0-82f3-23c8b4f30358', '', '', '2017-12-01 23:02:12', '2017-12-01 20:02:12', '', 0, 'http://localhost/tester/?p=54', 0, 'customize_changeset', '', 0),
(55, 1, '2017-12-01 23:02:36', '2017-12-01 20:02:36', 'Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-12-01 23:02:36', '2017-12-01 20:02:36', '', 13, 'http://localhost/tester/?p=55', 0, 'revision', '', 0),
(56, 1, '2017-12-02 01:36:01', '2017-12-01 22:36:01', 'Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-12-02 01:36:01', '2017-12-01 22:36:01', '', 13, 'http://localhost/tester/?p=56', 0, 'revision', '', 0),
(57, 1, '2017-12-02 01:38:21', '2017-12-01 22:38:21', 'Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-12-02 01:38:21', '2017-12-01 22:38:21', '', 13, 'http://localhost/tester/?p=57', 0, 'revision', '', 0),
(58, 1, '2017-12-02 01:39:13', '2017-12-01 22:39:13', 'Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-12-02 01:39:13', '2017-12-01 22:39:13', '', 13, 'http://localhost/tester/?p=58', 0, 'revision', '', 0),
(59, 1, '2017-12-02 01:46:30', '2017-12-01 22:46:30', 'Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-12-02 01:46:30', '2017-12-01 22:46:30', '', 13, 'http://localhost/tester/?p=59', 0, 'revision', '', 0),
(60, 1, '2017-12-02 02:16:39', '2017-12-01 23:16:39', '', 'info', '', 'publish', 'closed', 'closed', '', 'acf_info', '', '', '2017-12-02 02:24:02', '2017-12-01 23:24:02', '', 0, 'http://localhost/tester/?post_type=acf&#038;p=60', 0, 'acf', '', 0),
(61, 1, '2017-12-02 02:24:34', '2017-12-01 23:24:34', 'Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.', 'Контакты', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2017-12-02 02:24:34', '2017-12-01 23:24:34', '', 15, 'http://localhost/tester/?p=61', 0, 'revision', '', 0),
(62, 1, '2017-12-03 19:25:08', '2017-12-03 16:25:08', 'ЗДесь правила участия', 'Правила участия', '', 'publish', 'closed', 'closed', '', 'pravila-uchastiya', '', '', '2017-12-03 19:25:08', '2017-12-03 16:25:08', '', 0, 'http://localhost/tester/?page_id=62', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(63, 1, '2017-12-03 19:25:08', '2017-12-03 16:25:08', 'ЗДесь правила участия', 'Правила участия', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2017-12-03 19:25:08', '2017-12-03 16:25:08', '', 62, 'http://localhost/tester/?p=63', 0, 'revision', '', 0),
(64, 1, '2017-12-03 19:26:30', '2017-12-03 16:26:30', 'Здесь инструкция', 'Инструкция', '', 'publish', 'closed', 'closed', '', 'instruktsiya', '', '', '2017-12-03 19:26:30', '2017-12-03 16:26:30', '', 0, 'http://localhost/tester/?page_id=64', 0, 'page', '', 0),
(65, 1, '2017-12-03 19:26:30', '2017-12-03 16:26:30', 'Здесь инструкция', 'Инструкция', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2017-12-03 19:26:30', '2017-12-03 16:26:30', '', 64, 'http://localhost/tester/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2017-12-03 19:26:51', '2017-12-03 16:26:51', 'Здесь файлы и бланки', 'Файлы и бланки', '', 'publish', 'closed', 'closed', '', 'fajly-i-blanki', '', '', '2017-12-03 19:26:51', '2017-12-03 16:26:51', '', 0, 'http://localhost/tester/?page_id=66', 0, 'page', '', 0),
(67, 1, '2017-12-03 19:26:51', '2017-12-03 16:26:51', 'Здесь файлы и бланки', 'Файлы и бланки', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2017-12-03 19:26:51', '2017-12-03 16:26:51', '', 66, 'http://localhost/tester/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2017-12-03 19:27:09', '2017-12-03 16:27:09', 'ЗДесь образцы дипломов', 'Образцы дипломов', '', 'publish', 'closed', 'closed', '', 'obraztsy-diplomov', '', '', '2017-12-03 19:27:20', '2017-12-03 16:27:20', '', 0, 'http://localhost/tester/?page_id=68', 0, 'page', '', 0),
(69, 1, '2017-12-03 19:27:09', '2017-12-03 16:27:09', '', 'Образцы дипломов', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2017-12-03 19:27:09', '2017-12-03 16:27:09', '', 68, 'http://localhost/tester/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2017-12-03 19:27:20', '2017-12-03 16:27:20', 'ЗДесь образцы дипломов', 'Образцы дипломов', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2017-12-03 19:27:20', '2017-12-03 16:27:20', '', 68, 'http://localhost/tester/68-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2017-12-03 19:27:30', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-03 19:27:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/tester/?page_id=71', 0, 'page', '', 0),
(72, 1, '2017-12-03 19:28:45', '2017-12-03 16:28:45', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2017-12-03 19:28:45', '2017-12-03 16:28:45', '', 0, 'http://localhost/tester/?p=72', 5, 'nav_menu_item', '', 0),
(73, 1, '2017-12-03 19:28:45', '2017-12-03 16:28:45', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2017-12-03 19:28:45', '2017-12-03 16:28:45', '', 0, 'http://localhost/tester/?p=73', 4, 'nav_menu_item', '', 0),
(74, 1, '2017-12-03 19:28:45', '2017-12-03 16:28:45', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2017-12-03 19:28:45', '2017-12-03 16:28:45', '', 0, 'http://localhost/tester/?p=74', 3, 'nav_menu_item', '', 0),
(75, 1, '2017-12-03 19:28:45', '2017-12-03 16:28:45', ' ', '', '', 'publish', 'closed', 'closed', '', '75', '', '', '2017-12-03 19:28:45', '2017-12-03 16:28:45', '', 0, 'http://localhost/tester/?p=75', 2, 'nav_menu_item', '', 0),
(76, 1, '2017-12-03 19:51:33', '2017-12-03 16:51:33', '<div class=\"row\">\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-27\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step1.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nЗарегистрироваться или войти в личный кабинет\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-28\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step2.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nОтправить заявку на участие\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-29\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step3.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nВыбрать предметы в классе\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-30\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step4.png\" alt=\"\" width=\"90\" height=\"89\" />\r\n\r\nСкачать материалы для тестирования\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-31\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step5.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nОплатить тесты 25 руб. за ученика\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-32\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step6.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nЗагрузить тесты учеников\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-33\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step7.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nСкачать результаты учеников\r\n\r\n\r\n</div>\r\n</div>\r\n\r\n<a href=\"http://localhost/tester/instruktsiya/\">Подробная инструкция</a>', 'Как участвовать в олимпиаде?', '', 'publish', 'closed', 'closed', '', 'kak-uchastvovat-v-olimpiade', '', '', '2017-12-03 21:51:30', '2017-12-03 18:51:30', '', 0, 'http://localhost/tester/?page_id=76', 0, 'page', '', 0),
(77, 1, '2017-12-03 19:51:33', '2017-12-03 16:51:33', '<img class=\"alignnone size-full wp-image-27\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step1.png\" alt=\"\" width=\"93\" height=\"89\" />\r\n\r\nЗарегистрироваться или войти в личный кабинет\r\n\r\n<img class=\"alignnone size-full wp-image-28\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step2.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nОтправить заявку на участие\r\n\r\n<img class=\"alignnone size-full wp-image-29\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step3.png\" alt=\"\" width=\"89\" height=\"89\" />\r\n\r\nВыбрать предметы в классе\r\n\r\n<img class=\"alignnone size-full wp-image-30\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step4.png\" alt=\"\" width=\"90\" height=\"89\" />\r\n\r\nСкачать материалы для тестирования\r\n\r\n<img class=\"alignnone size-full wp-image-31\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step5.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nОплатить тесты 25 руб. за ученика\r\n\r\n<img class=\"alignnone size-full wp-image-32\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step6.png\" alt=\"\" width=\"93\" height=\"89\" />\r\n\r\nЗагрузить тесты учеников\r\n\r\n<img class=\"alignnone size-full wp-image-33\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step7.png\" alt=\"\" width=\"94\" height=\"89\" />\r\n\r\nСкачать результаты учеников', 'Как участвовать в олимпиаде?', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-12-03 19:51:33', '2017-12-03 16:51:33', '', 76, 'http://localhost/tester/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2017-12-03 20:58:53', '2017-12-03 17:58:53', '<div class=\"row\">\n    <div class=\"col\"><img class=\"alignnone size-full wp-image-27\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step1.png\" alt=\"\" width=\"91\" height=\"89\" /><p></div>\n <div class=\"col\"><img class=\"alignnone size-full wp-image-28\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step2.png\" alt=\"\" width=\"91\" height=\"89\" /></td>\n <div class=\"col\"><img class=\"alignnone size-full wp-image-29\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step3.png\" alt=\"\" width=\"91\" height=\"89\" /></td>\n <div class=\"col\"><img class=\"alignnone size-full wp-image-30\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step4.png\" alt=\"\" width=\"90\" height=\"89\" /></td>\n <div class=\"col\"><img class=\"alignnone size-full wp-image-31\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step5.png\" alt=\"\" width=\"91\" height=\"89\" /></td>\n <div class=\"col\"><img class=\"alignnone size-full wp-image-32\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step6.png\" alt=\"\" width=\"91\" height=\"89\" /></td>\n <div class=\"col\"><img class=\"alignnone size-full wp-image-33\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step7.png\" alt=\"\" width=\"91\" height=\"89\" /></td>\n</tr>\n<tr>\n<td>Зарегистрироваться или войти в личный кабинет</td>\n<td>Отправить заявку на участие</td>\n<td>Выбрать предметы в классе</td>\n<td>Скачать материалы для тестирования</td>\n<td>Оплатить тесты 25 руб. за ученика</td>\n<td>Загрузить тесты учеников</td>\n<td>Скачать результаты учеников</td>\n</tr>\n</tbody>\n</table>\n&nbsp;', 'Как участвовать в олимпиаде?', '', 'inherit', 'closed', 'closed', '', '76-autosave-v1', '', '', '2017-12-03 20:58:53', '2017-12-03 17:58:53', '', 76, 'http://localhost/tester/76-autosave-v1/', 0, 'revision', '', 0),
(79, 1, '2017-12-03 20:52:45', '2017-12-03 17:52:45', '<table style=\"width: 579px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 146px;\"><img class=\"alignnone size-full wp-image-27\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step1.png\" alt=\"\" width=\"93\" height=\"89\" /></td>\r\n<td style=\"width: 186px;\"><img class=\"alignnone size-full wp-image-28\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step2.png\" alt=\"\" width=\"91\" height=\"89\" /></td>\r\n<td style=\"width: 117px;\"><img class=\"alignnone size-full wp-image-29\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step3.png\" alt=\"\" width=\"89\" height=\"89\" /></td>\r\n<td style=\"width: 47px;\"><img class=\"alignnone size-full wp-image-30\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step4.png\" alt=\"\" width=\"90\" height=\"89\" /></td>\r\n<td style=\"width: 10px;\"><img class=\"alignnone size-full wp-image-31\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step5.png\" alt=\"\" width=\"91\" height=\"89\" /></td>\r\n<td style=\"width: 10px;\"><img class=\"alignnone size-full wp-image-32\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step6.png\" alt=\"\" width=\"93\" height=\"89\" /></td>\r\n<td style=\"width: 10px;\"><img class=\"alignnone size-full wp-image-33\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step7.png\" alt=\"\" width=\"94\" height=\"89\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 146px;\">Зарегистрироваться или войти в личный кабинет</td>\r\n<td style=\"width: 186px;\">Отправить заявку на участие</td>\r\n<td style=\"width: 117px;\">Выбрать предметы в классе</td>\r\n<td style=\"width: 47px;\">Скачать материалы для тестирования</td>\r\n<td style=\"width: 10px;\">Оплатить тесты 25 руб. за ученика</td>\r\n<td style=\"width: 10px;\">Загрузить тесты учеников</td>\r\n<td style=\"width: 10px;\">Скачать результаты учеников</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n&nbsp;', 'Как участвовать в олимпиаде?', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-12-03 20:52:45', '2017-12-03 17:52:45', '', 76, 'http://localhost/tester/76-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2017-12-03 20:55:39', '2017-12-03 17:55:39', '<table class=\"table table-responsive\">\r\n<tbody>\r\n<tr>\r\n<td scope=\"col\"><img class=\"alignnone size-full wp-image-27\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step1.png\" alt=\"\" width=\"93\" height=\"89\" /></td>\r\n<td scope=\"col\"><img class=\"alignnone size-full wp-image-28\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step2.png\" alt=\"\" width=\"91\" height=\"89\" /></td>\r\n<td scope=\"col\"><img class=\"alignnone size-full wp-image-29\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step3.png\" alt=\"\" width=\"89\" height=\"89\" /></td>\r\n<td scope=\"col\"><img class=\"alignnone size-full wp-image-30\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step4.png\" alt=\"\" width=\"90\" height=\"89\" /></td>\r\n<td scope=\"col\"><img class=\"alignnone size-full wp-image-31\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step5.png\" alt=\"\" width=\"91\" height=\"89\" /></td>\r\n<td scope=\"col\"><img class=\"alignnone size-full wp-image-32\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step6.png\" alt=\"\" width=\"93\" height=\"89\" /></td>\r\n<td scope=\"col\"><img class=\"alignnone size-full wp-image-33\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step7.png\" alt=\"\" width=\"94\" height=\"89\" /></td>\r\n</tr>\r\n<tr>\r\n<td>Зарегистрироваться или войти в личный кабинет</td>\r\n<td>Отправить заявку на участие</td>\r\n<td>Выбрать предметы в классе</td>\r\n<td>Скачать материалы для тестирования</td>\r\n<td>Оплатить тесты 25 руб. за ученика</td>\r\n<td>Загрузить тесты учеников</td>\r\n<td>Скачать результаты учеников</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n&nbsp;', 'Как участвовать в олимпиаде?', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-12-03 20:55:39', '2017-12-03 17:55:39', '', 76, 'http://localhost/tester/76-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2017-12-03 20:56:27', '2017-12-03 17:56:27', '<table class=\"table table-responsive\">\r\n<tbody>\r\n<tr>\r\n<td scope=\"col\"><img class=\"alignnone size-full wp-image-27\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step1.png\" alt=\"\" width=\"91\" height=\"89\" /></td>\r\n<td scope=\"col\"><img class=\"alignnone size-full wp-image-28\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step2.png\" alt=\"\" width=\"91\" height=\"89\" /></td>\r\n<td scope=\"col\"><img class=\"alignnone size-full wp-image-29\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step3.png\" alt=\"\" width=\"91\" height=\"89\" /></td>\r\n<td scope=\"col\"><img class=\"alignnone size-full wp-image-30\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step4.png\" alt=\"\" width=\"90\" height=\"89\" /></td>\r\n<td scope=\"col\"><img class=\"alignnone size-full wp-image-31\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step5.png\" alt=\"\" width=\"91\" height=\"89\" /></td>\r\n<td scope=\"col\"><img class=\"alignnone size-full wp-image-32\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step6.png\" alt=\"\" width=\"91\" height=\"89\" /></td>\r\n<td scope=\"col\"><img class=\"alignnone size-full wp-image-33\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step7.png\" alt=\"\" width=\"91\" height=\"89\" /></td>\r\n</tr>\r\n<tr>\r\n<td>Зарегистрироваться или войти в личный кабинет</td>\r\n<td>Отправить заявку на участие</td>\r\n<td>Выбрать предметы в классе</td>\r\n<td>Скачать материалы для тестирования</td>\r\n<td>Оплатить тесты 25 руб. за ученика</td>\r\n<td>Загрузить тесты учеников</td>\r\n<td>Скачать результаты учеников</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n&nbsp;', 'Как участвовать в олимпиаде?', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-12-03 20:56:27', '2017-12-03 17:56:27', '', 76, 'http://localhost/tester/76-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2017-12-03 21:00:37', '2017-12-03 18:00:37', '<div class=\"row\">\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-27\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step1.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nЗарегистрироваться или войти в личный кабинет\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-28\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step2.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nОтправить заявку на участие\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-29\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step3.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nВыбрать предметы в классе\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-30\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step4.png\" alt=\"\" width=\"90\" height=\"89\" />\r\n\r\nСкачать материалы для тестирования\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-31\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step5.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nОплатить тесты 25 руб. за ученика\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-32\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step6.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nЗагрузить тесты учеников\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-33\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step7.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nСкачать результаты учеников\r\n\r\n</div>\r\n</div>', 'Как участвовать в олимпиаде?', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-12-03 21:00:37', '2017-12-03 18:00:37', '', 76, 'http://localhost/tester/76-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2017-12-03 21:50:50', '2017-12-03 18:50:50', '<div class=\"row\">\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-27\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step1.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nЗарегистрироваться или войти в личный кабинет\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-28\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step2.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nОтправить заявку на участие\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-29\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step3.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nВыбрать предметы в классе\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-30\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step4.png\" alt=\"\" width=\"90\" height=\"89\" />\r\n\r\nСкачать материалы для тестирования\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-31\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step5.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nОплатить тесты 25 руб. за ученика\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-32\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step6.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nЗагрузить тесты учеников\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-33\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step7.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nСкачать результаты учеников\r\n\r\n<a href=\"http://localhost/tester/instruktsiya/\">Подробная инструкция</a>\r\n\r\n</div>\r\n</div>', 'Как участвовать в олимпиаде?', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-12-03 21:50:50', '2017-12-03 18:50:50', '', 76, 'http://localhost/tester/76-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2017-12-03 21:51:30', '2017-12-03 18:51:30', '<div class=\"row\">\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-27\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step1.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nЗарегистрироваться или войти в личный кабинет\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-28\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step2.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nОтправить заявку на участие\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-29\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step3.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nВыбрать предметы в классе\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-30\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step4.png\" alt=\"\" width=\"90\" height=\"89\" />\r\n\r\nСкачать материалы для тестирования\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-31\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step5.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nОплатить тесты 25 руб. за ученика\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-32\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step6.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nЗагрузить тесты учеников\r\n\r\n</div>\r\n<div class=\"col\">\r\n\r\n<img class=\"alignnone size-full wp-image-33\" src=\"http://localhost/tester/wp-content/uploads/2017/12/step7.png\" alt=\"\" width=\"91\" height=\"89\" />\r\n\r\nСкачать результаты учеников\r\n\r\n\r\n</div>\r\n</div>\r\n\r\n<a href=\"http://localhost/tester/instruktsiya/\">Подробная инструкция</a>', 'Как участвовать в олимпиаде?', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-12-03 21:51:30', '2017-12-03 18:51:30', '', 76, 'http://localhost/tester/76-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2017-12-03 21:59:04', '2017-12-03 18:59:04', '{\n    \"tester::page_layout\": {\n        \"value\": \"one-column\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-03 18:58:32\"\n    },\n    \"tester::panel_1\": {\n        \"value\": \"16\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-03 18:58:32\"\n    },\n    \"tester::panel_2\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-03 18:58:32\"\n    },\n    \"tester::panel_3\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-03 18:58:32\"\n    },\n    \"tester::panel_4\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-03 18:59:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'da4451c6-2aa3-4e96-be06-93b91a51f8d4', '', '', '2017-12-03 21:59:04', '2017-12-03 18:59:04', '', 0, 'http://localhost/tester/?p=85', 0, 'customize_changeset', '', 0),
(86, 1, '2017-12-03 22:01:26', '2017-12-03 19:01:26', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-12-03 22:01:26', '2017-12-03 19:01:26', '', 13, 'http://localhost/tester/13-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2017-12-03 22:07:44', '2017-12-03 19:07:44', '', 'Post Preview', '', 'trash', 'closed', 'closed', '', 'acf_post-preview__trashed', '', '', '2017-12-03 23:00:14', '2017-12-03 20:00:14', '', 0, 'http://localhost/tester/?post_type=acf&#038;p=87', 0, 'acf', '', 0),
(88, 1, '2017-12-03 22:07:06', '2017-12-03 19:07:06', 'НОвые возможности сайта для большей надежности', 'Внимание! Наградные материалы доступны для скачивания!', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2017-12-03 22:07:06', '2017-12-03 19:07:06', '', 1, 'http://localhost/tester/1-autosave-v1/', 0, 'revision', '', 0),
(89, 1, '2017-12-03 22:07:51', '2017-12-03 19:07:51', 'НОвые возможности сайта для большей надежности', 'Внимание! Наградные материалы доступны для скачивания!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-12-03 22:07:51', '2017-12-03 19:07:51', '', 1, 'http://localhost/tester/1-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2017-12-03 22:09:30', '2017-12-03 19:09:30', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi asperiores commodi culpa dicta error fugit id incidunt ipsa ipsum laborum laudantium maxime molestiae nobis sit sunt, tempore velit, veritatis! Praesentium.', 'Внимание! Наградные материалы доступны для скачивания!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-12-03 22:09:30', '2017-12-03 19:09:30', '', 1, 'http://localhost/tester/1-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2017-12-03 22:11:16', '2017-12-03 19:11:16', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi asperiores commodi culpa dicta error fugit id incidunt ipsa ipsum laborum laudantium maxime molestiae nobis sit sunt, tempore velit, veritatis! Praesentium.', 'Начинаем прием заявок на зимнюю сессию!', 'Начинаем прием заявок на зимнюю сессию с 07 ноября 2017 года по 10 января 2018', 'publish', 'open', 'open', '', 'nachinaem-priem-zayavok-na-zimnyuyu-sessiyu', '', '', '2017-12-03 23:00:03', '2017-12-03 20:00:03', '', 0, 'http://localhost/tester/?p=91', 0, 'post', '', 0),
(92, 1, '2017-12-03 22:11:16', '2017-12-03 19:11:16', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi asperiores commodi culpa dicta error fugit id incidunt ipsa ipsum laborum laudantium maxime molestiae nobis sit sunt, tempore velit, veritatis! Praesentium.', 'Начинаем прием заявок на зимнюю сессию!', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2017-12-03 22:11:16', '2017-12-03 19:11:16', '', 91, 'http://localhost/tester/91-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2017-12-03 22:44:09', '2017-12-03 19:44:09', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi asperiores commodi culpa dicta error fugit id incidunt ipsa ipsum laborum laudantium maxime molestiae nobis sit sunt, tempore velit, veritatis! Praesentium.', 'Начинаем прием заявок на зимнюю сессию!', 'Начинаем прием заявок на зимнюю сессию с 07 ноября 2017 года по 10 января 2018', 'inherit', 'closed', 'closed', '', '91-autosave-v1', '', '', '2017-12-03 22:44:09', '2017-12-03 19:44:09', '', 91, 'http://localhost/tester/91-autosave-v1/', 0, 'revision', '', 0),
(94, 1, '2017-12-03 22:52:38', '2017-12-03 19:52:38', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi asperiores commodi culpa dicta error fugit id incidunt ipsa ipsum laborum laudantium maxime molestiae nobis sit sunt, tempore velit, veritatis! Praesentium.', 'Внимание! Наградные материалы доступны для скачивания!', 'Новые возможности сайта для большей надежности получения Ваших материалов!', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-12-03 22:52:38', '2017-12-03 19:52:38', '', 1, 'http://localhost/tester/1-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2017-12-03 23:00:03', '2017-12-03 20:00:03', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi asperiores commodi culpa dicta error fugit id incidunt ipsa ipsum laborum laudantium maxime molestiae nobis sit sunt, tempore velit, veritatis! Praesentium.', 'Начинаем прием заявок на зимнюю сессию!', 'Начинаем прием заявок на зимнюю сессию с 07 ноября 2017 года по 10 января 2018', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2017-12-03 23:00:03', '2017-12-03 20:00:03', '', 91, 'http://localhost/tester/91-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2017-12-03 23:31:46', '0000-00-00 00:00:00', '', 'Работаем по всей России', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-03 23:31:46', '2017-12-03 20:31:46', '', 0, 'http://localhost/tester/?page_id=96', 0, 'page', '', 0),
(97, 1, '2017-12-03 23:31:46', '2017-12-03 20:31:46', '', 'Работаем по всей России', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2017-12-03 23:31:46', '2017-12-03 20:31:46', '', 96, 'http://localhost/tester/96-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2017-12-03 23:36:36', '2017-12-03 20:36:36', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-12-03 23:36:36', '2017-12-03 20:36:36', '', 13, 'http://localhost/tester/13-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2017-12-04 00:07:12', '0000-00-00 00:00:00', 'К вашим услугам предоставляется все для проведения самых быстрых и при этом не затратных олимпиад. Вам гарантирован гибкий подход, максимум удобств, а также идеальная простота обращения с нашими материалами, что позволит любому ученику без труда проверить свои знания!\r\n\r\nНаша олимпиада по праву считается уникальной, ведь она объединяет все лучшее, что уже было придумано в сфере электронных интеллектуальных состязаний, и именно она позволит вам переложить все сложности подготовки на наши плечи.\r\n\r\nКаждый этап соревнования, продуманный нами, предполагает не просто умение заучивать какие-либо факты, но и творчески применять их. Мы не предлагаем вам банальные общепрограммные электронные олимпиады для школьников, мы создаем уникальные вопросники, которые будут по-настоящему захватывающими!\r\n\r\nЦентр довузовской подготовки располагает программами специализированных олимпиад по следующим дисциплинам:\r\n<ul>\r\n 	<li>— физика 7-9 класс</li>\r\n 	<li><span style=\"font-size: 1rem;\">— математика 1-9 класс</span></li>\r\n 	<li><span style=\"font-size: 1rem;\">— информатика 5-9 класс</span></li>\r\n 	<li><span style=\"font-size: 1rem;\">— химия 8,9 класс</span></li>\r\n</ul>\r\nВы сможете проверить знания школьников по всем точным наукам, причем уровень вопросов всегда будет высоким, а проверка ответов многогранной.\r\n\r\nНаши вопросники уникальны – в них предполагается не только ответ на вопрос, но и его обоснование, что поможет школьнику проявить более глубокие знания и при этом сократит для учителя длительность проверки ключей и уменьшит риск случайных ошибок.', 'Почему выбирают именно нас?', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-04 00:07:12', '2017-12-03 21:07:12', '', 0, 'http://localhost/tester/?page_id=99', 0, 'page', '', 0),
(100, 1, '2017-12-04 00:07:12', '2017-12-03 21:07:12', 'К вашим услугам предоставляется все для проведения самых быстрых и при этом не затратных олимпиад. Вам гарантирован гибкий подход, максимум удобств, а также идеальная простота обращения с нашими материалами, что позволит любому ученику без труда проверить свои знания!\r\n\r\nНаша олимпиада по праву считается уникальной, ведь она объединяет все лучшее, что уже было придумано в сфере электронных интеллектуальных состязаний, и именно она позволит вам переложить все сложности подготовки на наши плечи.\r\n\r\nКаждый этап соревнования, продуманный нами, предполагает не просто умение заучивать какие-либо факты, но и творчески применять их. Мы не предлагаем вам банальные общепрограммные электронные олимпиады для школьников, мы создаем уникальные вопросники, которые будут по-настоящему захватывающими!\r\n\r\nЦентр довузовской подготовки располагает программами специализированных олимпиад по следующим дисциплинам:\r\n<ul>\r\n 	<li>— физика 7-9 класс</li>\r\n 	<li><span style=\"font-size: 1rem;\">— математика 1-9 класс</span></li>\r\n 	<li><span style=\"font-size: 1rem;\">— информатика 5-9 класс</span></li>\r\n 	<li><span style=\"font-size: 1rem;\">— химия 8,9 класс</span></li>\r\n</ul>\r\nВы сможете проверить знания школьников по всем точным наукам, причем уровень вопросов всегда будет высоким, а проверка ответов многогранной.\r\n\r\nНаши вопросники уникальны – в них предполагается не только ответ на вопрос, но и его обоснование, что поможет школьнику проявить более глубокие знания и при этом сократит для учителя длительность проверки ключей и уменьшит риск случайных ошибок.', 'Почему выбирают именно нас?', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2017-12-04 00:07:12', '2017-12-03 21:07:12', '', 99, 'http://localhost/tester/99-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2017-12-04 00:19:08', '2017-12-03 21:19:08', '{\n    \"widget_text[8]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjE4MzoiPGEgaHJlZj0iaHR0cDovL2xvY2FsaG9zdC90ZXN0ZXIvIj48aW1nIGNsYXNzPSJhbGlnbm5vbmUgc2l6ZS1mdWxsIHdwLWltYWdlLTIyIiBzcmM9Imh0dHA6Ly9sb2NhbGhvc3QvdGVzdGVyL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE3LzEyL2xvZ28ucG5nIiBhbHQ9IiIgd2lkdGg9IjIyNCIgaGVpZ2h0PSI2NyIgLz48L2E+IjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"47e120acce65f87199b7be9521a80491\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-03 21:16:15\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"value\": [\n            \"text-8\",\n            \"custom_html-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-03 21:17:49\"\n    },\n    \"widget_text[11]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjA6IiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"3a9fe5e610bc12bd075b2ce1823cb408\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-03 21:17:49\"\n    },\n    \"widget_custom_html[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo3OiJjb250ZW50IjtzOjEwNDoiPGRpdiBjbGFzcz0iZm9vdGVyLWNvcHkiPg0KCSZjb3B5OyAmbGFxdW87INCQ0LrQsNC00LXQvNC40Y8g0LfQvdCw0YLQvtC60L7QsiAmcmFxdW87IDIwMTcg0LPQvtC0DQo8L2Rpdj4iO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"6666e6376cec35d331af1f64a5f72009\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-03 21:18:53\"\n    },\n    \"widget_text[9]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjIwNToi0JfQtNC10YHRjCDQvNC+0LbQtdGCINCx0YvRgtGMINC+0YLQu9C40YfQvdC+0LUg0LzQtdGB0YLQviDQtNC70Y8g0YLQvtCz0L4sINGH0YLQvtCx0Ysg0L/RgNC10LTRgdGC0LDQstC40YLRjCDRgdC10LHRjywg0YHQstC+0Lkg0YHQsNC50YIg0LjQu9C4INCy0YvRgNCw0LfQuNGC0Ywg0LrQsNC60LjQtS3RgtC+INCx0LvQsNCz0L7QtNCw0YDQvdC+0YHRgtC4LiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"bead5e9f40f4fa53ae94e8957c21eb40\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-03 21:19:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a9265a87-b39b-4cc2-a859-1c640f045b9c', '', '', '2017-12-04 00:19:08', '2017-12-03 21:19:08', '', 0, 'http://localhost/tester/?p=101', 0, 'customize_changeset', '', 0),
(102, 1, '2017-12-04 00:21:20', '2017-12-03 21:21:20', '{\n    \"widget_text[9]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjE0Mjoi0J3QsNGIINGC0LXQu9C10YTQvtC9OiArNyAoNDAxMikgMzktMTAtMTYNCg0K0J3QsNGIINCw0LTRgNC10YE6IDIzNjAxNSwg0LMuINCa0LDQu9C40L3QuNC90LPRgNCw0LQsINCwL9GPIDIzMw0KDQrQndCw0YggZW1haWw6IGFkbWluQGRvbWFpbi5ydSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a07ce3e460610e3be6526073227b44e3\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-03 21:21:07\"\n    },\n    \"sidebars_widgets[wp_inactive_widgets]\": {\n        \"value\": [\n            \"archives-2\",\n            \"meta-2\",\n            \"search-2\",\n            \"text-2\",\n            \"text-3\",\n            \"text-4\",\n            \"text-5\",\n            \"categories-2\",\n            \"recent-posts-2\",\n            \"recent-comments-2\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-03 21:21:20\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"value\": [\n            \"text-9\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-03 21:21:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '72b8f282-d52b-4e97-8cd5-329b138195a1', '', '', '2017-12-04 00:21:20', '2017-12-03 21:21:20', '', 0, 'http://localhost/tester/?p=102', 0, 'customize_changeset', '', 0),
(103, 1, '2017-12-04 00:21:54', '2017-12-03 21:21:54', '{\n    \"tester::nav_menu_locations[social]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-03 21:21:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '79d917c6-1ff2-4a1d-a2fe-041d77e7ef1b', '', '', '2017-12-04 00:21:54', '2017-12-03 21:21:54', '', 0, 'http://localhost/tester/79d917c6-1ff2-4a1d-a2fe-041d77e7ef1b/', 0, 'customize_changeset', '', 0),
(104, 1, '2017-12-04 00:23:32', '2017-12-03 21:23:32', '{\n    \"widget_custom_html[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo3OiJjb250ZW50IjtzOjEwMjoiPGRpdiBjbGFzcz0iZm9vdGVyLWNvcHkiPg0KCSZjb3B5OyAmbGFxdW870JDQutCw0LTQtdC80LjRjyDQt9C90LDRgtC+0LrQvtCyJnJhcXVvOyAyMDE3INCz0L7QtA0KPC9kaXY+Ijt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"b45e390491e5ac1ad50a056c37b49ef1\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-03 21:23:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c02f1155-8c50-491f-aea8-b302c220afd6', '', '', '2017-12-04 00:23:32', '2017-12-03 21:23:32', '', 0, 'http://localhost/tester/c02f1155-8c50-491f-aea8-b302c220afd6/', 0, 'customize_changeset', '', 0),
(105, 1, '2017-12-04 00:27:44', '2017-12-03 21:27:44', 'Здесь сожержимое страницы', 'Политика конфиденциальности', '', 'publish', 'closed', 'closed', '', 'politika-konfidentsialnosti', '', '', '2017-12-04 00:27:44', '2017-12-03 21:27:44', '', 0, 'http://localhost/tester/?page_id=105', 0, 'page', '', 0),
(106, 1, '2017-12-04 00:27:44', '2017-12-03 21:27:44', 'Здесь сожержимое страницы', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2017-12-04 00:27:44', '2017-12-03 21:27:44', '', 105, 'http://localhost/tester/105-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_rcl_chats`
--

CREATE TABLE `wp_rcl_chats` (
  `chat_id` bigint(20) UNSIGNED NOT NULL,
  `chat_room` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chat_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_rcl_chat_messagemeta`
--

CREATE TABLE `wp_rcl_chat_messagemeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `message_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_rcl_chat_messages`
--

CREATE TABLE `wp_rcl_chat_messages` (
  `message_id` bigint(20) UNSIGNED NOT NULL,
  `chat_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message_content` longtext CHARACTER SET utf8mb4 NOT NULL,
  `message_time` datetime NOT NULL,
  `private_key` bigint(20) UNSIGNED NOT NULL,
  `message_status` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_rcl_chat_users`
--

CREATE TABLE `wp_rcl_chat_users` (
  `room_place` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chat_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_activity` datetime NOT NULL,
  `user_write` tinyint(1) UNSIGNED NOT NULL,
  `user_status` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_rcl_feeds`
--

CREATE TABLE `wp_rcl_feeds` (
  `feed_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `feed_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feed_status` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_rcl_rating_totals`
--

CREATE TABLE `wp_rcl_rating_totals` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `object_author` bigint(20) UNSIGNED NOT NULL,
  `rating_total` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_rcl_rating_users`
--

CREATE TABLE `wp_rcl_rating_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rating_total` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_rcl_rating_values`
--

CREATE TABLE `wp_rcl_rating_values` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `object_author` bigint(20) UNSIGNED NOT NULL,
  `rating_value` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating_date` datetime NOT NULL,
  `rating_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_rcl_user_action`
--

CREATE TABLE `wp_rcl_user_action` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user` bigint(20) UNSIGNED NOT NULL,
  `time_action` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_rcl_user_action`
--

INSERT INTO `wp_rcl_user_action` (`ID`, `user`, `time_action`) VALUES
(1, 1, '2017-12-04 00:28:16');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_rmag_pay_results`
--

CREATE TABLE `wp_rmag_pay_results` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `payment_id` int(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `pay_amount` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_action` datetime NOT NULL,
  `pay_system` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_rmag_users_balance`
--

CREATE TABLE `wp_rmag_users_balance` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_balance` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', 'bez-rubriki', 0),
(2, 'Верхнее меню', 'verhnee-menyu', 0),
(3, 'Меню социальных ссылок', 'menyu-sotsialnyh-ssylok', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(39, 2, 0),
(42, 2, 0),
(43, 3, 0),
(44, 3, 0),
(45, 3, 0),
(46, 3, 0),
(47, 3, 0),
(72, 2, 0),
(73, 2, 0),
(74, 2, 0),
(75, 2, 0),
(91, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=1&editor=html'),
(20, 1, 'wp_user-settings-time', '1512336331'),
(21, 1, 'closedpostboxes_page', 'a:1:{i:0;s:25:\"custom_fields_editor_post\";}'),
(22, 1, 'metaboxhidden_page', 'a:6:{i:0;s:6:\"acf_53\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(27, 1, 'nav_menu_recently_edited', '2'),
(28, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(29, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(30, 1, 'closedpostboxes_post', 'a:0:{}'),
(31, 1, 'metaboxhidden_post', 'a:8:{i:0;s:6:\"acf_60\";i:1;s:6:\"acf_53\";i:2;s:13:\"trackbacksdiv\";i:3;s:10:\"postcustom\";i:4;s:16:\"commentstatusdiv\";i:5;s:11:\"commentsdiv\";i:6;s:7:\"slugdiv\";i:7;s:9:\"authordiv\";}'),
(32, 1, 'session_tokens', 'a:1:{s:64:\"c1c132177992feab83240b01dfbaeb6687bb885b053ff4ae65c34a8fadb15557\";a:4:{s:10:\"expiration\";i:1512508367;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1512335567;}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BWNIlSOWIqxuqGuH9N4P8cNogheTG./', 'admin', 'sgresr@gmail.com', '', '2017-12-01 19:33:33', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_rcl_chats`
--
ALTER TABLE `wp_rcl_chats`
  ADD PRIMARY KEY (`chat_id`);

--
-- Индексы таблицы `wp_rcl_chat_messagemeta`
--
ALTER TABLE `wp_rcl_chat_messagemeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `message_id` (`message_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_rcl_chat_messages`
--
ALTER TABLE `wp_rcl_chat_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `message_status` (`message_status`);

--
-- Индексы таблицы `wp_rcl_chat_users`
--
ALTER TABLE `wp_rcl_chat_users`
  ADD UNIQUE KEY `room_place` (`room_place`),
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_rcl_feeds`
--
ALTER TABLE `wp_rcl_feeds`
  ADD PRIMARY KEY (`feed_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `feed_type` (`feed_type`);

--
-- Индексы таблицы `wp_rcl_rating_totals`
--
ALTER TABLE `wp_rcl_rating_totals`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `object_author` (`object_author`),
  ADD KEY `rating_type` (`rating_type`),
  ADD KEY `rating_total` (`rating_total`);

--
-- Индексы таблицы `wp_rcl_rating_users`
--
ALTER TABLE `wp_rcl_rating_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `rating_total` (`rating_total`);

--
-- Индексы таблицы `wp_rcl_rating_values`
--
ALTER TABLE `wp_rcl_rating_values`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `rating_value` (`rating_value`),
  ADD KEY `rating_type` (`rating_type`);

--
-- Индексы таблицы `wp_rcl_user_action`
--
ALTER TABLE `wp_rcl_user_action`
  ADD UNIQUE KEY `id` (`ID`);

--
-- Индексы таблицы `wp_rmag_pay_results`
--
ALTER TABLE `wp_rmag_pay_results`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_rmag_users_balance`
--
ALTER TABLE `wp_rmag_users_balance`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=458;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT для таблицы `wp_rcl_chats`
--
ALTER TABLE `wp_rcl_chats`
  MODIFY `chat_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_rcl_chat_messagemeta`
--
ALTER TABLE `wp_rcl_chat_messagemeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_rcl_chat_messages`
--
ALTER TABLE `wp_rcl_chat_messages`
  MODIFY `message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_rcl_feeds`
--
ALTER TABLE `wp_rcl_feeds`
  MODIFY `feed_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_rcl_rating_totals`
--
ALTER TABLE `wp_rcl_rating_totals`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_rcl_rating_values`
--
ALTER TABLE `wp_rcl_rating_values`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_rcl_user_action`
--
ALTER TABLE `wp_rcl_user_action`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_rmag_pay_results`
--
ALTER TABLE `wp_rmag_pay_results`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
