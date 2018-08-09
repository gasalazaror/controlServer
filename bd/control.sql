/*
Navicat MariaDB Data Transfer

Source Server         : local
Source Server Version : 100307
Source Host           : localhost:3306
Source Database       : control

Target Server Type    : MariaDB
Target Server Version : 100307
File Encoding         : 65001

Date: 2018-08-09 16:55:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for archive
-- ----------------------------
DROP TABLE IF EXISTS `archive`;
CREATE TABLE `archive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` bigint(20) DEFAULT NULL,
  `fromModel` varchar(255) DEFAULT NULL,
  `originalRecord` longtext DEFAULT NULL,
  `originalRecordId` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of archive
-- ----------------------------

-- ----------------------------
-- Table structure for categoria
-- ----------------------------
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `empresa` varchar(255) DEFAULT NULL,
  `padre` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO `categoria` VALUES ('1533654397879', '1533654397879', '1', 'SERVICIOS', '1', null);
INSERT INTO `categoria` VALUES ('1533657176655', '1533657176655', '2', 'SERVICIOS 23', '1', '1');

-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `persona` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cliente
-- ----------------------------
INSERT INTO `cliente` VALUES ('1533663509285', '1533663509285', '1', '2');

-- ----------------------------
-- Table structure for clientevehiculo
-- ----------------------------
DROP TABLE IF EXISTS `clientevehiculo`;
CREATE TABLE `clientevehiculo` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `esActual` tinyint(1) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `vehiculo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of clientevehiculo
-- ----------------------------

-- ----------------------------
-- Table structure for cliente_vehiculos__vehiculo_clientes
-- ----------------------------
DROP TABLE IF EXISTS `cliente_vehiculos__vehiculo_clientes`;
CREATE TABLE `cliente_vehiculos__vehiculo_clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_vehiculos` int(11) DEFAULT NULL,
  `vehiculo_clientes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cliente_vehiculos__vehiculo_clientes
-- ----------------------------

-- ----------------------------
-- Table structure for empresa
-- ----------------------------
DROP TABLE IF EXISTS `empresa`;
CREATE TABLE `empresa` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `razonSocial` varchar(255) DEFAULT NULL,
  `nombreComercial` varchar(255) DEFAULT NULL,
  `ruc` varchar(255) DEFAULT NULL,
  `dirMatriz` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `nombreComercial` (`nombreComercial`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of empresa
-- ----------------------------
INSERT INTO `empresa` VALUES ('1533654363891', '1533654363891', '1', '', 'ABC', '', '');

-- ----------------------------
-- Table structure for grupo
-- ----------------------------
DROP TABLE IF EXISTS `grupo`;
CREATE TABLE `grupo` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `capacidad` double DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of grupo
-- ----------------------------

-- ----------------------------
-- Table structure for marca
-- ----------------------------
DROP TABLE IF EXISTS `marca`;
CREATE TABLE `marca` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of marca
-- ----------------------------

-- ----------------------------
-- Table structure for modelo
-- ----------------------------
DROP TABLE IF EXISTS `modelo`;
CREATE TABLE `modelo` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `anio` varchar(255) DEFAULT NULL,
  `marca` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of modelo
-- ----------------------------

-- ----------------------------
-- Table structure for operador
-- ----------------------------
DROP TABLE IF EXISTS `operador`;
CREATE TABLE `operador` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `capacidad` double DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of operador
-- ----------------------------
INSERT INTO `operador` VALUES ('1533758997765', '1533758997765', '1', 'GABRIEL SALAZAR', '', '1', '1');

-- ----------------------------
-- Table structure for operador_usuarios__usuario_operadores
-- ----------------------------
DROP TABLE IF EXISTS `operador_usuarios__usuario_operadores`;
CREATE TABLE `operador_usuarios__usuario_operadores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operador_usuarios` int(11) DEFAULT NULL,
  `usuario_operadores` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of operador_usuarios__usuario_operadores
-- ----------------------------
INSERT INTO `operador_usuarios__usuario_operadores` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for orden
-- ----------------------------
DROP TABLE IF EXISTS `orden`;
CREATE TABLE `orden` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` int(11) DEFAULT NULL,
  `vehiculo` int(11) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orden
-- ----------------------------
INSERT INTO `orden` VALUES ('1533760271279', '1533760271463', '1', '1', '1', '1');
INSERT INTO `orden` VALUES ('1533763442742', '1533763442839', '2', '1', '1', '1');
INSERT INTO `orden` VALUES ('1533764317262', '1533764317543', '3', '1', '1', '1');
INSERT INTO `orden` VALUES ('1533764629980', '1533764630147', '4', '1', '1', '1');
INSERT INTO `orden` VALUES ('1533824353653', '1533824353896', '5', '1', '1', '1');
INSERT INTO `orden` VALUES ('1533834414010', '1533834414092', '6', '1', '1', '1');
INSERT INTO `orden` VALUES ('1533835734123', '1533835734201', '7', '1', '1', '1');
INSERT INTO `orden` VALUES ('1533837751845', '1533837751914', '8', '1', '1', '1');
INSERT INTO `orden` VALUES ('1533843160141', '1533843160205', '9', '1', '1', '1');
INSERT INTO `orden` VALUES ('1533845433676', '1533845433764', '10', '1', '1', '1');
INSERT INTO `orden` VALUES ('1533848799500', '1533848799617', '11', '1', '1', '1');

-- ----------------------------
-- Table structure for ordenservicio
-- ----------------------------
DROP TABLE IF EXISTS `ordenservicio`;
CREATE TABLE `ordenservicio` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `horaInicio` varchar(255) DEFAULT NULL,
  `horaFin` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `pausaActual` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `servicio` int(11) DEFAULT NULL,
  `operador` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ordenservicio
-- ----------------------------
INSERT INTO `ordenservicio` VALUES ('1533760271613', '1533823650907', '1', '2018-08-08T21:04:09.615Z', '2018-08-09T14:07:30.879Z', 'POR FACTURAR', '', '1', '3', '1');
INSERT INTO `ordenservicio` VALUES ('1533763442952', '1533823752769', '2', '2018-08-08T21:24:28.292Z', '2018-08-09T14:09:12.752Z', 'POR FACTURAR', '', '2', '1', '1');
INSERT INTO `ordenservicio` VALUES ('1533764317579', '1533822500364', '3', '2018-08-08T21:42:21.716Z', '2018-08-09T13:48:20.349Z', 'POR FACTURAR', '', '3', '3', '1');
INSERT INTO `ordenservicio` VALUES ('1533764630198', '1533822486970', '4', '2018-08-09T13:26:29.250Z', '2018-08-09T13:48:06.885Z', 'POR FACTURAR', '', '4', '2', '1');
INSERT INTO `ordenservicio` VALUES ('1533824354000', '1533846317330', '5', '2018-08-09T14:22:30.369Z', '2018-08-09T20:25:17.311Z', 'POR FACTURAR', '', '5', '1', '1');
INSERT INTO `ordenservicio` VALUES ('1533824354000', '1533837107700', '6', '2018-08-09T16:52:17.170Z', '2018-08-09T17:51:47.683Z', 'POR FACTURAR', '', '5', '2', '1');
INSERT INTO `ordenservicio` VALUES ('1533824354000', '1533837724592', '7', '2018-08-09T16:53:37.754Z', '2018-08-09T18:02:04.573Z', 'POR FACTURAR', '', '5', '3', '1');
INSERT INTO `ordenservicio` VALUES ('1533834414310', '1533834692867', '8', '2018-08-09T17:07:40.849Z', '2018-08-09T17:11:32.848Z', 'POR FACTURAR', '', '6', '1', '1');
INSERT INTO `ordenservicio` VALUES ('1533835734348', '1533846318302', '9', '2018-08-09T17:29:24.688Z', '2018-08-09T20:25:18.287Z', 'POR FACTURAR', '', '7', '1', '1');
INSERT INTO `ordenservicio` VALUES ('1533835734348', '1533844435605', '10', '2018-08-09T17:29:26.640Z', '2018-08-09T19:53:55.076Z', 'POR FACTURAR', '', '7', '2', '1');
INSERT INTO `ordenservicio` VALUES ('1533835734348', '1533845240498', '11', '2018-08-09T17:29:28.575Z', '2018-08-09T20:07:19.821Z', 'POR FACTURAR', '', '7', '3', '1');
INSERT INTO `ordenservicio` VALUES ('1533837751955', '1533846321057', '12', '2018-08-09T18:02:50.901Z', '2018-08-09T20:25:21.039Z', 'POR FACTURAR', '', '8', '12', '1');
INSERT INTO `ordenservicio` VALUES ('1533843160288', '1533848762040', '13', '2018-08-09T19:49:01.989Z', '', 'EN PRODUCCIÓN - PAUSADO', '23', '9', '5', '1');
INSERT INTO `ordenservicio` VALUES ('1533845433796', '1533848827072', '14', '2018-08-09T20:10:47.285Z', '', 'EN PRODUCCIÓN - PAUSADO', '24', '10', '1', '1');
INSERT INTO `ordenservicio` VALUES ('1533848799697', '1533848837383', '15', '2018-08-09T21:06:55.060Z', '2018-08-09T21:07:17.363Z', 'POR FACTURAR', '', '11', '1', '1');

-- ----------------------------
-- Table structure for pausa
-- ----------------------------
DROP TABLE IF EXISTS `pausa`;
CREATE TABLE `pausa` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `horaInicio` varchar(255) DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `horaFin` varchar(255) DEFAULT NULL,
  `ordenServicio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pausa
-- ----------------------------
INSERT INTO `pausa` VALUES ('1533831672054', '1533831672054', '1', '2018-08-09T16:21:11.955Z', 'FALTA DE AUTORIZACIÓN', '', '', '5');
INSERT INTO `pausa` VALUES ('1533831751469', '1533831751469', '2', '2018-08-09T16:22:31.460Z', 'FALTA DE AUTORIZACIÓN', '', '', '5');
INSERT INTO `pausa` VALUES ('1533831821989', '1533831821989', '3', '2018-08-09T16:23:41.980Z', 'FALTA DE REPUESTOS', '23', '', '5');
INSERT INTO `pausa` VALUES ('1533833154555', '1533833154555', '4', '2018-08-09T16:45:54.522Z', 'FALTA DE AUTORIZACIÓN', '02', '', '5');
INSERT INTO `pausa` VALUES ('1533833222990', '1533833222990', '5', '2018-08-09T16:47:02.978Z', 'FALTA DE AUTORIZACIÓN', '', '', '5');
INSERT INTO `pausa` VALUES ('1533833282797', '1533833282797', '6', '2018-08-09T16:48:02.789Z', 'FALTA DE AUTORIZACIÓN', '', '', '5');
INSERT INTO `pausa` VALUES ('1533833502981', '1533837610326', '7', '2018-08-09T16:51:42.972Z', 'FALTA DE AUTORIZACIÓN', 'sd', '2018-08-09T18:00:10.303Z', '5');
INSERT INTO `pausa` VALUES ('1533833545436', '1533837091236', '8', '2018-08-09T16:52:25.428Z', 'FALTA DE AUTORIZACIÓN', '', '2018-08-09T17:51:31.204Z', '6');
INSERT INTO `pausa` VALUES ('1533833628699', '1533837139571', '9', '2018-08-09T16:53:48.691Z', 'FALTA DE AUTORIZACIÓN', 'sdsd', '2018-08-09T17:52:19.555Z', '7');
INSERT INTO `pausa` VALUES ('1533835856721', '1533835856721', '10', '2018-08-09T17:30:56.713Z', 'BREAK', '56', '', '9');
INSERT INTO `pausa` VALUES ('1533835870041', '1533835870041', '11', '2018-08-09T17:31:10.031Z', 'FALTA DE REPUESTOS', '26', '', '9');
INSERT INTO `pausa` VALUES ('1533836029933', '1533846217684', '12', '2018-08-09T17:33:49.917Z', 'FALTA DE AUTORIZACIÓN', '25', '2018-08-09T20:23:37.669Z', '9');
INSERT INTO `pausa` VALUES ('1533836043885', '1533844094264', '13', '2018-08-09T17:34:03.878Z', 'BREAK', '', '2018-08-09T19:48:13.400Z', '10');
INSERT INTO `pausa` VALUES ('1533836096464', '1533843031382', '14', '2018-08-09T17:34:56.453Z', 'FALTA DE REPUESTOS', '', '2018-08-09T19:30:31.367Z', '11');
INSERT INTO `pausa` VALUES ('1533837155439', '1533837614164', '15', '2018-08-09T17:52:35.428Z', 'ALMUERZO', '', '2018-08-09T18:00:14.143Z', '7');
INSERT INTO `pausa` VALUES ('1533837660301', '1533837673989', '16', '2018-08-09T18:01:00.289Z', 'FINALIZACIÓN DE JORNADA LABORAL', '', '2018-08-09T18:01:13.975Z', '5');
INSERT INTO `pausa` VALUES ('1533837693848', '1533846215371', '17', '2018-08-09T18:01:33.839Z', 'OTRO TRABAJO', '', '2018-08-09T20:23:35.351Z', '5');
INSERT INTO `pausa` VALUES ('1533837873073', '1533837898413', '18', '2018-08-09T18:04:33.063Z', 'BREAK', '', '2018-08-09T18:04:58.396Z', '12');
INSERT INTO `pausa` VALUES ('1533844180870', '1533848706868', '19', '2018-08-09T19:49:40.143Z', 'FALTA DE REPUESTOS', 'No hay llantas ', '2018-08-09T21:05:06.852Z', '13');
INSERT INTO `pausa` VALUES ('1533845272028', '1533846220182', '20', '2018-08-09T20:07:51.397Z', 'BREAK', '', '2018-08-09T20:23:40.165Z', '12');
INSERT INTO `pausa` VALUES ('1533845472325', '1533845481488', '21', '2018-08-09T20:11:11.190Z', 'FALTA DE REPUESTOS', '', '2018-08-09T20:11:20.391Z', '14');
INSERT INTO `pausa` VALUES ('1533845494869', '1533848708912', '22', '2018-08-09T20:11:33.745Z', 'FINALIZACIÓN DE JORNADA LABORAL', '', '2018-08-09T21:05:08.900Z', '14');
INSERT INTO `pausa` VALUES ('1533848760861', '1533848760861', '23', '2018-08-09T21:06:00.854Z', 'FALTA DE REPUESTOS', '', '', '13');
INSERT INTO `pausa` VALUES ('1533848827012', '1533848827012', '24', '2018-08-09T21:07:07.004Z', 'OTRO TRABAJO', '', '', '14');

-- ----------------------------
-- Table structure for persona
-- ----------------------------
DROP TABLE IF EXISTS `persona`;
CREATE TABLE `persona` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of persona
-- ----------------------------
INSERT INTO `persona` VALUES ('1533654363990', '1533654363990', '1', '', 'GABRIEL SALAZAR', 'ACTIVO', '', '', '', 'gabo@gmail.com', '1');
INSERT INTO `persona` VALUES ('1533663508652', '1533663508652', '2', '1723456321001', 'PAOLA ESTEFANIA', 'ACTIVO', 'NATURAL', '2456123', 'QUITO NORTE', 'gaso@gmail.com', '1');

-- ----------------------------
-- Table structure for repuesto
-- ----------------------------
DROP TABLE IF EXISTS `repuesto`;
CREATE TABLE `repuesto` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `unidad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of repuesto
-- ----------------------------

-- ----------------------------
-- Table structure for rol
-- ----------------------------
DROP TABLE IF EXISTS `rol`;
CREATE TABLE `rol` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rol
-- ----------------------------

-- ----------------------------
-- Table structure for rol_usuarios__usuario_roles
-- ----------------------------
DROP TABLE IF EXISTS `rol_usuarios__usuario_roles`;
CREATE TABLE `rol_usuarios__usuario_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rol_usuarios` int(11) DEFAULT NULL,
  `usuario_roles` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rol_usuarios__usuario_roles
-- ----------------------------
INSERT INTO `rol_usuarios__usuario_roles` VALUES ('1', '2', '1');

-- ----------------------------
-- Table structure for servicio
-- ----------------------------
DROP TABLE IF EXISTS `servicio`;
CREATE TABLE `servicio` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `tiempoEstandar` varchar(255) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of servicio
-- ----------------------------
INSERT INTO `servicio` VALUES ('1533654593182', '1533654593182', '1', 'CAMBIO DE ACEITE', '123521', '25', '1', '1');
INSERT INTO `servicio` VALUES ('1533655069268', '1533655069268', '2', 'SERVICIO', '1234554', '15', '1', '1');
INSERT INTO `servicio` VALUES ('1533658145478', '1533658145478', '3', 'SERVICIO 215', '2550', '25', '2', '1');
INSERT INTO `servicio` VALUES ('1533661777830', '1533661777830', '4', 'SERVICIO 5', '123', '25', '2', '1');
INSERT INTO `servicio` VALUES ('1533661786220', '1533661786220', '5', 'SERVICIO 25', '123', '25', '2', '1');
INSERT INTO `servicio` VALUES ('1533661795936', '1533661795936', '6', 'SERVICIO 26', '456', '25', '2', '1');
INSERT INTO `servicio` VALUES ('1533661811349', '1533661811349', '7', 'SERVICIO 27', '123456', '25', '2', '1');
INSERT INTO `servicio` VALUES ('1533661820413', '1533661820413', '8', 'SERVICIO 28', '123456789', '22112', '2', '1');
INSERT INTO `servicio` VALUES ('1533661828108', '1533661828108', '9', 'SERVICIO 29', '5686451', '123', '2', '1');
INSERT INTO `servicio` VALUES ('1533661840414', '1533661840414', '10', 'SERVICIO 30', '789456', '2', '2', '1');
INSERT INTO `servicio` VALUES ('1533661856535', '1533661856535', '11', 'SERVICIO 31', '2132132', '2', '2', '1');
INSERT INTO `servicio` VALUES ('1533661868757', '1533661868757', '12', 'SERVICIO 32', '123324', '12', '2', '1');

-- ----------------------------
-- Table structure for serviciorepuesto
-- ----------------------------
DROP TABLE IF EXISTS `serviciorepuesto`;
CREATE TABLE `serviciorepuesto` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` double DEFAULT NULL,
  `servicio` int(11) DEFAULT NULL,
  `repuesto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of serviciorepuesto
-- ----------------------------

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `persona` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('1533654364049', '1533758998410', '1', '123', '1');

-- ----------------------------
-- Table structure for usuariorol
-- ----------------------------
DROP TABLE IF EXISTS `usuariorol`;
CREATE TABLE `usuariorol` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `rol` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuariorol
-- ----------------------------

-- ----------------------------
-- Table structure for vehiculo
-- ----------------------------
DROP TABLE IF EXISTS `vehiculo`;
CREATE TABLE `vehiculo` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `numeroChasis` varchar(255) DEFAULT NULL,
  `numeroMotor` varchar(255) DEFAULT NULL,
  `placa` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `transmision` varchar(255) DEFAULT NULL,
  `tipoEnergia` varchar(255) DEFAULT NULL,
  `clase` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `anioFabricacion` varchar(255) DEFAULT NULL,
  `procedencia` varchar(255) DEFAULT NULL,
  `carr` varchar(255) DEFAULT NULL,
  `comb` varchar(255) DEFAULT NULL,
  `pasajeros` double DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  `dueno` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of vehiculo
-- ----------------------------
INSERT INTO `vehiculo` VALUES ('1533663557225', '1533663557225', '1', 'MARCA', 'MODELO', '156', '123', 'ABC123', 'AZUL', '', '', '', '', '1990', '', '', '', '0', '1', '1');

-- ----------------------------
-- View structure for vista_pausas
-- ----------------------------
DROP VIEW IF EXISTS `vista_pausas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `vista_pausas` AS SELECT
DATE_FORMAT(pausa.horaInicio,'%d-%m-%Y %H:%i:%s') as inicio,
DATE_FORMAT(pausa.horaFin,'%d-%m-%Y %H:%i:%s') as fin,
TIME_FORMAT(SEC_TO_TIME(TIMESTAMPDIFF(SECOND,pausa.horaInicio,pausa.horaFin)),'%H:%i:%s') as tiempoTranscurrido,
ordenservicio
FROM pausa ;

-- ----------------------------
-- View structure for vista_reporte
-- ----------------------------
DROP VIEW IF EXISTS `vista_reporte`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `vista_reporte` AS SELECT
ordenservicio.orden,
ordenservicio.id as ordenservicio,
servicio.descripcion as tarea,
DATE_FORMAT(ordenservicio.horaInicio,'%d-%m-%Y %H:%i:%s') as inicio,
DATE_FORMAT(ordenservicio.horaFin,'%d-%m-%Y %H:%i:%s') as fin,
TIME_FORMAT(SEC_TO_TIME(TIMESTAMPDIFF(SECOND,ordenservicio.horaInicio,ordenservicio.horaFin)),'%H:%i:%s') as tiempoTranscurrido,
TIME_FORMAT(SEC_TO_TIME((
SELECT
IFNULL(SUM(TIMESTAMPDIFF(SECOND,pausa.horaInicio,pausa.horaFin)),0)
FROM
pausa
WHERE ordenservicio = ordenservicio.id
)),'%H:%i:%s') as tiempoPausas,
TIME_FORMAT(
SEC_TO_TIME((TIMESTAMPDIFF(SECOND,ordenservicio.horaInicio,ordenservicio.horaFin)-
(
SELECT
IFNULL(SUM(TIMESTAMPDIFF(SECOND,pausa.horaInicio,pausa.horaFin)),0)
FROM
pausa
WHERE ordenservicio = ordenservicio.id
))),'%H:%i:%s') as tiempoReal,
(TIMESTAMPDIFF(SECOND,ordenservicio.horaInicio,ordenservicio.horaFin)-
(
SELECT
IFNULL(SUM(TIMESTAMPDIFF(SECOND,pausa.horaInicio,pausa.horaFin)),0)
FROM
pausa
WHERE ordenservicio = ordenservicio.id
)) as tiempoRealSec,
TIME_FORMAT(SEC_TO_TIME(servicio.tiempoEstandar*60),'%H:%i:%s') as tiempoEstandar,
servicio.tiempoEstandar*60 as tiempoEstandarSec, 

(
ROUND((
(servicio.tiempoEstandar*60)/ 
(TIMESTAMPDIFF(SECOND,ordenservicio.horaInicio,ordenservicio.horaFin)-
(
SELECT
IFNULL(SUM(TIMESTAMPDIFF(SECOND,pausa.horaInicio,pausa.horaFin)),0)
FROM
pausa
WHERE ordenservicio = ordenservicio.id
)
))*100,0)
) as eficiencia,
ordenservicio.estado,
operador.descripcion as operador,
orden.empresa
FROM
ordenservicio
INNER JOIN servicio on ordenservicio.servicio = servicio.id
INNER JOIN operador on ordenservicio.operador = operador.id
INNER JOIN orden on ordenservicio.orden = orden.id ;

-- ----------------------------
-- View structure for vista_sumatorias
-- ----------------------------
DROP VIEW IF EXISTS `vista_sumatorias`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `vista_sumatorias` AS SELECT
TIME_FORMAT(SEC_TO_TIME(SUM(tiempoEstandarSec)),'%H:%i:%s') as sumaTiempoEstandar,
TIME_FORMAT(SEC_TO_TIME(SUM(tiempoRealSec)),'%H:%i:%s') as sumaTiempoReal,
FORMAT(((SUM(tiempoEstandarSec)/SUM(tiempoRealSec))*100),0) as eficiencia

FROM
	vista_reporte ;
