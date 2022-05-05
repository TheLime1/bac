-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le : Mar 11 Janvier 2022 à 09:51
-- Version du serveur: 5.5.20
-- Version de PHP: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `location`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `cin` varchar(8) NOT NULL DEFAULT '',
  `nom` varchar(10) NOT NULL DEFAULT '',
  `prenom` varchar(10) NOT NULL DEFAULT '',
  `adresse` varchar(10) NOT NULL DEFAULT '',
  `tel` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`cin`, `nom`, `prenom`, `adresse`, `tel`) VALUES
('01234567', 'Dabboussi', 'Hassen', 'Gobaa oued', 58963214),
('05078905', 'hamdi', 'sana', 'sousse', 5656336),
('07052625', 'mejri', 'fethi', 'tunis', 1122233),
('08064532', 'tounsi', 'samia', 'tunis', 6767674);

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `numloc` int(11) NOT NULL AUTO_INCREMENT,
  `immat` varchar(15) NOT NULL DEFAULT '',
  `cin` varchar(8) NOT NULL DEFAULT '',
  `dateloc` date NOT NULL DEFAULT '0000-00-00',
  `dateret` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`numloc`),
  KEY `immat` (`immat`,`cin`),
  KEY `cin` (`cin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `location`
--

INSERT INTO `location` (`numloc`, `immat`, `cin`, `dateloc`, `dateret`) VALUES
(1, '156tun2526', '08064532', '2020-03-12', '2020-03-25'),
(2, '156tun2526', '07052625', '2020-05-20', '2020-05-24'),
(3, '182tun156', '05078905', '2020-05-22', '2020-05-27'),
(4, '199tun3569', '07052625', '2010-05-25', '2010-05-30');

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE IF NOT EXISTS `voiture` (
  `immat` varchar(15) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `anne` year(4) NOT NULL DEFAULT '0000',
  `prixloc` decimal(6,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`immat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voiture`
--

INSERT INTO `voiture` (`immat`, `type`, `anne`, `prixloc`) VALUES
('156tun2526', 'Peugeot', 2003, '60.000'),
('182tun156', 'Passat', 2005, '90.000'),
('199tun3569', 'Fiat', 2000, '40.000');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`immat`) REFERENCES `voiture` (`immat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `location_ibfk_2` FOREIGN KEY (`cin`) REFERENCES `client` (`cin`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
