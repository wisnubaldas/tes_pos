/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : point_of_sale

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 22/01/2019 11:07:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for barang
-- ----------------------------
DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang`  (
  `id_barang` int(1) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_barang` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `total_stok` mediumint(1) UNSIGNED NOT NULL,
  `harga` decimal(10, 0) NOT NULL,
  `id_kategori_barang` mediumint(1) UNSIGNED NOT NULL,
  `id_merk_barang` mediumint(1) UNSIGNED NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dihapus` enum('tidak','ya') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_barang`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci;

-- ----------------------------
-- Records of barang
-- ----------------------------
BEGIN;
INSERT INTO `barang` VALUES (1, '0001', 'Nike Sport C993', 4, 400000, 1, 2, '', 'tidak'), (2, '0002', 'Runme Everynight Y98', 45, 120000, 3, 6, '', 'tidak'), (3, '0003', 'My Lovely Bag 877', 30, 350000, 2, 3, '', 'tidak'), (4, '0004', 'Quick Silver Gaul', 15, 35000, 3, 5, '', 'tidak'), (5, '0005', 'My Cool Shoes', 39, 550000, 1, 2, '', 'tidak'), (6, '3453453', 'Testing', 45, 929992, 1, 6, '', 'ya'), (7, '9982429', 'Tes ada', 67, 600000, 3, 3, '', 'ya'), (8, '8787829', 'Yes desk', 88, 999999, 1, 3, '', 'ya'), (9, '0009', 'Test', 18, 100000, 3, 1, '', 'ya'), (10, '99989', 'Test', 9, 99, 1, 2, '', 'ya'), (11, '00010', 'Rinso', 17, 30000, 3, NULL, '', 'tidak'), (12, '00011', 'mouse', 20, 20000, 3, 1, '', 'tidak'), (13, '00012', 'Soklin Lantai', 20, 3000, 3, 1, '', 'tidak'), (14, '00013', 'Beras Merah', 15, 2000, 3, 1, '', 'tidak'), (16, '00018', 'Testing', 20, 3000, 4, 3, '', 'tidak');
COMMIT;

