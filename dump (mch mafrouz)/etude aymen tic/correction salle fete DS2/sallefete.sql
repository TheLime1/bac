-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le : Dim 27 Février 2022 à 16:51
-- Version du serveur: 5.5.20
-- Version de PHP: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `sallefete`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `numclt` int(11) NOT NULL,
  `nonclt` varchar(20) NOT NULL,
  `prenclt` varchar(20) NOT NULL,
  `numtel` varchar(20) NOT NULL,
  `mail` varchar(20) NOT NULL,
  PRIMARY KEY (`numclt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`numclt`, `nonclt`, `prenclt`, `numtel`, `mail`) VALUES
(100, 'khazri', 'wahbi', '12345678', 'wahbi.khazri@gmail.c'),
(200, 'sliti', 'rania', '456789', 'rania.sliti@yahoo.fr');

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `numsalle` int(11) NOT NULL,
  `dateloc` date NOT NULL,
  `numclt` int(11) NOT NULL,
  `datedeb` time NOT NULL,
  `prixloc` decimal(5,0) NOT NULL,
  `supp` int(5) NOT NULL,
  PRIMARY KEY (`numsalle`,`dateloc`),
  KEY `numclt` (`numclt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `location`
--

INSERT INTO `location` (`numsalle`, `dateloc`, `numclt`, `datedeb`, `prixloc`, `supp`) VALUES
(1, '2022-02-28', 100, '20:00:00', '1500', 0),
(2, '2022-02-28', 100, '21:00:00', '2000', 150);

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE IF NOT EXISTS `salle` (
  `numsalle` int(11) NOT NULL AUTO_INCREMENT,
  `nomsalle` varchar(20) NOT NULL,
  `capacite` int(11) NOT NULL,
  PRIMARY KEY (`numsalle`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `salle`
--

INSERT INTO `salle` (`numsalle`, `nomsalle`, `capacite`) VALUES
(1, 'perle', 200),
(2, 'emraude', 300),
(3, 'royale', 500);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`numsalle`) REFERENCES `salle` (`numsalle`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `location_ibfk_2` FOREIGN KEY (`numclt`) REFERENCES `client` (`numclt`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
