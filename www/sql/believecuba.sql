/*
 Navicat Premium Data Transfer

 Source Server         : Docker
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : believecuba

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 05/11/2018 21:23:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

CREATE DATABASE believecuba; 
DROP DATABASE `believecuba`; 
USE believecuba;
-- ----------------------------
-- Table structure for auto_categoria
-- ----------------------------
DROP TABLE IF EXISTS `auto_categoria`;
CREATE TABLE `auto_categoria`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auto_modelo
-- ----------------------------
DROP TABLE IF EXISTS `auto_modelo`;
CREATE TABLE `auto_modelo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `cantidadpuertas` int(11) NOT NULL,
  `cantidadasientos` int(11) NOT NULL,
  `cantidadmaleteros` int(11) NOT NULL,
  `aireacondicionado` int(11) NOT NULL,
  `capacidadlitros` int(11) NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oferta
-- ----------------------------
DROP TABLE IF EXISTS `oferta`;
CREATE TABLE `oferta`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activa` tinyint(1) NOT NULL,
  `imagen` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `titulo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fechainicio` datetime(0) NOT NULL,
  `fechafin` datetime(0) NOT NULL,
  `detalles` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oferta
-- ----------------------------
INSERT INTO `oferta` VALUES (6, 1, '23b4b0e9401a12dd660d4ba90f36b162.jpeg', 'Titulo f ipsum dolor sit amet dolor duis blandit', 'Descripcion f ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.', '2018-10-24 00:00:00', '2018-10-31 00:00:00', 'Detalles f et ligula. Ut molestie a, ultricies porta urna. Vestibulum commodo volutpat a, convallis ac, laoreet enim. Phasellus fermentum in, dolor. Pellentesque facilisis. Nulla imperdiet sit amet magna. Vestibulum dapibus, mauris nec malesuada fames ac.');
INSERT INTO `oferta` VALUES (7, 0, '5616082875d9338d69360dd9e0828c7b.jpeg', 'Titulo e ipsum dolor sit amet dolor duis blandit', 'Descripcion e ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.', '2018-10-26 00:00:00', '2018-10-27 00:00:00', 'Detalles e et ligula. Ut molestie a, ultricies porta urna. Vestibulum commodo volutpat a, convallis ac, laoreet enim. Phasellus fermentum in, dolor. Pellentesque facilisis. Nulla imperdiet sit amet magna. Vestibulum dapibus, mauris nec malesuada fames ac.');
INSERT INTO `oferta` VALUES (8, 1, '9fb0c5de1c50d80290d41804fb16cb0a.jpeg', 'Titulo d ipsum dolor sit amet dolor duis blandit', 'Descripcion d ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.', '2018-10-30 00:00:00', '2018-10-31 00:00:00', 'Detalles d et ligula. Ut molestie a, ultricies porta urna. Vestibulum commodo volutpat a, convallis ac, laoreet enim. Phasellus fermentum in, dolor. Pellentesque facilisis. Nulla imperdiet sit amet magna. Vestibulum dapibus, mauris nec malesuada fames ac.');
INSERT INTO `oferta` VALUES (9, 1, '16f0159ca642867ec0ad24d11db73149.jpeg', 'Titulo c ipsum dolor sit amet dolor duis blandit', 'Descripcion c ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.', '2018-10-26 00:00:00', '2018-10-26 00:00:00', 'Detalles c et ligula. Ut molestie a, ultricies porta urna. Vestibulum commodo volutpat a, convallis ac, laoreet enim. Phasellus fermentum in, dolor. Pellentesque facilisis. Nulla imperdiet sit amet magna. Vestibulum dapibus, mauris nec malesuada fames ac.');
INSERT INTO `oferta` VALUES (10, 1, 'd3268a85a14bb84dded8e7d3949998bb.jpeg', 'Titulo b ipsum dolor sit amet dolor duis blandit', 'Descripcion b ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.', '2018-10-26 00:00:00', '2018-10-27 00:00:00', 'Detalles b et ligula. Ut molestie a, ultricies porta urna. Vestibulum commodo volutpat a, convallis ac, laoreet enim. Phasellus fermentum in, dolor. Pellentesque facilisis. Nulla imperdiet sit amet magna. Vestibulum dapibus, mauris nec malesuada fames ac.');
INSERT INTO `oferta` VALUES (11, 1, '0d6fcac905e682d88bd0cefd6a1c62bc.jpeg', 'Titulo a ipsum dolor sit amet dolor duis blandit', 'Descripcion a ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.', '2018-10-09 00:00:00', '2018-10-09 00:00:00', 'Detalles a et ligula. Ut molestie a, ultricies porta urna. Vestibulum commodo volutpat a, convallis ac, laoreet enim. Phasellus fermentum in, dolor. Pellentesque facilisis. Nulla imperdiet sit amet magna. Vestibulum dapibus, mauris nec malesuada fames ac.');
INSERT INTO `oferta` VALUES (12, 1, '128adf72752397d42349fc3588e9844d.jpeg', 'Frenada larga', 'Lorem Ipsun cuidado agro lorem Ipsun cuidado agro Ipsun cuidado agro lorem Ipsun cuidado agro Ipsun cuidado agro lorem Ipsun cuidado agro Ipsun cuidado agro lorem Ipsun cuidado agro', '2018-10-29 00:00:00', '2018-10-29 00:00:00', 'Ipsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agroIpsun cuidado agro lorem Ipsun cuidado agro');
INSERT INTO `oferta` VALUES (13, 1, '63758ee4139a079008abdf2c2c621d90.jpeg', 'Oferta para probar estilos', 'Symfony automatically ships with a default directory structure. ... also need to change the extra.symfony-web-dir option in the composer.json file', '2018-10-31 00:00:00', '2018-11-06 00:00:00', '<p><strong>Symfony</strong>&nbsp;automatically ships with a&nbsp;<strong>default directory</strong>&nbsp;structure also need to&nbsp;<strong>change</strong>&nbsp;the extra.<strong>symfony</strong>-<strong>web</strong>-<strong>dir</strong>&nbsp;option in the composer.json</p>\r\n\r\n<ol>\r\n	<li><em>Rojo</em></li>\r\n	<li><strong>Verde</strong></li>\r\n	<li><s>Azul</s></li>\r\n	<li><em>Amarillo</em></li>\r\n</ol>\r\n\r\n<blockquote>\r\n<p><strong>Symfony</strong>&nbsp;automatically ships with a&nbsp;<strong>default directory</strong>&nbsp;structure. ... also need to&nbsp;<strong>change</strong>&nbsp;the extra.<strong>symfony</strong>-<strong>web</strong>-<strong>dir</strong>&nbsp;option in the <u>composer.json</u> file</p>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Algo aqui de prueba</li>\r\n</ul>\r\n\r\n<p><strong>Change</strong>&nbsp;the extra.<strong>symfony</strong>-<strong>web</strong>-<strong>dir</strong>&nbsp;option in the <em>composer.json</em> file</p>\r\n\r\n<p>&nbsp;</p>');
INSERT INTO `oferta` VALUES (14, 1, 'be2ef9b9d192b6a64290e56ef14c2600.jpeg', 'Oferta para probar estilos', 'Symfony automatically ships with a default directory structure. ... also need to change the extra.symfony-web-dir option in the composer.json file', '2018-10-31 00:00:00', '2018-11-06 00:00:00', '<p><strong>Symfony</strong>&nbsp;automatically ships with a&nbsp;<strong>default directory</strong>&nbsp;structure also need to&nbsp;<strong>change</strong>&nbsp;the extra.<strong>symfony</strong>-<strong>web</strong>-<strong>dir</strong>&nbsp;option in the composer.json</p>\r\n\r\n<ol>\r\n	<li><em>Rojo</em></li>\r\n	<li><strong>Verde</strong></li>\r\n	<li><s>Azul</s></li>\r\n	<li><em>Amarillo</em></li>\r\n</ol>\r\n\r\n<blockquote>\r\n<p><strong>Symfony</strong>&nbsp;automatically ships with a&nbsp;<strong>default directory</strong>&nbsp;structure. ... also need to&nbsp;<strong>change</strong>&nbsp;the extra.<strong>symfony</strong>-<strong>web</strong>-<strong>dir</strong>&nbsp;option in the <u>composer.json</u> file</p>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Algo aqui de prueba</li>\r\n</ul>\r\n\r\n<p><strong>Change</strong>&nbsp;the extra.<strong>symfony</strong>-<strong>web</strong>-<strong>dir</strong>&nbsp;option in the <em>composer.json</em> file</p>\r\n\r\n<p>&nbsp;</p>');

-- ----------------------------
-- Table structure for oficina
-- ----------------------------
DROP TABLE IF EXISTS `oficina`;
CREATE TABLE `oficina`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Activa` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for provincia
-- ----------------------------
DROP TABLE IF EXISTS `provincia`;
CREATE TABLE `provincia`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UNIQ_D39AF2133A909126`(`nombre`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for seguridad_grupo
-- ----------------------------
DROP TABLE IF EXISTS `seguridad_grupo`;
CREATE TABLE `seguridad_grupo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(180) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UNIQ_599A728B5E237E06`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of seguridad_grupo
-- ----------------------------
INSERT INTO `seguridad_grupo` VALUES (8, 'Administrador', 'a:8:{i:0;s:15:\"MODULO_PERSONAL\";i:1;s:24:\"MODULO_CONTROL_PRESENCIA\";i:2;s:14:\"MODULO_CUADROS\";i:3;s:27:\"MODULO_SEGURIDAD_INDUSTRIAL\";i:4;s:22:\"MODULO_ATENCION_HOMBRE\";i:5;s:19:\"MODULO_SISTEMA_PAGO\";i:6;s:21:\"MODULO_EVAL_DESEMPENO\";i:7;s:14:\"MODULO_SISTEMA\";}', 'Todos los módulos del sistema.');
INSERT INTO `seguridad_grupo` VALUES (9, 'Personal', 'a:2:{i:0;s:15:\"MODULO_PERSONAL\";i:1;s:19:\"MODULO_SISTEMA_PAGO\";}', 'Control de Personal y Salarios.');

-- ----------------------------
-- Table structure for seguridad_grupo_usuario
-- ----------------------------
DROP TABLE IF EXISTS `seguridad_grupo_usuario`;
CREATE TABLE `seguridad_grupo_usuario`  (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`, `group_id`) USING BTREE,
  INDEX `IDX_AA759131A76ED395`(`user_id`) USING BTREE,
  INDEX `IDX_AA759131FE54D947`(`group_id`) USING BTREE,
  CONSTRAINT `FK_AA759131A76ED395` FOREIGN KEY (`user_id`) REFERENCES `seguridad_usuario` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_AA759131FE54D947` FOREIGN KEY (`group_id`) REFERENCES `seguridad_grupo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of seguridad_grupo_usuario
-- ----------------------------
INSERT INTO `seguridad_grupo_usuario` VALUES (2, 8);
INSERT INTO `seguridad_grupo_usuario` VALUES (2, 9);
INSERT INTO `seguridad_grupo_usuario` VALUES (4, 8);
INSERT INTO `seguridad_grupo_usuario` VALUES (5, 9);
INSERT INTO `seguridad_grupo_usuario` VALUES (7, 8);
INSERT INTO `seguridad_grupo_usuario` VALUES (7, 9);

-- ----------------------------
-- Table structure for seguridad_usuario
-- ----------------------------
DROP TABLE IF EXISTS `seguridad_usuario`;
CREATE TABLE `seguridad_usuario`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(0) NULL DEFAULT NULL,
  `confirmation_token` varchar(180) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `password_requested_at` datetime(0) NULL DEFAULT NULL,
  `roles` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `nombre_completo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `carne_identidad` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UNIQ_89D1E84992FC23A8`(`username_canonical`) USING BTREE,
  UNIQUE INDEX `UNIQ_89D1E849A0D96FBF`(`email_canonical`) USING BTREE,
  UNIQUE INDEX `UNIQ_89D1E849C05FB297`(`confirmation_token`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of seguridad_usuario
-- ----------------------------
INSERT INTO `seguridad_usuario` VALUES (2, 'nane', 'nane', 'yainel@atiss.une.cu', 'yainel@atiss.une.cu', 1, NULL, '$2y$13$kz8XlXgqgR65MNj63AqVY.ioIUdrn14z39SmS0vpUiqJhTFHQOVqy', '2018-08-04 22:00:23', NULL, NULL, 'a:0:{}', 'Yainel García Alfonso', '86052315807');
INSERT INTO `seguridad_usuario` VALUES (4, 'nemecio', 'nemecio', 'nemecio@correo.co', 'nemecio@correo.co', 1, NULL, '$2y$13$GZP8QXC9tMHBZmNGq1Gbke4vj8JyEwKPQX1PAyZ5pm2YFFjZ9CcJO', NULL, NULL, NULL, 'a:0:{}', 'Nemecio capote', '56842398561');
INSERT INTO `seguridad_usuario` VALUES (5, 'elpidio', 'elpidio', 'palmiche@atiss.une.cu', 'palmiche@atiss.une.cu', 0, NULL, '$2y$13$d0UU7NFk40bCGOHQiaAgWufnRrpFHk.1VoaizKF.j6WhXrlVQmn2C', NULL, NULL, NULL, 'a:0:{}', 'Elpidio Valdés', '54873129566');
INSERT INTO `seguridad_usuario` VALUES (7, 'believecuba', 'believecuba', 'believecuba@facebook.com', 'believecuba@facebook.com', 1, NULL, '$2y$13$.6uiAeF9l1.7bQ4aU.wREO3I73bE.ykjjVq5OMiH7sQBSoKf4BMg.', '2018-08-06 03:12:11', NULL, NULL, 'a:0:{}', 'believecuba', '00000000000');

-- ----------------------------
-- Table structure for solicitud
-- ----------------------------
DROP TABLE IF EXISTS `solicitud`;
CREATE TABLE `solicitud`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombrecompleto` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fecha` datetime(0) NOT NULL,
  `detalles` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `oferta_id` int(11) NULL DEFAULT NULL,
  `confirmada` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_96D27CC0FAFBF624`(`oferta_id`) USING BTREE,
  CONSTRAINT `FK_96D27CC0FAFBF624` FOREIGN KEY (`oferta_id`) REFERENCES `oferta` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of solicitud
-- ----------------------------
INSERT INTO `solicitud` VALUES (1, 'Yainel Garcia Alfonso', '55689745236', 'correo@gmail.com', '2013-01-01 00:00:00', 'Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.', 7, 0);
INSERT INTO `solicitud` VALUES (2, 'Florencio del Toro', '54545454578787', 'florencio@correo.cu', '2013-01-01 00:00:00', 'Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.', 6, 1);
INSERT INTO `solicitud` VALUES (3, 'Nemecio Capote Perez', '12312312332343122', 'nemecio@gmail.com', '2013-01-01 00:00:00', 'Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.', 8, 0);
INSERT INTO `solicitud` VALUES (4, 'Crodobaldo Valerio', '5555555555', 'crodo@domain.com', '2013-01-01 00:00:00', 'Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.', 9, 0);
INSERT INTO `solicitud` VALUES (5, 'Carlo Anchelotti', '96959595959595', 'carlito@domain.it', '2013-01-01 00:00:00', 'Algo aqui para comprobar si los detalles cogen los campos raw. \r\nAlgo aqui para comprobar si los detalles cogen los campos raw. \r\nAlgo aqui para comprobar si los detalles cogen los campos raw. \r\nAlgo aqui para comprobar si los detalles cogen los campos raw.\r\n\r\n\r\nEg: wewewe', 7, 0);
INSERT INTO `solicitud` VALUES (6, 'Cholo Simeone', '323232323232', 'cholo@correo.es', '2013-01-01 00:00:00', 'Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.', 8, 0);
INSERT INTO `solicitud` VALUES (7, 'Prueba local', '5675675678567567', 'local@correo.co', '2013-01-01 00:00:00', '<p><strong>Probando </strong>en el servidor <em>local&nbsp;</em></p>\r\n\r\n<ol>\r\n	<li><strong>Primero</strong></li>\r\n	<li><em>Segundo</em></li>\r\n	<li><u>Tercero</u></li>\r\n</ol>\r\n\r\n<blockquote>\r\n<p><s>Probando 123</s></p>\r\n</blockquote>', 8, NULL);
INSERT INTO `solicitud` VALUES (8, 'we we we', '12312312332343122', 'correo@gmail.com', '2013-01-01 00:00:00', '<p><em>Prueba </em>y <strong>Error</strong></p>', 7, NULL);
INSERT INTO `solicitud` VALUES (9, 'Vladimir Putin', '54545454578787', 'putin@correo.ru', '2013-01-01 00:00:00', '<blockquote>\r\n<p>Prueba&nbsp;</p>\r\n</blockquote>\r\n\r\n<p><strong>Cuidado agro lorem Ipsun cuidado agro Ipsun cuidado agro lorem Ipsun</strong></p>\r\n\r\n<p><em>Cuidado agro lorem Ipsun cuidado agro Ipsun cuidado agro lorem Ipsun</em></p>', 12, NULL);

SET FOREIGN_KEY_CHECKS = 1;
