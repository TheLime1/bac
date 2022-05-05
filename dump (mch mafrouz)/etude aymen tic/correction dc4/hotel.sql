-- phpMyAdmin SQL Dump
-- version 2.6.1
-- http://www.phpmyadmin.net
-- 
-- Serveur: localhost
-- Généré le : Vendredi 07 Mai 2021 à 10:23
-- Version du serveur: 4.1.9
-- Version de PHP: 4.3.10
-- 
-- Base de données: `bdbnina_ayoub`
-- 

-- --------------------------------------------------------

-- 
-- Structure de la table `evaluation`
-- 

CREATE TABLE `evaluation` (
  `dateeval` date NOT NULL default '0000-00-00',
  `idhotel` int(11) NOT NULL default '0',
  `noteacc` int(11) NOT NULL default '0',
  `noterest` int(11) NOT NULL default '0',
  PRIMARY KEY  (`dateeval`,`idhotel`),
  KEY `idhotel` (`idhotel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `evaluation`
-- 

INSERT INTO `evaluation` VALUES ('2020-06-12', 10, 1, 2);
INSERT INTO `evaluation` VALUES ('2020-06-15', 10, 2, 3);
INSERT INTO `evaluation` VALUES ('2020-07-05', 20, 1, 1);
INSERT INTO `evaluation` VALUES ('2020-08-06', 30, 3, 2);

-- 
-- Contraintes pour les tables exportées
-- 

-- 
-- Contraintes pour la table `evaluation`
-- 
ALTER TABLE `evaluation`
  ADD CONSTRAINT `evaluation_ibfk_1` FOREIGN KEY (`idhotel`) REFERENCES `hotel` (`Idhotel`) ON DELETE CASCADE ON UPDATE CASCADE;
