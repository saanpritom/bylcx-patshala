-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 19, 2018 at 08:55 AM
-- Server version: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `patshala`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add course data', 7, 'add_coursedata'),
(26, 'Can change course data', 7, 'change_coursedata'),
(27, 'Can delete course data', 7, 'delete_coursedata'),
(28, 'Can view course data', 7, 'view_coursedata'),
(29, 'Can add lecture data', 8, 'add_lecturedata'),
(30, 'Can change lecture data', 8, 'change_lecturedata'),
(31, 'Can delete lecture data', 8, 'delete_lecturedata'),
(32, 'Can view lecture data', 8, 'view_lecturedata'),
(33, 'Can add school data', 9, 'add_schooldata'),
(34, 'Can change school data', 9, 'change_schooldata'),
(35, 'Can delete school data', 9, 'delete_schooldata'),
(36, 'Can view school data', 9, 'view_schooldata');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$snQcrJE8YjIm$3KkBQO0kHHVxOPWTqSYFUL9gF5ADlN1QZIO3tZEDlOM=', '2018-11-19 06:07:18.011690', 1, 'root', '', '', 'pritom@bylc.org', 1, 1, '2018-10-30 05:06:00.370000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-10-30 10:08:14.940000', '1', 'Programming School', 1, '[{\"added\": {}}]', 9, 1),
(2, '2018-10-30 10:08:29.314000', '2', 'Management School', 1, '[{\"added\": {}}]', 9, 1),
(3, '2018-10-30 10:08:39.393000', '3', 'Leadership School', 1, '[{\"added\": {}}]', 9, 1),
(4, '2018-10-30 10:08:47.672000', '4', 'Data School', 1, '[{\"added\": {}}]', 9, 1),
(5, '2018-10-30 10:09:17.385000', '5', 'Communication School', 1, '[{\"added\": {}}]', 9, 1),
(6, '2018-10-30 10:11:19.474000', '1', 'Learn Python with Fun', 1, '[{\"added\": {}}]', 7, 1),
(7, '2018-10-30 10:13:06.502000', '2', 'JS with CoffeeScript', 1, '[{\"added\": {}}]', 7, 1),
(8, '2018-10-30 10:14:30.898000', '3', 'Web Designing', 1, '[{\"added\": {}}]', 7, 1),
(9, '2018-10-30 10:20:38.109000', '1', 'Python Variables', 1, '[{\"added\": {}}]', 8, 1),
(10, '2018-10-30 10:20:47.844000', '1', 'Python Variables', 2, '[]', 8, 1),
(11, '2018-10-30 10:22:44.372000', '2', 'Python Conditions', 1, '[{\"added\": {}}]', 8, 1),
(12, '2018-10-30 10:24:35.276000', '3', 'Python While Loop', 1, '[{\"added\": {}}]', 8, 1),
(13, '2018-10-30 10:24:50.540000', '3', 'Python While Loop', 2, '[{\"changed\": {\"fields\": [\"previous_video_link\"]}}]', 8, 1),
(14, '2018-10-30 10:25:48.792000', '4', 'Python For Loop', 1, '[{\"added\": {}}]', 8, 1),
(15, '2018-10-31 04:46:55.264000', '1', 'Python Variables', 2, '[{\"changed\": {\"fields\": [\"lecture_video_link\", \"next_video_link\"]}}]', 8, 1),
(16, '2018-10-31 04:47:57.930000', '2', 'Python Conditions', 2, '[{\"changed\": {\"fields\": [\"lecture_video_link\", \"previous_video_link\", \"next_video_link\"]}}]', 8, 1),
(17, '2018-10-31 04:48:38.784000', '3', 'Python While Loop', 2, '[{\"changed\": {\"fields\": [\"lecture_video_link\", \"previous_video_link\", \"next_video_link\"]}}]', 8, 1),
(18, '2018-10-31 04:48:55.961000', '4', 'Python For Loop', 2, '[{\"changed\": {\"fields\": [\"lecture_video_link\", \"previous_video_link\"]}}]', 8, 1),
(19, '2018-10-31 09:41:15.475000', '5', 'Python OOP', 1, '[{\"added\": {}}]', 8, 1),
(20, '2018-10-31 12:05:12.627000', '5', 'Python OOP', 2, '[{\"changed\": {\"fields\": [\"enable_description\"]}}]', 8, 1),
(21, '2018-11-01 06:57:10.731000', '6', 'CoffeScript Loop', 1, '[{\"added\": {}}]', 8, 1),
(22, '2018-11-05 09:03:35.679000', '5', 'Communication School', 2, '[{\"changed\": {\"fields\": [\"card_color\"]}}]', 9, 1),
(23, '2018-11-05 09:03:53.686000', '4', 'Data School', 2, '[{\"changed\": {\"fields\": [\"card_color\"]}}]', 9, 1),
(24, '2018-11-05 09:04:18.754000', '3', 'Leadership School', 2, '[{\"changed\": {\"fields\": [\"card_color\"]}}]', 9, 1),
(25, '2018-11-05 09:04:32.591000', '2', 'Management School', 2, '[{\"changed\": {\"fields\": [\"card_color\"]}}]', 9, 1),
(26, '2018-11-05 09:04:47.562000', '1', 'Programming School', 2, '[{\"changed\": {\"fields\": [\"card_color\"]}}]', 9, 1),
(27, '2018-11-05 09:47:29.107000', '5', 'Communication', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 9, 1),
(28, '2018-11-05 09:47:34.875000', '4', 'Data', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 9, 1),
(29, '2018-11-05 09:47:41.524000', '3', 'Leadership', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 9, 1),
(30, '2018-11-05 09:47:46.585000', '2', 'Management', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 9, 1),
(31, '2018-11-05 09:47:54.283000', '1', 'Programming', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 9, 1),
(32, '2018-11-05 11:23:53.811000', '5', 'Communication', 2, '[{\"changed\": {\"fields\": [\"card_color\"]}}]', 9, 1),
(33, '2018-11-05 11:24:36.454000', '4', 'Data', 2, '[{\"changed\": {\"fields\": [\"card_color\"]}}]', 9, 1),
(34, '2018-11-05 11:24:53.234000', '3', 'Leadership', 2, '[{\"changed\": {\"fields\": [\"card_color\"]}}]', 9, 1),
(35, '2018-11-05 11:25:12.333000', '2', 'Management', 2, '[{\"changed\": {\"fields\": [\"card_color\"]}}]', 9, 1),
(36, '2018-11-05 11:25:29.168000', '1', 'Programming', 2, '[{\"changed\": {\"fields\": [\"card_color\"]}}]', 9, 1),
(37, '2018-11-19 06:08:51.518084', '4', 'BBLT', 1, '[{\"added\": {}}]', 7, 1),
(38, '2018-11-19 06:11:04.100095', '7', '7', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'school_app', 'coursedata'),
(8, 'school_app', 'lecturedata'),
(9, 'school_app', 'schooldata'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-11-19 06:04:49.953868'),
(2, 'auth', '0001_initial', '2018-11-19 06:04:50.728959'),
(3, 'admin', '0001_initial', '2018-11-19 06:04:51.022769'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-11-19 06:04:51.031943'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2018-11-19 06:04:51.042101'),
(6, 'contenttypes', '0002_remove_content_type_name', '2018-11-19 06:04:51.143200'),
(7, 'auth', '0002_alter_permission_name_max_length', '2018-11-19 06:04:51.184994'),
(8, 'auth', '0003_alter_user_email_max_length', '2018-11-19 06:04:51.224352'),
(9, 'auth', '0004_alter_user_username_opts', '2018-11-19 06:04:51.233109'),
(10, 'auth', '0005_alter_user_last_login_null', '2018-11-19 06:04:51.270733'),
(11, 'auth', '0006_require_contenttypes_0002', '2018-11-19 06:04:51.274235'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2018-11-19 06:04:51.283373'),
(13, 'auth', '0008_alter_user_username_max_length', '2018-11-19 06:04:51.348023'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2018-11-19 06:04:51.405527'),
(15, 'school_app', '0001_initial', '2018-11-19 06:04:51.537319'),
(16, 'school_app', '0002_auto_20181030_1020', '2018-11-19 06:04:51.544425'),
(17, 'school_app', '0003_auto_20181031_0937', '2018-11-19 06:04:51.612779'),
(18, 'school_app', '0004_schooldata_card_color', '2018-11-19 06:04:51.647828'),
(19, 'school_app', '0005_auto_20181111_0845', '2018-11-19 06:04:51.793902'),
(20, 'sessions', '0001_initial', '2018-11-19 06:04:51.858325');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('booic9h5mtr5ymyxqypdw1qjwbxrs9uh', 'NjJkZjYwNWQ3NWNhN2FhMTRjMDIzNGU5NGJkYjhlZTc0YmRhMDk3ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YWVkNDFhYjM0NjcwMjE4NGU3NWVlNzQ0ZTE2NWQ0ZjM4YmU0YjNmIn0=', '2018-12-03 06:07:18.028485'),
('z8viqondzb6bjt84gcty9eeitfv8fy6h', 'NjJkZjYwNWQ3NWNhN2FhMTRjMDIzNGU5NGJkYjhlZTc0YmRhMDk3ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YWVkNDFhYjM0NjcwMjE4NGU3NWVlNzQ0ZTE2NWQ0ZjM4YmU0YjNmIn0=', '2018-11-14 04:46:17.536000');

-- --------------------------------------------------------

--
-- Table structure for table `school_app_coursedata`
--

DROP TABLE IF EXISTS `school_app_coursedata`;
CREATE TABLE `school_app_coursedata` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` longtext NOT NULL,
  `search_token` longtext NOT NULL,
  `school_id` int(11) NOT NULL,
  `model_name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `school_app_coursedata`
--

INSERT INTO `school_app_coursedata` (`id`, `name`, `description`, `search_token`, `school_id`, `model_name`) VALUES
(1, 'Learn Python with Fun', 'Learn Python programming language. This course covered the basic of Python', 'Programming, Python, Beginner', 1, 'CourseData'),
(2, 'JS with CoffeeScript', 'JavaScript ES6 modules are great way to learn and it\'s also a grammar for the JS Developers', 'JavaScript, JS, Programming, Developers', 1, 'CourseData'),
(3, 'Web Designing', 'Beginner lever course for those who wants to learn HTML5, CSS3', 'web, html', 1, 'CourseData'),
(4, 'BBLT', 'Building Bridges through Leadership Training', 'Leadership, BBLT, Training, Bridge', 3, 'CourseData');

-- --------------------------------------------------------

--
-- Table structure for table `school_app_lecturedata`
--

DROP TABLE IF EXISTS `school_app_lecturedata`;
CREATE TABLE `school_app_lecturedata` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `lecture_video_link` varchar(356) NOT NULL,
  `description` longtext NOT NULL,
  `enable_description` tinyint(1) NOT NULL,
  `search_token` longtext NOT NULL,
  `course_id` int(11) NOT NULL,
  `model_name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `school_app_lecturedata`
--

INSERT INTO `school_app_lecturedata` (`id`, `name`, `lecture_video_link`, `description`, `enable_description`, `search_token`, `course_id`, `model_name`) VALUES
(1, 'Python Variables', 'https://www.youtube.com/embed/vKqVnr0BEJQ', 'Basic overview of python variables', 1, 'python, programming, variables', 1, 'LectureData'),
(2, 'Python Conditions', 'https://www.youtube.com/embed/qf0sfRZ0hHc', 'Just watch the video', 1, 'python, if, else, conditions', 1, 'LectureData'),
(3, 'Python While Loop', 'https://www.youtube.com/embed/jSs58VZVLw8', 'While loop in Python', 1, 'while, python', 1, 'LectureData'),
(4, 'Python For Loop', 'https://www.youtube.com/embed/xtXexPSfcZg', 'Basic for loop concept for Python', 1, 'Python, for, loop', 1, 'LectureData'),
(5, 'Python OOP', 'https://www.youtube.com/embed/SRu1GAfr3LA', 'Python Object Oriented Programming tutorial for advanced users', 0, 'python, OOP, advanced', 1, 'LectureData'),
(6, 'CoffeScript Loop', 'https://www.youtube.com/embed/LwYGPc-6sa0', 'This is coffee script. A version of JS script. You must have to know basic JavaScript to continue this course', 1, 'JS, JavaScript, loop, advanced', 2, 'LectureData'),
(7, 'Introduction', 'https://www.youtube.com/embed/kDmQq_oce88', 'Introducing BBLT', 1, 'Leadership, BBLT, Training, Intorduction', 4, 'LectureData');

-- --------------------------------------------------------

--
-- Table structure for table `school_app_schooldata`
--

DROP TABLE IF EXISTS `school_app_schooldata`;
CREATE TABLE `school_app_schooldata` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `card_color` varchar(256) NOT NULL,
  `model_name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `school_app_schooldata`
--

INSERT INTO `school_app_schooldata` (`id`, `name`, `card_color`, `model_name`) VALUES
(1, 'Programming', 'rgb(236, 201, 23)', 'SchoolData'),
(2, 'Management', 'rgb(255, 139, 171)', 'SchoolData'),
(3, 'Leadership', 'rgb(255, 84, 131)', 'SchoolData'),
(4, 'Data', 'rgb(2, 204, 186)', 'SchoolData'),
(5, 'Communication', 'rgb(190, 133, 233)', 'SchoolData');

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
-- Indexes for table `school_app_coursedata`
--
ALTER TABLE `school_app_coursedata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_app_coursedat_school_id_9c8efc4a_fk_school_ap` (`school_id`);

--
-- Indexes for table `school_app_lecturedata`
--
ALTER TABLE `school_app_lecturedata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_app_lectureda_course_id_a1638949_fk_school_ap` (`course_id`);

--
-- Indexes for table `school_app_schooldata`
--
ALTER TABLE `school_app_schooldata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `school_app_coursedata`
--
ALTER TABLE `school_app_coursedata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `school_app_lecturedata`
--
ALTER TABLE `school_app_lecturedata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `school_app_schooldata`
--
ALTER TABLE `school_app_schooldata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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

--
-- Constraints for table `school_app_coursedata`
--
ALTER TABLE `school_app_coursedata`
  ADD CONSTRAINT `school_app_coursedat_school_id_9c8efc4a_fk_school_ap` FOREIGN KEY (`school_id`) REFERENCES `school_app_schooldata` (`id`);

--
-- Constraints for table `school_app_lecturedata`
--
ALTER TABLE `school_app_lecturedata`
  ADD CONSTRAINT `school_app_lectureda_course_id_a1638949_fk_school_ap` FOREIGN KEY (`course_id`) REFERENCES `school_app_coursedata` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
