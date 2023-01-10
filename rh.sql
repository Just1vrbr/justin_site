-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mar 13 Décembre 2022 à 15:44
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `rh`
--

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE IF NOT EXISTS `employe` (
  `noemp` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `sexe` char(1) NOT NULL,
  `salaire` int(11) NOT NULL,
  `type_contrat` varchar(20) NOT NULL,
  `fonction` varchar(20) NOT NULL,
  `site` varchar(20) NOT NULL,
  `date_embauche` date NOT NULL,
  `date_naissance` date NOT NULL,
  `nosrv` int(11) NOT NULL,
  PRIMARY KEY (`noemp`),
  KEY `nosrv` (`nosrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `employe`
--


-- --------------------------------------------------------

--
-- Structure de la table `intervenir`
--

CREATE TABLE IF NOT EXISTS `intervenir` (
  `num_interv` int(11) NOT NULL,
  `noproj` int(11) NOT NULL,
  `noemp` int(11) NOT NULL,
  `nbheures` int(11) NOT NULL,
  PRIMARY KEY (`num_interv`),
  KEY `noproj` (`noproj`),
  KEY `noemp` (`noemp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `intervenir`
--


-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE IF NOT EXISTS `projet` (
  `noprojet` int(11) NOT NULL,
  `libelleprojet` text NOT NULL,
  `nosrv` int(11) NOT NULL,
  PRIMARY KEY (`noprojet`),
  KEY `nosrv` (`nosrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `projet`
--


-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `nosrv` int(11) NOT NULL,
  `nomsrv` int(11) NOT NULL,
  PRIMARY KEY (`nosrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `service`
--


--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`nosrv`) REFERENCES `service` (`nosrv`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `intervenir`
--
ALTER TABLE `intervenir`
  ADD CONSTRAINT `intervenir_ibfk_2` FOREIGN KEY (`noemp`) REFERENCES `employe` (`noemp`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `intervenir_ibfk_1` FOREIGN KEY (`noproj`) REFERENCES `projet` (`noprojet`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `projet`
--
ALTER TABLE `projet`
  ADD CONSTRAINT `projet_ibfk_1` FOREIGN KEY (`nosrv`) REFERENCES `service` (`nosrv`) ON DELETE CASCADE ON UPDATE CASCADE;
