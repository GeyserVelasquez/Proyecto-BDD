-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2024 at 05:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `serviciostreaming`
--

-- --------------------------------------------------------

--
-- Table structure for table `actores`
--

CREATE TABLE `actores` (
  `ID_Actor` int(10) NOT NULL,
  `ID_Persona_FK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `actores`
--

INSERT INTO `actores` (`ID_Actor`, `ID_Persona_FK`) VALUES
(1, 6),
(2, 7),
(3, 8),
(4, 9),
(5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `actores_personajes`
--

CREATE TABLE `actores_personajes` (
  `ID_ActorPersonaje` int(10) NOT NULL,
  `ID_Actor_FK` int(10) NOT NULL,
  `ID_Personaje_FK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `actores_personajes`
--

INSERT INTO `actores_personajes` (`ID_ActorPersonaje`, `ID_Actor_FK`, `ID_Personaje_FK`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 2, 3),
(4, 3, 2),
(5, 4, 2),
(6, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `audios`
--

CREATE TABLE `audios` (
  `ID_Audio` int(10) NOT NULL,
  `ID_Idioma_FK` int(3) NOT NULL,
  `ID_Contenido_FK` int(10) NOT NULL,
  `ID_URL_FK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audios`
--

INSERT INTO `audios` (`ID_Audio`, `ID_Idioma_FK`, `ID_Contenido_FK`, `ID_URL_FK`) VALUES
(1, 1, 1, 3),
(2, 3, 1, 4),
(3, 2, 3, 8),
(4, 3, 3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `capitulos`
--

CREATE TABLE `capitulos` (
  `ID_Capitulo` int(10) NOT NULL,
  `Numero` int(3) NOT NULL,
  `ID_URL_FK` int(10) NOT NULL,
  `ID_Temporada_FK` int(2) NOT NULL,
  `ID_Contenido_FK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `capitulos`
--

INSERT INTO `capitulos` (`ID_Capitulo`, `Numero`, `ID_URL_FK`, `ID_Temporada_FK`, `ID_Contenido_FK`) VALUES
(1, 1, 11, 1, 4),
(2, 2, 12, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `ID_Categorias` int(3) NOT NULL,
  `Categoria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`ID_Categorias`, `Categoria`) VALUES
(1, 'Ciencia Ficcion'),
(2, 'SuperHeroes'),
(3, 'Thriller'),
(4, 'Suspense'),
(5, 'Drama');

-- --------------------------------------------------------

--
-- Table structure for table `companiastelefonicas`
--

CREATE TABLE `companiastelefonicas` (
  `ID_Compania` int(3) NOT NULL,
  `Compania` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companiastelefonicas`
--

INSERT INTO `companiastelefonicas` (`ID_Compania`, `Compania`) VALUES
(1, 'Movilnet'),
(2, 'Movistar'),
(3, 'Digitel'),
(4, 'T-Mobile'),
(5, 'AT&T');

-- --------------------------------------------------------

--
-- Table structure for table `contenidos`
--

CREATE TABLE `contenidos` (
  `ID_Contenido` int(10) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Duracion` time(6) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `ID_TipoContenido_FK` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contenidos`
--

INSERT INTO `contenidos` (`ID_Contenido`, `Nombre`, `Duracion`, `Descripcion`, `ID_TipoContenido_FK`) VALUES
(1, 'Drive', '00:00:00.000000', 'Pelicula sobre un conductor', 1),
(2, 'Blade Runner 2049', '00:01:20.000000', 'Pelicula sobre distopia futurista', 1),
(3, 'Spiderman 1', '00:00:00.000000', 'Primera pelicula del superheroe aracnido', 1),
(4, 'Primer Dia', '00:00:20.000000', 'Primer Capitulo de la serie de Amazing Spiderman', 2),
(5, 'Segundo Dia', '00:00:20.000000', 'Segundo Capitulo de la serie de Amazing Spiderman', 2);

-- --------------------------------------------------------

--
-- Table structure for table `contenidoscategorias`
--

CREATE TABLE `contenidoscategorias` (
  `ID_ContenidoCategoria` int(10) NOT NULL,
  `ID_Contenido_FK` int(10) NOT NULL,
  `ID_Categoria_FK` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contenidoscategorias`
--

INSERT INTO `contenidoscategorias` (`ID_ContenidoCategoria`, `ID_Contenido_FK`, `ID_Categoria_FK`) VALUES
(1, 1, 5),
(2, 1, 4),
(3, 2, 1),
(4, 3, 2),
(5, 4, 2),
(6, 5, 2),
(7, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `correos`
--

CREATE TABLE `correos` (
  `ID_Correo` int(10) NOT NULL,
  `Correo` varchar(20) NOT NULL,
  `ID_Dominio_FK` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `correos`
--

INSERT INTO `correos` (`ID_Correo`, `Correo`, `ID_Dominio_FK`) VALUES
(1, 'cmartinez', 2),
(2, 'gvelasquez', 2),
(3, 'arivero', 3),
(4, 'ggarcia', 1),
(5, 'cavila', 4);

-- --------------------------------------------------------

--
-- Table structure for table `cuentas`
--

CREATE TABLE `cuentas` (
  `ID_Cuenta` int(10) NOT NULL,
  `FechaCorte` date NOT NULL,
  `ID_Usuario_FK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cuentas`
--

INSERT INTO `cuentas` (`ID_Cuenta`, `FechaCorte`, `ID_Usuario_FK`) VALUES
(1, '2024-04-11', 1),
(2, '2024-04-08', 2),
(3, '2024-04-26', 3),
(4, '2024-04-22', 4),
(5, '2024-03-31', 5);

-- --------------------------------------------------------

--
-- Table structure for table `direccionesurl`
--

CREATE TABLE `direccionesurl` (
  `ID_URL` int(10) NOT NULL,
  `DireccionURL` varchar(50) NOT NULL,
  `ID_TipoDireccion_FK` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `direccionesurl`
--

INSERT INTO `direccionesurl` (`ID_URL`, `DireccionURL`, `ID_TipoDireccion_FK`) VALUES
(1, 'https://docs.google.com/pelidrive', 1),
(2, 'https://docs.google.com/peliBladeRunner', 1),
(3, 'https://docs.google.com/audioEspDrive', 2),
(4, 'https://docs.google.com/audioIngDrive', 2),
(5, 'https://docs.google.com/subEspDrive', 3),
(6, 'https://docs.google.com/subPortDrive', 3),
(7, 'https://docs.google.com/pelispiderman', 1),
(8, 'https://docs.google.com/audioEspSpiderman', 2),
(9, 'https://docs.google.com/audioInglSpiderman', 2),
(10, 'https://docs.google.com/subEspSpiderman', 3),
(11, 'https://docs.google.com/capitulo1spiderman', 1),
(12, 'https://docs.google.com/capitulo2spiderman', 1);

-- --------------------------------------------------------

--
-- Table structure for table `directores`
--

CREATE TABLE `directores` (
  `ID_Director` int(10) NOT NULL,
  `ID_Persona_FK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `directores`
--

INSERT INTO `directores` (`ID_Director`, `ID_Persona_FK`) VALUES
(2, 3),
(1, 6),
(3, 11),
(4, 12),
(5, 13);

-- --------------------------------------------------------

--
-- Table structure for table `directores_contenidos`
--

CREATE TABLE `directores_contenidos` (
  `ID_DirectorContenido` int(10) NOT NULL,
  `ID_Director_FK` int(10) NOT NULL,
  `ID_Contenido_FK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `directores_contenidos`
--

INSERT INTO `directores_contenidos` (`ID_DirectorContenido`, `ID_Director_FK`, `ID_Contenido_FK`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 4),
(4, 4, 5),
(5, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `dominios`
--

CREATE TABLE `dominios` (
  `ID_Dominio` int(3) NOT NULL,
  `Dominio` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dominios`
--

INSERT INTO `dominios` (`ID_Dominio`, `Dominio`) VALUES
(1, 'gmail.com'),
(2, 'unimar.edu.ve'),
(3, 'hotmail.com'),
(4, 'outlook.com'),
(5, 'microsoft.com');

-- --------------------------------------------------------

--
-- Table structure for table `idiomas`
--

CREATE TABLE `idiomas` (
  `ID_Idioma` int(3) NOT NULL,
  `Idioma` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `idiomas`
--

INSERT INTO `idiomas` (`ID_Idioma`, `Idioma`) VALUES
(1, 'Español'),
(2, 'Español Latino'),
(3, 'Inglés'),
(4, 'Portugues'),
(5, 'Frances');

-- --------------------------------------------------------

--
-- Table structure for table `numerostelefonicos`
--

CREATE TABLE `numerostelefonicos` (
  `ID_Telefono` int(10) NOT NULL,
  `Numero` varchar(10) NOT NULL,
  `ID_PrefijoTlf_FK` int(3) NOT NULL,
  `ID_PrefijoComp_FK` int(3) NOT NULL,
  `ID_Persona_FK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `numerostelefonicos`
--

INSERT INTO `numerostelefonicos` (`ID_Telefono`, `Numero`, `ID_PrefijoTlf_FK`, `ID_PrefijoComp_FK`, `ID_Persona_FK`) VALUES
(1, '1896856', 1, 5, 1),
(2, '7830723', 1, 2, 2),
(3, '6751243', 1, 4, 5),
(4, '0985743', 1, 1, 3),
(5, '7685698', 1, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `pagos`
--

CREATE TABLE `pagos` (
  `ID_Pago` int(10) NOT NULL,
  `Codigo` varchar(20) NOT NULL,
  `Monto` decimal(10,0) NOT NULL,
  `Descripción` varchar(100) NOT NULL,
  `FechaPago` date NOT NULL,
  `ID_Cuenta_FK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pagos`
--

INSERT INTO `pagos` (`ID_Pago`, `Codigo`, `Monto`, `Descripción`, `FechaPago`, `ID_Cuenta_FK`) VALUES
(1, '#1234', 10, 'Pago Plan Base', '2024-02-05', 1),
(2, '#1233', 10, 'Pago Plan Base', '2024-02-20', 2),
(3, '#1232', 20, 'Pago Plan Premium', '2024-01-01', 1),
(4, '#1231', 25, 'Pago Plan Premium+', '2024-03-05', 3),
(5, '#1230', 10, 'Pago Plan Base', '2024-03-03', 5);

-- --------------------------------------------------------

--
-- Table structure for table `paises`
--

CREATE TABLE `paises` (
  `ID_Pais` int(3) NOT NULL,
  `Nacionalidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paises`
--

INSERT INTO `paises` (`ID_Pais`, `Nacionalidad`) VALUES
(1, 'Venezuela'),
(2, 'España'),
(3, 'Estados Unidos'),
(4, 'Argentina'),
(5, 'Cuba');

-- --------------------------------------------------------

--
-- Table structure for table `peliculas`
--

CREATE TABLE `peliculas` (
  `ID_Pelicula` int(10) NOT NULL,
  `ID_URL_FK` int(10) NOT NULL,
  `ID_Idioma_FK` int(3) NOT NULL,
  `ID_Contenido_FK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peliculas`
--

INSERT INTO `peliculas` (`ID_Pelicula`, `ID_URL_FK`, `ID_Idioma_FK`, `ID_Contenido_FK`) VALUES
(1, 1, 3, 1),
(2, 2, 3, 2),
(3, 7, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `perfiles`
--

CREATE TABLE `perfiles` (
  `ID_Perfil` int(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Contraseña` varchar(20) NOT NULL,
  `EsPrincipal` tinyint(1) NOT NULL,
  `ID_Cuenta_FK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `perfiles`
--

INSERT INTO `perfiles` (`ID_Perfil`, `Nombre`, `Contraseña`, `EsPrincipal`, `ID_Cuenta_FK`) VALUES
(1, 'Christian', '1234', 1, 1),
(2, 'Adrian', '', 0, 1),
(3, 'Sebas', '', 0, 1),
(4, 'Guillermo', '1111', 1, 4),
(5, 'Javier', '1221', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `perfiles_capitulos_peliculas`
--

CREATE TABLE `perfiles_capitulos_peliculas` (
  `ID_Perfil_Capitulo_Pelicula` int(10) NOT NULL,
  `Minuto` time(6) NOT NULL,
  `Estado` int(1) NOT NULL,
  `ID_Perfil_FK` int(10) NOT NULL,
  `ID_Capitulo_FK` int(10) DEFAULT NULL,
  `ID_Pelicula_FK` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `perfiles_capitulos_peliculas`
--

INSERT INTO `perfiles_capitulos_peliculas` (`ID_Perfil_Capitulo_Pelicula`, `Minuto`, `Estado`, `ID_Perfil_FK`, `ID_Capitulo_FK`, `ID_Pelicula_FK`) VALUES
(1, '00:00:20.000000', 1, 3, 1, NULL),
(2, '00:00:15.000000', 0, 3, 2, NULL),
(3, '00:00:46.000000', 0, 4, NULL, 1),
(4, '00:01:20.000000', 1, 4, NULL, 2),
(5, '00:00:10.000000', 0, 2, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `personajes`
--

CREATE TABLE `personajes` (
  `ID_Personaje` int(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personajes`
--

INSERT INTO `personajes` (`ID_Personaje`, `Nombre`, `Descripcion`) VALUES
(1, 'The Driver', 'Conductor de la Pelicula Drive'),
(2, 'Spiderman', 'Superheroe aracnido'),
(3, 'Joy', 'IA de la pelicula Blade Runner 2049'),
(4, 'Officer K', 'Blade Runner de la pelicula Blade Runner'),
(5, 'Messi', 'Jugador de Futbol');

-- --------------------------------------------------------

--
-- Table structure for table `personajes_contenidos`
--

CREATE TABLE `personajes_contenidos` (
  `ID_PersonajeContenido` int(10) NOT NULL,
  `ID_Personaje_FK` int(10) NOT NULL,
  `ID_Contenido_FK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personajes_contenidos`
--

INSERT INTO `personajes_contenidos` (`ID_PersonajeContenido`, `ID_Personaje_FK`, `ID_Contenido_FK`) VALUES
(1, 1, 1),
(2, 2, 3),
(3, 2, 4),
(4, 2, 5),
(5, 3, 2),
(6, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `personas`
--

CREATE TABLE `personas` (
  `ID_Persona` int(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `ID_Pais_FK` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personas`
--

INSERT INTO `personas` (`ID_Persona`, `Nombre`, `Apellido`, `FechaNacimiento`, `ID_Pais_FK`) VALUES
(1, 'Christian', 'Martínez', '2004-07-15', 1),
(2, 'Geyser', 'Velasquez', '2004-12-06', 1),
(3, 'Alvaro', 'Rivero', '2001-12-24', 1),
(4, 'Guillermo', 'Garcia', '2004-02-17', 1),
(5, 'Christopher', 'Ávila', '2001-07-18', 1),
(6, 'Ryan', 'Gosling', '1979-12-02', 3),
(7, 'Ana', 'De Armas', '1994-07-07', 5),
(8, 'Andrew', 'Garfield', '1985-12-19', 3),
(9, 'Tobey', 'Maguire', '1974-03-16', 3),
(10, 'Lionel', 'Messi', '1986-07-24', 4),
(11, 'Ridley', 'Scott', '1955-03-09', 3),
(12, 'Samuel', 'De Luque', '1985-03-20', 2),
(13, 'Quentin', 'Tarantino', '1965-03-18', 3);

-- --------------------------------------------------------

--
-- Table structure for table `prefijoscompanias`
--

CREATE TABLE `prefijoscompanias` (
  `ID_PrefijoComp` int(3) NOT NULL,
  `Prefijo` varchar(5) NOT NULL,
  `ID_Compania_FK` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prefijoscompanias`
--

INSERT INTO `prefijoscompanias` (`ID_PrefijoComp`, `Prefijo`, `ID_Compania_FK`) VALUES
(1, '412', 3),
(2, '414', 2),
(3, '424', 2),
(4, '416', 1),
(5, '426', 1);

-- --------------------------------------------------------

--
-- Table structure for table `prefijostelefonicos`
--

CREATE TABLE `prefijostelefonicos` (
  `ID_PrefijoTlf` int(3) NOT NULL,
  `Prefijo` varchar(5) NOT NULL,
  `ID_Pais_FK` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prefijostelefonicos`
--

INSERT INTO `prefijostelefonicos` (`ID_PrefijoTlf`, `Prefijo`, `ID_Pais_FK`) VALUES
(1, '+58', 1),
(2, '+1', 3),
(3, '+34', 2),
(4, '+53', 5),
(5, '+54', 4);

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `ID_Serie` int(10) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`ID_Serie`, `Nombre`, `Descripcion`) VALUES
(1, 'Amazing Spiderman', 'Serie sobre el superheroe aracnido'),
(2, 'Messi', 'Documental sobre la vida de Lionel Messi');

-- --------------------------------------------------------

--
-- Table structure for table `subtitulos`
--

CREATE TABLE `subtitulos` (
  `ID_Subtitulo` int(10) NOT NULL,
  `ID_Idioma_FK` int(3) NOT NULL,
  `ID_Contenido_FK` int(10) NOT NULL,
  `ID_URL_FK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subtitulos`
--

INSERT INTO `subtitulos` (`ID_Subtitulo`, `ID_Idioma_FK`, `ID_Contenido_FK`, `ID_URL_FK`) VALUES
(1, 2, 1, 5),
(2, 4, 1, 6),
(3, 1, 3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `temporadas`
--

CREATE TABLE `temporadas` (
  `ID_Temporada` int(10) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Numero` int(2) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `ID_Serie_FK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `temporadas`
--

INSERT INTO `temporadas` (`ID_Temporada`, `Nombre`, `Numero`, `Descripcion`, `ID_Serie_FK`) VALUES
(1, 'First Season', 1, 'Primera Temporada de la serie del superheroe aracnido', 1),
(2, 'Documental', 1, 'Documental entero sobre la vida de Lionel Messi', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tiposcontenidos`
--

CREATE TABLE `tiposcontenidos` (
  `ID_TipoContenido` int(1) NOT NULL,
  `Tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tiposcontenidos`
--

INSERT INTO `tiposcontenidos` (`ID_TipoContenido`, `Tipo`) VALUES
(1, 'Pelicula'),
(2, 'Serie');

-- --------------------------------------------------------

--
-- Table structure for table `tiposdirecciones`
--

CREATE TABLE `tiposdirecciones` (
  `ID_TipoDireccion` int(1) NOT NULL,
  `Tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tiposdirecciones`
--

INSERT INTO `tiposdirecciones` (`ID_TipoDireccion`, `Tipo`) VALUES
(1, 'Video'),
(2, 'Audio'),
(3, 'Subtitulo');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_Usuario` int(10) NOT NULL,
  `ID_Persona_FK` int(10) NOT NULL,
  `ID_Correo_FK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`ID_Usuario`, `ID_Persona_FK`, `ID_Correo_FK`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actores`
--
ALTER TABLE `actores`
  ADD PRIMARY KEY (`ID_Actor`),
  ADD KEY `ID_Persona_FK` (`ID_Persona_FK`);

--
-- Indexes for table `actores_personajes`
--
ALTER TABLE `actores_personajes`
  ADD PRIMARY KEY (`ID_ActorPersonaje`),
  ADD KEY `ID_Actor_FK` (`ID_Actor_FK`),
  ADD KEY `ID_Personaje_FK` (`ID_Personaje_FK`);

--
-- Indexes for table `audios`
--
ALTER TABLE `audios`
  ADD PRIMARY KEY (`ID_Audio`),
  ADD KEY `ID_Contenido_FK` (`ID_Contenido_FK`),
  ADD KEY `ID_Idioma_FK` (`ID_Idioma_FK`),
  ADD KEY `ID_URL_FK` (`ID_URL_FK`);

--
-- Indexes for table `capitulos`
--
ALTER TABLE `capitulos`
  ADD PRIMARY KEY (`ID_Capitulo`),
  ADD KEY `ID_Contenido_FK` (`ID_Contenido_FK`),
  ADD KEY `ID_Temporada_FK` (`ID_Temporada_FK`),
  ADD KEY `ID_URL_FK` (`ID_URL_FK`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`ID_Categorias`);

--
-- Indexes for table `companiastelefonicas`
--
ALTER TABLE `companiastelefonicas`
  ADD PRIMARY KEY (`ID_Compania`);

--
-- Indexes for table `contenidos`
--
ALTER TABLE `contenidos`
  ADD PRIMARY KEY (`ID_Contenido`),
  ADD KEY `ID_TipoContenido_FK` (`ID_TipoContenido_FK`);

--
-- Indexes for table `contenidoscategorias`
--
ALTER TABLE `contenidoscategorias`
  ADD PRIMARY KEY (`ID_ContenidoCategoria`),
  ADD KEY `ID_Categoria_FK` (`ID_Categoria_FK`),
  ADD KEY `ID_Contenido_FK` (`ID_Contenido_FK`);

--
-- Indexes for table `correos`
--
ALTER TABLE `correos`
  ADD PRIMARY KEY (`ID_Correo`),
  ADD KEY `ID_Dominio_FK` (`ID_Dominio_FK`);

--
-- Indexes for table `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`ID_Cuenta`),
  ADD KEY `ID_Usuario_FK` (`ID_Usuario_FK`);

--
-- Indexes for table `direccionesurl`
--
ALTER TABLE `direccionesurl`
  ADD PRIMARY KEY (`ID_URL`),
  ADD KEY `ID_TipoDireccion_FK` (`ID_TipoDireccion_FK`);

--
-- Indexes for table `directores`
--
ALTER TABLE `directores`
  ADD PRIMARY KEY (`ID_Director`),
  ADD KEY `ID_Persona_FK` (`ID_Persona_FK`);

--
-- Indexes for table `directores_contenidos`
--
ALTER TABLE `directores_contenidos`
  ADD PRIMARY KEY (`ID_DirectorContenido`),
  ADD KEY `ID_Contenido_FK` (`ID_Contenido_FK`),
  ADD KEY `ID_Director_FK` (`ID_Director_FK`);

--
-- Indexes for table `dominios`
--
ALTER TABLE `dominios`
  ADD PRIMARY KEY (`ID_Dominio`);

--
-- Indexes for table `idiomas`
--
ALTER TABLE `idiomas`
  ADD PRIMARY KEY (`ID_Idioma`);

--
-- Indexes for table `numerostelefonicos`
--
ALTER TABLE `numerostelefonicos`
  ADD PRIMARY KEY (`ID_Telefono`),
  ADD KEY `ID_Persona_FK` (`ID_Persona_FK`),
  ADD KEY `ID_PrefijoTlf_FK` (`ID_PrefijoTlf_FK`),
  ADD KEY `numerostelefonicos_ibfk_2` (`ID_PrefijoComp_FK`);

--
-- Indexes for table `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`ID_Pago`),
  ADD KEY `ID_Cuenta_FK` (`ID_Cuenta_FK`);

--
-- Indexes for table `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`ID_Pais`);

--
-- Indexes for table `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`ID_Pelicula`),
  ADD KEY `ID_Contenido_FK` (`ID_Contenido_FK`),
  ADD KEY `ID_Idioma_FK` (`ID_Idioma_FK`),
  ADD KEY `ID_URL_FK` (`ID_URL_FK`);

--
-- Indexes for table `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`ID_Perfil`),
  ADD KEY `ID_Cuenta_FK` (`ID_Cuenta_FK`);

--
-- Indexes for table `perfiles_capitulos_peliculas`
--
ALTER TABLE `perfiles_capitulos_peliculas`
  ADD PRIMARY KEY (`ID_Perfil_Capitulo_Pelicula`),
  ADD KEY `ID_Capitulo_FK` (`ID_Capitulo_FK`),
  ADD KEY `ID_Pelicula_FK` (`ID_Pelicula_FK`),
  ADD KEY `ID_Perfil_FK` (`ID_Perfil_FK`);

--
-- Indexes for table `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`ID_Personaje`);

--
-- Indexes for table `personajes_contenidos`
--
ALTER TABLE `personajes_contenidos`
  ADD PRIMARY KEY (`ID_PersonajeContenido`),
  ADD KEY `ID_Contenido_FK` (`ID_Contenido_FK`),
  ADD KEY `ID_Personaje_FK` (`ID_Personaje_FK`);

--
-- Indexes for table `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`ID_Persona`),
  ADD KEY `ID_Pais_FK` (`ID_Pais_FK`);

--
-- Indexes for table `prefijoscompanias`
--
ALTER TABLE `prefijoscompanias`
  ADD PRIMARY KEY (`ID_PrefijoComp`),
  ADD KEY `ID_Compania_FK` (`ID_Compania_FK`);

--
-- Indexes for table `prefijostelefonicos`
--
ALTER TABLE `prefijostelefonicos`
  ADD PRIMARY KEY (`ID_PrefijoTlf`),
  ADD KEY `ID_Pais_FK` (`ID_Pais_FK`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`ID_Serie`);

--
-- Indexes for table `subtitulos`
--
ALTER TABLE `subtitulos`
  ADD PRIMARY KEY (`ID_Subtitulo`),
  ADD KEY `ID_Contenido_FK` (`ID_Contenido_FK`),
  ADD KEY `ID_Idioma_FK` (`ID_Idioma_FK`),
  ADD KEY `ID_URL_FK` (`ID_URL_FK`);

--
-- Indexes for table `temporadas`
--
ALTER TABLE `temporadas`
  ADD PRIMARY KEY (`ID_Temporada`),
  ADD KEY `ID_Serie_FK` (`ID_Serie_FK`);

--
-- Indexes for table `tiposcontenidos`
--
ALTER TABLE `tiposcontenidos`
  ADD PRIMARY KEY (`ID_TipoContenido`);

--
-- Indexes for table `tiposdirecciones`
--
ALTER TABLE `tiposdirecciones`
  ADD PRIMARY KEY (`ID_TipoDireccion`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_Usuario`),
  ADD KEY `ID_Correo_FK` (`ID_Correo_FK`),
  ADD KEY `ID_Persona_FK` (`ID_Persona_FK`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actores`
--
ALTER TABLE `actores`
  MODIFY `ID_Actor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `actores_personajes`
--
ALTER TABLE `actores_personajes`
  MODIFY `ID_ActorPersonaje` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `audios`
--
ALTER TABLE `audios`
  MODIFY `ID_Audio` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `capitulos`
--
ALTER TABLE `capitulos`
  MODIFY `ID_Capitulo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `ID_Categorias` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `companiastelefonicas`
--
ALTER TABLE `companiastelefonicas`
  MODIFY `ID_Compania` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contenidos`
--
ALTER TABLE `contenidos`
  MODIFY `ID_Contenido` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contenidoscategorias`
--
ALTER TABLE `contenidoscategorias`
  MODIFY `ID_ContenidoCategoria` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `correos`
--
ALTER TABLE `correos`
  MODIFY `ID_Correo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cuentas`
--
ALTER TABLE `cuentas`
  MODIFY `ID_Cuenta` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `direccionesurl`
--
ALTER TABLE `direccionesurl`
  MODIFY `ID_URL` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `directores`
--
ALTER TABLE `directores`
  MODIFY `ID_Director` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `directores_contenidos`
--
ALTER TABLE `directores_contenidos`
  MODIFY `ID_DirectorContenido` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dominios`
--
ALTER TABLE `dominios`
  MODIFY `ID_Dominio` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `idiomas`
--
ALTER TABLE `idiomas`
  MODIFY `ID_Idioma` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `numerostelefonicos`
--
ALTER TABLE `numerostelefonicos`
  MODIFY `ID_Telefono` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pagos`
--
ALTER TABLE `pagos`
  MODIFY `ID_Pago` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `paises`
--
ALTER TABLE `paises`
  MODIFY `ID_Pais` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `ID_Pelicula` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `ID_Perfil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `perfiles_capitulos_peliculas`
--
ALTER TABLE `perfiles_capitulos_peliculas`
  MODIFY `ID_Perfil_Capitulo_Pelicula` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personajes`
--
ALTER TABLE `personajes`
  MODIFY `ID_Personaje` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personajes_contenidos`
--
ALTER TABLE `personajes_contenidos`
  MODIFY `ID_PersonajeContenido` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personas`
--
ALTER TABLE `personas`
  MODIFY `ID_Persona` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `prefijoscompanias`
--
ALTER TABLE `prefijoscompanias`
  MODIFY `ID_PrefijoComp` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prefijostelefonicos`
--
ALTER TABLE `prefijostelefonicos`
  MODIFY `ID_PrefijoTlf` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `ID_Serie` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subtitulos`
--
ALTER TABLE `subtitulos`
  MODIFY `ID_Subtitulo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `temporadas`
--
ALTER TABLE `temporadas`
  MODIFY `ID_Temporada` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tiposcontenidos`
--
ALTER TABLE `tiposcontenidos`
  MODIFY `ID_TipoContenido` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tiposdirecciones`
--
ALTER TABLE `tiposdirecciones`
  MODIFY `ID_TipoDireccion` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_Usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actores`
--
ALTER TABLE `actores`
  ADD CONSTRAINT `actores_ibfk_1` FOREIGN KEY (`ID_Persona_FK`) REFERENCES `personas` (`ID_Persona`);

--
-- Constraints for table `actores_personajes`
--
ALTER TABLE `actores_personajes`
  ADD CONSTRAINT `actores_personajes_ibfk_1` FOREIGN KEY (`ID_Actor_FK`) REFERENCES `actores` (`ID_Actor`),
  ADD CONSTRAINT `actores_personajes_ibfk_2` FOREIGN KEY (`ID_Personaje_FK`) REFERENCES `personajes` (`ID_Personaje`);

--
-- Constraints for table `audios`
--
ALTER TABLE `audios`
  ADD CONSTRAINT `audios_ibfk_1` FOREIGN KEY (`ID_Contenido_FK`) REFERENCES `contenidos` (`ID_Contenido`),
  ADD CONSTRAINT `audios_ibfk_2` FOREIGN KEY (`ID_Idioma_FK`) REFERENCES `idiomas` (`ID_Idioma`),
  ADD CONSTRAINT `audios_ibfk_3` FOREIGN KEY (`ID_URL_FK`) REFERENCES `direccionesurl` (`ID_URL`);

--
-- Constraints for table `capitulos`
--
ALTER TABLE `capitulos`
  ADD CONSTRAINT `capitulos_ibfk_1` FOREIGN KEY (`ID_Contenido_FK`) REFERENCES `contenidos` (`ID_Contenido`),
  ADD CONSTRAINT `capitulos_ibfk_2` FOREIGN KEY (`ID_Temporada_FK`) REFERENCES `temporadas` (`ID_Temporada`),
  ADD CONSTRAINT `capitulos_ibfk_3` FOREIGN KEY (`ID_URL_FK`) REFERENCES `direccionesurl` (`ID_URL`);

--
-- Constraints for table `contenidos`
--
ALTER TABLE `contenidos`
  ADD CONSTRAINT `contenidos_ibfk_1` FOREIGN KEY (`ID_TipoContenido_FK`) REFERENCES `tiposcontenidos` (`ID_TipoContenido`);

--
-- Constraints for table `contenidoscategorias`
--
ALTER TABLE `contenidoscategorias`
  ADD CONSTRAINT `contenidoscategorias_ibfk_1` FOREIGN KEY (`ID_Categoria_FK`) REFERENCES `categorias` (`ID_Categorias`),
  ADD CONSTRAINT `contenidoscategorias_ibfk_2` FOREIGN KEY (`ID_Contenido_FK`) REFERENCES `contenidos` (`ID_Contenido`);

--
-- Constraints for table `correos`
--
ALTER TABLE `correos`
  ADD CONSTRAINT `correos_ibfk_1` FOREIGN KEY (`ID_Dominio_FK`) REFERENCES `dominios` (`ID_Dominio`);

--
-- Constraints for table `cuentas`
--
ALTER TABLE `cuentas`
  ADD CONSTRAINT `cuentas_ibfk_1` FOREIGN KEY (`ID_Usuario_FK`) REFERENCES `usuarios` (`ID_Usuario`);

--
-- Constraints for table `direccionesurl`
--
ALTER TABLE `direccionesurl`
  ADD CONSTRAINT `direccionesurl_ibfk_1` FOREIGN KEY (`ID_TipoDireccion_FK`) REFERENCES `tiposdirecciones` (`ID_TipoDireccion`);

--
-- Constraints for table `directores`
--
ALTER TABLE `directores`
  ADD CONSTRAINT `directores_ibfk_1` FOREIGN KEY (`ID_Persona_FK`) REFERENCES `personas` (`ID_Persona`);

--
-- Constraints for table `directores_contenidos`
--
ALTER TABLE `directores_contenidos`
  ADD CONSTRAINT `directores_contenidos_ibfk_1` FOREIGN KEY (`ID_Contenido_FK`) REFERENCES `contenidos` (`ID_Contenido`),
  ADD CONSTRAINT `directores_contenidos_ibfk_2` FOREIGN KEY (`ID_Director_FK`) REFERENCES `directores` (`ID_Director`);

--
-- Constraints for table `numerostelefonicos`
--
ALTER TABLE `numerostelefonicos`
  ADD CONSTRAINT `numerostelefonicos_ibfk_1` FOREIGN KEY (`ID_Persona_FK`) REFERENCES `personas` (`ID_Persona`),
  ADD CONSTRAINT `numerostelefonicos_ibfk_2` FOREIGN KEY (`ID_PrefijoComp_FK`) REFERENCES `prefijoscompanias` (`ID_PrefijoComp`),
  ADD CONSTRAINT `numerostelefonicos_ibfk_3` FOREIGN KEY (`ID_PrefijoTlf_FK`) REFERENCES `prefijostelefonicos` (`ID_PrefijoTlf`);

--
-- Constraints for table `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`ID_Cuenta_FK`) REFERENCES `cuentas` (`ID_Cuenta`);

--
-- Constraints for table `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `peliculas_ibfk_1` FOREIGN KEY (`ID_Contenido_FK`) REFERENCES `contenidos` (`ID_Contenido`),
  ADD CONSTRAINT `peliculas_ibfk_2` FOREIGN KEY (`ID_Idioma_FK`) REFERENCES `idiomas` (`ID_Idioma`),
  ADD CONSTRAINT `peliculas_ibfk_3` FOREIGN KEY (`ID_URL_FK`) REFERENCES `direccionesurl` (`ID_URL`);

--
-- Constraints for table `perfiles`
--
ALTER TABLE `perfiles`
  ADD CONSTRAINT `perfiles_ibfk_1` FOREIGN KEY (`ID_Cuenta_FK`) REFERENCES `cuentas` (`ID_Cuenta`);

--
-- Constraints for table `perfiles_capitulos_peliculas`
--
ALTER TABLE `perfiles_capitulos_peliculas`
  ADD CONSTRAINT `perfiles_capitulos_peliculas_ibfk_1` FOREIGN KEY (`ID_Capitulo_FK`) REFERENCES `capitulos` (`ID_Capitulo`),
  ADD CONSTRAINT `perfiles_capitulos_peliculas_ibfk_2` FOREIGN KEY (`ID_Pelicula_FK`) REFERENCES `peliculas` (`ID_Pelicula`),
  ADD CONSTRAINT `perfiles_capitulos_peliculas_ibfk_3` FOREIGN KEY (`ID_Perfil_FK`) REFERENCES `perfiles` (`ID_Perfil`);

--
-- Constraints for table `personajes_contenidos`
--
ALTER TABLE `personajes_contenidos`
  ADD CONSTRAINT `personajes_contenidos_ibfk_1` FOREIGN KEY (`ID_Contenido_FK`) REFERENCES `contenidos` (`ID_Contenido`),
  ADD CONSTRAINT `personajes_contenidos_ibfk_2` FOREIGN KEY (`ID_Personaje_FK`) REFERENCES `personajes` (`ID_Personaje`);

--
-- Constraints for table `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`ID_Pais_FK`) REFERENCES `paises` (`ID_Pais`);

--
-- Constraints for table `prefijoscompanias`
--
ALTER TABLE `prefijoscompanias`
  ADD CONSTRAINT `prefijoscompanias_ibfk_1` FOREIGN KEY (`ID_Compania_FK`) REFERENCES `companiastelefonicas` (`ID_Compania`);

--
-- Constraints for table `prefijostelefonicos`
--
ALTER TABLE `prefijostelefonicos`
  ADD CONSTRAINT `prefijostelefonicos_ibfk_1` FOREIGN KEY (`ID_Pais_FK`) REFERENCES `paises` (`ID_Pais`);

--
-- Constraints for table `subtitulos`
--
ALTER TABLE `subtitulos`
  ADD CONSTRAINT `subtitulos_ibfk_1` FOREIGN KEY (`ID_Contenido_FK`) REFERENCES `contenidos` (`ID_Contenido`),
  ADD CONSTRAINT `subtitulos_ibfk_2` FOREIGN KEY (`ID_Idioma_FK`) REFERENCES `idiomas` (`ID_Idioma`),
  ADD CONSTRAINT `subtitulos_ibfk_3` FOREIGN KEY (`ID_URL_FK`) REFERENCES `direccionesurl` (`ID_URL`);

--
-- Constraints for table `temporadas`
--
ALTER TABLE `temporadas`
  ADD CONSTRAINT `temporadas_ibfk_1` FOREIGN KEY (`ID_Serie_FK`) REFERENCES `series` (`ID_Serie`);

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`ID_Correo_FK`) REFERENCES `correos` (`ID_Correo`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`ID_Persona_FK`) REFERENCES `personas` (`ID_Persona`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
