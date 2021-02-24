-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 02, 2020 at 03:19 PM
-- Server version: 8.0.22-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bires_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'Editors'),
(1, 'Moderators');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(4, 1, 1),
(5, 1, 2),
(6, 1, 3),
(8, 1, 4),
(12, 1, 5),
(13, 1, 6),
(14, 1, 7),
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(7, 2, 4),
(9, 2, 5),
(10, 2, 6),
(11, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add image', 2, 'add_image'),
(2, 'Can change image', 2, 'change_image'),
(3, 'Can delete image', 2, 'delete_image'),
(4, 'Can access Wagtail admin', 4, 'access_admin'),
(5, 'Can add document', 5, 'add_document'),
(6, 'Can change document', 5, 'change_document'),
(7, 'Can delete document', 5, 'delete_document'),
(8, 'Can add Home Page', 6, 'add_homepage'),
(9, 'Can change Home Page', 6, 'change_homepage'),
(10, 'Can delete Home Page', 6, 'delete_homepage'),
(11, 'Can view Home Page', 6, 'view_homepage'),
(12, 'Can add Custom Page', 7, 'add_custompage'),
(13, 'Can change Custom Page', 7, 'change_custompage'),
(14, 'Can delete Custom Page', 7, 'delete_custompage'),
(15, 'Can view Custom Page', 7, 'view_custompage'),
(16, 'Can add Project Category', 8, 'add_projectcategory'),
(17, 'Can change Project Category', 8, 'change_projectcategory'),
(18, 'Can delete Project Category', 8, 'delete_projectcategory'),
(19, 'Can view Project Category', 8, 'view_projectcategory'),
(20, 'Can add Project Detail Page', 9, 'add_projectdetailpage'),
(21, 'Can change Project Detail Page', 9, 'change_projectdetailpage'),
(22, 'Can delete Project Detail Page', 9, 'delete_projectdetailpage'),
(23, 'Can view Project Detail Page', 9, 'view_projectdetailpage'),
(24, 'Can add Project Listing Page', 10, 'add_projectlistingpage'),
(25, 'Can change Project Listing Page', 10, 'change_projectlistingpage'),
(26, 'Can delete Project Listing Page', 10, 'delete_projectlistingpage'),
(27, 'Can view Project Listing Page', 10, 'view_projectlistingpage'),
(28, 'Can add Project Request', 11, 'add_projectrequest'),
(29, 'Can change Project Request', 11, 'change_projectrequest'),
(30, 'Can delete Project Request', 11, 'delete_projectrequest'),
(31, 'Can view Project Request', 11, 'view_projectrequest'),
(32, 'Can add project part', 12, 'add_projectpart'),
(33, 'Can change project part', 12, 'change_projectpart'),
(34, 'Can delete project part', 12, 'delete_projectpart'),
(35, 'Can view project part', 12, 'view_projectpart'),
(36, 'Can add project detail page carousel', 13, 'add_projectdetailpagecarousel'),
(37, 'Can change project detail page carousel', 13, 'change_projectdetailpagecarousel'),
(38, 'Can delete project detail page carousel', 13, 'delete_projectdetailpagecarousel'),
(39, 'Can view project detail page carousel', 13, 'view_projectdetailpagecarousel'),
(40, 'Can add Blog Category', 14, 'add_blogcategory'),
(41, 'Can change Blog Category', 14, 'change_blogcategory'),
(42, 'Can delete Blog Category', 14, 'delete_blogcategory'),
(43, 'Can view Blog Category', 14, 'view_blogcategory'),
(44, 'Can add Blog Listing Page', 15, 'add_bloglistingpage'),
(45, 'Can change Blog Listing Page', 15, 'change_bloglistingpage'),
(46, 'Can delete Blog Listing Page', 15, 'delete_bloglistingpage'),
(47, 'Can view Blog Listing Page', 15, 'view_bloglistingpage'),
(48, 'Can add Blog Tag', 16, 'add_blogtag'),
(49, 'Can change Blog Tag', 16, 'change_blogtag'),
(50, 'Can delete Blog Tag', 16, 'delete_blogtag'),
(51, 'Can view Blog Tag', 16, 'view_blogtag'),
(52, 'Can add Blog Detail Page', 17, 'add_blogdetailpage'),
(53, 'Can change Blog Detail Page', 17, 'change_blogdetailpage'),
(54, 'Can delete Blog Detail Page', 17, 'delete_blogdetailpage'),
(55, 'Can view Blog Detail Page', 17, 'view_blogdetailpage'),
(56, 'Can add site settings', 18, 'add_sitesettings'),
(57, 'Can change site settings', 18, 'change_sitesettings'),
(58, 'Can delete site settings', 18, 'delete_sitesettings'),
(59, 'Can view site settings', 18, 'view_sitesettings'),
(60, 'Can add Realtor Detail Page', 19, 'add_realtordetailpage'),
(61, 'Can change Realtor Detail Page', 19, 'change_realtordetailpage'),
(62, 'Can delete Realtor Detail Page', 19, 'delete_realtordetailpage'),
(63, 'Can view Realtor Detail Page', 19, 'view_realtordetailpage'),
(64, 'Can add Realtor Listing Page', 20, 'add_realtorlistingpage'),
(65, 'Can change Realtor Listing Page', 20, 'change_realtorlistingpage'),
(66, 'Can delete Realtor Listing Page', 20, 'delete_realtorlistingpage'),
(67, 'Can view Realtor Listing Page', 20, 'view_realtorlistingpage'),
(68, 'Can add realtor project', 21, 'add_realtorproject'),
(69, 'Can change realtor project', 21, 'change_realtorproject'),
(70, 'Can delete realtor project', 21, 'delete_realtorproject'),
(71, 'Can view realtor project', 21, 'view_realtorproject'),
(72, 'Can add Question And Answer', 22, 'add_questionanswer'),
(73, 'Can change Question And Answer', 22, 'change_questionanswer'),
(74, 'Can delete Question And Answer', 22, 'delete_questionanswer'),
(75, 'Can view Question And Answer', 22, 'view_questionanswer'),
(76, 'Can add question answer project', 23, 'add_questionanswerproject'),
(77, 'Can change question answer project', 23, 'change_questionanswerproject'),
(78, 'Can delete question answer project', 23, 'delete_questionanswerproject'),
(79, 'Can view question answer project', 23, 'view_questionanswerproject'),
(80, 'Can add question answer detail', 24, 'add_questionanswerdetail'),
(81, 'Can change question answer detail', 24, 'change_questionanswerdetail'),
(82, 'Can delete question answer detail', 24, 'delete_questionanswerdetail'),
(83, 'Can view question answer detail', 24, 'view_questionanswerdetail'),
(84, 'Can add question answer custom page', 25, 'add_questionanswercustompage'),
(85, 'Can change question answer custom page', 25, 'change_questionanswercustompage'),
(86, 'Can delete question answer custom page', 25, 'delete_questionanswercustompage'),
(87, 'Can view question answer custom page', 25, 'view_questionanswercustompage'),
(88, 'Can add question answer blog', 26, 'add_questionanswerblog'),
(89, 'Can change question answer blog', 26, 'change_questionanswerblog'),
(90, 'Can delete question answer blog', 26, 'delete_questionanswerblog'),
(91, 'Can view question answer blog', 26, 'view_questionanswerblog'),
(92, 'Can add qa detail question answer', 27, 'add_qadetailquestionanswer'),
(93, 'Can change qa detail question answer', 27, 'change_qadetailquestionanswer'),
(94, 'Can delete qa detail question answer', 27, 'delete_qadetailquestionanswer'),
(95, 'Can view qa detail question answer', 27, 'view_qadetailquestionanswer'),
(96, 'Can add request form page', 28, 'add_requestformpage'),
(97, 'Can change request form page', 28, 'change_requestformpage'),
(98, 'Can delete request form page', 28, 'delete_requestformpage'),
(99, 'Can view request form page', 28, 'view_requestformpage'),
(100, 'Can add form field', 29, 'add_formfield'),
(101, 'Can change form field', 29, 'change_formfield'),
(102, 'Can delete form field', 29, 'delete_formfield'),
(103, 'Can view form field', 29, 'view_formfield'),
(104, 'Can add menu', 30, 'add_menu'),
(105, 'Can change menu', 30, 'change_menu'),
(106, 'Can delete menu', 30, 'delete_menu'),
(107, 'Can view menu', 30, 'view_menu'),
(108, 'Can add menu item', 31, 'add_menuitem'),
(109, 'Can change menu item', 31, 'change_menuitem'),
(110, 'Can delete menu item', 31, 'delete_menuitem'),
(111, 'Can view menu item', 31, 'view_menuitem'),
(112, 'Can add form submission', 32, 'add_formsubmission'),
(113, 'Can change form submission', 32, 'change_formsubmission'),
(114, 'Can delete form submission', 32, 'delete_formsubmission'),
(115, 'Can view form submission', 32, 'view_formsubmission'),
(116, 'Can add redirect', 33, 'add_redirect'),
(117, 'Can change redirect', 33, 'change_redirect'),
(118, 'Can delete redirect', 33, 'delete_redirect'),
(119, 'Can view redirect', 33, 'view_redirect'),
(120, 'Can add embed', 34, 'add_embed'),
(121, 'Can change embed', 34, 'change_embed'),
(122, 'Can delete embed', 34, 'delete_embed'),
(123, 'Can view embed', 34, 'view_embed'),
(124, 'Can add user profile', 35, 'add_userprofile'),
(125, 'Can change user profile', 35, 'change_userprofile'),
(126, 'Can delete user profile', 35, 'delete_userprofile'),
(127, 'Can view user profile', 35, 'view_userprofile'),
(128, 'Can view document', 5, 'view_document'),
(129, 'Can view image', 2, 'view_image'),
(130, 'Can add rendition', 36, 'add_rendition'),
(131, 'Can change rendition', 36, 'change_rendition'),
(132, 'Can delete rendition', 36, 'delete_rendition'),
(133, 'Can view rendition', 36, 'view_rendition'),
(134, 'Can add uploaded image', 37, 'add_uploadedimage'),
(135, 'Can change uploaded image', 37, 'change_uploadedimage'),
(136, 'Can delete uploaded image', 37, 'delete_uploadedimage'),
(137, 'Can view uploaded image', 37, 'view_uploadedimage'),
(138, 'Can add query', 38, 'add_query'),
(139, 'Can change query', 38, 'change_query'),
(140, 'Can delete query', 38, 'delete_query'),
(141, 'Can view query', 38, 'view_query'),
(142, 'Can add Query Daily Hits', 39, 'add_querydailyhits'),
(143, 'Can change Query Daily Hits', 39, 'change_querydailyhits'),
(144, 'Can delete Query Daily Hits', 39, 'delete_querydailyhits'),
(145, 'Can view Query Daily Hits', 39, 'view_querydailyhits'),
(146, 'Can add page', 1, 'add_page'),
(147, 'Can change page', 1, 'change_page'),
(148, 'Can delete page', 1, 'delete_page'),
(149, 'Can view page', 1, 'view_page'),
(150, 'Can add group page permission', 40, 'add_grouppagepermission'),
(151, 'Can change group page permission', 40, 'change_grouppagepermission'),
(152, 'Can delete group page permission', 40, 'delete_grouppagepermission'),
(153, 'Can view group page permission', 40, 'view_grouppagepermission'),
(154, 'Can add page revision', 41, 'add_pagerevision'),
(155, 'Can change page revision', 41, 'change_pagerevision'),
(156, 'Can delete page revision', 41, 'delete_pagerevision'),
(157, 'Can view page revision', 41, 'view_pagerevision'),
(158, 'Can add page view restriction', 42, 'add_pageviewrestriction'),
(159, 'Can change page view restriction', 42, 'change_pageviewrestriction'),
(160, 'Can delete page view restriction', 42, 'delete_pageviewrestriction'),
(161, 'Can view page view restriction', 42, 'view_pageviewrestriction'),
(162, 'Can add site', 43, 'add_site'),
(163, 'Can change site', 43, 'change_site'),
(164, 'Can delete site', 43, 'delete_site'),
(165, 'Can view site', 43, 'view_site'),
(166, 'Can add collection', 44, 'add_collection'),
(167, 'Can change collection', 44, 'change_collection'),
(168, 'Can delete collection', 44, 'delete_collection'),
(169, 'Can view collection', 44, 'view_collection'),
(170, 'Can add group collection permission', 45, 'add_groupcollectionpermission'),
(171, 'Can change group collection permission', 45, 'change_groupcollectionpermission'),
(172, 'Can delete group collection permission', 45, 'delete_groupcollectionpermission'),
(173, 'Can view group collection permission', 45, 'view_groupcollectionpermission'),
(174, 'Can add collection view restriction', 46, 'add_collectionviewrestriction'),
(175, 'Can change collection view restriction', 46, 'change_collectionviewrestriction'),
(176, 'Can delete collection view restriction', 46, 'delete_collectionviewrestriction'),
(177, 'Can view collection view restriction', 46, 'view_collectionviewrestriction'),
(178, 'Can add task', 47, 'add_task'),
(179, 'Can change task', 47, 'change_task'),
(180, 'Can delete task', 47, 'delete_task'),
(181, 'Can view task', 47, 'view_task'),
(182, 'Can add Task state', 48, 'add_taskstate'),
(183, 'Can change Task state', 48, 'change_taskstate'),
(184, 'Can delete Task state', 48, 'delete_taskstate'),
(185, 'Can view Task state', 48, 'view_taskstate'),
(186, 'Can add workflow', 49, 'add_workflow'),
(187, 'Can change workflow', 49, 'change_workflow'),
(188, 'Can delete workflow', 49, 'delete_workflow'),
(189, 'Can view workflow', 49, 'view_workflow'),
(190, 'Can add Group approval task', 3, 'add_groupapprovaltask'),
(191, 'Can change Group approval task', 3, 'change_groupapprovaltask'),
(192, 'Can delete Group approval task', 3, 'delete_groupapprovaltask'),
(193, 'Can view Group approval task', 3, 'view_groupapprovaltask'),
(194, 'Can add Workflow state', 50, 'add_workflowstate'),
(195, 'Can change Workflow state', 50, 'change_workflowstate'),
(196, 'Can delete Workflow state', 50, 'delete_workflowstate'),
(197, 'Can view Workflow state', 50, 'view_workflowstate'),
(198, 'Can add workflow page', 51, 'add_workflowpage'),
(199, 'Can change workflow page', 51, 'change_workflowpage'),
(200, 'Can delete workflow page', 51, 'delete_workflowpage'),
(201, 'Can view workflow page', 51, 'view_workflowpage'),
(202, 'Can add workflow task order', 52, 'add_workflowtask'),
(203, 'Can change workflow task order', 52, 'change_workflowtask'),
(204, 'Can delete workflow task order', 52, 'delete_workflowtask'),
(205, 'Can view workflow task order', 52, 'view_workflowtask'),
(206, 'Can add page log entry', 53, 'add_pagelogentry'),
(207, 'Can change page log entry', 53, 'change_pagelogentry'),
(208, 'Can delete page log entry', 53, 'delete_pagelogentry'),
(209, 'Can view page log entry', 53, 'view_pagelogentry'),
(210, 'Can add locale', 54, 'add_locale'),
(211, 'Can change locale', 54, 'change_locale'),
(212, 'Can delete locale', 54, 'delete_locale'),
(213, 'Can view locale', 54, 'view_locale'),
(214, 'Can add tag', 55, 'add_tag'),
(215, 'Can change tag', 55, 'change_tag'),
(216, 'Can delete tag', 55, 'delete_tag'),
(217, 'Can view tag', 55, 'view_tag'),
(218, 'Can add tagged item', 56, 'add_taggeditem'),
(219, 'Can change tagged item', 56, 'change_taggeditem'),
(220, 'Can delete tagged item', 56, 'delete_taggeditem'),
(221, 'Can view tagged item', 56, 'view_taggeditem'),
(222, 'Can add log entry', 57, 'add_logentry'),
(223, 'Can change log entry', 57, 'change_logentry'),
(224, 'Can delete log entry', 57, 'delete_logentry'),
(225, 'Can view log entry', 57, 'view_logentry'),
(226, 'Can add permission', 58, 'add_permission'),
(227, 'Can change permission', 58, 'change_permission'),
(228, 'Can delete permission', 58, 'delete_permission'),
(229, 'Can view permission', 58, 'view_permission'),
(230, 'Can add group', 59, 'add_group'),
(231, 'Can change group', 59, 'change_group'),
(232, 'Can delete group', 59, 'delete_group'),
(233, 'Can view group', 59, 'view_group'),
(234, 'Can add user', 60, 'add_user'),
(235, 'Can change user', 60, 'change_user'),
(236, 'Can delete user', 60, 'delete_user'),
(237, 'Can view user', 60, 'view_user'),
(238, 'Can add content type', 61, 'add_contenttype'),
(239, 'Can change content type', 61, 'change_contenttype'),
(240, 'Can delete content type', 61, 'delete_contenttype'),
(241, 'Can view content type', 61, 'view_contenttype'),
(242, 'Can add session', 62, 'add_session'),
(243, 'Can change session', 62, 'change_session'),
(244, 'Can delete session', 62, 'delete_session'),
(245, 'Can view session', 62, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$y2PkLo7A8H0z$IN4jQH6WEP4fqSKMO+bMUO4Sfz96/m99i5n8L1HuAAU=', '2020-12-02 06:27:15.461298', 1, 'admin', '', '', '', 1, 1, '2020-12-02 02:41:31.323261');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogcategory`
--

CREATE TABLE `blog_blogcategory` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_blogcategory`
--

INSERT INTO `blog_blogcategory` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'general', 'general', '2020-12-02 03:14:25.583859', '2020-12-02 03:14:25.583912');

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogdetailpage`
--

CREATE TABLE `blog_blogdetailpage` (
  `page_ptr_id` int NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `featured_image_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_blogdetailpage`
--

INSERT INTO `blog_blogdetailpage` (`page_ptr_id`, `content`, `created_at`, `updated_at`, `featured_image_id`, `user_id`) VALUES
(11, '<p>Trái với suy nghĩ của nhiều người, Lorem Ipsum không chỉ đơn giản là văn bản ngẫu nhiên. Nó có nguồn gốc từ một tác phẩm văn học Latinh cổ điển từ năm 45 trước Công nguyên, đã có hơn 2000 năm tuổi. Richard McClintock, giáo sư tiếng Latinh tại Đại học Hampden-Sydney ở Virginia, đã tra cứu một trong những từ Latinh khó hiểu hơn, consectetur, từ một đoạn văn của Lorem Ipsum, và xem qua các trích dẫn của từ này trong văn học cổ điển, đã phát hiện ra nguồn gốc không thể chối cãi. Lorem Ipsum xuất phát từ phần 1.10.32 và 1.10.33 của &quot;de Finibus Bonorum et Malorum&quot; (Cực đoan của Thiện và Ác) của Cicero, được viết vào năm 45 trước Công nguyên. Cuốn sách này là một chuyên luận về lý thuyết đạo đức, rất phổ biến trong thời kỳ Phục hưng. Dòng đầu tiên của Lorem Ipsum, &quot;Lorem ipsum dolor sit amet ..&quot;, xuất phát từ một dòng trong phần 1.10.32.<br/><br/>Phân đoạn tiêu chuẩn của Lorem Ipsum được sử dụng từ những năm 1500 được tái tạo dưới đây cho những người quan tâm. Các phần 1.10.32 và 1.10.33 từ &quot;de Finibus Bonorum et Malorum&quot; của Cicero cũng được sao chép lại ở dạng nguyên bản chính xác, kèm theo các bản tiếng Anh từ bản dịch năm 1914 của H. Rackham.</p>', '2020-12-02 03:12:25.244000', '2020-12-02 08:15:13.412838', 1, 1),
(14, '<p>Có rất nhiều biến thể của Lorem Ipsum mà bạn có thể tìm thấy, nhưng đa số được biến đổi bằng cách thêm các yếu tố hài hước, các từ ngẫu nhiên có khi không có vẻ gì là có ý nghĩa. Nếu bạn định sử dụng một đoạn Lorem Ipsum, bạn nên kiểm tra kĩ để chắn chắn là không có gì nhạy cảm được giấu ở giữa đoạn văn bản. Tất cả các công cụ sản xuất văn bản mẫu Lorem Ipsum đều được làm theo cách lặp đi lặp lại các đoạn chữ cho tới đủ thì thôi, khiến cho lipsum.com trở thành công cụ sản xuất Lorem Ipsum đáng giá nhất trên mạng. Trang web này sử dụng hơn 200 từ la-tinh, kết hợp thuần thục nhiều cấu trúc câu để tạo ra văn bản Lorem Ipsum trông có vẻ thật sự hợp lí. Nhờ thế, văn bản Lorem Ipsum được tạo ra mà không cần một sự lặp lại nào, cũng không cần chèn thêm các từ ngữ hóm hỉnh hay thiếu trật tự.</p>', '2020-12-02 08:14:01.189000', '2020-12-02 08:16:07.475351', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogdetailpage_categories`
--

CREATE TABLE `blog_blogdetailpage_categories` (
  `id` int NOT NULL,
  `blogdetailpage_id` int NOT NULL,
  `blogcategory_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogdetailpage_tags`
--

CREATE TABLE `blog_blogdetailpage_tags` (
  `id` int NOT NULL,
  `blogdetailpage_id` int NOT NULL,
  `blogtag_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_bloglistingpage`
--

CREATE TABLE `blog_bloglistingpage` (
  `page_ptr_id` int NOT NULL,
  `title_on_homepage` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_bloglistingpage`
--

INSERT INTO `blog_bloglistingpage` (`page_ptr_id`, `title_on_homepage`) VALUES
(8, 'Blog gần đây nhất');

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogtag`
--

CREATE TABLE `blog_blogtag` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_form_formfield`
--

CREATE TABLE `custom_form_formfield` (
  `id` int NOT NULL,
  `sort_order` int DEFAULT NULL,
  `clean_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_type` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL,
  `choices` longtext COLLATE utf8_unicode_ci NOT NULL,
  `default_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `help_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_form_requestformpage`
--

CREATE TABLE `custom_form_requestformpage` (
  `page_ptr_id` int NOT NULL,
  `to_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `from_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thank_you_text` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_page_custompage`
--

CREATE TABLE `custom_page_custompage` (
  `page_ptr_id` int NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `custom_page_custompage`
--

INSERT INTO `custom_page_custompage` (`page_ptr_id`, `content`, `created_at`, `updated_at`) VALUES
(6, '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '2020-12-02 02:56:09.835000', '2020-12-02 02:56:09.919061'),
(9, '<p>Trái với suy nghĩ của nhiều người, Lorem Ipsum không chỉ đơn giản là văn bản ngẫu nhiên. Nó có nguồn gốc từ một tác phẩm văn học Latinh cổ điển từ năm 45 trước Công nguyên, đã có hơn 2000 năm tuổi. Richard McClintock, giáo sư tiếng Latinh tại Đại học Hampden-Sydney ở Virginia, đã tra cứu một trong những từ Latinh khó hiểu hơn, consectetur, từ một đoạn văn của Lorem Ipsum, và xem qua các trích dẫn của từ này trong văn học cổ điển, đã phát hiện ra nguồn gốc không thể chối cãi. Lorem Ipsum xuất phát từ phần 1.10.32 và 1.10.33 của &quot;de Finibus Bonorum et Malorum&quot; (Cực đoan của Thiện và Ác) của Cicero, được viết vào năm 45 trước Công nguyên. Cuốn sách này là một chuyên luận về lý thuyết đạo đức, rất phổ biến trong thời kỳ Phục hưng. Dòng đầu tiên của Lorem Ipsum, &quot;Lorem ipsum dolor sit amet ..&quot;, xuất phát từ một dòng trong phần 1.10.32.<br/><br/>Phân đoạn tiêu chuẩn của Lorem Ipsum được sử dụng từ những năm 1500 được tái tạo dưới đây cho những người quan tâm. Các phần 1.10.32 và 1.10.33 từ &quot;de Finibus Bonorum et Malorum&quot; của Cicero cũng được sao chép lại ở dạng nguyên bản chính xác, kèm theo các bản tiếng Anh từ bản dịch năm 1914 của H. Rackham.</p>', '2020-12-02 03:09:42.322000', '2020-12-02 03:09:42.371888');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(57, 'admin', 'logentry'),
(59, 'auth', 'group'),
(58, 'auth', 'permission'),
(60, 'auth', 'user'),
(14, 'blog', 'blogcategory'),
(17, 'blog', 'blogdetailpage'),
(15, 'blog', 'bloglistingpage'),
(16, 'blog', 'blogtag'),
(61, 'contenttypes', 'contenttype'),
(29, 'custom_form', 'formfield'),
(28, 'custom_form', 'requestformpage'),
(7, 'custom_page', 'custompage'),
(6, 'home', 'homepage'),
(30, 'menus', 'menu'),
(31, 'menus', 'menuitem'),
(8, 'project', 'projectcategory'),
(9, 'project', 'projectdetailpage'),
(13, 'project', 'projectdetailpagecarousel'),
(10, 'project', 'projectlistingpage'),
(12, 'project', 'projectpart'),
(11, 'project', 'projectrequest'),
(27, 'question_answer', 'qadetailquestionanswer'),
(22, 'question_answer', 'questionanswer'),
(26, 'question_answer', 'questionanswerblog'),
(25, 'question_answer', 'questionanswercustompage'),
(24, 'question_answer', 'questionanswerdetail'),
(23, 'question_answer', 'questionanswerproject'),
(19, 'realtor', 'realtordetailpage'),
(20, 'realtor', 'realtorlistingpage'),
(21, 'realtor', 'realtorproject'),
(62, 'sessions', 'session'),
(18, 'site_settings', 'sitesettings'),
(55, 'taggit', 'tag'),
(56, 'taggit', 'taggeditem'),
(4, 'wagtailadmin', 'admin'),
(44, 'wagtailcore', 'collection'),
(46, 'wagtailcore', 'collectionviewrestriction'),
(3, 'wagtailcore', 'groupapprovaltask'),
(45, 'wagtailcore', 'groupcollectionpermission'),
(40, 'wagtailcore', 'grouppagepermission'),
(54, 'wagtailcore', 'locale'),
(1, 'wagtailcore', 'page'),
(53, 'wagtailcore', 'pagelogentry'),
(41, 'wagtailcore', 'pagerevision'),
(42, 'wagtailcore', 'pageviewrestriction'),
(43, 'wagtailcore', 'site'),
(47, 'wagtailcore', 'task'),
(48, 'wagtailcore', 'taskstate'),
(49, 'wagtailcore', 'workflow'),
(51, 'wagtailcore', 'workflowpage'),
(50, 'wagtailcore', 'workflowstate'),
(52, 'wagtailcore', 'workflowtask'),
(5, 'wagtaildocs', 'document'),
(34, 'wagtailembeds', 'embed'),
(32, 'wagtailforms', 'formsubmission'),
(2, 'wagtailimages', 'image'),
(36, 'wagtailimages', 'rendition'),
(37, 'wagtailimages', 'uploadedimage'),
(33, 'wagtailredirects', 'redirect'),
(38, 'wagtailsearch', 'query'),
(39, 'wagtailsearch', 'querydailyhits'),
(35, 'wagtailusers', 'userprofile');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int NOT NULL,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-12-02 02:40:45.532005'),
(2, 'auth', '0001_initial', '2020-12-02 02:40:45.826817'),
(3, 'admin', '0001_initial', '2020-12-02 02:40:46.515137'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-12-02 02:40:46.705183'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-12-02 02:40:46.725482'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-12-02 02:40:46.874264'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-12-02 02:40:46.962992'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-12-02 02:40:47.071221'),
(9, 'auth', '0004_alter_user_username_opts', '2020-12-02 02:40:47.084766'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-12-02 02:40:47.141554'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-12-02 02:40:47.147109'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-12-02 02:40:47.160141'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-12-02 02:40:47.250566'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-12-02 02:40:47.363981'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-12-02 02:40:47.470134'),
(16, 'auth', '0011_update_proxy_permissions', '2020-12-02 02:40:47.498412'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-12-02 02:40:47.576089'),
(18, 'wagtailcore', '0001_initial', '2020-12-02 02:40:47.928437'),
(19, 'wagtailcore', '0002_initial_data', '2020-12-02 02:40:47.932076'),
(20, 'wagtailcore', '0003_add_uniqueness_constraint_on_group_page_permission', '2020-12-02 02:40:47.936212'),
(21, 'wagtailcore', '0004_page_locked', '2020-12-02 02:40:47.940237'),
(22, 'wagtailcore', '0005_add_page_lock_permission_to_moderators', '2020-12-02 02:40:47.944120'),
(23, 'wagtailcore', '0006_add_lock_page_permission', '2020-12-02 02:40:47.948191'),
(24, 'wagtailcore', '0007_page_latest_revision_created_at', '2020-12-02 02:40:47.951946'),
(25, 'wagtailcore', '0008_populate_latest_revision_created_at', '2020-12-02 02:40:47.956287'),
(26, 'wagtailcore', '0009_remove_auto_now_add_from_pagerevision_created_at', '2020-12-02 02:40:47.960174'),
(27, 'wagtailcore', '0010_change_page_owner_to_null_on_delete', '2020-12-02 02:40:47.964799'),
(28, 'wagtailcore', '0011_page_first_published_at', '2020-12-02 02:40:47.969264'),
(29, 'wagtailcore', '0012_extend_page_slug_field', '2020-12-02 02:40:47.973417'),
(30, 'wagtailcore', '0013_update_golive_expire_help_text', '2020-12-02 02:40:47.979014'),
(31, 'wagtailcore', '0014_add_verbose_name', '2020-12-02 02:40:47.985705'),
(32, 'wagtailcore', '0015_add_more_verbose_names', '2020-12-02 02:40:47.993344'),
(33, 'wagtailcore', '0016_change_page_url_path_to_text_field', '2020-12-02 02:40:48.001059'),
(34, 'wagtailcore', '0017_change_edit_page_permission_description', '2020-12-02 02:40:48.761484'),
(35, 'wagtailcore', '0018_pagerevision_submitted_for_moderation_index', '2020-12-02 02:40:48.798287'),
(36, 'wagtailcore', '0019_verbose_names_cleanup', '2020-12-02 02:40:48.848589'),
(37, 'wagtailcore', '0020_add_index_on_page_first_published_at', '2020-12-02 02:40:48.916107'),
(38, 'wagtailcore', '0021_capitalizeverbose', '2020-12-02 02:40:50.201861'),
(39, 'wagtailcore', '0022_add_site_name', '2020-12-02 02:40:50.263272'),
(40, 'wagtailcore', '0023_alter_page_revision_on_delete_behaviour', '2020-12-02 02:40:50.375717'),
(41, 'wagtailcore', '0024_collection', '2020-12-02 02:40:50.434765'),
(42, 'wagtailcore', '0025_collection_initial_data', '2020-12-02 02:40:50.478686'),
(43, 'wagtailcore', '0026_group_collection_permission', '2020-12-02 02:40:50.570970'),
(44, 'taggit', '0001_initial', '2020-12-02 02:40:50.925258'),
(45, 'wagtailimages', '0001_initial', '2020-12-02 02:40:51.349325'),
(46, 'wagtailimages', '0002_initial_data', '2020-12-02 02:40:51.352881'),
(47, 'wagtailimages', '0003_fix_focal_point_fields', '2020-12-02 02:40:51.356479'),
(48, 'wagtailimages', '0004_make_focal_point_key_not_nullable', '2020-12-02 02:40:51.360992'),
(49, 'wagtailimages', '0005_make_filter_spec_unique', '2020-12-02 02:40:51.364606'),
(50, 'wagtailimages', '0006_add_verbose_names', '2020-12-02 02:40:51.368965'),
(51, 'wagtailimages', '0007_image_file_size', '2020-12-02 02:40:51.372796'),
(52, 'wagtailimages', '0008_image_created_at_index', '2020-12-02 02:40:51.376905'),
(53, 'wagtailimages', '0009_capitalizeverbose', '2020-12-02 02:40:51.380808'),
(54, 'wagtailimages', '0010_change_on_delete_behaviour', '2020-12-02 02:40:51.385013'),
(55, 'wagtailimages', '0011_image_collection', '2020-12-02 02:40:51.388769'),
(56, 'wagtailimages', '0012_copy_image_permissions_to_collections', '2020-12-02 02:40:51.393234'),
(57, 'wagtailimages', '0013_make_rendition_upload_callable', '2020-12-02 02:40:51.397090'),
(58, 'wagtailimages', '0014_add_filter_spec_field', '2020-12-02 02:40:51.403190'),
(59, 'wagtailimages', '0015_fill_filter_spec_field', '2020-12-02 02:40:51.411382'),
(60, 'wagtailimages', '0016_deprecate_rendition_filter_relation', '2020-12-02 02:40:51.419589'),
(61, 'wagtailimages', '0017_reduce_focal_point_key_max_length', '2020-12-02 02:40:51.427802'),
(62, 'wagtailimages', '0018_remove_rendition_filter', '2020-12-02 02:40:51.436064'),
(63, 'wagtailimages', '0019_delete_filter', '2020-12-02 02:40:51.444201'),
(64, 'wagtailimages', '0020_add-verbose-name', '2020-12-02 02:40:51.452583'),
(65, 'wagtailimages', '0021_image_file_hash', '2020-12-02 02:40:51.461188'),
(66, 'wagtailimages', '0022_uploadedimage', '2020-12-02 02:40:51.820506'),
(67, 'wagtailcore', '0027_fix_collection_path_collation', '2020-12-02 02:40:51.927462'),
(68, 'wagtailcore', '0024_alter_page_content_type_on_delete_behaviour', '2020-12-02 02:40:52.088665'),
(69, 'wagtailcore', '0028_merge', '2020-12-02 02:40:52.094622'),
(70, 'wagtailcore', '0029_unicode_slugfield_dj19', '2020-12-02 02:40:52.118665'),
(71, 'wagtailcore', '0030_index_on_pagerevision_created_at', '2020-12-02 02:40:52.168914'),
(72, 'wagtailcore', '0031_add_page_view_restriction_types', '2020-12-02 02:40:52.300831'),
(73, 'wagtailcore', '0032_add_bulk_delete_page_permission', '2020-12-02 02:40:52.501263'),
(74, 'wagtailcore', '0033_remove_golive_expiry_help_text', '2020-12-02 02:40:52.577971'),
(75, 'wagtailcore', '0034_page_live_revision', '2020-12-02 02:40:52.671827'),
(76, 'wagtailcore', '0035_page_last_published_at', '2020-12-02 02:40:52.718800'),
(77, 'wagtailcore', '0036_populate_page_last_published_at', '2020-12-02 02:40:52.740551'),
(78, 'wagtailcore', '0037_set_page_owner_editable', '2020-12-02 02:40:52.932260'),
(79, 'wagtailcore', '0038_make_first_published_at_editable', '2020-12-02 02:40:52.953316'),
(80, 'wagtailcore', '0039_collectionviewrestriction', '2020-12-02 02:40:53.241219'),
(81, 'wagtailcore', '0040_page_draft_title', '2020-12-02 02:40:53.572593'),
(82, 'wagtailcore', '0041_group_collection_permissions_verbose_name_plural', '2020-12-02 02:40:53.585898'),
(83, 'wagtailcore', '0042_index_on_pagerevision_approved_go_live_at', '2020-12-02 02:40:53.625275'),
(84, 'wagtailcore', '0043_lock_fields', '2020-12-02 02:40:53.846781'),
(85, 'wagtailcore', '0044_add_unlock_grouppagepermission', '2020-12-02 02:40:53.869483'),
(86, 'wagtailcore', '0045_assign_unlock_grouppagepermission', '2020-12-02 02:40:53.902880'),
(87, 'wagtailcore', '0046_site_name_remove_null', '2020-12-02 02:40:54.006300'),
(88, 'wagtailcore', '0047_add_workflow_models', '2020-12-02 02:40:54.490025'),
(89, 'wagtailcore', '0048_add_default_workflows', '2020-12-02 02:40:55.760287'),
(90, 'wagtailcore', '0049_taskstate_finished_by', '2020-12-02 02:40:55.886482'),
(91, 'wagtailcore', '0050_workflow_rejected_to_needs_changes', '2020-12-02 02:40:56.009328'),
(92, 'wagtailcore', '0051_taskstate_comment', '2020-12-02 02:40:56.153044'),
(93, 'wagtailcore', '0052_pagelogentry', '2020-12-02 02:40:56.206965'),
(94, 'wagtailcore', '0053_locale_model', '2020-12-02 02:40:56.474662'),
(95, 'wagtailcore', '0054_initial_locale', '2020-12-02 02:40:56.527647'),
(96, 'wagtailcore', '0055_page_locale_fields', '2020-12-02 02:40:56.834933'),
(97, 'wagtailcore', '0056_page_locale_fields_populate', '2020-12-02 02:40:56.872438'),
(98, 'wagtailcore', '0057_page_locale_fields_notnull', '2020-12-02 02:40:57.485410'),
(99, 'wagtailcore', '0058_page_alias_of', '2020-12-02 02:40:57.663175'),
(100, 'wagtailcore', '0059_apply_collection_ordering', '2020-12-02 02:40:57.693277'),
(101, 'blog', '0001_initial', '2020-12-02 02:40:57.947773'),
(102, 'custom_form', '0001_initial', '2020-12-02 02:40:58.822742'),
(103, 'custom_page', '0001_initial', '2020-12-02 02:40:59.071205'),
(104, 'home', '0001_initial', '2020-12-02 02:40:59.198975'),
(105, 'menus', '0001_initial', '2020-12-02 02:40:59.403845'),
(106, 'project', '0001_initial', '2020-12-02 02:41:00.037988'),
(107, 'question_answer', '0001_initial', '2020-12-02 02:41:01.163637'),
(108, 'realtor', '0001_initial', '2020-12-02 02:41:02.253881'),
(109, 'sessions', '0001_initial', '2020-12-02 02:41:02.746594'),
(110, 'site_settings', '0001_initial', '2020-12-02 02:41:02.873067'),
(111, 'taggit', '0002_auto_20150616_2121', '2020-12-02 02:41:03.169095'),
(112, 'taggit', '0003_taggeditem_add_unique_index', '2020-12-02 02:41:03.218209'),
(113, 'wagtailadmin', '0001_create_admin_access_permissions', '2020-12-02 02:41:03.284598'),
(114, 'wagtaildocs', '0001_initial', '2020-12-02 02:41:03.349494'),
(115, 'wagtaildocs', '0002_initial_data', '2020-12-02 02:41:03.487581'),
(116, 'wagtaildocs', '0003_add_verbose_names', '2020-12-02 02:41:03.649500'),
(117, 'wagtaildocs', '0004_capitalizeverbose', '2020-12-02 02:41:03.895040'),
(118, 'wagtaildocs', '0005_document_collection', '2020-12-02 02:41:04.069918'),
(119, 'wagtaildocs', '0006_copy_document_permissions_to_collections', '2020-12-02 02:41:04.202188'),
(120, 'wagtaildocs', '0005_alter_uploaded_by_user_on_delete_action', '2020-12-02 02:41:04.346858'),
(121, 'wagtaildocs', '0007_merge', '2020-12-02 02:41:04.356627'),
(122, 'wagtaildocs', '0008_document_file_size', '2020-12-02 02:41:04.469677'),
(123, 'wagtaildocs', '0009_document_verbose_name_plural', '2020-12-02 02:41:04.518846'),
(124, 'wagtaildocs', '0010_document_file_hash', '2020-12-02 02:41:04.576677'),
(125, 'wagtailembeds', '0001_initial', '2020-12-02 02:41:04.675854'),
(126, 'wagtailembeds', '0002_add_verbose_names', '2020-12-02 02:41:04.693924'),
(127, 'wagtailembeds', '0003_capitalizeverbose', '2020-12-02 02:41:04.719534'),
(128, 'wagtailembeds', '0004_embed_verbose_name_plural', '2020-12-02 02:41:04.738499'),
(129, 'wagtailembeds', '0005_specify_thumbnail_url_max_length', '2020-12-02 02:41:04.777000'),
(130, 'wagtailforms', '0001_initial', '2020-12-02 02:41:04.865251'),
(131, 'wagtailforms', '0002_add_verbose_names', '2020-12-02 02:41:05.004084'),
(132, 'wagtailforms', '0003_capitalizeverbose', '2020-12-02 02:41:05.046300'),
(133, 'wagtailforms', '0004_add_verbose_name_plural', '2020-12-02 02:41:05.071198'),
(134, 'wagtailredirects', '0001_initial', '2020-12-02 02:41:05.163339'),
(135, 'wagtailredirects', '0002_add_verbose_names', '2020-12-02 02:41:05.564026'),
(136, 'wagtailredirects', '0003_make_site_field_editable', '2020-12-02 02:41:05.721724'),
(137, 'wagtailredirects', '0004_set_unique_on_path_and_site', '2020-12-02 02:41:05.907672'),
(138, 'wagtailredirects', '0005_capitalizeverbose', '2020-12-02 02:41:06.299517'),
(139, 'wagtailredirects', '0006_redirect_increase_max_length', '2020-12-02 02:41:06.361143'),
(140, 'wagtailsearch', '0001_initial', '2020-12-02 02:41:06.702778'),
(141, 'wagtailsearch', '0002_add_verbose_names', '2020-12-02 02:41:07.029880'),
(142, 'wagtailsearch', '0003_remove_editors_pick', '2020-12-02 02:41:07.088533'),
(143, 'wagtailsearch', '0004_querydailyhits_verbose_name_plural', '2020-12-02 02:41:07.098210'),
(144, 'wagtailusers', '0001_initial', '2020-12-02 02:41:07.230988'),
(145, 'wagtailusers', '0002_add_verbose_name_on_userprofile', '2020-12-02 02:41:07.349398'),
(146, 'wagtailusers', '0003_add_verbose_names', '2020-12-02 02:41:07.370358'),
(147, 'wagtailusers', '0004_capitalizeverbose', '2020-12-02 02:41:07.435720'),
(148, 'wagtailusers', '0005_make_related_name_wagtail_specific', '2020-12-02 02:41:07.559262'),
(149, 'wagtailusers', '0006_userprofile_prefered_language', '2020-12-02 02:41:07.606957'),
(150, 'wagtailusers', '0007_userprofile_current_time_zone', '2020-12-02 02:41:07.660660'),
(151, 'wagtailusers', '0008_userprofile_avatar', '2020-12-02 02:41:07.739565'),
(152, 'wagtailusers', '0009_userprofile_verbose_name_plural', '2020-12-02 02:41:07.782658'),
(153, 'wagtailimages', '0001_squashed_0021', '2020-12-02 02:41:07.791019'),
(154, 'wagtailcore', '0001_squashed_0016_change_page_url_path_to_text_field', '2020-12-02 02:41:07.795588'),
(155, 'site_settings', '0002_auto_20201202_0321', '2020-12-02 03:21:52.247954'),
(156, 'site_settings', '0003_sitesettings_read_more_link', '2020-12-02 03:53:09.467649'),
(157, 'blog', '0002_bloglistingpage_title_on_homepage', '2020-12-02 04:01:14.101313'),
(158, 'project', '0002_projectlistingpage_title_on_homepage', '2020-12-02 04:01:14.141866'),
(159, 'realtor', '0002_realtorlistingpage_title_on_homepage', '2020-12-02 04:01:14.182705'),
(160, 'realtor', '0003_realtorlistingpage_profile_link', '2020-12-02 06:08:34.204352');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('l7s8naxx6cviyqietilocb8iyd1p010k', '.eJxVjMEOwiAQRP-FsyEuQgGP3vsNZGFZqRpISnsy_rtt0oNe5jDvzbxFwHUpYe15DhOJqwBx-u0ipmeuO6AH1nuTqdVlnqLcFXnQLsdG-XU73L-Dgr1s60ToLCkF54tn7ROgdhqZ_BbDQCYatBmBncMIzmjWDIpZQ2ITrXXi8wX2njhw:1kkLbf:iGPE9OEMpqBn7Ay1GwKJwq28utdKhl3_P7ugQP3hRP8', '2020-12-16 06:27:15.464878'),
('np1lx7hii7qj3thp9cxnebtk20ulj5sl', '.eJxVjMEOwiAQRP-FsyEuQgGP3vsNZGFZqRpISnsy_rtt0oNe5jDvzbxFwHUpYe15DhOJqwBx-u0ipmeuO6AH1nuTqdVlnqLcFXnQLsdG-XU73L-Dgr1s60ToLCkF54tn7ROgdhqZ_BbDQCYatBmBncMIzmjWDIpZQ2ITrXXi8wX2njhw:1kkIUH:IOrN3UZ_itnUPE9YY-W_yX-1--b1HBAbcc-WLAbnm7g', '2020-12-16 03:07:25.908460'),
('wukrpscvlf428018ax4uu1s2f5y0xfqz', '.eJxVjMEOwiAQRP-FsyEuQgGP3vsNZGFZqRpISnsy_rtt0oNe5jDvzbxFwHUpYe15DhOJqwBx-u0ipmeuO6AH1nuTqdVlnqLcFXnQLsdG-XU73L-Dgr1s60ToLCkF54tn7ROgdhqZ_BbDQCYatBmBncMIzmjWDIpZQ2ITrXXi8wX2njhw:1kkI5j:yto87XxtLELYRkUgzyGD7cb2CTP2pcYbWAPFCpIcVNE', '2020-12-16 02:42:03.821216');

-- --------------------------------------------------------

--
-- Table structure for table `home_homepage`
--

CREATE TABLE `home_homepage` (
  `page_ptr_id` int NOT NULL,
  `banner_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_subtitle` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `banner_svg_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_homepage`
--

INSERT INTO `home_homepage` (`page_ptr_id`, `banner_title`, `banner_subtitle`, `created_at`, `updated_at`, `banner_svg_image`) VALUES
(3, 'Welcome to Bires', 'Find your perfect home', '2020-12-02 02:43:16.457000', '2020-12-02 03:49:28.530562', '.svg_image/undraw_best_place_r685.svg');

-- --------------------------------------------------------

--
-- Table structure for table `menus_menu`
--

CREATE TABLE `menus_menu` (
  `id` int NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus_menuitem`
--

CREATE TABLE `menus_menuitem` (
  `id` int NOT NULL,
  `sort_order` int DEFAULT NULL,
  `link_title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_url` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL,
  `link_page_id` int DEFAULT NULL,
  `page_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_projectcategory`
--

CREATE TABLE `project_projectcategory` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_projectdetailpage`
--

CREATE TABLE `project_projectdetailpage` (
  `page_ptr_id` int NOT NULL,
  `hot_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` longtext COLLATE utf8_unicode_ci,
  `general_information` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `is_displayed_on_homepage` tinyint(1) DEFAULT NULL,
  `featured_image_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_projectdetailpage`
--

INSERT INTO `project_projectdetailpage` (`page_ptr_id`, `hot_title`, `address`, `city`, `status`, `general_information`, `created_at`, `updated_at`, `is_displayed_on_homepage`, `featured_image_id`) VALUES
(13, NULL, '253 John street', 'Sydney', 'Available', '<p>Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &quot;Nội dung, nội dung, nội dung&quot; là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn &quot;Lorem ipsum&quot; trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).</p>', '2020-12-02 06:16:18.341000', '2020-12-02 06:16:18.409494', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `project_projectdetailpagecarousel`
--

CREATE TABLE `project_projectdetailpagecarousel` (
  `id` int NOT NULL,
  `sort_order` int DEFAULT NULL,
  `page_id` int NOT NULL,
  `project_detail_carousel_image_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_projectdetailpage_categories`
--

CREATE TABLE `project_projectdetailpage_categories` (
  `id` int NOT NULL,
  `projectdetailpage_id` int NOT NULL,
  `projectcategory_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_projectlistingpage`
--

CREATE TABLE `project_projectlistingpage` (
  `page_ptr_id` int NOT NULL,
  `title_on_homepage` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_projectlistingpage`
--

INSERT INTO `project_projectlistingpage` (`page_ptr_id`, `title_on_homepage`) VALUES
(7, 'Listing Projects');

-- --------------------------------------------------------

--
-- Table structure for table `project_projectpart`
--

CREATE TABLE `project_projectpart` (
  `id` int NOT NULL,
  `sort_order` int DEFAULT NULL,
  `part_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `part_content` longtext COLLATE utf8_unicode_ci,
  `page_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_projectpart`
--

INSERT INTO `project_projectpart` (`id`, `sort_order`, `part_title`, `part_content`, `page_id`) VALUES
(1, 0, 'Làm thế nào để có nó?', '<p>Có rất nhiều biến thể của Lorem Ipsum mà bạn có thể tìm thấy, nhưng đa số được biến đổi bằng cách thêm các yếu tố hài hước, các từ ngẫu nhiên có khi không có vẻ gì là có ý nghĩa. Nếu bạn định sử dụng một đoạn Lorem Ipsum, bạn nên kiểm tra kĩ để chắn chắn là không có gì nhạy cảm được giấu ở giữa đoạn văn bản. Tất cả các công cụ sản xuất văn bản mẫu Lorem Ipsum đều được làm theo cách lặp đi lặp lại các đoạn chữ cho tới đủ thì thôi, khiến cho lipsum.com trở thành công cụ sản xuất Lorem Ipsum đáng giá nhất trên mạng. Trang web này sử dụng hơn 200 từ la-tinh, kết hợp thuần thục nhiều cấu trúc câu để tạo ra văn bản Lorem Ipsum trông có vẻ thật sự hợp lí. Nhờ thế, văn bản Lorem Ipsum được tạo ra mà không cần một sự lặp lại nào, cũng không cần chèn thêm các từ ngữ hóm hỉnh hay thiếu trật tự.</p>', 13);

-- --------------------------------------------------------

--
-- Table structure for table `project_projectrequest`
--

CREATE TABLE `project_projectrequest` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `url` longtext COLLATE utf8_unicode_ci,
  `term_condition` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_answer_qadetailquestionanswer`
--

CREATE TABLE `question_answer_qadetailquestionanswer` (
  `id` int NOT NULL,
  `sort_order` int DEFAULT NULL,
  `qa_detail_question_answer_id` int NOT NULL,
  `question_answer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_answer_questionanswer`
--

CREATE TABLE `question_answer_questionanswer` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `question_answer_questionanswer`
--

INSERT INTO `question_answer_questionanswer` (`id`, `name`) VALUES
(1, 'general answer and questions');

-- --------------------------------------------------------

--
-- Table structure for table `question_answer_questionanswerblog`
--

CREATE TABLE `question_answer_questionanswerblog` (
  `id` int NOT NULL,
  `sort_order` int DEFAULT NULL,
  `blog_page_id` int NOT NULL,
  `question_answer_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `question_answer_questionanswerblog`
--

INSERT INTO `question_answer_questionanswerblog` (`id`, `sort_order`, `blog_page_id`, `question_answer_id`) VALUES
(1, 0, 11, 1),
(2, 0, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `question_answer_questionanswercustompage`
--

CREATE TABLE `question_answer_questionanswercustompage` (
  `id` int NOT NULL,
  `sort_order` int DEFAULT NULL,
  `custom_page_q_and_a_id` int DEFAULT NULL,
  `question_answer_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `question_answer_questionanswercustompage`
--

INSERT INTO `question_answer_questionanswercustompage` (`id`, `sort_order`, `custom_page_q_and_a_id`, `question_answer_id`) VALUES
(3, 0, 6, 1),
(4, 0, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `question_answer_questionanswerdetail`
--

CREATE TABLE `question_answer_questionanswerdetail` (
  `id` int NOT NULL,
  `question` longtext COLLATE utf8_unicode_ci,
  `answer` longtext COLLATE utf8_unicode_ci,
  `question_answer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `question_answer_questionanswerdetail`
--

INSERT INTO `question_answer_questionanswerdetail` (`id`, `question`, `answer`, `question_answer_id`) VALUES
(1, 'General Questions', 'general answers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `question_answer_questionanswerproject`
--

CREATE TABLE `question_answer_questionanswerproject` (
  `id` int NOT NULL,
  `sort_order` int DEFAULT NULL,
  `project_page_id` int DEFAULT NULL,
  `question_answer_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `question_answer_questionanswerproject`
--

INSERT INTO `question_answer_questionanswerproject` (`id`, `sort_order`, `project_page_id`, `question_answer_id`) VALUES
(1, 0, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `realtor_realtordetailpage`
--

CREATE TABLE `realtor_realtordetailpage` (
  `page_ptr_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `short_description` longtext COLLATE utf8_unicode_ci,
  `link_profile1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_profile2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_profile3` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `image_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `realtor_realtordetailpage`
--

INSERT INTO `realtor_realtordetailpage` (`page_ptr_id`, `name`, `position_title`, `phone`, `email`, `description`, `short_description`, `link_profile1`, `link_profile2`, `link_profile3`, `created_at`, `updated_at`, `image_id`) VALUES
(12, 'Nguyen Van Hung', 'nhà môi giới', '0427241119', 'nguyenvanhung@moigioi.com', 'Trái với suy nghĩ của nhiều người, Lorem Ipsum không chỉ đơn giản là văn bản ngẫu nhiên. Nó có nguồn gốc từ một tác phẩm văn học Latinh cổ điển từ năm 45 trước Công nguyên, đã có hơn 2000 năm tuổi. Richard McClintock, giáo sư tiếng Latinh tại Đại học Hampden-Sydney ở Virginia, đã tra cứu một trong những từ Latinh khó hiểu hơn, consectetur, từ một đoạn văn của Lorem Ipsum, và xem qua các trích dẫn của từ này trong văn học cổ điển, đã phát hiện ra nguồn gốc không thể chối cãi. Lorem Ipsum xuất phát từ phần 1.10.32 và 1.10.33 của \"de Finibus Bonorum et Malorum\" (Cực đoan của Thiện và Ác) của Cicero, được viết vào năm 45 trước Công nguyên. Cuốn sách này là một chuyên luận về lý thuyết đạo đức, rất phổ biến trong thời kỳ Phục hưng. Dòng đầu tiên của Lorem Ipsum, \"Lorem ipsum dolor sit amet ..\", xuất phát từ một dòng trong phần 1.10.32.', 'Trái với suy nghĩ của nhiều người, Lorem Ipsum không chỉ đơn giản là văn bản ngẫu nhiên.', 'https://www.facebook.com/', 'https://twitter.com/?lang=vi', 'https://id.zalo.me/account?continue=https://chat.zalo.me', '2020-12-02 03:33:24.670000', '2020-12-02 03:39:05.158415', 2);

-- --------------------------------------------------------

--
-- Table structure for table `realtor_realtorlistingpage`
--

CREATE TABLE `realtor_realtorlistingpage` (
  `page_ptr_id` int NOT NULL,
  `title_on_homepage` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `realtor_realtorlistingpage`
--

INSERT INTO `realtor_realtorlistingpage` (`page_ptr_id`, `title_on_homepage`, `profile_link`) VALUES
(10, 'Thành viên', 'View profile');

-- --------------------------------------------------------

--
-- Table structure for table `realtor_realtorproject`
--

CREATE TABLE `realtor_realtorproject` (
  `id` int NOT NULL,
  `sort_order` int DEFAULT NULL,
  `project_page_id` int DEFAULT NULL,
  `realtor_page_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `realtor_realtorproject`
--

INSERT INTO `realtor_realtorproject` (`id`, `sort_order`, `project_page_id`, `realtor_page_id`) VALUES
(1, 0, 13, 12);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings_sitesettings`
--

CREATE TABLE `site_settings_sitesettings` (
  `id` int NOT NULL,
  `logo_svg` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_id` int DEFAULT NULL,
  `logo_icon_id` int DEFAULT NULL,
  `site_id` int NOT NULL,
  `footer_content` longtext COLLATE utf8_unicode_ci,
  `read_more_link` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `site_settings_sitesettings`
--

INSERT INTO `site_settings_sitesettings` (`id`, `logo_svg`, `logo_id`, `logo_icon_id`, `site_id`, `footer_content`, `read_more_link`) VALUES
(1, '', NULL, NULL, 1, 'Trái với suy nghĩ của nhiều người, Lorem Ipsum không chỉ đơn giản là văn bản ngẫu nhiên. Nó có nguồn gốc từ một tác phẩm văn học Latinh cổ điển từ năm 45 trước Công nguyên, đã có hơn 2000 năm tuổi.', 'Read more...');

-- --------------------------------------------------------

--
-- Table structure for table `taggit_tag`
--

CREATE TABLE `taggit_tag` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taggit_taggeditem`
--

CREATE TABLE `taggit_taggeditem` (
  `id` int NOT NULL,
  `object_id` int NOT NULL,
  `content_type_id` int NOT NULL,
  `tag_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wagtailcore_collection`
--

CREATE TABLE `wagtailcore_collection` (
  `id` int NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `depth` int UNSIGNED NOT NULL,
  `numchild` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ;

--
-- Dumping data for table `wagtailcore_collection`
--

INSERT INTO `wagtailcore_collection` (`id`, `path`, `depth`, `numchild`, `name`) VALUES
(1, '0001', 1, 0, 'Root');

-- --------------------------------------------------------

--
-- Table structure for table `wagtailcore_collectionviewrestriction`
--

CREATE TABLE `wagtailcore_collectionviewrestriction` (
  `id` int NOT NULL,
  `restriction_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `collection_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wagtailcore_collectionviewrestriction_groups`
--

CREATE TABLE `wagtailcore_collectionviewrestriction_groups` (
  `id` int NOT NULL,
  `collectionviewrestriction_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wagtailcore_groupapprovaltask`
--

CREATE TABLE `wagtailcore_groupapprovaltask` (
  `task_ptr_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wagtailcore_groupapprovaltask`
--

INSERT INTO `wagtailcore_groupapprovaltask` (`task_ptr_id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `wagtailcore_groupapprovaltask_groups`
--

CREATE TABLE `wagtailcore_groupapprovaltask_groups` (
  `id` int NOT NULL,
  `groupapprovaltask_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wagtailcore_groupapprovaltask_groups`
--

INSERT INTO `wagtailcore_groupapprovaltask_groups` (`id`, `groupapprovaltask_id`, `group_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wagtailcore_groupcollectionpermission`
--

CREATE TABLE `wagtailcore_groupcollectionpermission` (
  `id` int NOT NULL,
  `collection_id` int NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wagtailcore_groupcollectionpermission`
--

INSERT INTO `wagtailcore_groupcollectionpermission` (`id`, `collection_id`, `group_id`, `permission_id`) VALUES
(2, 1, 1, 1),
(4, 1, 1, 2),
(6, 1, 1, 5),
(8, 1, 1, 6),
(1, 1, 2, 1),
(3, 1, 2, 2),
(5, 1, 2, 5),
(7, 1, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wagtailcore_grouppagepermission`
--

CREATE TABLE `wagtailcore_grouppagepermission` (
  `id` int NOT NULL,
  `permission_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int NOT NULL,
  `page_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wagtailcore_grouppagepermission`
--

INSERT INTO `wagtailcore_grouppagepermission` (`id`, `permission_type`, `group_id`, `page_id`) VALUES
(1, 'add', 1, 1),
(2, 'edit', 1, 1),
(6, 'lock', 1, 1),
(3, 'publish', 1, 1),
(7, 'unlock', 1, 1),
(4, 'add', 2, 1),
(5, 'edit', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wagtailcore_locale`
--

CREATE TABLE `wagtailcore_locale` (
  `id` int NOT NULL,
  `language_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wagtailcore_locale`
--

INSERT INTO `wagtailcore_locale` (`id`, `language_code`) VALUES
(1, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `wagtailcore_page`
--

CREATE TABLE `wagtailcore_page` (
  `id` int NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `depth` int UNSIGNED NOT NULL,
  `numchild` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `live` tinyint(1) NOT NULL,
  `has_unpublished_changes` tinyint(1) NOT NULL,
  `url_path` longtext COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `show_in_menus` tinyint(1) NOT NULL,
  `search_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `go_live_at` datetime(6) DEFAULT NULL,
  `expire_at` datetime(6) DEFAULT NULL,
  `expired` tinyint(1) NOT NULL,
  `content_type_id` int NOT NULL,
  `owner_id` int DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `latest_revision_created_at` datetime(6) DEFAULT NULL,
  `first_published_at` datetime(6) DEFAULT NULL,
  `live_revision_id` int DEFAULT NULL,
  `last_published_at` datetime(6) DEFAULT NULL,
  `draft_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locked_at` datetime(6) DEFAULT NULL,
  `locked_by_id` int DEFAULT NULL,
  `translation_key` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `locale_id` int NOT NULL,
  `alias_of_id` int DEFAULT NULL
) ;

--
-- Dumping data for table `wagtailcore_page`
--

INSERT INTO `wagtailcore_page` (`id`, `path`, `depth`, `numchild`, `title`, `slug`, `live`, `has_unpublished_changes`, `url_path`, `seo_title`, `show_in_menus`, `search_description`, `go_live_at`, `expire_at`, `expired`, `content_type_id`, `owner_id`, `locked`, `latest_revision_created_at`, `first_published_at`, `live_revision_id`, `last_published_at`, `draft_title`, `locked_at`, `locked_by_id`, `translation_key`, `locale_id`, `alias_of_id`) VALUES
(1, '0001', 1, 1, 'Root', 'root', 1, 0, '/', '', 0, '', NULL, NULL, 0, 1, NULL, 0, NULL, NULL, NULL, NULL, 'Root', NULL, NULL, '71781198089a4e348800c2b59d0edab8', 1, NULL),
(3, '00010002', 2, 5, 'Trang chủ', 'homepage', 1, 0, '/homepage/', '', 0, '', NULL, NULL, 0, 6, 1, 0, '2020-12-02 03:49:28.492476', '2020-12-02 02:43:17.847314', 16, '2020-12-02 03:49:28.520205', 'Trang chủ', NULL, NULL, 'e1ade6b5f9f540b891af3cc3c95d626b', 1, NULL),
(6, '000100020001', 3, 0, 'Contact Us', 'contact-us', 1, 0, '/homepage/contact-us/', 'contact-us', 0, 'contact-us', NULL, NULL, 0, 7, 1, 0, '2020-12-02 02:56:09.856595', '2020-12-02 02:56:09.901656', 6, '2020-12-02 02:56:09.901656', 'Contact Us', NULL, NULL, 'fb8efe68c9434ffa8215019d1bf3d309', 1, NULL),
(7, '000100020002', 3, 1, 'Dự án', 'listing-projects', 1, 0, '/homepage/listing-projects/', 'Dự án', 0, 'Dự án', NULL, NULL, 0, 10, 1, 0, '2020-12-02 06:46:44.237990', '2020-12-02 03:07:53.917494', 27, '2020-12-02 06:46:44.267822', 'Dự án', NULL, NULL, 'a01f25d2f6cb42d6be7146a08f93b9dd', 1, NULL),
(8, '000100020003', 3, 2, 'Blogs', 'listing-blogs', 1, 0, '/homepage/listing-blogs/', 'Blogs', 0, 'Blogs', NULL, NULL, 0, 15, 1, 0, '2020-12-02 06:46:14.571321', '2020-12-02 03:08:24.870941', 26, '2020-12-02 06:46:14.596817', 'Blogs', NULL, NULL, '14ba015099a74a60915ad0bd77faae3b', 1, NULL),
(9, '000100020004', 3, 0, 'About Us', 'about-us', 1, 0, '/homepage/about-us/', '', 0, '', NULL, NULL, 0, 7, 1, 0, '2020-12-02 03:09:42.340363', '2020-12-02 03:09:42.359566', 9, '2020-12-02 03:09:42.359566', 'About Us', NULL, NULL, 'e63084a478ec4d678fc41416102cbc51', 1, NULL),
(10, '000100020005', 3, 1, 'Realtors', 'listing-realtors', 1, 0, '/homepage/listing-realtors/', 'Realtors', 0, 'Realtors', NULL, NULL, 0, 20, 1, 0, '2020-12-02 06:44:49.564004', '2020-12-02 03:10:14.674763', 25, '2020-12-02 06:44:49.591667', 'Realtors', NULL, NULL, '8624dd096718440c918c9a5159bece91', 1, NULL),
(11, '0001000200030001', 4, 0, 'Nó đến từ đâu?', 'nó-đến-từ-đâu', 1, 0, '/homepage/listing-blogs/nó-đến-từ-đâu/', 'nó-đến-từ-đâu', 0, 'Trái với suy nghĩ của nhiều người, Lorem Ipsum không chỉ đơn giản là văn bản ngẫu nhiên.', NULL, NULL, 0, 17, 1, 0, '2020-12-02 08:15:13.320098', '2020-12-02 03:12:25.294469', 29, '2020-12-02 08:15:13.378040', 'Nó đến từ đâu?', NULL, NULL, '546e82441dcb4c37a73fdc669be15600', 1, NULL),
(12, '0001000200050001', 4, 0, 'Nguyen Van Hung', 'nguyen-van-hung', 1, 0, '/homepage/listing-realtors/nguyen-van-hung/', '', 0, '', NULL, NULL, 0, 19, 1, 0, '2020-12-02 03:39:05.109411', '2020-12-02 03:33:24.708427', 14, '2020-12-02 03:39:05.142684', 'Nguyen Van Hung', NULL, NULL, '5b6804a4193349e8a5a52d6b0cb12e24', 1, NULL),
(13, '0001000200020001', 4, 0, 'Example', 'example', 1, 0, '/homepage/listing-projects/example/', '', 0, '', NULL, NULL, 0, 9, 1, 0, '2020-12-02 06:16:18.369662', '2020-12-02 06:16:18.396386', 21, '2020-12-02 06:16:18.396386', 'Example', NULL, NULL, 'a05ccf89ea804df8884107ad91650e82', 1, NULL),
(14, '0001000200030002', 4, 0, 'Làm thế nào để có nó?', 'làm-thế-nào-để-có-nó', 1, 0, '/homepage/listing-blogs/làm-thế-nào-để-có-nó/', 'Làm thế nào để có nó?', 0, 'Có rất nhiều biến thể của Lorem Ipsum mà bạn có thể tìm thấy,', NULL, NULL, 0, 17, 1, 0, '2020-12-02 08:16:07.424211', '2020-12-02 08:14:01.341607', 31, '2020-12-02 08:16:07.459189', 'Làm thế nào để có nó?', NULL, NULL, '9713cabf3a1f414782c93b372830077c', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wagtailcore_pagelogentry`
--

CREATE TABLE `wagtailcore_pagelogentry` (
  `id` int NOT NULL,
  `label` longtext COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_json` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `content_changed` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `page_id` int NOT NULL,
  `revision_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wagtailcore_pagelogentry`
--

INSERT INTO `wagtailcore_pagelogentry` (`id`, `label`, `action`, `data_json`, `timestamp`, `content_changed`, `deleted`, `content_type_id`, `page_id`, `revision_id`, `user_id`) VALUES
(1, 'home', 'wagtail.edit', '\"\"', '2020-12-02 02:42:30.330350', 1, 0, 1, 2, 1, 1),
(2, 'home', 'wagtail.publish', 'null', '2020-12-02 02:42:30.364297', 1, 0, 1, 2, 1, 1),
(3, 'Homepage', 'wagtail.create', '\"\"', '2020-12-02 02:43:17.782557', 1, 0, 6, 3, NULL, 1),
(4, 'Homepage', 'wagtail.publish', 'null', '2020-12-02 02:43:17.876208', 1, 0, 6, 3, 2, 1),
(5, 'Contact us', 'wagtail.create', '\"\"', '2020-12-02 02:44:32.549563', 1, 0, 7, 4, NULL, 1),
(6, 'Contact us', 'wagtail.edit', '\"\"', '2020-12-02 02:45:42.125804', 1, 0, 7, 4, 4, 1),
(7, 'Contact us', 'wagtail.publish', 'null', '2020-12-02 02:45:42.172814', 1, 0, 7, 4, 4, 1),
(8, 'Contact us', 'wagtail.delete', '\"\"', '2020-12-02 02:51:21.200608', 0, 1, 7, 4, NULL, 1),
(9, 'Contact Us', 'wagtail.create', '\"\"', '2020-12-02 02:54:39.774587', 1, 0, 7, 5, NULL, 1),
(10, 'Contact Us', 'wagtail.publish', 'null', '2020-12-02 02:54:39.832924', 1, 0, 7, 5, 5, 1),
(11, 'Contact Us', 'wagtail.delete', '\"\"', '2020-12-02 02:55:32.010717', 0, 1, 7, 5, NULL, 1),
(12, 'Contact Us', 'wagtail.create', '\"\"', '2020-12-02 02:56:09.840227', 1, 0, 7, 6, NULL, 1),
(13, 'Contact Us', 'wagtail.publish', 'null', '2020-12-02 02:56:09.933441', 1, 0, 7, 6, 6, 1),
(14, 'Projects', 'wagtail.create', '\"\"', '2020-12-02 03:07:53.877506', 1, 0, 10, 7, NULL, 1),
(15, 'Projects', 'wagtail.publish', 'null', '2020-12-02 03:07:53.946783', 1, 0, 10, 7, 7, 1),
(16, 'Blogs', 'wagtail.create', '\"\"', '2020-12-02 03:08:24.838596', 1, 0, 15, 8, NULL, 1),
(17, 'Blogs', 'wagtail.publish', 'null', '2020-12-02 03:08:24.890532', 1, 0, 15, 8, 8, 1),
(18, 'About Us', 'wagtail.create', '\"\"', '2020-12-02 03:09:42.326139', 1, 0, 7, 9, NULL, 1),
(19, 'About Us', 'wagtail.publish', 'null', '2020-12-02 03:09:42.384493', 1, 0, 7, 9, 9, 1),
(20, 'Realtors', 'wagtail.create', '\"\"', '2020-12-02 03:10:14.642216', 1, 0, 20, 10, NULL, 1),
(21, 'Realtors', 'wagtail.publish', 'null', '2020-12-02 03:10:14.696636', 1, 0, 20, 10, 10, 1),
(22, 'Nó đến từ đâu?', 'wagtail.create', '\"\"', '2020-12-02 03:12:25.251807', 1, 0, 17, 11, NULL, 1),
(23, 'Nó đến từ đâu?', 'wagtail.publish', 'null', '2020-12-02 03:12:25.322184', 1, 0, 17, 11, 11, 1),
(24, 'Dự án', 'wagtail.edit', '\"\"', '2020-12-02 03:28:18.951010', 1, 0, 10, 7, 12, 1),
(25, 'Dự án', 'wagtail.rename', '{\"title\": {\"old\": \"Projects\", \"new\": \"D\\u1ef1 \\u00e1n\"}}', '2020-12-02 03:28:18.988838', 0, 0, 10, 7, 12, 1),
(26, 'Dự án', 'wagtail.publish', '{\"title\": {\"old\": \"Projects\", \"new\": \"D\\u1ef1 \\u00e1n\"}}', '2020-12-02 03:28:18.994363', 1, 0, 10, 7, 12, 1),
(27, 'Nguyen Van Hung', 'wagtail.create', '\"\"', '2020-12-02 03:33:24.673726', 1, 0, 19, 12, NULL, 1),
(28, 'Nguyen Van Hung', 'wagtail.publish', 'null', '2020-12-02 03:33:24.730383', 1, 0, 19, 12, 13, 1),
(29, 'Nguyen Van Hung', 'wagtail.edit', '\"\"', '2020-12-02 03:39:05.122742', 1, 0, 19, 12, 14, 1),
(30, 'Nguyen Van Hung', 'wagtail.publish', 'null', '2020-12-02 03:39:05.169241', 1, 0, 19, 12, 14, 1),
(31, 'Homepage', 'wagtail.edit', '\"\"', '2020-12-02 03:43:41.823944', 1, 0, 6, 3, 15, 1),
(32, 'Homepage', 'wagtail.publish', 'null', '2020-12-02 03:43:41.939652', 1, 0, 6, 3, 15, 1),
(33, 'Trang chủ', 'wagtail.edit', '\"\"', '2020-12-02 03:49:28.507384', 1, 0, 6, 3, 16, 1),
(34, 'Trang chủ', 'wagtail.rename', '{\"title\": {\"old\": \"Homepage\", \"new\": \"Trang ch\\u1ee7\"}}', '2020-12-02 03:49:28.540822', 0, 0, 6, 3, 16, 1),
(35, 'Trang chủ', 'wagtail.publish', '{\"title\": {\"old\": \"Homepage\", \"new\": \"Trang ch\\u1ee7\"}}', '2020-12-02 03:49:28.544699', 1, 0, 6, 3, 16, 1),
(36, 'Blogs', 'wagtail.edit', '\"\"', '2020-12-02 04:05:43.234854', 1, 0, 15, 8, 17, 1),
(37, 'Blogs', 'wagtail.publish', 'null', '2020-12-02 04:05:43.273970', 1, 0, 15, 8, 17, 1),
(38, 'Blogs', 'wagtail.edit', '\"\"', '2020-12-02 04:06:06.014429', 1, 0, 15, 8, 18, 1),
(39, 'Blogs', 'wagtail.publish', 'null', '2020-12-02 04:06:06.079060', 1, 0, 15, 8, 18, 1),
(40, 'Realtors', 'wagtail.edit', '\"\"', '2020-12-02 04:06:28.941502', 1, 0, 20, 10, 19, 1),
(41, 'Realtors', 'wagtail.publish', 'null', '2020-12-02 04:06:28.978444', 1, 0, 20, 10, 19, 1),
(42, 'Realtors', 'wagtail.edit', '\"\"', '2020-12-02 06:09:22.116602', 1, 0, 20, 10, 20, 1),
(43, 'Realtors', 'wagtail.publish', 'null', '2020-12-02 06:09:22.154494', 1, 0, 20, 10, 20, 1),
(44, 'Example', 'wagtail.create', '\"\"', '2020-12-02 06:16:18.349955', 1, 0, 9, 13, NULL, 1),
(45, 'Example', 'wagtail.publish', 'null', '2020-12-02 06:16:18.425920', 1, 0, 9, 13, 21, 1),
(46, 'Listing Projects', 'wagtail.edit', '\"\"', '2020-12-02 06:28:15.824448', 1, 0, 10, 7, 22, 1),
(47, 'Listing Projects', 'wagtail.rename', '{\"title\": {\"old\": \"D\\u1ef1 \\u00e1n\", \"new\": \"Listing Projects\"}}', '2020-12-02 06:28:15.887672', 0, 0, 10, 7, 22, 1),
(48, 'Listing Projects', 'wagtail.publish', '{\"title\": {\"old\": \"D\\u1ef1 \\u00e1n\", \"new\": \"Listing Projects\"}}', '2020-12-02 06:28:15.891063', 1, 0, 10, 7, 22, 1),
(49, 'Listing Blogs', 'wagtail.edit', '\"\"', '2020-12-02 06:44:21.173421', 1, 0, 15, 8, 23, 1),
(50, 'Listing Blogs', 'wagtail.rename', '{\"title\": {\"old\": \"Blogs\", \"new\": \"Listing Blogs\"}}', '2020-12-02 06:44:21.212160', 0, 0, 15, 8, 23, 1),
(51, 'Listing Blogs', 'wagtail.publish', '{\"title\": {\"old\": \"Blogs\", \"new\": \"Listing Blogs\"}}', '2020-12-02 06:44:21.216150', 1, 0, 15, 8, 23, 1),
(52, 'Listing Projects', 'wagtail.edit', '\"\"', '2020-12-02 06:44:32.453664', 1, 0, 10, 7, 24, 1),
(53, 'Listing Projects', 'wagtail.publish', 'null', '2020-12-02 06:44:32.489869', 1, 0, 10, 7, 24, 1),
(54, 'Realtors', 'wagtail.edit', '\"\"', '2020-12-02 06:44:49.577387', 1, 0, 20, 10, 25, 1),
(55, 'Realtors', 'wagtail.publish', 'null', '2020-12-02 06:44:49.616805', 1, 0, 20, 10, 25, 1),
(56, 'Blogs', 'wagtail.edit', '\"\"', '2020-12-02 06:46:14.583436', 1, 0, 15, 8, 26, 1),
(57, 'Blogs', 'wagtail.rename', '{\"title\": {\"old\": \"Listing Blogs\", \"new\": \"Blogs\"}}', '2020-12-02 06:46:14.623271', 0, 0, 15, 8, 26, 1),
(58, 'Blogs', 'wagtail.publish', '{\"title\": {\"old\": \"Listing Blogs\", \"new\": \"Blogs\"}}', '2020-12-02 06:46:14.626937', 1, 0, 15, 8, 26, 1),
(59, 'Dự án', 'wagtail.edit', '\"\"', '2020-12-02 06:46:44.254217', 1, 0, 10, 7, 27, 1),
(60, 'Dự án', 'wagtail.rename', '{\"title\": {\"old\": \"Listing Projects\", \"new\": \"D\\u1ef1 \\u00e1n\"}}', '2020-12-02 06:46:44.291209', 0, 0, 10, 7, 27, 1),
(61, 'Dự án', 'wagtail.publish', '{\"title\": {\"old\": \"Listing Projects\", \"new\": \"D\\u1ef1 \\u00e1n\"}}', '2020-12-02 06:46:44.295109', 1, 0, 10, 7, 27, 1),
(62, 'home', 'wagtail.delete', '\"\"', '2020-12-02 06:48:17.088038', 0, 1, 1, 2, NULL, 1),
(63, 'Làm thế nào để có nó?', 'wagtail.create', '\"\"', '2020-12-02 08:14:01.216494', 1, 0, 17, 14, NULL, 1),
(64, 'Làm thế nào để có nó?', 'wagtail.publish', 'null', '2020-12-02 08:14:01.426580', 1, 0, 17, 14, 28, 1),
(65, 'Nó đến từ đâu?', 'wagtail.edit', '\"\"', '2020-12-02 08:15:13.340606', 1, 0, 17, 11, 29, 1),
(66, 'Nó đến từ đâu?', 'wagtail.publish', 'null', '2020-12-02 08:15:13.446493', 0, 0, 17, 11, 29, 1),
(67, 'Làm thế nào để có nó?', 'wagtail.edit', '\"\"', '2020-12-02 08:15:42.802323', 1, 0, 17, 14, 30, 1),
(68, 'Làm thế nào để có nó?', 'wagtail.publish', 'null', '2020-12-02 08:15:42.919191', 1, 0, 17, 14, 30, 1),
(69, 'Làm thế nào để có nó?', 'wagtail.edit', '\"\"', '2020-12-02 08:16:07.440779', 1, 0, 17, 14, 31, 1),
(70, 'Làm thế nào để có nó?', 'wagtail.publish', 'null', '2020-12-02 08:16:07.490998', 1, 0, 17, 14, 31, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wagtailcore_pagerevision`
--

CREATE TABLE `wagtailcore_pagerevision` (
  `id` int NOT NULL,
  `submitted_for_moderation` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `content_json` longtext COLLATE utf8_unicode_ci NOT NULL,
  `approved_go_live_at` datetime(6) DEFAULT NULL,
  `page_id` int NOT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wagtailcore_pagerevision`
--

INSERT INTO `wagtailcore_pagerevision` (`id`, `submitted_for_moderation`, `created_at`, `content_json`, `approved_go_live_at`, `page_id`, `user_id`) VALUES
(2, 0, '2020-12-02 02:43:17.819594', '{\"pk\": 3, \"path\": \"00010002\", \"depth\": 2, \"numchild\": 0, \"translation_key\": \"e1ade6b5-f9f5-40b8-91af-3cc3c95d626b\", \"locale\": 1, \"title\": \"Homepage\", \"draft_title\": \"Homepage\", \"slug\": \"homepage\", \"content_type\": 6, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/\", \"owner\": 1, \"seo_title\": \"\", \"show_in_menus\": false, \"search_description\": \"\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": null, \"last_published_at\": null, \"latest_revision_created_at\": null, \"live_revision\": null, \"alias_of\": null, \"banner_title\": \"Welcome to Bires\", \"banner_subtitle\": \"Find your perfect home\", \"created_at\": \"2020-12-02T02:43:16.457Z\", \"updated_at\": \"2020-12-02T02:43:17.817Z\", \"banner_svg_image\": \".svg_image/banner_svg_W5ph0zZ.png\"}', NULL, 3, 1),
(6, 0, '2020-12-02 02:56:09.856595', '{\"pk\": 6, \"path\": \"000100020001\", \"depth\": 3, \"numchild\": 0, \"translation_key\": \"fb8efe68-c943-4ffa-8215-019d1bf3d309\", \"locale\": 1, \"title\": \"Contact Us\", \"draft_title\": \"Contact Us\", \"slug\": \"contact-us\", \"content_type\": 7, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/contact-us/\", \"owner\": 1, \"seo_title\": \"contact-us\", \"show_in_menus\": false, \"search_description\": \"contact-us\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": null, \"last_published_at\": null, \"latest_revision_created_at\": null, \"live_revision\": null, \"alias_of\": null, \"content\": \"<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\", \"created_at\": \"2020-12-02T02:56:09.835Z\", \"updated_at\": \"2020-12-02T02:56:09.855Z\", \"question_answer_custom_page\": [{\"pk\": 3, \"sort_order\": 0, \"custom_page_q_and_a\": 6, \"question_answer\": 1}]}', NULL, 6, 1),
(7, 0, '2020-12-02 03:07:53.896587', '{\"pk\": 7, \"path\": \"000100020002\", \"depth\": 3, \"numchild\": 0, \"translation_key\": \"a01f25d2-f6cb-42d6-be71-46a08f93b9dd\", \"locale\": 1, \"title\": \"Projects\", \"draft_title\": \"Projects\", \"slug\": \"projects\", \"content_type\": 10, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/projects/\", \"owner\": 1, \"seo_title\": \"Projects\", \"show_in_menus\": false, \"search_description\": \"Projects\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": null, \"last_published_at\": null, \"latest_revision_created_at\": null, \"live_revision\": null, \"alias_of\": null}', NULL, 7, 1),
(8, 0, '2020-12-02 03:08:24.854873', '{\"pk\": 8, \"path\": \"000100020003\", \"depth\": 3, \"numchild\": 0, \"translation_key\": \"14ba0150-99a7-4a60-915a-d0bd77faae3b\", \"locale\": 1, \"title\": \"Blogs\", \"draft_title\": \"Blogs\", \"slug\": \"blogs\", \"content_type\": 15, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/blogs/\", \"owner\": 1, \"seo_title\": \"Blogs\", \"show_in_menus\": false, \"search_description\": \"Blogs\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": null, \"last_published_at\": null, \"latest_revision_created_at\": null, \"live_revision\": null, \"alias_of\": null}', NULL, 8, 1),
(9, 0, '2020-12-02 03:09:42.340363', '{\"pk\": 9, \"path\": \"000100020004\", \"depth\": 3, \"numchild\": 0, \"translation_key\": \"e63084a4-78ec-4d67-8fc4-1416102cbc51\", \"locale\": 1, \"title\": \"About Us\", \"draft_title\": \"About Us\", \"slug\": \"about-us\", \"content_type\": 7, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/about-us/\", \"owner\": 1, \"seo_title\": \"\", \"show_in_menus\": false, \"search_description\": \"\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": null, \"last_published_at\": null, \"latest_revision_created_at\": null, \"live_revision\": null, \"alias_of\": null, \"content\": \"<p>Tr\\u00e1i v\\u1edbi suy ngh\\u0129 c\\u1ee7a nhi\\u1ec1u ng\\u01b0\\u1eddi, Lorem Ipsum kh\\u00f4ng ch\\u1ec9 \\u0111\\u01a1n gi\\u1ea3n l\\u00e0 v\\u0103n b\\u1ea3n ng\\u1eabu nhi\\u00ean. N\\u00f3 c\\u00f3 ngu\\u1ed3n g\\u1ed1c t\\u1eeb m\\u1ed9t t\\u00e1c ph\\u1ea9m v\\u0103n h\\u1ecdc Latinh c\\u1ed5 \\u0111i\\u1ec3n t\\u1eeb n\\u0103m 45 tr\\u01b0\\u1edbc C\\u00f4ng nguy\\u00ean, \\u0111\\u00e3 c\\u00f3 h\\u01a1n 2000 n\\u0103m tu\\u1ed5i. Richard McClintock, gi\\u00e1o s\\u01b0 ti\\u1ebfng Latinh t\\u1ea1i \\u0110\\u1ea1i h\\u1ecdc Hampden-Sydney \\u1edf Virginia, \\u0111\\u00e3 tra c\\u1ee9u m\\u1ed9t trong nh\\u1eefng t\\u1eeb Latinh kh\\u00f3 hi\\u1ec3u h\\u01a1n, consectetur, t\\u1eeb m\\u1ed9t \\u0111o\\u1ea1n v\\u0103n c\\u1ee7a Lorem Ipsum, v\\u00e0 xem qua c\\u00e1c tr\\u00edch d\\u1eabn c\\u1ee7a t\\u1eeb n\\u00e0y trong v\\u0103n h\\u1ecdc c\\u1ed5 \\u0111i\\u1ec3n, \\u0111\\u00e3 ph\\u00e1t hi\\u1ec7n ra ngu\\u1ed3n g\\u1ed1c kh\\u00f4ng th\\u1ec3 ch\\u1ed1i c\\u00e3i. Lorem Ipsum xu\\u1ea5t ph\\u00e1t t\\u1eeb ph\\u1ea7n 1.10.32 v\\u00e0 1.10.33 c\\u1ee7a &quot;de Finibus Bonorum et Malorum&quot; (C\\u1ef1c \\u0111oan c\\u1ee7a Thi\\u1ec7n v\\u00e0 \\u00c1c) c\\u1ee7a Cicero, \\u0111\\u01b0\\u1ee3c vi\\u1ebft v\\u00e0o n\\u0103m 45 tr\\u01b0\\u1edbc C\\u00f4ng nguy\\u00ean. Cu\\u1ed1n s\\u00e1ch n\\u00e0y l\\u00e0 m\\u1ed9t chuy\\u00ean lu\\u1eadn v\\u1ec1 l\\u00fd thuy\\u1ebft \\u0111\\u1ea1o \\u0111\\u1ee9c, r\\u1ea5t ph\\u1ed5 bi\\u1ebfn trong th\\u1eddi k\\u1ef3 Ph\\u1ee5c h\\u01b0ng. D\\u00f2ng \\u0111\\u1ea7u ti\\u00ean c\\u1ee7a Lorem Ipsum, &quot;Lorem ipsum dolor sit amet ..&quot;, xu\\u1ea5t ph\\u00e1t t\\u1eeb m\\u1ed9t d\\u00f2ng trong ph\\u1ea7n 1.10.32.<br/><br/>Ph\\u00e2n \\u0111o\\u1ea1n ti\\u00eau chu\\u1ea9n c\\u1ee7a Lorem Ipsum \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng t\\u1eeb nh\\u1eefng n\\u0103m 1500 \\u0111\\u01b0\\u1ee3c t\\u00e1i t\\u1ea1o d\\u01b0\\u1edbi \\u0111\\u00e2y cho nh\\u1eefng ng\\u01b0\\u1eddi quan t\\u00e2m. C\\u00e1c ph\\u1ea7n 1.10.32 v\\u00e0 1.10.33 t\\u1eeb &quot;de Finibus Bonorum et Malorum&quot; c\\u1ee7a Cicero c\\u0169ng \\u0111\\u01b0\\u1ee3c sao ch\\u00e9p l\\u1ea1i \\u1edf d\\u1ea1ng nguy\\u00ean b\\u1ea3n ch\\u00ednh x\\u00e1c, k\\u00e8m theo c\\u00e1c b\\u1ea3n ti\\u1ebfng Anh t\\u1eeb b\\u1ea3n d\\u1ecbch n\\u0103m 1914 c\\u1ee7a H. Rackham.</p>\", \"created_at\": \"2020-12-02T03:09:42.322Z\", \"updated_at\": \"2020-12-02T03:09:42.339Z\", \"question_answer_custom_page\": [{\"pk\": 4, \"sort_order\": 0, \"custom_page_q_and_a\": 9, \"question_answer\": 1}]}', NULL, 9, 1),
(10, 0, '2020-12-02 03:10:14.655959', '{\"pk\": 10, \"path\": \"000100020005\", \"depth\": 3, \"numchild\": 0, \"translation_key\": \"8624dd09-6718-440c-918c-9a5159bece91\", \"locale\": 1, \"title\": \"Realtors\", \"draft_title\": \"Realtors\", \"slug\": \"realtors\", \"content_type\": 20, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/realtors/\", \"owner\": 1, \"seo_title\": \"Realtors\", \"show_in_menus\": false, \"search_description\": \"Realtors\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": null, \"last_published_at\": null, \"latest_revision_created_at\": null, \"live_revision\": null, \"alias_of\": null}', NULL, 10, 1),
(11, 0, '2020-12-02 03:12:25.272237', '{\"pk\": 11, \"path\": \"0001000200030001\", \"depth\": 4, \"numchild\": 0, \"translation_key\": \"546e8244-1dcb-4c37-a73f-dc669be15600\", \"locale\": 1, \"title\": \"N\\u00f3 \\u0111\\u1ebfn t\\u1eeb \\u0111\\u00e2u?\", \"draft_title\": \"N\\u00f3 \\u0111\\u1ebfn t\\u1eeb \\u0111\\u00e2u?\", \"slug\": \"n\\u00f3-\\u0111\\u1ebfn-t\\u1eeb-\\u0111\\u00e2u\", \"content_type\": 17, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/blogs/n\\u00f3-\\u0111\\u1ebfn-t\\u1eeb-\\u0111\\u00e2u/\", \"owner\": 1, \"seo_title\": \"n\\u00f3-\\u0111\\u1ebfn-t\\u1eeb-\\u0111\\u00e2u\", \"show_in_menus\": false, \"search_description\": \"Tr\\u00e1i v\\u1edbi suy ngh\\u0129 c\\u1ee7a nhi\\u1ec1u ng\\u01b0\\u1eddi, Lorem Ipsum kh\\u00f4ng ch\\u1ec9 \\u0111\\u01a1n gi\\u1ea3n l\\u00e0 v\\u0103n b\\u1ea3n ng\\u1eabu nhi\\u00ean.\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": null, \"last_published_at\": null, \"latest_revision_created_at\": null, \"live_revision\": null, \"alias_of\": null, \"content\": \"<p>Tr\\u00e1i v\\u1edbi suy ngh\\u0129 c\\u1ee7a nhi\\u1ec1u ng\\u01b0\\u1eddi, Lorem Ipsum kh\\u00f4ng ch\\u1ec9 \\u0111\\u01a1n gi\\u1ea3n l\\u00e0 v\\u0103n b\\u1ea3n ng\\u1eabu nhi\\u00ean. N\\u00f3 c\\u00f3 ngu\\u1ed3n g\\u1ed1c t\\u1eeb m\\u1ed9t t\\u00e1c ph\\u1ea9m v\\u0103n h\\u1ecdc Latinh c\\u1ed5 \\u0111i\\u1ec3n t\\u1eeb n\\u0103m 45 tr\\u01b0\\u1edbc C\\u00f4ng nguy\\u00ean, \\u0111\\u00e3 c\\u00f3 h\\u01a1n 2000 n\\u0103m tu\\u1ed5i. Richard McClintock, gi\\u00e1o s\\u01b0 ti\\u1ebfng Latinh t\\u1ea1i \\u0110\\u1ea1i h\\u1ecdc Hampden-Sydney \\u1edf Virginia, \\u0111\\u00e3 tra c\\u1ee9u m\\u1ed9t trong nh\\u1eefng t\\u1eeb Latinh kh\\u00f3 hi\\u1ec3u h\\u01a1n, consectetur, t\\u1eeb m\\u1ed9t \\u0111o\\u1ea1n v\\u0103n c\\u1ee7a Lorem Ipsum, v\\u00e0 xem qua c\\u00e1c tr\\u00edch d\\u1eabn c\\u1ee7a t\\u1eeb n\\u00e0y trong v\\u0103n h\\u1ecdc c\\u1ed5 \\u0111i\\u1ec3n, \\u0111\\u00e3 ph\\u00e1t hi\\u1ec7n ra ngu\\u1ed3n g\\u1ed1c kh\\u00f4ng th\\u1ec3 ch\\u1ed1i c\\u00e3i. Lorem Ipsum xu\\u1ea5t ph\\u00e1t t\\u1eeb ph\\u1ea7n 1.10.32 v\\u00e0 1.10.33 c\\u1ee7a &quot;de Finibus Bonorum et Malorum&quot; (C\\u1ef1c \\u0111oan c\\u1ee7a Thi\\u1ec7n v\\u00e0 \\u00c1c) c\\u1ee7a Cicero, \\u0111\\u01b0\\u1ee3c vi\\u1ebft v\\u00e0o n\\u0103m 45 tr\\u01b0\\u1edbc C\\u00f4ng nguy\\u00ean. Cu\\u1ed1n s\\u00e1ch n\\u00e0y l\\u00e0 m\\u1ed9t chuy\\u00ean lu\\u1eadn v\\u1ec1 l\\u00fd thuy\\u1ebft \\u0111\\u1ea1o \\u0111\\u1ee9c, r\\u1ea5t ph\\u1ed5 bi\\u1ebfn trong th\\u1eddi k\\u1ef3 Ph\\u1ee5c h\\u01b0ng. D\\u00f2ng \\u0111\\u1ea7u ti\\u00ean c\\u1ee7a Lorem Ipsum, &quot;Lorem ipsum dolor sit amet ..&quot;, xu\\u1ea5t ph\\u00e1t t\\u1eeb m\\u1ed9t d\\u00f2ng trong ph\\u1ea7n 1.10.32.<br/><br/>Ph\\u00e2n \\u0111o\\u1ea1n ti\\u00eau chu\\u1ea9n c\\u1ee7a Lorem Ipsum \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng t\\u1eeb nh\\u1eefng n\\u0103m 1500 \\u0111\\u01b0\\u1ee3c t\\u00e1i t\\u1ea1o d\\u01b0\\u1edbi \\u0111\\u00e2y cho nh\\u1eefng ng\\u01b0\\u1eddi quan t\\u00e2m. C\\u00e1c ph\\u1ea7n 1.10.32 v\\u00e0 1.10.33 t\\u1eeb &quot;de Finibus Bonorum et Malorum&quot; c\\u1ee7a Cicero c\\u0169ng \\u0111\\u01b0\\u1ee3c sao ch\\u00e9p l\\u1ea1i \\u1edf d\\u1ea1ng nguy\\u00ean b\\u1ea3n ch\\u00ednh x\\u00e1c, k\\u00e8m theo c\\u00e1c b\\u1ea3n ti\\u1ebfng Anh t\\u1eeb b\\u1ea3n d\\u1ecbch n\\u0103m 1914 c\\u1ee7a H. Rackham.</p>\", \"featured_image\": 1, \"user\": 1, \"created_at\": \"2020-12-02T03:12:25.244Z\", \"updated_at\": \"2020-12-02T03:12:25.266Z\", \"question_answer_blog\": [{\"pk\": 1, \"sort_order\": 0, \"blog_page\": 11, \"question_answer\": 1}], \"categories\": [], \"tags\": []}', NULL, 11, 1),
(12, 0, '2020-12-02 03:28:18.935278', '{\"pk\": 7, \"path\": \"000100020002\", \"depth\": 3, \"numchild\": 0, \"translation_key\": \"a01f25d2-f6cb-42d6-be71-46a08f93b9dd\", \"locale\": 1, \"title\": \"D\\u1ef1 \\u00e1n\", \"draft_title\": \"Projects\", \"slug\": \"projects\", \"content_type\": 10, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/projects/\", \"owner\": 1, \"seo_title\": \"D\\u1ef1 \\u00e1n\", \"show_in_menus\": false, \"search_description\": \"D\\u1ef1 \\u00e1n\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": \"2020-12-02T03:07:53.917Z\", \"last_published_at\": \"2020-12-02T03:07:53.917Z\", \"latest_revision_created_at\": \"2020-12-02T03:07:53.896Z\", \"live_revision\": 7, \"alias_of\": null}', NULL, 7, 1),
(13, 0, '2020-12-02 03:33:24.690773', '{\"pk\": 12, \"path\": \"0001000200050001\", \"depth\": 4, \"numchild\": 0, \"translation_key\": \"5b6804a4-1933-49e8-a5a5-2d6b0cb12e24\", \"locale\": 1, \"title\": \"Nguyen Van Hung\", \"draft_title\": \"Nguyen Van Hung\", \"slug\": \"nguyen-van-hung\", \"content_type\": 19, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/realtors/nguyen-van-hung/\", \"owner\": 1, \"seo_title\": \"\", \"show_in_menus\": false, \"search_description\": \"\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": null, \"last_published_at\": null, \"latest_revision_created_at\": null, \"live_revision\": null, \"alias_of\": null, \"name\": \"Nguyen Van Hung\", \"position_title\": \"nh\\u00e0 m\\u00f4i gi\\u1edbi\", \"phone\": \"0427241119\", \"email\": \"nguyenvanhung@moigioi.com\", \"description\": \"Tr\\u00e1i v\\u1edbi suy ngh\\u0129 c\\u1ee7a nhi\\u1ec1u ng\\u01b0\\u1eddi, Lorem Ipsum kh\\u00f4ng ch\\u1ec9 \\u0111\\u01a1n gi\\u1ea3n l\\u00e0 v\\u0103n b\\u1ea3n ng\\u1eabu nhi\\u00ean. N\\u00f3 c\\u00f3 ngu\\u1ed3n g\\u1ed1c t\\u1eeb m\\u1ed9t t\\u00e1c ph\\u1ea9m v\\u0103n h\\u1ecdc Latinh c\\u1ed5 \\u0111i\\u1ec3n t\\u1eeb n\\u0103m 45 tr\\u01b0\\u1edbc C\\u00f4ng nguy\\u00ean, \\u0111\\u00e3 c\\u00f3 h\\u01a1n 2000 n\\u0103m tu\\u1ed5i. Richard McClintock, gi\\u00e1o s\\u01b0 ti\\u1ebfng Latinh t\\u1ea1i \\u0110\\u1ea1i h\\u1ecdc Hampden-Sydney \\u1edf Virginia, \\u0111\\u00e3 tra c\\u1ee9u m\\u1ed9t trong nh\\u1eefng t\\u1eeb Latinh kh\\u00f3 hi\\u1ec3u h\\u01a1n, consectetur, t\\u1eeb m\\u1ed9t \\u0111o\\u1ea1n v\\u0103n c\\u1ee7a Lorem Ipsum, v\\u00e0 xem qua c\\u00e1c tr\\u00edch d\\u1eabn c\\u1ee7a t\\u1eeb n\\u00e0y trong v\\u0103n h\\u1ecdc c\\u1ed5 \\u0111i\\u1ec3n, \\u0111\\u00e3 ph\\u00e1t hi\\u1ec7n ra ngu\\u1ed3n g\\u1ed1c kh\\u00f4ng th\\u1ec3 ch\\u1ed1i c\\u00e3i. Lorem Ipsum xu\\u1ea5t ph\\u00e1t t\\u1eeb ph\\u1ea7n 1.10.32 v\\u00e0 1.10.33 c\\u1ee7a \\\"de Finibus Bonorum et Malorum\\\" (C\\u1ef1c \\u0111oan c\\u1ee7a Thi\\u1ec7n v\\u00e0 \\u00c1c) c\\u1ee7a Cicero, \\u0111\\u01b0\\u1ee3c vi\\u1ebft v\\u00e0o n\\u0103m 45 tr\\u01b0\\u1edbc C\\u00f4ng nguy\\u00ean. Cu\\u1ed1n s\\u00e1ch n\\u00e0y l\\u00e0 m\\u1ed9t chuy\\u00ean lu\\u1eadn v\\u1ec1 l\\u00fd thuy\\u1ebft \\u0111\\u1ea1o \\u0111\\u1ee9c, r\\u1ea5t ph\\u1ed5 bi\\u1ebfn trong th\\u1eddi k\\u1ef3 Ph\\u1ee5c h\\u01b0ng. D\\u00f2ng \\u0111\\u1ea7u ti\\u00ean c\\u1ee7a Lorem Ipsum, \\\"Lorem ipsum dolor sit amet ..\\\", xu\\u1ea5t ph\\u00e1t t\\u1eeb m\\u1ed9t d\\u00f2ng trong ph\\u1ea7n 1.10.32.\", \"short_description\": \"Tr\\u00e1i v\\u1edbi suy ngh\\u0129 c\\u1ee7a nhi\\u1ec1u ng\\u01b0\\u1eddi, Lorem Ipsum kh\\u00f4ng ch\\u1ec9 \\u0111\\u01a1n gi\\u1ea3n l\\u00e0 v\\u0103n b\\u1ea3n ng\\u1eabu nhi\\u00ean.\", \"link_profile1\": \"https://www.facebook.com/\", \"link_profile2\": \"https://twitter.com/?lang=vi\", \"link_profile3\": \"https://id.zalo.me/account?continue=https://chat.zalo.me\", \"image\": null, \"created_at\": \"2020-12-02T03:33:24.670Z\", \"updated_at\": \"2020-12-02T03:33:24.689Z\", \"realtor_project\": []}', NULL, 12, 1),
(14, 0, '2020-12-02 03:39:05.109411', '{\"pk\": 12, \"path\": \"0001000200050001\", \"depth\": 4, \"numchild\": 0, \"translation_key\": \"5b6804a4-1933-49e8-a5a5-2d6b0cb12e24\", \"locale\": 1, \"title\": \"Nguyen Van Hung\", \"draft_title\": \"Nguyen Van Hung\", \"slug\": \"nguyen-van-hung\", \"content_type\": 19, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/realtors/nguyen-van-hung/\", \"owner\": 1, \"seo_title\": \"\", \"show_in_menus\": false, \"search_description\": \"\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": \"2020-12-02T03:33:24.708Z\", \"last_published_at\": \"2020-12-02T03:33:24.708Z\", \"latest_revision_created_at\": \"2020-12-02T03:33:24.690Z\", \"live_revision\": 13, \"alias_of\": null, \"name\": \"Nguyen Van Hung\", \"position_title\": \"nh\\u00e0 m\\u00f4i gi\\u1edbi\", \"phone\": \"0427241119\", \"email\": \"nguyenvanhung@moigioi.com\", \"description\": \"Tr\\u00e1i v\\u1edbi suy ngh\\u0129 c\\u1ee7a nhi\\u1ec1u ng\\u01b0\\u1eddi, Lorem Ipsum kh\\u00f4ng ch\\u1ec9 \\u0111\\u01a1n gi\\u1ea3n l\\u00e0 v\\u0103n b\\u1ea3n ng\\u1eabu nhi\\u00ean. N\\u00f3 c\\u00f3 ngu\\u1ed3n g\\u1ed1c t\\u1eeb m\\u1ed9t t\\u00e1c ph\\u1ea9m v\\u0103n h\\u1ecdc Latinh c\\u1ed5 \\u0111i\\u1ec3n t\\u1eeb n\\u0103m 45 tr\\u01b0\\u1edbc C\\u00f4ng nguy\\u00ean, \\u0111\\u00e3 c\\u00f3 h\\u01a1n 2000 n\\u0103m tu\\u1ed5i. Richard McClintock, gi\\u00e1o s\\u01b0 ti\\u1ebfng Latinh t\\u1ea1i \\u0110\\u1ea1i h\\u1ecdc Hampden-Sydney \\u1edf Virginia, \\u0111\\u00e3 tra c\\u1ee9u m\\u1ed9t trong nh\\u1eefng t\\u1eeb Latinh kh\\u00f3 hi\\u1ec3u h\\u01a1n, consectetur, t\\u1eeb m\\u1ed9t \\u0111o\\u1ea1n v\\u0103n c\\u1ee7a Lorem Ipsum, v\\u00e0 xem qua c\\u00e1c tr\\u00edch d\\u1eabn c\\u1ee7a t\\u1eeb n\\u00e0y trong v\\u0103n h\\u1ecdc c\\u1ed5 \\u0111i\\u1ec3n, \\u0111\\u00e3 ph\\u00e1t hi\\u1ec7n ra ngu\\u1ed3n g\\u1ed1c kh\\u00f4ng th\\u1ec3 ch\\u1ed1i c\\u00e3i. Lorem Ipsum xu\\u1ea5t ph\\u00e1t t\\u1eeb ph\\u1ea7n 1.10.32 v\\u00e0 1.10.33 c\\u1ee7a \\\"de Finibus Bonorum et Malorum\\\" (C\\u1ef1c \\u0111oan c\\u1ee7a Thi\\u1ec7n v\\u00e0 \\u00c1c) c\\u1ee7a Cicero, \\u0111\\u01b0\\u1ee3c vi\\u1ebft v\\u00e0o n\\u0103m 45 tr\\u01b0\\u1edbc C\\u00f4ng nguy\\u00ean. Cu\\u1ed1n s\\u00e1ch n\\u00e0y l\\u00e0 m\\u1ed9t chuy\\u00ean lu\\u1eadn v\\u1ec1 l\\u00fd thuy\\u1ebft \\u0111\\u1ea1o \\u0111\\u1ee9c, r\\u1ea5t ph\\u1ed5 bi\\u1ebfn trong th\\u1eddi k\\u1ef3 Ph\\u1ee5c h\\u01b0ng. D\\u00f2ng \\u0111\\u1ea7u ti\\u00ean c\\u1ee7a Lorem Ipsum, \\\"Lorem ipsum dolor sit amet ..\\\", xu\\u1ea5t ph\\u00e1t t\\u1eeb m\\u1ed9t d\\u00f2ng trong ph\\u1ea7n 1.10.32.\", \"short_description\": \"Tr\\u00e1i v\\u1edbi suy ngh\\u0129 c\\u1ee7a nhi\\u1ec1u ng\\u01b0\\u1eddi, Lorem Ipsum kh\\u00f4ng ch\\u1ec9 \\u0111\\u01a1n gi\\u1ea3n l\\u00e0 v\\u0103n b\\u1ea3n ng\\u1eabu nhi\\u00ean.\", \"link_profile1\": \"https://www.facebook.com/\", \"link_profile2\": \"https://twitter.com/?lang=vi\", \"link_profile3\": \"https://id.zalo.me/account?continue=https://chat.zalo.me\", \"image\": 2, \"created_at\": \"2020-12-02T03:33:24.670Z\", \"updated_at\": \"2020-12-02T03:39:05.108Z\", \"realtor_project\": []}', NULL, 12, 1),
(15, 0, '2020-12-02 03:43:41.786556', '{\"pk\": 3, \"path\": \"00010002\", \"depth\": 2, \"numchild\": 5, \"translation_key\": \"e1ade6b5-f9f5-40b8-91af-3cc3c95d626b\", \"locale\": 1, \"title\": \"Homepage\", \"draft_title\": \"Homepage\", \"slug\": \"homepage\", \"content_type\": 6, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/\", \"owner\": 1, \"seo_title\": \"\", \"show_in_menus\": false, \"search_description\": \"\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": \"2020-12-02T02:43:17.847Z\", \"last_published_at\": \"2020-12-02T02:43:17.847Z\", \"latest_revision_created_at\": \"2020-12-02T02:43:17.819Z\", \"live_revision\": 2, \"alias_of\": null, \"banner_title\": \"Welcome to Bires\", \"banner_subtitle\": \"Find your perfect home\", \"created_at\": \"2020-12-02T02:43:16.457Z\", \"updated_at\": \"2020-12-02T03:43:41.285Z\", \"banner_svg_image\": \".svg_image/undraw_best_place_r685.svg\"}', NULL, 3, 1),
(16, 0, '2020-12-02 03:49:28.492476', '{\"pk\": 3, \"path\": \"00010002\", \"depth\": 2, \"numchild\": 5, \"translation_key\": \"e1ade6b5-f9f5-40b8-91af-3cc3c95d626b\", \"locale\": 1, \"title\": \"Trang ch\\u1ee7\", \"draft_title\": \"Homepage\", \"slug\": \"homepage\", \"content_type\": 6, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/\", \"owner\": 1, \"seo_title\": \"\", \"show_in_menus\": false, \"search_description\": \"\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": \"2020-12-02T02:43:17.847Z\", \"last_published_at\": \"2020-12-02T03:43:41.858Z\", \"latest_revision_created_at\": \"2020-12-02T03:43:41.786Z\", \"live_revision\": 15, \"alias_of\": null, \"banner_title\": \"Welcome to Bires\", \"banner_subtitle\": \"Find your perfect home\", \"created_at\": \"2020-12-02T02:43:16.457Z\", \"updated_at\": \"2020-12-02T03:49:28.492Z\", \"banner_svg_image\": \".svg_image/undraw_best_place_r685.svg\"}', NULL, 3, 1),
(17, 0, '2020-12-02 04:05:43.221217', '{\"pk\": 8, \"path\": \"000100020003\", \"depth\": 3, \"numchild\": 1, \"translation_key\": \"14ba0150-99a7-4a60-915a-d0bd77faae3b\", \"locale\": 1, \"title\": \"Blogs\", \"draft_title\": \"Blogs\", \"slug\": \"blogs\", \"content_type\": 15, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/blogs/\", \"owner\": 1, \"seo_title\": \"Blogs\", \"show_in_menus\": false, \"search_description\": \"Blogs\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": \"2020-12-02T03:08:24.870Z\", \"last_published_at\": \"2020-12-02T03:08:24.870Z\", \"latest_revision_created_at\": \"2020-12-02T03:08:24.854Z\", \"live_revision\": 8, \"alias_of\": null, \"title_on_homepage\": \"Blog g\\u1ea7n \\u0111\\u00e2u nh\\u1ea5t\"}', NULL, 8, 1),
(18, 0, '2020-12-02 04:06:05.995193', '{\"pk\": 8, \"path\": \"000100020003\", \"depth\": 3, \"numchild\": 1, \"translation_key\": \"14ba0150-99a7-4a60-915a-d0bd77faae3b\", \"locale\": 1, \"title\": \"Blogs\", \"draft_title\": \"Blogs\", \"slug\": \"blogs\", \"content_type\": 15, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/blogs/\", \"owner\": 1, \"seo_title\": \"Blogs\", \"show_in_menus\": false, \"search_description\": \"Blogs\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": \"2020-12-02T03:08:24.870Z\", \"last_published_at\": \"2020-12-02T04:05:43.248Z\", \"latest_revision_created_at\": \"2020-12-02T04:05:43.221Z\", \"live_revision\": 17, \"alias_of\": null, \"title_on_homepage\": \"Blog g\\u1ea7n \\u0111\\u00e2y nh\\u1ea5t\"}', NULL, 8, 1),
(19, 0, '2020-12-02 04:06:28.929988', '{\"pk\": 10, \"path\": \"000100020005\", \"depth\": 3, \"numchild\": 1, \"translation_key\": \"8624dd09-6718-440c-918c-9a5159bece91\", \"locale\": 1, \"title\": \"Realtors\", \"draft_title\": \"Realtors\", \"slug\": \"realtors\", \"content_type\": 20, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/realtors/\", \"owner\": 1, \"seo_title\": \"Realtors\", \"show_in_menus\": false, \"search_description\": \"Realtors\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": \"2020-12-02T03:10:14.674Z\", \"last_published_at\": \"2020-12-02T03:10:14.674Z\", \"latest_revision_created_at\": \"2020-12-02T03:10:14.655Z\", \"live_revision\": 10, \"alias_of\": null, \"title_on_homepage\": \"Th\\u00e0nh vi\\u00ean\"}', NULL, 10, 1),
(20, 0, '2020-12-02 06:09:22.102808', '{\"pk\": 10, \"path\": \"000100020005\", \"depth\": 3, \"numchild\": 1, \"translation_key\": \"8624dd09-6718-440c-918c-9a5159bece91\", \"locale\": 1, \"title\": \"Realtors\", \"draft_title\": \"Realtors\", \"slug\": \"realtors\", \"content_type\": 20, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/realtors/\", \"owner\": 1, \"seo_title\": \"Realtors\", \"show_in_menus\": false, \"search_description\": \"Realtors\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": \"2020-12-02T03:10:14.674Z\", \"last_published_at\": \"2020-12-02T04:06:28.952Z\", \"latest_revision_created_at\": \"2020-12-02T04:06:28.929Z\", \"live_revision\": 19, \"alias_of\": null, \"title_on_homepage\": \"Th\\u00e0nh vi\\u00ean\", \"profile_link\": \"View profile\"}', NULL, 10, 1),
(21, 0, '2020-12-02 06:16:18.369662', '{\"pk\": 13, \"path\": \"0001000200020001\", \"depth\": 4, \"numchild\": 0, \"translation_key\": \"a05ccf89-ea80-4df8-8841-07ad91650e82\", \"locale\": 1, \"title\": \"Example\", \"draft_title\": \"Example\", \"slug\": \"example\", \"content_type\": 9, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/projects/example/\", \"owner\": 1, \"seo_title\": \"\", \"show_in_menus\": false, \"search_description\": \"\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": null, \"last_published_at\": null, \"latest_revision_created_at\": null, \"live_revision\": null, \"alias_of\": null, \"hot_title\": null, \"address\": \"253 John street\", \"city\": \"Sydney\", \"status\": \"Available\", \"general_information\": \"<p>Ch\\u00fang ta v\\u1eabn bi\\u1ebft r\\u1eb1ng, l\\u00e0m vi\\u1ec7c v\\u1edbi m\\u1ed9t \\u0111o\\u1ea1n v\\u0103n b\\u1ea3n d\\u1ec5 \\u0111\\u1ecdc v\\u00e0 r\\u00f5 ngh\\u0129a d\\u1ec5 g\\u00e2y r\\u1ed1i tr\\u00ed v\\u00e0 c\\u1ea3n tr\\u1edf vi\\u1ec7c t\\u1eadp trung v\\u00e0o y\\u1ebfu t\\u1ed1 tr\\u00ecnh b\\u00e0y v\\u0103n b\\u1ea3n. Lorem Ipsum c\\u00f3 \\u01b0u \\u0111i\\u1ec3m h\\u01a1n so v\\u1edbi \\u0111o\\u1ea1n v\\u0103n b\\u1ea3n ch\\u1ec9 g\\u1ed3m n\\u1ed9i dung ki\\u1ec3u &quot;N\\u1ed9i dung, n\\u1ed9i dung, n\\u1ed9i dung&quot; l\\u00e0 n\\u00f3 khi\\u1ebfn v\\u0103n b\\u1ea3n gi\\u1ed1ng th\\u1eadt h\\u01a1n, b\\u00ecnh th\\u01b0\\u1eddng h\\u01a1n. Nhi\\u1ec1u ph\\u1ea7n m\\u1ec1m thi\\u1ebft k\\u1ebf giao di\\u1ec7n web v\\u00e0 d\\u00e0n trang ng\\u00e0y nay \\u0111\\u00e3 s\\u1eed d\\u1ee5ng Lorem Ipsum l\\u00e0m \\u0111o\\u1ea1n v\\u0103n b\\u1ea3n gi\\u1ea3, v\\u00e0 n\\u1ebfu b\\u1ea1n th\\u1eed t\\u00ecm c\\u00e1c \\u0111o\\u1ea1n &quot;Lorem ipsum&quot; tr\\u00ean m\\u1ea1ng th\\u00ec s\\u1ebd kh\\u00e1m ph\\u00e1 ra nhi\\u1ec1u trang web hi\\u1ec7n v\\u1eabn \\u0111ang trong qu\\u00e1 tr\\u00ecnh x\\u00e2y d\\u1ef1ng. C\\u00f3 nhi\\u1ec1u phi\\u00ean b\\u1ea3n kh\\u00e1c nhau \\u0111\\u00e3 xu\\u1ea5t hi\\u1ec7n, \\u0111\\u00f4i khi do v\\u00f4 t\\u00ecnh, nhi\\u1ec1u khi do c\\u1ed1 \\u00fd (xen th\\u00eam v\\u00e0o nh\\u1eefng c\\u00e2u h\\u00e0i h\\u01b0\\u1edbc hay th\\u00f4ng t\\u1ee5c).</p>\", \"created_at\": \"2020-12-02T06:16:18.341Z\", \"updated_at\": \"2020-12-02T06:16:18.364Z\", \"is_displayed_on_homepage\": true, \"featured_image\": 3, \"project_detail_carousel_images\": [], \"project_parts\": [{\"pk\": 1, \"sort_order\": 0, \"page\": 13, \"part_title\": \"L\\u00e0m th\\u1ebf n\\u00e0o \\u0111\\u1ec3 c\\u00f3 n\\u00f3?\", \"part_content\": \"<p>C\\u00f3 r\\u1ea5t nhi\\u1ec1u bi\\u1ebfn th\\u1ec3 c\\u1ee7a Lorem Ipsum m\\u00e0 b\\u1ea1n c\\u00f3 th\\u1ec3 t\\u00ecm th\\u1ea5y, nh\\u01b0ng \\u0111a s\\u1ed1 \\u0111\\u01b0\\u1ee3c bi\\u1ebfn \\u0111\\u1ed5i b\\u1eb1ng c\\u00e1ch th\\u00eam c\\u00e1c y\\u1ebfu t\\u1ed1 h\\u00e0i h\\u01b0\\u1edbc, c\\u00e1c t\\u1eeb ng\\u1eabu nhi\\u00ean c\\u00f3 khi kh\\u00f4ng c\\u00f3 v\\u1ebb g\\u00ec l\\u00e0 c\\u00f3 \\u00fd ngh\\u0129a. N\\u1ebfu b\\u1ea1n \\u0111\\u1ecbnh s\\u1eed d\\u1ee5ng m\\u1ed9t \\u0111o\\u1ea1n Lorem Ipsum, b\\u1ea1n n\\u00ean ki\\u1ec3m tra k\\u0129 \\u0111\\u1ec3 ch\\u1eafn ch\\u1eafn l\\u00e0 kh\\u00f4ng c\\u00f3 g\\u00ec nh\\u1ea1y c\\u1ea3m \\u0111\\u01b0\\u1ee3c gi\\u1ea5u \\u1edf gi\\u1eefa \\u0111o\\u1ea1n v\\u0103n b\\u1ea3n. T\\u1ea5t c\\u1ea3 c\\u00e1c c\\u00f4ng c\\u1ee5 s\\u1ea3n xu\\u1ea5t v\\u0103n b\\u1ea3n m\\u1eabu Lorem Ipsum \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c l\\u00e0m theo c\\u00e1ch l\\u1eb7p \\u0111i l\\u1eb7p l\\u1ea1i c\\u00e1c \\u0111o\\u1ea1n ch\\u1eef cho t\\u1edbi \\u0111\\u1ee7 th\\u00ec th\\u00f4i, khi\\u1ebfn cho lipsum.com tr\\u1edf th\\u00e0nh c\\u00f4ng c\\u1ee5 s\\u1ea3n xu\\u1ea5t Lorem Ipsum \\u0111\\u00e1ng gi\\u00e1 nh\\u1ea5t tr\\u00ean m\\u1ea1ng. Trang web n\\u00e0y s\\u1eed d\\u1ee5ng h\\u01a1n 200 t\\u1eeb la-tinh, k\\u1ebft h\\u1ee3p thu\\u1ea7n th\\u1ee5c nhi\\u1ec1u c\\u1ea5u tr\\u00fac c\\u00e2u \\u0111\\u1ec3 t\\u1ea1o ra v\\u0103n b\\u1ea3n Lorem Ipsum tr\\u00f4ng c\\u00f3 v\\u1ebb th\\u1eadt s\\u1ef1 h\\u1ee3p l\\u00ed. Nh\\u1edd th\\u1ebf, v\\u0103n b\\u1ea3n Lorem Ipsum \\u0111\\u01b0\\u1ee3c t\\u1ea1o ra m\\u00e0 kh\\u00f4ng c\\u1ea7n m\\u1ed9t s\\u1ef1 l\\u1eb7p l\\u1ea1i n\\u00e0o, c\\u0169ng kh\\u00f4ng c\\u1ea7n ch\\u00e8n th\\u00eam c\\u00e1c t\\u1eeb ng\\u1eef h\\u00f3m h\\u1ec9nh hay thi\\u1ebfu tr\\u1eadt t\\u1ef1.</p>\"}], \"project_realtor\": [{\"pk\": 1, \"sort_order\": 0, \"project_page\": 13, \"realtor_page\": 12}], \"question_answer_project\": [{\"pk\": 1, \"sort_order\": 0, \"project_page\": 13, \"question_answer\": 1}], \"categories\": []}', NULL, 13, 1),
(22, 0, '2020-12-02 06:28:15.811472', '{\"pk\": 7, \"path\": \"000100020002\", \"depth\": 3, \"numchild\": 1, \"translation_key\": \"a01f25d2-f6cb-42d6-be71-46a08f93b9dd\", \"locale\": 1, \"title\": \"Listing Projects\", \"draft_title\": \"D\\u1ef1 \\u00e1n\", \"slug\": \"listing-project\", \"content_type\": 10, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/projects/\", \"owner\": 1, \"seo_title\": \"D\\u1ef1 \\u00e1n\", \"show_in_menus\": false, \"search_description\": \"D\\u1ef1 \\u00e1n\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": \"2020-12-02T03:07:53.917Z\", \"last_published_at\": \"2020-12-02T03:28:18.965Z\", \"latest_revision_created_at\": \"2020-12-02T03:28:18.935Z\", \"live_revision\": 12, \"alias_of\": null, \"title_on_homepage\": \"Listing Projects\"}', NULL, 7, 1),
(23, 0, '2020-12-02 06:44:21.158079', '{\"pk\": 8, \"path\": \"000100020003\", \"depth\": 3, \"numchild\": 1, \"translation_key\": \"14ba0150-99a7-4a60-915a-d0bd77faae3b\", \"locale\": 1, \"title\": \"Listing Blogs\", \"draft_title\": \"Blogs\", \"slug\": \"listing-blogs\", \"content_type\": 15, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/blogs/\", \"owner\": 1, \"seo_title\": \"Blogs\", \"show_in_menus\": false, \"search_description\": \"Blogs\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": \"2020-12-02T03:08:24.870Z\", \"last_published_at\": \"2020-12-02T04:06:06.038Z\", \"latest_revision_created_at\": \"2020-12-02T04:06:05.995Z\", \"live_revision\": 18, \"alias_of\": null, \"title_on_homepage\": \"Blog g\\u1ea7n \\u0111\\u00e2y nh\\u1ea5t\"}', NULL, 8, 1),
(24, 0, '2020-12-02 06:44:32.440769', '{\"pk\": 7, \"path\": \"000100020002\", \"depth\": 3, \"numchild\": 1, \"translation_key\": \"a01f25d2-f6cb-42d6-be71-46a08f93b9dd\", \"locale\": 1, \"title\": \"Listing Projects\", \"draft_title\": \"Listing Projects\", \"slug\": \"listing-projects\", \"content_type\": 10, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/listing-project/\", \"owner\": 1, \"seo_title\": \"D\\u1ef1 \\u00e1n\", \"show_in_menus\": false, \"search_description\": \"D\\u1ef1 \\u00e1n\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": \"2020-12-02T03:07:53.917Z\", \"last_published_at\": \"2020-12-02T06:28:15.858Z\", \"latest_revision_created_at\": \"2020-12-02T06:28:15.811Z\", \"live_revision\": 22, \"alias_of\": null, \"title_on_homepage\": \"Listing Projects\"}', NULL, 7, 1),
(25, 0, '2020-12-02 06:44:49.564004', '{\"pk\": 10, \"path\": \"000100020005\", \"depth\": 3, \"numchild\": 1, \"translation_key\": \"8624dd09-6718-440c-918c-9a5159bece91\", \"locale\": 1, \"title\": \"Realtors\", \"draft_title\": \"Realtors\", \"slug\": \"listing-realtors\", \"content_type\": 20, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/realtors/\", \"owner\": 1, \"seo_title\": \"Realtors\", \"show_in_menus\": false, \"search_description\": \"Realtors\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": \"2020-12-02T03:10:14.674Z\", \"last_published_at\": \"2020-12-02T06:09:22.129Z\", \"latest_revision_created_at\": \"2020-12-02T06:09:22.102Z\", \"live_revision\": 20, \"alias_of\": null, \"title_on_homepage\": \"Th\\u00e0nh vi\\u00ean\", \"profile_link\": \"View profile\"}', NULL, 10, 1),
(26, 0, '2020-12-02 06:46:14.571321', '{\"pk\": 8, \"path\": \"000100020003\", \"depth\": 3, \"numchild\": 1, \"translation_key\": \"14ba0150-99a7-4a60-915a-d0bd77faae3b\", \"locale\": 1, \"title\": \"Blogs\", \"draft_title\": \"Listing Blogs\", \"slug\": \"listing-blogs\", \"content_type\": 15, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/listing-blogs/\", \"owner\": 1, \"seo_title\": \"Blogs\", \"show_in_menus\": false, \"search_description\": \"Blogs\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": \"2020-12-02T03:08:24.870Z\", \"last_published_at\": \"2020-12-02T06:44:21.187Z\", \"latest_revision_created_at\": \"2020-12-02T06:44:21.158Z\", \"live_revision\": 23, \"alias_of\": null, \"title_on_homepage\": \"Blog g\\u1ea7n \\u0111\\u00e2y nh\\u1ea5t\"}', NULL, 8, 1),
(27, 0, '2020-12-02 06:46:44.237990', '{\"pk\": 7, \"path\": \"000100020002\", \"depth\": 3, \"numchild\": 1, \"translation_key\": \"a01f25d2-f6cb-42d6-be71-46a08f93b9dd\", \"locale\": 1, \"title\": \"D\\u1ef1 \\u00e1n\", \"draft_title\": \"Listing Projects\", \"slug\": \"listing-projects\", \"content_type\": 10, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/listing-projects/\", \"owner\": 1, \"seo_title\": \"D\\u1ef1 \\u00e1n\", \"show_in_menus\": false, \"search_description\": \"D\\u1ef1 \\u00e1n\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": \"2020-12-02T03:07:53.917Z\", \"last_published_at\": \"2020-12-02T06:44:32.467Z\", \"latest_revision_created_at\": \"2020-12-02T06:44:32.440Z\", \"live_revision\": 24, \"alias_of\": null, \"title_on_homepage\": \"Listing Projects\"}', NULL, 7, 1),
(28, 0, '2020-12-02 08:14:01.273974', '{\"pk\": 14, \"path\": \"0001000200030002\", \"depth\": 4, \"numchild\": 0, \"translation_key\": \"9713cabf-3a1f-4147-82c9-3b372830077c\", \"locale\": 1, \"title\": \"L\\u00e0m th\\u1ebf n\\u00e0o \\u0111\\u1ec3 c\\u00f3 n\\u00f3?\", \"draft_title\": \"L\\u00e0m th\\u1ebf n\\u00e0o \\u0111\\u1ec3 c\\u00f3 n\\u00f3?\", \"slug\": \"l\\u00e0m-th\\u1ebf-n\\u00e0o-\\u0111\\u1ec3-c\\u00f3-n\\u00f3\", \"content_type\": 17, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/listing-blogs/l\\u00e0m-th\\u1ebf-n\\u00e0o-\\u0111\\u1ec3-c\\u00f3-n\\u00f3/\", \"owner\": 1, \"seo_title\": \"\", \"show_in_menus\": false, \"search_description\": \"\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": null, \"last_published_at\": null, \"latest_revision_created_at\": null, \"live_revision\": null, \"alias_of\": null, \"content\": \"<p>C\\u00f3 r\\u1ea5t nhi\\u1ec1u bi\\u1ebfn th\\u1ec3 c\\u1ee7a Lorem Ipsum m\\u00e0 b\\u1ea1n c\\u00f3 th\\u1ec3 t\\u00ecm th\\u1ea5y, nh\\u01b0ng \\u0111a s\\u1ed1 \\u0111\\u01b0\\u1ee3c bi\\u1ebfn \\u0111\\u1ed5i b\\u1eb1ng c\\u00e1ch th\\u00eam c\\u00e1c y\\u1ebfu t\\u1ed1 h\\u00e0i h\\u01b0\\u1edbc, c\\u00e1c t\\u1eeb ng\\u1eabu nhi\\u00ean c\\u00f3 khi kh\\u00f4ng c\\u00f3 v\\u1ebb g\\u00ec l\\u00e0 c\\u00f3 \\u00fd ngh\\u0129a. N\\u1ebfu b\\u1ea1n \\u0111\\u1ecbnh s\\u1eed d\\u1ee5ng m\\u1ed9t \\u0111o\\u1ea1n Lorem Ipsum, b\\u1ea1n n\\u00ean ki\\u1ec3m tra k\\u0129 \\u0111\\u1ec3 ch\\u1eafn ch\\u1eafn l\\u00e0 kh\\u00f4ng c\\u00f3 g\\u00ec nh\\u1ea1y c\\u1ea3m \\u0111\\u01b0\\u1ee3c gi\\u1ea5u \\u1edf gi\\u1eefa \\u0111o\\u1ea1n v\\u0103n b\\u1ea3n. T\\u1ea5t c\\u1ea3 c\\u00e1c c\\u00f4ng c\\u1ee5 s\\u1ea3n xu\\u1ea5t v\\u0103n b\\u1ea3n m\\u1eabu Lorem Ipsum \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c l\\u00e0m theo c\\u00e1ch l\\u1eb7p \\u0111i l\\u1eb7p l\\u1ea1i c\\u00e1c \\u0111o\\u1ea1n ch\\u1eef cho t\\u1edbi \\u0111\\u1ee7 th\\u00ec th\\u00f4i, khi\\u1ebfn cho lipsum.com tr\\u1edf th\\u00e0nh c\\u00f4ng c\\u1ee5 s\\u1ea3n xu\\u1ea5t Lorem Ipsum \\u0111\\u00e1ng gi\\u00e1 nh\\u1ea5t tr\\u00ean m\\u1ea1ng. Trang web n\\u00e0y s\\u1eed d\\u1ee5ng h\\u01a1n 200 t\\u1eeb la-tinh, k\\u1ebft h\\u1ee3p thu\\u1ea7n th\\u1ee5c nhi\\u1ec1u c\\u1ea5u tr\\u00fac c\\u00e2u \\u0111\\u1ec3 t\\u1ea1o ra v\\u0103n b\\u1ea3n Lorem Ipsum tr\\u00f4ng c\\u00f3 v\\u1ebb th\\u1eadt s\\u1ef1 h\\u1ee3p l\\u00ed. Nh\\u1edd th\\u1ebf, v\\u0103n b\\u1ea3n Lorem Ipsum \\u0111\\u01b0\\u1ee3c t\\u1ea1o ra m\\u00e0 kh\\u00f4ng c\\u1ea7n m\\u1ed9t s\\u1ef1 l\\u1eb7p l\\u1ea1i n\\u00e0o, c\\u0169ng kh\\u00f4ng c\\u1ea7n ch\\u00e8n th\\u00eam c\\u00e1c t\\u1eeb ng\\u1eef h\\u00f3m h\\u1ec9nh hay thi\\u1ebfu tr\\u1eadt t\\u1ef1.</p>\", \"featured_image\": 4, \"user\": 1, \"created_at\": \"2020-12-02T08:14:01.189Z\", \"updated_at\": \"2020-12-02T08:14:01.259Z\", \"question_answer_blog\": [{\"pk\": 2, \"sort_order\": 0, \"blog_page\": 14, \"question_answer\": 1}], \"categories\": [], \"tags\": []}', NULL, 14, 1),
(29, 0, '2020-12-02 08:15:13.320098', '{\"pk\": 11, \"path\": \"0001000200030001\", \"depth\": 4, \"numchild\": 0, \"translation_key\": \"546e8244-1dcb-4c37-a73f-dc669be15600\", \"locale\": 1, \"title\": \"N\\u00f3 \\u0111\\u1ebfn t\\u1eeb \\u0111\\u00e2u?\", \"draft_title\": \"N\\u00f3 \\u0111\\u1ebfn t\\u1eeb \\u0111\\u00e2u?\", \"slug\": \"n\\u00f3-\\u0111\\u1ebfn-t\\u1eeb-\\u0111\\u00e2u\", \"content_type\": 17, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/listing-blogs/n\\u00f3-\\u0111\\u1ebfn-t\\u1eeb-\\u0111\\u00e2u/\", \"owner\": 1, \"seo_title\": \"n\\u00f3-\\u0111\\u1ebfn-t\\u1eeb-\\u0111\\u00e2u\", \"show_in_menus\": false, \"search_description\": \"Tr\\u00e1i v\\u1edbi suy ngh\\u0129 c\\u1ee7a nhi\\u1ec1u ng\\u01b0\\u1eddi, Lorem Ipsum kh\\u00f4ng ch\\u1ec9 \\u0111\\u01a1n gi\\u1ea3n l\\u00e0 v\\u0103n b\\u1ea3n ng\\u1eabu nhi\\u00ean.\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": \"2020-12-02T03:12:25.294Z\", \"last_published_at\": \"2020-12-02T03:12:25.294Z\", \"latest_revision_created_at\": \"2020-12-02T03:12:25.272Z\", \"live_revision\": 11, \"alias_of\": null, \"content\": \"<p>Tr\\u00e1i v\\u1edbi suy ngh\\u0129 c\\u1ee7a nhi\\u1ec1u ng\\u01b0\\u1eddi, Lorem Ipsum kh\\u00f4ng ch\\u1ec9 \\u0111\\u01a1n gi\\u1ea3n l\\u00e0 v\\u0103n b\\u1ea3n ng\\u1eabu nhi\\u00ean. N\\u00f3 c\\u00f3 ngu\\u1ed3n g\\u1ed1c t\\u1eeb m\\u1ed9t t\\u00e1c ph\\u1ea9m v\\u0103n h\\u1ecdc Latinh c\\u1ed5 \\u0111i\\u1ec3n t\\u1eeb n\\u0103m 45 tr\\u01b0\\u1edbc C\\u00f4ng nguy\\u00ean, \\u0111\\u00e3 c\\u00f3 h\\u01a1n 2000 n\\u0103m tu\\u1ed5i. Richard McClintock, gi\\u00e1o s\\u01b0 ti\\u1ebfng Latinh t\\u1ea1i \\u0110\\u1ea1i h\\u1ecdc Hampden-Sydney \\u1edf Virginia, \\u0111\\u00e3 tra c\\u1ee9u m\\u1ed9t trong nh\\u1eefng t\\u1eeb Latinh kh\\u00f3 hi\\u1ec3u h\\u01a1n, consectetur, t\\u1eeb m\\u1ed9t \\u0111o\\u1ea1n v\\u0103n c\\u1ee7a Lorem Ipsum, v\\u00e0 xem qua c\\u00e1c tr\\u00edch d\\u1eabn c\\u1ee7a t\\u1eeb n\\u00e0y trong v\\u0103n h\\u1ecdc c\\u1ed5 \\u0111i\\u1ec3n, \\u0111\\u00e3 ph\\u00e1t hi\\u1ec7n ra ngu\\u1ed3n g\\u1ed1c kh\\u00f4ng th\\u1ec3 ch\\u1ed1i c\\u00e3i. Lorem Ipsum xu\\u1ea5t ph\\u00e1t t\\u1eeb ph\\u1ea7n 1.10.32 v\\u00e0 1.10.33 c\\u1ee7a &quot;de Finibus Bonorum et Malorum&quot; (C\\u1ef1c \\u0111oan c\\u1ee7a Thi\\u1ec7n v\\u00e0 \\u00c1c) c\\u1ee7a Cicero, \\u0111\\u01b0\\u1ee3c vi\\u1ebft v\\u00e0o n\\u0103m 45 tr\\u01b0\\u1edbc C\\u00f4ng nguy\\u00ean. Cu\\u1ed1n s\\u00e1ch n\\u00e0y l\\u00e0 m\\u1ed9t chuy\\u00ean lu\\u1eadn v\\u1ec1 l\\u00fd thuy\\u1ebft \\u0111\\u1ea1o \\u0111\\u1ee9c, r\\u1ea5t ph\\u1ed5 bi\\u1ebfn trong th\\u1eddi k\\u1ef3 Ph\\u1ee5c h\\u01b0ng. D\\u00f2ng \\u0111\\u1ea7u ti\\u00ean c\\u1ee7a Lorem Ipsum, &quot;Lorem ipsum dolor sit amet ..&quot;, xu\\u1ea5t ph\\u00e1t t\\u1eeb m\\u1ed9t d\\u00f2ng trong ph\\u1ea7n 1.10.32.<br/><br/>Ph\\u00e2n \\u0111o\\u1ea1n ti\\u00eau chu\\u1ea9n c\\u1ee7a Lorem Ipsum \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng t\\u1eeb nh\\u1eefng n\\u0103m 1500 \\u0111\\u01b0\\u1ee3c t\\u00e1i t\\u1ea1o d\\u01b0\\u1edbi \\u0111\\u00e2y cho nh\\u1eefng ng\\u01b0\\u1eddi quan t\\u00e2m. C\\u00e1c ph\\u1ea7n 1.10.32 v\\u00e0 1.10.33 t\\u1eeb &quot;de Finibus Bonorum et Malorum&quot; c\\u1ee7a Cicero c\\u0169ng \\u0111\\u01b0\\u1ee3c sao ch\\u00e9p l\\u1ea1i \\u1edf d\\u1ea1ng nguy\\u00ean b\\u1ea3n ch\\u00ednh x\\u00e1c, k\\u00e8m theo c\\u00e1c b\\u1ea3n ti\\u1ebfng Anh t\\u1eeb b\\u1ea3n d\\u1ecbch n\\u0103m 1914 c\\u1ee7a H. Rackham.</p>\", \"featured_image\": 1, \"user\": 1, \"created_at\": \"2020-12-02T03:12:25.244Z\", \"updated_at\": \"2020-12-02T08:15:13.318Z\", \"question_answer_blog\": [{\"pk\": 1, \"sort_order\": 0, \"blog_page\": 11, \"question_answer\": 1}], \"categories\": [], \"tags\": []}', NULL, 11, 1),
(30, 0, '2020-12-02 08:15:42.779899', '{\"pk\": 14, \"path\": \"0001000200030002\", \"depth\": 4, \"numchild\": 0, \"translation_key\": \"9713cabf-3a1f-4147-82c9-3b372830077c\", \"locale\": 1, \"title\": \"L\\u00e0m th\\u1ebf n\\u00e0o \\u0111\\u1ec3 c\\u00f3 n\\u00f3?\", \"draft_title\": \"L\\u00e0m th\\u1ebf n\\u00e0o \\u0111\\u1ec3 c\\u00f3 n\\u00f3?\", \"slug\": \"l\\u00e0m-th\\u1ebf-n\\u00e0o-\\u0111\\u1ec3-c\\u00f3-n\\u00f3\", \"content_type\": 17, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/listing-blogs/l\\u00e0m-th\\u1ebf-n\\u00e0o-\\u0111\\u1ec3-c\\u00f3-n\\u00f3/\", \"owner\": 1, \"seo_title\": \"L\\u00e0m th\\u1ebf n\\u00e0o \\u0111\\u1ec3 c\\u00f3 n\\u00f3?\", \"show_in_menus\": false, \"search_description\": \"C\\u00f3 r\\u1ea5t nhi\\u1ec1u bi\\u1ebfn th\\u1ec3 c\\u1ee7a Lorem Ipsum m\\u00e0 b\\u1ea1n c\\u00f3 th\\u1ec3 t\\u00ecm th\\u1ea5y, nh\\u01b0ng \\u0111a s\\u1ed1 \\u0111\\u01b0\\u1ee3c bi\\u1ebfn \\u0111\\u1ed5i b\\u1eb1ng c\\u00e1ch th\\u00eam c\\u00e1c y\\u1ebfu t\\u1ed1 h\\u00e0i h\\u01b0\\u1edbc, c\\u00e1c t\\u1eeb ng\\u1eabu nhi\\u00ean c\\u00f3 khi kh\\u00f4ng c\\u00f3 v\\u1ebb g\\u00ec l\\u00e0 c\\u00f3 \\u00fd ngh\\u0129a.\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": \"2020-12-02T08:14:01.341Z\", \"last_published_at\": \"2020-12-02T08:14:01.341Z\", \"latest_revision_created_at\": \"2020-12-02T08:14:01.273Z\", \"live_revision\": 28, \"alias_of\": null, \"content\": \"<p>C\\u00f3 r\\u1ea5t nhi\\u1ec1u bi\\u1ebfn th\\u1ec3 c\\u1ee7a Lorem Ipsum m\\u00e0 b\\u1ea1n c\\u00f3 th\\u1ec3 t\\u00ecm th\\u1ea5y, nh\\u01b0ng \\u0111a s\\u1ed1 \\u0111\\u01b0\\u1ee3c bi\\u1ebfn \\u0111\\u1ed5i b\\u1eb1ng c\\u00e1ch th\\u00eam c\\u00e1c y\\u1ebfu t\\u1ed1 h\\u00e0i h\\u01b0\\u1edbc, c\\u00e1c t\\u1eeb ng\\u1eabu nhi\\u00ean c\\u00f3 khi kh\\u00f4ng c\\u00f3 v\\u1ebb g\\u00ec l\\u00e0 c\\u00f3 \\u00fd ngh\\u0129a. N\\u1ebfu b\\u1ea1n \\u0111\\u1ecbnh s\\u1eed d\\u1ee5ng m\\u1ed9t \\u0111o\\u1ea1n Lorem Ipsum, b\\u1ea1n n\\u00ean ki\\u1ec3m tra k\\u0129 \\u0111\\u1ec3 ch\\u1eafn ch\\u1eafn l\\u00e0 kh\\u00f4ng c\\u00f3 g\\u00ec nh\\u1ea1y c\\u1ea3m \\u0111\\u01b0\\u1ee3c gi\\u1ea5u \\u1edf gi\\u1eefa \\u0111o\\u1ea1n v\\u0103n b\\u1ea3n. T\\u1ea5t c\\u1ea3 c\\u00e1c c\\u00f4ng c\\u1ee5 s\\u1ea3n xu\\u1ea5t v\\u0103n b\\u1ea3n m\\u1eabu Lorem Ipsum \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c l\\u00e0m theo c\\u00e1ch l\\u1eb7p \\u0111i l\\u1eb7p l\\u1ea1i c\\u00e1c \\u0111o\\u1ea1n ch\\u1eef cho t\\u1edbi \\u0111\\u1ee7 th\\u00ec th\\u00f4i, khi\\u1ebfn cho lipsum.com tr\\u1edf th\\u00e0nh c\\u00f4ng c\\u1ee5 s\\u1ea3n xu\\u1ea5t Lorem Ipsum \\u0111\\u00e1ng gi\\u00e1 nh\\u1ea5t tr\\u00ean m\\u1ea1ng. Trang web n\\u00e0y s\\u1eed d\\u1ee5ng h\\u01a1n 200 t\\u1eeb la-tinh, k\\u1ebft h\\u1ee3p thu\\u1ea7n th\\u1ee5c nhi\\u1ec1u c\\u1ea5u tr\\u00fac c\\u00e2u \\u0111\\u1ec3 t\\u1ea1o ra v\\u0103n b\\u1ea3n Lorem Ipsum tr\\u00f4ng c\\u00f3 v\\u1ebb th\\u1eadt s\\u1ef1 h\\u1ee3p l\\u00ed. Nh\\u1edd th\\u1ebf, v\\u0103n b\\u1ea3n Lorem Ipsum \\u0111\\u01b0\\u1ee3c t\\u1ea1o ra m\\u00e0 kh\\u00f4ng c\\u1ea7n m\\u1ed9t s\\u1ef1 l\\u1eb7p l\\u1ea1i n\\u00e0o, c\\u0169ng kh\\u00f4ng c\\u1ea7n ch\\u00e8n th\\u00eam c\\u00e1c t\\u1eeb ng\\u1eef h\\u00f3m h\\u1ec9nh hay thi\\u1ebfu tr\\u1eadt t\\u1ef1.</p>\", \"featured_image\": 4, \"user\": 1, \"created_at\": \"2020-12-02T08:14:01.189Z\", \"updated_at\": \"2020-12-02T08:15:42.778Z\", \"question_answer_blog\": [{\"pk\": 2, \"sort_order\": 0, \"blog_page\": 14, \"question_answer\": 1}], \"categories\": [], \"tags\": []}', NULL, 14, 1);
INSERT INTO `wagtailcore_pagerevision` (`id`, `submitted_for_moderation`, `created_at`, `content_json`, `approved_go_live_at`, `page_id`, `user_id`) VALUES
(31, 0, '2020-12-02 08:16:07.424211', '{\"pk\": 14, \"path\": \"0001000200030002\", \"depth\": 4, \"numchild\": 0, \"translation_key\": \"9713cabf-3a1f-4147-82c9-3b372830077c\", \"locale\": 1, \"title\": \"L\\u00e0m th\\u1ebf n\\u00e0o \\u0111\\u1ec3 c\\u00f3 n\\u00f3?\", \"draft_title\": \"L\\u00e0m th\\u1ebf n\\u00e0o \\u0111\\u1ec3 c\\u00f3 n\\u00f3?\", \"slug\": \"l\\u00e0m-th\\u1ebf-n\\u00e0o-\\u0111\\u1ec3-c\\u00f3-n\\u00f3\", \"content_type\": 17, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/homepage/listing-blogs/l\\u00e0m-th\\u1ebf-n\\u00e0o-\\u0111\\u1ec3-c\\u00f3-n\\u00f3/\", \"owner\": 1, \"seo_title\": \"L\\u00e0m th\\u1ebf n\\u00e0o \\u0111\\u1ec3 c\\u00f3 n\\u00f3?\", \"show_in_menus\": false, \"search_description\": \"C\\u00f3 r\\u1ea5t nhi\\u1ec1u bi\\u1ebfn th\\u1ec3 c\\u1ee7a Lorem Ipsum m\\u00e0 b\\u1ea1n c\\u00f3 th\\u1ec3 t\\u00ecm th\\u1ea5y,\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"locked_at\": null, \"locked_by\": null, \"first_published_at\": \"2020-12-02T08:14:01.341Z\", \"last_published_at\": \"2020-12-02T08:15:42.846Z\", \"latest_revision_created_at\": \"2020-12-02T08:15:42.779Z\", \"live_revision\": 30, \"alias_of\": null, \"content\": \"<p>C\\u00f3 r\\u1ea5t nhi\\u1ec1u bi\\u1ebfn th\\u1ec3 c\\u1ee7a Lorem Ipsum m\\u00e0 b\\u1ea1n c\\u00f3 th\\u1ec3 t\\u00ecm th\\u1ea5y, nh\\u01b0ng \\u0111a s\\u1ed1 \\u0111\\u01b0\\u1ee3c bi\\u1ebfn \\u0111\\u1ed5i b\\u1eb1ng c\\u00e1ch th\\u00eam c\\u00e1c y\\u1ebfu t\\u1ed1 h\\u00e0i h\\u01b0\\u1edbc, c\\u00e1c t\\u1eeb ng\\u1eabu nhi\\u00ean c\\u00f3 khi kh\\u00f4ng c\\u00f3 v\\u1ebb g\\u00ec l\\u00e0 c\\u00f3 \\u00fd ngh\\u0129a. N\\u1ebfu b\\u1ea1n \\u0111\\u1ecbnh s\\u1eed d\\u1ee5ng m\\u1ed9t \\u0111o\\u1ea1n Lorem Ipsum, b\\u1ea1n n\\u00ean ki\\u1ec3m tra k\\u0129 \\u0111\\u1ec3 ch\\u1eafn ch\\u1eafn l\\u00e0 kh\\u00f4ng c\\u00f3 g\\u00ec nh\\u1ea1y c\\u1ea3m \\u0111\\u01b0\\u1ee3c gi\\u1ea5u \\u1edf gi\\u1eefa \\u0111o\\u1ea1n v\\u0103n b\\u1ea3n. T\\u1ea5t c\\u1ea3 c\\u00e1c c\\u00f4ng c\\u1ee5 s\\u1ea3n xu\\u1ea5t v\\u0103n b\\u1ea3n m\\u1eabu Lorem Ipsum \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c l\\u00e0m theo c\\u00e1ch l\\u1eb7p \\u0111i l\\u1eb7p l\\u1ea1i c\\u00e1c \\u0111o\\u1ea1n ch\\u1eef cho t\\u1edbi \\u0111\\u1ee7 th\\u00ec th\\u00f4i, khi\\u1ebfn cho lipsum.com tr\\u1edf th\\u00e0nh c\\u00f4ng c\\u1ee5 s\\u1ea3n xu\\u1ea5t Lorem Ipsum \\u0111\\u00e1ng gi\\u00e1 nh\\u1ea5t tr\\u00ean m\\u1ea1ng. Trang web n\\u00e0y s\\u1eed d\\u1ee5ng h\\u01a1n 200 t\\u1eeb la-tinh, k\\u1ebft h\\u1ee3p thu\\u1ea7n th\\u1ee5c nhi\\u1ec1u c\\u1ea5u tr\\u00fac c\\u00e2u \\u0111\\u1ec3 t\\u1ea1o ra v\\u0103n b\\u1ea3n Lorem Ipsum tr\\u00f4ng c\\u00f3 v\\u1ebb th\\u1eadt s\\u1ef1 h\\u1ee3p l\\u00ed. Nh\\u1edd th\\u1ebf, v\\u0103n b\\u1ea3n Lorem Ipsum \\u0111\\u01b0\\u1ee3c t\\u1ea1o ra m\\u00e0 kh\\u00f4ng c\\u1ea7n m\\u1ed9t s\\u1ef1 l\\u1eb7p l\\u1ea1i n\\u00e0o, c\\u0169ng kh\\u00f4ng c\\u1ea7n ch\\u00e8n th\\u00eam c\\u00e1c t\\u1eeb ng\\u1eef h\\u00f3m h\\u1ec9nh hay thi\\u1ebfu tr\\u1eadt t\\u1ef1.</p>\", \"featured_image\": 4, \"user\": 1, \"created_at\": \"2020-12-02T08:14:01.189Z\", \"updated_at\": \"2020-12-02T08:16:07.423Z\", \"question_answer_blog\": [{\"pk\": 2, \"sort_order\": 0, \"blog_page\": 14, \"question_answer\": 1}], \"categories\": [], \"tags\": []}', NULL, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wagtailcore_pageviewrestriction`
--

CREATE TABLE `wagtailcore_pageviewrestriction` (
  `id` int NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_id` int NOT NULL,
  `restriction_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wagtailcore_pageviewrestriction_groups`
--

CREATE TABLE `wagtailcore_pageviewrestriction_groups` (
  `id` int NOT NULL,
  `pageviewrestriction_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wagtailcore_site`
--

CREATE TABLE `wagtailcore_site` (
  `id` int NOT NULL,
  `hostname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `port` int NOT NULL,
  `is_default_site` tinyint(1) NOT NULL,
  `root_page_id` int NOT NULL,
  `site_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wagtailcore_site`
--

INSERT INTO `wagtailcore_site` (`id`, `hostname`, `port`, `is_default_site`, `root_page_id`, `site_name`) VALUES
(1, 'localhost', 80, 1, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `wagtailcore_task`
--

CREATE TABLE `wagtailcore_task` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `content_type_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wagtailcore_task`
--

INSERT INTO `wagtailcore_task` (`id`, `name`, `active`, `content_type_id`) VALUES
(1, 'Moderators approval', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wagtailcore_taskstate`
--

CREATE TABLE `wagtailcore_taskstate` (
  `id` int NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `started_at` datetime(6) NOT NULL,
  `finished_at` datetime(6) DEFAULT NULL,
  `content_type_id` int NOT NULL,
  `page_revision_id` int NOT NULL,
  `task_id` int NOT NULL,
  `workflow_state_id` int NOT NULL,
  `finished_by_id` int DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wagtailcore_workflow`
--

CREATE TABLE `wagtailcore_workflow` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wagtailcore_workflow`
--

INSERT INTO `wagtailcore_workflow` (`id`, `name`, `active`) VALUES
(1, 'Moderators approval', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wagtailcore_workflowpage`
--

CREATE TABLE `wagtailcore_workflowpage` (
  `page_id` int NOT NULL,
  `workflow_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wagtailcore_workflowpage`
--

INSERT INTO `wagtailcore_workflowpage` (`page_id`, `workflow_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wagtailcore_workflowstate`
--

CREATE TABLE `wagtailcore_workflowstate` (
  `id` int NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `current_task_state_id` int DEFAULT NULL,
  `page_id` int NOT NULL,
  `requested_by_id` int DEFAULT NULL,
  `workflow_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wagtailcore_workflowtask`
--

CREATE TABLE `wagtailcore_workflowtask` (
  `id` int NOT NULL,
  `sort_order` int DEFAULT NULL,
  `task_id` int NOT NULL,
  `workflow_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wagtailcore_workflowtask`
--

INSERT INTO `wagtailcore_workflowtask` (`id`, `sort_order`, `task_id`, `workflow_id`) VALUES
(1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wagtaildocs_document`
--

CREATE TABLE `wagtaildocs_document` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `uploaded_by_user_id` int DEFAULT NULL,
  `collection_id` int NOT NULL,
  `file_size` int UNSIGNED DEFAULT NULL,
  `file_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `wagtailembeds_embed`
--

CREATE TABLE `wagtailembeds_embed` (
  `id` int NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `max_width` smallint DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `author_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `provider_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `last_updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wagtailforms_formsubmission`
--

CREATE TABLE `wagtailforms_formsubmission` (
  `id` int NOT NULL,
  `form_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `submit_time` datetime(6) NOT NULL,
  `page_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wagtailimages_image`
--

CREATE TABLE `wagtailimages_image` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `width` int NOT NULL,
  `height` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `focal_point_x` int UNSIGNED DEFAULT NULL,
  `focal_point_y` int UNSIGNED DEFAULT NULL,
  `focal_point_width` int UNSIGNED DEFAULT NULL,
  `focal_point_height` int UNSIGNED DEFAULT NULL,
  `uploaded_by_user_id` int DEFAULT NULL,
  `file_size` int UNSIGNED DEFAULT NULL,
  `collection_id` int NOT NULL,
  `file_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ;

--
-- Dumping data for table `wagtailimages_image`
--

INSERT INTO `wagtailimages_image` (`id`, `title`, `file`, `width`, `height`, `created_at`, `focal_point_x`, `focal_point_y`, `focal_point_width`, `focal_point_height`, `uploaded_by_user_id`, `file_size`, `collection_id`, `file_hash`) VALUES
(1, 'anirudh-3esjG-nlgyk-unsplash.jpg', 'original_images/anirudh-3esjG-nlgyk-unsplash.jpg', 640, 866, '2020-12-02 03:11:46.419825', NULL, NULL, NULL, NULL, 1, 81841, 1, 'dbdeaf784a0021e71b26518167120d363bd4d725'),
(2, 'our_member_team3.jpg', 'original_images/our_member_team3_cLKt5ne.jpg', 640, 427, '2020-12-02 03:39:01.093193', NULL, NULL, NULL, NULL, 1, 35590, 1, '88e0434aa1eef3ac43a919394e1a18cecefcaa21'),
(3, 'Sunday_25_October_2020.png', 'original_images/Sunday_25_October_2020.png', 940, 788, '2020-12-02 06:15:56.656138', NULL, NULL, NULL, NULL, 1, 484592, 1, '52f865f6d83978763fa9d8bc9ca1fab054c71bfb'),
(4, 'post.png', 'original_images/post.png', 940, 788, '2020-12-02 08:13:40.057095', NULL, NULL, NULL, NULL, 1, 660751, 1, '4d40477c06eb30a0e37e907c4c8a897b714cbdce');

-- --------------------------------------------------------

--
-- Table structure for table `wagtailimages_rendition`
--

CREATE TABLE `wagtailimages_rendition` (
  `id` int NOT NULL,
  `file` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `width` int NOT NULL,
  `height` int NOT NULL,
  `focal_point_key` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `filter_spec` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wagtailimages_rendition`
--

INSERT INTO `wagtailimages_rendition` (`id`, `file`, `width`, `height`, `focal_point_key`, `filter_spec`, `image_id`) VALUES
(1, 'images/anirudh-3esjG-nlgyk-unsplash.max-165x165.jpg', 121, 165, '', 'max-165x165', 1),
(2, 'images/anirudh-3esjG-nlgyk-unsplash.2e16d0ba.fill-240x160.jpg', 240, 160, '2e16d0ba', 'fill-240x160', 1),
(3, 'images/anirudh-3esjG-nlgyk-unsplash.original.jpg', 640, 866, '', 'original', 1),
(4, 'images/our_member_team3_cLKt5ne.max-165x165.jpg', 165, 110, '', 'max-165x165', 2),
(5, 'images/our_member_team3_cLKt5ne.original.jpg', 640, 427, '', 'original', 2),
(6, 'images/Sunday_25_October_2020.max-165x165.png', 165, 138, '', 'max-165x165', 3),
(7, 'images/Sunday_25_October_2020.2e16d0ba.fill-252x168.png', 252, 168, '2e16d0ba', 'fill-252x168', 3),
(8, 'images/Sunday_25_October_2020.2e16d0ba.fill-240x160.png', 240, 160, '2e16d0ba', 'fill-240x160', 3),
(9, 'images/post.max-165x165.png', 165, 138, '', 'max-165x165', 4),
(10, 'images/post.2e16d0ba.fill-160x120.png', 160, 120, '2e16d0ba', 'fill-160x120', 4),
(11, 'images/post.original.png', 940, 788, '', 'original', 4),
(12, 'images/post.2e16d0ba.fill-240x160.png', 240, 160, '2e16d0ba', 'fill-240x160', 4);

-- --------------------------------------------------------

--
-- Table structure for table `wagtailimages_uploadedimage`
--

CREATE TABLE `wagtailimages_uploadedimage` (
  `id` int NOT NULL,
  `file` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_by_user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wagtailredirects_redirect`
--

CREATE TABLE `wagtailredirects_redirect` (
  `id` int NOT NULL,
  `old_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_permanent` tinyint(1) NOT NULL,
  `redirect_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_page_id` int DEFAULT NULL,
  `site_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wagtailsearch_editorspick`
--

CREATE TABLE `wagtailsearch_editorspick` (
  `id` int NOT NULL,
  `sort_order` int DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `page_id` int NOT NULL,
  `query_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wagtailsearch_query`
--

CREATE TABLE `wagtailsearch_query` (
  `id` int NOT NULL,
  `query_string` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wagtailsearch_querydailyhits`
--

CREATE TABLE `wagtailsearch_querydailyhits` (
  `id` int NOT NULL,
  `date` date NOT NULL,
  `hits` int NOT NULL,
  `query_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wagtailusers_userprofile`
--

CREATE TABLE `wagtailusers_userprofile` (
  `id` int NOT NULL,
  `submitted_notifications` tinyint(1) NOT NULL,
  `approved_notifications` tinyint(1) NOT NULL,
  `rejected_notifications` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `preferred_language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `current_time_zone` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wagtailusers_userprofile`
--

INSERT INTO `wagtailusers_userprofile` (`id`, `submitted_notifications`, `approved_notifications`, `rejected_notifications`, `user_id`, `preferred_language`, `current_time_zone`, `avatar`) VALUES
(1, 1, 1, 1, 1, '', '', '');

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
-- Indexes for table `blog_blogcategory`
--
ALTER TABLE `blog_blogcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_blogcategory_slug_7996de7a` (`slug`);

--
-- Indexes for table `blog_blogdetailpage`
--
ALTER TABLE `blog_blogdetailpage`
  ADD PRIMARY KEY (`page_ptr_id`),
  ADD KEY `blog_blogdetailpage_featured_image_id_419c578f_fk_wagtailim` (`featured_image_id`),
  ADD KEY `blog_blogdetailpage_user_id_f18636aa_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `blog_blogdetailpage_categories`
--
ALTER TABLE `blog_blogdetailpage_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_blogdetailpage_cate_blogdetailpage_id_blogca_ed683f86_uniq` (`blogdetailpage_id`,`blogcategory_id`),
  ADD KEY `blog_blogdetailpage__blogcategory_id_eb7048cc_fk_blog_blog` (`blogcategory_id`);

--
-- Indexes for table `blog_blogdetailpage_tags`
--
ALTER TABLE `blog_blogdetailpage_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_blogdetailpage_tags_blogdetailpage_id_blogta_f8d8bc0a_uniq` (`blogdetailpage_id`,`blogtag_id`),
  ADD KEY `blog_blogdetailpage_tags_blogtag_id_cc0b2163_fk_blog_blogtag_id` (`blogtag_id`);

--
-- Indexes for table `blog_bloglistingpage`
--
ALTER TABLE `blog_bloglistingpage`
  ADD PRIMARY KEY (`page_ptr_id`);

--
-- Indexes for table `blog_blogtag`
--
ALTER TABLE `blog_blogtag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_blogtag_slug_eecf3988` (`slug`);

--
-- Indexes for table `custom_form_formfield`
--
ALTER TABLE `custom_form_formfield`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_form_formfield_page_id_9f054fad` (`page_id`);

--
-- Indexes for table `custom_form_requestformpage`
--
ALTER TABLE `custom_form_requestformpage`
  ADD PRIMARY KEY (`page_ptr_id`);

--
-- Indexes for table `custom_page_custompage`
--
ALTER TABLE `custom_page_custompage`
  ADD PRIMARY KEY (`page_ptr_id`);

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
-- Indexes for table `home_homepage`
--
ALTER TABLE `home_homepage`
  ADD PRIMARY KEY (`page_ptr_id`);

--
-- Indexes for table `menus_menu`
--
ALTER TABLE `menus_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_menu_slug_e40211cb` (`slug`);

--
-- Indexes for table `menus_menuitem`
--
ALTER TABLE `menus_menuitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_menuitem_link_page_id_90cc2971_fk_wagtailcore_page_id` (`link_page_id`),
  ADD KEY `menus_menuitem_page_id_7ee57084` (`page_id`);

--
-- Indexes for table `project_projectcategory`
--
ALTER TABLE `project_projectcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_projectcategory_slug_5b0aee08` (`slug`);

--
-- Indexes for table `project_projectdetailpage`
--
ALTER TABLE `project_projectdetailpage`
  ADD PRIMARY KEY (`page_ptr_id`),
  ADD KEY `project_projectdetai_featured_image_id_19b5292b_fk_wagtailim` (`featured_image_id`);

--
-- Indexes for table `project_projectdetailpagecarousel`
--
ALTER TABLE `project_projectdetailpagecarousel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_projectdetai_project_detail_carou_e385e51a_fk_wagtailim` (`project_detail_carousel_image_id`),
  ADD KEY `project_projectdetailpagecarousel_page_id_e01f62de` (`page_id`);

--
-- Indexes for table `project_projectdetailpage_categories`
--
ALTER TABLE `project_projectdetailpage_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_projectdetailpag_projectdetailpage_id_pro_813ac130_uniq` (`projectdetailpage_id`,`projectcategory_id`),
  ADD KEY `project_projectdetai_projectcategory_id_598dfe63_fk_project_p` (`projectcategory_id`);

--
-- Indexes for table `project_projectlistingpage`
--
ALTER TABLE `project_projectlistingpage`
  ADD PRIMARY KEY (`page_ptr_id`);

--
-- Indexes for table `project_projectpart`
--
ALTER TABLE `project_projectpart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_projectpart_page_id_a900f6dd` (`page_id`);

--
-- Indexes for table `project_projectrequest`
--
ALTER TABLE `project_projectrequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_answer_qadetailquestionanswer`
--
ALTER TABLE `question_answer_qadetailquestionanswer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_answer_qade_question_answer_id_876b6325_fk_question_` (`question_answer_id`),
  ADD KEY `question_answer_qadetailque_qa_detail_question_answer_i_2bf0a184` (`qa_detail_question_answer_id`);

--
-- Indexes for table `question_answer_questionanswer`
--
ALTER TABLE `question_answer_questionanswer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_answer_questionanswerblog`
--
ALTER TABLE `question_answer_questionanswerblog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_answer_ques_question_answer_id_7e28e4ab_fk_question_` (`question_answer_id`),
  ADD KEY `question_answer_questionanswerblog_blog_page_id_1a3a7e6b` (`blog_page_id`);

--
-- Indexes for table `question_answer_questionanswercustompage`
--
ALTER TABLE `question_answer_questionanswercustompage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_answer_ques_question_answer_id_f04fff5c_fk_question_` (`question_answer_id`),
  ADD KEY `question_answer_questionans_custom_page_q_and_a_id_e609ed81` (`custom_page_q_and_a_id`);

--
-- Indexes for table `question_answer_questionanswerdetail`
--
ALTER TABLE `question_answer_questionanswerdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_answer_ques_question_answer_id_4526a9ef_fk_question_` (`question_answer_id`);

--
-- Indexes for table `question_answer_questionanswerproject`
--
ALTER TABLE `question_answer_questionanswerproject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_answer_ques_question_answer_id_dcbc7e9e_fk_question_` (`question_answer_id`),
  ADD KEY `question_answer_questionanswerproject_project_page_id_9465bb5e` (`project_page_id`);

--
-- Indexes for table `realtor_realtordetailpage`
--
ALTER TABLE `realtor_realtordetailpage`
  ADD PRIMARY KEY (`page_ptr_id`),
  ADD KEY `realtor_realtordetai_image_id_4457704d_fk_wagtailim` (`image_id`);

--
-- Indexes for table `realtor_realtorlistingpage`
--
ALTER TABLE `realtor_realtorlistingpage`
  ADD PRIMARY KEY (`page_ptr_id`);

--
-- Indexes for table `realtor_realtorproject`
--
ALTER TABLE `realtor_realtorproject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `realtor_realtorproject_project_page_id_0fe572a3` (`project_page_id`),
  ADD KEY `realtor_realtorproject_realtor_page_id_63db40d7` (`realtor_page_id`);

--
-- Indexes for table `site_settings_sitesettings`
--
ALTER TABLE `site_settings_sitesettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `site_id` (`site_id`),
  ADD KEY `site_settings_sitese_logo_id_194b2bdb_fk_wagtailim` (`logo_id`),
  ADD KEY `site_settings_sitese_logo_icon_id_61a4d797_fk_wagtailim` (`logo_icon_id`);

--
-- Indexes for table `taggit_tag`
--
ALTER TABLE `taggit_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `taggit_taggeditem`
--
ALTER TABLE `taggit_taggeditem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `taggit_taggeditem_content_type_id_object_id_tag_id_4bb97a8e_uniq` (`content_type_id`,`object_id`,`tag_id`),
  ADD KEY `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` (`tag_id`),
  ADD KEY `taggit_taggeditem_object_id_e2d7d1df` (`object_id`),
  ADD KEY `taggit_taggeditem_content_type_id_object_id_196cc965_idx` (`content_type_id`,`object_id`);

--
-- Indexes for table `wagtailcore_collection`
--
ALTER TABLE `wagtailcore_collection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`);

--
-- Indexes for table `wagtailcore_collectionviewrestriction`
--
ALTER TABLE `wagtailcore_collectionviewrestriction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wagtailcore_collecti_collection_id_761908ec_fk_wagtailco` (`collection_id`);

--
-- Indexes for table `wagtailcore_collectionviewrestriction_groups`
--
ALTER TABLE `wagtailcore_collectionviewrestriction_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq` (`collectionviewrestriction_id`,`group_id`),
  ADD KEY `wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou` (`group_id`);

--
-- Indexes for table `wagtailcore_groupapprovaltask`
--
ALTER TABLE `wagtailcore_groupapprovaltask`
  ADD PRIMARY KEY (`task_ptr_id`);

--
-- Indexes for table `wagtailcore_groupapprovaltask_groups`
--
ALTER TABLE `wagtailcore_groupapprovaltask_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wagtailcore_groupapprova_groupapprovaltask_id_gro_bb5ee7eb_uniq` (`groupapprovaltask_id`,`group_id`),
  ADD KEY `wagtailcore_groupapp_group_id_2e64b61f_fk_auth_grou` (`group_id`);

--
-- Indexes for table `wagtailcore_groupcollectionpermission`
--
ALTER TABLE `wagtailcore_groupcollectionpermission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq` (`group_id`,`collection_id`,`permission_id`),
  ADD KEY `wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco` (`collection_id`),
  ADD KEY `wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `wagtailcore_grouppagepermission`
--
ALTER TABLE `wagtailcore_grouppagepermission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq` (`group_id`,`page_id`,`permission_type`),
  ADD KEY `wagtailcore_grouppag_page_id_710b114a_fk_wagtailco` (`page_id`);

--
-- Indexes for table `wagtailcore_locale`
--
ALTER TABLE `wagtailcore_locale`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `language_code` (`language_code`);

--
-- Indexes for table `wagtailcore_page`
--
ALTER TABLE `wagtailcore_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD UNIQUE KEY `wagtailcore_page_translation_key_locale_id_9b041bad_uniq` (`translation_key`,`locale_id`),
  ADD KEY `wagtailcore_page_slug_e7c11b8f` (`slug`),
  ADD KEY `wagtailcore_page_first_published_at_2b5dd637` (`first_published_at`),
  ADD KEY `wagtailcore_page_content_type_id_c28424df_fk_django_co` (`content_type_id`),
  ADD KEY `wagtailcore_page_live_revision_id_930bd822_fk_wagtailco` (`live_revision_id`),
  ADD KEY `wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id` (`owner_id`),
  ADD KEY `wagtailcore_page_locked_by_id_bcb86245_fk_auth_user_id` (`locked_by_id`),
  ADD KEY `wagtailcore_page_locale_id_3c7e30a6_fk_wagtailcore_locale_id` (`locale_id`),
  ADD KEY `wagtailcore_page_alias_of_id_12945502_fk_wagtailcore_page_id` (`alias_of_id`);

--
-- Indexes for table `wagtailcore_pagelogentry`
--
ALTER TABLE `wagtailcore_pagelogentry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wagtailcore_pageloge_content_type_id_74e7708a_fk_django_co` (`content_type_id`),
  ADD KEY `wagtailcore_pagelogentry_action_c2408198` (`action`),
  ADD KEY `wagtailcore_pagelogentry_content_changed_99f27ade` (`content_changed`),
  ADD KEY `wagtailcore_pagelogentry_page_id_8464e327` (`page_id`),
  ADD KEY `wagtailcore_pagelogentry_revision_id_8043d103` (`revision_id`),
  ADD KEY `wagtailcore_pagelogentry_user_id_604ccfd8` (`user_id`);

--
-- Indexes for table `wagtailcore_pagerevision`
--
ALTER TABLE `wagtailcore_pagerevision`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wagtailcore_pagerevision_submitted_for_moderation_c682e44c` (`submitted_for_moderation`),
  ADD KEY `wagtailcore_pagerevision_page_id_d421cc1d_fk_wagtailcore_page_id` (`page_id`),
  ADD KEY `wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id` (`user_id`),
  ADD KEY `wagtailcore_pagerevision_created_at_66954e3b` (`created_at`),
  ADD KEY `wagtailcore_pagerevision_approved_go_live_at_e56afc67` (`approved_go_live_at`);

--
-- Indexes for table `wagtailcore_pageviewrestriction`
--
ALTER TABLE `wagtailcore_pageviewrestriction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco` (`page_id`);

--
-- Indexes for table `wagtailcore_pageviewrestriction_groups`
--
ALTER TABLE `wagtailcore_pageviewrestriction_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq` (`pageviewrestriction_id`,`group_id`),
  ADD KEY `wagtailcore_pageview_group_id_6460f223_fk_auth_grou` (`group_id`);

--
-- Indexes for table `wagtailcore_site`
--
ALTER TABLE `wagtailcore_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wagtailcore_site_hostname_port_2c626d70_uniq` (`hostname`,`port`),
  ADD KEY `wagtailcore_site_hostname_96b20b46` (`hostname`),
  ADD KEY `wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id` (`root_page_id`);

--
-- Indexes for table `wagtailcore_task`
--
ALTER TABLE `wagtailcore_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wagtailcore_task_content_type_id_249ab8ba_fk_django_co` (`content_type_id`);

--
-- Indexes for table `wagtailcore_taskstate`
--
ALTER TABLE `wagtailcore_taskstate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wagtailcore_taskstat_workflow_state_id_9239a775_fk_wagtailco` (`workflow_state_id`),
  ADD KEY `wagtailcore_taskstat_content_type_id_0a758fdc_fk_django_co` (`content_type_id`),
  ADD KEY `wagtailcore_taskstat_page_revision_id_9f52c88e_fk_wagtailco` (`page_revision_id`),
  ADD KEY `wagtailcore_taskstate_task_id_c3677c34_fk_wagtailcore_task_id` (`task_id`),
  ADD KEY `wagtailcore_taskstate_finished_by_id_13f98229_fk_auth_user_id` (`finished_by_id`);

--
-- Indexes for table `wagtailcore_workflow`
--
ALTER TABLE `wagtailcore_workflow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wagtailcore_workflowpage`
--
ALTER TABLE `wagtailcore_workflowpage`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `wagtailcore_workflow_workflow_id_56f56ff6_fk_wagtailco` (`workflow_id`);

--
-- Indexes for table `wagtailcore_workflowstate`
--
ALTER TABLE `wagtailcore_workflowstate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `current_task_state_id` (`current_task_state_id`),
  ADD KEY `wagtailcore_workflow_page_id_6c962862_fk_wagtailco` (`page_id`),
  ADD KEY `wagtailcore_workflow_requested_by_id_4090bca3_fk_auth_user` (`requested_by_id`),
  ADD KEY `wagtailcore_workflow_workflow_id_1f18378f_fk_wagtailco` (`workflow_id`);

--
-- Indexes for table `wagtailcore_workflowtask`
--
ALTER TABLE `wagtailcore_workflowtask`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wagtailcore_workflowtask_workflow_id_task_id_4ec7a62b_uniq` (`workflow_id`,`task_id`),
  ADD KEY `wagtailcore_workflowtask_task_id_ce7716fe_fk_wagtailcore_task_id` (`task_id`),
  ADD KEY `wagtailcore_workflowtask_workflow_id_b9717175` (`workflow_id`);

--
-- Indexes for table `wagtaildocs_document`
--
ALTER TABLE `wagtaildocs_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wagtaildocs_document_collection_id_23881625_fk_wagtailco` (`collection_id`),
  ADD KEY `wagtaildocs_document_uploaded_by_user_id_17258b41_fk_auth_user` (`uploaded_by_user_id`);

--
-- Indexes for table `wagtailembeds_embed`
--
ALTER TABLE `wagtailembeds_embed`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wagtailembeds_embed_url_max_width_8a2922d8_uniq` (`url`,`max_width`);

--
-- Indexes for table `wagtailforms_formsubmission`
--
ALTER TABLE `wagtailforms_formsubmission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco` (`page_id`);

--
-- Indexes for table `wagtailimages_image`
--
ALTER TABLE `wagtailimages_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user_id` (`uploaded_by_user_id`),
  ADD KEY `wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco` (`collection_id`),
  ADD KEY `wagtailimages_image_created_at_86fa6cd4` (`created_at`);

--
-- Indexes for table `wagtailimages_rendition`
--
ALTER TABLE `wagtailimages_rendition`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq` (`image_id`,`filter_spec`,`focal_point_key`),
  ADD KEY `wagtailimages_rendition_filter_spec_1cba3201` (`filter_spec`);

--
-- Indexes for table `wagtailimages_uploadedimage`
--
ALTER TABLE `wagtailimages_uploadedimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wagtailimages_upload_uploaded_by_user_id_85921689_fk_auth_user` (`uploaded_by_user_id`);

--
-- Indexes for table `wagtailredirects_redirect`
--
ALTER TABLE `wagtailredirects_redirect`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wagtailredirects_redirect_old_path_site_id_783622d7_uniq` (`old_path`,`site_id`),
  ADD KEY `wagtailredirects_redirect_old_path_bb35247b` (`old_path`),
  ADD KEY `wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco` (`redirect_page_id`),
  ADD KEY `wagtailredirects_red_site_id_780a0e1e_fk_wagtailco` (`site_id`);

--
-- Indexes for table `wagtailsearch_editorspick`
--
ALTER TABLE `wagtailsearch_editorspick`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse` (`query_id`),
  ADD KEY `wagtailsearch_editor_page_id_28cbc274_fk_wagtailco` (`page_id`);

--
-- Indexes for table `wagtailsearch_query`
--
ALTER TABLE `wagtailsearch_query`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `query_string` (`query_string`);

--
-- Indexes for table `wagtailsearch_querydailyhits`
--
ALTER TABLE `wagtailsearch_querydailyhits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq` (`query_id`,`date`);

--
-- Indexes for table `wagtailusers_userprofile`
--
ALTER TABLE `wagtailusers_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_blogcategory`
--
ALTER TABLE `blog_blogcategory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_blogdetailpage_categories`
--
ALTER TABLE `blog_blogdetailpage_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_blogdetailpage_tags`
--
ALTER TABLE `blog_blogdetailpage_tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_blogtag`
--
ALTER TABLE `blog_blogtag`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_form_formfield`
--
ALTER TABLE `custom_form_formfield`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `menus_menu`
--
ALTER TABLE `menus_menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus_menuitem`
--
ALTER TABLE `menus_menuitem`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_projectcategory`
--
ALTER TABLE `project_projectcategory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_projectdetailpagecarousel`
--
ALTER TABLE `project_projectdetailpagecarousel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_projectdetailpage_categories`
--
ALTER TABLE `project_projectdetailpage_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_projectpart`
--
ALTER TABLE `project_projectpart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_projectrequest`
--
ALTER TABLE `project_projectrequest`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_answer_qadetailquestionanswer`
--
ALTER TABLE `question_answer_qadetailquestionanswer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_answer_questionanswer`
--
ALTER TABLE `question_answer_questionanswer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `question_answer_questionanswerblog`
--
ALTER TABLE `question_answer_questionanswerblog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `question_answer_questionanswercustompage`
--
ALTER TABLE `question_answer_questionanswercustompage`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `question_answer_questionanswerdetail`
--
ALTER TABLE `question_answer_questionanswerdetail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `question_answer_questionanswerproject`
--
ALTER TABLE `question_answer_questionanswerproject`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `realtor_realtorproject`
--
ALTER TABLE `realtor_realtorproject`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_settings_sitesettings`
--
ALTER TABLE `site_settings_sitesettings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `taggit_tag`
--
ALTER TABLE `taggit_tag`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taggit_taggeditem`
--
ALTER TABLE `taggit_taggeditem`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wagtailcore_collection`
--
ALTER TABLE `wagtailcore_collection`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wagtailcore_collectionviewrestriction`
--
ALTER TABLE `wagtailcore_collectionviewrestriction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wagtailcore_collectionviewrestriction_groups`
--
ALTER TABLE `wagtailcore_collectionviewrestriction_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wagtailcore_groupapprovaltask_groups`
--
ALTER TABLE `wagtailcore_groupapprovaltask_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wagtailcore_groupcollectionpermission`
--
ALTER TABLE `wagtailcore_groupcollectionpermission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wagtailcore_grouppagepermission`
--
ALTER TABLE `wagtailcore_grouppagepermission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wagtailcore_locale`
--
ALTER TABLE `wagtailcore_locale`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wagtailcore_page`
--
ALTER TABLE `wagtailcore_page`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wagtailcore_pagelogentry`
--
ALTER TABLE `wagtailcore_pagelogentry`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `wagtailcore_pagerevision`
--
ALTER TABLE `wagtailcore_pagerevision`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `wagtailcore_pageviewrestriction`
--
ALTER TABLE `wagtailcore_pageviewrestriction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wagtailcore_pageviewrestriction_groups`
--
ALTER TABLE `wagtailcore_pageviewrestriction_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wagtailcore_site`
--
ALTER TABLE `wagtailcore_site`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wagtailcore_task`
--
ALTER TABLE `wagtailcore_task`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wagtailcore_taskstate`
--
ALTER TABLE `wagtailcore_taskstate`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wagtailcore_workflow`
--
ALTER TABLE `wagtailcore_workflow`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wagtailcore_workflowstate`
--
ALTER TABLE `wagtailcore_workflowstate`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wagtailcore_workflowtask`
--
ALTER TABLE `wagtailcore_workflowtask`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wagtaildocs_document`
--
ALTER TABLE `wagtaildocs_document`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wagtailembeds_embed`
--
ALTER TABLE `wagtailembeds_embed`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wagtailforms_formsubmission`
--
ALTER TABLE `wagtailforms_formsubmission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wagtailimages_image`
--
ALTER TABLE `wagtailimages_image`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wagtailimages_rendition`
--
ALTER TABLE `wagtailimages_rendition`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wagtailimages_uploadedimage`
--
ALTER TABLE `wagtailimages_uploadedimage`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wagtailredirects_redirect`
--
ALTER TABLE `wagtailredirects_redirect`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wagtailsearch_editorspick`
--
ALTER TABLE `wagtailsearch_editorspick`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wagtailsearch_query`
--
ALTER TABLE `wagtailsearch_query`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wagtailsearch_querydailyhits`
--
ALTER TABLE `wagtailsearch_querydailyhits`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wagtailusers_userprofile`
--
ALTER TABLE `wagtailusers_userprofile`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Constraints for table `blog_blogdetailpage`
--
ALTER TABLE `blog_blogdetailpage`
  ADD CONSTRAINT `blog_blogdetailpage_featured_image_id_419c578f_fk_wagtailim` FOREIGN KEY (`featured_image_id`) REFERENCES `wagtailimages_image` (`id`),
  ADD CONSTRAINT `blog_blogdetailpage_page_ptr_id_fb1104b9_fk_wagtailcore_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `wagtailcore_page` (`id`),
  ADD CONSTRAINT `blog_blogdetailpage_user_id_f18636aa_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `blog_blogdetailpage_categories`
--
ALTER TABLE `blog_blogdetailpage_categories`
  ADD CONSTRAINT `blog_blogdetailpage__blogcategory_id_eb7048cc_fk_blog_blog` FOREIGN KEY (`blogcategory_id`) REFERENCES `blog_blogcategory` (`id`),
  ADD CONSTRAINT `blog_blogdetailpage__blogdetailpage_id_a268be0c_fk_blog_blog` FOREIGN KEY (`blogdetailpage_id`) REFERENCES `blog_blogdetailpage` (`page_ptr_id`);

--
-- Constraints for table `blog_blogdetailpage_tags`
--
ALTER TABLE `blog_blogdetailpage_tags`
  ADD CONSTRAINT `blog_blogdetailpage__blogdetailpage_id_7a074dbb_fk_blog_blog` FOREIGN KEY (`blogdetailpage_id`) REFERENCES `blog_blogdetailpage` (`page_ptr_id`),
  ADD CONSTRAINT `blog_blogdetailpage_tags_blogtag_id_cc0b2163_fk_blog_blogtag_id` FOREIGN KEY (`blogtag_id`) REFERENCES `blog_blogtag` (`id`);

--
-- Constraints for table `blog_bloglistingpage`
--
ALTER TABLE `blog_bloglistingpage`
  ADD CONSTRAINT `blog_bloglistingpage_page_ptr_id_7666e38e_fk_wagtailcore_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `wagtailcore_page` (`id`);

--
-- Constraints for table `custom_form_formfield`
--
ALTER TABLE `custom_form_formfield`
  ADD CONSTRAINT `custom_form_formfiel_page_id_9f054fad_fk_custom_fo` FOREIGN KEY (`page_id`) REFERENCES `custom_form_requestformpage` (`page_ptr_id`);

--
-- Constraints for table `custom_form_requestformpage`
--
ALTER TABLE `custom_form_requestformpage`
  ADD CONSTRAINT `custom_form_requestf_page_ptr_id_b2c66c7d_fk_wagtailco` FOREIGN KEY (`page_ptr_id`) REFERENCES `wagtailcore_page` (`id`);

--
-- Constraints for table `custom_page_custompage`
--
ALTER TABLE `custom_page_custompage`
  ADD CONSTRAINT `custom_page_custompa_page_ptr_id_d4d94ed0_fk_wagtailco` FOREIGN KEY (`page_ptr_id`) REFERENCES `wagtailcore_page` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `home_homepage`
--
ALTER TABLE `home_homepage`
  ADD CONSTRAINT `home_homepage_page_ptr_id_e5b77cf7_fk_wagtailcore_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `wagtailcore_page` (`id`);

--
-- Constraints for table `menus_menuitem`
--
ALTER TABLE `menus_menuitem`
  ADD CONSTRAINT `menus_menuitem_link_page_id_90cc2971_fk_wagtailcore_page_id` FOREIGN KEY (`link_page_id`) REFERENCES `wagtailcore_page` (`id`),
  ADD CONSTRAINT `menus_menuitem_page_id_7ee57084_fk_menus_menu_id` FOREIGN KEY (`page_id`) REFERENCES `menus_menu` (`id`);

--
-- Constraints for table `project_projectdetailpage`
--
ALTER TABLE `project_projectdetailpage`
  ADD CONSTRAINT `project_projectdetai_featured_image_id_19b5292b_fk_wagtailim` FOREIGN KEY (`featured_image_id`) REFERENCES `wagtailimages_image` (`id`),
  ADD CONSTRAINT `project_projectdetai_page_ptr_id_47292e8b_fk_wagtailco` FOREIGN KEY (`page_ptr_id`) REFERENCES `wagtailcore_page` (`id`);

--
-- Constraints for table `project_projectdetailpagecarousel`
--
ALTER TABLE `project_projectdetailpagecarousel`
  ADD CONSTRAINT `project_projectdetai_page_id_e01f62de_fk_project_p` FOREIGN KEY (`page_id`) REFERENCES `project_projectdetailpage` (`page_ptr_id`),
  ADD CONSTRAINT `project_projectdetai_project_detail_carou_e385e51a_fk_wagtailim` FOREIGN KEY (`project_detail_carousel_image_id`) REFERENCES `wagtailimages_image` (`id`);

--
-- Constraints for table `project_projectdetailpage_categories`
--
ALTER TABLE `project_projectdetailpage_categories`
  ADD CONSTRAINT `project_projectdetai_projectcategory_id_598dfe63_fk_project_p` FOREIGN KEY (`projectcategory_id`) REFERENCES `project_projectcategory` (`id`),
  ADD CONSTRAINT `project_projectdetai_projectdetailpage_id_5e75195a_fk_project_p` FOREIGN KEY (`projectdetailpage_id`) REFERENCES `project_projectdetailpage` (`page_ptr_id`);

--
-- Constraints for table `project_projectlistingpage`
--
ALTER TABLE `project_projectlistingpage`
  ADD CONSTRAINT `project_projectlisti_page_ptr_id_d62cc71e_fk_wagtailco` FOREIGN KEY (`page_ptr_id`) REFERENCES `wagtailcore_page` (`id`);

--
-- Constraints for table `project_projectpart`
--
ALTER TABLE `project_projectpart`
  ADD CONSTRAINT `project_projectpart_page_id_a900f6dd_fk_project_p` FOREIGN KEY (`page_id`) REFERENCES `project_projectdetailpage` (`page_ptr_id`);

--
-- Constraints for table `question_answer_qadetailquestionanswer`
--
ALTER TABLE `question_answer_qadetailquestionanswer`
  ADD CONSTRAINT `question_answer_qade_qa_detail_question_a_2bf0a184_fk_question_` FOREIGN KEY (`qa_detail_question_answer_id`) REFERENCES `question_answer_questionanswer` (`id`),
  ADD CONSTRAINT `question_answer_qade_question_answer_id_876b6325_fk_question_` FOREIGN KEY (`question_answer_id`) REFERENCES `question_answer_questionanswerdetail` (`id`);

--
-- Constraints for table `question_answer_questionanswerblog`
--
ALTER TABLE `question_answer_questionanswerblog`
  ADD CONSTRAINT `question_answer_ques_blog_page_id_1a3a7e6b_fk_blog_blog` FOREIGN KEY (`blog_page_id`) REFERENCES `blog_blogdetailpage` (`page_ptr_id`),
  ADD CONSTRAINT `question_answer_ques_question_answer_id_7e28e4ab_fk_question_` FOREIGN KEY (`question_answer_id`) REFERENCES `question_answer_questionanswer` (`id`);

--
-- Constraints for table `question_answer_questionanswercustompage`
--
ALTER TABLE `question_answer_questionanswercustompage`
  ADD CONSTRAINT `question_answer_ques_custom_page_q_and_a__e609ed81_fk_custom_pa` FOREIGN KEY (`custom_page_q_and_a_id`) REFERENCES `custom_page_custompage` (`page_ptr_id`),
  ADD CONSTRAINT `question_answer_ques_question_answer_id_f04fff5c_fk_question_` FOREIGN KEY (`question_answer_id`) REFERENCES `question_answer_questionanswer` (`id`);

--
-- Constraints for table `question_answer_questionanswerdetail`
--
ALTER TABLE `question_answer_questionanswerdetail`
  ADD CONSTRAINT `question_answer_ques_question_answer_id_4526a9ef_fk_question_` FOREIGN KEY (`question_answer_id`) REFERENCES `question_answer_questionanswer` (`id`);

--
-- Constraints for table `question_answer_questionanswerproject`
--
ALTER TABLE `question_answer_questionanswerproject`
  ADD CONSTRAINT `question_answer_ques_project_page_id_9465bb5e_fk_project_p` FOREIGN KEY (`project_page_id`) REFERENCES `project_projectdetailpage` (`page_ptr_id`),
  ADD CONSTRAINT `question_answer_ques_question_answer_id_dcbc7e9e_fk_question_` FOREIGN KEY (`question_answer_id`) REFERENCES `question_answer_questionanswer` (`id`);

--
-- Constraints for table `realtor_realtordetailpage`
--
ALTER TABLE `realtor_realtordetailpage`
  ADD CONSTRAINT `realtor_realtordetai_image_id_4457704d_fk_wagtailim` FOREIGN KEY (`image_id`) REFERENCES `wagtailimages_image` (`id`),
  ADD CONSTRAINT `realtor_realtordetai_page_ptr_id_06d2e805_fk_wagtailco` FOREIGN KEY (`page_ptr_id`) REFERENCES `wagtailcore_page` (`id`);

--
-- Constraints for table `realtor_realtorlistingpage`
--
ALTER TABLE `realtor_realtorlistingpage`
  ADD CONSTRAINT `realtor_realtorlisti_page_ptr_id_e2fd9451_fk_wagtailco` FOREIGN KEY (`page_ptr_id`) REFERENCES `wagtailcore_page` (`id`);

--
-- Constraints for table `realtor_realtorproject`
--
ALTER TABLE `realtor_realtorproject`
  ADD CONSTRAINT `realtor_realtorproje_project_page_id_0fe572a3_fk_project_p` FOREIGN KEY (`project_page_id`) REFERENCES `project_projectdetailpage` (`page_ptr_id`),
  ADD CONSTRAINT `realtor_realtorproje_realtor_page_id_63db40d7_fk_realtor_r` FOREIGN KEY (`realtor_page_id`) REFERENCES `realtor_realtordetailpage` (`page_ptr_id`);

--
-- Constraints for table `site_settings_sitesettings`
--
ALTER TABLE `site_settings_sitesettings`
  ADD CONSTRAINT `site_settings_sitese_logo_icon_id_61a4d797_fk_wagtailim` FOREIGN KEY (`logo_icon_id`) REFERENCES `wagtailimages_image` (`id`),
  ADD CONSTRAINT `site_settings_sitese_logo_id_194b2bdb_fk_wagtailim` FOREIGN KEY (`logo_id`) REFERENCES `wagtailimages_image` (`id`),
  ADD CONSTRAINT `site_settings_sitese_site_id_38a81127_fk_wagtailco` FOREIGN KEY (`site_id`) REFERENCES `wagtailcore_site` (`id`);

--
-- Constraints for table `taggit_taggeditem`
--
ALTER TABLE `taggit_taggeditem`
  ADD CONSTRAINT `taggit_taggeditem_content_type_id_9957a03c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `taggit_tag` (`id`);

--
-- Constraints for table `wagtailcore_collectionviewrestriction`
--
ALTER TABLE `wagtailcore_collectionviewrestriction`
  ADD CONSTRAINT `wagtailcore_collecti_collection_id_761908ec_fk_wagtailco` FOREIGN KEY (`collection_id`) REFERENCES `wagtailcore_collection` (`id`);

--
-- Constraints for table `wagtailcore_collectionviewrestriction_groups`
--
ALTER TABLE `wagtailcore_collectionviewrestriction_groups`
  ADD CONSTRAINT `wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco` FOREIGN KEY (`collectionviewrestriction_id`) REFERENCES `wagtailcore_collectionviewrestriction` (`id`),
  ADD CONSTRAINT `wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `wagtailcore_groupapprovaltask`
--
ALTER TABLE `wagtailcore_groupapprovaltask`
  ADD CONSTRAINT `wagtailcore_groupapp_task_ptr_id_cfe58781_fk_wagtailco` FOREIGN KEY (`task_ptr_id`) REFERENCES `wagtailcore_task` (`id`);

--
-- Constraints for table `wagtailcore_groupapprovaltask_groups`
--
ALTER TABLE `wagtailcore_groupapprovaltask_groups`
  ADD CONSTRAINT `wagtailcore_groupapp_group_id_2e64b61f_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `wagtailcore_groupapp_groupapprovaltask_id_9a9255ea_fk_wagtailco` FOREIGN KEY (`groupapprovaltask_id`) REFERENCES `wagtailcore_groupapprovaltask` (`task_ptr_id`);

--
-- Constraints for table `wagtailcore_groupcollectionpermission`
--
ALTER TABLE `wagtailcore_groupcollectionpermission`
  ADD CONSTRAINT `wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco` FOREIGN KEY (`collection_id`) REFERENCES `wagtailcore_collection` (`id`),
  ADD CONSTRAINT `wagtailcore_groupcol_group_id_05d61460_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `wagtailcore_grouppagepermission`
--
ALTER TABLE `wagtailcore_grouppagepermission`
  ADD CONSTRAINT `wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `wagtailcore_grouppag_page_id_710b114a_fk_wagtailco` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`);

--
-- Constraints for table `wagtailcore_page`
--
ALTER TABLE `wagtailcore_page`
  ADD CONSTRAINT `wagtailcore_page_alias_of_id_12945502_fk_wagtailcore_page_id` FOREIGN KEY (`alias_of_id`) REFERENCES `wagtailcore_page` (`id`),
  ADD CONSTRAINT `wagtailcore_page_content_type_id_c28424df_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `wagtailcore_page_live_revision_id_930bd822_fk_wagtailco` FOREIGN KEY (`live_revision_id`) REFERENCES `wagtailcore_pagerevision` (`id`),
  ADD CONSTRAINT `wagtailcore_page_locale_id_3c7e30a6_fk_wagtailcore_locale_id` FOREIGN KEY (`locale_id`) REFERENCES `wagtailcore_locale` (`id`),
  ADD CONSTRAINT `wagtailcore_page_locked_by_id_bcb86245_fk_auth_user_id` FOREIGN KEY (`locked_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `wagtailcore_pagelogentry`
--
ALTER TABLE `wagtailcore_pagelogentry`
  ADD CONSTRAINT `wagtailcore_pageloge_content_type_id_74e7708a_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `wagtailcore_pagerevision`
--
ALTER TABLE `wagtailcore_pagerevision`
  ADD CONSTRAINT `wagtailcore_pagerevision_page_id_d421cc1d_fk_wagtailcore_page_id` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`),
  ADD CONSTRAINT `wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `wagtailcore_pageviewrestriction`
--
ALTER TABLE `wagtailcore_pageviewrestriction`
  ADD CONSTRAINT `wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`);

--
-- Constraints for table `wagtailcore_pageviewrestriction_groups`
--
ALTER TABLE `wagtailcore_pageviewrestriction_groups`
  ADD CONSTRAINT `wagtailcore_pageview_group_id_6460f223_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco` FOREIGN KEY (`pageviewrestriction_id`) REFERENCES `wagtailcore_pageviewrestriction` (`id`);

--
-- Constraints for table `wagtailcore_site`
--
ALTER TABLE `wagtailcore_site`
  ADD CONSTRAINT `wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id` FOREIGN KEY (`root_page_id`) REFERENCES `wagtailcore_page` (`id`);

--
-- Constraints for table `wagtailcore_task`
--
ALTER TABLE `wagtailcore_task`
  ADD CONSTRAINT `wagtailcore_task_content_type_id_249ab8ba_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `wagtailcore_taskstate`
--
ALTER TABLE `wagtailcore_taskstate`
  ADD CONSTRAINT `wagtailcore_taskstat_content_type_id_0a758fdc_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `wagtailcore_taskstat_page_revision_id_9f52c88e_fk_wagtailco` FOREIGN KEY (`page_revision_id`) REFERENCES `wagtailcore_pagerevision` (`id`),
  ADD CONSTRAINT `wagtailcore_taskstat_workflow_state_id_9239a775_fk_wagtailco` FOREIGN KEY (`workflow_state_id`) REFERENCES `wagtailcore_workflowstate` (`id`),
  ADD CONSTRAINT `wagtailcore_taskstate_finished_by_id_13f98229_fk_auth_user_id` FOREIGN KEY (`finished_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `wagtailcore_taskstate_task_id_c3677c34_fk_wagtailcore_task_id` FOREIGN KEY (`task_id`) REFERENCES `wagtailcore_task` (`id`);

--
-- Constraints for table `wagtailcore_workflowpage`
--
ALTER TABLE `wagtailcore_workflowpage`
  ADD CONSTRAINT `wagtailcore_workflow_workflow_id_56f56ff6_fk_wagtailco` FOREIGN KEY (`workflow_id`) REFERENCES `wagtailcore_workflow` (`id`),
  ADD CONSTRAINT `wagtailcore_workflowpage_page_id_81e7bab6_fk_wagtailcore_page_id` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`);

--
-- Constraints for table `wagtailcore_workflowstate`
--
ALTER TABLE `wagtailcore_workflowstate`
  ADD CONSTRAINT `wagtailcore_workflow_current_task_state_i_3a1a0632_fk_wagtailco` FOREIGN KEY (`current_task_state_id`) REFERENCES `wagtailcore_taskstate` (`id`),
  ADD CONSTRAINT `wagtailcore_workflow_page_id_6c962862_fk_wagtailco` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`),
  ADD CONSTRAINT `wagtailcore_workflow_requested_by_id_4090bca3_fk_auth_user` FOREIGN KEY (`requested_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `wagtailcore_workflow_workflow_id_1f18378f_fk_wagtailco` FOREIGN KEY (`workflow_id`) REFERENCES `wagtailcore_workflow` (`id`);

--
-- Constraints for table `wagtailcore_workflowtask`
--
ALTER TABLE `wagtailcore_workflowtask`
  ADD CONSTRAINT `wagtailcore_workflow_workflow_id_b9717175_fk_wagtailco` FOREIGN KEY (`workflow_id`) REFERENCES `wagtailcore_workflow` (`id`),
  ADD CONSTRAINT `wagtailcore_workflowtask_task_id_ce7716fe_fk_wagtailcore_task_id` FOREIGN KEY (`task_id`) REFERENCES `wagtailcore_task` (`id`);

--
-- Constraints for table `wagtaildocs_document`
--
ALTER TABLE `wagtaildocs_document`
  ADD CONSTRAINT `wagtaildocs_document_collection_id_23881625_fk_wagtailco` FOREIGN KEY (`collection_id`) REFERENCES `wagtailcore_collection` (`id`),
  ADD CONSTRAINT `wagtaildocs_document_uploaded_by_user_id_17258b41_fk_auth_user` FOREIGN KEY (`uploaded_by_user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `wagtailforms_formsubmission`
--
ALTER TABLE `wagtailforms_formsubmission`
  ADD CONSTRAINT `wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`);

--
-- Constraints for table `wagtailimages_image`
--
ALTER TABLE `wagtailimages_image`
  ADD CONSTRAINT `wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco` FOREIGN KEY (`collection_id`) REFERENCES `wagtailcore_collection` (`id`),
  ADD CONSTRAINT `wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user_id` FOREIGN KEY (`uploaded_by_user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `wagtailimages_rendition`
--
ALTER TABLE `wagtailimages_rendition`
  ADD CONSTRAINT `wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim` FOREIGN KEY (`image_id`) REFERENCES `wagtailimages_image` (`id`);

--
-- Constraints for table `wagtailimages_uploadedimage`
--
ALTER TABLE `wagtailimages_uploadedimage`
  ADD CONSTRAINT `wagtailimages_upload_uploaded_by_user_id_85921689_fk_auth_user` FOREIGN KEY (`uploaded_by_user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `wagtailredirects_redirect`
--
ALTER TABLE `wagtailredirects_redirect`
  ADD CONSTRAINT `wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco` FOREIGN KEY (`redirect_page_id`) REFERENCES `wagtailcore_page` (`id`),
  ADD CONSTRAINT `wagtailredirects_red_site_id_780a0e1e_fk_wagtailco` FOREIGN KEY (`site_id`) REFERENCES `wagtailcore_site` (`id`);

--
-- Constraints for table `wagtailsearch_editorspick`
--
ALTER TABLE `wagtailsearch_editorspick`
  ADD CONSTRAINT `wagtailsearch_editor_page_id_28cbc274_fk_wagtailco` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`),
  ADD CONSTRAINT `wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse` FOREIGN KEY (`query_id`) REFERENCES `wagtailsearch_query` (`id`);

--
-- Constraints for table `wagtailsearch_querydailyhits`
--
ALTER TABLE `wagtailsearch_querydailyhits`
  ADD CONSTRAINT `wagtailsearch_queryd_query_id_2185994b_fk_wagtailse` FOREIGN KEY (`query_id`) REFERENCES `wagtailsearch_query` (`id`);

--
-- Constraints for table `wagtailusers_userprofile`
--
ALTER TABLE `wagtailusers_userprofile`
  ADD CONSTRAINT `wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
