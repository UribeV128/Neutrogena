-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-09-2023 a las 06:15:33
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `neutrogena1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `IdCliente` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `ApellidoPaterno` varchar(50) NOT NULL,
  `ApellidoMaterno` varchar(50) NOT NULL,
  `Telefono` int(50) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `CURP` varchar(50) NOT NULL,
  `Domicilio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`IdCliente`, `Nombre`, `ApellidoPaterno`, `ApellidoMaterno`, `Telefono`, `Correo`, `CURP`, `Domicilio`) VALUES
('c1', 'Lurdes', 'Mendoza', 'Uribe', 656738993, 'lurdesmu@gmail.com', 'LMU234928394MCHRN2', 'Angeles #234'),
('c2', 'Estrella', 'Salas', 'Felix', 656293020, 'Salas@gmail.com', 'SFE2049492MCHRN2', 'Mora #430'),
('c3', 'Jorge', 'Mora', 'Uribe', 656829429, 'jorge@gmail.com', 'JMU3445324MCHRN2', 'San Marcos #125'),
('c4', 'Gregorio', 'Gallegos', 'Fernandez', 656892839, 'gallegos@gmail.com', 'GGF2479583MCHRN2', 'Jimenez #876'),
('c5', 'Alexa', 'Ramirez', 'Gonzalez', 656789832, 'alexaG@gmail.com', 'ARG68658646MCHRN2', 'Pera #685');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `IdEmpleado` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `ApellidoPaterno` varchar(50) NOT NULL,
  `Salario` decimal(10,2) NOT NULL,
  `Contacto` int(50) NOT NULL,
  `Domicilio` varchar(70) NOT NULL,
  `Puesto` varchar(50) NOT NULL,
  `Genero` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`IdEmpleado`, `Nombre`, `ApellidoPaterno`, `Salario`, `Contacto`, `Domicilio`, `Puesto`, `Genero`) VALUES
('e1', 'Nataly', 'Perez', '3500.00', 656788744, 'San Agustin #236', 'Finanzas', 'Femenino'),
('e2', 'Denisse', 'Melendez', '3500.00', 65562399, 'Lomas #825', 'Control de inventarios', 'Femenino'),
('e3', 'Diego', 'Sanchez', '3500.00', 656483020, 'Oasis del carmen #785', 'Atencion al cliente', 'Masculino'),
('e4', 'Fernanda', 'Uribe', '3500.00', 656837390, 'San carlos #924', 'Aseguranza de calidad', 'Femenino'),
('e5', 'Emilio', 'Juarez', '3500.00', 656923893, 'Tenochtitlan #628', 'Seguridad', 'Masculino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `IdProducto` int(50) NOT NULL,
  `NomProducto` varchar(70) NOT NULL,
  `Categoria` varchar(50) NOT NULL,
  `CantidadProductos` int(255) NOT NULL,
  `CantidadContenido` varchar(50) NOT NULL,
  `Sucursal` varchar(50) NOT NULL,
  `Caducidad` date NOT NULL,
  `Precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`IdProducto`, `NomProducto`, `Categoria`, `CantidadProductos`, `CantidadContenido`, `Sucursal`, `Caducidad`, `Precio`) VALUES
(1, 'Leche Limpiadora Facial Neutrogena Skin Balancing Polihidroxiácido', 'Leches Limpiadoras', 98, '186ml', 'San Angeles', '2024-10-18', '219.00'),
(2, 'Toallitas desmaquillantes Neutrogena Night Calming', 'Toallitas desmaquillantes', 70, '25pzs', 'Las Palmas', '2024-12-13', '125.10'),
(3, 'Serum Hidratante Concentrado facial', 'Serum', 100, '30ml', 'Las fuentes', '2024-03-07', '295.00'),
(4, 'Leche Limpiadora Facial Neutrogena Skin Balancing Polihidroxiácido', 'Leches Limpiadoras', 102, '186ml', 'Rivera', '2024-10-18', '219.00'),
(5, 'Protector Solar Corporal Neutrogena Sun Fresh FPS 50 ', 'Protectores solares', 87, '120ml', 'San Agustin', '2024-04-23', '168.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `IdSucursal` varchar(50) NOT NULL,
  `Pais` varchar(50) NOT NULL,
  `Estado` varchar(50) NOT NULL,
  `Ciudad` varchar(50) NOT NULL,
  `Domicilio` varchar(50) NOT NULL,
  `Telefono` varchar(50) NOT NULL,
  `CP` int(50) NOT NULL,
  `Correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`IdSucursal`, `Pais`, `Estado`, `Ciudad`, `Domicilio`, `Telefono`, `CP`, `Correo`) VALUES
('s1', 'Estados Unidos', 'Texas', 'El paso', '218 Newbury Street', '91534758', 2355, 'neutrogenaEUA@gmail.com'),
('s2', 'Mexico', 'Jalisco', 'Guadalajara', 'papantla #456', '33466675', 73849, 'NeutrogenaGDL@gmail.com'),
('s3', 'Mexico', 'Chihuahua', 'Chihuahua', 'Meneses #567', '614765757', 67889, 'NeutrogenaCUU@gmail.com'),
('s4', 'España', 'Madrid', 'Madrid', 'Avenida de Arturo', '9136697', 67758, 'NeutrogenaESP@gmail.com'),
('s5', 'Mexico', 'Estado de Mexico', 'CDMX', 'San Pedro #678', '557876788', 67658, 'NeutrogenaMX@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `IdVentas` varchar(50) NOT NULL,
  `IdCliente` varchar(50) NOT NULL,
  `IdEmpleado` varchar(50) NOT NULL,
  `IdProducto` varchar(50) NOT NULL,
  `Fecha` date NOT NULL,
  `CantidadVendidas` int(255) NOT NULL,
  `PrecioTotal` decimal(10,2) NOT NULL,
  `Descuentos` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`IdVentas`, `IdCliente`, `IdEmpleado`, `IdProducto`, `Fecha`, `CantidadVendidas`, `PrecioTotal`, `Descuentos`) VALUES
('v1', 'c1', 'e1', '1', '2023-09-07', 17, '3723.00', '20%'),
('v2', 'c2', 'e2', '2', '2023-09-03', 20, '3002.00', '10%'),
('v3', 'c3', 'e3', '3', '2023-09-13', 23, '6785.00', '10%'),
('v4', 'c4', 'e4', '4', '2023-09-08', 23, '5037.00', '30%'),
('v5', 'c5', 'e5', '5', '2023-09-09', 30, '5040.00', '0%');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IdCliente`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`IdEmpleado`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`IdProducto`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`IdVentas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
