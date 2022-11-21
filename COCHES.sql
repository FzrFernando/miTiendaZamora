-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: mysqlDawes:3306
-- Tiempo de generación: 21-11-2022 a las 08:11:07
-- Versión del servidor: 5.7.22
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `COCHES`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CARS`
--

CREATE TABLE `CARS` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `CARS`
--

INSERT INTO `CARS` (`id`, `name`, `description`, `price`, `id_category`) VALUES
(1, 'Sportage', 'Kia', '5214.73', 1),
(2, 'RL', 'Acura', '24293.69', 2),
(3, 'Sierra 1500', 'GMC', '18348.84', 3),
(4, 'T100 Xtra', 'Toyota', '41089.49', 4),
(5, 'X5', 'BMW', '94695.78', 5),
(6, 'Rio', 'Kia', '87381.18', 1),
(7, 'Camry Hybrid', 'Toyota', '58241.29', 2),
(8, 'Matrix', 'Toyota', '11186.22', 3),
(9, 'Avenger', 'Dodge', '28649.13', 4),
(10, 'Chariot', 'Mitsubishi', '14707.29', 5),
(11, 'Santa Fe', 'Hyundai', '55951.19', 1),
(12, 'Grand Am', 'Pontiac', '33597.31', 2),
(13, 'Ranger', 'Ford', '48979.59', 3),
(14, 'M3', 'BMW', '29877.87', 4),
(15, 'Rodeo', 'Isuzu', '50179.20', 5),
(16, 'Sable', 'Mercury', '68366.29', 1),
(17, 'Escape', 'Ford', '68592.71', 2),
(18, 'Matrux', 'Toyota', '75274.20', 3),
(19, 'Diamante', 'Mitsubishi', '81684.09', 4),
(20, 'Sonoma Club Coupe', 'GMC', '71428.49', 5),
(21, 'Scoupe', 'Hyundai', '68887.95', 1),
(22, 'Savana 3500', 'GMC', '85172.51', 2),
(23, 'Continental', 'Lincoln', '34095.25', 3),
(24, 'Roadster', 'Tesla', '70938.15', 4),
(25, 'Savana 2500', 'GMC', '87477.26', 5),
(26, 'Lumina', 'Chevrolet', '85899.39', 1),
(27, 'A4', 'Audi', '10838.34', 2),
(28, 'Tempo', 'Ford', '48096.25', 3),
(29, 'Range Rover Sport', 'Land Rover', '32530.51', 4),
(30, 'TrailBlazer', 'Chevrolet', '11688.41', 5),
(31, 'xB', 'Scion', '30109.61', 1),
(32, 'Grand Prix', 'Pontiac', '49865.18', 2),
(33, 'riolet', 'Audi', '54580.75', 3),
(34, 'XL-7', 'Suzuki', '97565.31', 4),
(35, 'DeVille', 'Cadillac', '40859.00', 5),
(36, 'QX', 'Infiniti', '93204.73', 1),
(37, 'TSX', 'Acura', '63355.61', 2),
(38, 'Optima', 'Kia', '74468.72', 3),
(39, 'S-Class', 'Mercedes-Benz', '86591.84', 4),
(40, 'Seville', 'Cadillac', '62729.93', 5),
(41, 'Corolla', 'Toyota', '64569.88', 1),
(42, 'Stylus', 'Isuzu', '72245.63', 2),
(43, 'Dakota Club', 'Dodge', '82557.57', 3),
(44, 'Altima', 'Nissan', '90860.33', 4),
(45, 'Mirage', 'Mitsubishi', '70324.26', 5),
(46, 'RS4', 'Audi', '87178.95', 1),
(47, 'Wrangler', 'Jeep', '27466.28', 2),
(48, 'Q', 'Infiniti', '71782.42', 3),
(50, 'Econoline E250', 'Ford', '85496.71', 5),
(51, 'Escort', 'Ford', '58860.13', 1),
(52, 'Equinox', 'Chevrolet', '72301.00', 2),
(53, 'Galant', 'Mitsubishi', '98468.78', 3),
(54, 'Spirit', 'Dodge', '9667.70', 4),
(56, 'Neon', 'Dodge', '71872.63', 1),
(57, 'Legacy', 'Subaru', '20811.87', 2),
(58, 'Model T', 'Ford', '11244.47', 3),
(59, '57', 'Maybach', '68551.17', 4),
(60, 'Clubman', 'MINI', '66741.31', 5),
(61, 'ES', 'Lexus', '73844.98', 1),
(62, 'MPV', 'Mazda', '67933.20', 2),
(63, '2e', 'Aptera', '73404.90', 3),
(64, 'Outback', 'Subaru', '7773.14', 4),
(65, '62', 'Maybach', '49223.49', 5),
(66, 'S10', 'Chevrolet', '75134.30', 1),
(67, '1500', 'Chevrolet', '96524.26', 2),
(68, 'Daewoo Magnus', 'Suzuki', '79718.04', 3),
(69, 'Safari', 'GMC', '50815.33', 4),
(70, 'Golf', 'Volkswagen', '54283.88', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CATEGORY`
--

