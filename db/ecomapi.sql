-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2018 at 03:30 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(13, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(14, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(15, '2016_06_01_000004_create_oauth_clients_table', 1),
(16, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(17, '2018_02_03_080309_create_products_table', 1),
(18, '2018_02_03_080333_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('439c6152509d9a04bcdcc16d63d3b954db6b0ca17b34989924fc042e6076047a619baf197100853c', 2, 2, NULL, '[]', 0, '2018-02-03 09:31:53', '2018-02-03 09:31:53', '2019-02-03 15:16:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'twxUfWfAytYCmZ6k4b3oh9Wyrth9mBVOLe184pTH', 'http://localhost', 1, 0, 0, '2018-02-03 09:28:48', '2018-02-03 09:28:48'),
(2, NULL, 'Laravel Password Grant Client', 'zY9DWp6zH6Oy9yVsPCyvBxkDaZNo0jtZiCnomCIm', 'http://localhost', 0, 1, 0, '2018-02-03 09:28:48', '2018-02-03 09:28:48');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-02-03 09:28:48', '2018-02-03 09:28:48');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('8c2b00a50ab3f9743a8f500a3a89fb3dcd08f3ede03c88074b6d9450ca64c6bb5113c859b564c2e0', '439c6152509d9a04bcdcc16d63d3b954db6b0ca17b34989924fc042e6076047a619baf197100853c', 0, '2019-02-03 15:16:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `stock`, `discount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'dolor', 'Repellat sit harum consequatur molestiae voluptatibus. Voluptatem ipsa illum laudantium repudiandae officia numquam. Non ut accusantium ut. Ex minima dolorem blanditiis vel laborum voluptatem aperiam.', 407, 3, 23, 4, '2018-02-03 09:22:26', '2018-02-03 09:22:26'),
(2, 'qui', 'Magnam minima error nemo et maiores laborum vel. Ab alias rem sunt quo voluptas. Et nostrum quas magnam dignissimos aut corrupti.', 3479, 8, 28, 4, '2018-02-03 09:22:27', '2018-02-03 09:22:27'),
(3, 'assumenda', 'Mollitia aut voluptatibus dignissimos veritatis laborum est. Voluptatem error reprehenderit aliquam deleniti optio. Expedita aliquam aut dolorum consequuntur.', 2382, 6, 27, 4, '2018-02-03 09:22:27', '2018-02-03 09:22:27'),
(4, 'ut', 'Laudantium modi quia repellat non eligendi possimus. Suscipit in qui reiciendis.', 319, 5, 22, 4, '2018-02-03 09:22:27', '2018-02-03 09:22:27'),
(5, 'et', 'Nulla expedita quae ipsa impedit quia exercitationem esse. Natus qui voluptatum qui neque mollitia ea sit. Eaque inventore ea ducimus tempora. Id necessitatibus sunt sequi autem cumque vel.', 4310, 8, 24, 5, '2018-02-03 09:22:27', '2018-02-03 09:22:27'),
(6, 'est', 'Perferendis voluptatem tenetur adipisci ut rerum quisquam. Fugiat aut repellendus aperiam illo. Nihil vero voluptatum aut commodi et laboriosam.', 4010, 5, 26, 1, '2018-02-03 09:22:28', '2018-02-03 09:22:28'),
(7, 'ab', 'Eos vitae velit et sit. Ullam id rem totam aperiam dicta et molestiae. Id id veritatis eos. Illo dolorem nam dolores aspernatur est quos.', 1052, 6, 25, 5, '2018-02-03 09:22:28', '2018-02-03 09:22:28'),
(8, 'et', 'Sit rerum perferendis labore tempora asperiores. Alias explicabo enim voluptate qui doloribus eligendi sit assumenda. Ducimus tempore atque repellat libero. Sunt veniam reprehenderit reprehenderit voluptate repellendus aperiam.', 4397, 4, 24, 3, '2018-02-03 09:22:28', '2018-02-03 09:22:28'),
(9, 'ut', 'Distinctio voluptas nam dolor vel non id. Distinctio reprehenderit odio inventore.', 4223, 6, 28, 8, '2018-02-03 09:22:28', '2018-02-03 09:22:28'),
(10, 'qui', 'Sit omnis et rem amet error ipsa est. Et at natus quaerat aut et iste. Beatae possimus voluptas atque deserunt odio. Aut sint praesentium quia harum.', 3416, 8, 28, 1, '2018-02-03 09:22:29', '2018-02-03 09:22:29'),
(11, 'quia', 'Dolorem adipisci deserunt ducimus pariatur expedita. Id fugit omnis dolorum mollitia.', 2818, 7, 27, 7, '2018-02-03 09:22:29', '2018-02-03 09:22:29'),
(12, 'Samsung 10', 'Sint ex odio qui incidunt fugiat. Animi amet autem et accusantium nesciunt vel blanditiis. Incidunt voluptatem maiores rerum ipsam cupiditate sed rerum.', 599, 10, 50, 2, '2018-02-03 09:22:29', '2018-02-03 09:52:05'),
(13, 'in', 'Facilis sint explicabo autem aliquam quo. Sed vel et ut. Qui at eius repudiandae. Aut soluta doloremque est unde explicabo.', 2605, 5, 22, 10, '2018-02-03 09:22:29', '2018-02-03 09:22:29'),
(14, 'enim', 'Tenetur nisi est incidunt iure aut dolores. Nihil earum accusantium ut error vel quibusdam reiciendis. Excepturi saepe sit molestiae aliquid nemo. Nesciunt error et est iusto qui rem. Voluptatum provident laudantium facilis laudantium necessitatibus mollitia cum.', 4776, 6, 21, 5, '2018-02-03 09:22:29', '2018-02-03 09:22:29'),
(15, 'sequi', 'Labore qui voluptas omnis asperiores reiciendis voluptate et qui. Impedit laudantium est repudiandae inventore atque. Sed quo enim cum aut dolorum ut. Sed officiis deleniti molestias laboriosam. Aut officia hic repellendus similique.', 3269, 8, 27, 3, '2018-02-03 09:22:29', '2018-02-03 09:22:29'),
(16, 'nihil', 'Dolor in animi consequatur. Quis labore aut quos eaque sed earum dolore fugiat. Eum velit repudiandae veritatis facilis est sint reiciendis officiis. Voluptatem laborum quis et et similique quam natus.', 2940, 4, 30, 1, '2018-02-03 09:22:29', '2018-02-03 09:22:29'),
(17, 'harum', 'At et saepe doloribus repudiandae ex voluptas et. Porro qui sequi natus est. Sit ducimus autem rem doloribus.', 793, 1, 20, 10, '2018-02-03 09:22:30', '2018-02-03 09:22:30'),
(18, 'minus', 'Qui repellat aut unde occaecati dolorum exercitationem inventore ducimus. Assumenda facere exercitationem molestias eveniet fuga id aspernatur. Numquam provident eveniet id omnis magni est.', 2171, 2, 27, 1, '2018-02-03 09:22:30', '2018-02-03 09:22:30'),
(19, 'et', 'Unde dolorem dolorem et quia perferendis. Fugiat et et quas excepturi praesentium enim aut. Debitis dicta voluptatem officiis voluptas mollitia maxime.', 246, 4, 21, 5, '2018-02-03 09:22:30', '2018-02-03 09:22:30'),
(20, 'inventore', 'Sed deserunt aut aut deserunt doloribus. Et illo qui modi voluptatem et. Ut et tempora officiis rerum officia.', 339, 1, 23, 2, '2018-02-03 09:22:30', '2018-02-03 09:22:30'),
(21, 'eaque', 'Quo optio id dignissimos hic soluta animi ex dolorem. Ea et odit a quis dignissimos nam. Nisi nam facilis qui est quasi maiores. Laudantium consequatur dolore fugiat nostrum voluptas similique aut optio.', 3410, 3, 22, 5, '2018-02-03 09:22:30', '2018-02-03 09:22:30'),
(22, 'quaerat', 'Quia facilis ea ullam officia omnis ut. Animi magnam qui voluptatem voluptatum reprehenderit vel. Et laboriosam nihil earum esse. Et est labore quod earum.', 1378, 1, 22, 2, '2018-02-03 09:22:30', '2018-02-03 09:22:30'),
(23, 'nulla', 'Facere voluptatem officia error facere non. Incidunt excepturi consequatur ipsum aut. Aperiam voluptatem similique eaque ab corrupti fugit. Est accusantium consequatur expedita omnis quia quos.', 1239, 3, 29, 1, '2018-02-03 09:22:31', '2018-02-03 09:22:31'),
(24, 'quibusdam', 'Soluta fugit est repellat itaque ut. Beatae dolores nam eius nulla. Placeat nihil voluptatem vel quibusdam.', 3317, 0, 23, 10, '2018-02-03 09:22:31', '2018-02-03 09:22:31'),
(25, 'officia', 'Enim tempora hic hic expedita odio. Sed quis dolorum aspernatur dolore.', 2948, 0, 29, 9, '2018-02-03 09:22:31', '2018-02-03 09:22:31'),
(26, 'placeat', 'Voluptates ad illum nulla accusamus ut architecto. Qui consectetur quia amet quia modi.', 3172, 2, 25, 4, '2018-02-03 09:22:31', '2018-02-03 09:22:31'),
(27, 'accusantium', 'Dolores voluptatem odio atque fuga nam omnis id. Incidunt ut velit optio et eum. Similique eveniet rem quia. Temporibus consequatur repudiandae sed qui ea quidem.', 4668, 9, 20, 8, '2018-02-03 09:22:31', '2018-02-03 09:22:31'),
(28, 'dolorum', 'Soluta qui qui sit qui voluptatibus vero et atque. Non autem maiores maxime ipsum eum iste. Qui iure et optio rerum aut.', 1397, 5, 24, 7, '2018-02-03 09:22:31', '2018-02-03 09:22:31'),
(29, 'iure', 'Quibusdam sint doloremque consequatur vero. Non qui non possimus provident modi. Dolore ipsam repellendus architecto.', 3950, 4, 20, 4, '2018-02-03 09:22:31', '2018-02-03 09:22:31'),
(30, 'enim', 'Ut iure porro earum. Ipsum et nihil error sit ut quia. Eaque laudantium quaerat eum reiciendis dolorem omnis quos. Quia aspernatur fuga qui doloremque consequatur eos quis. Tempora pariatur aut accusamus et.', 310, 6, 20, 4, '2018-02-03 09:22:31', '2018-02-03 09:22:31'),
(31, 'aut', 'Officiis earum ex quis voluptatem. Eos quod et eveniet aliquam molestias velit. Porro laudantium non voluptatibus culpa non cum veritatis. Dolores in perferendis nemo sunt expedita aut voluptatem.', 1804, 7, 21, 8, '2018-02-03 09:22:32', '2018-02-03 09:22:32'),
(32, 'sint', 'Fugit cupiditate et non ut sed. Earum itaque nobis quis facilis. Atque modi dolores repudiandae sit qui assumenda voluptas. Sunt rerum nobis suscipit consequatur.', 4072, 9, 28, 1, '2018-02-03 09:22:32', '2018-02-03 09:22:32'),
(33, 'laboriosam', 'Numquam voluptatem explicabo accusamus laborum repudiandae sint sint. Doloremque nobis error id nesciunt facilis. Ullam suscipit quaerat doloribus. Est temporibus eum hic.', 2310, 0, 25, 7, '2018-02-03 09:22:32', '2018-02-03 09:22:32'),
(34, 'eum', 'Debitis facere quia maxime. Quis quam nihil et ad illum et et. Perspiciatis facere non autem id modi.', 2523, 1, 24, 2, '2018-02-03 09:22:32', '2018-02-03 09:22:32'),
(35, 'omnis', 'Dolorum omnis cumque sint accusamus. Quasi sit consectetur alias distinctio natus nulla ipsam et. Debitis voluptatem dignissimos quia et deleniti porro eligendi. Inventore facere vero officiis qui sequi ut.', 448, 9, 30, 5, '2018-02-03 09:22:32', '2018-02-03 09:22:32'),
(36, 'ipsa', 'Est ipsum sed facere. Sed quia ipsum et est nesciunt omnis. Tenetur beatae dignissimos vel qui aut.', 2649, 0, 23, 8, '2018-02-03 09:22:32', '2018-02-03 09:22:32'),
(37, 'dolore', 'Consequuntur ipsa iusto dolorem ea. Non tenetur dolorum dolor sapiente rerum odit repudiandae. Nihil ut necessitatibus excepturi nisi aut. A blanditiis reprehenderit architecto neque rem est. Veniam iusto blanditiis dolorem quo non.', 2018, 6, 30, 9, '2018-02-03 09:22:32', '2018-02-03 09:22:32'),
(38, 'fugiat', 'Nisi hic beatae aliquid tempore. Dolor dolor officia velit dolor animi ex. A inventore vel dolorem est soluta libero enim.', 3220, 9, 27, 8, '2018-02-03 09:22:33', '2018-02-03 09:22:33'),
(39, 'et', 'In ut aut sed fugiat cupiditate explicabo qui. Voluptatem qui provident quia illo. Nam ea modi maiores repudiandae atque ex earum.', 4666, 7, 27, 2, '2018-02-03 09:22:33', '2018-02-03 09:22:33'),
(40, 'cumque', 'Magnam iste aut id tempora eaque aut. Placeat deserunt dicta tenetur quo dolores tempora. Ea eos similique aliquam.', 4117, 9, 21, 8, '2018-02-03 09:22:33', '2018-02-03 09:22:33'),
(41, 'aut', 'Voluptas non eos doloremque et est culpa. Et dolores molestiae est expedita autem. Sint aliquam perspiciatis molestiae omnis reprehenderit quos ducimus.', 3504, 2, 21, 5, '2018-02-03 09:22:33', '2018-02-03 09:22:33'),
(42, 'aperiam', 'Aut pariatur inventore reiciendis nulla cumque et qui quia. Recusandae nihil porro optio eum sit asperiores voluptas. Aut distinctio magnam ipsam recusandae. Dolorem quia enim vero id eligendi.', 1235, 9, 28, 7, '2018-02-03 09:22:33', '2018-02-03 09:22:33'),
(43, 'perferendis', 'Assumenda id quia dicta id et. Fugiat ut ut molestiae saepe expedita aut. Eum magni rerum facilis et ea.', 3722, 6, 26, 3, '2018-02-03 09:22:33', '2018-02-03 09:22:33'),
(44, 'numquam', 'Doloribus et quam est vel voluptatem totam. Dolores porro et corrupti quia accusantium et architecto. Ipsam veritatis ea dolores beatae totam consequatur quia quia.', 4859, 9, 23, 5, '2018-02-03 09:22:33', '2018-02-03 09:22:33'),
(45, 'impedit', 'Ut fugit optio enim labore. Deserunt quis est corporis cupiditate. Quos nihil modi asperiores animi adipisci facilis asperiores. Voluptas et voluptatem modi velit possimus et nisi.', 2684, 8, 21, 10, '2018-02-03 09:22:34', '2018-02-03 09:22:34'),
(46, 'aut', 'Non facere consequatur delectus quia. Est illo culpa iste eum asperiores dolorem vero. Accusamus iure fugiat sint sit impedit sint consectetur consequatur.', 1691, 8, 25, 10, '2018-02-03 09:22:34', '2018-02-03 09:22:34'),
(47, 'nobis', 'Sint quo magni dolorem et dolore. Et debitis dolorem aspernatur error. Provident sit explicabo qui porro.', 3226, 5, 25, 9, '2018-02-03 09:22:34', '2018-02-03 09:22:34'),
(48, 'minima', 'Quas atque nihil recusandae omnis omnis. Molestiae et et non maxime. Eveniet aut placeat cumque. Excepturi dolor minima ut autem.', 4511, 6, 25, 5, '2018-02-03 09:22:34', '2018-02-03 09:22:34'),
(49, 'nemo', 'Voluptatem aut consequatur deserunt sunt iure possimus omnis molestiae. Voluptatem quia quam totam quia aperiam omnis. Iste sit quia et esse eos.', 3073, 5, 22, 7, '2018-02-03 09:22:34', '2018-02-03 09:22:34'),
(50, 'voluptas', 'Soluta tempora quo eum ipsum eos consectetur dolorem. Et qui recusandae nesciunt rerum molestiae voluptate. A sed est vitae quo reprehenderit pariatur dolorem. Occaecati accusamus sit quis iste rem. Aperiam magni quae sunt reprehenderit.', 4022, 0, 22, 4, '2018-02-03 09:22:34', '2018-02-03 09:22:34');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(1, 14, 'Iliana Huels', 'Rerum est inventore reiciendis omnis. Delectus nesciunt quod iure exercitationem ab accusantium qui. Vero laborum et quia aut vero omnis ut. Id reiciendis eveniet voluptates quia.', 0, '2018-02-03 09:22:35', '2018-02-03 09:22:35'),
(2, 14, 'Wilbert Padberg', 'In reiciendis est assumenda quae veritatis accusantium ratione. Quis dolor voluptas neque sed. Eligendi est similique et amet consectetur quas saepe perferendis.', 0, '2018-02-03 09:22:35', '2018-02-03 09:22:35'),
(3, 48, 'Toy Kunze', 'Esse incidunt aut sit itaque. Ut harum quod assumenda voluptate aut cumque vero inventore. Esse quisquam commodi temporibus natus est. Et hic praesentium reprehenderit quia.', 2, '2018-02-03 09:22:35', '2018-02-03 09:22:35'),
(4, 36, 'Alfonso Schamberger', 'Architecto molestias nihil quia ipsam perspiciatis non ut. Perferendis molestiae ab est. Delectus laboriosam sapiente earum dolore qui. Nesciunt iure est nulla repellendus fuga commodi. Doloremque autem voluptatum repellendus omnis qui quia voluptatem praesentium.', 3, '2018-02-03 09:22:35', '2018-02-03 09:22:35'),
(5, 25, 'Gunner Connelly', 'Voluptatem dolores suscipit non eaque dignissimos et. Qui ut et quidem deleniti inventore dolorem necessitatibus. Similique sunt quo earum sit dolorem ut.', 1, '2018-02-03 09:22:36', '2018-02-03 09:22:36'),
(6, 29, 'Sage Boehm', 'Sed eum vel vel vel. Rerum maxime beatae dolores itaque rerum magni nam. Id nihil at est ut voluptatem fugit. Cum quasi fugit nihil maxime sapiente vel beatae. Neque sit autem aliquam dolorem sed velit.', 3, '2018-02-03 09:22:36', '2018-02-03 09:22:36'),
(7, 47, 'Jayson Kreiger', 'Culpa aut voluptas et delectus ut. Error quia ut qui aliquid commodi. Enim sint praesentium tenetur saepe asperiores doloremque dolorem et. Numquam non dolor deleniti nesciunt.', 0, '2018-02-03 09:22:36', '2018-02-03 09:22:36'),
(8, 30, 'Prof. Randy Fisher', 'Vitae ut amet saepe vel sunt dolores. Qui reprehenderit totam eum possimus debitis dolor laudantium. Tempora architecto explicabo explicabo ea rerum. Ab vitae harum inventore sed minima.', 3, '2018-02-03 09:22:36', '2018-02-03 09:22:36'),
(9, 2, 'Percy Wyman', 'Incidunt repellendus quisquam porro illo nihil. Aut est quia qui sunt et autem voluptas mollitia. Et rerum est laboriosam qui.', 5, '2018-02-03 09:22:36', '2018-02-03 09:22:36'),
(10, 17, 'Maia Armstrong', 'Commodi consectetur aut quis corrupti culpa. Beatae eum mollitia ab iusto soluta at.', 0, '2018-02-03 09:22:36', '2018-02-03 09:22:36'),
(11, 21, 'Allene Oberbrunner', 'Hic est aut ea et architecto aut. Commodi aspernatur est amet voluptas sapiente quis delectus non. In labore mollitia dolores sed rerum nesciunt. Iusto qui eum vero doloremque quibusdam. Atque voluptatum est ex impedit ab.', 1, '2018-02-03 09:22:37', '2018-02-03 09:22:37'),
(12, 29, 'Mr. Myrl Marquardt DDS', 'Beatae id doloribus eaque quia odio alias amet. Accusamus ea et doloribus sed. Est aut ea exercitationem consectetur illum aut ut nihil. Vitae ut mollitia vero dolores reiciendis fugiat perspiciatis.', 5, '2018-02-03 09:22:37', '2018-02-03 09:22:37'),
(13, 44, 'Dr. Frederique Klocko I', 'Minima aperiam et natus vel alias. Occaecati natus eum sit aperiam provident et. Quas quia reprehenderit fugiat tempora itaque enim consectetur animi.', 5, '2018-02-03 09:22:37', '2018-02-03 09:22:37'),
(14, 42, 'Wilhelmine Okuneva', 'Laborum saepe quia ratione aut adipisci. Sint veniam quo sed assumenda assumenda qui eos.', 1, '2018-02-03 09:22:37', '2018-02-03 09:22:37'),
(15, 47, 'Cydney Schinner', 'Recusandae excepturi tenetur et molestiae soluta sit temporibus. Velit omnis ea error odit qui culpa illum. Quaerat deleniti optio est nesciunt omnis.', 1, '2018-02-03 09:22:37', '2018-02-03 09:22:37'),
(16, 25, 'Joy Shields', 'Perspiciatis autem ut iure omnis mollitia quibusdam quisquam. Dolorem est aut praesentium eaque distinctio officia. Id tenetur non soluta iure. Sit placeat quia dolor beatae nostrum animi deserunt sint. Expedita porro est amet consequatur quibusdam magnam dolores tenetur.', 2, '2018-02-03 09:22:37', '2018-02-03 09:22:37'),
(17, 1, 'Dominique Macejkovic MD', 'Voluptatibus ea quo nostrum est itaque necessitatibus nihil. Est aspernatur blanditiis sint ut ex rem sit excepturi. Ut debitis est quas maiores harum ipsum. Debitis quaerat eaque laborum quas a minus. Modi quis saepe quo reiciendis iste.', 0, '2018-02-03 09:22:37', '2018-02-03 09:22:37'),
(18, 17, 'Judson Schoen', 'A officiis quam non qui ipsa error. Doloribus et et itaque. Ut nostrum provident at fugit nemo dicta nihil.', 1, '2018-02-03 09:22:37', '2018-02-03 09:22:37'),
(19, 4, 'Britney Ebert', 'At architecto laborum eum est quia. Inventore repellat corrupti non laborum iusto. Voluptatem alias natus tempore et sunt assumenda. Velit illo voluptas rem eos.', 4, '2018-02-03 09:22:38', '2018-02-03 09:22:38'),
(20, 41, 'Myrl Lind', 'Amet maiores voluptatibus mollitia ullam dicta sint. Excepturi inventore sint porro nam placeat et sed. Numquam totam ullam voluptatum consectetur accusantium. Est voluptas recusandae aperiam voluptas corporis.', 1, '2018-02-03 09:22:38', '2018-02-03 09:22:38'),
(21, 15, 'Miss Celia Gislason', 'Placeat voluptate dicta error odio quos ut ut. Quisquam repellat possimus architecto sed. Quidem temporibus deserunt ut officiis nisi. Quibusdam tenetur magnam ex et impedit. Omnis possimus quia aliquam sapiente expedita molestias inventore doloremque.', 1, '2018-02-03 09:22:38', '2018-02-03 09:22:38'),
(22, 32, 'Brian Mosciski Jr.', 'Explicabo eveniet qui accusamus. Sunt accusamus earum occaecati dolore at et laudantium. Doloribus excepturi fuga nisi labore tenetur eum.', 0, '2018-02-03 09:22:38', '2018-02-03 09:22:38'),
(23, 15, 'Daren Murray', 'Cum eveniet aut facilis asperiores ducimus corporis. Nesciunt quasi et et necessitatibus. Ut ea porro et dolorem et illo vel.', 5, '2018-02-03 09:22:38', '2018-02-03 09:22:38'),
(24, 13, 'Adalberto Parisian', 'Est omnis suscipit omnis fugiat sed autem debitis. Et repellat molestiae qui quia voluptates. Qui omnis mollitia eum aut.', 3, '2018-02-03 09:22:38', '2018-02-03 09:22:38'),
(25, 35, 'Sylvia Waters', 'Voluptas non nihil sed est. Impedit autem perferendis unde quis. Odit dolorum corporis illum eos voluptatem et inventore reprehenderit.', 1, '2018-02-03 09:22:39', '2018-02-03 09:22:39'),
(26, 34, 'Zion Howe', 'Expedita aspernatur ratione facilis quia minus aut est. Consequatur dolorem voluptatum vitae laborum. Non nobis laborum ut reprehenderit laborum non ullam. Culpa sit totam ducimus magnam possimus error.', 0, '2018-02-03 09:22:39', '2018-02-03 09:22:39'),
(27, 42, 'Mr. Dillan Dickinson PhD', 'Perspiciatis eveniet distinctio non eos provident quo delectus. Et cumque omnis excepturi eligendi sit suscipit. Nulla atque possimus quia et laboriosam fugiat quisquam.', 3, '2018-02-03 09:22:39', '2018-02-03 09:22:39'),
(28, 27, 'Dr. Nakia Huel II', 'Impedit ad est quod. Beatae optio omnis eius soluta commodi perspiciatis ut voluptas. Amet velit dolores eligendi sit consequuntur est.', 3, '2018-02-03 09:22:39', '2018-02-03 09:22:39'),
(29, 34, 'Mr. Golden Hessel', 'Tenetur qui aliquid et reprehenderit non dolorum. Perspiciatis aliquam laudantium sit ut consequatur. Quia et excepturi dignissimos beatae laborum soluta dolores.', 4, '2018-02-03 09:22:39', '2018-02-03 09:22:39'),
(30, 45, 'Mr. Logan Luettgen', 'Vel quod fugit vero nihil perferendis. Ut ad sint quas neque molestiae. Tenetur dolorem reprehenderit veniam sed corporis nesciunt voluptatibus nihil. Ab voluptate non voluptas delectus corporis enim.', 4, '2018-02-03 09:22:39', '2018-02-03 09:22:39'),
(31, 19, 'Lempi Boehm', 'Quia inventore doloremque omnis sunt occaecati. Est magnam porro ratione id reprehenderit qui. Quibusdam tempora necessitatibus eius quibusdam qui voluptatem facere. Illum in est quae recusandae.', 3, '2018-02-03 09:22:40', '2018-02-03 09:22:40'),
(32, 26, 'Miss Chaya Thiel DDS', 'Veritatis eum atque voluptatem vitae nam aperiam quisquam. Qui aut facilis amet amet sapiente doloremque. Sunt dignissimos accusamus itaque officiis. Modi dolorem sint voluptatem itaque eligendi.', 4, '2018-02-03 09:22:40', '2018-02-03 09:22:40'),
(33, 27, 'Jayden Murray', 'Officia et eum temporibus vero. Beatae reprehenderit expedita officia maiores maxime. Nostrum deserunt qui qui enim rerum voluptas.', 0, '2018-02-03 09:22:40', '2018-02-03 09:22:40'),
(34, 32, 'Alford Kshlerin', 'Quos reiciendis nihil explicabo est unde iste eum enim. Quo nostrum omnis placeat iusto voluptatem. Et fugiat facilis quasi ad aspernatur est incidunt.', 5, '2018-02-03 09:22:41', '2018-02-03 09:22:41'),
(35, 32, 'Shana Larson', 'Enim quaerat alias labore repellat possimus ut nemo. Quo blanditiis cum non quibusdam. Voluptatem nesciunt rerum est facilis soluta iusto magni qui.', 2, '2018-02-03 09:22:41', '2018-02-03 09:22:41'),
(36, 7, 'Izabella Vandervort', 'Ipsam labore quia inventore fuga et ab similique voluptatibus. Eum adipisci voluptatem explicabo tempora illum possimus. Beatae exercitationem debitis voluptates. Fugiat maiores totam ducimus molestias.', 4, '2018-02-03 09:22:41', '2018-02-03 09:22:41'),
(37, 12, 'Sibyl Stamm', 'Officia veritatis atque nemo exercitationem nam. Perferendis consequatur vel ad est explicabo quisquam facere.', 0, '2018-02-03 09:22:41', '2018-02-03 09:22:41'),
(38, 22, 'Kaley Wolf', 'Dolorem et sed nulla. Suscipit corporis explicabo perferendis ab est. Maxime omnis rerum ea repellat quisquam aut. Iste fuga et optio ut laudantium impedit officia repellendus.', 1, '2018-02-03 09:22:41', '2018-02-03 09:22:41'),
(39, 24, 'Ignacio Murphy MD', 'Autem eveniet at pariatur. Ut enim esse quasi et a. Tenetur dignissimos ipsam sapiente illum modi aspernatur. Architecto et excepturi placeat ullam omnis.', 2, '2018-02-03 09:22:42', '2018-02-03 09:22:42'),
(40, 34, 'Modesto Kuvalis IV', 'Ad consequatur eum quis numquam voluptatem. Reprehenderit quis earum rem dolores itaque in. Et modi tempora doloribus omnis. Veniam voluptate id dolores at dicta libero accusantium.', 4, '2018-02-03 09:22:42', '2018-02-03 09:22:42'),
(41, 20, 'Leland Homenick PhD', 'Neque magni quisquam aut optio iste eos. Pariatur qui saepe dolor praesentium voluptatum tempore dignissimos. Id sit deleniti fugiat fugiat. Fugit tempore vel atque culpa saepe.', 1, '2018-02-03 09:22:42', '2018-02-03 09:22:42'),
(42, 48, 'Dr. Wiley Wolf', 'Et autem quo ex qui magni voluptatem. Et quia ut molestias placeat et velit. Praesentium culpa est voluptate quisquam. Hic mollitia porro ipsam quia maiores alias. Tempora odit ratione voluptates occaecati quia tempore fuga.', 3, '2018-02-03 09:22:42', '2018-02-03 09:22:42'),
(43, 17, 'Teresa Hauck Jr.', 'Aliquam aut adipisci corrupti rerum. Eos ut sint quis placeat ut. Ullam quia provident saepe.', 1, '2018-02-03 09:22:42', '2018-02-03 09:22:42'),
(44, 46, 'Madisen Bergstrom', 'Non ab similique quia doloribus fuga adipisci. At facere adipisci fugiat aliquid deserunt cumque et.', 0, '2018-02-03 09:22:42', '2018-02-03 09:22:42'),
(45, 34, 'Javier Ullrich', 'Quam veritatis quaerat maiores rerum velit in. Adipisci debitis quas vel est adipisci dicta sit. Omnis labore nostrum quam laborum et nihil voluptatibus et. Nulla voluptas consectetur ut doloribus qui ut.', 5, '2018-02-03 09:22:43', '2018-02-03 09:22:43'),
(46, 26, 'Dr. Cordell Olson Sr.', 'Veniam iusto doloremque accusantium at nihil. Aperiam numquam et aut. Quia ea ullam saepe deserunt. Adipisci sunt ad fuga recusandae voluptas delectus distinctio.', 1, '2018-02-03 09:22:43', '2018-02-03 09:22:43'),
(47, 32, 'Mia Johns', 'Doloribus ullam iusto qui cum quia officia. Eveniet quo reiciendis qui similique unde sapiente qui. Nemo voluptates dolores sunt. Consequatur et dolorem optio libero odit. Non est voluptatibus officiis eum quo.', 5, '2018-02-03 09:22:43', '2018-02-03 09:22:43'),
(48, 21, 'Neil Ullrich Sr.', 'Reiciendis placeat quis veritatis provident. Rerum aut cumque voluptatem ab. Nihil consectetur non laudantium ut quo ut debitis consequatur.', 3, '2018-02-03 09:22:43', '2018-02-03 09:22:43'),
(49, 34, 'Ivah Ernser Jr.', 'Expedita magnam sequi omnis ut optio consectetur. Qui culpa error aliquid accusamus nisi. Reprehenderit magni numquam ex est et. Fugit beatae itaque expedita aut.', 0, '2018-02-03 09:22:43', '2018-02-03 09:22:43'),
(50, 9, 'Christelle Sauer', 'Nostrum aut reprehenderit ducimus. Architecto minima voluptatem odit in saepe magni suscipit.', 4, '2018-02-03 09:22:43', '2018-02-03 09:22:43'),
(51, 37, 'Mrs. Amina Jast DDS', 'Quis commodi vel sint laborum. Qui velit qui voluptatem nesciunt ut eos. Cumque ut similique error error possimus eum quia.', 2, '2018-02-03 09:22:43', '2018-02-03 09:22:43'),
(52, 3, 'Waldo Batz DVM', 'Veniam provident nam expedita cumque quae. Quia itaque adipisci accusamus pariatur consectetur cum. Aut rerum ducimus consequatur sunt pariatur quod consequatur.', 1, '2018-02-03 09:22:44', '2018-02-03 09:22:44'),
(53, 30, 'Priscilla Bergnaum V', 'Consectetur voluptatem delectus a maiores non consequatur adipisci consequatur. Quia veniam magni culpa incidunt fuga nam tempora pariatur. Voluptates assumenda ea laudantium neque labore. Sit iure sed et dolores beatae dolorum.', 5, '2018-02-03 09:22:44', '2018-02-03 09:22:44'),
(54, 6, 'Neil Berge', 'Error veritatis dolore dolores sapiente accusantium. Numquam nisi accusantium animi quia possimus officiis. Nulla odit tempora est ipsa. Ut saepe eos et sint minima tenetur tenetur.', 4, '2018-02-03 09:22:44', '2018-02-03 09:22:44'),
(55, 45, 'Prof. Ian Hickle', 'Porro laboriosam aut enim. Velit aut distinctio nihil ipsam magnam. Beatae quis rem cum numquam. Cupiditate et omnis inventore mollitia laboriosam. Ea est saepe saepe blanditiis.', 4, '2018-02-03 09:22:44', '2018-02-03 09:22:44'),
(56, 24, 'Torrance Davis', 'Corrupti esse omnis quam veritatis excepturi distinctio. Sit ullam suscipit voluptatem mollitia rem voluptate doloribus eligendi. Recusandae et labore consequatur quos consequatur id. Est architecto sit aut dolores libero in sed.', 2, '2018-02-03 09:22:44', '2018-02-03 09:22:44'),
(57, 21, 'Margie Durgan', 'Sed ipsam blanditiis sint voluptas. Asperiores cupiditate ut dolorem temporibus possimus non eius. Repellendus distinctio blanditiis repellat est.', 2, '2018-02-03 09:22:44', '2018-02-03 09:22:44'),
(58, 13, 'Richard Ferry', 'Explicabo assumenda consequatur tempora accusantium sed. Suscipit sed porro eaque enim. Qui dolores molestiae ut nihil. Non beatae iure facere non.', 5, '2018-02-03 09:22:45', '2018-02-03 09:22:45'),
(59, 21, 'Jermain Rodriguez', 'Velit corrupti debitis nisi. Perspiciatis et aperiam ipsum fugiat non in aut rem. Sit ab quia commodi ex vero accusamus dolores.', 1, '2018-02-03 09:22:45', '2018-02-03 09:22:45'),
(60, 21, 'Dr. Karianne Brown', 'Quibusdam a neque possimus aut consequatur vel vero. Et magnam minima libero non quam. Reiciendis laborum nemo corporis.', 0, '2018-02-03 09:22:45', '2018-02-03 09:22:45'),
(61, 49, 'Prof. Ezra Kunde Jr.', 'Veritatis rerum debitis vitae repudiandae rerum corporis et. Est qui sit itaque qui animi ad voluptatem. Voluptas omnis nostrum quisquam quas sunt et delectus.', 5, '2018-02-03 09:22:45', '2018-02-03 09:22:45'),
(62, 7, 'Chaya Lesch DVM', 'Amet dolor rerum fugit neque. Error laboriosam dolores deserunt voluptatem unde. Nemo beatae distinctio aut. Necessitatibus aperiam quia quis nisi.', 5, '2018-02-03 09:22:45', '2018-02-03 09:22:45'),
(63, 18, 'Lew Bauch', 'Eum sit expedita sit ut aut omnis consequuntur. Incidunt odio voluptatibus qui voluptatem saepe ut ea. Reiciendis qui ut culpa beatae.', 2, '2018-02-03 09:22:45', '2018-02-03 09:22:45'),
(64, 34, 'Flavio Larkin', 'Non eos asperiores et expedita voluptates et aut. Rerum error et impedit et inventore itaque. Labore cupiditate reprehenderit iure nihil sunt impedit eaque. Dolorum quia quam autem vitae corporis facilis.', 1, '2018-02-03 09:22:45', '2018-02-03 09:22:45'),
(65, 21, 'Mr. Lula Macejkovic', 'Ab delectus laborum minus neque impedit perspiciatis. Saepe excepturi veritatis vel earum quis laborum et. Quis vel quia non ea ut. Autem fugit est facere id rerum dolor.', 2, '2018-02-03 09:22:46', '2018-02-03 09:22:46'),
(66, 2, 'Cielo Bechtelar', 'Enim qui similique officia. Id amet dignissimos dolore nobis. Illum iste minima molestiae et. Dolorem quo non dolorum veritatis.', 2, '2018-02-03 09:22:46', '2018-02-03 09:22:46'),
(67, 2, 'Elmore Heidenreich', 'Cum voluptate voluptas doloremque et libero nisi. Qui assumenda quaerat deserunt aut excepturi. Doloribus similique officia nulla facere porro ut et. Necessitatibus eligendi eius quaerat nihil autem accusantium.', 0, '2018-02-03 09:22:46', '2018-02-03 09:22:46'),
(68, 1, 'Lucile Green', 'Natus rem ut nostrum rerum laboriosam et. Eius aut dolor laudantium hic voluptates. Impedit quia voluptate temporibus velit placeat hic est soluta.', 1, '2018-02-03 09:22:46', '2018-02-03 09:22:46'),
(69, 27, 'Constantin O\'Hara', 'Asperiores fugit dolor officia ut et corrupti earum. Accusamus exercitationem et consequatur dolor nesciunt non. Sint adipisci eius eaque voluptates laborum. Sit temporibus vero dolores sunt temporibus error tenetur vel.', 2, '2018-02-03 09:22:46', '2018-02-03 09:22:46'),
(70, 27, 'Jay Herman', 'Sequi delectus ea aliquid ducimus modi. Ea voluptas porro molestias quod iste.', 2, '2018-02-03 09:22:47', '2018-02-03 09:22:47'),
(71, 2, 'Mireya Doyle', 'Accusamus est veniam iste fugit ut nobis voluptas. Minima qui provident odio voluptate quo voluptate. Qui blanditiis quaerat illum nam sapiente.', 5, '2018-02-03 09:22:47', '2018-02-03 09:22:47'),
(72, 4, 'Dr. Elinore Quigley', 'Consequuntur deserunt in nesciunt nam necessitatibus magnam aliquid enim. Non quis quo voluptates dolor velit dolorem inventore. Soluta rerum iure enim eligendi enim quisquam dolor. Quod velit hic ut. Impedit quos pariatur dolor vel perferendis impedit atque.', 3, '2018-02-03 09:22:47', '2018-02-03 09:22:47'),
(73, 16, 'Tracey Gibson', 'Commodi est in perferendis aut nulla. Voluptates saepe iusto et culpa. Dolores doloribus ipsam architecto et possimus minima. Blanditiis totam odit expedita corporis recusandae animi voluptatem est. Ut maxime ducimus quisquam itaque sunt sed.', 0, '2018-02-03 09:22:47', '2018-02-03 09:22:47'),
(74, 42, 'Josephine Schiller', 'Sequi quis facilis aut dolorem laborum doloremque doloribus. Eveniet dolor ut at enim et perspiciatis. Dolorem consequuntur aut sequi. Architecto sed architecto blanditiis autem natus.', 3, '2018-02-03 09:22:47', '2018-02-03 09:22:47'),
(75, 35, 'Prof. Clint Gibson DVM', 'Possimus voluptatem ex maxime qui. Enim minus sapiente ipsa.', 4, '2018-02-03 09:22:47', '2018-02-03 09:22:47'),
(76, 1, 'Lawrence Jones II', 'Et ea aut voluptatibus veniam. Odio hic itaque sint et. Et consectetur cum iure aut facere. Ipsam ut voluptatem voluptatibus rerum ut aut minus.', 4, '2018-02-03 09:22:47', '2018-02-03 09:22:47'),
(77, 30, 'Adrian Altenwerth', 'Maiores quidem beatae voluptas et et enim praesentium quo. Ducimus maiores eligendi omnis quasi. Suscipit eius illo vel minima. Quae dolores laboriosam dolor non totam ratione magnam earum.', 0, '2018-02-03 09:22:48', '2018-02-03 09:22:48'),
(78, 47, 'Mrs. Kathlyn Olson', 'Quia possimus laborum omnis et est accusamus. Perferendis molestiae pariatur officiis et aut ducimus aut. Dolorum vel ipsum earum optio cum est. Expedita rerum modi quibusdam qui voluptatem enim est.', 4, '2018-02-03 09:22:48', '2018-02-03 09:22:48'),
(79, 25, 'Elliot Eichmann', 'Consectetur illo autem omnis ut iusto vel. In error quis cumque ab id quo omnis. Qui impedit dolores non unde doloremque. Et nihil sint aut est iste quidem est.', 4, '2018-02-03 09:22:48', '2018-02-03 09:22:48'),
(80, 8, 'Frederick Boyer', 'Doloribus aliquam sed occaecati laboriosam nobis voluptatem. Id quas corrupti quidem ipsum voluptatem numquam. Consequatur harum deserunt et laudantium doloremque sequi.', 0, '2018-02-03 09:22:48', '2018-02-03 09:22:48'),
(81, 34, 'Nicola Hegmann', 'Aliquam placeat nemo eius possimus voluptatem necessitatibus repellat. Delectus possimus est dicta iste quaerat. Mollitia est ut qui quo.', 4, '2018-02-03 09:22:48', '2018-02-03 09:22:48'),
(82, 15, 'Ms. Marietta Shanahan', 'Recusandae et quia vel enim aut quo voluptatem. Dolorum porro quam enim. Accusamus pariatur ut maxime voluptatibus.', 5, '2018-02-03 09:22:48', '2018-02-03 09:22:48'),
(83, 27, 'Dr. Tatyana Kemmer', 'Aliquid ex assumenda ut delectus nesciunt beatae et. Ipsum cumque earum laboriosam sunt corrupti eveniet sed provident.', 3, '2018-02-03 09:22:48', '2018-02-03 09:22:48'),
(84, 47, 'Prof. Ottilie Funk MD', 'Ut reiciendis est veniam qui qui ipsa. Consequatur distinctio corrupti sapiente deserunt qui autem sunt odit. Suscipit deleniti maiores impedit quidem voluptas voluptatem cum vel. Atque repudiandae sit numquam maiores.', 2, '2018-02-03 09:22:48', '2018-02-03 09:22:48'),
(85, 29, 'Domenico Schoen', 'Iure eos voluptatem expedita in minus illo provident. Aperiam quasi deleniti omnis eveniet in velit. Impedit accusamus natus sed quos. Est perspiciatis consequatur tenetur.', 0, '2018-02-03 09:22:49', '2018-02-03 09:22:49'),
(86, 15, 'Amy Koelpin', 'Optio modi earum non magnam. Quia voluptatem nam esse. Et pariatur error sit nam rerum dolorum.', 4, '2018-02-03 09:22:49', '2018-02-03 09:22:49'),
(87, 17, 'Elizabeth Huels', 'Vitae id et quos eum ad delectus. Consequatur illum non sapiente sunt ipsam dicta vel. Aspernatur nulla tempora molestiae ratione ut deserunt. Voluptate ipsa voluptatem quia natus.', 5, '2018-02-03 09:22:49', '2018-02-03 09:22:49'),
(88, 8, 'Ramona Kassulke', 'Doloremque eos quia est. Consectetur est cum molestiae voluptatem id maxime et.', 0, '2018-02-03 09:22:49', '2018-02-03 09:22:49'),
(89, 47, 'Ms. Minnie Rempel Sr.', 'Quae sunt ea distinctio non incidunt voluptas quibusdam et. Magnam ut tenetur libero ut rerum. In tempora voluptates minima praesentium reiciendis.', 5, '2018-02-03 09:22:49', '2018-02-03 09:22:49'),
(90, 42, 'Miss Janet Braun Sr.', 'Nobis aut explicabo dolores repudiandae. Quia ipsam dolorum quaerat harum. Possimus doloribus est vel optio vel nihil eum autem.', 0, '2018-02-03 09:22:49', '2018-02-03 09:22:49'),
(91, 12, 'Dr. Dimitri Kulas DVM', 'Natus quia fugit molestiae sunt facere consequatur. Consequuntur qui modi vel praesentium sapiente saepe quia.', 4, '2018-02-03 09:22:49', '2018-02-03 09:22:49'),
(92, 40, 'Ernie Kulas', 'Fugit voluptatibus dolore sit qui. Reiciendis et ipsam illo. Quis ducimus molestiae ut est earum nam et.', 0, '2018-02-03 09:22:50', '2018-02-03 09:22:50'),
(93, 31, 'Elouise Spencer', 'Expedita impedit autem alias voluptatem sequi. Ut repudiandae labore iste sit delectus qui. Exercitationem in magnam nobis nam dolores autem dolor.', 5, '2018-02-03 09:22:50', '2018-02-03 09:22:50'),
(94, 21, 'Prof. Alejandra Boehm V', 'Vitae aut voluptatem eligendi enim velit earum minus. Est iste provident et molestiae. Tempore minima consequatur molestias quisquam consequuntur ut. Suscipit vero sit aut perferendis distinctio quia.', 0, '2018-02-03 09:22:50', '2018-02-03 09:22:50'),
(95, 15, 'Sincere Koch', 'Et neque inventore ad nostrum asperiores. Rerum libero exercitationem saepe perspiciatis. Odit id suscipit iure aperiam hic excepturi. Minima porro nulla repudiandae quis. Consequatur culpa officia vel at.', 3, '2018-02-03 09:22:50', '2018-02-03 09:22:50'),
(96, 38, 'Laron Von', 'Nihil autem voluptas distinctio consequuntur deleniti molestiae repellendus. Quia est vel nam odio aut est. Aut quis hic qui voluptatibus rem earum suscipit.', 2, '2018-02-03 09:22:50', '2018-02-03 09:22:50'),
(97, 49, 'Mrs. Charlotte Ernser PhD', 'Veniam necessitatibus enim nesciunt cum ut voluptas. Accusantium qui accusantium esse. Aut quo velit qui aut. Doloremque dolore ut quae corrupti id possimus.', 0, '2018-02-03 09:22:50', '2018-02-03 09:22:50'),
(98, 14, 'Greg Hane IV', 'Est beatae distinctio quia voluptatum amet. Rerum eius quae expedita voluptatem unde sint minima. Hic consequuntur velit consequatur aut. Odio quia hic necessitatibus velit.', 5, '2018-02-03 09:22:51', '2018-02-03 09:22:51'),
(99, 46, 'Colton Kuhlman', 'Corporis blanditiis corporis quod et quaerat culpa. Fuga velit repellat ullam voluptatem architecto omnis ut. Placeat sunt dicta doloremque.', 0, '2018-02-03 09:22:51', '2018-02-03 09:22:51'),
(100, 9, 'Karl Donnelly', 'A qui ullam qui quisquam labore non voluptas. Natus fugiat ipsam natus quis explicabo fugiat. Ducimus nesciunt id sint illo est ut. Minus omnis iste amet asperiores aliquid aspernatur.', 5, '2018-02-03 09:22:51', '2018-02-03 09:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Belle Emmerich', 'marilyne.ohara@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '2DvLLt8eSR', '2018-02-03 09:22:23', '2018-02-03 09:22:23'),
(2, 'Kavon Tremblay', 'hegmann.lamont@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'tkNpwXFjVf', '2018-02-03 09:22:23', '2018-02-03 09:22:23'),
(3, 'Christ Stoltenberg', 'ikutch@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1hTI6N68rz', '2018-02-03 09:22:23', '2018-02-03 09:22:23'),
(4, 'Ludie Langworth III', 'skylar.kihn@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'TNzsE96i0o', '2018-02-03 09:22:23', '2018-02-03 09:22:23'),
(5, 'Ryder Mohr V', 'renner.audreanne@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wvWQ3I5urj', '2018-02-03 09:22:24', '2018-02-03 09:22:24'),
(6, 'Celine Bernhard', 'jerrold.runolfsdottir@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'l3fqxOrgkZ', '2018-02-03 09:22:24', '2018-02-03 09:22:24'),
(7, 'Prof. Hoyt Grimes V', 'cartwright.anderson@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'o5xmCCmrLH', '2018-02-03 09:22:25', '2018-02-03 09:22:25'),
(8, 'Samir Mosciski I', 'pbednar@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0WSb2YHAgv', '2018-02-03 09:22:25', '2018-02-03 09:22:25'),
(9, 'Augustus Reichel', 'charity.konopelski@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8dMqtIbP00', '2018-02-03 09:22:25', '2018-02-03 09:22:25'),
(10, 'Elroy Brekke', 'hector78@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'TMDA20VlBt', '2018-02-03 09:22:26', '2018-02-03 09:22:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_index` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
