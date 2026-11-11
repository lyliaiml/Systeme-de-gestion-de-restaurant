-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 21 déc. 2025 à 21:31
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `restaurant_bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `paye` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom`, `prenom`, `adresse`, `paye`) VALUES
(1, 'SCARLETT', 'DAMON', '3 Rue Lafayette, Limoges', 1),
(2, 'JOHANSSON', 'MATTHEW', '30 Avenue Garibaldi, Limoges', 1),
(3, 'JOHANSSON', 'REY', '30 Avenue Garibaldi, Limoges', 1),
(4, 'JOHANSSON', 'ALBERT', '30 Avenue Garibaldi, Limoges', 0),
(5, 'NICK', 'WAHLBERG', '123 Avenue Albert Thomas, Limoges', 1),
(6, 'JENNIFER', 'DAVIS', '80 Avenue Gambetta, Limoges', 1),
(7, 'JOHNNY', 'LOLLOBRIGIDA', '12 Avenue de la liberte, Limoges', 1),
(8, 'BETTE', 'NICHOLSON', '3 Rue Lafayette, Limoges', 1),
(9, 'SANDRA', 'KILMER', '35 Rue de corgnac, Limoges', 1),
(10, 'CAMERON', 'STREEP', '12 Boulevard Wilson, Limoges', 1),
(11, 'RIP', 'CRAWFORD', '35 Rue de la loi, Limoges', 1),
(12, 'VAL', 'BOLGER', '18 Rue de lhopital, Limoges', 1),
(13, 'VACHER', 'JEREMY', '15 Rue des Fleurs, Limoges', 0),
(14, 'HEINICH', 'SUFAN', '22 Avenue Centrale, Limoges', 0),
(15, 'MOREAU', 'MATEO', '8 Boulevard Nord, Limoges', 0),
(16, 'JODIE', 'DEGENERES', '5 Rue des Lilas, Limoges', 1),
(17, 'TOM', 'MIRANDA', '3 Rue Lafayette, Limoges', 1),
(18, 'JULIA', 'BARRYMORE', '3 Rue Lafayette, Limoges', 1),
(19, 'CAMERON', 'WRAY', '3 Rue Lafayette, Limoges', 1),
(20, 'LISA', 'MONROE', '7 Boulevard Jean Jaurès, Limoges', 1),
(21, 'RUSSELL', 'CLOSE', '40 Boulevard Jean Jaurès, Limoges', 1),
(22, 'CHRISTOPHER', 'WEST', 'Limoges', 1),
(23, 'HUMPHREY', 'WILLIS', '3 Rue de la boucherie, Limoges', 0),
(24, 'MENA', 'HOPPER', '12 Rue des Combes, Limoges', 1),
(25, 'OLYMPIA', 'PFEIFFER', '12 Avenue du Midi, Limoges', 1),
(26, 'ALAN', 'DREYFUSS', '25 Chemin dantony, Limoges', 1),
(27, 'CHRISTIAN', 'GABLE', '58 Boulevard de la Borie, Limoges', 1),
(28, 'JOE', 'SWANK', '55 Rue des Combes, Limoges', 1);

-- --------------------------------------------------------

--
-- Structure de la table `clients_impayes`
--

