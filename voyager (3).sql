-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2020 at 08:47 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voyager`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(64, 10, 'id', 'hidden', 'Id', 1, 0, 1, 1, 1, 1, '{}', 1),
(66, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(67, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(68, 12, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(69, 12, 'nisn', 'text', 'Nisn', 1, 1, 1, 1, 1, 1, '{}', 2),
(71, 12, 'jk', 'text', 'Jk', 1, 1, 1, 1, 1, 1, '{}', 4),
(72, 12, 'tgl_lahir', 'date', 'Tgl Lahir', 1, 1, 1, 1, 1, 1, '{}', 5),
(73, 12, 'Alamat', 'text', 'Alamat', 0, 1, 1, 1, 1, 1, '{}', 6),
(74, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(75, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(76, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(77, 13, 'id_siswa', 'hidden', 'Id Siswa', 0, 1, 1, 1, 1, 1, '{}', 2),
(80, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(81, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(85, 12, 'id_ruang', 'hidden', 'Id Ruang', 0, 1, 1, 1, 1, 1, '{}', 9),
(87, 12, 'siswa_belongsto_ruang_relationship', 'relationship', 'ruangs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Ruang\",\"table\":\"ruangs\",\"type\":\"belongsTo\",\"column\":\"id_ruang\",\"key\":\"id\",\"label\":\"nama\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(88, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(89, 14, 'nama', 'text', 'Nama', 0, 1, 1, 1, 1, 1, '{}', 2),
(90, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(91, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(92, 1, 'user_belongsto_siswa_relationship', 'relationship', 'siswas', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Siswa\",\"table\":\"siswas\",\"type\":\"belongsTo\",\"column\":\"siswa_id\",\"key\":\"id\",\"label\":\"nama\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(93, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(94, 1, 'siswa_id', 'select_dropdown', 'Siswa Id', 0, 1, 1, 1, 1, 1, '{}', 12),
(95, 1, 'ruang_id', 'select_dropdown', 'Ruang Id', 0, 1, 1, 1, 1, 1, '{}', 13),
(96, 1, 'user_belongsto_ruang_relationship', 'relationship', 'ruangs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Ruang\",\"table\":\"ruangs\",\"type\":\"belongsTo\",\"column\":\"ruang_id\",\"key\":\"id\",\"label\":\"nama\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":null}', 14),
(97, 12, 'name', 'text', 'Nama', 1, 1, 1, 1, 1, 1, '{}', 3),
(98, 10, 'name', 'text', 'Nama', 1, 1, 1, 1, 1, 1, '{}', 2);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-10-21 01:08:26', '2020-11-07 01:57:08'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-10-21 01:08:26', '2020-10-21 01:08:26'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-10-21 01:08:26', '2020-10-21 01:08:26'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-10-21 01:17:36', '2020-10-21 01:17:36'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-10-21 01:17:39', '2020-10-21 01:17:39'),
(10, 'ruangs', 'ruangs', 'Ruang', 'Ruangs', NULL, 'App\\Ruang', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-10-24 02:57:54', '2020-12-10 19:19:25'),
(12, 'siswas', 'siswas', 'Siswa', 'Siswas', NULL, 'App\\Siswa', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-10-24 02:59:49', '2020-12-10 19:18:55'),
(13, 'presensis', 'presensis', 'Presensi', 'Presensis', NULL, 'App\\Presensi', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-10-24 03:00:52', '2020-10-26 03:43:42'),
(14, 'kotas', 'kotas', 'Kota', 'Kotas', NULL, 'App\\Kota', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-10-26 23:50:49', '2020-10-26 23:50:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kotas`
--

