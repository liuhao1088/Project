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

 Date: 05/03/2021 17:25:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_xj_admin_config
-- ----------------------------
DROP TABLE IF EXISTS `t_xj_admin_config`;
CREATE TABLE `t_xj_admin_config`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建账户id',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新账户id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` int NOT NULL DEFAULT 0 COMMENT '逻辑删除(0-正常  1-删除)',
  `version` int NOT NULL DEFAULT 0 COMMENT '乐观锁',
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置code|搜索值(不能重复)',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置名称',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置内容',
  `sort` int NOT NULL COMMENT '排序',
  `type` int NOT NULL DEFAULT 0 COMMENT '类型(0-文本 1-图片 2-开关)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统增强表--全局数据配置' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_xj_admin_config
-- ----------------------------
INSERT INTO `t_xj_admin_config` VALUES (1, NULL, NULL, '2021-03-05 17:25:24', '2021-03-05 17:25:24', 0, 0, 'entry_name', '项目名称', '管理平台', 0, 0);
INSERT INTO `t_xj_admin_config` VALUES (2, NULL, NULL, '2021-03-05 17:25:24', '2021-03-05 17:25:24', 0, 0, 'login_bg_img', '背景图', 'http://xijia-sz.oss-cn-shenzhen.aliyuncs.com/oss/file/image/config/timg2028329.jpg', 0, 1);
INSERT INTO `t_xj_admin_config` VALUES (3, NULL, NULL, '2021-03-05 17:25:24', '2021-03-05 17:25:24', 0, 0, 'beian', '备案号', '蜀ICP备19022468号-1', 0, 0);
INSERT INTO `t_xj_admin_config` VALUES (4, NULL, NULL, '2021-03-05 17:25:24', '2021-03-05 17:25:24', 0, 0, 'project_desc', '项目描述', '©2020-2021 该后台系统为个人开发运营', 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