CREATE TABLE `CATEGORY` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `CATEGORY`
--

INSERT INTO `CATEGORY` (`id`, `name`, `description`) VALUES
(1, 'urbano', 'reducido tamaño y son para circular por la ciudad'),
(2, 'familiar', 'cinco puertas y techo elevado'),
(3, 'coupé', 'techo inclinado que les dota de mayor estilo y tienen un potente motor'),
(4, 'muscle car', 'tracción trasera y altas dosis de potencia'),
(5, 'deportivos', 'diseños realmente atractivos, motores muy potentes, una velocidad máxima que supera los 250 km/h');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PURCHASE`
--

CREATE TABLE `PURCHASE` (
  `id_category` int(11) NOT NULL,
  `id_cars` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `price` decimal(9,2) DEFAULT NULL,
  `date_of_purchase` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `USERS`
--

CREATE TABLE `USERS` (
  `username` varchar(50) NOT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `USERS`
--

INSERT INTO `USERS` (`username`, `pass`, `first_name`, `last_name`, `date_of_birth`, `gender`, `admin`) VALUES
('fernando', 'cebdd715d4ecaafee8f147c2e85e0754', 'fernando', 'zamora', '1999-08-04', 'Male', 0),
('inma', 'd40dbcae0e7088fc4a7e1768cf8771da', 'inma', 'olias', '1990-08-23', 'Female', 1),
('javi', 'a14f8a540e78dae706d255750010a0f8', 'Javier', 'MartÃ­nez', '2002-03-25', 'H', 0),
('juanma', '65a368f66ad6b9ee45263577713d8a95', 'Juanma', 'GarcÃ­a', '1994-04-11', 'H', 0),
('pepe', '926e27eecdbc7a18858b3798ba99bddd', 'Pepe', 'Pepe', '2022-10-31', 'H', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CARS`
--
ALTER TABLE `CARS`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `fk_cars` (`id_category`);

--
-- Indices de la tabla `CATEGORY`
--
ALTER TABLE `CATEGORY`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `PURCHASE`
--
ALTER TABLE `PURCHASE`
  ADD PRIMARY KEY (`id_category`,`id_cars`,`date_of_purchase`),
  ADD KEY `fk_purchase2` (`id_cars`);

--
-- Indices de la tabla `USERS`
--
ALTER TABLE `USERS`
  ADD PRIMARY KEY (`username`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `CARS`
--
ALTER TABLE `CARS`
  ADD CONSTRAINT `fk_cars` FOREIGN KEY (`id_category`) REFERENCES `CATEGORY` (`id`);

--
-- Filtros para la tabla `PURCHASE`
--
ALTER TABLE `PURCHASE`
  ADD CONSTRAINT `fk_purchase1` FOREIGN KEY (`id_category`) REFERENCES `CATEGORY` (`id`),
  ADD CONSTRAINT `fk_purchase2` FOREIGN KEY (`id_cars`) REFERENCES `CARS` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
