SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `dispositivos` (
  `id_dispositivo` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `ubicacion` text DEFAULT NULL,
  `tipo_sensor` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `dispositivos` (`id_dispositivo`, `nombre`, `ubicacion`, `tipo_sensor`) VALUES
(0, 'Sensor1', 'Cocina', 'Medidor de agua');

CREATE TABLE `mediciones` (
  `id_medicion` int(11) NOT NULL,
  `id_dispositivo` int(11) DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  `consumo_agua` double DEFAULT NULL,
  `consumo_electricidad` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `mediciones` (`id_medicion`, `id_dispositivo`, `fecha_hora`, `consumo_agua`, `consumo_electricidad`) VALUES
(0, 1, '2024-04-23 10:00:00', 10.5, 50.2);

CREATE TABLE `preciosservicios` (
  `id_precio` int(11) NOT NULL,
  `estrato` int(11) DEFAULT NULL,
  `precio_agua` double DEFAULT NULL,
  `precio_electricidad` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `preciosservicios` (`id_precio`, `estrato`, `precio_agua`, `precio_electricidad`) VALUES
(0, 3, 2.5, 0.15);

CREATE TABLE `ubicaciones` (
  `id_ubicacion` int(11) NOT NULL,
  `direccion` text DEFAULT NULL,
  `ciudad` text DEFAULT NULL,
  `departamento` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `ubicaciones` (`id_ubicacion`, `direccion`, `ciudad`, `departamento`) VALUES
(0, 'Calle Falsa 123', 'Bogotá', 'Cundinamarca');

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `correo_electronico` text DEFAULT NULL,
  `estrato_socioeconomico` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `correo_electronico`, `estrato_socioeconomico`) VALUES
(0, 'Juan Pérez', 'juan@example.com', 3);

ALTER TABLE `dispositivos`
  ADD PRIMARY KEY (`id_dispositivo`);

ALTER TABLE `mediciones`
  ADD PRIMARY KEY (`id_medicion`),
  ADD KEY `id_dispositivo` (`id_dispositivo`);

ALTER TABLE `preciosservicios`
  ADD PRIMARY KEY (`id_precio`);

ALTER TABLE `ubicaciones`
  ADD PRIMARY KEY (`id_ubicacion`);

ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo_electronico` (`correo_electronico`) USING HASH;

ALTER TABLE `mediciones`
  ADD CONSTRAINT `mediciones_ibfk_1` FOREIGN KEY (`id_dispositivo`) REFERENCES `dispositivos` (`id_dispositivo`);
COMMIT;