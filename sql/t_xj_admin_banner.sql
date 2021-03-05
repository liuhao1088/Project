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

 Date: 05/03/2021 11:21:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_xj_admin_banner
-- ----------------------------
DROP TABLE IF EXISTS `t_xj_admin_banner`;
CREATE TABLE `t_xj_admin_banner`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键id',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建账户id',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新账户id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` int NOT NULL DEFAULT 0 COMMENT '逻辑删除(0：正常 1：删除)',
  `version` int NOT NULL DEFAULT 0 COMMENT '乐观锁',
  `position` int NOT NULL COMMENT '位置(字典code)',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'banner标题',
  `desc` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'banner描叙',
  `img_url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'banner图片',
  `sort` int NOT NULL DEFAULT 0 COMMENT 'banner排序',
  `disable` int NOT NULL DEFAULT 0 COMMENT 'banner禁用(0-启用 1-禁用)',
  `is_skip` int NOT NULL DEFAULT 0 COMMENT '是否跳转(0-无  1-内部链接 2-外部链接)',
  `skip_url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '跳转地址url(地址直接添加或字典表配置)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统增强表--banner' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_xj_admin_banner
-- ----------------------------
INSERT INTO `t_xj_admin_banner` VALUES ('1300258807352893441', NULL, NULL, '2020-08-31 10:27:12', '2020-09-22 19:25:03', 0, 0, 1, '测试3', '测试数据3', 'http://yabei.520ban.com/oss/file/image/banner/20200910093614691653-qs44ufe2024qs44ufe2024.jpg', 3, 0, 0, '/page/banner');
INSERT INTO `t_xj_admin_banner` VALUES ('1300260217146548226', NULL, NULL, '2020-08-31 10:32:48', '2020-09-24 16:15:26', 0, 0, 1, '测试2', '测试数据2', 'http://yabei.520ban.com/oss/file/image/banner/20200910093608751358-2.jpg', 1, 0, 0, '/page/logoBanner/page/logoBanner');
INSERT INTO `t_xj_admin_banner` VALUES ('1300262684328435714', NULL, NULL, '2020-08-31 10:42:36', '2020-09-30 17:59:22', 0, 0, 1, '测试1', '测试数据一', 'http://yabei.520ban.com/oss/file/image/banner/20200910093405696081-timg (6).jpg', 0, 0, 2, 'http://www.baidu.com');
INSERT INTO `t_xj_admin_banner` VALUES ('1303881706571894785', NULL, NULL, '2020-09-10 10:23:18', '2020-09-24 16:16:13', 1, 0, 1, '231', '312', 'http://yabei.520ban.com/oss/file/image/banner/20200919134953270044-2dea1d468fae5da7a7ec808d3ca41ca3.jpg', 1, 0, 2, 'https://www.xiaopiu.com/project?proid=5f2d1df9fd472f065fa9a43d');
INSERT INTO `t_xj_admin_banner` VALUES ('1309111625118248961', NULL, NULL, '2020-09-24 20:45:06', '2021-02-05 15:36:11', 0, 0, 1, '测试', '测试描叙', 'http://xijia-sz.oss-cn-shenzhen.aliyuncs.com/oss/file/image/banner/2.jpg', 0, 0, 0, '');
INSERT INTO `t_xj_admin_banner` VALUES ('1309668956979171329', NULL, NULL, '2020-09-26 09:39:46', '2020-09-26 09:49:12', 1, 0, 1, 'q', '1', 'http://yabei.520ban.com/oss/file/image/banner/20200926093943912599-dog_logo.jpg', 0, 0, 2, NULL);
INSERT INTO `t_xj_admin_banner` VALUES ('1309670283884990466', NULL, NULL, '2020-09-26 09:45:02', '2020-09-26 09:49:21', 1, 0, 1, '1', '1', 'http://yabei.520ban.com/oss/file/image/banner/20200926094455863590-0080L5aXgy1gcrfgxe0wsj30pg0ron7h.jpg', 0, 0, 1, NULL);
INSERT INTO `t_xj_admin_banner` VALUES ('1309670412985667586', NULL, NULL, '2020-09-26 09:45:33', '2020-09-26 09:49:18', 1, 0, 1, '1', '1', 'http://yabei.520ban.com/oss/file/image/banner/20200926094529206937-c0140160gy1gdk3igvhalj20qm0qmwgg.jpg', 0, 0, 1, NULL);
INSERT INTO `t_xj_admin_banner` VALUES ('1309671292019511297', NULL, NULL, '2020-09-26 09:49:03', '2020-09-26 09:49:15', 1, 0, 1, '1', '1', 'http://yabei.520ban.com/oss/file/image/banner/20200926094858974599-c0140160gy1gdk3igvhalj20qm0qmwgg.jpg', 0, 0, 1, '11');

SET FOREIGN_KEY_CHECKS = 1;
