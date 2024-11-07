-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2024 a las 05:28:03
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rentas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `director`
--

CREATE TABLE `director` (
  `DirectorNo` int(11) NOT NULL,
  `DirectorName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `director`
--

INSERT INTO `director` (`DirectorNo`, `DirectorName`) VALUES
(1, 'Martin Scorsese'),
(2, 'Christopher Nolan'),
(3, 'Quentin Tarantino'),
(4, 'Steven Spielberg'),
(5, 'James Cameron'),
(6, 'Ridley Scott'),
(7, 'Peter Jackson'),
(8, 'Tim Burton'),
(9, 'David Fincher'),
(10, 'Guillermo del Toro'),
(11, 'George Lucas'),
(12, 'Alfonso Cuarón'),
(13, 'Ang Lee'),
(14, 'Stanley Kubrick'),
(15, 'Francis Ford Coppola'),
(16, 'Sofia Coppola'),
(17, 'Jean-Pierre Jeunet'),
(18, 'Bong Joon-ho'),
(19, 'Spike Lee'),
(20, 'Greta Gerwig');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `member`
--

CREATE TABLE `member` (
  `memberNo` int(11) NOT NULL,
  `fName` varchar(50) NOT NULL,
  `lName` varchar(50) NOT NULL,
  `sex` char(1) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `dateJoined` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `member`
--

INSERT INTO `member` (`memberNo`, `fName`, `lName`, `sex`, `DOB`, `address`, `dateJoined`) VALUES
(1, 'Alice', 'Smith', 'F', '1990-05-15', '123 Main St', '2022-01-10'),
(2, 'Bob', 'Johnson', 'M', '1985-08-25', '456 Maple St', '2022-01-15'),
(3, 'Charlie', 'Williams', 'M', '1975-02-05', '789 Oak St', '2022-02-20'),
(4, 'Daisy', 'Brown', 'F', '1992-11-30', '101 Pine St', '2022-03-05'),
(5, 'Edward', 'Jones', 'M', '1980-07-20', '202 Birch St', '2022-03-15'),
(6, 'Fiona', 'Garcia', 'F', '1995-04-10', '303 Cedar St', '2022-04-01'),
(7, 'George', 'Martinez', 'M', '1988-12-12', '404 Elm St', '2022-04-20'),
(8, 'Hannah', 'Davis', 'F', '1993-03-18', '505 Willow St', '2022-05-10'),
(9, 'Ian', 'Rodriguez', 'M', '1982-06-22', '606 Aspen St', '2022-05-25'),
(10, 'Jane', 'Wilson', 'F', '1987-09-30', '707 Poplar St', '2022-06-05'),
(11, 'Kyle', 'Lee', 'M', '1994-08-08', '808 Fir St', '2022-06-15'),
(12, 'Lily', 'Walker', 'F', '1991-07-01', '909 Spruce St', '2022-07-01'),
(13, 'Mike', 'Hall', 'M', '1983-03-03', '1010 Maple St', '2022-07-10'),
(14, 'Nina', 'Allen', 'F', '1978-10-25', '1111 Pine St', '2022-07-20'),
(15, 'Oscar', 'Young', 'M', '1986-11-11', '1212 Oak St', '2022-08-01'),
(16, 'Paula', 'Hernandez', 'F', '1996-02-28', '1313 Cedar St', '2022-08-10'),
(17, 'Quinn', 'King', 'M', '1989-05-16', '1414 Elm St', '2022-08-20'),
(18, 'Rachel', 'Wright', 'F', '1997-12-14', '1515 Willow St', '2022-09-01'),
(19, 'Sam', 'Lopez', 'M', '1981-04-23', '1616 Aspen St', '2022-09-10'),
(20, 'Tina', 'Clark', 'F', '1984-01-17', '1717 Poplar St', '2022-09-20'),
(21, 'Carlos', 'Gonzalez', 'M', '1990-11-06', '123 Example St', '2024-01-01'),
(22, 'Lorna', 'Smith', 'F', '1985-03-15', '456 Example Ave', '2023-02-10'),
(23, 'John', 'Doe', 'M', '1985-07-20', '789 Maple St', '2023-03-15'),
(24, 'Jane', 'Doe', 'F', '1985-11-25', '1010 Oak St', '2023-04-01'),
(25, 'Robert', 'Johnson', 'M', '1985-01-10', '202 Birch St', '2023-05-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rentalagreement`
--

CREATE TABLE `rentalagreement` (
  `rentalNo` int(11) NOT NULL,
  `memberNo` int(11) DEFAULT NULL,
  `videoNo` int(11) DEFAULT NULL,
  `dateOut` date DEFAULT NULL,
  `dateReturn` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rentalagreement`
--

INSERT INTO `rentalagreement` (`rentalNo`, `memberNo`, `videoNo`, `dateOut`, `dateReturn`) VALUES
(1, 1, 1, '2023-01-01', '2023-01-05'),
(2, 2, 2, '2023-01-02', '2023-01-07'),
(3, 3, 3, '2023-01-03', NULL),
(4, 4, 4, '2023-01-04', '2023-01-08'),
(5, 5, 5, '2023-01-05', '2023-01-10'),
(6, 6, 6, '2023-01-06', NULL),
(7, 7, 7, '2023-01-07', '2023-01-12'),
(8, 8, 8, '2023-01-08', NULL),
(9, 9, 9, '2023-01-09', '2023-01-14'),
(10, 10, 10, '2023-01-10', '2023-01-15'),
(11, 11, 11, '2023-01-11', NULL),
(12, 12, 12, '2023-01-12', '2023-01-17'),
(13, 13, 13, '2023-01-13', '2023-01-18'),
(14, 14, 14, '2023-01-14', NULL),
(15, 15, 15, '2023-01-15', '2023-01-20'),
(16, 16, 16, '2023-01-16', NULL),
(17, 17, 17, '2023-01-17', '2023-01-22'),
(18, 18, 18, '2023-01-18', NULL),
(19, 19, 19, '2023-01-19', '2023-01-24'),
(20, 20, 20, '2023-01-20', '2023-01-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video`
--

CREATE TABLE `video` (
  `catalogNo` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `certificate` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `dailyRental` decimal(5,2) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `DirectorNo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `video`
--

INSERT INTO `video` (`catalogNo`, `title`, `certificate`, `category`, `dailyRental`, `price`, `DirectorNo`) VALUES
(1, 'Inception', 'PG-13', 'Sci-Fi', 3.99, 14.99, 2),
(2, 'Pulp Fiction', 'R', 'Crime', 2.99, 12.99, 3),
(3, 'Jurassic Park', 'PG-13', 'Adventure', 2.99, 11.99, 4),
(4, 'Avatar', 'PG-13', 'Sci-Fi', 3.99, 15.99, 5),
(5, 'Gladiator', 'R', 'Action', 2.99, 12.99, 6),
(6, 'The Lord of the Rings', 'PG-13', 'Fantasy', 4.99, 18.99, 7),
(7, 'Edward Scissorhands', 'PG-13', 'Fantasy', 2.99, 10.99, 8),
(8, 'Fight Club', 'R', 'Drama', 2.99, 11.99, 9),
(9, 'Pan’s Labyrinth', 'R', 'Fantasy', 3.99, 13.99, 10),
(10, 'Star Wars', 'PG', 'Sci-Fi', 4.99, 19.99, 11),
(11, 'Gravity', 'PG-13', 'Sci-Fi', 3.99, 14.99, 12),
(12, 'Life of Pi', 'PG', 'Adventure', 3.99, 13.99, 13),
(13, 'The Shining', 'R', 'Horror', 2.99, 11.99, 14),
(14, 'The Godfather', 'R', 'Crime', 4.99, 19.99, 15),
(15, 'Lost in Translation', 'R', 'Drama', 2.99, 10.99, 16),
(16, 'Amélie', 'R', 'Romance', 3.99, 13.99, 17),
(17, 'Parasite', 'R', 'Thriller', 4.99, 15.99, 18),
(18, 'Do the Right Thing', 'R', 'Drama', 2.99, 12.99, 19),
(19, 'Little Women', 'PG', 'Drama', 3.99, 13.99, 20),
(20, 'Schindler’s List', 'R', 'History', 3.99, 14.99, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videoforrent`
--

CREATE TABLE `videoforrent` (
  `videoNo` int(11) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `catalogNo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `videoforrent`
--

INSERT INTO `videoforrent` (`videoNo`, `available`, `catalogNo`) VALUES
(1, 1, 1),
(2, 0, 2),
(3, 1, 3),
(4, 1, 4),
(5, 0, 5),
(6, 1, 6),
(7, 0, 7),
(8, 1, 8),
(9, 1, 9),
(10, 0, 10),
(11, 1, 11),
(12, 1, 12),
(13, 0, 13),
(14, 1, 14),
(15, 1, 15),
(16, 0, 16),
(17, 1, 17),
(18, 0, 18),
(19, 1, 19),
(20, 1, 20);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`DirectorNo`);

--
-- Indices de la tabla `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`memberNo`);

--
-- Indices de la tabla `rentalagreement`
--
ALTER TABLE `rentalagreement`
  ADD PRIMARY KEY (`rentalNo`),
  ADD KEY `memberNo` (`memberNo`),
  ADD KEY `videoNo` (`videoNo`);

--
-- Indices de la tabla `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`catalogNo`),
  ADD KEY `DirectorNo` (`DirectorNo`);

--
-- Indices de la tabla `videoforrent`
--
ALTER TABLE `videoforrent`
  ADD PRIMARY KEY (`videoNo`),
  ADD KEY `catalogNo` (`catalogNo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `rentalagreement`
--
ALTER TABLE `rentalagreement`
  ADD CONSTRAINT `rentalagreement_ibfk_1` FOREIGN KEY (`memberNo`) REFERENCES `member` (`memberNo`),
  ADD CONSTRAINT `rentalagreement_ibfk_2` FOREIGN KEY (`videoNo`) REFERENCES `videoforrent` (`videoNo`);

--
-- Filtros para la tabla `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`DirectorNo`) REFERENCES `director` (`DirectorNo`);

--
-- Filtros para la tabla `videoforrent`
--
ALTER TABLE `videoforrent`
  ADD CONSTRAINT `videoforrent_ibfk_1` FOREIGN KEY (`catalogNo`) REFERENCES `video` (`catalogNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
