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

 Date: 05/03/2021 11:21:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_menu`;
CREATE TABLE `t_admin_menu`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键id',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建账户id',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新账户id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` int NOT NULL DEFAULT 0 COMMENT '逻辑删除(0：正常 1：删除)',
  `version` int NOT NULL DEFAULT 0 COMMENT '乐观锁',
  `pid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '指定父id',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名',
  `two_url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第二路由url, 前后端分离前端使用第二路由',
  `url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单url',
  `icon` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图标',
  `sort` int NOT NULL DEFAULT 0 COMMENT '排序',
  `root` int NOT NULL DEFAULT 0 COMMENT '目录级别(1-系统, 2-菜单 ，3-页面, 4-按钮)',
  `disable` int NOT NULL DEFAULT 0 COMMENT '禁用(0-启用 1-禁用)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基础表--菜单' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_admin_menu
-- ----------------------------
INSERT INTO `t_admin_menu` VALUES ('1', NULL, NULL, '2020-07-25 09:29:38', '2021-03-04 18:47:54', 0, 0, '0', '后台管理平台', '', '', '0', 1, 1, 0);
INSERT INTO `t_admin_menu` VALUES ('1288879303106289665', NULL, NULL, '2020-07-31 00:49:06', '2021-01-16 12:28:43', 0, 0, '1350298064077774850', 'MD编辑器', NULL, '', 'layui-icon-file-b', 500, 2, 0);
INSERT INTO `t_admin_menu` VALUES ('1288879370219347969', NULL, NULL, '2020-07-31 00:49:22', '2021-01-16 13:37:45', 0, 0, '1288879303106289665', '编辑', NULL, '/page/base_markdown_index', 'layui-icon-file-b', 0, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('1288879436422242305', NULL, NULL, '2020-07-31 00:49:38', '2021-01-16 13:37:47', 0, 0, '1288879303106289665', '展示', NULL, '/page/base_markdown_detail', 'layui-icon-file-b', 0, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('1297047088646905857', NULL, NULL, '2020-08-22 05:44:58', '2021-01-16 12:19:14', 0, 0, '4', '接口管理', NULL, '/page/modules_sys_admin_authority_authority', 'layui-icon-file-b', 10005, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('1297533242571763714', NULL, NULL, '2020-08-23 13:56:45', '2021-01-16 12:47:04', 0, 0, '1350297066072498179', 'banner 管理', NULL, '/page/modules_sys_xj_banner_banner', 'layui-icon-file-b', 10008, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('1311827586636156929', NULL, NULL, '2020-10-02 08:37:23', '2021-01-16 12:47:07', 0, 0, '1350297066072498179', '全局配置', NULL, '/page/modules_sys_xj_config_config', 'layui-icon-file-b', 10009, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('1312705440890540033', NULL, NULL, '2020-10-04 18:45:40', '2021-01-16 13:04:41', 0, 0, '1350307256670900225', '菜谱', '', '', 'layui-icon-file-b', 0, 2, 0);
INSERT INTO `t_admin_menu` VALUES ('1312705547715268610', NULL, NULL, '2020-10-04 18:46:06', '2021-01-16 13:00:46', 0, 0, '1312705440890540033', '菜品管理', NULL, '/page/modules_yw_caipu_cpInfo_cpInfo', 'layui-icon-file-b', 0, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('1312755066842730498', NULL, NULL, '2020-10-04 22:02:52', '2021-01-16 13:00:48', 0, 0, '1312705440890540033', '菜品类别', NULL, '/page/modules_yw_caipu_cpCategory_cpCategory', 'layui-icon-file-b', 0, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('1317864829549146113', NULL, NULL, '2020-10-18 16:27:14', '2021-01-16 12:26:45', 0, 0, '1350298064077774850', '系统信息', NULL, '', 'layui-icon-file-b', 700, 2, 0);
INSERT INTO `t_admin_menu` VALUES ('1317865066573459457', NULL, NULL, '2020-10-18 16:28:11', '2020-10-29 02:31:42', 0, 0, '1317864829549146113', '系统监控', NULL, 'http://xijia.plus/bootAdmin', 'layui-icon-file-b', 70001, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('1318472952462770177', NULL, NULL, '2020-10-20 08:43:41', '2021-01-16 12:47:01', 0, 0, '1350297066072498179', '兮家手册', '', '/page/modules_sys_xj_help_help', 'layui-icon-file-b', 0, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('1318535862241251330', NULL, NULL, '2020-10-20 12:53:40', '2021-01-16 13:12:17', 0, 0, '1350305706179313666', '手册展示', NULL, '/page/client_help_index', 'layui-icon-file-b', 0, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('1319948617724743682', NULL, NULL, '2020-10-24 10:27:28', '2020-10-29 02:31:47', 0, 0, '1317864829549146113', '数据监控', NULL, 'http://xijia.plus/druid', 'layui-icon-file-b', 70002, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('1321432835319414785', NULL, NULL, '2020-10-28 12:45:12', '2021-03-04 17:46:23', 0, 0, '1350297066072498179', '系统日志', NULL, '/page/modules_sys_xj_log_log', 'layui-icon-file-b', 10012, 3, 1);
INSERT INTO `t_admin_menu` VALUES ('1323584742796410881', NULL, NULL, '2020-11-03 19:16:08', '2021-01-16 12:28:23', 0, 0, '1350298064077774850', '开发文档', NULL, '', 'layui-icon-file-b', 900, 2, 0);
INSERT INTO `t_admin_menu` VALUES ('1323584867987996674', NULL, NULL, '2020-11-03 19:16:38', '2020-11-03 19:17:06', 0, 0, '1323584742796410881', ' knife4j-ui', NULL, '/doc.html', 'layui-icon-file-b', 90001, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('1323584939857395714', NULL, NULL, '2020-11-03 19:16:55', '2020-11-03 19:16:55', 0, 0, '1323584742796410881', 'swagger-ui', NULL, '/swagger-ui.html', 'layui-icon-file-b', 0, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('1330860076629590017', NULL, NULL, '2020-11-23 21:05:43', '2021-01-16 13:37:58', 0, 0, '1288879303106289665', 'new编辑', NULL, '/page/base_markdown2_index', 'layui-icon-file-b', 1, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('1330860135886716929', NULL, NULL, '2020-11-23 21:05:57', '2021-01-16 13:38:03', 0, 0, '1288879303106289665', ' new展示', NULL, '/page/base_markdown2_detail', 'layui-icon-file-b', 1, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('1332332514865364994', NULL, NULL, '2020-11-27 22:36:37', '2021-02-05 15:33:24', 0, 0, '1350297066072498179', '黑/白名单', '/page/modules_admin_adminBlacklist_adminBlacklist', '/page/modules_sys_xj_blacklist_blacklist', 'layui-icon-file-b', 10011, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('1332869984937848833', NULL, NULL, '2020-11-29 10:12:22', '2021-01-16 13:23:12', 0, 0, '1350305706179313666', 'java 代码运行器', NULL, '/page/client_tool_javaCodeRun', 'layui-icon-file-b', 50000, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('1335434955345399809', NULL, NULL, '2020-12-06 12:04:39', '2021-01-16 13:23:01', 0, 0, '1350305706179313666', 'new聊天室', NULL, '/page/client_websocket_lts', 'layui-icon-file-b', 50003, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('1339486097113202690', NULL, NULL, '2020-12-17 16:22:26', '2021-01-16 13:04:36', 0, 0, '1350307256670900225', '文件', '', '', 'layui-icon-file-b', 900, 2, 0);
INSERT INTO `t_admin_menu` VALUES ('1339486194576244738', NULL, NULL, '2020-12-17 16:22:49', '2021-01-16 13:04:20', 0, 0, '1339486097113202690', '文件管理', '', '/page/modules_yw_file_xjFile_xjFile', 'layui-icon-file-b', 0, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('1339574156777242625', NULL, NULL, '2020-12-17 22:12:22', '2021-01-16 13:22:30', 0, 0, '1350305706179313666', '文件查看', NULL, '/page/client_file_index', 'layui-icon-file-b', 2, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('1340651066982731778', NULL, NULL, '2020-12-20 21:31:37', '2021-01-16 13:04:46', 0, 0, '1350307256670900225', '段子', '', '', 'layui-icon-file-b', 1000, 2, 0);
INSERT INTO `t_admin_menu` VALUES ('1340651170208747521', NULL, NULL, '2020-12-20 21:32:01', '2021-01-16 13:01:10', 0, 0, '1340651066982731778', '段子管理', NULL, '/page/modules_yw_astory_xjAstory_xjAstory', 'layui-icon-file-b', 0, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('1340651277373214722', NULL, NULL, '2020-12-20 21:32:27', '2021-01-16 13:01:11', 0, 0, '1340651066982731778', '段子分类', NULL, '/page/modules_yw_astory_xjAstoryCategory_xjAstoryCategory', 'layui-icon-file-b', 0, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('1350297066072498179', NULL, NULL, '2021-01-16 12:21:22', '2021-03-04 17:46:39', 0, 0, '1', '系统增强功能', '', '', 'layui-icon-file-b', 101, 2, 1);
INSERT INTO `t_admin_menu` VALUES ('1350298064077774850', NULL, NULL, '2021-01-16 12:25:20', '2021-03-04 17:46:27', 0, 0, '1', '系统功能', '', '-', 'layui-icon-file-b', 103, 2, 1);
INSERT INTO `t_admin_menu` VALUES ('1350305706179313666', NULL, NULL, '2021-01-16 12:55:42', '2021-03-04 17:46:41', 0, 0, '1', '业务单页', '', '', 'layui-icon-file-b', 105, 2, 1);
INSERT INTO `t_admin_menu` VALUES ('1350307256670900225', NULL, NULL, '2021-01-16 13:01:51', '2021-03-04 17:46:31', 0, 0, '1', '业务管理', '', '', 'layui-icon-file-b', 104, 2, 1);
INSERT INTO `t_admin_menu` VALUES ('140', NULL, NULL, '2020-07-25 09:29:38', '2021-01-16 13:22:57', 0, 0, '1350305706179313666', '聊天室', NULL, '/page/client_websocket_websocket', 'layui-icon-file-b', 50002, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('141', NULL, NULL, '2020-07-30 18:16:24', '2021-03-04 17:46:40', 0, 0, '1', '代码生成', NULL, '', 'layui-icon-file-b', 102, 2, 1);
INSERT INTO `t_admin_menu` VALUES ('21', NULL, NULL, '2020-07-25 09:29:38', '2021-01-16 12:19:09', 0, 0, '4', '系统用户', NULL, '/page/modules_sys_admin_user_user', '', 10002, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('22', NULL, NULL, '2020-07-25 09:29:38', '2021-01-16 12:19:11', 0, 0, '4', '角色管理', NULL, '/page/modules_sys_admin_role_role', '', 10003, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('23', NULL, NULL, '2020-07-25 09:29:38', '2021-01-16 12:19:16', 0, 0, '4', '角色菜单权限', NULL, '/page/modules_sys_admin_role_roleMenuAuth', '', 10006, 3, 1);
INSERT INTO `t_admin_menu` VALUES ('24', NULL, NULL, '2020-07-25 09:29:38', '2021-01-16 12:19:18', 0, 0, '4', '角色URL权限', NULL, '/page/modules_sys_admin_role_roleUrlAuth', '', 10007, 3, 1);
INSERT INTO `t_admin_menu` VALUES ('25', NULL, NULL, '2020-07-25 09:29:38', '2021-01-16 12:19:12', 0, 0, '4', '字典管理', NULL, '/page/modules_sys_admin_dictionary_dictionary', '', 10004, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('30', NULL, NULL, '2020-07-25 09:29:38', '2021-01-16 12:50:29', 0, 0, '141', '数据库表', NULL, '/page/modules_sys_gc_dataBase_dataBase', '1', 40006, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('4', NULL, NULL, '2020-07-25 09:29:38', '2020-07-25 09:29:38', 0, 0, '1', '系统管理', NULL, '', 'layui-icon-set', 100, 2, 0);
INSERT INTO `t_admin_menu` VALUES ('43', NULL, NULL, '2020-07-25 09:29:38', '2020-07-25 09:29:38', 0, 0, '43', 'ccc', NULL, '', 'layui-icon-file-b', 0, 2, 0);
INSERT INTO `t_admin_menu` VALUES ('7', NULL, NULL, '2020-07-25 09:29:38', '2021-01-16 12:44:02', 0, 0, '4', '菜单管理', '', '/page/modules_sys_admin_menu_menu', 'layui-icon-home', 10001, 3, 0);
INSERT INTO `t_admin_menu` VALUES ('93', NULL, NULL, '2020-07-25 09:29:38', '2021-01-16 13:23:11', 0, 0, '1350305706179313666', '文字注释', NULL, '/page/client_tool_fhConvert', 'layui-icon-file-b', 50001, 3, 0);

SET FOREIGN_KEY_CHECKS = 1;
