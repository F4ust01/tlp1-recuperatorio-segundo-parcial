-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2023 at 09:25 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reservadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `reservas`
--

CREATE TABLE `reservas` (
  `idReserva` int(11) NOT NULL,
  `codigo` varchar(100) NOT NULL DEFAULT '1688411073957',
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `fecha_hora_salida` datetime NOT NULL,
  `fecha_hora_llegada` datetime NOT NULL,
  `asiento` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp(),
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservas`
--

INSERT INTO `reservas` (`idReserva`, `codigo`, `nombre`, `apellido`, `fecha_hora_salida`, `fecha_hora_llegada`, `asiento`, `telefono`, `email`, `estado`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(21, '1688584872019', 'Fausto', 'Cuquejo', '2023-07-05 20:20:00', '2023-07-05 23:20:00', 'B2', '3718413036', 'ofaustojoaquindejesus@gmail.com', 1, '2023-07-05 19:21:12', '2023-07-05 19:21:12', NULL),
(22, '1688584942809', 'Luis Alberto', 'Spinetta', '2023-07-07 22:22:00', '2023-07-08 01:21:00', 'H7', '3557876543', 'elflaco@hotmail.com', 1, '2023-07-05 19:22:22', '2023-07-05 19:22:22', NULL),
(23, '1688585026972', 'Ricardo', 'Gomez', '2023-07-14 19:23:00', '2023-07-15 19:23:00', 'A3', '09876456', 'ricardo@gmail.com', 1, '2023-07-05 19:23:46', '2023-07-05 19:23:46', NULL),
(24, '1688585107958', 'Bruno ', 'Sotelo', '2023-07-08 19:24:00', '2023-07-08 22:24:00', 'F2', '77845678', 'brunosot@email.com', 1, '2023-07-05 19:25:07', '2023-07-05 19:25:07', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`idReserva`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reservas`
--
ALTER TABLE `reservas`
  MODIFY `idReserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
