-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2021 a las 06:46:58
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `array`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `array_data`
--

CREATE TABLE `array_data` (
  `id` int(11) NOT NULL,
  `nombre` varchar(245) NOT NULL,
  `apellido` varchar(245) NOT NULL,
  `correo` varchar(245) NOT NULL,
  `numero` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `array_data`
--

INSERT INTO `array_data` (`id`, `nombre`, `apellido`, `correo`, `numero`) VALUES
(1, 'Pablo', 'Cardozo', 'correo1@gmail.com', 32244880),
(2, 'Test1', 'TEST1', 'test1@gmail.com', 44444),
(3, 'Test2', 'TEST2', 'test2@gmail.com', 5555);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `array_data`
--
ALTER TABLE `array_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `array_data`
--
ALTER TABLE `array_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
