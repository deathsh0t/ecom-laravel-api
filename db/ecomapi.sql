-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2018 at 09:42 AM
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_03_080309_create_products_table', 1),
(4, '2018_02_03_080333_create_reviews_table', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `stock`, `discount`, `created_at`, `updated_at`) VALUES
(1, 'ullam', 'Tempora harum id amet. Dolores vel ipsam impedit dolor magnam vero. Expedita corporis tempore repudiandae aut ut sed voluptatem qui.', 4212, 4, 21, '2018-02-03 02:54:24', '2018-02-03 02:54:24'),
(2, 'placeat', 'Qui iure aut non. Explicabo nemo dignissimos nostrum rerum. Ut sit minima magnam. Natus incidunt accusantium eos ut fugiat aut tempore.', 617, 1, 30, '2018-02-03 02:54:24', '2018-02-03 02:54:24'),
(3, 'blanditiis', 'Illum optio occaecati aliquam non culpa. Delectus non laudantium itaque iste. Qui aut quia rerum quidem rerum omnis ratione. Voluptatibus eius et quas sit.', 4675, 9, 29, '2018-02-03 02:54:24', '2018-02-03 02:54:24'),
(4, 'a', 'In omnis et aut exercitationem. Iusto sed reprehenderit quo alias sequi eaque porro. Quo reprehenderit animi repellat praesentium.', 2261, 1, 20, '2018-02-03 02:54:25', '2018-02-03 02:54:25'),
(5, 'magni', 'Labore commodi eos soluta eaque est. Voluptatem qui architecto eaque delectus.', 4244, 9, 24, '2018-02-03 02:54:25', '2018-02-03 02:54:25'),
(6, 'blanditiis', 'Iusto distinctio neque veniam deserunt. Odio qui sit temporibus commodi in modi recusandae. Harum reiciendis iure fuga illum velit culpa.', 4075, 7, 27, '2018-02-03 02:54:25', '2018-02-03 02:54:25'),
(7, 'non', 'Et accusamus asperiores et voluptatem voluptate itaque. Sunt consequatur ratione reiciendis temporibus quis. Dolorem voluptates debitis illum reiciendis qui. Labore et est voluptatum totam consequatur quas est molestias. In ea placeat est autem veniam minima voluptas.', 137, 0, 30, '2018-02-03 02:54:25', '2018-02-03 02:54:25'),
(8, 'voluptates', 'Aut et accusamus expedita vel doloribus consectetur. Ut tempora ratione nihil adipisci nemo est qui provident. Rem ratione earum omnis ad in iusto blanditiis. Dolorem suscipit nihil impedit et ut beatae.', 1528, 3, 28, '2018-02-03 02:54:25', '2018-02-03 02:54:25'),
(9, 'corporis', 'Delectus rerum dolor soluta dolor omnis vel. Aut id omnis distinctio est et fugiat rerum. Totam voluptas totam corrupti aut dolor ut modi omnis.', 1703, 4, 21, '2018-02-03 02:54:25', '2018-02-03 02:54:25'),
(10, 'vitae', 'Aut velit quod error molestiae. Soluta sit dolorem et quis nemo quaerat ratione. Facere laborum dolore quod omnis. Dolores corporis aspernatur perspiciatis ratione aut mollitia nesciunt.', 878, 2, 29, '2018-02-03 02:54:25', '2018-02-03 02:54:25'),
(11, 'occaecati', 'Sint non illum atque aspernatur sint exercitationem facilis. Ut rem optio reiciendis laudantium saepe atque quo. Repellendus quidem aut eum dolorem.', 4135, 1, 20, '2018-02-03 02:54:25', '2018-02-03 02:54:25'),
(12, 'enim', 'Adipisci dignissimos delectus sunt aut non qui ad suscipit. Impedit rem labore quia sed reiciendis sint autem voluptatem. Reprehenderit qui itaque alias iusto ipsa minus sunt veniam. Unde officiis voluptatibus qui molestiae corporis iste magnam.', 3883, 7, 25, '2018-02-03 02:54:25', '2018-02-03 02:54:25'),
(13, 'ducimus', 'Ut et omnis possimus consequatur. Quas maiores porro recusandae rerum ea dolores dolores. Voluptatem rerum esse accusamus incidunt nihil reiciendis tempora. Dolor delectus voluptas est ut consequatur iure.', 1913, 0, 30, '2018-02-03 02:54:25', '2018-02-03 02:54:25'),
(14, 'laudantium', 'Sint quia aut necessitatibus dolorum quod veniam possimus. Ullam cum beatae qui velit voluptatum quisquam. Quas facilis ipsa illo porro qui vel.', 3197, 6, 27, '2018-02-03 02:54:25', '2018-02-03 02:54:25'),
(15, 'sed', 'Non ut quidem ducimus. Qui et repudiandae totam laudantium reprehenderit consectetur et. Et eveniet voluptatibus blanditiis dicta asperiores. Nulla aut perspiciatis velit corrupti quia.', 1892, 0, 27, '2018-02-03 02:54:26', '2018-02-03 02:54:26'),
(16, 'deserunt', 'Quam omnis reiciendis dolores impedit sed qui. Possimus neque fuga consectetur cupiditate. Quas et doloremque qui voluptatem. Dicta ducimus et possimus facere esse quasi eligendi. Aut voluptatem est tenetur.', 3546, 3, 23, '2018-02-03 02:54:26', '2018-02-03 02:54:26'),
(17, 'quia', 'Quo architecto rerum deserunt consequatur aspernatur eum numquam. Cum eaque vitae quibusdam ab maiores eum harum. Reprehenderit temporibus et eligendi rem repudiandae fugit. Laudantium sequi deserunt occaecati.', 4027, 4, 23, '2018-02-03 02:54:26', '2018-02-03 02:54:26'),
(18, 'perspiciatis', 'Quo eveniet voluptatem error laboriosam. Voluptate autem aut voluptatem aut cumque. Voluptatibus dolorem neque et rerum. Explicabo adipisci quia praesentium debitis aliquam.', 151, 4, 26, '2018-02-03 02:54:26', '2018-02-03 02:54:26'),
(19, 'et', 'Ipsam molestiae beatae enim ipsum ut dolorem qui. Libero dolorem enim ab est suscipit ut. Amet quo laudantium aperiam quam dolorem est aut. Officiis rem blanditiis est omnis.', 439, 6, 30, '2018-02-03 02:54:26', '2018-02-03 02:54:26'),
(20, 'aut', 'Id repudiandae suscipit perspiciatis id. In quia odit quia ab. Eius reiciendis similique ut in tenetur qui quas. Voluptatum vel similique aut excepturi unde et. Quia consequatur praesentium beatae sapiente rerum modi quia.', 565, 3, 26, '2018-02-03 02:54:26', '2018-02-03 02:54:26'),
(21, 'et', 'Nulla rerum rem qui aut reprehenderit ab dolorem et. Voluptates ipsum sint in deserunt. Natus occaecati nulla dignissimos ut quae ut voluptatem.', 2203, 2, 28, '2018-02-03 02:54:26', '2018-02-03 02:54:26'),
(22, 'consequatur', 'Quibusdam pariatur numquam rem quae aut quisquam. Dolorem dolore qui ab nostrum. Non ab reiciendis laborum eos.', 1802, 4, 22, '2018-02-03 02:54:27', '2018-02-03 02:54:27'),
(23, 'aut', 'Voluptas voluptas ut at. Et dolores veritatis nobis nostrum maiores. Ratione quia molestiae vitae expedita alias facilis. Voluptates illo soluta est quis voluptatum.', 4368, 5, 26, '2018-02-03 02:54:27', '2018-02-03 02:54:27'),
(24, 'et', 'Officia enim voluptatem molestias rerum quos. Ipsam similique minus illo omnis laboriosam. Dolorum rerum iusto consequatur. Unde iusto unde voluptate dolor rerum nam minima.', 4545, 5, 30, '2018-02-03 02:54:27', '2018-02-03 02:54:27'),
(25, 'maxime', 'Accusantium reprehenderit aut veritatis ut enim. Excepturi et minima rerum adipisci. Sed dolor ratione asperiores quo.', 3022, 6, 23, '2018-02-03 02:54:27', '2018-02-03 02:54:27'),
(26, 'et', 'Et sed commodi beatae sed. Natus ea quia deserunt et quis corporis. Consectetur repellat rerum voluptatem ipsa perspiciatis.', 2555, 8, 21, '2018-02-03 02:54:27', '2018-02-03 02:54:27'),
(27, 'reprehenderit', 'Qui est ratione ad voluptatum voluptatem. Labore quam nihil labore labore beatae sed aut est. Cum est soluta neque officiis nulla non.', 494, 3, 23, '2018-02-03 02:54:27', '2018-02-03 02:54:27'),
(28, 'expedita', 'Optio autem facilis voluptatem velit. Culpa dolorem nihil quos laudantium fuga. Non rerum et quo ut sint unde adipisci. Fugiat et harum quod. Vel sapiente nemo quo qui quia dolor iure.', 1629, 3, 24, '2018-02-03 02:54:27', '2018-02-03 02:54:27'),
(29, 'ad', 'Aut itaque natus adipisci officia expedita. Non et quisquam quia aut expedita et nobis. Sequi nesciunt iure voluptatem qui dolorem tempore. Et similique ut voluptas voluptas praesentium.', 2099, 8, 22, '2018-02-03 02:54:27', '2018-02-03 02:54:27'),
(30, 'et', 'Quod corporis animi sit aspernatur corrupti. Consequatur officia non qui natus. Dolor perspiciatis dolor sed.', 918, 7, 24, '2018-02-03 02:54:27', '2018-02-03 02:54:27'),
(31, 'nihil', 'Eius inventore vel porro id doloremque. Animi consectetur tenetur est beatae non non consectetur. Dignissimos omnis facilis est quaerat rerum natus veniam quas.', 3708, 0, 28, '2018-02-03 02:54:28', '2018-02-03 02:54:28'),
(32, 'odit', 'Numquam et est consequatur animi et eum. Esse quod ratione est ratione reiciendis. Veniam optio occaecati facilis nam aut ad.', 4404, 8, 20, '2018-02-03 02:54:28', '2018-02-03 02:54:28'),
(33, 'consequuntur', 'Ut quis at mollitia molestias id molestiae delectus. Odio dolorem cumque cumque. Voluptatem minima voluptas quasi eum pariatur adipisci.', 4494, 1, 29, '2018-02-03 02:54:28', '2018-02-03 02:54:28'),
(34, 'et', 'Et nobis tempore dolores ut similique id. Quae hic delectus rerum libero. Non deleniti dolore impedit quae vel.', 2063, 5, 28, '2018-02-03 02:54:28', '2018-02-03 02:54:28'),
(35, 'nesciunt', 'Quidem ut nobis enim neque repellendus dicta molestiae. Ex inventore autem suscipit enim ut qui voluptas. Atque esse velit ratione quia dolorem error harum. Reiciendis voluptas repellat perspiciatis voluptatem dolorem iure.', 847, 8, 23, '2018-02-03 02:54:28', '2018-02-03 02:54:28'),
(36, 'laborum', 'Error est fuga at velit nobis. Consequatur enim dolorem saepe culpa totam.', 909, 2, 30, '2018-02-03 02:54:28', '2018-02-03 02:54:28'),
(37, 'ut', 'Est omnis voluptas distinctio molestiae in incidunt eligendi amet. Dignissimos tenetur eum sint quia fuga harum. Voluptatem rem eaque voluptas magni ut eos est odit. Ullam ipsum dolorum et.', 927, 2, 21, '2018-02-03 02:54:28', '2018-02-03 02:54:28'),
(38, 'dolore', 'Accusantium nisi porro nemo. Consequatur exercitationem cupiditate beatae voluptas. Enim cumque cumque nisi perspiciatis voluptatem. At ut quos asperiores quia magni. Pariatur ex dolorem enim ullam ab consequatur accusantium.', 1878, 3, 20, '2018-02-03 02:54:28', '2018-02-03 02:54:28'),
(39, 'dolor', 'Id corporis et eum voluptates autem consequatur quasi. Iusto laboriosam eaque omnis vel ipsum a. Mollitia rem ut recusandae assumenda aliquid et aspernatur ea.', 4036, 9, 30, '2018-02-03 02:54:28', '2018-02-03 02:54:28'),
(40, 'omnis', 'Qui ducimus amet vero doloribus. Eius ad deleniti consequatur explicabo reprehenderit rem aut. Ab nostrum rerum numquam voluptatum. Minima autem quis aut voluptatum.', 3909, 3, 28, '2018-02-03 02:54:28', '2018-02-03 02:54:28'),
(41, 'exercitationem', 'Suscipit eos est voluptatibus. Aut alias maiores suscipit voluptatum et deleniti. Vitae sint et quo facere delectus. Numquam cum ab velit commodi. Nihil et dicta nihil.', 4146, 3, 30, '2018-02-03 02:54:28', '2018-02-03 02:54:28'),
(42, 'a', 'Tempora tempore qui minima architecto consequuntur mollitia voluptatem consequatur. Dolor magni officia consequuntur unde vel. Omnis ad omnis vel.', 2427, 7, 30, '2018-02-03 02:54:28', '2018-02-03 02:54:28'),
(43, 'enim', 'Ullam quibusdam dolorem veniam doloribus. Inventore sit inventore est quis velit. Dicta et magnam numquam ut optio.', 4723, 4, 20, '2018-02-03 02:54:29', '2018-02-03 02:54:29'),
(44, 'quidem', 'Molestiae sed suscipit laboriosam eum voluptatibus beatae nam et. Velit fugiat accusantium qui velit error est.', 2955, 3, 21, '2018-02-03 02:54:29', '2018-02-03 02:54:29'),
(45, 'cum', 'Aliquid id porro voluptas non. Natus sapiente ut voluptas quibusdam nam omnis. Explicabo ullam architecto sed molestias praesentium nihil est.', 3655, 8, 29, '2018-02-03 02:54:29', '2018-02-03 02:54:29'),
(46, 'esse', 'Facere aut tenetur excepturi et ducimus eveniet est. Cupiditate ut repellendus dignissimos voluptatem dolore. Voluptatem quos ducimus ipsam perspiciatis ut nam commodi magni. Et accusantium soluta perspiciatis voluptatem tempora in.', 1749, 6, 23, '2018-02-03 02:54:29', '2018-02-03 02:54:29'),
(47, 'enim', 'Sint dolorem sit velit earum est voluptate. Suscipit architecto eaque consequuntur voluptate beatae. Harum qui eos incidunt nam nostrum. Quae harum nihil est.', 2834, 8, 26, '2018-02-03 02:54:29', '2018-02-03 02:54:29'),
(48, 'velit', 'Praesentium ut sapiente recusandae est qui accusantium. Sed dolorem et atque commodi quia. Sit molestias rerum corrupti ratione ea. Hic error perspiciatis dicta eos doloribus dolor dolores ratione.', 1827, 8, 24, '2018-02-03 02:54:29', '2018-02-03 02:54:29'),
(49, 'voluptates', 'Id sint modi ut deserunt. Quas quis qui dolorem est impedit quisquam blanditiis. Sed est molestiae consequatur maiores harum. Accusantium cum esse ea quo est odio commodi.', 2145, 4, 22, '2018-02-03 02:54:29', '2018-02-03 02:54:29'),
(50, 'quaerat', 'Maxime itaque earum necessitatibus molestias excepturi. Saepe quas maiores unde incidunt fugiat sed. Natus a voluptas quos velit molestiae sit. Veniam accusamus provident labore dolor ut recusandae sequi maxime.', 381, 7, 24, '2018-02-03 02:54:29', '2018-02-03 02:54:29');

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
(1, 41, 'Giuseppe Prosacco', 'Veniam repellat at et qui ratione. Recusandae voluptatem consequatur rerum saepe numquam voluptatem. Hic commodi deleniti nesciunt iste consectetur.', 1, '2018-02-03 02:54:29', '2018-02-03 02:54:29'),
(2, 6, 'Dr. Jovany Cruickshank V', 'Quod architecto dolores aut voluptates omnis earum sint. Consequatur impedit aut est iure perspiciatis. Corporis et tenetur voluptatem quia eum aut. Et quisquam quaerat sed quas quaerat quibusdam odit.', 2, '2018-02-03 02:54:29', '2018-02-03 02:54:29'),
(3, 27, 'Yvette Pouros', 'Sit iusto libero laboriosam ipsa iusto. Et dolor fugit sit dolorum illo. Autem qui autem ut natus.', 0, '2018-02-03 02:54:30', '2018-02-03 02:54:30'),
(4, 34, 'Dr. Salvatore Hoeger Sr.', 'Quidem velit quia beatae dolor facere odio. Enim impedit asperiores est odio eum ab optio. Dolorem nostrum harum reiciendis quibusdam minima laudantium ex. Eum consequatur consequatur in a eius.', 0, '2018-02-03 02:54:30', '2018-02-03 02:54:30'),
(5, 48, 'Okey Veum', 'Autem voluptatem rerum quos suscipit accusamus id est. Quod culpa tenetur temporibus et nesciunt officia. Dolor magnam sequi doloremque voluptates eius ab.', 0, '2018-02-03 02:54:30', '2018-02-03 02:54:30'),
(6, 21, 'Mustafa O\'Keefe', 'Eum ut maxime rem et. Consectetur rerum suscipit eum sequi molestiae rerum ea quaerat. Porro perspiciatis dignissimos aut.', 2, '2018-02-03 02:54:30', '2018-02-03 02:54:30'),
(7, 23, 'Mr. Casper Bergstrom', 'Quaerat vel ratione et quis. Repudiandae placeat hic et aperiam qui. Iste inventore iusto numquam rerum soluta et. Velit aperiam id iusto aliquid et tempora eligendi. Quidem consequatur esse eveniet ut.', 5, '2018-02-03 02:54:30', '2018-02-03 02:54:30'),
(8, 26, 'Wendy West', 'Et minima eveniet consequatur quam enim quis. Laborum ratione architecto et molestiae mollitia. Sunt ut quia nulla delectus voluptatum ea eum.', 2, '2018-02-03 02:54:30', '2018-02-03 02:54:30'),
(9, 27, 'Mrs. Kaci Zulauf', 'Nihil aut exercitationem recusandae amet quibusdam impedit hic. Ratione magni dolorum velit est. Suscipit corporis enim eum quis itaque magnam. Voluptatum odio quidem iste excepturi esse earum autem aliquam.', 5, '2018-02-03 02:54:30', '2018-02-03 02:54:30'),
(10, 28, 'Miss Natasha Treutel MD', 'Voluptates provident voluptatem incidunt non. Nulla iusto cum enim distinctio autem nesciunt atque omnis. Qui explicabo et deserunt eaque et.', 3, '2018-02-03 02:54:31', '2018-02-03 02:54:31'),
(11, 48, 'Brandon Littel', 'Aliquid dolorem qui minus sed ea cum. Qui delectus quia aut sapiente nam delectus dolore ut. Impedit vel voluptate dolores aut quia dolorum.', 5, '2018-02-03 02:54:31', '2018-02-03 02:54:31'),
(12, 37, 'Wilmer Lynch', 'Qui odio et eius minus autem voluptas inventore est. Adipisci quas recusandae eius qui temporibus. Sit et quis aspernatur odit voluptas molestiae id.', 1, '2018-02-03 02:54:31', '2018-02-03 02:54:31'),
(13, 34, 'Prof. Ofelia Prosacco', 'Natus ab sapiente corrupti nisi facere voluptate. Corporis ad mollitia et distinctio. Cupiditate nisi neque voluptate voluptatem magni. Incidunt vero omnis quis ratione maxime.', 5, '2018-02-03 02:54:31', '2018-02-03 02:54:31'),
(14, 22, 'Carlee Roob', 'Eos accusantium in eos doloribus eum. Modi repudiandae velit placeat et rerum recusandae dolor. Quia voluptatem ut exercitationem nostrum porro libero quam. Nulla omnis totam voluptatem laborum laboriosam. Sit quia quaerat eveniet aut fugiat amet ratione.', 0, '2018-02-03 02:54:31', '2018-02-03 02:54:31'),
(15, 42, 'Garret Marks', 'Est et et quia dolore. Qui ad quia excepturi eius illum consectetur at. Voluptatum nesciunt omnis ex deleniti et quos.', 5, '2018-02-03 02:54:31', '2018-02-03 02:54:31'),
(16, 16, 'Andrew Collier V', 'Reiciendis sed nihil et. Consequatur voluptatem eum autem quaerat et cupiditate. Nam est consequuntur enim beatae id ut eum.', 1, '2018-02-03 02:54:31', '2018-02-03 02:54:31'),
(17, 22, 'Tillman Mohr', 'Veritatis minima autem officia eveniet qui commodi tempora. Eligendi nam vel sint at. Architecto aut aut ad vero. Unde ratione quasi voluptas qui quia.', 2, '2018-02-03 02:54:31', '2018-02-03 02:54:31'),
(18, 32, 'Dr. Reid Gibson', 'Ipsum est qui molestiae dolorum voluptatem aliquam enim repellendus. Eum amet magni voluptatem aliquid id dolores. Voluptatem nobis similique sed.', 5, '2018-02-03 02:54:32', '2018-02-03 02:54:32'),
(19, 9, 'Fredrick Murray II', 'Deleniti dolorum natus accusamus praesentium eveniet animi. Facilis eligendi ab sed. Doloribus voluptas sint iusto fugiat eum vero id. Voluptas id suscipit aut aut deserunt voluptatum sit possimus. Nihil eligendi cupiditate asperiores ratione explicabo aut iste.', 3, '2018-02-03 02:54:32', '2018-02-03 02:54:32'),
(20, 27, 'Michale Hirthe', 'Vitae commodi ullam voluptatem vel dolorum autem laudantium quaerat. Voluptas voluptas voluptatibus inventore doloremque et. Accusantium aut cupiditate illo molestias in et. Officia ratione illum doloribus doloremque. Pariatur quia sint aspernatur non voluptates.', 3, '2018-02-03 02:54:32', '2018-02-03 02:54:32'),
(21, 14, 'Clarissa Koepp', 'Veritatis consequatur necessitatibus minima quia. In est perferendis nostrum totam occaecati ea. Iste eveniet necessitatibus quia sint libero doloribus. Et iste aut molestias est nihil facere voluptatem.', 2, '2018-02-03 02:54:32', '2018-02-03 02:54:32'),
(22, 35, 'Tillman Kunze', 'Iure unde quis distinctio assumenda dolorum facere rerum. Ut incidunt sit ut magnam in rem. Ad cumque laborum dolores consequatur autem. Eaque vel rerum temporibus nobis.', 2, '2018-02-03 02:54:32', '2018-02-03 02:54:32'),
(23, 47, 'Felton Lowe', 'Omnis vero praesentium cum in nobis similique et perspiciatis. Vel et qui magnam et. Placeat sed autem iste quod eligendi voluptatem laborum.', 1, '2018-02-03 02:54:32', '2018-02-03 02:54:32'),
(24, 36, 'Mohammad Lang DVM', 'Architecto velit eveniet voluptatem dolorem blanditiis et. Cum ipsa delectus quia eius voluptatem consequuntur.', 1, '2018-02-03 02:54:32', '2018-02-03 02:54:32'),
(25, 6, 'Petra Casper PhD', 'Aut aut at saepe officiis id. Sit itaque delectus ut ut et corrupti. Ex voluptas in voluptatem assumenda.', 3, '2018-02-03 02:54:32', '2018-02-03 02:54:32'),
(26, 49, 'Josephine Jaskolski', 'Nemo alias distinctio possimus blanditiis asperiores aperiam facilis. Officia nostrum tempora in exercitationem laborum sit sit. Maiores velit sequi at impedit molestiae est animi veniam. Voluptatem sint voluptatibus provident aperiam enim velit.', 4, '2018-02-03 02:54:32', '2018-02-03 02:54:32'),
(27, 17, 'Dr. Troy Okuneva Sr.', 'Ipsam enim ipsum voluptas sit. Rerum inventore omnis quaerat. Provident numquam earum maiores qui et reiciendis. Ipsam repellat voluptatum eum id atque et minus.', 4, '2018-02-03 02:54:32', '2018-02-03 02:54:32'),
(28, 17, 'Lyda Lueilwitz MD', 'Est sit itaque ratione deserunt quibusdam. Temporibus suscipit et illo quia cumque distinctio. Neque autem quae dolorem architecto molestiae. Ratione unde soluta ut fugiat harum et autem.', 4, '2018-02-03 02:54:33', '2018-02-03 02:54:33'),
(29, 8, 'Prof. Julian Sporer IV', 'Eum dolor ullam id. Quia commodi quia nulla voluptatum ipsam. Maiores et et sint et aut accusamus quia. Temporibus et accusantium dolorum minus non.', 2, '2018-02-03 02:54:33', '2018-02-03 02:54:33'),
(30, 28, 'Creola Champlin', 'Voluptates numquam occaecati quod. Consequatur enim laboriosam repellat eum. Enim nostrum voluptatem quos ut dolor dolor qui.', 2, '2018-02-03 02:54:33', '2018-02-03 02:54:33'),
(31, 46, 'Armando Bergnaum DDS', 'Delectus perferendis nostrum dolore dolores enim eos dolorem. At quisquam aut mollitia in temporibus. Illum placeat facere blanditiis magni nesciunt. Eum optio nulla modi animi omnis laboriosam deleniti.', 2, '2018-02-03 02:54:33', '2018-02-03 02:54:33'),
(32, 3, 'Lera Stokes', 'Quae debitis molestiae et nemo. Est voluptatem fugit at aut voluptates. Aut mollitia maiores ipsa dolorem minima ut impedit. Fugit iure nobis quisquam vel.', 3, '2018-02-03 02:54:33', '2018-02-03 02:54:33'),
(33, 49, 'Dr. Fatima Ledner', 'Magni exercitationem qui eveniet magni quia dicta. Magnam voluptatum saepe placeat perspiciatis doloribus similique quod. Odio eos possimus sunt fugit repudiandae voluptatem. Eos non nihil qui.', 4, '2018-02-03 02:54:33', '2018-02-03 02:54:33'),
(34, 41, 'Osborne Kuvalis Jr.', 'Impedit rem voluptatem fugiat aperiam. Et dolore nobis ea autem. Ab reprehenderit nostrum animi non expedita alias aut.', 3, '2018-02-03 02:54:33', '2018-02-03 02:54:33'),
(35, 32, 'Trace Blanda', 'Debitis eos reiciendis minima sit eius ipsa. Ad repudiandae officiis sunt aut necessitatibus eos nostrum. Vel dolorem quo totam explicabo reprehenderit. Ea delectus dolores quidem aspernatur molestiae voluptas.', 1, '2018-02-03 02:54:33', '2018-02-03 02:54:33'),
(36, 36, 'Zack Thompson', 'Natus aut assumenda et consequatur dolor esse et aut. Autem tenetur nisi odio omnis recusandae nesciunt.', 0, '2018-02-03 02:54:34', '2018-02-03 02:54:34'),
(37, 29, 'Dane Rath IV', 'Esse sapiente distinctio aut blanditiis. Officia exercitationem et et quisquam. Illo adipisci consequatur illo velit optio ratione hic.', 2, '2018-02-03 02:54:34', '2018-02-03 02:54:34'),
(38, 9, 'Filiberto Stokes', 'Sed non eos quos ipsam. Illum qui praesentium natus. Iure at ad officiis accusantium pariatur. Enim vero officiis fuga sunt animi blanditiis.', 4, '2018-02-03 02:54:34', '2018-02-03 02:54:34'),
(39, 26, 'Dr. Faye Mante', 'Omnis at tenetur alias eveniet aspernatur rerum incidunt. Odit nulla facere et non. Officiis ipsa exercitationem vero voluptates. Nihil tenetur rerum minima dicta modi.', 0, '2018-02-03 02:54:34', '2018-02-03 02:54:34'),
(40, 25, 'Gia Schneider', 'Blanditiis incidunt labore ut rerum est a. Fuga aut est voluptatum unde illum eos. Fuga deserunt culpa suscipit blanditiis facilis sint fugit. Veniam ut et qui omnis qui.', 3, '2018-02-03 02:54:34', '2018-02-03 02:54:34'),
(41, 32, 'Ms. Icie Little', 'Delectus voluptatum quaerat perferendis eius minus. Quisquam voluptatem voluptate praesentium sint repellat enim quidem nesciunt. Modi ut voluptatem voluptatibus consequatur.', 2, '2018-02-03 02:54:34', '2018-02-03 02:54:34'),
(42, 32, 'Aurelio Armstrong', 'Harum dolor consequuntur itaque optio ad est. Atque voluptates at repudiandae repellendus fugit.', 3, '2018-02-03 02:54:34', '2018-02-03 02:54:34'),
(43, 25, 'Mr. Myrl Reilly I', 'Ea dolorem alias reiciendis aut autem doloribus ea. Sequi esse minus aut alias. Atque adipisci molestiae voluptatem.', 5, '2018-02-03 02:54:34', '2018-02-03 02:54:34'),
(44, 29, 'Al Greenholt', 'Quas laboriosam est est inventore. Autem consequatur voluptate qui rem. Ea aspernatur quo fugit voluptatum commodi hic minima. Consequatur explicabo unde soluta sit dolores id.', 5, '2018-02-03 02:54:34', '2018-02-03 02:54:34'),
(45, 24, 'Mr. Nathaniel Klocko', 'Qui ut illum laboriosam earum. Ut voluptas quod harum autem. Et vel qui suscipit optio rerum harum omnis.', 4, '2018-02-03 02:54:35', '2018-02-03 02:54:35'),
(46, 11, 'Mr. Consuelo Deckow', 'Ea esse nesciunt consequuntur earum maiores expedita. Debitis iste fuga consequatur. Eligendi laudantium enim nobis maiores tenetur nemo. Qui maiores et totam earum.', 1, '2018-02-03 02:54:35', '2018-02-03 02:54:35'),
(47, 37, 'Robert Langosh', 'Numquam nihil est laborum cum aut soluta. Nulla expedita consequatur laborum eligendi nam ab minima. Ducimus nobis quia quae sint sapiente. Temporibus est eum qui minima.', 3, '2018-02-03 02:54:35', '2018-02-03 02:54:35'),
(48, 28, 'Dr. Brent Kunde', 'Dolor sunt voluptatem id modi. Iste labore officiis dignissimos enim unde. Reiciendis quia ratione rerum sed iusto. Nostrum repudiandae quisquam sed.', 5, '2018-02-03 02:54:35', '2018-02-03 02:54:35'),
(49, 20, 'Austin Steuber', 'Consequatur id velit suscipit laudantium et aspernatur. Alias voluptatem et error itaque laborum. Vero aut aut enim doloribus vero. Dicta eum ut eum cupiditate.', 0, '2018-02-03 02:54:35', '2018-02-03 02:54:35'),
(50, 4, 'Serenity Lakin', 'Totam et sunt a beatae perferendis doloribus omnis. Minima ratione quam omnis quam. In ut numquam ducimus accusantium ut recusandae velit. Iure numquam dicta ratione non molestias.', 3, '2018-02-03 02:54:35', '2018-02-03 02:54:35');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