-- ----------------------------
-- Table structure for email_verifications
-- ----------------------------
DROP TABLE IF EXISTS `email_verifications`;
CREATE TABLE `email_verifications`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for kategori_barang
-- ----------------------------
DROP TABLE IF EXISTS `kategori_barang`;
CREATE TABLE `kategori_barang`  (
  `id_kategori_barang` mediumint(1) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kategori` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dihapus` enum('tidak','ya') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_kategori_barang`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci;

-- ----------------------------
-- Records of kategori_barang
-- ----------------------------
BEGIN;
INSERT INTO `kategori_barang` VALUES (1, 'Sepatu', 'ya'), (2, 'Tas', 'tidak'), (3, 'Baju', 'tidak'), (4, 'Celana', 'tidak'), (5, 'Topi', 'ya'), (6, 'Gelang', 'ya'), (7, 'Jam', 'ya'), (8, 'Topi', 'tidak');
COMMIT;

-- ----------------------------
-- Table structure for login_attempts
-- ----------------------------
DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE `login_attempts`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of login_attempts
-- ----------------------------
BEGIN;
INSERT INTO `login_attempts` VALUES (1, 'surya@handoko.com', '127.0.0.1', '2019-01-18 10:44:40'), (2, 'surya@handoko.com', '127.0.0.1', '2019-01-18 10:47:06'), (3, 'wisnubaldas@gmail.com', '127.0.0.1', '2019-01-18 10:48:22'), (4, 'wisnubaldas@gmail.com', '127.0.0.1', '2019-01-21 00:19:00'), (5, 'surya@handoko.com', '127.0.0.1', '2019-01-21 00:19:09'), (6, 'surya@handoko.com', '127.0.0.1', '2019-01-21 00:20:07'), (7, 'wisnu', '127.0.0.1', '2019-01-21 00:20:21'), (8, 'wisnu', '127.0.0.1', '2019-01-21 00:20:29'), (9, 'wisnu', '127.0.0.1', '2019-01-21 00:20:39'), (10, 'surya@handoko.com', '127.0.0.1', '2019-01-21 00:23:24'), (11, 'wisnu', '127.0.0.1', '2019-01-21 00:23:29'), (12, 'surya@handoko.com', '127.0.0.1', '2019-01-21 00:26:28'), (13, 'surya@handoko.com', '127.0.0.1', '2019-01-21 00:27:59'), (14, 'surya@handoko.com', '127.0.0.1', '2019-01-21 00:54:07'), (15, 'surya@handoko.com', '127.0.0.1', '2019-01-21 00:55:10'), (16, 'surya@handoko.com', '127.0.0.1', '2019-01-21 00:56:02'), (17, 'surya@handoko.com', '127.0.0.1', '2019-01-21 00:57:10'), (18, 'surya@handoko.com', '127.0.0.1', '2019-01-21 00:57:42'), (19, 'wisnubaldas@gmail.com', '127.0.0.1', '2019-01-21 00:58:03'), (20, 'surya@handoko.com', '127.0.0.1', '2019-01-21 00:58:57'), (21, 'wisnubaldas@gmail.com', '127.0.0.1', '2019-01-21 00:59:27'), (22, 'surya@handoko.com', '127.0.0.1', '2019-01-21 01:04:21'), (23, 'surya@handoko.com', '127.0.0.1', '2019-01-21 01:49:44');
COMMIT;

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `caret` tinyint(1) NULL DEFAULT 0,
  `highlight` tinyint(1) NULL DEFAULT 0,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `badge` int(255) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` int(10) NOT NULL,
  `sort` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
BEGIN;
INSERT INTO `menus` VALUES (1, 'Administrator', 'ion-ios-grid-view-outline', 1, 0, NULL, NULL, 'javascript:;', 0, 1), (5, 'Menu Config', 'ion-ios-color-filter-outline', 1, 0, NULL, NULL, 'backend/menus', 1, 2), (6, 'Group Config', NULL, 0, 0, NULL, NULL, 'backend/group', 1, 3), (7, 'Email', 'ion-ios-color-filter-outline', 1, 1, NULL, NULL, 'javascript:;', 0, 4), (8, 'Inbox', NULL, 0, 0, NULL, 100, 'javascript:;', 7, 5), (9, 'person', 'ion-ios-grid-view-outline bg-green', 0, 0, NULL, NULL, 'javascript:;', 8, 6), (10, 'male', 'xxxx', 0, 0, NULL, NULL, 'dasdasd', 9, 7), (11, 'female', 'ddddd', 0, 1, NULL, NULL, 'asdasda', 9, 8), (13, '', NULL, 0, 0, NULL, NULL, '', 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for merk_barang
-- ----------------------------
DROP TABLE IF EXISTS `merk_barang`;
CREATE TABLE `merk_barang`  (
  `id_merk_barang` mediumint(1) UNSIGNED NOT NULL AUTO_INCREMENT,
  `merk` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dihapus` enum('tidak','ya') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_merk_barang`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci;

-- ----------------------------
-- Records of merk_barang
-- ----------------------------
BEGIN;
INSERT INTO `merk_barang` VALUES (1, 'Adidas', 'tidak'), (2, 'Nike', 'tidak'), (3, 'BodyPack', 'tidak'), (4, 'Jansport', 'tidak'), (5, 'Nevada', 'tidak'), (6, 'Jackloth', 'tidak'), (7, 'Pierro', 'ya'), (8, 'Pierro', 'ya'), (9, 'Pierro', 'ya'), (10, 'Converse', 'tidak'), (11, 'Piero', 'ya'), (12, 'Teen', 'ya'), (13, 'adass2', 'ya'), (14, 'asda', 'ya'), (15, 'sada3', 'ya'), (16, 'asda 3', 'ya'), (17, '333', 'ya');
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `version` bigint(20) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (20190106092937);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `active` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for penjualan_detail
-- ----------------------------
DROP TABLE IF EXISTS `penjualan_detail`;
CREATE TABLE `penjualan_detail`  (
  `id_penjualan_d` int(1) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_penjualan_m` int(1) UNSIGNED NOT NULL,
  `id_barang` int(1) NOT NULL,
  `jumlah_beli` smallint(1) UNSIGNED NOT NULL,
  `harga_satuan` decimal(10, 0) NOT NULL,
  `total` decimal(10, 0) NOT NULL,
  PRIMARY KEY (`id_penjualan_d`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 27 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci;

-- ----------------------------
-- Records of penjualan_detail
-- ----------------------------
BEGIN;
INSERT INTO `penjualan_detail` VALUES (2, 2, 2, 1, 120000, 120000), (3, 2, 4, 1, 35000, 35000), (4, 3, 3, 1, 350000, 350000), (5, 4, 2, 1, 120000, 120000), (6, 4, 11, 2, 30000, 60000), (7, 4, 4, 2, 35000, 70000), (11, 6, 2, 1, 120000, 120000), (10, 6, 1, 1, 400000, 400000), (12, 7, 4, 1, 35000, 35000), (13, 8, 3, 1, 350000, 350000), (14, 9, 1, 1, 400000, 400000), (15, 9, 2, 1, 120000, 120000), (16, 9, 3, 1, 350000, 350000), (17, 9, 4, 1, 35000, 35000), (18, 10, 1, 1, 400000, 400000), (19, 10, 2, 1, 120000, 120000), (20, 10, 3, 1, 350000, 350000), (21, 11, 1, 1, 400000, 400000), (22, 11, 3, 1, 350000, 350000), (23, 12, 3, 2, 350000, 700000), (26, 15, 1, 1, 400000, 400000);
COMMIT;

-- ----------------------------
-- Table structure for penjualan_master
-- ----------------------------
DROP TABLE IF EXISTS `penjualan_master`;
CREATE TABLE `penjualan_master`  (
  `id_penjualan_m` int(1) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomor_nota` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal` datetime(0) NOT NULL,
  `grand_total` decimal(10, 0) NOT NULL,
  `bayar` decimal(10, 0) NOT NULL,
  `keterangan_lain` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `id_pelanggan` mediumint(1) UNSIGNED NULL DEFAULT NULL,
  `id_user` mediumint(1) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_penjualan_m`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci;

-- ----------------------------
-- Records of penjualan_master
-- ----------------------------
BEGIN;
INSERT INTO `penjualan_master` VALUES (2, '57431A97D5DF8', '2019-01-19 16:58:31', 155000, 160000, '', 3, 1), (3, '57431BDDAFA9D2', '2019-01-19 17:03:57', 350000, 400000, '', 3, 2), (4, '57445D46655AB1', '2019-01-19 15:55:18', 250000, 260000, '', NULL, 1), (6, '576406086CB611', '2019-01-20 16:15:36', 520000, 550000, '', NULL, 1), (7, '57655546C37441', '2019-01-20 16:05:58', 35000, 40000, '', NULL, 1), (8, '57655552ABF781', '2019-01-10 16:06:10', 350000, 400000, '', NULL, 1), (9, '577A31BABCDC51', '2019-01-10 11:51:54', 905000, 910000, '', NULL, 1), (10, '577A3327991DC1', '2019-01-22 11:57:59', 870000, 880000, 'Dibayar Langsung', NULL, 1), (11, '577A3793C67CB1', '2019-01-22 12:16:51', 750000, 750000, '', NULL, 1), (12, '57CA627F897FB1', '2019-01-22 07:41:19', 700000, 800000, '', NULL, 1), (15, '57CBD697806F61', '2019-01-22 10:08:55', 400000, 500000, '', NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `user_permissions`;
CREATE TABLE `user_permissions`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(8) UNSIGNED NOT NULL,
  `category_id` int(8) UNSIGNED NOT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `category_id`(`category_id`) USING BTREE,
  CONSTRAINT `user_permissions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_permissions_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `user_permissions_categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for user_permissions_categories
-- ----------------------------
DROP TABLE IF EXISTS `user_permissions_categories`;
CREATE TABLE `user_permissions_categories`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(65) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` int(8) UNSIGNED NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  CONSTRAINT `user_permissions_categories_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `user_permissions_categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(65) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(65) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `active` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `verified` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'Admin', 'Admin', 'admin', 'm', 'admin@admin.com', '$2y$10$yT2FothMHfjybRJKuiv0vOj80CMPyjOlvO8TCSPecTcR7OQF./4e.', 'admin', '4030ad437b332d664658086539747cf3cb6afb0ec03b55d253c3b6d8241f4a59', 1, 1, '2019-01-06 23:25:23', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
