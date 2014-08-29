CREATE TABLE IF NOT EXISTS `crowed_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `prod_id` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_amount` double NOT NULL,
  `preapprovalkey` varchar(255) NOT NULL,
  `correlationid` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_execution_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
=======================================================
CREATE TABLE IF NOT EXISTS `wp_cf7dbplugin_submits` (
  `submit_time` decimal(16,4) NOT NULL,
  `form_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_value` longtext CHARACTER SET utf8,
  `field_order` int(11) DEFAULT NULL,
  `file` longblob,
  KEY `submit_time_idx` (`submit_time`),
  KEY `form_name_idx` (`form_name`),
  KEY `field_name_idx` (`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
=======================================================
CREATE TABLE IF NOT EXISTS `wp_cntctfrm_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(100) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;
=======================================================
INSERT INTO `wp_cntctfrm_field` (`id`, `name`) VALUES
(1, 'name'),
(2, 'email'),
(3, 'subject'),
(4, 'message'),
(5, 'address'),
(6, 'phone'),
(7, 'attachment'),
(8, 'attachment_explanations'),
(9, 'send_copy'),
(10, 'sent_from'),
(11, 'date_time'),
(12, 'coming_from'),
(13, 'user_agent');
=======================================================
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
=======================================================
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;
=======================================================
INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://wordpress.org/', '', '2014-07-08 11:31:43', '2014-07-08 11:31:43', 'Hi, this is a comment.\r\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);
=======================================================
CREATE TABLE IF NOT EXISTS `wp_cust_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(100) NOT NULL,
  `to` varchar(100) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
=======================================================
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
=======================================================
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4140 ;
=======================================================
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://teecircle.com', 'yes'),
(2, 'blogname', '', 'yes'),
(3, 'blogdescription', '', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'nabanita.c@candeotech.net', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '0', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'F j, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '/%postname%/', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:7:{i:0;s:19:"arnab-faq/index.php";i:1;s:15:"arnab/index.php";i:2;s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";i:3;s:36:"contact-form-7/wp-contact-form-7.php";i:4;s:27:"nabanita-campaign/index.php";i:5;s:25:"nabanita-payoff/index.php";i:6;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(36, 'home', 'http://teecircle.com', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '0', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', '', 'no'),
(44, 'template', 'teecircle', 'yes'),
(45, 'stylesheet', 'teecircle', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '26692', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:0:{}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:1:{s:36:"contact-form-plugin/contact_form.php";s:23:"cntctfrm_delete_options";}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '4', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '26691', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:115:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:3:{s:4:"read";b:1;s:10:"edit_posts";b:0;s:12:"delete_posts";b:0;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:92:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:8:{i:1404822808;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1404848040;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1404857044;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1404862408;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1404864000;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1404900463;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1404902072;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(129, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1389176828;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(130, 'current_theme', 'TeeCircle', 'yes'),
(131, 'theme_mods_twentythirteen', 'a:4:{i:0;b:0;s:16:"header_textcolor";s:6:"220e10";s:12:"header_image";s:13:"remove-header";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1393231448;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}}}}', 'yes'),
(132, 'theme_switched', '', 'yes'),
(136, 'recently_activated', 'a:0:{}', 'yes'),
(137, 'theme_mods_twentytwelve', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1389177165;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";N;}}}', 'yes'),
(148, 'woocommerce_default_country', 'GB', 'yes'),
(149, 'woocommerce_currency', 'USD', 'yes'),
(150, 'woocommerce_allowed_countries', 'all', 'yes'),
(151, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(152, 'woocommerce_demo_store', 'no', 'yes'),
(153, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes — no orders shall be fulfilled.', 'yes'),
(154, 'woocommerce_enable_coupons', 'no', 'yes'),
(155, 'woocommerce_enable_guest_checkout', 'yes', 'yes'),
(156, 'woocommerce_enable_order_comments', 'yes', 'yes'),
(157, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(158, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(159, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'yes'),
(160, 'woocommerce_enable_myaccount_registration', 'yes', 'yes'),
(161, 'woocommerce_registration_email_for_username', 'yes', 'yes'),
(162, 'woocommerce_lock_down_admin', 'yes', 'yes'),
(163, 'woocommerce_clear_cart_on_logout', 'no', 'yes'),
(164, 'woocommerce_allow_customers_to_reorder', 'yes', 'yes'),
(165, 'woocommerce_frontend_css', 'yes', 'yes'),
(166, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(167, 'woocommerce_enable_chosen', 'yes', 'yes'),
(168, 'woocommerce_file_download_method', 'force', 'yes'),
(169, 'woocommerce_downloads_require_login', 'no', 'yes'),
(170, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'yes'),
(171, 'woocommerce_shop_page_id', '7', 'yes'),
(172, 'woocommerce_terms_page_id', '', 'yes'),
(173, 'woocommerce_cart_page_id', '8', 'yes'),
(174, 'woocommerce_checkout_page_id', '9', 'yes'),
(175, 'woocommerce_pay_page_id', '16', 'yes'),
(176, 'woocommerce_thanks_page_id', '17', 'yes'),
(177, 'woocommerce_myaccount_page_id', '10', 'yes'),
(178, 'woocommerce_edit_address_page_id', '12', 'yes'),
(179, 'woocommerce_view_order_page_id', '13', 'yes'),
(180, 'woocommerce_change_password_page_id', '14', 'yes'),
(181, 'woocommerce_logout_page_id', '15', 'yes'),
(182, 'woocommerce_lost_password_page_id', '11', 'yes'),
(183, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(184, 'woocommerce_shop_page_display', '', 'yes'),
(185, 'woocommerce_category_archive_display', '', 'yes'),
(186, 'woocommerce_cart_redirect_after_add', 'yes', 'yes'),
(187, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(188, 'woocommerce_enable_sku', 'yes', 'yes'),
(189, 'woocommerce_enable_weight', 'no', 'yes'),
(190, 'woocommerce_enable_dimensions', 'no', 'yes'),
(191, 'woocommerce_enable_dimension_product_attributes', 'no', 'yes'),
(192, 'woocommerce_weight_unit', 'kg', 'yes'),
(193, 'woocommerce_dimension_unit', 'cm', 'yes'),
(194, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(195, 'woocommerce_review_rating_required', 'yes', 'yes'),
(196, 'woocommerce_review_rating_verification_label', 'yes', 'yes'),
(197, 'woocommerce_currency_pos', 'left', 'yes'),
(198, 'woocommerce_price_thousand_sep', ',', 'yes'),
(199, 'woocommerce_price_decimal_sep', '.', 'yes'),
(200, 'woocommerce_price_num_decimals', '2', 'yes'),
(201, 'woocommerce_price_trim_zeros', 'yes', 'yes'),
(202, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:4:"crop";i:1;}', 'yes'),
(203, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(204, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:2:"90";s:6:"height";s:2:"90";s:4:"crop";i:1;}', 'yes'),
(205, 'woocommerce_manage_stock', 'yes', 'yes'),
(206, 'woocommerce_hold_stock_minutes', '60', 'yes'),
(207, 'woocommerce_notify_low_stock', 'yes', 'yes'),
(208, 'woocommerce_notify_no_stock', 'yes', 'yes'),
(209, 'woocommerce_stock_email_recipient', 'nabanita.c@candeotech.net', 'yes'),
(210, 'woocommerce_notify_low_stock_amount', '2', 'yes'),
(211, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(212, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(213, 'woocommerce_stock_format', '', 'yes'),
(214, 'woocommerce_calc_shipping', 'yes', 'yes'),
(215, 'woocommerce_enable_shipping_calc', 'no', 'yes'),
(216, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(217, 'woocommerce_shipping_method_format', '', 'yes'),
(218, 'woocommerce_ship_to_billing_address_only', 'no', 'yes'),
(219, 'woocommerce_ship_to_same_address', 'yes', 'yes'),
(220, 'woocommerce_require_shipping_address', 'no', 'yes'),
(221, 'woocommerce_calc_taxes', 'no', 'yes'),
(222, 'woocommerce_prices_include_tax', 'no', 'yes'),
(223, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(224, 'woocommerce_default_customer_address', 'base', 'yes'),
(225, 'woocommerce_shipping_tax_class', 'title', 'yes'),
(226, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(227, 'woocommerce_tax_classes', 'Reduced Rate\r\nZero Rate', 'yes'),
(228, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(229, 'woocommerce_email_from_name', 'TeeCircle', 'yes'),
(230, 'woocommerce_email_from_address', 'nabanita.c@candeotech.net', 'yes'),
(231, 'woocommerce_email_header_image', '', 'yes'),
(232, 'woocommerce_email_footer_text', 'TeeCircle - Powered by WooCommerce', 'yes'),
(233, 'woocommerce_email_base_color', '#557da1', 'yes'),
(234, 'woocommerce_email_background_color', '#f5f5f5', 'yes'),
(235, 'woocommerce_email_body_background_color', '#fdfdfd', 'yes'),
(236, 'woocommerce_email_text_color', '#505050', 'yes'),
(239, 'woocommerce_db_version', '2.0.20', 'yes'),
(240, 'woocommerce_version', '2.0.20', 'yes'),
(243, '_transient_random_seed', 'c7542cc7843533553490aeb3095af4df', 'yes'),
(247, 'slurp_page_installed', '1', 'yes'),
(248, 'woocommerce_frontend_css_colors', 'a:5:{s:7:"primary";s:7:"#ad74a2";s:9:"secondary";s:7:"#f7f6f7";s:9:"highlight";s:7:"#85ad74";s:10:"content_bg";s:7:"#ffffff";s:7:"subtext";s:7:"#777777";}', 'yes'),
(256, 'woocommerce_permalinks', 'a:4:{s:13:"category_base";s:0:"";s:8:"tag_base";s:0:"";s:14:"attribute_base";s:0:"";s:12:"product_base";s:0:"";}', 'yes'),
(260, 'theme_mods_teecircle', 'a:3:{i:0;b:0;s:16:"header_textcolor";s:6:"220e10";s:12:"header_image";s:13:"remove-header";}', 'yes'),
(261, 'woocommerce_theme_support_check', 'teecircle', 'yes'),
(270, 'woocommerce_errors', '', 'yes'),
(655, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:25:"nabanita.c@candeotech.net";s:7:"version";s:5:"3.8.3";s:9:"timestamp";i:1397535705;}', 'yes'),
(710, 'category_children', 'a:0:{}', 'yes'),
(771, 'faq_category_children', 'a:0:{}', 'yes'),
(804, 'CF7DBPlugin_NoSaveFields', '/.*wpcf7.*/,_wpnonce', 'yes'),
(805, 'CF7DBPlugin__version', '2.6.3', 'yes'),
(806, 'CF7DBPlugin__installed', '1', 'yes'),
(807, 'wpcf7', 'a:1:{s:7:"version";s:3:"3.7";}', 'yes'),
(913, '_wc_session_expires_SY8vZs4kHpyfIFYcju4lHTxQp3OIttss', '1392358916', 'yes'),
(937, '_wc_session_expires_WNZVB8sr2sjtsy9QMDUenO0xOaUG43kX', '1392377992', 'yes'),
(1335, 'pa_size_children', 'a:0:{}', 'yes'),
(1528, 'product_cat_children', 'a:0:{}', 'yes'),
(1720, 'woocommerce_paypal_settings', 'a:14:{s:7:"enabled";s:3:"yes";s:5:"title";s:6:"PayPal";s:11:"description";s:84:"Pay via PayPal; you can pay with your credit card if you don''t have a PayPal account";s:5:"email";s:36:"nabani_1357717727_biz@candeotech.net";s:14:"receiver_email";s:36:"nabani_1357717727_biz@candeotech.net";s:14:"invoice_prefix";s:3:"WC-";s:22:"form_submission_method";s:2:"no";s:10:"page_style";s:0:"";s:8:"shipping";s:0:"";s:13:"send_shipping";s:2:"no";s:16:"address_override";s:3:"yes";s:7:"testing";s:0:"";s:8:"testmode";s:3:"yes";s:5:"debug";s:3:"yes";}', 'yes'),
(1724, 'woocommerce_default_gateway', 'paypal', 'yes'),
(1725, 'woocommerce_gateway_order', 'a:5:{s:4:"bacs";i:0;s:6:"cheque";i:1;s:3:"cod";i:2;s:16:"mijireh_checkout";i:3;s:6:"paypal";i:4;}', 'yes'),
(1729, 'woocommerce_bacs_settings', 'a:10:{s:7:"enabled";s:2:"no";s:5:"title";s:20:"Direct Bank Transfer";s:11:"description";s:172:"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order wont be shipped until the funds have cleared in our account.";s:15:"account_details";s:0:"";s:12:"account_name";s:0:"";s:14:"account_number";s:0:"";s:9:"sort_code";s:0:"";s:9:"bank_name";s:0:"";s:4:"iban";s:0:"";s:3:"bic";s:0:"";}', 'yes'),
(1733, 'woocommerce_cheque_settings', 'a:3:{s:7:"enabled";s:2:"no";s:5:"title";s:14:"Cheque Payment";s:11:"description";s:102:"Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.";}', 'yes'),
(2064, 'pa_style_children', 'a:0:{}', 'yes'),
(3038, 'db_upgraded', '', 'yes'),
(3039, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-3.9.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-3.9.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-3.9.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-3.9.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"3.9.1";s:7:"version";s:5:"3.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-3.9.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-3.9.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-3.9.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-3.9.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"3.9.1";s:7:"version";s:5:"3.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":10:{s:8:"response";s:10:"autoupdate";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-3.9.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-3.9.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"3.9";s:7:"version";s:3:"3.9";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1404819128;s:15:"version_checked";s:5:"3.8.3";s:12:"translations";a:0:{}}', 'yes'),
(3096, 'woocommerce_international_delivery_settings', 'a:9:{s:7:"enabled";s:2:"no";s:5:"title";s:8:"Shipping";s:12:"availability";s:9:"excluding";s:9:"countries";s:0:"";s:10:"tax_status";s:4:"none";s:4:"type";s:5:"class";s:4:"cost";s:5:"10.50";s:3:"fee";s:0:"";s:11:"minimum_fee";s:0:"";}', 'yes'),
(3097, 'woocommerce_international_delivery_flat_rates', 'a:0:{}', 'yes'),
(3185, 'pa_color_children', 'a:0:{}', 'yes'),
(3602, 'woocommerce_default_shipping_method', 'flat_rate', 'yes'),
(3603, 'woocommerce_shipping_method_order', 'a:5:{s:9:"flat_rate";i:0;s:13:"free_shipping";i:1;s:22:"international_delivery";i:2;s:14:"local_delivery";i:3;s:12:"local_pickup";i:4;}', 'yes'),
(3668, 'woocommerce_free_shipping_settings', 'a:6:{s:7:"enabled";s:2:"no";s:5:"title";s:13:"Free Shipping";s:12:"availability";s:3:"all";s:9:"countries";s:0:"";s:8:"requires";s:0:"";s:10:"min_amount";s:1:"0";}', 'yes'),
(3720, 'woocommerce_flat_rate_settings', 'a:13:{s:7:"enabled";s:3:"yes";s:5:"title";s:8:"Shipping";s:12:"availability";s:3:"all";s:9:"countries";s:0:"";s:10:"tax_status";s:4:"none";s:14:"cost_per_order";s:0:"";s:7:"options";s:0:"";s:16:"additional_costs";s:0:"";s:4:"type";s:4:"item";s:22:"additional_costs_table";b:0;s:11:"minimum_fee";s:0:"";s:4:"cost";s:0:"";s:3:"fee";s:0:"";}', 'yes'),
(3721, 'woocommerce_flat_rates', 'a:2:{s:18:"shipping-avaliable";a:2:{s:4:"cost";s:4:"2.00";s:3:"fee";s:0:"";}s:13:"free-shipping";a:2:{s:4:"cost";s:4:"0.00";s:3:"fee";s:0:"";}}', 'yes'),
(3757, 'product_shipping_class_children', 'a:0:{}', 'yes'),
(3813, '_transient_woocommerce_processing_order_count', '14', 'yes'),
(3936, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:5:"/cart";i:1;s:9:"/checkout";i:2;s:11:"/my-account";i:3;s:3:"p=8";i:4;s:3:"p=9";i:5;s:4:"p=10";}', 'yes'),
(4142, '_site_transient_timeout_theme_roots', '1404820909', 'yes'),
(4143, '_site_transient_theme_roots', 'a:4:{s:9:"teecircle";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes'),
(4144, '_wc_session_Ca1ZgCDiwTMK348yZzisNgbJPVRZPlGE', 'a:2:{s:6:"errors";N;s:8:"messages";N;}', 'no'),
(4145, '_wc_session_expires_Ca1ZgCDiwTMK348yZzisNgbJPVRZPlGE', '1404991914', 'no'),
(4146, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1404819119;s:7:"checked";a:8:{s:27:"nabanita-campaign/index.php";s:32:"The Plugin''s Version Number: 1.0";s:36:"contact-form-7/wp-contact-form-7.php";s:3:"3.7";s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";s:5:"2.6.3";s:19:"arnab-faq/index.php";s:32:"The Plugin''s Version Number: 1.0";s:29:"nabanita-payoff/index_old.php";s:32:"The Plugin''s Version Number: 1.0";s:25:"nabanita-payoff/index.php";s:32:"The Plugin''s Version Number: 1.0";s:15:"arnab/index.php";s:32:"The Plugin''s Version Number: 1.0";s:27:"woocommerce/woocommerce.php";s:6:"2.0.20";}s:8:"response";a:3:{s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"3.8.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.3.8.1.zip";}s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";O:8:"stdClass":6:{s:2:"id";s:5:"16507";s:4:"slug";s:36:"contact-form-7-to-database-extension";s:6:"plugin";s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";s:11:"new_version";s:5:"2.7.5";s:3:"url";s:67:"https://wordpress.org/plugins/contact-form-7-to-database-extension/";s:7:"package";s:85:"https://downloads.wordpress.org/plugin/contact-form-7-to-database-extension.2.7.5.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:6:"2.1.12";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/woocommerce.2.1.12.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(4147, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1404819119;s:7:"checked";a:4:{s:9:"teecircle";s:3:"1.1";s:14:"twentyfourteen";s:3:"1.0";s:14:"twentythirteen";s:3:"1.1";s:12:"twentytwelve";s:3:"1.3";}s:8:"response";a:3:{s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.1";s:3:"url";s:43:"https://wordpress.org/themes/twentyfourteen";s:7:"package";s:60:"https://wordpress.org/themes/download/twentyfourteen.1.1.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"1.2";s:3:"url";s:43:"https://wordpress.org/themes/twentythirteen";s:7:"package";s:60:"https://wordpress.org/themes/download/twentythirteen.1.2.zip";}s:12:"twentytwelve";a:4:{s:5:"theme";s:12:"twentytwelve";s:11:"new_version";s:3:"1.4";s:3:"url";s:41:"https://wordpress.org/themes/twentytwelve";s:7:"package";s:58:"https://wordpress.org/themes/download/twentytwelve.1.4.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(4148, '_site_transient_timeout_browser_3f947c51580a0abb6a41fc0b9411b81e', '1405423921', 'yes'),
(4149, '_site_transient_browser_3f947c51580a0abb6a41fc0b9411b81e', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"26.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(4150, 'can_compress_scripts', '0', 'yes'),
(4152, '_transient_timeout_plugin_slugs', '1404905602', 'no'),
(4153, '_transient_plugin_slugs', 'a:8:{i:0;s:27:"nabanita-campaign/index.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";i:3;s:19:"arnab-faq/index.php";i:4;s:29:"nabanita-payoff/index_old.php";i:5;s:25:"nabanita-payoff/index.php";i:6;s:15:"arnab/index.php";i:7;s:27:"woocommerce/woocommerce.php";}', 'no');
=======================================================
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(4156, 'rewrite_rules', 'a:206:{s:6:"faq/?$";s:23:"index.php?post_type=faq";s:36:"faq/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?post_type=faq&feed=$matches[1]";s:31:"faq/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?post_type=faq&feed=$matches[1]";s:23:"faq/page/([0-9]{1,})/?$";s:41:"index.php?post_type=faq&paged=$matches[1]";s:15:"testimonials/?$";s:31:"index.php?post_type=testimonial";s:45:"testimonials/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=testimonial&feed=$matches[1]";s:40:"testimonials/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=testimonial&feed=$matches[1]";s:32:"testimonials/page/([0-9]{1,})/?$";s:49:"index.php?post_type=testimonial&paged=$matches[1]";s:11:"Campaign/?$";s:28:"index.php?post_type=campaign";s:41:"Campaign/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=campaign&feed=$matches[1]";s:36:"Campaign/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=campaign&feed=$matches[1]";s:28:"Campaign/page/([0-9]{1,})/?$";s:46:"index.php?post_type=campaign&paged=$matches[1]";s:10:"Payoffs/?$";s:26:"index.php?post_type=payoff";s:40:"Payoffs/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=payoff&feed=$matches[1]";s:35:"Payoffs/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=payoff&feed=$matches[1]";s:27:"Payoffs/page/([0-9]{1,})/?$";s:44:"index.php?post_type=payoff&paged=$matches[1]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:53:"faq_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?faq_category=$matches[1]&feed=$matches[2]";s:48:"faq_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?faq_category=$matches[1]&feed=$matches[2]";s:41:"faq_category/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?faq_category=$matches[1]&paged=$matches[2]";s:23:"faq_category/([^/]+)/?$";s:34:"index.php?faq_category=$matches[1]";s:31:"faq/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"faq/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"faq/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"faq/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"faq/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:24:"faq/([^/]+)/trackback/?$";s:30:"index.php?faq=$matches[1]&tb=1";s:44:"faq/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?faq=$matches[1]&feed=$matches[2]";s:39:"faq/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?faq=$matches[1]&feed=$matches[2]";s:32:"faq/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?faq=$matches[1]&paged=$matches[2]";s:39:"faq/([^/]+)/comment-page-([0-9]{1,})/?$";s:43:"index.php?faq=$matches[1]&cpage=$matches[2]";s:24:"faq/([^/]+)(/[0-9]+)?/?$";s:42:"index.php?faq=$matches[1]&page=$matches[2]";s:20:"faq/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:30:"faq/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:50:"faq/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:"faq/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:"faq/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"testimonials/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"testimonials/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"testimonials/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"testimonials/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"testimonials/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"testimonials/([^/]+)/trackback/?$";s:38:"index.php?testimonial=$matches[1]&tb=1";s:53:"testimonials/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?testimonial=$matches[1]&feed=$matches[2]";s:48:"testimonials/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?testimonial=$matches[1]&feed=$matches[2]";s:41:"testimonials/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?testimonial=$matches[1]&paged=$matches[2]";s:48:"testimonials/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?testimonial=$matches[1]&cpage=$matches[2]";s:33:"testimonials/([^/]+)(/[0-9]+)?/?$";s:50:"index.php?testimonial=$matches[1]&page=$matches[2]";s:29:"testimonials/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"testimonials/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"testimonials/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"testimonials/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"testimonials/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"Campaign/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"Campaign/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"Campaign/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"Campaign/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"Campaign/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"Campaign/([^/]+)/trackback/?$";s:35:"index.php?campaign=$matches[1]&tb=1";s:49:"Campaign/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?campaign=$matches[1]&feed=$matches[2]";s:44:"Campaign/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?campaign=$matches[1]&feed=$matches[2]";s:37:"Campaign/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?campaign=$matches[1]&paged=$matches[2]";s:44:"Campaign/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?campaign=$matches[1]&cpage=$matches[2]";s:29:"Campaign/([^/]+)(/[0-9]+)?/?$";s:47:"index.php?campaign=$matches[1]&page=$matches[2]";s:25:"Campaign/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"Campaign/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"Campaign/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"Campaign/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"Campaign/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"Payoffs/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"Payoffs/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"Payoffs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"Payoffs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"Payoffs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"Payoffs/([^/]+)/trackback/?$";s:33:"index.php?payoff=$matches[1]&tb=1";s:48:"Payoffs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?payoff=$matches[1]&feed=$matches[2]";s:43:"Payoffs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?payoff=$matches[1]&feed=$matches[2]";s:36:"Payoffs/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?payoff=$matches[1]&paged=$matches[2]";s:43:"Payoffs/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?payoff=$matches[1]&cpage=$matches[2]";s:28:"Payoffs/([^/]+)(/[0-9]+)?/?$";s:45:"index.php?payoff=$matches[1]&page=$matches[2]";s:24:"Payoffs/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"Payoffs/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"Payoffs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"Payoffs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"Payoffs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"sociallogin/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"sociallogin/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"sociallogin/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"sociallogin/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"sociallogin/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"sociallogin/([^/]+)/trackback/?$";s:38:"index.php?sociallogin=$matches[1]&tb=1";s:40:"sociallogin/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?sociallogin=$matches[1]&paged=$matches[2]";s:47:"sociallogin/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?sociallogin=$matches[1]&cpage=$matches[2]";s:32:"sociallogin/([^/]+)(/[0-9]+)?/?$";s:50:"index.php?sociallogin=$matches[1]&page=$matches[2]";s:28:"sociallogin/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"sociallogin/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"sociallogin/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"sociallogin/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"sociallogin/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:44:"color/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pa_color=$matches[1]&feed=$matches[2]";s:39:"color/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pa_color=$matches[1]&feed=$matches[2]";s:32:"color/(.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pa_color=$matches[1]&paged=$matches[2]";s:14:"color/(.+?)/?$";s:30:"index.php?pa_color=$matches[1]";s:43:"size/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?pa_size=$matches[1]&feed=$matches[2]";s:38:"size/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?pa_size=$matches[1]&feed=$matches[2]";s:31:"size/(.+?)/page/?([0-9]{1,})/?$";s:47:"index.php?pa_size=$matches[1]&paged=$matches[2]";s:13:"size/(.+?)/?$";s:29:"index.php?pa_size=$matches[1]";s:44:"style/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pa_style=$matches[1]&feed=$matches[2]";s:39:"style/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pa_style=$matches[1]&feed=$matches[2]";s:32:"style/(.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pa_style=$matches[1]&paged=$matches[2]";s:14:"style/(.+?)/?$";s:30:"index.php?pa_style=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:28:"product/([^/]+)(/[0-9]+)?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(4157, '_transient_wc_attribute_taxonomies', 'a:3:{i:0;O:8:"stdClass":5:{s:12:"attribute_id";s:1:"2";s:14:"attribute_name";s:5:"color";s:15:"attribute_label";s:5:"Color";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";}i:1;O:8:"stdClass":5:{s:12:"attribute_id";s:1:"3";s:14:"attribute_name";s:4:"size";s:15:"attribute_label";s:4:"Size";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";}i:2;O:8:"stdClass":5:{s:12:"attribute_id";s:1:"4";s:14:"attribute_name";s:5:"style";s:15:"attribute_label";s:5:"Style";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";}}', 'yes');
=======================================================
CREATE TABLE IF NOT EXISTS `wp_payoff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `adddate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;
=======================================================
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7893 ;
=======================================================
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1397567519:1'),
(6, 10, '_edit_lock', '1394197106:1'),
(7, 19, '_edit_last', '1'),
(8, 19, '_edit_lock', '1398341044:1'),
(9, 19, '_visibility', 'visible'),
(10, 19, '_stock_status', 'instock'),
(11, 19, 'total_sales', '0'),
(12, 19, '_downloadable', 'no'),
(13, 19, '_virtual', 'no'),
(14, 19, '_product_image_gallery', '442,443'),
(15, 19, '_regular_price', '5.75'),
(16, 19, '_sale_price', ''),
(17, 19, '_purchase_note', ''),
(18, 19, '_featured', 'yes'),
(19, 19, '_weight', ''),
(20, 19, '_length', ''),
(21, 19, '_width', ''),
(22, 19, '_height', ''),
(23, 19, '_sku', 'Shirt3'),
(24, 19, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:0;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(25, 19, '_sale_price_dates_from', ''),
(26, 19, '_sale_price_dates_to', ''),
(27, 19, '_price', '5.75'),
(28, 19, '_sold_individually', ''),
(29, 19, '_stock', ''),
(30, 19, '_backorders', 'no'),
(31, 19, '_manage_stock', 'no'),
(32, 20, '_edit_last', '1'),
(33, 20, '_edit_lock', '1397472940:1'),
(34, 20, '_visibility', 'visible'),
(35, 20, '_stock_status', 'instock'),
(36, 20, 'total_sales', '0'),
(37, 20, '_downloadable', 'no'),
(38, 20, '_virtual', 'no'),
(39, 20, '_product_image_gallery', '512,514'),
(40, 20, '_regular_price', '7.37'),
(41, 20, '_sale_price', ''),
(42, 20, '_purchase_note', ''),
(43, 20, '_featured', 'no'),
(44, 20, '_weight', ''),
(45, 20, '_length', ''),
(46, 20, '_width', ''),
(47, 20, '_height', ''),
(48, 20, '_sku', 'Shirt2'),
(49, 20, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:0;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(50, 20, '_sale_price_dates_from', ''),
(51, 20, '_sale_price_dates_to', ''),
(52, 20, '_price', '7.37'),
(53, 20, '_sold_individually', ''),
(54, 20, '_stock', ''),
(55, 20, '_backorders', 'no'),
(56, 20, '_manage_stock', 'no'),
(57, 21, '_edit_last', '1'),
(58, 21, '_edit_lock', '1397464268:1'),
(59, 21, '_visibility', 'visible'),
(60, 21, '_stock_status', 'instock'),
(61, 21, 'total_sales', '1'),
(62, 21, '_downloadable', 'no'),
(63, 21, '_virtual', 'no'),
(64, 21, '_product_image_gallery', '445,444'),
(65, 21, '_regular_price', '8.17'),
(66, 21, '_sale_price', ''),
(67, 21, '_purchase_note', ''),
(68, 21, '_featured', 'no'),
(69, 21, '_weight', ''),
(70, 21, '_length', ''),
(71, 21, '_width', ''),
(72, 21, '_height', ''),
(73, 21, '_sku', 'Shirt1'),
(74, 21, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:0;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(75, 21, '_sale_price_dates_from', ''),
(76, 21, '_sale_price_dates_to', ''),
(77, 21, '_price', '8.17'),
(78, 21, '_sold_individually', ''),
(79, 21, '_stock', ''),
(80, 21, '_backorders', 'no'),
(81, 21, '_manage_stock', 'no'),
(82, 22, '_edit_last', '1'),
(83, 22, '_edit_lock', '1397464359:1'),
(84, 22, '_visibility', 'visible'),
(85, 22, '_stock_status', 'instock'),
(86, 22, 'total_sales', '0'),
(87, 22, '_downloadable', 'no'),
(88, 22, '_virtual', 'no'),
(89, 22, '_product_image_gallery', ''),
(90, 22, '_regular_price', '7.00'),
(91, 22, '_sale_price', ''),
(92, 22, '_purchase_note', ''),
(93, 22, '_featured', 'no'),
(94, 22, '_weight', ''),
(95, 22, '_length', ''),
(96, 22, '_width', ''),
(97, 22, '_height', ''),
(98, 22, '_sku', 'Shirt4'),
(99, 22, '_product_attributes', 'a:0:{}'),
(100, 22, '_sale_price_dates_from', ''),
(101, 22, '_sale_price_dates_to', ''),
(102, 22, '_price', '7.00'),
(103, 22, '_sold_individually', ''),
(104, 22, '_stock', '10'),
(105, 22, '_backorders', 'no'),
(106, 22, '_manage_stock', 'no'),
(107, 23, '_edit_last', '1'),
(108, 23, '_edit_lock', '1394019860:1'),
(109, 23, '_visibility', 'visible'),
(110, 23, '_stock_status', 'instock'),
(111, 23, 'total_sales', '0'),
(112, 23, '_downloadable', 'no'),
(113, 23, '_virtual', 'no'),
(114, 23, '_product_image_gallery', ''),
(115, 23, '_regular_price', '7.90'),
(116, 23, '_sale_price', ''),
(117, 23, '_purchase_note', ''),
(118, 23, '_featured', 'yes'),
(119, 23, '_weight', ''),
(120, 23, '_length', ''),
(121, 23, '_width', ''),
(122, 23, '_height', ''),
(123, 23, '_sku', 'Shirt5'),
(124, 23, '_product_attributes', 'a:0:{}'),
(125, 23, '_sale_price_dates_from', ''),
(126, 23, '_sale_price_dates_to', ''),
(127, 23, '_price', '7.90'),
(128, 23, '_sold_individually', ''),
(129, 23, '_stock', '10'),
(130, 23, '_backorders', 'no'),
(131, 23, '_manage_stock', 'no'),
(132, 24, '_edit_last', '1'),
(133, 24, '_edit_lock', '1394021368:1'),
(134, 24, '_visibility', 'visible'),
(135, 24, '_stock_status', 'instock'),
(136, 24, 'total_sales', '0'),
(137, 24, '_downloadable', 'no'),
(138, 24, '_virtual', 'no'),
(139, 24, '_product_image_gallery', ''),
(140, 24, '_regular_price', '6.89'),
(141, 24, '_sale_price', ''),
(142, 24, '_purchase_note', ''),
(143, 24, '_featured', 'yes'),
(144, 24, '_weight', ''),
(145, 24, '_length', ''),
(146, 24, '_width', ''),
(147, 24, '_height', ''),
(148, 24, '_sku', 'Shirt6'),
(149, 24, '_product_attributes', 'a:0:{}'),
(150, 24, '_sale_price_dates_from', ''),
(151, 24, '_sale_price_dates_to', ''),
(152, 24, '_price', '6.89'),
(153, 24, '_sold_individually', ''),
(154, 24, '_stock', '10'),
(155, 24, '_backorders', 'no'),
(156, 24, '_manage_stock', 'no'),
(157, 25, '_edit_last', '1'),
(158, 25, '_edit_lock', '1397470531:1'),
(159, 25, '_visibility', 'visible'),
(160, 25, '_stock_status', 'instock'),
(161, 25, 'total_sales', '0'),
(162, 25, '_downloadable', 'no'),
(163, 25, '_virtual', 'no'),
(164, 25, '_product_image_gallery', '524,525'),
(165, 25, '_regular_price', '7.50'),
(166, 25, '_sale_price', ''),
(167, 25, '_purchase_note', ''),
(168, 25, '_featured', 'yes'),
(169, 25, '_weight', ''),
(170, 25, '_length', ''),
(171, 25, '_width', ''),
(172, 25, '_height', ''),
(173, 25, '_sku', 'Shirt7'),
(174, 25, '_product_attributes', 'a:0:{}'),
(175, 25, '_sale_price_dates_from', ''),
(176, 25, '_sale_price_dates_to', ''),
(177, 25, '_price', '7.50'),
(178, 25, '_sold_individually', ''),
(179, 25, '_stock', ''),
(180, 25, '_backorders', 'no'),
(181, 25, '_manage_stock', 'no'),
(182, 26, '_edit_last', '1'),
(183, 26, '_edit_lock', '1397472760:1'),
(184, 26, '_visibility', 'visible'),
(185, 26, '_stock_status', 'instock'),
(186, 26, 'total_sales', '0'),
(187, 26, '_downloadable', 'no'),
(188, 26, '_virtual', 'no'),
(189, 26, '_product_image_gallery', '522,523'),
(190, 26, '_regular_price', '8.50'),
(191, 26, '_sale_price', ''),
(192, 26, '_purchase_note', ''),
(193, 26, '_featured', 'no'),
(194, 26, '_weight', ''),
(195, 26, '_length', ''),
(196, 26, '_width', ''),
(197, 26, '_height', ''),
(198, 26, '_product_attributes', 'a:0:{}'),
(199, 26, '_sale_price_dates_from', ''),
(200, 26, '_sale_price_dates_to', ''),
(201, 26, '_price', '8.50'),
(202, 26, '_sold_individually', ''),
(203, 26, '_stock', ''),
(204, 26, '_backorders', 'no'),
(205, 26, '_manage_stock', 'no'),
(206, 27, '_edit_last', '1'),
(207, 27, '_edit_lock', '1397471026:1'),
(208, 27, '_visibility', 'visible'),
(209, 27, '_stock_status', 'instock'),
(210, 27, 'total_sales', '0'),
(211, 27, '_downloadable', 'no'),
(212, 27, '_virtual', 'no'),
(213, 27, '_product_image_gallery', ''),
(214, 27, '_regular_price', '6.73'),
(215, 27, '_sale_price', ''),
(216, 27, '_purchase_note', ''),
(217, 27, '_featured', 'no'),
(218, 27, '_weight', ''),
(219, 27, '_length', ''),
(220, 27, '_width', ''),
(221, 27, '_height', ''),
(222, 27, '_sku', 'Shirt9'),
(223, 27, '_product_attributes', 'a:0:{}'),
(224, 27, '_sale_price_dates_from', ''),
(225, 27, '_sale_price_dates_to', ''),
(226, 27, '_price', '6.73'),
(227, 27, '_sold_individually', ''),
(228, 27, '_stock', ''),
(229, 27, '_backorders', 'no'),
(230, 27, '_manage_stock', 'no'),
(231, 28, '_edit_last', '1'),
(232, 28, '_edit_lock', '1397470818:1'),
(233, 28, '_visibility', 'visible'),
(234, 28, '_stock_status', 'instock'),
(235, 28, 'total_sales', '0'),
(236, 28, '_downloadable', 'no'),
(237, 28, '_virtual', 'no'),
(238, 28, '_product_image_gallery', '526,527'),
(239, 28, '_regular_price', '7.19'),
(240, 28, '_sale_price', ''),
(241, 28, '_purchase_note', ''),
(242, 28, '_featured', 'no'),
(243, 28, '_weight', ''),
(244, 28, '_length', ''),
(246, 28, '_height', ''),
(247, 28, '_product_attributes', 'a:0:{}'),
(248, 28, '_sale_price_dates_from', ''),
(249, 28, '_sale_price_dates_to', ''),
(250, 28, '_price', '7.19'),
(251, 28, '_sold_individually', ''),
(252, 28, '_stock', ''),
(253, 28, '_backorders', 'no'),
(254, 28, '_manage_stock', 'no'),
(255, 29, '_edit_last', '1'),
(256, 29, '_edit_lock', '1397471785:1'),
(257, 29, '_visibility', 'visible'),
(258, 29, '_stock_status', 'instock'),
(259, 29, 'total_sales', '0'),
(260, 29, '_downloadable', 'no'),
(261, 29, '_virtual', 'no'),
(262, 29, '_product_image_gallery', '534,535'),
(263, 29, '_regular_price', '8.99'),
(264, 29, '_sale_price', ''),
(265, 29, '_purchase_note', ''),
(266, 29, '_featured', 'yes'),
(267, 29, '_weight', ''),
(268, 29, '_length', ''),
(269, 29, '_width', ''),
(270, 29, '_height', ''),
(271, 29, '_sku', 'Shirt11'),
(272, 29, '_product_attributes', 'a:0:{}'),
(273, 29, '_sale_price_dates_from', ''),
(274, 29, '_sale_price_dates_to', ''),
(275, 29, '_price', '8.99'),
(276, 29, '_sold_individually', ''),
(277, 29, '_stock', ''),
(278, 29, '_backorders', 'no'),
(279, 29, '_manage_stock', 'no'),
(280, 30, '_edit_last', '1'),
(281, 30, '_edit_lock', '1397477877:1'),
(282, 30, '_visibility', 'visible'),
(283, 30, '_stock_status', 'instock'),
(284, 30, 'total_sales', '0'),
(285, 30, '_downloadable', 'no'),
(286, 30, '_virtual', 'no'),
(287, 30, '_product_image_gallery', '530,531'),
(288, 30, '_regular_price', '9.99'),
(289, 30, '_sale_price', ''),
(290, 30, '_purchase_note', ''),
(291, 30, '_featured', 'no'),
(292, 30, '_weight', ''),
(293, 30, '_length', ''),
(294, 30, '_width', ''),
(295, 30, '_height', ''),
(296, 30, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:0;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(297, 30, '_sale_price_dates_from', ''),
(298, 30, '_sale_price_dates_to', ''),
(299, 30, '_price', '9.99'),
(300, 30, '_sold_individually', ''),
(301, 30, '_stock', ''),
(302, 30, '_backorders', 'no'),
(303, 30, '_manage_stock', 'no'),
(304, 31, '_edit_last', '1'),
(305, 31, '_edit_lock', '1397472797:1'),
(306, 31, '_visibility', 'visible'),
(307, 31, '_stock_status', 'instock'),
(308, 31, 'total_sales', '0'),
(309, 31, '_downloadable', 'no'),
(310, 31, '_virtual', 'no'),
(311, 31, '_product_image_gallery', '518,519'),
(312, 31, '_regular_price', '16.03'),
(313, 31, '_sale_price', ''),
(314, 31, '_purchase_note', ''),
(315, 31, '_featured', 'no'),
(316, 31, '_weight', ''),
(317, 31, '_length', ''),
(318, 31, '_width', ''),
(319, 31, '_height', ''),
(320, 31, '_sku', 'Shirt13'),
(321, 31, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:1;}}'),
(322, 31, '_sale_price_dates_from', ''),
(323, 31, '_sale_price_dates_to', ''),
(324, 31, '_price', '16.03'),
(325, 31, '_sold_individually', ''),
(326, 31, '_stock', ''),
(327, 31, '_backorders', 'no'),
(328, 31, '_manage_stock', 'no'),
(329, 32, '_edit_last', '1'),
(330, 32, '_edit_lock', '1397472849:1'),
(331, 32, '_visibility', 'visible'),
(332, 32, '_stock_status', 'instock'),
(333, 32, 'total_sales', '0'),
(334, 32, '_downloadable', 'no'),
(335, 32, '_virtual', 'no'),
(336, 32, '_product_image_gallery', '520,521'),
(337, 32, '_regular_price', '19.91'),
(338, 32, '_sale_price', ''),
(339, 32, '_purchase_note', ''),
(340, 32, '_featured', 'no'),
(341, 32, '_weight', ''),
(342, 32, '_length', ''),
(343, 32, '_width', ''),
(344, 32, '_height', ''),
(345, 32, '_sku', 'Shirt14'),
(346, 32, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(347, 32, '_sale_price_dates_from', ''),
(348, 32, '_sale_price_dates_to', ''),
(349, 32, '_price', '19.91'),
(350, 32, '_sold_individually', ''),
(351, 32, '_stock', ''),
(352, 32, '_backorders', 'no'),
(353, 32, '_manage_stock', 'no'),
(354, 33, '_edit_last', '1'),
(355, 33, '_edit_lock', '1397472710:1'),
(356, 33, '_visibility', 'visible'),
(357, 33, '_stock_status', 'instock'),
(358, 33, 'total_sales', '0'),
(359, 33, '_downloadable', 'no'),
(360, 33, '_virtual', 'no'),
(361, 33, '_product_image_gallery', '515,516'),
(362, 33, '_regular_price', '14'),
(363, 33, '_sale_price', ''),
(364, 33, '_purchase_note', ''),
(365, 33, '_featured', 'no'),
(366, 33, '_weight', ''),
(367, 33, '_length', ''),
(368, 33, '_width', ''),
(369, 33, '_height', ''),
(370, 33, '_sku', 'Shirt15'),
(371, 33, '_product_attributes', 'a:0:{}'),
(372, 33, '_sale_price_dates_from', ''),
(373, 33, '_sale_price_dates_to', ''),
(374, 33, '_price', '14'),
(375, 33, '_sold_individually', ''),
(376, 33, '_stock', ''),
(377, 33, '_backorders', 'no'),
(378, 33, '_manage_stock', 'no'),
(379, 26, '_sku', 'Shirt8'),
(380, 28, '_sku', 'Shirt10'),
(381, 30, '_sku', 'Shirt12'),
(382, 34, '_edit_last', '1'),
(383, 34, '_edit_lock', '1397557125:1'),
(384, 34, '_wp_page_template', 'design.php'),
(385, 4, '_wp_page_template', 'home.php'),
(386, 38, '_edit_last', '1'),
(387, 38, '_wp_page_template', 'ajax.php'),
(388, 38, '_edit_lock', '1391680535:1'),
(389, 31, '_min_variation_price', ''),
(390, 31, '_max_variation_price', ''),
(391, 31, '_min_variation_regular_price', ''),
(392, 31, '_max_variation_regular_price', ''),
(393, 31, '_min_variation_sale_price', ''),
(394, 31, '_max_variation_sale_price', ''),
(395, 31, '_default_attributes', 'a:1:{s:8:"pa_color";s:5:"black";}'),
(534, 46, '_sku', ''),
(535, 46, '_weight', ''),
(536, 46, '_length', ''),
(537, 46, '_width', ''),
(538, 46, '_height', ''),
(539, 46, '_stock', ''),
(540, 46, '_thumbnail_id', '0'),
(541, 46, '_virtual', 'no'),
(542, 46, '_downloadable', 'no'),
(543, 46, '_regular_price', ''),
(544, 46, '_sale_price', ''),
(545, 46, '_sale_price_dates_from', ''),
(546, 46, '_sale_price_dates_to', ''),
(547, 46, '_price', ''),
(548, 46, '_download_limit', ''),
(549, 46, '_download_expiry', ''),
(550, 46, '_file_paths', ''),
(551, 46, 'attribute_color', 'rust'),
(552, 46, 'attribute_size', 'l'),
(686, 33, '_min_variation_price', '12'),
(687, 33, '_max_variation_price', '12'),
(688, 33, '_min_variation_regular_price', '12'),
(689, 33, '_max_variation_regular_price', '12'),
(690, 33, '_min_variation_sale_price', ''),
(691, 33, '_max_variation_sale_price', ''),
(692, 33, '_default_attributes', 'a:0:{}'),
(698, 58, '_edit_last', '1'),
(699, 58, '_edit_lock', '1397567517:1'),
(700, 59, '_wp_attached_file', '2014/02/pro1.jpg'),
(701, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:414;s:6:"height";i:333;s:4:"file";s:16:"2014/02/pro1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"pro1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"pro1-300x241.jpg";s:5:"width";i:300;s:6:"height";i:241;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"pro1-414x270.jpg";s:5:"width";i:414;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"pro1-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"pro1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:16:"pro1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(702, 60, '_wp_attached_file', '2014/02/pro2.jpg'),
(703, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:421;s:6:"height";i:324;s:4:"file";s:16:"2014/02/pro2.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"pro2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"pro2-300x230.jpg";s:5:"width";i:300;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"pro2-421x270.jpg";s:5:"width";i:421;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"pro2-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"pro2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:16:"pro2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(704, 61, '_wp_attached_file', '2014/02/pro3.jpg'),
(705, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:419;s:6:"height";i:291;s:4:"file";s:16:"2014/02/pro3.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"pro3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"pro3-300x208.jpg";s:5:"width";i:300;s:6:"height";i:208;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"pro3-419x270.jpg";s:5:"width";i:419;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"pro3-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"pro3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:16:"pro3-300x291.jpg";s:5:"width";i:300;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(710, 63, '_edit_last', '1'),
(711, 63, '_edit_lock', '1392129165:1'),
(712, 63, '_thumbnail_id', '60'),
(715, 65, '_edit_last', '1'),
(716, 65, '_edit_lock', '1391497072:1'),
(717, 65, '_thumbnail_id', '59'),
(720, 65, 'button_text', 'Get started now to start earning'),
(723, 63, 'button_text', 'Get started now to start earning'),
(726, 58, 'button_text', 'Get started now to start earning'),
(729, 60, '_edit_lock', '1391498943:1'),
(730, 59, '_edit_lock', '1391498949:1'),
(741, 58, '_thumbnail_id', '61'),
(744, 67, '_edit_last', '1'),
(745, 67, '_edit_lock', '1397546960:1'),
(746, 67, 'get_started', 'http://teecircle.com/design/'),
(747, 67, 'learn_more', 'http://teecircle.com/learnmore/'),
(752, 18, '_edit_lock', '1394186223:1'),
(758, 70, '_edit_last', '1'),
(759, 70, '_edit_lock', '1398179152:1'),
(760, 70, 'footertext', 'In vitae sapien quis nisi laoreet imperdiet dapibus in tortor. Quisque dictum nisi leo, ac commodo ante convallis non'),
(761, 70, 'footerheading', 'TeeCircle'),
(762, 70, 'copyright', '© 2014 TeeCircle.'),
(763, 70, '_wp_page_template', 'innerpages.php'),
(921, 92, '_edit_last', '1'),
(922, 92, '_edit_lock', '1391505681:1'),
(923, 92, 'button_text', 'Raise money'),
(926, 94, '_edit_last', '1'),
(927, 94, '_edit_lock', '1391511671:1'),
(928, 94, 'button_text', 'Launch a campaign'),
(1084, 114, '_edit_last', '1'),
(1085, 114, '_edit_lock', '1397559588:1'),
(1086, 115, '_wp_attached_file', '2014/02/clnt1.png'),
(1087, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:77;s:6:"height";i:77;s:4:"file";s:17:"2014/02/clnt1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(1088, 116, '_wp_attached_file', '2014/02/clnt2.png'),
(1089, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:77;s:6:"height";i:77;s:4:"file";s:17:"2014/02/clnt2.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(1090, 117, '_wp_attached_file', '2014/02/clnt3.png'),
(1091, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:77;s:6:"height";i:77;s:4:"file";s:17:"2014/02/clnt3.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(1092, 114, '_thumbnail_id', '117'),
(1093, 114, '_my_meta_value_key', 'hananah'),
(1094, 118, '_edit_last', '1'),
(1095, 118, '_edit_lock', '1391519131:1'),
(1096, 118, '_thumbnail_id', '116'),
(1097, 118, '_my_meta_value_key', 'hananah'),
(1098, 119, '_edit_last', '1'),
(1099, 119, '_edit_lock', '1391516934:1'),
(1100, 119, '_thumbnail_id', '115'),
(1101, 119, '_my_meta_value_key', 'hananah'),
(1408, 154, '_edit_last', '1'),
(1409, 154, '_edit_lock', '1391515297:1'),
(1413, 119, 'client_name', ''),
(1414, 114, 'client_name', ''),
(1415, 156, '_edit_last', '1'),
(1416, 156, '_edit_lock', '1391693546:1'),
(1417, 156, 'twitter', 'https://twitter.com/'),
(1418, 156, 'facebook', 'http://www.facebook.com/'),
(1419, 156, 'googleplus', 'https://plus.google.com/'),
(1420, 156, 'linkedin', 'https://in.linkedin.com/'),
(1423, 156, '_my_meta_value_key', ''),
(1424, 158, '_edit_last', '1'),
(1425, 158, '_edit_lock', '1391677219:1'),
(1426, 158, '_wp_page_template', 'inner.php'),
(1427, 158, '_my_meta_value_key', ''),
(1428, 70, '_my_meta_value_key', ''),
(1429, 161, '_edit_last', '1'),
(1430, 161, '_edit_lock', '1391523199:1'),
(1431, 161, '_wp_page_template', 'inner.php'),
(1432, 161, '_my_meta_value_key', ''),
(1433, 163, '_edit_last', '1'),
(1434, 163, '_edit_lock', '1397202305:1'),
(1435, 163, '_wp_page_template', 'innerpagefaq.php'),
(1436, 163, '_my_meta_value_key', ''),
(1437, 165, '_edit_last', '1'),
(1438, 165, '_edit_lock', '1391679781:1'),
(1439, 165, '_wp_page_template', 'innerpages.php'),
(1440, 165, '_my_meta_value_key', ''),
(1441, 167, '_edit_last', '1'),
(1442, 167, '_edit_lock', '1391693632:1'),
(1443, 167, '_wp_page_template', 'innerpages.php'),
(1444, 167, '_my_meta_value_key', ''),
(1445, 169, '_edit_last', '1'),
(1446, 169, '_edit_lock', '1391680307:1'),
(1447, 169, '_wp_page_template', 'innerpages.php'),
(1448, 169, '_my_meta_value_key', ''),
(1449, 172, '_edit_last', '1'),
(1450, 172, '_edit_lock', '1391598197:1'),
(1453, 172, 'title', 'Teecircle allows you to create & sell custom tees with zero upfront costs, and zero risk.'),
(1454, 172, '_wp_page_template', 'default'),
(1455, 172, '_my_meta_value_key', ''),
(1456, 163, 'title', 'Frequently asked questions'),
(1457, 179, '_edit_last', '1'),
(1458, 179, '_edit_lock', '1391680872:1'),
(1459, 180, '_edit_last', '1'),
(1460, 180, '_edit_lock', '1391680819:1'),
(1461, 181, '_edit_last', '1'),
(1462, 181, '_edit_lock', '1391680796:1'),
(1463, 182, '_edit_last', '1'),
(1464, 182, '_edit_lock', '1391680789:1'),
(1465, 183, '_edit_last', '1'),
(1466, 183, '_edit_lock', '1391680780:1'),
(1467, 184, '_edit_last', '1'),
(1468, 184, '_edit_lock', '1391680772:1'),
(1469, 185, '_edit_last', '1'),
(1470, 185, '_edit_lock', '1391680709:1'),
(1471, 186, '_edit_last', '1'),
(1472, 186, '_edit_lock', '1391680743:1'),
(1473, 187, '_edit_last', '1'),
(1474, 187, '_edit_lock', '1397202330:1'),
(1475, 190, '_wp_attached_file', '2014/02/stp1.jpg'),
(1476, 190, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:112;s:6:"height";i:102;s:4:"file";s:16:"2014/02/stp1.jpg";s:5:"sizes";a:1:{s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"stp1-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(1477, 191, '_wp_attached_file', '2014/02/stp2.jpg'),
(1478, 191, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:112;s:6:"height";i:102;s:4:"file";s:16:"2014/02/stp2.jpg";s:5:"sizes";a:1:{s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"stp2-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(1479, 192, '_wp_attached_file', '2014/02/stp3.jpg'),
(1480, 192, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:112;s:6:"height";i:86;s:4:"file";s:16:"2014/02/stp3.jpg";s:5:"sizes";a:1:{s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"stp3-90x86.jpg";s:5:"width";i:90;s:6:"height";i:86;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(1481, 193, '_wp_attached_file', '2014/02/abt1.jpg'),
(1482, 193, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:403;s:6:"height";i:287;s:4:"file";s:16:"2014/02/abt1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"abt1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"abt1-300x213.jpg";s:5:"width";i:300;s:6:"height";i:213;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"abt1-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"abt1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:16:"abt1-300x287.jpg";s:5:"width";i:300;s:6:"height";i:287;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(1483, 194, '_wp_attached_file', '2014/02/abt2.jpg'),
(1484, 194, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:403;s:6:"height";i:287;s:4:"file";s:16:"2014/02/abt2.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"abt2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"abt2-300x213.jpg";s:5:"width";i:300;s:6:"height";i:213;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"abt2-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"abt2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:16:"abt2-300x287.jpg";s:5:"width";i:300;s:6:"height";i:287;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(1485, 195, '_wp_attached_file', '2014/02/abt3.jpg'),
(1486, 195, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:403;s:6:"height";i:288;s:4:"file";s:16:"2014/02/abt3.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"abt3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"abt3-300x214.jpg";s:5:"width";i:300;s:6:"height";i:214;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"abt3-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"abt3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:16:"abt3-300x288.jpg";s:5:"width";i:300;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(1487, 198, '_edit_last', '1'),
(1488, 198, '_edit_lock', '1397567519:1'),
(1489, 198, '_wp_page_template', 'innerpages.php'),
(1490, 198, '_my_meta_value_key', ''),
(1491, 14, '_edit_lock', '1391668404:1'),
(1492, 13, '_edit_lock', '1391668644:1'),
(1493, 203, '_edit_last', '1'),
(1494, 203, '_edit_lock', '1397547814:1'),
(1495, 203, '_wp_page_template', 'innerpages.php'),
(1496, 203, '_my_meta_value_key', ''),
(1509, 16, '_edit_lock', '1391677810:1'),
(1510, 216, '_form', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>'),
(1511, 216, '_mail', 'a:7:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:26:"[your-name] <[your-email]>";s:4:"body";s:176:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on TeeCircle (http://teecircle.com)";s:9:"recipient";s:25:"nabanita.c@candeotech.net";s:18:"additional_headers";s:0:"";s:11:"attachments";s:0:"";s:8:"use_html";i:0;}'),
(1512, 216, '_mail_2', 'a:8:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:26:"[your-name] <[your-email]>";s:4:"body";s:118:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on TeeCircle (http://teecircle.com)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:0:"";s:11:"attachments";s:0:"";s:8:"use_html";i:0;}'),
(1513, 216, '_messages', 'a:6:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:31:"Please fill the required field.";}'),
(1514, 216, '_additional_settings', ''),
(1515, 216, '_locale', 'en_US'),
(1516, 179, '_wp_old_slug', 'what-is-teecircle'),
(1517, 228, '_edit_last', '1'),
(1518, 228, '_edit_lock', '1391779707:1'),
(1519, 228, '_wp_page_template', 'ajax_library_images.php'),
(1520, 228, '_my_meta_value_key', ''),
(1521, 230, '_edit_last', '1'),
(1522, 230, '_edit_lock', '1391757377:1'),
(1523, 230, '_wp_page_template', 'ajax_get_clipart.php'),
(1524, 230, '_my_meta_value_key', ''),
(1528, 234, '_edit_lock', '1391758338:1'),
(1529, 234, '_edit_last', '1'),
(1530, 234, '_wp_page_template', 'designinner.php'),
(1531, 234, '_my_meta_value_key', ''),
(1560, 239, '_edit_last', '1'),
(1561, 239, '_edit_lock', '1391777143:1'),
(1662, 63, '_my_meta_value_key', ''),
(1665, 63, '_wp_old_slug', 'spread-the-word6'),
(2190, 311, '_edit_last', '1'),
(2191, 311, '_edit_lock', '1392192201:1'),
(2192, 311, '_wp_page_template', 'preview.php'),
(2193, 311, '_my_meta_value_key', ''),
(2194, 195, '_edit_lock', '1392197894:1'),
(2195, 314, '_wp_attached_file', '2014/02/mygen.jpg'),
(2196, 314, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:455;s:6:"height";i:542;s:4:"file";s:17:"2014/02/mygen.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"mygen-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"mygen-251x300.jpg";s:5:"width";i:251;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"mygen-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"mygen-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:17:"mygen-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(2676, 10, '_edit_last', '1'),
(2677, 10, '_wp_page_template', 'page-afterlogin.php'),
(2678, 10, '_my_meta_value_key', ''),
(2978, 21, 'base_cost_shirts', '50'),
(2979, 20, 'base_cost_shirts', '20'),
(2980, 19, 'base_cost_shirts', '10'),
(2981, 22, 'base_cost_shirts', '20'),
(2982, 23, 'base_cost_shirts', '20'),
(2983, 24, 'base_cost_shirts', '40'),
(2984, 25, 'base_cost_shirts', '30'),
(2985, 26, 'base_cost_shirts', '10'),
(2986, 27, 'base_cost_shirts', '10'),
(2987, 28, 'base_cost_shirts', '20'),
(2988, 28, '_width', ''),
(2989, 29, 'base_cost_shirts', '10'),
(2990, 30, 'base_cost_shirts', '20'),
(2991, 31, 'base_cost_shirts', '30'),
(2992, 32, 'base_cost_shirts', '10'),
(2993, 33, 'base_cost_shirts', '20'),
(2996, 352, '_edit_last', '1'),
(2997, 352, '_wp_page_template', 'campaigns.php'),
(2998, 352, '_my_meta_value_key', ''),
(2999, 352, '_edit_lock', '1394104207:1'),
(3122, 359, '_edit_last', '1'),
(3123, 359, '_edit_lock', '1394520717:1'),
(3124, 359, '_wp_page_template', 'edit_product.php'),
(3125, 359, '_my_meta_value_key', ''),
(4285, 442, '_wp_attached_file', '2014/01/2.png'),
(4286, 442, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:436;s:6:"height";i:495;s:4:"file";s:13:"2014/01/2.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:13:"2-264x300.png";s:5:"width";i:264;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:11:"2-90x90.png";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:13:"2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:13:"2-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(4287, 443, '_wp_attached_file', '2014/01/1.png'),
(4288, 443, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:436;s:6:"height";i:495;s:4:"file";s:13:"2014/01/1.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:13:"1-264x300.png";s:5:"width";i:264;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:11:"1-90x90.png";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:13:"1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:13:"1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(4289, 444, '_wp_attached_file', '2014/01/21.png'),
(4290, 444, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:436;s:6:"height";i:495;s:4:"file";s:14:"2014/01/21.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"21-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:14:"21-264x300.png";s:5:"width";i:264;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:12:"21-90x90.png";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:14:"21-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:14:"21-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(4291, 445, '_wp_attached_file', '2014/01/11.png'),
(4292, 445, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:436;s:6:"height";i:495;s:4:"file";s:14:"2014/01/11.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"11-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:14:"11-264x300.png";s:5:"width";i:264;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:12:"11-90x90.png";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:14:"11-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:14:"11-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(4293, 446, '_edit_lock', '1397593888:1'),
(4294, 446, '_edit_last', '1'),
(4296, 446, 'base_cost_shirts_0010_0019', '50'),
(4297, 448, '_wp_attached_file', '2014/03/tee2.png'),
(4298, 448, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:455;s:6:"height";i:542;s:4:"file";s:16:"2014/03/tee2.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"tee2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"tee2-251x300.png";s:5:"width";i:251;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"tee2-90x90.png";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"tee2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:16:"tee2-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(4299, 449, '_wp_attached_file', '2014/03/hoodie2.png'),
(4300, 449, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:524;s:6:"height";i:570;s:4:"file";s:19:"2014/03/hoodie2.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"hoodie2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"hoodie2-275x300.png";s:5:"width";i:275;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"hoodie2-90x90.png";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"hoodie2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:19:"hoodie2-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(4301, 446, '_visibility', 'visible'),
(4302, 446, '_stock_status', 'instock'),
(4303, 446, 'total_sales', '0'),
(4304, 446, '_downloadable', 'no'),
(4305, 446, '_virtual', 'no'),
(4306, 446, '_product_image_gallery', '449,448'),
(4307, 446, '_regular_price', '6.59'),
(4308, 446, '_sale_price', ''),
(4309, 446, '_purchase_note', ''),
(4310, 446, '_featured', 'no'),
(4311, 446, '_weight', ''),
(4312, 446, '_length', ''),
(4313, 446, '_width', ''),
(4314, 446, '_height', ''),
(4315, 446, '_sku', '123'),
(4316, 446, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"2";s:10:"is_visible";i:0;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(4317, 446, '_sale_price_dates_from', ''),
(4318, 446, '_sale_price_dates_to', ''),
(4319, 446, '_price', '6.59'),
(4320, 446, '_sold_individually', ''),
(4321, 446, '_stock', ''),
(4322, 446, '_backorders', 'no'),
(4323, 446, '_manage_stock', 'no'),
(4493, 446, 'base_cost_shirts_0020_0029', '45'),
(4494, 446, 'base_cost_shirts_0030_0039', '40'),
(4495, 446, 'base_cost_shirts_0040_0049', '35'),
(4496, 446, 'base_cost_shirts_0050_0059', '30'),
(4497, 446, 'base_cost_shirts_0060_0069', '25'),
(4498, 446, 'base_cost_shirts_0070_0079', '20'),
(4499, 446, 'base_cost_shirts_0080_0089', '15'),
(4500, 446, 'base_cost_shirts_0090_0099', '14'),
(4501, 446, 'base_cost_shirts_0100_0124', '13'),
(4502, 446, 'base_cost_shirts_0125_0149', '12'),
(4503, 446, 'base_cost_shirts_0150_0174', '11'),
(4504, 446, 'base_cost_shirts_0175_0199', '10'),
(4505, 446, 'base_cost_shirts_0200_0249', '9'),
(4506, 446, 'base_cost_shirts_0250_0299', '8'),
(4507, 446, 'base_cost_shirts_0300_0349', '7'),
(4508, 446, 'base_cost_shirts_0350_0399', '6'),
(4509, 446, 'base_cost_shirts_0400_0449', '5'),
(4510, 446, 'base_cost_shirts_0450_0499', '4'),
(4511, 446, 'base_cost_shirts_0500_0599', '2'),
(4512, 446, 'print_area_front_height', '200'),
(4513, 446, 'print_area_front_width', '175'),
(4514, 446, 'print_area_front_top', '140'),
(4515, 446, 'print_area_front_left', '130'),
(4516, 446, 'print_area_back_height', '300'),
(4517, 446, 'print_area_back_width', '175'),
(4518, 446, 'print_area_back_top', '140'),
(4519, 446, 'print_area_back_left', '130'),
(4520, 460, '_edit_lock', '1398110337:1'),
(4521, 460, '_edit_last', '1'),
(4524, 460, '_my_meta_value_key', ''),
(4620, 446, 'base_cost_shirts', '20'),
(4621, 460, 'profit_margin', '0.05'),
(4622, 460, '1color', '1'),
(4623, 460, '2colors', '2'),
(4624, 460, '3colors', '3'),
(4625, 460, '4colors', '4'),
(4626, 460, '5colors', '5'),
(4627, 460, '6colors', '6'),
(4628, 460, '7colors', '7'),
(4629, 460, '8colors', '8'),
(4630, 460, '9colors', '9'),
(4631, 460, '10colors_and_above', '10'),
(5337, 446, 'base_cost_shirts_0600_0699', '2'),
(5338, 446, 'base_cost_shirts_0700_0799', '2'),
(5339, 446, 'base_cost_shirts_0800_0899', '2'),
(5340, 446, 'base_cost_shirts_0900_0999', '2'),
(5341, 446, 'base_cost_shirts_1000_1499', '2'),
(5342, 446, 'base_cost_shirts_1500_1999', '2'),
(5343, 446, 'base_cost_shirts_2000_2999', '2'),
(5344, 446, 'base_cost_shirts_3000_3999', '2'),
(5345, 446, 'base_cost_shirts_4000_4999', '2'),
(5346, 446, 'base_cost_shirts_5000_600001', '2'),
(5349, 19, 'base_cost_shirts_0010_0019', '100'),
(5351, 19, 'base_cost_shirts_0020_0029', '99'),
(5352, 19, 'base_cost_shirts_0030_0039', '98'),
(5353, 19, 'base_cost_shirts_0040_0049', '97'),
(5354, 19, 'base_cost_shirts_0050_0059', '96'),
(5355, 19, 'base_cost_shirts_0060_0069', '95'),
(5356, 19, 'base_cost_shirts_0070_0079', '94'),
(5357, 19, 'base_cost_shirts_0080_0089', '93'),
(5358, 19, 'base_cost_shirts_0090_0099', '92'),
(5359, 19, 'base_cost_shirts_0100_0124', '91'),
(5360, 19, 'base_cost_shirts_0125_0149', '90'),
(5361, 19, 'base_cost_shirts_0150_0174', '89'),
(5362, 19, 'base_cost_shirts_0175_0199', '88'),
(5363, 19, 'base_cost_shirts_0200_0249', '87'),
(5364, 19, 'base_cost_shirts_0250_0299', '50'),
(5365, 19, 'base_cost_shirts_0350_0399', '50'),
(5366, 19, 'base_cost_shirts_0400_0449', '48'),
(5367, 19, 'base_cost_shirts_0450_0499', '47'),
(5368, 19, 'base_cost_shirts_0500_0599', '46'),
(5369, 19, 'base_cost_shirts_0600_0699', '45'),
(5370, 19, 'base_cost_shirts_0700_0799', '44'),
(5371, 19, 'base_cost_shirts_0800_0899', '43'),
(5372, 19, 'base_cost_shirts_0900_0999', '42'),
(5373, 19, 'base_cost_shirts_1000_1499', '41'),
(5374, 19, 'base_cost_shirts_1500_1999', '20'),
(5375, 19, 'base_cost_shirts_2000_2999', '40'),
(5376, 19, 'base_cost_shirts_3000_3999', '39'),
(5377, 19, 'base_cost_shirts_4000_4999', '38'),
(5378, 19, 'base_cost_shirts_5000_6001', '37'),
(5379, 19, 'print_area_back_height', '300'),
(5380, 19, 'print_area_back_left', '130'),
(5381, 19, 'print_area_back_top', '140'),
(5382, 19, 'print_area_back_width', '175'),
(5383, 19, 'print_area_front_height', '200'),
(5384, 19, 'print_area_front_left', '130'),
(5385, 19, 'print_area_front_top', '140'),
(5386, 19, 'print_area_front_width', '175'),
(5387, 20, 'base_cost_shirts_0010_0019', '50'),
(5388, 20, 'base_cost_shirts_0020_0029', '45'),
(5389, 20, 'base_cost_shirts_0030_0039', '44'),
(5390, 20, 'base_cost_shirts_0040_0049', '40'),
(5391, 20, 'base_cost_shirts_0050_0059', '35'),
(5392, 20, 'base_cost_shirts_0060_0069', '30'),
(5393, 20, 'base_cost_shirts_0070_0079', '29'),
(5394, 20, 'base_cost_shirts_0080_0089', '28'),
(5395, 20, 'base_cost_shirts_0090_0099', '27'),
(5396, 20, 'base_cost_shirts_0100_0124', '26'),
(5397, 20, 'base_cost_shirts_0125_0149', '25'),
(5398, 20, 'base_cost_shirts_0150_0174', '24'),
(5399, 20, 'base_cost_shirts_0175_0199', '23'),
(5400, 20, 'base_cost_shirts_0200_0249', '22'),
(5401, 20, 'base_cost_shirts_0250_0299', '49'),
(5402, 20, 'base_cost_shirts_0350_0399', '50'),
(5403, 20, 'base_cost_shirts_0400_0449', '48'),
(5404, 20, 'base_cost_shirts_0450_0499', '47'),
(5405, 20, 'base_cost_shirts_0500_0599', '46'),
(5406, 20, 'base_cost_shirts_0600_0699', '45'),
(5407, 20, 'base_cost_shirts_0700_0799', '44'),
(5408, 20, 'base_cost_shirts_0800_0899', '43'),
(5409, 20, 'base_cost_shirts_0900_0999', '42'),
(5410, 20, 'base_cost_shirts_1000_1499', '41'),
(5411, 20, 'base_cost_shirts_1500_1999', '20'),
(5412, 20, 'base_cost_shirts_2000_2999', '40'),
(5413, 20, 'base_cost_shirts_3000_3999', '39'),
(5414, 20, 'base_cost_shirts_4000_4999', '38'),
(5415, 20, 'base_cost_shirts_5000_6001', '37'),
(5416, 20, 'print_area_back_height', '300'),
(5417, 20, 'print_area_back_left', '130'),
(5418, 20, 'print_area_back_top', '140'),
(5419, 20, 'print_area_back_width', '175'),
(5420, 20, 'print_area_front_height', '200'),
(5421, 20, 'print_area_front_left', '130'),
(5422, 20, 'print_area_front_top', '140'),
(5423, 20, 'print_area_front_width', '175'),
(5424, 510, '_wp_attached_file', '2014/01/front1.jpg'),
(5425, 510, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:230;s:6:"height";i:219;s:4:"file";s:18:"2014/01/front1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"front1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"front1-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"front1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5426, 511, '_wp_attached_file', '2014/01/back1.jpg'),
(5427, 511, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:214;s:6:"height";i:236;s:4:"file";s:17:"2014/01/back1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"back1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"back1-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"back1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5428, 512, '_wp_attached_file', '2014/01/back11.jpg'),
(5429, 512, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:214;s:6:"height";i:236;s:4:"file";s:18:"2014/01/back11.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"back11-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"back11-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"back11-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5430, 513, '_wp_attached_file', '2014/01/back12.jpg'),
(5431, 513, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:214;s:6:"height";i:236;s:4:"file";s:18:"2014/01/back12.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"back12-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"back12-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"back12-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5432, 514, '_wp_attached_file', '2014/01/front11.jpg');
=======================================================
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(5433, 514, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:230;s:6:"height";i:219;s:4:"file";s:19:"2014/01/front11.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"front11-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"front11-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"front11-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5434, 21, 'base_cost_shirts_0010_0019', '50'),
(5435, 21, 'base_cost_shirts_0020_0029', '45'),
(5436, 21, 'base_cost_shirts_0030_0039', '44'),
(5437, 21, 'base_cost_shirts_0040_0049', '40'),
(5438, 21, 'base_cost_shirts_0050_0059', '35'),
(5439, 21, 'base_cost_shirts_0060_0069', '30'),
(5440, 21, 'base_cost_shirts_0070_0079', '29'),
(5441, 21, 'base_cost_shirts_0080_0089', '28'),
(5442, 21, 'base_cost_shirts_0090_0099', '27'),
(5443, 21, 'base_cost_shirts_0100_0124', '26'),
(5444, 21, 'base_cost_shirts_0125_0149', '25'),
(5445, 21, 'base_cost_shirts_0150_0174', '24'),
(5446, 21, 'base_cost_shirts_0175_0199', '23'),
(5447, 21, 'base_cost_shirts_0200_0249', '22'),
(5448, 21, 'base_cost_shirts_0250_0299', '49'),
(5449, 21, 'base_cost_shirts_0350_0399', '50'),
(5450, 21, 'base_cost_shirts_0400_0449', '48'),
(5451, 21, 'base_cost_shirts_0450_0499', '47'),
(5452, 21, 'base_cost_shirts_0500_0599', '46'),
(5453, 21, 'base_cost_shirts_0600_0699', '45'),
(5454, 21, 'base_cost_shirts_0700_0799', '44'),
(5455, 21, 'base_cost_shirts_0800_0899', '43'),
(5456, 21, 'base_cost_shirts_0900_0999', '42'),
(5457, 21, 'base_cost_shirts_1000_1499', '41'),
(5458, 21, 'base_cost_shirts_1500_1999', '20'),
(5459, 21, 'base_cost_shirts_2000_2999', '40'),
(5460, 21, 'base_cost_shirts_3000_3999', '39'),
(5461, 21, 'base_cost_shirts_4000_4999', '38'),
(5462, 21, 'base_cost_shirts_5000_6001', '37'),
(5463, 21, 'print_area_back_height', '300'),
(5464, 21, 'print_area_back_left', '130'),
(5465, 21, 'print_area_back_top', '140'),
(5466, 21, 'print_area_back_width', '175'),
(5467, 21, 'print_area_front_height', '200'),
(5468, 21, 'print_area_front_left', '130'),
(5469, 21, 'print_area_front_top', '140'),
(5470, 21, 'print_area_front_width', '175'),
(5471, 515, '_wp_attached_file', '2014/01/back2.jpg'),
(5472, 515, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:212;s:6:"height";i:237;s:4:"file";s:17:"2014/01/back2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"back2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"back2-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"back2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5473, 516, '_wp_attached_file', '2014/01/front2.jpg'),
(5474, 516, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:251;s:6:"height";i:201;s:4:"file";s:18:"2014/01/front2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"front2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"front2-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"front2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5475, 33, 'base_cost_shirts_0010_0019', '50'),
(5476, 33, 'base_cost_shirts_0020_0029', '45'),
(5477, 33, 'base_cost_shirts_0030_0039', '44'),
(5478, 33, 'base_cost_shirts_0040_0049', '40'),
(5479, 33, 'base_cost_shirts_0050_0059', '35'),
(5480, 33, 'base_cost_shirts_0060_0069', '30'),
(5481, 33, 'base_cost_shirts_0070_0079', '29'),
(5482, 33, 'base_cost_shirts_0080_0089', '28'),
(5483, 33, 'base_cost_shirts_0090_0099', '27'),
(5484, 33, 'base_cost_shirts_0100_0124', '26'),
(5485, 33, 'base_cost_shirts_0125_0149', '25'),
(5486, 33, 'base_cost_shirts_0150_0174', '24'),
(5487, 33, 'base_cost_shirts_0175_0199', '23'),
(5488, 33, 'base_cost_shirts_0200_0249', '22'),
(5489, 33, 'base_cost_shirts_0250_0299', '49'),
(5490, 33, 'base_cost_shirts_0350_0399', '50'),
(5491, 33, 'base_cost_shirts_0400_0449', '48'),
(5492, 33, 'base_cost_shirts_0450_0499', '47'),
(5493, 33, 'base_cost_shirts_0500_0599', '46'),
(5494, 33, 'base_cost_shirts_0600_0699', '45'),
(5495, 33, 'base_cost_shirts_0700_0799', '44'),
(5496, 33, 'base_cost_shirts_0800_0899', '43'),
(5497, 33, 'base_cost_shirts_0900_0999', '42'),
(5498, 33, 'base_cost_shirts_1000_1499', '41'),
(5499, 33, 'base_cost_shirts_1500_1999', '20'),
(5500, 33, 'base_cost_shirts_2000_2999', '40'),
(5501, 33, 'base_cost_shirts_3000_3999', '39'),
(5502, 33, 'base_cost_shirts_4000_4999', '38'),
(5503, 33, 'base_cost_shirts_5000_6001', '37'),
(5504, 33, 'print_area_back_height', '300'),
(5505, 33, 'print_area_back_left', '130'),
(5506, 33, 'print_area_back_top', '140'),
(5507, 33, 'print_area_back_width', '175'),
(5508, 33, 'print_area_front_height', '200'),
(5509, 33, 'print_area_front_left', '130'),
(5510, 33, 'print_area_front_top', '140'),
(5511, 33, 'print_area_front_width', '175'),
(5512, 31, 'base_cost_shirts_0010_0019', '50'),
(5513, 31, 'base_cost_shirts_0020_0029', '45'),
(5514, 31, 'base_cost_shirts_0030_0039', '44'),
(5515, 31, 'base_cost_shirts_0040_0049', '40'),
(5516, 31, 'base_cost_shirts_0050_0059', '35'),
(5517, 31, 'base_cost_shirts_0060_0069', '30'),
(5518, 31, 'base_cost_shirts_0070_0079', '29'),
(5519, 31, 'base_cost_shirts_0080_0089', '28'),
(5520, 31, 'base_cost_shirts_0090_0099', '27'),
(5521, 31, 'base_cost_shirts_0100_0124', '26'),
(5522, 31, 'base_cost_shirts_0125_0149', '25'),
(5523, 31, 'base_cost_shirts_0150_0174', '24'),
(5524, 31, 'base_cost_shirts_0175_0199', '23'),
(5525, 31, 'base_cost_shirts_0200_0249', '22'),
(5526, 31, 'base_cost_shirts_0250_0299', '49'),
(5527, 31, 'base_cost_shirts_0350_0399', '50'),
(5528, 31, 'base_cost_shirts_0400_0449', '48'),
(5529, 31, 'base_cost_shirts_0450_0499', '47'),
(5530, 31, 'base_cost_shirts_0500_0599', '46'),
(5531, 31, 'base_cost_shirts_0600_0699', '45'),
(5532, 31, 'base_cost_shirts_0700_0799', '44'),
(5533, 31, 'base_cost_shirts_0800_0899', '43'),
(5534, 31, 'base_cost_shirts_0900_0999', '42'),
(5535, 31, 'base_cost_shirts_1000_1499', '41'),
(5536, 31, 'base_cost_shirts_1500_1999', '20'),
(5537, 31, 'base_cost_shirts_2000_2999', '40'),
(5538, 31, 'base_cost_shirts_3000_3999', '39'),
(5539, 31, 'base_cost_shirts_4000_4999', '38'),
(5540, 31, 'base_cost_shirts_5000_6001', '37'),
(5541, 31, 'print_area_back_height', '300'),
(5542, 31, 'print_area_back_left', '130'),
(5543, 31, 'print_area_back_top', '140'),
(5544, 31, 'print_area_back_width', '175'),
(5545, 31, 'print_area_front_height', '200'),
(5546, 31, 'print_area_front_left', '130'),
(5547, 31, 'print_area_front_top', '140'),
(5548, 31, 'print_area_front_width', '175'),
(5549, 518, '_wp_attached_file', '2014/01/back13.jpg'),
(5550, 518, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:214;s:6:"height";i:236;s:4:"file";s:18:"2014/01/back13.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"back13-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"back13-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"back13-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5551, 519, '_wp_attached_file', '2014/01/front12.jpg'),
(5552, 519, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:230;s:6:"height";i:219;s:4:"file";s:19:"2014/01/front12.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"front12-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"front12-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"front12-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5553, 32, 'base_cost_shirts_0010_0019', '50'),
(5554, 32, 'base_cost_shirts_0020_0029', '45'),
(5555, 32, 'base_cost_shirts_0030_0039', '44'),
(5556, 32, 'base_cost_shirts_0040_0049', '40'),
(5557, 32, 'base_cost_shirts_0050_0059', '35'),
(5558, 32, 'base_cost_shirts_0060_0069', '30'),
(5559, 32, 'base_cost_shirts_0070_0079', '29'),
(5560, 32, 'base_cost_shirts_0080_0089', '28'),
(5561, 32, 'base_cost_shirts_0090_0099', '27'),
(5562, 32, 'base_cost_shirts_0100_0124', '26'),
(5563, 32, 'base_cost_shirts_0125_0149', '25'),
(5564, 32, 'base_cost_shirts_0150_0174', '24'),
(5565, 32, 'base_cost_shirts_0175_0199', '23'),
(5566, 32, 'base_cost_shirts_0200_0249', '22'),
(5567, 32, 'base_cost_shirts_0250_0299', '49'),
(5568, 32, 'base_cost_shirts_0350_0399', '50'),
(5569, 32, 'base_cost_shirts_0400_0449', '48'),
(5570, 32, 'base_cost_shirts_0450_0499', '47'),
(5571, 32, 'base_cost_shirts_0500_0599', '46'),
(5572, 32, 'base_cost_shirts_0600_0699', '45'),
(5573, 32, 'base_cost_shirts_0700_0799', '44'),
(5574, 32, 'base_cost_shirts_0800_0899', '43'),
(5575, 32, 'base_cost_shirts_0900_0999', '42'),
(5576, 32, 'base_cost_shirts_1000_1499', '41'),
(5577, 32, 'base_cost_shirts_1500_1999', '20'),
(5578, 32, 'base_cost_shirts_2000_2999', '40'),
(5579, 32, 'base_cost_shirts_3000_3999', '39'),
(5580, 32, 'base_cost_shirts_4000_4999', '38'),
(5581, 32, 'base_cost_shirts_5000_6001', '37'),
(5582, 32, 'print_area_back_height', '300'),
(5583, 32, 'print_area_back_left', '130'),
(5584, 32, 'print_area_back_top', '140'),
(5585, 32, 'print_area_back_width', '175'),
(5586, 32, 'print_area_front_height', '200'),
(5587, 32, 'print_area_front_left', '130'),
(5588, 32, 'print_area_front_top', '140'),
(5589, 32, 'print_area_front_width', '175'),
(5590, 520, '_wp_attached_file', '2014/01/back21.jpg'),
(5591, 520, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:212;s:6:"height";i:237;s:4:"file";s:18:"2014/01/back21.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"back21-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"back21-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"back21-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5592, 521, '_wp_attached_file', '2014/01/front21.jpg'),
(5593, 521, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:251;s:6:"height";i:201;s:4:"file";s:19:"2014/01/front21.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"front21-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"front21-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"front21-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5594, 522, '_wp_attached_file', '2014/01/back22.jpg'),
(5595, 522, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:212;s:6:"height";i:237;s:4:"file";s:18:"2014/01/back22.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"back22-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"back22-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"back22-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5596, 523, '_wp_attached_file', '2014/01/front22.jpg'),
(5597, 523, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:251;s:6:"height";i:201;s:4:"file";s:19:"2014/01/front22.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"front22-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"front22-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"front22-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5598, 26, 'base_cost_shirts_0010_0019', '50'),
(5599, 26, 'base_cost_shirts_0020_0029', '45'),
(5600, 26, 'base_cost_shirts_0030_0039', '44'),
(5601, 26, 'base_cost_shirts_0040_0049', '40'),
(5602, 26, 'base_cost_shirts_0050_0059', '35'),
(5603, 26, 'base_cost_shirts_0060_0069', '30'),
(5604, 26, 'base_cost_shirts_0070_0079', '29'),
(5605, 26, 'base_cost_shirts_0080_0089', '28'),
(5606, 26, 'base_cost_shirts_0090_0099', '27'),
(5607, 26, 'base_cost_shirts_0100_0124', '26'),
(5608, 26, 'base_cost_shirts_0125_0149', '25'),
(5609, 26, 'base_cost_shirts_0150_0174', '24'),
(5610, 26, 'base_cost_shirts_0175_0199', '23'),
(5611, 26, 'base_cost_shirts_0200_0249', '22'),
(5612, 26, 'base_cost_shirts_0250_0299', '49'),
(5613, 26, 'base_cost_shirts_0350_0399', '50'),
(5614, 26, 'base_cost_shirts_0400_0449', '48'),
(5615, 26, 'base_cost_shirts_0450_0499', '47'),
(5616, 26, 'base_cost_shirts_0500_0599', '46'),
(5617, 26, 'base_cost_shirts_0600_0699', '45'),
(5618, 26, 'base_cost_shirts_0700_0799', '44'),
(5619, 26, 'base_cost_shirts_0800_0899', '43'),
(5620, 26, 'base_cost_shirts_0900_0999', '42'),
(5621, 26, 'base_cost_shirts_1000_1499', '41'),
(5622, 26, 'base_cost_shirts_1500_1999', '20'),
(5623, 26, 'base_cost_shirts_2000_2999', '40'),
(5624, 26, 'base_cost_shirts_3000_3999', '39'),
(5625, 26, 'base_cost_shirts_4000_4999', '38'),
(5626, 26, 'base_cost_shirts_5000_6001', '37'),
(5627, 26, 'print_area_back_height', '300'),
(5628, 26, 'print_area_back_left', '130'),
(5629, 26, 'print_area_back_top', '140'),
(5630, 26, 'print_area_back_width', '175'),
(5631, 26, 'print_area_front_height', '200'),
(5632, 26, 'print_area_front_left', '130'),
(5633, 26, 'print_area_front_top', '140'),
(5634, 26, 'print_area_front_width', '175'),
(5635, 25, 'base_cost_shirts_0010_0019', '50'),
(5636, 25, 'base_cost_shirts_0020_0029', '45'),
(5637, 25, 'base_cost_shirts_0030_0039', '44'),
(5638, 25, 'base_cost_shirts_0040_0049', '40'),
(5639, 25, 'base_cost_shirts_0050_0059', '35'),
(5640, 25, 'base_cost_shirts_0060_0069', '30'),
(5641, 25, 'base_cost_shirts_0070_0079', '29'),
(5642, 25, 'base_cost_shirts_0080_0089', '28'),
(5643, 25, 'base_cost_shirts_0090_0099', '27'),
(5644, 25, 'base_cost_shirts_0100_0124', '26'),
(5645, 25, 'base_cost_shirts_0125_0149', '25'),
(5646, 25, 'base_cost_shirts_0150_0174', '24'),
(5647, 25, 'base_cost_shirts_0175_0199', '23'),
(5648, 25, 'base_cost_shirts_0200_0249', '22'),
(5649, 25, 'base_cost_shirts_0250_0299', '49'),
(5650, 25, 'base_cost_shirts_0350_0399', '50'),
(5651, 25, 'base_cost_shirts_0400_0449', '48'),
(5652, 25, 'base_cost_shirts_0450_0499', '47'),
(5653, 25, 'base_cost_shirts_0500_0599', '46'),
(5654, 25, 'base_cost_shirts_0600_0699', '45'),
(5655, 25, 'base_cost_shirts_0700_0799', '44'),
(5656, 25, 'base_cost_shirts_0800_0899', '43'),
(5657, 25, 'base_cost_shirts_0900_0999', '42'),
(5658, 25, 'base_cost_shirts_1000_1499', '41'),
(5659, 25, 'base_cost_shirts_1500_1999', '20'),
(5660, 25, 'base_cost_shirts_2000_2999', '40'),
(5661, 25, 'base_cost_shirts_3000_3999', '39'),
(5662, 25, 'base_cost_shirts_4000_4999', '38'),
(5663, 25, 'base_cost_shirts_5000_6001', '37'),
(5664, 25, 'print_area_back_height', '300'),
(5665, 25, 'print_area_back_left', '130'),
(5666, 25, 'print_area_back_top', '140'),
(5667, 25, 'print_area_back_width', '175'),
(5668, 25, 'print_area_front_height', '200'),
(5669, 25, 'print_area_front_left', '130'),
(5670, 25, 'print_area_front_top', '140'),
(5671, 25, 'print_area_front_width', '175'),
(5672, 524, '_wp_attached_file', '2014/01/back14.jpg'),
(5673, 524, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:214;s:6:"height";i:236;s:4:"file";s:18:"2014/01/back14.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"back14-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"back14-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"back14-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5674, 525, '_wp_attached_file', '2014/01/front13.jpg'),
(5675, 525, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:230;s:6:"height";i:219;s:4:"file";s:19:"2014/01/front13.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"front13-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"front13-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"front13-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5676, 526, '_wp_attached_file', '2014/01/back15.jpg'),
(5677, 526, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:214;s:6:"height";i:236;s:4:"file";s:18:"2014/01/back15.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"back15-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"back15-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"back15-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5678, 527, '_wp_attached_file', '2014/01/front14.jpg'),
(5679, 527, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:230;s:6:"height";i:219;s:4:"file";s:19:"2014/01/front14.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"front14-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"front14-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"front14-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5680, 28, 'base_cost_shirts_0010_0019', '50'),
(5681, 28, 'base_cost_shirts_0020_0029', '45'),
(5682, 28, 'base_cost_shirts_0030_0039', '44'),
(5683, 28, 'base_cost_shirts_0040_0049', '40'),
(5684, 28, 'base_cost_shirts_0050_0059', '35'),
(5685, 28, 'base_cost_shirts_0060_0069', '30'),
(5686, 28, 'base_cost_shirts_0070_0079', '29'),
(5687, 28, 'base_cost_shirts_0080_0089', '28'),
(5688, 28, 'base_cost_shirts_0090_0099', '27'),
(5689, 28, 'base_cost_shirts_0100_0124', '26'),
(5690, 28, 'base_cost_shirts_0125_0149', '25'),
(5691, 28, 'base_cost_shirts_0150_0174', '24'),
(5692, 28, 'base_cost_shirts_0175_0199', '23'),
(5693, 28, 'base_cost_shirts_0200_0249', '22'),
(5694, 28, 'base_cost_shirts_0250_0299', '49'),
(5695, 28, 'base_cost_shirts_0350_0399', '50'),
(5696, 28, 'base_cost_shirts_0400_0449', '48'),
(5697, 28, 'base_cost_shirts_0450_0499', '47'),
(5698, 28, 'base_cost_shirts_0500_0599', '46'),
(5699, 28, 'base_cost_shirts_0600_0699', '45'),
(5700, 28, 'base_cost_shirts_0700_0799', '44'),
(5701, 28, 'base_cost_shirts_0800_0899', '43'),
(5702, 28, 'base_cost_shirts_0900_0999', '42'),
(5703, 28, 'base_cost_shirts_1000_1499', '41'),
(5704, 28, 'base_cost_shirts_1500_1999', '20'),
(5705, 28, 'base_cost_shirts_2000_2999', '40'),
(5706, 28, 'base_cost_shirts_3000_3999', '39'),
(5707, 28, 'base_cost_shirts_4000_4999', '38'),
(5708, 28, 'base_cost_shirts_5000_6001', '37'),
(5709, 28, 'print_area_back_height', '300'),
(5710, 28, 'print_area_back_left', '130'),
(5711, 28, 'print_area_back_top', '140'),
(5712, 28, 'print_area_back_width', '175'),
(5713, 28, 'print_area_front_height', '200'),
(5714, 28, 'print_area_front_left', '130'),
(5715, 28, 'print_area_front_top', '140'),
(5716, 28, 'print_area_front_width', '175'),
(5717, 528, '_wp_attached_file', '2014/01/back23.jpg'),
(5718, 528, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:212;s:6:"height";i:237;s:4:"file";s:18:"2014/01/back23.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"back23-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"back23-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"back23-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5719, 529, '_wp_attached_file', '2014/01/front23.jpg'),
(5720, 529, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:251;s:6:"height";i:201;s:4:"file";s:19:"2014/01/front23.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"front23-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"front23-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"front23-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5721, 27, 'base_cost_shirts_0010_0019', '50'),
(5722, 27, 'base_cost_shirts_0020_0029', '45'),
(5723, 27, 'base_cost_shirts_0030_0039', '44'),
(5724, 27, 'base_cost_shirts_0040_0049', '40'),
(5725, 27, 'base_cost_shirts_0050_0059', '35'),
(5726, 27, 'base_cost_shirts_0060_0069', '30'),
(5727, 27, 'base_cost_shirts_0070_0079', '29'),
(5728, 27, 'base_cost_shirts_0080_0089', '28'),
(5729, 27, 'base_cost_shirts_0090_0099', '27'),
(5730, 27, 'base_cost_shirts_0100_0124', '26'),
(5731, 27, 'base_cost_shirts_0125_0149', '25'),
(5732, 27, 'base_cost_shirts_0150_0174', '24'),
(5733, 27, 'base_cost_shirts_0175_0199', '23'),
(5734, 27, 'base_cost_shirts_0200_0249', '22'),
(5735, 27, 'base_cost_shirts_0250_0299', '49'),
(5736, 27, 'base_cost_shirts_0350_0399', '50'),
(5737, 27, 'base_cost_shirts_0400_0449', '48'),
(5738, 27, 'base_cost_shirts_0450_0499', '47'),
(5739, 27, 'base_cost_shirts_0500_0599', '46'),
(5740, 27, 'base_cost_shirts_0600_0699', '45'),
(5741, 27, 'base_cost_shirts_0700_0799', '44'),
(5742, 27, 'base_cost_shirts_0800_0899', '43'),
(5743, 27, 'base_cost_shirts_0900_0999', '42'),
(5744, 27, 'base_cost_shirts_1000_1499', '41'),
(5745, 27, 'base_cost_shirts_1500_1999', '20'),
(5746, 27, 'base_cost_shirts_2000_2999', '40'),
(5747, 27, 'base_cost_shirts_3000_3999', '39'),
(5748, 27, 'base_cost_shirts_4000_4999', '38'),
(5749, 27, 'base_cost_shirts_5000_6001', '37'),
(5750, 27, 'print_area_back_height', '300'),
(5751, 27, 'print_area_back_left', '130'),
(5752, 27, 'print_area_back_top', '140'),
(5753, 27, 'print_area_back_width', '175'),
(5754, 27, 'print_area_front_height', '200'),
(5755, 27, 'print_area_front_left', '130'),
(5756, 27, 'print_area_front_top', '140'),
(5757, 27, 'print_area_front_width', '175'),
(5758, 30, 'base_cost_shirts_0010_0019', '50'),
(5759, 30, 'base_cost_shirts_0020_0029', '45'),
(5760, 30, 'base_cost_shirts_0030_0039', '44'),
(5761, 30, 'base_cost_shirts_0040_0049', '40'),
(5762, 30, 'base_cost_shirts_0050_0059', '35'),
(5763, 30, 'base_cost_shirts_0060_0069', '30'),
(5764, 30, 'base_cost_shirts_0070_0079', '29'),
(5765, 30, 'base_cost_shirts_0080_0089', '28'),
(5766, 30, 'base_cost_shirts_0090_0099', '27'),
(5767, 30, 'base_cost_shirts_0100_0124', '26'),
(5768, 30, 'base_cost_shirts_0125_0149', '25'),
(5769, 30, 'base_cost_shirts_0150_0174', '24'),
(5770, 30, 'base_cost_shirts_0175_0199', '23'),
(5771, 30, 'base_cost_shirts_0200_0249', '22'),
(5772, 30, 'base_cost_shirts_0250_0299', '49'),
(5773, 30, 'base_cost_shirts_0350_0399', '50'),
(5774, 30, 'base_cost_shirts_0400_0449', '48'),
(5775, 30, 'base_cost_shirts_0450_0499', '47'),
(5776, 30, 'base_cost_shirts_0500_0599', '46'),
(5777, 30, 'base_cost_shirts_0600_0699', '45'),
(5778, 30, 'base_cost_shirts_0700_0799', '44'),
(5779, 30, 'base_cost_shirts_0800_0899', '43'),
(5780, 30, 'base_cost_shirts_0900_0999', '42'),
(5781, 30, 'base_cost_shirts_1000_1499', '41'),
(5782, 30, 'base_cost_shirts_1500_1999', '20'),
(5783, 30, 'base_cost_shirts_2000_2999', '40'),
(5784, 30, 'base_cost_shirts_3000_3999', '39'),
(5785, 30, 'base_cost_shirts_4000_4999', '38'),
(5786, 30, 'base_cost_shirts_5000_6001', '37'),
(5787, 30, 'print_area_back_height', '300'),
(5788, 30, 'print_area_back_left', '130'),
(5789, 30, 'print_area_back_top', '140'),
(5790, 30, 'print_area_back_width', '175'),
(5791, 30, 'print_area_front_height', '200'),
(5792, 30, 'print_area_front_left', '130'),
(5793, 30, 'print_area_front_top', '140'),
(5794, 30, 'print_area_front_width', '175'),
(5795, 530, '_wp_attached_file', '2014/01/back16.jpg'),
(5796, 530, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:214;s:6:"height";i:236;s:4:"file";s:18:"2014/01/back16.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"back16-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"back16-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"back16-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5797, 531, '_wp_attached_file', '2014/01/front15.jpg'),
(5798, 531, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:230;s:6:"height";i:219;s:4:"file";s:19:"2014/01/front15.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"front15-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"front15-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"front15-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5799, 29, 'base_cost_shirts_0010_0019', '50'),
(5800, 29, 'base_cost_shirts_0020_0029', '45'),
(5801, 29, 'base_cost_shirts_0030_0039', '44'),
(5802, 29, 'base_cost_shirts_0040_0049', '40'),
(5803, 29, 'base_cost_shirts_0050_0059', '35'),
(5804, 29, 'base_cost_shirts_0060_0069', '30'),
(5805, 29, 'base_cost_shirts_0070_0079', '29'),
(5806, 29, 'base_cost_shirts_0080_0089', '28'),
(5807, 29, 'base_cost_shirts_0090_0099', '27'),
(5808, 29, 'base_cost_shirts_0100_0124', '26'),
(5809, 29, 'base_cost_shirts_0125_0149', '25'),
(5810, 29, 'base_cost_shirts_0150_0174', '24'),
(5811, 29, 'base_cost_shirts_0175_0199', '23'),
(5812, 29, 'base_cost_shirts_0200_0249', '22'),
(5813, 29, 'base_cost_shirts_0250_0299', '49'),
(5814, 29, 'base_cost_shirts_0350_0399', '50'),
(5815, 29, 'base_cost_shirts_0400_0449', '48'),
(5816, 29, 'base_cost_shirts_0450_0499', '47'),
(5817, 29, 'base_cost_shirts_0500_0599', '46'),
(5818, 29, 'base_cost_shirts_0600_0699', '45'),
(5819, 29, 'base_cost_shirts_0700_0799', '44'),
(5820, 29, 'base_cost_shirts_0800_0899', '43'),
(5821, 29, 'base_cost_shirts_0900_0999', '42'),
(5822, 29, 'base_cost_shirts_1000_1499', '41'),
(5823, 29, 'base_cost_shirts_1500_1999', '20'),
(5824, 29, 'base_cost_shirts_2000_2999', '40'),
(5825, 29, 'base_cost_shirts_3000_3999', '39'),
(5826, 29, 'base_cost_shirts_4000_4999', '38'),
(5827, 29, 'base_cost_shirts_5000_6001', '37'),
(5828, 29, 'print_area_back_height', '300'),
(5829, 29, 'print_area_back_left', '130'),
(5830, 29, 'print_area_back_top', '140'),
(5831, 29, 'print_area_back_width', '175'),
(5832, 29, 'print_area_front_height', '200'),
(5833, 29, 'print_area_front_left', '130'),
(5834, 29, 'print_area_front_top', '140'),
(5835, 29, 'print_area_front_width', '175'),
(5836, 532, '_wp_attached_file', '2014/01/back17.jpg'),
(5837, 532, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:214;s:6:"height";i:236;s:4:"file";s:18:"2014/01/back17.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"back17-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"back17-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"back17-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5838, 533, '_wp_attached_file', '2014/01/front16.jpg'),
(5839, 533, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:230;s:6:"height";i:219;s:4:"file";s:19:"2014/01/front16.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"front16-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"front16-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"front16-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5840, 534, '_wp_attached_file', '2014/01/back24.jpg'),
(5841, 534, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:212;s:6:"height";i:237;s:4:"file";s:18:"2014/01/back24.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"back24-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"back24-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"back24-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5842, 535, '_wp_attached_file', '2014/01/front24.jpg'),
(5843, 535, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:251;s:6:"height";i:201;s:4:"file";s:19:"2014/01/front24.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"front24-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"front24-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"front24-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(5844, 29, 'base_cost_shirts_0010_0019', '50'),
(5845, 29, 'base_cost_shirts_0020_0029', '45'),
(5846, 29, 'base_cost_shirts_0030_0039', '44'),
(5847, 29, 'base_cost_shirts_0040_0049', '40'),
(5848, 29, 'base_cost_shirts_0050_0059', '35'),
(5849, 29, 'base_cost_shirts_0060_0069', '30'),
(5850, 29, 'base_cost_shirts_0070_0079', '29'),
(5851, 29, 'base_cost_shirts_0080_0089', '28'),
(5852, 29, 'base_cost_shirts_0090_0099', '27'),
(5853, 29, 'base_cost_shirts_0100_0124', '26'),
(5854, 29, 'base_cost_shirts_0125_0149', '25'),
(5855, 29, 'base_cost_shirts_0150_0174', '24'),
(5856, 29, 'base_cost_shirts_0175_0199', '23'),
(5857, 29, 'base_cost_shirts_0200_0249', '22'),
(5858, 29, 'base_cost_shirts_0250_0299', '49'),
(5859, 29, 'base_cost_shirts_0350_0399', '50'),
(5860, 29, 'base_cost_shirts_0400_0449', '48'),
(5861, 29, 'base_cost_shirts_0450_0499', '47'),
(5862, 29, 'base_cost_shirts_0500_0599', '46'),
(5863, 29, 'base_cost_shirts_0600_0699', '45'),
(5864, 29, 'base_cost_shirts_0700_0799', '44'),
(5865, 29, 'base_cost_shirts_0800_0899', '43'),
(5866, 29, 'base_cost_shirts_0900_0999', '42'),
(5867, 29, 'base_cost_shirts_1000_1499', '41'),
(5868, 29, 'base_cost_shirts_1500_1999', '20'),
(5869, 29, 'base_cost_shirts_2000_2999', '40'),
(5870, 29, 'base_cost_shirts_3000_3999', '39'),
(5871, 29, 'base_cost_shirts_4000_4999', '38'),
(5872, 29, 'base_cost_shirts_5000_6001', '37'),
(5873, 29, 'print_area_back_height', '300'),
(5874, 29, 'print_area_back_left', '130'),
(5875, 29, 'print_area_back_top', '140'),
(5876, 29, 'print_area_back_width', '175'),
(5877, 29, 'print_area_front_height', '200'),
(5878, 29, 'print_area_front_left', '130'),
(5879, 29, 'print_area_front_top', '140'),
(5880, 29, 'print_area_front_width', '175'),
(7893, 2, '_wp_page_template', 'default'),
(7894, 679, '_edit_last', '1'),
(7895, 679, '_edit_lock', '1404819329:1'),
(7896, 679, 'Api_id', '261422477379088'),
(7897, 679, 'Api_secret', '626beff6de5456668f247dccceacfd08'),
(7898, 680, '_edit_last', '1'),
(7899, 680, '_edit_lock', '1404819410:1'),
(7900, 680, 'Consumer_key', 'dj0yJmk9Y3VkaDhVNlpEaW5tJmQ9WVdrOU5qZFhOWFpsTXpJbWNHbzlNQS0tJnM9Y29uc3VtZXJzZWNyZXQmeD04Ng--'),
(7901, 680, 'Consumer_secret', 'd82a68d6db75dbdc8d87dc37d5cceec398658d1c'),
(7902, 681, '_edit_last', '1'),
(7903, 681, '_edit_lock', '1404819486:1'),
(7904, 681, 'Client_id', '538687083211-hfno8o54orftu6cckmfsbbh7vle1c3ue.apps.googleusercontent.com'),
(7905, 681, 'Client_secret', 'Dgm1ZwUynC_FPhu1vSztZDgt'),
(7906, 681, 'oauth2_redirect_uri', 'http://teecircle.com/facebook_twitter_login/google_login.php');
=======================================================
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=677 ;
=======================================================
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 1, '2014-01-08 10:34:42', '2014-01-08 10:34:42', '', 'Home Page', '', 'publish', 'open', 'open', '', 'home-page', '', '', '2014-01-08 12:39:06', '2014-01-08 12:39:06', '', 0, 'http://teecircle.com/?page_id=4', 0, 'page', '', 0),
(7, 1, '2014-01-08 10:37:15', '2014-01-08 10:37:15', '', 'Shop', '', 'publish', 'closed', 'open', '', 'shop', '', '', '2014-01-08 10:37:15', '2014-01-08 10:37:15', '', 0, 'http://teecircle.com/?page_id=7', 0, 'page', '', 0),
(8, 1, '2014-01-08 10:37:15', '2014-01-08 10:37:15', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'open', '', 'cart', '', '', '2014-01-08 10:37:15', '2014-01-08 10:37:15', '', 0, 'http://teecircle.com/?page_id=8', 0, 'page', '', 0),
(9, 1, '2014-01-08 10:37:15', '2014-01-08 10:37:15', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'open', '', 'checkout', '', '', '2014-01-08 10:37:15', '2014-01-08 10:37:15', '', 0, 'http://teecircle.com/?page_id=9', 0, 'page', '', 0),
(10, 1, '2014-01-08 10:37:15', '2014-01-08 10:37:15', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'open', '', 'my-account', '', '', '2014-02-26 11:44:52', '2014-02-26 11:44:52', '', 0, 'http://teecircle.com/?page_id=10', 0, 'page', '', 0),
(11, 1, '2014-01-08 10:37:15', '2014-01-08 10:37:15', '[woocommerce_lost_password]', 'Lost Password', '', 'publish', 'closed', 'open', '', 'lost-password', '', '', '2014-01-08 10:37:15', '2014-01-08 10:37:15', '', 10, 'http://teecircle.com/?page_id=11', 0, 'page', '', 0),
(12, 1, '2014-01-08 10:37:15', '2014-01-08 10:37:15', '[woocommerce_edit_address]', 'Edit My Address', '', 'publish', 'closed', 'open', '', 'edit-address', '', '', '2014-01-08 10:37:15', '2014-01-08 10:37:15', '', 10, 'http://teecircle.com/?page_id=12', 0, 'page', '', 0),
(13, 1, '2014-01-08 10:37:15', '2014-01-08 10:37:15', '[woocommerce_view_order]', 'View Order', '', 'publish', 'closed', 'open', '', 'view-order', '', '', '2014-01-08 10:37:15', '2014-01-08 10:37:15', '', 10, 'http://teecircle.com/?page_id=13', 0, 'page', '', 0),
(14, 1, '2014-01-08 10:37:16', '2014-01-08 10:37:16', '[woocommerce_change_password]', 'Change Password', '', 'publish', 'closed', 'open', '', 'change-password', '', '', '2014-01-08 10:37:16', '2014-01-08 10:37:16', '', 10, 'http://teecircle.com/?page_id=14', 0, 'page', '', 0),
(15, 1, '2014-01-08 10:37:16', '2014-01-08 10:37:16', '', 'Logout', '', 'publish', 'closed', 'open', '', 'logout', '', '', '2014-01-08 10:37:16', '2014-01-08 10:37:16', '', 10, 'http://teecircle.com/?page_id=15', 0, 'page', '', 0),
(16, 1, '2014-01-08 10:37:16', '2014-01-08 10:37:16', '[woocommerce_pay]', 'Checkout &rarr; Pay', '', 'publish', 'closed', 'open', '', 'pay', '', '', '2014-01-08 10:37:16', '2014-01-08 10:37:16', '', 9, 'http://teecircle.com/?page_id=16', 0, 'page', '', 0),
(17, 1, '2014-01-08 10:37:16', '2014-01-08 10:37:16', '[woocommerce_thankyou]', 'Order Received', '', 'publish', 'closed', 'open', '', 'order-received', '', '', '2014-01-08 10:37:16', '2014-01-08 10:37:16', '', 9, 'http://teecircle.com/?page_id=17', 0, 'page', '', 0),
(18, 1, '2014-01-08 10:37:46', '2014-01-08 10:37:46', '<h1>Checkout</h1>\n\n{{mj-checkout-form}}', 'Mijireh Secure Checkout', '', 'private', 'closed', 'closed', '', 'mijireh-secure-checkout', '', '', '2014-01-08 10:37:46', '2014-01-08 10:37:46', '', 0, 'http://teecircle.com/?page_id=18', 0, 'page', '', 0),
(19, 1, '2014-01-08 11:31:29', '2014-01-08 11:31:29', 'Budget friendly', 'Hanes Tagless Tee', '', 'publish', 'open', 'closed', '', 'hanes-tagless-tee', '', '', '2014-03-24 14:24:27', '2014-03-24 14:24:27', '', 0, 'http://teecircle.com/?post_type=product&#038;p=19', 0, 'product', '', 0),
(20, 1, '2014-01-08 11:34:03', '2014-01-08 11:34:03', 'Premium materials', 'Canvas Ringspun Tee', '', 'publish', 'open', 'closed', '', 'canvas-ringspun-tee', '', '', '2014-04-14 08:09:09', '2014-04-14 08:09:09', '', 0, 'http://teecircle.com/?post_type=product&#038;p=20', 0, 'product', '', 0),
(21, 1, '2014-01-08 11:34:45', '2014-01-08 11:34:45', 'Brand name', 'American Apparel Crew', '', 'publish', 'open', 'closed', '', 'american-apparel-crew', '', '', '2014-04-14 08:29:18', '2014-04-14 08:29:18', '', 0, 'http://teecircle.com/?post_type=product&#038;p=21', 0, 'product', '', 0),
(22, 1, '2014-01-08 11:36:50', '2014-01-08 11:36:50', 'Budget friendly', 'Gildan Womens Relaxed Fit Tee', '', 'publish', 'open', 'closed', '', 'gildan-womens-relaxed-fit-tee', '', '', '2014-03-05 11:45:29', '2014-03-05 11:45:29', '', 0, 'http://teecircle.com/?post_type=product&#038;p=22', 0, 'product', '', 0),
(23, 1, '2014-01-08 11:38:04', '2014-01-08 11:38:04', 'Premium materials', 'Bella Womens Relaxed Fit Tee', '', 'publish', 'open', 'closed', '', 'bella-womens-relaxed-fit-tee', '', '', '2014-03-05 11:45:38', '2014-03-05 11:45:38', '', 0, 'http://teecircle.com/?post_type=product&#038;p=23', 0, 'product', '', 0),
(24, 1, '2014-01-08 11:38:53', '2014-01-08 11:38:53', 'Premium materials', 'Bella Womens Favorite Tee Junior Fit', '', 'publish', 'open', 'closed', '', 'bella-womens-favorite-tee-junior-fit', '', '', '2014-03-05 11:45:49', '2014-03-05 11:45:49', '', 0, 'http://teecircle.com/?post_type=product&#038;p=24', 0, 'product', '', 0),
(25, 1, '2014-01-08 11:41:08', '2014-01-08 11:41:08', 'Budget friendly', 'Gildan 6.1oz Long Sleeve', '', 'publish', 'open', 'closed', '', 'gildan-6-1oz-long-sleeve', '', '', '2014-04-14 10:16:07', '2014-04-14 10:16:07', '', 0, 'http://teecircle.com/?post_type=product&#038;p=25', 0, 'product', '', 0),
(26, 1, '2014-01-08 11:41:49', '2014-01-08 11:41:49', 'Premium materials', 'Hanes 6.1oz Long Sleeve', '', 'publish', 'open', 'closed', '', 'hanes-6-1oz-long-sleeve', '', '', '2014-04-14 10:05:02', '2014-04-14 10:05:02', '', 0, 'http://teecircle.com/?post_type=product&#038;p=26', 0, 'product', '', 0),
(27, 1, '2014-01-08 11:42:59', '2014-01-08 11:42:59', 'Budget friendly', 'Gildan 6.1oz Tank', '', 'publish', 'open', 'closed', '', 'gildan-6-1oz-tank', '', '', '2014-04-14 10:22:39', '2014-04-14 10:22:39', '', 0, 'http://teecircle.com/?post_type=product&#038;p=27', 0, 'product', '', 0),
(28, 1, '2014-01-08 11:43:37', '2014-01-08 11:43:37', 'Premium materials', 'Anvil Heavyweight Tank', '', 'publish', 'open', 'closed', '', 'anvil-heavyweight-tank', '', '', '2014-04-14 10:18:31', '2014-04-14 10:18:31', '', 0, 'http://teecircle.com/?post_type=product&#038;p=28', 0, 'product', '', 0),
(29, 1, '2014-01-08 11:44:25', '2014-01-08 11:44:25', 'Unisex Cut', 'Canvas Ringspun V-Neck', '', 'publish', 'open', 'closed', '', 'canvas-ringspun-v-neck', '', '', '2014-04-14 10:38:03', '2014-04-14 10:38:03', '', 0, 'http://teecircle.com/?post_type=product&#038;p=29', 0, 'product', '', 0),
(30, 1, '2014-01-08 11:44:54', '2014-01-08 11:44:54', 'Ladies Cut', 'Bella Womens V-Neck', '', 'publish', 'open', 'closed', '', 'bella-womens-v-neck', '', '', '2014-04-14 10:26:49', '2014-04-14 10:26:49', '', 0, 'http://teecircle.com/?post_type=product&#038;p=30', 0, 'product', '', 0),
(31, 1, '2014-01-08 11:45:42', '2014-01-08 11:45:42', 'Budget friendly', 'Hanes 7.8oz Hoodie', '', 'publish', 'open', 'closed', '', 'hanes-7-8oz-hoodie', '', '', '2014-04-14 09:59:36', '2014-04-14 09:59:36', '', 0, 'http://teecircle.com/?post_type=product&#038;p=31', 0, 'product', '', 0),
(32, 1, '2014-01-08 11:46:17', '2014-01-08 11:46:17', 'Premium materials', 'Gildan 9.5oz Hoodie', '', 'publish', 'open', 'closed', '', 'gildan-9-5oz-hoodie', '', '', '2014-04-14 10:02:27', '2014-04-14 10:02:27', '', 0, 'http://teecircle.com/?post_type=product&#038;p=32', 0, 'product', '', 0),
(33, 1, '2014-01-08 11:47:30', '2014-01-08 11:47:30', 'Top of the line', 'Code V REALTREE Camo Shirt', '', 'publish', 'open', 'closed', '', 'code-v-realtree-camo-shirt', '', '', '2014-04-14 09:47:06', '2014-04-14 09:47:06', '', 0, 'http://teecircle.com/?post_type=product&#038;p=33', 0, 'product', '', 0),
(34, 1, '2014-01-08 12:33:38', '2014-01-08 12:33:38', '', 'Design', '', 'publish', 'open', 'open', '', 'design', '', '', '2014-01-08 12:54:02', '2014-01-08 12:54:02', '', 0, 'http://teecircle.com/?page_id=34', 0, 'page', '', 0),
(38, 1, '2014-01-09 08:03:08', '2014-01-09 08:03:08', '', 'Ajax', '', 'publish', 'open', 'open', '', 'ajax', '', '', '2014-01-09 08:05:20', '2014-01-09 08:05:20', '', 0, 'http://teecircle.com/?page_id=38', 0, 'page', '', 0),
(58, 1, '2014-02-04 06:54:22', '2014-02-04 06:54:22', 'You can continue to sell shirts past your goal until your campaign ends. Once it does, we handle printing & shipping and you get a check for the profit! You can continue to sell shirts past your goal until your campaign ends. Once it does, we handle printing & shipping and you get a check for the profit! You can continue to sell shirts past your goal until your campaign ends. Once it does, we handle printing & shipping and you get a check for the profit!', 'Reach your goal!', 'You can continue to sell shirts past your goal until your campaign ends. Once it does, we handle printing & shipping and you get a check for the profit!', 'publish', 'open', 'open', '', 'reach-your-goal', '', '', '2014-02-04 07:38:18', '2014-02-04 07:38:18', '', 0, 'http://teecircle.com/?p=58', 0, 'post', '', 0),
(59, 1, '2014-02-04 06:52:34', '2014-02-04 06:52:34', '', 'pro1', '', 'inherit', 'open', 'open', '', 'pro1', '', '', '2014-02-04 06:52:34', '2014-02-04 06:52:34', '', 58, 'http://teecircle.com/wp-content/uploads/2014/02/pro1.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2014-02-04 06:52:34', '2014-02-04 06:52:34', '', 'pro2', '', 'inherit', 'open', 'open', '', 'pro2', '', '', '2014-02-04 06:52:34', '2014-02-04 06:52:34', '', 58, 'http://teecircle.com/wp-content/uploads/2014/02/pro2.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2014-02-04 06:52:35', '2014-02-04 06:52:35', '', 'pro3', '', 'inherit', 'open', 'open', '', 'pro3', '', '', '2014-02-04 06:52:35', '2014-02-04 06:52:35', '', 58, 'http://teecircle.com/wp-content/uploads/2014/02/pro3.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2014-02-04 06:55:59', '2014-02-04 06:55:59', 'Share your campaign page with supporters and collect pre-orders towards your goal. Pre-ordering is free: buyers will only be charged if the goal is reached. Share your campaign page with supporters and collect pre-orders towards your goal. Pre-ordering is free: buyers will only be charged if the goal is reached. Share your campaign page with supporters and collect pre-orders towards your goal. Pre-ordering is free: buyers will only be charged if the goal is reached.', 'Spread the word', 'Share your campaign page with supporters and collect pre-orders towards your goal. Pre-ordering is free: buyers will only be charged if the goal is reached.', 'publish', 'open', 'open', '', 'spread-the-word', '', '', '2014-02-11 07:47:04', '2014-02-11 07:47:04', '', 0, 'http://teecircle.com/?p=63', 0, 'post', '', 0),
(65, 1, '2014-02-04 06:57:12', '2014-02-04 06:57:12', 'Design a tee with our online designer, choose a goal, and set a price to launch a campaign page where you can send your supporters to buy their tees. Design a tee with our online designer, choose a goal, and set a price to launch a campaign page where you can send your supporters to buy their tees. Design a tee with our online designer, choose a goal, and set a price to launch a campaign page where you can send your supporters to buy their tees. Design a tee with our online designer, choose a goal, and set a price to launch a campaign page where you can send your supporters to buy their tees.', 'Launch your campaign', 'Design a tee with our online designer, choose a goal, and set a price to launch a campaign page where you can send your supporters to buy their tees.', 'publish', 'open', 'open', '', 'launch-your-campaign', '', '', '2014-02-04 06:59:37', '2014-02-04 06:59:37', '', 0, 'http://teecircle.com/?p=65', 0, 'post', '', 0),
(67, 1, '2014-02-04 08:05:07', '2014-02-04 08:05:07', 'LorSell high-quality screen printed tees with zero upfront costs and zero risk. We ship directly to buyers, you keep the profit.', 'Create & sell t-shirts you can be proud of', '', 'publish', 'open', 'open', '', 'create-sell-t-shirts-you-can-be-proud-of', '', '', '2014-02-04 09:10:01', '2014-02-04 09:10:01', '', 0, 'http://teecircle.com/?p=67', 0, 'post', '', 0),
(70, 1, '2014-02-04 08:57:53', '2014-02-04 08:57:53', '<div class="sbTxt">The standard chunk of Lorem Ipsum used since the 1500s is</div>\r\n<div class="cntnt">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</div>\r\n<div class="stapDegnPrt">\r\n<ul>\r\n  <li>\r\n<div class="picbanR"><img alt="" src="http://teecircle.com/wp-content/themes/teecircle/images/stp01.png" /></div>\r\n<h3>There are many</h3>\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.</li>\r\n  <li>\r\n<div class="picbanR"><img alt="" src="http://teecircle.com/wp-content/themes/teecircle/images/stp02.png" /></div>\r\n<h3>Sed ut perspiciatis</h3>\r\nAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos</li>\r\n  <li>\r\n<div class="picbanR"><img alt="" src="http://teecircle.com/wp-content/themes/teecircle/images/stp03.png" /></div>\r\n<h3>1914 translation by</h3>\r\nOn the other hand, we denounce with righteous indignation and dislike men</li>\r\n</ul>\r\n<div class="clearFix"></div>\r\n</div>\r\n<h1>How it works</h1>\r\n<div class="cntnt">Maecenas at dolor lacinia, sagittis purus eget, dictum felis. Proin interdum accumsan lobortis. Suspendisse auctor aliquet purus, eget congue est pharetra nec. Morbi sem est, imperdiet ac dui sed, rutrum volutpat magna. Mauris pulvinar :</div>\r\n<div class="abtAllPro">\r\n<ul>\r\n <li>\r\n<div class="proHldr"><img class="alignnone size-medium wp-image-193" alt="abt1" src="http://teecircle.com/wp-content/themes/teecircle/images/abt01.jpg" width="300" height="213" /></div>\r\n<div class="proDtls">\r\n<h2>1. Duis imperdiet ante sed ipsum</h2>\r\nMaecenas in libero<a href="#"> lectus. Praesent ac tellus</a> auctor magna congue ultricies a sit amet mauris. Duis convallis augue lectus, non pharetra eros viverra interdum. Morbi posuere vitae est sed tincidunt. Donec fringilla tellus dolor, eget ullamcorper nisi\r\n\r\n</div>\r\n<div class="clearFix"></div></li>\r\n <li>\r\n<div class="proHldr"><img class="alignnone size-medium wp-image-194" alt="abt2" src="http://teecircle.com/wp-content/themes/teecircle/images/abt02.jpg" width="300" height="213" /></div>\r\n<div class="proDtls">\r\n<h2>2. Morbi placerat rutrum</h2>\r\nvehicula vel. <a href="#">Sed dignissim pharetra arcu, eu lobortis diam gravida sed.</a> Aliquam lobortis sem quis lectus posuere ultricies. Suspendisse nisl elit, scelerisque non quam a, semper pulvinar sem. Sed vel purus fermentum, commodo velit vitae, molestie nulla.\r\n\r\n</div>\r\n<div class="clearFix"></div></li>\r\n <li>\r\n<div class="proHldr"><img class="alignnone size-medium wp-image-195" alt="abt3" src="http://teecircle.com/wp-content/themes/teecircle/images/abt03.jpg" width="300" height="214" /></div>\r\n<div class="proDtls">\r\n<h2>Phasellus congue lorem at elit</h2>\r\nIn vitae sapien quis nisi laoreet imperdiet dapibus in tortor. Quisque dictum nisi leo, ac commodo ante convallis non. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque mollis faucibus arcu sit amet tempor. Phasellus <a href="#">pulvinar scelerisque consequat. In posuere interdum dolor,</a> a dapibus lectus mattis sed. Proin faucibus velit quis molestie adipiscing. Cras ultricies velit non est molestie, non auctor nibh convallis. Vestibulum ultrices pellentesque leo, vitae suscipit nulla placerat vel. Nam feugiat tellus ac metus\r\n\r\n</div>\r\n<div class="clearFix"></div></li>\r\n</ul>\r\n<div class="grnLnk">\r\n<a class="gtStr centergh" title="design" href="http://teecircle.com/design/">Launch a new Campaign</a>\r\n</div>\r\n\r\n</div>', 'About Teecircle', '', 'publish', 'open', 'open', '', 'about-teecircle', '', '', '2014-04-22 10:48:18', '2014-04-22 10:48:18', '', 0, 'http://teecircle.com/?page_id=70', 0, 'page', '', 0),
(92, 1, '2014-02-04 09:13:36', '2014-02-04 09:13:36', 'Build awareness and raise money through crowdfunded merchandise. Teecircle is an easy-to-use platform that allows you to create & sell custom apparel without spending a dollar.', 'Are you a non-profit?', '', 'publish', 'open', 'open', '', 'are-you-a-non-profit', '', '', '2014-02-04 09:13:36', '2014-02-04 09:13:36', '', 0, 'http://teecircle.com/?p=92', 0, 'post', '', 0),
(94, 1, '2014-02-04 09:23:55', '2014-02-04 09:23:55', 'Create & sell t-shirts online the easy way. No paying thousands of dollars upfront, no guessing how many shirts or what sizes you''ll need, and no passing out t-shirts one by one and chasing people down for cash.', 'Zero upfront costs, and zero risk', '', 'publish', 'open', 'open', '', 'zero-upfront-costs-and-zero-risk', '', '', '2014-02-04 09:23:55', '2014-02-04 09:23:55', '', 0, 'http://teecircle.com/?p=94', 0, 'post', '', 0),
(114, 1, '2014-02-04 11:06:50', '2014-02-04 11:06:50', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece.', 'testimonial 1', '', 'publish', 'closed', 'closed', '', 'testimonial-1', '', '', '2014-02-04 12:30:56', '2014-02-04 12:30:56', '', 0, 'http://teecircle.com/?post_type=testimonial&#038;p=114', 0, 'testimonial', '', 0),
(115, 1, '2014-02-04 11:06:34', '2014-02-04 11:06:34', '', 'clnt1', '', 'inherit', 'open', 'open', '', 'clnt1', '', '', '2014-02-04 11:06:34', '2014-02-04 11:06:34', '', 114, 'http://teecircle.com/wp-content/uploads/2014/02/clnt1.png', 0, 'attachment', 'image/png', 0),
(116, 1, '2014-02-04 11:06:35', '2014-02-04 11:06:35', '', 'clnt2', '', 'inherit', 'open', 'open', '', 'clnt2', '', '', '2014-02-04 11:06:35', '2014-02-04 11:06:35', '', 114, 'http://teecircle.com/wp-content/uploads/2014/02/clnt2.png', 0, 'attachment', 'image/png', 0),
(117, 1, '2014-02-04 11:06:35', '2014-02-04 11:06:35', '', 'clnt3', '', 'inherit', 'open', 'open', '', 'clnt3', '', '', '2014-02-04 11:06:35', '2014-02-04 11:06:35', '', 114, 'http://teecircle.com/wp-content/uploads/2014/02/clnt3.png', 0, 'attachment', 'image/png', 0),
(118, 1, '2014-02-04 11:07:27', '2014-02-04 11:07:27', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece.', 'Testimonial 2', '', 'publish', 'closed', 'closed', '', 'testimonial-2', '', '', '2014-02-04 12:16:50', '2014-02-04 12:16:50', '', 0, 'http://teecircle.com/?post_type=testimonial&#038;p=118', 0, 'testimonial', '', 0),
(119, 1, '2014-02-04 11:07:55', '2014-02-04 11:07:55', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece.', 'Testimonial 3', '', 'publish', 'closed', 'closed', '', 'testimonial-3', '', '', '2014-02-04 12:30:24', '2014-02-04 12:30:24', '', 0, 'http://teecircle.com/?post_type=testimonial&#038;p=119', 0, 'testimonial', '', 0),
(154, 1, '2014-02-04 12:03:26', '2014-02-04 12:03:26', 'If you don''t absolutely love your print, we''ll take it back.', 'We guarantee 100% satisfaction', '', 'publish', 'open', 'open', '', 'we-guarantee-100-satisfaction', '', '', '2014-02-04 12:03:26', '2014-02-04 12:03:26', '', 0, 'http://teecircle.com/?p=154', 0, 'post', '', 0),
(156, 1, '2014-02-04 13:52:20', '2014-02-04 13:52:20', '', 'Get In Touch', '', 'publish', 'open', 'open', '', 'get-in-touch', '', '', '2014-02-04 13:52:20', '2014-02-04 13:52:20', '', 0, 'http://teecircle.com/?p=156', 0, 'post', '', 0),
(158, 1, '2014-02-04 13:59:01', '2014-02-04 13:59:01', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Learn More', '', 'publish', 'open', 'open', '', 'learnmore', '', '', '2014-02-04 14:03:50', '2014-02-04 14:03:50', '', 0, 'http://teecircle.com/?page_id=158', 0, 'page', '', 0),
(161, 1, '2014-02-04 14:14:40', '2014-02-04 14:14:40', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Custom t-shirts', '', 'publish', 'open', 'open', '', 'custom-t-shirts', '', '', '2014-02-04 14:14:40', '2014-02-04 14:14:40', '', 0, 'http://teecircle.com/?page_id=161', 0, 'page', '', 0),
(163, 1, '2014-02-04 14:15:38', '2014-02-04 14:15:38', 'If you can''t find an answer to your question, please contact us and we''ll be happy to help!', 'FAQ', '', 'publish', 'open', 'open', '', 'faq-site', '', '', '2014-03-11 13:14:51', '2014-03-11 13:14:51', '', 0, 'http://teecircle.com/?page_id=163', 0, 'page', '', 0),
(165, 1, '2014-02-04 14:16:32', '2014-02-04 14:16:32', '<strong>To get in touch with our support team, just send us an email at <a href="mailto:support@teecircle.com">support@teecircle.com</a></strong>. We do our best to respond to every request within 24 hours!\r\n\r\n<code>[contact-form-7 id="216" title="Contact form 1"]</code>\r\n\r\n&nbsp;', 'Contact our support team', '', 'publish', 'open', 'open', '', 'contact-us', '', '', '2014-02-06 09:44:28', '2014-02-06 09:44:28', '', 0, 'http://teecircle.com/?page_id=165', 0, 'page', '', 0),
(167, 1, '2014-02-04 14:17:50', '2014-02-04 14:17:50', 'This privacy policy describes how teecircle collects and uses the personal information you provide on our website www.teecircle.com. It also describes the choices available to you regarding our use of your personal information and how you can access and update this information.\r\n\r\nteecircle has been awarded TRUSTe''s Privacy Seal signifying that this privacy policy and practices have been reviewed by TRUSTe for compliance with <a href="#">TRUSTe''s program requirements</a> including transparency, accountability and choice regarding the collection and use of your personal information. The TRUSTe program covers information collected through this Web site, www.teecircle.com. TRUSTe''s mission, as an independent third party, is to accelerate online trust among consumers and organizations globally through its leading privacy trustmark and innovative trust solutions. If you have questions or complaints regarding our privacy policy or practices, please <a href="#">visit our support page</a> or contact us directly at <a href="mailto:support@teecircle.com">support@teecircle.com</a>. If you are not satisfied with our response you can <a href="#">contact TRUSTe here</a>.\r\n<h3>Collection and Use of Personal Information</h3>\r\nWe collect the following personal information from you:\r\n<ol>\r\n  <li>Contact Information such as name, email address, mailing address, phone number</li>\r\n <li>Billing Information such as name and billing address</li>\r\n</ol>\r\nAs is true of most Web sites, we automatically gather information about your computer such as your IP address, browser type, referring/exit pages, and operating system.\r\n\r\nWe use this information to:\r\n<ol>\r\n <li>Fulfill your order</li>\r\n <li>Send you an order confirmation</li>\r\n <li>Send you requested product or service information</li>\r\n  <li>Send product updates or warranty information</li>\r\n <li>Respond to customer service requests</li>\r\n <li>Administer your account</li>\r\n  <li>Respond to your questions and concerns</li>\r\n</ol>\r\n<h3>Spread the word</h3>\r\nIf you choose to use our emailer tool to tell a friend about our site, we will ask you for your friend’s email address. We will automatically send your friend a one-time email inviting them to visit teecircle. teecircle does not store this information and is only used for the sole purpose of sending this one-time email. Your friend may contact us to request that we remove this information from our database.\r\n<h3>Facebook Connect or Open ID</h3>\r\nYou can log in to our site using sign-in services such as Facebook Connect or an Open ID provider. These services will authenticate your identity and provide you the option to share certain personal information with us such as your name and email address to pre-populate our sign up form. Services like Facebook Connect give you the option to post information about your activities on this Web site to your profile page to share with others within your network.\r\n<h3>Information Sharing</h3>\r\nWe will share your personal information with third parties only in the ways that are described in this privacy statement. We do not sell your personal information to third parties.\r\n\r\nIf you participate in a white-labeled enterprise campaign (identified by the enterprise having their logo in the top left of the campaign, as opposed to the teecircle logo) we may share your name, email address and order breakdown of size and quantity with the enterprise customers for the purposes of continued contact. This information is encrypted on the teecircle database and is only decrypted to send to the enterprise client securely. After this has been complete, the plain-text data is purged from the teecircle server. To opt out of this marketing, please contact the white-labeled enterprise customer.\r\n\r\nWe may provide your personal information to companies that provide services to help us with our business activities such as shipping your order or offering customer service. These companies are authorized to use your personal information only as necessary to provide these services to us.\r\n\r\nWe may also disclose your personal information:\r\n<ol>\r\n  <li>As required by law such as to comply with a subpoena, or similar legal process</li>\r\n <li>When we believe in good faith that disclosure is necessary to protect our rights, protect your safety or the safety of others, investigate fraud, or respond to a government request</li>\r\n <li>If teecircle is involved in a merger, acquisition, or sale of all or a portion of its assets, you will be notified via email and/or a prominent notice on our Web site of any change in ownership or uses of your personal information, as well as any choices you may have regarding your personal information</li>\r\n  <li>To any other third party with your prior consent to do so</li>\r\n</ol>\r\n<h3>Cookies and Other Tracking Technologies</h3>\r\nWe may use cookies, for example, to keep track of your preferences and profile information. Cookies are also used to collect general usage and volume statistical information that does not include personal information. We use another company to place cookies on your computer to collect non-personal information to compile aggregated statistics for us about visitors to our site.\r\n\r\nWe use local shared objects, also known as Flash cookies, to store your preferences such as volume control or high game score, or display content based upon what you view on our site to personalize your visit. Third Parties, with whom we partner to provide certain features on our site or to display advertising based upon your Web browsing activity, use Flash cookies to collect and store information. Flash cookies are different from browser cookies because of the amount of, type of, and how data is stored. Cookie management tools provided by your browser will not remove Flash cookies. To learn how to manage privacy and storage settings for Flash cookies click here: <a href="http://www.macromedia.com/support/documentation/en/flashplayer/help/settings_manager.html#117118">http://www.macromedia.com/support/documentation/en/flashplayer/help/settings_manager.html#117118</a>.\r\n<h3>Links to Other Web Sites</h3>\r\nOur Site includes links to other Web sites whose privacy practices may differ from those of teecircle. If you submit personal information to any of those sites, your information is governed by their privacy policies. We encourage you to carefully read the privacy policy of any Web site you visit.\r\n<h3>Analytics Data Gathering</h3>\r\nWe use third party analytics tools, such as Google Analytics to measure traffic and website usage. One feature we use in Google Analytics is non-personally identifiable 3rd-party audience data (such as age, gender, and interests), which we use to improve our service.\r\n<h3>Data Retention</h3>\r\nWe will retain your information for as long as your account is active or as needed to provide you services. Please contact us if you wish to cancel your account or request that we no longer use your information to provide you services. We will retain and use your information as necessary to comply with our legal obligations, resolve disputes, and enforce our agreements.\r\n<h3>Deletion / Deactivation</h3>\r\nIf your personal information changes, or if you no longer desire our service, you may correct, update, or delete it by making the change on our member information page or by contacting us by telephone or postal mail at the contact information listed below.\r\n<h3>Security</h3>\r\nThe security of your personal information is important to us. We follow generally accepted industry standards to protect the personal information submitted to us, both during transmission and once we receive it. When you enter sensitive information (such as a credit card number) on our order forms, we encrypt the transmission of that information using secure socket layer technology (SSL). We also encrypt customer information in our database so that customers name and address is never stored in plain text. However, no method of transmission over the Internet, or method of electronic storage, is 100% secure, however. Therefore, we cannot guarantee its absolute security. Please <a href="#">contact us</a>, if you have any questions about security on our Web site.\r\n\r\nWe provide two means for you to make a purchase on our site. You can either use our order form or a third party payment option. If you use our shopping cart, the transmission of sensitive information collected on our order form is encrypted using secure socket layer technology (SSL) and is processed by Authorize.net. If you choose to use a third party payment option, such as PayPal, to pay for your order, its privacy policy and security practices will apply to your information. We encourage you to read that privacy policy before providing your information.\r\n<h3>Social Media Features and Widgets</h3>\r\nOur website includes Social Media Features, such as the Facebook Like button and Widgets. These Features may collect your IP address, which page you are visiting on our site, and may set a cookie to enable the Feature to function properly. Social Media Features and Widgets are either hosted by a third party or hosted directly on our Site. Your interactions with these Features are governed by the privacy policy of the company providing it.\r\n<h3>Testimonials</h3>\r\nWe display personal testimonials of satisfied customers on our site in addition to other endorsements. With your consent we may post your testimonial along with your name. If you wish to update or delete your testimonial, you can contact us at <a href="mailto:support@teecircle.com">support@teecircle.com</a>.\r\n<h3>Notification of Privacy Policy Changes</h3>\r\nWe may update this privacy policy to reflect changes to our information practices. If we make any material changes we will notify you by email (sent to the e-mail address specified in your account) or by means of a notice on this Site prior to the change becoming effective. We encourage you to periodically review this page for the latest information on our privacy practices.\r\n<h3>Contact Information:</h3>\r\n<address>teecircle\r\nEmail: <a href="mailto:support@teecircle.com">support@teecircle.com</a>', 'Privacy Policy', '', 'publish', 'open', 'open', '', 'privacy-policy', '', '', '2014-02-06 09:54:30', '2014-02-06 09:54:30', '', 0, 'http://teecircle.com/?page_id=167', 0, 'page', '', 0),
(169, 1, '2014-02-04 14:18:44', '2014-02-04 14:18:44', 'PLEASE CAREFULLY READ BEFORE USING THE SERVICES OFFERED BY TEECIRCLE.COM.\r\n\r\nteecircle provides users with an automated Internet-based service, to design and sell t-shirts and other custom products. By using teecircle and its services in any capacity, you have agreed to the terms and conditions of this Agreement and agree to use the site and service solely as provided in this Agreement.  For additional clarification on these Terms of Service, please refer to teecircle’s <a href="#">Frequently Asked Questions</a> section.\r\n<h3>User Agreement</h3>\r\n<strong>By violating this user agreement in any capacity, you are subject to an immediate removal of your campaign(s), possible forfeit of profit(s), and potential suspension or termination of your account.</strong>\r\n\r\n&nbsp;\r\n\r\nBy creating a campaign on the teecircle site:\r\n<ul>\r\n <li>You agree to accept and abide by teecircle’s Terms of Service in their entirety.</li>\r\n <li>With respect to any trademarks, service marks or copyrights that you have licensed from the owner thereof (the “Licensed Rights”), you agree to comply with any restrictions or conditions imposed on the use of the Licensed Rights.</li>\r\n  <li>You agree that you are the owner, or licensee, of all rights associated with any created or uploaded artwork or text, including but not limited to, the trademarks and copyrights that may be associated with said material.  If you are not the owner, you agree to provide teecircle with evidence of the permission given to you by the owner.</li>\r\n  <li>You agree that the description and title of the campaign do not, either in and of themselves or in addition to the text and images featured in the created merchandise, infringe upon the rights of any third party.</li>\r\n <li>You understand and agree that teecircle may, in its sole discretion, release your contact information to a third party that satisfactorily alleges—pursuant to teecircle’s Complaint policy, below— unauthorized use of its intellectual property.</li>\r\n <li>Upon receipt by teecircle of an allegation of infringement that comports with teecircle’s Complaint Policy, in teecircle’s sole discretion, your campaign may be subject to immediate cancellation, possible forfeiture of any profits, and suspension or termination of your account with teecircle.</li>\r\n  <li>You agree not to provide untrue information in your campaign including, but not limited to: the amount of product for sale, the origin of production of the product, or the intended recipient of profits.</li>\r\n <li>You agree not to solicit potential buyers through information posted in your campaign other than the purchase of the primary item(s). This includes raffles, chances to win, and other representations of additional opportunities beyond the sale of the primary item being sold.</li>\r\n <li>You agree to defend, indemnify and hold teecircle and its affiliates harmless from and against any and all claims, damages, costs and expenses, including reasonable attorneys'' fees, arising from or relating to your use of teecircle’s site and services, your violation of this agreement, or your violation of any rights of another.</li>\r\n  <li>You agree that teecircle is not responsible for any consequential, indirect or any special damages, including, but not limited to, lost profits, associated with any action taken by teecircle pursuant to this Agreement or your use of the teecircle service.</li>\r\n</ul>\r\n<h3>Intellectual Property Complaint Policy</h3>\r\nteecircle prohibit users from using the service to sell merchandise that infringes upon third party intellectual property rights (such as copyright, trademark, trade dress and right of publicity).\r\n\r\nteecircle will consider complaints of possible infringement only from parties that own, or have the exclusive right to exploit, said intellectual property. teecircle is not in a position to adjudicate disputes. If you believe a campaign contains content that is not authorized, upon receipt of the information enumerated below, we will provide our customer with your correspondence and contact information and direct the customer to contact you within seven (7) days to resolve this dispute. If the customer does not contact you, or if the issue is not resolved to your satisfaction, please let us know. In cases of an alleged infringement, in our sole discretion, we may take down the campaign and refund all buyers, provided that the conditions, below, are satisfied.\r\n\r\nIf you believe that your intellectual property rights have been infringed upon by a teecircle user, please notify teecircle at report@teecircle.com. You must include with your notification the following information, in PDF format.\r\n<ol>\r\n <li>A physical or electronic signature of a person authorized to act on behalf of the owner of the intellectual property that you allege is being infringed;</li>\r\n <li>The URL to the teecircle campaign(s) used in connection with the sale of the allegedly infringing merchandise;</li>\r\n <li>Identification of the copyright, trademark or other rights that allegedly have been infringed, including proof of ownership (such as copies of subsisting trademark or copyright registrations)</li>\r\n  <li>Your full name, address, telephone number(s) and email address(es)</li>\r\n <li>A statement that you have a good-faith belief that use of the material in the URL submitted is unauthorized by the rights owner, or its licensee, and such use amounts to infringement under federal or state law; and</li>\r\n <li>A statement, under penalty of perjury, that the information in the notification is complete and accurate and that you are authorized to act on behalf of the owner of the copyright or other right that is allegedly infringed.</li>\r\n</ol>\r\n<h3>We Respect the Prior, Legitimate Rights of the First to Publish a Campaign</h3>\r\nSometimes, later campaigns copy earlier campaigns that contain original artwork. Our policy is that every original image or design uploaded onto teecircle is protected against exact duplication, or use in a confusingly similar (trademark) or substantially similar (copyright) manner.\r\n\r\nteecircle will accept complaints and notification of possible infringement from customers that claim ownership of said original content from an earlier campaign.\r\n\r\nOnce notified, teecircle, in its discretion, may remedy any alleged infringement by removing unauthorized content. Alternately, teecircle may notify the allegedly infringing party and provide a warning; instances of further infractions can lead to possible suspension or termination of their accounts.\r\n\r\nFor additional information regarding these policies, please reference teecircle’s <a href="#">Frequently Asked Questions</a> (FAQ’s) page.\r\n\r\nIf you see a campaign containing your original image or design and would like to report it to teecircle, contact us at content@teecircle.com with the following information:\r\n<ol>\r\n <li>The URL(s) used in connection with the sale of the allegedly infringing merchandise; and</li>\r\n <li>The URL(s) of your campaign and date of first use</li>\r\n</ol>\r\nNOTE:\r\n\r\nAll images, artwork and fonts accessed through teecircle art/font libraries are owned by teecircle. They are available for your use only in conjunction with a campaign through teecircle.  You do not accrete any rights to any images, artwork and/or fonts accessed from a teecircle library, or any derivations thereof.\r\n<h3>Return Policy</h3>\r\nteecircle.com works hard to ensure that all our campaigns are printed to high-quality materials &amp; shipped on time and accurately. teecircle.com accepts returns and will issue a full refund within 30 days of the end of the campaign if customers are disappointed with their order for any of the following reasons: The product itself is flawed; The quality of the printing is poor; Or if the final product is materially different than the design presented in the campaign. If you are in any way unsatisfied with your purchase, please contact us at support@teecircle.com.\r\n\r\nThese Services are operated and provided by teecircle <a href="#">If you have any questions about these Terms, please contact us</a>.\r\n\r\n<em>Updated January 14, 2014</em>', 'Terms of Service', '', 'publish', 'open', 'open', '', 'terms-of-service', '', '', '2014-02-06 09:51:54', '2014-02-06 09:51:54', '', 0, 'http://teecircle.com/?page_id=169', 0, 'page', '', 0),
(172, 1, '2014-02-05 10:59:42', '2014-02-05 10:59:42', 'Create & sell t-shirts online the easy way. No paying thousands of dollars upfront, no guessing how many shirts or what sizes you''ll need, and no passing out t-shirts one by one and chasing people down for cash. Here''s how it works:', 'How it works', '', 'publish', 'open', 'open', '', 'how-it-works', '', '', '2014-02-05 11:04:36', '2014-02-05 11:04:36', '', 0, 'http://teecircle.com/?page_id=172', 0, 'page', '', 0),
(179, 1, '2014-02-05 12:29:23', '2014-02-05 12:29:23', 'Teecircle allows you to crowdfund awesome custom apparel, with zero costs and zero hassle. To learn more, check out our "how it works" page or contact us at support@teecircle.com.', 'What is Teecircle?', '', 'publish', 'closed', 'closed', '', 'teecircle', '', '', '2014-02-06 10:03:02', '2014-02-06 10:03:02', '', 0, 'http://teecircle.com/?post_type=faq&#038;p=179', 0, 'faq', '', 0),
(180, 1, '2014-02-05 12:30:14', '2014-02-05 12:30:14', 'Nope! We authorize a payment for the amount of the t-shirt, but you will only be charged if the campaign reaches its goal before the deadline. You can cancel your order any time before the campaign reaches its goal by going to www.teecircle.com/track and entering your order number.', 'Will I be charged for reserving a shirt?', '', 'publish', 'closed', 'closed', '', 'will-i-be-charged-for-reserving-a-shirt', '', '', '2014-02-06 10:02:09', '2014-02-06 10:02:09', '', 0, 'http://teecircle.com/?post_type=faq&#038;p=180', 0, 'faq', '', 0),
(181, 1, '2014-02-05 12:31:48', '2014-02-05 12:31:48', 'Domestic orders should take between 10-14 days from the end of the campaign to arrive, international orders take 14-18 days.\r\n\r\nIf your order hasn''t arrived inside the estimated delivery times, please contact our support team.\r\n', 'How long after the campaign ends will my shirt be delivered?', '', 'publish', 'closed', 'closed', '', 'how-long-after-the-campaign-ends-will-my-shirt-be-delivered', '', '', '2014-02-05 12:31:48', '2014-02-05 12:31:48', '', 0, 'http://teecircle.com/?post_type=faq&#038;p=181', 0, 'faq', '', 0),
(182, 1, '2014-02-05 12:32:42', '2014-02-05 12:32:42', 'We have three simple shipping rates. One for domestic shipments (inside the United States), one for Canada, and one for other international shipments.\r\n\r\nDomestic (United States) shipping $3.85 + $.25 for each additional t-shirt. Your shirt should arrive within 10-14 days from the end of the campaign.\r\n\r\nDomestic (Canada) $7.50 + $1 for each additional t-shirt. Your shirt should arrive within 17-21 days from the end of the campaign.\r\n\r\nInternational shipping is $10.50 + $1 for each additional t-shirt. Your shirt should arrive within 17-21 days from the end of the campaign.', 'How much does shipping cost?', '', 'publish', 'closed', 'closed', '', 'how-much-does-shipping-cost', '', '', '2014-02-05 12:40:11', '2014-02-05 12:40:11', '', 0, 'http://teecircle.com/?post_type=faq&#038;p=182', 0, 'faq', '', 0),
(183, 1, '2014-02-05 12:33:53', '2014-02-05 12:33:53', 'You will not be charged if the campaign does not reach its sales goal. We''ll cancel the payment authorization within 24 hours of the end of the campaign.', 'If the campaign doesn''t reach its sales goal, will I still be charged?', '', 'publish', 'closed', 'closed', '', 'if-the-campaign-doesnt-reach-its-sales-goal-will-i-still-be-charged', '', '', '2014-02-05 12:33:53', '2014-02-05 12:33:53', '', 0, 'http://teecircle.com/?post_type=faq&#038;p=183', 0, 'faq', '', 0),
(184, 1, '2014-02-05 12:40:50', '2014-02-05 12:40:50', '<div id="collapse25">\r\n<div>\r\n\r\nThe "Verified Donation" badge on certain campaigns is our way to let you know that the seller has opted to donate all profits to a "qualified" non-profit (501c3) charity group or organization. Teecircle has verified the charity and all profits are sent directly to that charity and not to the individual seller. The profit is calculated as the selling price minus the cost of the shirt.*\r\n\r\n* cost of shirt varies based on garment quality, volume, style, and print colors.\r\n\r\n</div>\r\n</div>', 'What does "Verified Donation" mean? Where is my money going?', '', 'publish', 'closed', 'closed', '', 'what-does-verified-donation-mean-where-is-my-money-going', '', '', '2014-02-06 10:01:23', '2014-02-06 10:01:23', '', 0, 'http://teecircle.com/?post_type=faq&#038;p=184', 0, 'faq', '', 0),
(185, 1, '2014-02-05 12:43:12', '2014-02-05 12:43:12', 'To launch a campaign, just go to <a href="#">www.teecircle.com/design</a>.', 'How do I launch a campaign?', '', 'publish', 'closed', 'closed', '', 'how-do-i-launch-a-campaign', '', '', '2014-02-06 10:00:21', '2014-02-06 10:00:21', '', 0, 'http://teecircle.com/?post_type=faq&#038;p=185', 0, 'faq', '', 0),
(186, 1, '2014-02-05 12:46:25', '2014-02-05 12:46:25', 'No, it''s completely free to launch a campaign. Because you''re crowdfunding your item, you''ll never have to pay any upfront costs or take any risk.', 'Does it cost anything to launch a campaign?', '', 'publish', 'closed', 'closed', '', 'does-it-cost-anything-to-launch-a-campaign', '', '', '2014-02-05 12:46:25', '2014-02-05 12:46:25', '', 0, 'http://teecircle.com/?post_type=faq&#038;p=186', 0, 'faq', '', 0),
(187, 1, '2014-02-05 12:47:30', '2014-02-05 12:47:30', 'Nope! You can launch a campaign from anywhere, but international users need to be able to accept Paypal to receive payouts. If you have a unique circumstance and cannot accept paypal, please <a href="#">contact our support team</a>.', 'Do I have to be in the USA to launch a campaign?', '', 'publish', 'closed', 'closed', '', 'do-i-have-to-be-in-the-usa-to-launch-a-campaign', '', '', '2014-02-06 09:59:29', '2014-02-06 09:59:29', '', 0, 'http://teecircle.com/?post_type=faq&#038;p=187', 0, 'faq', '', 0),
(190, 1, '2014-02-05 13:32:16', '2014-02-05 13:32:16', '', 'stp1', '', 'inherit', 'open', 'open', '', 'stp1', '', '', '2014-02-05 13:32:16', '2014-02-05 13:32:16', '', 70, 'http://teecircle.com/wp-content/uploads/2014/02/stp1.jpg', 0, 'attachment', 'image/jpeg', 0),
(191, 1, '2014-02-05 13:32:16', '2014-02-05 13:32:16', '', 'stp2', '', 'inherit', 'open', 'open', '', 'stp2', '', '', '2014-02-05 13:32:16', '2014-02-05 13:32:16', '', 70, 'http://teecircle.com/wp-content/uploads/2014/02/stp2.jpg', 0, 'attachment', 'image/jpeg', 0),
(192, 1, '2014-02-05 13:32:17', '2014-02-05 13:32:17', '', 'stp3', '', 'inherit', 'open', 'open', '', 'stp3', '', '', '2014-02-05 13:32:17', '2014-02-05 13:32:17', '', 70, 'http://teecircle.com/wp-content/uploads/2014/02/stp3.jpg', 0, 'attachment', 'image/jpeg', 0);
=======================================================
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(193, 1, '2014-02-05 13:36:45', '2014-02-05 13:36:45', '', 'abt1', '', 'inherit', 'open', 'open', '', 'abt1', '', '', '2014-02-05 13:36:45', '2014-02-05 13:36:45', '', 70, 'http://teecircle.com/wp-content/uploads/2014/02/abt1.jpg', 0, 'attachment', 'image/jpeg', 0),
(194, 1, '2014-02-05 13:36:46', '2014-02-05 13:36:46', '', 'abt2', '', 'inherit', 'open', 'open', '', 'abt2', '', '', '2014-02-05 13:36:46', '2014-02-05 13:36:46', '', 70, 'http://teecircle.com/wp-content/uploads/2014/02/abt2.jpg', 0, 'attachment', 'image/jpeg', 0),
(195, 1, '2014-02-05 13:36:46', '2014-02-05 13:36:46', '', 'abt3', '', 'inherit', 'open', 'open', '', 'abt3', '', '', '2014-02-05 13:36:46', '2014-02-05 13:36:46', '', 70, 'http://teecircle.com/wp-content/uploads/2014/02/abt3.jpg', 0, 'attachment', 'image/jpeg', 0),
(198, 1, '2014-02-05 13:54:43', '2014-02-05 13:54:43', 'We have three simple shipping rates. One for domestic shipments (inside the United States), one for Canada, and one for other international shipments.\r\n\r\n<strong>Domestic (United States) shipping $3.85 + $.25 for each additional t-shirt</strong>. Your shirt should arrive within 10-14 days from the end of the campaign.\r\n\r\n<strong>Domestic (Canada) $7.50 + $1 for each additional t-shirt</strong>. Your shirt should arrive within 17-21 days from the end of the campaign.\r\n\r\n<strong>International shipping is $10.50 + $1 for each additional t-shirt</strong>. Your shirt should arrive within 17-21 days from the end of the campaign.', 'Shipping rates', '', 'publish', 'open', 'open', '', 'shipping-rates', '', '', '2014-02-06 09:02:21', '2014-02-06 09:02:21', '', 0, 'http://teecircle.com/?page_id=198', 0, 'page', '', 0),
(203, 1, '2014-02-06 07:46:39', '2014-02-06 07:46:39', 'Whether you''re raising money, building community or just selling an awesome design there''s a few things you can do to help spread the word and reach your goal.\r\n\r\n<strong>Promote your campaign on Facebook</strong>\r\n\r\nPosting a status update on Facebook with your campaign link (e.g., teecircle.com/yourcampaign) is a great way to get your campaign in front of your friends of community. When you share your campaign link Facebook will automatically add a link preview with a picture of your shirt, the title of your campaign and the description!\r\n\r\n<strong>Create a Facebook Event and Invite Your Friends</strong>\r\n\r\nCreating a Facebook event and inviting your friends is another easy way of getting the word out. Just go to <a href="http://teecircle.com/about/www.facebook.com/events" target="_new">www.facebook.com/events</a> and click the "Create Event" link in the top right. An event allows you to go into more detail about your campaign as well as featuring additional pictures of your design (it also makes it easy to invite all your friends so they receive an email notification)!\r\n\r\n<strong>Facebook Promotional Tools</strong>\r\n\r\nYou can also take advantage of Facebook''s promotion tools, which allow you to promote a post to your friends for just $7. Promoted posts appear at the top of your friends news feed for 24 hours and are a great way to get the message out. If you are promoting your campaign through your Facebook group and want to promote your post we recommend you choose the $10 option which guarantees a certain percentage of your fans will see your post.\r\n\r\n<strong>Tweet your campaign</strong>\r\n\r\nIf you are on Twitter, the most effective way to promote your campaign is by tweeting a picture of your design with a short message and link to your campaign page (e.g., teecircle.com/yourcampaign).\r\n\r\n<strong>Email your supporters directly</strong>\r\n\r\nEmailing your supporters directly is an extremely effective way of promoting your campaign. We also offer an email tool, which makes it easy to send your message to groups of people. To use the tool just go to your campaign page and click the email icon to the right of the title!', 'Teecircle School', '', 'publish', 'open', 'open', '', 'teecircle-school', '', '', '2014-02-06 09:55:59', '2014-02-06 09:55:59', '', 0, 'http://teecircle.com/?page_id=203', 0, 'page', '', 0),
(216, 1, '2014-02-06 09:15:00', '2014-02-06 09:15:00', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>\n[your-subject]\n[your-name] <[your-email]>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on TeeCircle (http://teecircle.com)\nnabanita.c@candeotech.net\n\n\n0\n\n[your-subject]\n[your-name] <[your-email]>\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on TeeCircle (http://teecircle.com)\n[your-email]\n\n\n0\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill the required field.', 'Contact form 1', '', 'publish', 'open', 'open', '', 'contact-form-1', '', '', '2014-02-06 09:15:00', '2014-02-06 09:15:00', '', 0, 'http://teecircle.com/?post_type=wpcf7_contact_form&p=216', 0, 'wpcf7_contact_form', '', 0),
(228, 1, '2014-02-07 06:22:28', '2014-02-07 06:22:28', '', 'Ajax Library Images', '', 'publish', 'open', 'open', '', 'ajax-library-images', '', '', '2014-02-07 06:22:28', '2014-02-07 06:22:28', '', 0, 'http://teecircle.com/?page_id=228', 0, 'page', '', 0),
(230, 1, '2014-02-07 07:07:15', '2014-02-07 07:07:15', '', 'Ajax Get Clipart', '', 'publish', 'open', 'open', '', 'ajax-get-clipart', '', '', '2014-02-07 07:17:16', '2014-02-07 07:17:16', '', 0, 'http://teecircle.com/?page_id=230', 0, 'page', '', 0),
(234, 1, '2014-02-07 07:24:36', '2014-02-07 07:24:36', 'Testing', 'Demo', '', 'publish', 'open', 'open', '', 'demo', '', '', '2014-02-07 07:24:36', '2014-02-07 07:24:36', '', 0, 'http://teecircle.com/?page_id=234', 0, 'page', '', 0),
(311, 1, '2014-02-12 08:03:05', '2014-02-12 08:03:05', '', 'Preview', '', 'publish', 'open', 'open', '', 'preview', '', '', '2014-02-12 08:03:05', '2014-02-12 08:03:05', '', 0, 'http://teecircle.com/?page_id=311', 0, 'page', '', 0),
(314, 1, '2014-02-12 09:39:52', '2014-02-12 09:39:52', '', 'mygen', '', 'inherit', 'open', 'open', '', 'mygen', '', '', '2014-02-12 09:39:52', '2014-02-12 09:39:52', '', 238, 'http://teecircle.com/wp-content/uploads/2014/02/mygen.jpg', 0, 'attachment', 'image/jpeg', 0),
(352, 1, '2014-03-06 09:42:00', '2014-03-06 09:42:00', '', 'Campaigns', '', 'publish', 'open', 'open', '', 'campaigns', '', '', '2014-03-06 09:42:00', '2014-03-06 09:42:00', '', 0, 'http://teecircle.com/?page_id=352', 0, 'page', '', 0),
(359, 1, '2014-03-10 11:02:22', '2014-03-10 11:02:22', '', 'Edit Product', '', 'publish', 'open', 'open', '', 'edit-product', '', '', '2014-03-10 11:09:22', '2014-03-10 11:09:22', '', 0, 'http://teecircle.com/?page_id=359', 0, 'page', '', 0),
(442, 1, '2014-03-24 14:24:12', '2014-03-24 14:24:12', '', '2', '', 'inherit', 'open', 'open', '', '2', '', '', '2014-03-24 14:24:12', '2014-03-24 14:24:12', '', 19, 'http://teecircle.com/wp-content/uploads/2014/01/2.png', 0, 'attachment', 'image/png', 0),
(443, 1, '2014-03-24 14:24:18', '2014-03-24 14:24:18', '', '1', '', 'inherit', 'open', 'open', '', '1', '', '', '2014-03-24 14:24:18', '2014-03-24 14:24:18', '', 19, 'http://teecircle.com/wp-content/uploads/2014/01/1.png', 0, 'attachment', 'image/png', 0),
(444, 1, '2014-03-25 11:13:58', '2014-03-25 11:13:58', '', '2', '', 'inherit', 'open', 'open', '', '2-2', '', '', '2014-03-25 11:13:58', '2014-03-25 11:13:58', '', 21, 'http://teecircle.com/wp-content/uploads/2014/01/21.png', 0, 'attachment', 'image/png', 0),
(445, 1, '2014-03-25 11:14:04', '2014-03-25 11:14:04', '', '1', '', 'inherit', 'open', 'open', '', '1-2', '', '', '2014-03-25 11:14:04', '2014-03-25 11:14:04', '', 21, 'http://teecircle.com/wp-content/uploads/2014/01/11.png', 0, 'attachment', 'image/png', 0),
(446, 1, '2014-03-25 13:09:06', '2014-03-25 13:09:06', 'nininuininininiubibuy', 'Test product', '', 'publish', 'open', 'closed', '', 'test-product', '', '', '2014-04-15 19:41:01', '2014-04-15 19:41:01', '', 0, 'http://teecircle.com/?post_type=product&#038;p=446', 0, 'product', '', 0),
(448, 1, '2014-03-25 13:08:24', '2014-03-25 13:08:24', '', 'tee2', '', 'inherit', 'open', 'open', '', 'tee2', '', '', '2014-03-25 13:08:24', '2014-03-25 13:08:24', '', 446, 'http://teecircle.com/wp-content/uploads/2014/03/tee2.png', 0, 'attachment', 'image/png', 0),
(449, 1, '2014-03-25 13:08:47', '2014-03-25 13:08:47', '', 'hoodie2', '', 'inherit', 'open', 'open', '', 'hoodie2', '', '', '2014-03-25 13:08:47', '2014-03-25 13:08:47', '', 446, 'http://teecircle.com/wp-content/uploads/2014/03/hoodie2.png', 0, 'attachment', 'image/png', 0),
(460, 1, '2014-03-28 20:23:49', '2014-03-28 20:23:49', '', 'Other Prices', '', 'publish', 'open', 'open', '', 'profit', '', '', '2014-03-29 22:03:09', '2014-03-29 22:03:09', '', 0, 'http://teecircle.com/?p=460', 0, 'post', '', 0),
(510, 1, '2014-04-14 08:01:23', '2014-04-14 08:01:23', '', 'front1', '', 'inherit', 'open', 'open', '', 'front1', '', '', '2014-04-14 08:01:23', '2014-04-14 08:01:23', '', 20, 'http://teecircle.com/wp-content/uploads/2014/01/front1.jpg', 0, 'attachment', 'image/jpeg', 0),
(511, 1, '2014-04-14 08:01:49', '2014-04-14 08:01:49', '', 'back1', '', 'inherit', 'open', 'open', '', 'back1', '', '', '2014-04-14 08:01:49', '2014-04-14 08:01:49', '', 20, 'http://teecircle.com/wp-content/uploads/2014/01/back1.jpg', 0, 'attachment', 'image/jpeg', 0),
(512, 1, '2014-04-14 08:06:41', '2014-04-14 08:06:41', '', 'back1', '', 'inherit', 'open', 'open', '', 'back1-2', '', '', '2014-04-14 08:06:41', '2014-04-14 08:06:41', '', 20, 'http://teecircle.com/wp-content/uploads/2014/01/back11.jpg', 0, 'attachment', 'image/jpeg', 0),
(513, 1, '2014-04-14 08:07:37', '2014-04-14 08:07:37', '', 'back1', '', 'inherit', 'open', 'open', '', 'back1-3', '', '', '2014-04-14 08:07:37', '2014-04-14 08:07:37', '', 20, 'http://teecircle.com/wp-content/uploads/2014/01/back12.jpg', 0, 'attachment', 'image/jpeg', 0),
(514, 1, '2014-04-14 08:08:02', '2014-04-14 08:08:02', '', 'front1', '', 'inherit', 'open', 'open', '', 'front1-2', '', '', '2014-04-14 08:08:02', '2014-04-14 08:08:02', '', 20, 'http://teecircle.com/wp-content/uploads/2014/01/front11.jpg', 0, 'attachment', 'image/jpeg', 0),
(515, 1, '2014-04-14 08:56:07', '2014-04-14 08:56:07', '', 'back2', '', 'inherit', 'open', 'open', '', 'back2', '', '', '2014-04-14 08:56:07', '2014-04-14 08:56:07', '', 33, 'http://teecircle.com/wp-content/uploads/2014/01/back2.jpg', 0, 'attachment', 'image/jpeg', 0),
(516, 1, '2014-04-14 08:56:30', '2014-04-14 08:56:30', '', 'front2', '', 'inherit', 'open', 'open', '', 'front2', '', '', '2014-04-14 08:56:30', '2014-04-14 08:56:30', '', 33, 'http://teecircle.com/wp-content/uploads/2014/01/front2.jpg', 0, 'attachment', 'image/jpeg', 0),
(518, 1, '2014-04-14 09:59:10', '2014-04-14 09:59:10', '', 'back1', '', 'inherit', 'open', 'open', '', 'back1-4', '', '', '2014-04-14 09:59:10', '2014-04-14 09:59:10', '', 31, 'http://teecircle.com/wp-content/uploads/2014/01/back13.jpg', 0, 'attachment', 'image/jpeg', 0),
(519, 1, '2014-04-14 09:59:28', '2014-04-14 09:59:28', '', 'front1', '', 'inherit', 'open', 'open', '', 'front1-3', '', '', '2014-04-14 09:59:28', '2014-04-14 09:59:28', '', 31, 'http://teecircle.com/wp-content/uploads/2014/01/front12.jpg', 0, 'attachment', 'image/jpeg', 0),
(520, 1, '2014-04-14 10:02:06', '2014-04-14 10:02:06', '', 'back2', '', 'inherit', 'open', 'open', '', 'back2-2', '', '', '2014-04-14 10:02:06', '2014-04-14 10:02:06', '', 32, 'http://teecircle.com/wp-content/uploads/2014/01/back21.jpg', 0, 'attachment', 'image/jpeg', 0),
(521, 1, '2014-04-14 10:02:14', '2014-04-14 10:02:14', '', 'front2', '', 'inherit', 'open', 'open', '', 'front2-2', '', '', '2014-04-14 10:02:14', '2014-04-14 10:02:14', '', 32, 'http://teecircle.com/wp-content/uploads/2014/01/front21.jpg', 0, 'attachment', 'image/jpeg', 0),
(522, 1, '2014-04-14 10:04:37', '2014-04-14 10:04:37', '', 'back2', '', 'inherit', 'open', 'open', '', 'back2-3', '', '', '2014-04-14 10:04:37', '2014-04-14 10:04:37', '', 26, 'http://teecircle.com/wp-content/uploads/2014/01/back22.jpg', 0, 'attachment', 'image/jpeg', 0),
(523, 1, '2014-04-14 10:04:54', '2014-04-14 10:04:54', '', 'front2', '', 'inherit', 'open', 'open', '', 'front2-3', '', '', '2014-04-14 10:04:54', '2014-04-14 10:04:54', '', 26, 'http://teecircle.com/wp-content/uploads/2014/01/front22.jpg', 0, 'attachment', 'image/jpeg', 0),
(524, 1, '2014-04-14 10:15:41', '2014-04-14 10:15:41', '', 'back1', '', 'inherit', 'open', 'open', '', 'back1-5', '', '', '2014-04-14 10:15:41', '2014-04-14 10:15:41', '', 25, 'http://teecircle.com/wp-content/uploads/2014/01/back14.jpg', 0, 'attachment', 'image/jpeg', 0),
(525, 1, '2014-04-14 10:15:57', '2014-04-14 10:15:57', '', 'front1', '', 'inherit', 'open', 'open', '', 'front1-4', '', '', '2014-04-14 10:15:57', '2014-04-14 10:15:57', '', 25, 'http://teecircle.com/wp-content/uploads/2014/01/front13.jpg', 0, 'attachment', 'image/jpeg', 0),
(526, 1, '2014-04-14 10:18:10', '2014-04-14 10:18:10', '', 'back1', '', 'inherit', 'open', 'open', '', 'back1-6', '', '', '2014-04-14 10:18:10', '2014-04-14 10:18:10', '', 28, 'http://teecircle.com/wp-content/uploads/2014/01/back15.jpg', 0, 'attachment', 'image/jpeg', 0),
(527, 1, '2014-04-14 10:18:20', '2014-04-14 10:18:20', '', 'front1', '', 'inherit', 'open', 'open', '', 'front1-5', '', '', '2014-04-14 10:18:20', '2014-04-14 10:18:20', '', 28, 'http://teecircle.com/wp-content/uploads/2014/01/front14.jpg', 0, 'attachment', 'image/jpeg', 0),
(528, 1, '2014-04-14 10:22:59', '2014-04-14 10:22:59', '', 'back2', '', 'inherit', 'open', 'open', '', 'back2-4', '', '', '2014-04-14 10:22:59', '2014-04-14 10:22:59', '', 27, 'http://teecircle.com/wp-content/uploads/2014/01/back23.jpg', 0, 'attachment', 'image/jpeg', 0),
(529, 1, '2014-04-14 10:23:13', '2014-04-14 10:23:13', '', 'front2', '', 'inherit', 'open', 'open', '', 'front2-4', '', '', '2014-04-14 10:23:13', '2014-04-14 10:23:13', '', 27, 'http://teecircle.com/wp-content/uploads/2014/01/front23.jpg', 0, 'attachment', 'image/jpeg', 0),
(530, 1, '2014-04-14 10:26:32', '2014-04-14 10:26:32', '', 'back1', '', 'inherit', 'open', 'open', '', 'back1-7', '', '', '2014-04-14 10:26:32', '2014-04-14 10:26:32', '', 30, 'http://teecircle.com/wp-content/uploads/2014/01/back16.jpg', 0, 'attachment', 'image/jpeg', 0),
(531, 1, '2014-04-14 10:26:37', '2014-04-14 10:26:37', '', 'front1', '', 'inherit', 'open', 'open', '', 'front1-6', '', '', '2014-04-14 10:26:37', '2014-04-14 10:26:37', '', 30, 'http://teecircle.com/wp-content/uploads/2014/01/front15.jpg', 0, 'attachment', 'image/jpeg', 0),
(532, 1, '2014-04-14 10:30:25', '2014-04-14 10:30:25', '', 'back1', '', 'inherit', 'open', 'open', '', 'back1-8', '', '', '2014-04-14 10:30:25', '2014-04-14 10:30:25', '', 29, 'http://teecircle.com/wp-content/uploads/2014/01/back17.jpg', 0, 'attachment', 'image/jpeg', 0),
(533, 1, '2014-04-14 10:30:33', '2014-04-14 10:30:33', '', 'front1', '', 'inherit', 'open', 'open', '', 'front1-7', '', '', '2014-04-14 10:30:33', '2014-04-14 10:30:33', '', 29, 'http://teecircle.com/wp-content/uploads/2014/01/front16.jpg', 0, 'attachment', 'image/jpeg', 0),
(534, 1, '2014-04-14 10:34:09', '2014-04-14 10:34:09', '', 'back2', '', 'inherit', 'open', 'open', '', 'back2-5', '', '', '2014-04-14 10:34:09', '2014-04-14 10:34:09', '', 29, 'http://teecircle.com/wp-content/uploads/2014/01/back24.jpg', 0, 'attachment', 'image/jpeg', 0),
(535, 1, '2014-04-14 10:34:16', '2014-04-14 10:34:16', '', 'front2', '', 'inherit', 'open', 'open', '', 'front2-5', '', '', '2014-04-14 10:34:16', '2014-04-14 10:34:16', '', 29, 'http://teecircle.com/wp-content/uploads/2014/01/front24.jpg', 0, 'attachment', 'image/jpeg', 0),
(677, 0, '2014-07-08 11:31:43', '2014-07-08 11:31:43', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2014-07-08 11:31:43', '2014-07-08 11:31:43', '', 0, 'http://teecircle.com/?p=1', 0, 'post', '', 1),
(678, 0, '2014-07-08 11:31:43', '2014-07-08 11:31:43', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\r\n\r\n...or something like this:\r\n\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\n\r\nAs a new WordPress user, you should go to <a href="http://teecircle.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2014-07-08 11:31:43', '2014-07-08 11:31:43', '', 0, 'http://teecircle.com/?page_id=2', 0, 'page', '', 0),
(679, 1, '2014-07-08 11:36:24', '2014-07-08 11:36:24', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2014-07-08 11:36:40', '2014-07-08 11:36:40', '', 0, 'http://teecircle.com/?post_type=sociallogin&#038;p=679', 0, 'sociallogin', '', 0),
(680, 1, '2014-07-08 11:38:09', '2014-07-08 11:38:09', '', 'Yahoo', '', 'publish', 'closed', 'closed', '', 'yahoo', '', '', '2014-07-08 11:38:23', '2014-07-08 11:38:23', '', 0, 'http://teecircle.com/?post_type=sociallogin&#038;p=680', 0, 'sociallogin', '', 0),
(681, 1, '2014-07-08 11:39:09', '2014-07-08 11:39:09', '', 'Google plus', '', 'publish', 'closed', 'closed', '', 'google-plus', '', '', '2014-07-08 11:39:43', '2014-07-08 11:39:43', '', 0, 'http://teecircle.com/?post_type=sociallogin&#038;p=681', 0, 'sociallogin', '', 0);
=======================================================
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;
=======================================================
INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'pending', 'pending', 0),
(7, 'failed', 'failed', 0),
(8, 'on-hold', 'on-hold', 0),
(9, 'processing', 'processing', 0),
(10, 'completed', 'completed', 0),
(11, 'refunded', 'refunded', 0),
(12, 'cancelled', 'cancelled', 0),
(13, 'Basic Tees', 'basic-tees', 0),
(16, 'Long Sleeved', 'long-sleeved', 0),
(17, 'Tank Tops', 'tank-tops', 0),
(18, 'V-Neck Tees', 'v-neck-tees', 0),
(19, 'Hoodies', 'hoodies', 0),
(20, 'Camouflage', 'camouflage', 0),
(26, 'White', 'white', 0),
(27, 'Black', 'black', 0),
(28, 'Athletic Heather', 'athletic-heather', 0),
(29, 'Asphalt', 'asphalt', 0),
(30, 'Deep Heather', 'deep-heather', 0),
(31, 'Dark Grey Heather', 'dark-grey-heather', 0),
(32, 'Steel Blue', 'steel-blue', 0),
(33, 'True Royal', 'true-royal', 0),
(34, 'Navy', 'navy', 0),
(35, 'Team Purple', 'team-purple', 0),
(36, 'Silver', 'silver', 0),
(37, 'Canvas Red', 'canvas-red', 0),
(38, 'Red', 'red', 0),
(39, 'featuredpost', 'featuredpost', 0),
(40, 'heading', 'heading', 0),
(41, 'General Questions', 'general-questions', 0),
(42, 'Questions for Buyers', 'questions-for-buyers', 0),
(43, 'Questions for Designers/Sellers', 'questions-for-designerssellers', 0),
(44, 'S', 's', 0),
(45, 'M', 'm', 0),
(46, 'L', 'l', 0),
(47, 'XL', 'xl', 0),
(48, '2XL', '2xl', 0),
(49, '3XL', '3xl', 0),
(50, 'Women''s Relaxed Fit', 'womens-relaxed-fit', 0),
(51, 'Women''s Slim Fit', 'womens-slim-fit', 0),
(52, 'Shipping Avaliable', 'shipping-avaliable', 0),
(53, 'Orange', 'orange', 0),
(54, 'Free Shipping', 'free-shipping', 0);
=======================================================
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
=======================================================
INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(0, 0, 0),
(0, 4, 0),
(0, 49, 0),
(0, 50, 0),
(0, 51, 0),
(0, 52, 0),
(0, 53, 0),
(0, 54, 0),
(19, 2, 0),
(19, 13, 0),
(19, 26, 0),
(19, 27, 0),
(19, 28, 0),
(19, 29, 0),
(19, 30, 0),
(19, 31, 0),
(19, 32, 0),
(19, 33, 0),
(19, 34, 0),
(19, 35, 0),
(19, 36, 0),
(19, 37, 0),
(19, 38, 0),
(20, 2, 0),
(20, 13, 0),
(20, 26, 0),
(20, 27, 0),
(20, 28, 0),
(20, 29, 0),
(20, 30, 0),
(20, 31, 0),
(20, 32, 0),
(20, 33, 0),
(20, 34, 0),
(20, 35, 0),
(20, 36, 0),
(20, 37, 0),
(20, 38, 0),
(21, 2, 0),
(21, 13, 0),
(21, 26, 0),
(21, 27, 0),
(21, 28, 0),
(21, 29, 0),
(21, 30, 0),
(21, 31, 0),
(21, 32, 0),
(21, 33, 0),
(21, 34, 0),
(21, 35, 0),
(21, 36, 0),
(21, 37, 0),
(21, 38, 0),
(22, 2, 0),
(22, 14, 0),
(23, 2, 0),
(23, 14, 0),
(24, 2, 0),
(24, 15, 0),
(25, 2, 0),
(25, 16, 0),
(26, 2, 0),
(26, 16, 0),
(27, 2, 0),
(27, 17, 0),
(28, 2, 0),
(28, 17, 0),
(29, 2, 0),
(29, 18, 0),
(30, 2, 0),
(30, 18, 0),
(30, 27, 0),
(30, 29, 0),
(30, 30, 0),
(30, 32, 0),
(30, 33, 0),
(30, 35, 0),
(30, 36, 0),
(31, 2, 0),
(31, 19, 0),
(31, 26, 0),
(31, 28, 0),
(31, 29, 0),
(31, 30, 0),
(31, 32, 0),
(31, 33, 0),
(31, 34, 0),
(31, 37, 0),
(32, 2, 0),
(32, 19, 0),
(32, 26, 0),
(32, 27, 0),
(32, 28, 0),
(33, 2, 0),
(33, 20, 0),
(58, 39, 0),
(63, 39, 0),
(65, 39, 0),
(67, 40, 0),
(92, 1, 0),
(94, 1, 0),
(154, 1, 0),
(156, 1, 0),
(179, 41, 0),
(180, 42, 0),
(181, 42, 0),
(182, 42, 0),
(183, 42, 0),
(184, 42, 0),
(185, 43, 0),
(186, 43, 0),
(187, 43, 0),
(315, 2, 0),
(315, 58, 0),
(315, 60, 0),
(316, 14, 0),
(317, 4, 0),
(317, 14, 0),
(317, 49, 0),
(317, 50, 0),
(317, 51, 0),
(317, 52, 0),
(317, 53, 0),
(317, 54, 0),
(317, 55, 0),
(317, 56, 0),
(317, 57, 0),
(317, 58, 0),
(317, 59, 0),
(317, 60, 0),
(317, 61, 0),
(317, 62, 0),
(319, 4, 0),
(319, 14, 0),
(319, 49, 0),
(319, 50, 0),
(319, 51, 0),
(327, 8, 0),
(328, 8, 0),
(330, 8, 0),
(331, 8, 0),
(332, 8, 0),
(354, 12, 0),
(355, 12, 0),
(357, 4, 0),
(357, 13, 0),
(357, 49, 0),
(357, 50, 0),
(357, 51, 0),
(357, 52, 0),
(357, 53, 0),
(357, 54, 0),
(357, 55, 0),
(361, 4, 0),
(361, 13, 0),
(361, 49, 0),
(361, 50, 0),
(361, 51, 0),
(361, 52, 0),
(361, 53, 0),
(361, 54, 0),
(361, 55, 0),
(363, 4, 0),
(363, 13, 0),
(363, 49, 0),
(363, 50, 0),
(363, 51, 0),
(363, 52, 0),
(363, 53, 0),
(363, 54, 0),
(363, 55, 0),
(367, 4, 0),
(367, 13, 0),
(367, 49, 0),
(367, 50, 0),
(367, 51, 0),
(367, 52, 0),
(367, 53, 0),
(367, 54, 0),
(367, 55, 0),
(412, 4, 0),
(412, 13, 0),
(412, 49, 0),
(412, 50, 0),
(412, 51, 0),
(412, 52, 0),
(412, 53, 0),
(412, 54, 0),
(412, 55, 0),
(414, 4, 0),
(414, 13, 0),
(414, 49, 0),
(414, 50, 0),
(414, 51, 0),
(414, 52, 0),
(414, 53, 0),
(414, 54, 0),
(414, 55, 0),
(416, 4, 0),
(416, 13, 0),
(416, 49, 0),
(416, 50, 0),
(416, 51, 0),
(416, 52, 0),
(416, 53, 0),
(416, 54, 0),
(416, 55, 0),
(416, 63, 0),
(419, 4, 0),
(419, 13, 0),
(419, 49, 0),
(419, 50, 0),
(419, 51, 0),
(419, 52, 0),
(419, 53, 0),
(419, 54, 0),
(419, 55, 0),
(419, 58, 0),
(419, 60, 0),
(423, 4, 0),
(423, 13, 0),
(423, 49, 0),
(423, 50, 0),
(423, 51, 0),
(423, 52, 0),
(423, 53, 0),
(423, 54, 0),
(423, 55, 0),
(425, 9, 0),
(426, 4, 0),
(426, 13, 0),
(426, 49, 0),
(426, 50, 0),
(426, 51, 0),
(426, 52, 0),
(426, 53, 0),
(426, 54, 0),
(426, 60, 0),
(429, 12, 0),
(430, 12, 0),
(431, 9, 0),
(432, 9, 0),
(433, 9, 0),
(434, 9, 0),
(435, 4, 0),
(435, 13, 0),
(435, 49, 0),
(435, 50, 0),
(435, 51, 0),
(435, 52, 0),
(435, 53, 0),
(435, 54, 0),
(435, 55, 0),
(435, 58, 0),
(437, 9, 0),
(438, 4, 0),
(438, 13, 0),
(438, 49, 0),
(438, 50, 0),
(438, 51, 0),
(438, 52, 0),
(438, 53, 0),
(438, 54, 0),
(438, 55, 0),
(440, 9, 0),
(446, 2, 0),
(446, 13, 0),
(446, 26, 0),
(446, 27, 0),
(446, 28, 0),
(446, 31, 0),
(446, 32, 0),
(446, 33, 0),
(446, 34, 0),
(446, 36, 0),
(446, 37, 0),
(446, 38, 0),
(450, 4, 0),
(450, 13, 0),
(450, 49, 0),
(450, 50, 0),
(450, 51, 0),
(450, 52, 0),
(450, 53, 0),
(450, 54, 0),
(450, 55, 0),
(450, 58, 0),
(450, 60, 0),
(454, 9, 0),
(455, 4, 0),
(455, 13, 0),
(455, 49, 0),
(455, 50, 0),
(455, 51, 0),
(455, 52, 0),
(455, 53, 0),
(455, 54, 0),
(455, 55, 0),
(455, 60, 0),
(458, 9, 0),
(460, 1, 0),
(462, 4, 0),
(462, 13, 0),
(462, 49, 0),
(462, 50, 0),
(462, 51, 0),
(462, 52, 0),
(462, 53, 0),
(462, 54, 0),
(462, 55, 0),
(462, 58, 0),
(465, 4, 0),
(465, 13, 0),
(465, 49, 0),
(465, 50, 0),
(465, 51, 0),
(465, 52, 0),
(465, 53, 0),
(465, 54, 0),
(465, 55, 0),
(465, 58, 0),
(470, 10, 0),
(473, 4, 0),
(473, 13, 0),
(473, 49, 0),
(473, 50, 0),
(473, 51, 0),
(473, 52, 0),
(473, 53, 0),
(473, 54, 0),
(473, 55, 0),
(473, 58, 0),
(476, 12, 0),
(477, 4, 0),
(477, 13, 0),
(477, 49, 0),
(477, 50, 0),
(477, 51, 0),
(477, 52, 0),
(477, 53, 0),
(477, 54, 0),
(477, 55, 0),
(477, 58, 0),
(477, 60, 0),
(481, 9, 0),
(482, 4, 0),
(482, 13, 0),
(482, 49, 0),
(482, 50, 0),
(482, 51, 0),
(482, 52, 0),
(482, 53, 0),
(482, 54, 0),
(482, 55, 0),
(482, 58, 0),
(482, 60, 0),
(486, 10, 0),
(487, 4, 0),
(487, 13, 0),
(487, 49, 0),
(487, 50, 0),
(487, 51, 0),
(487, 52, 0),
(487, 53, 0),
(487, 54, 0),
(487, 55, 0),
(487, 58, 0),
(490, 10, 0),
(494, 4, 0),
(494, 13, 0),
(494, 49, 0),
(494, 50, 0),
(494, 51, 0),
(494, 52, 0),
(494, 53, 0),
(494, 54, 0),
(494, 55, 0),
(494, 58, 0),
(497, 10, 0),
(498, 4, 0),
(498, 13, 0),
(498, 49, 0),
(498, 50, 0),
(498, 51, 0),
(498, 52, 0),
(498, 53, 0),
(498, 54, 0),
(498, 55, 0),
(498, 58, 0),
(501, 10, 0),
(502, 10, 0),
(504, 0, 0),
(504, 4, 0),
(504, 49, 0),
(504, 50, 0),
(504, 51, 0),
(504, 52, 0),
(504, 53, 0),
(504, 54, 0),
(504, 58, 0),
(504, 60, 0),
(536, 4, 0),
(536, 18, 0),
(536, 49, 0),
(536, 50, 0),
(536, 51, 0),
(536, 52, 0),
(536, 53, 0),
(536, 54, 0),
(536, 55, 0),
(536, 58, 0),
(536, 60, 0),
(538, 4, 0),
(538, 13, 0),
(538, 49, 0),
(538, 50, 0),
(538, 51, 0),
(538, 52, 0),
(538, 53, 0),
(538, 54, 0),
(538, 55, 0),
(540, 4, 0),
(540, 13, 0),
(540, 49, 0),
(540, 50, 0),
(540, 51, 0),
(540, 52, 0),
(540, 53, 0),
(540, 54, 0),
(540, 55, 0),
(542, 4, 0),
(542, 13, 0),
(542, 49, 0),
(542, 50, 0),
(542, 51, 0),
(542, 52, 0),
(542, 53, 0),
(542, 54, 0),
(542, 55, 0),
(544, 4, 0),
(544, 13, 0),
(544, 49, 0),
(544, 50, 0),
(544, 51, 0),
(544, 52, 0),
(544, 53, 0),
(544, 54, 0),
(544, 55, 0),
(546, 4, 0),
(546, 13, 0),
(546, 49, 0),
(546, 50, 0),
(546, 51, 0),
(546, 52, 0),
(546, 53, 0),
(546, 54, 0),
(546, 55, 0),
(548, 4, 0),
(548, 13, 0),
(548, 49, 0),
(548, 50, 0),
(548, 51, 0),
(548, 52, 0),
(548, 53, 0),
(548, 54, 0),
(548, 55, 0),
(550, 10, 0),
(551, 12, 0),
(552, 4, 0),
(552, 13, 0),
(552, 49, 0),
(552, 50, 0),
(552, 51, 0),
(552, 52, 0),
(552, 53, 0),
(552, 54, 0),
(552, 55, 0),
(552, 58, 0),
(552, 60, 0),
(556, 2, 0),
(556, 13, 0),
(556, 26, 0),
(556, 27, 0),
(556, 28, 0),
(556, 29, 0),
(556, 30, 0),
(556, 31, 0),
(556, 32, 0),
(556, 33, 0),
(556, 34, 0),
(556, 35, 0),
(556, 36, 0),
(556, 37, 0),
(556, 38, 0),
(556, 65, 0),
(563, 4, 0),
(563, 13, 0),
(563, 49, 0),
(563, 50, 0),
(563, 51, 0),
(563, 52, 0),
(563, 53, 0),
(563, 54, 0),
(563, 55, 0),
(563, 58, 0),
(563, 60, 0),
(570, 4, 0),
(570, 13, 0),
(570, 49, 0),
(570, 50, 0),
(570, 51, 0),
(570, 52, 0),
(570, 53, 0),
(570, 54, 0),
(570, 55, 0),
(572, 4, 0),
(572, 13, 0),
(572, 49, 0),
(572, 50, 0),
(572, 51, 0),
(572, 52, 0),
(572, 53, 0),
(572, 54, 0),
(572, 55, 0),
(574, 4, 0),
(574, 13, 0),
(574, 49, 0),
(574, 50, 0),
(574, 51, 0),
(574, 52, 0),
(574, 53, 0),
(574, 54, 0),
(574, 55, 0),
(574, 58, 0),
(576, 4, 0),
(576, 13, 0),
(576, 49, 0),
(576, 50, 0),
(576, 51, 0),
(576, 52, 0),
(576, 53, 0),
(576, 54, 0),
(576, 55, 0),
(576, 58, 0),
(576, 64, 0),
(578, 4, 0),
(578, 13, 0),
(578, 49, 0),
(578, 50, 0),
(578, 51, 0),
(578, 52, 0),
(578, 53, 0),
(578, 54, 0),
(578, 55, 0),
(580, 4, 0),
(580, 13, 0),
(580, 49, 0),
(580, 50, 0),
(580, 51, 0),
(580, 52, 0),
(580, 53, 0),
(580, 54, 0),
(580, 55, 0),
(582, 4, 0),
(582, 13, 0),
(582, 49, 0),
(582, 50, 0),
(582, 51, 0),
(582, 52, 0),
(582, 53, 0),
(582, 54, 0),
(582, 55, 0),
(582, 60, 0),
(584, 4, 0),
(584, 13, 0),
(584, 49, 0),
(584, 50, 0),
(584, 51, 0),
(584, 52, 0),
(584, 53, 0),
(584, 54, 0),
(584, 55, 0),
(584, 58, 0),
(584, 60, 0),
(586, 4, 0),
(586, 13, 0),
(586, 49, 0),
(586, 50, 0),
(586, 51, 0),
(586, 52, 0),
(586, 53, 0),
(586, 54, 0),
(586, 55, 0),
(588, 4, 0),
(588, 13, 0),
(588, 49, 0),
(588, 50, 0),
(588, 51, 0),
(588, 52, 0),
(588, 53, 0),
(588, 54, 0),
(588, 55, 0),
(590, 4, 0),
(590, 13, 0),
(590, 49, 0),
(590, 50, 0),
(590, 51, 0),
(590, 52, 0),
(590, 53, 0),
(590, 54, 0),
(590, 55, 0),
(590, 60, 0),
(592, 4, 0),
(592, 13, 0),
(592, 49, 0),
(592, 50, 0),
(592, 51, 0),
(592, 52, 0),
(592, 53, 0),
(592, 54, 0),
(592, 55, 0),
(592, 58, 0),
(592, 60, 0),
(596, 12, 0),
(597, 4, 0),
(597, 13, 0),
(597, 49, 0),
(597, 50, 0),
(597, 51, 0),
(597, 52, 0),
(597, 53, 0),
(597, 54, 0),
(597, 55, 0),
(597, 58, 0),
(597, 60, 0),
(599, 4, 0),
(599, 13, 0),
(599, 49, 0),
(599, 50, 0),
(599, 51, 0),
(599, 52, 0),
(599, 53, 0),
(599, 54, 0),
(599, 55, 0),
(599, 60, 0),
(619, 4, 0),
(619, 13, 0),
(619, 49, 0),
(619, 50, 0),
(619, 51, 0),
(619, 52, 0),
(619, 53, 0),
(619, 54, 0),
(619, 55, 0),
(619, 58, 0),
(619, 60, 0),
(623, 4, 0),
(623, 13, 0),
(623, 49, 0),
(623, 50, 0),
(623, 51, 0),
(623, 52, 0),
(623, 53, 0),
(623, 54, 0),
(623, 55, 0),
(623, 58, 0),
(623, 60, 0),
(630, 4, 0),
(630, 13, 0),
(630, 49, 0),
(630, 50, 0),
(630, 51, 0),
(630, 52, 0),
(630, 53, 0),
(630, 54, 0),
(630, 55, 0),
(630, 58, 0),
(630, 60, 0),
(643, 4, 0),
(643, 13, 0),
(643, 49, 0),
(643, 50, 0),
(643, 51, 0),
(643, 52, 0),
(643, 53, 0),
(643, 54, 0),
(643, 55, 0),
(643, 58, 0),
(643, 60, 0),
(643, 64, 0),
(648, 12, 0),
(649, 4, 0),
(649, 13, 0),
(649, 49, 0),
(649, 50, 0),
(649, 51, 0),
(649, 52, 0),
(649, 53, 0),
(649, 54, 0),
(649, 55, 0),
(649, 58, 0),
(649, 64, 0),
(652, 4, 0),
(652, 13, 0),
(652, 49, 0),
(652, 50, 0),
(652, 51, 0),
(652, 52, 0),
(652, 53, 0),
(652, 54, 0),
(652, 55, 0),
(652, 58, 0),
(652, 60, 0),
(652, 64, 0),
(656, 4, 0),
(656, 13, 0),
(656, 49, 0),
(656, 50, 0),
(656, 51, 0),
(656, 52, 0),
(656, 53, 0),
(656, 54, 0),
(656, 55, 0),
(656, 58, 0),
(656, 66, 0),
(665, 2, 0),
(665, 13, 0),
(672, 4, 0),
(672, 13, 0),
(672, 49, 0),
(672, 50, 0),
(672, 51, 0),
(672, 52, 0),
(672, 53, 0),
(672, 54, 0),
(672, 55, 0),
(672, 58, 0),
(672, 60, 0),
(672, 66, 0),
(676, 10, 0);
=======================================================
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `description_back` longtext NOT NULL,
  `cat_note` text NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;
=======================================================
INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `description_back`, `cat_note`, `parent`, `count`) VALUES
(1, 1, 'category', '', '', '', 0, 5),
(2, 2, 'product_type', '', '', '', 0, 19),
(3, 3, 'product_type', '', '', '', 0, 0),
(4, 4, 'product_type', '', '', '', 0, 44),
(5, 5, 'product_type', '', '', '', 0, 0),
(6, 6, 'shop_order_status', '', '', '', 0, 1),
(7, 7, 'shop_order_status', '', '', '', 0, 0),
(8, 8, 'shop_order_status', '', '', '', 0, 5),
(9, 9, 'shop_order_status', '', '', '', 0, 14),
(10, 10, 'shop_order_status', '', '', '', 0, 3),
(11, 11, 'shop_order_status', '', '', '', 0, 0),
(12, 12, 'shop_order_status', '', '', '', 0, 8),
(13, 13, 'product_cat', '', '', 'test', 0, 45),
(14, 14, 'product_cat', '', '', '', 0, 5),
(15, 15, 'product_cat', '', '', '', 0, 1),
(16, 16, 'product_cat', '', '', '', 0, 2),
(17, 17, 'product_cat', '', '', '', 0, 2),
(18, 18, 'product_cat', '', '', '', 0, 3),
(19, 19, 'product_cat', '', '', '', 0, 2),
(20, 20, 'product_cat', '', '', '', 0, 1),
(26, 26, 'pa_color', '#ffffff', '', '', 0, 7),
(27, 27, 'pa_color', '#222222', '', '', 0, 7),
(28, 28, 'pa_color', '#bebebe', '', '', 0, 7),
(29, 29, 'pa_color', '#4b4437', '', '', 0, 6),
(30, 30, 'pa_color', '#75756f', '', '', 0, 6),
(31, 31, 'pa_color', '#38393a', '', '', 0, 5),
(32, 32, 'pa_color', '#5c88a4', '', '', 0, 7),
(33, 33, 'pa_color', '#193c84', '', '', 0, 7),
(34, 34, 'pa_color', '#181923', '', '', 0, 6),
(35, 35, 'pa_color', '#2b1b40', '', '', 0, 5),
(36, 36, 'pa_color', '#d5d2d5', '', '', 0, 6),
(37, 37, 'pa_color', '#8f0c15', '', '', 0, 6),
(38, 38, 'pa_color', '#9c010b', '', '', 0, 5),
(39, 39, 'category', '', '', '', 0, 3),
(40, 40, 'category', '', '', '', 0, 1),
(41, 41, 'faq_category', '', '', '', 0, 1),
(42, 42, 'faq_category', '', '', '', 0, 5),
(43, 43, 'faq_category', '', '', '', 0, 3),
(49, 44, 'pa_size', '34" - 36"', '', '', 0, 44),
(50, 45, 'pa_size', '38" - 40"', '', '', 0, 44),
(51, 46, 'pa_size', '42" - 44"', '', '', 0, 44),
(52, 47, 'pa_size', '46" - 48"', '', '', 0, 43),
(53, 48, 'pa_size', '50" - 52"', '', '', 0, 43),
(54, 49, 'pa_size', '54" - 56"', '', '', 0, 43),
(55, 13, 'pa_style', '1', '', '', 0, 41),
(56, 20, 'pa_style', '2', '', '', 0, 1),
(57, 19, 'pa_style', '4', '', '', 0, 1),
(58, 16, 'pa_style', '32', '', '', 0, 30),
(59, 17, 'pa_style', '2', '', '', 0, 1),
(60, 18, 'pa_style', '34', '', '', 0, 24),
(61, 50, 'pa_style', '21', '', '', 0, 1),
(62, 51, 'pa_style', '2', '', '', 0, 1),
(63, 52, 'pa_style', '', '', '', 0, 1),
(64, 52, 'product_shipping_class', '', '', '', 0, 5),
(65, 53, 'pa_color', '#FF6600', '', '', 0, 1),
(66, 54, 'product_shipping_class', '', '', '', 0, 1);
=======================================================
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;
=======================================================
INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', 'jnkjnbkj'),
(2, 1, 'last_name', 'jknkjn'),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '320'),
(15, 1, '_order_count', '0'),
(16, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&urlbutton=none'),
(17, 1, 'wp_user-settings-time', '1404819432'),
(18, 1, 'closedpostboxes_product', 'a:0:{}'),
(19, 1, 'metaboxhidden_product', 'a:1:{i:0;s:7:"slugdiv";}'),
(20, 1, 'manageedit-product_catcolumnshidden', 'a:6:{i:0;s:5:"thumb";i:1;s:11:"description";i:2;s:4:"slug";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";}'),
(21, 1, 'edit_product_cat_per_page', '22'),
(23, 1, 'closedpostboxes_post', 'a:0:{}'),
(24, 1, 'metaboxhidden_post', 'a:4:{i:0;s:13:"trackbacksdiv";i:1;s:16:"commentstatusdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}'),
(25, 1, 'closedpostboxes_page', 'a:0:{}'),
(26, 1, 'metaboxhidden_page', 'a:4:{i:0;s:12:"revisionsdiv";i:1;s:16:"commentstatusdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}'),
(27, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(28, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:8:"add-post";i:1;s:11:"add-product";i:2;s:12:"add-post_tag";i:3;s:15:"add-post_format";i:4;s:15:"add-product_cat";i:5;s:15:"add-product_tag";}'),
(29, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:18:"dashboard_activity";}'),
(30, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(31, 1, 'default_password_nag', ''),
(32, 1, 'closedpostboxes_sociallogin', 'a:0:{}'),
(33, 1, 'metaboxhidden_sociallogin', 'a:1:{i:0;s:7:"slugdiv";}');
=======================================================
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  `oauth_provider` varchar(100) NOT NULL,
  `oauth_uid` varchar(100) NOT NULL,
  `user_facebook` varchar(55) NOT NULL,
  `facebook_username` varchar(55) NOT NULL,
  `user_google` varchar(55) NOT NULL,
  `google_username` varchar(55) NOT NULL,
  `usertype` varchar(55) NOT NULL,
  `sendEmail` int(11) NOT NULL,
  `lastvisitDate` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;
=======================================================
INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`, `oauth_provider`, `oauth_uid`, `user_facebook`, `facebook_username`, `user_google`, `google_username`, `usertype`, `sendEmail`, `lastvisitDate`) VALUES
(1, 'admin', '$P$B8IOg10DDbQnFhj.Yybt8rgGHyGAlx0', 'admin', 'nabanita.c@candeotech.net', '', '2014-01-08 10:04:01', '', 0, 'admin', 'facebook', '100005071621670', '100005071621670', 'nabanita.chatterjee.391', '111233640770809877155', 'nabanita.c@candeotech.net', '', 0, '0000-00-00 00:00:00');
=======================================================
CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_label` longtext,
  `attribute_type` varchar(200) NOT NULL,
  `attribute_orderby` varchar(200) NOT NULL,
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;
=======================================================
INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`) VALUES
(2, 'color', 'Color', 'select', 'menu_order'),
(3, 'size', 'Size', 'select', 'menu_order'),
(4, 'style', 'Style', 'select', 'menu_order');
=======================================================
CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
  `download_id` varchar(32) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`order_id`,`order_key`,`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
=======================================================
CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
=======================================================
CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_name` longtext NOT NULL,
  `order_item_type` varchar(200) NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
