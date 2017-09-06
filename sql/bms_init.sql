/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : bms

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-07-11 22:39:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `A1_dept`;
CREATE TABLE `A1_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '排序',
  `pid` int(11) DEFAULT NULL COMMENT '父部门id',
  `pids` varchar(255) DEFAULT NULL COMMENT '父级ids',
  `simplename` varchar(45) DEFAULT NULL COMMENT '简称',
  `fullname` varchar(255) DEFAULT NULL COMMENT '全称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  `version` int(11) DEFAULT NULL COMMENT '版本（乐观锁保留字段）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `A1_dept` VALUES ('1', '1', '0', '[0],', '总公司', '总公司', '', null);
INSERT INTO `A1_dept` VALUES ('2', '2', '24', '[0],[24],', '开发部', '开发部', '', null);
INSERT INTO `A1_dept` VALUES ('3', '3', '24', '[0],[24],', '运营部', '运营部', '', null);
INSERT INTO `A1_dept` VALUES ('4', '4', '24', '[0],[24],', '战略部', '战略部', '', null);

-- ----------------------------
-- Table structure for dict
-- ----------------------------
DROP TABLE IF EXISTS `A1_dict`;
CREATE TABLE `A1_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '排序',
  `pid` int(11) DEFAULT NULL COMMENT '父级字典',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of dict
-- ----------------------------
INSERT INTO `A1_dict` VALUES ('1', '0', '0', '状态', null);
INSERT INTO `A1_dict` VALUES ('2', '1', '16', '启用', null);
INSERT INTO `A1_dict` VALUES ('3', '2', '16', '禁用', null);
INSERT INTO `A1_dict` VALUES ('4', '0', '0', '性别', null);
INSERT INTO `A1_dict` VALUES ('5', '1', '29', '男', null);
INSERT INTO `A1_dict` VALUES ('6', '2', '29', '女', null);
INSERT INTO `A1_dict` VALUES ('7', '0', '0', '账号状态', null);
INSERT INTO `A1_dict` VALUES ('8', '1', '35', '启用', null);
INSERT INTO `A1_dict` VALUES ('9', '2', '35', '冻结', null);
INSERT INTO `A1_dict` VALUES ('10', '3', '35', '已删除', null);

