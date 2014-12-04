/*
Navicat MySQL Data Transfer

Source Server         : ABC
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : estorespring

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2014-12-04 10:17:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `Id` varchar(20) NOT NULL COMMENT 'Mã khách hàng',
  `Password` varchar(50) NOT NULL COMMENT 'Mật khẩu đăng nhập',
  `Fullname` varchar(50) NOT NULL COMMENT 'Họ và tên',
  `Email` varchar(50) NOT NULL COMMENT 'Email',
  `Photo` varchar(50) NOT NULL COMMENT 'Hình',
  `role` varchar(45) DEFAULT NULL,
  `Activated` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Trạng thái kích hoạt',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã loại',
  `Name` varchar(50) NOT NULL COMMENT 'Tên chủng loại (việt ngữ)',
  `status` varchar(45) DEFAULT 'open',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1018 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1000', 'Đồng hồ đeo tay', 'open');
INSERT INTO `categories` VALUES ('1001', 'Máy tính xách tay', 'open');
INSERT INTO `categories` VALUES ('1002', 'Máy ảnh', 'open');
INSERT INTO `categories` VALUES ('1003', 'Điện thoại', 'open');
INSERT INTO `categories` VALUES ('1004', 'Nước hoa', 'open');
INSERT INTO `categories` VALUES ('1005', 'Nữ trang', 'open');
INSERT INTO `categories` VALUES ('1006', 'Giày thời trang', 'open');
INSERT INTO `categories` VALUES ('1007', 'Túi xách du lịch', 'open');
INSERT INTO `categories` VALUES ('1013', 'Giầy thể thao', 'open');
INSERT INTO `categories` VALUES ('1014', 'Dụng cụ thể thao', 'open');
INSERT INTO `categories` VALUES ('1015', 'Đồ thể thao', 'open');
INSERT INTO `categories` VALUES ('1016', 'Sách tin học', 'open');
INSERT INTO `categories` VALUES ('1017', 'Sách tiếng anh', 'open');

-- ----------------------------
-- Table structure for `categories_categorypaterns`
-- ----------------------------
DROP TABLE IF EXISTS `categories_categorypaterns`;
CREATE TABLE `categories_categorypaterns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcategories` int(11) DEFAULT NULL,
  `idpatern` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_detail_catogeries_idx` (`idcategories`),
  KEY `fk_detail_catogeriespatern_idx` (`idpatern`),
  CONSTRAINT `fk_detail_catogeries` FOREIGN KEY (`idcategories`) REFERENCES `categories` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detail_catogeriespatern` FOREIGN KEY (`idpatern`) REFERENCES `categorypaterns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories_categorypaterns
-- ----------------------------
INSERT INTO `categories_categorypaterns` VALUES ('1', '1000', '2');
INSERT INTO `categories_categorypaterns` VALUES ('2', '1001', '1');
INSERT INTO `categories_categorypaterns` VALUES ('3', '1002', '2');
INSERT INTO `categories_categorypaterns` VALUES ('4', '1003', '1');
INSERT INTO `categories_categorypaterns` VALUES ('5', '1004', '3');
INSERT INTO `categories_categorypaterns` VALUES ('6', '1005', '3');
INSERT INTO `categories_categorypaterns` VALUES ('7', '1006', '4');
INSERT INTO `categories_categorypaterns` VALUES ('8', '1007', '4');
INSERT INTO `categories_categorypaterns` VALUES ('9', '1013', '5');
INSERT INTO `categories_categorypaterns` VALUES ('10', '1014', '5');
INSERT INTO `categories_categorypaterns` VALUES ('11', '1015', '5');
INSERT INTO `categories_categorypaterns` VALUES ('12', '1016', '6');
INSERT INTO `categories_categorypaterns` VALUES ('13', '1017', '6');

-- ----------------------------
-- Table structure for `categories_products`
-- ----------------------------
DROP TABLE IF EXISTS `categories_products`;
CREATE TABLE `categories_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idproduct` int(11) DEFAULT NULL,
  `idcatogery` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_products_idx` (`idproduct`),
  KEY `fk_catogery_idx` (`idcatogery`),
  CONSTRAINT `fk_products` FOREIGN KEY (`idproduct`) REFERENCES `products` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_catogery` FOREIGN KEY (`idcatogery`) REFERENCES `categories` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories_products
-- ----------------------------
INSERT INTO `categories_products` VALUES ('1', '1001', '1000');
INSERT INTO `categories_products` VALUES ('2', '1002', '1000');
INSERT INTO `categories_products` VALUES ('3', '1003', '1001');
INSERT INTO `categories_products` VALUES ('4', '1004', '1001');
INSERT INTO `categories_products` VALUES ('5', '1005', '1002');
INSERT INTO `categories_products` VALUES ('6', '1006', '1001');
INSERT INTO `categories_products` VALUES ('7', '1007', '1006');
INSERT INTO `categories_products` VALUES ('8', '1008', '1001');
INSERT INTO `categories_products` VALUES ('9', '1009', '1005');
INSERT INTO `categories_products` VALUES ('10', '1010', '1007');
INSERT INTO `categories_products` VALUES ('11', '1011', '1003');
INSERT INTO `categories_products` VALUES ('12', '1012', '1003');
INSERT INTO `categories_products` VALUES ('13', '1013', '1007');
INSERT INTO `categories_products` VALUES ('14', '1014', '1006');
INSERT INTO `categories_products` VALUES ('15', '1015', '1001');
INSERT INTO `categories_products` VALUES ('16', '1016', '1002');
INSERT INTO `categories_products` VALUES ('17', '1017', '1005');
INSERT INTO `categories_products` VALUES ('18', '1018', '1007');
INSERT INTO `categories_products` VALUES ('19', '1019', '1002');
INSERT INTO `categories_products` VALUES ('20', '1020', '1002');
INSERT INTO `categories_products` VALUES ('21', '1021', '1002');
INSERT INTO `categories_products` VALUES ('22', '1022', '1004');
INSERT INTO `categories_products` VALUES ('23', '1023', '1004');
INSERT INTO `categories_products` VALUES ('24', '1024', '1000');
INSERT INTO `categories_products` VALUES ('25', '1025', '1002');
INSERT INTO `categories_products` VALUES ('26', '1026', '1002');
INSERT INTO `categories_products` VALUES ('27', '1027', '1002');
INSERT INTO `categories_products` VALUES ('28', '1028', '1006');
INSERT INTO `categories_products` VALUES ('29', '1029', '1005');
INSERT INTO `categories_products` VALUES ('30', '1030', '1007');
INSERT INTO `categories_products` VALUES ('31', '1031', '1003');
INSERT INTO `categories_products` VALUES ('32', '1032', '1003');
INSERT INTO `categories_products` VALUES ('33', '1033', '1003');
INSERT INTO `categories_products` VALUES ('34', '1034', '1000');
INSERT INTO `categories_products` VALUES ('35', '1035', '1000');
INSERT INTO `categories_products` VALUES ('36', '1036', '1007');
INSERT INTO `categories_products` VALUES ('37', '1037', '1007');
INSERT INTO `categories_products` VALUES ('38', '1038', '1000');
INSERT INTO `categories_products` VALUES ('39', '1039', '1000');
INSERT INTO `categories_products` VALUES ('40', '1040', '1007');
INSERT INTO `categories_products` VALUES ('41', '1041', '1007');
INSERT INTO `categories_products` VALUES ('42', '1042', '1004');
INSERT INTO `categories_products` VALUES ('43', '1043', '1000');
INSERT INTO `categories_products` VALUES ('44', '1044', '1001');
INSERT INTO `categories_products` VALUES ('45', '1045', '1007');
INSERT INTO `categories_products` VALUES ('46', '1046', '1007');
INSERT INTO `categories_products` VALUES ('47', '1047', '1002');
INSERT INTO `categories_products` VALUES ('48', '1048', '1002');
INSERT INTO `categories_products` VALUES ('49', '1049', '1002');
INSERT INTO `categories_products` VALUES ('50', '1050', '1002');
INSERT INTO `categories_products` VALUES ('51', '1051', '1006');
INSERT INTO `categories_products` VALUES ('52', '1052', '1004');
INSERT INTO `categories_products` VALUES ('53', '1053', '1005');
INSERT INTO `categories_products` VALUES ('54', '1054', '1005');
INSERT INTO `categories_products` VALUES ('55', '1055', '1005');
INSERT INTO `categories_products` VALUES ('56', '1056', '1004');
INSERT INTO `categories_products` VALUES ('57', '1057', '1004');
INSERT INTO `categories_products` VALUES ('58', '1058', '1007');
INSERT INTO `categories_products` VALUES ('59', '1059', '1003');
INSERT INTO `categories_products` VALUES ('60', '1060', '1003');
INSERT INTO `categories_products` VALUES ('61', '1061', '1001');
INSERT INTO `categories_products` VALUES ('62', '1062', '1002');
INSERT INTO `categories_products` VALUES ('63', '1063', '1001');
INSERT INTO `categories_products` VALUES ('64', '1064', '1004');
INSERT INTO `categories_products` VALUES ('65', '1065', '1001');
INSERT INTO `categories_products` VALUES ('66', '1066', '1001');
INSERT INTO `categories_products` VALUES ('67', '1067', '1000');
INSERT INTO `categories_products` VALUES ('68', '1068', '1002');
INSERT INTO `categories_products` VALUES ('69', '1069', '1003');
INSERT INTO `categories_products` VALUES ('70', '1070', '1000');
INSERT INTO `categories_products` VALUES ('78', '1071', '1003');
INSERT INTO `categories_products` VALUES ('79', '1072', '1003');
INSERT INTO `categories_products` VALUES ('80', '1073', '1007');
INSERT INTO `categories_products` VALUES ('81', '1074', '1006');
INSERT INTO `categories_products` VALUES ('82', '1075', '1000');
INSERT INTO `categories_products` VALUES ('83', '1076', '1000');
INSERT INTO `categories_products` VALUES ('84', '1077', '1001');

-- ----------------------------
-- Table structure for `categorypaterns`
-- ----------------------------
DROP TABLE IF EXISTS `categorypaterns`;
CREATE TABLE `categorypaterns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'open',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categorypaterns
-- ----------------------------
INSERT INTO `categorypaterns` VALUES ('1', 'Điện thoại, máy tính', 'open');
INSERT INTO `categorypaterns` VALUES ('2', 'Điện tử', 'open');
INSERT INTO `categorypaterns` VALUES ('3', 'Trang sức', 'open');
INSERT INTO `categorypaterns` VALUES ('4', 'Thời trang', 'open');
INSERT INTO `categorypaterns` VALUES ('5', 'Thể thao', 'open');
INSERT INTO `categorypaterns` VALUES ('6', 'Sách', 'open');

-- ----------------------------
-- Table structure for `orderdetails`
-- ----------------------------
DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE `orderdetails` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã chi tiết',
  `OrderId` int(11) NOT NULL COMMENT 'Mã hóa đơn',
  `ProductId` int(11) NOT NULL COMMENT 'Mã hàng hóa',
  `UnitPrice` double NOT NULL DEFAULT '0' COMMENT 'Đơn giá bán',
  `Quantity` int(11) NOT NULL DEFAULT '1' COMMENT 'Số lượng mua',
  `Discount` double NOT NULL DEFAULT '0' COMMENT 'Mức giảm giá của mặt hàng',
  PRIMARY KEY (`Id`),
  KEY `FK_OrderDetails_Orders` (`OrderId`),
  KEY `FK_OrderDetails_Products` (`ProductId`),
  CONSTRAINT `FK_OrderDetails_Orders` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_OrderDetails_Products` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdetails
-- ----------------------------

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã hóa đơn',
  `CustomerId` varchar(20) NOT NULL COMMENT 'Mã khách hàng',
  `OrderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày đặt hàng',
  `RequireDate` date NOT NULL COMMENT 'Ngày cần có hàng',
  `Receiver` varchar(50) NOT NULL COMMENT 'Tên người nhận',
  `Address` varchar(100) NOT NULL COMMENT 'Địa chỉ nhận',
  `Amount` double NOT NULL DEFAULT '0' COMMENT 'Số tiền thanh toán',
  `Notes` varchar(1000) DEFAULT NULL COMMENT 'Ghi chú thêm',
  `status` varchar(45) DEFAULT 'waiting',
  PRIMARY KEY (`Id`),
  KEY `FK_Orders_Customers` (`CustomerId`),
  CONSTRAINT `FK_Orders_Customers` FOREIGN KEY (`CustomerId`) REFERENCES `account` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for `productprices`
-- ----------------------------
DROP TABLE IF EXISTS `productprices`;
CREATE TABLE `productprices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(45) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `volume` varchar(45) DEFAULT NULL,
  `info` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `idproduct` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_products_idx` (`idproduct`),
  CONSTRAINT `fk_products_prices` FOREIGN KEY (`idproduct`) REFERENCES `products` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of productprices
-- ----------------------------
INSERT INTO `productprices` VALUES ('1', 'Vàng', null, null, null, '19', '1001');
INSERT INTO `productprices` VALUES ('2', 'Xám', null, null, null, '20', '1001');
INSERT INTO `productprices` VALUES ('3', 'Vàng', null, null, null, '19', '1002');
INSERT INTO `productprices` VALUES ('4', 'Xám', null, null, null, '20', '1002');
INSERT INTO `productprices` VALUES ('5', null, null, null, null, '22', '1003');
INSERT INTO `productprices` VALUES ('6', null, null, null, null, '22', '1004');
INSERT INTO `productprices` VALUES ('7', null, null, null, null, '21', '1005');
INSERT INTO `productprices` VALUES ('8', null, null, null, null, '25', '1006');
INSERT INTO `productprices` VALUES ('9', null, null, null, null, '30', '1007');
INSERT INTO `productprices` VALUES ('10', null, null, null, null, '25', '1008');
INSERT INTO `productprices` VALUES ('11', null, null, null, null, '30', '1009');
INSERT INTO `productprices` VALUES ('12', null, null, null, null, '31', '1010');
INSERT INTO `productprices` VALUES ('13', null, null, null, null, '21', '1011');
INSERT INTO `productprices` VALUES ('14', null, null, null, null, '35.5', '1012');
INSERT INTO `productprices` VALUES ('15', null, null, null, null, '50', '1013');
INSERT INTO `productprices` VALUES ('16', null, null, null, null, '61', '1014');
INSERT INTO `productprices` VALUES ('17', null, null, null, null, '73', '1015');
INSERT INTO `productprices` VALUES ('18', null, null, null, null, '22', '1016');
INSERT INTO `productprices` VALUES ('19', null, null, null, null, '30.5', '1017');
INSERT INTO `productprices` VALUES ('20', null, null, null, null, '80', '1018');
INSERT INTO `productprices` VALUES ('21', null, null, null, null, '90', '1019');
INSERT INTO `productprices` VALUES ('22', null, null, null, null, '10', '1020');
INSERT INTO `productprices` VALUES ('23', null, null, null, null, '25', '1021');
INSERT INTO `productprices` VALUES ('24', null, null, null, null, '30', '1022');
INSERT INTO `productprices` VALUES ('25', null, null, null, null, '89', '1023');
INSERT INTO `productprices` VALUES ('26', null, null, null, null, '45.8', '1024');
INSERT INTO `productprices` VALUES ('27', null, null, null, null, '16', '1025');
INSERT INTO `productprices` VALUES ('28', null, null, null, null, '35', '1026');
INSERT INTO `productprices` VALUES ('29', null, null, null, null, '57', '1027');
INSERT INTO `productprices` VALUES ('30', null, null, null, null, '89', '1028');
INSERT INTO `productprices` VALUES ('31', null, null, null, null, '28', '1029');
INSERT INTO `productprices` VALUES ('32', null, null, null, null, '46', '1030');
INSERT INTO `productprices` VALUES ('33', null, null, null, '', '56', '1031');
INSERT INTO `productprices` VALUES ('34', null, null, null, null, '78', '1032');
INSERT INTO `productprices` VALUES ('35', null, null, null, null, '45', '1033');
INSERT INTO `productprices` VALUES ('36', null, null, null, null, '67', '1034');
INSERT INTO `productprices` VALUES ('37', null, null, null, null, '23', '1035');
INSERT INTO `productprices` VALUES ('38', null, null, null, null, '34', '1036');
INSERT INTO `productprices` VALUES ('39', null, null, null, null, '56', '1037');
INSERT INTO `productprices` VALUES ('40', null, null, null, null, '46.8', '1038');
INSERT INTO `productprices` VALUES ('41', null, null, null, null, '34', '1039');
INSERT INTO `productprices` VALUES ('42', null, null, null, null, '56.8', '1040');
INSERT INTO `productprices` VALUES ('43', null, null, null, null, '46.5', '1041');
INSERT INTO `productprices` VALUES ('44', null, null, null, null, '23', '1042');
INSERT INTO `productprices` VALUES ('45', null, null, null, null, '57', '1043');
INSERT INTO `productprices` VALUES ('46', null, null, null, null, '89', '1044');
INSERT INTO `productprices` VALUES ('47', null, null, null, null, '56', '1045');
INSERT INTO `productprices` VALUES ('48', null, null, null, null, '68', '1046');
INSERT INTO `productprices` VALUES ('49', null, null, null, null, '45.7', '1047');
INSERT INTO `productprices` VALUES ('50', null, null, null, null, '34', '1048');
INSERT INTO `productprices` VALUES ('51', null, null, null, null, '25', '1049');
INSERT INTO `productprices` VALUES ('52', null, null, null, null, '19', '1050');
INSERT INTO `productprices` VALUES ('53', null, null, null, null, '67', '1051');
INSERT INTO `productprices` VALUES ('54', null, null, null, null, '78', '1052');
INSERT INTO `productprices` VALUES ('55', null, null, null, null, '43', '1053');
INSERT INTO `productprices` VALUES ('56', null, null, null, null, '57', '1054');
INSERT INTO `productprices` VALUES ('57', null, null, null, null, '23', '1055');
INSERT INTO `productprices` VALUES ('58', null, null, null, null, '56', '1056');
INSERT INTO `productprices` VALUES ('59', null, null, null, null, '45', '1057');
INSERT INTO `productprices` VALUES ('60', null, null, null, null, '89', '1058');
INSERT INTO `productprices` VALUES ('61', null, null, null, null, '55', '1059');
INSERT INTO `productprices` VALUES ('62', null, null, null, null, '14', '1060');
INSERT INTO `productprices` VALUES ('63', null, null, null, null, '36', '1061');
INSERT INTO `productprices` VALUES ('64', null, null, null, '', '57', '1062');
INSERT INTO `productprices` VALUES ('65', null, null, null, null, '70', '1063');
INSERT INTO `productprices` VALUES ('66', null, null, null, null, '31', '1064');
INSERT INTO `productprices` VALUES ('67', null, null, null, null, '35', '1065');
INSERT INTO `productprices` VALUES ('68', null, null, null, null, '56', '1066');
INSERT INTO `productprices` VALUES ('69', null, null, null, null, '67.5', '1067');
INSERT INTO `productprices` VALUES ('70', null, null, null, null, '16', '1068');
INSERT INTO `productprices` VALUES ('71', null, null, null, null, '78', '1069');
INSERT INTO `productprices` VALUES ('72', null, null, null, null, '45', '1070');
INSERT INTO `productprices` VALUES ('73', null, null, null, null, '67', '1071');
INSERT INTO `productprices` VALUES ('74', null, null, null, null, '45', '1072');
INSERT INTO `productprices` VALUES ('75', null, null, null, null, '34', '1073');
INSERT INTO `productprices` VALUES ('76', null, null, null, null, '45', '1074');
INSERT INTO `productprices` VALUES ('77', null, null, null, null, '89', '1075');
INSERT INTO `productprices` VALUES ('78', null, null, null, null, '23', '1076');
INSERT INTO `productprices` VALUES ('79', null, null, null, null, '45', '1077');
INSERT INTO `productprices` VALUES ('80', null, null, null, null, '90.5', null);

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã hàng hóa',
  `Name` varchar(40) NOT NULL COMMENT 'Tên hàng hóa',
  `UnitDesc` varchar(50) NOT NULL COMMENT 'Mô tả đơn vị tính',
  `Image` varchar(50) NOT NULL COMMENT 'Hình ảnh',
  `ProductDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sản xuất',
  `SupplierId` varchar(50) NOT NULL COMMENT 'Mã nhà cung cấp',
  `Quantity` int(11) NOT NULL DEFAULT '100' COMMENT 'Số lượng hiện có',
  `Discount` double NOT NULL COMMENT 'Mức giảm giá',
  `Special` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Hàng đặc biệt?',
  `Latest` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Hàng mới?',
  `OnlineViews` int(11) NOT NULL DEFAULT '0' COMMENT 'Số lần xem',
  `Description` varchar(2000) DEFAULT NULL COMMENT 'Mô tả hàng hóa',
  `status` varchar(50) DEFAULT 'available',
  PRIMARY KEY (`Id`),
  KEY `FK_Products_Suppliers` (`SupplierId`),
  CONSTRAINT `FK_Products_Suppliers` FOREIGN KEY (`SupplierId`) REFERENCES `suppliers` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1088 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1001', 'Aniseed Syrup', '10 boxes x 20 bags', '1001.jpg', '1980-03-24 00:00:00', 'MO', '174', '0.19', '0', '0', '0', '<div><b><i><font color=\"#ff0000\">EmEditor </font></i></b>uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors<img src=\"/eStore040413/nicImages/anifire.gif\"><br></div>', 'available');
INSERT INTO `products` VALUES ('1002', 'Change', '10 boxes x 20 bags', '1002.jpg', '1982-12-18 00:00:00', 'AP', '17', '0', '1', '0', '11', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1003', 'Aniseed Syrup', '12 - 550 ml bottles', '1003.jpg', '1973-06-14 00:00:00', 'NK', '-1', '0', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1004', 'Chef Anton\'s Cajun Seasoning', '48 - 6 oz jars', '1004.jpg', '1976-03-10 00:00:00', 'MO', '0', '0.1', '0', '0', '2', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1005', 'Chef Anton\'s Gumbo Mix', '36 boxes', '1005.jpg', '1978-12-06 00:00:00', 'MO', '21', '0', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1006', 'Grandma\'s Boysenberry Spread', '12 - 8 oz jars', '1006.jpg', '1981-09-03 00:00:00', 'NK', '-8', '0.03', '0', '0', '3', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1007', 'Uncle Bob\'s Organic Dried Pears', '12 - 1 lb pkgs.', '1007.jpg', '1983-03-13 00:00:00', 'AP', '30', '0.03', '0', '0', '1', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1008', 'Northwoods Cranberry Sauce', '12 - 12 oz jars', '1008.jpg', '1972-02-26 00:00:00', 'SM', '40', '0.04', '1', '0', '1', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1009', 'Mishi Kobe Niku', '18 - 500 g pkgs.', '1009.jpg', '1985-12-10 00:00:00', 'AP', '97', '0.1', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1010', 'Ikura', '12 - 200 ml jars', '1010.jpg', '1994-03-23 00:00:00', 'MO', '31', '0.03', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1011', 'Queso Cabrales', '1 kg pkg.', '1011.jpg', '1985-11-28 00:00:00', 'AP', '21', '0', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1012', 'Queso Manchego La Pastora', '10 - 500 g pkgs.', '1012.jpg', '1988-08-27 00:00:00', 'SS', '38', '0.04', '0', '0', '2', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1013', 'Konbu', '2 kg box', '1013.jpg', '2002-07-01 00:00:00', 'SM', '6', '0.5', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1014', 'Tofu', '40 - 100 g pkgs.', '1014.jpg', '2002-06-24 00:00:00', 'AP', '23', '0', '0', '0', '1', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1015', 'Genen Shouyu', '24 - 250 ml bottles', '1015.jpg', '1991-05-04 00:00:00', 'AP', '15', '0', '0', '0', '2', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1016', 'Pavlova', '32 - 500 g boxes', '1016.jpg', '1996-11-09 00:00:00', 'AP', '17', '0', '0', '0', '1', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1017', 'Alice Mutton', '20 - 1 kg tins', '1017.jpg', '2007-12-15 00:00:00', 'AP', '39', '0.04', '0', '0', '1', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1018', 'Carnarvon Tigers', '16 kg pkg.', '1018.jpg', '2011-04-13 00:00:00', 'SM', '63', '0.06', '0', '1', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1019', 'Teatime Chocolate Biscuits', '10 boxes x 12 pieces', '1019.jpg', '2005-02-02 00:00:00', 'AP', '9', '0.5', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1020', 'Sir Rodney\'s Marmalade', '30 gift boxes', '1020.jpg', '2007-11-01 00:00:00', 'AP', '82', '0.08', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1021', 'Sir Rodney\'s Scones', '24 pkgs. x 4 pieces', '1021.jpg', '2010-07-29 00:00:00', 'NK', '10', '0', '0', '0', '3', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1022', 'Gustaf flower', '24 - 500 g pkgs.', '1022.jpg', '2008-12-01 00:00:00', 'AP', '21', '0', '1', '0', '1', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1023', 'Tunnbr Korea', '12 - 250 g pkgs.', '1023.jpg', '2011-08-31 00:00:00', 'MO', '8', '0.5', '0', '1', '3', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1024', 'Guarana¡ Fanta¡stica', '12 - 355 ml cans', '1024.jpg', '2008-03-13 00:00:00', 'MO', '-5', '0.45', '0', '0', '3', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1025', 'NuNuCa Nuaa-Nougat-Creme', '20 - 450 g glasses', '1025.jpg', '2011-07-20 00:00:00', 'AP', '13', '0', '0', '1', '1', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1026', 'Gumbar Gummibarchen', '100 - 250 g bags', '1026.jpg', '2009-04-17 00:00:00', 'NK', '32', '0.03', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1027', 'Schoggi Schokolade', '100 - 100 g pieces', '1027.jpg', '2007-01-14 00:00:00', 'AP', '45', '0.04', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1028', 'Russle Sauerkraut', '25 - 825 g cans', '1028.jpg', '2011-01-14 00:00:00', 'AP', '47', '0.05', '0', '0', '1', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1029', 'Tharinger Rostbratwurst', '50 bags x 30 sausgs.', '1029.jpg', '2010-12-21 00:00:00', 'SS', '127', '0.12', '0', '0', '1', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1030', 'Nord-Ost Matjeshering', '10 - 200 g glasses', '1030.jpg', '2011-05-14 00:00:00', 'SS', '25', '0.03', '1', '1', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1031', 'Gorgonzola Telino', '12 - 100 g pkgs', '1031.jpg', '2010-10-30 00:00:00', 'NK', '12', '0', '0', '0', '3', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1032', 'Mascarpone Fabioli', '24 - 200 g pkgs.', '1032.jpg', '2011-07-30 00:00:00', 'SS', '32', '0.03', '0', '1', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1033', 'Geitost', '500 g', '1033.png', '2010-04-29 00:00:00', 'SS', '2', '0.25', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1034', 'Sasquatch Ale', '24 - 12 oz bottles', '1034.jpg', '2010-07-30 00:00:00', 'AP', '13', '0', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1035', 'Steeleye Stout', '24 - 12 oz bottles', '1035.jpg', '2011-04-25 00:00:00', 'MO', '18', '0', '0', '1', '2', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1036', 'Inlagd Sill', '24 - 250 g  jars', '1036.jpg', '1980-11-28 00:00:00', 'MO', '19', '0', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1037', 'Gravad lax', '12 - 500 g pkgs.', '1037.jpg', '1983-08-31 00:00:00', 'MO', '27', '0.03', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1038', 'Cate de Blaye', '12 - 75 cl bottles', '1038.jpg', '1981-07-12 00:00:00', 'SS', '271', '0.26', '1', '0', '1', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1039', 'Chartreuse verte', '750 cc per bottle', '1039.jpg', '1984-04-08 00:00:00', 'SM', '18', '0', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1040', 'Boston Crab Meat', '24 - 4 oz tins', '1040.jpg', '1976-12-08 00:00:00', 'SS', '19', '0', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1041', 'Jack\'s New England Clam Chowder', '12 - 12 oz cans', '1041.jpg', '1979-09-10 00:00:00', 'SM', '10', '0.5', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1042', 'Singaporean Hokkien Fried Mee', '32 - 1 kg pkgs.', '1042.jpg', '1973-11-21 00:00:00', 'MO', '14', '0', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1043', 'Ipoh Coffee', '16 - 500 g tins', '1043.jpg', '1980-03-20 00:00:00', 'SS', '47', '0.05', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1044', 'Gula Malacca', '20 - 2 kg bags', '1044.jpg', '1970-10-25 00:00:00', 'SS', '20', '0', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1045', 'Rogede sild', '1k pkg.', '1045.jpg', '1990-09-21 00:00:00', 'MO', '9', '0.5', '0', '0', '1', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1046', 'Spegesild', '4 - 450 g glasses', '1046.jpg', '1993-06-23 00:00:00', 'MO', '12', '0', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1047', 'Zaanse koeken', '10 - 4 oz boxes', '1047.jpg', '1981-11-25 00:00:00', 'SM', '9', '0.5', '0', '0', '4', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1048', 'Chocolade', '10 pkgs.', '1048.jpg', '1984-08-24 00:00:00', 'SM', '13', '0', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1049', 'Maxilaku', '24 - 50 g pkgs.', '1049.jpg', '1987-05-23 00:00:00', 'SS', '21', '0', '1', '0', '3', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1050', 'Valkoinen suklaa', '12 - 100 g bars', '1050.jpg', '1990-02-17 00:00:00', 'AP', '17', '0', '0', '0', '2', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1051', 'Manjimup Dried Apples', '50 - 300 g pkgs.', '1051.jpg', '2004-05-22 00:00:00', 'AP', '56', '0.05', '0', '0', '1', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1052', 'Filo Mix', '16 - 2 kg boxes', '1052.jpg', '2001-05-20 00:00:00', 'NK', '7', '0.5', '0', '0', '1', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1053', 'Perth Pasties', '48 pieces', '1053.jpg', '2007-01-06 00:00:00', 'SM', '34', '0.03', '0', '0', '1', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1054', 'Tourtiare', '16 pies', '1054.jpg', '2009-10-07 00:00:00', 'SS', '6', '0.5', '1', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1055', 'Pacta chinois', '24 boxes x 2 pies', '1055.jpg', '2007-07-08 00:00:00', 'MO', '25', '0', '0', '0', '1', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1056', 'Gnocchi di nonna Alice', '24 - 250 g pkgs.', '1056.jpg', '2007-05-18 00:00:00', 'AP', '40', '0.04', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1057', 'Ravioli Angelo', '24 - 250 g pkgs.', '1057.jpg', '2010-02-16 00:00:00', 'NK', '20', '0', '0', '0', '5', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1058', 'Escargots de Bourgogne', '24 pieces', '1058.jpg', '2011-07-26 00:00:00', 'MO', '14', '0', '0', '1', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1059', 'Raclette Courdavault', '5 kg pkg.', '1059.jpg', '2007-09-22 00:00:00', 'SM', '58', '0.05', '0', '0', '1', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1060', 'Camembert Pierrot', '15 - 300 g rounds', '1060.jpg', '2010-06-20 00:00:00', 'SM', '36', '0.03', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1061', 'Sirop d\'aOrable', '24 - 500 ml bottles', '1061.jpg', '2007-05-29 00:00:00', 'SM', '30', '0.03', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1062', 'Tarte au sucre', '48 pies', '1062.jpg', '2008-01-21 00:00:00', 'AP', '52', '0.05', '1', '0', '2', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1063', 'Vegie-spread', '15 - 625 g jars', '1063.jpg', '2007-11-21 00:00:00', 'SM', '46', '0.04', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1064', 'Wimmers gute Semmelknadel', '20 bags x 4 pieces', '1064.jpg', '2009-05-15 00:00:00', 'SM', '35', '0.03', '0', '0', '3', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1065', 'Louisiana Fiery Hot Pepper Sauce', '32 - 8 oz bottles', '1065.jpg', '2008-05-15 00:00:00', 'SS', '22', '0', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1066', 'Louisiana Hot Spiced Okra', '24 - 8 oz jars', '1066.jpg', '2011-02-10 00:00:00', 'AP', '18', '0', '0', '0', '2', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1067', 'Laughing Lumberjack Lager', '24 - 12 oz bottles', '1067.jpg', '2010-12-05 00:00:00', 'MO', '14', '0', '0', '0', '1', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1068', 'Scottish Longbreads', '10 boxes x 8 pieces', '1068.jpg', '2009-07-08 00:00:00', 'SM', '13', '0', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1069', 'Gudbrandsdalsost', '10 kg pkg.', '1069.jpg', '2011-03-09 00:00:00', 'NK', '38', '0.04', '0', '1', '2', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1070', 'Outback Lager', '24 - 355 ml bottles', '1070.jpg', '2009-02-21 00:00:00', 'SS', '16', '0', '0', '0', '2', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1071', 'Flotemysost', '10 - 500 g pkgs.', '1071.jpg', '1980-09-04 00:00:00', 'AP', '23', '0', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1072', 'Mozzarella di Giovanni', '24 - 200 g pkgs.', '1072.jpg', '1983-06-03 00:00:00', 'SM', '37', '0.03', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1073', 'Rad Kaviar', '24 - 150 g jars', '1073.jpg', '1982-12-03 00:00:00', 'SM', '16', '0', '1', '0', '1', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1074', 'Longlife Tofu', '5 kg pkg.', '1074.jpg', '1982-09-27 00:00:00', 'MO', '10', '0.5', '1', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1075', 'RhanbrAu Klosterbier', '24 - 0.5 l bottles', '1075.jpg', '1982-10-31 00:00:00', 'SM', '8', '0.5', '0', '0', '1', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1076', 'Lakkalik AAri', '500 ml', '1076.jpg', '1970-07-28 00:00:00', 'MO', '19', '0', '0', '0', '0', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1077', 'Original Frankfurter grane Soae', '12 boxes', '1077.gif', '1976-04-04 00:00:00', 'AP', '14', '0', '0', '0', '2', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1081', 'Chai', '10 boxes x 20 bags', '1081.jpg', '1984-04-04 00:00:00', 'AP', '20', '0', '0', '0', '1', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1083', 'Mishi Kobe Niku', '18 - 500 g pkgs.', '1083.jpg', '1989-07-23 00:00:00', 'AP', '105', '0.1', '0', '0', '1', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1084', 'Change-New', '10 boxes x 20 bags', '1084.jpg', '1977-06-22 00:00:00', 'SS', '20', '0', '0', '0', '1', 'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 'available');
INSERT INTO `products` VALUES ('1085', 'xxxx', 'Một tạ', '1085.jpg', '2013-01-16 00:00:00', 'SM', '11', '0.05', '0', '1', '0', '<font color=\"#ff0000\">Product Name:</font>  \r\nUnit Price:  \r\n<b><i>Discount</i></b>:  \r\nProduct Date:  \r\nQuantity:  \r\nUnit Description:  \r\nSpecial: Yes No  \r\nImage:  \r\n Supplier: Apple Motorola Nokia Seamen Samsung  \r\nCategory: Clocks Laptops Cameras Mobiles Perfumes Jewels Boats Bags áddd xxxxx  \r\n<font color=\"#0000cc\">Description \r\n</font>', 'available');
INSERT INTO `products` VALUES ('1087', 'Relex', 'One', '1087.jpg', '2013-04-17 00:00:00', 'MO', '108', '0.1', '0', '1', '1', '222', 'available');

-- ----------------------------
-- Table structure for `suppliers`
-- ----------------------------
DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers` (
  `Id` varchar(50) NOT NULL COMMENT 'Mã nhà cung cấp',
  `Name` varchar(50) NOT NULL COMMENT 'Tên công ty',
  `Logo` varchar(50) NOT NULL COMMENT 'Logo nhà cung cấp',
  `Email` varchar(50) NOT NULL COMMENT 'Email',
  `Phone` varchar(50) NOT NULL COMMENT 'Số điện thoại liên lạc',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of suppliers
-- ----------------------------
INSERT INTO `suppliers` VALUES ('AP', 'Apple', 'apple.jpg', 'pike@yahoo.com', '0987345876');
INSERT INTO `suppliers` VALUES ('MO', 'Motorola', 'motorola.jpg', 'john@gmail.com', '0918456987');
INSERT INTO `suppliers` VALUES ('NK', 'Nokia', 'nokia.jpg', 'okawa@gmail.com', '0913745789');
INSERT INTO `suppliers` VALUES ('SM', 'Seamen', 'Album.png', 'brown@gmail.com', '0987456876');
INSERT INTO `suppliers` VALUES ('SS', 'Samsung', 'samsung.jpg', 'lee@yahoo.com', '0913745789');

-- ----------------------------
-- Table structure for `sysdiagrams`
-- ----------------------------
DROP TABLE IF EXISTS `sysdiagrams`;
CREATE TABLE `sysdiagrams` (
  `name` varchar(160) NOT NULL,
  `principal_id` int(11) NOT NULL,
  `diagram_id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `definition` longblob,
  PRIMARY KEY (`diagram_id`),
  UNIQUE KEY `UK_principal_name` (`principal_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysdiagrams
-- ----------------------------
