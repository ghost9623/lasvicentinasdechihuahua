-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2020 a las 06:08:41
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lasvicentinas`
--
CREATE DATABASE IF NOT EXISTS `lasvicentinas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `lasvicentinas`;

DELIMITER $$
--
-- Procedimientos
--
DROP PROCEDURE IF EXISTS `actuaemp`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `actuaemp` (IN `nom` VARCHAR(80), IN `ed` INT, IN `pues` VARCHAR(30))  begin


UPDATE empleado SET edad=ed,puesto=pues WHERE nombre=nom;



end$$

DROP PROCEDURE IF EXISTS `actuaproducto`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `actuaproducto` (IN `nom` VARCHAR(80), IN `nomnue` VARCHAR(80), IN `prec` INT, IN `canti` VARCHAR(30))  begin

UPDATE producto set nombre=nomnue,precio=prec,cantidad=canti WHERE nombre=nom;

end$$

DROP PROCEDURE IF EXISTS `borrarempleado`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `borrarempleado` (IN `nom` VARCHAR(80))  begin

DELETE FROM empleado WHERE nombre=nom;



end$$

DROP PROCEDURE IF EXISTS `borrarproducto`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `borrarproducto` (`nom` VARCHAR(80))  begin

DELETE FROM producto WHERE nombre=nom;
end$$

DROP PROCEDURE IF EXISTS `elimalmace`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `elimalmace` (`idalm` INT)  begin

UPDATE almacen SET almacenista=null  WHERE almacenista =idalm; 
end$$

DROP PROCEDURE IF EXISTS `inempleado`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `inempleado` (`nom` VARCHAR(80), `edad` INT, `puesto` VARCHAR(30), `numeemp` INT)  begin

insert into empleado values(null,nom,edad,puesto,numeemp);
end$$

DROP PROCEDURE IF EXISTS `inproducto`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `inproducto` (`nom` VARCHAR(80), `precio` DOUBLE, `cantidad` INT)  begin

insert into producto values(null,nom,precio,cantidad,5);
end$$

DROP PROCEDURE IF EXISTS `insersuger`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `insersuger` (`nom` VARCHAR(89), `correo` VARCHAR(100), `telefono` VARCHAR(56), `sugerencias` VARCHAR(200))  begin

insert into sugerencias values(null,nom,correo,telefono,sugerencias);
end$$

DROP PROCEDURE IF EXISTS `insertavisos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertavisos` (IN `nombre` VARCHAR(255), IN `detalles` TEXT, IN `embebido` TEXT, IN `categoria` INT, IN `fecha_larga` VARCHAR(50), IN `fecha_corta` DATE, IN `hora` TIME, IN `estado` VARCHAR(15))  begin

insert into notcias VALUES(null,nombre,detalles,embebido,categoria,fecha_larga,fecha_corta,hora,estado);
end$$

DROP PROCEDURE IF EXISTS `seleavisos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `seleavisos` ()  begin
select*from notcias ORDER by idnoti DESC
       LIMIT 3;

end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacen`
--
-- Creación: 29-11-2020 a las 07:19:32
-- Última actualización: 29-11-2020 a las 09:27:31
--

DROP TABLE IF EXISTS `almacen`;
CREATE TABLE `almacen` (
  `idalmacen` int(11) NOT NULL,
  `nombre` varchar(80) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `almacenista` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `almacen`
--

INSERT INTO `almacen` (`idalmacen`, `nombre`, `almacenista`) VALUES
(5, 'almacen de la tienda', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--
-- Creación: 17-11-2020 a las 04:17:16
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--
-- Creación: 01-11-2020 a las 08:54:46
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nombre` varchar(80) COLLATE utf8mb4_spanish_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `correo` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `telefono` varchar(60) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--
-- Creación: 26-11-2020 a las 06:08:51
-- Última actualización: 29-11-2020 a las 09:36:36
--

DROP TABLE IF EXISTS `empleado`;
CREATE TABLE `empleado` (
  `idempleado` int(11) NOT NULL,
  `nombre` varchar(80) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `edad` int(11) NOT NULL,
  `puesto` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `numeemp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`idempleado`, `nombre`, `edad`, `puesto`, `numeemp`) VALUES
(3, 'Leticia Melendez Trejo', 24, 'representante legal', 4),
(26, 'fito', 20, 'guardia', 26),
(27, 'mario lopez', 25, 'almacenista', 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--
-- Creación: 01-11-2020 a las 08:54:46
--

DROP TABLE IF EXISTS `factura`;
CREATE TABLE `factura` (
  `producto` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notcias`
--
-- Creación: 17-11-2020 a las 03:32:28
--

DROP TABLE IF EXISTS `notcias`;
CREATE TABLE `notcias` (
  `idnoti` int(11) NOT NULL,
  `noticias` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `detalles` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `embebido` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `categoria` int(11) NOT NULL,
  `fecha_larga` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecha_corta` date NOT NULL,
  `hora` time NOT NULL,
  `estado` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--
-- Creación: 01-11-2020 a las 08:54:46
-- Última actualización: 29-11-2020 a las 09:46:43
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto` (
  `idnombre` int(11) NOT NULL,
  `nombre` varchar(80) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `precio` double NOT NULL,
  `cantidad` int(11) NOT NULL,
  `almacen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sugerencias`
--
-- Creación: 10-11-2020 a las 03:10:26
--

DROP TABLE IF EXISTS `sugerencias`;
CREATE TABLE `sugerencias` (
  `idsuge` int(11) NOT NULL,
  `nombre` varchar(89) COLLATE utf8mb4_spanish_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono` varchar(56) COLLATE utf8mb4_spanish_ci NOT NULL,
  `sugerencias` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--
-- Creación: 26-11-2020 a las 02:48:33
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `idusu` int(11) NOT NULL,
  `alias` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `contra` varchar(60) COLLATE utf8mb4_spanish_ci NOT NULL,
  `empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusu`, `alias`, `contra`, `empleado`) VALUES
(1, 'lasvicentinas', 'lasvicentinas1617', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD PRIMARY KEY (`idalmacen`),
  ADD KEY `almacen_ibfk_1` (`almacenista`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`idempleado`),
  ADD UNIQUE KEY `numeemp` (`numeemp`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`producto`,`cliente`),
  ADD KEY `cliente` (`cliente`);

--
-- Indices de la tabla `notcias`
--
ALTER TABLE `notcias`
  ADD PRIMARY KEY (`idnoti`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idnombre`),
  ADD KEY `almacen` (`almacen`);

--
-- Indices de la tabla `sugerencias`
--
ALTER TABLE `sugerencias`
  ADD PRIMARY KEY (`idsuge`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusu`),
  ADD KEY `empleado` (`empleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `almacen`
--
ALTER TABLE `almacen`
  MODIFY `idalmacen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `idempleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `notcias`
--
ALTER TABLE `notcias`
  MODIFY `idnoti` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idnombre` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sugerencias`
--
ALTER TABLE `sugerencias`
  MODIFY `idsuge` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`producto`) REFERENCES `producto` (`idnombre`),
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`idcliente`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`almacen`) REFERENCES `almacen` (`idalmacen`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`empleado`) REFERENCES `empleado` (`idempleado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
