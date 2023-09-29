-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 28-09-2023 a las 21:58:54
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
-- Base de datos: `flujo_residencial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo_funcionario`
--

CREATE TABLE `cargo_funcionario` (
  `cago_funcionario` int(11) NOT NULL,
  `cargo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cargo_funcionario`
--

INSERT INTO `cargo_funcionario` (`cago_funcionario`, `cargo`) VALUES
(1, 'portero'),
(2, 'vigilante'),
(3, 'limpieza'),
(4, 'administracion'),
(5, 'contaduria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `color_vehiculo`
--

CREATE TABLE `color_vehiculo` (
  `color_vehiculo_id` int(11) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `color_vehiculo`
--

INSERT INTO `color_vehiculo` (`color_vehiculo_id`, `color`) VALUES
(1, 'Blanco'),
(2, 'Negro'),
(3, 'Plateado / Gris'),
(4, 'Azul'),
(5, 'Rojo'),
(6, 'Verde'),
(7, 'Marrón'),
(8, 'Beige'),
(9, 'Amarillo'),
(10, 'Naranja'),
(11, 'Dorado'),
(12, 'Bronce'),
(13, 'Morado'),
(14, 'Rosa'),
(15, 'Turquesa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `entrada_id` int(11) NOT NULL,
  `usuaro_id` int(11) NOT NULL,
  `funcionario_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`entrada_id`, `usuaro_id`, `funcionario_id`, `fecha`, `hora`) VALUES
(1, 2, 4, '0000-00-00', '10:23:00'),
(2, 4, 9, '0000-00-00', '22:37:00'),
(3, 5, 4, '0000-00-00', '07:15:00'),
(4, 45, 10, '0000-00-00', '13:16:00'),
(5, 16, 10, '0000-00-00', '13:24:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcionarios`
--

CREATE TABLE `funcionarios` (
  `funcionario_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cargo_funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `funcionarios`
--

INSERT INTO `funcionarios` (`funcionario_id`, `usuario_id`, `cargo_funcionario`) VALUES
(1, 81, 2),
(2, 82, 3),
(3, 83, 2),
(4, 84, 1),
(5, 85, 3),
(6, 86, 3),
(7, 87, 1),
(8, 88, 2),
(9, 89, 1),
(10, 90, 1),
(11, 91, 3),
(12, 92, 2),
(13, 93, 2),
(14, 94, 1),
(15, 95, 2),
(16, 96, 3),
(17, 97, 4),
(18, 98, 4),
(19, 99, 4),
(20, 100, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmuebles`
--

CREATE TABLE `inmuebles` (
  `inmueble_id` int(11) NOT NULL,
  `numero_inmueble` varchar(15) NOT NULL,
  `parqueadero_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inmuebles`
--

INSERT INTO `inmuebles` (`inmueble_id`, `numero_inmueble`, `parqueadero_id`) VALUES
(1, 'A01', 1),
(2, 'A02', 2),
(3, 'A03', 3),
(4, 'A04', 4),
(5, 'A05', 5),
(6, 'A06', 6),
(7, 'A07', 7),
(8, 'A08', 8),
(9, 'A09', 9),
(10, 'A10', 10),
(11, 'B01', 11),
(12, 'B02', 12),
(13, 'B03', 13),
(14, 'B04', 14),
(15, 'B05', 15),
(16, 'B06', 16),
(17, 'B07', 17),
(18, 'B08', 18),
(19, 'B09', 19),
(20, 'B10', 20),
(21, 'C01', 21),
(22, 'C02', 22),
(23, 'C03', 23),
(24, 'C04', 24),
(25, 'C05', 25),
(26, 'C06', 26),
(27, 'C07', 27),
(28, 'C08', 28),
(29, 'C09', 29),
(30, 'C10', 30),
(31, 'D01', 31),
(32, 'D02', 32),
(33, 'D03', 33),
(34, 'D04', 34),
(35, 'D05', 35),
(36, 'D06', 36),
(37, 'D07', 37),
(38, 'D08', 38),
(39, 'D09', 39),
(40, 'D10', 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paqueteria`
--

CREATE TABLE `paqueteria` (
  `paquete_id` int(11) NOT NULL,
  `funcionario_id` int(11) NOT NULL,
  `inmueble_id` int(11) NOT NULL,
  `fecah_entrega` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paqueteria`
--

INSERT INTO `paqueteria` (`paquete_id`, `funcionario_id`, `inmueble_id`, `fecah_entrega`) VALUES
(1, 10, 4, '0000-00-00'),
(2, 9, 26, '0000-00-00'),
(3, 9, 18, '0000-00-00'),
(4, 14, 30, '0000-00-00'),
(5, 7, 16, '0000-00-00'),
(6, 4, 12, '0000-00-00'),
(7, 9, 40, '0000-00-00'),
(8, 14, 32, '0000-00-00'),
(9, 4, 14, '0000-00-00'),
(10, 7, 20, '0000-00-00'),
(11, 14, 10, '0000-00-00'),
(12, 4, 38, '0000-00-00'),
(13, 9, 22, '0000-00-00'),
(14, 10, 36, '0000-00-00'),
(15, 4, 8, '0000-00-00'),
(16, 10, 28, '0000-00-00'),
(17, 10, 34, '0000-00-00'),
(18, 7, 24, '0000-00-00'),
(19, 14, 2, '0000-00-00'),
(20, 7, 6, '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parqueaderos`
--

CREATE TABLE `parqueaderos` (
  `parqueadero_id` int(11) NOT NULL,
  `parqueadero_1` int(11) NOT NULL,
  `parqueadero_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `parqueaderos`
--

INSERT INTO `parqueaderos` (`parqueadero_id`, `parqueadero_1`, `parqueadero_2`) VALUES
(1, 1, 2),
(2, 3, 4),
(3, 5, 6),
(4, 7, 8),
(5, 9, 10),
(6, 11, 12),
(7, 13, 14),
(8, 15, 16),
(9, 17, 18),
(10, 19, 20),
(11, 21, 22),
(12, 23, 24),
(13, 25, 26),
(14, 27, 28),
(15, 29, 30),
(16, 31, 32),
(17, 33, 34),
(18, 35, 36),
(19, 37, 38),
(20, 39, 40),
(21, 41, 42),
(22, 43, 44),
(23, 45, 46),
(24, 47, 48),
(25, 49, 50),
(26, 51, 52),
(27, 53, 54),
(28, 55, 56),
(29, 57, 58),
(30, 59, 60),
(31, 61, 62),
(32, 63, 64),
(33, 65, 66),
(34, 67, 68),
(35, 69, 70),
(36, 71, 72),
(37, 73, 74),
(38, 75, 76),
(39, 77, 78),
(40, 79, 80),
(41, 81, 82),
(42, 83, 84),
(43, 85, 86),
(44, 87, 88),
(45, 89, 90),
(46, 91, 92),
(47, 93, 94),
(48, 95, 96),
(49, 97, 98),
(50, 99, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `residentes`
--

CREATE TABLE `residentes` (
  `residente_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `inmueble_id` int(11) NOT NULL,
  `encargado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `residentes`
--

INSERT INTO `residentes` (`residente_id`, `usuario_id`, `inmueble_id`, `encargado`) VALUES
(1, 1, 5, 0),
(2, 2, 38, 0),
(3, 3, 8, 0),
(4, 4, 6, 0),
(5, 5, 4, 0),
(6, 6, 30, 0),
(7, 7, 15, 0),
(8, 8, 8, 0),
(9, 9, 27, 0),
(10, 10, 15, 0),
(11, 11, 26, 0),
(12, 12, 8, 0),
(13, 13, 29, 0),
(14, 14, 14, 0),
(15, 15, 16, 0),
(16, 16, 1, 0),
(17, 17, 6, 0),
(18, 18, 23, 0),
(19, 19, 18, 0),
(20, 20, 21, 0),
(21, 21, 10, 0),
(22, 22, 20, 0),
(23, 23, 22, 0),
(24, 24, 20, 0),
(25, 25, 16, 0),
(26, 26, 16, 0),
(27, 27, 36, 0),
(28, 28, 14, 0),
(29, 29, 25, 0),
(30, 30, 2, 0),
(31, 31, 2, 0),
(32, 32, 11, 0),
(33, 33, 28, 0),
(34, 34, 35, 0),
(35, 35, 39, 0),
(36, 36, 34, 0),
(37, 37, 6, 0),
(38, 38, 3, 0),
(39, 39, 13, 0),
(40, 40, 7, 0),
(41, 41, 24, 0),
(42, 42, 13, 0),
(43, 43, 12, 0),
(44, 44, 17, 0),
(45, 45, 19, 0),
(46, 46, 40, 0),
(47, 47, 4, 0),
(48, 48, 9, 0),
(49, 49, 14, 0),
(50, 50, 33, 0),
(51, 51, 1, 0),
(52, 52, 6, 0),
(53, 53, 1, 0),
(54, 54, 31, 0),
(55, 55, 4, 0),
(56, 56, 32, 0),
(57, 57, 37, 0),
(58, 58, 7, 0),
(59, 59, 9, 0),
(60, 60, 12, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuaro`
--

CREATE TABLE `tipo_usuaro` (
  `tipo_usuario_id` int(11) NOT NULL,
  `tipo_usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_usuaro`
--

INSERT INTO `tipo_usuaro` (`tipo_usuario_id`, `tipo_usuario`) VALUES
(1, 'Residente'),
(2, 'Visitante'),
(3, 'Funcionario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_vehiculo`
--

CREATE TABLE `tipo_vehiculo` (
  `tipo_vehiculo_id` int(11) NOT NULL,
  `tipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_vehiculo`
--

INSERT INTO `tipo_vehiculo` (`tipo_vehiculo_id`, `tipo`) VALUES
(1, 'carro a gasolina'),
(2, 'carro electrico'),
(3, 'carro hibrido'),
(4, 'moto'),
(5, 'cuatrimoto'),
(6, 'bicibleta'),
(7, 'scooter');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido_1` varchar(255) NOT NULL,
  `apellido_2` varchar(255) NOT NULL,
  `celular` bigint(11) NOT NULL,
  `documento` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tipo_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `nombre`, `apellido_1`, `apellido_2`, `celular`, `documento`, `email`, `tipo_usuario`) VALUES
(2, 'Mariana', 'Martinez', 'Aguilar', 2147483647, 104834919, 'MarianaMartinez@gmail.com', 1),
(3, 'Camilo', 'Ramirez', 'Sanchez', 2147483647, 104941837, 'CamiloRamirez@gmail.com', 1),
(4, 'Daniel ', 'Ochoa', 'Rodriguez', 2147483647, 104567624, 'Daniel Ochoa@gmail.com', 1),
(5, 'David', 'Nieto', 'Alvarado', 2147483647, 105743722, 'DavidNieto@gmail.com', 1),
(6, 'Marco', 'Diaz', 'Corona', 2147483647, 106064476, 'MarcoDiaz@gmail.com', 1),
(7, 'Maria', 'Torres', 'Sanchez', 2147483647, 105850640, 'MariaTorres@gmail.com', 1),
(8, 'Rosa', 'Cortes', 'Alvarado', 2147483647, 105422968, 'RosaCortes@gmail.com', 1),
(9, 'Diana', 'Macana', 'Ramirez', 2147483647, 106117935, 'DianaMacana@gmail.com', 1),
(10, 'Freddy', 'Naranjo', 'Ochoa', 2147483647, 103658821, 'FreddyNaranjo@gmail.com', 1),
(11, 'Alberto', 'Hernandez', 'Estrada', 2147483647, 107080197, 'AlbertoHernandez@gmail.com', 1),
(12, 'Juan Pablo', 'Briones', 'Alvarez', 2147483647, 103872657, 'JuanBriones@gmail.com', 1),
(13, 'Beatriz', 'Loma', 'Peña', 2147483647, 103017313, 'BeatrizLoma@gmail.com', 1),
(14, 'Camilo', 'Barba', 'Fierros', 2147483647, 106011017, 'CamiloBarba@gmail.com', 1),
(15, 'William', 'Gomez', 'Salas', 2147483647, 103551903, 'WilliamGomez@gmail.com', 1),
(16, 'Luz', 'Rosas', 'Aguilar', 2147483647, 106385230, 'LuzRosas@gmail.com', 1),
(17, 'Mario', 'Robles', 'Hernandez', 2147483647, 104193411, 'MarioRobles@gmail.com', 1),
(18, 'Lucía', 'Olivares', 'Rosas', 2147483647, 106545607, 'LucíaOlivares@gmail.com', 1),
(19, 'Natalia', 'Esquivel', 'Saucedo', 2147483647, 103177690, 'NataliaEsquivel@gmail.com', 1),
(20, 'Valeria', 'Muñiz', 'Muñiz', 2147483647, 107400951, 'ValeriaMuñiz@gmail.com', 1),
(21, 'Raúl', 'Ortiz', 'Hernandez', 2147483647, 104086493, 'RaúlOrtiz@gmail.com', 1),
(22, 'Victoria', 'Saucedo', 'Espinoza', 2147483647, 107187115, 'VictoriaSaucedo@gmail.com', 1),
(23, 'Tatiana', 'Gonzalez', 'Rios', 2147483647, 103979575, 'TatianaGonzalez@gmail.com', 1),
(24, 'Ricardo', 'Rios', 'Padilla', 2147483647, 103070772, 'RicardoRios@gmail.com', 1),
(25, 'Julián', 'Cortes', 'Ramos', 2147483647, 106278312, 'JuliánCortes@gmail.com', 1),
(26, 'Rosa', 'Gomez', 'Luevanos', 2147483647, 105957558, 'RosaGomez@gmail.com', 1),
(27, 'Edison', 'Meza', 'Jimenez', 2147483647, 103926116, 'EdisonMeza@gmail.com', 1),
(28, 'Jenny', 'Ibarra', 'Flores', 2147483647, 104460706, 'JennyIbarra@gmail.com', 1),
(29, 'Lina', 'Alvarez', 'Rojas', 2147483647, 104246870, 'LinaAlvarez@gmail.com', 1),
(30, 'Cristian', 'Alvarez', 'Hernandez', 2147483647, 104781460, 'CristianAlvarez@gmail.com', 1),
(31, 'Ana', 'Gutierrez', 'Teran', 2147483647, 106866361, 'AnaGutierrez@gmail.com', 1),
(32, 'Oscar', 'Velez', 'Meza', 2147483647, 103338067, 'OscarVelez@gmail.com', 1),
(33, 'María José', 'Rivera', 'Gutierrez', 2147483647, 107026738, 'MariaRivera@gmail.com', 1),
(34, 'David', 'Ascencio', 'Reyes', 2147483647, 106599066, 'DavidAscencio@gmail.com', 1),
(35, 'Felipe', 'Luevanos', 'Jimenez', 2147483647, 103605362, 'FelipeLuevanos@gmail.com', 1),
(36, 'Camila', 'Hernandez', 'Diaz', 2147483647, 201453681, 'CamilaHernandez@gmail.com', 1),
(37, 'Omar', 'Sanchez', 'Rocha', 2147483647, 104995296, 'OmarSanchez@gmail.com', 1),
(38, 'Daniela', 'Espinoza', 'Naranjo', 2147483647, 106492148, 'DanielaEspinoza@gmail.com', 1),
(39, 'Hernán', 'Ortiz', 'Briones', 2147483647, 103498444, 'HernánOrtiz@gmail.com', 1),
(40, 'Fernando', 'Hernandez', 'Robles', 2147483647, 102910395, 'FernandoHernandez@gmail.com', 1),
(41, 'Eduardo', 'Garcia', 'Gutierrez', 2147483647, 106759443, 'EduardoGarcia@gmail.com', 1),
(42, 'Samuel', 'Torres', 'Lopez', 2147483647, 106705984, 'SamuelTorres@gmail.com', 1),
(43, 'Sandra', 'Ayala', 'Ortiz', 2147483647, 103391526, 'SandraAyala@gmail.com', 1),
(44, 'Diego', 'Alvarez', 'Mejia', 2147483647, 103444985, 'DiegoAlvarez@gmail.com', 1),
(45, 'Angélica', 'Diaz', 'De Loma', 2147483647, 102750018, 'AngélicaDiaz@gmail.com', 1),
(46, 'Yolanda', 'Hernandez', 'Cortes', 2147483647, 107347492, 'YolandaHernandez@gmail.com', 1),
(47, 'Jorge', 'Ventura', 'Diaz', 2147483647, 107454410, 'JorgeVentura@gmail.com', 1),
(48, 'Alejandro', 'Hernandez', 'Romero', 2147483647, 106973279, 'AlejandroHernandez@gmail.com', 1),
(49, 'Alejandra', 'Valencia', 'Saldaña', 2147483647, 102453694, 'AlejandraValencia@gmail.com', 1),
(50, 'José', 'Padilla', 'Olivares', 2147483647, 105048755, 'JoséPadilla@gmail.com', 1),
(51, 'Antonia', 'Sanchez', 'Velazquez', 2147483647, 105102214, 'AntoniaSanchez@gmail.com', 1),
(52, 'Rafael', 'Rocha', 'Gomez', 2147483647, 105529886, 'RafaelRocha@gmail.com', 1),
(53, 'Sofía', 'Reyes', 'Ortiz', 2147483647, 102589641, 'SofíaReyes@gmail.com', 1),
(54, 'Sergio', 'Garcia', 'Hernandez', 2147483647, 105636804, 'SergioGarcia@gmail.com', 1),
(55, 'Natalia', 'Aguila', 'Tabarez', 2147483647, 124756310, 'NataliaAguila@gmail.com', 1),
(56, 'Miguel', 'Estrada', 'Garcia', 2147483647, 106224853, 'MiguelEstrada@gmail.com', 1),
(57, 'Jairo', 'Farias', 'Torres', 2147483647, 104139952, 'JairoFarias@gmail.com', 1),
(58, 'Diego', 'Fierros', 'Jimenez', 2147483647, 105155673, 'DiegoFierros@gmail.com', 1),
(59, 'Daniela', 'Flores', 'Alvarez', 2147483647, 102803477, 'DanielaFlores@gmail.com', 1),
(60, 'Isabel', 'Franco', 'Gonzalez', 2147483647, 105797181, 'IsabelFranco@gmail.com', 1),
(61, 'Manuel', 'Galvan', 'Garcia', 2147483647, 105904099, 'ManuelGalvan@gmail.com', 2),
(62, 'Mauricio', 'Gutierrez', 'Farias', 2147483647, 102457863, 'MauricioGutierrez@gmail.com', 2),
(63, 'Carolina', 'Hernandez', 'Ascencio', 2147483647, 125678541, 'CarolinaHernandez@gmail.com', 2),
(64, 'Estefanía', 'Jimenez', 'Alvarez', 2147483647, 103231149, 'EstefaníaJimenez@gmail.com', 2),
(65, 'Nelson', 'Jimenez', 'Rivera', 2147483647, 107240574, 'NelsonJimenez@gmail.com', 2),
(66, 'Santiago', 'Lopez', 'Hernandez', 2147483647, 102856936, 'SantiagoLopez@gmail.com', 2),
(67, 'Adriana', 'Lopez', 'Ventura', 2147483647, 104033034, 'AdrianaLopez@gmail.com', 2),
(68, 'Daniel', 'Lopez', 'Mejia', 2147483647, 103765739, 'DanielLopez@gmail.com', 2),
(69, 'Patricia', 'Medina', 'Vargas', 2147483647, 106919820, 'PatriciaMedina@gmail.com', 2),
(70, 'Sebastián', 'Mejia', 'Lopez', 2147483647, 105583345, 'SebastiánMejia@gmail.com', 2),
(71, 'Jhon', 'Mejia', 'Hernandez', 2147483647, 103712280, 'JhonMejia@gmail.com', 2),
(72, 'Sebastián', 'Peña', 'Chavez', 2147483647, 103124231, 'SebastiánPeña@gmail.com', 2),
(73, 'Andrés', 'Perez', 'Cortes', 2147483647, 107133656, 'AndrésPerez@gmail.com', 2),
(74, 'Julia', 'Ramirez', 'Garcia', 2147483647, 102643100, 'JuliaRamirez@gmail.com', 2),
(75, 'Marcela', 'Rodriguez', 'Rodriguez', 2147483647, 105209132, 'MarcelaRodriguez@gmail.com', 2),
(76, 'Carlos', 'Romero', 'Barba', 2147483647, 106652525, 'CarlosRomero@gmail.com', 2),
(77, 'Santiago', 'Ruiz', 'Esquivel', 2147483647, 104514165, 'SantiagoRuiz@gmail.com', 2),
(78, 'Mateo', 'Salas', 'Rojas', 2147483647, 102696559, 'MateoSalas@gmail.com', 2),
(79, 'Andrea', 'Saldaña', 'Michel', 2147483647, 104888378, 'AndreaSaldaña@gmail.com', 2),
(80, 'Luis', 'Sanchez', 'Perez', 2147483647, 104353788, 'LuisSanchez@gmail.com', 2),
(81, 'Clara', 'Suarez', 'Torres', 2147483647, 105262591, 'ClaraSuarez@gmail.com', 3),
(82, 'Andrés', 'Tabarez', 'Suarez', 2147483647, 103819198, 'AndrésTabarez@gmail.com', 3),
(83, 'Teresa', 'Teran', 'Sanchez', 2147483647, 107294033, 'TeresaTeran@gmail.com', 3),
(84, 'Alejandro', 'Vargas', 'Gomez', 2147483647, 954263469, 'AlejandroVargas@gmail.com', 3),
(85, 'Gabriel', 'Velazquez', 'Marquez', 2147483647, 102963854, 'GabrielVelazquez@gmail.com', 3),
(86, 'Esteban', 'Corona', 'Ramirez', 2147483647, 106438689, 'EstebanCorona@gmail.com', 3),
(87, 'Mariana', 'Ramos', 'Galvan', 2147483647, 104674542, 'MarianaRamos@gmail.com', 3),
(88, 'Astrid', 'Jimenez', 'Ruiz', 2147483647, 106171394, 'AstridJimenez@gmail.com', 3),
(89, 'Gabriel', 'Rojas', 'Nieto', 2147483647, 102536182, 'GabrielRojas@gmail.com', 3),
(90, 'Samuel', 'Alvarado', 'Medina', 2147483647, 104728001, 'SamuelAlvarado@gmail.com', 3),
(91, 'Sofía', 'Aguilar', 'Silva', 2147483647, 103284608, 'SofíaAguilar@gmail.com', 3),
(92, 'Felipe', 'Michel', 'Ibarra', 2147483647, 104621083, 'FelipeMichel@gmail.com', 3),
(93, 'Paola', 'Silva', 'Ruiz', 2147483647, 104300329, 'PaolaSilva@gmail.com', 3),
(94, 'Isabella', 'Rodriguez', 'Valencia', 2147483647, 105476427, 'IsabellaRodriguez@gmail.com', 3),
(95, 'Juan', 'Chavez', 'Ayala', 2147483647, 106331771, 'JuanChavez@gmail.com', 3),
(96, 'Valentina', 'Marquez', 'Macana', 2147483647, 104407247, 'ValentinaMarquez@gmail.com', 3),
(97, 'Javier', 'Rojas', 'Aguila', 2147483647, 110249547, 'JavierRojas@gmail.com', 3),
(98, 'Viviana', 'Alvarado', 'Velez', 2147483647, 105369509, 'VivianaAlvarado@gmail.com', 3),
(99, 'Diana', 'Aguilar', 'Martinez', 2147483647, 105690263, 'DianaAguilar@gmail.com', 3),
(100, 'Antonio', 'Ruiz', 'Franco', 2147483647, 105316050, 'AntonioRuiz@gmail.com', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `vehiculo_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `placa` varchar(7) NOT NULL,
  `tipo_vehiculo_id` int(11) NOT NULL,
  `color_vehiculo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`vehiculo_id`, `usuario_id`, `placa`, `tipo_vehiculo_id`, `color_vehiculo_id`) VALUES
(1, 23, 'TUV 678', 1, 1),
(2, 31, 'CDE 56G', 4, 5),
(3, 14, 'EFG 789', 3, 2),
(4, 25, 'NOP 67P', 5, 1),
(5, 65, 'ABD 34F', 5, 4),
(6, 28, 'PQR 891', 1, 5),
(7, 17, 'CEF 67F', 4, 11),
(8, 16, 'FGH 890', 1, 10),
(9, 20, 'BCD 234', 3, 2),
(10, 12, 'LMN 67D', 4, 2),
(11, 24, 'YZA 901', 3, 3),
(12, 21, '', 6, 1),
(13, 30, 'VWX 675', 1, 7),
(14, 18, '', 6, 6),
(15, 33, 'KLM 567', 1, 2),
(16, 5, 'EFG 567', 2, 8),
(17, 84, 'WXY 901', 1, 3),
(18, 100, 'HIJ 234', 3, 3),
(19, 64, 'XYZ 896', 1, 2),
(20, 70, '', 6, 4),
(21, 10, 'YZA 901', 1, 1),
(22, 32, 'BCD 456', 2, 3),
(23, 19, 'OPQ 901', 2, 5),
(24, 13, 'DEF 456', 2, 9),
(25, 99, 'JKL 233', 1, 8),
(26, 67, 'HIJ 895', 1, 1),
(27, 69, 'QRS 345', 3, 9),
(28, 8, 'KLM 345', 1, 3),
(29, 29, 'PQR 890', 1, 4),
(30, 66, 'NOP 89H', 4, 3),
(31, 68, 'GHI 901', 2, 1),
(32, 97, '', 7, 7),
(33, 85, '', 6, 1),
(34, 9, 'MNO 56D', 4, 6),
(35, 98, 'STU 345', 1, 3),
(36, 11, 'ZAB 890', 1, 6),
(37, 22, 'UVW 567', 1, 1),
(38, 34, 'MNO 567', 3, 3),
(39, 27, 'QRS 901', 1, 10),
(40, 26, 'IJK 342', 1, 3),
(41, 6, 'RST 23K', 4, 1),
(42, 15, 'GHI 780', 2, 2),
(43, 7, 'STU 347', 1, 12),
(44, 4, '', 7, 4),
(45, 71, '', 7, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitantes`
--

CREATE TABLE `visitantes` (
  `visitante_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `inmueble_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `visitantes`
--

INSERT INTO `visitantes` (`visitante_id`, `usuario_id`, `inmueble_id`) VALUES
(1, 61, 18),
(2, 62, 25),
(3, 63, 2),
(4, 64, 11),
(5, 65, 4),
(6, 66, 23),
(7, 67, 30),
(8, 68, 14),
(9, 69, 16),
(10, 70, 2),
(11, 71, 36),
(12, 72, 10),
(13, 73, 20),
(14, 74, 16),
(15, 75, 6),
(16, 76, 16),
(17, 77, 22),
(18, 78, 20),
(19, 79, 21),
(20, 80, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo_funcionario`
--
ALTER TABLE `cargo_funcionario`
  ADD PRIMARY KEY (`cago_funcionario`);

--
-- Indices de la tabla `color_vehiculo`
--
ALTER TABLE `color_vehiculo`
  ADD PRIMARY KEY (`color_vehiculo_id`);

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`entrada_id`);

--
-- Indices de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  ADD PRIMARY KEY (`inmueble_id`);

--
-- Indices de la tabla `paqueteria`
--
ALTER TABLE `paqueteria`
  ADD PRIMARY KEY (`paquete_id`);

--
-- Indices de la tabla `parqueaderos`
--
ALTER TABLE `parqueaderos`
  ADD PRIMARY KEY (`parqueadero_id`);

--
-- Indices de la tabla `residentes`
--
ALTER TABLE `residentes`
  ADD PRIMARY KEY (`residente_id`);

--
-- Indices de la tabla `tipo_usuaro`
--
ALTER TABLE `tipo_usuaro`
  ADD PRIMARY KEY (`tipo_usuario_id`);

--
-- Indices de la tabla `tipo_vehiculo`
--
ALTER TABLE `tipo_vehiculo`
  ADD PRIMARY KEY (`tipo_vehiculo_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`);

--
-- Indices de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  ADD PRIMARY KEY (`visitante_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo_funcionario`
--
ALTER TABLE `cargo_funcionario`
  MODIFY `cago_funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `color_vehiculo`
--
ALTER TABLE `color_vehiculo`
  MODIFY `color_vehiculo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `entrada_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  MODIFY `inmueble_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `paqueteria`
--
ALTER TABLE `paqueteria`
  MODIFY `paquete_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `parqueaderos`
--
ALTER TABLE `parqueaderos`
  MODIFY `parqueadero_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `residentes`
--
ALTER TABLE `residentes`
  MODIFY `residente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `tipo_usuaro`
--
ALTER TABLE `tipo_usuaro`
  MODIFY `tipo_usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_vehiculo`
--
ALTER TABLE `tipo_vehiculo`
  MODIFY `tipo_vehiculo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  MODIFY `visitante_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
