-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2017 at 11:02 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amazontec`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `artista` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `edicion` varchar(6) NOT NULL,
  `precio` float(6,2) NOT NULL,
  `existencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `artista`, `nombre`, `edicion`, `precio`, `existencia`) VALUES
(1, 1, 'Abbey Road', '1969', 200.00, 5),
(2, 2, 'Burnin', '1987', 150.00, 12),
(3, 3, 'Calle 13', '2005', 250.00, 6),
(4, 2, 'Catch a Fire', '1984', 150.00, 5),
(5, 3, 'Entren los que Quieran', '2008', 200.00, 5),
(6, 2, 'Exodus', '1976', 200.00, 7),
(7, 2, 'Kaya', '1975', 200.00, 3),
(8, 1, 'Let It Be', '1957', 300.00, 6),
(9, 3, 'MultiViral', '2012', 500.00, 7),
(10, 1, 'Please Please Me', '1943', 500.00, 12),
(11, 3, 'Residente o Visitante', '2006', 250.00, 6),
(12, 1, 'Revolver', '1950', 250.00, 3),
(13, 1, 'Rubber Soul', '1962', 900.00, 4),
(14, 4, 'Donde Jugaran las Niñas', '1997', 600.00, 8),
(15, 4, 'Apocalypshit', '2001', 300.00, 21),
(16, 4, 'Con Todo Respeto', '2006', 200.00, 62),
(17, 4, 'Agua Maldita', '2012', 500.00, 32);

-- --------------------------------------------------------

--
-- Table structure for table `artista`
--

CREATE TABLE `artista` (
  `id_artista` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `integrantes` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artista`
--

INSERT INTO `artista` (`id_artista`, `nombre`, `genero`, `company`, `integrantes`) VALUES
(1, 'The Beatles', 'Rock', 'Apple', 'John,Paul,Ringo,George'),
(2, 'Bob Marley', 'Rock', 'Apple', 'Bob Marley'),
(3, 'Calle 13', 'Alternativo', 'Sony Music', 'Residente,Visitante,PG13'),
(4, 'Molotov', 'Rock', 'Sony Music', 'Tito,Paco,Randy,Micky');

-- --------------------------------------------------------

--
-- Table structure for table `cancion`
--

CREATE TABLE `cancion` (
  `id_cancion` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `compositor` varchar(50) NOT NULL,
  `duracion` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cancion`
--

INSERT INTO `cancion` (`id_cancion`, `album`, `nombre`, `compositor`, `duracion`) VALUES
(1, 1, 'Because', 'John Lennon', '2:45'),
(2, 2, 'I Shot the Sheriff', 'Bob Marley', '4:41'),
(3, 3, 'Atrevete Te Te', 'Residente', '3:59'),
(4, 1, 'Come Together', 'John Lennon', '4:18'),
(5, 1, 'Something', 'John Lennon', '3:01'),
(6, 4, 'Slave Driver', 'Bob Marley', '2:55'),
(7, 5, 'Baile de Los Pobres', 'Residente', '3:28'),
(8, 6, 'Natural Mystic', 'Bob Marley', '3:27'),
(9, 7, 'Kaya', 'Bob Marley', '3:16'),
(10, 8, 'Across The Universe', 'John Lennon', '3:47'),
(11, 9, 'Adentro', 'Residente', '4:53'),
(12, 10, 'Misery', 'John Lennon', '1:52'),
(13, 11, 'Tango del Pecado', 'Residente', '4:15'),
(14, 12, 'Eleanor Rigby', 'Lennon', '2:07'),
(15, 13, 'Norwegian Wood', 'John Lennon', '2:05'),
(16, 14, 'Voto Latino', 'Tito Fuentes', '2:58'),
(17, 15, 'No Manches mi Vida', 'Randy', '3:34'),
(18, 16, 'Amateur', 'Paco Ayala', '4:22'),
(19, 17, 'Lagunas Metales', 'Tito Fuentes', '4:13');

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `numerodetarjeta` varchar(30) NOT NULL,
  `tarjeta` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `telefono` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `email`, `nombre`, `direccion`, `numerodetarjeta`, `tarjeta`, `password`, `telefono`) VALUES
(1, 'edgardanielprog@gmail.com', 'Edgar Rojas', 'Vicente Guerrero #16', '123456789987654321', 'Visa', 'jenkins', '017777876983');

-- --------------------------------------------------------

--
-- Table structure for table `compra`
--

CREATE TABLE `compra` (
  `id_compra` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `compra`
--

INSERT INTO `compra` (`id_compra`, `cliente`, `album`, `cantidad`, `fechahora`) VALUES
(1, 1, 1, 1, '2017-11-21 09:50:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`),
  ADD KEY `artistafk` (`artista`);

--
-- Indexes for table `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`id_artista`);

--
-- Indexes for table `cancion`
--
ALTER TABLE `cancion`
  ADD PRIMARY KEY (`id_cancion`),
  ADD KEY `albumfk` (`album`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`,`email`);

--
-- Indexes for table `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `clientefk` (`cliente`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `artista`
--
ALTER TABLE `artista`
  MODIFY `id_artista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cancion`
--
ALTER TABLE `cancion`
  MODIFY `id_cancion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `compra`
--
ALTER TABLE `compra`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `artistafk` FOREIGN KEY (`artista`) REFERENCES `artista` (`id_artista`);

--
-- Constraints for table `cancion`
--
ALTER TABLE `cancion`
  ADD CONSTRAINT `albumfk` FOREIGN KEY (`album`) REFERENCES `album` (`id_album`);

--
-- Constraints for table `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `clientefk` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