-- ----------------------------
-- Table structure for login_log
-- ----------------------------
DROP TABLE IF EXISTS `A1_loginlog`;
CREATE TABLE `A1_loginlog` (
  `id` int(65) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `logname` varchar(255) DEFAULT NULL COMMENT '日志名称',
  `userid` int(65) DEFAULT NULL COMMENT '管理员id',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `succeed` varchar(255) DEFAULT NULL COMMENT '是否执行成功',
  `message` text COMMENT '具体消息',
  `ip` varchar(255) DEFAULT NULL COMMENT '登录ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='登录记录';

-- ----------------------------
-- Table structure for A1_menu
-- ----------------------------
DROP TABLE IF EXISTS `A1_menu`;
CREATE TABLE `A1_menu` (
  `id` int(65) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `code` varchar(255) DEFAULT NULL COMMENT '菜单编号',
  `pcode` varchar(255) DEFAULT NULL COMMENT '菜单父编号',
  `pcodes` varchar(255) DEFAULT NULL COMMENT '当前菜单的所有父菜单编号',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `url` varchar(255) DEFAULT NULL COMMENT 'url地址',
  `num` int(65) DEFAULT NULL COMMENT '菜单排序号',
  `levels` int(65) DEFAULT NULL COMMENT '菜单层级',
  `ismenu` int(11) DEFAULT NULL COMMENT '是否是菜单（1：是  0：不是）',
  `tips` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` int(65) DEFAULT NULL COMMENT '菜单状态 :  1:启用   0:不启用',
  `isopen` int(11) DEFAULT NULL COMMENT '是否打开:    1:打开   0:不打开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `A1_menu` VALUES ('105', 'system', '0', '[0],', '系统管理', 'fa-user', '', '3', '1', '1', null, '1', '1');
INSERT INTO `A1_menu` VALUES ('106', 'mgr', 'system', '[0],[system],', '用户管理', '', '/mgr', '1', '2', '1', null, '1', '0');
INSERT INTO `A1_menu` VALUES ('107', 'mgr_add', 'mgr', '[0],[system],[mgr],', '添加用户', null, '/mgr/add', '1', '3', '0', null, '1', '0');
INSERT INTO `A1_menu` VALUES ('108', 'mgr_edit', 'mgr', '[0],[system],[mgr],', '修改用户', null, '/mgr/edit', '2', '3', '0', null, '1', '0');
INSERT INTO `A1_menu` VALUES ('109', 'mgr_delete', 'mgr', '[0],[system],[mgr],', '删除用户', null, '/mgr/delete', '3', '3', '0', null, '1', '0');
INSERT INTO `A1_menu` VALUES ('110', 'mgr_reset', 'mgr', '[0],[system],[mgr],', '重置密码', null, '/mgr/reset', '4', '3', '0', null, '1', '0');
INSERT INTO `A1_menu` VALUES ('111', 'mgr_freeze', 'mgr', '[0],[system],[mgr],', '冻结用户', null, '/mgr/freeze', '5', '3', '0', null, '1', '0');
INSERT INTO `A1_menu` VALUES ('112', 'mgr_unfreeze', 'mgr', '[0],[system],[mgr],', '解除冻结用户', null, '/mgr/unfreeze', '6', '3', '0', null, '1', '0');
INSERT INTO `A1_menu` VALUES ('113', 'mgr_setRole', 'mgr', '[0],[system],[mgr],', '分配角色', null, '/mgr/setRole', '7', '3', '0', null, '1', '0');
INSERT INTO `A1_menu` VALUES ('114', 'role', 'system', '[0],[system],', '角色管理', null, '/role', '2', '2', '1', null, '1', '0');
INSERT INTO `A1_menu` VALUES ('115', 'role_add', 'role', '[0],[system],[role],', '添加角色', null, '/role/add', '1', '3', '0', null, '1', '0');
INSERT INTO `A1_menu` VALUES ('116', 'role_edit', 'role', '[0],[system],[role],', '修改角色', null, '/role/edit', '2', '3', '0', null, '1', '0');
INSERT INTO `A1_menu` VALUES ('117', 'role_remove', 'role', '[0],[system],[role],', '删除角色', null, '/role/remove', '3', '3', '0', null, '1', '0');
INSERT INTO `A1_menu` VALUES ('118', 'role_setAuthority', 'role', '[0],[system],[role],', '配置权限', null, '/role/setAuthority', '4', '3', '0', null, '1', '0');
INSERT INTO `A1_menu` VALUES ('119', 'menu', 'system', '[0],[system],', '菜单管理', null, '/menu', '4', '2', '1', null, '1', '0');
INSERT INTO `A1_menu` VALUES ('120', 'menu_add', 'menu', '[0],[system],[menu],', '添加菜单', null, '/menu/add', '1', '3', '0', null, '1', '0');
INSERT INTO `A1_menu` VALUES ('121', 'menu_edit', 'menu', '[0],[system],[menu],', '修改菜单', null, '/menu/edit', '2', '3', '0', null, '1', '0');
INSERT INTO `A1_menu` VALUES ('122', 'menu_remove', 'menu', '[0],[system],[menu],', '删除菜单', null, '/menu/remove', '3', '3', '0', null, '1', '0');
INSERT INTO `A1_menu` VALUES ('128', 'log', 'system', '[0],[system],', '业务日志', null, '/log', '6', '2', '1', null, '1', '0');
INSERT INTO `A1_menu` VALUES ('130', 'druid', 'system', '[0],[system],', '监控管理', null, '/druid', '7', '2', '1', null, '1', null);
INSERT INTO `A1_menu` VALUES ('131', 'dept', 'system', '[0],[system],', '部门管理', null, '/dept', '3', '2', '1', null, '1', null);
INSERT INTO `A1_menu` VALUES ('132', 'dict', 'system', '[0],[system],', '字典管理', null, '/dict', '4', '2', '1', null, '1', null);
INSERT INTO `A1_menu` VALUES ('133', 'loginLog', 'system', '[0],[system],', '登录日志', null, '/loginLog', '6', '2', '1', null, '1', null);
INSERT INTO `A1_menu` VALUES ('134', 'log_clean', 'log', '[0],[system],[log],', '清空日志', null, '/log/delLog', '3', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('135', 'dept_add', 'dept', '[0],[system],[dept],', '添加部门', null, '/dept/add', '1', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('136', 'dept_update', 'dept', '[0],[system],[dept],', '修改部门', null, '/dept/update', '1', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('137', 'dept_delete', 'dept', '[0],[system],[dept],', '删除部门', null, '/dept/delete', '1', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('138', 'dict_add', 'dict', '[0],[system],[dict],', '添加字典', null, '/dict/add', '1', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('139', 'dict_update', 'dict', '[0],[system],[dict],', '修改字典', null, '/dict/update', '1', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('140', 'dict_delete', 'dict', '[0],[system],[dict],', '删除字典', null, '/dict/delete', '1', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('141', 'notice', 'system', '[0],[system],', '通知管理', null, '/notice', '9', '2', '1', null, '1', null);
INSERT INTO `A1_menu` VALUES ('142', 'notice_add', 'notice', '[0],[system],[notice],', '添加通知', null, '/notice/add', '1', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('143', 'notice_update', 'notice', '[0],[system],[notice],', '修改通知', null, '/notice/update', '2', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('144', 'notice_delete', 'notice', '[0],[system],[notice],', '删除通知', null, '/notice/delete', '3', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('145', 'hello', '0', '[0],', '通知', 'fa-rocket', '/notice/hello', '1', '1', '1', null, '1', null);
INSERT INTO `A1_menu` VALUES ('148', 'code', 'system', '[0],[system],', '代码生成', 'fa-user', '/code', '10', '2', '1', null, '1', null);
INSERT INTO `A1_menu` VALUES ('149', 'api_mgr', '0', '[0],', '接口文档', 'fa-leaf', '/swagger-ui.html', '2', '1', '1', null, '1', null);
INSERT INTO `A1_menu` VALUES ('150', 'to_menu_edit', 'menu', '[0],[system],[menu],', '菜单编辑跳转', '', '/menu/menu_edit', '4', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('151', 'menu_list', 'menu', '[0],[system],[menu],', '菜单列表', '', '/menu/list', '5', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('152', 'to_dept_update', 'dept', '[0],[system],[dept],', '修改部门跳转', '', '/dept/dept_update', '4', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('153', 'dept_list', 'dept', '[0],[system],[dept],', '部门列表', '', '/dept/list', '5', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('154', 'dept_detail', 'dept', '[0],[system],[dept],', '部门详情', '', '/dept/detail', '6', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('155', 'to_dict_edit', 'dict', '[0],[system],[dict],', '修改菜单跳转', '', '/dict/dict_edit', '4', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('156', 'dict_list', 'dict', '[0],[system],[dict],', '字典列表', '', '/dict/list', '5', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('157', 'dict_detail', 'dict', '[0],[system],[dict],', '字典详情', '', '/dict/detail', '6', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('158', 'log_list', 'log', '[0],[system],[log],', '日志列表', '', '/log/list', '2', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('159', 'log_detail', 'log', '[0],[system],[log],', '日志详情', '', '/log/detail', '3', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('160', 'del_login_log', 'loginLog', '[0],[system],[loginLog],', '清空登录日志', '', '/loginLog/delLoginLog', '1', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('161', 'login_log_list', 'loginLog', '[0],[system],[loginLog],', '登录日志列表', '', '/loginLog/list', '2', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('162', 'to_role_edit', 'role', '[0],[system],[role],', '修改角色跳转', '', '/role/role_edit', '5', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('163', 'to_role_assign', 'role', '[0],[system],[role],', '角色分配跳转', '', '/role/role_assign', '6', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('164', 'role_list', 'role', '[0],[system],[role],', '角色列表', '', '/role/list', '7', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('165', 'to_assign_role', 'mgr', '[0],[system],[mgr],', '分配角色跳转', '', '/mgr/role_assign', '8', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('166', 'to_user_edit', 'mgr', '[0],[system],[mgr],', '编辑用户跳转', '', '/mgr/user_edit', '9', '3', '0', null, '1', null);
INSERT INTO `A1_menu` VALUES ('167', 'mgr_list', 'mgr', '[0],[system],[mgr],', '用户列表', '', '/mgr/list', '10', '3', '0', null, '1', null);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `A1_notice`;
CREATE TABLE `A1_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `content` text COMMENT '内容',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `creater` int(11) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='通知表';

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '世界', '10', '欢迎使用Guns管理系统', '2017-01-11 08:53:20', '1');
INSERT INTO `notice` VALUES ('2', '你好', null, '你好', '2017-05-10 19:28:57', '1');

-- ----------------------------
-- Table structure for operation_log
-- ----------------------------
DROP TABLE IF EXISTS `A1_operationlog`;
CREATE TABLE `A1_operationlog` (
  `id` int(65) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `logtype` varchar(255) DEFAULT NULL COMMENT '日志类型',
  `logname` varchar(255) DEFAULT NULL COMMENT '日志名称',
  `userid` int(65) DEFAULT NULL COMMENT '用户id',
  `classname` varchar(255) DEFAULT NULL COMMENT '类名称',
  `method` text COMMENT '方法名称',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `succeed` varchar(255) DEFAULT NULL COMMENT '是否成功',
  `message` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='操作日志';

-- ----------------------------
-- Table structure for A1_relation
-- ----------------------------
DROP TABLE IF EXISTS `A1_A1_relation`;
CREATE TABLE `A1_A1_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `A1_menuid` int(11) DEFAULT NULL COMMENT '菜单id',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of A1_relation
-- ----------------------------
INSERT INTO `A1_relation` VALUES ('1', '105', '5');
INSERT INTO `A1_relation` VALUES ('2', '106', '5');
INSERT INTO `A1_relation` VALUES ('3', '107', '5');
INSERT INTO `A1_relation` VALUES ('4', '108', '5');
INSERT INTO `A1_relation` VALUES ('5', '109', '5');
INSERT INTO `A1_relation` VALUES ('6', '110', '5');
INSERT INTO `A1_relation` VALUES ('7', '111', '5');
INSERT INTO `A1_relation` VALUES ('8', '112', '5');
INSERT INTO `A1_relation` VALUES ('9', '113', '5');
INSERT INTO `A1_relation` VALUES ('10', '114', '5');
INSERT INTO `A1_relation` VALUES ('11', '115', '5');
INSERT INTO `A1_relation` VALUES ('12', '116', '5');
INSERT INTO `A1_relation` VALUES ('13', '117', '5');
INSERT INTO `A1_relation` VALUES ('14', '118', '5');
INSERT INTO `A1_relation` VALUES ('15', '119', '5');
INSERT INTO `A1_relation` VALUES ('16', '120', '5');
INSERT INTO `A1_relation` VALUES ('17', '121', '5');
INSERT INTO `A1_relation` VALUES ('18', '122', '5');
INSERT INTO `A1_relation` VALUES ('19', '150', '5');
INSERT INTO `A1_relation` VALUES ('20', '151', '5');
INSERT INTO `A1_relation` VALUES ('21', '105', '1');
INSERT INTO `A1_relation` VALUES ('22', '106', '1');
INSERT INTO `A1_relation` VALUES ('23', '107', '1');
INSERT INTO `A1_relation` VALUES ('24', '108', '1');
INSERT INTO `A1_relation` VALUES ('25', '109', '1');
INSERT INTO `A1_relation` VALUES ('26', '110', '1');
INSERT INTO `A1_relation` VALUES ('27', '111', '1');
INSERT INTO `A1_relation` VALUES ('28', '112', '1');
INSERT INTO `A1_relation` VALUES ('29', '113', '1');
INSERT INTO `A1_relation` VALUES ('30', '165', '1');
INSERT INTO `A1_relation` VALUES ('31', '166', '1');
INSERT INTO `A1_relation` VALUES ('32', '167', '1');
INSERT INTO `A1_relation` VALUES ('33', '114', '1');
INSERT INTO `A1_relation` VALUES ('34', '115', '1');
INSERT INTO `A1_relation` VALUES ('35', '116', '1');
INSERT INTO `A1_relation` VALUES ('36', '117', '1');
INSERT INTO `A1_relation` VALUES ('37', '118', '1');
INSERT INTO `A1_relation` VALUES ('38', '162', '1');
INSERT INTO `A1_relation` VALUES ('39', '163', '1');
INSERT INTO `A1_relation` VALUES ('40', '164', '1');
INSERT INTO `A1_relation` VALUES ('41', '119', '1');
INSERT INTO `A1_relation` VALUES ('42', '120', '1');
INSERT INTO `A1_relation` VALUES ('43', '121', '1');
INSERT INTO `A1_relation` VALUES ('44', '122', '1');
INSERT INTO `A1_relation` VALUES ('45', '150', '1');
INSERT INTO `A1_relation` VALUES ('46', '151', '1');
INSERT INTO `A1_relation` VALUES ('47', '128', '1');
INSERT INTO `A1_relation` VALUES ('48', '134', '1');
INSERT INTO `A1_relation` VALUES ('49', '158', '1');
INSERT INTO `A1_relation` VALUES ('50', '159', '1');
INSERT INTO `A1_relation` VALUES ('51', '130', '1');
INSERT INTO `A1_relation` VALUES ('52', '131', '1');
INSERT INTO `A1_relation` VALUES ('53', '135', '1');
INSERT INTO `A1_relation` VALUES ('54', '136', '1');
INSERT INTO `A1_relation` VALUES ('55', '137', '1');
INSERT INTO `A1_relation` VALUES ('56', '152', '1');
INSERT INTO `A1_relation` VALUES ('57', '153', '1');
INSERT INTO `A1_relation` VALUES ('58', '154', '1');
INSERT INTO `A1_relation` VALUES ('59', '132', '1');
INSERT INTO `A1_relation` VALUES ('60', '138', '1');
INSERT INTO `A1_relation` VALUES ('61', '139', '1');
INSERT INTO `A1_relation` VALUES ('62', '140', '1');
INSERT INTO `A1_relation` VALUES ('63', '155', '1');
INSERT INTO `A1_relation` VALUES ('64', '156', '1');
INSERT INTO `A1_relation` VALUES ('65', '157', '1');
INSERT INTO `A1_relation` VALUES ('66', '133', '1');
INSERT INTO `A1_relation` VALUES ('67', '160', '1');
INSERT INTO `A1_relation` VALUES ('68', '161', '1');
INSERT INTO `A1_relation` VALUES ('69', '141', '1');
INSERT INTO `A1_relation` VALUES ('70', '142', '1');
INSERT INTO `A1_relation` VALUES ('71', '143', '1');
INSERT INTO `A1_relation` VALUES ('72', '144', '1');
INSERT INTO `A1_relation` VALUES ('73', '148', '1');
INSERT INTO `A1_relation` VALUES ('74', '145', '1');
INSERT INTO `A1_relation` VALUES ('75', '149', '1');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '序号',
  `pid` int(11) DEFAULT NULL COMMENT '父角色id',
  `name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `deptid` int(11) DEFAULT NULL COMMENT '部门名称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  `version` int(11) DEFAULT NULL COMMENT '保留字段(暂时没用）',
  `updatetime` date DEFAULT NULL COMMENT '修改时间',
  `updateby` varchar(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '1', '0', '超级管理员', '24', 'administrator', '1');
INSERT INTO `role` VALUES ('5', '2', '1', '临时', '26', 'temp', null);

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '123');

-- ----------------------------
-- Table structure for A1_user
-- ----------------------------
DROP TABLE IF EXISTS `A1_user`;
CREATE TABLE `A1_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `account` varchar(45) DEFAULT NULL COMMENT '账号',
  `password` varchar(45) DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) DEFAULT NULL COMMENT 'md5密码盐',
  `name` varchar(45) DEFAULT NULL COMMENT '名字',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `sex` int(11) DEFAULT NULL COMMENT '性别（1：男 2：女）',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) DEFAULT NULL COMMENT '电话',
  `roleid` varchar(255) DEFAULT NULL COMMENT '角色id',
  `deptid` int(11) DEFAULT NULL COMMENT '部门id',
  `status` int(11) DEFAULT NULL COMMENT '状态(1：启用  2：冻结  3：删除）',
  `updatetime` datetime DEFAULT NULL COMMENT '修改时间',
  `updateby` varchar(10) DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `version` int(11) DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `A1_user` VALUES ('1', 'girl.gif', 'admin', 'ecfadcde9305f8891bcfe5a1e28c253e', '8pgby', '张三', '2017-05-05 00:00:00', '2', 'sn93@qq.com', '18200000000', '1', '27', '1', '2016-01-29 08:49:53', '25',NULL,NULL);
INSERT INTO `A1_user` VALUES ('44', NULL, 'test', '45abb7879f6a8268f1ef600e6038ac73', 'ssts3', 'test', '2017-05-01 00:00:00', '1', 'abc@123.com', '', '5', '26', '1', '2017-05-16 20:33:37', NULL,NULL,NULL);


-- -----------------------------------------------------
-- Table 设备表
-- -----------------------------------------------------
DROP TABLE IF EXISTS `A1_device`;
CREATE TABLE `A1_device` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `device_num` varchar(20) DEFAULT NULL COMMENT '设备号',
  `firm_name` varchar(50) DEFAULT NULL COMMENT '企业名称',
  `vehicle_num` varchar(20) DEFAULT NULL COMMENT '车牌号',
  `version` varchar(20) DEFAULT NULL COMMENT '硬件版本',
  `updatetime` date DEFAULT NULL COMMENT '修改时间',
  `updateby` varchar(10) DEFAULT NULL COMMENT '修改人',
  `createtime` varchar(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
