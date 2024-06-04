-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-06-2024 a las 03:48:45
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `des` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `des`) VALUES
(1, 'Trueno', 'Trueno, nacido y criado en el barrio de La Boca, forma parte de la nueva corriente de artistas con u'),
(2, 'Nicki Nicole', ''),
(3, 'Kali Uchis', ''),
(4, 'Maluma', ''),
(5, 'Olivia Rodrigo ', ''),
(6, 'Taylor Swift', ''),
(7, 'Julion ALvarez', ''),
(8, 'Natanael Cano', ''),
(9, 'Justin Bieber', ''),
(10, 'Nicki Minaj', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas_canciones`
--

CREATE TABLE `artistas_canciones` (
  `id` int(11) NOT NULL,
  `artistas_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistas_canciones`
--

INSERT INTO `artistas_canciones` (`id`, `artistas_id`, `canciones_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'Mamichula', 10, '00:03:39', '2020-01-01', 1, 'foto1.png'),
(2, 'TRANKY FUNKY', 10, '00:02:37', '2024-01-01', 1, 'foto2.png'),
(3, 'FEEL ME?', 10, '00:03:07', '2022-01-01', 1, 'https://i.scdn.co/image/ab67616d00001e022ccbe28be97225ae844bef55'),
(4, 'REAL GANGSTA LOVE', 10, '00:02:25', '2024-01-01', 1, 'foto3.png'),
(5, 'DANCE CRIP', 10, '00:02:45', '2022-01-01', 1, 'foto4.png'),
(6, 'THE ROOF IS ON FIRE', 10, '00:01:51', '2024-01-01', 1, 'foto5.png'),
(7, 'SOLO POR VOS', 10, '00:03:19', '2022-01-01', 1, 'foto6.png'),
(8, 'Los Aparatos', 10, '00:03:52', '2022-01-01', 1, 'foto7.png'),
(9, 'RAIN', 10, '00:03:00', '2022-01-01', 1, 'foto8.png'),
(10, 'RAIN 2', 10, '00:02:53', '2023-01-01', 1, 'foto9.png'),
(11, 'RAIN 3', 10, '00:02:29', '2024-01-01', 1, 'foto10.png'),
(12, 'OHH BABY', 10, '00:02:27', '2024-01-01', 1, 'foto11.png'),
(13, 'PLO PLO', 10, '00:01:42', '2024-03-23', 1, 'foto12.png'),
(14, 'NIGHT', 10, '00:02:53', '2024-03-23', 1, 'foto13.png'),
(15, 'NO CAP', 8, '00:02:06', '2024-03-23', 1, 'foto13.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'K-pop'),
(2, 'Reggaeton'),
(3, 'Phonk'),
(4, 'Clasico'),
(5, 'Rock'),
(6, 'Cumbia'),
(7, 'Electronica'),
(8, 'rap'),
(9, 'indie'),
(10, 'Hip-hop'),
(11, 'Pop');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `des` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `des`, `precio`) VALUES
(1, 'Gratis', 0),
(2, 'Individual', 129),
(3, 'Duo', 180),
(4, 'Familiar', 200),
(5, 'Estudiante', 69);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `total_canciones` int(11) NOT NULL,
  `des` varchar(300) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`id`, `nombre`, `usuarios_id`, `duracion`, `total_canciones`, `des`, `publico`) VALUES
(1, 'Beloveds', 4, '04:00:00', 40, 'Gidle', 1),
(2, 'Lovers', 4, '28:00:00', 500, 'K-pop', 1),
(3, 'Partido', 6, '03:33:11', 40, 'Para la cetiza', 1),
(4, 'Party', 8, '24:00:00', 132, '', 1),
(5, 'TikTok VIbes', 3, '07:06:00', 65, 'Alc no se', 0),
(6, 'Kevin Moreno', 7, '00:19:00', 3, 'sepa', 0),
(7, 'Emmainsano', 6, '99:00:00', 2847, 'zy', 0),
(8, 'Valorant moods', 10, '26:00:00', 500, 'para elñ rage', 0),
(9, 'añiza', 7, '09:09:00', 87, '', 0),
(10, 'playa', 1, '15:11:11', 140, '', 1),
(11, 'Exitos Maluma', 4, '24:45:43', 542, 'Maluma pelon', 1),
(12, 'La poderosa', 3, '51:37:27', 1000, 'pura cumbia y no mafufadas', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `membresias_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresias_id`) VALUES
(1, 'Saaopng', 'saaopng@gmail.com', 2),
(2, 'Alan', 'AlanLugo@gmail.com', 2),
(3, 'Alen', 'alen@gmail.com', 1),
(4, 'Cockatiel...', 'minjinistapro@gmail.com', 4),
(5, 'JinJin...', 'saaopng@gmail.com', 1),
(6, 'emmanuelpro777', 'vegettadios@gmail.com', 5),
(7, 'omar', 'omare@gmail.com', 2),
(8, 'yassir', 'yassir3628h@gmail.com', 3),
(9, 'Omar3', 'mopa1068@gmail.com', 5),
(10, 'avrilita777', 'avril@hotmail.com', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artistas_id` (`artistas_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_id` (`usuarios_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_id` (`usuarios_id`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `usuarios_id` (`usuarios_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresias_id` (`membresias_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD CONSTRAINT `artistas_canciones_ibfk_1` FOREIGN KEY (`artistas_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artistas_canciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_3` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresias_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
