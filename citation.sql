-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  ven. 17 avr. 2020 à 08:33
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `citation`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `id` int(10) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `biographique` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`id`, `name`, `description`, `img`, `biographique`) VALUES
(32, 'Victor Hugo', 'On passe une moitié de sa vie à attendre ceux qu\'on aimera et l\'autre moitié à quitter ceux qu\'on aime.', 'Victor Hugo.jpg', 'Artiste, écrivain, Poète, Romancier (1802 - 1885)'),
(33, 'Gandhi', 'La vie est un mystère qu\'il faut vivre, et non un problème à résoudre.', 'Gandhi.jpg', 'Homme politique, Philosophe (1869 - 1948)'),
(34, 'Albert Einstein', 'La vie, c\'est comme une bicyclette, il faut avancer pour ne pas perdre l\'équilibre.', 'Albert Einstein.jpg', 'Mathématicien, Physicien, Scientifique (1879 - 1955)'),
(35, 'Friedrich Nietzsche', 'Dans la vengeance et en amour, la femme est plus barbare que l\'homme.', 'Friedrich Nietzsche.jpg', 'Artiste, écrivain, Philosophe (1844 - 1900)'),
(36, 'Coco Chanel', 'La mode se démode, le style jamais.', 'Coco Chanel.jpg', 'Artiste, Couturière (1883 - 1971)'),
(37, 'Charlie Chaplin', 'L\'obstination est le chemin de la réussite.', 'Charlie Chaplin.jpg', 'Acteur, Artiste, Cinéaste, Scénariste (1889 - 1977)');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
