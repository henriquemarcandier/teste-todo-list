/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : todo_list

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-12-29 21:31:42
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `failed_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_todo_lists_table', '1');
INSERT INTO `migrations` VALUES ('2', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_12_14_000001_create_personal_access_tokens_table', '1');
INSERT INTO `migrations` VALUES ('4', '2022_12_29_002954_create_todo_lists_tasks', '1');

-- ----------------------------
-- Table structure for `personal_access_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for `todo_lists`
-- ----------------------------
DROP TABLE IF EXISTS `todo_lists`;
CREATE TABLE `todo_lists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `article` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of todo_lists
-- ----------------------------
INSERT INTO `todo_lists` VALUES ('1', 'Madrugada', 'a', '2022-12-29 08:31:31', '2022-12-29 13:11:29');
INSERT INTO `todo_lists` VALUES ('2', 'Manhã', 'a', '2022-12-29 08:31:45', '2022-12-29 08:31:45');
INSERT INTO `todo_lists` VALUES ('3', 'Tarde', 'a', '2022-12-29 08:31:53', '2022-12-29 08:31:53');
INSERT INTO `todo_lists` VALUES ('4', 'Noite', 'a', '2022-12-29 08:32:10', '2022-12-29 08:32:10');

-- ----------------------------
-- Table structure for `todo_lists_tasks`
-- ----------------------------
DROP TABLE IF EXISTS `todo_lists_tasks`;
CREATE TABLE `todo_lists_tasks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_todo_lists` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` longtext NOT NULL,
  `completed` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of todo_lists_tasks
-- ----------------------------
INSERT INTO `todo_lists_tasks` VALUES ('1', '1', 'Dormir', 'Dormir', '1', '2022-12-29', '2022-12-28 00:00:00', '2022-12-28 00:00:00');
INSERT INTO `todo_lists_tasks` VALUES ('7', '2', 'Comprar Pão Italiano (baguete)', 'pão italiano', '0', '2022-12-30', '2022-12-29 18:19:44', '2022-12-29 20:21:01');
INSERT INTO `todo_lists_tasks` VALUES ('12', '2', 'Comprar Parmesão - 200g', 'Comprar Parmesão - 200g', '0', '2022-12-30', '2022-12-29 21:14:42', '2022-12-29 21:15:56');
INSERT INTO `todo_lists_tasks` VALUES ('13', '2', 'Comprar Presunto Parma - 200g', 'Comprar Presunto Parma - 200g', '0', '2022-12-30', '2022-12-29 20:20:37', '2022-12-29 20:20:37');
INSERT INTO `todo_lists_tasks` VALUES ('14', '2', 'Comprar Chardonnay ou Sauvignon Blank (Amayna)', 'Comprar Chardonnay ou Sauvignon Blank (Amayna)', '0', '2022-12-30', '2022-12-29 20:21:21', '2022-12-29 20:21:21');
INSERT INTO `todo_lists_tasks` VALUES ('15', '2', 'Comprar Frutas (uvas, morango, damasco, ...)', 'Comprar Frutas (uvas, morango, damasco, ...)', '0', '2022-12-30', '2022-12-29 20:21:50', '2022-12-29 20:21:50');
INSERT INTO `todo_lists_tasks` VALUES ('16', '2', 'Comprar Pão Italiano (baguete)', 'Comprar Pão Italiano (baguete)', '1', '2022-12-29', '2022-12-29 21:10:24', '2022-12-29 21:15:59');
INSERT INTO `todo_lists_tasks` VALUES ('17', '2', 'Comprar Parmesão - 200g', 'Comprar Parmesão - 200g', '1', '2022-12-29', '2022-12-29 21:14:42', '2022-12-29 21:15:56');
INSERT INTO `todo_lists_tasks` VALUES ('18', '2', 'Comprar Presunto Parma - 200g', 'Comprar Presunto Parma - 200g', '1', '2022-12-29', '2022-12-29 21:15:05', '2022-12-29 21:15:54');
INSERT INTO `todo_lists_tasks` VALUES ('19', '2', 'Comprar Chardonnay ou Sauvignon Blank (Amayna)', 'Comprar Chardonnay ou Sauvignon Blank (Amayna)', '1', '2022-12-29', '2022-12-29 21:15:19', '2022-12-29 21:15:51');
INSERT INTO `todo_lists_tasks` VALUES ('20', '2', 'Comprar Frutas (uvas, morango, damasco, ...)', 'Comprar Frutas (uvas, morango, damasco, ...)', '1', '2022-12-29', '2022-12-29 21:15:34', '2022-12-29 21:15:49');
