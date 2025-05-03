-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 17 déc. 2024 à 20:09
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `animal`
--

CREATE TABLE `animal` (
  `id` int(11) NOT NULL,
  `sexe` char(1) NOT NULL,
  `date_naissance` datetime NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `commentaires` text DEFAULT NULL,
  `espece_id` smallint(5) UNSIGNED DEFAULT NULL,
  `race_id` smallint(5) UNSIGNED DEFAULT NULL,
  `mere_id` int(11) DEFAULT NULL,
  `pere_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `animal`
--

INSERT INTO `animal` (`id`, `sexe`, `date_naissance`, `nom`, `commentaires`, `espece_id`, `race_id`, `mere_id`, `pere_id`) VALUES
(1, 'F', '2008-02-20 15:45:00', 'Canaille', NULL, 1, 1, 18, 22),
(2, 'F', '2009-05-26 08:54:00', 'Cali', NULL, 1, NULL, NULL, NULL),
(3, 'F', '2007-04-24 12:54:00', 'Rouquine', NULL, 1, 4, NULL, NULL),
(4, 'F', '2009-05-26 08:56:00', 'Fila', NULL, 1, NULL, NULL, NULL),
(5, 'F', '2008-02-20 15:47:00', 'Anya', NULL, 1, NULL, NULL, NULL),
(6, 'F', '2009-05-26 08:50:00', 'Louya', NULL, 1, NULL, NULL, NULL),
(7, 'F', '2008-03-10 13:45:00', 'Welva', NULL, 1, 2, NULL, NULL),
(8, 'F', '2007-04-24 12:59:00', 'Zira', NULL, 1, 5, NULL, NULL),
(9, 'F', '2009-05-26 09:02:00', 'Java', NULL, 1, NULL, NULL, NULL),
(10, 'M', '2007-04-24 12:45:00', 'Balou', NULL, 1, NULL, 7, 21),
(11, 'M', '2008-03-10 13:43:00', 'Pataud', NULL, 1, NULL, NULL, NULL),
(12, 'M', '2007-04-24 12:42:00', 'Bouli', NULL, 1, 2, NULL, NULL),
(13, 'M', '2009-03-05 13:54:00', 'Zoulou', NULL, 1, 1, NULL, NULL),
(14, 'M', '2007-04-12 05:23:00', 'Cartouche', NULL, 1, 2, NULL, NULL),
(15, 'M', '2006-05-14 15:50:00', 'Zambo', NULL, 1, NULL, NULL, NULL),
(16, 'M', '2006-05-14 15:48:00', 'Samba', NULL, 1, NULL, NULL, NULL),
(17, 'M', '2008-03-10 13:40:00', 'Moka', NULL, 1, 3, NULL, NULL),
(18, 'M', '2006-05-14 15:40:00', 'Pilou', NULL, 1, 1, NULL, NULL),
(19, 'M', '2009-05-14 06:30:00', 'Fiero', NULL, 2, 2, NULL, NULL),
(20, 'M', '2007-03-12 12:05:00', 'Zonko', NULL, 2, 1, NULL, NULL),
(21, 'M', '2008-02-20 15:45:00', 'Filou', NULL, 2, 3, NULL, NULL),
(22, 'M', '2007-03-12 12:07:00', 'Farceur', NULL, 2, 1, NULL, NULL),
(23, 'M', '2006-05-19 16:17:00', 'Caribou', NULL, 2, 3, NULL, NULL),
(24, 'M', '2008-04-20 03:22:00', 'Capou', 'Blanc a 20%', 2, NULL, NULL, NULL),
(25, 'M', '2006-05-19 16:56:00', 'Raccou', 'Pas de queue depuis la naissance', 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `espece`
--

CREATE TABLE `espece` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nom_courant` varchar(40) NOT NULL,
  `nom_latin` varchar(40) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `espece`
--

INSERT INTO `espece` (`id`, `nom_courant`, `nom_latin`, `description`) VALUES
(1, 'Chien', 'Canis canis', 'Bestiole à quatre pattes qui aime les caresses et tire souvent la langue'),
(2, 'Chat', 'Felis silvestris', 'Bestiole à quatre pattes qui saute très haut et grimpe aux arbres'),
(3, 'Tortue d\'Hermann', 'Testudo hermanni', 'Bestiole avec une carapace très dure'),
(4, 'Perroquet amazone', 'Alipiopsitta xanthops', 'Joli oiseau parleur vert et jaune');

-- --------------------------------------------------------

--
-- Structure de la table `race`
--

CREATE TABLE `race` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nom` varchar(40) NOT NULL,
  `espece_id` smallint(5) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `race`
--

INSERT INTO `race` (`id`, `nom`, `espece_id`, `description`) VALUES
(1, 'Berger allemand', 1, 'Chien sportif et élégant au pelage dense, noir-marron-fauve, noir ou gris.'),
(2, 'Berger blanc suisse', 1, 'Petit chien au corps compact, avec des pattes courtes mais bien proportionnées et au pelage tricolore ou bicolore.'),
(3, 'Boxer', 1, 'Chien de taille moyenne, au poil ras de couleur fauve ou bringé avec quelques marques blanches.'),
(4, 'Bleu russe', 2, 'Chat aux yeux verts et à la robe épaisse et argentée.'),
(5, 'Maine coon', 2, 'Chat de grande taille, à poils mi-longs.'),
(6, 'Singapura', 2, 'Chat de petite taille aux grands yeux en amandes.'),
(7, 'Sphynx', 2, 'Chat sans poils.');

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

CREATE TABLE `student` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `matricule` varchar(15) DEFAULT NULL,
  `nom` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_espece_id` (`espece_id`),
  ADD KEY `fk_race_id` (`race_id`),
  ADD KEY `fk_mere_id` (`mere_id`),
  ADD KEY `fk_pere_id` (`pere_id`);
ALTER TABLE `animal` ADD FULLTEXT KEY `commentaires` (`commentaires`);
ALTER TABLE `animal` ADD FULLTEXT KEY `commentaires_2` (`commentaires`);

--
-- Index pour la table `espece`
--
ALTER TABLE `espece`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom_latin` (`nom_latin`);

--
-- Index pour la table `race`
--
ALTER TABLE `race`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_race_espece_id` (`espece_id`);

--
-- Index pour la table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matricule` (`matricule`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `animal`
--
ALTER TABLE `animal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `espece`
--
ALTER TABLE `espece`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `race`
--
ALTER TABLE `race`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `student`
--
ALTER TABLE `student`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `fk_espece_id` FOREIGN KEY (`espece_id`) REFERENCES `espece` (`id`),
  ADD CONSTRAINT `fk_mere_id` FOREIGN KEY (`mere_id`) REFERENCES `animal` (`id`),
  ADD CONSTRAINT `fk_pere_id` FOREIGN KEY (`pere_id`) REFERENCES `animal` (`id`),
  ADD CONSTRAINT `fk_race_id` FOREIGN KEY (`race_id`) REFERENCES `race` (`id`);

--
-- Contraintes pour la table `race`
--
ALTER TABLE `race`
  ADD CONSTRAINT `fk_race_espece_id` FOREIGN KEY (`espece_id`) REFERENCES `espece` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
