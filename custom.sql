

-- Queries for the Pincode

CREATE TABLE IF NOT EXISTS `pincodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pincode` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modify_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


ALTER TABLE `manage_role` ADD `check_for_pincode_view` TINYINT(1) NOT NULL DEFAULT '0' AFTER `theme_setting`, ADD `check_for_pincode_create` TINYINT(1) NOT NULL DEFAULT '0' AFTER `check_for_pincode_view`, ADD `check_for_pincode_update` TINYINT(1) NOT NULL DEFAULT '0' AFTER `check_for_pincode_create`, ADD `check_for_pincode_delete` TINYINT(1) NOT NULL DEFAULT '0' AFTER `check_for_pincode_update`;

ALTER TABLE `manage_role` CHANGE `currency_view` `currency_view` TINYINT(1) NOT NULL DEFAULT '0', CHANGE `currency_create` `currency_create` TINYINT(1) NOT NULL DEFAULT '0', CHANGE `currency_update` `currency_update` TINYINT(1) NOT NULL DEFAULT '0', CHANGE `currency_delete` `currency_delete` TINYINT(1) NOT NULL DEFAULT '0';

ALTER TABLE `manage_role` CHANGE `theme_setting` `theme_setting` TINYINT(1) NOT NULL DEFAULT '0';

UPDATE `manage_role` SET `check_for_pincode_view` = '1', `check_for_pincode_create` = '1', `check_for_pincode_update` = '1', `check_for_pincode_delete` = '1' WHERE `manage_role`.`manage_role_id` = 1;


ALTER TABLE `pincodes` CHANGE `modify_at` `updated_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00';


INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(139, 'free_cod_value', '2000', NULL, '2022-05-06 00:36:48'),
(138, 'cod_charge_value', '40', NULL, '2022-05-06 00:36:48'),
(137, 'check_for_pincode', '0', NULL, '2021-10-23 12:58:16'),
(136, 'welcome_store_text', '', NULL, '2022-05-06 00:36:49'),
(135, 'special_product_text', '', NULL, '2022-05-06 00:36:49'),
(134, 'flash_sale_text', '', NULL, '2022-05-06 00:36:49'),
(133, 'new_arrival_text', '', NULL, '2022-05-06 00:36:49'),
(132, 'top_selling_text', '', NULL, '2022-05-06 00:36:49'),
(131, 'product_category_text', '', NULL, '2022-05-06 00:36:49'),
(130, 'show_upload_logo', '1', NULL, '2022-05-06 00:36:48'),
(129, 'google_captcha_secret', '6Le3rP0bAAAAAC-wp7TH19CkHZmRdVC63cl0z6Eh', NULL, '2022-05-06 00:36:48'),
(128, 'google_captcha_key', '6Le3rP0bAAAAAHHIyFn3k0UyJFO_WCuOIts7IHwQ', NULL, '2022-05-06 00:36:48');



ALTER TABLE `pincodes` CHANGE `modify_at` `updated_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00';

ALTER TABLE `products_description` CHANGE `products_name` `products_name` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '';

ALTER TABLE `manage_role` ADD `home_page_settings` TINYINT(1) NOT NULL AFTER `check_for_pincode_delete`;
