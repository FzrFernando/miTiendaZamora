-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: mysqlDawes:3306
-- Tiempo de generación: 29-11-2022 a las 19:38:50
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
  `id_category` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `CARS`
--

INSERT INTO `CARS` (`id`, `name`, `description`, `price`, `id_category`, `stock`) VALUES
(1, 'Sportage', 'Kia', '5214.73', 1, 99),
(2, 'RL', 'Acura', '24293.69', 2, 99),
(3, 'Sierra 1500', 'GMC', '18348.84', 3, 99),
(4, 'T100 Xtra', 'Toyota', '41089.49', 4, 99),
(5, 'X5', 'BMW', '94695.78', 5, 99),
(6, 'Rio', 'Kia', '87381.18', 1, 99),
(7, 'Camry Hybrid', 'Toyota', '58241.29', 2, 99),
(8, 'Matrix', 'Toyota', '11186.22', 3, 99),
(9, 'Avenger', 'Dodge', '28649.13', 4, 99),
(10, 'Chariot', 'Mitsubishi', '14707.29', 5, 99),
(11, 'Santa Fe', 'Hyundai', '55951.19', 1, 99),
(12, 'Grand Am', 'Pontiac', '33597.31', 2, 99),
(13, 'Ranger', 'Ford', '48979.59', 3, 99),
(14, 'M3', 'BMW', '29877.87', 4, 99),
(15, 'Rodeo', 'Isuzu', '50179.20', 5, 99),
(16, 'Sable', 'Mercury', '68366.29', 1, 99),
(17, 'Escape', 'Ford', '68592.71', 2, 99),
(18, 'Matrux', 'Toyota', '75274.20', 3, 99),
(19, 'Diamante', 'Mitsubishi', '81684.09', 4, 99),
(20, 'Sonoma Club Coupe', 'GMC', '71428.49', 5, 99),
(21, 'Scoupe', 'Hyundai', '68887.95', 1, 99),
(22, 'Savana 3500', 'GMC', '85172.51', 2, 99),
(23, 'Continental', 'Lincoln', '34095.25', 3, 99),
(24, 'Roadster', 'Tesla', '70938.15', 4, 99),
(25, 'Savana 2500', 'GMC', '87477.26', 5, 99),
(26, 'Lumina', 'Chevrolet', '85899.39', 1, 99),
(27, 'A4', 'Audi', '10838.34', 2, 99),
(28, 'Tempo', 'Ford', '48096.25', 3, 99),
(29, 'Range Rover Sport', 'Land Rover', '32530.51', 4, 99),
(30, 'TrailBlazer', 'Chevrolet', '11688.41', 5, 99),
(31, 'xB', 'Scion', '30109.61', 1, 99),
(32, 'Grand Prix', 'Pontiac', '49865.18', 2, 99),
(33, 'riolet', 'Audi', '54580.75', 3, 99),
(34, 'XL-7', 'Suzuki', '97565.31', 4, 99),
(35, 'DeVille', 'Cadillac', '40859.00', 5, 99),
(36, 'QX', 'Infiniti', '93204.73', 1, 99),
(37, 'TSX', 'Acura', '63355.61', 2, 99),
(38, 'Optima', 'Kia', '74468.72', 3, 99),
(39, 'S-Class', 'Mercedes-Benz', '86591.84', 4, 99),
(40, 'Seville', 'Cadillac', '62729.93', 5, 99),
(41, 'Corolla', 'Toyota', '64569.88', 1, 99),
(42, 'Stylus', 'Isuzu', '72245.63', 2, 99),
(43, 'Dakota Club', 'Dodge', '82557.57', 3, 99),
(44, 'Altima', 'Nissan', '90860.33', 4, 99),
(45, 'Mirage', 'Mitsubishi', '70324.26', 5, 99),
(46, 'RS4', 'Audi', '87178.95', 1, 99),
(47, 'Wrangler', 'Jeep', '27466.28', 2, 99),
(48, 'Q', 'Infiniti', '71782.42', 3, 99),
(50, 'Econoline E250', 'Ford', '85496.71', 5, 99),
(51, 'Escort', 'Ford', '58860.13', 1, 99),
(52, 'Equinox', 'Chevrolet', '72301.00', 2, 99),
(53, 'Galant', 'Mitsubishi', '98468.78', 3, 99),
(54, 'Spirit', 'Dodge', '9667.70', 4, 99),
(56, 'Neon', 'Dodge', '71872.63', 1, 99),
(57, 'Legacy', 'Subaru', '20811.87', 2, 99),
(58, 'Model T', 'Ford', '11244.47', 3, 99),
(59, '57', 'Maybach', '68551.17', 4, 99),
(60, 'Clubman', 'MINI', '66741.31', 5, 99),
(61, 'ES', 'Lexus', '73844.98', 1, 99),
(62, 'MPV', 'Mazda', '67933.20', 2, 99),
(63, '2e', 'Aptera', '73404.90', 3, 99),
(64, 'Outback', 'Subaru', '7773.14', 4, 99),
(65, '62', 'Maybach', '49223.49', 5, 99),
(66, 'S10', 'Chevrolet', '75134.30', 1, 99),
(67, '1500', 'Chevrolet', '96524.26', 2, 99),
(68, 'Daewoo Magnus', 'Suzuki', '79718.04', 3, 99),
(69, 'Safari', 'GMC', '50815.33', 4, 99),
(70, 'Golf', 'Volkswagen', '54283.88', 5, 99),
(71, 'Formentor', 'Cupra', '33400.00', 1, 99),
(72, 'Sandero', 'Dacia', '8500.64', 1, 99),
(73, 'León', 'Seat', '5000.00', 2, 99),
(74, 'Laguna', 'Renault', '6521.34', 2, 99),
(75, '911', 'Porsche', '50564.80', 5, 99),
(76, 'BRZ', 'Subaru', '34500.21', 1, 99),
(98, 'Ateca', 'Seat', '30500.41', 1, 99),
(99, 'Tucson', 'Hyundai', '24500.50', 1, 99);

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
  `username` varchar(50) NOT NULL,
  `id_cars` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` decimal(9,2) DEFAULT NULL,
  `date_of_purchase` date DEFAULT NULL
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
('inma', 'd40dbcae0e7088fc4a7e1768cf8771da', 'inma', 'olias', '1990-08-23', 'Female', 1);

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
  ADD PRIMARY KEY (`username`,`id_cars`),
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
  ADD CONSTRAINT `fk_purchase1` FOREIGN KEY (`username`) REFERENCES `USERS` (`username`),
  ADD CONSTRAINT `fk_purchase2` FOREIGN KEY (`id_cars`) REFERENCES `CARS` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
