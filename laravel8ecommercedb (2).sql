-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2022 at 11:51 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8ecommercedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'eos enim', 'eos-enim', '2022-06-18 11:48:54', '2022-06-18 11:48:54'),
(2, 'amet omnis', 'amet-omnis', '2022-06-18 11:48:54', '2022-06-18 11:48:54'),
(3, 'ratione facilis', 'ratione-facilis', '2022-06-18 11:48:54', '2022-06-18 11:48:54'),
(4, 'unde sapiente', 'unde-sapiente', '2022-06-18 11:48:54', '2022-06-18 11:48:54'),
(6, 'quo sed', 'quo-sed', '2022-06-18 11:48:54', '2022-06-18 11:48:54'),
(7, 'New Categories Updated', 'new-categories-updated', '2022-06-27 03:37:33', '2022-06-28 06:35:44'),
(9, 'Electronics', 'electronics', '2022-08-16 01:01:07', '2022-08-16 02:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(2, 'Krishna Yadav', 'krishna@gmail.com', '9834784798', 'HI, I would like to know about affilate marketing.', '2022-08-07 05:37:32', '2022-08-07 05:37:32'),
(3, 'Raj Yadav', 'raj98@gmail.com', '9812432499', 'Hi, I want to know more about your business.', '2022-08-19 08:33:56', '2022-08-19 08:33:56');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`) VALUES
(1, 'OFF100', 'fixed', '100.00', '1000.00', '2022-07-22 04:24:20', '2022-07-22 04:32:52'),
(3, 'ABCD10', 'percent', '10.00', '1000.00', '2022-07-23 13:03:59', '2022-07-23 13:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3,4,6', 8, '2022-07-05 11:02:43', '2022-07-05 07:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(4, 'First Slide Title', 'First Slide Subtitle', '300', 'http://127.0.0.1:8000/shop', '1656851518.jpg', 1, '2022-07-03 06:45:20', '2022-07-03 06:46:58'),
(5, 'Second Slide Title', 'Second Slide Subtitle', '399', 'http://127.0.0.1:8000/shop', '1656852920.jpg', 1, '2022-07-03 07:10:20', '2022-07-03 07:10:20'),
(6, 'Third Slide Title', 'Third Slide Subtitle', '499', 'http://127.0.0.1:8000/shop', '1656852997.jpg', 0, '2022-07-03 07:11:37', '2022-07-03 07:12:47');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_06_15_080803_create_sessions_table', 1),
(7, '2022_06_18_082026_create_categories_table', 1),
(8, '2022_06_18_082356_create_products_table', 1),
(9, '2022_07_03_083459_create_home_sliders_table', 2),
(10, '2022_07_05_105648_create_home_categories_table', 3),
(11, '2022_07_09_081222_create_sales_table', 4),
(12, '2022_07_22_073153_create_coupons_table', 5),
(16, '2022_07_25_060137_create_orders_table', 6),
(17, '2022_07_25_060615_create_order_items_table', 6),
(18, '2022_07_25_060637_create_shippings_table', 6),
(19, '2022_07_25_060656_create_transactions_table', 7),
(20, '2022_08_06_072327_create_reviews_table', 8),
(21, '2022_08_06_073404_add_rstatus_to_order_items_table', 8),
(22, '2022_08_07_094921_create_contacts_table', 9),
(23, '2022_08_08_121339_create_settings_table', 10),
(24, '2022_08_14_122834_create_subcategories_table', 11),
(25, '2022_08_17_085806_add_subcategory_id_to_products_table', 12),
(26, '2022_08_18_101358_create_profiles_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(1, 'quibusdam ipsa', 'quibusdam-ipsa', 'Ut aut corrupti animi possimus eius. Enim quibusdam occaecati dignissimos et molestiae aperiam dolorem. Qui in suscipit voluptatum sapiente est.', 'Beatae doloremque aut neque repudiandae neque sunt quibusdam. Sunt quasi sequi quia. Iure voluptatum minima architecto alias ut voluptas. Quasi nam voluptas sunt totam est. Ad et magni voluptatem suscipit voluptatibus porro aliquid. Id iure omnis architecto eaque. Facere quia labore error. Quia ut et aperiam error harum accusantium aut. Omnis cumque dolorum qui nostrum. Quo nam libero recusandae eos voluptas impedit ea odio.', '381.00', NULL, 'DIGI106', 'instock', 0, 195, 'digital_18.jpg', NULL, 2, '2022-06-18 11:48:54', '2022-06-18 11:48:54', NULL),
(2, 'sunt repellendus', 'sunt-repellendus', 'Minus deserunt quidem odio qui non. Ratione numquam rerum vel expedita eum aliquid unde. Quia nemo et aspernatur veniam. Doloribus quas ex exercitationem omnis aut aut.', 'Officiis sequi aut eaque vero est. Tempora quod sunt facere debitis distinctio voluptatem consequatur. Nihil ad illum porro dolores iusto. Nesciunt magnam aut sapiente qui eaque dolore corrupti. Ab porro natus dolorum nesciunt assumenda commodi atque. Voluptatem officiis a quod rerum modi ut. Officia velit qui qui eveniet nulla voluptatum.', '487.00', NULL, 'DIGI481', 'instock', 0, 181, 'digital_7.jpg', NULL, 2, '2022-06-18 11:48:54', '2022-06-18 11:48:54', NULL),
(3, 'iure facilis', 'iure-facilis', 'Officia illum possimus dolorem rem excepturi et. Adipisci temporibus aut aut iste natus. Dicta dolorem excepturi omnis et et exercitationem nostrum.', 'Ut aut velit voluptate non et neque. Sapiente enim autem at qui. Sint dolorem nobis minus magni et ut. Consequatur quidem est eaque non nihil. Suscipit facere est vel eos molestiae. Quidem consectetur voluptates dolorem eos quos alias. Vitae eius reiciendis vel rerum ab. Molestias alias sit sit omnis. Eos tenetur et exercitationem voluptates architecto.', '368.00', NULL, 'DIGI177', 'instock', 0, 200, 'digital_9.jpg', NULL, 1, '2022-06-18 11:48:54', '2022-06-18 11:48:54', NULL),
(5, 'consectetur a', 'consectetur-a', 'Magni sit optio ducimus labore et ut. Quod consectetur est et illo. Dolores tempore excepturi quaerat at sint consequatur. Reprehenderit dolorem repellendus repellendus aliquid optio.', 'Necessitatibus labore dicta nihil a. Harum provident odit qui corporis amet magni. Qui aliquid deleniti sunt saepe est blanditiis. Unde blanditiis tempora dolores est dicta et fugit. Aliquam sunt qui quibusdam. Facilis culpa nemo est laudantium. Necessitatibus vero consequatur modi dolorum neque voluptates id.', '212.00', NULL, 'DIGI279', 'instock', 0, 151, 'digital_20.jpg', NULL, 3, '2022-06-18 11:48:54', '2022-06-18 11:48:54', 1),
(6, 'ut consequatur', 'ut-consequatur', 'Corporis cumque voluptas at quo. Libero suscipit qui quam et excepturi tempore.', 'Doloremque sunt voluptatibus totam aliquid dolorem. Debitis blanditiis enim tempore doloribus accusamus distinctio dolore. Omnis natus sit quod eveniet autem. Magni ut eligendi vel facilis omnis nobis ut praesentium. Vel debitis atque doloribus qui dolorum. Impedit ut blanditiis iure qui. Hic magni est autem ut culpa. Aliquam id veritatis adipisci. Enim quae vero aliquam dolor soluta et. Consequatur vero quam occaecati optio. Explicabo reiciendis doloribus aut velit pariatur quo aperiam.', '416.00', NULL, 'DIGI256', 'instock', 0, 148, 'digital_16.jpg', NULL, 4, '2022-06-18 11:48:54', '2022-06-18 11:48:54', NULL),
(7, 'quos molestias', 'quos-molestias', 'Facere laborum enim dicta repellendus ratione quam. At dolorem ea ducimus iusto. Non repellendus quis qui qui deleniti enim sequi.', 'Tenetur corporis enim harum sunt. Optio aut omnis eligendi impedit sed. Assumenda error nihil voluptatem a recusandae. Eaque maxime voluptates et sed veniam sint. Esse laboriosam enim aut consequatur optio. Non illo consequatur quam non. Eum a quod quo ratione quod. Suscipit deleniti dolorem ipsum aperiam voluptatem dignissimos asperiores vel.', '380.00', NULL, 'DIGI282', 'instock', 0, 191, 'digital_10.jpg', NULL, 1, '2022-06-18 11:48:54', '2022-06-18 11:48:54', NULL),
(8, 'et asperiores', 'et-asperiores', 'Pariatur sunt earum quae consequatur adipisci. Voluptatem commodi aut non sit facere. Dolorem tenetur quod tempora qui quia occaecati.', 'Autem tempora est ut aliquid. Occaecati molestiae provident consectetur quia. Reprehenderit atque at quae saepe necessitatibus et. Nostrum dignissimos et alias modi rerum animi tempora. Voluptas sunt voluptatem a sit et et et. Omnis officia aut magni aperiam a ratione optio dolore. Nobis itaque quo et voluptatem dolor eveniet. Sapiente reiciendis enim nemo et sit cum. Animi maxime id tempore ullam blanditiis cum. Repellat blanditiis cum cum iusto reiciendis minus laborum.', '41.00', NULL, 'DIGI140', 'instock', 0, 134, 'digital_8.jpg', NULL, 1, '2022-06-18 11:48:54', '2022-06-18 11:48:54', 1),
(9, 'voluptatem fuga', 'voluptatem-fuga', 'Iusto aperiam velit velit dolorem et aut. Harum fugit qui ab ut molestiae placeat. Saepe corrupti deleniti exercitationem veniam odit mollitia. Rerum doloribus et nihil.', 'Et et et exercitationem quis assumenda soluta ut sit. Ullam labore non quis debitis tempore et provident. Maiores qui ut quia quia nesciunt illum voluptate aspernatur. Repellat nemo esse quo consequuntur accusantium quisquam laborum. Autem doloremque impedit consectetur. Commodi sint voluptates quae voluptatibus eos autem fugiat enim. Maiores rem unde omnis veritatis.', '396.00', NULL, 'DIGI489', 'instock', 0, 129, 'digital_12.jpg', NULL, 4, '2022-06-18 11:48:54', '2022-06-18 11:48:54', NULL),
(10, 'culpa autem', 'culpa-autem', 'Laboriosam aliquid sit et dignissimos fugit. Similique dolorum dolor voluptatum et quae sed. Distinctio modi consequuntur et molestiae.', 'Dolor possimus qui sunt ducimus est commodi. Sit iste architecto et. Vel aliquam aut non odit illo non. Saepe assumenda repudiandae voluptatem excepturi necessitatibus et. Rem cumque illum nesciunt corporis. Nemo reprehenderit reprehenderit consequuntur ex dolorem. Ratione laborum perferendis dicta dicta omnis totam velit. Quis enim quod non rem. Velit facilis vitae facilis quia perspiciatis sint. Quae et numquam unde enim nobis voluptatum. Hic neque sed in.', '58.00', NULL, 'DIGI376', 'instock', 0, 125, 'digital_11.jpg', NULL, 1, '2022-06-18 11:48:54', '2022-06-18 11:48:54', NULL),
(11, 'nobis totam', 'nobis-totam', 'Reprehenderit et nisi voluptatem. Dolorem ut illo tenetur qui. Eaque molestiae ipsam voluptatem est neque molestias in.', 'In sunt eligendi et maiores occaecati maiores. Perferendis reprehenderit eos vel doloremque quod consequatur quidem. Rerum repellendus sunt eum earum eos eum. Unde voluptatibus ab at. Nisi alias corrupti quis perspiciatis magni eius sed. Delectus sed excepturi aliquam dignissimos ut. Dolor assumenda accusantium molestias et nulla ducimus numquam qui. Quaerat minima et nulla culpa inventore.', '370.00', NULL, 'DIGI401', 'instock', 0, 183, 'digital_15.jpg', NULL, 3, '2022-06-18 11:48:54', '2022-06-18 11:48:54', NULL),
(12, 'aut aut', 'aut-aut', 'Ut et eos corporis aut quo ullam. Aut consectetur minus ipsa perferendis eaque at minus. Et vitae et dolorem enim magni optio qui.', 'Explicabo est consequatur omnis reiciendis. Expedita provident voluptas molestiae. Voluptates ut aut magni illo qui. Corporis quasi ut totam ab voluptatem cumque sint. Hic voluptates occaecati qui voluptatibus quia est. Possimus quis reprehenderit commodi. Impedit quis facere soluta voluptas libero. Maxime quod veniam molestias earum doloribus est consequatur nulla.', '56.00', NULL, 'DIGI271', 'instock', 0, 138, 'digital_21.jpg', NULL, 2, '2022-06-18 11:48:54', '2022-06-18 11:48:54', NULL),
(13, 'consectetur amet', 'consectetur-amet', 'Sunt dolores consequatur modi at earum eum. Animi consequatur vel quia quo. Sed repudiandae quo voluptas rerum facere ut.', 'Reiciendis totam ab quo iure sit. Sunt in accusamus nam labore id qui qui. Mollitia consequuntur id dolores totam quas quidem unde alias. Sit delectus nostrum et quam. Dolorum et corporis laborum ducimus alias in. Hic corrupti voluptatem sed harum eum. Est reprehenderit velit ab non vel voluptas ut. Blanditiis dolorum incidunt aut quae. Illum veniam iste id. Necessitatibus eum vero ut et nam odit.', '362.00', NULL, 'DIGI375', 'instock', 0, 115, 'digital_1.jpg', NULL, 1, '2022-06-18 11:48:54', '2022-06-18 11:48:54', NULL),
(15, 'beatae corporis', 'beatae-corporis', 'Corrupti et ut aut eligendi rerum aut et. Rem alias accusamus doloribus quibusdam officiis id sint. Laboriosam et nihil consequatur et.', 'Adipisci excepturi similique alias beatae aut reprehenderit atque. Voluptatibus quos temporibus et earum. Placeat odio quaerat magnam perferendis commodi iure magni. At ut minima veniam nobis molestiae dolores est. Illum id maiores recusandae aut vero. Sit est aspernatur vitae ut unde iusto qui et. Itaque aut quidem eum consequuntur quibusdam qui ab est. Beatae mollitia fugiat dolorem illum. Quo et doloribus mollitia autem quibusdam qui. Reprehenderit corrupti sunt sint molestiae natus.', '266.00', NULL, 'DIGI377', 'instock', 0, 136, 'digital_14.jpg', NULL, 1, '2022-06-18 11:48:54', '2022-06-18 11:48:54', NULL),
(17, 'vel voluptate', 'vel-voluptate', 'Est quos fugiat omnis. Blanditiis aspernatur ab laborum. Consectetur vero et et dolor.', 'Qui rem iste provident ratione. Et magni ipsam autem unde fugit ut. Excepturi molestias soluta quia possimus dolor maxime. Totam quibusdam corrupti architecto qui. Voluptatem ut quia autem reiciendis laboriosam eligendi. Et iure totam et voluptas sit distinctio. Voluptatem hic quidem est facere eius. Cupiditate qui accusamus laborum natus accusamus aut id.', '107.00', NULL, 'DIGI228', 'instock', 0, 178, 'digital_17.jpg', NULL, 1, '2022-06-18 11:48:54', '2022-06-18 11:48:54', NULL),
(18, 'voluptate voluptas', 'voluptate-voluptas', 'Et voluptatibus error quia quidem et hic commodi quos. Voluptatem nam nisi repellat velit iure asperiores perspiciatis iusto. Veritatis et non ex et omnis beatae.', 'Eos cum velit nemo sit enim harum et. Ut accusantium fuga aperiam nobis. Explicabo voluptates quasi quia rerum aliquid et ut. Amet nesciunt et explicabo unde voluptatem est explicabo. Harum quaerat consequatur in facilis voluptate velit. Minima quia magni hic explicabo. Illo distinctio quae ipsam placeat omnis possimus asperiores qui. Distinctio aspernatur fugiat sint sint. Dicta aperiam consequatur aut qui consequatur dicta. Perspiciatis fugiat voluptas eaque.', '425.00', NULL, 'DIGI445', 'instock', 0, 103, 'digital_19.jpg', NULL, 4, '2022-06-18 11:48:54', '2022-06-18 11:48:54', NULL),
(19, 'odio tempore', 'odio-tempore', 'Eos at nam nam eveniet dolorum. Voluptas ab vero aspernatur dicta qui quia asperiores. Nulla fugit vel excepturi aut aut ipsum tenetur.', 'Tempora et voluptatem voluptatum fuga voluptatem. Sed aliquid sit molestiae qui tempora. Cumque dolorum et non. Amet impedit omnis omnis. Alias ea sapiente ullam ut. Eos et voluptates commodi qui quaerat rerum tempora. Repudiandae beatae voluptatem perferendis consectetur maxime. Qui officia dolorum ut aliquid consequatur doloremque. Cum quidem cupiditate omnis cumque et et voluptate molestiae. Et voluptatem aut debitis doloribus. Error beatae quos praesentium magni.', '31.00', NULL, 'DIGI198', 'instock', 0, 155, 'digital_13.jpg', NULL, 1, '2022-06-18 11:48:54', '2022-06-18 11:48:54', NULL),
(20, 'inventore et', 'inventore-et', 'Molestiae corrupti error esse error et sequi error. Ipsam minima corporis hic dolorem soluta quasi quis recusandae. Amet aperiam sed voluptatum non inventore molestiae.', 'Repudiandae qui eius error quis. Quidem iure quis non eum. Est illum nulla et accusantium est quas debitis quia. Repudiandae quo dolores temporibus totam provident alias saepe. Qui dignissimos autem dolorum ad maiores nesciunt excepturi sed. Totam porro cupiditate sit est et est. Et harum laudantium nihil ut. Aspernatur necessitatibus adipisci qui delectus et.', '125.00', NULL, 'DIGI286', 'instock', 0, 124, 'digital_22.jpg', NULL, 2, '2022-06-18 11:48:54', '2022-06-18 11:48:54', NULL),
(21, 'natus necessitatibus', 'natus-necessitatibus', 'Qui officiis sapiente inventore voluptatum officia. Neque et est beatae mollitia temporibus culpa impedit. Quae nostrum sed sit. Tempore perferendis in unde eaque.', 'Quod laboriosam corrupti laudantium veniam. Distinctio aut odio neque consectetur. Consequatur eius ea asperiores doloribus debitis deserunt ad illum. Enim illo dolore nulla sit et dolorem et sed. Eius consequatur placeat aliquam fuga nam dolor consequuntur error. In maxime dicta est perferendis repellat unde. Natus autem quo velit blanditiis. Est odit non quidem quaerat ut fugit illo. Eius incidunt nostrum numquam ut nihil deserunt. Ipsa maiores architecto voluptatem possimus.', '91.00', NULL, 'DIGI129', 'instock', 0, 156, 'digital_2.jpg', NULL, 2, '2022-06-18 11:48:54', '2022-06-18 11:48:54', NULL),
(22, 'sunt ullam', 'sunt-ullam', 'Modi culpa tempora veritatis porro quia. Sequi minus facere amet magnam omnis quia. Corrupti neque vel ipsum quasi repudiandae officiis.', 'Omnis harum consequatur sint consectetur corporis magnam explicabo illum. Aut eos libero aut dolorem. Inventore tempora sed id modi. Non magni odit et architecto voluptas. Consequuntur aperiam at itaque natus numquam sed. Repellendus magnam earum quis facilis. Eos accusamus velit rerum animi recusandae officiis assumenda. Eaque debitis perferendis officiis praesentium facilis unde non. Error vel ut et. Autem rerum molestiae eius. Accusantium suscipit possimus est eos.', '239.00', NULL, 'DIGI403', 'instock', 0, 196, 'digital_5.jpg', NULL, 1, '2022-06-18 11:48:54', '2022-06-18 11:48:54', NULL),
(25, 'Hand Bag', 'hand-bag', 'Very stylish hand bag', 'bag held in the hand or hung from a shoulder strap and used for carrying small personal articles and money.', '389.00', '300.00', 'DIGI101', 'instock', 0, 100, '1657273083-jpg', NULL, 1, '2022-07-08 03:53:03', '2022-07-08 03:53:03', NULL),
(26, 'Half Jeans', 'half-jeans', 'Denim Jeans for men', 'close-fitting trousers made of blue denim or denimlike fabric, having pockets and seams often reinforced with rivets, and worn originally as work pants but now also as casual attire by persons of all ages.', '899.00', '793.00', 'DIGI102', 'instock', 0, 80, '1657273287-jpg', NULL, 2, '2022-07-08 03:56:27', '2022-07-08 03:56:27', NULL),
(27, 'T-shirt', 't-shirt', 'very nice t-shirt ', 'jeans are a type of pants traditionally made from denim a kind of cotton fabric.', '989.00', '899.00', 'DIGI103', 'instock', 0, 70, '1657273548-jpg', NULL, 3, '2022-07-08 04:00:48', '2022-07-08 04:00:48', NULL),
(28, 'Hp Laptop', 'hplaptop', 'HP ENVY Laptop 14-eb0020TX', 'Customization Laptop 15.6 Inch Hot Selling Notebook Students Notebook Netbook Light Laptop SSD Laptop.', '89830.00', '88740.00', 'DIGI104', 'instock', 0, 9, '1657276155-jpg', NULL, 1, '2022-07-08 04:44:15', '2022-07-08 04:44:15', NULL),
(29, 'Boot', 'boot', 'Boots with Zipper', 'Elastic design, perfect fit for your legs\nSoft and comfortable material\nClassic shoes type, wear artifact', '1099.00', '989.00', 'DIGI105', 'instock', 0, 30, '1657276391-jpg', NULL, 1, '2022-07-08 04:48:11', '2022-07-08 04:48:11', NULL),
(30, 'T-shirt109', 't-shirt109', '<h5>Color Block Men Round Neck Grey T-Shirt</h5>', '<h4><strong>Product Specification</strong></h4>\n<p><strong>Type: </strong>Blue Half Sleeved Shirt<br><strong>Wool:</strong> Half Cotton Shirts For Men<br><strong>Look:</strong> Stylish and Comfortable<br><strong>Sizes</strong>: Medium, Large, XL and XXL</p>', '998.00', '879.00', 'DIGI109', 'instock', 0, 90, '1657633131-jpg', NULL, 2, '2022-07-12 07:53:51', '2022-07-12 07:53:51', NULL),
(31, 'Fashionable Saree', 'fashionable-saree', '<p><strong>Designer fashionable saree</strong></p>', '<p><span style=\"color: rgb(230, 126, 35);\">A <em>saree</em>&nbsp;is a strip of unstitched cloth, ranging from four to nine metres in length that is draped over the body in various styles.&nbsp;</span></p>', '900.00', '890.00', 'ABC1399', 'instock', 1, 9, '1660121139-jpg', ',16601211390-jpg,16601211391-jpg,16601211392-jpg', 1, '2022-08-10 03:00:39', '2022-08-10 03:00:39', NULL),
(32, 'Redmi Note 11', 'redmi-note-11', '<p>Redmi Note 11 Snapdragon</p>', '<p><span style=\"color: rgb(236, 240, 241); background-color: rgb(0, 0, 0);\">Redmi Note 11 Snapdragon 680 Processor 50 MP Quad Camera 33 W pro Fast Charging</span></p>', '18798.00', '18399.00', 'MI3989', 'instock', 1, 9, '1660815400-jpg', ',16608154000-jpg,16608154001-jpg', 9, '2022-08-18 03:51:40', '2022-08-18 03:51:40', 2);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `image`, `mobile`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 2, '1660915869.jpg', '9813231398', '9814252488', '9812541399', 'Janakpur', '02', 'Nepal', '44700', '2022-08-18 05:16:56', '2022-08-19 07:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2022-11-20 06:23:41', 1, NULL, '2022-11-11 00:43:45');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9IakSjfl4Zh7eeKXRd9LUn2Ol9ZA8X3sA06aNNaY', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoia3lWYXRiYTk4TFNadHMxQ3pqT0VBTDlXOUJZbGJqWnJ3cnNsZEhaMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjU6InV0eXBlIjtzOjM6IkFETSI7czo0OiJjYXJ0IjthOjI6e3M6NDoiY2FydCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiMDI3YzkxMzQxZmQ1Y2Y0ZDI1NzliNDljNGI2YTkwZGEiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiIwMjdjOTEzNDFmZDVjZjRkMjU3OWI0OWM0YjZhOTBkYSI7czoyOiJpZCI7aToxO3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjE0OiJxdWlidXNkYW0gaXBzYSI7czo1OiJwcmljZSI7ZDozODE7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO319czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjg6Indpc2hsaXN0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO319czo4OiJjaGVja291dCI7YTo0OntzOjg6ImRpc2NvdW50IjtpOjA7czo4OiJzdWJ0b3RhbCI7czo2OiIzODEuMDAiO3M6MzoidGF4IjtzOjU6IjgwLjAxIjtzOjU6InRvdGFsIjtzOjY6IjQ2MS4wMSI7fX0=', 1668149423),
('bzylduiZZMghStC2La22t4t2Y7DQobDXa6jfx62S', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSnV6MWF0RjNQSXJEWllmSUlYbkxtNk9pVmhiYTNtenlYeDBmMDk3RCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1668156894),
('oVmtT2uxgQ16Bvzd0aqNmZvhqDD50V9XzHxIzBxJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnlPUzBGQWNXRXlzUUZWQ1c0N0Nwc1FKQmpBVEZXOTRnOTQ0V0pYTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1668156894);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `phone2`, `address`, `map`, `twitter`, `facebook`, `pinterest`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(9, 'info@shop.com', '9823474398', '9823474399', 'Janakpur', 'https://goo.gl/maps/7ShroBAqwmAp8Wr98', '#', '#', '#', '#', '#', '2022-08-10 00:38:00', '2022-08-10 00:38:00'),
(10, 'info@shop.com', '9823474398', '9823474399', 'Janakpur', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d114005.899406129!2d85.86675915442424!3d26.754446981890126!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ec4005fb138bb9%3A0x533a64cf0e13c2d1!2sJanakpur!5e0!3m2!1sen!2snp!4v1660112549997!5m2!1sen!2snp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade', '#', '#', '#', '#', '#', '2022-08-10 00:51:41', '2022-08-10 00:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Desktop', 'desktop', 9, '2022-08-16 01:03:03', '2022-08-16 02:51:36'),
(2, 'Mobile', 'mobile', 9, '2022-08-16 01:03:18', '2022-08-16 01:03:18'),
(4, 'Laptop', 'laptop', 9, '2022-08-17 03:03:45', '2022-08-17 03:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Addmin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$5P5dbpYAq.zpOABC8hl3yOcghwnhSoK3d1v6tf6nsCFT8wYEKWaNa', NULL, NULL, NULL, NULL, NULL, NULL, 'ADM', '2022-06-27 01:27:40', '2022-06-27 01:27:40'),
(2, 'Radha Yadav', 'user@user.com', NULL, '$2y$10$0EnxUuIr5ygWf59BvU/sRuzdnoF1dmHb7BDEJysfooOvdYRMl4gi.', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-06-27 01:31:06', '2022-08-19 07:46:09'),
(3, 'Bimlendra', 'srjyadav5665@gmail.com', NULL, '$2y$10$VKr0Mpg98a0OhvhfMjHgJOqyCyBy2sz28IqX90GEy6pLGpEduxz3C', NULL, NULL, NULL, 'jnVtkTUYFUfIDMRjM8JvcKDdNtwSoDWV9FcEW5MDnV67wuw1EYdl6b7tuUsy', NULL, NULL, 'USR', '2022-08-11 04:52:51', '2022-08-11 06:40:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
