-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2016 at 03:01 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `study_bud`
--
CREATE DATABASE IF NOT EXISTS `study_bud` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `study_bud`;

-- --------------------------------------------------------

--
-- Table structure for table `documents_details`
--

CREATE TABLE IF NOT EXISTS `documents_details` (
  `doc_id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_name` varchar(255) NOT NULL,
  `uploaded_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `field_of_study`
--

CREATE TABLE IF NOT EXISTS `field_of_study` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` varchar(100) NOT NULL,
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=390 ;

--
-- Dumping data for table `field_of_study`
--

INSERT INTO `field_of_study` (`field_id`, `field_name`) VALUES
(245, 'Accounting'),
(246, 'Administration'),
(247, 'Advertising'),
(248, 'African Studies'),
(249, 'Agribusiness'),
(250, 'Agricultural Economics'),
(251, 'Agricultural Education'),
(252, 'Agricultural Engineering'),
(253, 'Agriculture'),
(254, 'American Studies'),
(255, 'Ancient Studies'),
(256, 'Animal Sciences'),
(257, 'Anthropology'),
(258, 'Archaeology'),
(259, 'Architecture'),
(260, 'Art and Design'),
(261, 'Aviation'),
(262, 'Art History'),
(263, 'Arts'),
(264, 'Asian Studies'),
(265, 'Astronomy'),
(266, 'Biochemistry'),
(267, 'Biological Sciences'),
(268, 'Civil Engineering'),
(269, 'Biotechnology'),
(270, 'Botany'),
(271, 'Broadcast Journalism'),
(272, 'Broadcast Engineering'),
(273, 'Business Administration Management'),
(274, 'Business Management'),
(275, 'Behavioral Sciences'),
(276, 'Business'),
(277, 'Cellular Biology'),
(278, 'Chemical Engineering'),
(279, 'Chemistry'),
(280, 'Child Development'),
(281, 'Chinese Studies'),
(282, 'Commerce'),
(283, 'Communication Media'),
(284, 'Communication'),
(285, 'Comparative Literature'),
(286, 'Computer Engineering'),
(287, 'Computer Science'),
(288, 'Consulting'),
(289, 'Consumer Sciences'),
(290, 'Creative Arts'),
(291, 'Mechanical Engineering'),
(292, 'Criminal Justice'),
(293, 'Cultural Studies'),
(294, 'Dairy Science'),
(295, 'Earth Sciences'),
(296, 'Ecology'),
(297, 'Economic studies'),
(298, 'Economics'),
(299, 'Education'),
(300, 'Electrical and Electronics Engineering'),
(301, 'Engineering'),
(302, 'English Teacher Education'),
(303, 'English'),
(304, 'Entomology'),
(305, 'Environmental Engineering'),
(306, 'Environmental Health'),
(307, 'Environmental Studies'),
(308, 'Ethnic Studies'),
(309, 'Library Studies'),
(310, 'Family and Consumer Sciences'),
(311, 'Fashion Merchandising'),
(312, 'Film and Television Studies'),
(313, 'Retail Studies'),
(314, 'Finance Accounting'),
(315, 'Finance Banking'),
(316, 'Finance'),
(317, 'Fine Arts'),
(318, 'Food Science'),
(319, 'Materials Science'),
(320, 'Forestry'),
(321, 'Gender and Diversity'),
(322, 'Genetics'),
(323, 'Geography'),
(324, 'Geology'),
(325, 'German'),
(326, 'Gerontology'),
(327, 'Graphic Arts'),
(328, 'Health Science'),
(329, 'History'),
(330, 'Horticulture Studies'),
(331, 'Hospitality'),
(332, 'Human Resources'),
(333, 'Human Sciences'),
(334, 'Humanities'),
(335, 'Interior Design'),
(336, 'Logistics'),
(337, 'International Business'),
(338, 'Journalism'),
(339, 'Landscape Architecture'),
(340, 'Law'),
(341, 'Liberal Arts Sciences'),
(342, 'Linguistics'),
(343, 'Literature'),
(344, 'Management Information Systems'),
(345, 'Management'),
(346, 'Marketing Education'),
(347, 'Dentistry'),
(348, 'Marketing'),
(349, 'Mathematics Education'),
(350, 'Mathematics'),
(351, 'Mechatronics'),
(352, 'Medical Dietetics'),
(353, 'Medical Sciences'),
(354, 'Medieval Studies'),
(355, 'Microbiology'),
(356, 'Military Studies'),
(357, 'Museum Studies'),
(358, 'Nautical Studies'),
(359, 'Nursing'),
(360, 'Oceanography'),
(361, 'Oncology'),
(362, 'Paramedical Studies'),
(363, 'Peace Studies'),
(364, 'Pharmacy'),
(365, 'Philosophy'),
(366, 'Physical Education'),
(367, 'Physical Sciences'),
(368, 'Physics'),
(369, 'Policy Management'),
(370, 'Political Science'),
(371, 'Poultry Science'),
(372, 'Psychology'),
(373, 'Public Health Education'),
(374, 'Public Relations'),
(375, 'Real Estate'),
(376, 'Religious Studies'),
(377, 'Rhetorical Studies'),
(378, 'Risk Management'),
(379, 'Science'),
(380, 'Social Sciences'),
(381, 'Mining Engineering'),
(382, 'Sociology'),
(383, 'Statistics'),
(384, 'Strategic Management'),
(385, 'Studio Arts'),
(386, 'Theater Arts'),
(387, 'Theology'),
(388, 'Tourism'),
(389, 'Zoology');

-- --------------------------------------------------------

--
-- Table structure for table `registration_confirmations`
--

CREATE TABLE IF NOT EXISTS `registration_confirmations` (
  `user_id` int(11) NOT NULL,
  `random_code` int(6) NOT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `study_buddies`
--

CREATE TABLE IF NOT EXISTS `study_buddies` (
  `user_id_from` int(11) NOT NULL,
  `user_id_to` int(11) NOT NULL,
  `study_buddy_status` tinyint(1) NOT NULL DEFAULT '0',
  KEY `user_id_from` (`user_id_from`,`user_id_to`),
  KEY `user_id_to` (`user_id_to`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `field_of_study` int(4) NOT NULL,
  `account_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `field_of_study` (`field_of_study`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_documents`
--

CREATE TABLE IF NOT EXISTS `user_documents` (
  `doc_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  KEY `doc_id` (`doc_id`,`owner_id`),
  KEY `owner_id` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `registration_confirmations`
--
ALTER TABLE `registration_confirmations`
  ADD CONSTRAINT `registration_confirmations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `study_buddies`
--
ALTER TABLE `study_buddies`
  ADD CONSTRAINT `study_buddies_ibfk_1` FOREIGN KEY (`user_id_from`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `study_buddies_ibfk_2` FOREIGN KEY (`user_id_to`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`field_of_study`) REFERENCES `field_of_study` (`field_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_documents`
--
ALTER TABLE `user_documents`
  ADD CONSTRAINT `user_documents_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `documents_details` (`doc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_documents_ibfk_2` FOREIGN KEY (`owner_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
