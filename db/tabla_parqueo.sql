-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-03-2023 a las 21:20:52
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

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
  `tipo` varchar(11) NOT NULL,
  `color_v` varchar(11) NOT NULL,
  `placa` varchar(6) NOT NULL,
  `torre` varchar(6) NOT NULL,
  `apartamento` varchar(6) NOT NULL,
  `residente` varchar(25) NOT NULL,
  `numparqueo` varchar(6) NOT NULL,
  `fechaentrada` timestamp NOT NULL DEFAULT current_timestamp(),
  `fechasalida` timestamp NOT NULL DEFAULT current_timestamp(),
  `valor` decimal(9,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tabla_parqueo`
--

INSERT INTO `tabla_parqueo` (`id`, `visitante`, `tipo`, `color_v`, `placa`, `torre`, `apartamento`, `residente`, `numparqueo`, `fechaentrada`, `fechasalida`, `valor`) VALUES
(5584, '9', 'Carro', 'AAA', 'URV344', '13', '403', 'AAAA', '2E', '2022-11-01 03:40:32', '2022-11-01 05:28:27', '1000'),
(5585, 'Cillum est quis nihi', 'Motocicleta', 'Mollit dese', 'ESSE C', '9', '603', 'Porro voluptatem au', '1D', '2022-11-01 04:31:32', '2022-11-01 05:28:23', '0'),
(5586, 'Quas dolor distincti', 'Carro', 'Dolores qui', 'MAGNI ', '12', '603', 'Dolor nobis deserunt', '2C', '2022-10-30 09:29:35', '2022-11-02 23:06:07', '85000'),
(5589, 'Eius tempor esse per', 'Motocicleta', 'Sint et con', 'OMNIS ', '14', '501', 'Laboris sed est dolo', '1B', '2022-11-01 05:44:48', '2022-11-02 20:57:30', '-1'),
(5590, 'Quaerat ea perferend', 'Motocicleta', 'Minim qui e', 'SIT AS', 'Adm', '201', 'Aut molestiae ex qui', '30', '0000-00-00 00:00:00', '2023-03-08 05:07:35', '999999999'),
(5594, 'Amet ut do modi hic', 'Carro', 'Dolores vel', 'EARUM ', '12', '1102', 'Aut maxime deleniti ', '30', '2022-11-02 06:09:02', '2022-11-02 23:17:48', '17000'),
(5595, 'Illum eaque in dele', 'Camioneta', 'Excepturi l', 'COMMOD', 'Adm', '101', 'Anim aperiam aliqua', '18', '2022-11-02 09:59:24', '2022-11-02 23:17:42', '13000'),
(5596, 'Reprehenderit omnis ', 'Motocicleta', 'Exercitatio', 'EA VOL', '9', '101', 'Eius aut proident v', '3', '2022-11-01 08:59:49', '2022-11-02 23:17:38', '38000'),
(5597, 'Aut sapiente minima ', 'Motocicleta', 'Nulla aliqu', 'QUAE I', '4', '502', 'Accusantium sapiente', '19', '2022-11-02 21:16:48', '2022-11-02 23:17:33', '1000'),
(5598, 'Reprehenderit offici', 'Camioneta', 'Placeat tem', 'NON UT', '10', '501', 'Ea est magni volupt', '2E', '2022-11-02 08:25:11', '2022-11-03 22:11:13', '37000'),
(5599, 'Magni labore est ape', 'Motocicleta', 'Sed archite', 'MOLLIT', '15', '1001', 'Rem quia fuga Aliqu', '23', '2022-11-01 09:22:29', '2022-11-03 21:53:13', '60000'),
(5601, 'Fugit quo commodo i', 'Motocicleta', 'Illum debit', 'SIT QU', '10', '502', 'Ducimus itaque cons', '6', '2022-10-30 07:00:13', '2022-11-03 21:53:10', '110000'),
(5602, 'Omnis consectetur s', 'Motocicleta', 'Distinctio ', 'RERUM ', '5', '302', 'Quia ipsa consectet', '17', '2022-11-02 21:27:46', '2022-11-02 23:50:26', '2000'),
(5603, 'Adipisci et molestia', 'Camioneta', 'Beatae reru', 'VITAE ', '10', '501', 'Rerum dolorum delect', '13', '2022-11-03 04:33:06', '2022-11-03 21:52:19', '17000'),
(5604, 'Obcaecati adipisicin', 'Camioneta', 'Ad quo est ', 'SINT E', '5', '1101', 'Id officia sunt impe', '21', '2022-11-03 04:33:17', '2022-11-03 21:52:17', '17000'),
(5605, 'Est corporis eos in', 'Commodo mag', 'Asperiores ', 'Itaque', 'Vol', 'Face', 'Aliquam est nobis e', 'Off', '2022-11-03 06:06:42', '2022-11-03 21:52:16', '15000'),
(5608, 'Sequi iste voluptate', 'Motocicleta', 'Molestiae n', 'LAUDAN', 'Sal', '1201', 'Fugiat ab aliquip ex', '20', '2022-11-03 07:52:17', '2022-11-03 22:40:06', '14000'),
(5609, 'Ut pariatur Esse m', 'Quasi totam', 'Voluptatum ', 'Minim ', 'Con', 'Moll', 'Sint voluptates eos', 'Eni', '2022-11-03 08:33:05', '2022-11-03 21:39:19', '13000'),
(5610, 'Est voluptatibus off', 'Ut rerum do', 'Cupidatat s', 'Velit ', 'Et ', 'Dolo', 'Qui non omnis autem ', 'Qua', '2022-11-03 08:33:35', '2022-11-03 21:39:17', '13000'),
(5611, 'Hic obcaecati numqua', 'Nobis id et', 'Voluptate a', 'Aut ve', 'Vel', 'Sequ', 'Molestiae irure proi', 'Dol', '2022-11-03 08:33:39', '2022-11-03 21:47:19', '13000'),
(5612, 'Sed hic voluptas vol', 'Enim qui ci', 'Minus est u', 'Nisi a', 'Ut ', 'Mole', 'Duis ratione ea arch', 'Pro', '2022-11-03 08:39:43', '2022-11-03 21:39:15', '12000'),
(5613, 'Qui sapiente nobis m', 'Molestiae e', 'Tempore aut', 'Alias ', 'Adi', 'Rem ', 'Esse aliquam sit del', 'Exe', '2022-11-03 08:39:45', '2022-11-03 21:47:16', '13000'),
(5614, 'In voluptatum volupt', 'Eos cum ab ', 'Commodi fug', 'Labore', 'Acc', 'Ut e', 'Id pariatur Et exer', 'Iru', '2022-11-03 08:42:20', '2022-11-03 21:47:14', '13000'),
(5615, 'Hic iusto totam cupi', 'Odit consec', 'Asperiores ', 'Et pro', 'Ear', 'Id e', 'Facilis tenetur rem ', 'Aut', '2022-11-03 08:42:24', '2022-11-03 21:39:12', '12000'),
(5616, 'Consectetur impedit', 'Motocicleta', 'Sunt porro ', 'Facere', 'Exc', 'Et i', 'Sed quis optio haru', 'Ver', '2022-11-03 08:47:52', '2022-11-03 21:42:03', '12000'),
(5617, 'Beatae et consequatu', 'Exercitatio', 'Eligendi te', 'Amet m', 'Adi', 'Vero', 'Veniam libero error', 'Nih', '2022-11-03 08:48:39', '2022-11-03 21:42:01', '12000'),
(5618, 'Voluptas sit libero', 'Velit adipi', 'Dolor imped', 'Est re', 'Iru', 'Pari', 'Rerum ipsum quibusda', 'Cum', '2022-11-03 08:48:56', '2022-11-03 21:39:10', '12000'),
(5619, 'Quia consectetur au', 'Qui ex lore', 'Veritatis e', 'Fugiat', 'Mol', 'Cons', 'Possimus quisquam s', 'Mol', '2022-11-03 08:49:11', '2022-11-03 21:39:06', '12000'),
(5620, 'Reprehenderit sint v', 'Motocicleta', 'Ducimus par', 'Tempor', '4', 'Aut ', 'Non qui quaerat aut ', 'Ull', '2022-11-03 08:49:35', '2022-11-03 21:39:08', '12000'),
(5622, 'Tempora aut et tempo', 'Motocicleta', 'Dignissimos', 'QUI BE', '9', '501', 'Sint in sed debitis', '25', '2022-11-03 21:47:27', '2022-11-03 21:47:31', '0'),
(5623, 'Eum a molestiae esse', 'Motocicleta', 'Consequatur', 'PRAESE', '4', '803', 'Fuga Autem qui est ', '9', '2022-11-03 22:17:42', '2022-11-05 19:31:11', '45000'),
(5624, 'Velit veniam aut f', 'Camioneta', 'Voluptate e', 'ANIM P', '8', 'Saló', 'Provident dolor qua', '15', '2022-11-03 22:17:48', '2022-11-03 22:19:36', '0'),
(5627, 'Eos ea voluptate ten', 'Camioneta', 'At natus en', 'IUSTO ', '6', '102', 'Eligendi omnis itaqu', '4', '2022-11-05 02:48:16', '2023-03-28 00:37:26', '3429000'),
(5628, 'Possimus lorem rati', 'Carro', 'Sint rerum ', 'AB REP', '2', '503', 'Rerum in nulla illum', '2E', '2022-11-06 21:04:38', '2023-03-28 00:37:31', '3387000'),
(5629, 'Optio excepturi nul', 'Motocileta', 'Est harum p', 'QUI MA', '8', '702', 'Quia eligendi explic', '2L', '2022-11-06 21:14:09', '2022-11-16 03:35:23', '222000'),
(5630, 'Nesciunt nulla volu', 'Carro', 'Quam quo re', 'SOLUTA', '10', '802', 'Deserunt assumenda v', '27', '2022-11-07 07:43:18', '2022-11-15 23:16:28', '207000'),
(5631, 'Dolorem eum doloribu', 'Motocicleta', 'Praesentium', 'QUI NI', '13', '202', 'Sunt deserunt in in ', '29', '2022-11-08 19:01:11', '2022-11-15 23:00:31', '171000'),
(5632, 'Quia in eum unde sin', 'Motocicleta', 'Sit eum vol', 'REPELL', '10', '701', 'Et cum id excepteur ', '10', '2023-03-07 01:33:36', '2023-03-28 00:37:37', '503000'),
(5633, 'Enim aliquam facere ', 'Camioneta', 'Earum fugia', 'SIT UT', '15', '502', 'Nostrum id reiciendi', '28', '2023-03-07 01:35:04', '2023-03-28 00:37:44', '503000'),
(5634, 'Placeat dolor conse', 'Motocicleta', 'Sunt fugit ', 'CONSEQ', '7', '904', 'At qui sit eiusmod o', '2B', '2023-03-07 01:35:40', '2023-03-28 00:37:47', '503000'),
(5635, 'Mollitia fugiat quos', 'Camioneta', 'Eum veritat', 'ANIMI ', '13', '404', 'Laborum aliquid volu', '15', '2023-03-07 01:35:47', '2023-03-28 00:37:50', '503000'),
(5636, 'Dolor qui veniam in', 'Carro', 'Tempor pari', 'SUNT S', '14', '1201', 'Molestias sint optio', '2D', '2023-03-07 01:35:56', '2023-03-28 00:37:53', '503000'),
(5637, 'Dolorum quas fugiat ', 'Carro', 'Ea iste pro', 'IURE A', '16', '1104', 'Sit a non enim mini', '1B', '2023-03-07 01:38:17', '2023-03-28 00:37:57', '502000'),
(5638, 'Quae voluptatibus mi', 'Camioneta', 'In quidem n', 'PROVID', '4', '902', 'Ipsum non tempor ni', '17', '2023-03-07 01:39:44', '2023-03-28 02:09:18', '504000'),
(5639, 'Dolores repellendus', 'Camioneta', 'Aut perspic', 'EA PRA', 'Sal', '302', 'Quidem qui laborum l', '7', '2023-03-07 01:39:48', '2023-03-28 02:09:24', '504000'),
(5640, 'Est cillum consequa', 'Carro', 'Nisi nostru', 'AT AUT', '3', '403', 'Voluptate consequatu', '27', '2023-03-07 01:49:33', '2023-03-28 02:09:27', '504000'),
(5641, 'Eu quos veniam numq', 'Carro', 'Aperiam max', 'CUM CU', '16', '702', 'Adipisicing et id c', '6', '2023-03-07 02:12:53', '2023-03-28 02:09:29', '503000'),
(5642, 'Et est sunt sit om', 'Carro', 'Cillum qui ', 'ET MOD', '7', '403', 'Et vero amet aut al', '22', '2023-03-07 02:12:56', '2023-03-28 02:09:32', '503000'),
(5643, 'Minim quia cupiditat', 'Motocicleta', 'Accusamus e', 'VERO A', '14', '402', 'Laborum Dolorum non', '24', '2023-03-07 02:14:45', '2023-03-28 02:09:35', '503000'),
(5644, 'Aute ut et voluptate', 'Carro', 'Ut reiciend', 'AUT IN', '13', '104', 'Unde accusantium cum', '16', '2023-03-07 02:32:00', '2023-03-28 02:09:37', '503000'),
(5645, 'Cillum dolores qui d', 'Motocicleta', 'Excepteur e', 'VOLUPT', '6', 'Saló', 'Est accusantium in ', '2A', '2023-03-07 02:39:20', '2023-03-28 02:09:40', '503000'),
(5646, 'Elit ab eaque numqu', 'Carro', 'Iure hic vo', 'REPREH', '9', '701', 'Ab eum nobis praesen', '11', '2023-03-07 02:44:54', '2023-03-28 02:09:43', '503000'),
(5647, 'Ea dolorem vero mini', 'Motocicleta', 'Veritatis a', 'CUM CO', '2', '1002', 'Amet cupiditate do ', '14', '2023-03-07 03:24:27', '2023-03-28 02:09:46', '502000'),
(5648, 'Qui dolores architec', 'Carro', 'Laborum sit', 'NON QU', '3', '501', 'Veniam enim sit est', '5', '2023-03-07 04:16:23', '2023-03-07 23:52:35', '19000'),
(5649, 'At facere incididunt', 'Carro', 'Qui duis du', 'NIHIL ', '16', '504', 'Incidunt sint imped', '9', '2023-03-07 21:07:12', '2023-03-07 23:52:28', '2000'),
(5650, 'Sed temporibus inven', 'Carro', 'Veniam dign', 'IUSTO ', 'Admini', '202', 'Vel est quasi rerum ', '23', '2023-03-07 23:59:47', '2023-03-28 02:09:54', '482000'),
(5651, 'Et ipsa id aut dol', 'Motocicleta', 'Ipsam et qu', 'REM NE', '8', '1203', 'Sunt minus fuga Do', '2C', '2023-03-08 02:09:54', '2023-03-28 02:09:58', '479000'),
(5652, 'Eveniet iure veniam', 'Carro', 'Qui accusam', 'VENIAM', '8', '904', 'Veniam consequat D', '20', '2023-03-08 03:16:12', '2023-03-28 02:10:01', '478000'),
(5653, 'Cupiditate magni nul', 'Camioneta', 'Harum eum u', 'AUT IT', '1', '204', 'Sint optio obcaecat', '18', '2023-03-27 23:39:01', '2023-03-27 23:39:01', NULL),
(5654, 'Cupiditate magni nul', 'Camioneta', 'Harum eum u', 'AUT IT', '1', '204', 'Sint optio obcaecat', '18', '2023-03-27 23:39:01', '2023-03-27 23:39:01', NULL),
(5655, 'Neque excepteur reic', 'Carro', 'Quis unde c', 'RECUSA', '10', '1101', 'Officia earum anim n', '1E', '2023-03-27 23:46:25', '2023-03-27 23:46:25', NULL),
(5656, 'Voluptatem in eiusm', 'Motocicleta', 'Velit et qu', 'SED AD', '4', '102', 'Duis exercitation ut', '29', '2023-03-27 23:48:47', '2023-03-27 23:48:47', NULL),
(5657, 'Enim quidem qui cupi', 'Motocicleta', 'Et nobis ve', 'IUSTO ', '5', '104', 'Fugiat vel dolorem ', '21', '2023-03-27 23:50:21', '2023-03-27 23:50:21', NULL),
(5658, 'Reiciendis sed et id', 'Camioneta', 'Ex ipsum es', 'ASPERN', '15', '102', 'Quod voluptate atque', '5', '2023-03-27 23:51:12', '2023-03-27 23:51:12', NULL),
(5659, 'Reiciendis sed et id', 'Camioneta', 'Ex ipsum es', 'ASPERN', '15', '102', 'Quod voluptate atque', '5', '2023-03-27 23:51:12', '2023-03-27 23:51:12', NULL),
(5660, 'Veniam sit porro au', 'Motocicleta', 'Qui eos con', 'EST LA', '7', '402', 'Dolor facilis aliqua', '30', '2023-03-27 23:59:24', '2023-03-27 23:59:24', NULL),
(5661, 'Aliquam sit incididu', 'Motocicleta', 'Consequuntu', 'VEL EX', '14', '302', 'Tempor qui enim et l', '13', '2023-03-28 00:00:32', '2023-03-28 00:37:22', '1000'),
(5662, 'Aliquam sit incididu', 'Motocicleta', 'Consequuntu', 'VEL EX', '14', '302', 'Tempor qui enim et l', '13', '2023-03-28 00:00:32', '2023-03-28 00:37:18', '0'),
(5663, 'Dolore mollitia ut d', 'Carro', 'Eligendi om', 'AD DOL', '15', '803', 'Nulla fugiat incidun', '26', '2023-03-28 00:04:25', '2023-03-28 00:37:15', '0'),
(5664, 'Itaque repudiandae e', 'Camioneta', 'Ea sequi ad', 'MAGNA ', '10', '103', 'Qui neque aut odio e', '3', '2023-03-28 00:09:28', '2023-03-28 00:37:12', '0'),
(5665, 'Sunt vero officia iu', 'Carro', 'Laboriosam ', 'EOS BE', '15', '403', 'Quia qui dolor aliqu', '1D', '2023-03-28 00:12:35', '2023-03-28 00:37:07', '0'),
(5666, 'Repellendus Tempore', 'Camioneta', 'Molestias a', 'QUIDEM', '10', '501', 'Voluptates numquam m', '12', '2023-03-28 00:24:06', '2023-03-28 00:36:51', '0'),
(5667, 'Enim fuga Et occaec', 'Carro', 'Consequat P', 'MINUS ', '5', '1204', 'Amet delectus quib', '1A', '2023-03-28 00:29:14', '2023-03-28 00:37:04', '0'),
(5668, 'Corrupti ad et fugi', 'Carro', 'Soluta omni', 'IPSUM ', '4', '901', 'Doloremque corporis ', '1C', '2023-03-28 00:31:40', '2023-03-28 00:36:59', '0'),
(5669, 'Reprehenderit placea', 'Carro', 'Quibusdam a', 'MOLEST', '16', '1103', 'Fugiat quas aliquip ', '19', '2023-03-28 00:35:16', '2023-03-28 00:36:40', '0'),
(5670, 'Consectetur animi h', 'Camioneta', 'Esse anim a', 'DOLORU', '6', '803', 'Aut aute adipisicing', '2D', '2023-03-28 00:38:13', '2023-03-28 00:38:13', NULL),
(5671, 'Ut magna ad commodo ', 'Carro', 'Dolorum min', 'POSSIM', '13', '402', 'Distinctio Pariatur', '1B', '2023-03-28 00:40:01', '2023-03-28 00:40:01', NULL),
(5672, 'Ab dolore dolor volu', 'Motocicleta', 'Inventore l', 'AMET D', '6', '1003', 'Distinctio Nihil ip', '3', '2023-03-28 00:41:43', '2023-03-28 00:41:43', NULL),
(5673, 'Sequi incidunt volu', 'Carro', 'Cum quia ma', 'ILLO U', '11', '703', 'Neque ipsa amet ve', '2B', '2023-03-28 00:55:41', '2023-03-28 00:55:41', NULL),
(5674, 'Voluptatem in nostru', 'Carro', 'Vel ut in c', 'QUIA N', '10', '603', 'Quidem voluptate ut ', '25', '2023-03-28 01:03:31', '2023-03-28 01:03:31', NULL),
(5675, 'Enim cupidatat id il', 'Camioneta', 'Nihil dicta', 'CUPIDA', '4', '403', 'Adipisicing corporis', '9', '2023-03-28 01:08:09', '2023-03-28 01:08:09', NULL),
(5676, 'Id voluptate expedi', 'Motocicleta', 'Unde reicie', 'NESCIU', '16', '103', 'Odit quis rerum reru', '13', '2023-03-28 01:08:36', '2023-03-28 01:08:36', NULL),
(5677, 'Dolores expedita ill', 'Camioneta', 'Deserunt ra', 'DIGNIS', '12', '501', 'Est quia voluptas ut', '12', '2023-03-28 01:08:55', '2023-03-28 01:08:55', NULL),
(5678, 'Accusamus blanditiis', 'Carro', 'Iusto inven', 'VOLUPT', '9', '402', 'Eveniet voluptatibu', '1D', '2023-03-28 01:12:42', '2023-03-28 01:12:42', NULL),
(5679, 'Officia velit labori', 'Motocicleta', 'Voluptas re', 'DOLORI', '13', 'Salón ', 'Perferendis et ullam', '4', '2023-03-28 01:29:55', '2023-03-28 01:29:55', NULL),
(5680, 'Tempor laudantium v', 'Motocicleta', 'Aliquid dol', 'MODI R', '12', '102', 'Nostrum delectus vo', '19', '2023-03-28 01:46:33', '2023-03-28 01:46:33', NULL),
(5681, 'Quis et eum perferen', 'Camioneta', 'Quia mollit', 'SAPIEN', '14', '701', 'Quisquam veniam fac', '8', '2023-03-28 01:47:53', '2023-03-28 01:47:53', NULL),
(5682, 'Consequatur Velit e', 'Camioneta', 'Magnam reru', 'MAIORE', '12', '302', 'Expedita soluta et q', '10', '2023-03-28 01:49:32', '2023-03-28 01:49:32', NULL),
(5683, 'Voluptas ex ut tempo', 'Motocicleta', 'Mollit dist', 'SIT ES', '15', '302', 'Fuga Suscipit nihil', '1C', '2023-03-28 01:55:53', '2023-03-28 01:55:53', NULL),
(5684, 'Et dolores ullamco r', 'Camioneta', 'Sit dolores', 'OMNIS ', '7', '902', 'Enim et facere eius ', '26', '2023-03-28 02:02:01', '2023-03-28 02:02:01', NULL),
(5685, 'Minima molestiae quo', 'Carro', 'Maxime earu', 'IPSUM ', '5', '401', 'Ea sed repellendus ', '15', '2023-03-28 02:06:05', '2023-03-28 02:06:05', NULL),
(5686, 'Dolor corporis volup', 'Motocicleta', 'Officia dol', 'AB DEL', '5', '203', 'Do ad ut voluptates ', '2A', '2023-03-28 02:10:21', '2023-03-28 02:10:21', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5687;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
