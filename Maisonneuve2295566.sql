-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 26, 2024 at 04:40 AM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Maisonneuve2295566`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_fr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_fr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `etudiant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title_fr`, `content_fr`, `title_en`, `content_en`, `etudiant_id`, `created_at`, `updated_at`) VALUES
(19, 'titre en francais', 'description en francais', '', '', 116, '2024-03-22 18:25:18', '2024-03-22 18:25:18'),
(20, '', '', 'titre en anglais', 'description en anglais', 116, '2024-03-22 18:28:11', '2024-03-22 18:28:11'),
(21, 'Plan d\'Études en Informatique', 'Détails des cours, crédits nécessaires et options de spécialisation pour le parcours en informatique.', 'Computer Science Curriculum', 'Details on courses, required credits, and specialization options for the computer science track.', 116, '2024-03-25 08:00:04', '2024-03-25 08:00:04'),
(22, 'Conseils pour bien gérer son temps', 'Échangez vos astuces et stratégies pour organiser votre emploi du temps entre les cours, les devoirs et les loisirs', 'Tips for Effective Time Management', 'Share your tips and strategies for managing your time effectively between classes, homework, and leisure activities', 118, '2024-03-26 07:28:27', '2024-03-26 07:28:27'),
(23, 'Débats sur l\'éducation numérique', 'Discutez des avantages et des défis de l\'intégration des technologies numériques dans l\'enseignement et l\'apprentissage.', 'Debates on Digital Education', 'Discuss the benefits and challenges of integrating digital technologies into teaching and learning.', 118, '2024-03-26 07:29:11', '2024-03-26 07:29:11'),
(24, 'Partage de ressources pédagogiques', 'Échangez des documents, des vidéos et d\'autres ressources utiles pour enrichir l\'expérience d\'apprentissage de chacun.', 'Sharing Pedagogical Resources', 'Exchange documents, videos, and other useful resources to enhance everyone\'s learning experience', 118, '2024-03-26 07:29:43', '2024-03-26 07:29:43'),
(25, 'Soutien psychologique et bien-être étudiant', 'Trouvez du soutien, partagez des conseils et discutez des défis liés à la santé mentale et au bien-être étudiant.', 'Psychological Support and Student Well-being', 'Find support, share tips, and discuss challenges related to mental health and student well-being.\"', 119, '2024-03-26 07:37:50', '2024-03-26 07:37:50'),
(26, '\"Projets étudiants : Présentez vos réalisations', 'Montrez vos projets créatifs, académiques ou entrepreneuriaux et recevez des commentaires constructifs de la communauté.', 'Student Projects: Showcase Your Achievements', 'Showcase your creative, academic, or entrepreneurial projects and receive constructive feedback from the community', 119, '2024-03-26 07:38:15', '2024-03-26 07:38:15'),
(27, 'Cours en ligne : Partagez vos expériences', 'Échangez vos expériences avec les cours en ligne, les plateformes d\'apprentissage virtuelles et les outils d\'e-learning.', 'Online Courses: Share Your Experiences', '\"Share your experiences with online courses, virtual learning platforms, and e-learning tools.', 120, '2024-03-26 07:43:00', '2024-03-26 07:43:00'),
(28, 'Clubs et associations étudiantes', 'Découvrez les différents clubs, associations et groupes étudiants sur le campus et rejoignez ceux qui vous intéressent.', 'Student Clubs and Associations', 'Discover the various clubs, associations, and student groups on campus and join those that interest you.', 120, '2024-03-26 07:43:27', '2024-03-26 07:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_nom_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etudiant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `document_nom`, `document_nom_en`, `document_path`, `etudiant_id`, `created_at`, `updated_at`) VALUES
(4, 'introduction PDO', NULL, 'uploads/documents/1711413369_1711341991_01-POO-introduction.pdf', 112, '2024-03-26 04:36:09', '2024-03-26 04:36:09'),
(6, 'effect video', NULL, 'uploads/documents/1711418554_Filmburns.zip', 116, '2024-03-26 06:02:34', '2024-03-26 06:02:34'),
(7, 'crud avec firestore', 'crud with firestore', 'uploads/documents/1711423904_02_CrudAvecFireStore.pdf', 118, '2024-03-26 07:31:44', '2024-03-26 07:31:44'),
(8, 'Comment tester une api', 'Test an API', 'uploads/documents/1711424064_03_Tester une api.pdf', 118, '2024-03-26 07:34:24', '2024-03-26 07:34:41'),
(9, 'Language graphique', 'brand identity', 'uploads/documents/1711424334_05 - Langage graphique et méthode Design thinking.pdf', 119, '2024-03-26 07:38:54', '2024-03-26 07:38:54'),
(10, 'Crud mango DB', NULL, 'uploads/documents/1711424431_20.1 CRUD Operations with Mongoose and MongoDB Recap.pdf', 119, '2024-03-26 07:40:31', '2024-03-26 07:40:31'),
(11, 'Ennonce TP2 Laravel', NULL, 'uploads/documents/1711424631_TP2_-_Laravel_-_Login.pdf', 120, '2024-03-26 07:43:51', '2024-03-26 07:43:51'),
(12, 'Plan de cours projet web 2', 'course plan', 'uploads/documents/1711424757_planCours_582-41W_projetWeb2_E23-22633.pdf', 119, '2024-03-26 07:45:57', '2024-03-26 07:45:57'),
(13, 'information sur node', 'Node information', 'uploads/documents/1711424830_01_Nodejs.pdf', 116, '2024-03-26 07:47:10', '2024-03-26 07:47:10'),
(14, 'Revsion Commande Git', 'git information', 'uploads/documents/1711424864_06_RevisionCommandesGit.pdf', 116, '2024-03-26 07:47:44', '2024-03-26 07:47:44'),
(15, 'comment demarrer node', 'how start node', 'uploads/documents/1711424888_02_DemarrageNodeJs.pdf', 116, '2024-03-26 07:48:08', '2024-03-26 07:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_de_naissance` date NOT NULL,
  `ville_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `adresse`, `telephone`, `email`, `date_de_naissance`, `ville_id`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Cortez Effertz', '3709 Jennings Overpass Apt. 080\r\nWest Gloriafurt, IA 46111-4989', '347.438.6013', 'boehm.jettie@example.org', '1984-12-11', 15, '2024-02-20 09:35:52', '2024-02-26 05:03:05', 0),
(3, 'Eladio Boyles', '7679 Ettie Station\r\nNorth Clintonside, IL 03055-5016', '814-513-1846', 'arden93@example.org', '2023-11-25', 6, '2024-02-20 09:35:52', '2024-03-18 22:30:07', 0),
(4, 'Katelyn Ernser', '46872 Dickinson Lane Apt. 737\r\nCorkeryland, NE 70824', '239-654-3565', 'daugherty.ari@example.net', '2014-12-30', 8, '2024-02-20 09:35:52', '2024-02-26 06:34:44', 0),
(5, 'Nathanial Baumbach', '81170 Issac Summit\nBartellmouth, KS 31417', '(534) 444-0924', 'ugoldner@example.org', '1986-07-03', 6, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(6, 'Dr. Olaf Boehm', '527 Rutherford Branch Suite 066\nNorth Lia, SC 04505-3174', '283-619-7128', 'nconnelly@example.com', '2007-11-03', 5, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(7, 'Nina Friesen', '99920 Rebecca Streets\nKuphalfort, TX 44742-8500', '+1 (260) 641-0833', 'jerad.swift@example.com', '1999-06-11', 10, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(8, 'Mrs. Lottie Davis', '983 Christina Skyway\nBeckerbury, DE 53480-9009', '914.753.7920', 'eschumm@example.com', '1975-09-21', 6, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(9, 'Lue Schaden', '20803 Weimann Path Apt. 797\nNorth Katharinaborough, OK 79738-7792', '+1-615-252-8709', 'clemmie.boyer@example.com', '1991-06-23', 1, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(10, 'Lukas Bosco MD', '80907 Darien Turnpike Apt. 846\nNew Loy, SC 39769', '+1-620-457-4177', 'jace07@example.org', '1974-08-17', 6, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(11, 'Ansel Armstrong', '217 Feest Street Apt. 259\nMarvinhaven, ME 53449', '680-707-6612', 'jerald55@example.net', '1983-10-08', 1, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(12, 'Finn Hahn', '857 Moore Lakes\nDurganmouth, DC 54708', '+1-657-240-5880', 'noel53@example.org', '1985-01-30', 14, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(13, 'Kaelyn Fadel', '66149 Parisian Knolls\nEast Gabriella, WA 59809-2494', '(503) 421-5450', 'mohr.margaretta@example.net', '1976-03-11', 5, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(14, 'Mr. Cody Bergstrom MD', '725 Claudia Manor\nWest Hailie, GA 34517-5216', '401.453.6098', 'shaylee21@example.org', '2012-09-27', 13, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(15, 'Mrs. Emily West', '88388 Rowe Drive Suite 655\nPort Name, ID 41984', '531-244-3302', 'nnitzsche@example.com', '1987-03-16', 1, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(16, 'Mrs. Lexi Hirthe', '1826 Hayes Groves\nNew Davonfurt, WY 26335', '1-562-857-1581', 'elva16@example.net', '1980-12-21', 3, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(17, 'Theresia Kris', '80240 Dach Parkway\nEast Lavinia, DE 18880-2253', '+12344176589', 'von.rupert@example.net', '2018-01-14', 3, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(18, 'Kay King', '211 Yasmine Unions Suite 738\nSouth Greenville, KS 83304-7627', '+1.563.998.3215', 'santina.koch@example.net', '1991-09-20', 4, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(19, 'Javonte Gutkowski', '936 Stehr Summit Apt. 618\nEast Missouri, ME 87927-1427', '+17278308610', 'amara23@example.org', '2004-06-03', 9, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(20, 'Terrell Windler', '12627 Altenwerth Station Suite 822\nEast Cleveland, AZ 45196', '515-356-0861', 'ebalistreri@example.net', '2023-05-30', 12, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(21, 'Carmen Jacobson', '916 Kaitlin Passage\nNorth Beatrice, WI 94411-6204', '(864) 978-7324', 'kelton.denesik@example.net', '2003-07-11', 4, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(22, 'Prof. Willis Mertz MD', '3669 Candace Roads\nLake Karianneview, AR 36009-7941', '1-401-730-8915', 'jevon.cruickshank@example.net', '1971-12-31', 14, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(23, 'Kraig Frami', '993 Sadie Forge Suite 377\nEast Ora, AK 88653-8110', '(856) 973-0353', 'lehner.karianne@example.net', '1985-07-29', 10, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(24, 'Kavon Hill PhD', '82560 Reymundo Trace Apt. 613\nEast Grayson, NV 28666', '+1-209-214-1798', 'eleanore.beahan@example.com', '2013-08-07', 1, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(25, 'Dovie Murphy', '54172 Lowe Knolls\nErnestineberg, MI 22106-2980', '+1.361.388.0057', 'qbauch@example.com', '2021-12-25', 5, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(26, 'Dylan Kunde', '906 Adelia Trail Apt. 550\nWunschmouth, RI 98632', '+18126599062', 'mabelle.brakus@example.net', '2008-09-13', 11, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(27, 'Francesca Denesik', '131 Stamm Trace\nEdview, DE 91565', '+15592524802', 'wmayert@example.net', '2023-02-23', 10, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(28, 'Ms. Nicolette Mante DVM', '54057 Thiel Fall\nPorterfurt, HI 81534-4329', '760.848.8551', 'bernier.santos@example.com', '1973-11-14', 9, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(29, 'Courtney Bruen', '627 Spencer Mountain\nStrackemouth, CT 98283-6563', '574.891.7188', 'anastacio.brekke@example.org', '1994-03-07', 4, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(30, 'Walker Wunsch', '882 Teagan Row Apt. 289\nNew Sylvanstad, MD 77670', '(320) 441-8865', 'newton97@example.org', '2000-01-17', 11, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(31, 'Brock Murazik', '3535 Anne Corners\nVincebury, WV 56464-5976', '1-212-306-1756', 'zoey.bailey@example.net', '2000-09-12', 1, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(32, 'Orin Kuhn', '1736 Koch Garden\nGranvilleville, OH 46078-3078', '+1-385-550-7222', 'pschaden@example.com', '2001-11-03', 2, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(33, 'Kale Rutherford DDS', '169 Norma Crescent\nHopeview, VA 94516-1907', '+1 (463) 492-2243', 'yasmeen.bernhard@example.org', '1998-02-07', 6, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(34, 'Prof. Fermin Rodriguez', '1924 Gerhold Heights Apt. 886\nVolkmanhaven, KY 66790-8567', '(520) 485-3354', 'blake.wolf@example.net', '1983-05-07', 9, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(35, 'Kristopher Streich Sr.', '637 Jewel Mountain\nAmericastad, IL 09797-0481', '1-934-318-1365', 'johns.jayme@example.org', '2013-10-29', 14, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(36, 'Dr. Fermin Cruickshank III', '4369 Oceane Pine\nNew Kirkview, OH 47579-3155', '+16786319468', 'lakin.lindsey@example.org', '2023-02-11', 12, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(37, 'Garnett Gerlach', '23991 Dennis Meadows Suite 699\nCeliashire, ND 16560-4843', '1-615-552-6987', 'liam22@example.org', '2010-08-07', 9, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(38, 'Mr. Candelario Heller', '7529 Considine Mission\nSpencerfurt, KY 05989-3573', '1-408-232-2898', 'eleanora73@example.net', '2010-06-21', 2, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(39, 'Prof. Zachariah Conroy II', '696 Anika Heights\nMorartown, VA 61771', '1-689-667-0966', 'ylockman@example.com', '2011-11-01', 1, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(40, 'Fabian Conn', '104 Labadie Neck Suite 809\nLake Jerod, IA 74366-6560', '1-201-291-7878', 'hrunte@example.org', '1989-02-14', 8, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(41, 'Ramon Hirthe', '257 Eudora Junction\nBoehmland, SD 83086', '+1-678-988-8147', 'geo46@example.net', '2006-01-14', 15, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(42, 'Prof. Luther Johnson III', '9412 Afton Camp\nBeahanfort, NY 55324', '+1 (731) 424-6084', 'sigmund87@example.net', '1975-10-11', 12, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(43, 'Gilda Roob', '746 Brown Viaduct\nNorth Betteland, AZ 03381-9140', '+13374262055', 'alana.jacobson@example.com', '1987-03-19', 14, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(44, 'Deborah Morissette', '45410 Nia River\nNew Katherynmouth, ND 03482', '+14058056693', 'lelah30@example.com', '2010-04-02', 11, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(45, 'Prof. Mona Farrell PhD', '71650 Augusta Place Apt. 475\nPort Carolfurt, NY 82371', '+1-442-821-8245', 'kertzmann.prince@example.com', '1987-08-02', 5, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(46, 'Rocio Gerlach', '740 Waters Fords\nDaniellatown, HI 89608-2827', '1-516-402-7365', 'borer.shane@example.net', '2001-04-23', 7, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(47, 'Nick Tillman', '81825 Dangelo Rue Apt. 534\nEast Emmastad, SC 97448-1087', '(480) 728-2383', 'oquigley@example.org', '1994-12-10', 12, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(48, 'Anita Purdy II', '5017 Anna Rapid\nO\'Harafurt, MN 60403', '1-551-406-1026', 'miller.rudolph@example.org', '1994-08-26', 12, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(49, 'Delfina Mante', '740 Aryanna Neck Suite 564\nWest Elisastad, WI 09163-0203', '732-593-0030', 'hessel.kareem@example.net', '1998-04-20', 11, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(50, 'Carlos Stokes', '4442 Garrett Path Suite 544\nGonzaloberg, OH 40758-3786', '612.340.2714', 'wunsch.antonetta@example.net', '2011-02-28', 11, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(51, 'Maryam Kertzmann', '567 Kuphal Forest\nBoehmview, RI 40927-6553', '1-623-550-1281', 'tia16@example.com', '2015-12-26', 2, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(52, 'Mr. Adrien Upton', '26095 Volkman Prairie\nLake Ollieville, NC 18227', '1-484-406-1639', 'delmer.bailey@example.net', '2018-05-31', 13, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(53, 'Jeromy Runte', '37572 Constance Lane Apt. 799\nSouth Tyler, IA 35980-0595', '+1.617.704.5801', 'rowe.vivien@example.org', '2001-07-29', 1, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(54, 'Jonathon Pfannerstill', '80401 Lowe Rue Suite 787\nOllieport, IL 62276', '1-509-530-1308', 'fay.antonetta@example.org', '2023-01-15', 7, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(55, 'Barney Rodriguez', '36662 Weimann Isle Apt. 811\nHandshire, NY 77426', '+1 (541) 320-8911', 'silas.crona@example.net', '1988-02-07', 8, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(56, 'Annetta Schimmel', '16464 Emelie Vista\nElsieland, NM 09406-6530', '279.220.4564', 'rossie21@example.com', '1978-05-26', 10, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(57, 'Miss Holly Ernser', '68842 Maritza Point Suite 090\nLake Sincere, SC 37223-5556', '1-231-231-3733', 'hane.kendra@example.net', '1975-06-17', 10, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(58, 'Mrs. Maria Stoltenberg IV', '835 Connelly Meadows Apt. 033\nAlbaside, NV 24186', '1-469-329-2517', 'schamberger.gilda@example.org', '1980-02-15', 7, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(59, 'Noelia Greenholt', '425 Patsy Oval\nLake Arch, SD 28689', '+13857069381', 'hpredovic@example.net', '2015-12-01', 12, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(60, 'Mr. Alexandre Rath', '81346 Derek Springs\nNew Johanside, TN 69394-6416', '341-272-0731', 'alexis.hagenes@example.net', '1970-07-28', 10, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(61, 'Greyson Mueller', '7281 Jaden Haven\nNew Geo, HI 54801-9211', '+1-234-639-3008', 'mrau@example.org', '1971-04-06', 2, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(62, 'Zella Christiansen', '788 Astrid Meadow\nNorth Johantown, AL 64013', '1-248-281-1951', 'emmerich.glenda@example.com', '2008-09-07', 8, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(63, 'Shanie Murphy I', '1007 Kertzmann Trail Suite 996\nLake Dominicbury, NV 08903-0024', '1-531-818-0756', 'kshlerin.marcelo@example.org', '2023-06-26', 13, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(64, 'William Goldner', '98444 Grant Ford\nSchimmelstad, MN 24582', '725-203-4604', 'aurelie.von@example.org', '1985-05-10', 10, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(65, 'Carlee Hamill', '275 Frederik Curve Apt. 159\nSchneiderville, UT 40004', '234.294.9945', 'koss.domenick@example.net', '1997-12-27', 13, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(66, 'Urban Murazik IV', '6872 Jaskolski Squares Apt. 533\nSouth Edmondview, AL 64318', '+1-727-859-1836', 'taya.ebert@example.com', '1990-06-28', 6, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(67, 'Ted Erdman', '3935 Liana Bypass Suite 547\nLehnermouth, RI 34575-1275', '1-313-938-0844', 'cathy45@example.net', '1990-01-06', 3, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(68, 'Mr. Nash Stehr', '7555 Austin Burg\nHettiemouth, FL 11929', '+12628942750', 'wunsch.emerald@example.com', '2022-08-14', 5, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(69, 'Hilda Jerde PhD', '6655 Kling Pines\nPort Marlon, NV 45245-1126', '+1-585-300-4277', 'koch.alexander@example.com', '2018-10-05', 9, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(70, 'Destiney Larkin', '7406 Monty Spurs\nCrystalberg, TN 30667-6741', '+1-919-875-9439', 'ubayer@example.net', '1984-07-19', 2, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(71, 'Annie Kling', '97847 Viola Shoals Apt. 675\nHerzogmouth, NH 30418', '727.894.0918', 'senger.agustin@example.net', '2000-04-11', 9, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(72, 'Karelle Feil II', '160 Grady Meadows\nLambertborough, IL 72340', '1-385-994-3473', 'ariane18@example.net', '2003-09-21', 14, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(73, 'Dr. Amina Nikolaus', '2278 Stoltenberg Turnpike\nSouth Norwoodview, KY 00161-9844', '1-424-866-4038', 'vrogahn@example.org', '2010-08-15', 5, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(74, 'Mrs. Adeline Rogahn', '3192 Kris Circle\nWest Emeryshire, RI 38608-1630', '+1-484-974-1157', 'jovany.connelly@example.net', '2017-02-21', 11, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(75, 'Prof. Charlene Auer', '650 Nikolas Oval Suite 118\nNorth Kaydenmouth, FL 99199-6519', '1-863-781-0336', 'green.bradford@example.com', '1976-03-28', 9, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(76, 'Garfield West', '1335 Strosin Stravenue\nSouth Hilda, SC 37900-3781', '1-740-912-9344', 'florence60@example.com', '2004-06-27', 4, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(77, 'Preston Zboncak', '2202 Olson Court\nVonRuedenland, NV 39005', '+1-843-365-4164', 'upton.juanita@example.net', '2000-07-14', 7, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(78, 'Tiana Romaguera', '3579 Frederik Run\nLake Jaredchester, GA 24015', '1-386-335-5651', 'kemmer.cassandre@example.com', '2011-06-01', 14, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(79, 'Dr. Merl Johns', '8614 Alaina Harbors\nHarrisfort, SC 30322-8576', '(539) 542-8021', 'boris.kreiger@example.org', '2019-08-13', 4, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(80, 'Ms. Shanie Hahn Jr.', '1180 Murray Circle Apt. 154\nLydiaberg, ID 92303-5708', '+1-657-322-5428', 'antoinette22@example.net', '2020-05-14', 8, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(81, 'Precious King', '4867 Moore Ranch Suite 304\nOttismouth, SD 14589', '(931) 695-6990', 'rosamond.dibbert@example.com', '2020-02-18', 6, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(82, 'Ms. Telly Romaguera', '169 Lee Pass\nSouth Amyaville, MN 77191-9036', '1-914-939-7431', 'crona.curt@example.net', '1999-12-09', 10, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(83, 'Andre Mitchell', '70616 Aidan Village\nRuthfurt, MS 51566-5755', '1-480-923-8315', 'ryan.kenyatta@example.net', '2021-12-29', 4, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(84, 'Imogene Stiedemann DDS', '1732 Trey Branch\nLeopoldoside, WY 33193-3148', '+1.520.587.2787', 'adrian57@example.org', '2005-07-19', 9, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(85, 'Lilian Stanton', '8801 Kertzmann Cape\nWest Zariahaven, KY 95338-9735', '+1.657.892.4414', 'bjohnston@example.org', '2000-06-16', 6, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(86, 'Dr. Dell Stamm DVM', '671 Labadie Forges\nGrantshire, MS 83416', '856-784-3258', 'cydney.runolfsson@example.org', '1974-08-12', 13, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(87, 'Dr. Zackery Zemlak', '34498 Davis Spurs\nMakenzieshire, TN 96630', '1-763-215-7936', 'alex94@example.net', '1999-08-22', 15, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(88, 'Prof. Brannon Boyer III', '97737 Stanley Islands\nNew Saul, NY 84986', '1-857-936-4346', 'kian.boyle@example.com', '2016-10-25', 4, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(89, 'Domenica Leannon MD', '9770 Llewellyn Brooks\nEast Beverly, CT 64550', '(419) 986-7048', 'huel.sid@example.net', '2023-01-04', 1, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(90, 'Darrick Ruecker', '66122 Skiles Village\nPredovicberg, KY 64160', '(240) 366-7697', 'fabiola.bernier@example.org', '2007-02-12', 2, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(91, 'Oren Lakin', '2895 Hilpert Branch Apt. 900\nMadonnaburgh, NC 93758-4214', '765-445-7423', 'lavada.mcglynn@example.com', '1972-07-02', 8, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(92, 'Prof. Gunnar Leuschke MD', '5009 Fae Stravenue\nLake Francesco, ID 37239-9070', '1-586-444-3141', 'marina.bauch@example.com', '1979-11-27', 7, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(93, 'Ms. Mireya Botsford DVM', '28422 Marks Orchard\nKertzmannville, RI 60117-7836', '+1-385-868-9506', 'lschinner@example.org', '2012-09-23', 6, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(94, 'Olin Corkery', '48580 Rohan Estate\nSouth Isidro, AZ 92308', '1-505-949-5033', 'grady.jany@example.com', '2008-07-11', 14, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(95, 'Jacey McDermott', '47679 Macie Extensions\nNew Clarabelle, LA 10158', '1-551-899-3831', 'alfonzo.schinner@example.net', '1986-08-24', 2, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(96, 'Sadye O\'Conner III', '602 Pfeffer Bypass Suite 113\nDanteland, TX 90194-1977', '+1 (518) 433-5356', 'tankunding@example.net', '1979-07-25', 15, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(97, 'Jadyn Auer', '3438 Esperanza Manors\nEast Eleanore, IL 42673', '(678) 528-8897', 'ned.champlin@example.org', '1970-05-13', 9, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(98, 'Sharon Bednar IV', '513 Leopold Station\nBrookston, IL 07573', '1-269-572-6860', 'ayla.brakus@example.com', '1986-06-11', 7, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(99, 'Cindy Schroeder', '49864 Gloria Circles\nWest Eryn, NM 33758-5786', '+17704065773', 'alf20@example.org', '1976-03-04', 7, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(100, 'Miss Juliana Johns', '3860 Veum Flat\nLake Rosalinda, MA 22511', '(541) 538-6497', 'ylesch@example.net', '2002-05-27', 1, '2024-02-20 09:35:52', '2024-02-20 09:35:52', 0),
(101, 'Anis ElBez', '6630 25e Avenue', '5147025922', 'balancedarray@gmail.com', '2024-02-18', 3, '2024-02-24 03:43:14', '2024-02-24 03:43:14', 0),
(102, 'zied', 'settela', '5147025922', 'balancedarray@gmail.com', '2024-02-24', 6, '2024-02-25 23:41:52', '2024-02-25 23:41:52', 0),
(103, 'hello', '6453 60e avenue', '555555555', 'hello@hello.com', '2024-03-20', 1, '2024-03-20 12:16:38', '2024-03-20 12:16:38', 6),
(104, 'bilel', '3400 sherbrooke', '5145555555', 'bilel@bilel.com', '2024-02-28', 3, '2024-03-20 23:47:30', '2024-03-20 23:47:30', 7),
(105, 'guillermo', '3800 sherbrooke', '5147025922', 'guilleromo@gmail.com', '2024-03-06', 5, '2024-03-21 00:10:22', '2024-03-21 00:10:22', 8),
(106, 'aitana', '22 rue mont royal', '5147026922', 'aitana@gmail.com', '2024-03-05', 4, '2024-03-21 23:56:05', '2024-03-21 23:56:05', 11),
(107, 'aitana', '22 rue mont royal', '5147026922', 'aitana2222@gmail.com', '2024-03-05', 4, '2024-03-22 00:03:36', '2024-03-22 00:03:36', 13),
(108, 'aitana', '22 rue mont royal', '5147026922', 'aitana223322@gmail.com', '2024-03-05', 4, '2024-03-22 00:04:14', '2024-03-22 00:04:14', 14),
(109, 'aitana', '22 rue mont royal', '5147026922', 'aitana2233ssss22@gmail.com', '2024-03-05', 4, '2024-03-22 00:12:55', '2024-03-22 00:12:55', 15),
(110, 'nabil', '70 rue kasserine', '5147029393', 'elbez.aniss@gmail.com', '1990-06-04', 7, '2024-03-22 05:58:56', '2024-03-22 05:58:56', 17),
(111, 'helloww', 'hello test', '5147026922', 'balancedarray@gmail.com', '2024-03-07', 3, '2024-03-22 06:03:48', '2024-03-22 06:03:48', 18),
(112, 'zahra', '44 rachel', '61589209202', 'zahra@gmail.com', '2024-03-01', 3, '2024-03-22 06:33:45', '2024-03-22 06:33:45', 19),
(113, 'mariem', '333 wardia', '51477711111', 'mariem@gmail.com', '2024-03-07', 5, '2024-03-22 06:40:00', '2024-03-22 06:40:00', 20),
(114, 'olfa', '444 rue kasserine', '5149992222', 'olfa@gmail.com', '2024-03-07', 8, '2024-03-22 06:41:13', '2024-03-22 06:41:13', 21),
(115, 'hend', '55 rue kass', '514009919191', 'hend@gmail.com', '2024-03-05', 6, '2024-03-22 06:42:18', '2024-03-22 06:42:18', 22),
(116, 'sabrine', '63663 rue kass', '514782902', 'sabrine@gmail.com', '2024-03-06', 4, '2024-03-22 09:16:59', '2024-03-22 09:16:59', 23),
(117, 'maxime', '2800 sherbrooke', '514444112', 'maxime@gmail.com', '2024-03-20', 8, '2024-03-26 07:22:21', '2024-03-26 07:22:21', 25),
(118, 'Antoni Dupuis', '26 rue brossard', '5147778823', 'antoni@cn.ca', '2024-03-06', 5, '2024-03-26 07:25:40', '2024-03-26 07:25:40', 26),
(119, 'zakaria salah', '5533 rue verdun', '5148726565', 'zakaria@hotmail.fr', '1990-02-25', 10, '2024-03-26 07:36:28', '2024-03-26 07:36:28', 27),
(120, 'Brahim Diaz', '44 rue wellington', '5147029282', 'brahim@gmail.com', '2003-10-25', 9, '2024-03-26 07:42:02', '2024-03-26 07:42:02', 28);

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_19_029622_create_villes_table', 1),
(6, '2024_02_19_030622_create_etudiants_table', 1),
(7, '2024_03_22_080730_create_articles_table', 2),
(8, '2014_10_12_100000_create_password_resets_table', 3),
(9, '2024_03_24_175514_create_documents_table', 4);

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Anis ElBez', 'elbez.anis@gmail.com', NULL, '$2y$10$ds9/WvoMIVukcHaVzAyt7eKTeqU7iN46skgmERGlm16JfIFDYYoKS', NULL, '2024-03-20 01:01:05', '2024-03-20 01:01:05'),
(6, 'hello', 'hello@hello.com', NULL, '$2y$12$mQwU4pEE4RccpM0UplHQHuHcbL3PChrENU4teOmNxfTDh/I0KZxxe', NULL, '2024-03-20 12:16:38', '2024-03-20 12:16:38'),
(7, 'bilel', 'bilel@bilel.com', NULL, '$2y$12$q7DevrXMvBHg1wSd1f.t5emZ15TQY15/P3iADPTJ8VVNegqvmBsva', NULL, '2024-03-20 23:47:30', '2024-03-20 23:47:30'),
(8, 'guillermo', 'guilleromo@gmail.com', NULL, '$2y$12$pZ6UIqULyA8jdt/9pKL55Ou2GzAmmBbfeDSQcM4tb3JPE4fHmzmZ.', NULL, '2024-03-21 00:10:22', '2024-03-21 00:10:22'),
(9, 'jjjjjj', 'tets@gmail.com', NULL, '$2y$12$pL6pmke7IrUFJFpRtVvkkeJbTV2CRMtr796vQlAjzw0M.0dLrrDF.', NULL, '2024-03-21 23:12:11', '2024-03-21 23:12:11'),
(11, 'aitana', 'aitana@gmail.com', NULL, '$2y$12$A1L9TGQ7kTOKKCn6rbmJEeRtF/8Y87SiNoQ1xNzQHup.EzVb51B6W', NULL, '2024-03-21 23:56:05', '2024-03-21 23:56:05'),
(13, 'aitana', 'aitana2222@gmail.com', NULL, '$2y$12$bqmyuM0o5cr65NhvHxO/pekyKdqZz1QK/DdM38./gLOyLE/m2sLre', NULL, '2024-03-22 00:03:36', '2024-03-22 00:03:36'),
(14, 'aitana', 'aitana223322@gmail.com', NULL, '$2y$12$4Ngo.8rReJ2cKawgkubqfuqKztHala1NS3EMT.7Ferb5YHM58/qE.', NULL, '2024-03-22 00:04:14', '2024-03-22 00:04:14'),
(15, 'aitana', 'aitana2233ssss22@gmail.com', NULL, '$2y$12$voTJlz8gnMFDJyJJ6r4xP.e7vgl9zL4wz/pCp3geFPwcQlZVOlE32', NULL, '2024-03-22 00:12:55', '2024-03-22 00:12:55'),
(17, 'nabil', 'elbez.aniss@gmail.com', NULL, '$2y$12$ll/YDtp2FtHCHHt8Cch/UO0Svn6ZXhtR1yb4RM0a.bgUxdN/D.rn2', NULL, '2024-03-22 05:58:56', '2024-03-22 05:58:56'),
(18, 'helloww', 'balancedarray@gmail.com', NULL, '$2y$12$5OIzz/Uoeyb8MD3m4VauUO5fz/pLy2TAIlb83hPebYEFHQG6pMMPu', NULL, '2024-03-22 06:03:48', '2024-03-22 06:03:48'),
(19, 'zahra', 'zahra@gmail.com', NULL, '$2y$12$LV.tBpAAdadKDg9oSvwfGOQXEjzRw00clUr/CCzLQ8jO17HVSnXzO', NULL, '2024-03-22 06:33:45', '2024-03-22 06:33:45'),
(20, 'mariem', 'mariem@gmail.com', NULL, '$2y$12$Caip1aiDHVtchzw226qLY.49PpH8GAi.UXymK4TH.bv09XFIzY9KW', NULL, '2024-03-22 06:40:00', '2024-03-22 06:40:00'),
(21, 'olfa', 'olfa@gmail.com', NULL, '$2y$12$gArfRvSiNyWO38qRU4xMz.hrJYV20uSSCJWzLdE83Dfc1ioZk8w66', NULL, '2024-03-22 06:41:13', '2024-03-22 06:41:13'),
(22, 'hend', 'hend@gmail.com', NULL, '$2y$12$p8u24DH9zb3rdwm9GXUa/OxEvva2jTNGu3EQVX3S0G/v1LqaWYBh6', NULL, '2024-03-22 06:42:18', '2024-03-22 06:42:18'),
(23, 'sabrine', 'sabrine@gmail.com', NULL, '$2y$12$jGgF9VWMlw8OP7F43RPUJeDd3RCTa7L252vhjT572aCsZTNhOncse', NULL, '2024-03-22 09:16:59', '2024-03-22 09:16:59'),
(24, 'zzzz', 'zzzz@gmail.com', NULL, '$2y$12$quzZsojGapQUPzi9rMoQY.HdY5uheNo95I8SnIVm7847qCdmfNO2u', NULL, '2024-03-22 15:33:52', '2024-03-22 15:33:52'),
(25, 'maxime', 'maxime@gmail.com', NULL, '$2y$12$TuvwJ9.SdmSQNtWsVJmRdeeOi0hmsDxv3qDKvXBJvLw5moS2iuAFm', NULL, '2024-03-26 07:22:21', '2024-03-26 07:22:21'),
(26, 'Antoni Dupuis', 'antoni@cn.ca', NULL, '$2y$12$vM5b1wCTBzjA6fJK78DFWeJ77/W7BCzuvgF8AFaLcmARMfnUJf0O6', NULL, '2024-03-26 07:25:40', '2024-03-26 07:25:40'),
(27, 'zakaria salah', 'zakaria@hotmail.fr', NULL, '$2y$12$yz6G0nUriiS9XDZJXQ83weIDAKZVk8albebrrXcdSjFpkmcjnSUWG', NULL, '2024-03-26 07:36:28', '2024-03-26 07:36:28'),
(28, 'Brahim Diaz', 'brahim@gmail.com', NULL, '$2y$12$0G4eM28FreL1g3T0YL6/6uIPvsmbp5UfOzwCtE5BVxgpSop0.djsq', NULL, '2024-03-26 07:42:02', '2024-03-26 07:42:02');

-- --------------------------------------------------------

--
-- Table structure for table `villes`
--

CREATE TABLE `villes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `villes`
--

