-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-08-2022 a las 22:49:00
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
  `color_v` varchar(25) NOT NULL,
  `placa` varchar(25) NOT NULL,
  `torre` int(11) NOT NULL,
  `apartamento` int(11) NOT NULL,
  `residente` varchar(25) NOT NULL,
  `numparqueo` varchar(11) NOT NULL,
  `fechaentrada` timestamp NOT NULL DEFAULT current_timestamp(),
  `fechasalida` timestamp NOT NULL DEFAULT current_timestamp(),
  `valor` decimal(9,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tabla_parqueo`
--

INSERT INTO `tabla_parqueo` (`id`, `visitante`, `tipo`, `color_v`, `placa`, `torre`, `apartamento`, `residente`, `numparqueo`, `fechaentrada`, `fechasalida`, `valor`) VALUES
(107, 'o', 'Carro', 'aa', 'aaaaa', 3, 101, 'aa', '4', '2022-07-19 02:43:18', '2022-07-19 02:47:23', '0'),
(112, '', '0', '', '', 0, 0, '', '0', '2022-07-19 03:25:56', '2022-07-19 03:26:07', '0'),
(113, '', '0', '', '', 0, 0, '', '0', '2022-07-19 03:25:58', '2022-07-19 03:26:09', '0'),
(115, '', '0', '', '', 0, 0, '', '0', '2022-07-19 03:43:02', '2022-07-19 03:43:10', '0'),
(117, '', '0', '', '', 0, 0, '', '0', '2022-07-19 03:46:53', '2022-07-19 03:47:04', '0'),
(119, '', '0', '', '', 0, 0, '', '0', '2022-07-19 03:57:38', '2022-07-19 04:00:19', '0'),
(120, 'Sit beatae sunt sed', 'Camioneta', 'Aut quam et maxime a', 'Quidem officia illum', 12, 102, 'Minus ad incididunt ', '27', '2022-07-19 03:58:05', '2022-07-19 04:00:30', '0'),
(121, 'Sit beatae sunt sed', 'Camioneta', 'Aut quam et maxime a', 'Quidem officia illum', 12, 102, 'Minus ad incididunt ', '27', '2022-07-19 04:00:43', '2022-07-19 04:17:05', '0'),
(122, '', '0', '', '', 0, 0, '', '0', '2022-07-19 04:15:38', '2022-07-19 04:17:02', '0'),
(138, '9', 'Motocileta', '9', '9', 12, 402, '9', '15', '2022-07-20 18:54:07', '2022-07-25 16:39:32', '117000'),
(139, '', '0', '', '', 0, 0, '', '2', '2022-07-20 18:57:36', '2022-07-25 16:39:34', '117000'),
(140, 'Prueba', 'Carro', 'k', 'jjjj520', 6, 203, 'resident', '6', '2022-07-20 19:00:32', '2022-07-25 16:39:36', '117000'),
(141, '', '0', '', '', 0, 0, '', '4', '2022-07-20 19:31:45', '2022-07-22 02:14:16', '31000'),
(142, '', '0', '', '', 0, 0, '', '4', '2022-07-20 19:31:46', '2022-07-22 02:14:12', '31000'),
(143, '', '0', '', '', 0, 0, '', '8', '2022-07-20 19:33:38', '2022-07-25 16:39:39', '117000'),
(144, 'Prueba', 'Motocileta', '8', 'y', 5, 104, 'ijiioh', '7', '2022-07-21 23:37:00', '2022-07-25 16:39:41', '89000'),
(145, 'Error nulla autem co', 'Carro', 'Do id quo magna mol', 'Ipsum ut est sint p', 10, 701, 'Aut quisquam eu cons', '28', '2022-07-22 02:06:10', '2022-07-25 16:39:44', '86000'),
(146, 'Unde impedit quod q', 'Camioneta', 'Perspiciatis Nam ma', 'Laboris dolorem quid', 0, 302, 'Atque omnis ea dicta', '1', '2022-07-22 02:13:05', '2022-07-25 16:39:47', '86000'),
(147, 'Unde impedit quod q', 'Camioneta', 'Perspiciatis Nam ma', 'Laboris dolorem quid', 0, 302, 'Atque omnis ea dicta', '1', '2022-07-22 02:14:23', '2022-07-25 16:39:49', '86000'),
(149, 'Unde impedit quod q', 'Camioneta', 'Perspiciatis Nam ma', 'Laboris dolorem quid', 0, 302, 'Atque omnis ea dicta', '3', '2022-07-22 02:15:40', '2022-07-25 16:39:51', '86000'),
(150, 'Unde impedit quod q', 'Camioneta', 'Perspiciatis Nam ma', 'Laboris dolorem quid', 0, 302, 'Atque omnis ea dicta', '3', '2022-07-22 02:16:06', '2022-07-25 16:39:54', '86000'),
(151, 'Unde impedit quod q', 'Camioneta', 'Perspiciatis Nam ma', 'Laboris dolorem quid', 0, 302, 'Atque omnis ea dicta', '3', '2022-07-22 02:16:21', '2022-07-25 16:40:31', '86000'),
(152, 'Unde impedit quod q', 'Camioneta', 'Perspiciatis Nam ma', 'Laboris dolorem quid', 0, 302, 'Atque omnis ea dicta', '3', '2022-07-22 02:16:46', '2022-07-25 16:40:29', '86000'),
(153, 'Unde impedit quod q', 'Camioneta', 'Perspiciatis Nam ma', 'Laboris dolorem quid', 0, 302, 'Atque omnis ea dicta', '3', '2022-07-22 02:21:11', '2022-07-25 16:40:26', '86000'),
(154, 'Unde impedit quod q', 'Camioneta', 'Perspiciatis Nam ma', 'Laboris dolorem quid', 0, 302, 'Atque omnis ea dicta', '3', '2022-07-22 02:21:32', '2022-07-25 16:40:24', '86000'),
(155, 'Unde impedit quod q', 'Camioneta', 'Perspiciatis Nam ma', 'Laboris dolorem quid', 0, 302, 'Atque omnis ea dicta', '3', '2022-07-22 02:21:52', '2022-07-25 16:40:21', '86000'),
(156, 'Unde impedit quod q', 'Camioneta', 'Perspiciatis Nam ma', 'Laboris dolorem quid', 0, 302, 'Atque omnis ea dicta', '3', '2022-07-22 02:22:11', '2022-07-25 16:40:19', '86000'),
(157, 'Unde impedit quod q', 'Camioneta', 'Perspiciatis Nam ma', 'Laboris dolorem quid', 0, 302, 'Atque omnis ea dicta', '3', '2022-07-22 02:22:28', '2022-07-25 16:40:16', '86000'),
(158, 'Unde impedit quod q', 'Camioneta', 'Perspiciatis Nam ma', 'Laboris dolorem quid', 0, 302, 'Atque omnis ea dicta', '3', '2022-07-22 02:23:04', '2022-07-25 16:40:14', '86000'),
(159, 'Laborum Dolore temp', 'Camioneta', 'Dolore nihil molliti', 'Veniam commodo cons', 5, 1103, 'Vel ex expedita recu', '13', '2022-07-22 02:28:00', '2022-07-25 16:40:12', '86000'),
(160, 'Est cupidatat sit s', 'Carro', 'Pariatur Excepteur ', 'Eaque minim inventor', 7, 1203, 'Earum labore ullamco', '18', '2022-07-22 02:33:11', '2022-07-25 16:40:10', '86000'),
(161, 'Voluptas velit simi', 'Carro', 'Ullam lorem autem es', 'Tempor explicabo Ex', 2, 1004, 'Quae consequat In o', '10', '2022-07-22 02:35:46', '2022-07-25 16:40:07', '86000'),
(162, 'asd', 'Carro', 'asd', 'asd', 3, 101, 'asd', '12', '2022-07-22 02:39:49', '2022-07-25 16:40:04', '86000'),
(163, 'asd', 'Carro', 'Tempora cillum dolor', 'Dolore id minus qui', 9, 701, 'Sunt do sint asper', '17', '2022-07-22 02:40:52', '2022-07-25 16:40:02', '85000'),
(164, 'Tenetur maiores aliq', 'Carro', 'Aut quam perspiciati', 'Ea suscipit corporis', 6, 602, 'Commodo voluptate mo', '16', '2022-07-22 02:42:27', '2022-07-25 16:39:59', '85000'),
(165, 'Necessitatibus accus', 'Camioneta', 'Non aut eum eos ea e', 'Fugiat ut unde quia ', 5, 0, 'Dolorum tempore do ', '11', '2022-07-22 05:50:40', '2022-07-25 16:39:57', '82000'),
(168, 't', 'Carro', '', '9', 3, 102, '9', '2', '2022-07-25 20:57:11', '2022-08-21 04:49:46', '-1'),
(169, 't', 'Carro', 'azul', 't', 14, 404, 't', '18', '2022-07-25 20:57:45', '2022-08-21 04:49:50', '-1'),
(170, 't', 'Carro', 'aguamarina', '8', 12, 501, '9', '14', '2022-07-25 21:03:23', '2022-08-21 04:49:53', '-1'),
(171, 'Prueba', 'Carro', 'aguamarina', 'fff000', 15, 502, 'visitante', '14', '2022-07-25 22:21:02', '2022-07-25 22:21:02', NULL),
(172, 't', 'Carro', 'vino', '8', 11, 402, 'jjjj', '1', '2022-07-27 20:26:32', '2022-07-27 20:26:32', NULL),
(173, 't', 'Carro', 'aguamarina', '9', 3, 103, 'jjjj', '3', '2022-07-27 20:47:58', '2022-07-27 20:47:58', NULL),
(174, '', '0', '', '', 0, 0, '', 'Parqueadero', '2022-07-27 21:06:32', '2022-07-27 21:06:32', NULL),
(175, '', '0', '', '', 0, 0, '', 'Parqueadero', '2022-07-27 21:42:50', '2022-07-27 21:42:50', NULL),
(176, '9', 'Carro', 'vino', '9', 1, 102, 'jjjj', '15', '2022-07-27 22:05:33', '2022-07-27 22:05:33', NULL),
(177, 't', 'Carro', 'aguamarina', 'T', 3, 104, 'jjjj', '7', '2022-07-29 04:44:19', '2022-07-29 04:44:20', NULL),
(178, 'Incididunt et corrup', 'Camioneta', 'Et et eiusmod exerci', 'Molestiae cillum sun', 13, 903, 'Molestiae nihil volu', '27', '2022-07-29 04:49:30', '2022-07-29 04:49:30', NULL),
(179, 'Vero enim tempor ad ', '0', 'Consequatur Dolorib', 'Deserunt dolore lore', 0, 0, 'Quis officiis corrup', '5', '2022-07-29 04:49:45', '2022-07-29 04:49:45', NULL),
(180, 'Voluptatibus ipsa e', '0', 'Quibusdam libero et ', 'Totam laboriosam es', 0, 0, 'Est eligendi volupta', '13', '2022-07-29 04:51:06', '2022-07-29 04:51:06', NULL),
(181, 'Impedit praesentium', 'Motocileta', 'Consequuntur dolor v', 'In ut facilis verita', 14, 903, 'Nulla et dicta volup', '9', '2022-07-29 04:59:12', '2022-07-29 04:59:12', NULL),
(182, 't', 'Carro', 'asd', 't', 10, 203, 'asd', '2D', '2022-07-29 05:03:29', '2022-07-29 05:03:29', NULL),
(183, 'Ea molestiae id iure', 'Motocileta', 'Aut quidem illum qu', 'Numquam dolores repr', 3, 103, 'Excepturi ex perspic', '16', '2022-08-21 04:22:07', '2022-08-21 04:51:47', '0'),
(184, 'Aut eaque reprehende', 'Carro', 'Quia soluta doloribu', 'Aute voluptatem del', 10, 1003, 'Hic molestiae doloru', '2C', '2022-08-21 01:24:57', '2022-08-21 04:24:57', NULL),
(185, 'Distinctio Rem sunt', 'Carro', 'Voluptas quam simili', 'In aut fugiat vitae', 14, 704, 'Dolorem quasi aspern', '1D', '2022-08-21 04:25:31', '2022-08-21 04:49:36', '-1'),
(186, 'Accusantium nihil as', 'Camioneta', 'Sapiente tempor tene', 'Rerum hic autem cupi', 11, 603, 'Praesentium dolorem ', '23', '2022-08-21 04:25:56', '2022-08-21 04:49:25', '-1'),
(187, 'Ut velit consequatu', 'Camioneta', 'Qui fugiat explicab', 'ASD', 8, 802, 'Nemo modi distinctio', '26', '2022-08-21 05:00:27', '2022-08-21 05:00:27', NULL),
(188, 'Voluptas consequat ', 'Motocileta', 'Ratione dicta consec', 'ELIT AUT REPELLENDU', 3, 503, 'Ut doloremque ut por', '1C', '2022-08-21 05:02:10', '2022-08-21 05:02:10', NULL),
(189, 'Fuga Pariatur Temp', 'Camioneta', 'Necessitatibus dolor', 'ELIT AUT REPELLENDU', 6, 102, 'Autem ullam ut est ', '19', '2022-08-21 05:14:00', '2022-08-21 05:14:00', NULL),
(190, 'Nostrud et corrupti', 'Motocileta', 'Iusto accusantium qu', 'ELIT AUT REPELLENDU', 15, 302, 'Irure sit quia repre', '10', '2022-08-21 05:15:09', '2022-08-21 05:15:09', NULL),
(191, 'Dolor nihil rem ipsu', 'Motocileta', 'Porro adipisci venia', 'ELIT AUT REPELLENDU', 14, 702, 'Excepturi quam volup', '6', '2022-08-21 05:18:30', '2022-08-21 05:18:30', NULL),
(192, 'Minim fugit qui nos', 'Motocileta', 'Culpa atque non volu', 'ELIT AUT REPELLENDU', 8, 302, 'Obcaecati iure enim ', '18', '2022-08-21 05:21:06', '2022-08-21 05:22:18', '-1'),
(193, 'Nisi iusto in sed es', 'Motocileta', 'Vel soluta ut qui co', 'EOS AT QUIA ODIO EUMELIT ', 15, 1204, 'Quisquam culpa sit u', '18', '2022-08-21 05:22:32', '2022-08-21 05:25:35', '-1'),
(194, 'Nisi iusto in sed es', 'Motocileta', 'Vel soluta ut qui co', 'ELIT AUT REPELLENDU', 15, 1204, 'Quisquam culpa sit u', '18', '2022-08-21 05:25:44', '2022-08-21 05:54:35', '0'),
(195, 'Omnis molestiae sed ', 'Camioneta', 'Enim tempore et at ', 'VOLUPTATE EST EXERCI', 11, 601, 'Molestias ut consequ', '29', '2022-08-21 05:26:50', '2022-08-21 05:26:50', NULL),
(196, 'Dolorem facere illo ', 'Camioneta', 'Dolore aperiam ratio', 'EST ET MINUS QUAM C', 3, 304, 'Minim optio sit par', '2E', '2022-08-21 05:27:15', '2022-08-21 05:27:15', NULL),
(197, 'Ipsa facilis sapien', 'Carro', 'Non enim nihil possi', 'QUI QUI ITAQUE ALIQU', 3, 1102, 'Sed provident volup', '4', '2022-08-21 05:29:21', '2022-08-21 05:29:21', NULL),
(198, 'Voluptas laudantium', 'Carro', 'Aliquip eiusmod dolo', 'REPELLENDUS DOLOREM', 6, 203, 'Dignissimos qui veli', '1E', '2022-08-21 05:30:02', '2022-08-21 05:30:02', NULL),
(199, 'Earum quam et aliqua', 'Camioneta', 'Dolorem anim esse do', 'EXPLICABO EST VOLUP', 3, 703, 'Accusamus quia et ma', '8', '2022-08-21 05:33:22', '2022-08-21 05:33:22', NULL),
(200, 'Assumenda Nam aut ev', 'Motocileta', 'Tempore alias aut a', 'ELIT AUT REPELLENDU', 6, 401, 'Nostrum eum magna ci', '1D', '2022-08-21 05:34:09', '2022-08-21 05:34:09', NULL),
(201, 'Aut quia hic vel dol', 'Camioneta', 'Exercitationem dolor', 'T', 13, 802, 'Pariatur Ut totam u', '11', '2022-08-21 05:34:51', '2022-08-21 05:34:51', NULL),
(202, 'Asperiores elit sun', 'Motocileta', 'Ipsum aut enim commo', 'T', 3, 202, 'Odit non impedit do', '21', '2022-08-21 05:40:30', '2022-08-21 05:40:31', NULL),
(203, 'Quaerat vero delectu', 'Motocileta', 'Qui officia autem of', 'COMMODI ADIPISICING ', 16, 304, 'Laborum ipsa pariat', '2B', '2022-08-21 05:41:08', '2022-08-21 05:41:08', NULL),
(204, 'Qui nostrum enim ani', 'Motocileta', 'Nesciunt at tenetur', 'PROVIDENT AT EX VOL', 5, 1102, 'Similique fuga Ipsu', '23', '2022-08-21 05:51:47', '2022-08-21 05:51:47', NULL),
(205, 'Occaecat libero ex d', 'Carro', 'Unde anim ea dolorum', 'MOLESTIAE QUO EOS QU', 3, 1101, 'Recusandae At aliqu', '12', '2022-08-21 05:53:29', '2022-08-21 05:53:29', NULL),
(206, 'Modi qui accusantium', 'Camioneta', 'Totam voluptatem si', 'MOLESTIAE QUO EOS QU', 3, 402, 'Ullamco sit expedita', '16', '2022-08-21 06:03:38', '2022-08-21 06:03:38', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
