-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2025 at 08:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petmarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `adoption`
--

CREATE TABLE `adoption` (
  `id` int(3) NOT NULL,
  `adopter_id` varchar(30) NOT NULL,
  `pet_id` int(3) NOT NULL,
  `owner_id` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `reason_to_adopt` text NOT NULL,
  `past_experience` text DEFAULT NULL,
  `home_description` text NOT NULL,
  `existing_pets` int(2) DEFAULT NULL,
  `existing_children` int(2) DEFAULT NULL,
  `status` varchar(30) NOT NULL,
  `created_on` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adoption`
--

INSERT INTO `adoption` (`id`, `adopter_id`, `pet_id`, `owner_id`, `address`, `reason_to_adopt`, `past_experience`, `home_description`, `existing_pets`, `existing_children`, `status`, `created_on`) VALUES
(31, 'pokhrelshreya944@gmail.com', 33, 'sugamgautam.128@gmail.com', 'aaa, Damak, Jhapa, ', 'aaaa', 'aaaa', 'aaa', 1, 0, 'rejected', '2024-06-22'),
(32, 'pokhrelshreya944@gmail.com', 33, 'sugamgautam.128@gmail.com', 'aaa, Damak, Jhapa, ', 'aaa', 'aaa', 'aaa', 0, 0, 'rejected', '2024-07-15'),
(33, 'pokhrelshreya944@gmail.com', 33, 'sugamgautam.128@gmail.com', 'jhapa, Damak, Jhapa, ', 'friendly', 'none', 'suitable', 0, 0, 'approved', '2024-07-16'),
(34, 'pokhrelshreya944@gmail.com', 35, 'sugamgautam.128@gmail.com', 'birtamode, Damak, Jhapa, ', 'ooow', 'dhdh', 'jhg', 1, 0, 'approved', '2025-04-29'),
(35, 'sugamg020388@nec.edu.np', 36, 'sugamgautam.128@gmail.com', 'gggg, Budhabare, Jhapa, ', 'hg', 'yugyi', 'yg', 0, 0, 'approved', '2025-04-29'),
(36, 'sugamgautam.128@gmail.com', 39, 'sugamg020388@nec.edu.np', 'hhaa, Charali, Jhapa, ', 'jjhhgg', 'jhhgg', 'jjhhgg', 0, 0, 'pending', '2025-05-22'),
(37, 'sugamgautam.128@gmail.com', 39, 'sugamg020388@nec.edu.np', 'aaa, Charali, Jhapa, ', 'aaaaaa', 'aaa', 'aaaa', 0, 0, 'pending', '2025-05-22'),
(38, 'sugamgautam.128@gmail.com', 39, 'sugamg020388@nec.edu.np', 'aaaaa, Charali, Jhapa, ', 'aaa', 'aaa', 'aaaa', 0, 0, 'pending', '2025-05-22'),
(39, 'sugamgautam.128@gmail.com', 39, 'sugamg020388@nec.edu.np', 'aaa, Charali, Jhapa, ', 'aaaa', 'aaaa', 'aaaa', 0, 0, 'pending', '2025-05-22'),
(40, 'sugamgautam.128@gmail.com', 39, 'sugamg020388@nec.edu.np', 'aaa, Charali, Jhapa, ', 'aaaa', 'aaaa', 'aaaa', 0, 0, 'pending', '2025-05-22'),
(41, 'sugamgautam.128@gmail.com', 39, 'sugamg020388@nec.edu.np', 'aaaa, Charali, Jhapa, ', 'aaa', 'aaaa', 'aaa', 0, 0, 'pending', '2025-05-22'),
(42, 'sugamgautam.128@gmail.com', 39, 'sugamg020388@nec.edu.np', 'aaa, Charali, Jhapa, ', 'aaa', 'aaaa', 'aaaa', 0, 0, 'pending', '2025-05-22'),
(43, 'sugamgautam.128@gmail.com', 39, 'sugamg020388@nec.edu.np', 'aaa, Charali, Jhapa, ', 'aaa', 'aaaa', 'aaa', 0, 0, 'pending', '2025-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `breed`
--

CREATE TABLE `breed` (
  `id` int(3) NOT NULL,
  `species_id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `wiki_link` text DEFAULT NULL,
  `created_on` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `breed`
--

INSERT INTO `breed` (`id`, `species_id`, `name`, `wiki_link`, `created_on`) VALUES
(1, 1, 'Pug', NULL, '2024-03-07'),
(3, 1, 'Labrador Retriever', NULL, '2024-03-17'),
(4, 1, 'German Shepherd', NULL, '2024-03-17'),
(5, 2, 'Siamese', NULL, '2024-03-17'),
(6, 2, 'Maine Coon', NULL, '2024-03-17'),
(12, 2, 'None', NULL, '2024-06-21'),
(13, 1, 'None', NULL, '2024-03-17'),
(14, 1, 'Poodle', NULL, '2024-03-17'),
(15, 2, 'Persian', NULL, '2024-03-17'),
(16, 2, 'Bengal', NULL, '2024-03-17'),
(24, 2, 'none', NULL, '2024-06-21');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(2) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `title`, `description`) VALUES
(1, 'How Does The Pet Adoption Process Work?', 'The Pet Adoption Process Typically Involves Several Steps, Including Browsing Available Pets On Our Website, Contacting The Pet\'s Owner Or Adoption Agency, Filling Out An Adoption Application, Scheduling A Meet-And-Greet With The Pet, And Completing The Adoption Paperwork If The Match Is Successful.\r\n\r\n'),
(2, 'Are The Pets On Your Website Vaccinated And Spayed', 'We Encourage Pet Owners To Ensure That Their Pets Are Up-To-Date On Vaccinations And Spayed/Neutered Before Listing Them For Adoption. However, It\'s Essential To Inquire About The Pet\'s Medical History And Current Health Status Directly With The Pet\'s Owner Or Adoption Agency.\r\n\r\n'),
(3, 'What is the Adoption Fee, and What Does it Cover?', 'The adoption fee often varies depending on factors such as the pet\'s age, breed, and medical history. Typically, the fee helps cover initial vaccinations, spaying/neutering, microchipping, and sometimes even a starter pack of pet supplies.'),
(4, 'Can I Foster a Pet Before Committing to Adoption?', 'Many adoption centers offer fostering programs to allow individuals to temporarily care for a pet before making a permanent commitment. Fostering provides valuable insights into the pet\'s behavior, personality, and compatibility with your lifestyle.\r\n\r\n'),
(5, 'What Happens if the Pet Doesn\'t Adapt Well to its ', 'It\'s important to understand the adoption center\'s policies regarding returns or exchanges if the pet doesn\'t integrate well into its new environment. Some centers offer support and guidance to address behavioral issues, while others may facilitate rehoming if necessary.\r\n\r\n'),
(6, 'Do You Provide Post-Adoption Support or Resources?', 'Adopting a pet is a long-term commitment, and many adoption centers offer resources and support to help new pet owners navigate various challenges. This may include training advice, access to veterinary services, or behavioral consultations.\r\n\r\n'),
(7, 'Are There Any Restrictions or Requirements for Pot', 'Adoption centers often have guidelines and requirements to ensure the well-being of the pets and the suitability of potential adopters. These may include age restrictions, residence checks, and sometimes even interviews or references to ensure responsible pet ownership.\r\n\r\n\r\n\r\n\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `listed_pet`
--

CREATE TABLE `listed_pet` (
  `id` int(3) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `species_id` int(3) NOT NULL,
  `breed_id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `age` int(2) NOT NULL,
  `nature` varchar(30) NOT NULL,
  `food_preference` varchar(30) DEFAULT NULL,
  `vaccination_status` varchar(30) NOT NULL,
  `extra_info` text DEFAULT NULL,
  `availability` tinyint(1) NOT NULL,
  `adopted_by` varchar(30) DEFAULT NULL,
  `photo_path` varchar(300) DEFAULT NULL,
  `created_on` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `listed_pet`
--

INSERT INTO `listed_pet` (`id`, `user_email`, `species_id`, `breed_id`, `name`, `gender`, `age`, `nature`, `food_preference`, `vaccination_status`, `extra_info`, `availability`, `adopted_by`, `photo_path`, `created_on`) VALUES
(33, 'sugamgautam.128@gmail.com', 2, 12, 'Sanu', 'Female', 2, 'Mixed:Grey and White', 'Non-Vegetarian', 'Done', 'Independent and playful, she is great for indoor living. She enjoys climbing, scratching, and exploring surroundings.', 0, NULL, 'app/images/6676d0add874e.jpeg', '2024-06-22'),
(35, 'sugamgautam.128@gmail.com', 1, 13, 'Sansa', 'Male', 2, 'Grey', 'Non-Vegetarian', 'Done', 'He is very Friendly.', 0, NULL, 'app/images/6689290ca966b.jpeg', '2024-07-06'),
(36, 'sugamgautam.128@gmail.com', 1, 13, 'Millie', 'Male', 2, 'White', 'Vegetarian', 'Done', 'Very Friendly', 0, NULL, 'app/images/668929aba1390.jpeg', '2024-07-06'),
(37, 'sugamgautam.128@gmail.com', 1, 13, 'Bhunti', 'Female', 2, 'Mixed:Grey and White', 'Non-Vegetarian', 'Done', 'She is very friendly.', 1, NULL, 'app/images/66892aef50fc8.jpeg', '2024-07-06'),
(38, 'pokhrelshreya944@gmail.com', 1, 1, 'sanu', 'Male', 100, 'Black', 'Vegetarian', 'Not Done', 'it is very friendly', 1, NULL, 'app/images/6695f0e60126d.jpg', '2024-07-16'),
(39, 'sugamg020388@nec.edu.np', 1, 1, 'ramlal', 'Male', 12, 'Black', 'Vegetarian', 'Done', 'eff', 1, NULL, 'app/images/6810a59281276.png', '2025-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `species`
--

CREATE TABLE `species` (
  `id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `wiki_link` text DEFAULT NULL,
  `created_on` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `species`
--

INSERT INTO `species` (`id`, `name`, `wiki_link`, `created_on`) VALUES
(1, 'Dog', NULL, '2024-03-07'),
(2, 'Cat', NULL, '2024-03-07');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `dob` date DEFAULT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) DEFAULT NULL,
  `created_on` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `email`, `password`, `phone`, `dob`, `city`, `state`, `created_on`) VALUES
