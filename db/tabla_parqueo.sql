-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-07-2022 a las 08:23:34
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parqueo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_parqueo`
--

CREATE TABLE `tabla_parqueo` (
  `id` int(11) NOT NULL,
  `visitante` varchar(25) NOT NULL,
  `tipo` varchar(25) NOT NULL,
  `marca` varchar(25) NOT NULL,
  `placa` varchar(25) NOT NULL,
  `torre` int(11) NOT NULL,
  `apartamento` int(11) NOT NULL,
  `persona` varchar(25) NOT NULL,
  `numparqueo` int(11) NOT NULL,
  `fechaentrada` timestamp NOT NULL DEFAULT current_timestamp(),
  `fechasalida` timestamp NOT NULL DEFAULT current_timestamp(),
  `valor` decimal(9,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tabla_parqueo`
--

INSERT INTO `tabla_parqueo` (`id`, `visitante`, `tipo`, `marca`, `placa`, `torre`, `apartamento`, `persona`, `numparqueo`, `fechaentrada`, `fechasalida`, `valor`) VALUES
(67, '9', 'Carro', '9', '1', 6, 202, '2', 3, '2022-07-07 20:50:42', '2022-07-08 04:28:01', '6000'),
(68, '9', 'Carro', '9', '1', 6, 202, '2', 3, '2022-07-07 20:51:02', '2022-07-07 20:51:02', NULL),
(69, '', '0', '', '', 0, 0, '', 0, '2022-07-07 20:56:47', '2022-07-07 20:56:47', NULL),
(70, '', '0', '', '', 0, 0, '', 0, '2022-07-07 21:15:46', '2022-07-07 21:15:46', NULL),
(71, '', '0', '', '', 0, 0, '', 0, '2022-07-07 22:24:51', '2022-07-07 22:24:51', NULL),
(72, '', '0', '', '', 0, 0, '', 0, '2022-07-07 23:16:19', '2022-07-07 23:16:19', NULL),
(73, '', '0', '', '', 0, 0, '', 0, '2022-07-07 23:18:49', '2022-07-07 23:18:49', NULL),
(74, '', '0', '', '', 0, 0, '', 0, '2022-07-07 23:19:52', '2022-07-07 23:19:52', NULL),
(75, '', '0', '', '', 0, 0, '', 0, '2022-07-07 23:30:29', '2022-07-07 23:30:29', NULL),
(76, '', '0', '', '', 0, 1002, '', 0, '2022-07-08 04:07:23', '2022-07-08 04:07:23', NULL),
(77, '', '0', '', '', 0, 0, '', 0, '2022-07-08 04:28:14', '2022-07-08 04:28:14', NULL),
(78, '', '0', '', '', 0, 0, '', 0, '2022-07-08 04:29:23', '2022-07-08 04:29:23', NULL),
(79, '', '0', '', '', 0, 0, '', 0, '2022-07-08 13:20:08', '2022-07-08 13:20:08', NULL),
(80, '', '0', '', '', 0, 0, '', 0, '2022-07-08 13:20:59', '2022-07-08 13:20:59', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tabla_parqueo`
--
ALTER TABLE `tabla_parqueo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tabla_parqueo`
--
ALTER TABLE `tabla_parqueo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
