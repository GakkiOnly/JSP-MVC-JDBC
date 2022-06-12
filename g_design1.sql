/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50540
 Source Host           : localhost:3306
 Source Schema         : g_design1

 Target Server Type    : MySQL
 Target Server Version : 50540
 File Encoding         : 65001

 Date: 10/06/2022 09:50:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for s_admin
-- ----------------------------
DROP TABLE IF EXISTS `s_admin`;
CREATE TABLE `s_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of s_admin
-- ----------------------------
INSERT INTO `s_admin` VALUES (1, 'admin', '1');

-- ----------------------------
-- Table structure for s_student
-- ----------------------------
DROP TABLE IF EXISTS `s_student`;
CREATE TABLE `s_student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `studentId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of s_student
-- ----------------------------
INSERT INTO `s_student` VALUES (15, '黎龙', '1', '1');
INSERT INTO `s_student` VALUES (17, '张明', '1', '2');
INSERT INTO `s_student` VALUES (18, '刘天', '1', '3');
INSERT INTO `s_student` VALUES (19, '郭云', '1', '4');
INSERT INTO `s_student` VALUES (20, '陈小云', '1', '5');
INSERT INTO `s_student` VALUES (21, '李冰', '1', '6');
INSERT INTO `s_student` VALUES (23, '赵倩', '1', '7');
INSERT INTO `s_student` VALUES (24, '孙小小', '1', '8');
INSERT INTO `s_student` VALUES (25, '周杰', '1', '9');
INSERT INTO `s_student` VALUES (26, '王洋', '1', '10');
INSERT INTO `s_student` VALUES (27, '陈龙', '1', '11');
INSERT INTO `s_student` VALUES (28, '陈敏', '1', '12');
INSERT INTO `s_student` VALUES (29, '陈丽', '1', '13');
INSERT INTO `s_student` VALUES (30, '周涛', '1', '14');
INSERT INTO `s_student` VALUES (31, '周伟', '1', '15');
INSERT INTO `s_student` VALUES (32, '周勇', '1', '16');
INSERT INTO `s_student` VALUES (33, '李静', '1', '17');
INSERT INTO `s_student` VALUES (34, '刘强', '1', '18');
INSERT INTO `s_student` VALUES (35, '刘子安', '1', '19');
INSERT INTO `s_student` VALUES (36, '沈安', '1', '20');
INSERT INTO `s_student` VALUES (37, '夏海', '1', '21');
INSERT INTO `s_student` VALUES (38, '钟云', '1', '22');
INSERT INTO `s_student` VALUES (39, '陆正', '1', '23');
INSERT INTO `s_student` VALUES (40, '田云', '1', '24');
INSERT INTO `s_student` VALUES (41, '苏军', '1', '25');
INSERT INTO `s_student` VALUES (42, '苏若男', '1', '26');
INSERT INTO `s_student` VALUES (43, '丁俊康', '1', '27');
INSERT INTO `s_student` VALUES (44, '龚文文', '1', '28');
INSERT INTO `s_student` VALUES (45, '张棋', '1', '29');
INSERT INTO `s_student` VALUES (46, '潘洪', '1', '30');
INSERT INTO `s_student` VALUES (49, '王杰杰', '1', '33');

-- ----------------------------
-- Table structure for s_teacher
-- ----------------------------
DROP TABLE IF EXISTS `s_teacher`;
CREATE TABLE `s_teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teacherId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of s_teacher
-- ----------------------------
INSERT INTO `s_teacher` VALUES (4, 'andy', '1', '1');
INSERT INTO `s_teacher` VALUES (5, 'jack', '1', '2');
INSERT INTO `s_teacher` VALUES (6, 'van', '1', '3');
INSERT INTO `s_teacher` VALUES (7, 'cindy', '1', '4');
INSERT INTO `s_teacher` VALUES (8, 'dave', '1', '5');
INSERT INTO `s_teacher` VALUES (19, 'aaa', '1', '6');
INSERT INTO `s_teacher` VALUES (20, 'bbb', '1', '7');
INSERT INTO `s_teacher` VALUES (21, 'ccc', '1', '8');
INSERT INTO `s_teacher` VALUES (22, 'eee', '1', '10');
INSERT INTO `s_teacher` VALUES (23, 'fff', '1', '11');
INSERT INTO `s_teacher` VALUES (24, 'ggg', '1', '12');
INSERT INTO `s_teacher` VALUES (25, 'ddd', '1', '9');
INSERT INTO `s_teacher` VALUES (26, 'hhh', '1', '13');
INSERT INTO `s_teacher` VALUES (27, 'iii', '1', '14');
INSERT INTO `s_teacher` VALUES (28, 'jjj', '1', '15');

