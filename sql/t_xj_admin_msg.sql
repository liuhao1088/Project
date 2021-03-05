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

 Date: 05/03/2021 11:22:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_xj_admin_msg
-- ----------------------------
DROP TABLE IF EXISTS `t_xj_admin_msg`;
CREATE TABLE `t_xj_admin_msg`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '主键id',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建账户id',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新账户id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` int NOT NULL DEFAULT 0 COMMENT '逻辑删除(0-正常  1-删除)',
  `version` int NOT NULL DEFAULT 0 COMMENT '乐观锁',
  `user_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '消息接收人',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内容( 根据消息类型区分数据-str || json)',
  `user_type` int NOT NULL COMMENT '通知终端: 1-用户端信息 2-管理端消息',
  `msg_type` int NOT NULL COMMENT '消息类型:  1-系统通知  2-订单业务通知 ',
  `is_read` int NOT NULL DEFAULT 0 COMMENT '是否已读(0-未读 1-已读)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统增强表--消息通知' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_xj_admin_msg
-- ----------------------------
INSERT INTO `t_xj_admin_msg` VALUES ('1', NULL, NULL, '2021-02-05 17:07:20', '2021-02-06 09:59:10', 0, 0, '1', '系统通知1', 0, 0, 0);
INSERT INTO `t_xj_admin_msg` VALUES ('2', NULL, NULL, '2021-02-05 17:41:38', '2021-02-06 09:59:06', 0, 0, '1', '系统通知2', 0, 0, 1);
INSERT INTO `t_xj_admin_msg` VALUES ('3', NULL, NULL, '2021-02-05 17:42:44', '2021-02-06 09:59:12', 0, 0, '1', '系统通知3', 0, 0, 0);
INSERT INTO `t_xj_admin_msg` VALUES ('4', NULL, NULL, '2021-02-06 09:59:01', '2021-02-06 10:00:05', 0, 0, '1', '系统通知4', 0, 0, 0);
INSERT INTO `t_xj_admin_msg` VALUES ('5', NULL, NULL, '2021-02-06 09:59:21', '2021-02-06 10:00:06', 0, 0, '1', '系统通知5', 0, 0, 0);
INSERT INTO `t_xj_admin_msg` VALUES ('6', NULL, NULL, '2021-02-06 09:59:29', '2021-02-06 10:00:07', 0, 0, '1', '系统通知6', 0, 0, 0);
INSERT INTO `t_xj_admin_msg` VALUES ('7', NULL, NULL, '2021-02-06 10:00:37', '2021-02-06 10:00:54', 0, 0, '1', '系统通知7', 0, 0, 0);
INSERT INTO `t_xj_admin_msg` VALUES ('8', NULL, NULL, '2021-02-06 10:00:47', '2021-02-06 10:00:56', 0, 0, '1', '系统通知8', 0, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
