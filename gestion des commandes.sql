-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 11 Janvier 2023 à 11:51
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `gestion des commandes`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `num_categorie` varchar(20) NOT NULL,
  `nom_categorie` varchar(20) NOT NULL,
  `det_reference` varchar(20) NOT NULL,
  `cat_remise` varchar(10) NOT NULL,
  `Client_id` varchar(20) NOT NULL,
  PRIMARY KEY (`num_categorie`),
  KEY `Client_id` (`Client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--


-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `Client_id` varchar(20) NOT NULL,
  `Client_civilite` text NOT NULL,
  `Client_nom` text NOT NULL,
  `Client_prenom` text NOT NULL,
  `Client_ville` varchar(30) NOT NULL,
  `Client_tel` varchar(10) NOT NULL,
  `date_naissance` date DEFAULT NULL,
  PRIMARY KEY (`Client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`Client_id`, `Client_civilite`, `Client_nom`, `Client_prenom`, `Client_ville`, `Client_tel`, `date_naissance`) VALUES
('10', 'Femme', 'Peralta', 'Amy', 'Saint-Chéron', '0665587999', '1978-01-01'),
('12', 'Homme', 'Flimbert', 'Quantin', 'Paris', '06655', '1962-03-14');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE IF NOT EXISTS `commandes` (
  `Com_num` varchar(20) NOT NULL,
  `Com_client` varchar(20) NOT NULL,
  `date_commande` date DEFAULT NULL,
  `Com_montant` varchar(12) NOT NULL,
  `Client_id` varchar(20) NOT NULL,
  `Produit_ref` varchar(20) NOT NULL,
  PRIMARY KEY (`Com_num`),
  KEY `Client_id` (`Client_id`),
  KEY `Produit_ref` (`Produit_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commandes`
--

INSERT INTO `commandes` (`Com_num`, `Com_client`, `date_commande`, `Com_montant`, `Client_id`, `Produit_ref`) VALUES
('1500', '10', '2023-01-02', '250', '12', 'A10'),
('1501', '26', '2000-06-04', '100', '12', 'A11'),
('555', '16', '2000-06-06', '2', '10', '320'),
('556', '17', '2023-01-01', '56', '10', '321');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `produit_ref` varchar(20) NOT NULL,
  `produit_nom` varchar(30) NOT NULL,
  `produit_prix` varchar(12) NOT NULL,
  `produit_poids` varchar(8) NOT NULL,
  `produit_vues` varchar(12) NOT NULL,
  `produit_stock` varchar(12) NOT NULL,
  `produit_code` varchar(20) NOT NULL,
  `num_categorie` varchar(20) NOT NULL,
  PRIMARY KEY (`produit_ref`),
  KEY `num_cat` (`num_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`produit_ref`, `produit_nom`, `produit_prix`, `produit_poids`, `produit_vues`, `produit_stock`, `produit_code`, `num_categorie`) VALUES
('320', 'Pâte à tartiner', '15', '400', '4000', '500', 'A41', '43'),
('321', 'Banane', '0.50', '50', '500000', '100', 'A20', '42'),
('A10', 'Dyson', '150', '1500', '300', '780', '470', '10'),
('A11', 'Tableau', '20', '400', '1400', '20', '400', '9');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD CONSTRAINT `categorie_ibfk_1` FOREIGN KEY (`num_categorie`) REFERENCES `produits` (`num_categorie`);

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`Client_id`) REFERENCES `clients` (`Client_id`);

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`produit_ref`) REFERENCES `commandes` (`Produit_ref`);
