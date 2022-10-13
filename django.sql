-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2022 at 03:22 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'site_header');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$ufOb5tY2Zmt7VmQBVDLqkO$mPYd13+6UzePsRkboPnzxunML6gPQX8hxtUz+ranqHw=', '2022-10-13 11:50:06.321619', 1, 'dipanshuroy', 'Dipanshu', 'Roy', 'dipanshu.roy68@gmail.com', 1, 1, '2022-03-10 06:47:56.000000'),
(2, 'pbkdf2_sha256$320000$423dQElTVMniyAeHNNawNj$TYLtxAUCWyJECwvg7e3Y2lKNQaFfzi0Rip/4kbXSv5Q=', NULL, 0, 'ankit', 'Ankit', 'Sharma', 'ankit@gmail.com', 0, 1, '2022-03-10 06:51:47.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-03-10 06:51:48.034160', '2', 'ankit', 1, '[{\"added\": {}}]', 4, 1),
(2, '2022-03-10 06:53:13.176024', '2', 'ankit', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1),
(3, '2022-03-10 06:54:36.792778', '1', 'dipanshuroy', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 4, 1),
(4, '2022-03-10 07:01:52.098101', '1', 'dipanshuroy', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1),
(5, '2022-03-10 07:02:39.331259', '1', 'dipanshuroy', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1),
(6, '2022-03-10 07:03:10.365795', '1', 'site_header', 1, '[{\"added\": {}}]', 3, 1),
(7, '2022-03-10 07:03:41.479374', '1', 'site_header', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 1),
(8, '2022-03-10 07:04:07.900152', '1', 'site_header', 2, '[]', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-03-10 06:43:09.368734'),
(2, 'auth', '0001_initial', '2022-03-10 06:43:09.956537'),
(3, 'admin', '0001_initial', '2022-03-10 06:43:10.064579'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-03-10 06:43:10.074572'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-03-10 06:43:10.085565'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-03-10 06:43:10.156521'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-03-10 06:43:10.241661'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-03-10 06:43:10.261649'),
(9, 'auth', '0004_alter_user_username_opts', '2022-03-10 06:43:10.272643'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-03-10 06:43:10.322611'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-03-10 06:43:10.325872'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-03-10 06:43:10.335866'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-03-10 06:43:10.357852'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-03-10 06:43:10.379839'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-03-10 06:43:10.404823'),
(16, 'auth', '0011_update_proxy_permissions', '2022-03-10 06:43:10.418815'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-03-10 06:43:10.438803'),
(18, 'sessions', '0001_initial', '2022-03-10 06:43:10.475339');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0jihgc7keyqmmwc19wpwfkzydo6c4nek', '.eJxVjEEOwiAQRe_C2hAYGEhduvcMZIBBqgaS0q6Md9cmXej2v_f-SwTa1hq2wUuYszgLLU6_W6T04LaDfKd26zL1ti5zlLsiDzrktWd-Xg7376DSqN_ae5wAnWWnibg4pcBRMWQTa0qmZNIWCkFUmIxWERiBC_qExvkJnHh_AODeN7k:1nSCbZ:f5F7nvxwDEjmrmoStcr8DnEItox-kAuPcrBwaEK3O2c', '2022-03-24 06:48:57.099269'),
('am8qane3l8kizly83iyf4te1f0ems3sy', '.eJxVjEEOwiAQRe_C2hAYGEhduvcMZIBBqgaS0q6Md9cmXej2v_f-SwTa1hq2wUuYszgLLU6_W6T04LaDfKd26zL1ti5zlLsiDzrktWd-Xg7376DSqN_ae5wAnWWnibg4pcBRMWQTa0qmZNIWCkFUmIxWERiBC_qExvkJnHh_AODeN7k:1oiwj0:3spjpfU5qNEY_-MyJrPqn_W-ry5P3rb8MhCI4Gf3jmE', '2022-10-27 11:50:06.324700'),
('ziko2ogl3ytlayvgjwpzb970x8wrc4k1', '.eJxVjEEOwiAQRe_C2hAYGEhduvcMZIBBqgaS0q6Md9cmXej2v_f-SwTa1hq2wUuYszgLLU6_W6T04LaDfKd26zL1ti5zlLsiDzrktWd-Xg7376DSqN_ae5wAnWWnibg4pcBRMWQTa0qmZNIWCkFUmIxWERiBC_qExvkJnHh_AODeN7k:1odmsr:CUhicbLyFw5IsSDAn5BSrtbCoyOOp4bawSz_eigOgag', '2022-10-13 06:18:57.009719');

-- --------------------------------------------------------

--
-- Table structure for table `lt_notification`
--

CREATE TABLE `lt_notification` (
  `id` int(11) NOT NULL,
  `msg_title` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg_desc` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notication_type` int(1) NOT NULL DEFAULT 0,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_id` int(11) NOT NULL DEFAULT 0,
  `customer_id` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `employe_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_id` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_id` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visit_allowed_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `tenon_connect` int(1) NOT NULL DEFAULT 0 COMMENT '0=>Letter,1=>Connect',
  `status` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_sent_notification`
--

CREATE TABLE `tl_sent_notification` (
  `id` int(11) NOT NULL,
  `employe_id` text NOT NULL,
  `notication_type` int(1) NOT NULL DEFAULT 0,
  `branch_id` int(11) NOT NULL DEFAULT 0,
  `customer_id` varchar(1000) NOT NULL,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `emp_id` text DEFAULT NULL,
  `group_id` varchar(1000) DEFAULT NULL,
  `title_id` varchar(1000) DEFAULT NULL,
  `visit_allowed_id` int(1) NOT NULL DEFAULT 0,
  `msg_title` varchar(225) DEFAULT NULL,
  `msg_desc` varchar(1000) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `totat_sent` int(11) NOT NULL DEFAULT 0,
  `totat_failure` int(11) NOT NULL DEFAULT 0,
  `is_view` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `tenon_connect` int(1) NOT NULL DEFAULT 0 COMMENT '0=>Letter,1=>Connect',
  `shoot_date` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `lt_notification`
--
ALTER TABLE `lt_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_sent_notification`
--
ALTER TABLE `tl_sent_notification`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `lt_notification`
--
ALTER TABLE `lt_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_sent_notification`
--
ALTER TABLE `tl_sent_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
