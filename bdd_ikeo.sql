-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8081
-- Generation Time: Jan 13, 2022 at 02:05 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdd_ikeo`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id_client` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `nom_client` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `id_pays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id_client`, `type`, `nom_client`, `adresse`, `ville`, `id_pays`) VALUES
(1, 'Magasin', 'Bo Meuble', 'Place Vendôme ', 'Paris ', 6),
(2, 'Magasin ', 'Mobel ', 'Porte de Brandebourg ', 'Berlin', 1),
(3, 'Magasin ', 'Bo Meuble ', 'Rue Jean Jaurès ', 'Brest ', 6),
(4, 'Magasin', 'Magasin Tout A La Maison', 'Rue de la Bastille', 'Paris ', 6),
(5, 'Magasin ', 'Bo Meuble', ' Avenue des Trois Dragons ', 'Barcelone', 8),
(6, 'Central d\'achat ', 'The World Compagny ', 'Oxford street ', 'Londres', 2),
(7, 'Magasin ', 'The Best Greatest Beautifulest Furniture ', 'Coven Garden ', 'Londres', 2);

-- --------------------------------------------------------

--
-- Table structure for table `concerne`
--

CREATE TABLE `concerne` (
  `id_produit` int(11) NOT NULL,
  `id_facture` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contient`
--

CREATE TABLE `contient` (
  `id_produit` int(11) NOT NULL,
  `id_quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `factures`
--

CREATE TABLE `factures` (
  `id_facture` int(11) NOT NULL,
  `numero` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `nom_client` varchar(50) NOT NULL,
  `nom_produit` varchar(50) NOT NULL,
  `id_client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `factures`
--

INSERT INTO `factures` (`id_facture`, `numero`, `date`, `nom_client`, `nom_produit`, `id_client`) VALUES
(1, 'MSQ291 ', '15/06/2018 ', 'Bo Meuble', 'Knutsen, Moen, Eide', 1),
(2, 'MSQ292 ', '23/06/2018', 'Bo Meuble', 'Ruud, Gulbrandsen', 5),
(3, 'MSQ293 ', '23/06/2018', 'The World Compagny', 'Eide, Naess, Lund, Gulbrandsen,  Apfelgluk, Dahl ', 6),
(8, 'MSQ294 ', '28/06/2018 ', 'Bo Meuble ', 'Knutsen, Moen, Lund', 1),
(9, 'MSQ295 ', '01/07/2018 ', 'Tout A La Maison', 'Knutsen, Dahl', 4),
(10, 'MSQ296 ', '04/07/2018', 'The Best Greatest Beautifulest Furniture', 'Moen, Naess, Lund', 7),
(11, 'MSQ297 ', '12/07/2018 ', 'Mobel', 'Gulbrandsen, Naess, Lund', 2);

-- --------------------------------------------------------

--
-- Table structure for table `localisation`
--

CREATE TABLE `localisation` (
  `id_pays` int(11) NOT NULL,
  `nom_pays` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `localisation`
--

INSERT INTO `localisation` (`id_pays`, `nom_pays`, `ville`) VALUES
(1, 'Allemagne', 'Berlin'),
(2, 'Angleterre', 'Londres'),
(3, 'Norvège', 'Oslo'),
(4, 'Norvège', 'Bergen'),
(5, 'Norvège', 'Trondheim'),
(6, 'France', 'Paris'),
(7, 'France', 'Brest'),
(8, 'Espagne', 'Barcelone');

-- --------------------------------------------------------

--
-- Table structure for table `produire`
--

CREATE TABLE `produire` (
  `id_site_production` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `produits`
--

CREATE TABLE `produits` (
  `id_produit` int(11) NOT NULL,
  `nom_produit` varchar(50) NOT NULL,
  `ref_produit` varchar(50) NOT NULL,
  `description_produit` varchar(50) NOT NULL,
  `abandonne` varchar(50) NOT NULL,
  `nom_usine` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produits`
--

INSERT INTO `produits` (`id_produit`, `nom_produit`, `ref_produit`, `description_produit`, `abandonne`, `nom_usine`) VALUES
(1, 'Knutsen ', 'OANT72 ', 'Table basse pour poser les bières', 'Non', 'Harald, Sverre'),
(2, 'Moen ', 'OANT34 ', 'Chaise haute de bar ', 'Oui ', 'Harald, Sverre'),
(3, 'Eide ', 'OANT67 ', 'Porte-serviettes pour 100 serviettes ', 'Non ', 'Harald, Olaf'),
(4, 'Gulbrandsen ', 'LXAL34 ', 'Lit nuage en lévitation ', 'Non', 'Olaf'),
(5, 'Naess ', 'LXAL56 ', 'Table 128 convives ', 'Non ', 'Haral, Sverre, Olaf'),
(6, 'Lund', ' LXAL78 ', 'Bureau-cafetière électrique ', 'Non', 'Haral, Olaf'),
(7, 'Dahl ', 'LXAL12 ', 'Tiroir à ronds de serviette ', 'Oui ', 'Sverre, Olaf'),
(8, 'Ruud ', 'OANT90 ', 'Bureau-lit conbiné ', 'Non ', 'Olaf'),
(9, 'Apfelgluk ', 'OANT12 ', 'Panier à chien (ou à chat) ', 'Non ', 'Olaf');

-- --------------------------------------------------------

--
-- Table structure for table `quantite`
--

CREATE TABLE `quantite` (
  `id_quantite` int(11) NOT NULL,
  `id_client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sites_productions`
--

CREATE TABLE `sites_productions` (
  `id_site_production` int(11) NOT NULL,
  `nom_usine` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `id_pays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sites_productions`
--

INSERT INTO `sites_productions` (`id_site_production`, `nom_usine`, `adresse`, `ville`, `id_pays`) VALUES
(1, 'Harald ', 'Quai Pipervika ', 'Oslo', 3),
(2, 'Sverre ', 'Rue Strangehagen ', 'Bergen', 3),
(3, 'Olaf ', 'Place Nidaros', 'Trondheim', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`),
  ADD KEY `id_pays` (`id_pays`);

--
-- Indexes for table `concerne`
--
ALTER TABLE `concerne`
  ADD PRIMARY KEY (`id_produit`),
  ADD KEY `id_facture` (`id_facture`);

--
-- Indexes for table `contient`
--
ALTER TABLE `contient`
  ADD PRIMARY KEY (`id_produit`),
  ADD KEY `id_quantite` (`id_quantite`);

--
-- Indexes for table `factures`
--
ALTER TABLE `factures`
  ADD PRIMARY KEY (`id_facture`),
  ADD KEY `id_client` (`id_client`);

--
-- Indexes for table `localisation`
--
ALTER TABLE `localisation`
  ADD PRIMARY KEY (`id_pays`);

--
-- Indexes for table `produire`
--
ALTER TABLE `produire`
  ADD PRIMARY KEY (`id_site_production`),
  ADD KEY `id_produit` (`id_produit`),
  ADD KEY `id_produit_2` (`id_produit`);

--
-- Indexes for table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id_produit`);

--
-- Indexes for table `quantite`
--
ALTER TABLE `quantite`
  ADD PRIMARY KEY (`id_quantite`),
  ADD KEY `id_client` (`id_client`);

--
-- Indexes for table `sites_productions`
--
ALTER TABLE `sites_productions`
  ADD PRIMARY KEY (`id_site_production`),
  ADD KEY `id_pays` (`id_pays`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `concerne`
--
ALTER TABLE `concerne`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contient`
--
ALTER TABLE `contient`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `factures`
--
ALTER TABLE `factures`
  MODIFY `id_facture` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `localisation`
--
ALTER TABLE `localisation`
  MODIFY `id_pays` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `produire`
--
ALTER TABLE `produire`
  MODIFY `id_site_production` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produits`
--
ALTER TABLE `produits`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quantite`
--
ALTER TABLE `quantite`
  MODIFY `id_quantite` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sites_productions`
--
ALTER TABLE `sites_productions`
  MODIFY `id_site_production` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_ibfk_2` FOREIGN KEY (`id_pays`) REFERENCES `localisation` (`id_pays`);

--
-- Constraints for table `concerne`
--
ALTER TABLE `concerne`
  ADD CONSTRAINT `concerne_ibfk_1` FOREIGN KEY (`id_produit`) REFERENCES `produits` (`id_produit`),
  ADD CONSTRAINT `concerne_ibfk_2` FOREIGN KEY (`id_facture`) REFERENCES `factures` (`id_facture`);

--
-- Constraints for table `contient`
--
ALTER TABLE `contient`
  ADD CONSTRAINT `contient_ibfk_1` FOREIGN KEY (`id_produit`) REFERENCES `produits` (`id_produit`),
  ADD CONSTRAINT `contient_ibfk_2` FOREIGN KEY (`id_quantite`) REFERENCES `quantite` (`id_quantite`);

--
-- Constraints for table `factures`
--
ALTER TABLE `factures`
  ADD CONSTRAINT `factures_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id_client`);

--
-- Constraints for table `produire`
--
ALTER TABLE `produire`
  ADD CONSTRAINT `produire_ibfk_1` FOREIGN KEY (`id_site_production`) REFERENCES `sites_productions` (`id_site_production`),
  ADD CONSTRAINT `produire_ibfk_2` FOREIGN KEY (`id_produit`) REFERENCES `produits` (`id_produit`);

--
-- Constraints for table `quantite`
--
ALTER TABLE `quantite`
  ADD CONSTRAINT `quantite_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id_client`),
  ADD CONSTRAINT `quantite_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id_client`);

--
-- Constraints for table `sites_productions`
--
ALTER TABLE `sites_productions`
  ADD CONSTRAINT `sites_productions_ibfk_2` FOREIGN KEY (`id_pays`) REFERENCES `localisation` (`id_pays`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
