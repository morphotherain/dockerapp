
CREATE DATABASE IF NOT EXISTS javaweb_books_management_system;

USE javaweb_books_management_system;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'root', '123456', '13100000000', NULL);
INSERT INTO `admin` VALUES (2, 'admin', 'admin', '13100000000', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'user', '123', '13100000000');
INSERT INTO `user` VALUES (2, 'zhangsan', '123456', '13100000000');
INSERT INTO `user` VALUES (9, 'root', '31231', 'zd123');

SET FOREIGN_KEY_CHECKS = 1;


-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publisher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isbn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pricing` double NULL DEFAULT NULL,
  `is_borrowed` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, 'Java编程项目实战', '罗骞编', '北京航空航天大学出版社有限公司 ', '978-7-5124-3674-9', '                                                                                                                                本书详细介绍了Java语言面向对象程序设计中的核心技术和编程技巧。另外本书还将Java教学与实战经验的知识点融入练习当中，通过练习让读者迅速的理解书中的知识点，并快速掌握Java技术的精髓，快速提高Java程序开发技能。本书适合Java从入门到精通各个层次的读者参考学习，Java初学者、Java编程爱好者、Java语言工程师等均可选择本书作为Java开发的实战指南和参考工具书，应用型高校计算机相关专业、培训机构也可选择本书作为Java算法、Java程序设计和面向对象编程的教材或参考书。\r\n                            \r\n                            \r\n                            \r\n                            ', 69, 0);
INSERT INTO `book` VALUES (2, 'JAVA程序设计', '张更路，李银锁主编', '北京：中国原子能出版社', '978-7-5221-0436-2', NULL, NULL, 1);
INSERT INTO `book` VALUES (3, 'Java语言程序设计', '张宏升，刘念，王莉主编', '长沙：湖南大学出版社', '978-7-5667-2245-4', NULL, 49.8, 0);
INSERT INTO `book` VALUES (4, 'Java语言程序设计', '王全新主编', '北京：北京邮电大学出版社', '978-7-5635-6167-4', '本书围绕面向对象的三大机制（封装、继承、多态），从介绍类和对象等基本概念出发，结合作者多年教学经验，循序渐渐地讲解了面向对象思想、集合、流、线程及网络编程等部分；同时，配有大量的实例介绍，有助于读者不断领悟相关概念的内涵。全书共有9个章节，主要内容包括搭建IDE环境、Java编程基础、面向对象程序设计（上）、面向对象程序设计（下）、Java中常用类、Java集合、输入输出流、Java多线程编程、Java网络编程。每个章节配有相应习题，便于读者巩固所学内容。本书适用面广，适用于本科或高职高专计算机科学与技术、电子商务', NULL, 0);
INSERT INTO `book` VALUES (5, 'Java Web应用开发', '周继松，马权主编', '重庆大学电子音像出版社', '978-7-89446-360-9', NULL, NULL, 0);
INSERT INTO `book` VALUES (6, 'C++函数式编程', '（塞尔维亚）伊凡·库奇著；程继洪，孙玉梅，娄山佑译', '北京：机械工业出版社', '978-7-111-64198-8', '本书主要介绍了C++的面向函数式编程，面向函数式编程是继面向对象编程之后又一编程范式，解决了命令式（过程式）编程与面向对象编程中出现的问题，是一种极具潜力的编程方式，值得研究学习。主要介绍了函数对象、纯洁性Purity、懒求值、Range、函数式数据结构、代数类型及模式匹配、Monad、模板元编程、并发系统的函数式设计，以及测试与调试等有关内容，还介绍了使用原有函数创建新函数的知识，全面介绍了C++中的函数式编程的内容。本书不仅可以作为C++程序员、编程爱好者以及软件工程师学习函数式编程的参考书，还可以作为高等院校C++编程语言的高级教材。', 79, 1);
INSERT INTO `book` VALUES (7, 'C++程序设计教程', '王樱，李浪主编；李康满，田小梅，刘新宇，郑光勇，尹友明副主编', '北京：中国铁道出版社', '978-7-113-25624-1', '本书共分两大部分。第一部分，第1章至第7章是基础部分，较为全面地介绍了程序设计语言C++的基本概念、基本语法和程序结构以及过程化程序思想，包含数据类型、语句和表达式、程序流程控制、数组与字符串、指针与引用、函数、宏与预编译等知识。第二部分，第8章至第14章，是面向对象程序设计部分，它建立在C++程序设计基础之上，讲述了面向对象程序设计方法。主要内容包括类与对象的基本概念、继承与派生、多态、输入输出流类库、模板、使用标准模板库STL、异常处理等，使得读者学习C++语言后，能够解决一些实际问题。', 45, 0);

-- ----------------------------
-- Table structure for book_book_type
-- ----------------------------
DROP TABLE IF EXISTS `book_book_type`;
CREATE TABLE `book_book_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NULL DEFAULT NULL,
  `book_type_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_book_type
-- ----------------------------
INSERT INTO `book_book_type` VALUES (1, 1, 1);
INSERT INTO `book_book_type` VALUES (2, 2, 1);
INSERT INTO `book_book_type` VALUES (3, 3, 1);
INSERT INTO `book_book_type` VALUES (4, 4, 1);
INSERT INTO `book_book_type` VALUES (5, 5, 1);
INSERT INTO `book_book_type` VALUES (6, 6, 2);
INSERT INTO `book_book_type` VALUES (7, 7, 2);

-- ----------------------------
-- Table structure for book_type
-- ----------------------------
DROP TABLE IF EXISTS `book_type`;
CREATE TABLE `book_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_type
-- ----------------------------
INSERT INTO `book_type` VALUES (1, 'java');
INSERT INTO `book_type` VALUES (2, 'c++');
INSERT INTO `book_type` VALUES (4, 'java12');

