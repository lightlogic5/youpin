/*
Navicat MySQL Data Transfer

Source Server         : 本地mysql
Source Server Version : 100113
Source Host           : localhost:3306
Source Database       : youpin

Target Server Type    : MYSQL
Target Server Version : 100113
File Encoding         : 65001

Date: 2017-05-16 14:13:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 用户信息', '7', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 用户信息', '7', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 用户信息', '7', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 制度分类', '8', 'add_inscategory');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 制度分类', '8', 'change_inscategory');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 制度分类', '8', 'delete_inscategory');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 制度', '9', 'add_institution');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 制度', '9', 'change_institution');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 制度', '9', 'delete_institution');
INSERT INTO `auth_permission` VALUES ('28', 'Can add 考核信息', '10', 'add_informationinput');
INSERT INTO `auth_permission` VALUES ('29', 'Can change 考核信息', '10', 'change_informationinput');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete 考核信息', '10', 'delete_informationinput');
INSERT INTO `auth_permission` VALUES ('31', 'Can add 工段', '11', 'add_w_section');
INSERT INTO `auth_permission` VALUES ('32', 'Can change 工段', '11', 'change_w_section');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete 工段', '11', 'delete_w_section');
INSERT INTO `auth_permission` VALUES ('34', 'Can add 车间班组', '12', 'add_w_team');
INSERT INTO `auth_permission` VALUES ('35', 'Can change 车间班组', '12', 'change_w_team');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete 车间班组', '12', 'delete_w_team');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 员工信息管理', '13', 'add_w_employee');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 员工信息管理', '13', 'change_w_employee');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 员工信息管理', '13', 'delete_w_employee');
INSERT INTO `auth_permission` VALUES ('40', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('41', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('42', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('43', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('44', 'Can view 员工信息管理', '13', 'view_w_employee');
INSERT INTO `auth_permission` VALUES ('45', 'Can view 工段', '11', 'view_w_section');
INSERT INTO `auth_permission` VALUES ('46', 'Can view 车间班组', '12', 'view_w_team');
INSERT INTO `auth_permission` VALUES ('47', 'Can view 考核信息', '10', 'view_informationinput');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 制度分类', '8', 'view_inscategory');
INSERT INTO `auth_permission` VALUES ('49', 'Can view 制度', '9', 'view_institution');
INSERT INTO `auth_permission` VALUES ('50', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('51', 'Can view 用户信息', '7', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('52', 'Can add Bookmark', '14', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('53', 'Can change Bookmark', '14', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('54', 'Can delete Bookmark', '14', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('55', 'Can add User Setting', '15', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('56', 'Can change User Setting', '15', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('57', 'Can delete User Setting', '15', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('58', 'Can add User Widget', '16', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('59', 'Can change User Widget', '16', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('60', 'Can delete User Widget', '16', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('61', 'Can view Bookmark', '14', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('62', 'Can view User Setting', '15', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('63', 'Can view User Widget', '16', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('64', 'Can add log entry', '17', 'add_log');
INSERT INTO `auth_permission` VALUES ('65', 'Can change log entry', '17', 'change_log');
INSERT INTO `auth_permission` VALUES ('66', 'Can delete log entry', '17', 'delete_log');
INSERT INTO `auth_permission` VALUES ('67', 'Can view log entry', '17', 'view_log');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 审核审批', '18', 'view_is_informationinput');
INSERT INTO `auth_permission` VALUES ('69', 'Can add 审核审批', '10', 'add_is_informationinput');
INSERT INTO `auth_permission` VALUES ('70', 'Can change 审核审批', '10', 'change_is_informationinput');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete 审核审批', '10', 'delete_is_informationinput');
INSERT INTO `auth_permission` VALUES ('72', 'Can add 管理员流程补救', '10', 'add_pro_informationinput');
INSERT INTO `auth_permission` VALUES ('73', 'Can change 管理员流程补救', '10', 'change_pro_informationinput');
INSERT INTO `auth_permission` VALUES ('74', 'Can delete 管理员流程补救', '10', 'delete_pro_informationinput');
INSERT INTO `auth_permission` VALUES ('75', 'Can view 管理员流程补救', '19', 'view_pro_informationinput');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('13', 'employees', 'w_employee');
INSERT INTO `django_content_type` VALUES ('11', 'employees', 'w_section');
INSERT INTO `django_content_type` VALUES ('12', 'employees', 'w_team');
INSERT INTO `django_content_type` VALUES ('10', 'informationinputs', 'informationinput');
INSERT INTO `django_content_type` VALUES ('18', 'informationinputs', 'is_informationinput');
INSERT INTO `django_content_type` VALUES ('19', 'informationinputs', 'pro_informationinput');
INSERT INTO `django_content_type` VALUES ('8', 'institutions', 'inscategory');
INSERT INTO `django_content_type` VALUES ('9', 'institutions', 'institution');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('14', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('17', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('15', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('16', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-05-15 08:12:55');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2017-05-15 08:12:56');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2017-05-15 08:12:56');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2017-05-15 08:12:56');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2017-05-15 08:12:56');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2017-05-15 08:12:56');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2017-05-15 08:12:56');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2017-05-15 08:12:56');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2017-05-15 08:12:56');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2017-05-15 08:12:56');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2017-05-15 08:12:56');
INSERT INTO `django_migrations` VALUES ('12', 'sessions', '0001_initial', '2017-05-15 08:12:56');
INSERT INTO `django_migrations` VALUES ('13', 'users', '0001_initial', '2017-05-15 16:21:48');
INSERT INTO `django_migrations` VALUES ('14', 'employees', '0001_initial', '2017-05-15 16:52:28');
INSERT INTO `django_migrations` VALUES ('15', 'institutions', '0001_initial', '2017-05-15 16:52:28');
INSERT INTO `django_migrations` VALUES ('16', 'informationinputs', '0001_initial', '2017-05-15 16:52:29');
INSERT INTO `django_migrations` VALUES ('17', 'xadmin', '0001_initial', '2017-05-15 16:57:03');
INSERT INTO `django_migrations` VALUES ('18', 'xadmin', '0002_log', '2017-05-16 09:41:25');
INSERT INTO `django_migrations` VALUES ('19', 'xadmin', '0003_auto_20160715_0100', '2017-05-16 09:41:26');
INSERT INTO `django_migrations` VALUES ('20', 'institutions', '0002_institution_name', '2017-05-16 10:07:51');
INSERT INTO `django_migrations` VALUES ('21', 'users', '0002_userprofile_user_post', '2017-05-16 13:46:49');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('6wob1iq0qvrbx3xrmq6x2j02a6zl9rm2', 'ZmJiNWJjMmE3NDgzNjdjYTJlYzM4YWQzMDlmZDgyMDYyNDc1ZWNlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiTElTVF9RVUVSWSI6W1siaW5mb3JtYXRpb25pbnB1dHMiLCJpbmZvcm1hdGlvbmlucHV0Il0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiIzZTJkODA3NWFmZmEzMmZlNzAxM2ZlNzNhNDQ2ZTMzN2EyYjYxMjg2IiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2017-05-30 12:36:52');
INSERT INTO `django_session` VALUES ('ttrifbpm3yxcjwiqtzgzclst13n04v1j', 'M2ZiM2IzZDMxMjE2NDNiZjQ5OTMwZjA2ZTA3ZTY0ZDk3OWJkNWY2NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1sidXNlcnMiLCJ1c2VycHJvZmlsZSJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiM2UyZDgwNzVhZmZhMzJmZTcwMTNmZTczYTQ0NmUzMzdhMmI2MTI4NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-05-30 13:57:37');

-- ----------------------------
-- Table structure for employees_w_employee
-- ----------------------------
DROP TABLE IF EXISTS `employees_w_employee`;
CREATE TABLE `employees_w_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `w_employeeid` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `w_section_id` int(11) NOT NULL,
  `w_team_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employees_w_employee_f0bf1b46` (`w_section_id`),
  KEY `employees_w_employee_5064e8ed` (`w_team_id`),
  CONSTRAINT `employees_w_empl_w_section_id_8ded351a_fk_employees_w_section_id` FOREIGN KEY (`w_section_id`) REFERENCES `employees_w_section` (`id`),
  CONSTRAINT `employees_w_employee_w_team_id_8d767fd9_fk_employees_w_team_id` FOREIGN KEY (`w_team_id`) REFERENCES `employees_w_team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employees_w_employee
-- ----------------------------
INSERT INTO `employees_w_employee` VALUES ('1', '250', '小王', '1', '1');
INSERT INTO `employees_w_employee` VALUES ('2', '12', '小王2', '1', '1');
INSERT INTO `employees_w_employee` VALUES ('3', '13', '小王3', '1', '1');

-- ----------------------------
-- Table structure for employees_w_section
-- ----------------------------
DROP TABLE IF EXISTS `employees_w_section`;
CREATE TABLE `employees_w_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employees_w_section
-- ----------------------------
INSERT INTO `employees_w_section` VALUES ('1', '第一工段');

-- ----------------------------
-- Table structure for employees_w_team
-- ----------------------------
DROP TABLE IF EXISTS `employees_w_team`;
CREATE TABLE `employees_w_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employees_w_team
-- ----------------------------
INSERT INTO `employees_w_team` VALUES ('1', '一车间2班组');

-- ----------------------------
-- Table structure for informationinputs_informationinput
-- ----------------------------
DROP TABLE IF EXISTS `informationinputs_informationinput`;
CREATE TABLE `informationinputs_informationinput` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sketch` varchar(500) NOT NULL,
  `add_time` datetime NOT NULL,
  `image` varchar(100) NOT NULL,
  `has_agree` tinyint(1) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `w_employeeid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `informationi_category_id_94936025_fk_institutions_institution_id` (`category_id`),
  KEY `informationinputs_infor_user_id_c6cbb271_fk_users_userprofile_id` (`user_id`),
  KEY `informationi_w_employeeid_id_9641980a_fk_employees_w_employee_id` (`w_employeeid_id`),
  CONSTRAINT `informationi_category_id_94936025_fk_institutions_institution_id` FOREIGN KEY (`category_id`) REFERENCES `institutions_institution` (`id`),
  CONSTRAINT `informationi_w_employeeid_id_9641980a_fk_employees_w_employee_id` FOREIGN KEY (`w_employeeid_id`) REFERENCES `employees_w_employee` (`id`),
  CONSTRAINT `informationinputs_infor_user_id_c6cbb271_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of informationinputs_informationinput
-- ----------------------------
INSERT INTO `informationinputs_informationinput` VALUES ('1', '阿达', '2017-05-16 12:37:00', 'information/default.png', '0', '2', '2', '1');
INSERT INTO `informationinputs_informationinput` VALUES ('2', '阿打算发', '2017-05-16 13:25:00', 'information/default.png', '0', '2', '1', '3');
INSERT INTO `informationinputs_informationinput` VALUES ('3', '啊大大', '2017-05-16 13:25:00', 'information/default.png', '0', '2', '2', '3');

-- ----------------------------
-- Table structure for institutions_inscategory
-- ----------------------------
DROP TABLE IF EXISTS `institutions_inscategory`;
CREATE TABLE `institutions_inscategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of institutions_inscategory
-- ----------------------------
INSERT INTO `institutions_inscategory` VALUES ('1', '动火作业');
INSERT INTO `institutions_inscategory` VALUES ('2', '高空作业');

-- ----------------------------
-- Table structure for institutions_institution
-- ----------------------------
DROP TABLE IF EXISTS `institutions_institution`;
CREATE TABLE `institutions_institution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `institution` varchar(50) NOT NULL,
  `institutionid` varchar(10) NOT NULL,
  `score` varchar(2) NOT NULL,
  `categoryid_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `institutio_categoryid_id_4e05ef8d_fk_institutions_inscategory_id` (`categoryid_id`),
  CONSTRAINT `institutio_categoryid_id_4e05ef8d_fk_institutions_inscategory_id` FOREIGN KEY (`categoryid_id`) REFERENCES `institutions_inscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of institutions_institution
-- ----------------------------
INSERT INTO `institutions_institution` VALUES ('1', '防止火灾', '0100', '+1', '1', '2017-05-16 10:07:41.344000');
INSERT INTO `institutions_institution` VALUES ('2', '算法算法广东省分公司的故事', '0101', '1', '1', '动火作业制度1');
INSERT INTO `institutions_institution` VALUES ('3', '系好安全带', '2121', '+2', '2', '高空焊接');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `image` varchar(100) NOT NULL,
  `user_id` varchar(11) DEFAULT NULL,
  `user_post_id` int(11),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `users_userprofile_5c5919df` (`user_post_id`),
  CONSTRAINT `users_userp_user_post_id_fb1983c5_fk_institutions_inscategory_id` FOREIGN KEY (`user_post_id`) REFERENCES `institutions_inscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$24000$FHW7UYulYYdz$3BuzVLWU1qdkZdpNwQEKMvigJPWf5hUA3MdmOm1FReU=', '2017-05-16 12:10:49', '1', 'asa', '', '', '1@qq.com', '1', '1', '2017-05-15 16:52:57', '', null, 'female', 'image/default.png', null, null);
INSERT INTO `users_userprofile` VALUES ('2', 'pbkdf2_sha256$24000$4K7AQS0jANuC$/67lY7zjqi3f8mvb1GeRsBxnStt7lHIOvVN3u6QwP6Q=', null, '0', 'asa1', '', '', '', '0', '1', '2017-05-16 12:36:18', '', null, 'female', 'image/default.png', null, null);
INSERT INTO `users_userprofile` VALUES ('3', 'pbkdf2_sha256$24000$GsMwm7A3UVMs$VSdOMr4KLO2udqKu7MNXmbuw20RrmVnk6wMKJ14A5NU=', null, '0', 'dhzr', '动火车间', '动火车间', '1@qq.com', '1', '1', '2017-05-16 13:56:00', '动火车间主任', '2017-05-16', 'male', 'image/default.png', '', '1');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofil_userprofile_id_a4496a80_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_permissions_userprofile_id_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `users_userprofil_userprofile_id_34544737_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2017-05-16 09:57:59', '127.0.0.1', '1', '第一工段', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2017-05-16 09:58:11', '127.0.0.1', '1', '一车间2班组', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2017-05-16 09:58:33', '127.0.0.1', '1', '小王', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2017-05-16 09:59:12', '127.0.0.1', '1', '动火作业', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2017-05-16 09:59:50', '127.0.0.1', '1', '0100', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2017-05-16 10:09:14', '127.0.0.1', '2', '动火作业制度1', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2017-05-16 11:23:03', '127.0.0.1', '2', '小王2', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2017-05-16 11:23:11', '127.0.0.1', '3', '小王3', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2017-05-16 12:36:18', '127.0.0.1', '2', 'asa1', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2017-05-16 12:37:40', '127.0.0.1', '1', 'informationinput object', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2017-05-16 13:17:20', '127.0.0.1', '1', 'is_informationinput object', 'change', '已修改 has_agree 。', '18', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2017-05-16 13:25:34', '127.0.0.1', '2', 'informationinput object', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2017-05-16 13:25:52', '127.0.0.1', '3', 'informationinput object', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2017-05-16 13:38:23', '127.0.0.1', '2', '高空作业', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2017-05-16 13:38:57', '127.0.0.1', '3', '高空焊接', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2017-05-16 13:56:27', '127.0.0.1', '3', 'dhzr', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2017-05-16 13:57:37', '127.0.0.1', '3', 'dhzr', 'change', '已修改 first_name，last_name，email，is_staff，nick_name，birday，gender 和 user_post 。', '7', '1');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