-- ----------------------------
-- Table structure for studentinfo
-- ----------------------------
DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE `studentinfo`  (
  `studentId` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(255) NULL DEFAULT NULL,
  `teacherId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grade` int(255) NULL DEFAULT NULL,
  `clazz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `titleId` int(255) NULL DEFAULT NULL,
  `src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`studentId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of studentinfo
-- ----------------------------
INSERT INTO `studentinfo` VALUES ('1', '黎龙', '男', 22, '3', 99, '一班', 10, './/upload/大学生创业计划书：基于物联网的智能家居系统.doc');
INSERT INTO `studentinfo` VALUES ('10', '王洋', '女', 19, '3', 100, '二班', 8, './/upload/大学生创业计划书：基于物联网的智能家居系统.doc');
INSERT INTO `studentinfo` VALUES ('11', '陈龙', '男', 19, '2', NULL, '一班', 9, NULL);
INSERT INTO `studentinfo` VALUES ('12', '陈敏', '女', 24, '4', NULL, '二班', 10, NULL);
INSERT INTO `studentinfo` VALUES ('13', '陈丽', '女', 24, '3', NULL, '二班', 11, NULL);
INSERT INTO `studentinfo` VALUES ('14', '周涛', '男', 19, '4', NULL, '一班', 8, NULL);
INSERT INTO `studentinfo` VALUES ('15', '周伟', '男', 21, '1', 100, '二班', 11, NULL);
INSERT INTO `studentinfo` VALUES ('16', '周勇', '男', 21, '5', NULL, '二班', 7, NULL);
INSERT INTO `studentinfo` VALUES ('17', '李静', '女', 18, '3', NULL, '二班', 9, NULL);
INSERT INTO `studentinfo` VALUES ('18', '刘强', '男', 19, '5', NULL, '二班', 10, NULL);
INSERT INTO `studentinfo` VALUES ('19', '刘子安', '男', 21, '1', 95, '一班', 11, NULL);
INSERT INTO `studentinfo` VALUES ('2', '张明', '男', 24, '3', NULL, '二班', 8, NULL);
INSERT INTO `studentinfo` VALUES ('20', '沈安', '男', 18, '5', NULL, '一班', 7, NULL);
INSERT INTO `studentinfo` VALUES ('21', '夏海', '男', 21, '2', NULL, '二班', 9, NULL);
INSERT INTO `studentinfo` VALUES ('22', '钟云', '女', 19, '4', NULL, '一班', 8, NULL);
INSERT INTO `studentinfo` VALUES ('23', '陆正', '男', 20, '2', NULL, '二班', 11, NULL);
INSERT INTO `studentinfo` VALUES ('24', '田云', '女', 24, '4', NULL, '二班', 10, NULL);
INSERT INTO `studentinfo` VALUES ('25', '苏军', '男', 24, '2', NULL, '二班', 8, NULL);
INSERT INTO `studentinfo` VALUES ('26', '苏若男', '男', 20, '3', NULL, '一班', 7, NULL);
INSERT INTO `studentinfo` VALUES ('27', '丁俊康', '男', 19, '5', NULL, '一班', 10, NULL);
INSERT INTO `studentinfo` VALUES ('28', '龚文文', '男', 21, '5', NULL, '二班', 11, NULL);
INSERT INTO `studentinfo` VALUES ('29', '张棋', '女', 24, '1', 65, '二班', 9, NULL);
INSERT INTO `studentinfo` VALUES ('3', '刘天', '男', 21, '1', 80, '二班', 8, NULL);
INSERT INTO `studentinfo` VALUES ('30', '潘洪', '男', 19, '1', 90, '一班', 8, NULL);
INSERT INTO `studentinfo` VALUES ('33', '王杰杰', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `studentinfo` VALUES ('4', '郭云', '男', 18, '3', NULL, '二班', 7, NULL);
INSERT INTO `studentinfo` VALUES ('5', '陈小云', '女', 19, '4', NULL, '一班', 9, NULL);
INSERT INTO `studentinfo` VALUES ('6', '李冰', '男', 21, '2', NULL, '一班', 10, NULL);
INSERT INTO `studentinfo` VALUES ('7', '赵倩', '女', 24, '1', 100, '一班', 11, NULL);
INSERT INTO `studentinfo` VALUES ('8', '孙小小', '女', 20, '5', NULL, '二班', 11, NULL);
INSERT INTO `studentinfo` VALUES ('9', 'ddd', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for teacherinfo
-- ----------------------------
DROP TABLE IF EXISTS `teacherinfo`;
CREATE TABLE `teacherinfo`  (
  `teacherId` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tage` int(255) NULL DEFAULT NULL,
  `tsex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tdept` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `QQ` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `professional` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`teacherId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teacherinfo
-- ----------------------------
INSERT INTO `teacherinfo` VALUES ('1', 'andy', 36, '男', '计算机系', '110', '110', '教授');
INSERT INTO `teacherinfo` VALUES ('10', '李老师', 24, '女', '计算机系', '123', '123', '讲师');
INSERT INTO `teacherinfo` VALUES ('11', '张老师', 27, '男', '机械系', '123', '123', '教授');
INSERT INTO `teacherinfo` VALUES ('12', '王老师', 35, '女', '语言系', '123', '123', '副教授');
INSERT INTO `teacherinfo` VALUES ('13', '周老师', 41, '男', '文化系', '123', '123', '教授');
INSERT INTO `teacherinfo` VALUES ('14', '刘老师', 27, '女', '语言系', '123', '123', '讲师');
INSERT INTO `teacherinfo` VALUES ('15', '郑老师', 37, '男', '机械系', '123', '123', '教授');
INSERT INTO `teacherinfo` VALUES ('2', 'jack', 45, '男', '语言系', '120', '120', '副教授');
INSERT INTO `teacherinfo` VALUES ('3', 'van', 33, '女', '机械系', '119', '119', '讲师');
INSERT INTO `teacherinfo` VALUES ('4', 'cindy', 32, '女', '国学系', '139', '139', '教授');
INSERT INTO `teacherinfo` VALUES ('5', 'dave', 51, '女', '文化系', '911', '911', '副教授');
INSERT INTO `teacherinfo` VALUES ('6', '田老师', 43, '男', '文化系', '123', '123', '讲师');
INSERT INTO `teacherinfo` VALUES ('7', '吴老师', 56, '女', '语言系', '123', '123', '副教授');
INSERT INTO `teacherinfo` VALUES ('8', '谢老师', 39, '男', '计算机系', '123', '123', '教授');
INSERT INTO `teacherinfo` VALUES ('9', '赵老师', 45, '女', '文化系', '123', '123', '副教授');

-- ----------------------------
-- Table structure for titleinfo
-- ----------------------------
DROP TABLE IF EXISTS `titleinfo`;
CREATE TABLE `titleinfo`  (
  `titleId` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teacherId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`titleId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of titleinfo
-- ----------------------------
INSERT INTO `titleinfo` VALUES (7, '开发', '火车票销售系统', '1', './/upload/04-创业计划书范本1-游心旅游App.doc');
INSERT INTO `titleinfo` VALUES (8, '开发', '电子信息系统开发与维护', '3', './/upload/大学生创业计划书：基于物联网的智能家居系统.doc');
INSERT INTO `titleinfo` VALUES (9, '开发', '电商新媒体', '5', './/upload/实验四  软件设计.docx');
INSERT INTO `titleinfo` VALUES (10, 'MySQL', '如何提高数据库并发', '3', './/upload/计算机科学与技术-黎龙-124622021066.docx');
INSERT INTO `titleinfo` VALUES (11, '开发', '文化的形式', '5', './/upload/概要设计说明书.doc');
INSERT INTO `titleinfo` VALUES (12, '大数据', '如何运用大数据', '1', './/upload/实验四  软件设计.docx');
INSERT INTO `titleinfo` VALUES (13, '云计算', '云计算的运用', '1', './/upload/概要设计说明书.doc');

SET FOREIGN_KEY_CHECKS = 1;
