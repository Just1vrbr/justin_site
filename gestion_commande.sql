-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mar 10 Janvier 2023 à 14:26
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `gestion_commande`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `num_categorie` int(11) NOT NULL,
  `nom_categorie` int(11) NOT NULL,
  `det_reference` int(11) NOT NULL,
  `cat_remise` int(11) NOT NULL,
  PRIMARY KEY (`num_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--


-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `Client_id` int(11) NOT NULL,
  `Client_civilite` varchar(20) NOT NULL,
  `Client_nom` varchar(20) NOT NULL,
  `Client_prenom` varchar(20) NOT NULL,
  `Client_dep` int(11) NOT NULL,
  `Client_ville` varchar(20) NOT NULL,
  `num_tel` int(11) NOT NULL,
  PRIMARY KEY (`Client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--


-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE IF NOT EXISTS `commandes` (
  `Com_num` int(11) NOT NULL,
  `Com_client` int(11) NOT NULL,
  `Com_date` int(11) NOT NULL,
  `Com_montant` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `produit_ref` int(11) NOT NULL,
  PRIMARY KEY (`Com_num`),
  KEY `client_id` (`client_id`),
  KEY `produit_ref` (`produit_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commandes`
--


-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `produit_ref` int(11) NOT NULL,
  `produit_nom` varchar(20) NOT NULL,
  `produit_prix` int(11) NOT NULL,
  `produit_poids` int(11) NOT NULL,
  `produit_vues` int(11) NOT NULL,
  `produit_stock` int(11) NOT NULL,
  `produit_code` int(11) NOT NULL,
  `com_num` int(11) NOT NULL,
  `num_categorie` int(11) NOT NULL,
  PRIMARY KEY (`produit_ref`),
  KEY `com_num` (`com_num`),
  KEY `cat_num` (`num_categorie`),
  KEY `num_categorie` (`num_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produit`
--


--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_ibfk_3` FOREIGN KEY (`produit_ref`) REFERENCES `produit` (`produit_ref`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commandes_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `clients` (`Client_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_2` FOREIGN KEY (`num_categorie`) REFERENCES `categorie` (`num_categorie`) ON DELETE CASCADE ON UPDATE CASCADE;
