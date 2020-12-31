-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 31 déc. 2020 à 12:05
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pokedex_symfo`
--

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20201015161849', '2020-10-15 16:19:06'),
('20201015162647', '2020-10-15 16:26:59');

-- --------------------------------------------------------

--
-- Structure de la table `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pv` int(11) NOT NULL,
  `attack` int(11) NOT NULL,
  `defense` int(11) NOT NULL,
  `attack_spe` int(11) NOT NULL,
  `defense_spe` int(11) NOT NULL,
  `speed` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pokemon`
--

INSERT INTO `pokemon` (`id`, `name`, `pv`, `attack`, `defense`, `attack_spe`, `defense_spe`, `speed`, `number`, `created_at`, `updated_at`) VALUES
(1209, 'Bulbizarre', 45, 49, 49, 65, 65, 45, 1, '2020-10-15 16:46:47', '2020-12-30 16:25:16'),
(1210, 'Herbizarre', 60, 62, 63, 80, 80, 60, 2, '2020-10-15 16:46:47', NULL),
(1211, 'Florizarre', 80, 82, 83, 100, 100, 80, 3, '2020-10-15 16:46:47', NULL),
(1212, 'Salameche', 39, 52, 43, 60, 50, 65, 4, '2020-10-15 16:46:47', NULL),
(1213, 'Reptincel', 58, 64, 58, 80, 65, 80, 5, '2020-10-15 16:46:47', NULL),
(1214, 'Dracaufeu', 78, 84, 78, 109, 85, 100, 6, '2020-10-15 16:46:47', NULL),
(1215, 'Carapuce', 44, 48, 65, 50, 64, 43, 7, '2020-10-15 16:46:47', NULL),
(1216, 'Carabaffe', 59, 63, 80, 65, 80, 58, 8, '2020-10-15 16:46:47', NULL),
(1217, 'Tortank', 79, 83, 100, 85, 105, 78, 9, '2020-10-15 16:46:47', NULL),
(1218, 'Chenipan', 45, 30, 35, 20, 20, 45, 10, '2020-10-15 16:46:47', NULL),
(1219, 'Chrysacier', 50, 20, 55, 25, 25, 30, 11, '2020-10-15 16:46:47', NULL),
(1220, 'Papilusion', 60, 45, 50, 80, 80, 70, 12, '2020-10-15 16:46:47', NULL),
(1221, 'Aspicot', 40, 35, 30, 20, 20, 50, 13, '2020-10-15 16:46:47', NULL),
(1222, 'Coconfort', 45, 25, 50, 25, 25, 35, 14, '2020-10-15 16:46:47', NULL),
(1223, 'Dardargnan', 65, 80, 40, 45, 80, 75, 15, '2020-10-15 16:46:47', NULL),
(1224, 'Roucool', 40, 45, 40, 35, 35, 56, 16, '2020-10-15 16:46:47', NULL),
(1225, 'Roucoups', 63, 60, 55, 50, 50, 71, 17, '2020-10-15 16:46:47', NULL),
(1226, 'Roucarnage', 83, 80, 75, 70, 70, 91, 18, '2020-10-15 16:46:47', NULL),
(1227, 'Rattata', 30, 56, 35, 25, 35, 72, 19, '2020-10-15 16:46:47', NULL),
(1228, 'Rattatac', 55, 81, 60, 50, 70, 97, 20, '2020-10-15 16:46:47', NULL),
(1229, 'Piafabec', 40, 60, 30, 31, 31, 70, 21, '2020-10-15 16:46:47', NULL),
(1230, 'Rapasdepic', 65, 90, 65, 61, 61, 100, 22, '2020-10-15 16:46:47', NULL),
(1231, 'Abo', 35, 60, 44, 40, 54, 55, 23, '2020-10-15 16:46:47', NULL),
(1232, 'Arbok', 60, 85, 69, 65, 79, 80, 24, '2020-10-15 16:46:47', NULL),
(1233, 'Pikachu', 35, 55, 30, 50, 40, 90, 25, '2020-10-15 16:46:47', NULL),
(1234, 'Raichu', 60, 90, 55, 90, 80, 100, 26, '2020-10-15 16:46:47', NULL),
(1235, 'Sabelette', 50, 75, 85, 20, 30, 40, 27, '2020-10-15 16:46:47', NULL),
(1236, 'Sablaireau', 75, 100, 110, 45, 55, 65, 28, '2020-10-15 16:46:47', NULL),
(1237, 'Nidoran F', 55, 47, 52, 40, 40, 41, 29, '2020-10-15 16:46:47', NULL),
(1238, 'Nidorina', 70, 62, 67, 55, 55, 56, 30, '2020-10-15 16:46:47', NULL),
(1239, 'Nidoqueen', 90, 82, 87, 75, 85, 76, 31, '2020-10-15 16:46:47', NULL),
(1240, 'Nidoran M', 46, 57, 40, 40, 40, 50, 32, '2020-10-15 16:46:47', NULL),
(1241, 'Nidorino', 61, 72, 57, 55, 55, 65, 33, '2020-10-15 16:46:47', NULL),
(1242, 'Nidoking', 81, 92, 77, 85, 75, 85, 34, '2020-10-15 16:46:47', NULL),
(1243, 'Melofee', 70, 45, 48, 60, 65, 35, 35, '2020-10-15 16:46:47', NULL),
(1244, 'Melodelfe', 95, 70, 73, 85, 90, 60, 36, '2020-10-15 16:46:47', NULL),
(1245, 'Goupix', 38, 41, 40, 50, 65, 65, 37, '2020-10-15 16:46:47', NULL),
(1246, 'Feunard', 73, 76, 75, 81, 100, 100, 38, '2020-10-15 16:46:47', NULL),
(1247, 'Rondoudou', 115, 45, 20, 45, 25, 20, 39, '2020-10-15 16:46:47', NULL),
(1248, 'Grodoudou', 140, 70, 45, 75, 50, 45, 40, '2020-10-15 16:46:47', NULL),
(1249, 'Nosferapti', 40, 45, 35, 30, 40, 55, 41, '2020-10-15 16:46:47', NULL),
(1250, 'Nosferalto', 75, 80, 70, 65, 75, 90, 42, '2020-10-15 16:46:47', NULL),
(1251, 'Mystherbe', 45, 50, 55, 75, 65, 30, 43, '2020-10-15 16:46:47', NULL),
(1252, 'Ortide', 60, 65, 70, 85, 75, 40, 44, '2020-10-15 16:46:47', NULL),
(1253, 'Rafflesia', 75, 80, 85, 100, 90, 50, 45, '2020-10-15 16:46:47', NULL),
(1254, 'Paras', 35, 70, 55, 45, 55, 25, 46, '2020-10-15 16:46:47', NULL),
(1255, 'Parasect', 60, 95, 80, 60, 80, 30, 47, '2020-10-15 16:46:47', NULL),
(1256, 'Mimitoss', 60, 55, 50, 40, 55, 45, 48, '2020-10-15 16:46:47', NULL),
(1257, 'Aeromite', 70, 65, 60, 90, 75, 90, 49, '2020-10-15 16:46:47', NULL),
(1258, 'Taupiqueur', 10, 55, 25, 35, 45, 95, 50, '2020-10-15 16:46:47', NULL),
(1259, 'Triopikeur', 35, 80, 50, 50, 70, 120, 51, '2020-10-15 16:46:47', NULL),
(1260, 'Miaouss', 40, 45, 35, 40, 40, 90, 52, '2020-10-15 16:46:47', NULL),
(1261, 'Persian', 65, 70, 60, 65, 65, 115, 53, '2020-10-15 16:46:47', NULL),
(1262, 'Psykokwak', 50, 52, 48, 65, 50, 55, 54, '2020-10-15 16:46:47', NULL),
(1263, 'Akwakwak', 80, 82, 78, 95, 80, 85, 55, '2020-10-15 16:46:47', NULL),
(1264, 'Ferosinge', 40, 80, 35, 35, 45, 70, 56, '2020-10-15 16:46:47', NULL),
(1265, 'Colossinge', 65, 105, 60, 60, 70, 95, 57, '2020-10-15 16:46:47', NULL),
(1266, 'Caninos', 55, 70, 45, 70, 50, 60, 58, '2020-10-15 16:46:47', NULL),
(1267, 'Arcanin', 90, 110, 80, 100, 80, 95, 59, '2020-10-15 16:46:47', NULL),
(1268, 'Ptitard', 40, 50, 40, 40, 40, 90, 60, '2020-10-15 16:46:47', NULL),
(1269, 'Tetarte', 65, 65, 65, 50, 50, 90, 61, '2020-10-15 16:46:47', NULL),
(1270, 'Tartard', 90, 85, 95, 70, 90, 70, 62, '2020-10-15 16:46:47', NULL),
(1271, 'Abra', 25, 20, 15, 105, 55, 90, 63, '2020-10-15 16:46:47', NULL),
(1272, 'Kadabra', 40, 35, 30, 120, 70, 105, 64, '2020-10-15 16:46:47', NULL),
(1273, 'Alakazam', 55, 50, 45, 135, 85, 120, 65, '2020-10-15 16:46:47', NULL),
(1274, 'Machoc', 70, 80, 50, 35, 35, 35, 66, '2020-10-15 16:46:47', NULL),
(1275, 'Machopeur', 80, 100, 70, 50, 60, 45, 67, '2020-10-15 16:46:47', NULL),
(1276, 'Mackogneur', 90, 130, 80, 65, 85, 55, 68, '2020-10-15 16:46:47', NULL),
(1277, 'Chetiflor', 50, 75, 35, 70, 30, 40, 6, '2020-10-15 16:46:47', NULL),
(1278, 'Boustiflor', 65, 90, 50, 85, 45, 55, 70, '2020-10-15 16:46:47', NULL),
(1279, 'Empiflor', 80, 105, 65, 100, 60, 70, 71, '2020-10-15 16:46:47', NULL),
(1280, 'Tentacool', 40, 40, 35, 50, 100, 70, 72, '2020-10-15 16:46:47', NULL),
(1281, 'Tentacruel', 80, 70, 65, 80, 120, 100, 73, '2020-10-15 16:46:47', NULL),
(1282, 'Racaillou', 40, 80, 100, 30, 30, 20, 74, '2020-10-15 16:46:47', NULL),
(1283, 'Gravalanch', 55, 95, 115, 45, 45, 35, 75, '2020-10-15 16:46:47', NULL),
(1284, 'Grolem', 80, 110, 130, 55, 65, 45, 76, '2020-10-15 16:46:47', NULL),
(1285, 'Ponyta', 50, 85, 55, 65, 65, 90, 77, '2020-10-15 16:46:47', NULL),
(1286, 'Galopa', 65, 100, 70, 80, 80, 105, 78, '2020-10-15 16:46:47', NULL),
(1287, 'Ramoloss', 90, 65, 65, 40, 40, 15, 79, '2020-10-15 16:46:47', NULL),
(1288, 'Flagadoss', 95, 75, 110, 100, 80, 30, 80, '2020-10-15 16:46:47', NULL),
(1289, 'Magneti', 25, 35, 70, 95, 55, 45, 81, '2020-10-15 16:46:47', NULL),
(1290, 'Magneton', 50, 60, 95, 120, 70, 70, 82, '2020-10-15 16:46:47', NULL),
(1291, 'Canarticho', 52, 65, 55, 58, 62, 60, 83, '2020-10-15 16:46:47', NULL),
(1292, 'Doduo', 35, 85, 45, 35, 35, 75, 84, '2020-10-15 16:46:47', NULL),
(1293, 'Dodrio', 60, 110, 70, 60, 60, 100, 85, '2020-10-15 16:46:47', NULL),
(1294, 'Otaria', 65, 45, 55, 45, 70, 45, 86, '2020-10-15 16:46:47', NULL),
(1295, 'Lamantine', 90, 70, 80, 70, 95, 70, 87, '2020-10-15 16:46:47', NULL),
(1296, 'Tadmorv', 80, 80, 50, 40, 50, 25, 88, '2020-10-15 16:46:47', NULL),
(1297, 'Grotadmorv', 105, 105, 75, 65, 100, 50, 89, '2020-10-15 16:46:47', NULL),
(1298, 'Kokiyas', 30, 65, 100, 45, 25, 40, 90, '2020-10-15 16:46:47', NULL),
(1299, 'Crustabri', 50, 95, 180, 85, 45, 70, 91, '2020-10-15 16:46:47', NULL),
(1300, 'Fantominus', 30, 35, 30, 100, 35, 80, 92, '2020-10-15 16:46:47', NULL),
(1301, 'Spectrum', 45, 50, 45, 115, 55, 95, 93, '2020-10-15 16:46:47', NULL),
(1302, 'Ectoplasma', 60, 65, 60, 130, 75, 110, 94, '2020-10-15 16:46:47', NULL),
(1303, 'Onix', 35, 45, 160, 30, 45, 70, 95, '2020-10-15 16:46:47', NULL),
(1304, 'Soporifik', 60, 48, 45, 43, 90, 42, 96, '2020-10-15 16:46:47', NULL),
(1305, 'Hypnomade', 85, 73, 70, 73, 115, 67, 97, '2020-10-15 16:46:47', NULL),
(1306, 'Krabby', 30, 105, 90, 25, 25, 50, 98, '2020-10-15 16:46:47', NULL),
(1307, 'Krabboss', 55, 130, 115, 50, 50, 75, 99, '2020-10-15 16:46:47', NULL),
(1308, 'Voltorbe', 40, 30, 50, 55, 55, 100, 100, '2020-10-15 16:46:47', NULL),
(1309, 'Electrode', 60, 50, 70, 80, 80, 140, 101, '2020-10-15 16:46:47', NULL),
(1310, 'Noeunoeuf', 60, 40, 80, 60, 45, 40, 102, '2020-10-15 16:46:47', NULL),
(1311, 'Noadkoko', 95, 95, 85, 125, 65, 55, 103, '2020-10-15 16:46:47', NULL),
(1312, 'Osselait', 50, 50, 95, 40, 50, 35, 104, '2020-10-15 16:46:47', NULL),
(1313, 'Ossatueur', 60, 80, 110, 50, 80, 45, 105, '2020-10-15 16:46:47', NULL),
(1314, 'Kicklee', 50, 120, 53, 35, 110, 87, 106, '2020-10-15 16:46:47', NULL),
(1315, 'Tygnon', 50, 105, 79, 35, 110, 76, 107, '2020-10-15 16:46:47', NULL),
(1316, 'Excelangue', 90, 55, 75, 60, 75, 30, 108, '2020-10-15 16:46:47', NULL),
(1317, 'Smogo', 40, 65, 95, 60, 45, 35, 109, '2020-10-15 16:46:47', NULL),
(1318, 'Smogogo', 65, 90, 120, 85, 70, 60, 110, '2020-10-15 16:46:47', NULL),
(1319, 'Rhinocorne', 80, 85, 95, 30, 30, 25, 111, '2020-10-15 16:46:47', NULL),
(1320, 'Rhinoferos', 105, 130, 120, 45, 45, 40, 112, '2020-10-15 16:46:47', NULL),
(1321, 'Leveinard', 250, 5, 5, 35, 105, 50, 113, '2020-10-15 16:46:47', NULL),
(1322, 'Saquedeneu', 65, 55, 115, 100, 40, 60, 114, '2020-10-15 16:46:47', NULL),
(1323, 'Kangourex', 105, 95, 80, 40, 80, 90, 115, '2020-10-15 16:46:47', NULL),
(1324, 'Hypotrempe', 30, 40, 70, 70, 25, 60, 116, '2020-10-15 16:46:47', NULL),
(1325, 'Hypocean', 55, 65, 95, 95, 45, 85, 117, '2020-10-15 16:46:47', NULL),
(1326, 'Poissirene', 45, 67, 60, 35, 50, 63, 118, '2020-10-15 16:46:47', NULL),
(1327, 'Poissoroy', 80, 92, 65, 65, 80, 68, 119, '2020-10-15 16:46:47', NULL),
(1328, 'Stari', 30, 45, 55, 70, 55, 85, 120, '2020-10-15 16:46:47', NULL),
(1329, 'Staross', 60, 75, 85, 100, 85, 115, 121, '2020-10-15 16:46:47', NULL),
(1330, 'M.Mime', 40, 45, 65, 100, 120, 90, 122, '2020-10-15 16:46:47', NULL),
(1331, 'Insecateur', 70, 110, 80, 55, 80, 105, 123, '2020-10-15 16:46:47', NULL),
(1332, 'Lippoutou', 65, 50, 35, 115, 95, 95, 124, '2020-10-15 16:46:47', NULL),
(1333, 'Elektek', 65, 83, 57, 95, 85, 105, 125, '2020-10-15 16:46:47', NULL),
(1334, 'Magmar', 65, 95, 57, 100, 85, 93, 126, '2020-10-15 16:46:47', NULL),
(1335, 'Scarabrute', 65, 125, 100, 55, 70, 85, 127, '2020-10-15 16:46:47', NULL),
(1336, 'Tauros', 75, 100, 95, 40, 70, 110, 128, '2020-10-15 16:46:47', NULL),
(1337, 'Magicarpe', 20, 10, 55, 15, 20, 80, 129, '2020-10-15 16:46:47', NULL),
(1338, 'Leviator', 95, 125, 79, 60, 100, 81, 130, '2020-10-15 16:46:47', NULL),
(1339, 'Lokhlass', 130, 85, 80, 85, 95, 60, 131, '2020-10-15 16:46:47', NULL),
(1340, 'Metamorph', 48, 48, 48, 48, 48, 48, 132, '2020-10-15 16:46:47', NULL),
(1341, 'Evoli', 55, 55, 50, 45, 65, 55, 133, '2020-10-15 16:46:47', NULL),
(1342, 'Aquali', 130, 65, 60, 110, 95, 65, 134, '2020-10-15 16:46:47', NULL),
(1343, 'Voltali', 65, 65, 60, 110, 95, 130, 135, '2020-10-15 16:46:47', NULL),
(1344, 'Pyroli', 65, 130, 60, 95, 110, 65, 136, '2020-10-15 16:46:47', NULL),
(1345, 'Porygon', 65, 60, 70, 85, 75, 40, 137, '2020-10-15 16:46:47', NULL),
(1346, 'Amonita', 35, 40, 100, 90, 55, 35, 138, '2020-10-15 16:46:47', NULL),
(1347, 'Amonistar', 70, 60, 125, 115, 70, 55, 139, '2020-10-15 16:46:47', NULL),
(1348, 'Kabuto', 30, 80, 90, 55, 45, 55, 140, '2020-10-15 16:46:47', NULL),
(1349, 'Kabutops', 60, 115, 105, 65, 70, 80, 141, '2020-10-15 16:46:47', NULL),
(1350, 'Ptera', 80, 105, 65, 60, 75, 130, 142, '2020-10-15 16:46:47', NULL),
(1351, 'Ronflex', 160, 110, 65, 65, 110, 30, 143, '2020-10-15 16:46:47', NULL),
(1352, 'Artikodin', 90, 85, 100, 95, 125, 85, 144, '2020-10-15 16:46:47', NULL),
(1353, 'Electhor', 90, 90, 85, 125, 90, 100, 145, '2020-10-15 16:46:47', NULL),
(1354, 'Sulfura', 90, 100, 90, 125, 85, 90, 146, '2020-10-15 16:46:47', NULL),
(1355, 'Minidraco', 41, 64, 45, 50, 50, 50, 147, '2020-10-15 16:46:47', NULL),
(1356, 'Draco', 61, 84, 65, 70, 70, 70, 148, '2020-10-15 16:46:47', NULL),
(1357, 'Dracolosse', 91, 134, 95, 100, 100, 80, 149, '2020-10-15 16:46:47', NULL),
(1358, 'Mewtwo', 106, 110, 90, 154, 90, 130, 150, '2020-10-15 16:46:47', NULL),
(1359, 'Mew', 100, 100, 100, 100, 100, 100, 151, '2020-10-15 16:46:47', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `pokemon_type`
--

CREATE TABLE `pokemon_type` (
  `pokemon_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pokemon_type`
--

INSERT INTO `pokemon_type` (`pokemon_id`, `type_id`) VALUES
(1209, 10),
(1209, 11),
(1210, 10),
(1210, 11),
(1211, 10),
(1212, 6),
(1212, 11),
(1213, 6),
(1214, 6),
(1214, 17),
(1215, 4),
(1216, 4),
(1217, 4),
(1218, 8),
(1219, 8),
(1220, 8),
(1220, 17),
(1221, 8),
(1221, 11),
(1222, 8),
(1222, 11),
(1223, 8),
(1223, 11),
(1224, 9),
(1224, 17),
(1225, 9),
(1225, 17),
(1226, 9),
(1226, 17),
(1227, 9),
(1228, 9),
(1229, 9),
(1229, 17),
(1230, 9),
(1230, 17),
(1231, 11),
(1232, 11),
(1233, 5),
(1234, 5),
(1235, 14),
(1236, 14),
(1237, 11),
(1238, 11),
(1239, 11),
(1239, 14),
(1240, 11),
(1241, 11),
(1242, 11),
(1242, 14),
(1243, 9),
(1244, 9),
(1245, 6),
(1246, 6),
(1247, 9),
(1248, 9),
(1249, 11),
(1249, 17),
(1250, 11),
(1250, 17),
(1251, 10),
(1251, 11),
(1252, 10),
(1252, 11),
(1253, 10),
(1253, 11),
(1254, 8),
(1254, 10),
(1255, 8),
(1255, 10),
(1256, 8),
(1256, 11),
(1257, 8),
(1257, 11),
(1258, 14),
(1259, 14),
(1260, 9),
(1261, 9),
(1262, 4),
(1263, 4),
(1264, 2),
(1265, 2),
(1266, 6),
(1267, 6),
(1268, 4),
(1269, 4),
(1270, 2),
(1270, 4),
(1271, 12),
(1272, 12),
(1273, 12),
(1274, 2),
(1275, 2),
(1276, 2),
(1277, 10),
(1277, 11),
(1278, 10),
(1278, 11),
(1279, 10),
(1279, 11),
(1280, 4),
(1280, 11),
(1281, 4),
(1281, 11),
(1282, 13),
(1282, 14),
(1283, 13),
(1283, 14),
(1284, 13),
(1284, 14),
(1285, 6),
(1286, 6),
(1287, 4),
(1287, 12),
(1288, 4),
(1288, 12),
(1289, 1),
(1289, 5),
(1290, 1),
(1290, 5),
(1291, 9),
(1291, 17),
(1292, 9),
(1292, 17),
(1293, 9),
(1293, 17),
(1294, 4),
(1295, 4),
(1295, 7),
(1296, 11),
(1297, 11),
(1298, 4),
(1299, 4),
(1299, 7),
(1300, 11),
(1300, 15),
(1301, 11),
(1301, 15),
(1302, 11),
(1302, 15),
(1303, 13),
(1303, 14),
(1304, 12),
(1305, 12),
(1306, 4),
(1307, 4),
(1308, 5),
(1309, 5),
(1310, 10),
(1310, 12),
(1311, 10),
(1311, 12),
(1312, 14),
(1313, 14),
(1314, 2),
(1315, 2),
(1316, 9),
(1317, 11),
(1318, 11),
(1319, 13),
(1319, 14),
(1320, 13),
(1320, 14),
(1321, 9),
(1322, 10),
(1323, 9),
(1324, 4),
(1325, 4),
(1326, 4),
(1327, 4),
(1328, 4),
(1329, 4),
(1329, 12),
(1330, 12),
(1331, 8),
(1331, 17),
(1332, 7),
(1332, 12),
(1333, 5),
(1334, 6),
(1335, 8),
(1336, 9),
(1337, 4),
(1338, 4),
(1338, 17),
(1339, 4),
(1339, 7),
(1340, 9),
(1341, 9),
(1342, 4),
(1343, 5),
(1344, 6),
(1345, 9),
(1346, 4),
(1346, 13),
(1347, 4),
(1347, 13),
(1348, 4),
(1348, 13),
(1349, 4),
(1349, 13),
(1350, 13),
(1350, 17),
(1351, 9),
(1352, 7),
(1352, 17),
(1353, 5),
(1353, 17),
(1354, 6),
(1354, 17),
(1355, 3),
(1356, 3),
(1357, 3),
(1357, 17),
(1358, 12),
(1359, 12);

-- --------------------------------------------------------

--
-- Structure de la table `pokemon_user`
--

CREATE TABLE `pokemon_user` (
  `pokemon_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pokemon_user`
--

INSERT INTO `pokemon_user` (`pokemon_id`, `user_id`) VALUES
(1209, 1),
(1209, 4),
(1211, 1),
(1212, 1);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`id`, `name`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Acier', 'aaaabb', '2020-10-15 16:49:06', NULL),
(2, 'Combat', 'bb5544', '2020-10-15 16:49:06', NULL),
(3, 'Dragon', '7766ee', '2020-10-15 16:49:06', NULL),
(4, 'Eau', '3399ff', '2020-10-15 16:49:06', NULL),
(5, 'Électrik', 'ffbb33', '2020-10-15 16:49:06', NULL),
(6, 'Feu', 'ff4422', '2020-10-15 16:49:06', NULL),
(7, 'Glace', '77ddff', '2020-10-15 16:49:06', NULL),
(8, 'Insecte', 'aabb22', '2020-10-15 16:49:06', NULL),
(9, 'Normal', 'bbaabb', '2020-10-15 16:49:06', NULL),
(10, 'Plante', '77cc55', '2020-10-15 16:49:06', NULL),
(11, 'Poison', 'aa5599', '2020-10-15 16:49:06', NULL),
(12, 'Psy', 'ff5599', '2020-10-15 16:49:06', NULL),
(13, 'Roche', 'bbaa66', '2020-10-15 16:49:06', NULL),
(14, 'Sol', 'ddbb55', '2020-10-15 16:49:06', NULL),
(15, 'Spectre', '6666bb', '2020-10-15 16:49:06', NULL),
(16, 'Ténèbres', '665544', '2020-10-15 16:49:06', NULL),
(17, 'Vol', '6699ff', '2020-10-15 16:49:06', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `username`, `created_at`, `updated_at`) VALUES
(1, 'john@hash.fr', '[\"ROLE_ADMIN\"]', '$2y$13$HRpRR1zb8xxqAHnvsog89OAONSyL9K0FMIybxAp4pQ8IvAW7ug0lS', 'johnny', '2020-10-24 13:08:48', NULL),
(2, 'abc@abc.com', '[\"ROLE_USER\"]', '$2y$13$Y8TVNqkuWFNug1Bs0MoZ4e4OknIM4mqfSbIdYcDVyBP79JZXfUyky', 'abc', '2020-11-09 21:16:37', NULL),
(3, 'big@immo.com', '[\"ROLE_USER\"]', '$2y$13$y/Qrzr/eXV2gybDrpNvMoOmS5XQiligwgHJ81y493XYcry7AacxKO', 'Bigo', '2020-12-03 13:46:41', NULL),
(4, 'chine@attack.fr', '[\"ROLE_USER\"]', '$2y$13$O4elwmRC/FZAcRNbPWHtP.aYvRhcSpu/73FGMC0oir2c0rdnf76a.', 'chine', '2020-12-30 14:47:59', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pokemon_type`
--
ALTER TABLE `pokemon_type`
  ADD PRIMARY KEY (`pokemon_id`,`type_id`),
  ADD KEY `IDX_B077296A2FE71C3E` (`pokemon_id`),
  ADD KEY `IDX_B077296AC54C8C93` (`type_id`);

--
-- Index pour la table `pokemon_user`
--
ALTER TABLE `pokemon_user`
  ADD PRIMARY KEY (`pokemon_id`,`user_id`),
  ADD KEY `IDX_B13AA80A2FE71C3E` (`pokemon_id`),
  ADD KEY `IDX_B13AA80AA76ED395` (`user_id`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1360;

--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `pokemon_type`
--
ALTER TABLE `pokemon_type`
  ADD CONSTRAINT `FK_B077296A2FE71C3E` FOREIGN KEY (`pokemon_id`) REFERENCES `pokemon` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B077296AC54C8C93` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `pokemon_user`
--
ALTER TABLE `pokemon_user`
  ADD CONSTRAINT `FK_B13AA80A2FE71C3E` FOREIGN KEY (`pokemon_id`) REFERENCES `pokemon` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B13AA80AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
