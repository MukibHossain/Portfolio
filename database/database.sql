-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2026 at 04:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mukib_portfolio_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `achievement_year` year(4) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `title`, `organization`, `achievement_year`, `description`, `icon`, `created_at`) VALUES
(1, 'Research Publication', 'IUBAT', '2025', 'Published abstract in international conference proceedings.', 'trophy', '2026-05-17 12:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `status` enum('published','draft') DEFAULT 'draft',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certifications`
--

CREATE TABLE `certifications` (
  `id` int(11) NOT NULL,
  `certificate_name` varchar(255) DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `credential_link` varchar(255) DEFAULT NULL,
  `certificate_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` enum('unread','read') DEFAULT 'unread',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `subject`, `message`, `status`, `created_at`) VALUES
(1, 'Test User', 'test@gmail.com', 'Testing', 'Hello Mukib', 'unread', '2026-06-11 18:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type` enum('education','job','research') DEFAULT 'education',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `title`, `organization`, `start_date`, `end_date`, `description`, `type`, `created_at`) VALUES
(1, 'BSc in Computer Science & Engineering', 'International University of Business Agriculture and Technology (IUBAT)', '2023-01-01', '2027-08-01', 'Undergraduate student focused on Artificial Intelligence, Computer Vision, and Intelligent Systems.', 'education', '2026-05-17 12:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `full_description` longtext DEFAULT NULL,
  `tech_stack` text DEFAULT NULL,
  `github_link` varchar(255) DEFAULT NULL,
  `live_demo_link` varchar(255) DEFAULT NULL,
  `project_image` varchar(255) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT 0,
  `status` enum('published','draft') DEFAULT 'published',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `slug`, `category`, `short_description`, `full_description`, `tech_stack`, `github_link`, `live_demo_link`, `project_image`, `featured`, `status`, `created_at`) VALUES
(1, 'Online Quiz System', NULL, 'Web', 'Modern quiz platform with leaderboard and admin dashboard.', NULL, NULL, 'https://github.com/MukibHossain/Online-Quiz-System', NULL, 'quiz-system.png', 1, 'published', '2026-05-17 12:52:55'),
(2, 'Community Crime/Incident Reporter', NULL, 'Research', 'Advanced incident reporting platform with map visualization.', NULL, NULL, 'https://github.com/MukibHossain/Community-Crime-Incident-Reporter', NULL, 'crime-reporter.png', 1, 'published', '2026-05-17 12:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `research_papers`
--

CREATE TABLE `research_papers` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `abstract` text DEFAULT NULL,
  `publication_type` varchar(100) DEFAULT NULL,
  `publication_name` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `doi_link` varchar(255) DEFAULT NULL,
  `pdf_link` varchar(255) DEFAULT NULL,
  `publication_year` year(4) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `research_papers`
--

INSERT INTO `research_papers` (`id`, `title`, `abstract`, `publication_type`, `publication_name`, `status`, `doi_link`, `pdf_link`, `publication_year`, `keywords`, `created_at`) VALUES
(1, 'Visual Comfort Assessment for a Comparative Analysis of Dominant Features Using Machine Learning in Naturally Ventilated Cafeterias', NULL, NULL, 'Journal Submission', 'Under Review', '', NULL, '2026', NULL, '2026-05-17 12:52:55'),
(2, 'Predicting Indoor Air Quality in Naturally Ventilated University Cafeterias Using Regression-Based Machine Learning Model', NULL, NULL, 'Journal Submission', 'Under Review', '', NULL, '2026', NULL, '2026-05-17 12:52:55'),
(3, 'Feature Ranking for Predicting Inhabitant Thermal Comfort in Urban Landscapes Using Machine Learning for Sustainable and Climate-Resilient Design', NULL, NULL, 'Proceedings of the International Conference on Current Problems in Engineering and Applied Sciences', 'Published Abstract', 'https://doi.org/10.2991/978-94-6239-668-5_93', NULL, '2025', NULL, '2026-05-17 12:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `skill_name` varchar(100) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `proficiency` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill_name`, `category`, `proficiency`, `created_at`) VALUES
(1, 'Python', 'Programming', 95, '2026-05-17 12:52:55'),
(2, 'C', 'Programming', 85, '2026-05-17 12:52:55'),
(3, 'C++', 'Programming', 80, '2026-05-17 12:52:55'),
(4, 'NumPy', 'AI/ML', 90, '2026-05-17 12:52:55'),
(5, 'Pandas', 'AI/ML', 90, '2026-05-17 12:52:55'),
(6, 'Requests', 'AI/ML', 85, '2026-05-17 12:52:55'),
(7, 'Matplotlib', 'AI/ML', 85, '2026-05-17 12:52:55'),
(8, 'Scikit-learn', 'AI/ML', 90, '2026-05-17 12:52:55'),
(9, 'PyTorch', 'AI/ML', 85, '2026-05-17 12:52:55'),
(10, 'TensorFlow', 'AI/ML', 80, '2026-05-17 12:52:55'),
(11, 'OpenCV', 'AI/ML', 80, '2026-05-17 12:52:55'),
(12, 'PHP', 'Web', 85, '2026-05-17 12:52:55'),
(13, 'MySQL', 'Database', 85, '2026-05-17 12:52:55'),
(14, 'JavaScript', 'Web', 80, '2026-05-17 12:52:55'),
(15, 'Bootstrap', 'Web', 85, '2026-05-17 12:52:55'),
(16, 'AJAX', 'Web', 75, '2026-05-17 12:52:55'),
(17, 'Django', 'Web', 70, '2026-05-17 12:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(11) NOT NULL,
  `platform` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `platform`, `icon`, `link`, `created_at`) VALUES
(1, 'GitHub', 'fab fa-github', 'https://github.com/MukibHossain', '2026-05-17 12:52:55'),
(2, 'LinkedIn', 'fab fa-linkedin', 'https://www.linkedin.com/in/mukibhossain/', '2026-05-17 12:52:55'),
(3, 'ResearchGate', 'fas fa-flask', 'https://www.researchgate.net/profile/Md-Al-Hossain-Mukib', '2026-05-17 12:52:55'),
(4, 'Google Scholar', 'fas fa-graduation-cap', 'https://scholar.google.com/citations?user=p8k7WiEAAAAJ&hl=en&authuser=2', '2026-05-17 12:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `profile_image` varchar(255) DEFAULT 'default.png',
  `bio` text DEFAULT NULL,
  `github_link` varchar(255) DEFAULT NULL,
  `linkedin_link` varchar(255) DEFAULT NULL,
  `researchgate_link` varchar(255) DEFAULT NULL,
  `scholar_link` varchar(255) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT 0,
  `status` enum('active','blocked') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `email`, `phone`, `password`, `role`, `profile_image`, `bio`, `github_link`, `linkedin_link`, `researchgate_link`, `scholar_link`, `is_verified`, `status`, `created_at`) VALUES
(1, 'Md Al Hossain Mukib', 'admin', 'mdalhossainmukib@gmail.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'default.png', NULL, NULL, NULL, NULL, NULL, 1, 'active', '2026-05-17 12:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `browser_info` text DEFAULT NULL,
  `visited_page` varchar(255) DEFAULT NULL,
  `visited_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--

