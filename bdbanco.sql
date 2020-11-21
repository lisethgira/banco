-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2020 a las 23:53:42
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

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
(7821, 'arbeygira', '2020-03-26', 5515000),
(7822, 'nmorales', '2016-06-30', 7932000),
(7823, 'lise-th18', '2018-06-22', 46640000),
(7824, 'arelis828', '2019-03-11', 56816000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccion`
--

CREATE TABLE `transaccion` (
  `NroTransac` int(30) NOT NULL,
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
(0, 7821, 7822, '11:48:00', '2020-11-19', 3595000),
(1, 7821, 7823, '09:44:45', '2020-11-01', 500000);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