CREATE TABLE `clients_impayes` (
  `id_client` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `date_creation` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

CREATE TABLE `ingredient` (
  `nom_ingredient` varchar(50) NOT NULL,
  `unite_de_mesure` varchar(20) DEFAULT NULL,
  `quantite_en_stock` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`nom_ingredient`, `unite_de_mesure`, `quantite_en_stock`) VALUES
('Ail', 'kg', 1.20),
('Amandes effilées', 'kg', 0.60),
('anchois', 'kg', 10.50),
('Aneth', 'g', 200.00),
('Asperges vertes', 'kg', 3.00),
('Betterave', 'kg', 3.50),
('beurre', 'kg', 10.50),
('Beurre blanc', 'l', 2.00),
('Beurre demi-sel', 'kg', 2.00),
('Beurre salé', 'kg', 2.00),
('Boeuf filet mignon', 'kg', 2.00),
('Bouquet garni', 'unite', 20.00),
('Cannelle', 'g', 500.00),
('Câpres', 'g', 300.00),
('Caramel', 'kg', 1.20),
('Carottes', 'kg', 1.50),
('Carré d\'agneau', 'kg', 5.00),
('Champignons sauvages', 'kg', 2.50),
('Chèvre frais', 'kg', 2.80),
('chips de bacon', 'kg', 10.50),
('Choucroute', 'kg', 4.50),
('Citron', 'unite', 20.00),
('Citron vert', 'unite', 30.00),
('Cornichons', 'kg', 2.50),
('Courgettes', 'kg', 1.50),
('Crème fleurette', 'l', 1.50),
('Crème fraîche	', 'l', 10.50),
('Crème liquide', 'l', 3.00),
('croûtons', 'g', 1200.50),
('Cuisses de canard', 'kg', 6.00),
('Cœur de rumsteak', 'kg', 1.50),
('Farine', 'kg', 3.00),
('Filet de bœuf', 'kg', 7.50),
('Foie gras', 'kg', 1.20),
('Fond de veau', 'l', 1.50),
('Fromage cheddar', 'tranches', 25.00),
('Gambas', 'kg', 4.00),
('Gousses de vanille', 'unite', 12.00),
('haricots verts', 'kg', 10.50),
('Herbes de Provence', 'g', 500.00),
('Homard', 'kg', 3.00),
('huile d\'olive', 'kg', 10.50),
('Huile végétale', 'l', 3.00),
('Jus de citron', 'l', 1.00),
('Ketchup', 'l', 1.50),
('Lait', 'l', 2.50),
('Lard fumé', 'kg', 2.00),
('lardons', 'kg', 10.50),
('Laurier', 'g', 150.00),
('lotte', 'kg', 0.05),
('Mangue', 'kg', 4.20),
('mayonnaise', 'kg', 10.50),
('Meringue', 'kg', 1.50),
('Miel', 'kg', 0.80),
('Moutarde', 'l', 1.50),
('noix', 'kg', 10.50),
('Noix de muscade', 'g', 100.00),
('Noix de pécan', 'kg', 1.50),
('oeuf', 'unite', 10.00),
('Oignon', 'kg', 3.00),
('Pain', 'unite', 25.00),
('Pain à burger	', 'pains', 10.50),
('Pain brioché', 'unite', 15.00),
('parmesan', 'g', 100.00),
('Pastis', 'l', 1.50),
('Pâte brisée', 'kg', 1.80),
('Persil frais	', 'g', 100.50),
('Pied de porc', 'kg', 2.80),
('Pistache', 'kg', 0.80),
('Poireaux', 'kg', 1.50),
('poivre', 'kg', 10.50),
('poivrons', 'kg', 10.50),
('pomme de terre', 'kg', 25.50),
('Potimarron', 'kg', 8.00),
('poulet en aiguilette', 'kg', 10.50),
('Quinoa', 'kg', 4.00),
('riz', 'kg', 10.50),
('Riz Arborio', 'kg', 3.80),
('Romarin', 'g', 300.00),
('safran', 'kg', 10.50),
('Saint-Jacques', 'kg', 2.50),
('salade verte', 'kg', 3.50),
('sauce cesar', 'kg', 10.50),
('sauce Roquefort', 'kg', 10.50),
('Saucisses de Strasbourg', 'kg', 3.20),
('Saumon frais', 'kg', 6.50),
('sel', 'kg', 10.50),
('steack', 'kg', 10.50),
('Sucre', 'kg', 1.00),
('Sucre glace', 'kg', 1.70),
('Sucre vanillé', 'kg', 1.40),
('Tagliatelles', 'kg', 3.00),
('thon', 'kg', 10.50),
('thym', 'kg', 10.50),
('toasts de chevre', 'kg', 10.50),
('tomate', 'kg', 9.50),
('tomates confites', 'kg', 10.50),
('tomtes cerises', 'kg', 10.50),
('Topinambour', 'kg', 2.00),
('Truffe noire', 'g', 300.00),
('Turbot', 'kg', 4.50),
('Viande hachée', 'kg', 3.50),
('Vin blanc', 'l', 3.00),
('Vin rouge', 'l', 2.00),
('Vinaigre balsamique', 'l', 2.00),
('Vinaigre de vin', 'l', 1.50),
('volaille', 'kg', 10.50);

-- --------------------------------------------------------

--
-- Structure de la table `plat`
--

CREATE TABLE `plat` (
  `id_plat` int(11) NOT NULL,
  `nom_plat` varchar(100) DEFAULT NULL,
  `prix` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `plat`
--

INSERT INTO `plat` (`id_plat`, `nom_plat`, `prix`) VALUES
(1, 'L\'œuf mayonnaise', 7.00),
(2, 'Terrine de volaille aux petits légumes', 7.50),
(3, 'Velouté de potimaron et crème truffée', 9.00),
(4, 'Tartare de saumon à l\'aneth et citron vert', 12.00),
(5, 'Salade César', 9.50),
(6, 'Salade Niçoise', 14.80),
(7, 'Salade de quinoa, betterave et chèvre frais', 12.00),
(8, 'Salade de homard et mangue', 21.00),
(9, 'Salade d\'asperges vertes,parmesan et noix de pécan', 13.00),
(10, 'Filet de bœuf Rossini, foie gras et truffe noire', 35.00),
(11, 'Carré d\'agneau rôti aux herbes, jus de romarin', 28.00),
(12, 'Gambas flambées au pastis', 24.00),
(13, 'Risotto aux champignons sauvages et parmesan', 22.00),
(14, 'Cheeseburger classique', 17.00),
(15, 'Cœur de rumsteak sauce poivre', 19.00),
(16, 'Carpaccio de bœuf', 16.50),
(17, 'Confit de canard', 17.00),
(18, 'Choucroute alsacienne', 17.00),
(19, 'Pied de porc', 15.00),
(20, 'Turbot rôti au beurre blanc', 28.00),
(21, 'Lotte au beurre', 25.00),
(22, 'Tagliatelles au saumon', 14.80),
(23, 'Saint-Jacques poêlées,purée de topinambour', 26.00),
(24, 'Moelleux au caramel beurre salé', 8.00),
(25, 'Tarte au citron meringuée', 8.00),
(26, 'Crème brulée à la pistache', 8.00),
(27, 'Pain perdu au miel et amandes', 8.50);

-- --------------------------------------------------------

--
-- Structure de la table `plat_ingredient`
--

CREATE TABLE `plat_ingredient` (
  `id_plat` int(11) NOT NULL,
  `nom_ingredient` varchar(50) NOT NULL,
  `quantite_a_utiliser` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `plat_ingredient`
--

INSERT INTO `plat_ingredient` (`id_plat`, `nom_ingredient`, `quantite_a_utiliser`) VALUES
(1, 'mayonnaise', 0.03),
(1, 'oeuf', 2.00),
(1, 'sel', 0.01),
(2, 'Carottes', 0.10),
(2, 'Courgettes', 0.10),
(2, 'Poireaux', 0.10),
(2, 'sel', 0.01),
(2, 'volaille', 0.25),
(3, 'Crème fraîche	', 0.10),
(3, 'Potimarron', 0.25),
(3, 'Truffe noire', 2.00),
(4, 'Aneth', 1.00),
(4, 'Citron vert', 1.00),
(4, 'Saumon frais', 0.20),
(4, 'sel', 0.01),
(5, 'croûtons', 30.00),
(5, 'parmesan', 10.00),
(5, 'poulet en aiguilette', 0.12),
(5, 'salade verte', 0.15),
(5, 'sauce cesar', 0.05),
(6, 'anchois', 0.03),
(6, 'oeuf', 2.00),
(6, 'salade verte', 0.10),
(6, 'Thon', 0.15),
(6, 'tomate', 0.15),
(7, 'Betterave', 0.15),
(7, 'Chèvre frais', 0.10),
(7, 'Quinoa', 0.10),
(8, 'Homard', 0.25),
(8, 'Mangue', 0.15),
(8, 'salade verte ', 0.10),
(9, 'Asperges vertes ', 0.15),
(9, 'noix ', 0.03),
(9, 'parmesan', 0.10),
(10, 'beurre', 0.25),
(10, 'Filet de bœuf', 0.20),
(10, 'Foie gras', 0.04),
(10, 'Truffe noire', 0.06),
(10, 'Vin rouge', 0.04),
(11, 'Carré d\'agneau', 0.30),
(11, 'Herbes de Provence', 1.00),
(11, 'Romarin', 1.00),
(12, 'Ail', 0.01),
(12, 'beurre', 0.02),
(12, 'Gambas', 0.22),
(12, 'Pastis', 0.22),
(12, 'Persil frais	', 2.00),
(13, 'Champignons sauvages', 0.20),
(13, 'Riz Arborio', 0.18),
(14, 'Cornichons', 0.02),
(14, 'Fromage cheddar', 2.00),
(14, 'Ketchup', 0.02),
(14, 'Moutarde', 0.01),
(14, 'Pain à burger	', 1.00),
(14, 'salade verte', 0.03),
(14, 'tomate', 0.05),
(14, 'Viande hachée', 0.15),
(15, 'beurre', 0.15),
(15, 'Crème fraiche	', 0.04),
(15, 'Cœur de rumsteak', 0.18),
(15, 'poivre', 0.08),
(15, 'Vin rouge', 0.03),
(16, 'Boeuf filet mignon', 0.15),
(16, 'huile d\'olive', 0.02),
(16, 'parmesan', 25.00),
(16, 'Vinaigre balsamique', 0.01),
(17, 'ail', 0.05),
(17, 'Cuisses de canard', 0.28),
(17, 'pomme de terre', 0.15),
(17, 'thym', 0.02),
(18, 'Choucroute', 0.25),
(18, 'Lard fumé', 0.08),
(18, 'pomme de terre', 0.12),
(18, 'Saucisses de Strasbourg', 0.15),
(19, 'Carottes', 0.06),
(19, 'oignon', 0.05),
(19, 'Pied de porc', 0.35),
(19, 'thym', 0.02),
(20, 'Beurre blanc', 0.05),
(20, 'Citron', 0.25),
(20, 'Turbot', 0.22),
(20, 'Vin blanc', 0.04),
(21, 'beurre', 0.04),
(21, 'Jus de citron', 0.15),
(21, 'lotte', 0.25),
(21, 'Persil frais	', 2.00),
(22, 'Aneth', 0.03),
(22, 'Crème liquide', 0.08),
(22, 'Saumon frais', 0.10),
(22, 'Tagliatelles', 0.14),
(22, 'Vin blanc', 0.04),
(23, 'beurre', 0.02),
(23, 'Crème fraîche	', 0.03),
(23, 'Persil frais	', 1.00),
(23, 'Saint-Jacques', 0.16),
(23, 'Topinambour', 0.20),
(24, 'Beurre salé', 0.06),
(24, 'Caramel', 0.04),
(24, 'Farine', 0.10),
(24, 'oeuf', 3.00),
(24, 'Sucre', 0.08),
(25, 'Citron', 2.00),
(25, 'Meringue', 0.08),
(25, 'oeuf', 4.00),
(25, 'Pâte brisée', 0.12),
(25, 'Sucre', 0.12),
(26, 'Crème fleurette', 0.20),
(26, 'Gousses de vanille', 0.50),
(26, 'oeuf', 4.00),
(26, 'Pistache', 0.03),
(26, 'Sucre', 0.07),
(27, 'Amandes effilées', 0.15),
(27, 'Cannelle', 0.01),
(27, 'Lait', 0.15),
(27, 'Miel', 0.03),
(27, 'oeuf', 2.00),
(27, 'Pain brioché', 3.00);

-- --------------------------------------------------------

--
-- Structure de la table `repas`
--

CREATE TABLE `repas` (
  `id_repas` int(11) NOT NULL,
  `date_repas` date NOT NULL,
  `heure_debut` time NOT NULL,
  `heure_fin` time NOT NULL,
  `id_table` int(11) NOT NULL,
  `id_serveur` int(11) NOT NULL,
  `id_client` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `repas`
--

INSERT INTO `repas` (`id_repas`, `date_repas`, `heure_debut`, `heure_fin`, `id_table`, `id_serveur`, `id_client`) VALUES
(1, '2025-11-04', '18:00:00', '19:30:00', 1, 1, 1),
(2, '2025-11-04', '18:00:00', '19:30:00', 1, 1, 2),
(3, '2025-11-04', '19:00:00', '23:00:00', 8, 2, 3),
(4, '2025-11-04', '19:00:00', '23:00:00', 8, 2, 4),
(5, '2025-11-04', '19:00:00', '23:00:00', 8, 2, 5),
(6, '2025-11-04', '19:00:00', '23:00:00', 8, 2, 6),
(7, '2025-11-04', '19:00:00', '22:00:00', 13, 4, 7),
(8, '2025-11-04', '19:00:00', '22:00:00', 13, 4, 8),
(9, '2025-11-04', '19:00:00', '22:00:00', 13, 4, 9),
(10, '2025-11-04', '19:00:00', '22:00:00', 13, 4, 10),
(11, '2025-11-04', '19:00:00', '22:00:00', 13, 4, 11),
(12, '2025-11-04', '19:00:00', '22:00:00', 13, 4, 12),
(13, '2025-11-04', '20:00:00', '21:30:00', 3, 7, 13),
(14, '2025-11-04', '20:00:00', '21:30:00', 3, 7, 14),
(15, '2025-11-04', '20:00:00', '22:30:00', 10, 1, 15),
(16, '2025-11-04', '20:00:00', '22:30:00', 10, 1, 16),
(17, '2025-11-04', '20:00:00', '22:30:00', 10, 1, 17),
(18, '2025-11-04', '20:00:00', '22:30:00', 10, 1, 18),
(19, '2025-11-04', '20:15:00', '22:30:00', 15, 8, 19),
(20, '2025-11-04', '20:15:00', '22:30:00', 15, 8, 20),
(21, '2025-11-04', '19:45:00', '22:00:00', 20, 5, 21),
(22, '2025-11-04', '19:45:00', '22:00:00', 20, 5, 22),
(23, '2025-11-04', '19:45:00', '22:00:00', 20, 5, 23),
(24, '2025-11-04', '19:45:00', '22:00:00', 20, 5, 24),
(25, '2025-11-05', '19:00:00', '23:00:00', 23, 1, 1),
(26, '2025-11-05', '19:00:00', '23:00:00', 23, 1, 2),
(27, '2025-11-05', '19:00:00', '23:00:00', 23, 1, 3),
(28, '2025-11-05', '19:00:00', '23:00:00', 23, 1, 4),
(29, '2025-11-05', '19:00:00', '23:00:00', 14, 1, 5),
(30, '2025-11-05', '19:00:00', '23:00:00', 14, 1, 6),
(31, '2025-11-05', '19:00:00', '23:00:00', 14, 1, 7),
(32, '2025-11-05', '19:00:00', '23:00:00', 14, 1, 8),
(33, '2025-11-05', '19:00:00', '22:00:00', 12, 2, 9),
(34, '2025-11-05', '19:00:00', '22:00:00', 12, 2, 10),
(35, '2025-11-05', '19:00:00', '22:00:00', 12, 2, 11),
(36, '2025-11-05', '19:00:00', '22:00:00', 12, 2, 12),
(37, '2025-11-05', '20:00:00', '22:30:00', 17, 4, 13),
(38, '2025-11-05', '20:00:00', '22:30:00', 17, 4, 14),
(39, '2025-11-05', '20:00:00', '22:30:00', 17, 4, 15),
(40, '2025-11-05', '20:00:00', '22:30:00', 17, 4, 16),
(41, '2025-11-05', '18:00:00', '20:30:00', 5, 1, 17),
(42, '2025-11-05', '18:00:00', '20:30:00', 5, 1, 18),
(43, '2025-11-05', '20:30:00', '23:00:00', 6, 3, 19),
(44, '2025-11-05', '20:30:00', '23:00:00', 6, 3, 20),
(45, '2025-11-06', '18:00:00', '20:30:00', 7, 6, 21),
(46, '2025-11-06', '18:00:00', '20:30:00', 7, 6, 22),
(47, '2025-11-06', '20:30:00', '23:00:00', 7, 7, 23),
(48, '2025-11-06', '20:30:00', '23:00:00', 7, 7, 24),
(49, '2025-11-06', '19:00:00', '20:30:00', 13, 4, 25),
(50, '2025-11-06', '19:00:00', '20:30:00', 13, 4, 26),
(51, '2025-11-06', '19:00:00', '20:30:00', 13, 4, 27),
(52, '2025-11-06', '19:45:00', '22:00:00', 24, 1, 1),
(53, '2025-11-06', '19:45:00', '22:00:00', 24, 1, 2),
(54, '2025-11-06', '18:45:00', '21:30:00', 16, 1, 3),
(55, '2025-11-06', '18:45:00', '21:30:00', 16, 1, 4),
(56, '2025-11-06', '21:00:00', '23:30:00', 9, 8, 5),
(57, '2025-11-06', '21:00:00', '23:30:00', 9, 8, 6),
(58, '2025-11-06', '21:00:00', '23:30:00', 9, 8, 7);

-- --------------------------------------------------------

--
-- Structure de la table `repas_plat`
--

CREATE TABLE `repas_plat` (
  `id_plat` int(11) NOT NULL,
  `id_repas` int(11) NOT NULL,
  `quantite` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `repas_plat`
--

INSERT INTO `repas_plat` (`id_plat`, `id_repas`, `quantite`) VALUES
(5, 1, 2.00),
(21, 1, 2.00),
(26, 1, 2.00),
(3, 2, 4.00),
(11, 2, 3.00),
(23, 2, 1.00),
(25, 2, 2.00),
(27, 2, 2.00),
(1, 3, 6.00),
(14, 3, 4.00),
(15, 3, 2.00),
(24, 3, 3.00),
(26, 3, 3.00),
(5, 4, 2.00),
(20, 4, 1.00),
(21, 4, 1.00),
(25, 4, 1.00),
(27, 4, 1.00),
(2, 5, 4.00),
(16, 5, 2.00),
(17, 5, 2.00),
(22, 5, 2.00),
(24, 5, 4.00),
(4, 6, 2.00),
(12, 6, 2.00),
(20, 6, 1.00),
(26, 6, 2.00),
(3, 7, 4.00),
(13, 7, 3.00),
(18, 7, 1.00),
(24, 7, 2.00),
(25, 7, 2.00),
(1, 8, 4.00),
(10, 8, 2.00),
(21, 8, 2.00),
(27, 8, 4.00),
(5, 9, 4.00),
(11, 9, 3.00),
(15, 9, 1.00),
(26, 9, 4.00),
(2, 10, 4.00),
(14, 10, 2.00),
(17, 10, 2.00),
(24, 10, 3.00),
(25, 10, 1.00),
(4, 11, 4.00),
(12, 11, 3.00),
(22, 11, 1.00),
(27, 11, 3.00),
(3, 12, 2.00),
(21, 12, 2.00),
(26, 12, 2.00),
(5, 13, 2.00),
(20, 13, 2.00),
(24, 13, 2.00),
(1, 14, 2.00),
(16, 14, 2.00),
(25, 14, 2.00),
(4, 15, 2.00),
(13, 15, 2.00),
(27, 15, 2.00),
(2, 16, 3.00),
(11, 16, 2.00),
(14, 16, 1.00),
(24, 16, 3.00),
(3, 17, 2.00),
(10, 17, 1.00),
(21, 17, 1.00),
(26, 17, 2.00),
(5, 18, 2.00),
(15, 18, 2.00),
(25, 18, 2.00),
(4, 19, 3.00),
(12, 19, 2.00),
(17, 19, 1.00),
(27, 19, 3.00),
(4, 20, 2.00),
(10, 20, 2.00),
(24, 20, 2.00),
(5, 21, 1.00),
(21, 21, 1.00),
(26, 21, 1.00),
(3, 22, 1.00),
(20, 22, 1.00),
(25, 22, 1.00),
(1, 23, 2.00),
(14, 23, 1.00),
(27, 23, 2.00),
(4, 24, 1.00),
(11, 24, 1.00),
(24, 24, 1.00),
(2, 25, 1.00),
(16, 25, 1.00),
(26, 25, 1.00),
(5, 26, 1.00),
(20, 26, 1.00),
(26, 26, 1.00),
(3, 27, 1.00),
(10, 27, 1.00),
(24, 27, 1.00),
(1, 28, 1.00),
(14, 28, 1.00),
(27, 28, 1.00),
(2, 29, 1.00),
(11, 29, 1.00),
(25, 29, 1.00),
(4, 30, 1.00),
(13, 30, 1.00),
(26, 30, 1.00),
(5, 31, 1.00),
(12, 31, 1.00),
(24, 31, 1.00),
(3, 32, 1.00),
(16, 32, 1.00),
(27, 32, 1.00),
(1, 33, 1.00),
(10, 33, 1.00),
(25, 33, 1.00),
(4, 34, 1.00),
(11, 34, 1.00),
(24, 34, 1.00),
(2, 35, 1.00),
(14, 35, 1.00),
(26, 35, 1.00),
(5, 36, 1.00),
(20, 36, 1.00),
(27, 36, 1.00),
(3, 37, 1.00),
(13, 37, 1.00),
(25, 37, 1.00),
(1, 38, 1.00),
(12, 38, 1.00),
(26, 38, 1.00),
(4, 39, 1.00),
(15, 39, 1.00),
(24, 39, 1.00),
(2, 40, 1.00),
(10, 40, 1.00),
(27, 40, 1.00),
(5, 41, 1.00),
(14, 41, 1.00),
(25, 41, 1.00),
(3, 42, 1.00),
(11, 42, 1.00),
(26, 42, 1.00),
(1, 43, 1.00),
(20, 43, 1.00),
(24, 43, 1.00),
(4, 44, 1.00),
(13, 44, 1.00),
(27, 44, 1.00),
(2, 45, 1.00),
(12, 45, 1.00),
(25, 45, 1.00),
(5, 46, 1.00),
(15, 46, 1.00),
(26, 46, 1.00),
(3, 47, 1.00),
(10, 47, 1.00),
(24, 47, 1.00),
(1, 48, 1.00),
(11, 48, 1.00),
(27, 48, 1.00),
(4, 49, 1.00),
(14, 49, 1.00),
(25, 49, 1.00),
(2, 50, 1.00),
(20, 50, 1.00),
(26, 50, 1.00),
(5, 51, 1.00),
(13, 51, 1.00),
(24, 51, 1.00),
(3, 52, 1.00),
(12, 52, 1.00),
(27, 52, 1.00),
(1, 53, 1.00),
(15, 53, 1.00),
(25, 53, 1.00),
(4, 54, 1.00),
(10, 54, 1.00),
(26, 54, 1.00),
(2, 55, 1.00),
(11, 55, 1.00),
(24, 55, 1.00),
(5, 56, 1.00),
(14, 56, 1.00),
(27, 56, 1.00),
(3, 57, 1.00),
(20, 57, 1.00),
(25, 57, 1.00),
(1, 58, 1.00),
(13, 58, 1.00),
(26, 58, 1.00);

-- --------------------------------------------------------

--
-- Structure de la table `serveur`
--

CREATE TABLE `serveur` (
  `id_serveur` int(11) NOT NULL,
  `nom_serveur` varchar(50) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `serveur`
--

INSERT INTO `serveur` (`id_serveur`, `nom_serveur`, `adresse`, `telephone`) VALUES
(1, 'Dupond', '10 Rue Victor Hugo, Limoges', '0612309678'),
(2, 'Durand', '23 Rue de Corgnac, Limoges', '0612311600'),
(3, 'Dussart', '6 Rue des lois, Limoges', '0612389601'),
(4, 'Bonnefoi', '3 Rue Lafayette, Limoges', '0612356609'),
(5, 'Ratnaud', '40 Rue Jean Jaures, Limoges', '0612390688'),
(6, 'Gatineau', '15 Rue Victor Hugo, Limoges', '0612367633'),
(7, 'Badana', '20 Boulevard Wilson, Limoges', '0612312655'),
(8, 'Maria', '18 Rue de hopital, Limoges', '0612300666'),
(9, 'Vaccon', '78 Rue Arman Dutreix, Limoges', '0612323690'),
(10, 'Duguet', '50 Avenue Garibaldi, Limoges', '0612344641');

-- --------------------------------------------------------

--
-- Structure de la table `table_restau`
--

CREATE TABLE `table_restau` (
  `id_table` int(11) NOT NULL,
  `nbr_prs_max` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `table_restau`
--

INSERT INTO `table_restau` (`id_table`, `nbr_prs_max`) VALUES
(1, 2),
(2, 4),
(3, 6),
(4, 6),
(5, 2),
(6, 2),
(7, 2),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 2),
(16, 2),
(17, 4),
(18, 8),
(19, 8),
(20, 4),
(21, 4),
(22, 2),
(23, 4),
(24, 4),
(25, 8);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `clients_impayes`
--
ALTER TABLE `clients_impayes`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`nom_ingredient`);

--
-- Index pour la table `plat`
--
ALTER TABLE `plat`
  ADD PRIMARY KEY (`id_plat`);

--
-- Index pour la table `plat_ingredient`
--
ALTER TABLE `plat_ingredient`
  ADD PRIMARY KEY (`id_plat`,`nom_ingredient`),
  ADD KEY `nom_ingredient` (`nom_ingredient`);

--
-- Index pour la table `repas`
--
ALTER TABLE `repas`
  ADD PRIMARY KEY (`id_repas`),
  ADD KEY `id_table` (`id_table`),
  ADD KEY `id_serveur` (`id_serveur`),
  ADD KEY `id_client` (`id_client`);

--
-- Index pour la table `repas_plat`
--
ALTER TABLE `repas_plat`
  ADD PRIMARY KEY (`id_repas`,`id_plat`),
  ADD KEY `id_plat` (`id_plat`);

--
-- Index pour la table `serveur`
--
ALTER TABLE `serveur`
  ADD PRIMARY KEY (`id_serveur`);

--
-- Index pour la table `table_restau`
--
ALTER TABLE `table_restau`
  ADD PRIMARY KEY (`id_table`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `plat`
--
ALTER TABLE `plat`
  MODIFY `id_plat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `repas`
--
ALTER TABLE `repas`
  MODIFY `id_repas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `serveur`
--
ALTER TABLE `serveur`
  MODIFY `id_serveur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `table_restau`
--
ALTER TABLE `table_restau`
  MODIFY `id_table` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `plat_ingredient`
--
ALTER TABLE `plat_ingredient`
  ADD CONSTRAINT `plat_ingredient_ibfk_1` FOREIGN KEY (`id_plat`) REFERENCES `plat` (`id_plat`),
  ADD CONSTRAINT `plat_ingredient_ibfk_2` FOREIGN KEY (`nom_ingredient`) REFERENCES `ingredient` (`nom_ingredient`);

--
-- Contraintes pour la table `repas`
--
ALTER TABLE `repas`
  ADD CONSTRAINT `repas_ibfk_1` FOREIGN KEY (`id_table`) REFERENCES `table_restau` (`id_table`),
  ADD CONSTRAINT `repas_ibfk_2` FOREIGN KEY (`id_serveur`) REFERENCES `serveur` (`id_serveur`),
  ADD CONSTRAINT `repas_ibfk_3` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`);

--
-- Contraintes pour la table `repas_plat`
--
ALTER TABLE `repas_plat`
  ADD CONSTRAINT `repas_plat_ibfk_1` FOREIGN KEY (`id_repas`) REFERENCES `repas` (`id_repas`),
  ADD CONSTRAINT `repas_plat_ibfk_2` FOREIGN KEY (`id_plat`) REFERENCES `plat` (`id_plat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
