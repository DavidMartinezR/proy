-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2014 a las 17:58:09
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bdd-provet`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

CREATE TABLE IF NOT EXISTS `cita` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `tipo` varchar(20) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `motivo` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `mascota_fk` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mascota_fk` (`mascota_fk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `cita`
--

INSERT INTO `cita` (`id`, `fecha`, `tipo`, `motivo`, `mascota_fk`) VALUES
(1, '0000-00-00', 'Radiografía', 'El animal necesita una radiografía para ver si hay fractura en su pata trasera izquierda.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rut` int(8) NOT NULL,
  `nombre_completo` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `direccion` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `telefono` int(9) NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rut` (`rut`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `rut`, `nombre_completo`, `direccion`, `telefono`, `email`) VALUES
(1, 17484939, 'David Martínez', 'Tocornal 1627', 84067988, 'dmartinezr.90@gmail.com'),
(2, 17922931, 'Dominique Huenteleo', 'Venus 12276', 87242704, 'dominicuek@gmail.com'),
(5, 19658982, 'Alexis Sánchez', 'Mejillones #1658', 56897452, 'tocopilla@gmail.com'),
(7, 13356548, 'Arturo Vidal', 'San Joaquín #12365', 55487966, 'juve@gmail.com'),
(8, 45678932, 'Pia Martínez', 'Tocornal 1627', 54684663, 'pia@gmail.com'),
(9, 45678987, 'Nicolas Banda', 'Rogelio Ugarte 1620', 11234568, 'nbanda@gmail.com'),
(17, 1235698, 'asfdkvbk', 'kjasdbvkbask', 12457896, 'kabvka@gmail.com'),
(20, 1478956, 'Fernando Rubilar', 'siuafgakiysbfiabv', 98745632, 'frubliar@icci.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota`
--

CREATE TABLE IF NOT EXISTS `mascota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `especie` varchar(20) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `raza` varchar(20) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `edad` varchar(20) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `sexo` varchar(10) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `peso` float NOT NULL,
  `color` varchar(15) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `historia` text NOT NULL,
  `cliente_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cliente_fk` (`cliente_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `mascota`
--

INSERT INTO `mascota` (`id`, `nombre`, `especie`, `raza`, `edad`, `sexo`, `peso`, `color`, `historia`, `cliente_id`) VALUES
(1, 'Rocko', 'Perro', 'Quiltro', '14 años', 'Macho', 20.33, 'Negro', 'Mi peyyo bello', 1),
(2, 'Antu', 'Perro', 'Quiltro', '7 meses', 'masculino', 4, 'blanco', 'Hospitalizado a los 2 meses', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cita`
--
ALTER TABLE `cita`
  ADD CONSTRAINT `mascota_fk` FOREIGN KEY (`mascota_fk`) REFERENCES `mascota` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD CONSTRAINT `mascota_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
