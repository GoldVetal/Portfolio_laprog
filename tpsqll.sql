-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 04 Janvier 2023 à 11:41
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `pi_bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `table regions`
--

CREATE TABLE IF NOT EXISTS `table regions` (
  `code_region` varchar(11) NOT NULL,
  `nom_region` varchar(11) NOT NULL,
  `num_departement` int(11) NOT NULL,
  PRIMARY KEY (`code_region`),
  KEY `num_departement` (`num_departement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `table regions`
--

INSERT INTO `table regions` (`code_region`, `nom_region`, `num_departement`) VALUES
('51100', 'Reims', 44),
('59000', 'Lille', 59),
('70123', 'Paris', 75);

-- --------------------------------------------------------

--
-- Structure de la table `tables communes`
--

CREATE TABLE IF NOT EXISTS `tables communes` (
  `code_commune` int(11) NOT NULL,
  `Nom_commune` varchar(11) NOT NULL,
  `population_VF` int(11) DEFAULT NULL,
  `population_1999` int(11) NOT NULL,
  `Surface` int(11) NOT NULL,
  `longitude` int(11) NOT NULL,
  `latitude` int(11) NOT NULL,
  PRIMARY KEY (`code_commune`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tables communes`
--

INSERT INTO `tables communes` (`code_commune`, `Nom_commune`, `population_VF`, `population_1999`, `Surface`, `longitude`, `latitude`) VALUES
(51100, 'Rems', 200000, 180000, 49, 4, 49),
(59000, 'Lille', 230000, 200000, 35, 3, 51),
(70123, 'Paris', 2000000, 1900000, 105, 2, 49);

-- --------------------------------------------------------

--
-- Structure de la table `tables départements`
--

CREATE TABLE IF NOT EXISTS `tables départements` (
  `num_departement` int(11) NOT NULL,
  `nom_departement` varchar(11) NOT NULL,
  `code_commune` int(11) NOT NULL,
  PRIMARY KEY (`num_departement`),
  KEY `code_commune` (`code_commune`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tables départements`
--

INSERT INTO `tables départements` (`num_departement`, `nom_departement`, `code_commune`) VALUES
(44, 'Reims', 51100),
(59, 'Villeneuve', 59000),
(75, 'Paris', 70123);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `table regions`
--
ALTER TABLE `table regions`
  ADD CONSTRAINT `table@0020regions_ibfk_1` FOREIGN KEY (`num_departement`) REFERENCES `tables départements` (`num_departement`);

--
-- Contraintes pour la table `tables départements`
--
ALTER TABLE `tables départements`
  ADD CONSTRAINT `tables@0020d@0ppartements_ibfk_1` FOREIGN KEY (`code_commune`) REFERENCES `tables communes` (`code_commune`);