CREATE TABLE `kotas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-10-21 01:08:28', '2020-10-21 01:08:28'),
(2, 'main', '2020-10-22 03:02:37', '2020-10-22 03:02:37');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-10-21 01:08:28', '2020-10-21 01:08:28', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2020-10-21 01:08:29', '2020-10-21 01:08:29', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-10-21 01:08:29', '2020-10-21 01:08:29', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-10-21 01:08:29', '2020-10-21 01:08:29', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-10-21 01:08:29', '2020-10-21 01:08:29', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2020-10-21 01:08:29', '2020-10-21 01:08:29', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2020-10-21 01:08:29', '2020-10-21 01:08:29', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2020-10-21 01:08:29', '2020-10-21 01:08:29', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2020-10-21 01:08:29', '2020-10-21 01:08:29', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2020-10-21 01:08:29', '2020-10-21 01:08:29', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2020-10-21 01:08:32', '2020-10-21 01:08:32', 'voyager.hooks', NULL),
(13, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2020-10-21 01:17:38', '2020-10-21 01:17:38', 'voyager.posts.index', NULL),
(14, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2020-10-21 01:17:41', '2020-10-21 01:17:41', 'voyager.pages.index', NULL),
(15, 2, 'Home', '/', '_self', 'voyager-boat', '#000000', NULL, 1, '2020-10-22 03:05:16', '2020-10-22 03:07:33', NULL, ''),
(16, 2, 'Categories', '/categories', '_self', NULL, '#000000', NULL, 2, '2020-10-22 03:06:41', '2020-10-22 03:07:33', NULL, ''),
(17, 2, 'Category 1', '/category-1', '_self', NULL, '#000000', 16, 1, '2020-10-22 03:07:22', '2020-10-22 03:07:39', NULL, ''),
(18, 2, 'Category 2', '/category-2', '_self', NULL, '#000000', 16, 2, '2020-10-22 03:08:13', '2020-10-22 03:08:22', NULL, ''),
(19, 2, 'Contact', '/contact', '_self', NULL, '#000000', NULL, 15, '2020-10-22 03:08:50', '2020-10-22 03:08:50', NULL, ''),
(21, 1, 'Ruangs', '', '_self', NULL, NULL, NULL, 17, '2020-10-24 02:57:55', '2020-10-24 02:57:55', 'voyager.ruangs.index', NULL),
(22, 1, 'Siswas', '', '_self', NULL, NULL, NULL, 18, '2020-10-24 02:59:50', '2020-10-24 02:59:50', 'voyager.siswas.index', NULL),
(23, 1, 'Presensis', '', '_self', NULL, NULL, NULL, 19, '2020-10-24 03:00:53', '2020-10-24 03:00:53', 'voyager.presensis.index', NULL),
(24, 1, 'Kotas', '', '_self', NULL, NULL, NULL, 20, '2020-10-26 23:50:49', '2020-10-26 23:50:49', 'voyager.kotas.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_01_01_000000_add_voyager_user_fields', 1),
(3, '2016_01_01_000000_create_data_types_table', 1),
(4, '2016_05_19_173453_create_menu_table', 1),
(5, '2016_10_21_190000_create_roles_table', 1),
(6, '2016_10_21_190000_create_settings_table', 1),
(7, '2016_11_30_135954_create_permission_table', 1),
(8, '2016_11_30_141208_create_permission_role_table', 1),
(9, '2016_12_26_201236_data_types__add__server_side', 1),
(10, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(11, '2017_01_14_005015_create_translations_table', 1),
(12, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(13, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(14, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(15, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(16, '2017_08_05_000000_add_group_to_settings_table', 1),
(17, '2017_11_26_013050_add_user_role_relationship', 1),
(18, '2017_11_26_015000_create_user_roles_table', 1),
(19, '2018_03_11_000000_add_user_settings', 1),
(20, '2018_03_14_000000_add_details_to_data_types_table', 1),
(21, '2018_03_16_000000_make_settings_value_nullable', 1),
(22, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-10-21 01:17:41', '2020-10-21 01:17:41');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-10-21 01:08:30', '2020-10-21 01:08:30'),
(2, 'browse_bread', NULL, '2020-10-21 01:08:30', '2020-10-21 01:08:30'),
(3, 'browse_database', NULL, '2020-10-21 01:08:30', '2020-10-21 01:08:30'),
(4, 'browse_media', NULL, '2020-10-21 01:08:30', '2020-10-21 01:08:30'),
(5, 'browse_compass', NULL, '2020-10-21 01:08:30', '2020-10-21 01:08:30'),
(6, 'browse_menus', 'menus', '2020-10-21 01:08:30', '2020-10-21 01:08:30'),
(7, 'read_menus', 'menus', '2020-10-21 01:08:30', '2020-10-21 01:08:30'),
(8, 'edit_menus', 'menus', '2020-10-21 01:08:30', '2020-10-21 01:08:30'),
(9, 'add_menus', 'menus', '2020-10-21 01:08:30', '2020-10-21 01:08:30'),
(10, 'delete_menus', 'menus', '2020-10-21 01:08:30', '2020-10-21 01:08:30'),
(11, 'browse_roles', 'roles', '2020-10-21 01:08:30', '2020-10-21 01:08:30'),
(12, 'read_roles', 'roles', '2020-10-21 01:08:30', '2020-10-21 01:08:30'),
(13, 'edit_roles', 'roles', '2020-10-21 01:08:30', '2020-10-21 01:08:30'),
(14, 'add_roles', 'roles', '2020-10-21 01:08:30', '2020-10-21 01:08:30'),
(15, 'delete_roles', 'roles', '2020-10-21 01:08:30', '2020-10-21 01:08:30'),
(16, 'browse_users', 'users', '2020-10-21 01:08:30', '2020-10-21 01:08:30'),
(17, 'read_users', 'users', '2020-10-21 01:08:31', '2020-10-21 01:08:31'),
(18, 'edit_users', 'users', '2020-10-21 01:08:31', '2020-10-21 01:08:31'),
(19, 'add_users', 'users', '2020-10-21 01:08:31', '2020-10-21 01:08:31'),
(20, 'delete_users', 'users', '2020-10-21 01:08:31', '2020-10-21 01:08:31'),
(21, 'browse_settings', 'settings', '2020-10-21 01:08:31', '2020-10-21 01:08:31'),
(22, 'read_settings', 'settings', '2020-10-21 01:08:31', '2020-10-21 01:08:31'),
(23, 'edit_settings', 'settings', '2020-10-21 01:08:31', '2020-10-21 01:08:31'),
(24, 'add_settings', 'settings', '2020-10-21 01:08:31', '2020-10-21 01:08:31'),
(25, 'delete_settings', 'settings', '2020-10-21 01:08:31', '2020-10-21 01:08:31'),
(26, 'browse_hooks', NULL, '2020-10-21 01:08:32', '2020-10-21 01:08:32'),
(32, 'browse_posts', 'posts', '2020-10-21 01:17:38', '2020-10-21 01:17:38'),
(33, 'read_posts', 'posts', '2020-10-21 01:17:38', '2020-10-21 01:17:38'),
(34, 'edit_posts', 'posts', '2020-10-21 01:17:38', '2020-10-21 01:17:38'),
(35, 'add_posts', 'posts', '2020-10-21 01:17:38', '2020-10-21 01:17:38'),
(36, 'delete_posts', 'posts', '2020-10-21 01:17:38', '2020-10-21 01:17:38'),
(37, 'browse_pages', 'pages', '2020-10-21 01:17:41', '2020-10-21 01:17:41'),
(38, 'read_pages', 'pages', '2020-10-21 01:17:41', '2020-10-21 01:17:41'),
(39, 'edit_pages', 'pages', '2020-10-21 01:17:41', '2020-10-21 01:17:41'),
(40, 'add_pages', 'pages', '2020-10-21 01:17:41', '2020-10-21 01:17:41'),
(41, 'delete_pages', 'pages', '2020-10-21 01:17:41', '2020-10-21 01:17:41'),
(47, 'browse_ruangs', 'ruangs', '2020-10-24 02:57:55', '2020-10-24 02:57:55'),
(48, 'read_ruangs', 'ruangs', '2020-10-24 02:57:55', '2020-10-24 02:57:55'),
(49, 'edit_ruangs', 'ruangs', '2020-10-24 02:57:55', '2020-10-24 02:57:55'),
(50, 'add_ruangs', 'ruangs', '2020-10-24 02:57:55', '2020-10-24 02:57:55'),
(51, 'delete_ruangs', 'ruangs', '2020-10-24 02:57:55', '2020-10-24 02:57:55'),
(52, 'browse_siswas', 'siswas', '2020-10-24 02:59:50', '2020-10-24 02:59:50'),
(53, 'read_siswas', 'siswas', '2020-10-24 02:59:50', '2020-10-24 02:59:50'),
(54, 'edit_siswas', 'siswas', '2020-10-24 02:59:50', '2020-10-24 02:59:50'),
(55, 'add_siswas', 'siswas', '2020-10-24 02:59:50', '2020-10-24 02:59:50'),
(56, 'delete_siswas', 'siswas', '2020-10-24 02:59:50', '2020-10-24 02:59:50'),
(57, 'browse_presensis', 'presensis', '2020-10-24 03:00:52', '2020-10-24 03:00:52'),
(58, 'read_presensis', 'presensis', '2020-10-24 03:00:52', '2020-10-24 03:00:52'),
(59, 'edit_presensis', 'presensis', '2020-10-24 03:00:52', '2020-10-24 03:00:52'),
(60, 'add_presensis', 'presensis', '2020-10-24 03:00:52', '2020-10-24 03:00:52'),
(61, 'delete_presensis', 'presensis', '2020-10-24 03:00:53', '2020-10-24 03:00:53'),
(62, 'browse_kotas', 'kotas', '2020-10-26 23:50:49', '2020-10-26 23:50:49'),
(63, 'read_kotas', 'kotas', '2020-10-26 23:50:49', '2020-10-26 23:50:49'),
(64, 'edit_kotas', 'kotas', '2020-10-26 23:50:49', '2020-10-26 23:50:49'),
(65, 'add_kotas', 'kotas', '2020-10-26 23:50:49', '2020-10-26 23:50:49'),
(66, 'delete_kotas', 'kotas', '2020-10-26 23:50:49', '2020-10-26 23:50:49');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-21 01:17:38', '2020-10-21 01:17:38'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n                <h2>We can use all kinds of format!</h2>\r\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-21 01:17:38', '2020-10-21 01:17:38'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-21 01:17:38', '2020-10-21 01:17:38'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-21 01:17:39', '2020-10-21 01:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `presensis`
--

CREATE TABLE `presensis` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelas` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `presensis`
--

