-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2020 a las 02:37:31
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdbanco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `usuario` varchar(20) NOT NULL,
  `ident` int(30) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `contrasena` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`usuario`, `ident`, `nombre`, `contrasena`) VALUES
('arbeygira', 100193029, 'luis arbey giraldo', '1234'),
('arelis828', 103696536, 'liseth Arelis Giraldo', '1234'),
('lise-th18', 1036965347, 'liseth Giraldo', '1234'),
('nmorales', 43421408, 'alba nubia morales', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `Nrocuenta` int(20) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `Fecha` date NOT NULL,
  `saldo` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`Nrocuenta`, `usuario`, `Fecha`, `saldo`) VALUES
(7821, 'arbeygira', '2020-03-26', 10000),
(7822, 'nmorales', '2016-06-30', 7959500),
(7823, 'lise-th18', '2018-06-22', 46640000),
(7824, 'arelis828', '2019-03-11', 40000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccion`
--

CREATE TABLE `transaccion` (
  `NroTransac` int(11) NOT NULL,
  `NroCtaOrigen` int(30) NOT NULL,
  `NroCtaDest` int(30) NOT NULL,
  `Hora` time NOT NULL,
  `Fecha` date NOT NULL,
  `Valor` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `transaccion`
--

INSERT INTO `transaccion` (`NroTransac`, `NroCtaOrigen`, `NroCtaDest`, `Hora`, `Fecha`, `Valor`) VALUES
(1, 7824, 7821, '12:12:12', '2020-12-12', 1),
(2, 7824, 7821, '12:12:12', '2020-12-12', 1),
(3, 7824, 7821, '19:34:00', '2020-11-21', 2),
(4, 7824, 7821, '19:36:00', '2020-11-21', 2),
(5, 7824, 7821, '19:38:00', '2020-11-21', 3),
(6, 7824, 7821, '19:39:00', '2020-11-21', 3),
(7, 7824, 7821, '19:41:00', '2020-11-21', 3),
(8, 7824, 7821, '19:43:00', '2020-11-21', 4),
(9, 7824, 7821, '19:53:00', '2020-11-21', 10),
(10, 7824, 7821, '19:55:00', '2020-11-21', 10),
(11, 7824, 7821, '19:57:00', '2020-11-21', 5000),
(12, 7824, 7821, '20:01:00', '2020-11-21', 5000),
(13, 7824, 7821, '20:06:00', '2020-11-21', 5000),
(14, 7824, 7821, '20:07:00', '2020-11-21', 5000),
(15, 7824, 7821, '20:11:00', '2020-11-21', 20000),
(16, 7821, 7824, '20:34:00', '2020-11-21', 30000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`usuario`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`Nrocuenta`);

--
-- Indices de la tabla `transaccion`
--
ALTER TABLE `transaccion`
  ADD PRIMARY KEY (`NroTransac`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `transaccion`
--
ALTER TABLE `transaccion`
  MODIFY `NroTransac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
