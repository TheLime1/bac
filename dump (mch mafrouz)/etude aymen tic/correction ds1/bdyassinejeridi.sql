-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le : Jeu 09 Décembre 2021 à 16:00
-- Version du serveur: 5.5.20
-- Version de PHP: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bdyassinejeridi`
--

-- --------------------------------------------------------

--
-- Structure de la table `detailobjet`
--

CREATE TABLE IF NOT EXISTS `detailobjet` (
  `cin` varchar(8) NOT NULL,
  `numobjet` int(11) NOT NULL,
  `dateoffre` date NOT NULL,
  `prixpropo` decimal(5,3) NOT NULL,
  PRIMARY KEY (`dateoffre`),
  KEY `cin` (`cin`,`numobjet`),
  KEY `numobjet` (`numobjet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `encherisseur`
--

CREATE TABLE IF NOT EXISTS `encherisseur` (
  `cin` varchar(8) NOT NULL,
  `nomprenom` varchar(50) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL,
  PRIMARY KEY (`cin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `objet`
--

CREATE TABLE IF NOT EXISTS `objet` (
  `numobjet` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `prixinitial` int(11) NOT NULL,
  `dateajout` date NOT NULL,
  PRIMARY KEY (`numobjet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `detailobjet`
--
ALTER TABLE `detailobjet`
  ADD CONSTRAINT `detailobjet_ibfk_1` FOREIGN KEY (`cin`) REFERENCES `encherisseur` (`cin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detailobjet_ibfk_2` FOREIGN KEY (`numobjet`) REFERENCES `objet` (`numobjet`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
