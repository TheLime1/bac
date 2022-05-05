-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Lun 21 Mai 2018 à 10:52
-- Version du serveur: 5.1.54
-- Version de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bd_tic_2018`
--

-- --------------------------------------------------------

--
-- Structure de la table `evaluation`
--

CREATE TABLE IF NOT EXISTS `evaluation` (
  `dateeval` date NOT NULL,
  `idhotel` int(11) NOT NULL,
  `noteaccueil` int(11) NOT NULL,
  `noterest` int(11) NOT NULL,
  `noteextra` int(11) NOT NULL,
  PRIMARY KEY (`dateeval`,`idhotel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `evaluation`
--

INSERT INTO `evaluation` (`dateeval`, `idhotel`, `noteaccueil`, `noterest`, `noteextra`) VALUES
('2017-05-22', 10, 3, 1, 0),
('2017-06-15', 20, 3, 2, 2),
('2017-06-15', 30, 2, 1, 2),
('2018-02-20', 10, 2, 1, 1),
('2018-04-13', 30, 2, 2, 7);

-- --------------------------------------------------------

--
-- Structure de la table `hotel`
--

CREATE TABLE IF NOT EXISTS `hotel` (
  `idhotel` int(11) NOT NULL,
  `nomhotel` varchar(50) NOT NULL,
  `telkotel` varchar(8) NOT NULL,
  `villehotel` varchar(30) NOT NULL,
  PRIMARY KEY (`idhotel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `hotel`
--

INSERT INTO `hotel` (`idhotel`, `nomhotel`, `telkotel`, `villehotel`) VALUES
(10, '5 Stars', '76333444', 'Tozeur'),
(20, 'Globe', '78111111', 'Tabarka'),
(30, 'The Sun', '73888888', 'Monastir');
