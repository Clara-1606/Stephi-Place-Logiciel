-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 30 mai 2020 à 15:51
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bdd-uf`
--
CREATE SCHEMA IF NOT EXISTS `bdd-uf` DEFAULT CHARACTER SET latin1 ;
USE `bdd-uf` ;
-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
CREATE TABLE IF NOT EXISTS `adresse` (
  `id_adresse` int(11) NOT NULL AUTO_INCREMENT,
  `adresse` varchar(128) NOT NULL,
  `complement_adresse` varchar(128) DEFAULT NULL,
  `code_postal` char(5) NOT NULL,
  `ville` varchar(32) NOT NULL,
  PRIMARY KEY (`id_adresse`)
) ENGINE=InnoDB AUTO_INCREMENT=373 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `adresse`
--

INSERT INTO `adresse` (`id_adresse`, `adresse`, `complement_adresse`, `code_postal`, `ville`) VALUES
(1, '54, rue Royale', NULL, '75056', 'Paris'),
(2, '8489 Strong St.', NULL, '13055', 'Marseille'),
(3, '636 St Kilda Road', NULL, '69123', 'Lyon'),
(4, '67, rue des Cinquante Otages', NULL, '31555', 'Toulouse'),
(5, 'Erling Skakkes gate 78', NULL, '6088', 'Nice'),
(6, '5677 Strong St.', NULL, '44109', 'Nantes'),
(7, 'ul. Filtrowa 68', NULL, '34172', 'Montpellier'),
(8, 'Lyonerstr. 34', NULL, '67482', 'Strasbourg'),
(9, '5557 Nord Pendale', NULL, '33063', 'Bordeaux'),
(10, '897 Long Airport Avenue', NULL, '59350', 'Lille'),
(11, '86, Moralzarzal', NULL, '35238', 'Rennes'),
(12, '8 Berguvsvägen', NULL, '51454', 'Reims'),
(13, '34 Vinbæltet', NULL, '42218', 'Saint-Étienne'),
(14, '2, rue du Commerce', NULL, '83137', 'Toulon'),
(15, '4092 rue de Cercle', NULL, '76351', 'Le Havre'),
(16, '7586 Pompton St.', NULL, '38185', 'Grenoble'),
(17, '106 Linden Road Sandown', NULL, '21231', 'Dijon'),
(18, 'Brehmen St. 121', NULL, '49007', 'Angers'),
(19, '149 Spinnaker Dr.', NULL, '30189', 'Nîmes'),
(20, '184, chaussée de Tournai', NULL, '63113', 'Clermont-Ferrand'),
(21, '265, boulevard Charonne', NULL, '72181', 'Le Mans'),
(22, '4658 Baden Av.', NULL, '13001', 'Aix-en-Provence'),
(23, '25593 South Bay Ln.', NULL, '29019', 'Brest'),
(24, '2678 Kingston Rd.', NULL, '37261', 'Tours'),
(25, '25 Maiden Lane', NULL, '80021', 'Amiens'),
(26, '12, Berkeley Gardens Blvd', NULL, '87085', 'Limoges'),
(27, '1900 Oak St.', NULL, '74010', 'Annecy'),
(28, '7635 Spinnaker Dr.', NULL, '66136', 'Perpignan'),
(29, '78934 Hillside Dr.', NULL, '45234', 'Orléans'),
(30, '24, place Kléber', NULL, '57463', 'Metz'),
(31, '4097 Douglas Av.', NULL, '25056', 'Besançon'),
(32, '43 rue St. Laurent', NULL, '95018', 'Argenteuil'),
(33, '1 rue Rouen', NULL, '76540', 'Rouen'),
(34, '27 rue du Colonel Pierre Avia', NULL, '93048', 'Montreuil'),
(35, '67, avenue de l Europe', NULL, '68224', 'Mulhouse'),
(36, '23 Tsawassen Blvd.', NULL, '14118', 'Caen'),
(37, '201 Miller Street', NULL, '97415', 'Saint-Paul'),
(38, '39323 Spinnaker Dr.', NULL, '54395', 'Nancy'),
(39, 'Rte des Arsenaux 41 ', NULL, '59599', 'Tourcoing'),
(40, 'Grenzacherweg 237', NULL, '59512', 'Roubaix'),
(41, 'Drammensveien 126A', NULL, '92050', 'Nanterre'),
(42, 'Rue Joseph-Bens 532', NULL, '84007', 'Avignon'),
(43, '4575 Hillside Dr.', NULL, '94028', 'Créteil'),
(44, '7734 Strong St.', NULL, '86194', 'Poitiers'),
(45, '35 King George', NULL, '59183', 'Dunkerque'),
(46, '31 Duncan St. West End', NULL, '6029', 'Cannes'),
(47, 'Maubelstr. 90', NULL, '10387', 'Troyes'),
(48, '6047 Douglas Av.', NULL, '83069', 'Hyères'),
(49, '8 Johnstown Road', NULL, '11262', 'Narbonne'),
(50, '12, rue des Bouchers', NULL, '13004', 'Arles'),
(51, '59 rue de l\'Abbaye', NULL, '75056', 'Paris'),
(52, '1250 Pretorius Street', NULL, '13055', 'Marseille'),
(53, '8616 Spinnaker Dr.', NULL, '69123', 'Lyon'),
(54, '2304 Long Airport Avenue', NULL, '31555', 'Toulouse'),
(55, '7825 Douglas Av.', NULL, '6088', 'Nice'),
(56, 'Boulevard Tirou, 255', NULL, '44109', 'Nantes'),
(57, '25, rue Lauriston', NULL, '34172', 'Montpellier'),
(58, '101 Lambton Quay', NULL, '67482', 'Strasbourg'),
(59, '5905 Pompton St.', NULL, '33063', 'Bordeaux'),
(60, '2440 Pompton St.', NULL, '59350', 'Lille'),
(61, '7 Allen Street', NULL, '35238', 'Rennes'),
(62, '2 Pobedy Square', NULL, '51454', 'Reims'),
(63, '11328 Douglas Av.', NULL, '42218', 'Saint-Étienne'),
(64, '5, rue du Commerce', NULL, '83137', 'Toulon'),
(65, '92 rue de Cercle', NULL, '76351', 'Le Havre'),
(66, '786 Pompton St.', NULL, '38185', 'Grenoble'),
(67, '16 Linden Road Sandown', NULL, '21231', 'Dijon'),
(68, 'Brehmen St. 11', NULL, '49007', 'Angers'),
(69, '19 Spinnaker Dr.', NULL, '30189', 'Nîmes'),
(70, '14, chaussée de Tournai', NULL, '63113', 'Clermont-Ferrand'),
(71, '25, boulevard Charonne', NULL, '72181', 'Le Mans'),
(72, '468 Baden Av.', NULL, '13001', 'Aix-en-Provence'),
(73, '2593 South Bay Ln.', NULL, '29019', 'Brest'),
(74, '268 Kingston Rd.', NULL, '37261', 'Tours'),
(75, '2 Maiden Lane', NULL, '80021', 'Amiens'),
(76, '1, Berkeley Gardens Blvd', NULL, '87085', 'Limoges'),
(77, '190 Oak St.', NULL, '74010', 'Annecy'),
(78, '735 Spinnaker Dr.', NULL, '66136', 'Perpignan'),
(79, '7934 Hillside Dr.', NULL, '45234', 'Orléans'),
(80, '4, place Kléber', NULL, '57463', 'Metz'),
(81, '497 Douglas Av.', NULL, '25056', 'Besançon'),
(82, '3 rue St. Laurent', NULL, '95018', 'Argenteuil'),
(83, '14445 rue Rouen', NULL, '76540', 'Rouen'),
(84, '2 rue du Colonel Pierre Avia', NULL, '93048', 'Montreuil'),
(85, '6, avenue de l Europe', NULL, '68224', 'Mulhouse'),
(86, '3 Tsawassen Blvd.', NULL, '14118', 'Caen'),
(87, '21 Miller Street', NULL, '97415', 'Saint-Paul'),
(88, '3923 Spinnaker Dr.', NULL, '54395', 'Nancy'),
(89, 'Rte des Arsenaux 1 ', NULL, '59599', 'Tourcoing'),
(90, 'Grenzacherweg 27', NULL, '59512', 'Roubaix'),
(91, 'Drammensveien 12', NULL, '92050', 'Nanterre'),
(92, 'Rue Joseph-Bens 52', NULL, '84007', 'Avignon'),
(93, '475 Hillside Dr.', NULL, '94028', 'Créteil'),
(94, '734 Strong St.', NULL, '86194', 'Poitiers'),
(95, '3 King George', NULL, '59183', 'Dunkerque'),
(96, '3 Duncan St. West End', NULL, '6029', 'Cannes'),
(97, 'Maubelstr. 9', NULL, '10387', 'Troyes'),
(98, '604 Douglas Av.', NULL, '83069', 'Hyères'),
(99, '8575 Johnstown Road', NULL, '11262', 'Narbonne'),
(100, '1, rue des Bouchers', NULL, '13004', 'Arles'),
(101, '6, rue Royale', 'Paris', '75056', 'Paris'),
(102, '89 Strong St.', '', '13055', 'Marseille'),
(103, '66 St Kilda Road', NULL, '69123', 'Lyon'),
(104, '567, rue des Cinquante Otages', NULL, '31555', 'Toulouse'),
(105, 'Erling Skakkes gate 758', NULL, '6088', 'Nice'),
(106, '57 Strong St.', NULL, '44109', 'Nantes'),
(107, 'ul. Filtrowa 658', NULL, '34172', 'Montpellier'),
(108, 'Lyonerstr. 345', NULL, '67482', 'Strasbourg'),
(109, '57 Nord Pendale', NULL, '33063', 'Bordeaux'),
(110, '8957 Long Airport Avenue', NULL, '59350', 'Lille'),
(111, '856, Moralzarzal', NULL, '35238', 'Rennes'),
(112, '85 Berguvsvägen', NULL, '51454', 'Reims'),
(113, '354 Vinbæltet', NULL, '42218', 'Saint-Étienne'),
(114, '25, rue du Commerce', NULL, '83137', 'Toulon'),
(115, '450 rue de Cercle', NULL, '76351', 'Le Havre'),
(116, '86 Pompton St.', NULL, '38185', 'Grenoble'),
(117, '156 Linden Road Sandown', NULL, '21231', 'Dijon'),
(118, 'Brehmen St. 11', NULL, '49007', 'Angers'),
(119, '1459 Spinnaker Dr.', NULL, '30189', 'Nîmes'),
(120, '14, chaussée de Tournai', NULL, '63113', 'Clermont-Ferrand'),
(121, '25, boulevard Charonne', NULL, '72181', 'Le Mans'),
(122, '458 Baden Av.', NULL, '13001', 'Aix-en-Provence'),
(123, '2593 South Bay Ln.', NULL, '29019', 'Brest'),
(124, '278 Kingston Rd.', NULL, '37261', 'Tours'),
(125, '255 Maiden Lane', NULL, '80021', 'Amiens'),
(126, '142, Berkeley Gardens Blvd', NULL, '87085', 'Limoges'),
(127, '190 Oak St.', NULL, '74010', 'Annecy'),
(128, '765 Spinnaker Dr.', NULL, '66136', 'Perpignan'),
(129, '734 Hillside Dr.', NULL, '45234', 'Orléans'),
(130, '245, place Kléber', NULL, '57463', 'Metz'),
(131, '407 Douglas Av.', NULL, '25056', 'Besançon'),
(132, '435 rue St. Laurent', NULL, '95018', 'Argenteuil'),
(133, '5 rue Rouen', NULL, '76540', 'Rouen'),
(134, '287 rue du Colonel Pierre Avia', NULL, '93048', 'Montreuil'),
(135, '687, avenue de l Europe', NULL, '68224', 'Mulhouse'),
(136, '235 Tsawassen Blvd.', NULL, '14118', 'Caen'),
(137, '2051 Miller Street', NULL, '97415', 'Saint-Paul'),
(138, '323 Spinnaker Dr.', NULL, '54395', 'Nancy'),
(139, 'Rte des Arsenaux 451 ', NULL, '59599', 'Tourcoing'),
(140, 'Grenzacherweg 2375', NULL, '59512', 'Roubaix'),
(141, 'Drammensveien 16A', NULL, '92050', 'Nanterre'),
(142, 'Rue Joseph-Bens 52', NULL, '84007', 'Avignon'),
(143, '575 Hillside Dr.', NULL, '94028', 'Créteil'),
(144, '734 Strong St.', NULL, '86194', 'Poitiers'),
(145, '355 King George', NULL, '59183', 'Dunkerque'),
(146, '361 Duncan St. West End', NULL, '6029', 'Cannes'),
(147, 'Maubelstr. 905', NULL, '10387', 'Troyes'),
(148, '6057 Douglas Av.', NULL, '83069', 'Hyères'),
(149, '85 Johnstown Road', NULL, '11262', 'Narbonne'),
(150, '152, rue des Bouchers', NULL, '13004', 'Arles'),
(151, '529 rue de l\'Abbaye', NULL, '75056', 'Paris'),
(152, '50 Pretorius Street', NULL, '13055', 'Marseille'),
(153, '16 Spinnaker Dr.', NULL, '69123', 'Lyon'),
(154, '04 Long Airport Avenue', NULL, '31555', 'Toulouse'),
(155, '25 Douglas Av.', NULL, '6088', 'Nice'),
(156, 'Boulevard Tirou, 75', NULL, '44109', 'Nantes'),
(157, '2544, rue Lauriston', NULL, '34172', 'Montpellier'),
(158, '1 Lambton Quay', NULL, '67482', 'Strasbourg'),
(159, '59 Pompton St.', NULL, '33063', 'Bordeaux'),
(160, '24 Pompton St.', NULL, '59350', 'Lille'),
(161, '74 Allen Street', NULL, '35238', 'Rennes'),
(162, '24 Pobedy Square', NULL, '51454', 'Reims'),
(163, '11 Douglas Av.', NULL, '42218', 'Saint-Étienne'),
(164, '54, rue du Commerce', NULL, '83137', 'Toulon'),
(165, '924 rue de Cercle', NULL, '76351', 'Le Havre'),
(166, '7864 Pompton St.', NULL, '38185', 'Grenoble'),
(167, '164 Linden Road Sandown', NULL, '21231', 'Dijon'),
(168, 'Brehmen St. 114', NULL, '49007', 'Angers'),
(169, '194 Spinnaker Dr.', NULL, '30189', 'Nîmes'),
(170, '144, chaussée de Tournai', NULL, '63113', 'Clermont-Ferrand'),
(171, '254, boulevard Charonne', NULL, '72181', 'Le Mans'),
(172, '4684 Baden Av.', NULL, '13001', 'Aix-en-Provence'),
(173, '2594 South Bay Ln.', NULL, '29019', 'Brest'),
(174, '2684 Kingston Rd.', NULL, '37261', 'Tours'),
(175, '24 Maiden Lane', NULL, '80021', 'Amiens'),
(176, '14, Berkeley Gardens Blvd', NULL, '87085', 'Limoges'),
(177, '1904 Oak St.', NULL, '74010', 'Annecy'),
(178, '7354 Spinnaker Dr.', NULL, '66136', 'Perpignan'),
(179, '794 Hillside Dr.', NULL, '45234', 'Orléans'),
(180, '44, place Kléber', NULL, '57463', 'Metz'),
(181, '494 Douglas Av.', NULL, '25056', 'Besançon'),
(182, '34 rue St. Laurent', NULL, '95018', 'Argenteuil'),
(183, '745 rue Rouen', NULL, '76540', 'Rouen'),
(184, '24 rue du Colonel Pierre Avia', NULL, '93048', 'Montreuil'),
(185, '64, avenue de l Europe', NULL, '68224', 'Mulhouse'),
(186, '34 Tsawassen Blvd.', NULL, '14118', 'Caen'),
(187, '214 Miller Street', NULL, '97415', 'Saint-Paul'),
(188, '3924 Spinnaker Dr.', NULL, '54395', 'Nancy'),
(189, 'Rte des Arsenaux 144 ', NULL, '59599', 'Tourcoing'),
(190, 'Grenzacherweg 274', NULL, '59512', 'Roubaix'),
(191, 'Drammensveien 124', NULL, '92050', 'Nanterre'),
(192, 'Rue Joseph-Bens 524', NULL, '84007', 'Avignon'),
(193, '4754 Hillside Dr.', NULL, '94028', 'Créteil'),
(194, '7344 Strong St.', NULL, '86194', 'Poitiers'),
(195, '34 King George', NULL, '59183', 'Dunkerque'),
(196, '34 Duncan St. West End', NULL, '6029', 'Cannes'),
(197, 'Maubelstr. 94', NULL, '10387', 'Troyes'),
(198, '6044 Douglas Av.', NULL, '83069', 'Hyères'),
(199, '8544 Johnstown Road', NULL, '11262', 'Narbonne'),
(200, '14, rue des Bouchers', NULL, '13004', 'Arles'),
(201, '80, rue Royale', '', '75056', 'Paris'),
(202, '898 Strong St.', NULL, '13055', 'Marseille'),
(203, '668 St Kilda Road', NULL, '69123', 'Lyon'),
(204, '5678, rue des Cinquante Otages', NULL, '31555', 'Toulouse'),
(205, 'Erling Skakkes gate 888', NULL, '6088', 'Nice'),
(206, '578 Strong St.', NULL, '44109', 'Nantes'),
(207, 'ul. Filtrowa 6588', NULL, '34172', 'Montpellier'),
(208, 'Lyonerstr. 3458', NULL, '67482', 'Strasbourg'),
(209, '578 Nord Pendale', NULL, '33063', 'Bordeaux'),
(210, '8988 Long Airport Avenue', NULL, '59350', 'Lille'),
(211, '8568, Moralzarzal', NULL, '35238', 'Rennes'),
(212, '858 Berguvsvägen', NULL, '51454', 'Reims'),
(213, '3548 Vinbæltet', NULL, '42218', 'Saint-Étienne'),
(214, '258, rue du Commerce', NULL, '83137', 'Toulon'),
(215, '4508 rue de Cercle', NULL, '76351', 'Le Havre'),
(216, '868 Pompton St.', NULL, '38185', 'Grenoble'),
(217, '1568 Linden Road Sandown', NULL, '21231', 'Dijon'),
(218, 'Brehmen St. 118', NULL, '49007', 'Angers'),
(219, '14598 Spinnaker Dr.', NULL, '30189', 'Nîmes'),
(220, '148, chaussée de Tournai', NULL, '63113', 'Clermont-Ferrand'),
(221, '258, boulevard Charonne', NULL, '72181', 'Le Mans'),
(222, '4588 Baden Av.', NULL, '13001', 'Aix-en-Provence'),
(223, '2883 South Bay Ln.', NULL, '29019', 'Brest'),
(224, '2788 Kingston Rd.', NULL, '37261', 'Tours'),
(225, '2558 Maiden Lane', NULL, '80021', 'Amiens'),
(226, '1428, Berkeley Gardens Blvd', NULL, '87085', 'Limoges'),
(227, '1908 Oak St.', NULL, '74010', 'Annecy'),
(228, '7658 Spinnaker Dr.', NULL, '66136', 'Perpignan'),
(229, '7348 Hillside Dr.', NULL, '45234', 'Orléans'),
(230, '2458, place Kléber', NULL, '57463', 'Metz'),
(231, '4078 Douglas Av.', NULL, '25056', 'Besançon'),
(232, '4358 rue St. Laurent', NULL, '95018', 'Argenteuil'),
(233, '58 rue Rouen', NULL, '76540', 'Rouen'),
(234, '2878 rue du Colonel Pierre Avia', NULL, '93048', 'Montreuil'),
(235, '6878, avenue de l Europe', NULL, '68224', 'Mulhouse'),
(236, '2358 Tsawassen Blvd.', NULL, '14118', 'Caen'),
(237, '2088 Miller Street', NULL, '97415', 'Saint-Paul'),
(238, '3238 Spinnaker Dr.', NULL, '54395', 'Nancy'),
(239, 'Rte des Arsenaux 488 ', NULL, '59599', 'Tourcoing'),
(240, 'Grenzacherweg 2388', NULL, '59512', 'Roubaix'),
(241, 'Drammensveien 88A', NULL, '92050', 'Nanterre'),
(242, 'Rue Joseph-Bens 887', NULL, '84007', 'Avignon'),
(243, '5758 Hillside Dr.', NULL, '94028', 'Créteil'),
(244, '7348 Strong St.', NULL, '86194', 'Poitiers'),
(245, '3558 King George', NULL, '59183', 'Dunkerque'),
(246, '3618 Duncan St. West End', NULL, '6029', 'Cannes'),
(247, 'Maubelstr. 9058', NULL, '10387', 'Troyes'),
(248, '60578 Douglas Av.', NULL, '83069', 'Hyères'),
(249, '858 Johnstown Road', NULL, '11262', 'Narbonne'),
(250, '1528, rue des Bouchers', NULL, '13004', 'Arles'),
(251, '5298 rue de l\'Abbaye', NULL, '75056', 'Paris'),
(252, '508 Pretorius Street', NULL, '13055', 'Marseille'),
(253, '168 Spinnaker Dr.', NULL, '69123', 'Lyon'),
(254, '048 Long Airport Avenue', NULL, '31555', 'Toulouse'),
(255, '258 Douglas Av.', NULL, '6088', 'Nice'),
(256, 'Boulevard Tirou, 758', NULL, '44109', 'Nantes'),
(257, '25448, rue Lauriston', NULL, '34172', 'Montpellier'),
(258, '1878 Lambton Quay', NULL, '67482', 'Strasbourg'),
(259, '598 Pompton St.', NULL, '33063', 'Bordeaux'),
(260, '248 Pompton St.', NULL, '59350', 'Lille'),
(261, '748 Allen Street', NULL, '35238', 'Rennes'),
(262, '248 Pobedy Square', NULL, '51454', 'Reims'),
(263, '118 Douglas Av.', NULL, '42218', 'Saint-Étienne'),
(264, '548, rue du Commerce', NULL, '83137', 'Toulon'),
(265, '9248 rue de Cercle', NULL, '76351', 'Le Havre'),
(266, '7887 Pompton St.', NULL, '38185', 'Grenoble'),
(267, '1648 Linden Road Sandown', NULL, '21231', 'Dijon'),
(268, 'Brehmen St. 114', NULL, '49887', 'Angers'),
(269, '1948 Spinnaker Dr.', NULL, '30189', 'Nîmes'),
(270, '1448, chaussée de Tournai', NULL, '63113', 'Clermont-Ferrand'),
(271, '2548, boulevard Charonne', NULL, '72181', 'Le Mans'),
(272, '4688 Baden Av.', NULL, '13001', 'Aix-en-Provence'),
(273, '2578 South Bay Ln.', NULL, '29019', 'Brest'),
(274, '2862 Kingston Rd.', NULL, '37261', 'Tours'),
(275, '2488 Maiden Lane', NULL, '80021', 'Amiens'),
(276, '148, Berkeley Gardens Blvd', NULL, '87085', 'Limoges'),
(277, '19048 Oak St.', NULL, '74010', 'Annecy'),
(278, '73548 Spinnaker Dr.', NULL, '66136', 'Perpignan'),
(279, '7948 Hillside Dr.', NULL, '45234', 'Orléans'),
(280, '448, place Kléber', NULL, '57463', 'Metz'),
(281, '4948 Douglas Av.', NULL, '25056', 'Besançon'),
(282, '348 rue St. Laurent', NULL, '95018', 'Argenteuil'),
(283, '785 rue Rouen', NULL, '76540', 'Rouen'),
(284, '248 rue du Colonel Pierre Avia', NULL, '93048', 'Montreuil'),
(285, '648, avenue de l Europe', NULL, '68224', 'Mulhouse'),
(286, '348 Tsawassen Blvd.', NULL, '14118', 'Caen'),
(287, '2148 Miller Street', NULL, '97415', 'Saint-Paul'),
(288, '398 Spinnaker Dr.', NULL, '54395', 'Nancy'),
(289, 'Rte des Arsenaux 1856 ', NULL, '59599', 'Tourcoing'),
(290, 'Grenzacherweg 2748', NULL, '59512', 'Roubaix'),
(291, 'Drammensveien 1248', NULL, '92050', 'Nanterre'),
(292, 'Rue Joseph-Bens 5248', NULL, '84007', 'Avignon'),
(293, '4757 Hillside Dr.', NULL, '94028', 'Créteil'),
(294, '73498 Strong St.', NULL, '86194', 'Poitiers'),
(295, '348 King George', NULL, '59183', 'Dunkerque'),
(296, '348 Duncan St. West End', NULL, '6029', 'Cannes'),
(297, 'Maubelstr. 948', NULL, '10387', 'Troyes'),
(298, '6048 Douglas Av.', NULL, '83069', 'Hyères'),
(299, '8547 Johnstown Road', NULL, '11262', 'Narbonne'),
(300, '148, rue des Bouchers', NULL, '13004', 'Arles'),
(301, '5466, rue Royale', NULL, '75056', 'Paris'),
(302, '8966 Strong St.', NULL, '13055', 'Marseille'),
(303, '6366 St Kilda Road', NULL, '69123', 'Lyon'),
(304, '667, rue des Cinquante Otages', NULL, '31555', 'Toulouse'),
(305, 'Erling Skakkes gate 768', NULL, '6088', 'Nice'),
(306, '566 Strong St.', NULL, '44109', 'Nantes'),
(307, 'ul. Filtrowa 6866', NULL, '34172', 'Montpellier'),
(308, 'Lyonerstr. 364', NULL, '67482', 'Strasbourg'),
(309, '5667 Nord Pendale', NULL, '33063', 'Bordeaux'),
(310, '866 Long Airport Avenue', NULL, '59350', 'Lille'),
(311, '66, Moralzarzal', NULL, '35238', 'Rennes'),
(312, '866 Berguvsvägen', NULL, '51454', 'Reims'),
(313, '664 Vinbæltet', NULL, '42218', 'Saint-Étienne'),
(314, '266, rue du Commerce', NULL, '83137', 'Toulon'),
(315, '4662 rue de Cercle', NULL, '76351', 'Le Havre'),
(316, '686 Pompton St.', NULL, '38185', 'Grenoble'),
(317, '1666 Linden Road Sandown', NULL, '21231', 'Dijon'),
(318, 'Brehmen St. 12661', NULL, '49007', 'Angers'),
(319, '1496 Spinnaker Dr.', NULL, '30189', 'Nîmes'),
(320, '1866, chaussée de Tournai', NULL, '63113', 'Clermont-Ferrand'),
(321, '2656, boulevard Charonne', NULL, '72181', 'Le Mans'),
(322, '468 Baden Av.', NULL, '13001', 'Aix-en-Provence'),
(323, '2563 South Bay Ln.', NULL, '29019', 'Brest'),
(324, '266 Kingston Rd.', NULL, '37261', 'Tours'),
(325, '2566 Maiden Lane', NULL, '80021', 'Amiens'),
(326, '126, Berkeley Gardens Blvd', NULL, '87085', 'Limoges'),
(327, '1960 Oak St.', NULL, '74010', 'Annecy'),
(328, '7665 Spinnaker Dr.', NULL, '66136', 'Perpignan'),
(329, '6 Hillside Dr.', NULL, '45234', 'Orléans'),
(330, '246, place Kléber', NULL, '57463', 'Metz'),
(331, '6 Douglas Av.', NULL, '25056', 'Besançon'),
(332, '4366 rue St. Laurent', NULL, '95018', 'Argenteuil'),
(333, '166 rue Rouen', NULL, '76540', 'Rouen'),
(334, '2766 rue du Colonel Pierre Avia', NULL, '93048', 'Montreuil'),
(335, '6666, avenue de l Europe', NULL, '68224', 'Mulhouse'),
(336, '236 Tsawassen Blvd.', NULL, '14118', 'Caen'),
(337, '2016 Miller Street', NULL, '97415', 'Saint-Paul'),
(338, '6 Spinnaker Dr.', NULL, '54395', 'Nancy'),
(339, 'Rte des Arsenaux 416 ', NULL, '59599', 'Tourcoing'),
(340, 'Grenzacherweg 266', NULL, '59512', 'Roubaix'),
(341, 'Drammensveien 676A', NULL, '92050', 'Nanterre'),
(342, 'Rue Joseph-Bens 662', NULL, '84007', 'Avignon'),
(343, '4665 Hillside Dr.', NULL, '94028', 'Créteil'),
(344, '764 Strong St.', NULL, '86194', 'Poitiers'),
(345, '3665 King George', NULL, '59183', 'Dunkerque'),
(346, '316 Duncan St. West End', NULL, '6029', 'Cannes'),
(347, 'Maubelstr. 906', NULL, '10387', 'Troyes'),
(348, '6877 Douglas Av.', NULL, '83069', 'Hyères'),
(349, '86 Johnstown Road', NULL, '11262', 'Narbonne'),
(350, '126, rue des Bouchers', NULL, '13004', 'Arles'),
(363, '2', '1', '11', '11'),
(365, '3', '33', '11', '1'),
(366, '1', '1', '1', '1'),
(367, '1', '', '1', '13320'),
(368, '45 lot', '', 'bouc', '13320'),
(369, '45 lot', '', 'bouc', '13320'),
(370, '45 lot', '', 'bouc', '13320'),
(371, '45 lot', '', 'Bouc', '13320'),
(372, '45 lot', '', 'Bouc', '13320');

-- --------------------------------------------------------

--
-- Structure de la table `agence`
--

DROP TABLE IF EXISTS `agence`;
CREATE TABLE IF NOT EXISTS `agence` (
  `id_agence` int(11) NOT NULL AUTO_INCREMENT,
  `nom_agence` varchar(32) NOT NULL,
  `frais_agence` float NOT NULL,
  `id_adresse` int(11) NOT NULL,
  PRIMARY KEY (`id_agence`),
  KEY `fk_agence_adresse1_idx` (`id_adresse`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `agence`
--

INSERT INTO `agence` (`id_agence`, `nom_agence`, `frais_agence`, `id_adresse`) VALUES
(1, 'Paris Agence', 1.5, 151),
(2, 'Marseille Agence', 1.3, 152),
(3, 'Lyon Agence', 1.4, 153),
(4, 'Toulouse Agence', 1.5, 154),
(5, 'Nice Agence', 1.6, 155),
(6, 'Nantes Agence', 1.7, 156),
(7, 'Montpellier Agence ', 1.8, 157),
(8, 'Strasbourg Agence', 1.5, 158),
(9, 'Bordeaux Agence', 1.9, 159),
(10, 'Lille Agence', 2.2, 160),
(11, 'Rennes Agence', 2.2, 161),
(12, 'Reims Agence', 3.2, 162),
(13, 'Saint-Étienne Agence', 4.2, 163),
(14, 'Toulon Agence', 5.2, 164),
(15, 'Le Havre Agence', 6.2, 165),
(16, 'Grenoble Agence', 7.2, 166),
(17, 'Dijon Agence', 6.2, 167),
(18, 'Angers Agence', 6.1, 168),
(19, 'Nîmes Agence', 2.2, 169),
(20, 'Clermont-Ferrand Agence', 2.3, 170),
(21, 'Le Mans Agence', 3.2, 171),
(22, 'Aix-en-Provence Agence', 3.2, 172),
(23, 'Brest Agence', 3.2, 173),
(24, 'Tours Agence', 3.3, 174),
(25, 'Amiens Agence', 1.2, 175),
(26, 'Limoges Agence', 1.5, 176),
(27, 'Annecy Agence', 1.6, 177),
(28, 'Perpignan Agence', 1.1, 178),
(29, 'Orléans Agence', 1, 179),
(30, 'Metz Agence', 1.1, 180),
(31, 'Besançon Agence', 1.6, 181),
(32, 'Argenteuil Agence', 1.27, 182),
(33, 'Rouen Agence', 1.22, 183),
(34, 'Montreuil Agence', 1.9, 184),
(35, 'Mulhouse Agence', 2.3, 185),
(36, 'Caen Agence', 3.6, 186),
(37, 'Saint-Paul Agence', 3.8, 187),
(38, 'Nancy Agence', 1.8, 188),
(39, 'Tourcoing Agence', 1.7, 189),
(40, 'Roubaix Agence', 1.7, 190),
(41, 'Nanterre Agence', 1.6, 191),
(42, 'Avignon Agence', 1.8, 192),
(43, 'Créteil Agence', 1.25, 193),
(44, 'Poitiers Agence', 5.2, 194),
(45, 'Dunkerque Agence', 5.5, 195),
(46, 'Cannes Agence', 3.7, 196),
(47, 'Troyes Agence', 8.2, 197),
(48, 'Hyères Agence', 4.4, 198),
(49, 'Narbonne Agence', 5.6, 199),
(50, 'Arles Agence', 1.2, 200);

-- --------------------------------------------------------

--
-- Structure de la table `agent_immobilier`
--

DROP TABLE IF EXISTS `agent_immobilier`;
CREATE TABLE IF NOT EXISTS `agent_immobilier` (
  `id_agent` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(16) NOT NULL,
  `nom` varchar(16) NOT NULL,
  `mail` varchar(64) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `date_naissance` date NOT NULL,
  `numero_telephone` varchar(16) NOT NULL,
  `est_admin` tinyint(4) NOT NULL,
  `id_adresse` int(11) NOT NULL,
  `id_agence` int(11) NOT NULL,
  PRIMARY KEY (`id_agent`),
  UNIQUE KEY `mail_UNIQUE` (`mail`),
  KEY `fk_agent_immobilier_adresse1_idx` (`id_adresse`),
  KEY `fk_agent_immobilier_agence1_idx` (`id_agence`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `agent_immobilier`
--

INSERT INTO `agent_immobilier` (`id_agent`, `prenom`, `nom`, `mail`, `mot_de_passe`, `date_naissance`, `numero_telephone`, `est_admin`, `id_adresse`, `id_agence`) VALUES
(1, 'Oliver', 'Ianson', 'Oliver_Ianson8973@hourpy.biz', '27090706d42a2525b9a07222f68dd3d4', '1997-01-10', '0620305040', 1, 101, 1),
(2, 'Chad', 'Goodman', 'Chad_Goodman7035@extex.org', 'e03653dedd6f4e142f4aca131995964f', '1994-10-25', '0625426252', 1, 102, 2),
(3, 'Tony', 'Shea', 'Tony_Shea8173@yahoo.com', 'eee7ac208064d408e84ab5e26d24b278', '1980-08-05', '0612324565', 1, 103, 3),
(4, 'Oliver', 'Crawford', 'Oliver_Crawford433@nimogy.biz', '27090706d42a2525b9a07222f68dd3d4', '1986-07-14', '06325285645', 1, 104, 4),
(5, 'Boris', 'Ainsworth', 'Boris_Ainsworth5928@dionrab.com', '2091c76f726f21a61b6d2f8b885cc39d', '1992-02-18', '063285964052', 1, 105, 5),
(6, 'Jayden', 'Potts', 'Jayden_Potts356@nickia.com', '9d8c6fc9a53e9672d9c798e237f5386f', '1986-11-10', '0623820152', 0, 106, 6),
(7, 'Sabrina', 'Stone', 'Sabrina_Stone6419@corti.com', '0243676cad978f78d4f504e8dd07192f', '1993-05-20', '062342758696', 0, 107, 7),
(8, 'Mara', 'Harris', 'Mara_Harris2352@bungar.biz', 'ce0cd4d8c83ab6011b74c8e5563ce2a6', '1991-05-16', '063696852512', 0, 108, 8),
(9, 'Owen', 'Welsch', 'Owen_Welsch8524@supunk.biz', 'af0bc706fca5c47970afe73c144fe6fd', '1990-08-19', '0652638519', 0, 109, 9),
(10, 'Bob', 'Rainford', 'Bob_Rainford1433@gembat.biz', '2fc1c0beb992cd7096975cfebf9d5c3b', '1994-10-30', '0623427385', 0, 110, 10),
(11, 'Alexander', 'Shields', 'Alexander_Shields1884@nimogy.biz', 'b7a71d8799cf6dd75b711a7f52de6675', '1977-04-11', '0672428292', 0, 111, 11),
(12, 'Sloane', 'Greenwood', 'Sloane_Greenwood3918@qater.org', '06f3c7d4b6f668f837f0b9ef27b25358', '1980-05-10', '0652820055', 0, 112, 12),
(13, 'Percy', 'Grady', 'Percy_Grady8797@twipet.com', '8fa32784f5c734d8c31bbbda068c349e', '1974-06-18', '0652020050', 0, 113, 13),
(14, 'Lexi', 'Porter', 'Lexi_Porter7296@tonsy.org', '3fdae469073e50e17048175c8e63de7d', '1994-10-16', '0685964332', 0, 114, 14),
(15, 'Rebecca', 'Rodgers', 'Rebecca_Rodgers5550@elnee.tech', '65ed72f435ddd53cb3efb0b018ce2af4', '1992-03-02', '0642528210', 0, 115, 15),
(16, 'Henry', 'Gray', 'Henry_Gray4747@bauros.biz', '179909b745f81f03f177a3079e0ce5e3', '1991-05-01', '0642528503', 0, 116, 16),
(17, 'Chelsea', 'Khan', 'Chelsea_Khan1875@infotech44.tech', '8056df0882080a7c1d36f190f231f919', '1998-02-12', '0632528550', 0, 117, 17),
(18, 'Doug', 'Kennedy', 'Doug_Kennedy7802@yahoo.com', '83930fd731a92d37c5dbb39a9c5e6183', '2000-01-08', '0642528270', 0, 118, 18),
(19, 'Tyson', 'Bailey', 'Tyson_Bailey234@ubusive.com', '51cefa59a3ed86f36af4f8c2c6e7767e', '1991-11-05', '0652639373', 0, 119, 19),
(20, 'Marvin', 'Oswald', 'Marvin_Oswald7376@deavo.com', '7db16a4ce881aecec2bfeb3e0c741888', '1987-08-16', '0603025285', 0, 120, 20),
(21, 'Greta', 'Pearce', 'Greta_Pearce4753@sheye.org', 'ba1ad4d61acababec37a805ad1546df6', '1978-11-07', '0652825080', 0, 121, 21),
(22, 'Lucas', 'Jarvis', 'Lucas_Jarvis8377@famism.biz', 'c3d41bf5efb468a1bcce53bd53726c85', '1991-03-16', '0652427001', 0, 122, 22),
(23, 'Elisabeth', 'Emmett', 'Elisabeth_Emmett1854@vetan.org', '15a76a7cee8a94c612e8f8d6425a0e44', '1980-05-06', '0652728506', 0, 123, 23),
(24, 'Sebastian', 'Lambert', 'Sebastian_Lambert4752@zorer.org', 'b69eb4ca4b4ae19e8e4f2e3129da7fd3', '1992-01-10', '0652630809', 0, 124, 24),
(25, 'Rosemary', 'Morley', 'Rosemary_Morley2841@bungar.biz', '4a60d61eabbcdea8a2cbea26dec047e6', '1989-11-18', '0652820708', 0, 125, 25),
(26, 'Marilyn', 'Roberts', 'Marilyn_Roberts4039@supunk.biz', '9bb8875f9d6491cc32951e5bf355db7e', '1970-05-06', '0652823080', 0, 126, 26),
(27, 'Penny', 'Leigh', 'Penny_Leigh6001@ubusive.com', '8907a1b7e0204929e0beea8668eac706', '1984-05-14', '0652420102', 0, 127, 27),
(28, 'Boris', 'Dunbar', 'Boris_Dunbar1309@bauros.biz', '2091c76f726f21a61b6d2f8b885cc39d', '1992-12-01', '0652070809', 0, 128, 28),
(29, 'Julian', 'Holt', 'Julian_Holt6862@cispeto.com', '60659cfda992013e610f285c46692d28', '1976-06-26', '0620200455', 0, 129, 29),
(30, 'Vera', 'Kelly', 'Vera_Kelly5807@womeona.net', '74fdd90e54461399c878caeb90b3d2e2', '1988-08-08', '0652728545', 0, 130, 30),
(31, 'Irene', 'Upsdell', 'Irene_Upsdell863@bulaffy.com', '79ae3e10d1ff66922e58d98656315b9e', '1992-08-19', '0601035234', 0, 131, 31),
(32, 'Callie', 'Farrow', 'Callie_Farrow727@gmail.com', '8efb28f2a09fd146af662d8a49edce73', '1971-02-05', '0600527908', 0, 132, 32),
(33, 'Britney', 'Neville', 'Britney_Neville426@nanoff.biz', '77af74f3d3e435c0ea418456f820ccfc', '1982-11-01', '06110585', 0, 133, 33),
(34, 'Doris', 'Haines', 'Doris_Haines1566@gompie.com', '5de188c6cd8d626ad6d16d127153883e', '1995-01-30', '0678888563', 0, 134, 34),
(35, 'Lara', 'Fox', 'Lara_Fox418@guentu.biz', 'da4fd8a50d64f47b1bac8b9a28e787cc', '1980-02-09', '0612350155', 0, 135, 35),
(36, 'Cedrick', 'Snell', 'Cedrick_Snell8368@cispeto.com', '9b439e354b546063e82c1e763d010e5e', '1983-09-10', '0633050855', 0, 136, 36),
(37, 'Barry', 'Page ', 'Barry_Page 34@irrepsy.com', '36661b3adc7f4c716e442fed57c12bfb', '1986-09-30', '0652724511', 0, 137, 37),
(38, 'Logan', 'Pierce', 'Logan_Pierce1847@typill.biz', '2e1d1e3fe8265865efbc8cbb4baaf4e8', '1988-04-04', '0632550401', 0, 138, 38),
(39, 'Nate', 'Stuart', 'Nate_Stuart5466@mafthy.com', '8878e7050143a0fe4020498043fcc0da', '1983-11-14', '0688055506', 0, 139, 39),
(40, 'Joyce', 'Plumb', 'Joyce_Plumb8051@typill.biz', '7d54d9da656fa80e4e5a5230e0a2a549', '1973-06-15', '0612332505', 0, 140, 40),
(41, 'Lana', 'Davies', 'Lana_Davies2607@mafthy.com', '07eadbea3700b64f60e855ef80a6605b', '1990-03-26', '0652000408', 0, 141, 41),
(42, 'Tara', 'Andersson', 'Tara_Andersson8197@joiniaa.com', '205e8b242d2cd224d007b0052fc991bd', '1988-11-23', '0652993638', 0, 142, 42),
(43, 'Abdul', 'Dyson', 'Abdul_Dyson469@muall.tech', 'e80a0702d314d055d05af996fe60cff9', '1982-10-20', '0625050855', 0, 143, 43),
(44, 'Gemma', 'Mcnally', 'Gemma_Mcnally1289@iatim.tech', 'fbcb0a66cd168bc6efda74ba7c6fa704', '1987-08-04', '0675826301', 0, 144, 44),
(45, 'Tyler', 'Whatson', 'Tyler_Whatson3521@nimogy.biz', '24dbc2b917472b089a5052b23f11f30f', '1989-05-15', '0655232201', 0, 154, 45),
(46, 'Makena', 'Rycroft', 'Makena_Rycroft8240@nimogy.biz', '909c2605fca7a0c8d0f1d3a1e4eb37d8', '1999-07-05', '0652866302', 0, 146, 46),
(47, 'Michael', 'Niles', 'Michael_Niles3347@liret.org', '3e06fa3927cbdf4e9d93ba4541acce86', '1985-02-07', '0612324252', 0, 147, 47),
(48, 'Bob', 'Osman', 'Bob_Osman773@zorer.org', '2fc1c0beb992cd7096975cfebf9d5c3b', '1993-06-28', '0605062280', 0, 148, 48),
(49, 'Matt', 'Ulyatt', 'Matt_Ulyatt3328@acrit.org', '7c1f90bd9bdc70cc059640a7a6209389', '1995-01-24', '0612205570', 0, 149, 49),
(50, 'Roger', 'Varley', 'Roger_Varley5438@mafthy.com', 'efc5c58b9a85926a31587140cbeb0220', '1994-08-21', '0612002003', 0, 150, 50),
(54, 'Clara', 'Vesval', 'clara.vesval@ynov.com', '0afca49306b28c1650a1d4130a6a0ce1', '2001-06-16', '0681411787', 1, 372, 2);

-- --------------------------------------------------------

--
-- Structure de la table `biens`
--

DROP TABLE IF EXISTS `biens`;
CREATE TABLE IF NOT EXISTS `biens` (
  `id_bien` int(11) NOT NULL AUTO_INCREMENT,
  `superficie` decimal(6,2) NOT NULL,
  `prix_min` decimal(10,2) NOT NULL,
  `prix_max` decimal(10,2) NOT NULL,
  `prix_vente` decimal(10,2) NOT NULL,
  `nb_piece` int(11) NOT NULL,
  `nb_chambre` varchar(45) NOT NULL,
  `date_ajout` date NOT NULL,
  `descriptif` longtext NOT NULL,
  `en_ligne` tinyint(1) NOT NULL,
  `etage` int(11) DEFAULT NULL,
  `id_statut` int(11) NOT NULL,
  `id_type_bien` int(11) NOT NULL,
  `id_adresse` int(11) NOT NULL,
  `id_agence` int(11) NOT NULL,
  `id_membre` int(11) NOT NULL,
  PRIMARY KEY (`id_bien`),
  KEY `fk_biens_statut1_idx` (`id_statut`),
  KEY `fk_biens_type_bien1_idx` (`id_type_bien`),
  KEY `fk_biens_adresse1_idx` (`id_adresse`),
  KEY `fk_biens_agence1_idx` (`id_agence`),
  KEY `fk_biens_membre1_idx` (`id_membre`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `biens`
--

INSERT INTO `biens` (`id_bien`, `superficie`, `prix_min`, `prix_max`, `prix_vente`, `nb_piece`, `nb_chambre`, `date_ajout`, `descriptif`, `en_ligne`, `etage`, `id_statut`, `id_type_bien`, `id_adresse`, `id_agence`, `id_membre`) VALUES
(1, '25.00', '70000.00', '100000.00', '88000.00', 1, '0', '2020-03-28', 'Petit appartement confortable idéal pour étudiant.', 1, 10, 1, 2, 201, 1, 151),
(3, '30.00', '90000.00', '120000.00', '105000.00', 1, '0', '2020-01-27', 'Appartement avec une vue superbe, avec un lit supperposé.', 1, 5, 1, 2, 203, 3, 153),
(4, '23.00', '90000.00', '120000.00', '105000.00', 1, '0', '2020-02-17', 'Petit appartement avec chauffage électrique.', 1, 9, 1, 2, 204, 4, 154),
(5, '36.00', '95000.00', '120000.00', '108000.00', 1, '0', '2020-02-19', '1 pièce de 36m2 idéal pour un couple.', 1, 6, 1, 2, 205, 5, 155),
(6, '33.00', '95000.00', '120000.00', '110000.00', 1, '0', '2020-02-21', '33m2 avec une bonne connexion à internet.', 1, 0, 1, 2, 206, 6, 156),
(7, '34.00', '100000.00', '150000.00', '125000.00', 1, '0', '2020-04-05', 'Vente appartement 1 pièce avec un coin cuisine.', 1, 1, 1, 2, 207, 7, 157),
(8, '30.00', '125000.00', '200000.00', '160000.00', 1, '0', '2020-01-30', 'Appartement 1 pièce meublé avec la fibre.', 1, 0, 1, 2, 208, 8, 158),
(9, '26.00', '150000.00', '200000.00', '180000.00', 1, '0', '2020-04-03', 'Petit appartement coquet sans vis à vis', 1, 6, 1, 2, 209, 9, 159),
(10, '35.00', '150000.00', '220000.00', '190000.00', 1, '0', '2020-02-15', 'Appartement 1 pièece à vendre de 35m2.', 1, 7, 1, 2, 210, 10, 160),
(11, '50.00', '160000.00', '220000.00', '190000.00', 2, '1', '2020-03-17', 'Appartement 2 pièces en copropriété avec une piscine.', 1, 6, 1, 2, 211, 11, 161),
(12, '38.00', '180000.00', '225000.00', '205000.00', 2, '1', '2020-02-03', 'A vendre appartement 2 pièces avec bonne connexion internet.', 1, 0, 1, 2, 212, 12, 162),
(13, '38.00', '190000.00', '230000.00', '210000.00', 2, '1', '2020-02-18', 'Vente appartement, 38m2 pour 210000 euro (hors frais d agence, 1, 151).', 1, 3, 1, 2, 213, 13, 163),
(14, '55.00', '200000.00', '240000.00', '220000.00', 2, '1', '2020-01-12', 'Appartement avec 1 chambre et un coin cuisine tout équipé', 1, 0, 1, 2, 214, 14, 164),
(15, '50.00', '200000.00', '250000.00', '224000.00', 2, '1', '2020-04-24', 'T2 neuf à vendre pas cher.', 1, 3, 1, 2, 215, 15, 165),
(16, '51.00', '200000.00', '250000.00', '230000.00', 2, '1', '2020-02-12', 'A vendre appartement au rez-de-chaussée', 1, 0, 1, 2, 216, 16, 166),
(17, '36.00', '200000.00', '250000.00', '230000.00', 2, '1', '2020-03-16', 'T2 au neuvième étage avec vue magnifique.', 1, 9, 1, 2, 217, 17, 167),
(18, '45.00', '210000.00', '260000.00', '245000.00', 2, '1', '2020-03-22', 'A vendre 2 pièces appartement neuf.', 1, 9, 1, 2, 218, 18, 168),
(19, '50.00', '215000.00', '285000.00', '250000.00', 2, '1', '2020-04-02', 'Vente appartement à rénover.', 1, 7, 1, 2, 219, 19, 169),
(20, '45.00', '216000.00', '290000.00', '250000.00', 2, '1', '2020-02-26', 'Descriptif', 1, 3, 1, 2, 220, 20, 170),
(21, '55.00', '220000.00', '300000.00', '250000.00', 2, '1', '2020-03-04', 'Descriptif', 1, 1, 1, 2, 221, 21, 171),
(22, '36.00', '220000.00', '300000.00', '250000.00', 2, '1', '2020-03-19', 'A vendre appartement confortable pour un premier achat de couple.', 1, 4, 1, 2, 222, 22, 172),
(23, '36.00', '224000.00', '300000.00', '260000.00', 2, '1', '2020-03-18', 'Bel appartement bien déservi par les bus. Tout confort avec deux salle de bain.', 1, 0, 1, 2, 223, 23, 173),
(24, '38.00', '225000.00', '300000.00', '265000.00', 2, '1', '2020-03-05', 'Appartement à vendre orientation plein sud', 1, 5, 1, 2, 224, 24, 174),
(25, '52.00', '240000.00', '300000.00', '268000.00', 2, '1', '2020-03-08', 'Appartement 2 pièces meublés à vendre.', 1, 4, 1, 2, 225, 25, 175),
(26, '40.00', '242000.00', '305000.00', '270000.00', 2, '1', '2020-01-17', 'Appartement à vendre avec douche à l italienne.', 1, 3, 2, 2, 226, 26, 176),
(27, '65.00', '250000.00', '310000.00', '275000.00', 3, '2', '2020-01-19', 'Descriptif', 1, 7, 2, 2, 227, 27, 177),
(28, '60.00', '255000.00', '330000.00', '280000.00', 3, '2', '2020-02-20', 'A ne pas rater, superbe appartement.', 1, 9, 2, 2, 228, 28, 178),
(29, '60.00', '260000.00', '340000.00', '280000.00', 3, '2', '2020-04-24', 'A vendre 3 pièces avec tout le confort nécessaire.', 1, 3, 2, 2, 229, 29, 179),
(30, '60.00', '265000.00', '350000.00', '290000.00', 3, '2', '2020-01-27', 'Pas de description', 1, 2, 2, 2, 230, 30, 180),
(31, '60.00', '270000.00', '355000.00', '300000.00', 3, '2', '2020-02-14', 'Vente appartement tout équipé avec beaucoup de rangement.', 1, 1, 2, 2, 231, 31, 181),
(32, '60.00', '275000.00', '340000.00', '305000.00', 3, '2', '2020-02-20', 'Appartement avec un grand salon.', 1, 2, 2, 2, 232, 32, 182),
(33, '60.00', '280000.00', '360000.00', '305000.00', 3, '2', '2020-01-23', 'Superbe T3, offre à ne pas manquer', 1, 0, 2, 2, 233, 33, 183),
(34, '65.00', '320000.00', '400000.00', '360000.00', 3, '2', '2020-01-28', 'Appartement neuf à vendre', 1, 2, 2, 2, 234, 34, 184),
(35, '55.00', '340000.00', '440000.00', '400000.00', 3, '2', '2020-04-15', 'Appartement à vendre avec salle de bain tout équipée.', 1, 7, 2, 2, 235, 35, 185),
(36, '80.00', '380000.00', '450000.00', '420000.00', 3, '2', '2020-02-29', 'Vente appartement en résidence avec piscine pour 420000 euro', 1, 8, 2, 2, 236, 36, 186),
(37, '90.00', '410000.00', '490000.00', '450000.00', 3, '2', '2020-03-23', 'T3 à vendre', 1, 5, 2, 2, 237, 37, 187),
(38, '90.00', '420000.00', '500000.00', '460000.00', 3, '2', '2020-01-07', 'A vendre appartement dans une résidence sécurisée avec caméra.', 1, 5, 2, 2, 238, 38, 188),
(39, '90.00', '450000.00', '520000.00', '480000.00', 3, '2', '2020-02-16', 'Magnifique appartement en résidence avec piscine', 1, 7, 2, 2, 239, 39, 189),
(40, '90.00', '500000.00', '580000.00', '540000.00', 3, '2', '2020-01-17', 'Superbe appartement de 90m2 à vendre.', 1, 6, 2, 2, 240, 40, 190),
(41, '95.00', '500000.00', '600000.00', '550000.00', 3, '2', '2020-02-24', 'Grand appartement de 95m2 idéal pour un couple avec des enfants.', 1, 5, 2, 2, 241, 41, 191),
(42, '80.00', '545000.00', '620000.00', '580000.00', 4, '3', '2020-04-15', 'Magnifique appartement de 80m2 à vendre.', 1, 0, 2, 2, 242, 42, 192),
(43, '85.00', '560000.00', '630000.00', '600000.00', 4, '3', '2020-04-27', 'Superbe appartement avec une grande salle de bain.', 1, 1, 2, 2, 243, 43, 193),
(44, '90.00', '725000.00', '780000.00', '750000.00', 4, '3', '2020-03-03', 'T4 dans une résidence de luxe avec tout le confort possible.', 1, 5, 2, 2, 244, 44, 194),
(45, '110.00', '770000.00', '840000.00', '800000.00', 4, '3', '2020-04-02', 'Grand appartement avec salle de bain en marbre et une grande baignoire.', 1, 8, 2, 2, 245, 45, 195),
(46, '85.00', '830000.00', '900000.00', '860000.00', 5, '4', '2020-04-21', 'Magnifique appartement style XVIIIe.', 1, 3, 2, 2, 246, 46, 196),
(47, '90.00', '830000.00', '900000.00', '865000.00', 5, '3', '2020-03-04', 'Appartement de luxe à vendre avec jacuzzi.', 1, 0, 2, 2, 247, 47, 197),
(48, '130.00', '850000.00', '920000.00', '880000.00', 5, '4', '2020-03-05', 'Descriptif', 1, 2, 2, 2, 248, 48, 198),
(49, '80.00', '900000.00', '1000000.00', '950000.00', 5, '3', '2020-02-01', 'Appartement grand luxe avec 3 chambres.', 1, 2, 2, 2, 249, 49, 199),
(50, '90.00', '960000.00', '1150000.00', '1000000.00', 5, '4', '2020-01-05', 'Somptueux appartement, offre à ne pas rater', 1, 6, 2, 2, 250, 50, 200),
(51, '50.00', '50000.00', '100000.00', '80000.00', 2, '1', '2020-02-16', 'Petit maison pas cher idéale pour une premier investissement.', 1, 0, 1, 1, 251, 1, 201),
(52, '68.00', '50000.00', '100000.00', '84000.00', 2, '1', '2020-04-12', 'Maison pas cher vendre avec un fort potentiel.', 1, 0, 1, 1, 252, 2, 202),
(53, '80.00', '60000.00', '120000.00', '95000.00', 2, '1', '2020-04-26', 'A vendre, maison avec beaucoup d espace', 1, 0, 1, 1, 253, 3, 203),
(54, '54.00', '80000.00', '125000.00', '99000.00', 3, '2', '2020-03-05', 'Maison à rénover à vendre', 1, 0, 1, 1, 254, 4, 204),
(55, '60.00', '100000.00', '150000.00', '120000.00', 2, '1', '2020-03-11', 'A vendre maison avec un grand salon.', 1, 0, 1, 1, 255, 5, 205),
(56, '60.00', '120000.00', '180000.00', '150000.00', 2, '1', '2020-01-14', 'Vente maison avec une grande salle de bain.', 1, 0, 1, 1, 256, 6, 206),
(57, '81.00', '135000.00', '250000.00', '180000.00', 3, '2', '2020-03-27', 'Maison à vendre avec cuisine tout équipée', 1, 0, 1, 1, 257, 7, 207),
(58, '76.00', '150000.00', '250000.00', '190000.00', 3, '2', '2020-03-20', 'A vendre jolie maison pas chere.', 1, 0, 1, 1, 258, 8, 208),
(59, '90.00', '160000.00', '280000.00', '220000.00', 3, '2', '2020-04-17', 'Maison à vendre', 1, 0, 1, 1, 259, 9, 209),
(60, '68.00', '200000.00', '280000.00', '260000.00', 3, '2', '2020-02-08', 'Maison familiale, moderne', 1, 0, 1, 1, 260, 10, 210),
(61, '90.00', '220000.00', '320000.00', '280000.00', 3, '2', '2020-04-04', 'Grande maison avec deux grandes salles bain', 1, 0, 1, 1, 261, 11, 211),
(62, '74.00', '250000.00', '340000.00', '295000.00', 3, '2', '2020-03-05', 'Maison rénové récecement', 1, 0, 1, 1, 262, 12, 212),
(63, '80.00', '250000.00', '350000.00', '305000.00', 3, '2', '2020-02-24', 'Petite maison de campagne, idéal pour une famille', 1, 0, 1, 1, 263, 13, 213),
(64, '86.00', '270000.00', '350000.00', '305000.00', 3, '2', '2020-01-28', 'Maison idéal pour un jeune couple', 1, 0, 1, 1, 264, 14, 214),
(65, '88.00', '280000.00', '350000.00', '310000.00', 3, '2', '2020-02-16', 'Maison spacieuse, avec grande cuisine', 1, 0, 1, 1, 265, 15, 215),
(66, '85.00', '290000.00', '380000.00', '325000.00', 3, '2', '2020-02-14', 'Maison très chaleureuse pour accueillir une petite famille', 1, 0, 1, 1, 266, 16, 216),
(67, '150.00', '300000.00', '380000.00', '325000.00', 3, '2', '2020-03-07', 'Maison à vendre', 1, 0, 1, 1, 267, 17, 217),
(68, '73.00', '300000.00', '400000.00', '328000.00', 3, '2', '2020-03-04', 'Maison meublé et neuve', 1, 0, 1, 1, 268, 18, 218),
(69, '85.00', '300000.00', '400000.00', '340000.00', 3, '2', '2020-04-03', 'Maison avec cheminée et climatisation', 1, 0, 1, 1, 269, 19, 219),
(70, '90.00', '300000.00', '400000.00', '350000.00', 3, '2', '2020-01-07', 'Maison chaleureuse avec feu de cheminée', 1, 0, 1, 1, 270, 20, 220),
(71, '80.00', '320000.00', '400000.00', '360000.00', 3, '2', '2020-02-15', 'Petite maison très agréable', 1, 0, 1, 1, 271, 21, 221),
(72, '80.00', '340000.00', '420000.00', '375000.00', 4, '3', '2020-02-16', 'Maison avec cuisine tout équipé', 1, 0, 1, 1, 272, 22, 222),
(73, '75.00', '350000.00', '425000.00', '375000.00', 3, '2', '2020-03-24', 'Maison avec climatisation et chauffage', 1, 0, 1, 1, 273, 23, 223),
(74, '96.00', '350000.00', '430000.00', '380000.00', 3, '2', '2020-04-05', 'Maison a vendre rapidement', 1, 0, 1, 1, 274, 24, 224),
(75, '83.00', '360000.00', '450000.00', '390000.00', 3, '2', '2020-04-01', 'Prix à débattre', 1, 0, 1, 1, 275, 25, 225),
(76, '120.00', '380000.00', '460000.00', '420000.00', 3, '2', '2020-04-02', 'Bien en parfaite état', 1, 0, 2, 1, 276, 26, 226),
(77, '118.00', '380000.00', '480000.00', '425000.00', 3, '2', '2020-04-26', 'Bien avec beaucoup de caractère', 1, 0, 2, 1, 277, 27, 227),
(78, '160.00', '400000.00', '500000.00', '450000.00', 3, '2', '2020-03-29', 'Petite maison avec beaucoup de charme', 1, 0, 2, 1, 278, 28, 228),
(79, '90.00', '410000.00', '500000.00', '450000.00', 4, '3', '2020-03-08', 'A vendre maison familiale', 1, 0, 2, 1, 279, 29, 229),
(80, '150.00', '430000.00', '540000.00', '480000.00', 3, '2', '2020-01-24', 'Vente de notre maison avec tous les meubles', 1, 0, 2, 1, 280, 30, 230),
(81, '152.00', '450000.00', '550000.00', '490000.00', 4, '3', '2020-01-22', 'A vendre maison, sans les meubles', 1, 0, 2, 1, 281, 31, 231),
(82, '156.00', '460000.00', '550000.00', '500000.00', 4, '3', '2020-04-19', 'A vendre maison, le prix n est pas à débattre', 1, 0, 2, 1, 282, 32, 232),
(83, '158.00', '480000.00', '600000.00', '550000.00', 4, '3', '2020-04-20', 'Maison de plein pied', 1, 0, 2, 1, 283, 33, 233),
(84, '160.00', '520000.00', '600000.00', '560000.00', 4, '3', '2020-03-20', 'Maison avec étage', 1, 0, 2, 1, 284, 34, 234),
(85, '162.00', '550000.00', '620000.00', '580000.00', 3, '2', '2020-02-22', 'Maison de très bon état à vendre', 1, 0, 2, 1, 285, 35, 235),
(86, '167.00', '550000.00', '650000.00', '600000.00', 4, '3', '2020-01-14', 'Grande maison avec belle vue', 1, 0, 2, 1, 286, 36, 236),
(87, '169.00', '600000.00', '720000.00', '680000.00', 3, '2', '2020-04-11', 'Maison bien desservi par les transports en commun', 1, 0, 2, 1, 287, 37, 237),
(88, '170.00', '700000.00', '800000.00', '750000.00', 4, '3', '2020-01-23', 'Maison charismatique à vendre', 1, 0, 2, 1, 288, 38, 238),
(89, '150.00', '750000.00', '820000.00', '790000.00', 4, '3', '2020-02-27', 'A vendre, petite maison campagnarde', 1, 0, 2, 1, 289, 39, 239),
(90, '152.00', '780000.00', '850000.00', '810000.00', 4, '3', '2020-01-25', 'Petite maison idéal pour un couple', 1, 0, 2, 1, 290, 40, 240),
(91, '175.00', '800000.00', '870000.00', '840000.00', 5, '3', '2020-03-27', 'Maison spacieuse pour aggrandir la famille', 1, 0, 2, 1, 291, 41, 241),
(92, '172.00', '800000.00', '900000.00', '850000.00', 4, '3', '2020-01-14', 'Magnifique maison tout equipé', 1, 0, 2, 1, 292, 42, 242),
(93, '176.00', '840000.00', '950000.00', '890000.00', 4, '3', '2020-04-06', 'Belle maison à vendre', 1, 0, 2, 1, 293, 43, 243),
(94, '180.00', '920000.00', '980000.00', '940000.00', 5, '4', '2020-02-27', 'Belle cuisine et salle à manger', 1, 0, 2, 1, 294, 44, 244),
(95, '182.00', '940000.00', '990000.00', '960000.00', 5, '3', '2020-04-19', 'Chambres spatieuses', 1, 0, 2, 1, 295, 45, 245),
(96, '183.00', '950000.00', '1100000.00', '980000.00', 7, '4', '2020-01-24', 'Salle de bain avec double vasques', 1, 0, 2, 1, 296, 46, 246),
(97, '181.00', '1000000.00', '1200000.00', '1100000.00', 8, '5', '2020-01-14', 'Maison chaleureuse à vendre assez vite', 1, 0, 2, 1, 297, 47, 247),
(98, '191.00', '1350000.00', '1650000.00', '1500000.00', 6, '4', '2020-04-27', 'Maison proche de la ville', 1, 0, 2, 1, 298, 48, 248),
(99, '120.00', '1400000.00', '1700000.00', '1600000.00', 14, '7', '2020-03-30', 'Superbe maison à vendre', 1, 0, 2, 1, 299, 49, 249),
(100, '160.00', '1500000.00', '1900000.00', '1800000.00', 12, '6', '2020-04-27', 'Maison toute neuve à vendre', 1, 0, 2, 1, 300, 50, 250);

-- --------------------------------------------------------

--
-- Structure de la table `dependance`
--

DROP TABLE IF EXISTS `dependance`;
CREATE TABLE IF NOT EXISTS `dependance` (
  `id_dependance` int(11) NOT NULL AUTO_INCREMENT,
  `nom_dependance` varchar(16) NOT NULL,
  `superficie` decimal(6,2) NOT NULL,
  `id_bien` int(11) NOT NULL,
  PRIMARY KEY (`id_dependance`),
  KEY `fk_dependance_biens1_idx` (`id_bien`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dependance`
