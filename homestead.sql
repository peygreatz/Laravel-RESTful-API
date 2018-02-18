-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2018 at 04:48 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Fashion Wanita', 'Fashion wanita', '2018-02-16 10:39:31', '2018-02-16 10:53:48', NULL),
(2, 'Fashion Pria', 'Fashion pria', '2018-02-16 10:39:31', '2018-02-16 10:53:48', NULL),
(3, 'Fashion Muslim', 'Fashion muslim', '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(4, 'Fashion Anak', 'Fashion anak', '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(5, 'Kecantikan', 'Kecantikan', '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(6, 'Kesehatan', 'Kesehatan', '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(7, 'Perawatan Tubuh', 'Perawatan tubuh', '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`category_id`, `product_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(7, 5),
(7, 6),
(7, 7),
(7, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(6, 13),
(6, 14),
(2, 15),
(2, 16),
(5, 17),
(5, 18),
(3, 19),
(3, 20);

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
(29, '2014_10_12_000000_create_users_table', 1),
(30, '2014_10_12_100000_create_password_resets_table', 1),
(31, '2018_02_16_050237_create_categories_table', 1),
(32, '2018_02_16_050312_create_products_table', 1),
(33, '2018_02_16_050336_create_transactions_table', 1),
(34, '2018_02_16_062343_category_product_table', 1);

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
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unavailable',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `quantity`, `status`, `image`, `seller_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Othain Wallet', 'Dompet fungsional dengan sisipan dompet resleting serbaguna serta beberapa bagian kantong didalam. Terdiri dari 4 kantong uang kertas, 5 kantong serbaguna, 1 kantong resleting, 1 kantong Blackberry, 2 kantong mika, 18 kantong kartu uk. 21X4X12 CM', 57, 'available', 'dompet1.jpg', 3, '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(2, 'Genie Bra Classic', 'Ingin pake baju pas di badan, tapi ngga nemuin bra yang tepat buat di gunakan?\r\nBingung nyari bra yang nyaman dan bisa ngebantu nutupin kekurangan pada payudara kalian?', 99, 'available', 'bra1.jpg', 4, '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(3, 'Longchamp Le Pliage Small Long Handle', 'kelengkapan dust bag polos', 0, 'unavailable', 'longchamp1.jpg', 5, '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(4, 'Jam Tangan Casio', 'Spesifikasi Produk :\r\nDigital quartz movement\r\nDress watch\r\nLED light with afterglow\r\nDual time\r\n1/100 second watch\r\nHourly time signal\r\nAuto-calendar\r\nGold-tone stainless steel selector buttons\r\nStainless steel caseback\r\nWater resistant\r\nBox includes: 1 x Casio Watch, each with warranty card and instruction manual\r\nPackaging Dimensions/Product Weight: 11 x 11 x 10 cm / 0.20 Kg', 77, 'available', 'jamtangancasio1.jpg', 1, '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(5, 'Krim Wak Doyok', 'Hasil positif yang didapat oleh setiap konsumen kami tidak menjadi jaminan bahwa Anda pasti mengalami hasil yang sama. Kami berusaha menginformasikan produk kami dan hasil yang bisa diperoleh dengan wajar dan tidak berlebihan. Kami tidak bertanggung-jawab jika Anda tidak memperoleh hasil seperti yang dialami oleh konsumen atau pelanggan kami lainnya. Kami hanya berlaku sebagai penjual yang menjual produk Original 100% dan tidak bertanggung jawab atas khasiat dan efek yang ditimbulkan. Informasi yang disampaikan sebatas informasi yang kami dapatkan dari produsen. ', 999, 'available', 'wakdoyok1.jpg', 1, '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(6, 'Pomade Waterbased', 'NOLABEL WATERBASED POMADE HAS APPEARED WITH NEW LOOK!\r\nDengan peningkatan kualitas pada kaleng, penambahan isi sebesar 0.3oz (4.5 OZ), dan penambahan kotak sebagai Packaging. ', 45, 'available', 'pomade1.jpg', 1, '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(7, 'Lush Big Shampoo', 'A volumising shampoo made with seaweed and sea salt. While the salt lifts the hair and adds body, it also softens the hair alongside extra virgin coconut oil and protein-rich toothed wrack seaweed. Lemon and lime allow the hair to shine as they allow the cuticles on your hair to lie flat, meaning they reflect more light. Use a small amount on wet hair and work it in well to build lather.', 125, 'available', 'lushbigshampoo1.jpg', 2, '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(8, 'Sabun Rice Milk', 'Barang sesuai dengan gambar', 633, 'available', 'sabunricemilk1.jpg', 4, '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(9, 'Baju Anak Spiderman Hitam', 'Kostum ini dapat membuat anak Anda bermain dalam dunia imajinasinya sambil mengembangkan kreatifitasnya. Terbuat dari bahan kaos yang nyaman dipakai. 1 set pakaian terdiri dari baju,celana panjang, dan topeng.', 35, 'available', 'spidermanhitam.jpg', 3, '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(10, 'Baju Anak Son Goku', 'Kostum ini dapat membuat anak Anda bermain dalam dunia imajinasinya sambil mengembangkan kreatifitasnya. Terbuat dari bahan kaos yang nyaman dipakai. 1 set pakaian terdiri dari baju, celana panjang, dan topeng.', 74, 'available', 'songoku1.jpg', 5, '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(11, 'Tas Anak Sekolah', 'Selamat Berbelanja..\r\nReady stok tas..\r\nSegera diorder ya.. \r\nDetail setiap barang ada pada gambar\r\nKeburu kehabisan ya..', 55, 'available', 'tasanaksekolah1.jpg', 4, '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(12, 'Overall Motif Salur Biru', 'MOTIF BISA DILIHAT DI\r\nINSTAGRAM : izora_kids\r\nOur new collection\r\nYuk moms di order Overallnya', 34, 'available', 'overallsalurbiru1.jpg', 3, '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(13, 'Wellness Mega B Complex', 'Vitamin B kompleks adalah salah satu jenis vitamin yang sangat diperlukan sebagai nutrisi dasar kehidupan sel-sel tubuh. Sangat dianjurkan bagi mereka yang mempunyai aktifitas tinggi, mengalami lsquostressrsquo, makan tidak teratur, cepat merasa lelah, peminum alkohol dan perokok karena kadar vitamin B dalam tubuh berkurang.', 67, 'available', 'wellnesscomplex1.jpg', 2, '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(14, 'Centrum Silver Men', 'Centrum Silver Men applies the latest nutritional science to bring you the most complete multivitamin specially formulated for men 50+. The personal formula provides key nutrients to help support the health of your heart, brain and eyes. Additionally, the formula contains nutrients to help support muscle function.', 96, 'available', 'centrumsilver1.jpg', 4, '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(15, 'Ikat Pinggang Pria', 'Bahan : Kulit PU\r\nPanjang :115cm - 120cm (TIDAK MELAYANI PENAMBAHAN LUBANG LAGI !!! DIKARENAKAN BANYAK YANG SALAH KASIH UKURAN)\r\nLebar : 3,3 cm\r\nTekstur : Lihat gambar, susah dijelaskan\r\nWarna Tali : Hitam\r\nWarna Kepala : Gray\r\nPaket termasuk : 1 ikat pinggang+ 1 box', 74, 'available', 'ikatpinggang1.jpg', 5, '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(16, 'Jaket Jeans Sandwash', 'JAKET JEANS SANDWASH BLUEBLACK\r\nMATERIAL FULL PRE-WASHED DENIM STRECH\r\nSIZE : M L XL\r\nJAHITAN RANTAI DAN OVERDEK\r\nSLETING BESI SEPHU\r\nBERAT : 900 gram\r\nKUALITAS : PREMIUM', 34, 'available', 'jeanssandwash1.jpg', 1, '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(17, 'Remover Extension', 'Keunggulan : \r\n\r\n- Tanpa perih dimata\r\n- Wangi buah-buahan\r\n- Cepat menghilangan eyelash extension\r\n- Mudah digunakan (hanya di oleskan saja di bulu mata, nanti rontok sendiri)', 54, 'available', 'removerextension1.jpg', 4, '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(18, 'Loreal Lash Paradise', 'Take your lashes to paradise! L\'Oreal\'s Voluminous Lash Paradise Mascara is their first mascara for voluptuous volume and length now with even more black pigments. Soft wavy bristle brush holds maximum formula for a dramatic volumizing charge.', 74, 'available', 'lorealparadise1.jpg', 3, '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(19, 'Hijab Rubiah Rumbai', 'hijab rubiah rumbai\r\nukuran 110 x 110cm', 102, 'available', 'hijab1.jpg', 5, '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(20, 'Blouse Cape Abela', 'Bhn twiscone fit XL brt 0,20kg', 97, 'available', 'blousecape1.jpg', 3, '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `buyer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `verified` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `verification_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `verified`, `verification_token`, `admin`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'PeY Greatz', 'peygreatz@gmail.com', '', '1234567890', '1', '0987654321', 'true', '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(2, 'Levin Zha', 'levinzha@gmail.com', 'bitchx', '5555555555', '1', '9999999999', 'false', '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(3, 'Queen Zha', 'queenzhabie@gmail.com', 'bitchx', '8888888888', '1', '9999999999', 'false', '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(4, 'Jumanji', 'jumanji@gmail.com', '123456', '123123123', '0', '321321321', 'false', '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL),
(5, 'George Washington', 'georgie@gmail.com', '321456', '456654', '1', '5464546', 'false', '2018-02-17 17:00:00', '2018-02-17 17:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD KEY `category_product_category_id_foreign` (`category_id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_seller_id_foreign` (`seller_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_buyer_id_foreign` (`buyer_id`),
  ADD KEY `transactions_product_id_foreign` (`product_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_buyer_id_foreign` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transactions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