('bijay', 'bijay@gmail.com', 'bijay@123', '9825956363', NULL, 'Damak', 'Jhapa', '2025-05-23'),
('hari', 'hari@gmail.com', 'sugam@123', '9856895656', NULL, '', 'Jhapa', '2025-05-23'),
('sugam', 'hello@gmail.com', '', 'sugam@123', '2025-05-13', 'Damak', 'Jhapa', '2025-05-23'),
('Shreya', 'pokhrelshreya944@gmail.com', 'shreya@123', '9825952078', '2002-11-01', 'Damak', 'Jhapa', '2024-06-22'),
('ramlal', 'ramlal@gmail.com', 'sugam@123', '9856232356', '2025-05-07', 'Imadol', 'Kathmandu', '2025-05-23'),
('hfshfshfg', 'sugam11@gmail.com', 'sugam@123', '', '2025-05-01', 'Damak', 'Jhapa', '2025-05-23'),
('sugam', 'sugam@gmail.com', 'sugam@123', '9856565656', '2025-05-14', 'Budhabare', 'Jhapa', '2025-05-23'),
('Sameer', 'sugamg020388@nec.edu.np', 'sugam@123', '9814902106', '2025-04-01', 'Budhabare', 'Jhapa', '2025-04-29'),
('Sugam Gauam', 'sugamgautam.128@gmail.com', 'sugam@123', '9825952077', '2002-03-12', 'Charali', 'Jhapa', '2024-06-22'),
('sugammm', 'sugammm@gmail.com', 'sugam@123', '9855555555', NULL, 'Budhabare', 'Jhapa', '2025-05-23'),
('aaaa', 'suham@gmail.com', 'sugam@123', '8888888888', '2025-05-01', 'Budhabare', 'Jhapa', '2025-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(3) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `pet_id` int(3) NOT NULL,
  `created_on` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_email`, `pet_id`, `created_on`) VALUES
(14, 'pokhrelshreya944@gmail.com', 33, '2024-06-22'),
(15, 'pokhrelshreya944@gmail.com', 35, '2024-07-07'),
(16, 'pokhrelshreya944@gmail.com', 36, '2024-07-07'),
(17, 'sugamgautam.128@gmail.com', 38, '2025-04-29'),
(18, 'sugamgautam.128@gmail.com', 39, '2025-05-23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adoption`
--
ALTER TABLE `adoption`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pet_id_foreign` (`pet_id`),
  ADD KEY `owner_id_foreign` (`owner_id`),
  ADD KEY `adopter_id_foreign` (`adopter_id`);

--
-- Indexes for table `breed`
--
ALTER TABLE `breed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `species_foreign` (`species_id`) USING BTREE;

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listed_pet`
--
ALTER TABLE `listed_pet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adopted_by_foreign` (`user_email`),
  ADD KEY `breed_id_foreign` (`breed_id`),
  ADD KEY `species_id_foreign` (`species_id`);

--
-- Indexes for table `species`
--
ALTER TABLE `species`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wiki_link` (`wiki_link`) USING HASH;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pet_id` (`pet_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adoption`
--
ALTER TABLE `adoption`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `breed`
--
ALTER TABLE `breed`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `listed_pet`
--
ALTER TABLE `listed_pet`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `species`
--
ALTER TABLE `species`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adoption`
--
ALTER TABLE `adoption`
  ADD CONSTRAINT `adopter_id_foreign` FOREIGN KEY (`adopter_id`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pet_id_foreign` FOREIGN KEY (`pet_id`) REFERENCES `listed_pet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `breed`
--
ALTER TABLE `breed`
  ADD CONSTRAINT `species` FOREIGN KEY (`species_id`) REFERENCES `species` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `listed_pet`
--
ALTER TABLE `listed_pet`
  ADD CONSTRAINT `breed_id_foreign` FOREIGN KEY (`breed_id`) REFERENCES `breed` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listed_pet_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `species_id_foreign` FOREIGN KEY (`species_id`) REFERENCES `species` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`pet_id`) REFERENCES `listed_pet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
