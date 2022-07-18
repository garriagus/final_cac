-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-07-2022 a las 05:27:51
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `finalcac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id_area` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `mail` varchar(30) DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`id_area`, `nombre`, `telefono`, `mail`, `fecha_alta`, `estado`) VALUES
(3, 'Sistemas', 1112344321, 'sistemas@codoacodo.com', '2022-07-17', 0),
(4, 'Limpieza', 115434321, 'limpieza@codoacodo.com', '2022-07-17', 0),
(5, 'Logística', 1112348493, 'logistica@codoacodo.com', '2022-07-17', 0),
(6, 'Recurso Humanos', 1112376541, 'recursos@codoacodo.com', '2022-07-17', 0),
(7, 'Coordianción', 1112343321, 'coordinación@codoacodo.com', '2022-07-17', 0),
(9, 'Seguridad', 3454676, 'seguridad@codoacodo', NULL, NULL),
(10, 'Compras', 34566787, 'compras@codoacodo', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `dni` int(11) NOT NULL,
  `mail` varchar(30) DEFAULT NULL,
  `id_area` int(11) NOT NULL,
  `fecha_alta` date DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `nombre`, `apellido`, `dni`, `mail`, `id_area`, `fecha_alta`, `estado`) VALUES
(10, 'Daniel', 'Caceres', 26890567, 'daniel@codoacodo', 4, '2022-07-17', 1),
(11, 'Lucas', 'Di Fiore', 31678567, 'lucas@codoacodo', 3, '2022-07-17', 1),
(13, 'Augusto', 'Ramirez', 12345678, 'augusto@codoacodo', 3, NULL, NULL),
(15, 'Lucas', 'Serna', 23456345, 'lucas@codoacodo', 3, NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id_area`),
  ADD UNIQUE KEY `telefono` (`telefono`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD KEY `empleados_areas` (`id_area`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `id_area` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_areas` FOREIGN KEY (`id_area`) REFERENCES `areas` (`id_area`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
