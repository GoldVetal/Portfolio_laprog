-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 07 Décembre 2022 à 11:33
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `agence de location`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `code_client` varchar(7) NOT NULL,
  `nom_prénom` varchar(20) NOT NULL,
  `date_ naissance` date NOT NULL,
  `profession` varchar(20) NOT NULL,
  `num_tel` varchar(10) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `code_postal` varchar(5) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`code_client`, `nom_prénom`, `date_ naissance`, `profession`, `num_tel`, `adresse`, `code_postal`, `ville`, `email`) VALUES
('22a', 'Rémy B', '1987-11-22', 'pas d''info', '0666666666', '35 allé général Leclerc', '75001', 'Paris', 'Rémy@yahoo.fr'),
('22b', 'Jean-Claude', '2000-10-20', 'Charpentier', '0612345678', 'Rue de la rue', '91562', 'Egly', 'jean-claude@gmail.co');

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id_location` varchar(20) NOT NULL,
  `duree_location` int(11) NOT NULL,
  `date_location` date NOT NULL,
  `prix_location` int(11) NOT NULL,
  `code_client` varchar(20) NOT NULL,
  `immatriculation` varchar(20) NOT NULL,
  `caution` int(11) NOT NULL,
  PRIMARY KEY (`id_location`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `locations`
--

INSERT INTO `locations` (`id_location`, `duree_location`, `date_location`, `prix_location`, `code_client`, `immatriculation`, `caution`) VALUES
('az1', 5, '2007-12-22', 250, '22a', 'FR-235-FB', 300),
('az2', 10, '2007-12-22', 150, '22b', 'FR-671-AF', 10000);

-- --------------------------------------------------------

--
-- Structure de la table `raparation`
--

CREATE TABLE IF NOT EXISTS `raparation` (
  `num_reparation` int(11) NOT NULL,
  `date_reparation` varchar(100) NOT NULL,
  `duree_reparation` varchar(100) NOT NULL,
  `cout_reparation` varchar(255) NOT NULL,
  `responsable_rep` varchar(255) NOT NULL,
  `immatriculation` varchar(255) NOT NULL,
  PRIMARY KEY (`num_reparation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `raparation`
--


-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE IF NOT EXISTS `voiture` (
  `immatriculation` varchar(20) NOT NULL,
  `marque` varchar(20) NOT NULL,
  `modele` varchar(20) NOT NULL,
  `kilometrage` int(11) NOT NULL,
  `carburant` varchar(10) NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `nbr_place` int(11) NOT NULL,
  `nbr_porte` int(11) NOT NULL,
  `prix_achat` varchar(255) DEFAULT NULL,
  `etat` varchar(20) NOT NULL,
  PRIMARY KEY (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voiture`
--

INSERT INTO `voiture` (`immatriculation`, `marque`, `modele`, `kilometrage`, `carburant`, `couleur`, `nbr_place`, `nbr_porte`, `prix_achat`, `etat`) VALUES
('FR-235-FB', 'Peugeot', '207', 215362, 'Diesel', 'rouge', 2, 3, '150', 'bon état'),
('FR-671-AF', 'mclaren', '720s', 50643, 'essence', 'noir', 2, 2, '250', 'bon état');
