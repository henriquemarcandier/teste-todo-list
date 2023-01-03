/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : todo_list

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-01-03 04:53:34
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=320 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of todo_lists_tasks
-- ----------------------------
INSERT INTO `todo_lists_tasks` VALUES ('1', '1', 'Dormir', 'Dormir', '1', '2023-01-03', '2023-01-03 04:23:37', '2023-01-03 04:32:15');
INSERT INTO `todo_lists_tasks` VALUES ('2', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '1', '2023-01-03', '2023-01-03 04:23:37', '2023-01-03 04:32:27');
INSERT INTO `todo_lists_tasks` VALUES ('3', '2', 'Comprar Parmessão (200g)', 'Parmesão', '1', '2023-01-03', '2023-01-03 04:23:37', '2023-01-03 04:32:30');
INSERT INTO `todo_lists_tasks` VALUES ('4', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '1', '2023-01-03', '2023-01-03 04:23:37', '2023-01-03 04:32:36');
INSERT INTO `todo_lists_tasks` VALUES ('5', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-03', '2023-01-03 04:23:37', '2023-01-03 04:39:42');
INSERT INTO `todo_lists_tasks` VALUES ('6', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-03', '2023-01-03 04:23:37', '2023-01-03 04:39:46');
INSERT INTO `todo_lists_tasks` VALUES ('7', '3', 'Almoçar', 'Almoçar', '1', '2023-01-03', '2023-01-03 04:23:37', '2023-01-03 04:40:05');
INSERT INTO `todo_lists_tasks` VALUES ('8', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '1', '2023-01-03', '2023-01-03 04:23:37', '2023-01-03 04:40:07');
INSERT INTO `todo_lists_tasks` VALUES ('9', '3', 'Fazer Site', 'Fazer Site', '1', '2023-01-03', '2023-01-03 04:23:37', '2023-01-03 04:40:10');
INSERT INTO `todo_lists_tasks` VALUES ('10', '4', 'Assistir TV', 'Assistir TV', '1', '2023-01-03', '2023-01-03 04:23:37', '2023-01-03 04:40:18');
INSERT INTO `todo_lists_tasks` VALUES ('11', '4', 'Dormir', 'Dormir', '1', '2023-01-03', '2023-01-03 04:23:37', '2023-01-03 04:40:21');
INSERT INTO `todo_lists_tasks` VALUES ('12', '1', 'Dormir', 'Dormir', '0', '2023-01-04', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('13', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-04', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('14', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-04', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('15', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-04', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('16', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-04', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('17', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-04', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('18', '3', 'Almoçar', 'Almoçar', '0', '2023-01-04', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('19', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-04', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('20', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-04', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('21', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-04', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('22', '4', 'Dormir', 'Dormir', '0', '2023-01-04', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('23', '1', 'Dormir', 'Dormir', '0', '2023-01-05', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('24', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-05', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('25', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-05', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('26', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-05', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('27', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-05', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('28', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-05', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('29', '3', 'Almoçar', 'Almoçar', '0', '2023-01-05', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('30', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-05', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('31', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-05', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('32', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-05', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('33', '4', 'Dormir', 'Dormir', '0', '2023-01-05', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('34', '1', 'Dormir', 'Dormir', '0', '2023-01-06', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('35', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-06', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('36', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-06', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('37', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-06', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('38', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-06', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('39', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-06', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('40', '3', 'Almoçar', 'Almoçar', '0', '2023-01-06', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('41', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-06', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('42', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-06', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('43', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-06', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('44', '4', 'Dormir', 'Dormir', '0', '2023-01-06', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('45', '1', 'Dormir', 'Dormir', '0', '2023-01-07', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('46', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-07', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('47', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-07', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('48', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-07', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('49', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-07', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('50', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-07', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('51', '3', 'Almoçar', 'Almoçar', '0', '2023-01-07', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('52', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-07', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('53', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-07', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('54', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-07', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('55', '4', 'Dormir', 'Dormir', '0', '2023-01-07', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('56', '1', 'Dormir', 'Dormir', '0', '2023-01-08', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('57', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-08', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('58', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-08', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('59', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-08', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('60', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-08', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('61', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-08', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('62', '3', 'Almoçar', 'Almoçar', '0', '2023-01-08', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('63', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-08', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('64', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-08', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('65', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-08', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('66', '4', 'Dormir', 'Dormir', '0', '2023-01-08', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('67', '1', 'Dormir', 'Dormir', '0', '2023-01-09', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('68', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-09', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('69', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-09', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('70', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-09', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('71', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-09', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('72', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-09', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('73', '3', 'Almoçar', 'Almoçar', '0', '2023-01-09', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('74', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-09', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('75', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-09', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('76', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-09', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('77', '4', 'Dormir', 'Dormir', '0', '2023-01-09', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('78', '1', 'Dormir', 'Dormir', '0', '2023-01-10', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('79', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-10', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('80', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-10', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('81', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-10', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('82', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-10', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('83', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-10', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('84', '3', 'Almoçar', 'Almoçar', '0', '2023-01-10', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('85', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-10', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('86', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-10', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('87', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-10', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('88', '4', 'Dormir', 'Dormir', '0', '2023-01-10', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('89', '1', 'Dormir', 'Dormir', '0', '2023-01-11', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('90', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-11', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('91', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-11', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('92', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-11', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('93', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-11', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('94', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-11', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('95', '3', 'Almoçar', 'Almoçar', '0', '2023-01-11', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('96', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-11', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('97', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-11', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('98', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-11', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('99', '4', 'Dormir', 'Dormir', '0', '2023-01-11', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('100', '1', 'Dormir', 'Dormir', '0', '2023-01-12', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('101', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-12', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('102', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-12', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('103', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-12', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('104', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-12', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('105', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-12', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('106', '3', 'Almoçar', 'Almoçar', '0', '2023-01-12', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('107', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-12', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('108', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-12', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('109', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-12', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('110', '4', 'Dormir', 'Dormir', '0', '2023-01-12', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('111', '1', 'Dormir', 'Dormir', '0', '2023-01-13', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('112', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-13', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('113', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-13', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('114', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-13', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('115', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-13', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('116', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-13', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('117', '3', 'Almoçar', 'Almoçar', '0', '2023-01-13', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('118', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-13', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('119', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-13', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('120', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-13', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('121', '4', 'Dormir', 'Dormir', '0', '2023-01-13', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('122', '1', 'Dormir', 'Dormir', '0', '2023-01-14', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('123', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-14', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('124', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-14', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('125', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-14', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('126', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-14', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('127', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-14', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('128', '3', 'Almoçar', 'Almoçar', '0', '2023-01-14', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('129', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-14', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('130', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-14', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('131', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-14', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('132', '4', 'Dormir', 'Dormir', '0', '2023-01-14', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('133', '1', 'Dormir', 'Dormir', '0', '2023-01-15', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('134', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-15', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('135', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-15', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('136', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-15', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('137', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-15', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('138', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-15', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('139', '3', 'Almoçar', 'Almoçar', '0', '2023-01-15', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('140', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-15', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('141', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-15', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('142', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-15', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('143', '4', 'Dormir', 'Dormir', '0', '2023-01-15', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('144', '1', 'Dormir', 'Dormir', '0', '2023-01-16', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('145', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-16', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('146', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-16', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('147', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-16', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('148', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-16', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('149', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-16', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('150', '3', 'Almoçar', 'Almoçar', '0', '2023-01-16', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('151', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-16', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('152', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-16', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('153', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-16', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('154', '4', 'Dormir', 'Dormir', '0', '2023-01-16', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('155', '1', 'Dormir', 'Dormir', '0', '2023-01-17', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('156', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-17', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('157', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-17', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('158', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-17', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('159', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-17', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('160', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-17', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('161', '3', 'Almoçar', 'Almoçar', '0', '2023-01-17', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('162', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-17', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('163', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-17', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('164', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-17', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('165', '4', 'Dormir', 'Dormir', '0', '2023-01-17', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('166', '1', 'Dormir', 'Dormir', '0', '2023-01-18', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('167', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-18', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('168', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-18', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('169', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-18', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('170', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-18', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('171', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-18', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('172', '3', 'Almoçar', 'Almoçar', '0', '2023-01-18', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('173', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-18', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('174', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-18', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('175', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-18', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('176', '4', 'Dormir', 'Dormir', '0', '2023-01-18', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('177', '1', 'Dormir', 'Dormir', '0', '2023-01-19', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('178', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-19', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('179', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-19', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('180', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-19', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('181', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-19', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('182', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-19', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('183', '3', 'Almoçar', 'Almoçar', '0', '2023-01-19', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('184', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-19', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('185', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-19', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('186', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-19', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('187', '4', 'Dormir', 'Dormir', '0', '2023-01-19', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('188', '1', 'Dormir', 'Dormir', '0', '2023-01-20', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('189', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-20', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('190', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-20', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('191', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-20', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('192', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-20', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('193', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-20', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('194', '3', 'Almoçar', 'Almoçar', '0', '2023-01-20', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('195', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-20', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('196', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-20', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('197', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-20', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('198', '4', 'Dormir', 'Dormir', '0', '2023-01-20', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('199', '1', 'Dormir', 'Dormir', '0', '2023-01-21', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('200', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-21', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('201', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-21', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('202', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-21', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('203', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-21', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('204', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-21', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('205', '3', 'Almoçar', 'Almoçar', '0', '2023-01-21', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('206', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-21', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('207', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-21', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('208', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-21', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('209', '4', 'Dormir', 'Dormir', '0', '2023-01-21', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('210', '1', 'Dormir', 'Dormir', '0', '2023-01-22', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('211', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-22', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('212', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-22', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('213', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-22', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('214', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-22', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('215', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-22', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('216', '3', 'Almoçar', 'Almoçar', '0', '2023-01-22', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('217', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-22', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('218', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-22', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('219', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-22', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('220', '4', 'Dormir', 'Dormir', '0', '2023-01-22', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('221', '1', 'Dormir', 'Dormir', '0', '2023-01-23', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('222', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-23', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('223', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-23', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('224', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-23', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('225', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-23', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('226', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-23', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('227', '3', 'Almoçar', 'Almoçar', '0', '2023-01-23', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('228', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-23', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('229', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-23', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('230', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-23', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('231', '4', 'Dormir', 'Dormir', '0', '2023-01-23', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('232', '1', 'Dormir', 'Dormir', '0', '2023-01-24', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('233', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-24', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('234', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-24', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('235', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-24', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('236', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-24', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('237', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-24', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('238', '3', 'Almoçar', 'Almoçar', '0', '2023-01-24', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('239', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-24', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('240', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-24', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('241', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-24', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('242', '4', 'Dormir', 'Dormir', '0', '2023-01-24', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('243', '1', 'Dormir', 'Dormir', '0', '2023-01-25', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('244', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-25', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('245', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-25', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('246', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-25', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('247', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-25', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('248', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-25', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('249', '3', 'Almoçar', 'Almoçar', '0', '2023-01-25', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('250', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-25', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('251', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-25', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('252', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-25', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('253', '4', 'Dormir', 'Dormir', '0', '2023-01-25', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('254', '1', 'Dormir', 'Dormir', '0', '2023-01-26', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('255', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-26', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('256', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-26', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('257', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-26', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('258', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-26', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('259', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-26', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('260', '3', 'Almoçar', 'Almoçar', '0', '2023-01-26', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('261', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-26', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('262', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-26', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('263', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-26', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('264', '4', 'Dormir', 'Dormir', '0', '2023-01-26', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('265', '1', 'Dormir', 'Dormir', '0', '2023-01-27', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('266', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-27', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('267', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-27', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('268', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-27', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('269', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-27', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('270', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-27', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('271', '3', 'Almoçar', 'Almoçar', '0', '2023-01-27', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('272', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-27', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('273', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-27', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('274', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-27', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('275', '4', 'Dormir', 'Dormir', '0', '2023-01-27', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('276', '1', 'Dormir', 'Dormir', '0', '2023-01-28', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('277', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-28', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('278', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-28', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('279', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-28', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('280', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-28', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('281', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-28', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('282', '3', 'Almoçar', 'Almoçar', '0', '2023-01-28', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('283', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-28', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('284', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-28', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('285', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-28', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('286', '4', 'Dormir', 'Dormir', '0', '2023-01-28', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('287', '1', 'Dormir', 'Dormir', '0', '2023-01-29', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('288', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-29', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('289', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-29', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('290', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-29', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('291', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-29', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('292', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-29', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('293', '3', 'Almoçar', 'Almoçar', '0', '2023-01-29', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('294', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-29', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('295', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-29', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('296', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-29', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('297', '4', 'Dormir', 'Dormir', '0', '2023-01-29', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('298', '1', 'Dormir', 'Dormir', '0', '2023-01-30', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('299', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-30', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('300', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-30', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('301', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-30', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('302', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-30', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('303', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-30', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('304', '3', 'Almoçar', 'Almoçar', '0', '2023-01-30', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('305', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-30', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('306', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-30', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('307', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-30', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('308', '4', 'Dormir', 'Dormir', '0', '2023-01-30', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('309', '1', 'Dormir', 'Dormir', '0', '2023-01-31', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('310', '2', 'Comprar Pão Italiano (baguete)', 'Pão italiano', '0', '2023-01-31', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('311', '2', 'Comprar Parmessão (200g)', 'Parmesão', '0', '2023-01-31', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('312', '2', 'Comprar Presunto Parma (200g)', 'Presunto', '0', '2023-01-31', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('313', '2', 'Comprar Chardonay ou Sauvignon Blanc (Amayna)', 'Chardonay / Sauvignon Blanc', '0', '2023-01-31', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('314', '2', 'Comprar Frutas (uvas, morangos, damasco...)', 'Uvas, morangos, damasco, acerola, goiaba. melancia', '0', '2023-01-31', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('315', '3', 'Almoçar', 'Almoçar', '0', '2023-01-31', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('316', '3', 'Fazer Loja Virtual', 'Fazer Loja Virtual', '0', '2023-01-31', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('317', '3', 'Fazer Site', 'Fazer Site', '0', '2023-01-31', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('318', '4', 'Assistir TV', 'Assistir TV', '0', '2023-01-31', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
INSERT INTO `todo_lists_tasks` VALUES ('319', '4', 'Dormir', 'Dormir', '0', '2023-01-31', '2023-01-03 04:27:18', '2023-01-03 04:27:18');
