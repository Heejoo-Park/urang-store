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
