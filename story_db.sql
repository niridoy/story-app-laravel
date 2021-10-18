-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2021 at 02:29 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `story_db`
--

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_17_184850_create_stories_table', 1);

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
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_date` date NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `title`, `body`, `published_date`, `created_by`, `created_at`, `updated_at`) VALUES
(3, 'Supplying Additional Context', 'When authorizing actions using policies, you may pass an array as the second argument to the various authorization functions and helpers. The first element in the array will be used to determine which policy should be invoked, while the rest of the array elements are passed as parameters to the policy method and can be used for additional context when making authorization decisions. For example, consider the following PostPolicy method definition which contains an additional $category parameter\r\nWhen authorizing actions using policies, you may pass an array as the second argument to the various authorization functions and helpers. The first element in the array will be used to determine which policy should be invoked, while the rest of the array elements are passed as parameters to the policy method and can be used for additional context when making authorization decisions. For example, consider the following PostPolicy method definition which contains an additional $category parameter', '2021-10-15', 2, '2021-10-17 15:24:00', '2021-10-17 17:25:50'),
(4, 'Instagram Struggles With Fears of Losing', 'LinkedIn’s action ends what had been one of the most far-reaching experiments by a foreign social network in China, where the internet is closely controlled by the government. Twitter and Facebook have been blocked in the country for years, and Google left more than a decade ago. China’s internet, which operates behind a system of filters known as the Great Firewall, is heavily censored and has gone in its own direction.LinkedIn’s action ends what had been one of the most far-reaching experiments by a foreign social network in China, where the internet is closely controlled by the government. Twitter and Facebook have been blocked in the country for years, and Google left more than a decade ago. China’s internet, which operates behind a system of filters known as the Great Firewall, is heavily censored and has gone in its own direction.', '2012-01-05', 2, '2021-10-17 16:59:22', '2021-10-17 17:56:11'),
(5, 'Inside the Courtroom With Theranos’s Elizabeth Holmes', 'But what the public can’t see are the dozens of small interactions that happen behind the courthouse’s closed doors: Ms. Holmes whispering through her mask to her lawyers; the jury of eight men and four women scribbling notes in large white binders; the packs of lawyers whizzing past reporters who camp out on the hallway’s carpeted floors during breaks, charging their laptops. That hallway often goes quiet when Ms. Holmes, who has a special quiet room but uses the same elevator, bathroom and entry as everyone else, walks by.But what the public can’t see are the dozens of small interactions that happen behind the courthouse’s closed doors: Ms. Holmes whispering through her mask to her lawyers; the jury of eight men and four women scribbling notes in large white binders; the packs of lawyers whizzing past reporters who camp out on the hallway’s carpeted floors during breaks, charging their laptops. That hallway often goes quiet when Ms. Holmes, who has a special quiet room but uses the same elevator, bathroom and entry as everyone else, walks by.', '2020-10-10', 2, '2021-10-17 17:19:59', '2021-10-17 17:57:33'),
(6, 'LinkedIn to Shut Down Service in China', 'SEATTLE — LinkedIn said on Thursday that it was shutting down its professional networking service in China later this year, citing “a significantly more challenging operating environment and greater compliance requirements,” in a move that completes the fracture between American social networks and China.\r\n\r\nLinkedIn, which is owned by Microsoft, said it would offer a new app for the Chinese market focused solely on job postings. It will not have social networking features such as sharing posts and commenting, which have been critical to LinkedIn’s success in the United States and elsewhere.SEATTLE — LinkedIn said on Thursday that it was shutting down its professional networking service in China later this year, citing “a significantly more challenging operating environment and greater compliance requirements,” in a move that completes the fracture between American social networks and China.\r\n\r\nLinkedIn, which is owned by Microsoft, said it would offer a new app for the Chinese market focused solely on job postings. It will not have social networking features such as sharing posts and commenting, which have been critical to LinkedIn’s success in the United States and elsewhere.', '2021-10-27', 1, '2021-10-17 17:38:04', '2021-10-17 17:55:02'),
(7, 'Jumpstarting Arbitration through Tax Incentives v1.00', 'A single-judge bench of the Calcutta High Court (Calcutta HC) recently delivered a judgement in Balasore Alloys Ltd. v. Medima LLC which revived the debate regarding whether a ‘civil court has jurisdiction to grant anti-arbitration injunctions in foreign seated arbitrations?’ This decision requires a careful examination because of its impact on 1) the arbitration-friendly reputation that India has slowly gained and, 2) the larger and important question of whether civil courts have the jurisdiction to grant an anti-arbitration injunction in foreign seated arbitrations.\r\nA single-judge bench of the Calcutta High Court (Calcutta HC) recently delivered a judgement in Balasore Alloys Ltd. v. Medima LLC which revived the debate regarding whether a ‘civil court has jurisdiction to grant anti-arbitration injunctions in foreign seated arbitrations?’ This decision requires a careful examination because of its impact on 1) the arbitration-friendly reputation that India has slowly gained and, 2) the larger and important question of whether civil courts have the jurisdiction to grant an anti-arbitration injunction in foreign seated arbitrations.', '2021-11-30', 3, '2021-10-17 18:24:36', '2021-10-17 18:25:53'),
(8, 'How to Start a Blog That Generates $3817 a Month v1.023', 'On 1 September 2021, Global Arbitration Review (GAR) launched a new diversity-themed addition to its GAR Connect series, “Breaking In: How international arbitration becomes more diverse.”1)The authors would like to thank Racial Equality for Arbitration Lawyers (R.E.A.L.) for providing a scholarship to attend the event. The event, co-chaired by Adriana Braghetta (Adriana Braghetta Lawyers), Nayla…On 1 September 2021, Global Arbitration Review (GAR) launched a new diversity-themed addition to its GAR Connect series, “Breaking In: How international arbitration becomes more diverse.”1)The authors would like to thank Racial Equality for Arbitration Lawyers (R.E.A.L.) for providing a scholarship to attend the event. The event, co-chaired by Adriana Braghetta (Adriana Braghetta Lawyers), Nayla…On 1 September 2021, Global Arbitration Review (GAR) launched a new diversity-themed addition to its GAR Connect series, “Breaking In: How international arbitration becomes more diverse.”1)The authors would like to thank Racial Equality for Arbitration Lawyers (R.E.A.L.) for providing a scholarship to attend the event. The event, co-chaired by Adriana Braghetta (Adriana Braghetta Lawyers), Nayla…On 1 September 2021, Global Arbitration Review (GAR) launched a new diversity-themed addition to its GAR Connect series, “Breaking In: How international arbitration becomes more diverse.”1)The authors would like to thank Racial Equality for Arbitration Lawyers (R.E.A.L.) for providing a scholarship to attend the event. The event, co-chaired by Adriana Braghetta (Adriana Braghetta Lawyers), Nayla…', '2021-10-05', 1, '2021-10-17 18:27:00', '2021-10-17 18:27:00'),
(9, 'The Contents of the Yearbook Commercial Arbitration, Volume XLVI (2021), Upload 4', 'Subscribers to KluwerArbitration.com enjoy access to the ICCA Yearbook Commercial Arbitration. A selection of major CRCICA awards concerning contracts for the supply of commodities and dealing with a variety of notorious issues – parallel arbitration proceedings, non-signatory parties, res judicata, corruption, and force majeure ‑‑ is now available on KluwerArbitration.com. Two awards, rendered in Madrid…Subscribers to KluwerArbitration.com enjoy access to the ICCA Yearbook Commercial Arbitration. A selection of major CRCICA awards concerning contracts for the supply of commodities and dealing with a variety of notorious issues – parallel arbitration proceedings, non-signatory parties, res judicata, corruption, and force majeure ‑‑ is now available on KluwerArbitration.com. Two awards, rendered in Madrid…Subscribers to KluwerArbitration.com enjoy access to the ICCA Yearbook Commercial Arbitration. A selection of major CRCICA awards concerning contracts for the supply of commodities and dealing with a variety of notorious issues – parallel arbitration proceedings, non-signatory parties, res judicata, corruption, and force majeure ‑‑ is now available on KluwerArbitration.com. Two awards, rendered in Madrid…Subscribers to KluwerArbitration.com enjoy access to the ICCA Yearbook Commercial Arbitration. A selection of major CRCICA awards concerning contracts for the supply of commodities and dealing with a variety of notorious issues – parallel arbitration proceedings, non-signatory parties, res judicata, corruption, and force majeure ‑‑ is now available on KluwerArbitration.com. Two awards, rendered in Madrid…', '2021-12-01', 1, '2021-10-17 18:27:23', '2021-10-17 18:27:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Md. Nazmul Islam', 'admin@gmail.com', 'admin', NULL, '$2y$10$I/d/Rvq3ImWOIuIa9xXM/umaNyh7NQpo23nkwD.sN2AtdhM0awFI6', NULL, '2021-10-17 14:24:26', '2021-10-17 14:24:26'),
(2, 'Ridoy Ahmed', 'ridoy@gamil.com', 'ridoy', NULL, '$2y$10$I/d/Rvq3ImWOIuIa9xXM/umaNyh7NQpo23nkwD.sN2AtdhM0awFI6', NULL, '2021-10-17 15:23:17', '2021-10-17 15:23:17'),
(3, 'Noyon Ahmed', 'noyon@gmail.com', 'noyon', NULL, '$2y$10$CUmWbkvO9CNdSLf8uRf3Ne156KSPfCAN/iLbKhELsvVOBxtJmfcwi', NULL, '2021-10-17 18:23:45', '2021-10-17 18:23:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
