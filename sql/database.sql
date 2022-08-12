/* urang-store DB */
CREATE DATABASE `urang_store` /*!40100 COLLATE 'utf8_general_ci' */

CREATE TABLE `member` (
                          `idx` INT(11) NOT NULL AUTO_INCREMENT,
                          `member` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
                          `password` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
                          `role` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
                          `admin` TINYINT(1) NULL DEFAULT '0',
                          `enabled` TINYINT(1) NULL DEFAULT '1',
                          `created_at` TIMESTAMP NULL DEFAULT NULL,
                          `modified_at` TIMESTAMP NULL DEFAULT NULL,
                          PRIMARY KEY (`idx`) USING BTREE
)
    COLLATE='utf8_general_ci'
    ENGINE=InnoDB
;

CREATE TABLE `product` (
                           `idx` INT(11) NOT NULL AUTO_INCREMENT,
                           `name` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
                           `best` TINYINT(1) NULL DEFAULT '0',
                           `price` INT(11) NULL DEFAULT NULL,
                           `discount` INT(11) NULL DEFAULT '0',
                           `result_price` INT(11) NULL DEFAULT NULL,
                           `description` VARCHAR(100) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
                           `enabled` TINYINT(1) NULL DEFAULT '1',
                           `created_at` TIMESTAMP NULL DEFAULT current_timestamp(),
                           `modified_at` TIMESTAMP NULL DEFAULT NULL,
                           PRIMARY KEY (`idx`) USING BTREE
)
    COLLATE='utf8_general_ci'
    ENGINE=InnoDB
    AUTO_INCREMENT=1
;

