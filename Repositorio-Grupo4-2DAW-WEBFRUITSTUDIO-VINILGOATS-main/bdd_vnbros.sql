-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2023 a las 19:56:47
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
-- Base de datos: `bdd_vnbros`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(125) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `fecha_de_nacimiento` date DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `DNI` varchar(9) DEFAULT NULL,
  `tarjeta_de_credito` int(16) DEFAULT NULL,
  `notificaciones` tinyint(1) DEFAULT NULL,
  `revista_digital` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`nombre`, `correo`, `contraseña`, `sexo`, `fecha_de_nacimiento`, `direccion`, `pais`, `DNI`, `tarjeta_de_credito`, `notificaciones`, `revista_digital`) VALUES
('Dioggo Alonso Vasquez Rivera', 'dioggovr702@gmail.com', '$revistaDigital2', 'masculino', '2005-08-28', 'mI CASA', 'espana', '07096238W', 2147483647, 0, 0);

INSERT INTO `usuarios` (`nombre`, `correo`, `contraseña`, `sexo`, `fecha_de_nacimiento`, `direccion`, `pais`, `DNI`, `tarjeta_de_credito`, `notificaciones`, `revista_digital`) VALUES
('Javier Herce Sánchez', 'javierhs2003@gmail.com', '$Ccontraseña123', 'masculino', '2003-08-20', 'mI CASA 2', 'espana', '51740969P', 7463847412, 0, 0);


CREATE TABLE `sexo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Insertar valores posibles para el campo 'nombre'
INSERT INTO `sexo` (`id`, `nombre`) VALUES
(1, 'Masculino'),
(2, 'Femenino'),
(3, 'Otro');


CREATE TABLE `paises` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Insertar valores posibles para el campo 'nombre'
INSERT INTO `paises` (`id`, `nombre`) VALUES
(1, 'España'),
(2, 'México'),
(3, 'Argentina'),
(4, 'Perú'),
(5, 'Colombia'),
(6, 'Andorra'),
(7, 'Portugal'),
(8, 'Italia'),
(9, 'Francia'),
(10, 'Alemania');
-- Agregar más países 


--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`correo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