INSERT INTO `villes` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'Port Joelshire', '2024-02-20 08:44:43', '2024-02-20 08:44:43'),
(2, 'Schulistville', '2024-02-20 08:44:43', '2024-02-20 08:44:43'),
(3, 'New Dolly', '2024-02-20 08:44:43', '2024-02-20 08:44:43'),
(4, 'Port Rosalindaville', '2024-02-20 08:44:43', '2024-02-20 08:44:43'),
(5, 'Adelleville', '2024-02-20 08:44:43', '2024-02-20 08:44:43'),
(6, 'Kerluketon', '2024-02-20 08:44:43', '2024-02-20 08:44:43'),
(7, 'Deangelochester', '2024-02-20 08:44:43', '2024-02-20 08:44:43'),
(8, 'South Carmelohaven', '2024-02-20 08:44:43', '2024-02-20 08:44:43'),
(9, 'Berenicemouth', '2024-02-20 08:44:43', '2024-02-20 08:44:43'),
(10, 'Schulistmouth', '2024-02-20 08:44:43', '2024-02-20 08:44:43'),
(11, 'Stromanshire', '2024-02-20 08:44:43', '2024-02-20 08:44:43'),
(12, 'East Millie', '2024-02-20 08:44:43', '2024-02-20 08:44:43'),
(13, 'New Angela', '2024-02-20 08:44:43', '2024-02-20 08:44:43'),
(14, 'Streichfort', '2024-02-20 08:44:43', '2024-02-20 08:44:43'),
(15, 'New Cecilia', '2024-02-20 08:44:43', '2024-02-20 08:44:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_etudiant_id_foreign` (`etudiant_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_etudiant_id_foreign` (`etudiant_id`);

--
-- Indexes for table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `etudiants_ville_id_foreign` (`ville_id`),
  ADD KEY `fk_etudiants_users1_idx` (`user_id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_etudiant_id_foreign` FOREIGN KEY (`etudiant_id`) REFERENCES `etudiants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_etudiant_id_foreign` FOREIGN KEY (`etudiant_id`) REFERENCES `etudiants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `etudiants`
--
ALTER TABLE `etudiants`
  ADD CONSTRAINT `etudiants_ville_id_foreign` FOREIGN KEY (`ville_id`) REFERENCES `villes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_etudiants_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
