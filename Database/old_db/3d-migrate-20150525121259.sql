# WordPress MySQL database migration
#
# Generated: Monday 25. May 2015 12:12 UTC
# Hostname: localhost
# Database: `3d`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_comments`
#

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www.passionforclients.com/3dconstruct', 'yes'),
(2, 'home', 'http://www.passionforclients.com/3dconstruct', 'yes'),
(3, 'blogname', '3dConstruct', 'yes'),
(4, 'blogdescription', 'Architectural Printing', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'd@construct.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '1', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";i:1;s:22:"fancy-box/fancybox.php";i:2;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '3', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:2:{i:0;s:80:"/www.passionforclients.com/3dconstruct/wp-content/plugins/fancy-box/fancybox.php";i:1;s:0:"";}', 'no'),
(41, 'template', 'cap', 'yes'),
(42, 'stylesheet', 'cap', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '1', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '31535', 'yes'),
(50, 'uploads_use_yearmonth_folders', '', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', '', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:7:{i:1;a:0:{}i:2;a:3:{s:5:"title";s:0:"";s:4:"text";s:137:"OS 3D Printing Services<br />\r\nT/A 3D Construct<br />\r\nWellbrook House<br />\r\nRailway Road<br />\r\nGorey<br />\r\nCo. Wexford<br />\r\nIreland";s:6:"filter";b:0;}i:3;a:3:{s:5:"title";s:0:"";s:4:"text";s:96:"Tel: +353 (0)53 948 9888<br />\r\nEmail: info@3dconstruct.ie<br />\r\nWeb: http://www.3dconstruct.ie";s:6:"filter";b:0;}i:4;a:3:{s:5:"title";s:0:"";s:4:"text";s:91:"Directors: Diarmuid O’Sullivan, ABC, DEF<br />\r\nBusiness No: 554951<br />\r\nVAT No: 123456";s:6:"filter";b:0;}i:5;a:3:{s:5:"title";s:23:"Welcome to 3D Construct";s:4:"text";s:326:"We specialise in architectural visualisation. We help design and\r\nconstruction professionals to bring their vision to life by printing 3D\r\narchitectural models of their CAD drawings. We work with archi-\r\ntects, engineers, self-builds and students, anyone who needs to\r\nvisualise their ideas so they can advance their projects.";s:6:"filter";b:0;}i:6;a:3:{s:5:"title";s:13:"Why choose us";s:4:"text";s:346:"<ul>\r\n<li>We help you visualise your design</li>\r\n<li>We help you make better decisions</li>\r\n<li>We are experienced industry professionals</li>\r\n<li>We have access to the latest 3D printing technology</li>\r\n<li>3D models are faster and cheaper to build than traditional models</li>\r\n<li>3D models are higher quality and more accurate</li>\r\n</ul>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '6', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31535', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'WPLANG', '', 'yes'),
(91, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:8:{s:9:"sidebar-1";a:0:{}s:19:"wp_inactive_widgets";a:0:{}s:17:"footer_first_area";a:1:{i:0;s:6:"text-2";}s:18:"footer_second_area";a:1:{i:0;s:6:"text-3";}s:17:"footer_third_area";a:1:{i:0;s:6:"text-4";}s:15:"home_panel_area";a:1:{i:0;s:6:"text-5";}s:19:"home_adv_panel_area";a:1:{i:0;s:6:"text-6";}s:13:"array_version";i:3;}', 'yes'),
(98, 'cron', 'a:5:{i:1432570860;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1432596458;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1432639713;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1432642242;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, 'can_compress_scripts', '0', 'yes'),
(148, 'recently_activated', 'a:0:{}', 'yes'),
(155, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(156, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(157, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(159, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(161, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1431344215;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(162, 'current_theme', 'cap', 'yes'),
(163, 'theme_mods_3dconstruct', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1431344505;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(164, 'theme_switched', '', 'yes'),
(166, 'theme_mods_dconstruct', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1431344583;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(168, 'theme_mods_cap', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:6:{s:7:"primary";i:2;s:8:"home_top";i:3;s:11:"sector_left";i:6;s:9:"blog_left";i:7;s:12:"gallery_left";i:8;s:13:"services_left";i:9;}}', 'yes'),
(176, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(243, 'wpcf7', 'a:1:{s:7:"version";s:5:"4.1.2";}', 'yes'),
(247, 'slb_version', '2.3.1', 'yes'),
(248, 'slb_options', 'a:25:{s:7:"enabled";b:1;s:12:"enabled_home";b:1;s:12:"enabled_post";b:1;s:12:"enabled_page";b:1;s:15:"enabled_archive";b:1;s:14:"enabled_widget";b:0;s:11:"group_links";b:1;s:10:"group_post";b:1;s:13:"group_gallery";b:0;s:12:"group_widget";b:0;s:10:"ui_autofit";b:1;s:10:"ui_animate";b:1;s:19:"slideshow_autostart";b:1;s:18:"slideshow_duration";s:1:"6";s:10:"group_loop";b:1;s:18:"ui_overlay_opacity";s:3:"0.8";s:16:"ui_title_default";b:0;s:11:"txt_loading";s:7:"Loading";s:9:"txt_close";s:5:"Close";s:12:"txt_nav_next";s:4:"Next";s:12:"txt_nav_prev";s:8:"Previous";s:19:"txt_slideshow_start";s:15:"Start slideshow";s:18:"txt_slideshow_stop";s:14:"Stop slideshow";s:16:"txt_group_status";s:25:"Item %current% of %total%";s:13:"theme_default";s:11:"slb_default";}', 'yes'),
(269, 'category_children', 'a:0:{}', 'yes'),
(270, 'auth_key', '_RwqK(j5HbSP-e#5afRz@^%IM$Zn;E8{y_Q$J5#ZG[BA!MNg[QdRt[p+zS} &}bj', 'yes'),
(271, 'auth_salt', 'b)wk_-UiCDfyaa%Um9`P<%DFR^TO0nHsl0 3LOuf GGy/(BXzu5;qY{Ub4V83FEK', 'yes'),
(272, 'logged_in_key', '7R/kktB)bYp]uo]ZA.bh-9yqPTU-LL<h3fd~T9=6Z<f *(8D2EqRdyr:>~ xB`,u', 'yes'),
(273, 'logged_in_salt', ';n|+ e1,{/~px:]$=:05k];Z#Do8%Y4Z@q,DjYpgfOIT![yvY-N<0B2K_`H~xaB:', 'yes'),
(279, 'rewrite_rules', 'a:195:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:33:"model/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"model/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"model/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"model/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"model/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:"model/([^/]+)/trackback/?$";s:32:"index.php?model=$matches[1]&tb=1";s:34:"model/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?model=$matches[1]&paged=$matches[2]";s:41:"model/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?model=$matches[1]&cpage=$matches[2]";s:26:"model/([^/]+)(/[0-9]+)?/?$";s:44:"index.php?model=$matches[1]&page=$matches[2]";s:22:"model/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"model/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"model/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"model/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"model/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"steps/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"steps/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"steps/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"steps/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"steps/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:"steps/([^/]+)/trackback/?$";s:32:"index.php?steps=$matches[1]&tb=1";s:34:"steps/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?steps=$matches[1]&paged=$matches[2]";s:41:"steps/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?steps=$matches[1]&cpage=$matches[2]";s:26:"steps/([^/]+)(/[0-9]+)?/?$";s:44:"index.php?steps=$matches[1]&page=$matches[2]";s:22:"steps/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"steps/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"steps/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"steps/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"steps/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"team/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"team/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"team/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"team/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"team/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:25:"team/([^/]+)/trackback/?$";s:31:"index.php?team=$matches[1]&tb=1";s:33:"team/([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?team=$matches[1]&paged=$matches[2]";s:40:"team/([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?team=$matches[1]&cpage=$matches[2]";s:25:"team/([^/]+)(/[0-9]+)?/?$";s:43:"index.php?team=$matches[1]&page=$matches[2]";s:21:"team/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:31:"team/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:51:"team/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"team/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"team/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"concept/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"concept/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"concept/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"concept/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"concept/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"concept/([^/]+)/trackback/?$";s:34:"index.php?concept=$matches[1]&tb=1";s:36:"concept/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?concept=$matches[1]&paged=$matches[2]";s:43:"concept/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?concept=$matches[1]&cpage=$matches[2]";s:28:"concept/([^/]+)(/[0-9]+)?/?$";s:46:"index.php?concept=$matches[1]&page=$matches[2]";s:24:"concept/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"concept/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"concept/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"concept/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"concept/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"sales/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"sales/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"sales/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"sales/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"sales/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:"sales/([^/]+)/trackback/?$";s:32:"index.php?sales=$matches[1]&tb=1";s:34:"sales/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?sales=$matches[1]&paged=$matches[2]";s:41:"sales/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?sales=$matches[1]&cpage=$matches[2]";s:26:"sales/([^/]+)(/[0-9]+)?/?$";s:44:"index.php?sales=$matches[1]&page=$matches[2]";s:22:"sales/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"sales/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"sales/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"sales/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"sales/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"terrain/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"terrain/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"terrain/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"terrain/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"terrain/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"terrain/([^/]+)/trackback/?$";s:34:"index.php?terrain=$matches[1]&tb=1";s:36:"terrain/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?terrain=$matches[1]&paged=$matches[2]";s:43:"terrain/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?terrain=$matches[1]&cpage=$matches[2]";s:28:"terrain/([^/]+)(/[0-9]+)?/?$";s:46:"index.php?terrain=$matches[1]&page=$matches[2]";s:24:"terrain/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"terrain/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"terrain/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"terrain/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"terrain/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"gallery_concept/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:53:"gallery_concept/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"gallery_concept/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"gallery_concept/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"gallery_concept/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"gallery_concept/([^/]+)/trackback/?$";s:42:"index.php?gallery_concept=$matches[1]&tb=1";s:44:"gallery_concept/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?gallery_concept=$matches[1]&paged=$matches[2]";s:51:"gallery_concept/([^/]+)/comment-page-([0-9]{1,})/?$";s:55:"index.php?gallery_concept=$matches[1]&cpage=$matches[2]";s:36:"gallery_concept/([^/]+)(/[0-9]+)?/?$";s:54:"index.php?gallery_concept=$matches[1]&page=$matches[2]";s:32:"gallery_concept/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"gallery_concept/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"gallery_concept/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"gallery_concept/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"gallery_concept/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"gallery_sales/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:51:"gallery_sales/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:71:"gallery_sales/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"gallery_sales/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"gallery_sales/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"gallery_sales/([^/]+)/trackback/?$";s:40:"index.php?gallery_sales=$matches[1]&tb=1";s:42:"gallery_sales/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?gallery_sales=$matches[1]&paged=$matches[2]";s:49:"gallery_sales/([^/]+)/comment-page-([0-9]{1,})/?$";s:53:"index.php?gallery_sales=$matches[1]&cpage=$matches[2]";s:34:"gallery_sales/([^/]+)(/[0-9]+)?/?$";s:52:"index.php?gallery_sales=$matches[1]&page=$matches[2]";s:30:"gallery_sales/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:40:"gallery_sales/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:60:"gallery_sales/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"gallery_sales/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"gallery_sales/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"gallery_planners/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"gallery_planners/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"gallery_planners/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"gallery_planners/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"gallery_planners/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"gallery_planners/([^/]+)/trackback/?$";s:43:"index.php?gallery_planners=$matches[1]&tb=1";s:45:"gallery_planners/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?gallery_planners=$matches[1]&paged=$matches[2]";s:52:"gallery_planners/([^/]+)/comment-page-([0-9]{1,})/?$";s:56:"index.php?gallery_planners=$matches[1]&cpage=$matches[2]";s:37:"gallery_planners/([^/]+)(/[0-9]+)?/?$";s:55:"index.php?gallery_planners=$matches[1]&page=$matches[2]";s:33:"gallery_planners/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"gallery_planners/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"gallery_planners/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"gallery_planners/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"gallery_planners/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=6&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=697 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(7, 6, '_edit_last', '1'),
(8, 6, '_edit_lock', '1432539767:1'),
(9, 6, '_wp_page_template', 'home-page.php'),
(10, 8, '_wp_attached_file', '3D_1.jpg'),
(11, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3264;s:6:"height";i:2448;s:4:"file";s:8:"3D_1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"3D_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"3D_1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"3D_1-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"3D_1-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(12, 9, '_wp_attached_file', '3D_2.jpg'),
(13, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:8:"3D_2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"3D_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"3D_2-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"3D_2-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"3D_2-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(14, 10, '_wp_attached_file', '3D_3.jpg'),
(15, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3264;s:6:"height";i:2448;s:4:"file";s:8:"3D_3.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"3D_3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"3D_3-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"3D_3-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"3D_3-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(16, 11, '_wp_attached_file', '3D_4.jpg'),
(17, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:8:"3D_4.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"3D_4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"3D_4-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"3D_4-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"3D_4-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(18, 12, '_wp_attached_file', '3D_5.jpg'),
(19, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:8:"3D_5.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"3D_5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"3D_5-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"3D_5-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"3D_5-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(20, 13, '_wp_attached_file', '3D_6-e1431417059572.jpg'),
(21, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:23:"3D_6-e1431417059572.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"3D_6-e1431417059572-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"3D_6-e1431417059572-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"3D_6-e1431417059572-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:31:"3D_6-e1431417059572-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(22, 14, '_wp_attached_file', '3D_7-e1431498029901.jpg'),
(23, 14, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3264;s:6:"height";i:1648;s:4:"file";s:23:"3D_7-e1431498029901.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"3D_7-e1431498029901-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"3D_7-e1431498029901-300x151.jpg";s:5:"width";i:300;s:6:"height";i:151;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"3D_7-e1431498029901-1024x517.jpg";s:5:"width";i:1024;s:6:"height";i:517;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:31:"3D_7-e1431498029901-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(24, 15, '_wp_attached_file', '3D_8.jpg'),
(25, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:8:"3D_8.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"3D_8-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"3D_8-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"3D_8-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"3D_8-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(26, 16, '_wp_attached_file', '3D_9.jpg'),
(27, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:8:"3D_9.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"3D_9-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"3D_9-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"3D_9-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"3D_9-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(28, 17, '_wp_attached_file', '3D_10.jpg'),
(29, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:9:"3D_10.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"3D_10-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"3D_10-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"3D_10-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"3D_10-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(30, 18, '_wp_attached_file', '3D_11.jpg'),
(31, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:9:"3D_11.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"3D_11-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"3D_11-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"3D_11-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"3D_11-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(32, 19, '_wp_attached_file', '3D_12.jpg'),
(33, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:9:"3D_12.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"3D_12-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"3D_12-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"3D_12-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"3D_12-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(34, 20, '_wp_attached_file', '3D_13.jpg'),
(35, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:9:"3D_13.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"3D_13-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"3D_13-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"3D_13-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"3D_13-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(36, 21, '_wp_attached_file', '3D_14.jpg'),
(37, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:9:"3D_14.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"3D_14-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"3D_14-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"3D_14-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"3D_14-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(38, 22, '_wp_attached_file', '3D_BASIC.jpg'),
(39, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:293;s:6:"height";i:272;s:4:"file";s:12:"3D_BASIC.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"3D_BASIC-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(40, 23, '_wp_attached_file', '3D-CONSTRUCT_LOGO.png'),
(41, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1803;s:6:"height";i:2010;s:4:"file";s:21:"3D-CONSTRUCT_LOGO.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"3D-CONSTRUCT_LOGO-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:29:"3D-CONSTRUCT_LOGO-269x300.png";s:5:"width";i:269;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:30:"3D-CONSTRUCT_LOGO-919x1024.png";s:5:"width";i:919;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:29:"3D-CONSTRUCT_LOGO-825x510.png";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(42, 24, '_wp_attached_file', '3d_PHOTO_1.jpg'),
(43, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3464;s:6:"height";i:2309;s:4:"file";s:14:"3d_PHOTO_1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"3d_PHOTO_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"3d_PHOTO_1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"3d_PHOTO_1-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"3d_PHOTO_1-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:30:"(c) Luchschen | Dreamstime.com";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(44, 25, '_wp_attached_file', 'ARCHITECTS_ICON.png'),
(45, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:96;s:6:"height";i:98;s:4:"file";s:19:"ARCHITECTS_ICON.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(46, 26, '_wp_attached_file', 'FAQs_ICON.png'),
(47, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:59;s:6:"height";i:92;s:4:"file";s:13:"FAQs_ICON.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(48, 27, '_wp_attached_file', 'GALLERY_ICON.png'),
(49, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:108;s:6:"height";i:103;s:4:"file";s:16:"GALLERY_ICON.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(50, 28, '_wp_attached_file', 'Inset_1.jpg'),
(51, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:293;s:6:"height";i:272;s:4:"file";s:11:"Inset_1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Inset_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(52, 29, '_wp_attached_file', 'Inset_2.jpg'),
(53, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:293;s:6:"height";i:272;s:4:"file";s:11:"Inset_2.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Inset_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(54, 30, '_wp_attached_file', 'Inset_3.jpg'),
(55, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:293;s:6:"height";i:272;s:4:"file";s:11:"Inset_3.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Inset_3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(56, 31, '_wp_attached_file', 'Inset_4.jpg'),
(57, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:293;s:6:"height";i:272;s:4:"file";s:11:"Inset_4.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Inset_4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(58, 32, '_wp_attached_file', 'Inset_5.jpg'),
(59, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:293;s:6:"height";i:272;s:4:"file";s:11:"Inset_5.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Inset_5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(60, 33, '_wp_attached_file', 'MUG_SHOT.jpg'),
(61, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:293;s:6:"height";i:272;s:4:"file";s:12:"MUG_SHOT.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"MUG_SHOT-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(62, 34, '_wp_attached_file', 'ONE.jpg'),
(63, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:84;s:6:"height";i:84;s:4:"file";s:7:"ONE.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(64, 35, '_wp_attached_file', 'ONE.png'),
(65, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:84;s:6:"height";i:84;s:4:"file";s:7:"ONE.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(66, 36, '_wp_attached_file', 'SELF-BUILDS-ICON.png'),
(67, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:130;s:6:"height";i:67;s:4:"file";s:20:"SELF-BUILDS-ICON.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(68, 37, '_wp_attached_file', 'Services-Icon.png'),
(69, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:79;s:4:"file";s:17:"Services-Icon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(70, 38, '_wp_attached_file', 'STUDENTS-ICON.png'),
(71, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:103;s:6:"height";i:102;s:4:"file";s:17:"STUDENTS-ICON.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(72, 39, '_wp_attached_file', 'THREE.png'),
(73, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:84;s:6:"height";i:84;s:4:"file";s:9:"THREE.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(74, 40, '_wp_attached_file', 'TWO.png'),
(75, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:84;s:6:"height";i:84;s:4:"file";s:7:"TWO.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(76, 41, '_wp_attached_file', 'Welcome_woman.jpg'),
(77, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:722;s:6:"height";i:482;s:4:"file";s:17:"Welcome_woman.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Welcome_woman-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Welcome_woman-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(78, 6, '_thumbnail_id', '14'),
(79, 42, '_menu_item_type', 'post_type'),
(80, 42, '_menu_item_menu_item_parent', '0'),
(81, 42, '_menu_item_object_id', '6'),
(82, 42, '_menu_item_object', 'page'),
(83, 42, '_menu_item_target', ''),
(84, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(85, 42, '_menu_item_xfn', ''),
(86, 42, '_menu_item_url', ''),
(88, 43, '_menu_item_type', 'post_type'),
(89, 43, '_menu_item_menu_item_parent', '0'),
(90, 43, '_menu_item_object_id', '6'),
(91, 43, '_menu_item_object', 'page'),
(92, 43, '_menu_item_target', ''),
(93, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(94, 43, '_menu_item_xfn', ''),
(95, 43, '_menu_item_url', ''),
(96, 43, '_menu_item_orphaned', '1431353100'),
(132, 48, '_edit_last', '1'),
(133, 48, '_edit_lock', '1431700137:1'),
(134, 48, '_wp_page_template', 'about-page.php'),
(135, 50, '_edit_last', '1'),
(136, 50, '_edit_lock', '1432539796:1'),
(137, 50, '_wp_page_template', 'services-page.php'),
(144, 56, '_edit_last', '1'),
(145, 56, '_edit_lock', '1432127369:1'),
(146, 56, '_wp_page_template', 'faqs-page.php'),
(147, 58, '_edit_last', '1'),
(148, 58, '_edit_lock', '1432127363:1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(149, 58, '_wp_page_template', 'contact-page.php'),
(150, 60, '_menu_item_type', 'post_type'),
(151, 60, '_menu_item_menu_item_parent', '0'),
(152, 60, '_menu_item_object_id', '58'),
(153, 60, '_menu_item_object', 'page'),
(154, 60, '_menu_item_target', ''),
(155, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(156, 60, '_menu_item_xfn', ''),
(157, 60, '_menu_item_url', ''),
(159, 61, '_menu_item_type', 'post_type'),
(160, 61, '_menu_item_menu_item_parent', '0'),
(161, 61, '_menu_item_object_id', '56'),
(162, 61, '_menu_item_object', 'page'),
(163, 61, '_menu_item_target', ''),
(164, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(165, 61, '_menu_item_xfn', ''),
(166, 61, '_menu_item_url', ''),
(186, 64, '_menu_item_type', 'post_type'),
(187, 64, '_menu_item_menu_item_parent', '0'),
(188, 64, '_menu_item_object_id', '50'),
(189, 64, '_menu_item_object', 'page'),
(190, 64, '_menu_item_target', ''),
(191, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(192, 64, '_menu_item_xfn', ''),
(193, 64, '_menu_item_url', ''),
(195, 65, '_menu_item_type', 'post_type'),
(196, 65, '_menu_item_menu_item_parent', '0'),
(197, 65, '_menu_item_object_id', '48'),
(198, 65, '_menu_item_object', 'page'),
(199, 65, '_menu_item_target', ''),
(200, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(201, 65, '_menu_item_xfn', ''),
(202, 65, '_menu_item_url', ''),
(204, 14, '_wp_attachment_image_alt', 'Home page'),
(205, 10, '_wp_attachment_image_alt', 'About page'),
(206, 19, '_wp_attachment_image_alt', 'Services page'),
(207, 15, '_wp_attachment_image_alt', 'Services page'),
(208, 20, '_wp_attachment_image_alt', 'Services page'),
(209, 48, '_thumbnail_id', '10'),
(217, 13, '_wp_attachment_image_alt', 'Services page'),
(218, 50, '_thumbnail_id', '13'),
(219, 13, '_wp_attachment_backup_sizes', 'a:5:{s:9:"full-orig";a:3:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:8:"3D_6.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:16:"3D_6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:16:"3D_6-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:10:"large-orig";a:4:{s:4:"file";s:17:"3D_6-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:19:"post-thumbnail-orig";a:4:{s:4:"file";s:16:"3D_6-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}'),
(220, 66, '_menu_item_type', 'taxonomy'),
(221, 66, '_menu_item_menu_item_parent', '0'),
(222, 66, '_menu_item_object_id', '1'),
(223, 66, '_menu_item_object', 'category'),
(224, 66, '_menu_item_target', ''),
(225, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(226, 66, '_menu_item_xfn', ''),
(227, 66, '_menu_item_url', ''),
(229, 67, '_wp_attached_file', '3D_15-e1431498002529.jpg'),
(230, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3264;s:6:"height";i:1256;s:4:"file";s:24:"3D_15-e1431498002529.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"3D_15-e1431498002529-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"3D_15-e1431498002529-300x115.jpg";s:5:"width";i:300;s:6:"height";i:115;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"3D_15-e1431498002529-1024x394.jpg";s:5:"width";i:1024;s:6:"height";i:394;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:32:"3D_15-e1431498002529-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(231, 67, '_wp_attachment_image_alt', 'Sectors page'),
(232, 67, '_wp_attachment_backup_sizes', 'a:5:{s:9:"full-orig";a:3:{s:5:"width";i:3264;s:6:"height";i:2448;s:4:"file";s:9:"3D_15.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:17:"3D_15-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:17:"3D_15-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:10:"large-orig";a:4:{s:4:"file";s:18:"3D_15-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:19:"post-thumbnail-orig";a:4:{s:4:"file";s:17:"3D_15-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}'),
(233, 14, '_wp_attachment_backup_sizes', 'a:5:{s:9:"full-orig";a:3:{s:5:"width";i:3264;s:6:"height";i:2448;s:4:"file";s:8:"3D_7.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:16:"3D_7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:16:"3D_7-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:10:"large-orig";a:4:{s:4:"file";s:17:"3D_7-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:19:"post-thumbnail-orig";a:4:{s:4:"file";s:16:"3D_7-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}'),
(236, 56, '_thumbnail_id', '67'),
(237, 58, '_thumbnail_id', '67'),
(247, 69, '_menu_item_type', 'post_type'),
(248, 69, '_menu_item_menu_item_parent', '0'),
(249, 69, '_menu_item_object_id', '56'),
(250, 69, '_menu_item_object', 'page'),
(251, 69, '_menu_item_target', ''),
(252, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(253, 69, '_menu_item_xfn', ''),
(254, 69, '_menu_item_url', ''),
(274, 72, '_menu_item_type', 'post_type'),
(275, 72, '_menu_item_menu_item_parent', '0'),
(276, 72, '_menu_item_object_id', '50'),
(277, 72, '_menu_item_object', 'page'),
(278, 72, '_menu_item_target', ''),
(279, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(280, 72, '_menu_item_xfn', ''),
(281, 72, '_menu_item_url', ''),
(292, 74, '_edit_last', '1'),
(293, 74, '_edit_lock', '1432127552:1'),
(294, 74, '_wp_page_template', 'sectors-page.php'),
(319, 82, '_menu_item_type', 'post_type'),
(320, 82, '_menu_item_menu_item_parent', '0'),
(321, 82, '_menu_item_object_id', '74'),
(322, 82, '_menu_item_object', 'page'),
(323, 82, '_menu_item_target', ''),
(324, 82, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(325, 82, '_menu_item_xfn', ''),
(326, 82, '_menu_item_url', ''),
(328, 6, '_services_left_title', 'Concept models'),
(329, 6, '_services_left_text', 'Whether it’s a sales pitch or client meeting, a single building or city block, a 3D printed concept model is a fast and affordable way to visualise your design.'),
(330, 6, '_services_middle_title', 'Sales models'),
(331, 6, '_services_middle_text', 'A sales model is a full colour, high resolution architectural model. It is a photo realistic scale representation of your design, made to look as much like the real thing as you can get.'),
(332, 6, '_services_right_title', 'Terrain models'),
(333, 6, '_services_right_text', 'A terrain model is a great way of depicting the topography or landscape of an area which is useful when visualising a large scale project such as a major piece of infrastructure.'),
(334, 6, '_works_left_title', 'You up load it'),
(335, 6, '_works_left_text', ''),
(336, 6, '_works_middle_title', 'We 3D print it'),
(337, 6, '_works_middle_text', ''),
(338, 6, '_works_right_title', 'You receive it'),
(339, 6, '_works_right_text', ''),
(340, 48, '_what_title', 'What we do'),
(341, 48, '_what_text', '3D Construct is a specialist 3D printing company. We help design and construction professionals to bring their vision to life by printing 3D models of their CAD drawings. We work with architects, engineers, self-builds and students, anyone who needs to visualise their building ideas so they can advance their projects.'),
(342, 48, '_how_title', 'How we started'),
(343, 48, '_how_text', 'Based in Gorey, Co. Wexford, 3D Construct was founded by Diarmuid O’Sullivan. It was through his engineering consultancy and extensive work with architectural firms that he saw the potential in 3D printing and the opportunities it presented.\r\nHe realised that design and construction professionals needed a better way to visualise their ideas. Projects were stalling because they were unable to convey their concepts and clients were unable to grasp the detail.\r\nHe began drawing and printing 3D models for a small number of local architectural firms and self-build projects. As demand continued to grow, he decided the time was right to set up a stand-alone business and 3D Construct was born.') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(344, 84, '_edit_last', '1'),
(345, 84, '_edit_lock', '1431585919:1'),
(346, 85, '_edit_last', '1'),
(347, 85, '_edit_lock', '1431585931:1'),
(348, 86, '_edit_last', '1'),
(349, 86, '_edit_lock', '1431585936:1'),
(350, 86, '_thumbnail_id', '33'),
(351, 85, '_thumbnail_id', '33'),
(352, 84, '_thumbnail_id', '33'),
(353, 87, '_edit_last', '1'),
(354, 87, '_edit_lock', '1431586268:1'),
(355, 87, '_thumbnail_id', '29'),
(356, 88, '_edit_last', '1'),
(357, 88, '_edit_lock', '1431586323:1'),
(358, 88, '_thumbnail_id', '28'),
(359, 89, '_edit_last', '1'),
(360, 89, '_edit_lock', '1432539774:1'),
(361, 89, '_thumbnail_id', '30'),
(362, 90, '_edit_last', '1'),
(363, 90, '_edit_lock', '1431587608:1'),
(364, 90, '_thumbnail_id', '31'),
(365, 91, '_edit_last', '1'),
(366, 91, '_edit_lock', '1431587626:1'),
(367, 91, '_thumbnail_id', '29'),
(368, 92, '_edit_last', '1'),
(369, 92, '_edit_lock', '1431587642:1'),
(370, 92, '_thumbnail_id', '32'),
(371, 50, '_why_title', 'Why 3D models are better than tradition models'),
(372, 50, '_why_text', 'Visualisation of buildings was traditionally done using scale models made of wood or foam board. This allowed architects to see how the building would stand in physical space and help them pre-empt any construction issues. There was only one problem – handmade Styrofoam scale models can be very expensive and time consuming to build. The emergence of 3D printing does away with all this. It’s cheaper, it’s quicker and it’s a great deal easier.'),
(373, 50, '_concept_title', 'Concept models'),
(374, 50, '_concept_text', 'Whether it’s a sales pitch or client meeting, a single building or city block, a 3D printed concept model is a fast and affordable way to visualise your design. Normally single colour and made of plastic resin, concept models are fast becoming the norm in architectural, engineering and construction businesses.\r\n3D printing speeds up the design process by reducing the number of steps of involved. Clients can give you better feedback, and quicker. It also leads to better outcomes because any potential issues are identified and overcome sooner.\r\nConcept models combine the precision of computer simulations with the tangibility of 3D printing. It only takes a couple of days to make, and once complete, we will package it securely and courier it to you.'),
(375, 50, '_sales_title', 'Sales models'),
(376, 50, '_sales_text', 'A sales model is a full colour, high resolution architectural model. It is a photo realistic scale representation of your design, made to look as much like the real thing as you can get.\r\nThey can be as simple or advanced as your vision requires. They can be used for one-off houses, entire office blocks, streetscapes, cityscapes... whatever you need.\r\nColour 3D printing allows for a way to produce a coloured model with a faster turnaround and greater accuracy than a more traditional sales model, saving you time and money.'),
(377, 50, '_terrain_title', 'Terrain models'),
(378, 50, '_terrain_text', 'A terrain model is a great way of depicting the topography or landscape of an area. You can cover a few square kilometres which is useful when visualising a large scale project such as a commercial development or major piece of infrastructure.\r\nWe have access to the latest 3D printing technology which means we can produce as little or as much detail as required. They can be conceptual with limited detail and colour palette or they can be highly sophisticated with full colour.'),
(379, 93, '_edit_last', '1'),
(380, 93, '_edit_lock', '1431700323:1'),
(381, 93, '_thumbnail_id', '16'),
(382, 94, '_thumbnail_id', '15'),
(383, 94, '_edit_last', '1'),
(384, 94, '_edit_lock', '1431591701:1'),
(386, 95, '_edit_last', '1'),
(387, 95, '_edit_lock', '1431592187:1'),
(388, 96, '_thumbnail_id', '12'),
(389, 96, '_edit_last', '1'),
(390, 96, '_edit_lock', '1431591724:1'),
(391, 97, '_thumbnail_id', '13'),
(392, 97, '_edit_last', '1'),
(393, 97, '_edit_lock', '1431591733:1'),
(394, 98, '_edit_last', '1'),
(395, 98, '_edit_lock', '1431592202:1'),
(397, 99, '_edit_last', '1'),
(398, 99, '_edit_lock', '1431593823:1'),
(400, 100, '_thumbnail_id', '20'),
(401, 100, '_edit_last', '1'),
(402, 100, '_edit_lock', '1431591778:1'),
(403, 101, '_thumbnail_id', '21'),
(404, 101, '_edit_last', '1'),
(405, 101, '_edit_lock', '1431591797:1'),
(406, 95, '_thumbnail_id', '13'),
(407, 98, '_thumbnail_id', '11'),
(408, 99, '_thumbnail_id', '13'),
(411, 102, '_edit_last', '1'),
(412, 102, '_edit_lock', '1432127543:1'),
(413, 102, '_wp_page_template', 'sectors-page.php'),
(432, 106, '_menu_item_type', 'post_type'),
(433, 106, '_menu_item_menu_item_parent', '0'),
(434, 106, '_menu_item_object_id', '74'),
(435, 106, '_menu_item_object', 'page'),
(436, 106, '_menu_item_target', ''),
(437, 106, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(438, 106, '_menu_item_xfn', ''),
(439, 106, '_menu_item_url', ''),
(440, 106, '_menu_item_orphaned', '1431594168'),
(441, 102, '_thumbnail_id', '67'),
(443, 74, '_thumbnail_id', '67'),
(444, 107, '_menu_item_type', 'post_type'),
(445, 107, '_menu_item_menu_item_parent', '0'),
(446, 107, '_menu_item_object_id', '102'),
(447, 107, '_menu_item_object', 'page'),
(448, 107, '_menu_item_target', ''),
(449, 107, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(450, 107, '_menu_item_xfn', ''),
(451, 107, '_menu_item_url', ''),
(462, 109, '_menu_item_type', 'post_type'),
(463, 109, '_menu_item_menu_item_parent', '0'),
(464, 109, '_menu_item_object_id', '74'),
(465, 109, '_menu_item_object', 'page'),
(466, 109, '_menu_item_target', ''),
(467, 109, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(468, 109, '_menu_item_xfn', ''),
(469, 109, '_menu_item_url', ''),
(471, 74, '_why_title', ''),
(472, 74, '_why_text', ''),
(473, 74, '_concept_title', ''),
(474, 74, '_concept_text', ''),
(475, 74, '_sales_title', ''),
(476, 74, '_sales_text', ''),
(477, 74, '_terrain_title', ''),
(478, 74, '_terrain_text', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(479, 119, '_menu_item_type', 'post_type'),
(480, 119, '_menu_item_menu_item_parent', '0'),
(481, 119, '_menu_item_object_id', '74'),
(482, 119, '_menu_item_object', 'page'),
(483, 119, '_menu_item_target', ''),
(484, 119, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(485, 119, '_menu_item_xfn', ''),
(486, 119, '_menu_item_url', ''),
(488, 121, '_edit_last', '1'),
(489, 121, '_edit_lock', '1432127548:1'),
(490, 121, '_thumbnail_id', '67'),
(491, 121, '_wp_page_template', 'sectors-page.php'),
(492, 123, '_menu_item_type', 'post_type'),
(493, 123, '_menu_item_menu_item_parent', '0'),
(494, 123, '_menu_item_object_id', '121'),
(495, 123, '_menu_item_object', 'page'),
(496, 123, '_menu_item_target', ''),
(497, 123, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(498, 123, '_menu_item_xfn', ''),
(499, 123, '_menu_item_url', ''),
(505, 129, '_edit_last', '1'),
(506, 129, '_edit_lock', '1431602051:1'),
(508, 131, '_edit_last', '1'),
(509, 131, '_edit_lock', '1431601727:1'),
(511, 133, '_edit_last', '1'),
(512, 133, '_edit_lock', '1431609983:1'),
(514, 135, '_menu_item_type', 'taxonomy'),
(515, 135, '_menu_item_menu_item_parent', '0'),
(516, 135, '_menu_item_object_id', '1'),
(517, 135, '_menu_item_object', 'category'),
(518, 135, '_menu_item_target', ''),
(519, 135, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(520, 135, '_menu_item_xfn', ''),
(521, 135, '_menu_item_url', ''),
(523, 129, '_thumbnail_id', '17'),
(525, 133, '_thumbnail_id', '16'),
(526, 136, '_form', '<p>Name (required)[text* your-name]</p>\n<p>Email (required)[email* your-email]</p>\n<p>Comments[textarea your-message]</p>\n<p>[submit "Submit"]</p>'),
(527, 136, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:30:"[your-name] <wordpress@3d.loc>";s:4:"body";s:193:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on 3dConstruct (http://www.passionforclients.com/3dconstruct)";s:9:"recipient";s:15:"d@construct.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(528, 136, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:30:"3dConstruct <wordpress@3d.loc>";s:4:"body";s:135:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on 3dConstruct (http://www.passionforclients.com/3dconstruct)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:25:"Reply-To: d@construct.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(529, 136, '_messages', 'a:23:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:34:"Please fill in the required field.";s:16:"invalid_too_long";s:23:"This input is too long.";s:17:"invalid_too_short";s:24:"This input is too short.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:14:"invalid_number";s:28:"Number format seems invalid.";s:16:"number_too_small";s:25:"This number is too small.";s:16:"number_too_large";s:25:"This number is too large.";s:13:"invalid_email";s:28:"Email address seems invalid.";s:11:"invalid_url";s:18:"URL seems invalid.";s:11:"invalid_tel";s:31:"Telephone number seems invalid.";s:23:"quiz_answer_not_correct";s:27:"Your answer is not correct.";s:12:"invalid_date";s:26:"Date format seems invalid.";s:14:"date_too_early";s:23:"This date is too early.";s:13:"date_too_late";s:22:"This date is too late.";s:13:"upload_failed";s:22:"Failed to upload file.";s:24:"upload_file_type_invalid";s:30:"This file type is not allowed.";s:21:"upload_file_too_large";s:23:"This file is too large.";s:23:"upload_failed_php_error";s:38:"Failed to upload file. Error occurred.";}'),
(530, 136, '_additional_settings', ''),
(531, 136, '_locale', 'en_US'),
(532, 58, '_map_value', 'Wellbrook House Railway Road Gorey Co. Wexford Ireland'),
(533, 58, '_form_value', '[contact-form-7 id="136" title="Contact form 1"]'),
(534, 141, '_edit_last', '1'),
(535, 141, '_edit_lock', '1431680483:1'),
(536, 141, '_thumbnail_id', '20'),
(537, 142, '_edit_last', '1'),
(538, 142, '_edit_lock', '1431680497:1'),
(539, 142, '_thumbnail_id', '11'),
(540, 143, '_edit_last', '1'),
(541, 143, '_edit_lock', '1431680510:1'),
(542, 143, '_thumbnail_id', '12'),
(543, 144, '_edit_last', '1'),
(544, 144, '_edit_lock', '1431680551:1'),
(545, 144, '_thumbnail_id', '9'),
(546, 145, '_edit_last', '1'),
(547, 145, '_edit_lock', '1431680584:1'),
(548, 145, '_thumbnail_id', '11'),
(549, 146, '_edit_last', '1'),
(550, 146, '_edit_lock', '1431680601:1'),
(551, 146, '_thumbnail_id', '9'),
(552, 147, '_edit_last', '1'),
(553, 147, '_edit_lock', '1431680617:1'),
(554, 147, '_thumbnail_id', '13'),
(555, 148, '_edit_last', '1'),
(556, 148, '_edit_lock', '1431680639:1'),
(557, 148, '_thumbnail_id', '12'),
(558, 149, '_edit_last', '1'),
(559, 149, '_edit_lock', '1431680659:1'),
(560, 149, '_thumbnail_id', '16'),
(561, 150, '_edit_last', '1'),
(562, 150, '_edit_lock', '1431680672:1'),
(563, 150, '_thumbnail_id', '11'),
(564, 151, '_edit_last', '1'),
(565, 151, '_edit_lock', '1431680684:1'),
(566, 151, '_thumbnail_id', '9'),
(567, 152, '_edit_last', '1'),
(568, 152, '_edit_lock', '1431680700:1'),
(569, 152, '_thumbnail_id', '13'),
(572, 153, '_edit_last', '1'),
(573, 153, '_edit_lock', '1432127538:1'),
(574, 153, '_thumbnail_id', '67'),
(575, 153, '_wp_page_template', 'gallery-page.php'),
(576, 155, '_edit_last', '1'),
(577, 155, '_edit_lock', '1432127533:1'),
(578, 155, '_thumbnail_id', '67'),
(579, 155, '_wp_page_template', 'gallery-page.php'),
(580, 157, '_edit_last', '1'),
(581, 157, '_edit_lock', '1432127528:1'),
(582, 157, '_thumbnail_id', '67'),
(583, 157, '_wp_page_template', 'gallery-page.php'),
(584, 159, '_menu_item_type', 'post_type'),
(585, 159, '_menu_item_menu_item_parent', '0'),
(586, 159, '_menu_item_object_id', '157'),
(587, 159, '_menu_item_object', 'page'),
(588, 159, '_menu_item_target', ''),
(589, 159, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(590, 159, '_menu_item_xfn', ''),
(591, 159, '_menu_item_url', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(593, 160, '_menu_item_type', 'post_type'),
(594, 160, '_menu_item_menu_item_parent', '0'),
(595, 160, '_menu_item_object_id', '155'),
(596, 160, '_menu_item_object', 'page'),
(597, 160, '_menu_item_target', ''),
(598, 160, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(599, 160, '_menu_item_xfn', ''),
(600, 160, '_menu_item_url', ''),
(602, 161, '_menu_item_type', 'post_type'),
(603, 161, '_menu_item_menu_item_parent', '0'),
(604, 161, '_menu_item_object_id', '153'),
(605, 161, '_menu_item_object', 'page'),
(606, 161, '_menu_item_target', ''),
(607, 161, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(608, 161, '_menu_item_xfn', ''),
(609, 161, '_menu_item_url', ''),
(620, 153, '_gallery_value', 'Gallery_Concept'),
(621, 155, '_gallery_value', 'Gallery_Sales'),
(622, 157, '_gallery_value', 'Gallery_Planners'),
(623, 163, '_menu_item_type', 'post_type'),
(624, 163, '_menu_item_menu_item_parent', '0'),
(625, 163, '_menu_item_object_id', '153'),
(626, 163, '_menu_item_object', 'page'),
(627, 163, '_menu_item_target', ''),
(628, 163, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(629, 163, '_menu_item_xfn', ''),
(630, 163, '_menu_item_url', ''),
(632, 164, '_menu_item_type', 'post_type'),
(633, 164, '_menu_item_menu_item_parent', '0'),
(634, 164, '_menu_item_object_id', '153'),
(635, 164, '_menu_item_object', 'page'),
(636, 164, '_menu_item_target', ''),
(637, 164, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(638, 164, '_menu_item_xfn', ''),
(639, 164, '_menu_item_url', ''),
(644, 169, '_menu_item_type', 'post_type'),
(645, 169, '_menu_item_menu_item_parent', '0'),
(646, 169, '_menu_item_object_id', '121'),
(647, 169, '_menu_item_object', 'page'),
(648, 169, '_menu_item_target', ''),
(649, 169, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(650, 169, '_menu_item_xfn', ''),
(651, 169, '_menu_item_url', ''),
(653, 170, '_menu_item_type', 'post_type'),
(654, 170, '_menu_item_menu_item_parent', '0'),
(655, 170, '_menu_item_object_id', '102'),
(656, 170, '_menu_item_object', 'page'),
(657, 170, '_menu_item_target', ''),
(658, 170, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(659, 170, '_menu_item_xfn', ''),
(660, 170, '_menu_item_url', ''),
(662, 50, '_services_value', 'concept'),
(663, 172, '_menu_item_type', 'post_type'),
(664, 172, '_menu_item_menu_item_parent', '0'),
(665, 172, '_menu_item_object_id', '50'),
(666, 172, '_menu_item_object', 'page'),
(667, 172, '_menu_item_target', ''),
(668, 172, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(669, 172, '_menu_item_xfn', ''),
(670, 172, '_menu_item_url', ''),
(672, 173, '_edit_last', '1'),
(673, 173, '_edit_lock', '1432127504:1'),
(674, 173, '_wp_page_template', 'services-page.php'),
(675, 173, '_services_value', 'sales'),
(676, 175, '_edit_last', '1'),
(677, 175, '_edit_lock', '1432127514:1'),
(678, 175, '_wp_page_template', 'services-page.php'),
(679, 175, '_services_value', 'terrain'),
(680, 177, '_menu_item_type', 'post_type'),
(681, 177, '_menu_item_menu_item_parent', '0'),
(682, 177, '_menu_item_object_id', '175'),
(683, 177, '_menu_item_object', 'page'),
(684, 177, '_menu_item_target', ''),
(685, 177, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(686, 177, '_menu_item_xfn', ''),
(687, 177, '_menu_item_url', ''),
(689, 178, '_menu_item_type', 'post_type'),
(690, 178, '_menu_item_menu_item_parent', '0'),
(691, 178, '_menu_item_object_id', '173'),
(692, 178, '_menu_item_object', 'page'),
(693, 178, '_menu_item_target', ''),
(694, 178, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(695, 178, '_menu_item_xfn', ''),
(696, 178, '_menu_item_url', '') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(6, 1, '2015-05-11 15:11:04', '2015-05-11 12:11:04', '', 'Home', '', 'publish', 'closed', 'open', '', 'home', '', '', '2015-05-14 10:28:07', '2015-05-14 07:28:07', '', 0, 'http://www.passionforclients.com/3dconstruct/?page_id=6', 1, 'page', '', 0),
(7, 1, '2015-05-11 15:11:04', '2015-05-11 12:11:04', '', 'Home', '', 'inherit', 'closed', 'open', '', '6-revision-v1', '', '', '2015-05-11 15:11:04', '2015-05-11 12:11:04', '', 6, 'http://www.passionforclients.com/3dconstruct/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2015-05-11 15:48:17', '2015-05-11 12:48:17', '', '3D_1', '', 'inherit', 'closed', 'open', '', '3d_1', '', '', '2015-05-11 15:48:17', '2015-05-11 12:48:17', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/3D_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2015-05-11 15:48:18', '2015-05-11 12:48:18', '', '3D_2', '', 'inherit', 'closed', 'open', '', '3d_2', '', '', '2015-05-11 15:48:18', '2015-05-11 12:48:18', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/3D_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2015-05-11 15:48:19', '2015-05-11 12:48:19', 'About page background', 'About page background', '', 'inherit', 'closed', 'open', '', '3d_3', '', '', '2015-05-12 08:55:40', '2015-05-12 05:55:40', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/3D_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2015-05-11 15:48:20', '2015-05-11 12:48:20', '', '3D_4', '', 'inherit', 'closed', 'open', '', '3d_4', '', '', '2015-05-11 15:48:20', '2015-05-11 12:48:20', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/3D_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2015-05-11 15:48:20', '2015-05-11 12:48:20', '', '3D_5', '', 'inherit', 'closed', 'open', '', '3d_5', '', '', '2015-05-11 15:48:20', '2015-05-11 12:48:20', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/3D_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2015-05-11 15:48:20', '2015-05-11 12:48:20', 'Services page background', 'Services page background', '', 'inherit', 'closed', 'open', '', '3d_6', '', '', '2015-05-12 10:49:26', '2015-05-12 07:49:26', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/3D_6.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2015-05-11 15:48:21', '2015-05-11 12:48:21', 'Home page background', 'Home page background', '', 'inherit', 'closed', 'open', '', '3d_7', '', '', '2015-05-12 08:55:02', '2015-05-12 05:55:02', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/3D_7.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2015-05-11 15:48:22', '2015-05-11 12:48:22', 'Services page background', 'Services page background', '', 'inherit', 'closed', 'open', '', '3d_8', '', '', '2015-05-12 08:56:30', '2015-05-12 05:56:30', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/3D_8.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2015-05-11 15:48:22', '2015-05-11 12:48:22', '', '3D_9', '', 'inherit', 'closed', 'open', '', '3d_9', '', '', '2015-05-11 15:48:22', '2015-05-11 12:48:22', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/3D_9.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2015-05-11 15:48:22', '2015-05-11 12:48:22', '', '3D_10', '', 'inherit', 'closed', 'open', '', '3d_10', '', '', '2015-05-11 15:48:22', '2015-05-11 12:48:22', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/3D_10.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2015-05-11 15:48:23', '2015-05-11 12:48:23', '', '3D_11', '', 'inherit', 'closed', 'open', '', '3d_11', '', '', '2015-05-11 15:48:23', '2015-05-11 12:48:23', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/3D_11.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2015-05-11 15:48:23', '2015-05-11 12:48:23', 'Services page background', 'Services page background', '', 'inherit', 'closed', 'open', '', '3d_12', '', '', '2015-05-12 08:56:08', '2015-05-12 05:56:08', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/3D_12.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2015-05-11 15:48:24', '2015-05-11 12:48:24', 'Services page background', 'Services page background', '', 'inherit', 'closed', 'open', '', '3d_13', '', '', '2015-05-12 08:56:48', '2015-05-12 05:56:48', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/3D_13.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2015-05-11 15:48:24', '2015-05-11 12:48:24', '', '3D_14', '', 'inherit', 'closed', 'open', '', '3d_14', '', '', '2015-05-11 15:48:24', '2015-05-11 12:48:24', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/3D_14.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2015-05-11 15:48:24', '2015-05-11 12:48:24', '', '3D_BASIC', '', 'inherit', 'closed', 'open', '', '3d_basic', '', '', '2015-05-11 15:48:24', '2015-05-11 12:48:24', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/3D_BASIC.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2015-05-11 15:48:24', '2015-05-11 12:48:24', '', '3D CONSTRUCT_LOGO', '', 'inherit', 'closed', 'open', '', '3d-construct_logo', '', '', '2015-05-11 15:48:24', '2015-05-11 12:48:24', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/3D-CONSTRUCT_LOGO.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2015-05-11 15:48:26', '2015-05-11 12:48:26', '', '3d_PHOTO_1', '', 'inherit', 'closed', 'open', '', '3d_photo_1', '', '', '2015-05-11 15:48:26', '2015-05-11 12:48:26', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/3d_PHOTO_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2015-05-11 15:48:26', '2015-05-11 12:48:26', '', 'ARCHITECTS_ICON', '', 'inherit', 'closed', 'open', '', 'architects_icon', '', '', '2015-05-11 15:48:26', '2015-05-11 12:48:26', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/ARCHITECTS_ICON.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2015-05-11 15:48:27', '2015-05-11 12:48:27', '', 'FAQs_ICON', '', 'inherit', 'closed', 'open', '', 'faqs_icon', '', '', '2015-05-11 15:48:27', '2015-05-11 12:48:27', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/FAQs_ICON.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2015-05-11 15:48:27', '2015-05-11 12:48:27', '', 'GALLERY_ICON', '', 'inherit', 'closed', 'open', '', 'gallery_icon', '', '', '2015-05-11 15:48:27', '2015-05-11 12:48:27', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/GALLERY_ICON.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2015-05-11 15:48:27', '2015-05-11 12:48:27', '', 'Inset_1', '', 'inherit', 'closed', 'open', '', 'inset_1', '', '', '2015-05-11 15:48:27', '2015-05-11 12:48:27', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/Inset_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2015-05-11 15:48:27', '2015-05-11 12:48:27', '', 'Inset_2', '', 'inherit', 'closed', 'open', '', 'inset_2', '', '', '2015-05-11 15:48:27', '2015-05-11 12:48:27', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/Inset_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2015-05-11 15:48:27', '2015-05-11 12:48:27', '', 'Inset_3', '', 'inherit', 'closed', 'open', '', 'inset_3', '', '', '2015-05-11 15:48:27', '2015-05-11 12:48:27', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/Inset_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2015-05-11 15:48:28', '2015-05-11 12:48:28', '', 'Inset_4', '', 'inherit', 'closed', 'open', '', 'inset_4', '', '', '2015-05-11 15:48:28', '2015-05-11 12:48:28', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/Inset_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2015-05-11 15:48:28', '2015-05-11 12:48:28', '', 'Inset_5', '', 'inherit', 'closed', 'open', '', 'inset_5', '', '', '2015-05-11 15:48:28', '2015-05-11 12:48:28', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/Inset_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2015-05-11 15:48:28', '2015-05-11 12:48:28', '', 'MUG_SHOT', '', 'inherit', 'closed', 'open', '', 'mug_shot', '', '', '2015-05-11 15:48:28', '2015-05-11 12:48:28', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/MUG_SHOT.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2015-05-11 15:48:28', '2015-05-11 12:48:28', '', 'ONE', '', 'inherit', 'closed', 'open', '', 'one', '', '', '2015-05-11 15:48:28', '2015-05-11 12:48:28', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/ONE.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2015-05-11 15:48:28', '2015-05-11 12:48:28', '', 'ONE', '', 'inherit', 'closed', 'open', '', 'one-2', '', '', '2015-05-11 15:48:28', '2015-05-11 12:48:28', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/ONE.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2015-05-11 15:48:28', '2015-05-11 12:48:28', '', 'SELF-BUILDS-ICON', '', 'inherit', 'closed', 'open', '', 'self-builds-icon', '', '', '2015-05-11 15:48:28', '2015-05-11 12:48:28', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/SELF-BUILDS-ICON.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2015-05-11 15:48:28', '2015-05-11 12:48:28', '', 'Services-Icon', '', 'inherit', 'closed', 'open', '', 'services-icon', '', '', '2015-05-11 15:48:28', '2015-05-11 12:48:28', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/Services-Icon.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2015-05-11 15:48:29', '2015-05-11 12:48:29', '', 'STUDENTS-ICON', '', 'inherit', 'closed', 'open', '', 'students-icon', '', '', '2015-05-11 15:48:29', '2015-05-11 12:48:29', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/STUDENTS-ICON.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2015-05-11 15:48:29', '2015-05-11 12:48:29', '', 'THREE', '', 'inherit', 'closed', 'open', '', 'three', '', '', '2015-05-11 15:48:29', '2015-05-11 12:48:29', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/THREE.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2015-05-11 15:48:29', '2015-05-11 12:48:29', '', 'TWO', '', 'inherit', 'closed', 'open', '', 'two', '', '', '2015-05-11 15:48:29', '2015-05-11 12:48:29', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/TWO.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2015-05-11 15:48:29', '2015-05-11 12:48:29', '', 'Welcome_woman', '', 'inherit', 'closed', 'open', '', 'welcome_woman', '', '', '2015-05-11 15:48:29', '2015-05-11 12:48:29', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/Welcome_woman.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2015-05-11 17:05:16', '2015-05-11 14:05:16', ' ', '', 'Home', 'publish', 'closed', 'open', '', '42', '', '', '2015-05-20 16:10:55', '2015-05-20 13:10:55', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2015-05-11 17:05:00', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'open', '', '', '', '', '2015-05-11 17:05:00', '0000-00-00 00:00:00', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=43', 1, 'nav_menu_item', '', 0),
(48, 1, '2015-05-12 08:41:51', '2015-05-12 05:41:51', '', 'About', '', 'publish', 'closed', 'open', '', 'about', '', '', '2015-05-14 10:28:13', '2015-05-14 07:28:13', '', 0, 'http://www.passionforclients.com/3dconstruct/?page_id=48', 2, 'page', '', 0),
(49, 1, '2015-05-12 08:41:51', '2015-05-12 05:41:51', '', 'About', '', 'inherit', 'closed', 'open', '', '48-revision-v1', '', '', '2015-05-12 08:41:51', '2015-05-12 05:41:51', '', 48, 'http://www.passionforclients.com/3dconstruct/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2015-05-12 08:42:12', '2015-05-12 05:42:12', 'Whether it’s a sales pitch or client meeting, a single building or city block, a 3D printed concept model is a fast and affordable way to visualise your design. Normally single colour and made of plastic resin, concept models are fast becoming the norm in architectural, engineering and construction businesses.\r\n3D printing speeds up the design process by reducing the number of steps of involved. Clients can give you better feedback, and quicker. It also leads to better outcomes because any potential issues are identified and overcome sooner.\r\nConcept models combine the precision of computer simulations with the tangibility of 3D printing. It only takes a couple of days to make, and once complete, we will package it securely and courier it to you.', 'Concept models', '', 'publish', 'closed', 'closed', '', 'concept-models', '', '', '2015-05-20 16:13:59', '2015-05-20 13:13:59', '', 0, 'http://www.passionforclients.com/3dconstruct/?page_id=50', 3, 'page', '', 0),
(51, 1, '2015-05-12 08:42:12', '2015-05-12 05:42:12', '', 'Services', '', 'inherit', 'closed', 'open', '', '50-revision-v1', '', '', '2015-05-12 08:42:12', '2015-05-12 05:42:12', '', 50, 'http://www.passionforclients.com/3dconstruct/50-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2015-05-12 08:45:17', '2015-05-12 05:45:17', '<strong>1. What is 3D printing?</strong>\r\n\r\n3D printing is a process of making three dimensional solid objects from a digital file. The object is created by laying down successive layers of material until the entire object is created. Each of these layers can be seen as a thinly sliced horizontal cross-section of the eventual object. 3D printing can be used for all sorts of objects. It is especially useful for product prototypes and building models such as houses.\r\n\r\n<strong>2. How does the process work?</strong>\r\n\r\nIt all starts with making a virtual design of the object you want to create. This is normally done using a 3D modelling programme in CAD. The software slices the eventual model into hundreds and thousands of horizontal layers. When the file is prepared, it is uploaded to the 3D printer which creates the object layer by layer. The 3D printer reads every slice (or 2D image) and proceeds to blend the object so there’s no sign of the layering visible, resulting in one three-dimensional object.\r\n\r\n<strong>3. What can be 3D printed?</strong>\r\n\r\nAnything that you can draw can be 3D printed. We recently 3D modelled and printed a college project from a sketch on the back of a beermat! Our printer can print up to 254mm x 381mm x 203mm. Once you send us your drawing, we will suggest a suitable scale for your model and discuss whatever else you require.\r\n\r\n<strong>4. My design is a 2D drawing, can this be printed?</strong>\r\n\r\nYes, most of the drawings we receive are 2D CAD files. We will provide a quote to draw the building in 3D from your 2D files. This then allows the 3D print to commence. We will email you back the 3D model files which are yours to own along with the model.\r\n\r\n<strong>5. What is the despatch time for models?</strong>\r\n\r\nIt normally takes 3 – 5 working days, depending on the size of the model, the amount of drawing required, the location for postage etc.\r\n\r\n<strong>6. How much will it cost to get my 3D model printed?</strong>\r\n\r\nIt depends on the type of model you want, and the size. It also depends on how quickly you need it and how much preparation is required (i.e. if you need us to convert the files from 2D to 3D or print direct). If you send us what you have, we can give you a price.\r\n\r\n<strong>7. What size will my model be?</strong>\r\nThe printer can print up to 254mm x 381mm x 203mm in one go. We can stick these together to make larger models if required. When you contact 3D Construct, we will suggest a suitable scale for your model to be printed.\r\n\r\n<strong>8. What type of files do you accept on your computers?</strong>\r\n\r\nWe normally receive file types such as Google Sketchup, CAD, Revit etc. but we can amend any file type to 3D print. We recently 3D modelled and printed a college project from a sketch on the back of a beermat!', 'Faqs', '', 'publish', 'closed', 'closed', '', 'faqs', '', '', '2015-05-20 16:11:53', '2015-05-20 13:11:53', '', 0, 'http://www.passionforclients.com/3dconstruct/?page_id=56', 12, 'page', '', 0),
(57, 1, '2015-05-12 08:45:17', '2015-05-12 05:45:17', '', 'Faqs', '', 'inherit', 'closed', 'open', '', '56-revision-v1', '', '', '2015-05-12 08:45:17', '2015-05-12 05:45:17', '', 56, 'http://www.passionforclients.com/3dconstruct/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2015-05-12 08:45:45', '2015-05-12 05:45:45', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2015-05-20 16:11:47', '2015-05-20 13:11:47', '', 0, 'http://www.passionforclients.com/3dconstruct/?page_id=58', 13, 'page', '', 0),
(59, 1, '2015-05-12 08:45:45', '2015-05-12 05:45:45', '', 'Contact', '', 'inherit', 'closed', 'open', '', '58-revision-v1', '', '', '2015-05-12 08:45:45', '2015-05-12 05:45:45', '', 58, 'http://www.passionforclients.com/3dconstruct/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2015-05-12 08:46:25', '2015-05-12 05:46:25', ' ', '', 'Contact', 'publish', 'closed', 'open', '', '60', '', '', '2015-05-20 16:10:55', '2015-05-20 13:10:55', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=60', 8, 'nav_menu_item', '', 0),
(61, 1, '2015-05-12 08:46:25', '2015-05-12 05:46:25', '', 'FAQs', 'FAQs', 'publish', 'closed', 'open', '', '61', '', '', '2015-05-20 16:10:55', '2015-05-20 13:10:55', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=61', 6, 'nav_menu_item', '', 0),
(64, 1, '2015-05-12 08:46:24', '2015-05-12 05:46:24', '', 'Services', 'Services', 'publish', 'closed', 'open', '', '64', '', '', '2015-05-20 16:10:55', '2015-05-20 13:10:55', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=64', 3, 'nav_menu_item', '', 0),
(65, 1, '2015-05-12 08:46:24', '2015-05-12 05:46:24', ' ', '', 'About', 'publish', 'closed', 'open', '', '65', '', '', '2015-05-20 16:10:55', '2015-05-20 13:10:55', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=65', 2, 'nav_menu_item', '', 0),
(66, 1, '2015-05-13 08:32:11', '2015-05-13 05:32:11', '', 'Blog', 'Blog', 'publish', 'closed', 'open', '', 'blog', '', '', '2015-05-20 16:10:55', '2015-05-20 13:10:55', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=66', 7, 'nav_menu_item', '', 0),
(67, 1, '2015-05-13 09:17:15', '2015-05-13 06:17:15', 'Sectors page background', 'Sectors page background', '', 'inherit', 'closed', 'open', '', '3d_15', '', '', '2015-05-13 09:27:42', '2015-05-13 06:27:42', '', 0, 'http://www.passionforclients.com/3dconstruct/wp-content/uploads/3D_15.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2015-05-13 10:27:49', '2015-05-13 07:27:49', '', 'FAQs', 'FAQs', 'publish', 'closed', 'open', '', '69', '', '', '2015-05-20 16:09:25', '2015-05-20 13:09:25', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=69', 3, 'nav_menu_item', '', 0),
(72, 1, '2015-05-13 10:27:49', '2015-05-13 07:27:49', '', 'Services', 'Services', 'publish', 'closed', 'open', '', '72', '', '', '2015-05-20 16:09:25', '2015-05-20 13:09:25', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=72', 1, 'nav_menu_item', '', 0),
(74, 1, '2015-05-13 11:36:00', '2015-05-13 08:36:00', '<strong>Build detailed, durable models with 3D printing</strong>\r\n\r\nYou can show a client a 2D drawing, even a 3D drawing, but for a client to really appreciate your design, you need to show them a 3D model. Seeing is believing – people need something they can touch and feel, something that makes it real for them.\r\n\r\nWe help architectural firms by printing 3D models of their designs, directly from CAD data (or other formats). They can be used at any stage of the project, especially at the beginning when you’re trying to sell a new concept or convey a particular idea.\r\n\r\n<strong>Advantages of 3D architectural models</strong>\r\n<ul>\r\n	<li>They help your clients to visualise your concept</li>\r\n	<li>They allow you to discuss ideas and show alternative layouts</li>\r\n	<li>They lead to better decisions – fewer alterations, faster approvals</li>\r\n	<li>They are cheaper, faster and stronger than traditional models</li>\r\n</ul>\r\n<strong>What our clients say:</strong>\r\n\r\nI was struggling to sell a particular concept to a client recently when I realised it wasn’t my idea they disliked, they just couldn’t make the mental leap from my drawings to the real thing, they couldn’t imagine what the end product was going to look like. That’s when I called 3D Construct. Within 3 days I was back in front of my client with a 3D architectural model of their new house. In my 20 years of practice, I’ve never witnessed a more enthusiastic response. They loved it, and after 3 weeks trying to convince them with my drawings, it took just 3 minutes with your model. Thanks for a great service. I’ll be coming back for more.', 'Architects', '', 'publish', 'closed', 'closed', '', 'architects', '', '', '2015-05-20 16:12:32', '2015-05-20 13:12:32', '', 0, 'http://www.passionforclients.com/3dconstruct/?page_id=74', 6, 'page', '', 0),
(75, 1, '2015-05-13 11:36:00', '2015-05-13 08:36:00', '', 'Architects', '', 'inherit', 'closed', 'open', '', '74-revision-v1', '', '', '2015-05-13 11:36:00', '2015-05-13 08:36:00', '', 74, 'http://www.passionforclients.com/3dconstruct/74-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2015-05-13 11:37:09', '2015-05-13 08:37:09', ' ', '', 'Architects', 'publish', 'closed', 'open', '', '82', '', '', '2015-05-20 16:09:25', '2015-05-20 13:09:25', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=82', 4, 'nav_menu_item', '', 0),
(84, 1, '2015-05-13 16:49:25', '2015-05-13 13:49:25', 'Diarmuid’s background is in structural engineering. He established Diarmuid O’Sullivan Consulting Engineers in 2009 which has since grown to become a successful professional practice. Based in Gorey, Co. Wexford, the firm provides\r\na wide range of engineering and design solutions to small and medium residential and commercial projects.', 'Diarmuid O’Sullivan', '', 'publish', 'closed', 'closed', '', 'diarmuid-osullivan', '', '', '2015-05-14 09:47:42', '2015-05-14 06:47:42', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=team&#038;p=84', 1, 'team', '', 0),
(85, 1, '2015-05-13 16:50:27', '2015-05-13 13:50:27', 'Darren graduated from Carlow IT with a Bachelor of Science (Honours) in Construction in Sustainable Architectural Technology. Before joining 3D Construct, Darren worked in a busy consulting architects’ office in his home town of Carnew, Co. Wicklow. He brings strong 3D drawing technical experience\r\nfrom his architectural background.', 'Darren Cogley', '', 'publish', 'closed', 'closed', '', 'darren-cogley', '', '', '2015-05-14 09:47:54', '2015-05-14 06:47:54', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=team&#038;p=85', 2, 'team', '', 0),
(86, 1, '2015-05-13 16:51:06', '2015-05-13 13:51:06', 'Ian joined 3D Construct having practised for a number of years with a leading Wexford based conservation architect. He holds a Bachelor of Science in\r\nArchitectural Technology from Waterford Institute of Technology.', 'Ian Davin', '', 'publish', 'closed', 'closed', '', 'ian-davin', '', '', '2015-05-14 09:47:59', '2015-05-14 06:47:59', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=team&#038;p=86', 3, 'team', '', 0),
(87, 1, '2015-05-14 09:53:27', '2015-05-14 06:53:27', 'Whether it’s a sales pitch or client meeting, a single building or city block, a 3D printed concept model is a fast and affordable way to visualise your design.', 'Concept models', '', 'publish', 'closed', 'closed', '', 'concept-models', '', '', '2015-05-14 09:53:31', '2015-05-14 06:53:31', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=model&#038;p=87', 1, 'model', '', 0),
(88, 1, '2015-05-14 09:54:24', '2015-05-14 06:54:24', 'A sales model is a full colour, high resolution architectural model. It is a photo realistic scale representation of your design, made to look as much like the real thing as you can get.', 'Sales models', '', 'publish', 'closed', 'closed', '', 'sales-models', '', '', '2015-05-14 09:54:24', '2015-05-14 06:54:24', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=model&#038;p=88', 2, 'model', '', 0),
(89, 1, '2015-05-14 09:55:06', '2015-05-14 06:55:06', 'A terrain model is a great way of depicting the topography or landscape of an area which is useful when visualising a large scale project such as a major piece of infrastructure.', 'Terrain models', '', 'publish', 'closed', 'closed', '', 'terrain-models', '', '', '2015-05-14 09:55:06', '2015-05-14 06:55:06', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=model&#038;p=89', 3, 'model', '', 0),
(90, 1, '2015-05-14 10:15:51', '2015-05-14 07:15:51', '', 'You up load it', '', 'publish', 'closed', 'closed', '', 'you-up-load-it', '', '', '2015-05-14 10:15:51', '2015-05-14 07:15:51', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=steps&#038;p=90', 1, 'steps', '', 0),
(91, 1, '2015-05-14 10:16:10', '2015-05-14 07:16:10', '', 'We 3D print it', '', 'publish', 'closed', 'closed', '', 'we-3d-print-it', '', '', '2015-05-14 10:16:10', '2015-05-14 07:16:10', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=steps&#038;p=91', 2, 'steps', '', 0),
(92, 1, '2015-05-14 10:16:25', '2015-05-14 07:16:25', '', 'You receive it', '', 'publish', 'closed', 'closed', '', 'you-receive-it', '', '', '2015-05-14 10:16:25', '2015-05-14 07:16:25', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=steps&#038;p=92', 3, 'steps', '', 0),
(93, 1, '2015-05-14 11:23:55', '2015-05-14 08:23:55', '', '1', '', 'publish', 'closed', 'closed', '', '1', '', '', '2015-05-14 11:23:55', '2015-05-14 08:23:55', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=concept&#038;p=93', 1, 'concept', '', 0),
(94, 1, '2015-05-14 11:24:04', '2015-05-14 08:24:04', '', '2', '', 'publish', 'closed', 'closed', '', '2', '', '', '2015-05-14 11:24:04', '2015-05-14 08:24:04', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=concept&#038;p=94', 2, 'concept', '', 0),
(95, 1, '2015-05-14 11:24:12', '2015-05-14 08:24:12', '', '3', '', 'publish', 'closed', 'closed', '', '3', '', '', '2015-05-14 11:32:09', '2015-05-14 08:32:09', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=concept&#038;p=95', 3, 'concept', '', 0),
(96, 1, '2015-05-14 11:24:28', '2015-05-14 08:24:28', '', '1', '', 'publish', 'closed', 'closed', '', '1', '', '', '2015-05-14 11:24:28', '2015-05-14 08:24:28', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=sales&#038;p=96', 1, 'sales', '', 0),
(97, 1, '2015-05-14 11:24:36', '2015-05-14 08:24:36', '', '2', '', 'publish', 'closed', 'closed', '', '2', '', '', '2015-05-14 11:24:36', '2015-05-14 08:24:36', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=sales&#038;p=97', 2, 'sales', '', 0),
(98, 1, '2015-05-14 11:24:46', '2015-05-14 08:24:46', '', '3', '', 'publish', 'closed', 'closed', '', '3', '', '', '2015-05-14 11:32:25', '2015-05-14 08:32:25', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=sales&#038;p=98', 3, 'sales', '', 0),
(99, 1, '2015-05-14 11:25:00', '2015-05-14 08:25:00', '', '1', '', 'publish', 'closed', 'closed', '', '1', '', '', '2015-05-14 11:32:40', '2015-05-14 08:32:40', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=terrain&#038;p=99', 1, 'terrain', '', 0),
(100, 1, '2015-05-14 11:25:22', '2015-05-14 08:25:22', '', '2', '', 'publish', 'closed', 'closed', '', '2', '', '', '2015-05-14 11:25:22', '2015-05-14 08:25:22', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=terrain&#038;p=100', 2, 'terrain', '', 0),
(101, 1, '2015-05-14 11:25:39', '2015-05-14 08:25:39', '', '3', '', 'publish', 'closed', 'closed', '', '3', '', '', '2015-05-14 11:25:39', '2015-05-14 08:25:39', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=terrain&#038;p=101', 3, 'terrain', '', 0),
(102, 1, '2015-05-14 12:02:17', '2015-05-14 09:02:17', '<strong>Fast &amp; affordable 3D printed solutions</strong>\r\n\r\nIf you’re a third level student in architecture, engineering or construction, there’s a good chance that you’ll need a 3D printed model for your major project. If so, we can help bring your ideas to life and impress your lecturers and fellow students. Not only do they add an extra dimension to your project but they also add a certain wow factor.\r\n\r\nOur 3D printed models are excellent quality and very affordable. They can be single or full colour and range from something as simple as a garden shed to something as complex as a football stadium, the possibilities are endless. It only takes a couple of days to make, and once complete, we will package it securely and courier it to you.\r\n\r\n<strong>What our clients say:</strong>\r\n\r\nThe model arrived this morning and it looks fantastic. I can’t wait to show it to my lecturer and classmates. Thank you so much for turning my CAD drawings into something amazing! It’s something I’ll cherish for years and will hopefully be the first of many as I pursue a career in architecture.', 'Students', '', 'publish', 'closed', 'closed', '', 'students', '', '', '2015-05-20 16:12:23', '2015-05-20 13:12:23', '', 74, 'http://www.passionforclients.com/3dconstruct/?page_id=102', 8, 'page', '', 0),
(103, 1, '2015-05-14 12:02:17', '2015-05-14 09:02:17', '', 'Planners', '', 'inherit', 'closed', 'open', '', '102-revision-v1', '', '', '2015-05-14 12:02:17', '2015-05-14 09:02:17', '', 102, 'http://www.passionforclients.com/3dconstruct/102-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2015-05-14 12:02:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'open', '', '', '', '', '2015-05-14 12:02:48', '0000-00-00 00:00:00', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=106', 1, 'nav_menu_item', '', 0),
(107, 1, '2015-05-14 12:09:17', '2015-05-14 09:09:17', ' ', '', 'Planners', 'publish', 'closed', 'open', '', '107', '', '', '2015-05-20 15:44:02', '2015-05-20 12:44:02', '', 74, 'http://www.passionforclients.com/3dconstruct/?p=107', 3, 'nav_menu_item', '', 0),
(109, 1, '2015-05-14 12:09:17', '2015-05-14 09:09:17', ' ', '', 'Architects', 'publish', 'closed', 'open', '', '109', '', '', '2015-05-20 15:44:01', '2015-05-20 12:44:01', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=109', 1, 'nav_menu_item', '', 0),
(110, 1, '2015-05-14 12:16:29', '2015-05-14 09:16:29', '<strong>Build detailed, durable models with 3D printing</strong>\n\nYou can show a client a 2D drawing, even a 3D drawing, but for a client to really appreciate your design, you need to show them a 3D model. Seeing is believing – people need something they can touch and feel, something that makes it real for them.\n\nWe help architectural firms by printing 3D models of their designs, directly from CAD data (or other formats). They can be used at any stage of the project, especially at the beginning when you’re trying to sell a new concept or convey a particular idea.\n\n&nbsp;', 'Architects', '', 'inherit', 'closed', 'open', '', '74-autosave-v1', '', '', '2015-05-14 12:16:29', '2015-05-14 09:16:29', '', 74, 'http://www.passionforclients.com/3dconstruct/74-autosave-v1/', 0, 'revision', '', 0),
(111, 1, '2015-05-14 12:17:31', '2015-05-14 09:17:31', '<strong>Build detailed, durable models with 3D printing</strong>\r\n\r\nYou can show a client a 2D drawing, even a 3D drawing, but for a client to really appreciate your design, you need to show them a 3D model. Seeing is believing – people need something they can touch and feel, something that makes it real for them.\r\n\r\nWe help architectural firms by printing 3D models of their designs, directly from CAD data (or other formats). They can be used at any stage of the project, especially at the beginning when you’re trying to sell a new concept or convey a particular idea.\r\n\r\n<strong>Advantages of 3D architectural models</strong>\r\n<ul>\r\n	<li>They help your clients to visualise your concept</li>\r\n	<li>They allow you to discuss ideas and show alternative layouts</li>\r\n	<li>They lead to better decisions – fewer alterations, faster approvals</li>\r\n	<li>They are cheaper, faster and stronger than traditional models</li>\r\n</ul>\r\n<strong>What our clients say:</strong>\r\n\r\nI was struggling to sell a particular concept to a client recently when I realised it wasn’t my idea they disliked, they just couldn’t make the mental leap from my drawings to the real thing, they couldn’t imagine what the end product was going to look like. That’s when I called 3D Construct. Within 3 days I was back in front of my client with a 3D architectural model of their new house. In my 20 years of practice, I’ve never witnessed a more enthusiastic response. They loved it, and after 3 weeks trying to convince them with my drawings, it took just 3 minutes with your model. Thanks for a great service. I’ll be coming back for more.', 'Architects', '', 'inherit', 'closed', 'open', '', '74-revision-v1', '', '', '2015-05-14 12:17:31', '2015-05-14 09:17:31', '', 74, 'http://www.passionforclients.com/3dconstruct/74-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2015-05-14 12:24:31', '2015-05-14 09:24:31', '<p>\r\n<strong>Build detailed, durable models with 3D printing</strong>\r\n</p>\r\n<p>\r\nYou can show a client a 2D drawing, even a 3D drawing, but for a client to really appreciate your design, you need to show them a 3D model. Seeing is believing – people need something they can touch and feel, something that makes it real for them.\r\n</p>\r\n<p>\r\nWe help architectural firms by printing 3D models of their designs, directly from CAD data (or other formats). They can be used at any stage of the project, especially at the beginning when you’re trying to sell a new concept or convey a particular idea.\r\n</p>\r\n<p>\r\n<strong>Advantages of 3D architectural models</strong>\r\n</p>\r\n<p>\r\n<ul>\r\n	<li>They help your clients to visualise your concept</li>\r\n	<li>They allow you to discuss ideas and show alternative layouts</li>\r\n	<li>They lead to better decisions – fewer alterations, faster approvals</li>\r\n	<li>They are cheaper, faster and stronger than traditional models</li>\r\n</ul>\r\n</p>\r\n<p>\r\n<strong>What our clients say:</strong>\r\n</p>\r\n<p>\r\nI was struggling to sell a particular concept to a client recently when I realised it wasn’t my idea they disliked, they just couldn’t make the mental leap from my drawings to the real thing, they couldn’t imagine what the end product was going to look like. That’s when I called 3D Construct. Within 3 days I was back in front of my client with a 3D architectural model of their new house. In my 20 years of practice, I’ve never witnessed a more enthusiastic response. They loved it, and after 3 weeks trying to convince them with my drawings, it took just 3 minutes with your model. Thanks for a great service. I’ll be coming back for more.\r\n</p>', 'Architects', '', 'inherit', 'closed', 'open', '', '74-revision-v1', '', '', '2015-05-14 12:24:31', '2015-05-14 09:24:31', '', 74, 'http://www.passionforclients.com/3dconstruct/74-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2015-05-14 12:25:37', '2015-05-14 09:25:37', '<p>\r\n<strong>Build detailed, durable models with 3D printing</strong>\r\n</p>\r\n<p>\r\nYou can show a client a 2D drawing, even a 3D drawing, but for a client to really appreciate your design, you need to show them a 3D model. Seeing is believing – people need something they can touch and feel, something that makes it real for them.\r\n</p>\r\n<p>\r\nWe help architectural firms by printing 3D models of their designs, directly from CAD data (or other formats). They can be used at any stage of the project, especially at the beginning when you’re trying to sell a new concept or convey a particular idea.\r\n</p>\r\n<p>\r\n<strong>Advantages of 3D architectural models</strong>\r\n</p>\r\n<p>\r\n<ul>\r\n	<li>They help your clients to visualise your concept</li>\r\n	<li>They allow you to discuss ideas and show alternative layouts</li>\r\n	<li>They lead to better decisions – fewer alterations, faster approvals</li>\r\n	<li>They are cheaper, faster and stronger than traditional models</li>\r\n</ul>\r\n</p>\r\n<p>\r\n<strong>What our clients say:</strong>\r\n</p>\r\n<p>\r\nI was struggling to sell a particular concept to a client recently when I realised it wasn’t my idea they disliked, they just couldn’t make the mental leap from my drawings to the real thing, they couldn’t imagine what the end product was going to look like. That’s when I called 3D Construct. Within 3 days I was back in front of my client with a 3D architectural model of their new house. In my 20 years of practice, I’ve never witnessed a more enthusiastic response. They loved it, and after 3 weeks trying to convince them with my drawings, it took just 3 minutes with your model. Thanks for a great service. I’ll be coming back for more.\r\n</p>', 'Architects', '', 'inherit', 'closed', 'open', '', '74-revision-v1', '', '', '2015-05-14 12:25:37', '2015-05-14 09:25:37', '', 74, 'http://www.passionforclients.com/3dconstruct/74-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2015-05-14 12:25:57', '2015-05-14 09:25:57', '<p>\r\n<strong>Build detailed, durable models with 3D printing</strong>\r\n</p>\r\n<p>\r\nYou can show a client a 2D drawing, even a 3D drawing, but for a client to really appreciate your design, you need to show them a 3D model. Seeing is believing – people need something they can touch and feel, something that makes it real for them.\r\n</p>\r\n<p>\r\nWe help architectural firms by printing 3D models of their designs, directly from CAD data (or other formats). They can be used at any stage of the project, especially at the beginning when you’re trying to sell a new concept or convey a particular idea.\r\n</p>\r\n<p>\r\n<strong>Advantages of 3D architectural models</strong>\r\n</p>\r\n<p>\r\n<ul>\r\n	<li>They help your clients to visualise your concept</li>\r\n	<li>They allow you to discuss ideas and show alternative layouts</li>\r\n	<li>They lead to better decisions – fewer alterations, faster approvals</li>\r\n	<li>They are cheaper, faster and stronger than traditional models</li>\r\n</ul>\r\n</p>\r\n<p>\r\n<strong>What our clients say:</strong>\r\n</p>\r\n<p>\r\nI was struggling to sell a particular concept to a client recently when I realised it wasn’t my idea they disliked, they just couldn’t make the mental leap from my drawings to the real thing, they couldn’t imagine what the end product was going to look like. That’s when I called 3D Construct. Within 3 days I was back in front of my client with a 3D architectural model of their new house. In my 20 years of practice, I’ve never witnessed a more enthusiastic response. They loved it, and after 3 weeks trying to convince them with my drawings, it took just 3 minutes with your model. Thanks for a great service. I’ll be coming back for more.\r\n</p>', 'Planners', '', 'inherit', 'closed', 'open', '', '102-revision-v1', '', '', '2015-05-14 12:25:57', '2015-05-14 09:25:57', '', 102, 'http://www.passionforclients.com/3dconstruct/102-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2015-05-14 12:26:38', '2015-05-14 09:26:38', '<strong>Build detailed, durable models with 3D printing</strong>\r\n\r\nYou can show a client a 2D drawing, even a 3D drawing, but for a client to really appreciate your design, you need to show them a 3D model. Seeing is believing – people need something they can touch and feel, something that makes it real for them.\r\n\r\nWe help architectural firms by printing 3D models of their designs, directly from CAD data (or other formats). They can be used at any stage of the project, especially at the beginning when you’re trying to sell a new concept or convey a particular idea.\r\n\r\n<strong>Advantages of 3D architectural models</strong>\r\n<ul>\r\n	<li>They help your clients to visualise your concept</li>\r\n	<li>They allow you to discuss ideas and show alternative layouts</li>\r\n	<li>They lead to better decisions – fewer alterations, faster approvals</li>\r\n	<li>They are cheaper, faster and stronger than traditional models</li>\r\n</ul>\r\n<strong>What our clients say:</strong>\r\n\r\nI was struggling to sell a particular concept to a client recently when I realised it wasn’t my idea they disliked, they just couldn’t make the mental leap from my drawings to the real thing, they couldn’t imagine what the end product was going to look like. That’s when I called 3D Construct. Within 3 days I was back in front of my client with a 3D architectural model of their new house. In my 20 years of practice, I’ve never witnessed a more enthusiastic response. They loved it, and after 3 weeks trying to convince them with my drawings, it took just 3 minutes with your model. Thanks for a great service. I’ll be coming back for more.', 'Planners', '', 'inherit', 'closed', 'open', '', '102-revision-v1', '', '', '2015-05-14 12:26:38', '2015-05-14 09:26:38', '', 102, 'http://www.passionforclients.com/3dconstruct/102-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2015-05-14 12:26:47', '2015-05-14 09:26:47', '<strong>Build detailed, durable models with 3D printing</strong>\r\n\r\nYou can show a client a 2D drawing, even a 3D drawing, but for a client to really appreciate your design, you need to show them a 3D model. Seeing is believing – people need something they can touch and feel, something that makes it real for them.\r\n\r\nWe help architectural firms by printing 3D models of their designs, directly from CAD data (or other formats). They can be used at any stage of the project, especially at the beginning when you’re trying to sell a new concept or convey a particular idea.\r\n\r\n<strong>Advantages of 3D architectural models</strong>\r\n<ul>\r\n	<li>They help your clients to visualise your concept</li>\r\n	<li>They allow you to discuss ideas and show alternative layouts</li>\r\n	<li>They lead to better decisions – fewer alterations, faster approvals</li>\r\n	<li>They are cheaper, faster and stronger than traditional models</li>\r\n</ul>\r\n<strong>What our clients say:</strong>\r\n\r\nI was struggling to sell a particular concept to a client recently when I realised it wasn’t my idea they disliked, they just couldn’t make the mental leap from my drawings to the real thing, they couldn’t imagine what the end product was going to look like. That’s when I called 3D Construct. Within 3 days I was back in front of my client with a 3D architectural model of their new house. In my 20 years of practice, I’ve never witnessed a more enthusiastic response. They loved it, and after 3 weeks trying to convince them with my drawings, it took just 3 minutes with your model. Thanks for a great service. I’ll be coming back for more.', 'Architects', '', 'inherit', 'closed', 'open', '', '74-revision-v1', '', '', '2015-05-14 12:26:47', '2015-05-14 09:26:47', '', 74, 'http://www.passionforclients.com/3dconstruct/74-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2015-05-14 12:35:11', '2015-05-14 09:35:11', '', 'Sectors', 'Sectors', 'publish', 'closed', 'open', '', 'sectors-2', '', '', '2015-05-20 16:10:55', '2015-05-20 13:10:55', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=119', 4, 'nav_menu_item', '', 0),
(121, 1, '2015-05-14 12:42:24', '2015-05-14 09:42:24', '<strong>Touch it and feel it before you build it</strong>\r\n\r\nBuilding your own house can be very exciting, but also very nerve wracking. There’s a lot at stake and you can’t afford to get it wrong, especially when money is tight. Sometimes it helps to take a step back after the plans are drawn up to make sure it’s what you want and that it meets all the criteria. This is where a 3D model can prove very useful. Whether it’s a new build, extension or renovation, it allows you to see what it will look like before you go ahead and build it.\r\n\r\n<strong>Advantages of 3D printed models</strong>\r\n<ul>\r\n	<li>You can remove the roof and look inside</li>\r\n	<li>You get a sense of size and space</li>\r\n	<li>You can test the orientation/light</li>\r\n	<li>You can experiment with different room layouts</li>\r\n	<li>Very good value, and extremely quick</li>\r\n</ul>\r\n<strong>What our clients say:</strong>\r\n\r\n“We used 3D Construct after our architect showed us the plans for our new extension. We found it difficult to visualise the layout from the drawings so we emailed them to Diarmuid, paid him by credit card over the phone and four days later the model arrived by post. This was all done prior to lodging our planning application and gave us a much better idea of the extension layout. We were able to remove the roof and view the internal layout which allowed us to study the position of radiators, windows, sofas etc. After receiving the 3D model, we asked our architect to make a few changes prior to lodging our application. We found the team at 3D Construct great to deal with and the results were fantastic. The cost of the 3D model was very small in the grand scheme of things and gave us a lot of confidence and peace of mind.', 'Self builds', '', 'publish', 'closed', 'closed', '', 'self-builds', '', '', '2015-05-20 16:12:28', '2015-05-20 13:12:28', '', 74, 'http://www.passionforclients.com/3dconstruct/?page_id=121', 7, 'page', '', 0),
(122, 1, '2015-05-14 12:42:24', '2015-05-14 09:42:24', '<strong>Build detailed, durable models with 3D printing</strong>\r\n\r\nYou can show a client a 2D drawing, even a 3D drawing, but for a client to really appreciate your design, you need to show them a 3D model. Seeing is believing – people need something they can touch and feel, something that makes it real for them.\r\n\r\nWe help architectural firms by printing 3D models of their designs, directly from CAD data (or other formats). They can be used at any stage of the project, especially at the beginning when you’re trying to sell a new concept or convey a particular idea.\r\n\r\n<strong>Advantages of 3D architectural models</strong>\r\n<ul>\r\n	<li>They help your clients to visualise your concept</li>\r\n	<li>They allow you to discuss ideas and show alternative layouts</li>\r\n	<li>They lead to better decisions – fewer alterations, faster approvals</li>\r\n	<li>They are cheaper, faster and stronger than traditional models</li>\r\n</ul>\r\n<strong>What our clients say:</strong>\r\n\r\nI was struggling to sell a particular concept to a client recently when I realised it wasn’t my idea they disliked, they just couldn’t make the mental leap from my drawings to the real thing, they couldn’t imagine what the end product was going to look like. That’s when I called 3D Construct. Within 3 days I was back in front of my client with a 3D architectural model of their new house. In my 20 years of practice, I’ve never witnessed a more enthusiastic response. They loved it, and after 3 weeks trying to convince them with my drawings, it took just 3 minutes with your model. Thanks for a great service. I’ll be coming back for more.', 'Self builders', '', 'inherit', 'closed', 'open', '', '121-revision-v1', '', '', '2015-05-14 12:42:24', '2015-05-14 09:42:24', '', 121, 'http://www.passionforclients.com/3dconstruct/121-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2015-05-14 12:42:49', '2015-05-14 09:42:49', ' ', '', 'Self builders', 'publish', 'closed', 'open', '', '123', '', '', '2015-05-20 15:44:02', '2015-05-20 12:44:02', '', 74, 'http://www.passionforclients.com/3dconstruct/?p=123', 2, 'nav_menu_item', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(124, 1, '2015-05-14 12:59:40', '2015-05-14 09:59:40', '<strong>1. What is 3D printing?</strong>\n\n3D printing is a process of making three dimensional solid objects from a digital file. The object is created by laying down successive layers of material until the entire object is created. Each of these layers can be seen as a thinly sliced horizontal cross-section of the eventual object. 3D printing can be used for all sorts of objects. It is especially useful for product prototypes and building models such as houses.\n\n<strong>2. How does the process work?</strong>\n\nIt all starts with making a virtual design of the object you want to create. This is normally done using a 3D modelling programme in CAD. The software slices the eventual model into hundreds and thousands of horizontal layers. When the file is prepared, it is uploaded to the 3D printer which creates the object layer by layer. The 3D printer reads every slice (or 2D image) and proceeds to blend the object so there’s no sign of the layering visible, resulting in one three-dimensional object.\n\n<strong>3. What can be 3D printed?</strong>\n\nAnything that you can draw can be 3D printed. We recently 3D modelled and printed a college project from a sketch on the back of a beermat! Our printer can print up to 254mm x 381mm x 203mm. Once you send us your drawing, we will suggest a suitable scale for your model and discuss whatever else you require.\n\n<strong>4. My design is a 2D drawing, can this be printed?</strong>\n\nYes, most of the drawings we receive are 2D CAD files. We will provide a quote to draw the building in 3D from your 2D files. This then allows the 3D print to commence. We will email you back the 3D model files which are yours to own along with the model.\n\n<strong>5. What is the despatch time for models?</strong>\n\nIt normally takes 3 – 5 working days, depending on the size of the model, the amount of drawing required, the location for postage etc.\n\n<strong>6. How much will it cost to get my 3D model printed?</strong>\n\nIt depends on the type of model you want, and the size. It also depends on how quickly you need it and how much preparation is required (i.e. if you need us to convert the files from 2D to 3D or print direct). If you send us what you have, we can give you a price.\n\n<strong>7. What size will my model be?</strong>\nThe printer can print up to 254mm x 381mm x 203mm in one go. We can stick these together to make larger models if required. When you contact 3D Construct, we will suggest a suitable scale for your model to be printed.\n\n<strong>8. What type of files do you accept on your computers?</strong>\n\nWe normally receive file types such as Google Sketchup, CAD, Revit etc. but we can amend any file type\nto 3D print. We recently 3D modelled and printed a college project from a sketch on the back of a beer-\nmat!', 'Faqs', '', 'inherit', 'closed', 'open', '', '56-autosave-v1', '', '', '2015-05-14 12:59:40', '2015-05-14 09:59:40', '', 56, 'http://www.passionforclients.com/3dconstruct/56-autosave-v1/', 0, 'revision', '', 0),
(125, 1, '2015-05-14 12:55:39', '2015-05-14 09:55:39', '<ol>\r\n	<li>What is 3D printing?</li>\r\n</ol>\r\n3D printing is a process of making three dimensional solid objects from a digital file. The object is created by laying down successive layers of material until the entire object is created. Each of these layers can be seen as a thinly sliced horizontal cross-section of the eventual object. 3D printing can be used for all sorts of objects. It is especially useful for product prototypes and building models such as houses.\r\n<ol>\r\n	<li>How does the process work?</li>\r\n</ol>\r\nIt all starts with making a virtual design of the object you want to create. This is normally done using a\r\n3D modelling programme in CAD. The software slices the eventual model into hundreds and thousands\r\nof horizontal layers. When the file is prepared, it is uploaded to the 3D printer which creates the object\r\nlayer by layer. The 3D printer reads every slice (or 2D image) and proceeds to blend the object so there’s\r\nno sign of the layering visible, resulting in one three-dimensional object.\r\n3.\r\nWhat can be 3D printed?\r\nAnything that you can draw can be 3D printed. We recently 3D modelled and printed a college project\r\nfrom a sketch on the back of a beermat! Our printer can print up to 254mm x 381mm x 203mm. Once\r\nyou send us your drawing, we will suggest a suitable scale for your model and discuss whatever else you\r\nrequire.\r\n4.\r\nMy design is a 2D drawing, can this be printed?\r\nYes, most of the drawings we receive are 2D CAD files. We will provide a quote to draw the building in\r\n3D from your 2D files. This then allows the 3D print to commence. We will email you back the 3D model\r\nfiles which are yours to own along with the model.\r\n5.\r\nWhat is the despatch time for models?\r\nIt normally takes 3 – 5 working days, depending on the size of the model, the amount of drawing\r\nrequired, the location for postage etc.\r\n6.\r\nHow much will it cost to get my 3D model printed?\r\nIt depends on the type of model you want, and the size. It also depends on how quickly you need it and\r\nhow much preparation is required (i.e. if you need us to convert the files from 2D to 3D or print direct). If\r\nyou send us what you have, we can give you a price.\r\n7.\r\nWhat size will my model be?\r\nThe printer can print up to 254mm x 381mm x 203mm in one go. We can stick these together to make\r\nlarger models if required. When you contact 3D Construct, we will suggest a suitable scale for your\r\nmodel to be printed.\r\n8.\r\nWhat type of files do you accept on your computers?\r\nWe normally receive file types such as Google Sketchup, CAD, Revit etc. but we can amend any file type\r\nto 3D print. We recently 3D modelled and printed a college project from a sketch on the back of a beer-\r\nmat!', 'Faqs', '', 'inherit', 'closed', 'open', '', '56-revision-v1', '', '', '2015-05-14 12:55:39', '2015-05-14 09:55:39', '', 56, 'http://www.passionforclients.com/3dconstruct/56-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2015-05-14 13:00:02', '2015-05-14 10:00:02', '<strong>1. What is 3D printing?</strong>\r\n\r\n3D printing is a process of making three dimensional solid objects from a digital file. The object is created by laying down successive layers of material until the entire object is created. Each of these layers can be seen as a thinly sliced horizontal cross-section of the eventual object. 3D printing can be used for all sorts of objects. It is especially useful for product prototypes and building models such as houses.\r\n\r\n<strong>2. How does the process work?</strong>\r\n\r\nIt all starts with making a virtual design of the object you want to create. This is normally done using a 3D modelling programme in CAD. The software slices the eventual model into hundreds and thousands of horizontal layers. When the file is prepared, it is uploaded to the 3D printer which creates the object layer by layer. The 3D printer reads every slice (or 2D image) and proceeds to blend the object so there’s no sign of the layering visible, resulting in one three-dimensional object.\r\n\r\n<strong>3. What can be 3D printed?</strong>\r\n\r\nAnything that you can draw can be 3D printed. We recently 3D modelled and printed a college project from a sketch on the back of a beermat! Our printer can print up to 254mm x 381mm x 203mm. Once you send us your drawing, we will suggest a suitable scale for your model and discuss whatever else you require.\r\n\r\n<strong>4. My design is a 2D drawing, can this be printed?</strong>\r\n\r\nYes, most of the drawings we receive are 2D CAD files. We will provide a quote to draw the building in 3D from your 2D files. This then allows the 3D print to commence. We will email you back the 3D model files which are yours to own along with the model.\r\n\r\n<strong>5. What is the despatch time for models?</strong>\r\n\r\nIt normally takes 3 – 5 working days, depending on the size of the model, the amount of drawing required, the location for postage etc.\r\n\r\n<strong>6. How much will it cost to get my 3D model printed?</strong>\r\n\r\nIt depends on the type of model you want, and the size. It also depends on how quickly you need it and how much preparation is required (i.e. if you need us to convert the files from 2D to 3D or print direct). If you send us what you have, we can give you a price.\r\n\r\n<strong>7. What size will my model be?</strong>\r\nThe printer can print up to 254mm x 381mm x 203mm in one go. We can stick these together to make larger models if required. When you contact 3D Construct, we will suggest a suitable scale for your model to be printed.\r\n\r\n<strong>8. What type of files do you accept on your computers?</strong>\r\n\r\nWe normally receive file types such as Google Sketchup, CAD, Revit etc. but we can amend any file type to 3D print. We recently 3D modelled and printed a college project from a sketch on the back of a beermat!', 'Faqs', '', 'inherit', 'closed', 'open', '', '56-revision-v1', '', '', '2015-05-14 13:00:02', '2015-05-14 10:00:02', '', 56, 'http://www.passionforclients.com/3dconstruct/56-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2015-05-14 14:10:13', '2015-05-14 11:10:13', 'Lorem ipsum dolor sit amet, eu dolores scaevola aliquando nam. Ne reque commune duo, duo omnis tamquam labores cu, iriure detraxit deseruisse duo ut. Unum nostrud senserit est at, no sea diam commune. At sint vidit mel, ex vix quas alienum. Abhorreant efficiendi ad sed.\r\n\r\nEum congue placerat suavitate at, an tamquam volutpat efficiantur vel. Ne nibh interesset sed. Sea noster convenire id, id elitr dolore facilisis has. Enim nusquam his no, qui in appareat lucilius, te sint ferri pertinax vix. Eos etiam latine phaedrum et, te clita sanctus has, simul delicatissimi in his. Pro copiosae explicari ei. Prompta eripuit at nec, bonorum voluptatum contentiones ut ius, nam tacimates percipitur eu.\r\n\r\nMea eu labore omittam, id usu odio maluisset neglegentur. Ut nisl iusto graeci his, tantas appetere maiestatis has ne. Usu ne dolore adolescens. Ne pri delicata voluptaria, qui pericula urbanitas et.\r\n\r\nVis meis quaeque ullamcorper et, dicit dolor recteque usu at. Pro ex choro facilisis, ut sea duis detracto suscipit. Iudico ridens antiopam eu pri. Ex alienum accusam mediocrem mel, ad has semper temporibus. Purto unum maiestatis pri id, no assum nostrum intellegam vim.\r\n\r\nOcurreret adversarium pro in, usu soleat latine appareat no, nam postulant expetenda ad. Nostro nonumes vivendum id nam. Te tamquam efficiendi persequeris his, no quot prima pertinacia est. Te temporibus instructior est. In ius nonumes ullamcorper, ad brute aperiam sea, eos officiis praesent ad.', 'First blog post', '', 'publish', 'closed', 'closed', '', 'first-blog-post', '', '', '2015-05-14 14:16:33', '2015-05-14 11:16:33', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=129', 0, 'post', '', 0),
(130, 1, '2015-05-14 14:10:13', '2015-05-14 11:10:13', 'Lorem ipsum dolor sit amet, eu dolores scaevola aliquando nam. Ne reque commune duo, duo omnis tamquam labores cu, iriure detraxit deseruisse duo ut. Unum nostrud senserit est at, no sea diam commune. At sint vidit mel, ex vix quas alienum. Abhorreant efficiendi ad sed.\r\n\r\nEum congue placerat suavitate at, an tamquam volutpat efficiantur vel. Ne nibh interesset sed. Sea noster convenire id, id elitr dolore facilisis has. Enim nusquam his no, qui in appareat lucilius, te sint ferri pertinax vix. Eos etiam latine phaedrum et, te clita sanctus has, simul delicatissimi in his. Pro copiosae explicari ei. Prompta eripuit at nec, bonorum voluptatum contentiones ut ius, nam tacimates percipitur eu.\r\n\r\nMea eu labore omittam, id usu odio maluisset neglegentur. Ut nisl iusto graeci his, tantas appetere maiestatis has ne. Usu ne dolore adolescens. Ne pri delicata voluptaria, qui pericula urbanitas et.\r\n\r\nVis meis quaeque ullamcorper et, dicit dolor recteque usu at. Pro ex choro facilisis, ut sea duis detracto suscipit. Iudico ridens antiopam eu pri. Ex alienum accusam mediocrem mel, ad has semper temporibus. Purto unum maiestatis pri id, no assum nostrum intellegam vim.\r\n\r\nOcurreret adversarium pro in, usu soleat latine appareat no, nam postulant expetenda ad. Nostro nonumes vivendum id nam. Te tamquam efficiendi persequeris his, no quot prima pertinacia est. Te temporibus instructior est. In ius nonumes ullamcorper, ad brute aperiam sea, eos officiis praesent ad.', 'First blog post', '', 'inherit', 'closed', 'open', '', '129-revision-v1', '', '', '2015-05-14 14:10:13', '2015-05-14 11:10:13', '', 129, 'http://www.passionforclients.com/3dconstruct/129-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2015-05-14 14:10:55', '2015-05-14 11:10:55', 'Lorem ipsum dolor sit amet, eu dolores scaevola aliquando nam. Ne reque commune duo, duo omnis tamquam labores cu, iriure detraxit deseruisse duo ut. Unum nostrud senserit est at, no sea diam commune. At sint vidit mel, ex vix quas alienum. Abhorreant efficiendi ad sed.\r\n\r\nEum congue placerat suavitate at, an tamquam volutpat efficiantur vel. Ne nibh interesset sed. Sea noster convenire id, id elitr dolore facilisis has. Enim nusquam his no, qui in appareat lucilius, te sint ferri pertinax vix. Eos etiam latine phaedrum et, te clita sanctus has, simul delicatissimi in his. Pro copiosae explicari ei. Prompta eripuit at nec, bonorum voluptatum contentiones ut ius, nam tacimates percipitur eu.\r\n\r\nMea eu labore omittam, id usu odio maluisset neglegentur. Ut nisl iusto graeci his, tantas appetere maiestatis has ne. Usu ne dolore adolescens. Ne pri delicata voluptaria, qui pericula urbanitas et.\r\n\r\nVis meis quaeque ullamcorper et, dicit dolor recteque usu at. Pro ex choro facilisis, ut sea duis detracto suscipit. Iudico ridens antiopam eu pri. Ex alienum accusam mediocrem mel, ad has semper temporibus. Purto unum maiestatis pri id, no assum nostrum intellegam vim.\r\n\r\nOcurreret adversarium pro in, usu soleat latine appareat no, nam postulant expetenda ad. Nostro nonumes vivendum id nam. Te tamquam efficiendi persequeris his, no quot prima pertinacia est. Te temporibus instructior est. In ius nonumes ullamcorper, ad brute aperiam sea, eos officiis praesent ad.', 'Second blog post', '', 'publish', 'closed', 'closed', '', 'second-blog-post', '', '', '2015-05-14 14:10:55', '2015-05-14 11:10:55', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=131', 0, 'post', '', 0),
(132, 1, '2015-05-14 14:10:55', '2015-05-14 11:10:55', 'Lorem ipsum dolor sit amet, eu dolores scaevola aliquando nam. Ne reque commune duo, duo omnis tamquam labores cu, iriure detraxit deseruisse duo ut. Unum nostrud senserit est at, no sea diam commune. At sint vidit mel, ex vix quas alienum. Abhorreant efficiendi ad sed.\r\n\r\nEum congue placerat suavitate at, an tamquam volutpat efficiantur vel. Ne nibh interesset sed. Sea noster convenire id, id elitr dolore facilisis has. Enim nusquam his no, qui in appareat lucilius, te sint ferri pertinax vix. Eos etiam latine phaedrum et, te clita sanctus has, simul delicatissimi in his. Pro copiosae explicari ei. Prompta eripuit at nec, bonorum voluptatum contentiones ut ius, nam tacimates percipitur eu.\r\n\r\nMea eu labore omittam, id usu odio maluisset neglegentur. Ut nisl iusto graeci his, tantas appetere maiestatis has ne. Usu ne dolore adolescens. Ne pri delicata voluptaria, qui pericula urbanitas et.\r\n\r\nVis meis quaeque ullamcorper et, dicit dolor recteque usu at. Pro ex choro facilisis, ut sea duis detracto suscipit. Iudico ridens antiopam eu pri. Ex alienum accusam mediocrem mel, ad has semper temporibus. Purto unum maiestatis pri id, no assum nostrum intellegam vim.\r\n\r\nOcurreret adversarium pro in, usu soleat latine appareat no, nam postulant expetenda ad. Nostro nonumes vivendum id nam. Te tamquam efficiendi persequeris his, no quot prima pertinacia est. Te temporibus instructior est. In ius nonumes ullamcorper, ad brute aperiam sea, eos officiis praesent ad.', 'Second blog post', '', 'inherit', 'closed', 'open', '', '131-revision-v1', '', '', '2015-05-14 14:10:55', '2015-05-14 11:10:55', '', 131, 'http://www.passionforclients.com/3dconstruct/131-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2015-05-14 14:13:07', '2015-05-14 11:13:07', 'Lorem ipsum dolor sit amet, eu dolores scaevola aliquando nam. Ne reque commune duo, duo omnis tamquam labores cu, iriure detraxit deseruisse duo ut. Unum nostrud senserit est at, no sea diam commune. At sint vidit mel, ex vix quas alienum. Abhorreant efficiendi ad sed.\r\n\r\nEum congue placerat suavitate at, an tamquam volutpat efficiantur vel. Ne nibh interesset sed. Sea noster convenire id, id elitr dolore facilisis has. Enim nusquam his no, qui in appareat lucilius, te sint ferri pertinax vix. Eos etiam latine phaedrum et, te clita sanctus has, simul delicatissimi in his. Pro copiosae explicari ei. Prompta eripuit at nec, bonorum voluptatum contentiones ut ius, nam tacimates percipitur eu.\r\n\r\nMea eu labore omittam, id usu odio maluisset neglegentur. Ut nisl iusto graeci his, tantas appetere maiestatis has ne. Usu ne dolore adolescens. Ne pri delicata voluptaria, qui pericula urbanitas et.\r\n\r\nVis meis quaeque ullamcorper et, dicit dolor recteque usu at. Pro ex choro facilisis, ut sea duis detracto suscipit. Iudico ridens antiopam eu pri. Ex alienum accusam mediocrem mel, ad has semper temporibus. Purto unum maiestatis pri id, no assum nostrum intellegam vim.\r\n\r\nOcurreret adversarium pro in, usu soleat latine appareat no, nam postulant expetenda ad. Nostro nonumes vivendum id nam. Te tamquam efficiendi persequeris his, no quot prima pertinacia est. Te temporibus instructior est. In ius nonumes ullamcorper, ad brute aperiam sea, eos officiis praesent ad.', 'Third blog post', '', 'publish', 'closed', 'closed', '', 'third-blog-post', '', '', '2015-05-14 14:16:57', '2015-05-14 11:16:57', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=133', 0, 'post', '', 0),
(134, 1, '2015-05-14 14:13:07', '2015-05-14 11:13:07', 'Lorem ipsum dolor sit amet, eu dolores scaevola aliquando nam. Ne reque commune duo, duo omnis tamquam labores cu, iriure detraxit deseruisse duo ut. Unum nostrud senserit est at, no sea diam commune. At sint vidit mel, ex vix quas alienum. Abhorreant efficiendi ad sed.\r\n\r\nEum congue placerat suavitate at, an tamquam volutpat efficiantur vel. Ne nibh interesset sed. Sea noster convenire id, id elitr dolore facilisis has. Enim nusquam his no, qui in appareat lucilius, te sint ferri pertinax vix. Eos etiam latine phaedrum et, te clita sanctus has, simul delicatissimi in his. Pro copiosae explicari ei. Prompta eripuit at nec, bonorum voluptatum contentiones ut ius, nam tacimates percipitur eu.\r\n\r\nMea eu labore omittam, id usu odio maluisset neglegentur. Ut nisl iusto graeci his, tantas appetere maiestatis has ne. Usu ne dolore adolescens. Ne pri delicata voluptaria, qui pericula urbanitas et.\r\n\r\nVis meis quaeque ullamcorper et, dicit dolor recteque usu at. Pro ex choro facilisis, ut sea duis detracto suscipit. Iudico ridens antiopam eu pri. Ex alienum accusam mediocrem mel, ad has semper temporibus. Purto unum maiestatis pri id, no assum nostrum intellegam vim.\r\n\r\nOcurreret adversarium pro in, usu soleat latine appareat no, nam postulant expetenda ad. Nostro nonumes vivendum id nam. Te tamquam efficiendi persequeris his, no quot prima pertinacia est. Te temporibus instructior est. In ius nonumes ullamcorper, ad brute aperiam sea, eos officiis praesent ad.', 'Third blog post', '', 'inherit', 'closed', 'open', '', '133-revision-v1', '', '', '2015-05-14 14:13:07', '2015-05-14 11:13:07', '', 133, 'http://www.passionforclients.com/3dconstruct/133-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(135, 1, '2015-05-14 14:14:29', '2015-05-14 11:14:29', '', 'Posts', 'Posts', 'publish', 'closed', 'open', '', 'posts', '', '', '2015-05-14 14:14:29', '2015-05-14 11:14:29', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=135', 1, 'nav_menu_item', '', 0),
(136, 1, '2015-05-15 09:54:19', '2015-05-15 06:54:19', '<p>Name (required)[text* your-name]</p>\r\n<p>Email (required)[email* your-email]</p>\r\n<p>Comments[textarea your-message]</p>\r\n<p>[submit "Submit"]</p>\n[your-subject]\n[your-name] <wordpress@3d.loc>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on 3dConstruct (http://www.passionforclients.com/3dconstruct)\nd@construct.com\nReply-To: [your-email]\n\n\n\n\n[your-subject]\n3dConstruct <wordpress@3d.loc>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on 3dConstruct (http://www.passionforclients.com/3dconstruct)\n[your-email]\nReply-To: d@construct.com\n\n\n\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill in the required field.\nThis input is too long.\nThis input is too short.\nYour entered code is incorrect.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nEmail address seems invalid.\nURL seems invalid.\nTelephone number seems invalid.\nYour answer is not correct.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.', 'Contact form 1', '', 'publish', 'closed', 'open', '', 'contact-form-1', '', '', '2015-05-15 11:35:43', '2015-05-15 08:35:43', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=wpcf7_contact_form&#038;p=136', 0, 'wpcf7_contact_form', '', 0),
(137, 1, '2015-05-15 09:57:29', '2015-05-15 06:57:29', '[contact-form-7 id="136" title="Contact form 1"]', 'Contact', '', 'inherit', 'closed', 'open', '', '58-revision-v1', '', '', '2015-05-15 09:57:29', '2015-05-15 06:57:29', '', 58, 'http://www.passionforclients.com/3dconstruct/58-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2015-05-15 10:16:07', '2015-05-15 07:16:07', '', 'Contact', '', 'inherit', 'closed', 'open', '', '58-revision-v1', '', '', '2015-05-15 10:16:07', '2015-05-15 07:16:07', '', 58, 'http://www.passionforclients.com/3dconstruct/58-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2015-05-15 10:16:09', '2015-05-15 07:16:09', 'sdfdsdsffds', 'Contact', '', 'inherit', 'closed', 'open', '', '58-revision-v1', '', '', '2015-05-15 10:16:09', '2015-05-15 07:16:09', '', 58, 'http://www.passionforclients.com/3dconstruct/58-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2015-05-15 11:34:01', '2015-05-15 08:34:01', '', 'Contact', '', 'inherit', 'closed', 'open', '', '58-revision-v1', '', '', '2015-05-15 11:34:01', '2015-05-15 08:34:01', '', 58, 'http://www.passionforclients.com/3dconstruct/58-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2015-05-15 12:03:45', '2015-05-15 09:03:45', '', 'First slide', '', 'publish', 'closed', 'closed', '', 'first-slide', '', '', '2015-05-15 12:03:45', '2015-05-15 09:03:45', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=gallery_concept&#038;p=141', 1, 'gallery_concept', '', 0),
(142, 1, '2015-05-15 12:04:00', '2015-05-15 09:04:00', '', 'Second slide', '', 'publish', 'closed', 'closed', '', 'second-slide', '', '', '2015-05-15 12:04:00', '2015-05-15 09:04:00', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=gallery_concept&#038;p=142', 2, 'gallery_concept', '', 0),
(143, 1, '2015-05-15 12:04:14', '2015-05-15 09:04:14', '', 'Third slide', '', 'publish', 'closed', 'closed', '', 'third-slide', '', '', '2015-05-15 12:04:14', '2015-05-15 09:04:14', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=gallery_concept&#038;p=143', 3, 'gallery_concept', '', 0),
(144, 1, '2015-05-15 12:04:53', '2015-05-15 09:04:53', '', 'Fourth slide', '', 'publish', 'closed', 'closed', '', 'fourth-slide', '', '', '2015-05-15 12:04:53', '2015-05-15 09:04:53', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=gallery_concept&#038;p=144', 4, 'gallery_concept', '', 0),
(145, 1, '2015-05-15 12:05:27', '2015-05-15 09:05:27', '', 'First slide', '', 'publish', 'closed', 'closed', '', 'first-slide', '', '', '2015-05-15 12:05:27', '2015-05-15 09:05:27', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=gallery_sales&#038;p=145', 1, 'gallery_sales', '', 0),
(146, 1, '2015-05-15 12:05:43', '2015-05-15 09:05:43', '', 'Second slide', '', 'publish', 'closed', 'closed', '', 'second-slide', '', '', '2015-05-15 12:05:43', '2015-05-15 09:05:43', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=gallery_sales&#038;p=146', 2, 'gallery_sales', '', 0),
(147, 1, '2015-05-15 12:06:01', '2015-05-15 09:06:01', '', 'Third slide', '', 'publish', 'closed', 'closed', '', 'third-slide', '', '', '2015-05-15 12:06:01', '2015-05-15 09:06:01', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=gallery_sales&#038;p=147', 3, 'gallery_sales', '', 0),
(148, 1, '2015-05-15 12:06:21', '2015-05-15 09:06:21', '', 'Fourth slide', '', 'publish', 'closed', 'closed', '', 'fourth-slide', '', '', '2015-05-15 12:06:21', '2015-05-15 09:06:21', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=gallery_sales&#038;p=148', 4, 'gallery_sales', '', 0),
(149, 1, '2015-05-15 12:06:42', '2015-05-15 09:06:42', '', 'First slide', '', 'publish', 'closed', 'closed', '', 'first-slide', '', '', '2015-05-15 12:06:42', '2015-05-15 09:06:42', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=gallery_planners&#038;p=149', 1, 'gallery_planners', '', 0),
(150, 1, '2015-05-15 12:06:55', '2015-05-15 09:06:55', '', 'Second slide', '', 'publish', 'closed', 'closed', '', 'second-slide', '', '', '2015-05-15 12:06:55', '2015-05-15 09:06:55', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=gallery_planners&#038;p=150', 2, 'gallery_planners', '', 0),
(151, 1, '2015-05-15 12:07:07', '2015-05-15 09:07:07', '', 'Third slide', '', 'publish', 'closed', 'closed', '', 'third-slide', '', '', '2015-05-15 12:07:07', '2015-05-15 09:07:07', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=gallery_planners&#038;p=151', 3, 'gallery_planners', '', 0),
(152, 1, '2015-05-15 12:07:23', '2015-05-15 09:07:23', '', 'Fourth slide', '', 'publish', 'closed', 'closed', '', 'fourth-slide', '', '', '2015-05-15 12:07:23', '2015-05-15 09:07:23', '', 0, 'http://www.passionforclients.com/3dconstruct/?post_type=gallery_planners&#038;p=152', 4, 'gallery_planners', '', 0),
(153, 1, '2015-05-15 12:12:55', '2015-05-15 09:12:55', '', 'Gallery concept models', '', 'publish', 'closed', 'closed', '', 'gallery-concept-models', '', '', '2015-05-20 16:12:18', '2015-05-20 13:12:18', '', 0, 'http://www.passionforclients.com/3dconstruct/?page_id=153', 9, 'page', '', 0),
(154, 1, '2015-05-15 12:12:55', '2015-05-15 09:12:55', '', 'Gallery concept models', '', 'inherit', 'closed', 'open', '', '153-revision-v1', '', '', '2015-05-15 12:12:55', '2015-05-15 09:12:55', '', 153, 'http://www.passionforclients.com/3dconstruct/153-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2015-05-15 12:13:32', '2015-05-15 09:13:32', '', 'Gallery sales models', '', 'publish', 'closed', 'closed', '', 'gallery-sales-models', '', '', '2015-05-20 16:12:12', '2015-05-20 13:12:12', '', 153, 'http://www.passionforclients.com/3dconstruct/?page_id=155', 10, 'page', '', 0),
(156, 1, '2015-05-15 12:13:32', '2015-05-15 09:13:32', '', 'Gallery sales models', '', 'inherit', 'closed', 'open', '', '155-revision-v1', '', '', '2015-05-15 12:13:32', '2015-05-15 09:13:32', '', 155, 'http://www.passionforclients.com/3dconstruct/155-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2015-05-15 12:15:26', '2015-05-15 09:15:26', '', 'Gallery planners models', '', 'publish', 'closed', 'closed', '', 'gallery-planners-models', '', '', '2015-05-20 16:12:08', '2015-05-20 13:12:08', '', 153, 'http://www.passionforclients.com/3dconstruct/?page_id=157', 11, 'page', '', 0),
(158, 1, '2015-05-15 12:15:26', '2015-05-15 09:15:26', '', 'Gallery planners models', '', 'inherit', 'closed', 'open', '', '157-revision-v1', '', '', '2015-05-15 12:15:26', '2015-05-15 09:15:26', '', 157, 'http://www.passionforclients.com/3dconstruct/157-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2015-05-15 12:16:13', '2015-05-15 09:16:13', '', 'Planners models', 'Planners models', 'publish', 'closed', 'open', '', '159', '', '', '2015-05-15 12:16:36', '2015-05-15 09:16:36', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=159', 3, 'nav_menu_item', '', 0),
(160, 1, '2015-05-15 12:16:12', '2015-05-15 09:16:12', '', 'Sales models', 'Sales models', 'publish', 'closed', 'open', '', '160', '', '', '2015-05-15 12:16:36', '2015-05-15 09:16:36', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=160', 2, 'nav_menu_item', '', 0),
(161, 1, '2015-05-15 12:16:12', '2015-05-15 09:16:12', '', 'Concept models', 'Concept models', 'publish', 'closed', 'open', '', '161', '', '', '2015-05-15 12:16:36', '2015-05-15 09:16:36', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=161', 1, 'nav_menu_item', '', 0),
(163, 1, '2015-05-15 14:50:43', '2015-05-15 11:50:43', '', 'Gallery', 'Gallery', 'publish', 'closed', 'open', '', 'gallery-2', '', '', '2015-05-20 16:10:55', '2015-05-20 13:10:55', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=163', 5, 'nav_menu_item', '', 0),
(164, 1, '2015-05-15 14:51:17', '2015-05-15 11:51:17', '', 'Gallery', 'Gallery', 'publish', 'closed', 'open', '', 'gallery', '', '', '2015-05-20 16:09:25', '2015-05-20 13:09:25', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=164', 2, 'nav_menu_item', '', 0),
(165, 1, '2015-05-20 15:38:43', '2015-05-20 12:38:43', '<strong>Build detailed, durable models with 3D printing</strong>\n\nYou can show a client a 2D drawing, even a 3D drawing, but for a client to really appreciate your design, you need to show them a 3D model. Seeing is believing – people need something they can touch and feel, something that makes it real for them.\n\nWe help architectural firms by printing 3D models of their designs, directly from CAD data (or other formats). They can be used at any stage of the project, especially at the beginning when you’re trying to sell a new concept or convey a particular idea.\n\n<strong>Advantages of 3D architectural models</strong>\n<ul>\n<li>They help your clients to visualise your concept</li>\n<li>They allow you to discuss ideas and show alternative layouts\nThey lead to better decisions – fewer alterations, faster approvals\nThey are cheaper, faster and stronger than traditional models\n</ul>\n<strong>What our clients say:</strong>\n\nI was struggling to sell a particular concept to a client recently when I realised it wasn’t my idea they disliked, they just couldn’t make the mental leap from my drawings to the real thing, they couldn’t imagine what the end product was going to look like. That’s when I called 3D Construct. Within 3 days I was back in front of my client with a 3D architectural model of their new house. In my 20 years of practice, I’ve never witnessed a more enthusiastic response. They loved it, and after 3 weeks trying to convince them with my drawings, it took just 3 minutes with your model. Thanks for a great service. I’ll be coming back for more.', 'Self builds', '', 'inherit', 'closed', 'open', '', '121-autosave-v1', '', '', '2015-05-20 15:38:43', '2015-05-20 12:38:43', '', 121, 'http://www.passionforclients.com/3dconstruct/121-autosave-v1/', 0, 'revision', '', 0),
(166, 1, '2015-05-20 15:39:13', '2015-05-20 12:39:13', '<strong>Build detailed, durable models with 3D printing</strong>\r\n\r\nYou can show a client a 2D drawing, even a 3D drawing, but for a client to really appreciate your design, you need to show them a 3D model. Seeing is believing – people need something they can touch and feel, something that makes it real for them.\r\n\r\nWe help architectural firms by printing 3D models of their designs, directly from CAD data (or other formats). They can be used at any stage of the project, especially at the beginning when you’re trying to sell a new concept or convey a particular idea.\r\n\r\n<strong>Advantages of 3D architectural models</strong>\r\n<ul>\r\n	<li>They help your clients to visualise your concept</li>\r\n	<li>They allow you to discuss ideas and show alternative layouts</li>\r\n	<li>They lead to better decisions – fewer alterations, faster approvals</li>\r\n	<li>They are cheaper, faster and stronger than traditional models</li>\r\n</ul>\r\n<strong>What our clients say:</strong>\r\n\r\nI was struggling to sell a particular concept to a client recently when I realised it wasn’t my idea they disliked, they just couldn’t make the mental leap from my drawings to the real thing, they couldn’t imagine what the end product was going to look like. That’s when I called 3D Construct. Within 3 days I was back in front of my client with a 3D architectural model of their new house. In my 20 years of practice, I’ve never witnessed a more enthusiastic response. They loved it, and after 3 weeks trying to convince them with my drawings, it took just 3 minutes with your model. Thanks for a great service. I’ll be coming back for more.', 'Self builds', '', 'inherit', 'closed', 'open', '', '121-revision-v1', '', '', '2015-05-20 15:39:13', '2015-05-20 12:39:13', '', 121, 'http://www.passionforclients.com/3dconstruct/121-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2015-05-20 15:41:10', '2015-05-20 12:41:10', '<strong>Fast &amp; affordable 3D printed solutions</strong>\r\n\r\nIf you’re a third level student in architecture, engineering or construction, there’s a good chance that you’ll need a 3D printed model for your major project. If so, we can help bring your ideas to life and impress your lecturers and fellow students. Not only do they add an extra dimension to your project but they also add a certain wow factor.\r\n\r\nOur 3D printed models are excellent quality and very affordable. They can be single or full colour and range from something as simple as a garden shed to something as complex as a football stadium, the possibilities are endless. It only takes a couple of days to make, and once complete, we will package it securely and courier it to you.\r\n\r\n<strong>What our clients say:</strong>\r\n\r\nThe model arrived this morning and it looks fantastic. I can’t wait to show it to my lecturer and classmates. Thank you so much for turning my CAD drawings into something amazing! It’s something I’ll cherish for years and will hopefully be the first of many as I pursue a career in architecture.', 'Students', '', 'inherit', 'closed', 'open', '', '102-revision-v1', '', '', '2015-05-20 15:41:10', '2015-05-20 12:41:10', '', 102, 'http://www.passionforclients.com/3dconstruct/102-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2015-05-20 15:41:55', '2015-05-20 12:41:55', '<strong>Touch it and feel it before you build it</strong>\r\n\r\nBuilding your own house can be very exciting, but also very nerve wracking. There’s a lot at stake and you can’t afford to get it wrong, especially when money is tight. Sometimes it helps to take a step back after the plans are drawn up to make sure it’s what you want and that it meets all the criteria. This is where a 3D model can prove very useful. Whether it’s a new build, extension or renovation, it allows you to see what it will look like before you go ahead and build it.\r\n\r\n<strong>Advantages of 3D printed models</strong>\r\n<ul>\r\n	<li>You can remove the roof and look inside</li>\r\n	<li>You get a sense of size and space</li>\r\n	<li>You can test the orientation/light</li>\r\n	<li>You can experiment with different room layouts</li>\r\n	<li>Very good value, and extremely quick</li>\r\n</ul>\r\n<strong>What our clients say:</strong>\r\n\r\n“We used 3D Construct after our architect showed us the plans for our new extension. We found it difficult to visualise the layout from the drawings so we emailed them to Diarmuid, paid him by credit card over the phone and four days later the model arrived by post. This was all done prior to lodging our planning application and gave us a much better idea of the extension layout. We were able to remove the roof and view the internal layout which allowed us to study the position of radiators, windows, sofas etc. After receiving the 3D model, we asked our architect to make a few changes prior to lodging our application. We found the team at 3D Construct great to deal with and the results were fantastic. The cost of the 3D model was very small in the grand scheme of things and gave us a lot of confidence and peace of mind.', 'Self builds', '', 'inherit', 'closed', 'open', '', '121-revision-v1', '', '', '2015-05-20 15:41:55', '2015-05-20 12:41:55', '', 121, 'http://www.passionforclients.com/3dconstruct/121-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2015-05-20 15:44:44', '2015-05-20 12:44:44', ' ', '', 'Self builds', 'publish', 'closed', 'open', '', '169', '', '', '2015-05-20 16:09:25', '2015-05-20 13:09:25', '', 74, 'http://www.passionforclients.com/3dconstruct/?p=169', 5, 'nav_menu_item', '', 0),
(170, 1, '2015-05-20 15:44:44', '2015-05-20 12:44:44', ' ', '', 'Students', 'publish', 'closed', 'open', '', '170', '', '', '2015-05-20 16:09:25', '2015-05-20 13:09:25', '', 74, 'http://www.passionforclients.com/3dconstruct/?p=170', 6, 'nav_menu_item', '', 0),
(171, 1, '2015-05-20 16:08:53', '2015-05-20 13:08:53', 'Whether it’s a sales pitch or client meeting, a single building or city block, a 3D printed concept model is a fast and affordable way to visualise your design. Normally single colour and made of plastic resin, concept models are fast becoming the norm in architectural, engineering and construction businesses.\r\n3D printing speeds up the design process by reducing the number of steps of involved. Clients can give you better feedback, and quicker. It also leads to better outcomes because any potential issues are identified and overcome sooner.\r\nConcept models combine the precision of computer simulations with the tangibility of 3D printing. It only takes a couple of days to make, and once complete, we will package it securely and courier it to you.', 'Concept models', '', 'inherit', 'closed', 'open', '', '50-revision-v1', '', '', '2015-05-20 16:08:53', '2015-05-20 13:08:53', '', 50, 'http://www.passionforclients.com/3dconstruct/50-revision-v1/', 0, 'revision', '', 0),
(172, 1, '2015-05-20 16:10:04', '2015-05-20 13:10:04', ' ', '', '', 'publish', 'closed', 'open', '', '172', '', '', '2015-05-20 16:14:49', '2015-05-20 13:14:49', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=172', 1, 'nav_menu_item', '', 0),
(173, 1, '2015-05-20 16:13:00', '2015-05-20 13:13:00', 'A sales model is a full colour, high resolution architectural model. It is a photo realistic scale representation of your design, made to look as much like the real thing as you can get.\r\nThey can be as simple or advanced as your vision requires. They can be used for one-off houses, entire office blocks, streetscapes, cityscapes... whatever you need.\r\nColour 3D printing allows for a way to produce a coloured model with a faster turnaround and greater accuracy than a more traditional sales model, saving you time and money.', 'Sales models', '', 'publish', 'closed', 'closed', '', 'sales-models', '', '', '2015-05-20 16:14:07', '2015-05-20 13:14:07', '', 50, 'http://www.passionforclients.com/3dconstruct/?page_id=173', 4, 'page', '', 0),
(174, 1, '2015-05-20 16:13:00', '2015-05-20 13:13:00', 'A sales model is a full colour, high resolution architectural model. It is a photo realistic scale representation of your design, made to look as much like the real thing as you can get.\r\nThey can be as simple or advanced as your vision requires. They can be used for one-off houses, entire office blocks, streetscapes, cityscapes... whatever you need.\r\nColour 3D printing allows for a way to produce a coloured model with a faster turnaround and greater accuracy than a more traditional sales model, saving you time and money.', 'Sales models', '', 'inherit', 'closed', 'open', '', '173-revision-v1', '', '', '2015-05-20 16:13:00', '2015-05-20 13:13:00', '', 173, 'http://www.passionforclients.com/3dconstruct/173-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2015-05-20 16:13:36', '2015-05-20 13:13:36', 'A terrain model is a great way of depicting the topography or landscape of an area. You can cover a few square kilometres which is useful when visualising a large scale project such as a commercial development or major piece of infrastructure.\r\nWe have access to the latest 3D printing technology which means we can produce as little or as much detail as required. They can be conceptual with limited detail and colour palette or they can be highly sophisticated with full colour.', 'Terrain models', '', 'publish', 'closed', 'closed', '', 'terrain-models', '', '', '2015-05-20 16:14:16', '2015-05-20 13:14:16', '', 50, 'http://www.passionforclients.com/3dconstruct/?page_id=175', 5, 'page', '', 0),
(176, 1, '2015-05-20 16:13:36', '2015-05-20 13:13:36', 'A terrain model is a great way of depicting the topography or landscape of an area. You can cover a few square kilometres which is useful when visualising a large scale project such as a commercial development or major piece of infrastructure.\r\nWe have access to the latest 3D printing technology which means we can produce as little or as much detail as required. They can be conceptual with limited detail and colour palette or they can be highly sophisticated with full colour.', 'Terrain models', '', 'inherit', 'closed', 'open', '', '175-revision-v1', '', '', '2015-05-20 16:13:36', '2015-05-20 13:13:36', '', 175, 'http://www.passionforclients.com/3dconstruct/175-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2015-05-20 16:14:49', '2015-05-20 13:14:49', ' ', '', '', 'publish', 'closed', 'open', '', '177', '', '', '2015-05-20 16:14:49', '2015-05-20 13:14:49', '', 50, 'http://www.passionforclients.com/3dconstruct/?p=177', 3, 'nav_menu_item', '', 0),
(178, 1, '2015-05-20 16:14:49', '2015-05-20 13:14:49', ' ', '', '', 'publish', 'closed', 'open', '', '178', '', '', '2015-05-20 16:14:49', '2015-05-20 13:14:49', '', 50, 'http://www.passionforclients.com/3dconstruct/?p=178', 2, 'nav_menu_item', '', 0),
(179, 1, '2015-05-20 16:23:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'open', '', '', '', '', '2015-05-20 16:23:14', '0000-00-00 00:00:00', '', 0, 'http://www.passionforclients.com/3dconstruct/?p=179', 0, 'post', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_request_callback`
#

DROP TABLE IF EXISTS `wp_request_callback`;


#
# Table structure of table `wp_request_callback`
#

CREATE TABLE `wp_request_callback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `valid` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


#
# Data contents of table `wp_request_callback`
#
INSERT INTO `wp_request_callback` ( `id`, `name`, `phone`, `date`, `valid`) VALUES
(1, 'test', '123321', '2015-05-25 15:11:01', 1),
(2, 'alex test', '23423423', '2015-05-25 15:11:09', 1) ;

#
# End of data contents of table `wp_request_callback`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(42, 2, 0),
(60, 2, 0),
(61, 2, 0),
(64, 2, 0),
(65, 2, 0),
(66, 2, 0),
(69, 3, 0),
(72, 3, 0),
(82, 3, 0),
(84, 4, 0),
(85, 5, 0),
(86, 5, 0),
(107, 6, 0),
(109, 6, 0),
(119, 2, 0),
(123, 6, 0),
(129, 1, 0),
(131, 1, 0),
(133, 1, 0),
(135, 7, 0),
(159, 8, 0),
(160, 8, 0),
(161, 8, 0),
(163, 2, 0),
(164, 3, 0),
(169, 3, 0),
(170, 3, 0),
(172, 9, 0),
(177, 9, 0),
(178, 9, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 8),
(3, 3, 'nav_menu', '', 0, 6),
(4, 4, 'post_tag', '', 0, 1),
(5, 5, 'post_tag', '', 0, 2),
(6, 6, 'nav_menu', '', 0, 3),
(7, 7, 'nav_menu', '', 0, 1),
(8, 8, 'nav_menu', '', 0, 3),
(9, 9, 'nav_menu', '', 0, 3) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header menu', 'header-menu', 0),
(3, 'Home panel', 'home-panel', 0),
(4, 'Managing Director', 'managing-director', 0),
(5, 'Architect/3D Printer', 'architect3d-printer', 0),
(6, 'Sectors', 'sectors', 0),
(7, 'Blog', 'blog', 0),
(8, 'Gallery', 'gallery', 0),
(9, 'Services', 'services', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '0'),
(14, 1, 'session_tokens', 'a:1:{s:64:"028c3e093244105c62cf641c50005f9ab419966ef91bf14aa4eb939c1ceec543";a:4:{s:10:"expiration";i:1432710454;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.65 Safari/537.36";s:5:"login";i:1432537654;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '179'),
(16, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(17, 1, 'metaboxhidden_dashboard', 'a:3:{i:0;s:18:"dashboard_activity";i:1;s:21:"dashboard_quick_press";i:2;s:17:"dashboard_primary";}'),
(18, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse&editor=tinymce&hidetb=1'),
(19, 1, 'wp_user-settings-time', '1431674108'),
(20, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(22, 1, 'nav_menu_recently_edited', '9') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BPXroTBFAdXoSjhr1WbBVkr0E47mss0', 'admin', 'd@construct.com', '', '2015-05-11 11:27:37', '', 0, 'admin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in
#