CREATE TABLE `product_image` (
                                 `idx` INT(11) NOT NULL AUTO_INCREMENT,
                                 `product_idx` INT(11) NULL DEFAULT NULL,
                                 `image_url` VARCHAR(100) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
                                 `image_order` TINYINT(1) NULL DEFAULT NULL COMMENT '이미지 순서',
                                 `enabled` TINYINT(1) NULL DEFAULT '1',
                                 `created_at` TIMESTAMP NULL DEFAULT current_timestamp(),
                                 `modified_at` TIMESTAMP NULL DEFAULT NULL,
                                 PRIMARY KEY (`idx`) USING BTREE,
                                 INDEX `FK_product_image_product` (`product_idx`) USING BTREE,
                                 CONSTRAINT `FK_product_image_product` FOREIGN KEY (`product_idx`) REFERENCES `urang_store`.`product` (`idx`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
    COLLATE='utf8_general_ci'
    ENGINE=InnoDB
    AUTO_INCREMENT=1
;

CREATE TABLE `product_image` (
                                 `idx` INT(11) NOT NULL AUTO_INCREMENT,
                                 `product_idx` INT(11) NULL DEFAULT NULL,
                                 `image_url` VARCHAR(100) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
                                 `image_order` TINYINT(1) NULL DEFAULT NULL COMMENT '이미지 순서',
                                 `enabled` TINYINT(1) NULL DEFAULT '1',
                                 `created_at` TIMESTAMP NULL DEFAULT current_timestamp(),
                                 `modified_at` TIMESTAMP NULL DEFAULT NULL,
                                 PRIMARY KEY (`idx`) USING BTREE,
                                 INDEX `FK_product_image_product` (`product_idx`) USING BTREE,
                                 CONSTRAINT `FK_product_image_product` FOREIGN KEY (`product_idx`) REFERENCES `urang_store`.`product` (`idx`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
    COLLATE='utf8_general_ci'
    ENGINE=InnoDB
    AUTO_INCREMENT=1
;

INSERT INTO `member` (`idx`, `member`, `password`, `role`, `admin`, `enabled`, `created_at`, `modified_at`) VALUES (1, 'admin', '0000', 'ROLE_ADMIN', 1, 1, '2022-08-12 17:44:08', NULL);
INSERT INTO `member` (`idx`, `member`, `password`, `role`, `admin`, `enabled`, `created_at`, `modified_at`) VALUES (2, 'user1', '0000', 'ROLE_USER', 0, 1, '2022-08-12 17:44:09', NULL);

INSERT INTO `product` (`idx`, `name`, `best`, `price`, `discount`, `result_price`, `description`, `enabled`, `created_at`, `modified_at`) VALUES (1, '망그러진곰 망그러진햄터 핸드폰 거치대 그립톡 4종', 1, 15000, 6, 14000, '망그러진햄터 핸드폰 거치대 그립톡 4종', 1, '2022-08-12 11:15:29', NULL);
INSERT INTO `product` (`idx`, `name`, `best`, `price`, `discount`, `result_price`, `description`, `enabled`, `created_at`, `modified_at`) VALUES (2, '망그러진곰 망그러진햄터 아크릴 키링 5종', 1, 7000, 0, 7000, '망그러진햄터 아크릴 키링 5종', 1, '2022-08-12 11:15:58', NULL);
INSERT INTO `product` (`idx`, `name`, `best`, `price`, `discount`, `result_price`, `description`, `enabled`, `created_at`, `modified_at`) VALUES (3, '핸드폰케이스 뮤직 망그러진곰 스마트폰 젤리케이스', 0, 16000, 18, 13000, '뮤직 망그러진곰 스마트폰 젤리케이스', 1, '2022-08-12 11:15:58', NULL);
INSERT INTO `product` (`idx`, `name`, `best`, `price`, `discount`, `result_price`, `description`, `enabled`, `created_at`, `modified_at`) VALUES (4, '핸드폰케이스 힙합 망그러진 햄터 스마트폰 젤리케이스', 1, 16000, 18, 13000, '힙합 망그러진 햄터 스마트폰 젤리케이스', 1, '2022-08-12 11:16:37', NULL);
INSERT INTO `product` (`idx`, `name`, `best`, `price`, `discount`, `result_price`, `description`, `enabled`, `created_at`, `modified_at`) VALUES (5, '핸드폰케이스 빵집 망그러진 햄터 스마트폰 젤리케이스', 1, 13000, 18, 13000, '빵집 망그러진 햄터 스마트폰 젤리케이스', 1, '2022-08-12 11:16:45', NULL);
INSERT INTO `product` (`idx`, `name`, `best`, `price`, `discount`, `result_price`, `description`, `enabled`, `created_at`, `modified_at`) VALUES (6, '핸드폰케이스 울보 망그러진곰 스마트폰 하드케이스 젤리케이스', 0, 18000, 27, 13000, '울보 망그러진곰 스마트폰 하드케이스 젤리케이스', 1, '2022-08-12 11:17:12', NULL);
INSERT INTO `product` (`idx`, `name`, `best`, `price`, `discount`, `result_price`, `description`, `enabled`, `created_at`, `modified_at`) VALUES (7, '핸드폰케이스 빵집 망그러진 햄터 스마트폰 하드케이스', 0, 18000, 16, 15000, '빵집 망그러진 햄터 스마트폰 하드케이스', 1, '2022-08-12 11:17:32', NULL);
INSERT INTO `product` (`idx`, `name`, `best`, `price`, `discount`, `result_price`, `description`, `enabled`, `created_at`, `modified_at`) VALUES (8, '핸드폰케이스 장미 망그러진곰 스마트폰 하드케이스', 1, 18000, 16, 15000, '장미 망그러진곰 스마트폰 하드케이스', 1, '2022-08-12 11:17:48', NULL);
INSERT INTO `product` (`idx`, `name`, `best`, `price`, `discount`, `result_price`, `description`, `enabled`, `created_at`, `modified_at`) VALUES (9, '핸드폰케이스 하트 반짝이 벚꽃 망그러진곰 스마트폰 글리터케이스', 0, 25000, 12, 22000, '하트 반짝이 벚꽃 망그러진곰 스마트폰 글리터케이스', 1, '2022-08-12 11:18:01', NULL);
INSERT INTO `product` (`idx`, `name`, `best`, `price`, `discount`, `result_price`, `description`, `enabled`, `created_at`, `modified_at`) VALUES (10, '핸드폰케이스 힙합 망그러진 햄터 스마트폰 하드케이스', 0, 18000, 16, 15000, '힙합 망그러진 햄터 스마트폰 하드케이스', 1, '2022-08-12 11:18:14', NULL);

INSERT INTO `product_image` (`idx`, `product_idx`, `image_url`, `image_order`, `enabled`, `created_at`, `modified_at`) VALUES (1, 1, '/image/product/20220812_1_0.png', 0, 1, '2022-08-12 11:33:56', NULL);
INSERT INTO `product_image` (`idx`, `product_idx`, `image_url`, `image_order`, `enabled`, `created_at`, `modified_at`) VALUES (2, 2, '/image/product/20220812_2_0.png', 0, 1, '2022-08-12 11:33:56', NULL);
INSERT INTO `product_image` (`idx`, `product_idx`, `image_url`, `image_order`, `enabled`, `created_at`, `modified_at`) VALUES (11, 2, '/image/product/20220812_2_1.png', 1, 1, '2022-08-12 14:52:32', NULL);
INSERT INTO `product_image` (`idx`, `product_idx`, `image_url`, `image_order`, `enabled`, `created_at`, `modified_at`) VALUES (3, 3, '/image/product/20220812_3_0.png', 0, 1, '2022-08-12 11:33:56', NULL);
INSERT INTO `product_image` (`idx`, `product_idx`, `image_url`, `image_order`, `enabled`, `created_at`, `modified_at`) VALUES (4, 4, '/image/product/20220812_4_0.png', 0, 1, '2022-08-12 11:35:59', NULL);
INSERT INTO `product_image` (`idx`, `product_idx`, `image_url`, `image_order`, `enabled`, `created_at`, `modified_at`) VALUES (5, 5, '/image/product/20220812_5_0.png', 0, 1, '2022-08-12 11:36:06', NULL);
INSERT INTO `product_image` (`idx`, `product_idx`, `image_url`, `image_order`, `enabled`, `created_at`, `modified_at`) VALUES (6, 6, '/image/product/20220812_6_0.png', 0, 1, '2022-08-12 11:36:12', NULL);
INSERT INTO `product_image` (`idx`, `product_idx`, `image_url`, `image_order`, `enabled`, `created_at`, `modified_at`) VALUES (7, 7, '/image/product/20220812_7_0.png', 0, 1, '2022-08-12 11:36:18', NULL);
INSERT INTO `product_image` (`idx`, `product_idx`, `image_url`, `image_order`, `enabled`, `created_at`, `modified_at`) VALUES (8, 8, '/image/product/20220812_8_0.png', 0, 1, '2022-08-12 11:36:23', NULL);
INSERT INTO `product_image` (`idx`, `product_idx`, `image_url`, `image_order`, `enabled`, `created_at`, `modified_at`) VALUES (9, 9, '/image/product/20220812_9_0.png', 0, 1, '2022-08-12 11:36:28', NULL);
INSERT INTO `product_image` (`idx`, `product_idx`, `image_url`, `image_order`, `enabled`, `created_at`, `modified_at`) VALUES (10, 10, '/image/product/20220812_10_0.png', 0, 1, '2022-08-12 11:36:34', NULL);


