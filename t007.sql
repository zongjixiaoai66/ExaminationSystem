/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t007`;
CREATE DATABASE IF NOT EXISTS `t007` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t007`;

DROP TABLE IF EXISTS `c3p0testtable`;
CREATE TABLE IF NOT EXISTS `c3p0testtable` (
  `a` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `c3p0testtable`;

DROP TABLE IF EXISTS `classinfo`;
CREATE TABLE IF NOT EXISTS `classinfo` (
  `classId` int NOT NULL AUTO_INCREMENT,
  `className` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gradeId` int NOT NULL,
  `teacherId` int DEFAULT NULL,
  PRIMARY KEY (`classId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `classinfo`;
INSERT INTO `classinfo` (`classId`, `className`, `gradeId`, `teacherId`) VALUES
	(21, '软件工程', 7, 23),
	(22, '物联网', 8, 25),
	(23, '计算机科学与技术', 7, 26),
	(24, '计算机网络', 8, 24),
	(25, '无人机', 10, 27),
	(27, '电子信息工程', 10, 28);

DROP TABLE IF EXISTS `courseinfo`;
CREATE TABLE IF NOT EXISTS `courseinfo` (
  `courseId` int NOT NULL AUTO_INCREMENT,
  `courseName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division` int DEFAULT '0',
  `gradeId` int DEFAULT NULL,
  PRIMARY KEY (`courseId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `courseinfo`;
INSERT INTO `courseinfo` (`courseId`, `courseName`, `division`, `gradeId`) VALUES
	(12, 'Java程序设计', 2, 7),
	(13, '网页制作', 2, 7),
	(14, '近代史', 1, 8),
	(15, 'MySQL数据库', 2, 8),
	(16, 'Spring框架技术', 2, 10),
	(17, '计算机基础', 2, 7),
	(18, '英语', 1, 9);

DROP TABLE IF EXISTS `examchooseinfo`;
CREATE TABLE IF NOT EXISTS `examchooseinfo` (
  `chooseId` int NOT NULL AUTO_INCREMENT,
  `studentId` int NOT NULL,
  `examPaperId` int NOT NULL,
  `subjectId` int NOT NULL,
  `chooseResult` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chooseError` varchar(3000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'SQL有错误的情况',
  PRIMARY KEY (`chooseId`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `examchooseinfo`;
INSERT INTO `examchooseinfo` (`chooseId`, `studentId`, `examPaperId`, `subjectId`, `chooseResult`, `chooseError`) VALUES
	(84, 19, 21, 6607, 'D', NULL),
	(85, 19, 21, 6608, 'A,C,D', NULL),
	(86, 19, 21, 6609, 'C', NULL),
	(87, 19, 21, 6610, 'B', NULL),
	(88, 19, 21, 6611, 'B', NULL),
	(89, 19, 21, 6612, 'A', NULL),
	(90, 19, 21, 6613, 'C', NULL),
	(91, 19, 21, 6614, 'A,B,D', NULL),
	(92, 19, 21, 6615, '系统中一切皆为对象；对象是属性及其操作的封装体；对象可按其性质划分为类，对象成为类的实例；实例关系和继承关系是对象之间的静态关系；消息传递是对象之间动态联系的唯一形式。', NULL),
	(93, 19, 21, 6616, '有四个，分别是public、private、protected、private protected', NULL),
	(94, 19, 22, 6617, 'D', NULL),
	(95, 19, 22, 6618, 'A,B', NULL),
	(96, 19, 22, 6619, 'D', NULL),
	(97, 19, 22, 6620, 'B', NULL),
	(98, 19, 22, 6621, 'B', NULL),
	(99, 19, 22, 6622, 'A', NULL),
	(100, 19, 22, 6623, 'B', NULL),
	(101, 19, 22, 6624, 'A,B', NULL),
	(102, 19, 22, 6625, '封装、继承、多态', NULL),
	(103, 19, 22, 6626, 'private、public等', NULL),
	(104, 23, 22, 6617, 'D', NULL),
	(105, 23, 22, 6618, 'A,B', NULL),
	(106, 23, 22, 6619, 'C', NULL),
	(107, 23, 22, 6620, 'B', NULL),
	(108, 23, 22, 6621, 'B', NULL),
	(109, 23, 22, 6622, 'A', NULL),
	(110, 23, 22, 6623, 'C', NULL),
	(111, 23, 22, 6624, 'A,B,D', NULL),
	(112, 23, 22, 6625, '系统中一切皆为对象；对象是属性及其操作的封装体；对象可按其性质划分为类，对象成为类的实例；实例关系和继承关系是对象之间的静态关系；消息传递是对象之间动态联系的唯一形式，也是计算的唯一形式；方法是消息的序列', NULL),
	(113, 23, 22, 6626, '有四个，分别是public、private、protected、private protected', NULL),
	(114, 19, 23, 6627, 'D', NULL),
	(115, 19, 23, 6628, 'A,C,D', NULL),
	(116, 19, 23, 6629, 'C', NULL),
	(117, 19, 23, 6630, 'B', NULL),
	(118, 19, 23, 6631, 'B', NULL),
	(119, 19, 23, 6632, 'A', NULL),
	(120, 19, 23, 6633, 'C', NULL),
	(121, 19, 23, 6634, 'A,B,D', NULL),
	(122, 19, 23, 6635, '系统中一切皆是对象；对象是属性及其操作的封装体；对象可按其性质划分为类，对象成为类的实例；实例关系和继承关系是对象之间的静态关系；消息传递是对象之间动态联系的唯一形式，也是计算的唯一形式；方法是消息的序列', NULL),
	(123, 19, 23, 6636, '有四个，分别是public、private、protected、private protected', NULL),
	(124, 23, 21, 6607, 'D', NULL),
	(125, 23, 21, 6608, 'A,C,D', NULL),
	(126, 23, 21, 6609, 'C', NULL),
	(127, 23, 21, 6610, 'B', NULL),
	(128, 23, 21, 6611, 'B', NULL),
	(129, 23, 21, 6612, 'A', NULL),
	(130, 23, 21, 6613, 'C', NULL),
	(131, 23, 21, 6614, 'A,B,D', NULL),
	(132, 19, 24, 6637, 'B', NULL),
	(133, 19, 24, 6639, 'B', NULL),
	(134, 19, 24, 6640, 'B', NULL),
	(135, 19, 24, 6641, 'C', NULL),
	(136, 19, 24, 6642, 'D', NULL),
	(137, 19, 24, 6643, 'D', NULL),
	(138, 19, 24, 6645, '22', NULL),
	(139, 19, 24, 6646, '223322', NULL);

DROP TABLE IF EXISTS `examhistoryinfo`;
CREATE TABLE IF NOT EXISTS `examhistoryinfo` (
  `historyId` int NOT NULL AUTO_INCREMENT,
  `studentId` int NOT NULL,
  `examPaperId` int NOT NULL,
  `examScore` int DEFAULT NULL,
  `beginTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`historyId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

DELETE FROM `examhistoryinfo`;
INSERT INTO `examhistoryinfo` (`historyId`, `studentId`, `examPaperId`, `examScore`, `beginTime`) VALUES
	(17, 19, 21, 90, '2021-07-29 02:00:05'),
	(18, 19, 22, 40, '2021-07-30 03:01:18'),
	(19, 23, 22, 90, '2021-07-31 02:01:29'),
	(20, 19, 23, 100, '2021-07-31 02:18:00'),
	(23, 23, 21, 80, '2021-07-31 02:58:06'),
	(24, 19, 24, 10, '2023-12-07 12:27:23');

DROP TABLE IF EXISTS `exampaperinfo`;
CREATE TABLE IF NOT EXISTS `exampaperinfo` (
  `examPaperId` int NOT NULL AUTO_INCREMENT,
  `examPaperName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subjectNum` int NOT NULL,
  `examPaperTime` int NOT NULL,
  `examPaperScore` int NOT NULL,
  `gradeId` int NOT NULL,
  `division` int DEFAULT '0',
  `examPaperEasy` int DEFAULT '1',
  PRIMARY KEY (`examPaperId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `exampaperinfo`;
INSERT INTO `exampaperinfo` (`examPaperId`, `examPaperName`, `subjectNum`, `examPaperTime`, `examPaperScore`, `gradeId`, `division`, `examPaperEasy`) VALUES
	(21, '《Java程序设计》期末测试', 10, 120, 100, 7, 2, 0),
	(22, '《MySQL数据库》期末测试', 10, 120, 100, 8, 2, 0),
	(23, '《网页制作》期中测试', 10, 120, 100, 9, 2, 1),
	(24, '《计算机基础》期末测试', 10, 120, 100, 7, 2, 0);

DROP TABLE IF EXISTS `examplaninfo`;
CREATE TABLE IF NOT EXISTS `examplaninfo` (
  `examPlanId` int NOT NULL AUTO_INCREMENT,
  `courseId` int NOT NULL,
  `classId` int NOT NULL,
  `examPaperId` int NOT NULL,
  `beginTime` datetime NOT NULL,
  PRIMARY KEY (`examPlanId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `examplaninfo`;
INSERT INTO `examplaninfo` (`examPlanId`, `courseId`, `classId`, `examPaperId`, `beginTime`) VALUES
	(13, 13, 21, 23, '2023-12-07 19:40:40'),
	(15, 17, 21, 24, '2023-12-07 19:41:40');

DROP TABLE IF EXISTS `examsubjectmiddleinfo`;
CREATE TABLE IF NOT EXISTS `examsubjectmiddleinfo` (
  `esmId` int NOT NULL AUTO_INCREMENT,
  `examPaperId` int NOT NULL,
  `subjectId` int NOT NULL,
  PRIMARY KEY (`esmId`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `examsubjectmiddleinfo`;
INSERT INTO `examsubjectmiddleinfo` (`esmId`, `examPaperId`, `subjectId`) VALUES
	(168, 21, 6607),
	(169, 21, 6608),
	(170, 21, 6609),
	(171, 21, 6610),
	(172, 21, 6611),
	(173, 21, 6612),
	(174, 21, 6613),
	(175, 21, 6614),
	(176, 21, 6615),
	(177, 21, 6616),
	(178, 22, 6617),
	(179, 22, 6618),
	(180, 22, 6619),
	(181, 22, 6620),
	(182, 22, 6621),
	(183, 22, 6622),
	(184, 22, 6623),
	(185, 22, 6624),
	(186, 22, 6625),
	(187, 22, 6626),
	(188, 23, 6627),
	(189, 23, 6628),
	(190, 23, 6629),
	(191, 23, 6630),
	(192, 23, 6631),
	(193, 23, 6632),
	(194, 23, 6633),
	(195, 23, 6634),
	(196, 23, 6635),
	(197, 23, 6636),
	(198, 24, 6637),
	(199, 24, 6638),
	(200, 24, 6639),
	(201, 24, 6640),
	(202, 24, 6641),
	(203, 24, 6642),
	(204, 24, 6643),
	(205, 24, 6644),
	(206, 24, 6645),
	(207, 24, 6646);

DROP TABLE IF EXISTS `gradeinfo`;
CREATE TABLE IF NOT EXISTS `gradeinfo` (
  `gradeId` int NOT NULL AUTO_INCREMENT,
  `gradeName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`gradeId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `gradeinfo`;
INSERT INTO `gradeinfo` (`gradeId`, `gradeName`) VALUES
	(7, '大一'),
	(8, '大二'),
	(9, '大三'),
	(10, '大四');

DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE IF NOT EXISTS `studentinfo` (
  `studentId` int NOT NULL AUTO_INCREMENT,
  `studentName` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `studentAccount` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `studentPwd` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classId` int NOT NULL,
  PRIMARY KEY (`studentId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `studentinfo`;
INSERT INTO `studentinfo` (`studentId`, `studentName`, `studentAccount`, `studentPwd`, `classId`) VALUES
	(19, '张三', 'zhangsan', '123456', 21),
	(20, '乔七', 'qiaoqi', '123456', 22),
	(21, '赵六', 'zhaoliu', '123456', 21),
	(22, '王五', 'wangwu', '123456', 25),
	(23, '李四', 'lisi', '123456', 23),
	(24, '陈八', 'chenba', '123456', 25);

DROP TABLE IF EXISTS `subjectinfo`;
CREATE TABLE IF NOT EXISTS `subjectinfo` (
  `subjectId` int NOT NULL AUTO_INCREMENT,
  `subjectName` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `optionA` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `optionB` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `optionC` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `optionD` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rightResult` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subjectScore` int NOT NULL,
  `subjectType` int DEFAULT '0',
  `courseId` int NOT NULL,
  `gradeId` int NOT NULL,
  `subjectEasy` int DEFAULT '1',
  `division` int DEFAULT '0',
  PRIMARY KEY (`subjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=6647 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `subjectinfo`;
INSERT INTO `subjectinfo` (`subjectId`, `subjectName`, `optionA`, `optionB`, `optionC`, `optionD`, `rightResult`, `subjectScore`, `subjectType`, `courseId`, `gradeId`, `subjectEasy`, `division`) VALUES
	(6607, '下面哪个方法与public void  aMethod(){...}是重载方法？', 'void  aMethod( ){...}', 'public int  aMethod(){...}', 'public void  aMethod ( ){...} ', 'public int  aMethod ( int m){...}', 'D', 10, 0, 12, 7, 0, 2),
	(6608, '下列说法错误的有', '在类方法中可用this来调用本类的类方法', '在类方法中调用本类的类方法时可直接调用', '在类方法中只能调用本类中的类方法', '在类方法中绝对不能调用实例方法', 'A,C,D', 10, 1, 12, 7, 1, 2),
	(6609, '下列关于自动类型转型的说法中，正确的是', 'char类型数据可以自动转换为任何简单的数据类型的数据', 'char类型数据只能自动转换为int类型数据', 'char类型数据不能自动转换 boolean类型数据', 'char类型不能做自动类型转换', 'C', 10, 0, 12, 7, 1, 2),
	(6610, '编译Java程序后生成的面向JVM的字节码文件的扩展名是', '.java', '.class', '.obj', '.exe', 'B', 10, 0, 12, 7, 0, 2),
	(6611, 'Java的核心包中，提供编程应用的基本类的包是', 'java.util', 'java.lang', 'java.applet', 'java.sql', 'B', 10, 0, 12, 7, 0, 2),
	(6612, '下面关于包的描述中，错误的是', '包是若干对象的集合', '使用package语句创建包', '使用import语句引入包', '包分为有名包和无名包两种', 'A', 10, 0, 12, 7, 0, 2),
	(6613, '下列标识符（名字）命名原则中，正确的是', '类名的首字母小写', '接口名的首字母小写', '常量全部大写', '变量名和方法名的首字母大写', 'C', 10, 0, 12, 7, 0, 2),
	(6614, '能指定字符编码的I/O流类型是', 'Reader', 'InputStreamReader', 'BufferedReader', 'Writer', 'A,B,D', 10, 1, 12, 7, 2, 2),
	(6615, '简述面向对象的基本思想、主要特征和基本要素', '', '', '', '', '系统中一切皆为对象；对象是属性及其操作的封装体；对象可按其性质划分为类，对象成为类的实例；实例关系和继承关系是对象之间的静态关系；消息传递是对象之间动态联系的唯一形式，也是计算的唯一形式；方法是消息的序列', 10, 2, 12, 7, 1, 2),
	(6616, 'Java中成员方法有哪些修饰符', '', '', '', '', '有四个，分别是public、private、protected、private protected', 10, 2, 12, 7, 0, 2),
	(6617, '下面哪个方法与public void  aMethod(){...}是重载方法？', 'void  aMethod( ){...}', 'public int  aMethod(){...}', 'public void  aMethod ( ){...} ', 'public int  aMethod ( int m){...}', 'D', 10, 0, 15, 8, 0, 2),
	(6618, '下列说法错误的有', '在类方法中可用this来调用本类的类方法', '在类方法中调用本类的类方法时可直接调用', '在类方法中只能调用本类中的类方法', '在类方法中绝对不能调用实例方法', 'A,C,D', 10, 1, 15, 8, 1, 2),
	(6619, '下列关于自动类型转型的说法中，正确的是', 'char类型数据可以自动转换为任何简单的数据类型的数据', 'char类型数据只能自动转换为int类型数据', 'char类型数据不能自动转换 boolean类型数据', 'char类型不能做自动类型转换', 'C', 10, 0, 15, 8, 1, 2),
	(6620, '编译Java程序后生成的面向JVM的字节码文件的扩展名是', '.java', '.class', '.obj', '.exe', 'B', 10, 0, 15, 8, 0, 2),
	(6621, 'Java的核心包中，提供编程应用的基本类的包是', 'java.util', 'java.lang', 'java.applet', 'java.sql', 'B', 10, 0, 15, 8, 0, 2),
	(6622, '下面关于包的描述中，错误的是', '包是若干对象的集合', '使用package语句创建包', '使用import语句引入包', '包分为有名包和无名包两种', 'A', 10, 0, 15, 8, 0, 2),
	(6623, '下列标识符（名字）命名原则中，正确的是', '类名的首字母小写', '接口名的首字母小写', '常量全部大写', '变量名和方法名的首字母大写', 'C', 10, 0, 15, 8, 0, 2),
	(6624, '能指定字符编码的I/O流类型是', 'Reader', 'InputStreamReader', 'BufferedReader', 'Writer', 'A,B,D', 10, 1, 15, 8, 2, 2),
	(6625, '简述面向对象的基本思想、主要特征和基本要素', '', '', '', '', '系统中一切皆为对象；对象是属性及其操作的封装体；对象可按其性质划分为类，对象成为类的实例；实例关系和继承关系是对象之间的静态关系；消息传递是对象之间动态联系的唯一形式，也是计算的唯一形式；方法是消息的序列', 10, 2, 15, 8, 1, 2),
	(6626, 'Java中成员方法有哪些修饰符', '', '', '', '', '有四个，分别是public、private、protected、private protected', 10, 2, 15, 8, 0, 2),
	(6627, '下面哪个方法与public void  aMethod(){...}是重载方法？', 'void  aMethod( ){...}', 'public int  aMethod(){...}', 'public void  aMethod ( ){...} ', 'public int  aMethod ( int m){...}', 'D', 10, 0, 13, 9, 0, 2),
	(6628, '下列说法错误的有', '在类方法中可用this来调用本类的类方法', '在类方法中调用本类的类方法时可直接调用', '在类方法中只能调用本类中的类方法', '在类方法中绝对不能调用实例方法', 'A,C,D', 10, 1, 13, 9, 1, 2),
	(6629, '下列关于自动类型转型的说法中，正确的是', 'char类型数据可以自动转换为任何简单的数据类型的数据', 'char类型数据只能自动转换为int类型数据', 'char类型数据不能自动转换 boolean类型数据', 'char类型不能做自动类型转换', 'C', 10, 0, 13, 9, 1, 2),
	(6630, '编译Java程序后生成的面向JVM的字节码文件的扩展名是', '.java', '.class', '.obj', '.exe', 'B', 10, 0, 13, 9, 0, 2),
	(6631, 'Java的核心包中，提供编程应用的基本类的包是', 'java.util', 'java.lang', 'java.applet', 'java.sql', 'B', 10, 0, 13, 9, 0, 2),
	(6632, '下面关于包的描述中，错误的是', '包是若干对象的集合', '使用package语句创建包', '使用import语句引入包', '包分为有名包和无名包两种', 'A', 10, 0, 13, 9, 0, 2),
	(6633, '下列标识符（名字）命名原则中，正确的是', '类名的首字母小写', '接口名的首字母小写', '常量全部大写', '变量名和方法名的首字母大写', 'C', 10, 0, 13, 9, 0, 2),
	(6634, '能指定字符编码的I/O流类型是', 'Reader', 'InputStreamReader', 'BufferedReader', 'Writer', 'A,B,D', 10, 1, 13, 9, 2, 2),
	(6635, '简述面向对象的基本思想、主要特征和基本要素', '', '', '', '', '系统中一切皆为对象；对象是属性及其操作的封装体；对象可按其性质划分为类，对象成为类的实例；实例关系和继承关系是对象之间的静态关系；消息传递是对象之间动态联系的唯一形式，也是计算的唯一形式；方法是消息的序列', 10, 2, 13, 9, 1, 2),
	(6636, 'Java中成员方法有哪些修饰符', '', '', '', '', '有四个，分别是public、private、protected、private protected', 10, 2, 13, 9, 0, 2),
	(6637, '下面哪个方法与public void  aMethod(){...}是重载方法？', 'void  aMethod( ){...}', 'public int  aMethod(){...}', 'public void  aMethod ( ){...} ', 'public int  aMethod ( int m){...}', 'D', 10, 0, 17, 7, 0, 2),
	(6638, '下列说法错误的有', '在类方法中可用this来调用本类的类方法', '在类方法中调用本类的类方法时可直接调用', '在类方法中只能调用本类中的类方法', '在类方法中绝对不能调用实例方法', 'A,C,D', 10, 1, 17, 7, 1, 2),
	(6639, '下列关于自动类型转型的说法中，正确的是', 'char类型数据可以自动转换为任何简单的数据类型的数据', 'char类型数据只能自动转换为int类型数据', 'char类型数据不能自动转换 boolean类型数据', 'char类型不能做自动类型转换', 'C', 10, 0, 17, 7, 1, 2),
	(6640, '编译Java程序后生成的面向JVM的字节码文件的扩展名是', '.java', '.class', '.obj', '.exe', 'B', 10, 0, 17, 7, 0, 2),
	(6641, 'Java的核心包中，提供编程应用的基本类的包是', 'java.util', 'java.lang', 'java.applet', 'java.sql', 'B', 10, 0, 17, 7, 0, 2),
	(6642, '下面关于包的描述中，错误的是', '包是若干对象的集合', '使用package语句创建包', '使用import语句引入包', '包分为有名包和无名包两种', 'A', 10, 0, 17, 7, 0, 2),
	(6643, '下列标识符（名字）命名原则中，正确的是', '类名的首字母小写', '接口名的首字母小写', '常量全部大写', '变量名和方法名的首字母大写', 'C', 10, 0, 17, 7, 0, 2),
	(6644, '能指定字符编码的I/O流类型是', 'Reader', 'InputStreamReader', 'BufferedReader', 'Writer', 'A,B,D', 10, 1, 17, 7, 2, 2),
	(6645, '简述面向对象的基本思想、主要特征和基本要素', '', '', '', '', '系统中一切皆为对象；对象是属性及其操作的封装体；对象可按其性质划分为类，对象成为类的实例；实例关系和继承关系是对象之间的静态关系；消息传递是对象之间动态联系的唯一形式，也是计算的唯一形式；方法是消息的序列', 10, 2, 17, 7, 1, 2),
	(6646, 'Java中成员方法有哪些修饰符', '', '', '', '', '有四个，分别是public、private、protected、private protected', 10, 2, 17, 7, 0, 2);

DROP TABLE IF EXISTS `teacherinfo`;
CREATE TABLE IF NOT EXISTS `teacherinfo` (
  `teacherId` int NOT NULL AUTO_INCREMENT,
  `teacherName` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacherAccount` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacherPwd` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adminPower` int DEFAULT '0',
  `isWork` int DEFAULT '0',
  PRIMARY KEY (`teacherId`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `teacherinfo`;
INSERT INTO `teacherinfo` (`teacherId`, `teacherName`, `teacherAccount`, `teacherPwd`, `adminPower`, `isWork`) VALUES
	(1, '管理员', 'admin', '123456', 1, 1),
	(23, '汤姆', 'tom', '123456', 0, 0),
	(24, '杰克', 'jack', '123456', 0, 1),
	(25, '陈明', 'chenming', '123456', 0, 0),
	(26, '袁飞艳', 'yuanfeiyan', '123456', 0, 1),
	(27, '赵亮', 'zhaoliang', '123456', 0, 1),
	(28, '唐超', 'tangchao', '123456', 0, 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