=======================================================
CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) NOT NULL DEFAULT '',
  `tax_rate` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`),
  KEY `tax_rate_class` (`tax_rate_class`),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
=======================================================
CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_code` varchar(255) NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
=======================================================
CREATE TABLE IF NOT EXISTS `wp_woocommerce_termmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `woocommerce_term_id` (`woocommerce_term_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=70 ;
=======================================================
INSERT INTO `wp_woocommerce_termmeta` (`meta_id`, `woocommerce_term_id`, `meta_key`, `meta_value`) VALUES
(1, 13, 'order', '0'),
(2, 13, 'display_type', ''),
(3, 13, 'thumbnail_id', '55'),
(4, 14, 'order', '0'),
(5, 14, 'display_type', ''),
(6, 14, 'thumbnail_id', '0'),
(7, 15, 'order', '0'),
(8, 15, 'display_type', ''),
(9, 15, 'thumbnail_id', '0'),
(10, 16, 'order', '0'),
(11, 16, 'display_type', ''),
(12, 16, 'thumbnail_id', '0'),
(13, 17, 'order', '0'),
(14, 17, 'display_type', ''),
(15, 17, 'thumbnail_id', '0'),
(16, 18, 'order', '0'),
(17, 18, 'display_type', ''),
(18, 18, 'thumbnail_id', '0'),
(19, 19, 'order', '0'),
(20, 19, 'display_type', ''),
(21, 19, 'thumbnail_id', '0'),
(22, 20, 'order', '0'),
(23, 20, 'display_type', ''),
(24, 20, 'thumbnail_id', '0'),
(25, 13, 'product_count_product_cat', '45'),
(26, 20, 'product_count_product_cat', '1'),
(27, 15, 'product_count_product_cat', '1'),
(28, 14, 'product_count_product_cat', '4'),
(29, 16, 'product_count_product_cat', '2'),
(30, 17, 'product_count_product_cat', '2'),
(31, 18, 'product_count_product_cat', '3'),
(32, 19, 'product_count_product_cat', '2'),
(38, 26, 'order_pa_color', '0'),
(39, 27, 'order_pa_color', '0'),
(40, 28, 'order_pa_color', '0'),
(41, 29, 'order_pa_color', '0'),
(42, 30, 'order_pa_color', '0'),
(43, 31, 'order_pa_color', '0'),
(44, 32, 'order_pa_color', '0'),
(45, 33, 'order_pa_color', '0'),
(46, 34, 'order_pa_color', '0'),
(47, 35, 'order_pa_color', '0'),
(48, 36, 'order_pa_color', '0'),
(49, 37, 'order_pa_color', '0'),
(50, 38, 'order_pa_color', '0'),
(51, 44, 'product_count_product_cat', '0'),
(52, 45, 'product_count_product_cat', '0'),
(53, 46, 'product_count_product_cat', '0'),
(55, 44, 'order_pa_size', '0'),
(56, 45, 'order_pa_size', '0'),
(57, 46, 'order_pa_size', '0'),
(59, 48, 'order_pa_size', '0'),
(60, 49, 'order_pa_size', '0'),
(61, 13, 'order_pa_style', '0'),
(62, 20, 'order_pa_style', '0'),
(63, 19, 'order_pa_style', '0'),
(64, 16, 'order_pa_style', '0'),
(65, 17, 'order_pa_style', '0'),
(66, 18, 'order_pa_style', '0'),
(67, 50, 'order_pa_style', '0'),
(68, 51, 'order_pa_style', '0'),
(69, 53, 'order_pa_color', '0');