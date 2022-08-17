-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 17 août 2022 à 13:59
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `presta_doc`
--

-- --------------------------------------------------------

--
-- Structure de la table `consultation`
--

DROP TABLE IF EXISTS `consultation`;
CREATE TABLE IF NOT EXISTS `consultation` (
  `idConsultation` int(50) NOT NULL AUTO_INCREMENT,
  `matricule_med` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `num_carnet` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_consultation` date NOT NULL,
  `about_maladie` text COLLATE utf8_unicode_ci,
  `taux_medecin` int(10) NOT NULL,
  `nbr_jour_traitement` int(5) NOT NULL,
  `prix` int(15) NOT NULL,
  PRIMARY KEY (`idConsultation`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `consultation`
--

INSERT INTO `consultation` (`idConsultation`, `matricule_med`, `num_carnet`, `date_consultation`, `about_maladie`, `taux_medecin`, `nbr_jour_traitement`, `prix`) VALUES
(1, '967', '675', '2022-04-06', '', 20, 3, 777),
(2, '12387', '1777', '2022-01-11', 'Eo ary oe', 13000, 5, 65000),
(3, '12345', '1246', '2022-04-11', 'Tsy salama ianao ra olona oooo', 11000, 7, 77000),
(4, '78345', '1114', '2022-04-11', 'Eo ary oe', 11000, 18, 198000),
(5, '19345', '1777', '2022-04-13', '', 11000, 5, 55000),
(6, '78345', '652', '2022-04-16', '', 11000, 15, 165000),
(7, '12345', '12356', '2022-04-19', '', 11000, 5, 55000),
(8, '12345', '652', '2022-04-19', '', 11000, 3, 33000),
(9, '12387', '1246', '2022-04-19', '', 13000, 9, 117000),
(10, '68425', '1777', '2022-04-21', 'Maux de tete', 15000, 10, 150000),
(11, '52416', '1777', '2022-04-21', '', 35000, 5, 175000),
(12, '12387', '652', '2022-04-21', '', 13000, 9, 117000),
(13, '18246', '1246', '2022-04-22', '', 10000, 6, 60000),
(14, '18246', '1246', '2022-04-22', '', 10000, 14, 140000),
(15, '13524', '652', '2022-04-24', '', 35000, 10, 350000),
(16, '13524', '132', '2022-04-24', '', 35000, 7, 245000),
(17, '13524', '132', '2022-04-24', '', 35000, 4, 140000),
(18, '78345', '12356', '2022-04-27', '', 11000, 8, 88000),
(19, '68425', '1777', '2022-06-14', 'p', 15000, 3, 45000),
(20, '13524', '1114', '2022-06-15', 'Lafatra', 35000, 3, 105000),
(24, '78345', '132', '2022-06-17', 'Tsy misy', 55000, 5, 55000),
(25, '13524', '1235', '2022-06-17', 'dzqdzqdzq', 105000, 3, 105000),
(26, '12387', '1246', '2022-06-17', 'Tsy misy koa', 39000, 3, 39000),
(31, '18246', '1777', '2022-06-18', '', 10000, 3, 30000),
(29, '12345', '1235', '2022-06-17', '', 25000, 3, 75000),
(30, '78345', '652', '2022-06-17', '', 11000, 5, 55000),
(47, '18246', '1235', '2022-07-04', '', 10000, 10, 100000),
(34, '12345', '1114', '2022-06-18', '', 25000, 1, 25000),
(49, '18246', '1246', '2022-08-12', '', 10000, 15, 150000),
(50, '', '1235', '2022-08-12', '', 2500, 3, 25000),
(51, '10901', '1114', '2022-08-12', '', 2500, 3, 25000),
(60, '98999', '10008', '2022-08-14', '', 36250, 3, 108750),
(53, '78345', '10008', '2022-08-13', 'PLPLPLcsc', 88000, 5, 88000),
(54, '68425', '1235', '2022-08-13', 'Mimi', 75000, 2, 75000),
(59, '78345', '652', '2022-08-14', '', 11000, 12, 132000),
(61, '10901', '1114', '2022-08-17', 'RAKOTO', 5003, 2, 0),
(63, '10901', '1777', '2022-08-17', '1', 5003, 467, 230138);

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

DROP TABLE IF EXISTS `medecin`;
CREATE TABLE IF NOT EXISTS `medecin` (
  `num_matricule` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `taux_jour` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `date_enregistrement` date NOT NULL DEFAULT '2022-01-01',
  PRIMARY KEY (`num_matricule`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `medecin`
--

INSERT INTO `medecin` (`num_matricule`, `nom`, `prenom`, `adresse`, `contact`, `taux_jour`, `date_enregistrement`) VALUES
('10901', 'Manakara', 'Fianarantsoa', 'MANKARA', '', '5003', '2022-06-28'),
('10909', 'MAJUNGA', 'TANA', 'FIANRANTSOA', '', '5004', '2022-07-01');

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `num_carnet` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Contact` int(15) NOT NULL,
  PRIMARY KEY (`num_carnet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `patient`
--

INSERT INTO `patient` (`num_carnet`, `nom`, `prenom`, `adresse`, `Contact`) VALUES
('1777', 'TRAIN', 'test', 'gygygu', 10),
('1246', 'TRAIN', 'test', 'gygygu', 2),
('1114', 'FCE', 'test', 'gygygu', 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
