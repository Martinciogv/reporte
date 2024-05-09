-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-05-2024 a las 00:11:20
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_reportes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora_norte`
--

CREATE TABLE `bitacora_norte` (
  `id_bitacora` int(11) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_serie` int(11) NOT NULL,
  `observaciones` varchar(255) NOT NULL,
  `notas` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora_sur`
--

CREATE TABLE `bitacora_sur` (
  `id_bitacora` int(11) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_serie` int(11) NOT NULL,
  `correctivo` int(11) NOT NULL,
  `preventivo` int(11) NOT NULL,
  `suministro` int(11) NOT NULL,
  `lectura` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `encargado` int(11) NOT NULL,
  `vobo` int(11) NOT NULL,
  `servicio` int(11) NOT NULL,
  `fecha_captura` date NOT NULL,
  `captura` date NOT NULL,
  `piezas` varchar(255) NOT NULL,
  `observaciones` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL,
  `ciudad` varchar(255) NOT NULL,
  `id_ruta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `razon` varchar(50) NOT NULL,
  `direccion` varchar(90) NOT NULL,
  `referencioa` varchar(45) NOT NULL,
  `colonia` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `municipio` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id_contacot` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `nombre` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contador`
--

CREATE TABLE `contador` (
  `id_contador` int(10) NOT NULL,
  `id_impresora` int(10) NOT NULL,
  `id_serie` int(10) NOT NULL,
  `id_modelo` int(10) NOT NULL,
  `bn_ant` int(15) NOT NULL,
  `col_ant` int(15) NOT NULL,
  `fecha_ant` date NOT NULL,
  `bn_act` int(15) NOT NULL,
  `col_act` int(15) NOT NULL,
  `fecha_act` date NOT NULL,
  `tipo_captura` int(2) NOT NULL,
  `id_img` int(11) NOT NULL,
  `fecha_captura` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `img`
--

CREATE TABLE `img` (
  `id_img` int(11) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  `img4` varchar(255) NOT NULL,
  `img5` varchar(255) NOT NULL,
  `img6` varchar(255) NOT NULL,
  `img7` varchar(255) NOT NULL,
  `img8` varchar(255) NOT NULL,
  `img9` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impresora`
--

CREATE TABLE `impresora` (
  `id_impresora` int(45) NOT NULL,
  `serie` varchar(15) NOT NULL,
  `id_marca` int(10) NOT NULL,
  `id_modelo` int(10) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id_marca` int(10) NOT NULL,
  `marca` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE `modelo` (
  `id_modelo` int(10) NOT NULL,
  `tipo` int(10) NOT NULL,
  `pm` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte_contador`
--

CREATE TABLE `reporte_contador` (
  `id_conteo` int(11) NOT NULL,
  `id_impresora` int(11) NOT NULL,
  `id_serie` int(11) NOT NULL,
  `id_modelo` int(11) NOT NULL,
  `bn_ant` int(11) NOT NULL,
  `bn_act` int(11) NOT NULL,
  `col_ant` date NOT NULL,
  `col_act` int(11) NOT NULL,
  `fecha_ant` int(11) NOT NULL,
  `fecha_act` date NOT NULL,
  `fecha_captura` date NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte_servicio`
--

CREATE TABLE `reporte_servicio` (
  `id_reporte` int(11) NOT NULL,
  `id_cliente` int(10) NOT NULL,
  `id_impresora` int(10) NOT NULL,
  `id_usuario` int(10) NOT NULL,
  `id_contador` int(10) NOT NULL,
  `id_toner` int(11) NOT NULL,
  `id_img` int(10) NOT NULL,
  `clave_psv` varchar(50) NOT NULL,
  `lectura` varchar(10) NOT NULL,
  `fecha_reporte` datetime NOT NULL,
  `fecha_arribo` date NOT NULL,
  `hora_inicio` varchar(5) NOT NULL,
  `hora_final` varchar(5) NOT NULL,
  `fecha` date NOT NULL,
  `pm` int(10) NOT NULL,
  `solicito` varchar(250) NOT NULL,
  `part_danadas` varchar(250) NOT NULL,
  `part_solicitadas` varchar(250) NOT NULL,
  `usuario_sol` int(10) NOT NULL,
  `falla` varchar(250) NOT NULL,
  `servicio` varchar(250) NOT NULL,
  `observaciones` varchar(250) NOT NULL,
  `confirmo` varchar(250) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte_toner`
--

CREATE TABLE `reporte_toner` (
  `id_toner` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_impresora` int(11) NOT NULL,
  `tipo_entrega` int(11) NOT NULL,
  `negro` int(11) NOT NULL,
  `codigoN` varchar(45) NOT NULL,
  `cian` int(11) NOT NULL,
  `codigoC` varchar(45) NOT NULL,
  `amarillo` int(11) NOT NULL,
  `codigoY` varchar(45) NOT NULL,
  `magenta` int(11) NOT NULL,
  `codigoM` varchar(45) NOT NULL,
  `fecha` date NOT NULL,
  `id_img` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `recibe` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta`
--

CREATE TABLE `ruta` (
  `id_ruta` int(11) NOT NULL,
  `ruta` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `password` tinytext DEFAULT NULL,
  `priv` int(11) NOT NULL,
  `fechaCaptura` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `password`, `priv`, `fechaCaptura`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, '2023-04-29');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bitacora_norte`
--
ALTER TABLE `bitacora_norte`
  ADD PRIMARY KEY (`id_bitacora`);

--
-- Indices de la tabla `bitacora_sur`
--
ALTER TABLE `bitacora_sur`
  ADD PRIMARY KEY (`id_bitacora`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id_contacot`);

--
-- Indices de la tabla `contador`
--
ALTER TABLE `contador`
  ADD PRIMARY KEY (`id_contador`);

--
-- Indices de la tabla `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id_img`);

--
-- Indices de la tabla `impresora`
--
ALTER TABLE `impresora`
  ADD PRIMARY KEY (`id_impresora`),
  ADD UNIQUE KEY `nombre_constraint` (`serie`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`id_modelo`);

--
-- Indices de la tabla `reporte_contador`
--
ALTER TABLE `reporte_contador`
  ADD PRIMARY KEY (`id_conteo`);

--
-- Indices de la tabla `reporte_servicio`
--
ALTER TABLE `reporte_servicio`
  ADD PRIMARY KEY (`id_reporte`);

--
-- Indices de la tabla `reporte_toner`
--
ALTER TABLE `reporte_toner`
  ADD PRIMARY KEY (`id_toner`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacora_norte`
--
ALTER TABLE `bitacora_norte`
  MODIFY `id_bitacora` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bitacora_sur`
--
ALTER TABLE `bitacora_sur`
  MODIFY `id_bitacora` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id_contacot` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contador`
--
ALTER TABLE `contador`
  MODIFY `id_contador` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `img`
--
ALTER TABLE `img`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reporte_contador`
--
ALTER TABLE `reporte_contador`
  MODIFY `id_conteo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reporte_servicio`
--
ALTER TABLE `reporte_servicio`
  MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reporte_toner`
--
ALTER TABLE `reporte_toner`
  MODIFY `id_toner` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
