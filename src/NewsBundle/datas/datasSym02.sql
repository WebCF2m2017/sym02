-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 06 Octobre 2017 à 10:02
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `sym02`
--

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id`, `theTitle`, `theText`, `theDate`, `authorId`) VALUES
(1, 'Le président des Jeux de Rio mis sous les verrous pour corruption', 'Président du comité d\'organisation des Jeux de Rio, Carlos Nuzman a été arrêté jeudi au Brésil pour des soupçons de corruption liée à l\'obtention des Jeux Olympiques.\r\n\r\nUn mois après les premières perquisitions le concernant, Carlos Nuzman, président du comité d\'organisation des Jeux de Rio, a été arrêté jeudi au Brésil, soupçonné d\'avoir participé à un réseau international d\'achats de voix ayant permis à la ville de décrocher les JO-2016.', '2017-10-06 12:02:00', 1);

--
-- Contenu de la table `author`
--

INSERT INTO `author` (`id`, `firstName`, `surName`) VALUES
(1, 'Michael', 'Pitz'),
(2, 'Pierre', 'Sandron');
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