INSERT INTO `presensis` (`id`, `created_at`, `updated_at`, `name`, `kelas`) VALUES
(5, '2020-11-07 02:18:40', '2020-11-07 02:18:40', 'Syahrevi', 'RPL 2'),
(129, '2020-12-09 23:50:29', '2020-12-09 23:50:29', 'Rosiyana', 'RPL 2'),
(130, '2020-12-09 23:55:39', '2020-12-09 23:55:39', 'Pungki Arya Tama', 'RPL 2'),
(131, '2020-12-10 00:02:03', '2020-12-10 00:02:03', 'Sevfiana', 'RPL 2'),
(132, '2020-12-10 20:17:23', '2020-12-10 20:17:23', 'adinda', 'RPL 2');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-10-21 01:08:30', '2020-10-21 01:08:30'),
(2, 'user', 'Normal User', '2020-10-21 01:08:30', '2020-10-21 01:08:30');

-- --------------------------------------------------------

--
-- Table structure for table `ruangs`
--

CREATE TABLE `ruangs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ruangs`
--

INSERT INTO `ruangs` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'RPL 1', '2020-10-26 03:19:58', '2020-10-26 03:19:58'),
(2, 'RPL 2', '2020-12-10 06:40:51', '2020-12-10 06:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Ini Judul', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\October2020\\USNKivmw3cMcoiiIOs5F.jpg', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `siswas`
--

CREATE TABLE `siswas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nisn` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `Alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_ruang` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswas`
--

INSERT INTO `siswas` (`id`, `nisn`, `name`, `jk`, `tgl_lahir`, `Alamat`, `created_at`, `updated_at`, `id_ruang`) VALUES
(1, '0021073805', 'Aditya Augusta Firmansyah', 'L', '2002-08-26', 'Depok', '2020-10-25 23:56:00', '2020-10-26 03:42:55', 2),
(2, '0021014302', 'Akmal Nadhif Rabbani', 'L', '2002-05-05', 'Depok', '2020-10-26 03:42:42', '2020-10-26 03:42:42', 2),
(3, '0021074261', 'Aqli Hamdan', 'L', '2002-07-11', 'Perum Bukit Cengkeh 1 Jl.Dili Blok F2 No. 16 Cimanggis Tugu Depok', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(4, '0023857956', 'Ardian Figo Prasetyo', 'L', '2002-06-02', 'Perum PGRI Blok E6 No. 16 Rt 04/09 Kalibaru Cilodong Depok', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(5, '0022778900', 'Asmaul Sufarhansyah', 'L', '2002-07-16', 'Gg. Musholah III No. 87 D Rt 04/21  Abdijaya  Sukmajaya', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(6, '0020738471', 'Diantama Maulana Shidiq', 'L', '2002-06-26', 'Jl. H icang Rt 01/02 Palsigunung Tugu Cimanggis Depok', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(7, '0012195827', 'Eki Lanjar Syabani', 'L', '2001-10-18', 'Kampung Banjaran Pucung Rt 06/05 Cilangkap Tapos', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(8, '0022790454', 'Fajar Julianto', 'P', '2002-07-11', 'Asrama Divi F I Kostrad Rt 02/03', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(9, '0024798276', 'Fandi Arya Pratama', 'P', '2002-02-13', 'Sukamaju Baru Rt 07/02 Tapos Depok', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(10, '0022777958', 'Farhan Hasbi', 'L', '2002-01-20', 'Perumahan Jati Jajar Blok D 24 /16 Tapos Depok', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(11, '0015135077', 'Fitriyani Gita Tabila', 'L', '2001-12-15', 'Jl. Sumurbandung 1 Rt 01/02 Cimanggis Depok', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(12, '0022756408', 'Imam Mardani Muharram', 'L', '2002-03-16', 'Jl. Cemara 01/19 Rt 01/10 Depok Timur', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(13, '1718100264', 'Istiqharun Kesatria Muliawan Akbar', 'L', '2002-04-14', 'Jl. Pekapuran Gg Ripan Rt 01/05', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(14, '0030212121', 'Kemas Muhammad Rafli Azhary', 'L', '2002-04-11', 'Jalan Kayumanis 3 No. 85 Rt 03/14 Depok II Timur ', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(15, '0021074813', 'Kevin Surya Augusto', 'L', '2002-08-27', 'Bukit Cengkeh 1Jl Medan Blok B 2Cimanggis', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(16, '0021130042', 'Luthfi Ali Qodri', 'L', '2002-02-26', 'Komp. TNI AD Jl Harum Manis No.05 Rt 03/13 Blok H-1 Sukamaju Baru Tapos', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(17, '0015073490', 'Maulana Yusuf', 'L', '2001-12-18', 'Kp. Sindangkarsa Rt 02/03 Sukamaju Baru Tapos', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(18, '151608904', 'Muhammad Al Kausar Ramadhan', 'L', '2002-11-13', 'Jl.Merapi Raya No.104 Depok Timur', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(19, '0016516172', 'Muhammad Fatah Hidayat', 'L', '2002-12-21', 'Kp. Cikumpa Jl. Studio AlamTVRI Rt 04/08 Sukmajaya Depok', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(20, '0015333086', 'Muhammad Hadyan Amrillah\r\n', 'L', '2001-11-29', 'Pal Sigunung Rt 01/04 Tugu Cimanggis Depok\r\n', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(21, '0021017560', 'Muhammad Hikmal Ramadhani\r\n', 'L', '2002-11-26', 'Jl. Portiara No. 88bRt 03/15 Curug Cimanggis Depok\r\n', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(22, '0021014059', 'Muhammad Muhyi Rasyidin\r\n', 'L', '2002-03-18', 'Jl.Raya Bogor Km. 38 Gg. Al Muhsinin Rt 01/01  23ASukamaju Cilodong\r\n', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(23, '0028447100', 'Muhammad Rizki Andika\r\n', 'L', '2002-06-22', 'Jl. Caringin Kp. Caringin Rt 04/08 No.20 Raga Jaya Bojong Grde\r\n', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(24, '0021032258', 'Muhammad Riztaffa Firli Mubaraqh\r\n', 'L', '2002-08-16', 'Jl. Gadok Raya Gg. Cempaka Rt 04/07 No. 42 Cisalak Pasar Depok\r\n', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(25, '0022756612', 'Muhammad Syaiful Iskandar\r\n', 'L', '2003-06-12', 'Depok Timur Dalam Kp.Bojong  02/26 bakti Jatya Sukmajaya Dpok\r\n', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(26, '0020450981', 'Nabil Arfian\r\n', 'P', '2002-09-14', 'Jl. KesadaranNo. 56Rt 08/9 Cikumpa Sukmajaya Depok\r\n', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(27, '0021017470', 'Natashya Pramudita Lillah Majeri\r\n', 'P', '2002-02-27', 'Pedurenan Depok Rt 05/01 Cisalak Pasar Cimanggis\r\n', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(28, '0022771084', 'Noviardita Ramadhani\r\n', 'P', '2002-11-26', 'Jl. Biola VI No. 102 Rt 04/07 Depok Dua Tengah\r\n', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(29, '1718100280', 'Pramudya Satrio Bagaskara\r\n', 'L', '2002-12-20', 'Pondok Sukatani Permai Blok 1 Jl. Leci 1 No. 3 Rt 04/18\r\n', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(30, '0021073405', 'Putriana Alfatikasari\r\n', 'P', '2002-06-24', 'Kp. Sindangkarsa Rt 07/07 Sukamaju Baru Tapos\r\n', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(31, '0021073365', 'Rheza Ardhiva\r\n', 'L', '2002-07-18', 'Jl. Bhakti  Abri Rt 05/09 Blok A No. 55\r\n', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(32, '0021171038', 'Riki Kusworo\r\n', 'L', '2002-06-29', 'Kp. Kalimanggis, Harjamukti Rt 01/04\r\n', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(33, '0021331018', 'Rizki Fadilla\r\n', 'L', '2002-06-16', 'Kp. Pal Sigunung Rt 04/01 Tugu Cimanggis Depok\r\n', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(34, '0020631712', 'Rizky Surya Putra\r\n', 'L', '2002-10-26', 'Jl. Gunung Jati Raya Blok D 24 No.3 Pelita 2 Kopasus Sukatani Cimanggis Depok\r\n', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(35, '0022774166', 'Sigit Andreas Saputra\r\n', 'L', '2002-09-07', 'Kp. Sugu Tamu Rt 04/ )28 Baktijaya Sukmajaya\r\n', '2020-11-06 17:00:00', '2020-11-06 17:00:00', 2),
(100, '12345678974', 'Syahrevi', 'L', '2020-11-07', 'Depok', '2020-11-07 00:26:43', '2020-11-07 00:26:43', 1),
(122, '71480124', 'Rosiyana', 'P', '2002-12-02', 'Gg.Masjid al-islah', '2020-12-10 05:58:41', '2020-12-10 05:58:41', 2),
(124, '7148012', 'Sevfian', 'L', '2002-12-12', 'Depok timur', '2020-12-09 06:59:00', '2020-12-10 19:22:59', 2),
(125, '837901745', 'adinda', 'P', '2020-12-09', 'depok', '2020-12-11 02:04:00', '2020-12-10 20:15:52', 2);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-10-21 01:17:41', '2020-10-21 01:17:41'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-10-21 01:17:42', '2020-10-21 01:17:42'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-10-21 01:17:42', '2020-10-21 01:17:42'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-10-21 01:17:42', '2020-10-21 01:17:42'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-10-21 01:17:42', '2020-10-21 01:17:42'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-10-21 01:17:42', '2020-10-21 01:17:42'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-10-21 01:17:43', '2020-10-21 01:17:43'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-10-21 01:17:43', '2020-10-21 01:17:43'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-10-21 01:17:43', '2020-10-21 01:17:43'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-10-21 01:17:43', '2020-10-21 01:17:43'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-10-21 01:17:43', '2020-10-21 01:17:43'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-10-21 01:17:43', '2020-10-21 01:17:43'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-10-21 01:17:44', '2020-10-21 01:17:44'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-10-21 01:17:44', '2020-10-21 01:17:44'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-10-21 01:17:44', '2020-10-21 01:17:44'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-10-21 01:17:44', '2020-10-21 01:17:44'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-10-21 01:17:44', '2020-10-21 01:17:44'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-10-21 01:17:44', '2020-10-21 01:17:44'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-10-21 01:17:44', '2020-10-21 01:17:44'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-10-21 01:17:44', '2020-10-21 01:17:44'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-10-21 01:17:44', '2020-10-21 01:17:44'),
(22, 'menu_items', 'title', 13, 'pt', 'Publicações', '2020-10-21 01:17:44', '2020-10-21 01:17:44'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-10-21 01:17:44', '2020-10-21 01:17:44'),
(24, 'menu_items', 'title', 12, 'pt', 'Categorias', '2020-10-21 01:17:44', '2020-10-21 01:17:44'),
(25, 'menu_items', 'title', 14, 'pt', 'Páginas', '2020-10-21 01:17:44', '2020-10-21 01:17:44'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-10-21 01:17:45', '2020-10-21 01:17:45'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-10-21 01:17:45', '2020-10-21 01:17:45'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-10-21 01:17:45', '2020-10-21 01:17:45'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-10-21 01:17:45', '2020-10-21 01:17:45'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-10-21 01:17:45', '2020-10-21 01:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `ruang_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `siswa_id`, `ruang_id`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\October2020\\7DqaRoDPv5dqAHiJWtJu.jpg', NULL, '$2y$10$q/qkOGSWlEv6n/nf2F54P.HJQ.psIa7B69QBPdriziqe2MK2qXjXS', 'kgQXXJon39hrrXr7J18cfvPV8i3IVDs89vaJ21BcG9LBnywHi93YOhyPCctI', '{\"locale\":\"en\"}', '2020-10-21 01:17:36', '2020-10-21 01:25:10', NULL, NULL),
(2, 2, 'Syahrevi', 'lizard.hazard@gmail.com', 'users/default.png', NULL, '$2y$10$yEBaRCrLHyzeOiRXJoDL1uthTdhE76pbHWk2JPTvQvXPwWLde80xK', 'wy6TbdIfLEPV9J9paSAjQGiitS0qledoTyTOXhCAeyDp1evHO5x39JnCa9Ra', '{\"locale\":\"en\"}', '2020-10-22 04:18:29', '2020-10-26 00:39:56', 9, 2),
(3, 2, 'Rosiyana', 'rosiyana949@email.com', 'users/default.png', NULL, '$2y$10$SKUS9jP1jO1mbA7tTZ89SuUV4AIsjS4sG1rDQCd9kneRyUoLiRlz.', 'bybSO9aZo5IX75yqJadeaayz6mVTU0JgwYCPuROsCPPTv9GintNsG552uerB', NULL, NULL, NULL, 122, 2),
(4, 2, 'rosiyana', 'rosiyana299@gmail.com', 'users/default.png', NULL, '$2y$10$enjAkpyxlXq97YtRHd1daOOml2zmNcfdtNra1h7PBGbBmoRmwyRoe', NULL, NULL, '2020-11-26 22:56:44', '2020-11-26 22:56:45', NULL, NULL),
(8, 2, 'Sevfiana', 'sefviana@gmail.com', 'users/default.png', NULL, '$2y$10$i2AO5K4DIsU5n3BDagUltuYXnonRf3Y/q.VuK8f2QCzhIRhYvOnMS', NULL, NULL, '2020-12-10 00:01:23', '2020-12-10 00:01:23', 124, 2),
(9, 2, 'adinda', 'adinda@gmail.com', 'users/default.png', NULL, '$2y$10$AfKt.TpJK23NelAZFV6NcOPNNJWqjoKod.1YWw64cOw/jT8gX0Wnm', NULL, NULL, '2020-12-10 16:34:06', '2020-12-10 16:34:06', 125, 2),
(10, 2, 'aldito', 'aldito@gmail.com', 'users/default.png', NULL, '$2y$10$PMjj1P7CMFCWTse31v/JI.VeZYZTNL/mKW6Cmti4rH2ScJeUWyIw.', NULL, NULL, '2020-12-10 20:21:56', '2020-12-10 20:21:56', NULL, NULL),
(11, 2, 'sania', 'sania@gmail.com', 'users/default.png', NULL, '$2y$10$X9r8id.168Unz8lcXsvMSuGvQEXl6fPywzPgIiEENU.RHgPctvB12', NULL, NULL, '2020-12-10 20:29:37', '2020-12-10 20:29:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kotas`
--
ALTER TABLE `kotas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `presensis`
--
ALTER TABLE `presensis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `ruangs`
--
ALTER TABLE `ruangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kotas`
--
ALTER TABLE `kotas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `presensis`
--
ALTER TABLE `presensis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ruangs`
--
ALTER TABLE `ruangs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
