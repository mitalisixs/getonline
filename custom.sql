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



ALTER TABLE `products_description` ADD INDEX(`products_id`);
ALTER TABLE `image_categories` ADD INDEX(`image_id`);

ALTER TABLE `specials` ADD INDEX(`products_id`);
ALTER TABLE `specials` ADD INDEX(`status`);
ALTER TABLE `specials` ADD INDEX(`expires_date`);

ALTER TABLE `flash_sale` ADD INDEX(`products_id`);
ALTER TABLE `flash_sale` ADD INDEX(`flash_status`);
ALTER TABLE `flash_sale` ADD INDEX(`flash_status`);

ALTER TABLE `products` ADD INDEX(`products_price`);

ALTER TABLE `products` ADD INDEX(`products_status`);
ALTER TABLE `products` ADD INDEX(`is_feature`);
ALTER TABLE `products_description` ADD INDEX(`language_id`);
ALTER TABLE `products` ADD INDEX(`products_ordered`);
ALTER TABLE `products` ADD INDEX(`products_liked`);
ALTER TABLE `image_categories` ADD INDEX(`image_type`);
ALTER TABLE `products_to_categories` ADD INDEX(`categories_id`);
ALTER TABLE `products_to_categories` ADD INDEX(`products_id`);

ALTER TABLE `categories_description` ADD INDEX(`categories_id`);

ALTER TABLE `categories_description` ADD INDEX(`categories_name`);

ALTER TABLE `categories_description` ADD INDEX(`language_id`);

ALTER TABLE `categories` ADD INDEX(`categories_status`);

ALTER TABLE `inventory` ADD INDEX(`products_id`);
ALTER TABLE `inventory` ADD INDEX(`stock_type`);

ALTER TABLE `liked_products` ADD INDEX(`liked_products_id`);
ALTER TABLE `liked_products` ADD INDEX(`liked_customers_id`);

ALTER TABLE `alert_settings` ADD `create_customer_message` TINYINT NOT NULL AFTER `create_customer_notification`;
ALTER TABLE `alert_settings` ADD `message` TINYINT NOT NULL AFTER `order_status_notification`;
ALTER TABLE `alert_settings` ADD `new_product_message` TINYINT NOT NULL AFTER `new_product_notification`;
ALTER TABLE `alert_settings` ADD `forgot_message` TINYINT NOT NULL AFTER `forgot_notification`;
ALTER TABLE `alert_settings` ADD `news_message` TINYINT NOT NULL AFTER `news_notification`;
ALTER TABLE `alert_settings` ADD `contact_us_message` TINYINT NOT NULL AFTER `contact_us_notification`;
ALTER TABLE `alert_settings` ADD `order_message` TINYINT NOT NULL AFTER `order_notification`;

ALTER TABLE `products_options_values` ADD `image_path` VARCHAR(255) NULL AFTER `products_options_values_name`, ADD `description` TEXT NULL AFTER `products_options_values_name`;

ALTER TABLE `inventory_detail` ADD `id` INT NOT NULL AUTO_INCREMENT FIRST, ADD PRIMARY KEY (`id`);


ALTER TABLE `products_options_values` ADD `prices` DOUBLE NULL AFTER `short_description`;

ALTER TABLE `inventory_detail` ADD INDEX(`inventory_ref_id`); 
ALTER TABLE `inventory_detail` ADD INDEX(`products_id`); 
ALTER TABLE `inventory_detail` ADD INDEX(`attribute_id`); 




