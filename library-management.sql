/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80035
 Source Host           : localhost:3306
 Source Schema         : library-management

 Target Server Type    : MySQL
 Target Server Version : 80035
 File Encoding         : 65001

 Date: 24/05/2024 21:14:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系方式',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_key`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '15691075769', '123132@wx.com', '2024-04-21 15:28:50', '2024-04-24 11:08:47', 'd147b5ae29e8cc94b32cb00e49a9ccd6', 1);
INSERT INTO `admin` VALUES (2, 'admin11', '15691075769', '1474416640@qq.com', '2024-04-22 12:24:49', '2024-04-25 13:54:20', '76b8f7e2754016008c9f52500221d834', 1);
INSERT INTO `admin` VALUES (3, 'zhang', '14691074769', NULL, '2024-04-25 13:56:06', NULL, '76b8f7e2754016008c9f52500221d834', 1);
INSERT INTO `admin` VALUES (5, '猴猴侯', '14744166407', '147', '2024-05-21 11:48:23', NULL, '76b8f7e2754016008c9f52500221d834', 1);
INSERT INTO `admin` VALUES (6, '213', '15691075769', '147', '2024-05-22 11:59:29', NULL, '76b8f7e2754016008c9f52500221d834', 1);

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `publish_date` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '出版日期',
  `author` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '作者',
  `publisher` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '出版社',
  `category` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '分类',
  `book_no` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '国际标准码',
  `cover` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '封面',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `score` int(0) NULL DEFAULT NULL COMMENT '积分',
  `nums` int(0) NULL DEFAULT 0 COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `book_no_index`(`book_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, ' 10000年中国艺术史（上册）', '从山顶洞人装饰品说起的10000年中国艺术史！中国美术史学科创始人王逊代表作，百科全书式的艺术入门读本！', '2024-04-10T16:00:00.000Z', '意公子', '海南摄影美术出版社', '历史文化', 'ISBN：9787559447135', 'https://img3m9.ddimg.cn/87/31/29133609-1_w_3.jpg', '2024-04-28 11:25:49', '2024-04-28 00:00:00', 10, 98);
INSERT INTO `book` VALUES (4, '大数据技术与原理', '131231', '2024-04-10 ', '123', '123123', '历史文化>清朝文化', '222', 'http://localhost:9090/api/book/file/download/1716386860728?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxIiwiZXhwIjoxNzE3NjgyODYwfQ.i8BhEftR6ZVh_8udf9pe-o8QW_uH9hJ8vFJXGupr8uQ', '2024-04-28 18:04:04', '2024-05-22 00:00:00', 10, 92);
INSERT INTO `book` VALUES (5, 'java11', 'javaee', '2024-04-09 ', '韩顺平', '韩顺平', '计算机类>java', '12345', 'http://localhost:9090/api/book/file/download/1716387211584?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxIiwiZXhwIjoxNzE3NjgzMjExfQ.jWl8qoU-UyxlaqnPLbxPcLXUl3wVh6BAubDGnHdzd8g', '2024-04-29 14:42:53', '2024-05-22 00:00:00', 25, 100);

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '图书名称',
  `book_no` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '图书标准码',
  `user_no` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '用户卡号',
  `user_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `user_phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '用户手机号',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `score` int(0) NULL DEFAULT NULL COMMENT '借书积分',
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT '已借出' COMMENT '借书状态',
  `days` int(0) NULL DEFAULT 1 COMMENT '借书天数',
  `return_date` datetime(0) NULL DEFAULT NULL COMMENT '归还日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES (9, '222', '222', '2024040694901543', '222', '15691076547', '2024-04-30 22:16:14', NULL, 20, '已借出', 4, '2024-05-04 22:12:52');
INSERT INTO `borrow` VALUES (10, '222', '222', '2024040694901543', '李云', '13619273411', '2024-04-30 22:17:08', '2024-04-30 00:00:00', 20, '已借出', 5, '2024-05-05 22:12:52');
INSERT INTO `borrow` VALUES (11, ' 10000年中国艺术史（上册）', 'ISBN：9787559447135', '2024040694901543', '222', '15691076547', '2024-04-30 22:35:01', NULL, 10, '已归还', 6, '2024-05-06 22:12:52');
INSERT INTO `borrow` VALUES (12, ' 10000年中国艺术史（上册）', 'ISBN：9787559447135', '2024040694901543', '222', '15691076547', '2024-04-30 22:35:08', NULL, 10, '已归还', 7, '2024-05-07 22:12:52');
INSERT INTO `borrow` VALUES (13, ' 10000年中国艺术史（上册）', 'ISBN：9787559447135', '2024040694901543', '222', '15691076547', '2024-04-30 22:35:19', NULL, 10, '已归还', 8, '2024-05-08 22:12:52');
INSERT INTO `borrow` VALUES (16, 'java', '12345', '202404061892412821', '李云', '13619273411', '2024-05-08 12:45:07', NULL, 25, '已归还', 4, '2024-05-12 00:00:00');
INSERT INTO `borrow` VALUES (19, ' 10000年中国艺术史（上册）', 'ISBN：9787559447135', '2024040694901543', '李四', '15691076547', '2024-05-13 14:46:27', NULL, 10, '已归还', 3, '2024-05-16 00:00:00');
INSERT INTO `borrow` VALUES (21, ' 10000年中国艺术史（上册）', 'ISBN：9787559447135', '20240407928275164', '田', '15691075769', '2024-05-13 14:49:20', NULL, 10, '已归还', 3, '2024-05-16 00:00:00');
INSERT INTO `borrow` VALUES (27, ' 10000年中国艺术史（上册）', 'ISBN：9787559447135', '20240407928275164', '田', '15691075769', '2024-05-13 15:07:30', NULL, 10, '已归还', 3, '2024-05-16 00:00:00');
INSERT INTO `borrow` VALUES (34, ' 10000年中国艺术史（上册）', 'ISBN：9787559447135', '202404061892412821', '李云', '13619273411', '2024-05-13 18:42:42', NULL, 30, '已归还', 3, '2024-05-02 00:00:00');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `pid` int(0) NULL DEFAULT NULL COMMENT '父级id',
  `createtime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updatetime` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (4, '历史文化', '历史文化11', NULL, '2024-04-25 16:42:04', '2024-04-27 00:00:00');
INSERT INTO `category` VALUES (6, '数学图书', '数学图书', NULL, '2024-04-26 13:56:47', NULL);
INSERT INTO `category` VALUES (7, '英语图书', '英语图书', NULL, '2024-04-26 13:57:14', NULL);
INSERT INTO `category` VALUES (8, '唐朝文化', '唐朝文化', 4, '2024-04-26 22:10:42', NULL);
INSERT INTO `category` VALUES (9, '宋朝文化', '宋朝文化', 4, '2024-04-26 22:18:25', NULL);
INSERT INTO `category` VALUES (14, '现代文化', '现代文化', 4, '2024-04-27 12:58:32', NULL);
INSERT INTO `category` VALUES (15, '离散数学', '离散数学', 6, '2024-04-27 12:59:32', NULL);
INSERT INTO `category` VALUES (16, '大学英语1', '大学英语1', 7, '2024-04-27 12:59:54', NULL);
INSERT INTO `category` VALUES (17, '清朝文化', '清朝文化', 4, '2024-04-27 13:02:37', NULL);
INSERT INTO `category` VALUES (18, '生物科目', '生物科目', NULL, '2024-04-27 13:55:28', NULL);
INSERT INTO `category` VALUES (19, '计算机类', '计算机类', NULL, '2024-04-28 10:26:00', NULL);
INSERT INTO `category` VALUES (20, 'java', 'java', 19, '2024-04-28 18:53:30', NULL);
INSERT INTO `category` VALUES (21, '行测', '国家公务员考试', NULL, '2024-04-30 22:06:42', NULL);
INSERT INTO `category` VALUES (23, '操作系统', '操作系统', 19, '2024-05-09 23:50:55', NULL);

-- ----------------------------
-- Table structure for retur
-- ----------------------------
DROP TABLE IF EXISTS `retur`;
CREATE TABLE `retur`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '图书名称',
  `book_no` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '图书标准码',
  `user_no` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '用户卡号',
  `user_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `user_phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '用户手机号',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `score` int(0) NULL DEFAULT NULL COMMENT '借书积分',
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT '已借出' COMMENT '借书状态',
  `days` int(0) NULL DEFAULT 1 COMMENT '借书天数',
  `return_date` datetime(0) NULL DEFAULT NULL COMMENT '归还日期',
  `real_date` datetime(0) NULL DEFAULT NULL COMMENT '实际归还日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of retur
-- ----------------------------
INSERT INTO `retur` VALUES (5, 'java', '12345', '202404061892412821', '李云', '13619273411', '2024-05-11 13:30:24', NULL, 25, '已借出', 4, '2024-05-12 00:00:00', '2024-05-11 00:00:00');
INSERT INTO `retur` VALUES (6, ' 10000年中国艺术史（上册）', 'ISBN：9787559447135', '2024040694901543', '222', '15691076547', '2024-05-11 16:07:08', NULL, 10, '已借出', 8, '2024-05-08 00:00:00', '2024-05-11 00:00:00');
INSERT INTO `retur` VALUES (7, ' 10000年中国艺术史（上册）', 'ISBN：9787559447135', '2024040694901543', '222', '15691076547', '2024-05-11 16:16:12', NULL, 10, '已借出', 7, '2024-05-07 00:00:00', '2024-05-11 00:00:00');
INSERT INTO `retur` VALUES (8, ' 10000年中国艺术史（上册）', 'ISBN：9787559447135', '2024040694901543', '222', '15691076547', '2024-05-12 22:15:45', NULL, 10, '已借出', 6, '2024-05-06 00:00:00', '2024-05-12 00:00:00');
INSERT INTO `retur` VALUES (9, ' 10000年中国艺术史（上册）', 'ISBN：9787559447135', '2024040694901543', '李四', '15691076547', '2024-05-13 14:40:39', NULL, 10, '已借出', 1, '2024-05-14 00:00:00', '2024-05-13 00:00:00');
INSERT INTO `retur` VALUES (10, ' 10000年中国艺术史（上册）', 'ISBN：9787559447135', '2024040694901543', '李四', '15691076547', '2024-05-13 14:46:41', NULL, 10, '已借出', 3, '2024-05-16 00:00:00', '2024-05-13 00:00:00');
INSERT INTO `retur` VALUES (11, ' 10000年中国艺术史（上册）', 'ISBN：9787559447135', '20240407928275164', '田', '15691075769', '2024-05-13 14:48:49', NULL, 10, '已归还', 3, '2024-05-16 00:00:00', '2024-05-13 00:00:00');
INSERT INTO `retur` VALUES (12, ' 10000年中国艺术史（上册）', 'ISBN：9787559447135', '20240407928275164', '田', '15691075769', '2024-05-13 14:49:24', NULL, 10, '已归还', 3, '2024-05-16 00:00:00', '2024-05-13 00:00:00');
INSERT INTO `retur` VALUES (13, ' 10000年中国艺术史（上册）', 'ISBN：9787559447135', '20240407928275164', '田', '15691075769', '2024-05-13 14:52:42', NULL, 10, '已归还', 3, '2024-05-16 00:00:00', '2024-05-13 00:00:00');
INSERT INTO `retur` VALUES (14, '222', '222', '20240407928275164', '田', '15691075769', '2024-05-13 14:56:45', NULL, 20, '已归还', 3, '2024-05-16 00:00:00', '2024-05-13 00:00:00');
INSERT INTO `retur` VALUES (15, ' 10000年中国艺术史（上册）', 'ISBN：9787559447135', '2024040694901543', '李四', '15691076547', '2024-05-13 15:02:13', NULL, 10, '已归还', 1, '2024-05-14 00:00:00', '2024-05-13 00:00:00');
INSERT INTO `retur` VALUES (16, '222', '222', '20240407928275164', '田', '15691075769', '2024-05-13 15:05:54', NULL, 20, '已归还', 3, '2024-05-16 00:00:00', '2024-05-13 00:00:00');
INSERT INTO `retur` VALUES (17, '222', '222', '2024040694901543', '李四', '15691076547', '2024-05-13 15:06:30', NULL, 20, '已归还', 1, '2024-05-14 00:00:00', '2024-05-13 00:00:00');
INSERT INTO `retur` VALUES (18, ' 10000年中国艺术史（上册）', 'ISBN：9787559447135', '20240407928275164', '田', '15691075769', '2024-05-13 15:07:36', NULL, 10, '已归还', 3, '2024-05-16 00:00:00', '2024-05-13 00:00:00');
INSERT INTO `retur` VALUES (19, ' 10000年中国艺术史（上册）', 'ISBN：9787559447135', '2024040694901543', '李四', '15691076547', '2024-05-13 18:11:13', NULL, 30, '已归还', 3, '2024-05-30 00:00:00', '2024-05-13 00:00:00');
INSERT INTO `retur` VALUES (20, ' 10000年中国艺术史（上册）', 'ISBN：9787559447135', '202404061892412821', '李云', '13619273411', '2024-05-13 18:22:03', NULL, 20, '已归还', 2, '2024-05-30 00:00:00', '2024-05-13 00:00:00');
INSERT INTO `retur` VALUES (21, 'java', '12345', '202404061892412821', '李云', '13619273411', '2024-05-13 18:29:27', NULL, 150, '已归还', 6, '2024-06-19 00:00:00', '2024-05-13 00:00:00');
INSERT INTO `retur` VALUES (22, ' 10000年中国艺术史（上册）', 'ISBN：9787559447135', '2024040694901543', '李四', '15691076547', '2024-05-13 18:29:40', NULL, 40, '已归还', 4, '2024-05-17 00:00:00', '2024-05-13 00:00:00');
INSERT INTO `retur` VALUES (23, ' 10000年中国艺术史（上册）', 'ISBN：9787559447135', '202404061892412821', '李云', '13619273411', '2024-05-13 18:38:03', NULL, 20, '已归还', 2, '2024-05-19 00:00:00', '2024-05-13 00:00:00');
INSERT INTO `retur` VALUES (24, '222', '222', '2024040694901543', '李四', '15691076547', '2024-05-13 18:38:39', NULL, 120, '已归还', 6, '2024-06-19 00:00:00', '2024-05-13 00:00:00');
INSERT INTO `retur` VALUES (25, ' 10000年中国艺术史（上册）', 'ISBN：9787559447135', '202404061892412821', '李云', '13619273411', '2024-05-13 18:44:50', NULL, 30, '已归还', 3, '2024-05-02 00:00:00', '2024-05-13 00:00:00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '会员码\r\n',
  `age` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系方式',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `account` int(0) NULL DEFAULT 0 COMMENT '账户余额',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '禁用状态 1不禁用',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_index`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (22, '李云', '202404061892412821', 24, '女', '13619273411', '上海', '2024-04-06 20:53:37', '2024-05-13 18:36:47', -76, 0);
INSERT INTO `user` VALUES (24, '李四', '2024040694901543', 22, '男', '15691076547', '西安', '2024-04-06 22:41:49', '2024-05-13 18:08:07', 751, 1);
INSERT INTO `user` VALUES (25, '田', '20240407928275164', 22, '男', '15691075769', '1474416640@qq.com', '2024-04-07 20:19:01', '2024-05-12 23:25:33', 102, 1);
INSERT INTO `user` VALUES (29, '田', '202405211188548770', 12, '男', '13772699561', '上海', '2024-05-21 11:45:01', NULL, NULL, 1);

SET FOREIGN_KEY_CHECKS = 1;