-- ----------------------------
-- Table structure for borrowing
-- ----------------------------
DROP TABLE IF EXISTS `borrowing`;
CREATE TABLE `borrowing`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `book_id` int(11) NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `datetime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrowing
-- ----------------------------
INSERT INTO `borrowing` VALUES (15, 1, 2, 'borrowing', '2023-01-07 20:53:08');
INSERT INTO `borrowing` VALUES (16, 1, 6, 'borrowing', '2023-01-07 20:53:09');
INSERT INTO `borrowing` VALUES (17, 1, 7, 'borrowing', '2023-01-07 20:53:15');
INSERT INTO `borrowing` VALUES (18, 1, 7, 'returning', '2023-01-07 20:53:17');
INSERT INTO `borrowing` VALUES (19, 1, 5, 'borrowing', '2023-01-07 20:53:24');
INSERT INTO `borrowing` VALUES (20, 1, 5, 'returning', '2023-01-07 20:53:26');
INSERT INTO `borrowing` VALUES (21, 2, 8, 'borrowing', '2023-01-12 15:37:51');
INSERT INTO `borrowing` VALUES (22, 2, 1, 'borrowing', '2023-01-12 18:25:34');
INSERT INTO `borrowing` VALUES (23, 2, 1, 'returning', '2023-01-12 18:25:36');

-- ----------------------------
-- Table structure for undergraduate
-- ----------------------------
DROP TABLE IF EXISTS `undergraduate`;
CREATE TABLE `undergraduate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records for undergraduate
-- ----------------------------
INSERT INTO `undergraduate` (`username`, `password`, `phone`) VALUES 
('student1', 'student1pass', '13110000001'),
('student2', 'student2pass', '13110000002');

