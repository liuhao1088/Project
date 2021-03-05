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

 Date: 05/03/2021 11:20:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_admin_authority
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_authority`;
CREATE TABLE `t_admin_authority`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '主键id',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建账户id',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新账户id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` int NOT NULL DEFAULT 0 COMMENT '逻辑删除(0：正常 1：删除)',
  `version` int NOT NULL DEFAULT 0 COMMENT '乐观锁',
  `pid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '权限类Id(方法与类/层级关系展示)',
  `method` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '请求方式(GET/POST/PUT/DELETE)',
  `url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '权限url',
  `desc` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '权限备注信息',
  `disable` int NOT NULL DEFAULT 0 COMMENT '禁用(0-否 1-是)',
  `type` int NOT NULL COMMENT '终端(字典code, 如 0-管理端 1-用户端 更多待定)',
  `state` int NOT NULL COMMENT '授权状态(字典code   -1-表示类 0-无需登录 1-需登录 2-需登录+授权 )',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基础表--权限接口' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_admin_authority
-- ----------------------------
INSERT INTO `t_admin_authority` VALUES ('502027470577471488', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '', '', '/api/admin/adminAuthority', 'base--URL权限管理', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470577471489', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470577471488', 'GET', '/api/admin/adminAuthority/findByRoleIdAuthorityTreeChecked', '查询所有 || 根据角色ID选中 -> Tree ', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470577471490', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470577471488', 'PUT', '/api/admin/adminAuthority/upd', 'ID编辑', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470577471491', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470577471488', 'PUT', '/api/admin/adminAuthority/refreshAuthority', '扫描权限', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470577471492', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470577471488', 'GET', '/api/admin/adminAuthority/findList', '查询所有', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470577471493', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470577471488', 'GET', '/api/admin/adminAuthority/findByRoleIdList', '查询所有 || 根据角色ID选中', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470577471494', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '', '', '/api/admin/adminDictionary', 'base--字典管理', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470577471495', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470577471494', 'POST', '/api/admin/adminDictionary/insert', '添加', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470577471496', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470577471494', 'DELETE', '/api/admin/adminDictionary/del', 'ID删除', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470577471497', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470577471494', 'PUT', '/api/admin/adminDictionary/updBySort', '修改排序', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470577471498', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470577471494', 'GET', '/api/admin/adminDictionary/generateEnum', '生成枚举', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470577471501', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470577471494', 'GET', '/api/admin/adminDictionary/findCodeGroup', '查询所有-code分组', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470577471502', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470577471494', 'PUT', '/api/admin/adminDictionary/upd', '编辑', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470577471505', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '', '', '/api/admin/adminMenu', 'base--菜单管理', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470577471506', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470577471505', 'POST', '/api/admin/adminMenu/insert', '菜单添加', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665792', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470577471505', 'GET', '/api/admin/adminMenu/findByPidOrRoleId', 'pid + roleId 查询菜单列表', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665793', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470577471505', 'GET', '/api/admin/adminMenu/findByPidOrRoleIdTree', 'pid + roleId 查询菜单列表', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665794', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470577471505', 'DELETE', '/api/admin/adminMenu/del', 'ID删除', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665795', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470577471505', 'GET', '/api/admin/adminMenu/findTree', '左导航菜单', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665796', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470577471505', 'PUT', '/api/admin/adminMenu/upd', 'ID编辑', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665797', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470577471505', 'GET', '/api/admin/adminMenu/findList', '查询所有', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665798', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '', '', '/api/admin/adminRole', 'base--角色管理', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665799', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470581665798', 'POST', '/api/admin/adminRole/insert', '添加', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665800', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470581665798', 'PUT', '/api/admin/adminRole/updRoleAuthAll', '所有角色拥有所有权限', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665801', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470581665798', 'PUT', '/api/admin/adminRole/updRoleAuth', '角色的URL权限分配', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665802', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470581665798', 'GET', '/api/admin/adminRole/findPage', '分页查询', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665803', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470581665798', 'GET', '/api/admin/adminRole/findUserRole', '获取用户的当前角色', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665804', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470581665798', 'DELETE', '/api/admin/adminRole/del', 'ID删除', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665805', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470581665798', 'PUT', '/api/admin/adminRole/updUserRole', '用户的角色分配', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665806', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470581665798', 'PUT', '/api/admin/adminRole/updRoleMenu', '角色的菜单分配', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665807', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470581665798', 'PUT', '/api/admin/adminRole/upd', 'ID编辑', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665808', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470581665798', 'GET', '/api/admin/adminRole/findList', '查询所有', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665809', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '', '', '/api/admin/adminUser', 'base--用户管理', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665810', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470581665809', 'POST', '/api/admin/adminUser/insert', '添加', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665812', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470581665809', 'GET', '/api/admin/adminUser/findUser', '个人信息', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665813', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470581665809', 'GET', '/api/admin/adminUser/findPage', '分页查询', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665814', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470581665809', 'DELETE', '/api/admin/adminUser/del', 'ID删除', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665815', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470581665809', 'POST', '/api/admin/adminUser/login', '登录', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470581665816', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470581665809', 'POST', '/api/admin/adminUser/bindWeChatMq', '微信公众号openId绑定', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470585860096', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470581665809', 'GET', '/api/admin/adminUser/findId', 'ID查询', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470585860097', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470581665809', 'PUT', '/api/admin/adminUser/updByPassword', '当前登录用户密码修改', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470585860098', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470581665809', 'GET', '/api/admin/adminUser/findByRoleId', '获取指定角色的用户列表', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470585860099', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470581665809', 'DELETE', '/api/admin/adminUser/delByIds', '批量ID删除', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470585860100', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470581665809', 'PUT', '/api/admin/adminUser/updResetPassword', '重置任意用户密码', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470585860101', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470581665809', 'PUT', '/api/admin/adminUser/upd', 'ID编辑', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470590054424', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '', '', '/api/admin/adminDatasource', 'base-plus--代码生成数据源维护表', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470590054425', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470590054424', 'POST', '/api/admin/adminDatasource/insert', '添加', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470590054426', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470590054424', 'GET', '/api/admin/adminDatasource/findPage', '分页查询', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470590054427', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470590054424', 'DELETE', '/api/admin/adminDatasource/del', 'ID删除', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248704', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470590054424', 'GET', '/api/admin/adminDatasource/findId', 'ID查询', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248705', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470590054424', 'DELETE', '/api/admin/adminDatasource/delByIds', '批量ID删除', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248706', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470590054424', 'POST', '/api/admin/adminDatasource/dataSourceTest', '数据源连接测试', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248707', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470590054424', 'PUT', '/api/admin/adminDatasource/updPwd', '修改/重置密码', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248708', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470590054424', 'PUT', '/api/admin/adminDatasource/upd', 'ID编辑', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248709', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470590054424', 'GET', '/api/admin/adminDatasource/findList', '列表查询', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248720', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '', '', '/api/admin/adminBanner', 'base-plus--banner', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248721', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470594248720', 'POST', '/api/admin/adminBanner/insert', '添加', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248722', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470594248720', 'GET', '/api/admin/adminBanner/findPage', '分页查询', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248723', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470594248720', 'DELETE', '/api/admin/adminBanner/del', 'ID删除', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248724', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470594248720', 'GET', '/api/admin/adminBanner/findId', 'ID查询', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248725', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470594248720', 'DELETE', '/api/admin/adminBanner/delByIds', '批量ID删除', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248726', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470594248720', 'PUT', '/api/admin/adminBanner/upd', 'ID编辑', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248727', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '', '', '/api/admin/adminBlacklist', 'base-plus--黑名单', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248728', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470594248727', 'POST', '/api/admin/adminBlacklist/insert', '添加', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248729', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470594248727', 'GET', '/api/admin/adminBlacklist/findPage', '分页查询', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248730', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470594248727', 'DELETE', '/api/admin/adminBlacklist/del', 'ID删除', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248731', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470594248727', 'GET', '/api/admin/adminBlacklist/findId', 'ID查询', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248732', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470594248727', 'PUT', '/api/admin/adminBlacklist/updDisable', '禁用/启用', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248733', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470594248727', 'PUT', '/api/admin/adminBlacklist/upd', 'ID编辑', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248734', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '', '', '/api/admin/adminConfig', 'base-plus--全局配置', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248735', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470594248734', 'POST', '/api/admin/adminConfig/insert', '添加', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248736', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470594248734', 'GET', '/api/admin/adminConfig/findPage', '分页查询', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470594248737', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470594248734', 'DELETE', '/api/admin/adminConfig/del', 'ID删除', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470598443008', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470594248734', 'GET', '/api/admin/adminConfig/findId', 'ID查询', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470598443010', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470594248734', 'PUT', '/api/admin/adminConfig/upd', 'ID编辑', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470598443011', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '', '', '/api/admin/adminHelp', 'base-plus--帮助中心', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470598443012', NULL, NULL, '2020-12-24 17:04:47', '2021-01-29 16:07:45', 0, 365, '502027470598443011', 'POST', '/api/admin/adminHelp/insert', '添加', 0, 0, 0);
INSERT INTO `t_admin_authority` VALUES ('502027470598443013', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470598443011', 'GET', '/api/admin/adminHelp/findPage', '分页查询', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470598443014', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470598443011', 'DELETE', '/api/admin/adminHelp/del', 'ID删除', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470598443015', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470598443011', 'GET', '/api/admin/adminHelp/findId', 'ID查询', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470598443016', NULL, NULL, '2020-12-24 17:04:47', '2021-01-04 12:41:32', 0, 365, '502027470598443011', 'GET', '/api/admin/adminHelp/findById', '查看 -->  ID查询 -- 查看详情调用此方法获取数据,浏览量自动+1', 0, 0, 0);
INSERT INTO `t_admin_authority` VALUES ('502027470598443017', NULL, NULL, '2020-12-24 17:04:47', '2021-01-04 12:41:31', 0, 365, '502027470598443011', 'GET', '/api/admin/adminHelp/findTree', '查看 -->  左侧菜单-- 帮助中心tree菜单', 0, 0, 0);
INSERT INTO `t_admin_authority` VALUES ('502027470598443018', NULL, NULL, '2020-12-24 17:04:47', '2021-01-29 16:07:43', 0, 365, '502027470598443011', 'PUT', '/api/admin/adminHelp/upd', 'ID编辑', 0, 0, 0);
INSERT INTO `t_admin_authority` VALUES ('502027470598443019', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '', '', '/api/admin/adminLog', 'base-plus--操作记录', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470598443020', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470598443019', 'POST', '/api/admin/adminLog/insert', '添加', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470598443021', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470598443019', 'GET', '/api/admin/adminLog/findPage', '分页查询', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470598443022', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470598443019', 'DELETE', '/api/admin/adminLog/del', 'ID删除', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470598443023', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470598443019', 'GET', '/api/admin/adminLog/findId', 'ID查询', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470598443024', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470598443019', 'DELETE', '/api/admin/adminLog/delByIds', '批量ID删除', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470598443025', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470598443019', 'PUT', '/api/admin/adminLog/upd', 'ID编辑', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470598443026', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '', '', '/api/admin/adminMsg', 'base-plus--消息通知', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('502027470598443027', NULL, NULL, '2020-12-24 17:04:47', '2020-12-24 17:04:47', 0, 365, '502027470598443026', 'GET', '/api/admin/adminMsg/findPage', '分页查询', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('508560134616780800', NULL, NULL, '2021-01-11 17:43:16', '2021-01-11 17:43:16', 0, 299, '', '', '/api/client/admin/dictionary', 'yh--base--字典管理', 0, 1, 1);
INSERT INTO `t_admin_authority` VALUES ('508560134616780801', NULL, NULL, '2021-01-11 17:43:16', '2021-01-11 17:43:16', 0, 299, '508560134616780800', 'GET', '/api/client/admin/dictionary/findByCode', 'Code查询(Tree)', 0, 1, 1);
INSERT INTO `t_admin_authority` VALUES ('508560134620975104', NULL, NULL, '2021-01-11 17:43:16', '2021-01-11 17:43:16', 0, 299, '508560134616780800', 'GET', '/api/client/admin/dictionary/findCodeGroup', '查询所有-code分组', 0, 1, 1);
INSERT INTO `t_admin_authority` VALUES ('508560134620975105', NULL, NULL, '2021-01-11 17:43:16', '2021-01-11 17:43:16', 0, 299, '', '', '/api/client/xj/adminBanner', 'yh--base-plus--banner', 0, 1, 1);
INSERT INTO `t_admin_authority` VALUES ('508560134620975106', NULL, NULL, '2021-01-11 17:43:16', '2021-01-11 17:43:16', 0, 299, '508560134620975105', 'GET', '/api/client/xj/adminBanner/findByPosition', '位置查询', 0, 1, 1);
INSERT INTO `t_admin_authority` VALUES ('510791294763798528', NULL, NULL, '2021-01-17 22:29:05', '2021-01-17 22:29:05', 0, 248, '502027470577471494', 'GET', '/api/admin/adminDictionary/findByCode', 'Code查询(默认返回Tree数据, 可指定Tree或List)', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('522192237015207936', NULL, NULL, '2021-02-18 09:32:22', '2021-02-18 09:32:22', 0, 36, '', '', '/api/client/xj/adminConfig', 'yh--base-plus--全局配置', 0, 1, 1);
INSERT INTO `t_admin_authority` VALUES ('522192237015207937', NULL, NULL, '2021-02-18 09:32:22', '2021-02-18 09:32:22', 0, 36, '522192237015207936', 'GET', '/api/client/xj/adminConfig/findByCode', 'CODE查询', 0, 1, 1);
INSERT INTO `t_admin_authority` VALUES ('522192237019402240', NULL, NULL, '2021-02-18 09:32:22', '2021-02-18 09:32:22', 0, 36, '502027470577471494', 'GET', '/api/admin/adminDictionary/findDictCategory', '查询字典类别', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('522192237027790848', NULL, NULL, '2021-02-18 09:32:22', '2021-02-18 09:32:22', 0, 36, '', '', '/api/admin/dataBase', 'base-plus--查询数据库表数据', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('522192237027790849', NULL, NULL, '2021-02-18 09:32:22', '2021-02-18 09:32:22', 0, 36, '522192237027790848', 'GET', '/api/admin/dataBase/findTableField', '查询指定表下使用字段内容', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('522192237027790850', NULL, NULL, '2021-02-18 09:32:22', '2021-02-18 09:32:22', 0, 36, '522192237027790848', 'GET', '/api/admin/dataBase/findTable', '查询所有表名', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('522192237027790851', NULL, NULL, '2021-02-18 09:32:22', '2021-02-18 09:32:22', 0, 36, '', '', '/api/admin/generate', 'base-plus--代码生成', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('522192237027790852', NULL, NULL, '2021-02-18 09:32:22', '2021-02-18 09:32:22', 0, 36, '522192237027790851', 'GET', '/api/admin/generate/getPath', '代码生成路径', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('522192237027790853', NULL, NULL, '2021-02-18 09:32:22', '2021-02-18 09:32:22', 0, 36, '522192237027790851', 'POST', '/api/admin/generate/generateCode', '生成代码', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('522192237031985152', NULL, NULL, '2021-02-18 09:32:22', '2021-02-18 09:32:22', 0, 36, '522192237027790851', 'POST', '/api/admin/generate/preview', '生成预览代码', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('522192237036179456', NULL, NULL, '2021-02-18 09:32:22', '2021-02-18 09:32:22', 0, 36, '502027470598443026', 'PUT', '/api/admin/adminMsg/read', '消息修改为已读', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('522192237036179457', NULL, NULL, '2021-02-18 09:32:22', '2021-02-18 09:32:22', 0, 36, '', '', '/api/open/aliOssFile', 'AliYun --> OSS文件管理', 0, 2, 0);
INSERT INTO `t_admin_authority` VALUES ('522192237040373760', NULL, NULL, '2021-02-18 09:32:22', '2021-02-18 09:32:22', 0, 36, '522192237036179457', 'DELETE', '/api/open/aliOssFile/del', 'OSS-文件删除', 0, 2, 0);
INSERT INTO `t_admin_authority` VALUES ('522192237040373761', NULL, NULL, '2021-02-18 09:32:22', '2021-02-18 09:32:22', 0, 36, '522192237036179457', 'POST', '/api/open/aliOssFile/upload', 'OSS-文件上传,可在指定路径后追加子路径,以/结尾，返回完整可访问当前服务内网访问OSS的完整URL', 0, 2, 0);
INSERT INTO `t_admin_authority` VALUES ('522192237040373762', NULL, NULL, '2021-02-18 09:32:22', '2021-02-18 09:32:22', 0, 36, '522192237036179457', 'GET', '/api/open/aliOssFile/fileList', 'OSS-文件Object列表', 0, 2, 0);
INSERT INTO `t_admin_authority` VALUES ('522192237040373763', NULL, NULL, '2021-02-18 09:32:22', '2021-02-18 09:32:22', 0, 36, '522192237036179457', 'GET', '/api/open/aliOssFile/downloadZip', 'OSS-文件下载--多文件下载', 0, 2, 0);
INSERT INTO `t_admin_authority` VALUES ('522192237040373764', NULL, NULL, '2021-02-18 09:32:22', '2021-02-18 09:32:22', 0, 36, '522192237036179457', 'GET', '/api/open/aliOssFile/download', 'OSS-文件下载--单文件下载', 0, 2, 0);
INSERT INTO `t_admin_authority` VALUES ('522192237040373765', NULL, NULL, '2021-02-18 09:32:22', '2021-02-18 09:32:22', 0, 36, '', '', '/api/open/websocket', 'Websocket  -->  消息通知/即时通讯', 0, 2, 0);
INSERT INTO `t_admin_authority` VALUES ('522192237040373766', NULL, NULL, '2021-02-18 09:32:22', '2021-02-18 09:32:22', 0, 36, '522192237040373765', 'GET', '/api/open/websocket/getPath', '游客登录获取websocket连接地址', 0, 2, 0);
INSERT INTO `t_admin_authority` VALUES ('522192237040373767', NULL, NULL, '2021-02-18 09:32:22', '2021-02-18 09:32:22', 0, 36, '522192237040373765', 'POST', '/api/open/websocket/send', '发送消息', 0, 2, 0);
INSERT INTO `t_admin_authority` VALUES ('522192237040373768', NULL, NULL, '2021-02-18 09:32:22', '2021-02-18 09:32:22', 0, 36, '522192237040373765', 'GET', '/api/open/websocket/getOnlineCount', '获取在线人数', 0, 2, 0);
INSERT INTO `t_admin_authority` VALUES ('522192237040373769', NULL, NULL, '2021-02-18 09:32:22', '2021-02-18 09:32:22', 0, 36, '522192237040373765', 'GET', '/api/open/websocket/getOnlineUsersList', '获取当前在线用户列表', 0, 2, 0);
INSERT INTO `t_admin_authority` VALUES ('527399254797455360', NULL, NULL, '2021-03-04 18:23:11', '2021-03-04 18:23:11', 0, 33, '', '', '/api/client/msg', 'yh--base-plus--消息通知', 0, 1, 1);
INSERT INTO `t_admin_authority` VALUES ('527399254797455361', NULL, NULL, '2021-03-04 18:23:11', '2021-03-04 18:23:11', 0, 33, '527399254797455360', 'GET', '/api/client/msg/findPage', '分页查询', 0, 1, 1);
INSERT INTO `t_admin_authority` VALUES ('527399254797455362', NULL, NULL, '2021-03-04 18:23:11', '2021-03-04 18:23:11', 0, 33, '527399254797455360', 'PUT', '/api/client/msg/read', '消息修改为已读', 0, 1, 1);
INSERT INTO `t_admin_authority` VALUES ('527399254797455363', NULL, NULL, '2021-03-04 18:23:11', '2021-03-04 18:23:11', 0, 33, '527399254797455360', 'GET', '/api/client/msg/findUnreadNum', '查询未读数量', 0, 1, 1);
INSERT INTO `t_admin_authority` VALUES ('527399254818426880', NULL, NULL, '2021-03-04 18:23:11', '2021-03-04 18:23:11', 0, 33, '502027470594248734', 'GET', '/api/admin/adminConfig/findByCode', 'CODE查询', 0, 0, 2);
INSERT INTO `t_admin_authority` VALUES ('527399254818426881', NULL, NULL, '2021-03-04 18:23:11', '2021-03-04 18:23:11', 0, 33, '502027470598443026', 'GET', '/api/admin/adminMsg/findUnreadNum', '查询未读数量', 0, 0, 2);

SET FOREIGN_KEY_CHECKS = 1;
