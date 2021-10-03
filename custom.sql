INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES (NULL, 'google_captcha_key', NULL, NULL, NULL), (NULL, 'google_captcha_secret', NULL, NULL, NULL);
INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES (NULL, 'show_upload_logo', '1', NULL, NULL);
INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES (NULL, 'product_category_text', NULL, NULL, NULL), (NULL, 'top_selling_text', NULL, NULL, NULL) ;
INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES (NULL, 'new_arrival_text', NULL, NULL, NULL);
INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES (NULL, 'flash_sale_text', NULL, NULL, NULL);
INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES (NULL, 'special_product_text', NULL, NULL, NULL);
INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES (NULL, 'welcome_store_text', NULL, NULL, NULL);


-- Queries for the Pincode

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES (NULL, 'check_for_pincode', NULL, NULL, NULL);
CREATE TABLE IF NOT EXISTS `shipping_pincodes` (
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
RENAME TABLE `getonline`.`shipping_pincodes` TO `getonline`.`pincodes`;
ALTER TABLE `pincodes` CHANGE `modify_at` `updated_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00';



