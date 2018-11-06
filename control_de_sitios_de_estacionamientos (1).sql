-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2018 a las 07:57:40
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `control_de_sitios_de_estacionamientos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cobros`
--

CREATE TABLE `cobros` (
  `id_estacionamiento` int(6) NOT NULL,
  `vehiculo_id` int(6) NOT NULL,
  `tarifa` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comentario` int(6) NOT NULL,
  `id_estacionamiento` int(6) NOT NULL,
  `calificacion` int(1) NOT NULL,
  `id_usuario` int(6) NOT NULL,
  `comentario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estacionamientos`
--

CREATE TABLE `estacionamientos` (
  `id_estacionamiento` int(6) NOT NULL,
  `usuario_id` int(6) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `latitud` decimal(10,6) NOT NULL,
  `longitud` decimal(10,6) NOT NULL,
  `telefono` int(10) NOT NULL,
  `notas` text NOT NULL,
  `horario` text NOT NULL,
  `precio` int(10) NOT NULL,
  `visitas` int(6) NOT NULL,
  `ocupados` int(6) NOT NULL,
  `total` int(6) NOT NULL,
  `zona_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estacionamientos`
--

INSERT INTO `estacionamientos` (`id_estacionamiento`, `usuario_id`, `nombre`, `direccion`, `latitud`, `longitud`, `telefono`, `notas`, `horario`, `precio`, `visitas`, `ocupados`, `total`, `zona_id`) VALUES
(1, 9, 'Estacionamiento Catedral', 'Av 5 Ote 217, Centro, 72000 Puebla, Pue.', '19.041655', '-98.197397', 222222222, '¡Este sábado no abrimos!', 'Lunes a viernes de 9:00 AM - 10:00 PM', 15, 32, 10, 50, 1),
(2, 9, 'Estacionamiento Del Centro', '16 de Septiembre 704, Centro, 72000 Puebla, Pue.', '19.041684', '-98.199979', 222222222, 'Ya abrimos, los esperamos.', 'Lunes a sábado de 9:00 AM - 9:00 PM', 15, 39, 15, 60, 1),
(3, 9, 'Estacionamiento Consta', 'Av. de la Reforma 134, Centro, 72000 Puebla, Pue.', '19.044945', '-98.199472', 222222222, 'Ya contamos con servicio de valet parking.', 'Lunes a viernes de 7:00 AM a 10:00 PM', 16, 63, 29, 40, 1),
(4, 9, 'Estacionamiento Público Ayuntamiento', 'Calle 2 Nte 1, Centro, 72000 Puebla, Pue.', '19.044046', '-98.196963', 222222222, 'Por motivo de obras públicas cerraremos la próxima semana. Reanudamos labores en día 12 de Noviembre.', 'lunes a jueves de 10:00 AM a 8:00 PM', 20, 60, 12, 50, 1),
(5, 9, 'Estacionamiento la Concordia', 'Av. Morelos 2-4, Centro, 72760 Cholula, Pue.', '19.061864', '-98.306331', 124587655, 'Hoy abrimos a las 12:00, disculpe las molestias.', 'L-S 10:00 a 22:00', 25, 33, 26, 80, 1),
(6, 9, 'Estacionamiento Morelos', 'Centro, 72760 Cholula, Pue.', '19.060887', '-98.306853', 847596324, '¡Ya abrimos!', 'L-D 11:00 a 20:00', 18, 45, 23, 45, 1),
(7, 9, 'Estacionamiento \"El Centro\"', 'Calle 3 Sur 309-301, Barrio de Sta Maria Xixitla, 72760 Cholula, Pue.', '19.061395', '-98.309165', 996654872, 'Cerrado hasta mañana a las 11:00 AM', 'L-V 8:00 a 20:00', 15, 41, 23, 50, 1),
(8, 9, 'Estacionamiento', 'Estacionamiento, San Juan Aquiahuac, 72810 San Andrés Cholula, Pue.', '19.057439', '-98.298456', 410263014, 'Estamos a una calle del Museo regional de Cholula', 'L-S 10:00 a 21:00', 20, 78, 17, 45, 1),
(9, 9, 'Estacionamiento Terminal Tren Turístico', 'Estacion Tren Turistico Puebla-Cholula, Calle 6 Nte. 20, San Miguel, Barrio de Jesús Tlatempa, 72750', '19.060279', '-98.302234', 554488721, 'Cupo al máximo. Lamentamos las molestias.', 'L-D 9:00 a 22:00 ', 30, 112, 50, 50, 1),
(10, 9, 'Estacionamiento caresa', 'Blvrd Héroes del 5 de Mayo 3746, Hidalgo, 72550 Puebla, Pue.\r\n', '19.059015', '-98.192454', 222404740, 'Precio especial, presentando su ticket de cinemex de plaza dorada', 'L-S 10:00 a 22:00', 15, 40, 10, 70, 1),
(11, 9, 'Estacionamiento de la 25', 'Av 25 Pte, Los Volcanes, 72410 Puebla, Pue.\r\n', '19.041605', '-98.216575', 222438649, 'Estaciomiento con preferencias a los estudiantes de medicina', 'L-V 8:00 a 20:00', 12, 55, 5, 60, 1),
(13, 9, 'Estacionamiento Robotizado de la BUAP\r\n', 'Avenida 27 Poniente 1313, Los Volcanes, 72410 Puebla, Pue.\r\n', '19.039406', '-98.214312', 222295500, 'Es un lugar novedoso en la forma de estacionar, tu carro está siempre seguro.Sí eres trabajador o estudiante BUAP la tarifa reduce pero presentando tu credencial BUAP\r\n', 'L-V 8:00 a 22:00', 15, 75, 2, 90, 1),
(15, 9, 'Estacionamiento Paseo San Francisco\r\n', ' Arroyo de Xonaca 1005, Barrio del Alto, 72377 Puebla, Pue.\r\n', '19.042378', '-98.191499', 223524286, 'Estacionamiento con pasillos reducidos, pero excelente lugar, teniendo acceso a la plaza de san francisco\r\n', 'L-D 9:00 a 23:00 ', 18, 50, 3, 120, 1),
(17, 9, 'Estacionamiento Central, BUAP\r\n', 'Diagonal Río Papagayo, Cd Universitaria, Cdad. Universitaria, 72592 Puebla, Pue.\r\n', '18.993267', '-98.191484', 222295500, 'Estaciomiento con preferencias a estudiantes o trabajadores BUAP', 'L-V 8:00 a 22:00', 0, 120, 30, 160, 1),
(18, 9, 'Avenida Del Deporte Parking\r\n', 'Avenida Del Deporte, 72180 Puebla, Pue.\r\n', '18.996214', '-98.199854', 222295500, 'Estaciomiento perfecto para temporada de partidos o eventos en el estadio universitario.', 'L-V 8:00 a 22:00', 0, 80, 20, 60, 1),
(19, 9, 'Pensión de autos Panda\r\n', 'Portón negro, Calle 75 C Ote. 1043, Loma Linda, 72440 Puebla, Pue.\r\n', '18.995404', '-98.212235', 223524286, 'Pensión para autos 24 horas Puedes guardar tu auto por un día o Guárdalo por un mes acceso las 24 horas, Tu carro está seguro y nadie lo ve Tú tienes tú cajón para tu carro\"\r\n', '24 horas', 12, 40, 2, 65, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id_foto` int(6) NOT NULL,
  `id_estacionamiento` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id_estacionamiento` int(11) NOT NULL,
  `baño` int(1) NOT NULL,
  `autolavado` int(1) NOT NULL,
  `24hrs` int(1) NOT NULL,
  `valet_parking` int(1) NOT NULL,
  `techado` int(1) NOT NULL,
  `motos` int(1) NOT NULL,
  `camionetas` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `id_solicitud` int(6) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `nombre_estacionamiento` varchar(100) NOT NULL,
  `direccion` int(100) NOT NULL,
  `telefono` int(10) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `tipo_solicitud` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuarios`
--

CREATE TABLE `tipo_usuarios` (
  `id_tipo` int(1) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_usuarios`
--

INSERT INTO `tipo_usuarios` (`id_tipo`, `tipo`) VALUES
(1, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(6) NOT NULL,
  `nickname` varchar(100) CHARACTER SET latin1 NOT NULL,
  `nombre` varchar(100) CHARACTER SET latin1 NOT NULL,
  `appaterno` varchar(100) CHARACTER SET latin1 NOT NULL,
  `appmaterno` varchar(100) CHARACTER SET latin1 NOT NULL,
  `contrasena` mediumtext CHARACTER SET latin1 NOT NULL,
  `correo` varchar(100) CHARACTER SET latin1 NOT NULL,
  `foto_perfil` blob,
  `usuario_tipo` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `nickname`, `nombre`, `appaterno`, `appmaterno`, `contrasena`, `correo`, `foto_perfil`, `usuario_tipo`) VALUES
(9, 'carls_fenix', 'carlos', 'hernandez', 'hernandez', '9d21ef6da1fb7a3ac6f13dd6c25a8cabe70f7050e51cf2891e942ff303779b55de48f0c0f7ed5871571c3d1210cfda651085ff72b0012d888ea6aeddc8150347', 'nitsugahernandez@gmail.com', NULL, 1),
(10, 'valee', 'valeria', 'maldonado', 'guerrero', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 'vale@gmail.com', NULL, 1),
(11, 'fenix', 'carlos', 'hernandez', 'hernandez', 'sayyeah1993', 'fenix@gmail.com', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `id_vehiculo` int(6) NOT NULL,
  `matricula` varchar(100) NOT NULL,
  `color` text NOT NULL,
  `marca` text NOT NULL,
  `hora_entrada` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE `zonas` (
  `id_zona` int(6) NOT NULL,
  `area` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zonas`
--

INSERT INTO `zonas` (`id_zona`, `area`) VALUES
(1, 1.5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cobros`
--
ALTER TABLE `cobros`
  ADD KEY `FK_ESTACIONAMIENTO2` (`id_estacionamiento`),
  ADD KEY `FK_VEHICULO` (`vehiculo_id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `FK_ESTACIONAMIENTO3` (`id_estacionamiento`);

--
-- Indices de la tabla `estacionamientos`
--
ALTER TABLE `estacionamientos`
  ADD PRIMARY KEY (`id_estacionamiento`),
  ADD KEY `FK_USUARIO` (`usuario_id`),
  ADD KEY `FK_ZONA` (`zona_id`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id_foto`),
  ADD KEY `FK_ESTACIONAMIENTO4` (`id_estacionamiento`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD KEY `FK_ESTACIONAMIENTO` (`id_estacionamiento`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`id_solicitud`);

--
-- Indices de la tabla `tipo_usuarios`
--
ALTER TABLE `tipo_usuarios`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`),
  ADD KEY `FK_TIPO` (`usuario_tipo`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`id_vehiculo`);

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`id_zona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentario` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estacionamientos`
--
ALTER TABLE `estacionamientos`
  MODIFY `id_estacionamiento` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id_foto` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `id_solicitud` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_usuarios`
--
ALTER TABLE `tipo_usuarios`
  MODIFY `id_tipo` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `id_vehiculo` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `zonas`
--
ALTER TABLE `zonas`
  MODIFY `id_zona` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cobros`
--
ALTER TABLE `cobros`
  ADD CONSTRAINT `FK_ESTACIONAMIENTO2` FOREIGN KEY (`id_estacionamiento`) REFERENCES `estacionamientos` (`id_estacionamiento`),
  ADD CONSTRAINT `FK_VEHICULO` FOREIGN KEY (`vehiculo_id`) REFERENCES `vehiculo` (`id_vehiculo`);

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `FK_ESTACIONAMIENTO3` FOREIGN KEY (`id_estacionamiento`) REFERENCES `estacionamientos` (`id_estacionamiento`);

--
-- Filtros para la tabla `estacionamientos`
--
ALTER TABLE `estacionamientos`
  ADD CONSTRAINT `FK_USUARIO` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id_usuarios`),
  ADD CONSTRAINT `FK_ZONA` FOREIGN KEY (`zona_id`) REFERENCES `zonas` (`id_zona`);

--
-- Filtros para la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `FK_ESTACIONAMIENTO4` FOREIGN KEY (`id_estacionamiento`) REFERENCES `estacionamientos` (`id_estacionamiento`);

--
-- Filtros para la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `FK_ESTACIONAMIENTO` FOREIGN KEY (`id_estacionamiento`) REFERENCES `estacionamientos` (`id_estacionamiento`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `FK_TIPO` FOREIGN KEY (`usuario_tipo`) REFERENCES `tipo_usuarios` (`id_tipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
