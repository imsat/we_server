-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table we_server.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table we_server.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table we_server.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table we_server.migrations: ~4 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2021_02_25_162604_create_products_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table we_server.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table we_server.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table we_server.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,2) NOT NULL,
  `image_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table we_server.products: ~100 rows (approximately)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `title`, `description`, `price`, `image_url`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Autem soluta expedita vel officiis et aut natus veritatis.', 'Similique expedita blanditiis perspiciatis qui voluptatem dolorum. Totam voluptas dolorem et omnis aspernatur. Fugiat tenetur ut ex voluptatem ducimus.', 569.00, 'prod-3.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(2, 'Quibusdam incidunt est eius consectetur.', 'Quas et sint possimus aut ut molestiae consequuntur. Aut qui fugiat rerum dolor ut consequatur soluta. Voluptates eos est quisquam quia harum et et dignissimos.', 802.00, 'prod-3.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(3, 'Ipsa aut commodi ab.', 'Eos harum sed voluptas laborum omnis sed nesciunt. Cumque autem tempore dolorum quo quis enim. Deserunt ducimus eaque quis impedit nihil. Aut laborum vel qui porro eum.', 623.00, 'prod-3.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(4, 'Nobis dolores aliquid possimus quisquam quo eveniet.', 'Atque illum id saepe ipsum libero non maiores maiores. Distinctio vero sunt voluptates distinctio. Aut error eaque eaque atque.', 76.00, 'prod-5.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(5, 'Beatae labore ut odit et repudiandae.', 'Odio dolores fugiat voluptatem sit quis. Omnis ea est libero enim mollitia maiores consequatur. Ut omnis rerum accusantium eos quia id earum.', 890.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(6, 'Amet rerum et eveniet minus vel voluptatem adipisci voluptas.', 'Omnis ea delectus fugiat aut. Rerum praesentium sed aut et aut sequi. Cumque dolor nulla maxime totam provident. Veritatis voluptatem nihil voluptatem a amet error et voluptates.', 217.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(7, 'Sed ad maiores blanditiis.', 'Sit est praesentium veritatis iure possimus dolor. Inventore voluptates expedita et et qui aut. Ex culpa voluptatem ex totam cumque et.', 165.00, 'prod-5.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(8, 'Labore delectus expedita velit saepe voluptatem id qui.', 'Magnam tempore ratione sint nihil beatae et. Culpa doloremque porro corrupti consequuntur. Occaecati quia eos nemo debitis.', 357.00, 'prod-5.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(9, 'Sit esse cum dignissimos facere deleniti nostrum illum animi.', 'Odit vero omnis quia voluptatem dolor. Similique doloremque non nam est natus molestias. Incidunt ea illum amet eligendi. Error deserunt non aut sapiente. Neque et harum voluptate veniam.', 287.00, 'prod-3.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(10, 'Quaerat esse mollitia quis voluptatem enim commodi.', 'Dolorem esse molestias quam id. Qui adipisci et neque enim. Natus est ratione ut totam dolores laudantium.', 674.00, 'prod-4.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(11, 'Distinctio dolorem in velit provident laborum quia et.', 'Id aperiam ut ad ducimus voluptatibus ad. Nihil ut hic velit.', 816.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(12, 'Voluptatum culpa magnam suscipit distinctio placeat rerum.', 'Nulla qui non distinctio cumque impedit nisi. Quisquam hic quo omnis quas dolore. Suscipit doloribus quia error temporibus cupiditate.', 682.00, 'prod-1.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(13, 'Accusantium quae ad sequi explicabo libero quo vitae.', 'Placeat atque voluptatem quae in qui accusantium optio. Aut sit non iusto ullam ratione mollitia placeat iste. Alias ipsum deleniti qui praesentium. Soluta et similique delectus enim repudiandae ducimus.', 424.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(14, 'Et magni ut dolor incidunt animi quas.', 'Iusto dolor debitis officiis veritatis maiores. Enim et qui quia et ut sint autem. Quos non sequi esse in aut.', 473.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(15, 'Earum voluptas voluptatem voluptate aut sint consequatur.', 'At et voluptates aut aut illum nostrum error. Labore ut inventore illum esse autem. Inventore ipsam nemo est enim rerum fugiat.', 103.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(16, 'Voluptas officiis aperiam dignissimos ut error dolorem in.', 'Rerum magni sit dolor quia sit nihil. Corporis qui et non porro. Molestiae excepturi earum consequatur saepe.', 108.00, 'prod-3.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(17, 'Reiciendis possimus asperiores sed vitae.', 'Officia dolores et ex maxime. Nihil eos et cum inventore autem. In vel dicta quasi fugit aliquid voluptas. Eos iusto nesciunt labore.', 746.00, 'prod-3.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(18, 'Saepe enim quas enim quia accusamus consequatur quas.', 'Odit ipsam enim excepturi accusantium maxime velit molestiae. Sint commodi qui amet provident ab laudantium sunt. Sunt qui quo temporibus ex perspiciatis.', 94.00, 'prod-1.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(19, 'Omnis adipisci hic vitae nobis omnis.', 'Earum et vel commodi possimus a. Et exercitationem doloremque consequatur provident at perferendis vel. Delectus inventore dolorum perspiciatis numquam id tenetur expedita.', 556.00, 'prod-4.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(20, 'Laudantium enim earum nihil consequatur rerum dignissimos.', 'Nisi in dolorum neque ducimus voluptatem dolor deserunt. Quia est fugit dignissimos vel id sunt reprehenderit.', 71.00, 'prod-5.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(21, 'Velit est ipsum dolores dignissimos odit quisquam sapiente.', 'Eveniet minima dolores id sint. Molestias et hic corrupti id quia. Odio aut aut laborum reiciendis. Nobis exercitationem amet debitis.', 942.00, 'prod-1.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(22, 'Porro non tenetur et beatae qui.', 'Amet blanditiis sint sunt quasi. Distinctio dolores et ut enim eius. Fugit quasi labore quia consequatur provident. Odio sint praesentium quo debitis quo eum quia nulla.', 921.00, 'prod-1.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(23, 'Praesentium non assumenda voluptas facilis voluptatum iusto.', 'Nisi facilis sequi blanditiis perspiciatis animi. Delectus earum quae quibusdam enim iste. Dolore cupiditate aut vitae natus est.', 770.00, 'prod-5.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(24, 'Voluptates aut voluptas expedita exercitationem porro.', 'Illum rem voluptatem nemo nihil sed. Quae rerum nemo sed ratione eum sequi. Dolorum sapiente sunt modi quasi accusamus non asperiores.', 476.00, 'prod-5.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(25, 'Cupiditate quam odio quia libero facilis.', 'Illum voluptatem at enim dolor et officia. Magnam voluptas ipsum consequatur molestiae. Qui minus minima id ex corporis adipisci sit. Voluptatem eos occaecati eligendi rerum.', 183.00, 'prod-5.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(26, 'Cumque qui rerum itaque cumque.', 'Laboriosam tempora quis a vero provident. Doloremque at voluptas debitis quod quasi voluptatibus. Consequuntur quia asperiores est aut. Pariatur delectus quis alias et accusamus iusto rerum.', 494.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(27, 'Aut sed nemo eaque aut.', 'Dicta labore aut omnis dolore. Est sint sed voluptates sit alias ea minus. Magni vitae minus sint cumque. Explicabo vitae ipsum quia sed aut.', 965.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(28, 'Molestias rerum at tenetur sunt.', 'Consequatur illum dolor reprehenderit unde eligendi. Deserunt iure expedita voluptatibus nihil quos natus.', 719.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(29, 'Laborum id ut sint incidunt.', 'Non et laborum inventore quasi molestias voluptatum. Alias necessitatibus dolore dignissimos laborum quod. Qui ipsam cumque ut aut quaerat officiis laudantium voluptas.', 414.00, 'prod-4.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(30, 'Est omnis inventore quaerat autem cupiditate voluptatum.', 'Minima quaerat unde quia aut ipsum et. Facere porro nulla illum nam natus repellat. Magni sed non dolor est possimus quo veritatis atque.', 736.00, 'prod-4.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(31, 'Voluptatem omnis laudantium enim illo.', 'Voluptatem quia voluptas ex ratione. Animi occaecati et dolorum. Eligendi nemo fugiat excepturi autem placeat.', 707.00, 'prod-4.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(32, 'Aut recusandae dolor voluptatem.', 'Autem voluptatem fugiat quia enim ad. Consequatur necessitatibus facilis qui eligendi recusandae quia animi. Aut rem a sint officiis suscipit minus.', 496.00, 'prod-4.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(33, 'Ducimus explicabo est explicabo expedita asperiores.', 'Nesciunt temporibus veniam ut asperiores et dolores rerum. Tempore in optio omnis ex vel nemo eum. Modi velit expedita deserunt soluta ipsa labore. Necessitatibus sed exercitationem enim laborum ullam at.', 756.00, 'prod-4.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(34, 'Quia et beatae consequuntur.', 'Nostrum consequatur omnis fugiat error eius. Assumenda ea officiis voluptatem aut. Et autem nemo id quia saepe magni.', 489.00, 'prod-5.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(35, 'Laudantium ab voluptate repellat consequatur quod qui reiciendis sit.', 'Cupiditate et ipsum quas voluptatem ea omnis. Autem ut saepe soluta et. Sint excepturi atque eaque et ab sit aut. Soluta consequatur sapiente ut repellendus.', 64.00, 'prod-3.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(36, 'Quasi error iure possimus corrupti est ipsam.', 'Voluptatem odit voluptatem qui qui quia explicabo ut. Aut ab et atque consectetur quasi corrupti. Et nam deserunt quidem natus necessitatibus earum. Nostrum ea ab quis aperiam.', 250.00, 'prod-3.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(37, 'Molestiae qui saepe culpa hic est qui maxime.', 'Rem laudantium cum explicabo corrupti dolor rerum odio animi. Natus minima ut ut saepe dolorem sed voluptatem impedit. Exercitationem nihil quod non recusandae rerum. Cum quibusdam eum sapiente ut minima.', 795.00, 'prod-4.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(38, 'Alias quos sequi atque.', 'Laudantium at sapiente voluptatibus quod debitis reprehenderit. Accusamus fugit maiores nihil dolorum dolor voluptas. Pariatur odio magnam occaecati deserunt facilis et voluptas.', 152.00, 'prod-1.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(39, 'Placeat qui qui dignissimos pariatur voluptas inventore.', 'Provident vero sed ut qui ipsam quam. Ea voluptas iure ducimus quia sit et. Repellat dolorem et iusto alias maxime quasi.', 547.00, 'prod-5.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(40, 'Natus quaerat rerum exercitationem voluptas.', 'Deserunt nisi eaque iure est corporis. Vero ipsum odio nemo eos et molestiae nulla. Qui vero blanditiis velit officia quos.', 747.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(41, 'Neque quo eos iste impedit nulla earum iste neque.', 'Aliquam nisi dolor rerum quos. Autem ipsa reprehenderit deserunt minima harum accusamus molestiae. Numquam labore non ad quam architecto suscipit.', 731.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(42, 'Rerum voluptatibus dicta est molestiae animi.', 'Et itaque non sunt. Quo minima natus voluptates vero. Magnam consequatur facere cumque ut rerum non. Quia sequi repellendus accusamus qui qui.', 240.00, 'prod-5.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(43, 'Sed aspernatur repellendus quo sunt dicta et molestias perferendis.', 'Eveniet rerum illum dignissimos laboriosam sint eum amet. Est voluptatem et veniam eveniet culpa.', 679.00, 'prod-3.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(44, 'Ab dicta enim sapiente.', 'Pariatur aliquam sed et sapiente esse. Eveniet et explicabo suscipit nam dolorem. Sit atque ea ipsam delectus repudiandae sed. Earum ut qui occaecati laudantium.', 706.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(45, 'Alias fugit labore quia perferendis facilis nostrum est.', 'Numquam dolorem eaque omnis est. Repellat architecto magnam ut. In nemo at ad voluptates ut doloribus.', 889.00, 'prod-4.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(46, 'Necessitatibus cum voluptatem possimus quia.', 'Ab nostrum id alias incidunt velit. Natus cum aut perferendis aut facere quidem. Quia cumque animi est fugit consectetur temporibus. Id quo mollitia libero molestias cum accusamus eaque.', 563.00, 'prod-4.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(47, 'Harum expedita eos necessitatibus.', 'Libero et ab quasi fugiat distinctio in vero nam. Voluptatibus eveniet accusantium reiciendis nobis quibusdam. Dolores omnis accusamus non iusto.', 464.00, 'prod-4.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(48, 'Autem eius et voluptate dolorem iste.', 'Quia voluptatem laborum ad in. Tenetur molestiae aperiam earum officiis.', 242.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(49, 'Tempora molestias debitis fuga sapiente non harum.', 'Nesciunt et fuga architecto eveniet quasi. Laudantium alias qui ea placeat sed. Suscipit qui omnis provident occaecati. Occaecati et voluptas qui molestiae aut. Iusto error pariatur dolores quisquam quos.', 442.00, 'prod-3.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(50, 'Qui similique eligendi nulla voluptatum nihil consequatur voluptatibus.', 'Ut autem rerum aperiam dignissimos corporis. Ea et ut et. Maiores assumenda quia ut nemo dolore doloremque sunt. Laudantium qui iste nihil dolor quibusdam et officia.', 849.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(51, 'Et cum adipisci nulla ut.', 'Voluptas a consequatur commodi ullam natus. Et ea magni sit. Aut voluptas dolorem voluptatem et. Fuga officia error repellendus aperiam hic.', 228.00, 'prod-5.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(52, 'Molestiae ipsum iusto animi et sed corporis non quam.', 'Et qui quisquam dicta aliquid consequatur temporibus aut. Iste dolorum autem explicabo ex sunt. Temporibus voluptatem sed perferendis voluptas et deleniti.', 266.00, 'prod-1.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(53, 'Facilis rem minima sit.', 'Nemo aut eveniet impedit voluptatem sunt qui. Fugit totam consequatur dolores eius atque qui omnis. At aut recusandae distinctio voluptates sit. Et qui ipsa fuga excepturi eum ut est.', 659.00, 'prod-4.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(54, 'Reprehenderit quo nisi sed dolore tempora sit et.', 'Fugiat ducimus et numquam. Veritatis quam odit et voluptatem fugiat eveniet nemo eaque. Velit numquam quia dignissimos fugiat consequatur autem.', 484.00, 'prod-4.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(55, 'Ipsum culpa et neque consequatur accusamus ea reprehenderit sunt.', 'Id optio sunt repellat nihil et iusto. Nam perferendis expedita excepturi magnam veritatis veniam doloremque et. Quia quidem maiores id fuga voluptatem sunt est. Minus ipsum ratione voluptatem.', 755.00, 'prod-1.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(56, 'Atque qui et eos quas iusto enim.', 'Consequatur ut soluta fugiat sapiente. Tenetur maxime velit voluptate nulla placeat hic consequuntur. Omnis nostrum omnis aut aut magni iusto sunt odit.', 712.00, 'prod-3.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(57, 'Unde reiciendis rerum animi tempore et a doloremque.', 'Quas numquam rerum nam hic eius. Veritatis qui non quo illum.', 600.00, 'prod-1.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(58, 'Eos id perspiciatis distinctio laboriosam dicta totam aliquid.', 'Quam expedita molestiae sed consequatur itaque voluptate. Incidunt qui accusamus perferendis incidunt consequatur. Quam quia consequatur veniam excepturi dolorem qui.', 843.00, 'prod-3.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(59, 'Quisquam odio enim qui quos iusto ut distinctio voluptatem.', 'Doloribus voluptatem sed quo id neque magni velit. Est magnam voluptatem expedita repudiandae sed totam. Perspiciatis necessitatibus sunt neque corrupti esse et possimus. Nihil reiciendis voluptas eaque beatae.', 942.00, 'prod-5.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(60, 'Dolor est qui dolor rerum.', 'Quia et autem rerum adipisci perspiciatis molestiae dolorum. Porro voluptate tempore iste voluptatem enim aut facilis. Dignissimos pariatur qui accusantium hic at. Quod praesentium natus provident eum.', 771.00, 'prod-5.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(61, 'Nostrum soluta sunt repellat distinctio sit facere.', 'Aut quisquam veniam debitis. Hic est voluptas iste deleniti modi eum.', 680.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(62, 'Sint fuga quidem corporis qui accusantium fuga non.', 'Tenetur vel aliquid ipsa corrupti. Consequatur iusto accusamus exercitationem exercitationem ullam. Quia ipsa nisi qui aut asperiores qui blanditiis. Qui quasi voluptatibus cum.', 896.00, 'prod-1.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(63, 'Provident blanditiis quia repellat saepe.', 'Ut maiores autem quibusdam a possimus est pariatur. Similique aliquam nihil omnis consectetur. Eum impedit blanditiis est voluptas dolor accusantium. Nihil sint consequatur odio unde odio optio. Eaque itaque accusamus libero doloremque sed dignissimos.', 615.00, 'prod-5.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(64, 'Voluptatum ut velit rerum voluptatem odio.', 'Error cupiditate praesentium dolor repellendus. Culpa aliquid ipsam accusantium. In veritatis quos dolor rerum eum. Illo quasi doloremque occaecati consequatur hic autem.', 489.00, 'prod-1.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(65, 'Fugiat quidem ut sunt.', 'Et et rerum at est. Exercitationem repudiandae quisquam vitae magnam et ipsam. Libero corrupti veniam et dolores nostrum ipsa. Consequuntur sed aut earum excepturi consequatur ipsum fuga eius. Sunt velit debitis sed quae voluptatum.', 469.00, 'prod-5.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(66, 'Ut rerum in fuga non rem autem.', 'Omnis voluptatem minima odio consequatur reiciendis delectus voluptatibus. Dolorum exercitationem aspernatur accusamus est. Voluptate quis quae ratione sapiente quia dolorem inventore. Velit doloremque autem est laborum molestiae.', 805.00, 'prod-4.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(67, 'Omnis occaecati iusto temporibus non aspernatur nesciunt ea.', 'Et ipsam quis quia deleniti explicabo quidem velit maxime. Tempore officia enim eum sint et. In sit nihil nemo debitis fuga. Molestias nisi ut fuga rerum sapiente.', 858.00, 'prod-1.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(68, 'Odio excepturi consequatur et sequi et.', 'Vel a qui dolores adipisci. Aspernatur sit et commodi ut tempore vel reiciendis est.', 893.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(69, 'Asperiores officiis rerum maxime distinctio illum corrupti in ad.', 'Numquam cupiditate rerum quae recusandae quam. Quo assumenda vitae debitis odit dolor soluta ut voluptatem. Ut hic sit et enim voluptatem. Nesciunt atque ut odit.', 356.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(70, 'Ut exercitationem officiis autem molestiae perspiciatis iure et.', 'Veritatis beatae voluptates ipsa explicabo. Voluptate harum modi consequatur ut non sint aspernatur. Quia sit recusandae consequatur sint quo. Itaque eos facilis quasi libero qui.', 662.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(71, 'Exercitationem earum ullam ipsam harum excepturi.', 'Optio ut dolorum et voluptatem. Tempore repellat ut ad voluptate modi ab temporibus non. Doloribus voluptas laborum ex cupiditate praesentium cupiditate eos.', 183.00, 'prod-1.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(72, 'Vel odit et adipisci ipsum.', 'Rerum rem ad soluta. Earum rerum eius et ut et aut est earum. Magni et sapiente sequi rem sed in et nam.', 859.00, 'prod-1.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(73, 'Laudantium occaecati vel laudantium modi libero.', 'Ut doloremque maxime sequi voluptatem. Necessitatibus libero eveniet aperiam temporibus sit dolor. Impedit asperiores soluta dicta ut reprehenderit voluptas.', 716.00, 'prod-5.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(74, 'Excepturi quis non ullam aliquam optio assumenda at nihil.', 'Dolore velit minus itaque velit. Voluptatum molestiae vel ea quo blanditiis in ut.', 714.00, 'prod-1.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(75, 'Dolor voluptates quod doloremque ea fugiat architecto.', 'Ipsa illum est nam aut laudantium autem eum. Quia veritatis vero velit in odit et consequatur. Neque deleniti enim aperiam ut perferendis asperiores. Tenetur sed tempora quae ut asperiores facere ut consequatur. Maxime odio labore laborum nesciunt et nam amet et.', 561.00, 'prod-1.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(76, 'Autem nulla aliquam odit.', 'Nemo totam impedit aut doloremque a blanditiis inventore. Quos ut harum quam. Fuga velit cupiditate non maiores. Porro minima ut repellat accusantium est officiis. Provident officia natus eos sequi.', 349.00, 'prod-5.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(77, 'Et reiciendis occaecati consequatur qui repellendus.', 'Tempore ut soluta architecto quis. Qui quia ea molestiae tenetur.', 116.00, 'prod-4.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(78, 'Consequatur nihil nobis eum quasi nemo.', 'Eum saepe sed autem. Temporibus eius quia et placeat reiciendis. Ratione quis dignissimos quas dolor maxime vero.', 94.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(79, 'Sit et porro magnam omnis illum soluta expedita.', 'Maiores odit et consequuntur deserunt aspernatur quia qui nulla. Delectus ut ex voluptatem sapiente non ipsum. Eius et quos illo minima qui minima. Ut nihil ipsa sed aut.', 271.00, 'prod-1.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(80, 'Autem aspernatur sequi impedit eos laborum modi.', 'Reprehenderit odit libero est sed. Dicta minus modi quam. Sequi architecto ducimus saepe rem expedita. Mollitia molestias sapiente deserunt consequuntur dolor perferendis temporibus. Delectus quos et quasi aut repellendus officiis praesentium.', 703.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(81, 'Nobis suscipit vel necessitatibus cupiditate dolorum.', 'Voluptatem laborum blanditiis reprehenderit et. Esse eos sunt vitae pariatur nihil excepturi. Aperiam rerum quia culpa ut dolor et dolore. Ut ea eveniet inventore beatae.', 516.00, 'prod-1.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(82, 'Exercitationem eaque nisi impedit officiis.', 'Officia corrupti omnis sed blanditiis sint voluptatibus nostrum. Mollitia maxime qui qui et non quia eos. Quod aliquam praesentium eveniet veritatis molestiae voluptatem in illo. Quod temporibus quia alias.', 962.00, 'prod-3.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(83, 'Et incidunt qui voluptatum sed qui quia quis libero.', 'Earum eos laboriosam dicta dolore enim. Facere nostrum voluptatem sit dolorum cum voluptas. Cum non quo et voluptatem cupiditate fuga vel. Est accusantium quos quis voluptatem illo. Vero molestiae dolorem omnis cumque assumenda harum et.', 872.00, 'prod-5.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(84, 'Nam autem deleniti quo aut rerum vel et.', 'Ut delectus illo eos eos in rerum aut. Quos voluptatem dolores et repellendus. Aut hic voluptates quaerat aliquid quod consequatur. Aut neque suscipit voluptatibus deleniti ut voluptas ut.', 351.00, 'prod-4.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(85, 'Fuga voluptatem consequuntur voluptas.', 'Sed et et aspernatur sit. Soluta corporis est ea explicabo. Veritatis enim eaque velit quia modi ut aut. Quis id accusantium neque odit rerum dolores quasi earum.', 754.00, 'prod-5.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(86, 'Nostrum aut laborum et voluptas sit.', 'Provident cumque unde aut reiciendis quis. Iure provident soluta cum excepturi velit explicabo harum esse. Quaerat est velit repellat provident. A dolores dolore qui qui et nisi quis.', 198.00, 'prod-1.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(87, 'Dolores consequuntur unde quaerat.', 'Omnis debitis ullam tenetur ut saepe. Repellat incidunt et sint assumenda voluptatem ut quia. Asperiores explicabo molestias exercitationem et voluptatem quo.', 943.00, 'prod-3.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(88, 'Dolores vero ut aut nesciunt explicabo et.', 'Blanditiis officia dicta sapiente alias aliquam est officiis odio. Consequatur consequatur minima in voluptate qui inventore ullam. Consequuntur amet cupiditate quaerat error. Voluptas vel est asperiores numquam.', 800.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(89, 'Beatae occaecati facilis doloremque assumenda dolor.', 'Quae a atque totam eveniet nihil similique aliquam. Qui ipsa non earum. Libero dolores quia corrupti numquam rerum. Optio fugit itaque quis est voluptas.', 285.00, 'prod-5.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(90, 'Iure ut harum quia voluptas qui eum.', 'Quia omnis odio commodi non quaerat dolore est. Eius eum sapiente illum accusantium. Ut temporibus accusamus provident et in. Accusantium est quo nesciunt et.', 140.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(91, 'Minima sit autem ut nihil deleniti ea nihil tempore.', 'Delectus et alias neque ut eum sint sapiente. Eos ut laboriosam veniam cum. Placeat explicabo veniam rerum eligendi aliquid quibusdam.', 714.00, 'prod-5.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(92, 'Id molestiae ex excepturi.', 'Et qui sed accusantium dolores. Voluptas deleniti ipsam ipsa quod. Sunt maiores nobis sint repellat.', 897.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(93, 'Mollitia est tenetur consequatur quibusdam quo.', 'Aperiam blanditiis quaerat facere et rerum. Animi voluptate facere vero modi autem sit. Et suscipit labore exercitationem vel qui qui assumenda. Praesentium rerum et fugiat eius. Qui aut ducimus omnis quo quo aut perferendis.', 552.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(94, 'Molestiae sequi fuga alias tenetur error illum voluptatem.', 'At perspiciatis molestiae quaerat ut quisquam assumenda ratione hic. Eaque et recusandae officiis vel eos placeat iste. Hic est necessitatibus praesentium sint qui.', 794.00, 'prod-2.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(95, 'Doloribus distinctio ea sit.', 'Necessitatibus ut voluptatem enim esse voluptas. Omnis alias fugit debitis tempora omnis id itaque fugit.', 99.00, 'prod-3.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(96, 'Eveniet optio eum nisi ea dolor.', 'Dolorem ducimus nulla omnis at velit provident. Delectus rerum voluptas et unde quod labore. Fuga quis est ab qui vitae nemo quisquam.', 230.00, 'prod-1.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(97, 'Dolores accusantium iure iure recusandae hic enim.', 'Eveniet est tempora accusantium nesciunt odio tempore porro. Impedit omnis ut perspiciatis quis ut aliquid tempore. Tempore praesentium odio recusandae et voluptatibus culpa numquam. Distinctio facilis nostrum distinctio voluptatibus non dolorem.', 416.00, 'prod-4.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(98, 'Voluptatem eveniet repudiandae quaerat quae sunt quidem vel.', 'Aspernatur aspernatur amet corporis sapiente quia. Saepe at magni eos culpa. Magnam repellendus asperiores quia libero quia ut et. Provident saepe asperiores placeat aperiam velit praesentium occaecati amet.', 241.00, 'prod-4.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(99, 'Quibusdam earum sit officia.', 'Quibusdam dolorum eveniet quam rerum hic culpa. Nobis et illum ea in nobis.', 441.00, 'prod-4.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(100, 'Et et unde laborum expedita tempora.', 'Aut autem accusamus veniam deleniti libero commodi veritatis itaque. Quisquam est quia rerum animi. Quaerat ut veritatis corrupti asperiores vel. Excepturi natus excepturi omnis explicabo soluta.', 235.00, 'prod-3.jpg', NULL, '2021-03-03 21:56:52', '2021-03-03 21:56:52');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table we_server.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 for normal user, 1 for admin',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table we_server.users: ~6 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', 'admin@mail.com', '2021-03-03 21:56:52', 1, '$2y$10$QiLT411M5uODF5eKErNOCejbZZOO2addmWYQDDF47VkuJPQJPDvem', 'wvmjhPOv72', '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(2, 'Gust Huels', 'allen82@example.org', '2021-03-03 21:56:52', 0, '$2y$10$QiLT411M5uODF5eKErNOCejbZZOO2addmWYQDDF47VkuJPQJPDvem', 'ytegSUrmpB', '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(3, 'Diana McClure', 'upollich@example.org', '2021-03-03 21:56:52', 0, '$2y$10$QiLT411M5uODF5eKErNOCejbZZOO2addmWYQDDF47VkuJPQJPDvem', '66AbWKXLqh', '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(4, 'Merle Rohan', 'alvah99@example.com', '2021-03-03 21:56:52', 0, '$2y$10$QiLT411M5uODF5eKErNOCejbZZOO2addmWYQDDF47VkuJPQJPDvem', '2EGETAKdtI', '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(5, 'Florian Toy', 'dorian.mills@example.net', '2021-03-03 21:56:52', 0, '$2y$10$QiLT411M5uODF5eKErNOCejbZZOO2addmWYQDDF47VkuJPQJPDvem', '4yJxJWVbVy', '2021-03-03 21:56:52', '2021-03-03 21:56:52'),
	(6, 'Cleve Borer', 'sshields@example.net', '2021-03-03 21:56:52', 0, '$2y$10$QiLT411M5uODF5eKErNOCejbZZOO2addmWYQDDF47VkuJPQJPDvem', 'LckXC0AXIj', '2021-03-03 21:56:52', '2021-03-03 21:56:52');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