-- ----------------------------
-- Table structure for postgraduate
-- ----------------------------
DROP TABLE IF EXISTS `postgraduate`;
CREATE TABLE `postgraduate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records for postgraduate
-- ----------------------------
INSERT INTO `postgraduate` (`username`, `password`, `phone`) VALUES 
('graduate1', 'grad1pass', '13120000001'),
('graduate2', 'grad2pass', '13120000002');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records for teacher
-- ----------------------------
INSERT INTO `teacher` (`username`, `password`, `phone`) VALUES 
('teacher1', 'teacher1pass', '13130000001'),
('teacher2', 'teacher2pass', '13130000002');

-- ----------------------------
-- Table structure for newspaper
-- ----------------------------
DROP TABLE IF EXISTS `newspaper`;
CREATE TABLE `newspaper` (
    `peperNumber` VARCHAR(20) NOT NULL,        -- 报刊编号, 不超过20个字符
    `peperName` VARCHAR(30) NOT NULL,          -- 报刊名, 最多30个汉字
    `peperLink` VARCHAR(1000) NOT NULL,        -- 报刊访问网址, 最多1000个字符
    PRIMARY KEY (`peperNumber`)                -- 使用报刊编号作为主键
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records for newspaper
-- ----------------------------
INSERT INTO `newspaper` (`peperNumber`, `peperName`, `peperLink`)
VALUES ('200321232', '人民网', 'http://www.people.com.cn/');


-- ----------------------------
-- Table structure for thesis
-- ----------------------------
DROP TABLE IF EXISTS `thesis`;
CREATE TABLE `thesis` (
    `paperID` VARCHAR(9) NOT NULL,               -- 论文编号, 主键, varchar(9)
    `paperTitle` VARCHAR(180) NOT NULL,          -- 论文题名, varchar(180)
    `paperAuthor` VARCHAR(60) NOT NULL,          -- 论文作者, varchar(60)
    `paperLanguage` VARCHAR(20) DEFAULT 'chi',   -- 论文语种, varchar(20), 默认值为 chi
    `paperSubject` VARCHAR(60),                  -- 学科门类, varchar(60)
    `paperSecurity` VARCHAR(6),                  -- 保密级别, varchar(6), 可为 “公开”, “秘密”, “机密”
    `authorSort` VARCHAR(6),                     -- 学生类型, varchar(6), 如 “硕士” 或 “博士”
    `degreeYear` DATE,                           -- 学位授予年度, DATE
    `authorSchool` VARCHAR(30) DEFAULT '北京科技大学', -- 培养单位, varchar(30), 默认值为 北京科技大学
    `authorCollege` VARCHAR(60),                 -- 院系, varchar(60)
    `authorMajor` VARCHAR(60),                   -- 专业, varchar(60)
    `paperDirection` VARCHAR(150),               -- 研究方向, varchar(150)
    `authorMentor` VARCHAR(60),                  -- 第一导师姓名, varchar(60)
    `author_mentorSchool` VARCHAR(30),           -- 第一导师单位, varchar(30)
    `paper_finTime` DATE,                        -- 论文完成日期, DATE
    `paper_defenseTime` DATE,                    -- 论文答辩日期, DATE
    `paperEntitle` VARCHAR(200),                 -- 外文题名, varchar(200)
    `paper_keyWord` VARCHAR(180),                -- 关键词（中文）, varchar(180)
    `paper_keyEnword` VARCHAR(100),              -- 关键词（外文）, varchar(100)
    `paperAbstract` VARCHAR(1400),               -- 论文摘要（中文）, varchar(1400)
    `paperEnabstract` VARCHAR(2000),             -- 论文摘要（外文）, varchar(2000)
    `paperClcn` VARCHAR(10),                     -- 中图分类号, varchar(10)
    `auditStatus` VARCHAR(20) DEFAULT '未审核',  -- 审核状态, varchar(20), 默认值为 "未审核"
    `user_id` INT,                               -- 学生ID (外键), 关联学生表的 user_id
    `student_type` VARCHAR(20) DEFAULT '本科生', -- 默认是 '本科生'
    PRIMARY KEY (`paperID`)                     -- 主键为 论文编号
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records for thesis 
-- ----------------------------
INSERT INTO `thesis` (
    `paperID`, `paperTitle`, `paperAuthor`, `paperLanguage`, `paperSubject`, 
    `paperSecurity`, `authorSort`, `degreeYear`, `authorSchool`, `authorCollege`, 
    `authorMajor`, `paperDirection`, `authorMentor`, `author_mentorSchool`, 
    `paper_finTime`, `paper_defenseTime`, `paperEntitle`, `paper_keyWord`, 
    `paper_keyEnword`, `paperAbstract`, `paperEnabstract`, `paperClcn`, `auditStatus`, `user_id`,`student_type`
) VALUES (
    '202201234', '论文题目示例', '张三', 'chi', '计算机科学与技术', '公开', '硕士', 
    '2022-06-30', '北京科技大学', '计算机学院', '计算机科学与技术', '人工智能', '李四', 
    '北京科技大学', '2022-03-10', '2022-05-20', 'Sample Paper Title (English)',   
    '计算机; 人工智能; 数据挖掘', 'Computer; AI; Data Mining', 
    '本文研究了人工智能和数据挖掘技术的应用...', 'This paper studies the application of AI and data mining...', 
    'TP311', '未审核','3','undergraduate'
);

INSERT INTO `thesis` (
    `paperID`, `paperTitle`, `paperAuthor`, `paperLanguage`, `paperSubject`, 
    `paperSecurity`, `authorSort`, `degreeYear`, `authorSchool`, `authorCollege`, 
    `authorMajor`, `paperDirection`, `authorMentor`, `author_mentorSchool`, 
    `paper_finTime`, `paper_defenseTime`, `paperEntitle`, `paper_keyWord`, 
    `paper_keyEnword`, `paperAbstract`, `paperEnabstract`, `paperClcn`, `auditStatus`, `user_id`,`student_type`
) VALUES (
    '202201235', '论文题目示例2', '李四', 'chi', '计算机科学与技术', '公开', '硕士', 
    '2022-06-30', '北京科技大学', '计算机学院', '计算机科学与技术', '人工智能', '李四', 
    '北京科技大学', '2022-03-10', '2022-05-20', 'Sample Paper Title (English)',   
    '计算机; 人工智能; 数据挖掘', 'Computer; AI; Data Mining', 
    '本文研究了人工智能和数据挖掘技术的应用...', 'This paper studies the application of AI and data mining...', 
    'TP311', '未审核','3','undergraduate'
);

-- ----------------------------
-- Table structure for students_archive
-- ----------------------------
DROP TABLE IF EXISTS `students_archive`;
CREATE TABLE `students_archive` (
    `sNumber` VARCHAR(20) NOT NULL,        -- 学号, 20个字符
    `sCollege` VARCHAR(20) NOT NULL,        -- 院系, 20个汉字
    `sClass` VARCHAR(10) NOT NULL,          -- 班级, 10个汉字
    `sName` VARCHAR(20) NOT NULL,           -- 姓名, 20个汉字
    `sYear` VARCHAR(20),                    -- 毕业时间, 20个字符
    `sLocation` VARCHAR(15),                -- 存放位置, 最多15个字符
    `sState` VARCHAR(20) NOT NULL,          -- 档案状态, 最多20个字符
    `sSecurity` VARCHAR(20) NOT NULL,       -- 档案密级, 最多20个字符
    `student_type` VARCHAR(20) DEFAULT 'undergraduate', -- 默认是 'undergraduate'
    `user_id` INT,                          -- 关联用户的ID
    PRIMARY KEY (`sNumber`)                  -- 使用学号作为主键
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records for students_archive
-- ----------------------------
INSERT INTO `students_archive` (`sNumber`, `sCollege`, `sClass`, `sName`, `sYear`, `sLocation`, `sState`, `sSecurity`, `student_type`, `user_id`)
VALUES ('U202142849', '经济管理学院', '管信211', '张三', '', 'O17-44/3411A', '可借阅', '公开', 'undergraduate', 3);

-- ----------------------------
-- Table structure for graduates_archive
-- ----------------------------
DROP TABLE IF EXISTS `graduates_archive`;
CREATE TABLE `graduates_archive` (
    `hsNumber` VARCHAR(20) NOT NULL,        -- 学号, 20个字符
    `hsCollege` VARCHAR(20) NOT NULL,       -- 院系, 20个汉字
    `hsClass` VARCHAR(10) NOT NULL,         -- 班级, 10个汉字
    `hsName` VARCHAR(20) NOT NULL,          -- 姓名, 20个汉字
    `hsYear` DATE,                          -- 毕业年份, 日期型
    `hsDevelopment` VARCHAR(20),            -- 毕业去向, 20个字
    `hsLocation` VARCHAR(15),               -- 存放位置, 最多15个字符
    `hsState` VARCHAR(20) NOT NULL,         -- 档案状态, 最多20个字符
    `hsSecurity` VARCHAR(20) NOT NULL,      -- 档案密级, 最多20个字符
    `hsStudent_type` VARCHAR(20) DEFAULT 'undergraduate', -- 默认是 'undergraduate'
    `hsUser_id` INT,                          -- 关联用户的ID
    PRIMARY KEY (`hsNumber`)                 -- 使用学号作为主键
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records for graduates_archive
-- ----------------------------
INSERT INTO `graduates_archive` (`hsNumber`, `hsCollege`, `hsClass`, `hsName`, `hsYear`, `hsDevelopment`, `hsLocation`, `hsState`, `hsSecurity`, `hsStudent_type`, `hsUser_id`)
VALUES ('U202142849', '经济管理学院', '管信211', '张三', '2024-01-01', '北京大学(考研）', 'O17-44/3411A', '可借阅', '公开', 'undergraduate', 3);

-- ----------------------------
-- Table structure for teachers_archive
-- ----------------------------
DROP TABLE IF EXISTS `teachers_archive`;
CREATE TABLE `teachers_archive` (
    `tNumber` VARCHAR(20) NOT NULL,        -- 教师编号, 20个字符（包含字母和数字）
    `tCollege` VARCHAR(20) NOT NULL,        -- 院系, 20个汉字
    `tCourse` VARCHAR(20) NOT NULL,         -- 教职工学科, 20个汉字
    `tName` VARCHAR(20) NOT NULL,           -- 姓名, 20个汉字
    `tLocation` VARCHAR(15),                -- 存放位置, 最多15个字符
    `tState` VARCHAR(20) NOT NULL,          -- 档案状态, 最多20个字符
    `tSecurity` VARCHAR(20) NOT NULL,       -- 档案密级, 最多20个字符
    `tUser_id` INT,                          -- 关联用户的ID
    PRIMARY KEY (`tNumber`)                  -- 使用教师编号作为主键
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records for teachers_archive
-- ----------------------------
INSERT INTO `teachers_archive` (`tNumber`, `tCollege`, `tCourse`, `tName`, `tLocation`, `tState`, `tSecurity`, `tUser_id`)
VALUES ('T0001', '经济管理学院', '管理科学与工程', '王莹', 'O17-44/3411A', '可借阅', '公开', 3);

