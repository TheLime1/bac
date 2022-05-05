-- phpMyAdmin SQL Dump
-- version 2.6.1
-- http://www.phpmyadmin.net
-- 
-- Serveur: localhost
-- Généré le : Vendredi 12 Mars 2021 à 08:51
-- Version du serveur: 4.1.9
-- Version de PHP: 4.3.10
-- 
-- Base de données: `gestion_location`
-- 

-- --------------------------------------------------------

-- 
-- Structure de la table `client`
-- 

CREATE TABLE `client` (
  `cin` varchar(8) NOT NULL default '',
  `nom` varchar(10) NOT NULL default '',
  `prenom` varchar(10) NOT NULL default '',
  `adresse` varchar(10) NOT NULL default '',
  `tel` int(8) NOT NULL default '0',
  PRIMARY KEY  (`cin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `client`
-- 

INSERT INTO `client` VALUES ('05078905', 'hamdi', 'sana', 'sousse', 5656336);
INSERT INTO `client` VALUES ('07052625', 'mejri', 'fethi', 'tunis', 1122233);
INSERT INTO `client` VALUES ('08064532', 'tounsi', 'samia', 'tunis', 6767674);

-- --------------------------------------------------------

-- 
-- Structure de la table `location`
-- 

CREATE TABLE `location` (
  `numloc` int(11) NOT NULL auto_increment,
  `immat` varchar(15) NOT NULL default '',
  `cin` varchar(8) NOT NULL default '',
  `dateloc` date NOT NULL default '0000-00-00',
  `dateret` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`numloc`),
  KEY `immat` (`immat`,`cin`),
  KEY `cin` (`cin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Contenu de la table `location`
-- 

INSERT INTO `location` VALUES (1, '156tun2526', '08064532', '2020-03-12', '2020-03-25');
INSERT INTO `location` VALUES (2, '156tun2526', '07052625', '2020-05-20', '2020-05-24');
INSERT INTO `location` VALUES (3, '182tun156', '05078905', '2020-05-22', '2020-05-27');
INSERT INTO `location` VALUES (4, '199tun3569', '07052625', '2010-05-25', '2010-05-30');

-- --------------------------------------------------------

-- 
-- Structure de la table `voiture`
-- 

CREATE TABLE `voiture` (
  `immat` varchar(15) NOT NULL default '',
  `type` varchar(10) NOT NULL default '',
  `anne` year(4) NOT NULL default '0000',
  `prixloc` decimal(6,3) NOT NULL default '0.000',
  PRIMARY KEY  (`immat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `voiture`
-- 

INSERT INTO `voiture` VALUES ('156tun2526', 'Peugeot', 2003, 60.000);
INSERT INTO `voiture` VALUES ('182tun156', 'Passat', 2005, 90.000);
INSERT INTO `voiture` VALUES ('199tun3569', 'Fiat', 2000, 40.000);

-- 
-- Contraintes pour les tables exportées
-- 

-- 
-- Contraintes pour la table `location`
-- 
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`immat`) REFERENCES `voiture` (`immat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `location_ibfk_2` FOREIGN KEY (`cin`) REFERENCES `client` (`cin`) ON DELETE CASCADE ON UPDATE CASCADE;
