-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le : Ven 15 Avril 2022 à 10:25
-- Version du serveur: 5.5.20
-- Version de PHP: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `location_22`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `ncin` varchar(8) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `tel` varchar(8) NOT NULL,
  PRIMARY KEY (`ncin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`ncin`, `nom`, `prenom`, `tel`) VALUES
('11111111', 'abidi', 'anis', '99999999'),
('11111122', 'louiz', 'radhia', '88888888');

-- --------------------------------------------------------

--
-- Structure de la table `louer`
--

CREATE TABLE IF NOT EXISTS `louer` (
  `ncin` varchar(8) NOT NULL,
  `imat` varchar(9) NOT NULL,
  `date_loc` datetime NOT NULL,
  `date_ret` datetime NOT NULL,
  PRIMARY KEY (`date_loc`),
  KEY `ncin` (`ncin`,`imat`),
  KEY `imat` (`imat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `louer`
--

INSERT INTO `louer` (`ncin`, `imat`, `date_loc`, `date_ret`) VALUES
('11111111', '250TU3998', '2021-05-01 10:06:00', '2021-05-04 02:33:05'),
('11111111', '251TU8721', '2022-01-13 14:10:39', '2012-01-01 04:44:00'),
('11111122', '254TU352', '2022-01-14 17:35:49', '2012-01-01 12:34:09');

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE IF NOT EXISTS `voiture` (
  `imat` varchar(9) NOT NULL,
  `model` varchar(20) NOT NULL,
  `prix_loc` int(11) NOT NULL,
  `disponible` enum('D','N') NOT NULL,
  PRIMARY KEY (`imat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voiture`
--

INSERT INTO `voiture` (`imat`, `model`, `prix_loc`, `disponible`) VALUES
('250TU3998', 'clio', 90, 'D'),
('251TU8721', 'q8', 300, 'N'),
('254TU352', 'rio', 100, 'N');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `louer`
--
ALTER TABLE `louer`
  ADD CONSTRAINT `louer_ibfk_2` FOREIGN KEY (`imat`) REFERENCES `voiture` (`imat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `louer_ibfk_1` FOREIGN KEY (`ncin`) REFERENCES `client` (`ncin`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
