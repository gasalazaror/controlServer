/*
Navicat MariaDB Data Transfer

Source Server         : local
Source Server Version : 100307
Source Host           : localhost:3306
Source Database       : control

Target Server Type    : MariaDB
Target Server Version : 100307
File Encoding         : 65001

Date: 2018-08-04 12:31:08
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO `categoria` VALUES ('1533231173863', '1533231173863', '1', 'CAMBIOS', '1', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cliente
-- ----------------------------
INSERT INTO `cliente` VALUES ('1533230648353', '1533230648353', '1', '3');
INSERT INTO `cliente` VALUES ('1533230777166', '1533230777166', '2', '4');
INSERT INTO `cliente` VALUES ('1533231115824', '1533231115824', '3', '5');

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
INSERT INTO `empresa` VALUES ('1533230528736', '1533230528736', '1', '', 'ABC', '', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of operador
-- ----------------------------
INSERT INTO `operador` VALUES ('1533230669019', '1533230669019', '1', 'LOPEZ OBRADOR', '', '1', '1');
INSERT INTO `operador` VALUES ('1533230669365', '1533230669365', '2', 'LOPEZ OBRADOR 2', '', '1', '1');
INSERT INTO `operador` VALUES ('1533230793906', '1533230793906', '3', 'LOPEZ REINALDO', '', '1', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of operador_usuarios__usuario_operadores
-- ----------------------------
INSERT INTO `operador_usuarios__usuario_operadores` VALUES ('2', '2', '2');
INSERT INTO `operador_usuarios__usuario_operadores` VALUES ('3', '3', '3');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orden
-- ----------------------------
INSERT INTO `orden` VALUES ('1533231191490', '1533231191563', '1', '3', '1', '1');
INSERT INTO `orden` VALUES ('1533245032988', '1533245033097', '2', '3', '1', '1');
INSERT INTO `orden` VALUES ('1533247893033', '1533247893200', '3', '3', '1', '1');
INSERT INTO `orden` VALUES ('1533248953186', '1533248953265', '4', '3', '1', '1');
INSERT INTO `orden` VALUES ('1533250378496', '1533250378552', '5', '3', '1', '1');
INSERT INTO `orden` VALUES ('1533314896397', '1533314896581', '6', '3', '1', '1');
INSERT INTO `orden` VALUES ('1533319265203', '1533319265296', '7', '3', '1', '1');
INSERT INTO `orden` VALUES ('1533319557343', '1533319557452', '8', '3', '1', '1');
INSERT INTO `orden` VALUES ('1533327294207', '1533327294269', '9', '3', '1', '1');
INSERT INTO `orden` VALUES ('1533399502416', '1533399502500', '10', '3', '1', '1');
INSERT INTO `orden` VALUES ('1533401605689', '1533401605853', '11', '3', '1', '1');
INSERT INTO `orden` VALUES ('1533402181526', '1533402181597', '12', '3', '1', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ordenservicio
-- ----------------------------
INSERT INTO `ordenservicio` VALUES ('1533231191599', '1533242613549', '1', '2018-08-02T20:43:30.657Z', '2018-08-02T20:43:33.529Z', 'POR FACTURAR', '', '1', '1', '3');
INSERT INTO `ordenservicio` VALUES ('1533245033160', '1533245150777', '2', '2018-08-02T21:24:12.057Z', '2018-08-02T21:25:50.752Z', 'POR FACTURAR', '', '2', '1', '3');
INSERT INTO `ordenservicio` VALUES ('1533247893250', '1533247946771', '3', '2018-08-02T22:11:49.262Z', '2018-08-02T22:12:26.750Z', 'POR FACTURAR', '', '3', '1', '3');
INSERT INTO `ordenservicio` VALUES ('1533248953302', '1533249170224', '4', '2018-08-02T22:29:29.744Z', '2018-08-02T22:32:50.206Z', 'POR FACTURAR', '', '4', '1', '3');
INSERT INTO `ordenservicio` VALUES ('1533250378590', '1533250549902', '5', '2018-08-02T22:53:10.542Z', '2018-08-02T22:55:49.877Z', 'POR FACTURAR', '', '5', '1', '3');
INSERT INTO `ordenservicio` VALUES ('1533314896631', '1533315192767', '6', '2018-08-03T16:48:30.331Z', '2018-08-03T16:53:12.746Z', 'POR FACTURAR', '', '6', '1', '3');
INSERT INTO `ordenservicio` VALUES ('1533319265359', '1533319495165', '7', '2018-08-03T18:01:25.615Z', '2018-08-03T18:04:55.142Z', 'POR FACTURAR', '', '7', '1', '3');
INSERT INTO `ordenservicio` VALUES ('1533319557484', '1533323684049', '8', '2018-08-03T18:06:10.693Z', '2018-08-03T19:14:43.973Z', 'POR FACTURAR', '', '8', '2', '3');
INSERT INTO `ordenservicio` VALUES ('1533327294307', '1533333690976', '9', '2018-08-03T20:17:46.548Z', '2018-08-03T22:01:30.954Z', 'POR FACTURAR', '', '9', '1', '3');
INSERT INTO `ordenservicio` VALUES ('1533327294307', '1533399522791', '10', '2018-08-03T22:01:27.682Z', '2018-08-04T16:18:42.771Z', 'POR FACTURAR', '', '9', '2', '3');
INSERT INTO `ordenservicio` VALUES ('1533399502555', '1533399627035', '11', '2018-08-04T16:19:34.203Z', '2018-08-04T16:20:27.011Z', 'POR FACTURAR', '', '10', '1', '3');
INSERT INTO `ordenservicio` VALUES ('1533401605945', '1533401664225', '12', '1533401618494', '1533401664197', 'POR FACTURAR', '', '11', '1', '3');
INSERT INTO `ordenservicio` VALUES ('1533402181631', '1533402208749', '13', '2018-08-04T17:03:28.730Z', '', 'EN PRODUCCIÓN', '', '12', '1', '3');

-- ----------------------------
-- Table structure for pausa
-- ----------------------------
DROP TABLE IF EXISTS `pausa`;
CREATE TABLE `pausa` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `horaInicio` varchar(255) DEFAULT NULL,
  `horaFin` varchar(255) DEFAULT NULL,
  `ordenServicio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pausa
-- ----------------------------
INSERT INTO `pausa` VALUES ('1533245071505', '1533245088834', '1', '2018-08-02T21:24:31.496Z', '2018-08-02T21:24:48.816Z', '2');
INSERT INTO `pausa` VALUES ('1533245116113', '1533245128883', '2', '2018-08-02T21:25:16.104Z', '2018-08-02T21:25:28.864Z', '2');
INSERT INTO `pausa` VALUES ('1533245137578', '1533245144653', '3', '2018-08-02T21:25:37.568Z', '2018-08-02T21:25:44.632Z', '2');
INSERT INTO `pausa` VALUES ('1533249160265', '1533249165853', '4', '2018-08-02T22:32:40.254Z', '2018-08-02T22:32:45.838Z', '4');
INSERT INTO `pausa` VALUES ('1533250445758', '1533250518985', '5', '2018-08-02T22:54:05.749Z', '2018-08-02T22:55:18.965Z', '5');
INSERT INTO `pausa` VALUES ('1533315046911', '1533315079102', '6', '2018-08-03T16:50:46.899Z', '2018-08-03T16:51:19.082Z', '6');
INSERT INTO `pausa` VALUES ('1533315137959', '1533315143812', '7', '2018-08-03T16:52:17.946Z', '2018-08-03T16:52:23.793Z', '6');
INSERT INTO `pausa` VALUES ('1533327726861', '1533333679936', '8', '2018-08-03T20:22:06.849Z', '2018-08-03T22:01:19.906Z', '9');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of persona
-- ----------------------------
INSERT INTO `persona` VALUES ('1533230528849', '1533230528849', '1', '', 'GABRIEL SALAZAR', 'ACTIVO', '', '', '', 'gaso@gmail.com', '1');
INSERT INTO `persona` VALUES ('1533230570431', '1533230570431', '2', '1723713556', 'GABRIEL SALAZAR', 'ACTIVO', 'NATURAL', '2621561', 'quito sur', 'gabrielsalazar@outlook.com', '1');
INSERT INTO `persona` VALUES ('1533230631701', '1533230631701', '3', '1234567890', 'LOPEZ OBRADOR', 'ACTIVO', 'NATURAL', '2456123', 'mexico', 'mexico@gmail.com', '1');
INSERT INTO `persona` VALUES ('1533230776412', '1533230776412', '4', '1478523690', 'LOPEZ REINALDO', 'ACTIVO', 'NATURAL', '2621561', 'QUITO NORTE', 'reinaldo@gmail.com', '1');
INSERT INTO `persona` VALUES ('1533231114180', '1533231114180', '5', '1234569874001', 'CLIENTE 1', 'ACTIVO', 'NATURAL', 'CLIENTE', 'CLIENTE', 'cliente@gmail.com', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rol
-- ----------------------------
INSERT INTO `rol` VALUES (null, null, '1', '1');
INSERT INTO `rol` VALUES (null, null, '2', '2');
INSERT INTO `rol` VALUES (null, null, '3', '3');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rol_usuarios__usuario_roles
-- ----------------------------
INSERT INTO `rol_usuarios__usuario_roles` VALUES ('4', '1', '2');
INSERT INTO `rol_usuarios__usuario_roles` VALUES ('5', '2', '2');
INSERT INTO `rol_usuarios__usuario_roles` VALUES ('6', '3', '2');
INSERT INTO `rol_usuarios__usuario_roles` VALUES ('7', '2', '3');

-- ----------------------------
-- Table structure for servicio
-- ----------------------------
DROP TABLE IF EXISTS `servicio`;
CREATE TABLE `servicio` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `tiempoEstandar` varchar(255) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of servicio
-- ----------------------------
INSERT INTO `servicio` VALUES ('1533231180123', '1533315565372', '1', 'CAMBIO DE ACEITE', '2', '1', '1');
INSERT INTO `servicio` VALUES ('1533319536880', '1533319536880', '2', 'PRUEBA', '45', '1', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('1533230528899', '1533230528899', '1', '123', '1');
INSERT INTO `usuario` VALUES ('1533230651738', '1533230669437', '2', '', '3');
INSERT INTO `usuario` VALUES ('1533230777163', '1533230793960', '3', '1478523690', '4');

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
INSERT INTO `vehiculo` VALUES ('1533231160883', '1533231160883', '1', 'MARCA1', 'MODELO1', '132SD23', '132SD21', 'ABC123', 'AZUL', '', '', '', '', '1990', '', '', '', '0', '1', '3');

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
FORMAT((
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