--

INSERT INTO `dependance` (`id_dependance`, `nom_dependance`, `superficie`, `id_bien`) VALUES
(1, 'Garage', '25.00', 100),
(2, 'Garage', '20.00', 99),
(3, 'Garage', '30.00', 98),
(4, 'Garage', '36.00', 4),
(5, 'Garage', '33.00', 5),
(6, 'Cave', '25.00', 6),
(7, 'Cave', '20.00', 7),
(8, 'Cave', '30.00', 8),
(9, 'Cave', '36.00', 9),
(10, 'Cave', '33.00', 10),
(11, 'Jardin', '120.00', 61),
(12, 'Jardin', '30.00', 62),
(13, 'Jardin', '36.00', 63),
(14, 'Jardin', '110.00', 71),
(15, 'Jardin', '20.00', 72),
(16, 'Jardin', '30.00', 73),
(17, 'Jardin', '36.00', 74),
(18, 'Jardin', '33.00', 75),
(19, 'Jardin', '20.00', 76),
(20, 'Jardin', '30.00', 77),
(21, 'Jardin', '36.00', 78),
(22, 'Jardin', '33.00', 79),
(23, 'Terrasse', '10.00', 51),
(24, 'Terrasse', '15.00', 52),
(25, 'Terrasse', '12.00', 53),
(26, 'Terrasse', '11.00', 54),
(27, 'Terrasse', '20.00', 55),
(28, 'Cellier', '12.00', 20),
(29, 'Cellier', '15.00', 21),
(30, 'Cellier', '20.00', 22),
(31, 'Cellier', '12.00', 23),
(32, 'Cellier', '12.00', 24),
(33, 'Grenier', '10.00', 11),
(34, 'Grenier', '15.00', 12),
(35, 'Grenier', '20.00', 13),
(36, 'Grenier', '12.00', 14),
(37, 'Grenier', '15.00', 15),
(38, 'Terrasse', '10.00', 40),
(39, 'Terrasse', '15.00', 41),
(40, 'Terrasse', '12.00', 43),
(41, 'Terrasse', '11.00', 44),
(42, 'Terrasse', '20.00', 45),
(43, 'Loggia', '12.00', 11),
(44, 'Loggia', '15.00', 12),
(45, 'Loggia', '14.00', 13),
(46, 'Loggia', '12.00', 14),
(47, 'Loggia', '13.00', 15),
(48, 'Verenda', '20.00', 80),
(49, 'Verenda', '25.00', 81),
(50, 'Verenda', '22.00', 82),
(51, 'Verenda', '21.00', 83),
(52, 'Verenda', '22.00', 84),
(53, 'Verenda', '24.00', 85),
(54, 'Verenda', '28.00', 86),
(55, 'Verenda', '15.00', 87),
(60, 'Garage', '12.00', 1),
(61, 'Garage', '12.00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `id_documents` int(11) NOT NULL AUTO_INCREMENT,
  `lien` varchar(255) NOT NULL,
  `id_type_document` int(11) NOT NULL,
  `id_membre` int(11) NOT NULL,
  `id_bien` int(11) NOT NULL,
  `id_agent` int(11) NOT NULL,
  PRIMARY KEY (`id_documents`),
  KEY `fk_documents_type_document1_idx` (`id_type_document`),
  KEY `fk_documents_membre1_idx` (`id_membre`),
  KEY `fk_documents_biens1_idx` (`id_bien`),
  KEY `fk_documents_agent_immobilier1_idx` (`id_agent`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `favoris`
--

DROP TABLE IF EXISTS `favoris`;
CREATE TABLE IF NOT EXISTS `favoris` (
  `id_favoris` int(11) NOT NULL AUTO_INCREMENT,
  `id_membre` int(11) NOT NULL,
  `id_bien` int(11) NOT NULL,
  PRIMARY KEY (`id_favoris`),
  KEY `fk_membre_has_biens_biens1_idx` (`id_bien`),
  KEY `fk_membre_has_biens_membre1_idx` (`id_membre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `favoris`
--

INSERT INTO `favoris` (`id_favoris`, `id_membre`, `id_bien`) VALUES
(4, 101, 1);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id_image` int(11) NOT NULL AUTO_INCREMENT,
  `lien_image` varchar(255) NOT NULL,
  `id_bien` int(11) NOT NULL,
  PRIMARY KEY (`id_image`),
  KEY `fk_image_biens_idx` (`id_bien`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id_image`, `lien_image`, `id_bien`) VALUES
(1, 'img/biens/maison1-1.png', 51),
(2, 'img/biens/maison1-2.png', 51),
(3, 'img/biens/maison2-1.png', 52),
(4, 'img/biens/maison2-2.png', 52),
(5, 'img/biens/maison3-1.png', 53),
(6, 'img/biens/maison3-2.png', 53),
(7, 'img/biens/maison4-1.png', 54),
(8, 'img/biens/maison4-2.png', 54),
(9, 'img/biens/maison5-1.png', 55),
(10, 'img/biens/maison5-2.png', 55),
(11, 'img/biens/maison6-1.png', 56),
(12, 'img/biens/maison6-2.png', 56),
(13, 'img/biens/maison7-1.png', 57),
(14, 'img/biens/maison7-2.png', 57),
(15, 'img/biens/maison8-1.png', 58),
(16, 'img/biens/maison8-2.png', 58),
(17, 'img/biens/maison9-1.png', 59),
(18, 'img/biens/maison9-2.png', 59),
(19, 'img/biens/maison10-1.png', 60),
(20, 'img/biens/maison10-2.png', 60),
(21, 'img/biens/maison11-1.png', 61),
(22, 'img/biens/maison11-2.png', 61),
(23, 'img/biens/maison12-1.png', 62),
(24, 'img/biens/maison12-2.png', 62),
(25, 'img/biens/maison13-1.png', 63),
(26, 'img/biens/maison13-2.png', 63),
(27, 'img/biens/maison14-1.png', 64),
(28, 'img/biens/maison14-2.png', 64),
(29, 'img/biens/maison15-1.png', 65),
(30, 'img/biens/maison15-2.png', 65),
(31, 'img/biens/maison16-1.png', 66),
(32, 'img/biens/maison16-2.png', 66),
(33, 'img/biens/maison17-1.png', 67),
(34, 'img/biens/maison17-2.png', 67),
(35, 'img/biens/maison18-1.png', 68),
(36, 'img/biens/maison18-2.png', 68),
(37, 'img/biens/maison19-1.png', 69),
(38, 'img/biens/maison19-2.png', 69),
(39, 'img/biens/maison20-1.png', 70),
(40, 'img/biens/maison20-2.png', 70),
(41, 'img/biens/maison21-1.png', 71),
(42, 'img/biens/maison21-2.png', 71),
(43, 'img/biens/maison22-1.png', 72),
(44, 'img/biens/maison22-2.png', 72),
(45, 'img/biens/maison23-1.png', 73),
(46, 'img/biens/maison23-2.png', 73),
(47, 'img/biens/maison24-1.png', 74),
(48, 'img/biens/maison24-2.png', 74),
(49, 'img/biens/maison25-1.png', 75),
(50, 'img/biens/maison25-2.png', 75),
(51, 'img/biens/maison26-1.png', 76),
(52, 'img/biens/maison26-2.png', 76),
(53, 'img/biens/maison27-1.png', 77),
(54, 'img/biens/maison27-2.png', 77),
(55, 'img/biens/maison28-1.png', 78),
(56, 'img/biens/maison28-2.png', 78),
(57, 'img/biens/maison29-1.png', 79),
(58, 'img/biens/maison29-2.png', 79),
(59, 'img/biens/maison30-1.png', 80),
(60, 'img/biens/maison30-2.png', 80),
(61, 'img/biens/maison31-1.png', 81),
(62, 'img/biens/maison31-2.png', 81),
(63, 'img/biens/maison32-1.png', 82),
(64, 'img/biens/maison32-2.png', 82),
(65, 'img/biens/maison33-1.png', 83),
(66, 'img/biens/maison33-2.png', 83),
(67, 'img/biens/maison34-1.png', 84),
(68, 'img/biens/maison34-2.png', 84),
(69, 'img/biens/maison35-1.png', 85),
(70, 'img/biens/maison35-2.png', 85),
(71, 'img/biens/maison36-1.png', 86),
(72, 'img/biens/maison36-2.png', 86),
(73, 'img/biens/maison37-1.png', 87),
(74, 'img/biens/maison37-2.png', 87),
(75, 'img/biens/maison38-1.png', 88),
(76, 'img/biens/maison38-2.png', 88),
(77, 'img/biens/maison39-1.png', 89),
(78, 'img/biens/maison39-2.png', 89),
(79, 'img/biens/maison40-1.png', 90),
(80, 'img/biens/maison40-2.png', 90),
(81, 'img/biens/maison41-1.png', 91),
(82, 'img/biens/maison41-2.png', 91),
(83, 'img/biens/maison42-1.png', 92),
(84, 'img/biens/maison42-2.png', 92),
(85, 'img/biens/maison43-1.png', 93),
(86, 'img/biens/maison43-2.png', 93),
(87, 'img/biens/maison44-1.png', 94),
(88, 'img/biens/maison44-2.png', 94),
(89, 'img/biens/maison45-1.png', 95),
(90, 'img/biens/maison45-2.png', 95),
(91, 'img/biens/maison46-1.png', 96),
(92, 'img/biens/maison46-2.png', 96),
(93, 'img/biens/maison47-1.png', 97),
(94, 'img/biens/maison47-2.png', 97),
(95, 'img/biens/maison48-1.png', 98),
(96, 'img/biens/maison48-2.png', 98),
(97, 'img/biens/maison49-1.png', 99),
(98, 'img/biens/maison49-2.png', 99),
(99, 'img/biens/maison50-1.png', 100),
(100, 'img/biens/maison50-2.png', 100),
(101, 'img/biens/appart1-1.jpg', 1),
(102, 'img/biens/appart1-2.jpg', 1),
(105, 'img/biens/appart3-1.jpg', 3),
(106, 'img/biens/appart3-2.jpg', 3),
(107, 'img/biens/appart4-1.jpg', 4),
(108, 'img/biens/appart4-2.jpg', 4),
(109, 'img/biens/appart5-1.jpg', 5),
(110, 'img/biens/appart5-2.jpg', 5),
(111, 'img/biens/appart6-1.jpg', 6),
(112, 'img/biens/appart6-2.jpg', 6),
(113, 'img/biens/appart7-1.jpg', 7),
(114, 'img/biens/appart7-2.jpg', 7),
(115, 'img/biens/appart8-1.jpg', 8),
(116, 'img/biens/appart8-2.jpg', 8),
(117, 'img/biens/appart9-1.jpg', 9),
(118, 'img/biens/appart9-2.jpg', 9),
(119, 'img/biens/appart10-1.jpg', 10),
(120, 'img/biens/appart10-2.jpg', 10),
(121, 'img/biens/appart11-1.jpg', 11),
(122, 'img/biens/appart11-2.jpg', 11),
(123, 'img/biens/appart12-1.jpg', 12),
(124, 'img/biens/appart12-2.jpg', 12),
(125, 'img/biens/appart13-1.jpg', 13),
(126, 'img/biens/appart13-2.jpg', 13),
(127, 'img/biens/appart14-1.jpg', 14),
(128, 'img/biens/appart14-2.jpg', 14),
(129, 'img/biens/appart15-1.jpg', 15),
(130, 'img/biens/appart15-2.jpg', 15),
(131, 'img/biens/appart16-1.jpg', 16),
(132, 'img/biens/appart16-2.jpg', 16),
(133, 'img/biens/appart17-1.jpg', 17),
(134, 'img/biens/appart17-2.jpg', 17),
(135, 'img/biens/appart18-1.jpg', 18),
(136, 'img/biens/appart18-2.jpg', 18),
(137, 'img/biens/appart19-1.jpg', 19),
(138, 'img/biens/appart19-2.jpg', 19),
(139, 'img/biens/appart20-1.jpg', 20),
(140, 'img/biens/appart20-2.jpg', 20),
(141, 'img/biens/appart21-1.jpg', 21),
(142, 'img/biens/appart21-2.jpg', 21),
(143, 'img/biens/appart22-1.jpg', 22),
(144, 'img/biens/appart22-2.jpg', 22),
(145, 'img/biens/appart23-1.jpg', 23),
(146, 'img/biens/appart23-2.jpg', 23),
(147, 'img/biens/appart24-1.jpg', 24),
(148, 'img/biens/appart24-2.jpg', 24),
(149, 'img/biens/appart25-1.jpg', 25),
(150, 'img/biens/appart25-2.jpg', 25),
(151, 'img/biens/appart26-1.jpg', 26),
(152, 'img/biens/appart26-2.jpg', 26),
(153, 'img/biens/appart27-1.jpg', 27),
(154, 'img/biens/appart27-2.jpg', 27),
(155, 'img/biens/appart28-1.jpg', 28),
(156, 'img/biens/appart28-2.jpg', 28),
(157, 'img/biens/appart29-1.jpg', 29),
(158, 'img/biens/appart29-2.jpg', 29),
(159, 'img/biens/appart30-1.jpg', 30),
(160, 'img/biens/appart30-2.jpg', 30),
(161, 'img/biens/appart31-1.jpg', 31),
(162, 'img/biens/appart31-2.jpg', 31),
(163, 'img/biens/appart32-1.jpg', 32),
(164, 'img/biens/appart32-2.jpg', 32),
(165, 'img/biens/appart33-1.jpg', 33),
(166, 'img/biens/appart33-2.jpg', 33),
(167, 'img/biens/appart34-1.jpg', 34),
(168, 'img/biens/appart34-2.jpg', 34),
(169, 'img/biens/appart35-1.jpg', 35),
(170, 'img/biens/appart35-2.jpg', 35),
(171, 'img/biens/appart36-1.jpg', 36),
(172, 'img/biens/appart36-2.jpg', 36),
(173, 'img/biens/appart37-1.jpg', 37),
(174, 'img/biens/appart37-2.jpg', 37),
(175, 'img/biens/appart38-1.jpg', 38),
(176, 'img/biens/appart38-2.jpg', 38),
(177, 'img/biens/appart39-1.jpg', 39),
(178, 'img/biens/appart39-2.jpg', 39),
(179, 'img/biens/appart40-1.jpg', 40),
(180, 'img/biens/appart40-2.jpg', 40),
(181, 'img/biens/appart41-1.jpg', 41),
(182, 'img/biens/appart41-2.jpg', 41),
(183, 'img/biens/appart42-1.jpg', 42),
(184, 'img/biens/appart42-2.jpg', 42),
(185, 'img/biens/appart43-1.jpg', 43),
(186, 'img/biens/appart43-2.jpg', 43),
(187, 'img/biens/appart44-1.jpg', 44),
(188, 'img/biens/appart44-2.jpg', 44),
(189, 'img/biens/appart45-1.jpg', 45),
(190, 'img/biens/appart45-2.jpg', 45),
(191, 'img/biens/appart46-1.jpg', 46),
(192, 'img/biens/appart46-2.jpg', 46),
(193, 'img/biens/appart47-1.jpg', 47),
(194, 'img/biens/appart47-2.jpg', 47),
(195, 'img/biens/appart48-1.jpg', 48),
(196, 'img/biens/appart48-2.jpg', 48),
(197, 'img/biens/appart49-1.jpg', 49),
(198, 'img/biens/appart49-2.jpg', 49),
(199, 'img/biens/appart50-1.jpg', 50),
(200, 'img/biens/appart50-2.jpg', 50);

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

DROP TABLE IF EXISTS `membre`;
CREATE TABLE IF NOT EXISTS `membre` (
  `id_membre` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(16) NOT NULL,
  `nom` varchar(16) NOT NULL,
  `mail` varchar(64) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `date_naissance` date NOT NULL,
  `numero_telephone` varchar(16) NOT NULL,
  `id_adresse` int(11) NOT NULL,
  `id_type_membre` int(11) NOT NULL,
  `id_agent` int(11) DEFAULT NULL,
  `id_agence` int(11) NOT NULL,
  PRIMARY KEY (`id_membre`),
  UNIQUE KEY `mail_UNIQUE` (`mail`),
  KEY `fk_membre_adresse1_idx` (`id_adresse`),
  KEY `fk_membre_type_membre1_idx` (`id_type_membre`),
  KEY `fk_membre_agent_immobilier1_idx` (`id_agent`),
  KEY `fk_membre_agence1_idx` (`id_agence`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `membre`
--

INSERT INTO `membre` (`id_membre`, `prenom`, `nom`, `mail`, `mot_de_passe`, `date_naissance`, `numero_telephone`, `id_adresse`, `id_type_membre`, `id_agent`, `id_agence`) VALUES
(101, 'Livia', 'Ross', 'Livia_Ross3258@twace.org', '$2y$10$u.hGF3ojQ1ZwZPFjq8tjyeiDvSylkLWhymNNbt2IJw4aNyximEwce', '1975-10-27', '0246580755', 1, 1, NULL, 1),
(102, 'Rufus', 'Lucas', 'Rufus_Lucas8806@joiniaa.com', '$2y$10$1hIdUFaQ36YqxvdZ2rBNaeCBFn/OCYFccA3vWf2vkuY4as166kBgC', '1975-06-02', '0313990995', 2, 1, NULL, 1),
(103, 'Carl', 'Skinner', 'Carl_Skinner5694@elnee.tech', '$2y$10$gc02YKUnxs6qfjTHvKDGPuXX15loHYPhymqRDO6OkmRJErACj8JyO', '2000-12-14', '0296498432', 3, 1, NULL, 1),
(104, 'Robyn', 'Walker', 'Robyn_Walker7872@sveldo.com', '$2y$10$7qzEg3pjfxA1e9Ar6DPchuOz179GfxjDD/W68keKjWMpAad6.d4IC', '1970-08-25', '0192405023', 4, 1, NULL, 4),
(105, 'Ethan', 'Tanner', 'Ethan_Tanner1750@sveldo.com', '$2y$10$RPvagXIM.dfAen5ntjW.3.sCO.tZfgXzmavGm5HMIxvX46XcWO/Cy', '1971-09-04', '0186180312', 5, 1, NULL, 5),
(106, 'Aileen', 'Owen', 'Aileen_Owen486@gompie.com', '$2y$10$pbkJ226oBJU5FM39BhNMuOQSjhpigTHTJfyj1JxIzMigOpw2jOyR6', '1986-12-27', '0126997570', 6, 1, NULL, 6),
(107, 'Charlie', 'Upsdell', 'Charlie_Upsdell9456@vetan.org', '$2y$10$r5yr.BfIpoJsuMap07KAYe77IvMky2.dSRnwsi4YypCPDvYFDhlTO', '1987-01-17', '0315573788', 7, 1, NULL, 7),
(108, 'Logan', 'Uttley', 'Logan_Uttley7169@eirey.tech', '$2y$10$NnLXX11gN/hER8fWte6zzufDBFIXCaFm5a7an3rKwtqT4Y7KHsHa2', '1985-07-24', '0333659881', 8, 1, NULL, 8),
(109, 'Carrie', 'Widdows', 'Carrie_Widdows7841@famism.com', '$2y$10$hR1QJgZXt08PusmSkZ/78uhPyMWtcKFyGsgAIVFhKqGf67VVwGxYy', '1997-08-30', '0108252227', 9, 1, NULL, 9),
(110, 'Georgia', 'Bailey', 'Georgia_Bailey4412@atink.com', '$2y$10$kny8a6ayRtrDr7EY6a1b8estdTNzCyDBwJVuS/NOYTLzL6mDkxeUu', '1980-07-04', '0428931087', 10, 1, NULL, 10),
(111, 'Greta', 'Simmons', 'Greta_Simmons9471@qater.org', '$2y$10$FUaDhNmhurLdM377p4tr9.F/r4GMDwKRv7701Fh/xK1HqaEcM2afC', '2001-06-01', '0611800554', 11, 1, NULL, 11),
(112, 'Chad', 'Mcnally', 'Chad_Mcnally30@hourpy.com', '$2y$10$9xoYgfvROGHqQFKs7b91pezUchz5GeChA9mEwzLLEt35sDZNNKQL.', '1984-07-11', '0175567481', 12, 1, NULL, 12),
(113, 'Manuel', 'Sanche', 'Manuel_Sanche9984@typill.com', '$2y$10$biU30xsU1WHMH41n8NP82e1k9mN59Z9swIk/w4crdBDDHufU5y0TS', '1990-02-20', '0161831043', 13, 1, NULL, 13),
(114, 'Katelyn', 'Roberts', 'Katelyn_Roberts3673@sveldo.com', '$2y$10$fEmOBVvvG5yV15RWk.Rkg.8PJX7js6Y5zY8y2hlkaKpgUCcSvL53S', '2000-08-02', '0582336513', 14, 1, NULL, 14),
(115, 'Chris', 'Attwood', 'Chris_Attwood2747@atink.com', '$2y$10$keRBYszMowuyEJfQYSUeze4VQTqIMSG1dXij/NSOABoPF75x52lRC', '1991-01-23', '0122627610', 15, 1, NULL, 15),
(116, 'Kieth', 'Styles', 'Kieth_Styles5290@qater.org', '$2y$10$R/.K/xp.uj7cDBBALUF6GuOjMLEfMk.sbSbbfPvA2b9kvXRz0hS1K', '1988-07-13', '0154719481', 16, 1, NULL, 16),
(117, 'Carl', 'Mould', 'Carl_Mould89@irrepsy.com', '$2y$10$rxHXLZjJXXIvFAzQOiugruuGygGxBBmbq4iE5A7wVXIAsj5oTYzqi', '1977-01-03', '0324206204', 17, 1, NULL, 17),
(118, 'Owen', 'Strong', 'Owen_Strong7236@womeona.net', '$2y$10$3gGwsLlIWTSFkV2lAEzCm.WdAf8vKhaQiC8g7wCwwJNuM9apJy2cO', '1989-05-01', '0162977139', 18, 1, NULL, 18),
(119, 'Angelina', 'Roberts', 'Angelina_Roberts8015@gompie.com', '$2y$10$yMsqwFyKJ01DF9BikRzNOegIZukRFPciw1YJ4YMXdRXzuBxPrFNl.', '1997-06-28', '0161285540', 19, 1, NULL, 19),
(120, 'Ada', 'Jordan', 'Ada_Jordan3841@atink.com', '$2y$10$RKa6CsUcM7J2QcwSeJtbb.3RGDS./LebbcB9NPxJnOiAVqOrlKno2', '1972-09-15', '0109487067', 20, 1, NULL, 20),
(121, 'George', 'Camden', 'George_Camden5916@twace.org', '$2y$10$k5sVDI4ewSgMY9LC4kxGfOqlcaOILaP8cqJkth4Eaism1.V.Aob7C', '1980-07-25', '0348759988', 21, 1, NULL, 21),
(122, 'Mike', 'Johnson', 'Mike_Johnson147@nickia.com', '$2y$10$C/kvsMsJGNMRL2Vp44uCeOr0XmqD207wNEqcoXtYeSMnhXuv9PqHS', '1996-11-13', '0107103860', 22, 1, NULL, 22),
(123, 'Anabel', 'Fisher', 'Anabel_Fisher5760@atink.com', '$2y$10$JNVo9qQ8k67g10huTx0JiuJ.FYOitAHv5InZoSVjRyzAapQMmg5sy', '1971-04-07', '0591634356', 23, 1, NULL, 23),
(124, 'Michelle', 'Carter', 'Michelle_Carter8848@extex.org', '$2y$10$AtvdOLJQl8ugHXmNEZjSmepuJYfpXOeIfk1juwmjA4EEs8hbT.sYe', '1979-06-28', '0459802402', 24, 1, NULL, 24),
(125, 'Denis', 'Thornton', 'Denis_Thornton2411@twace.org', '$2y$10$3hrS5j7CjaRGVW3HbKW2FeiX3TC2GLcN7sTiFMbMhBoDkAAu/ScZG', '1973-01-01', '0141459529', 25, 1, NULL, 25),
(126, 'Bart', 'Lee', 'Bart_Lee9866@grannar.com', '$2y$10$SeltZKRma/Y6jdaUaPK5C.ThjErYiPWgx5Atf39D21K73KejXuzGa', '1977-03-27', '0567449899', 26, 1, NULL, 26),
(127, 'Gil', 'Lakey', 'Gil_Lakey5788@sheye.org', '$2y$10$l3.fcXnhxWBlBLTgHKFmxOQAza4TiJn6DPbxzBTBUrZKH3O1hm1la', '1988-05-17', '0327421550', 27, 1, NULL, 27),
(128, 'Sharon', 'Stone', 'Sharon_Stone2175@bulaffy.com', '$2y$10$Fg6QvgrcfLNU2cUv/ifRfeW14GUf/APW0b.aTEOhRgqJIB/qdfk/G', '1974-09-05', '0654961517', 28, 1, NULL, 28),
(129, 'Liam', 'James', 'Liam_James2473@extex.org', '$2y$10$DK3XAatwbAoRcg/OtbX0V.z7nin.MaHmORWaYwGpadMZZ5tc.iGDC', '1998-10-28', '0236269495', 29, 1, NULL, 29),
(130, 'Kirsten', 'Squire', 'Kirsten_Squire5997@grannar.com', '$2y$10$YYk1I3gZSux2yflP0zS53u/bEyv6DD41upC4S6ApXo4z0NvUwa94G', '1972-10-27', '0656602640', 30, 1, NULL, 30),
(131, 'Carter', 'Hammond', 'Carter_Hammond2309@ubusive.com', '$2y$10$xpQOvIMowjeHWQOJmsXEFOwCZbImUbvRI5s1QKZTWZ3afgt0W/F6S', '1978-01-24', '0117504734', 31, 1, NULL, 31),
(132, 'Lara', 'Whitmore', 'Lara_Whitmore1849@womeona.net', '$2y$10$wcCBkLqIBpypHDR2l/498uLgVCiMA1DDaTP6i4GKp1agW.yn41mEm', '1997-07-26', '0126844862', 32, 1, NULL, 32),
(133, 'Owen', 'Boyle', 'Owen_Boyle9281@bretoux.com', '$2y$10$tK.gCJGl/ZewH5gGOCM0f.dKOfU6LxsF4wA45wn9Iyy8QVMbz2VdK', '1970-12-19', '0140105600', 33, 1, NULL, 33),
(134, 'Kassandra', 'Ebbs', 'Kassandra_Ebbs8224@sheye.org', '$2y$10$CKEbNK8XdhWgM0oVha2iB.hTVNfmMDNuk0/fgDrIBFryM1vTvpO8u', '1983-01-15', '0507662533', 34, 1, NULL, 34),
(135, 'Claire', 'Umney', 'Claire_Umney8307@gmail.com', '$2y$10$MQwqJnSz0YrNAdPIKmlGy.NNcIcq3iXuzf8KKRt0D8P7x7bJUEUJq', '1972-08-03', '0695351199', 35, 1, NULL, 35),
(136, 'Matt', 'Healy', 'Matt_Healy3562@joiniaa.com', '$2y$10$Yy0xJWn8vc3CDE9uFb/k.eFZbYU.Sm0USQinAbCLJTYI7kcQVHqhO', '1996-09-01', '0142344765', 36, 1, NULL, 36),
(137, 'Monica', 'Crawley', 'Monica_Crawley7168@deavo.com', '$2y$10$FRVFoPHiuzca0PAlpdTaKeQgaip/l6ill.Y1Xe.54QPhndYyGTlDy', '1985-01-29', '0163709308', 37, 1, NULL, 37),
(138, 'Hayden', 'Evans', 'Hayden_Evans245@corti.com', '$2y$10$bnIYPcREaAEQ/cOKAsZ1KOJPiKEkP07OrLlng9UlOwduUxSymL77e', '1984-06-17', '0785932518', 38, 1, NULL, 38),
(139, 'Henry', 'Hopkinson', 'Henry_Hopkinson390@joiniaa.com', '$2y$10$hajAWqgYchL.1NVQJga1Nu2Zs/nNybylHEXSlGDrhRPJMm7eEGsvy', '1977-05-30', '0195622650', 39, 1, NULL, 39),
(140, 'Elijah', 'Jeffery', 'Elijah_Jeffery5899@muall.tech', '$2y$10$Oah4sHqmq3QQqAAyskoXf.eA0.db9NYHYG7NctmmZ.4kcm2va80Q.', '1997-03-05', '0759150903', 40, 1, NULL, 40),
(141, 'Michael', 'Tutton', 'Michael_Tutton9657@gmail.com', '$2y$10$qdw/dIzOWQ1tt7bm4LwfVuv4uol9Ve6MaHm0uiIdTt3MHOj3Dny2S', '1994-09-27', '0460862667', 41, 1, NULL, 41),
(142, 'Shelby', 'Silva', 'Shelby_Silva2648@nickia.com', '$2y$10$WRvZohlLo2viHGwMODVhEezqeW6ERaeAu1hGK2hhbjYCIcmISLUZa', '1985-07-24', '0133873854', 42, 1, NULL, 42),
(143, 'Ronald', 'Crawford', 'Ronald_Crawford3948@guentu.com', '$2y$10$YLKU/aKhSdgCx.pbmLlEtO3mvVJlnwtpVim.sQ8ybZnEGzsWhtohG', '1988-07-28', '0127569949', 43, 1, NULL, 43),
(144, 'Enoch', 'Umney', 'Enoch_Umney1246@kideod.com', '$2y$10$0dZa5CcJSeQJrcaVV.EJCuI6iZixt09qrcJ2hJR8FPsJltEhjp13.', '1987-05-27', '0152685619', 44, 1, NULL, 44),
(145, 'Rick', 'Gibbons', 'Rick_Gibbons4277@supunk.com', '$2y$10$mgHX.VXKNW9n5s3rULxgLeOpv7s3d0wKYSN/mn.WutVAHEEJq7Fwm', '1970-05-26', '0336239334', 45, 1, NULL, 45),
(146, 'Kimberly', 'Mann', 'Kimberly_Mann7845@extex.org', '$2y$10$9XpcjJMtCu4Pksd0xvCKYeU7GswODBYInas.D9sLPyajdBumTbNlu', '1981-06-04', '0302251687', 46, 1, NULL, 46),
(147, 'Carter', 'Chappell', 'Carter_Chappell3611@grannar.com', '$2y$10$f9zKstHqkmlNbzW5vcV0d.mk1u8xpUImhZtuzGIYqR1PHxYN2i.z2', '1998-03-23', '0187647822', 47, 1, NULL, 47),
(148, 'Michael', 'Mcneill', 'Michael_Mcneill5337@irrepsy.com', '$2y$10$VxTYT3iWXkoxInpdZGGc/.WRZ3cmo23ORLdRXtyNivZEl6YYmdRNC', '1982-01-16', '0136575425', 48, 1, NULL, 48),
(149, 'Anabel', 'Vaughn', 'Anabel_Vaughn2158@nickia.com', '$2y$10$.C5eMzkwk8Ai2mOZo7oQ/eVz4U1EZUsE9ZOY2OwnrAcetucQmc622', '1993-12-09', '0366528082', 49, 1, NULL, 49),
(150, 'Alison', 'Wilson', 'Alison_Wilson376@yahoo.com', '$2y$10$maktnLmxzL1eH6KJRoIrmejo2IiWo3FlruPHhhf6ls9nPizWW7cse', '1990-05-11', '0575587748', 50, 1, NULL, 50),
(151, 'Lindsay', 'Becker', 'Lindsay_Becker2226@kideod.com', '$2y$10$gQuqb0GxxJtBqk3J/CND1OQhct4bmIKdIsMjEa89LSt0XTeibULBy', '1980-06-30', '0111201247', 51, 2, 1, 1),
(152, 'Sylvia', 'Drummond', 'Sylvia_Drummond3188@ubusive.com', '$2y$10$LC7PNFlhvUGXanqXqbv3SOuVCZOsJienrlG.seLr5KeFQVbgGAsGq', '1977-12-21', '0134755694', 52, 2, 2, 2),
(153, 'Nate', 'Moreno', 'Nate_Moreno5972@elnee.tech', '$2y$10$oh3hC8AFOmNl.qh7FjH2iuTu0F8Op9FVshnCyskMB2a/BIKWcvoEu', '1993-03-05', '0177563215', 53, 2, 3, 3),
(154, 'George', 'Ellery', 'George_Ellery8505@elnee.tech', '$2y$10$BYKVdH82UL9QQoaVuVaB3.UmIBe3DuB7Kz0VpeVzxvTvpXBUK/D1e', '1983-03-14', '0124586679', 54, 2, 4, 4),
(155, 'Jocelyn', 'Abbey', 'Jocelyn_Abbey9265@deavo.com', '$2y$10$sd.tFQPjFlb5ZPriQ.jVeuSwvgyKHCv3sUJ6Tay2Jpzig9v7FJ8Ra', '1999-05-11', '0190389458', 55, 2, 5, 5),
(156, 'Darlene', 'Utterson', 'Darlene_Utterson7137@qater.org', '$2y$10$.gUkoi9sPErMcSTBIYGpwOQ.16mvFpp1lsdNIg0pO6eBwpYImEK/G', '1980-04-12', '0554991022', 56, 2, 6, 6),
(157, 'Johnny', 'Cameron', 'Johnny_Cameron1939@irrepsy.com', '$2y$10$Lh.urkUrx5XQUlFmN2y6euAw./Gr5kaD6XDBuDxn6W2DMhJ7dnAsy', '1972-03-17', '0451540142', 57, 2, 7, 7),
(158, 'Manuel', 'Cattell', 'Manuel_Cattell346@cispeto.com', '$2y$10$/a1Yr1sgAktUEPFDFUDqOutBXsLiFNDoOKuVL/sH00u32dXTktlQm', '1982-08-29', '0110522459', 58, 2, 8, 8),
(159, 'Benny', 'Wilcox', 'Benny_Wilcox8302@brety.org', '$2y$10$gcocVvbZVJO01byFly9quet6EyPBuC4ktg4Rm/1slu.YH06dY/WUi', '1986-04-17', '0178577554', 59, 2, 9, 9),
(160, 'Bob', 'Victor', 'Bob_Victor3757@cispeto.com', '$2y$10$ezrGYwBHXx5q7QYMbtEyv.5jXhKd3D5j/qE/I6zvmgoeuNX2V/4J.', '1990-03-14', '0373787173', 60, 2, 10, 10),
(161, 'Selena', 'Khan', 'Selena_Khan4213@typill.com', '$2y$10$yOgziWTYaKmV4mCXxDBlZeaRumKORWo89Z6olRLo42xby6FiyNjSm', '1970-06-20', '0198009958', 61, 2, 11, 11),
(162, 'Sofie', 'Simpson', 'Sofie_Simpson3617@muall.tech', '$2y$10$82S2iK.PGtOeUB1lPvdo4elZ.xDOE8FX.dpVVTqpPQuNzuM5X9qdy', '1993-12-17', '0136871963', 62, 2, 12, 12),
(163, 'Paula', 'Holmes', 'Paula_Holmes7963@twace.org', '$2y$10$5nnCEES7DyML0LggRxd5xOepWY8SU.mP6RyYAp84aurl3Rxne/0UK', '1987-08-27', '0373017300', 63, 2, 13, 13),
(164, 'Doug', 'Butler', 'Doug_Butler6632@bretoux.com', '$2y$10$fsc0khmMyfI357VT8dApueZM9pgGvVIHNtkrHcbe9uciFTfsa5OVe', '1973-04-05', '0200525704', 64, 2, 14, 14),
(165, 'Hayden', 'Campbell', 'Hayden_Campbell3928@atink.com', '$2y$10$dUuJQps8o8aLFqjS6PSpheLO9hOPXJ8cSCWKk8I2ZDFZvhAkPklDy', '1972-02-18', '0636389000', 65, 2, 15, 15),
(166, 'Alba', 'Phillips', 'Alba_Phillips6628@fuliss.net', '$2y$10$TFUWpct80AywS6ibcpCDeulGLIZQLkZEvw/bQf16JT7ool7lFIyQO', '1977-02-13', '0473022169', 66, 2, 16, 16),
(167, 'John', 'Raven', 'John_Raven1780@extex.org', '$2y$10$4EyKACBQvjeng0E/YkB7JuAxWkhUtLAKcCXLu/achfQ2VUhtKBlYu', '1977-06-10', '0184063988', 67, 2, 17, 17),
(168, 'Carter', 'Warren', 'Carter_Warren6963@brety.org', '$2y$10$JTaAy7CiLsdIBFtU9oPReuN.v0af9wrEqAqNysxK5aeT9HBnNMZNy', '1981-04-25', '0519985229', 68, 2, 18, 18),
(169, 'Aiden', 'Drummond', 'Aiden_Drummond3415@muall.tech', '$2y$10$lwXKf7cYf373JLwDFriQuOL1Z/OYSmPxWP69XUjliidk92rl7mQzq', '1996-08-14', '0198406112', 69, 2, 19, 19),
(170, 'Evie', 'Calderwood', 'Evie_Calderwood3799@infotech44.tech', '$2y$10$ZVk3MNttD3uYaZihQG9CbuEKKEnPaMik9eO9TzWgU7d1zgwZMd8jq', '1996-03-14', '0695585906', 70, 2, 20, 20),
(171, 'Caydence', 'Antcliff', 'Caydence_Antcliff7653@ubusive.com', '$2y$10$YIAfGGUuVGoBstFwxiSe0eDO1iz0LuKAmJ4JtI95QyzD0YNilcIla', '1988-07-18', '0195991520', 71, 2, 21, 21),
(172, 'Eileen', 'Malone', 'Eileen_Malone665@muall.tech', '$2y$10$Xx23owTphKgRgxt2iJUwBuWDDp4m97FTR6672heBebmGCi30iiuoG', '1993-11-25', '0455790794', 72, 2, 22, 22),
(173, 'Luke', 'Ranks', 'Luke_Ranks8742@acrit.org', '$2y$10$gML82Bos5q3mIWmN929MoucBBhsGE9.7Ln4hma.ModSX.ZOg0COeS', '1974-07-13', '0170405913', 73, 2, 23, 23),
(174, 'Doris', 'Long', 'Doris_Long9421@orer.org', '$2y$10$oXEPVufDqh9sZDQDBD4GK.KK.YTsbEPvsz2QDsyXVpDyvVVtHp2ce', '1979-01-04', '0135583032', 74, 2, 24, 24),
(175, 'Rick', 'Hunt', 'Rick_Hunt8577@bulaffy.com', '$2y$10$YN2V4FfLwTARPynaUO.27esZTAqsscOOpp122n4ML6CnpSSrBZc3.', '1976-04-22', '0195297113', 75, 2, 25, 25),
(176, 'Wade', 'Powell', 'Wade_Powell3809@kideod.com', '$2y$10$yLdlVM1Dlet6HP/Gb/1uMOWY8jc2/foOPKyPNf1/YoTiYEi5ps6LG', '1998-12-27', '0198560630', 76, 2, 26, 26),
(177, 'Quinn', 'Jenkin', 'Quinn_Jenkin6260@deavo.com', '$2y$10$gSXcPYzlAQK1leuQZZsg6O2O3Ik5xgolq9usQgkPB79ynNq3KZnw.', '1988-06-28', '0190378192', 77, 2, 27, 27),
(178, 'Abdul', 'Bell', 'Abdul_Bell242@corti.com', '$2y$10$tBGlQDnZITVyQAIeEsRllu3Zjp/4DinUh6OW.rtrUYO3yiePJDGyW', '1988-08-02', '0148466387', 78, 2, 28, 28),
(179, 'Daria', 'Jennson', 'Daria_Jennson9552@corti.com', '$2y$10$iX1MrDfxHEr/2JfidnHd2ezRg/4JNquDfHnn2eKZzmoUGeY.zoUyi', '1972-10-20', '0434491844', 79, 2, 29, 29),
(180, 'Chris', 'Norton', 'Chris_Norton5079@jiman.org', '$2y$10$dfOPoSZqi996WRBM/ekcH.JOiuSFle0cFFQ1B.2Vf8bF/v5BDAo4C', '1984-09-15', '0175986164', 80, 2, 30, 30),
(181, 'Harry', 'Durrant', 'Harry_Durrant6147@elnee.tech', '$2y$10$DvegIYrqC.n0zt1Ul/iUjOXMJLPUb6a/x2WFJ5L.hamRhlQ9KHEJC', '1973-12-20', '0109672250', 81, 2, 31, 31),
(182, 'Phillip', 'Steer', 'Phillip_Steer4127@bauros.com', '$2y$10$xzLQxcM7vkxqjMhNJyAhb.urLduclczg/hG5VpUTIY3L.1V.3l93e', '1997-08-09', '0161037764', 82, 2, 32, 32),
(183, 'Bernadette', 'Emmott', 'Bernadette_Emmott4463@extex.org', '$2y$10$fF1q29l0kBR.vuaL5QqTDuu3USUKYrs5CSKT/1EpkoUbUdHRFZKGC', '1993-01-08', '0136527851', 83, 2, 33, 33),
(184, 'Penelope', 'Myatt', 'Penelope_Myatt7380@orer.org', '$2y$10$t6cH.Ck1qzKglt0Ot/W9EervNN9uJCn9y.2hXIkiQAdF7tyr9CPGC', '1982-08-08', '0118356969', 84, 2, 34, 34),
(185, 'Doris', 'Santos', 'Doris_Santos4088@orer.org', '$2y$10$CVw4peRrWC/8iE4cf6/XqOhNIi0iOOmxUT58mu9vU5/pNMbEYCkim', '1976-09-29', '0301432564', 85, 2, 35, 35),
(186, 'Sarah', 'Ross', 'Sarah_Ross3305@infotech44.tech', '$2y$10$vokWTxAp2e1/O9MQgEEzF.hc634GKd/7uv/vN9uCvFV9rsUQ3L106', '1990-03-27', '0720422008', 86, 2, 36, 36),
(187, 'Ellen', 'Roberts', 'Ellen_Roberts7976@fuliss.net', '$2y$10$2/tQcGeHCWj9swAL8BVVUOvIJNXtS50c9O.X9LCMhK51pBq6fa1Hq', '1988-02-18', '0207310700', 87, 2, 37, 37),
(188, 'Phoebe', 'Farrow', 'Phoebe_Farrow5241@gompie.com', '$2y$10$6LK6850Ip6bahGlpEIZE8.QupJn7qWi4enuXmR0NZlVSWInLEa41G', '1989-04-12', '0198276829', 88, 2, 38, 38),
(189, 'Colleen', 'Ainsworth', 'Colleen_Ainsworth6057@grannar.com', '$2y$10$o6E/9e1PCSl7eRp4UDRMVOK6/ZuiYdqTTF3VCrUSaccV5HflyeDP6', '1991-12-25', '0766644021', 89, 2, 39, 39),
(190, 'Ron', 'Emmett', 'Ron_Emmett4152@dionrab.com', '$2y$10$18IRriKd9qpA9kt5UJmZ5ePgq.r8Bwi/H8kcWj7TPUy6x7.rJVNce', '1997-03-18', '0132469116', 90, 2, 40, 40),
(191, 'Livia', 'Eddison', 'Livia_Eddison2185@kideod.com', '$2y$10$2MzrgDT5FFMOtVltLyM/J.EIFrH/Gs6rkQeqE4M3SpEWqxh5vbp9K', '2002-02-12', '0583942728', 91, 2, 41, 41),
(192, 'Renee', 'Mcgee', 'Renee_Mcgee5308@joiniaa.com', '$2y$10$SSlHPckG1rcoMckV4gK12.3AYnnhQpsBQoPLFhOiu2HY22rK6I6LC', '1977-12-21', '0648206349', 92, 2, 42, 42),
(193, 'Denny', 'Hobbs', 'Denny_Hobbs5787@nanoff.com', '$2y$10$zPyslCDPCqjkCycBGiDNFOwkEOomjOvSmHgUagwRC98Kn3LdFp3WK', '1985-10-29', '0138203821', 93, 2, 43, 43),
(194, 'Savannah', 'Hepburn', 'Savannah_Hepburn8814@ubusive.com', '$2y$10$e/VVPYCfeG4ubqC9H8cX4epAg8P548vOxcI1PZCTLYM5gT4n.lSiq', '1987-09-23', '0148605347', 94, 2, 44, 44),
(195, 'Maggie', 'Ranks', 'Maggie_Ranks4346@womeona.net', '$2y$10$9LDfpS4fUaZwN9NM0137qeAPdUBzi1kFba2CciAQOy1LS.A7BcEAK', '1970-10-04', '0109541583', 95, 2, 45, 45),
(196, 'Michael', 'Becker', 'Michael_Becker7850@orer.org', '$2y$10$N5RExCIOCQULdvjAWn9m6uFk.mxx5s9R5lWlQTlKCtd.cDQ/FV.aW', '1983-10-26', '0143034825', 96, 2, 46, 46),
(197, 'Hayden', 'Faulkner', 'Hayden_Faulkner3783@womeona.net', '$2y$10$nLB5F/4WXi/LhL4oxUojA.TW1TzQR35/4jGdVq/RCiNxA0mILZpFu', '1982-07-06', '0142087576', 97, 2, 47, 47),
(198, 'Elly', 'Edmonds', 'Elly_Edmonds1939@brety.org', '$2y$10$7BnwPaI1slwo5mXpPTLb5.Tk6PbaxcX8mhGrJm/l6k779lHrBFoG2', '1995-05-30', '0131481293', 98, 2, 48, 48),
(199, 'Joseph', 'Hancock', 'Joseph_Hancock5167@grannar.com', '$2y$10$fQGGcyIM4twWmfCEvRzmZOg2TGRCq3jnrEZ5TNJ9cYQ087Dwk6//K', '1988-09-27', '0166930361', 99, 2, 49, 49),
(200, 'Javier', 'Freeburn', 'Javier_Freeburn5555@atink.com', '$2y$10$O5rSxZAQqD9uXzPvmpw.Re32xtSpTT2USszAaDo/JJ/fsOv1yB1zG', '1987-04-24', '0204797114', 100, 2, 50, 50),
(201, 'Percy', 'Amstead', 'Percy_Amstead3197@nimogy.com', '$2y$10$KqfCkLYX7y/WvAcltufFzO3cl/9SeGVHBP/MX88giz47XymLVRWiG', '1982-11-04', '0178204199', 301, 3, 1, 1),
(202, 'Hannah', 'King', 'Hannah_King7739@fuliss.net', '$2y$10$UkfX63YbsMbJiimyYTrLf.XpM1i6xiriJ3c2VG2OTwIqlwrhTXpx6', '1983-01-14', '0465561904', 302, 3, 2, 2),
(203, 'Matt', 'Swan', 'Matt_Swan6786@nanoff.com', '$2y$10$NKqweq41uVtt6Qoh6zdkauLGpY7/SLzPdDQle96UIbrV.l06m9SIu', '1989-07-11', '0145606208', 303, 3, 3, 3),
(204, 'Wade', 'Knight', 'Wade_Knight9713@liret.org', '$2y$10$V7M4BGZAGc1K.BF6fVFvG.VG2lER8Ln7yOqFcFdtkRGguXTTdbP1W', '1980-12-21', '0169813317', 304, 3, 4, 4),
(205, 'Penny', 'Jeffery', 'Penny_Jeffery4313@supunk.com', '$2y$10$ncgEEfPLMBFT/ArWTeHHUeBE/DnOnluXL0JeN3ri7C2008wvbmpBi', '1989-02-27', '0699542316', 305, 3, 5, 5),
(206, 'Mona', 'Leigh', 'Mona_Leigh164@fuliss.net', '$2y$10$k.g/2VDI/IQsdWJ1Kd7ft.6DBFAS7WlLqfxW02QFeAbEoc/Te4q.m', '1986-12-14', '0141508001', 306, 3, 6, 6),
(207, 'Rhea', 'Douglas', 'Rhea_Douglas2815@yahoo.com', '$2y$10$wmmciwgfIuwYvK/reShB8urt9TfxfDiBVv1i4tkIS.NjKVEQQ/bLG', '1973-04-12', '0117030642', 307, 3, 7, 7),
(208, 'Katelyn', 'Adams', 'Katelyn_Adams481@bauros.com', '$2y$10$RyK6npCoZBBt2BSfn/gtDeTHB4ZWuIcW0UtA2s2/yVN34gxJehFYO', '1983-10-20', '0738483195', 308, 3, 8, 8),
(209, 'Rita', 'Russell', 'Rita_Russell4403@gembat.com', '$2y$10$nQN.kBbx8INXkfyNsHar0OThG03dHwr5esgkd0e6INHRvTbGZkC1i', '1978-10-17', '0339385512', 309, 3, 9, 9),
(210, 'Erin', 'James', 'Erin_James5361@sveldo.com', '$2y$10$rdPlt2FDOOE4xQkN6wzcg.tituYsD6B0Fngonipo0xjQ8WCe.SphS', '1998-04-18', '0286936888', 310, 3, 10, 10),
(211, 'Cedrick', 'Lee', 'Cedrick_Lee550@ovock.tech', '$2y$10$nzj2m41r8So.WQQTf0PMt.xpiuYts6GKt8ZsIVfFIOAsiu0SHNnCS', '1971-02-17', '0112683376', 311, 3, 11, 11),
(212, 'Kirsten', 'Slater', 'Kirsten_Slater2200@mafthy.com', '$2y$10$uUTADj.KvUTs9LXq4ayFO.J6HPGLwiKARknqdyxzzjsVmraAR31/.', '1995-12-17', '0119346993', 312, 3, 12, 12),
(213, 'Summer', 'Myatt', 'Summer_Myatt4950@gembat.com', '$2y$10$0Nf6qCeeno7UkZQsyvgN7u/kewZPfCA2LwAOyAItteFJclJa/QP16', '1979-02-28', '0176270618', 313, 3, 13, 13),
(214, 'Mike', 'Ralph', 'Mike_Ralph1865@atink.com', '$2y$10$loxM9L982wXs02mJI22R1eliV4CrBpRdfQPsh04xMSp37YVcHlY2m', '2000-08-02', '0677959330', 314, 3, 14, 14),
(215, 'Aileen', 'Bristow', 'Aileen_Bristow7499@guentu.com', '$2y$10$QdjR6pyWDTHMOMwggAqZieobsE4T0p/Uj1CHO8YGQ1uh/ABvnbgf6', '1981-11-09', '0195576528', 315, 3, 15, 15),
(216, 'Mason', 'Hood', 'Mason_Hood4397@irrepsy.com', '$2y$10$Qt//e0kllNmBiCH0AmMnc.w8xzBxsulXl4okE5RC0TEw5NlJU/Ese', '1990-12-05', '0555853471', 316, 3, 16, 16),
(217, 'Eduardo', 'Noach', 'Eduardo_Noach563@joiniaa.com', '$2y$10$n3Fs5qbg3ZDKZ9Kd.y1tsujqsWTIyrbio4BDee6F8YmGPjZAqtVUu', '1984-11-11', '0765280926', 317, 3, 17, 17),
(218, 'Johnny', 'Reid', 'Johnny_Reid8225@kideod.com', '$2y$10$XBiZEcKbw2.Ejbh8aJntAuRKClI9EsIZxAYdIPtHfDLHsC7eACnAW', '1993-09-11', '0274286554', 318, 3, 18, 18),
(219, 'Claire', 'Robertson', 'Claire_Robertson2933@deavo.com', '$2y$10$3gLJ3dvWUbeIZdO8WAplyeTzDL4eOr085Xyux.Zrwfm91haP7Pmeq', '1996-09-09', '0604207954', 319, 3, 19, 19),
(220, 'Danny', 'Kennedy', 'Danny_Kennedy7522@hourpy.com', '$2y$10$ni/5tEV.Zgh.hMjm3gATYuk8pxsdDrvFC42r.eQVvGXRtS84mYre2', '1970-05-28', '0106449260', 320, 3, 20, 20),
(221, 'Kate', 'Fox', 'Kate_Fox8184@iatim.tech', '$2y$10$1nI2WURknc562Lso8RZAxuXyb/Z8IxysjQo.xAcIkuC52ef6cE7Hu', '1974-07-31', '0147184185', 321, 3, 21, 21),
(222, 'Tom', 'Rogers', 'Tom_Rogers5533@sveldo.com', '$2y$10$AQbzZevEskzPySRCZ2fXK.wnomzUY35ExFT.tOlAJfcgnH9y3qxC.', '1988-08-22', '0266899265', 322, 3, 22, 22),
(223, 'Stephanie', 'Jefferson', 'Stephanie_Jefferson836@deavo.com', '$2y$10$PXB40RE.g1SN6aseqzxLi.oOvuzdyGNlf5t.d0M0OaEvDOlgl.jaC', '1989-01-17', '0392931401', 323, 3, 23, 23),
(224, 'Denis', 'Whitehouse', 'Denis_Whitehouse7267@guentu.com', '$2y$10$5/1rJvCYi.8lzpVYFH5mx.ulWq6HtjsHDM0B1ROaPdY6Hak7AoITW', '1975-03-09', '0458143099', 324, 3, 24, 24),
(225, 'Mason', 'Clark', 'Mason_Clark2388@jiman.org', '$2y$10$Ce6n8LISytwLv41RYyLqtu4BgwHa.tnvw04TIsvbjPahQ0c0NFFmi', '1982-01-19', '0110525208', 325, 3, 25, 25),
(226, 'Cedrick', 'Irwin', 'Cedrick_Irwin9052@grannar.com', '$2y$10$cMJxqHuoBplBAv.410ijnOXlhZr6.Kj.nlWGOYonRK8MK3JQxIS4m', '1984-12-02', '0300906585', 326, 3, 26, 26),
(227, 'Anthony', 'Aldridge', 'Anthony_Aldridge649@supunk.com', '$2y$10$Qz/kyP3Hch.rXoDhXQmezO14cUH47y9ZdhwEAhQviv7/xEMy3tn2e', '1980-09-13', '0647045255', 327, 3, 27, 27),
(228, 'Denny', 'Edler', 'Denny_Edler2855@irrepsy.com', '$2y$10$BYR3k6zlTFWcdQrQ6QVldetwJ8S/tpT7Ram5I8YhckKqbYUoeeI6e', '1988-01-23', '0235371209', 328, 3, 28, 28),
(229, 'Isabel', 'Bradley', 'Isabel_Bradley9371@extex.org', '$2y$10$q2F9GVImAYcJfhUyeOc/supDPeLPAWIfRPDMv2hb0y51fiYjZpke6', '1976-05-30', '0107233418', 329, 3, 29, 29),
(230, 'Nancy', 'Lambert', 'Nancy_Lambert5726@gembat.com', '$2y$10$D5zKPhDNIblEQLF4nfH9WeyY4B8moZT0xzVpOSakc0TyjacT076HK', '1990-05-01', '0159886926', 330, 3, 30, 30),
(231, 'Ethan', 'Poole', 'Ethan_Poole6535@jiman.org', '$2y$10$KfbyAgNqJavr8LDunsSUB.Q0ySFs6nVOmhccYY1GkqWCpdROLBbni', '1971-09-25', '0183553361', 331, 3, 31, 31),
(232, 'Helen', 'Everett', 'Helen_Everett4709@kideod.com', '$2y$10$eJUhMpuhxjjr.LyUFnfpKutUmoARatZ84qjEdN6Yg7om6K.IqxjLq', '1990-09-04', '0600483235', 332, 3, 32, 32),
(233, 'Hadley', 'Smith', 'Hadley_Smith4419@guentu.com', '$2y$10$mWNZz9QBDfQWT8huANmjk.MGwezPPFBjxReLTiWsbbf7Ftj.ZSYgi', '1999-07-28', '0114730145', 333, 3, 33, 33),
(234, 'Cameron', 'Tate', 'Cameron_Tate5033@ubusive.com', '$2y$10$NuIQ1vDX2UkXqyDV8Lp3z.aTlQ2lkFvHqGmuNyx5njwuYASur5Zpa', '1992-08-25', '0638093989', 334, 3, 34, 34),
(235, 'Julianna', 'Mann', 'Julianna_Mann3494@brety.org', '$2y$10$J9sQWbHGX5ZfAnw55hp4xeQ3ZhAHyVF32EB/W.u5xbuUyl81N6zu2', '1998-04-21', '0467520144', 335, 3, 35, 35),
(236, 'Chelsea', 'Taylor', 'Chelsea_Taylor3588@hourpy.com', '$2y$10$6qre.SpM.eOir2.S5oh2wesqfGc2CMgo/9ntEK9g2UttYVijlcrbW', '1997-07-31', '0293163761', 336, 3, 36, 36),
(237, 'Tyler', 'Reid', 'Tyler_Reid511@ovock.tech', '$2y$10$/SDVs1O5cLy5osV5VRnQ/.EPzukFRK7e.qmN8af1nUur0AAlL5j8q', '1976-12-30', '0397131704', 337, 3, 37, 37),
(238, 'Hadley', 'Booth', 'Hadley_Booth5336@grannar.com', '$2y$10$xrP14iRUVo/ZgzHKJHbjguSNCoYe5sYpQqpfebJD2.Elp.Qrnf89C', '1993-04-10', '0631231700', 338, 3, 38, 38),
(239, 'Josephine', 'Chester', 'Josephine_Chester2659@infotech44.tech', '$2y$10$6WQ0PNaMibZBgzZIkZWEne8JgO8bYLjmDvxFgFrruVvQ13EzSifj.', '1973-01-18', '0159625919', 339, 3, 39, 39),
(240, 'Joseph', 'Tanner', 'Joseph_Tanner7284@nimogy.com', '$2y$10$K7J/oMoWHvv3eGGkJSpfYu/3XMaTG4vN3xMoJBCpUFkAJJttFWBm.', '1984-11-03', '0250002669', 340, 3, 40, 40),
(241, 'Rebecca', 'Nurton', 'Rebecca_Nurton5217@twipet.com', '$2y$10$flGleg3zUOSNp2baNLiF6OJu7UO.sDVXofCh3JwaO40j6krBzqrje', '1982-07-27', '0207857292', 341, 3, 41, 41),
(242, 'Christy', 'Russel', 'Christy_Russel497@nimogy.com', '$2y$10$3T/z4sBzP4Ug0ufpA6dEzOIheiFbmjZWFy2a4OmfCjtmLiJ8YM4.y', '1990-01-16', '0128431573', 342, 3, 42, 42),
(243, 'Russel', 'Price', 'Russel_Price6811@typill.com', '$2y$10$FCYUazefH4vpYVP778bRReUg1joY/VtuDIaYO70lsYkp6JMWZJHnq', '1985-03-24', '0189048477', 343, 3, 43, 43),
(244, 'Ciara', 'Dubois', 'Ciara_Dubois2259@kideod.com', '$2y$10$BvoxxJd48RBvoRnsr6qn1.avqKJalR62ZRng8pYkJn1QtUm92497.', '1970-12-23', '0124582970', 344, 3, 44, 44),
(245, 'Oliver', 'Vinton', 'Oliver_Vinton3926@iatim.tech', '$2y$10$UirEaW2gZ54/EuXVAocEGeH7xHlTcetcW1JLEI6Ru05v9hHuNz/ye', '1970-09-02', '0168383504', 345, 3, 45, 45),
(246, 'Marigold', 'Rogers', 'Marigold_Rogers4404@vetan.org', '$2y$10$89y.rpeDZpG9a.MowdwEG.q3HJEqus3.1.MLgrTr8YRdEyz29aL8a', '1989-09-18', '0309592337', 346, 3, 46, 46),
(247, 'Johnny', 'Chadwick', 'Johnny_Chadwick2670@kideod.com', '$2y$10$1H4bWK59Dr7uLZbh9.N2gu8n89CVNxFGFuQvcITaeg1U6.2KZpkuO', '1980-03-23', '0147886963', 347, 3, 47, 47),
(248, 'Jackeline', 'Griffiths', 'Jackeline_Griffiths4124@elnee.tech', '$2y$10$neMgAoQyc4JDOBlWWl3tM..oMKvb6Ys6.IFEPGatYQLAtu9oJynzu', '1999-03-03', '0381238811', 348, 3, 48, 48),
(249, 'Alan', 'Callan', 'Alan_Callan6394@fuliss.net', '$2y$10$SX5.mq42skkdHGnw18La1.XBxwai7fYPMovDmROtP0C.b4iTwBP/a', '1995-03-18', '0123959436', 349, 3, 49, 49),
(250, 'Alma', 'Sawyer', 'Alma_Sawyer3706@gmail.com', '$2y$10$R6rCjMmb1JZIfE9pVdi2xe0iDs0..gn0bbbc.610dmOt8R6nbvvnC', '1971-04-05', '0719788550', 350, 3, 50, 50);

-- --------------------------------------------------------

--
-- Structure de la table `proposition`
--

DROP TABLE IF EXISTS `proposition`;
CREATE TABLE IF NOT EXISTS `proposition` (
  `id_proposition` int(11) NOT NULL AUTO_INCREMENT,
  `statut` varchar(16) NOT NULL,
  `date_proposition` date NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `commentaire` longtext NOT NULL,
  `id_bien` int(11) NOT NULL,
  `id_membre` int(11) NOT NULL,
  PRIMARY KEY (`id_proposition`),
  KEY `fk_proposition_biens1_idx` (`id_bien`),
  KEY `fk_proposition_membre1_idx` (`id_membre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

DROP TABLE IF EXISTS `statut`;
CREATE TABLE IF NOT EXISTS `statut` (
  `id_statut` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(16) NOT NULL,
  PRIMARY KEY (`id_statut`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `statut`
--

INSERT INTO `statut` (`id_statut`, `libelle`) VALUES
(1, 'A vendre'),
(2, 'Vendu');

-- --------------------------------------------------------

--
-- Structure de la table `type_bien`
--

DROP TABLE IF EXISTS `type_bien`;
CREATE TABLE IF NOT EXISTS `type_bien` (
  `id_type_bien` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(16) NOT NULL,
  PRIMARY KEY (`id_type_bien`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_bien`
--

INSERT INTO `type_bien` (`id_type_bien`, `libelle`) VALUES
(1, 'Villa'),
(2, 'Appartement');

-- --------------------------------------------------------

--
-- Structure de la table `type_document`
--

DROP TABLE IF EXISTS `type_document`;
CREATE TABLE IF NOT EXISTS `type_document` (
  `id_type_document` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(32) NOT NULL,
  PRIMARY KEY (`id_type_document`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_document`
--

INSERT INTO `type_document` (`id_type_document`, `libelle`) VALUES
(1, 'RIB'),
(2, 'Piece identitee'),
(3, 'Contrat');

-- --------------------------------------------------------

--
-- Structure de la table `type_membre`
--

DROP TABLE IF EXISTS `type_membre`;
CREATE TABLE IF NOT EXISTS `type_membre` (
  `id_type_membre` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(16) NOT NULL,
  PRIMARY KEY (`id_type_membre`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_membre`
--

INSERT INTO `type_membre` (`id_type_membre`, `libelle`) VALUES
(1, 'Acheteur'),
(2, 'Vendeur'),
(3, 'Acheteur/Vendeur');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `agence`
--
ALTER TABLE `agence`
  ADD CONSTRAINT `fk_agence_adresse1` FOREIGN KEY (`id_adresse`) REFERENCES `adresse` (`id_adresse`);

--
-- Contraintes pour la table `agent_immobilier`
--
ALTER TABLE `agent_immobilier`
  ADD CONSTRAINT `fk_agent_immobilier_adresse1` FOREIGN KEY (`id_adresse`) REFERENCES `adresse` (`id_adresse`),
  ADD CONSTRAINT `fk_agent_immobilier_agence1` FOREIGN KEY (`id_agence`) REFERENCES `agence` (`id_agence`);

--
-- Contraintes pour la table `biens`
--
ALTER TABLE `biens`
  ADD CONSTRAINT `fk_biens_adresse1` FOREIGN KEY (`id_adresse`) REFERENCES `adresse` (`id_adresse`),
  ADD CONSTRAINT `fk_biens_agence1` FOREIGN KEY (`id_agence`) REFERENCES `agence` (`id_agence`),
  ADD CONSTRAINT `fk_biens_membre1` FOREIGN KEY (`id_membre`) REFERENCES `membre` (`id_membre`),
  ADD CONSTRAINT `fk_biens_statut1` FOREIGN KEY (`id_statut`) REFERENCES `statut` (`id_statut`),
  ADD CONSTRAINT `fk_biens_type_bien1` FOREIGN KEY (`id_type_bien`) REFERENCES `type_bien` (`id_type_bien`);

--
-- Contraintes pour la table `dependance`
--
ALTER TABLE `dependance`
  ADD CONSTRAINT `fk_dependance_biens1` FOREIGN KEY (`id_bien`) REFERENCES `biens` (`id_bien`);

--
-- Contraintes pour la table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `fk_documents_agent_immobilier1` FOREIGN KEY (`id_agent`) REFERENCES `agent_immobilier` (`id_agent`),
  ADD CONSTRAINT `fk_documents_biens1` FOREIGN KEY (`id_bien`) REFERENCES `biens` (`id_bien`),
  ADD CONSTRAINT `fk_documents_membre1` FOREIGN KEY (`id_membre`) REFERENCES `membre` (`id_membre`),
  ADD CONSTRAINT `fk_documents_type_document1` FOREIGN KEY (`id_type_document`) REFERENCES `type_document` (`id_type_document`);

--
-- Contraintes pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD CONSTRAINT `fk_membre_has_biens_biens1` FOREIGN KEY (`id_bien`) REFERENCES `biens` (`id_bien`),
  ADD CONSTRAINT `fk_membre_has_biens_membre1` FOREIGN KEY (`id_membre`) REFERENCES `membre` (`id_membre`);

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `fk_image_biens` FOREIGN KEY (`id_bien`) REFERENCES `biens` (`id_bien`);

--
-- Contraintes pour la table `membre`
--
ALTER TABLE `membre`
  ADD CONSTRAINT `fk_membre_adresse1` FOREIGN KEY (`id_adresse`) REFERENCES `adresse` (`id_adresse`),
  ADD CONSTRAINT `fk_membre_agence1` FOREIGN KEY (`id_agence`) REFERENCES `agence` (`id_agence`),
  ADD CONSTRAINT `fk_membre_agent_immobilier1` FOREIGN KEY (`id_agent`) REFERENCES `agent_immobilier` (`id_agent`),
  ADD CONSTRAINT `fk_membre_type_membre1` FOREIGN KEY (`id_type_membre`) REFERENCES `type_membre` (`id_type_membre`);

--
-- Contraintes pour la table `proposition`
--
ALTER TABLE `proposition`
  ADD CONSTRAINT `fk_proposition_biens1` FOREIGN KEY (`id_bien`) REFERENCES `biens` (`id_bien`),
  ADD CONSTRAINT `fk_proposition_membre1` FOREIGN KEY (`id_membre`) REFERENCES `membre` (`id_membre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
