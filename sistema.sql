-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 13-12-2018 a las 16:11:32
-- Versión del servidor: 5.7.21
-- Versión de PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

DROP TABLE IF EXISTS `administrador`;
CREATE TABLE IF NOT EXISTS `administrador` (
  `correo` varchar(500) NOT NULL,
  `pass` varchar(500) NOT NULL,
  `nombre` varchar(500) NOT NULL,
  `apellido` varchar(500) NOT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`correo`, `pass`, `nombre`, `apellido`, `id`) VALUES
('admin@uft.edu', 'admin', 'Sergio', 'Rozas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
CREATE TABLE IF NOT EXISTS `asignatura` (
  `asg_nrc` varchar(500) NOT NULL,
  `asg_nombre` varchar(500) NOT NULL,
  `asg_carrera` varchar(500) NOT NULL,
  `asg_semestre` varchar(500) NOT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bloque` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`asg_nrc`, `asg_nombre`, `asg_carrera`, `asg_semestre`, `id`, `bloque`) VALUES
('120', 'Algebra', 'Ingenieria Civil Plan Comun', 'Semestre 2', 33, '4'),
('119', 'Calculo Diferencial', 'Ingenieria Civil Plan Comun', 'Semestre 2', 32, '4'),
('118', 'Ingles I', 'Ingenieria Civil Plan Comun', 'Semestre 1', 31, '2'),
('117', 'Ser Universitario', 'Ingenieria Civil Plan Comun', 'Semestre 1', 30, '2'),
('116', 'Taller Habilidades Computacionales', 'Ingenieria Civil Plan Comun', 'Semestre 1', 29, '4'),
('115', 'Acompanamiento y Tutorias I', 'Ingenieria Civil Plan Comun', 'Semestre 1', 28, '2'),
('114', 'Programacion', 'Ingenieria Civil Plan Comun', 'Semestre 1', 27, '4'),
('113', 'Fundamento de Ingenieria', 'Ingenieria Civil Plan Comun', 'Semestre 1', 26, '4'),
('112', 'Quimica', 'Ingenieria Civil Plan Comun', 'Semestre 1', 25, '4'),
('111', 'Matematicas', 'Ingenieria Civil Plan Comun', 'Semestre 1', 24, '5'),
('121', 'Mecanica', 'Ingenieria Civil Plan Comun', 'Semestre 2', 34, '4'),
('122', 'Taller Ingenieria', 'Ingenieria Civil Plan Comun', 'Semestre 2', 35, '4'),
('123', 'Programacion Avanzada', 'Ingenieria Civil Plan Comun', 'Semestre 2', 36, '4'),
('124', 'Acompanamiento y Tutorias II', 'Ingenieria Civil Plan Comun', 'Semestre 2', 37, '2'),
('125', 'Ingles II', 'Ingenieria Civil Plan Comun', 'Semestre 2', 38, '2'),
('126', 'Comunicación Efectiva', 'Ingenieria Civil Plan Comun', 'Semestre 2', 39, '2'),
('127', 'Calculo Integral', 'Ingenieria Civil Plan Comun', 'Semestre 3', 40, '4'),
('128', 'Algebra Lineal', 'Ingenieria Civil Plan Comun', 'Semestre 3', 41, '4'),
('129', 'Calor y Ondas', 'Ingenieria Civil Plan Comun', 'Semestre 3', 42, '4'),
('130', 'Microeconomia', 'Ingenieria Civil Plan Comun', 'Semestre 3', 43, '4'),
('140', 'Base de Datos', 'Ingenieria Civil Plan Comun', 'Semestre 3', 44, '4'),
('150', 'Acompanamiento y Tutorias III', 'Ingenieria Civil Plan Comun', 'Semestre 3', 45, '2'),
('151', 'Antropologia Filosofica', 'Ingenieria Civil Plan Comun', 'Semestre 3', 46, '2'),
('152', 'Ingles III', 'Ingenieria Civil Plan Comun', 'Semestre 3', 47, '2'),
('153', 'Calculo Vectorial', 'Ingenieria Civil Plan Comun', 'Semestre 4', 48, '4'),
('154', 'Ecuaciones Diferenciales', 'Ingenieria Civil Plan Comun', 'Semestre 4', 49, '4'),
('155', 'Estadistica Descriptiva y Probabilidades', 'Ingenieria Civil Plan Comun', 'Semestre 4', 50, '4'),
('156', 'Electivo', 'Ingenieria Civil Plan Comun', 'Semestre 4', 51, '4'),
('157', 'Contabilidad Gerencial', 'Ingenieria Civil Plan Comun', 'Semestre 4', 52, '4'),
('158', 'Acompanamiento y Tutorias IV', 'Ingenieria Civil Plan Comun', 'Semestre 4', 53, '2'),
('159', 'Ingles IV', 'Ingenieria Civil Plan Comun', 'Semestre 4', 54, '2'),
('160', 'Liderazgo y Trabajo en Equipo', 'Ingenieria Civil Plan Comun', 'Semestre 4', 55, '2'),
('161', 'Termodinamica', 'Ingenieria Civil Industrial', 'Semestre 5', 56, '4'),
('162', 'Matematicas Discretas', 'Ingenieria Civil en Informatica', 'Semestre 5', 57, '3'),
('163', 'Optimizacion', 'Ingenieria Civil Plan Comun', 'Semestre 5', 58, '4'),
('164', 'Ingenieria Economica', 'Ingenieria Civil Plan Comun', 'Semestre 5', 59, '4'),
('165', 'Electrotecnia', 'Ingenieria Civil Industrial', 'Semestre 5', 60, '4'),
('166', 'Electronica', 'Ingenieria Civil en Informatica', 'Semestre 5', 61, '4'),
('167', 'Etica', 'Ingenieria Civil Plan Comun', 'Semestre 5', 62, '2'),
('168', 'Ingles V', 'Ingenieria Civil Plan Comun', 'Semestre 5', 63, '2'),
('169', 'Creatividad y Resolucion de Problemas', 'Ingenieria Civil Plan Comun', 'Semestre 5', 64, '2'),
('170', 'Inferencia Estadistica', 'Ingenieria Civil Plan Comun', 'Semestre 6', 65, '4'),
('171', 'Evaluacion de Proyectos', 'Ingenieria Civil Plan Comun', 'Semestre 6', 66, '4'),
('172', 'Fluidos', 'Ingenieria Civil Industrial', 'Semestre 6', 67, '4'),
('173', 'Gestion de Operaciones', 'Ingenieria Civil Industrial', 'Semestre 6', 68, '4'),
('174', 'Teoria Organizacional', 'Ingenieria Civil Industrial', 'Semestre 6', 69, '4'),
('175', 'Señales y Sistemas', 'Ingenieria Civil en Informatica', 'Semestre 6', 70, '3'),
('176', 'Arquitectura de Computadoras', 'Ingenieria Civil en Informatica', 'Semestre 6', 71, '3'),
('177', 'Algoritmos', 'Ingenieria Civil en Informatica', 'Semestre 6', 72, '3'),
('178', 'Electivo 1', 'Ingenieria Civil Plan Comun', 'Semestre 6', 73, '2'),
('179', 'Ingles VI', 'Ingenieria Civil Plan Comun', 'Semestre 6', 74, '2'),
('180', 'Modelos Estocasticos', 'Ingenieria Civil Plan Comun', 'Semestre 7', 75, '4'),
('181', 'Taller Emprendimiento', 'Ingenieria Civil Plan Comun', 'Semestre 7', 76, '4'),
('182', 'Taller Profesional I', 'Ingenieria Civil Plan Comun', 'Semestre 7', 77, '4'),
('183', 'Electivo II', 'Ingenieria Civil Plan Comun', 'Semestre 7', 78, '2'),
('184', 'Logistica', 'Ingenieria Civil Industrial', 'Semestre 7', 79, '4'),
('185', 'Finanzas Corporativas', 'Ingenieria Civil Industrial', 'Semestre 7', 80, '4'),
('186', 'Procesos Industriales', 'Ingenieria Civil Industrial', 'Semestre 7', 81, '4'),
('187', 'Comunicaciones Digitales', 'Ingenieria Civil en Informatica', 'Semestre 7', 82, '3'),
('188', 'Redes de Datos', 'Ingenieria Civil en Informatica', 'Semestre 7', 83, '3'),
('189', 'Sistemas Operativos', 'Ingenieria Civil en Informatica', 'Semestre 7', 84, '3'),
('190', 'Simulacion', 'Ingenieria Civil Plan Comun', 'Semestre 8', 85, '4'),
('191', 'Taller Profesional II', 'Ingenieria Civil Plan Comun', 'Semestre 8', 86, '4'),
('192', 'Gestion Informacion Empresarial', 'Ingenieria Civil Industrial', 'Semestre 8', 87, '4'),
('193', 'Marketing', 'Ingenieria Civil Industrial', 'Semestre 8', 88, '4'),
('194', 'Gerencia de Proyectos', 'Ingenieria Civil Industrial', 'Semestre 8', 89, '4'),
('195', 'Electivo II', 'Ingenieria Civil Industrial', 'Semestre 8', 90, '4'),
('196', 'Seguridad Informatica', 'Ingenieria Civil en Informatica', 'Semestre 8', 91, '3'),
('197', 'Ingenieria de Software', 'Ingenieria Civil en Informatica', 'Semestre 8', 92, '3'),
('198', 'Electivo Fac. Informatica I', 'Ingenieria Civil en Informatica', 'Semestre 8', 93, '2'),
('199', 'Electivo Ingenieria Informatica I', 'Ingenieria Civil en Informatica', 'Semestre 8', 94, '2'),
('200', 'Electivo II', 'Ingenieria Civil en Informatica', 'Semestre 8', 95, '4'),
('201', 'Electivo Ingenieria Industrial I', 'Ingenieria Civil Industrial', 'Semestre 9', 96, '4'),
('202', 'Electivo Fac. Industrial I', 'Ingenieria Civil Industrial', 'Semestre 9', 97, '4'),
('203', 'Electivo Doble Ingenieria Industrial I', 'Ingenieria Civil Industrial', 'Semestre 9', 98, '4'),
('204', 'Electivo Ingenieria Industrial II', 'Ingenieria Civil Industrial', 'Semestre 9', 99, '4'),
('205', 'Electivo III', 'Ingenieria Civil Industrial', 'Semestre 9', 100, '4'),
('206', 'Ingenieria de Sistemas', 'Ingenieria Civil en Informatica', 'Semestre 9', 101, '3'),
('207', 'Gestion TICS', 'Ingenieria Civil en Informatica', 'Semestre 9', 102, '3'),
('208', 'Electivo Doble Ingenieria Informatica I', 'Ingenieria Civil en Informatica', 'Semestre 9', 103, '3'),
('209', 'Electivo Ingenieria Informatica II', 'Ingenieria Civil en Informatica', 'Semestre 9', 104, '3'),
('210', 'Taller Innovacion e Ingenieria', 'Ingenieria Civil Plan Comun', 'Semestre 9', 105, '4'),
('211', 'Taller de Herramientas', 'Ingenieria Civil Plan Comun', 'Semestre 9', 106, '4'),
('212', 'Electivo Fac. Industrial II', 'Ingenieria Civil Industrial', 'Semestre 10', 107, '4'),
('213', 'Electivo Doble Ingenieria Industrial II', 'Ingenieria Civil Industrial', 'Semestre 10', 108, '4'),
('214', 'Electivo Ingenieria Industrial III', 'Ingenieria Civil Industrial', 'Semestre 10', 109, '4'),
('215', 'Electivo Fac. Informatica II', 'Ingenieria Civil en Informatica', 'Semestre 10', 110, '3'),
('216', 'Electivo Doble Ingenieria Informatica II', 'Ingenieria Civil en Informatica', 'Semestre 10', 111, '3'),
('217', 'Electivo Ingenieria Informatica III', 'Ingenieria Civil en Informatica', 'Semestre 10', 112, '3'),
('218', 'Trabajo de Titulacion', 'Ingenieria Civil Plan Comun', 'Semestre 10', 113, '2'),
('219', 'Taller Insercion Laboral', 'Ingenieria Civil Plan Comun', 'Semestre 10', 114, '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

DROP TABLE IF EXISTS `horarios`;
CREATE TABLE IF NOT EXISTS `horarios` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `semestre` varchar(50) NOT NULL,
  `Lunes` varchar(500) NOT NULL,
  `Martes` varchar(500) NOT NULL,
  `Miercoles` varchar(500) NOT NULL,
  `Jueves` varchar(500) NOT NULL,
  `Viernes` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id`, `semestre`, `Lunes`, `Martes`, `Miercoles`, `Jueves`, `Viernes`) VALUES
(1, 'Semestre 1', 'Programacion,LB2,LB3,LB4,Ser Universitario,Matematicas,LB7,LB8,LB9,LB10,', 'Programacion,MB2,MB3,Ser Universitario,MB5,MB6,Matematicas,MB8,MB9,MB10,', 'Programacion,MiB2,MiB3,MiB4,MiB5,Matematicas,MiB7,MiB8,MiB9,MiB10,', 'Programacion,JB2,JB3,JB4,JB5,Matematicas,JB7,JB8,JB9,Matematicas,', 'VB1,VB2,VB3,VB4,VB5,VB6,VB7,VB8,VB9,VB10,'),
(3, 'Semestre 3', 'LB1,LB2,LB3,Microeconomia,Microeconomia,Microeconomia,Algebra Lineal,Acompanamiento y Tutorias III,Base de Datos,Base de Datos,', 'Calor y Ondas,MB2,Microeconomia,Algebra Lineal,MB5,Calor y Ondas,Base de Datos,MB8,MB9,Calculo Integral,', 'MiB1,MiB2,MiB3,Calor y Ondas,MiB5,MiB6,Base de Datos,Acompanamiento y Tutorias III,Calculo Integral,Calor y Ondas,', 'JB1,JB2,JB3,JB4,Calculo Integral,Algebra Lineal,JB7,Algebra Lineal,JB9,JB10,', 'VB1,Calculo Integral,VB3,VB4,VB5,VB6,VB7,VB8,VB9,VB10,'),
(4, 'Semestre 4', '0', '0', '0', '0', '0'),
(2, 'Semestre 2', '0', '0', '0', '0', '0'),
(5, 'Semestre 5', 'LB1,Termodinamica,LB3,Electrotecnia,LB5,LB6,LB7,LB8,LB9,LB10,', 'MB1,Termodinamica,MB3,Electrotecnia,MB5,MB6,MB7,MB8,MB9,MB10,', 'MiB1,MiB2,MiB3,MiB4,Electrotecnia,Electrotecnia,MiB7,MiB8,MiB9,MiB10,', 'JB1,JB2,JB3,JB4,JB5,JB6,JB7,JB8,JB9,JB10,', 'VB1,VB2,VB3,Termodinamica,Termodinamica,VB6,VB7,VB8,VB9,VB10,'),
(6, 'Semestre 6', '0', '0', '0', '0', '0'),
(7, 'Semestre 7', 'LB1,LB2,LB3,LB4,LB5,LB6,LB7,LB8,LB9,LB10,', 'MB1,MB2,MB3,MB4,MB5,Logistica,Logistica,MB8,MB9,MB10,', 'MiB1,MiB2,MiB3,Logistica,MiB5,MiB6,MiB7,MiB8,MiB9,MiB10,', 'JB1,JB2,JB3,JB4,Logistica,JB6,JB7,JB8,JB9,JB10,', 'VB1,VB2,VB3,VB4,VB5,VB6,VB7,VB8,VB9,VB10,'),
(8, 'Semestre 8', '0', '0', '0', '0', '0'),
(9, 'Semestre 9', '0', '0', '0', '0', '0'),
(10, 'Semestre 10', 'LB1,LB2,LB3,Electivo Doble Ingenieria Industrial II,Electivo Fac. Industrial II,LB6,Electivo Fac. Industrial II,Electivo Ingenieria Industrial III,LB9,LB10,', 'MB1,MB2,MB3,MB4,MB5,Electivo Fac. Industrial II,Electivo Doble Ingenieria Industrial II,Electivo Ingenieria Industrial III,MB9,MB10,', 'MiB1,MiB2,MiB3,MiB4,MiB5,Electivo Fac. Industrial II,MiB7,Electivo Ingenieria Industrial III,MiB9,MiB10,', 'JB1,JB2,Electivo Doble Ingenieria Industrial II,Electivo Doble Ingenieria Industrial II,JB5,JB6,JB7,Electivo Ingenieria Industrial III,JB9,JB10,', 'VB1,VB2,VB3,VB4,VB5,VB6,VB7,VB8,VB9,VB10,');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

DROP TABLE IF EXISTS `profesor`;
CREATE TABLE IF NOT EXISTS `profesor` (
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `rut` varchar(50) NOT NULL,
  `curso` varchar(50) NOT NULL,
  `jornada` varchar(50) NOT NULL,
  `horario` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`nombre`, `apellido`, `rut`, `curso`, `jornada`, `horario`) VALUES
('Pedro', 'Doe', '222222222', 'Electivo Doble Ingenieria Informatica I', 'PartTime', 'LB1,0,0,0,0,0,0,0,0,0,0,0,0,MB4,0,0,0,0,0,0,0,0,MiB3,0,0,0,0,0,0,0,0,0,0,JB4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Camilo', 'Zepeda', '189258852', 'Ser Universitario', 'FullTime', '0,0,0,0,LB5,0,0,0,0,0,0,0,0,MB4,0,0,0,0,0,MB10,MiB1,MiB2,MiB3,0,0,0,0,0,0,0,JB1,0,0,0,JB5,0,0,0,0,0,VB1,0,0,0,0,0,VB7,0,0,0'),
('Jorge', 'Gonzalez', '18245782', 'Matematicas', 'FullTime', '0,0,0,0,0,LB6,0,0,0,0,0,0,0,0,0,0,MB7,0,0,0,0,0,0,0,0,MiB6,0,0,0,0,0,0,0,0,0,JB6,0,0,0,JB10,0,0,VB3,0,0,0,0,0,0,0'),
('John', 'Doe', '182345672', 'Algebra', 'PartTime', 'LB1,0,0,LB4,0,0,0,0,0,0,0,0,0,0,MB5,0,0,0,0,0,0,0,MiB3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,JB8,0,0,0,0,0,0,0,VB6,0,0,0,0'),
('Matias', 'Doe', '230984675', 'Electivo Fac. Informatica II', 'FullTime', 'LB1,0,LB3,0,0,0,0,0,0,0,0,0,MB3,0,0,0,0,0,0,0,MiB1,0,0,0,0,0,0,0,0,0,0,0,JB3,0,0,0,0,0,0,0,0,0,0,VB4,0,0,0,0,0,0'),
('Viviana', 'Schiapacasse', '656565799', 'Calculo Diferencial', 'FullTime', 'LB1,LB2,0,0,0,0,0,0,0,0,0,MB2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,JB1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Mauricio', 'Hidalgo', '1466795648', 'Programacion Avanzada', 'PartTime', '0,0,0,0,LB5,LB6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,MiB2,MiB3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Sergio', 'Rozas', '8654564987', 'Taller Profesional I', 'FullTime', 'LB1,LB2,LB3,0,0,0,0,0,0,0,0,MB2,MB3,MB4,0,0,0,0,0,0,0,0,MiB3,MiB4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Felisa', 'Cordova', '2849515596548', 'Taller Emprendimiento', 'PartTime', '0,0,0,0,0,0,0,0,0,0,0,0,MB3,MB4,0,0,0,0,0,0,0,0,0,0,MiB5,MiB6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Nombre 1', 'Apellido 1', '189258762', 'Taller Habilidades Computacionales', 'FullTime', '0,0,0,LB4,0,0,0,0,0,0,0,0,0,0,0,MB6,MB7,0,0,0,0,0,0,0,0,0,MiB7,0,0,0,0,0,0,JB4,0,0,0,0,0,0,0,0,0,0,0,VB6,0,0,0,0'),
('Nombre 2', 'Apellido 2', '123456541', 'Acompanamiento y Tutorias I', 'PartTime', '0,0,LB3,0,LB5,0,0,0,0,0,0,0,0,0,MB5,0,0,0,0,0,0,0,0,0,MiB5,0,0,0,0,0,0,0,0,0,0,0,JB7,0,0,0,0,0,0,0,0,0,VB7,0,0,0'),
('Nombre 3', 'Apellido 3', '142347652', 'Fundamento de Ingenieria', 'PartTime', '0,0,0,LB4,0,0,0,0,0,0,0,0,0,0,MB5,0,0,MB8,0,0,0,0,0,0,0,MiB6,0,0,0,0,0,JB2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,VB7,VB8,0,0'),
('María Luisa', 'Cerón', '2446465131', 'Quimica', 'FullTime', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,JB1,JB2,0,0,0,0,0,0,0,0,0,0,0,0,VB5,VB6,0,0,0,0'),
('María Luisa', 'Cerón', '268971543', 'Mecanica', 'FullTime', '0,0,LB3,LB4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,MiB1,MiB2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Fernando', 'Yanine', '48954665', 'Taller Ingenieria', 'FullTime', 'LB1,0,0,0,0,0,0,0,0,0,MB1,0,0,0,0,0,0,0,0,0,0,0,0,0,MiB5,MiB6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Karen', 'Vespa', '9847465132', 'Acompanamiento y Tutorias II', 'FullTime', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,VB9,VB10'),
('Viviana', 'Schiapacasse', '789456132', 'Calculo Integral', 'FullTime', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,MB10,0,0,0,0,0,0,0,0,MiB9,0,0,0,0,0,JB5,0,0,0,0,0,0,VB2,0,0,0,0,0,0,0,0'),
('Magdalena', 'Eterovich', '47315978651', 'Algebra Lineal', 'PartTime', '0,0,0,0,0,0,LB7,0,0,0,0,0,0,MB4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,JB6,0,JB8,0,0,0,0,0,0,0,0,0,0,0,0'),
('Victor', 'Cabrera', '65230456', 'Calor y Ondas', 'FullTime', '0,0,0,0,0,0,0,0,0,0,MB1,0,0,0,0,MB6,0,0,0,0,0,0,0,MiB4,0,0,0,0,0,MiB10,0,0,0,JB4,JB5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Ricardo', 'Giadach', '32535687231', 'Base de Datos', 'PartTime', '0,0,0,0,0,0,0,0,LB9,LB10,0,0,0,0,0,0,MB7,0,0,0,0,0,0,0,0,0,MiB7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Veronica', 'Villalobos', '2316973', 'Acompanamiento y Tutorias III', 'PartTime', '0,0,0,0,0,0,0,LB8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,MiB8,0,0,0,0,0,0,0,0,JB7,0,0,0,0,0,0,0,VB5,0,0,0,0,0'),
('Miguel Ángel', 'Bezares', '3587', 'Calculo Vectorial', 'PartTime', '0,0,0,0,LB5,0,0,0,0,0,0,0,0,0,0,0,MB7,0,0,0,0,0,0,0,0,0,MiB7,MiB8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Gonzalo', 'Palomera', '21354684631', 'Ecuaciones Diferenciales', 'PartTime', '0,0,0,0,0,LB6,0,LB8,0,0,0,0,0,0,MB5,0,0,0,0,0,0,0,0,0,0,0,MiB7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Florencia', 'Darrigrandi', '24561232567', 'Estadistica Descriptiva y Probabilidades', 'PartTime', '0,0,0,0,0,0,0,0,0,LB10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,MiB10,0,0,0,0,0,0,JB7,JB8,0,0,0,0,0,0,0,0,0,0,0,0'),
('Hugo', 'Cifuentes', '335465320', 'Electivo', 'PartTime', '0,0,0,0,0,0,0,0,0,0,0,0,0,MB4,0,0,0,MB8,MB9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,JB7,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Alisson', 'Abarca', '876453125', 'Contabilidad Gerencial', 'PartTime', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,MB6,0,0,0,0,0,0,0,0,0,0,MiB7,0,0,0,0,0,0,0,0,JB6,JB7,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Veronica', 'Villalobos', '78645321', 'Acompanamiento y Tutorias IV', 'PartTime', '0,0,0,0,0,LB6,0,LB8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,JB5,0,0,0,0,0,0,VB2,0,0,0,0,0,0,0,0'),
('Victor', 'Cabrera', '987645321', 'Termodinamica', 'FullTime', '0,LB2,0,0,0,0,0,0,0,0,0,MB2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,VB4,VB5,0,0,0,0,0'),
('Maximiliano', 'Vega', '978786532', 'Matematicas Discretas', 'PartTime', 'LB1,0,0,0,0,0,0,0,0,0,MB1,0,0,0,0,0,0,0,0,0,MiB1,0,0,0,0,0,0,0,0,0,JB1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Cristían', 'Valdés', '786453125', 'Optimizacion', 'PartTime', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,MB7,MB8,0,0,0,0,0,0,0,0,0,0,MiB9,MiB10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Cristian', 'Vera', '789645312', 'Ingenieria Economica', 'PartTime', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,VB7,VB8,0,0'),
('Francisco', 'Herrera', '876453128', 'Electrotecnia', 'PartTime', '0,0,0,LB4,0,0,0,0,0,0,0,0,0,MB4,0,0,0,0,0,0,0,0,0,0,MiB5,MiB6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Edmundo', 'Casas', '354467835486', 'Electronica', 'PartTime', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,VB3,VB4,0,0,0,0,0,0'),
('Laura', 'Setti', '78654321', 'Inferencia Estadistica', 'PartTime', '0,0,0,0,0,0,0,0,0,0,MB1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,MiB8,0,0,JB1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Fernando', 'Yanine', '33255486645', 'Evaluacion de Proyectos', 'FullTime', '0,0,0,0,0,LB6,0,0,0,0,0,0,0,0,MB5,MB6,0,0,0,0,0,0,0,0,0,MiB6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Victor', 'Cabrera', '798645312', 'Fluidos', 'FullTime', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,MB5,0,0,0,0,0,0,0,0,0,MiB5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,VB5,VB6,0,0,0,0'),
('Hugo', 'Cifuentes', '8645312', 'Gestion de Operaciones', 'PartTime', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,VB9,VB10'),
('Leonardo', 'Zepeda', '978645312', 'Teoria Organizacional', 'PartTime', '0,0,0,0,LB5,0,LB7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,MiB6,MiB7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Francisco', 'Herrera', '354313256', 'Señales y Sistemas', 'PartTime', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,MB6,0,0,0,0,0,0,0,0,0,MiB6,0,0,0,0,0,0,0,0,0,0,JB7,JB8,0,0,0,0,0,0,0,0,0,0,0,0'),
('Roger', 'Atero', '68745312846', 'Arquitectura de Computadoras', 'FullTime', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,JB3,JB4,0,0,0,0,0,0,VB1,VB2,0,0,0,0,0,0,0,0'),
('Jacqueline', 'Khöler', '76854321', 'Algoritmos', 'PartTime', '0,0,LB3,0,0,0,0,0,0,0,MB1,0,0,0,0,0,0,0,0,0,0,0,0,MiB4,MiB5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Alejandra', 'Fuentes', '78643521987645', 'Modelos Estocasticos', 'PartTime', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,MiB8,0,MiB10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,VB5,VB6,0,0,0,0'),
('Profesor', 'Industrial', '634546845312', 'Logistica', 'PartTime', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,MB6,MB7,0,0,0,0,0,0,MiB4,0,0,0,0,0,0,0,0,0,0,JB5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Francisco', 'Herrera', '6784532168', 'Comunicaciones Digitales', 'PartTime', '0,0,0,0,0,0,0,0,0,0,MB1,MB2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,VB4,VB5,0,0,0,0,0'),
('Rogers', 'Atero', '68734553448', 'Redes de Datos', 'FullTime', 'LB1,LB2,LB3,LB4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Jacqueline', 'Khöler', '3537354168', 'Sistemas Operativos', 'PartTime', '0,0,0,0,0,0,0,0,0,0,0,0,0,MB4,MB5,0,MB7,MB8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Hugo', 'Cifuentes', '5657346575', 'Simulacion', 'PartTime', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,MiB6,0,0,MiB9,0,0,0,0,JB4,0,0,0,0,0,0,0,0,0,VB4,0,0,0,0,0,0'),
('Fernando', 'Yanine', '355437684654', 'Taller Profesional II', 'PartTime', '0,0,LB3,0,0,0,0,0,0,0,0,0,0,MB4,MB5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,JB2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Armando', 'Tamponi', '7864531245645', 'Gestion TICS', 'PartTime', '0,0,0,0,0,0,0,0,0,0,0,0,0,MB4,MB5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,JB6,JB7,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Esteban ', 'Motivay', '156324897', 'Taller Innovacion e Ingenieria', 'PartTime', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,MB8,MB9,0,0,0,0,0,0,0,0,0,MiB9,MiB10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Camilo', 'Flores', '163258479', 'Taller de Herramientas', 'PartTime', '0,0,0,0,0,LB6,0,LB8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,MiB6,0,0,0,0,0,0,0,0,0,0,JB7,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Profe 2', 'Industrial', '182949424', 'Electivo Fac. Industrial II', 'PartTime', '0,0,0,0,LB5,0,LB7,0,0,0,0,0,0,0,0,MB6,0,0,0,0,0,0,0,0,0,MiB6,0,0,0,0,0,0,0,0,0,0,JB7,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Profe 3', 'Industrial', '126549875', 'Electivo Doble Ingenieria Industrial II', 'PartTime', '0,0,0,LB4,0,0,0,0,0,0,0,0,0,0,0,0,MB7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,JB3,JB4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0'),
('Profe 4', 'Industrial', '65896521', 'Electivo Ingenieria Industrial III', 'PartTime', '0,0,0,0,0,0,0,LB8,0,0,0,0,0,0,0,0,0,MB8,0,0,0,0,0,0,0,0,0,MiB8,0,0,0,0,0,0,0,0,0,JB8,0,0,0,0,0,0,0,0,0,VB8,0,0'),
('Profe6', 'Industrial', '625317489', 'Electivo Doble Ingenieria Informatica II', 'FullTime', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,MB8,0,0,0,0,0,0,0,0,0,MiB8,0,0,0,0,0,0,0,0,0,0,JB9,0,0,0,0,0,0,0,0,VB8,0,0'),
('Profe 6', 'Industrial', '336258415', 'Electivo Ingenieria Informatica III', 'FullTime', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,MB9,MB10,0,0,0,0,0,0,0,0,MiB9,0,0,0,0,0,0,JB6,0,0,0,0,0,0,0,0,0,0,VB7,VB8,VB9,0'),
('Ceron', 'Ceron', '665215553', 'Trabajo de Titulacion', 'FullTime', '0,0,LB3,0,0,0,0,0,0,0,0,0,0,0,MB5,0,0,0,0,0,0,0,0,0,0,0,MiB7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,VB2,VB3,0,0,0,0,0,0,0'),
('Cristian', 'Acosta', '999588472', 'Taller Insercion Laboral', 'PartTime', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,MB9,MB10,0,0,0,0,0,0,0,0,MiB9,MiB10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
