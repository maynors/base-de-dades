-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-02-2023 a las 11:58:04
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `movies`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_genre`
--

CREATE TABLE `tb_genre` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(40) NOT NULL,
  `created_by_user` varchar(10) NOT NULL DEFAULT 'OS_SGAD',
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_genre`
--

INSERT INTO `tb_genre` (`genre_id`, `genre_name`, `created_by_user`, `created_date`, `updated_date`) VALUES
(1, 'Acción', 'OS_SGAD', NULL, NULL),
(2, 'Ciencia Ficción', 'OS_SGAD', NULL, NULL),
(3, 'Comedia', 'OS_SGAD', NULL, NULL),
(4, 'Drama', 'OS_SGAD', NULL, NULL),
(5, 'Fantasía', 'apermag', NULL, NULL),
(6, 'Melodrama', 'apermag', '2018-09-01', '2018-09-27'),
(7, 'Musical', 'OS_SGAD', NULL, NULL),
(8, 'Romance', 'OS_SGAD', NULL, NULL),
(9, 'Suspense', 'OS_SGAD', NULL, NULL),
(10, 'Terror', 'OS_SGAD', NULL, NULL),
(11, 'Bélico', 'OS_SGAD', NULL, NULL),
(69, 'Documental', 'Maynor', '2023-02-15', '2023-02-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_movie`
--

CREATE TABLE `tb_movie` (
  `movie_id` int(11) NOT NULL,
  `movie_title` varchar(100) NOT NULL,
  `movie_date` date DEFAULT NULL,
  `movie_format` varchar(50) DEFAULT NULL,
  `movie_genre_id` int(11) DEFAULT NULL,
  `created_by_user` varchar(10) NOT NULL DEFAULT 'OS_SGAD',
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_movie`
--

INSERT INTO `tb_movie` (`movie_id`, `movie_title`, `movie_date`, `movie_format`, `movie_genre_id`, `created_by_user`, `created_date`, `updated_date`) VALUES
(1, 'Apocalypse Now', '1979-05-10', 'Film', 11, 'OS_SGAD', NULL, NULL),
(2, 'Star Wars:Episode IV - A New Hope', '1977-05-25', 'Film', 2, 'OS_SGAD', NULL, NULL),
(3, 'Indiana Jones and the Temple of Doom', '1984-05-08', 'Film', 1, 'OS_SGAD', NULL, NULL),
(4, 'The Terminal', '2004-06-18', 'Digital', 3, 'OS_SGAD', NULL, NULL),
(5, 'Jaws', '1975-01-01', 'Film', 10, 'OS_SGAD', NULL, NULL),
(6, 'ET The Extraterrestrial', '1982-07-25', 'Film', 5, 'OS_SGAD', NULL, NULL),
(7, 'Psycho', '1960-05-06', 'Film', 9, 'OS_SGAD', NULL, NULL),
(8, 'Ocho Apellidos Vascos', '2014-03-14', 'Digital', 3, 'OS_SGAD', NULL, NULL),
(9, 'Ocho Apellidos Catalanes', '2016-06-09', 'Digital', 3, 'OS_SGAD', NULL, NULL),
(10, 'El otro lado de la cama', '2002-09-04', 'Digital', 8, 'OS_SGAD', NULL, NULL),
(12, 'El dia de la bestia', '1994-12-25', 'Film', 1, 'OS_SGAD', NULL, NULL),
(13, 'Braveheart', '1995-08-08', 'Film', 4, 'OS_SGAD', NULL, NULL),
(14, 'The Shawshank Redemption', '1992-01-07', 'Film', 4, 'OS_SGAD', NULL, NULL),
(15, 'Las brujas de Zugarramurdi', '2009-10-07', 'Digital', 9, 'OS_SGAD', NULL, NULL),
(16, 'Blade Runner', '1982-12-25', 'Digital', 2, 'OS_SGAD', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_movie_person`
--

CREATE TABLE `tb_movie_person` (
  `movie_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `movie_award_ind` char(1) NOT NULL,
  `created_by_user` varchar(10) NOT NULL DEFAULT 'OS_SGAD',
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_movie_person`
--

INSERT INTO `tb_movie_person` (`movie_id`, `person_id`, `role_id`, `movie_award_ind`, `created_by_user`, `created_date`, `updated_date`) VALUES
(1, 1, 2, 'Y', 'OS_SGAD', NULL, NULL),
(1, 1, 3, 'N', 'OS_SGAD', NULL, NULL),
(1, 1, 5, 'N', 'OS_SGAD', NULL, NULL),
(1, 2, 5, 'N', 'OS_SGAD', NULL, NULL),
(1, 3, 1, 'N', 'OS_SGAD', NULL, NULL),
(1, 4, 1, 'N', 'OS_SGAD', NULL, NULL),
(1, 5, 1, 'Y', 'OS_SGAD', NULL, NULL),
(1, 6, 1, 'N', 'OS_SGAD', NULL, NULL),
(1, 41, 1, 'N', 'OS_SGAD', NULL, NULL),
(2, 6, 1, 'N', 'OS_SGAD', NULL, NULL),
(2, 7, 2, 'Y', 'OS_SGAD', NULL, NULL),
(2, 8, 3, 'N', 'OS_SGAD', NULL, NULL),
(3, 6, 1, 'N', 'OS_SGAD', NULL, NULL),
(3, 7, 1, 'N', 'OS_SGAD', NULL, NULL),
(3, 7, 4, 'N', 'OS_SGAD', NULL, NULL),
(3, 9, 2, 'N', 'OS_SGAD', NULL, NULL),
(3, 10, 5, 'N', 'OS_SGAD', NULL, NULL),
(4, 9, 2, 'N', 'OS_SGAD', NULL, NULL),
(4, 9, 3, 'N', 'OS_SGAD', NULL, NULL),
(4, 11, 1, 'N', 'OS_SGAD', NULL, NULL),
(4, 12, 1, 'N', 'OS_SGAD', NULL, NULL),
(5, 9, 2, 'N', 'OS_SGAD', NULL, NULL),
(6, 9, 2, 'N', 'OS_SGAD', NULL, NULL),
(7, 13, 1, 'N', 'OS_SGAD', NULL, NULL),
(7, 13, 2, 'N', 'OS_SGAD', NULL, NULL),
(7, 13, 3, 'N', 'OS_SGAD', NULL, NULL),
(7, 14, 2, 'N', 'OS_SGAD', NULL, NULL),
(7, 15, 2, 'N', 'OS_SGAD', NULL, NULL),
(8, 16, 2, 'N', 'OS_SGAD', NULL, NULL),
(8, 17, 1, 'N', 'OS_SGAD', NULL, NULL),
(8, 18, 1, 'N', 'OS_SGAD', NULL, NULL),
(8, 19, 1, 'N', 'OS_SGAD', NULL, NULL),
(8, 20, 1, 'N', 'OS_SGAD', NULL, NULL),
(9, 16, 2, 'N', 'OS_SGAD', NULL, NULL),
(9, 17, 1, 'N', 'OS_SGAD', NULL, NULL),
(9, 18, 1, 'N', 'OS_SGAD', NULL, NULL),
(9, 19, 1, 'N', 'OS_SGAD', NULL, NULL),
(9, 20, 1, 'N', 'OS_SGAD', NULL, NULL),
(10, 16, 2, 'N', 'OS_SGAD', NULL, NULL),
(13, 28, 1, 'Y', 'OS_SGAD', NULL, NULL),
(13, 28, 2, 'N', 'OS_SGAD', NULL, NULL),
(14, 29, 1, 'N', 'OS_SGAD', NULL, NULL),
(14, 30, 1, 'N', 'OS_SGAD', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_person`
--

CREATE TABLE `tb_person` (
  `person_id` int(11) NOT NULL,
  `person_name` varchar(100) NOT NULL,
  `person_country` varchar(40) DEFAULT NULL,
  `person_dob` date NOT NULL,
  `person_dod` date DEFAULT NULL,
  `person_parent_id` int(11) DEFAULT NULL,
  `created_by_user` varchar(10) NOT NULL DEFAULT 'OS_SGAD',
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_person`
--

INSERT INTO `tb_person` (`person_id`, `person_name`, `person_country`, `person_dob`, `person_dod`, `person_parent_id`, `created_by_user`, `created_date`, `updated_date`) VALUES
(1, 'Francis Ford Coppola', 'United States', '1939-04-07', NULL, NULL, 'OS_SGAD', NULL, NULL),
(2, 'Carmine Coppola', 'United States', '1945-07-08', NULL, NULL, 'OS_SGAD', NULL, NULL),
(3, 'Marlon Brando', 'United States', '1924-04-03', '2004-07-01', NULL, 'OS_SGAD', NULL, NULL),
(4, 'Robert Duvall', 'United States', '1931-01-05', NULL, NULL, 'OS_SGAD', NULL, NULL),
(5, 'Martin Sheen', 'United States', '1940-08-03', NULL, NULL, 'OS_SGAD', NULL, NULL),
(6, 'Harrison Ford', 'United States', '1942-07-13', NULL, NULL, 'OS_SGAD', NULL, NULL),
(7, 'George Lucas', 'United States', '1944-05-14', NULL, NULL, 'OS_SGAD', NULL, NULL),
(8, 'Gary Kurtz', 'United States', '1940-07-27', NULL, NULL, 'OS_SGAD', NULL, NULL),
(9, 'Steven Spielberg', 'United States', '1946-12-18', NULL, NULL, 'OS_SGAD', NULL, NULL),
(10, 'John Williams', 'United States', '1928-08-08', NULL, NULL, 'OS_SGAD', NULL, NULL),
(11, 'Tom Hanks', 'United States', '1956-07-09', NULL, NULL, 'OS_SGAD', NULL, NULL),
(12, 'Catherine Zeta-Jones', 'Wales', '1969-09-25', NULL, NULL, 'OS_SGAD', NULL, NULL),
(13, 'Alfred Joseph Hitchcock', 'United Kingdom', '1899-08-13', '1980-04-29', NULL, 'OS_SGAD', NULL, NULL),
(14, 'Anthony Perkins', 'United States', '1934-04-04', '1992-09-08', NULL, 'OS_SGAD', NULL, NULL),
(15, 'Vera Miles', 'United States', '1929-08-23', NULL, NULL, 'OS_SGAD', NULL, NULL),
(16, 'Emilio Martinez Lazaro', 'Spain', '1956-09-09', NULL, NULL, 'OS_SGAD', NULL, NULL),
(17, 'Dani Rovira', 'Spain', '1984-07-01', NULL, NULL, 'OS_SGAD', NULL, NULL),
(18, 'Clara Lago', 'Spain', '1986-04-17', NULL, NULL, 'OS_SGAD', NULL, NULL),
(19, 'Carmen Machi', 'Spain', '1964-08-09', NULL, NULL, 'OS_SGAD', NULL, NULL),
(20, 'Karra Elejalde', 'Spain', '1960-03-06', NULL, NULL, 'OS_SGAD', NULL, NULL),
(21, 'Daniel Sanchez Arevalo', 'Spain', '1970-06-08', NULL, NULL, 'OS_SGAD', NULL, NULL),
(22, 'Quim Gutierrez', 'Spain', '1981-03-27', NULL, NULL, 'OS_SGAD', NULL, NULL),
(23, 'Robert Alamo', 'Spain', '1970-05-06', NULL, NULL, 'OS_SGAD', NULL, NULL),
(24, 'Hector Colome', 'Spain', '1944-10-25', '2015-02-28', NULL, 'OS_SGAD', NULL, NULL),
(25, 'Veronica Echegui', 'Spain', '1983-03-14', NULL, NULL, 'OS_SGAD', NULL, NULL),
(26, 'Patrick Criado', 'Spain', '1995-09-23', NULL, NULL, 'OS_SGAD', NULL, NULL),
(27, 'Sean Connery', 'Scotland', '1930-07-08', NULL, NULL, 'OS_SGAD', NULL, NULL),
(28, 'Mel Gibson', 'Australia', '1950-08-09', NULL, NULL, 'OS_SGAD', NULL, NULL),
(29, 'Morgan Freeman', 'United States', '1935-10-01', NULL, NULL, 'OS_SGAD', NULL, NULL),
(30, 'Tim Robbins', 'United States', '1949-06-07', NULL, NULL, 'OS_SGAD', NULL, NULL),
(41, 'Charlie Sheen', 'United States', '1965-09-03', NULL, 5, 'OS_SGAD', NULL, NULL),
(42, 'Emilio Estevez', 'United States', '1962-05-12', NULL, 5, 'OS_SGAD', NULL, NULL),
(43, 'Ramón Estevez', 'United States', '1963-08-07', NULL, 5, 'OS_SGAD', NULL, NULL),
(44, 'Reneé Estevez', 'United States', '1967-04-02', NULL, 5, 'OS_SGAD', NULL, NULL),
(45, 'Paula Speert Sheen', 'United States', '1986-01-06', NULL, 41, 'OS_SGAD', NULL, NULL),
(46, 'Bob Sheen', 'United States', '2009-05-01', NULL, 41, 'OS_SGAD', NULL, NULL),
(47, 'Max Sheen', 'United States', '2009-05-01', NULL, 41, 'OS_SGAD', NULL, NULL),
(48, 'Sam Sheen', 'United States', '2004-03-09', NULL, 41, 'OS_SGAD', NULL, NULL),
(49, 'Lola Sheen', 'United States', '2005-06-01', NULL, 41, 'OS_SGAD', NULL, NULL),
(50, 'Paula Jones-Sheen', 'United States', '2003-07-06', NULL, 45, 'OS_SGAD', NULL, NULL),
(51, 'Paloma Rae Estevez', 'United States', '1986-02-15', NULL, 42, 'OS_SGAD', NULL, NULL),
(52, 'Taylor Levi Estevez', 'United States', '1984-06-22', NULL, 42, 'OS_SGAD', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_role`
--

CREATE TABLE `tb_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(60) NOT NULL,
  `created_by_user` varchar(10) NOT NULL DEFAULT 'OS_SGAD',
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_role`
--

INSERT INTO `tb_role` (`role_id`, `role_name`, `created_by_user`, `created_date`, `updated_date`) VALUES
(1, 'Actor', 'OS_SGAD', NULL, NULL),
(2, 'Director', 'OS_SGAD', NULL, NULL),
(3, 'Productor', 'OS_SGAD', NULL, NULL),
(4, 'Guionista', 'OS_SGAD', NULL, NULL),
(5, 'Música', 'OS_SGAD', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_genre`
--
ALTER TABLE `tb_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indices de la tabla `tb_movie`
--
ALTER TABLE `tb_movie`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `fk_movie_genre` (`movie_genre_id`);

--
-- Indices de la tabla `tb_movie_person`
--
ALTER TABLE `tb_movie_person`
  ADD PRIMARY KEY (`movie_id`,`person_id`,`role_id`),
  ADD KEY `fk_movper_person` (`person_id`),
  ADD KEY `fk_movper_role` (`role_id`);

--
-- Indices de la tabla `tb_person`
--
ALTER TABLE `tb_person`
  ADD PRIMARY KEY (`person_id`),
  ADD KEY `fk_person_parent` (`person_parent_id`);

--
-- Indices de la tabla `tb_role`
--
ALTER TABLE `tb_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_movie`
--
ALTER TABLE `tb_movie`
  ADD CONSTRAINT `fk_movie_genre` FOREIGN KEY (`movie_genre_id`) REFERENCES `tb_genre` (`genre_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tb_movie_person`
--
ALTER TABLE `tb_movie_person`
  ADD CONSTRAINT `fk_movper_movie` FOREIGN KEY (`movie_id`) REFERENCES `tb_movie` (`movie_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_movper_person` FOREIGN KEY (`person_id`) REFERENCES `tb_person` (`person_id`),
  ADD CONSTRAINT `fk_movper_role` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`role_id`);

--
-- Filtros para la tabla `tb_person`
--
ALTER TABLE `tb_person`
  ADD CONSTRAINT `fk_person_parent` FOREIGN KEY (`person_parent_id`) REFERENCES `tb_person` (`person_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
