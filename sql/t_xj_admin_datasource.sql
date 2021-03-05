/*
 Navicat Premium Data Transfer

 Source Server         : my
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 05/03/2021 11:22:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_xj_admin_datasource
-- ----------------------------
DROP TABLE IF EXISTS `t_xj_admin_datasource`;
CREATE TABLE `t_xj_admin_datasource`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键id',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建账户id',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新账户id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` int NOT NULL DEFAULT 0 COMMENT '逻辑删除(0-正常  1-删除)',
  `version` int NOT NULL DEFAULT 0 COMMENT '乐观锁',
  `db_title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据库标题',
  `db_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数据库名',
  `db_url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数据库连接',
  `db_username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数据库账号',
  `db_password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数据库密码',
  `db_prefix` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据表前缀',
  `db_field_prefix` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据字段前缀',
  `db_general_field` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据库通用字段,逗号分隔',
  `pack_path` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '包根路径',
  `modules` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父模块名',
  `modules_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '子模块名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统增强表--代码生成动态数据源' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_xj_admin_datasource
-- ----------------------------
INSERT INTO `t_xj_admin_datasource` VALUES ('1323947589577543681', NULL, NULL, '2020-11-04 19:17:56', '2020-11-05 10:23:22', 0, 0, 'office-live本地', 'db_workspace', '127.0.0.1:3306', 'root', '123456', 't_', NULL, '1', '1', '1', '1');
INSERT INTO `t_xj_admin_datasource` VALUES ('1323976096584159234', NULL, NULL, '2020-11-04 21:11:14', '2020-11-04 21:11:14', 0, 0, '牙贝', 'yabei', 'rm-bp1b88uc0hxk5wgv0co.mysql.rds.aliyuncs.com', 'lpzs_test', 'Lplb_zslp@123@$#%_lp_lb_20200826', '0', NULL, '0', '0', '0', '0');
INSERT INTO `t_xj_admin_datasource` VALUES ('1324175783157157889', NULL, NULL, '2020-11-05 10:24:43', '2020-11-05 10:25:38', 0, 0, 'office[个人库]', 'office-live', 'xijia.plus', 'root', 'root123456', 'tab_', NULL, '.', '.', '.', '.');
INSERT INTO `t_xj_admin_datasource` VALUES ('1324261703885643778', NULL, NULL, '2020-11-05 16:06:08', '2020-11-05 22:46:25', 1, 0, '1514365', '2434', '4324', '42', '1234567', '1', NULL, '1', '1', '1', '1');
INSERT INTO `t_xj_admin_datasource` VALUES ('1324375557852438530', NULL, NULL, '2020-11-05 23:38:33', '2020-11-06 21:49:58', 0, 0, 'xijia测试', 'spring-boot-plus2', 'xijia.plus', 'root', 'root123456', 't_admin_', '', '', '', '', '');
INSERT INTO `t_xj_admin_datasource` VALUES ('1324692080873701377', NULL, NULL, '2020-11-06 20:36:18', '2020-11-25 09:30:31', 0, 0, 'office-live-160', 'db_workspace', 'rm-bp1b88uc0hxk5wgv0co.mysql.rds.aliyuncs.com', 'lpzs_test', 'Lplb_zslp@123@$#%_lp_lb_20200826', 'tab_', 'COL_', 'COL_ID,COL_CREATE_TIME,COL_MODIFY_TIME,COL_CREATE_UUID,COL_MODIFY_UUID,COL_RECORD_STATUS,COL_VERSION,COL_UUID', '', 'sys', 'purse');
INSERT INTO `t_xj_admin_datasource` VALUES ('1356781589123686402', NULL, NULL, '2021-02-03 09:48:33', '2021-02-03 09:50:34', 0, 0, '宠物测试库', 'pets-dev', 'rm-bp1b88uc0hxk5wgv0co.mysql.rds.aliyuncs.com', 'lpzs_test', 'Lplb_zslp@123@$#%_lp_lb_20200826', 't_', '', '', '', '', '');

SET FOREIGN_KEY_CHECKS = 1;
