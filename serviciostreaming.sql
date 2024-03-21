-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2024 at 03:10 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `actores_personajes`
--

CREATE TABLE `actores_personajes` (
  `ID_ActorPersonaje` int(10) NOT NULL,
  `ID_Actor_FK` int(10) NOT NULL,
  `ID_Personaje_FK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `ID_Categorias` int(3) NOT NULL,
  `Categoria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companiastelefonicas`
--

CREATE TABLE `companiastelefonicas` (
  `ID_Compania` int(3) NOT NULL,
  `Compania` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `contenidoscategorias`
--

CREATE TABLE `contenidoscategorias` (
  `ID_ContenidoCategoria` int(10) NOT NULL,
  `ID_Contenido_FK` int(10) NOT NULL,
  `ID_Categoria_FK` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `correos`
--

CREATE TABLE `correos` (
  `ID_Correo` int(10) NOT NULL,
  `Correo` varchar(20) NOT NULL,
  `ID_Dominio_FK` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cuentas`
--

CREATE TABLE `cuentas` (
  `ID_Cuenta` int(10) NOT NULL,
  `Cuenta` varchar(50) NOT NULL,
  `FechaCorte` date NOT NULL,
  `ID_Usuario_FK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `direccionesurl`
--

CREATE TABLE `direccionesurl` (
  `ID_URL` int(10) NOT NULL,
  `DireccionURL` varchar(50) NOT NULL,
  `ID_TipoDireccion_FK` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `directores`
--

CREATE TABLE `directores` (
  `ID_Director` int(10) NOT NULL,
  `ID_Persona_FK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `directores_contenidos`
--

CREATE TABLE `directores_contenidos` (
  `ID_DirectorContenido` int(10) NOT NULL,
  `ID_Director_FK` int(10) NOT NULL,
  `ID_Contenido_FK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dominios`
--

CREATE TABLE `dominios` (
  `ID_Dominio` int(3) NOT NULL,
  `Dominio` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `idiomas`
--

CREATE TABLE `idiomas` (
  `ID_Idioma` int(3) NOT NULL,
  `Idioma` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `paises`
--

CREATE TABLE `paises` (
  `ID_Pais` int(3) NOT NULL,
  `Nacionalidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `perfilescapitulos`
--

CREATE TABLE `perfilescapitulos` (
  `ID_PerfilCapitulo` int(10) NOT NULL,
  `Minuto` time(6) NOT NULL,
  `Estado` int(1) NOT NULL,
  `ID_Perfil_FK` int(10) NOT NULL,
  `ID_Capitulo_FK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `perfilespeliculas`
--

CREATE TABLE `perfilespeliculas` (
  `ID_PeerfilPelicula` int(10) NOT NULL,
  `Minuto` time(6) NOT NULL,
  `Estado` int(1) NOT NULL,
  `ID_Perfil_FK` int(10) NOT NULL,
  `ID_Pelicula_FK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personajes`
--

CREATE TABLE `personajes` (
  `ID_Personaje` int(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personajes_contenidos`
--

CREATE TABLE `personajes_contenidos` (
  `ID_PersonajeContenido` int(10) NOT NULL,
  `ID_Personaje_FK` int(10) NOT NULL,
  `ID_Contenido_FK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `prefijoscompanias`
--

CREATE TABLE `prefijoscompanias` (
  `ID_PrefijoComp` int(3) NOT NULL,
  `Prefijo` varchar(5) NOT NULL,
  `ID_Compania_FK` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prefijostelefonicos`
--

CREATE TABLE `prefijostelefonicos` (
  `ID_PrefijoTlf` int(3) NOT NULL,
  `Prefijo` varchar(5) NOT NULL,
  `ID_Pais_FK` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `ID_Serie` int(10) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `tiposcontenidos`
--

CREATE TABLE `tiposcontenidos` (
  `ID_TipoContenido` int(1) NOT NULL,
  `Tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tiposdirecciones`
--

CREATE TABLE `tiposdirecciones` (
  `ID_TipoDireccion` int(1) NOT NULL,
  `Tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indexes for table `perfilescapitulos`
--
ALTER TABLE `perfilescapitulos`
  ADD PRIMARY KEY (`ID_PerfilCapitulo`),
  ADD KEY `ID_Capitulo_FK` (`ID_Capitulo_FK`),
  ADD KEY `ID_Perfil_FK` (`ID_Perfil_FK`);

--
-- Indexes for table `perfilespeliculas`
--
ALTER TABLE `perfilespeliculas`
  ADD PRIMARY KEY (`ID_PeerfilPelicula`),
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
  MODIFY `ID_Actor` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `actores_personajes`
--
ALTER TABLE `actores_personajes`
  MODIFY `ID_ActorPersonaje` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audios`
--
ALTER TABLE `audios`
  MODIFY `ID_Audio` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `capitulos`
--
ALTER TABLE `capitulos`
  MODIFY `ID_Capitulo` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `ID_Categorias` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companiastelefonicas`
--
ALTER TABLE `companiastelefonicas`
  MODIFY `ID_Compania` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contenidos`
--
ALTER TABLE `contenidos`
  MODIFY `ID_Contenido` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contenidoscategorias`
--
ALTER TABLE `contenidoscategorias`
  MODIFY `ID_ContenidoCategoria` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `correos`
--
ALTER TABLE `correos`
  MODIFY `ID_Correo` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cuentas`
--
ALTER TABLE `cuentas`
  MODIFY `ID_Cuenta` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `direccionesurl`
--
ALTER TABLE `direccionesurl`
  MODIFY `ID_URL` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `directores`
--
ALTER TABLE `directores`
  MODIFY `ID_Director` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `directores_contenidos`
--
ALTER TABLE `directores_contenidos`
  MODIFY `ID_DirectorContenido` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dominios`
--
ALTER TABLE `dominios`
  MODIFY `ID_Dominio` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `idiomas`
--
ALTER TABLE `idiomas`
  MODIFY `ID_Idioma` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `numerostelefonicos`
--
ALTER TABLE `numerostelefonicos`
  MODIFY `ID_Telefono` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pagos`
--
ALTER TABLE `pagos`
  MODIFY `ID_Pago` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paises`
--
ALTER TABLE `paises`
  MODIFY `ID_Pais` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `ID_Pelicula` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `ID_Perfil` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perfilescapitulos`
--
ALTER TABLE `perfilescapitulos`
  MODIFY `ID_PerfilCapitulo` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perfilespeliculas`
--
ALTER TABLE `perfilespeliculas`
  MODIFY `ID_PeerfilPelicula` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personajes`
--
ALTER TABLE `personajes`
  MODIFY `ID_Personaje` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personajes_contenidos`
--
ALTER TABLE `personajes_contenidos`
  MODIFY `ID_PersonajeContenido` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personas`
--
ALTER TABLE `personas`
  MODIFY `ID_Persona` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prefijoscompanias`
--
ALTER TABLE `prefijoscompanias`
  MODIFY `ID_PrefijoComp` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prefijostelefonicos`
--
ALTER TABLE `prefijostelefonicos`
  MODIFY `ID_PrefijoTlf` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `ID_Serie` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subtitulos`
--
ALTER TABLE `subtitulos`
  MODIFY `ID_Subtitulo` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temporadas`
--
ALTER TABLE `temporadas`
  MODIFY `ID_Temporada` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tiposcontenidos`
--
ALTER TABLE `tiposcontenidos`
  MODIFY `ID_TipoContenido` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tiposdirecciones`
--
ALTER TABLE `tiposdirecciones`
  MODIFY `ID_TipoDireccion` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_Usuario` int(10) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `perfilescapitulos`
--
ALTER TABLE `perfilescapitulos`
  ADD CONSTRAINT `perfilescapitulos_ibfk_1` FOREIGN KEY (`ID_Capitulo_FK`) REFERENCES `capitulos` (`ID_Capitulo`),
  ADD CONSTRAINT `perfilescapitulos_ibfk_2` FOREIGN KEY (`ID_Perfil_FK`) REFERENCES `perfiles` (`ID_Perfil`);

--
-- Constraints for table `perfilespeliculas`
--
ALTER TABLE `perfilespeliculas`
  ADD CONSTRAINT `perfilespeliculas_ibfk_1` FOREIGN KEY (`ID_Pelicula_FK`) REFERENCES `peliculas` (`ID_Pelicula`),
  ADD CONSTRAINT `perfilespeliculas_ibfk_2` FOREIGN KEY (`ID_Perfil_FK`) REFERENCES `perfiles` (`ID_Perfil`);

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
