-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 29-06-2020 a las 22:08:57
-- Versión del servidor: 8.0.13-4
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `X1xpbYv1IU`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cci` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `number`, `cci`, `description`, `users_id`, `created_at`, `updated_at`) VALUES
(1, '123456', '123456', 'BCP', 34, '2020-06-21 21:32:52', '2020-06-21 21:32:52'),
(2, '6789', '006789', 'BBVA', 34, '2020-06-29 15:29:22', '2020-06-29 15:29:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departments`
--

INSERT INTO `departments` (`id`, `codigo`, `nombre`, `slug`, `created_at`, `updated_at`) VALUES
(1, 3, 'APURIMAC', 'apurimac', NULL, NULL),
(2, 4, 'AREQUIPA', 'arequipa', NULL, NULL),
(3, 6, 'CAJAMARCA', 'cajamarca', NULL, NULL),
(4, 7, 'CUSCO', 'cusco', NULL, NULL),
(5, 8, 'HUANCAVELICA', 'huancavelica', NULL, NULL),
(6, 9, 'HUANUCO', 'huanuco', NULL, NULL),
(7, 10, 'ICA', 'ica', NULL, NULL),
(8, 16, 'MADRE DE DIOS', 'madre-de-dios', NULL, NULL),
(9, 18, 'PASCO', 'pasco', NULL, NULL),
(10, 19, 'PIURA', 'piura', NULL, NULL),
(11, 22, 'TACNA', 'tacna', NULL, NULL),
(12, 23, 'TUMBES', 'tumbes', NULL, NULL),
(13, 11, 'JUNIN', 'junin', NULL, NULL),
(14, 12, 'LA LIBERTAD', 'la-libertad', NULL, NULL),
(15, 13, 'LAMBAYEQUE', 'lambayeque', NULL, NULL),
(16, 14, 'LIMA', 'lima', NULL, NULL),
(17, 24, 'CALLAO', 'callao', NULL, NULL),
(18, 25, 'UCAYALI', 'ucayali', NULL, NULL),
(19, 5, 'AYACUCHO', 'ayacucho', NULL, NULL),
(20, 1, 'AMAZONAS', 'amazonas', NULL, NULL),
(21, 2, 'ANCASH', 'ancash', NULL, NULL),
(22, 15, 'LORETO', 'loreto', NULL, NULL),
(23, 17, 'MOQUEGUA', 'moquegua', NULL, NULL),
(24, 20, 'PUNO', 'puno', NULL, NULL),
(25, 21, 'SAN MARTIN', 'san-martin', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinces_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `districts`
--

INSERT INTO `districts` (`id`, `codigo`, `nombre`, `slug`, `provinces_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'TAMBOBAMBA\r\n', 'tambobamba\r\n-1', 1, NULL, NULL),
(2, 2, 'COYLLURQUI\r\n', 'coyllurqui\r\n-2', 1, NULL, NULL),
(3, 4, 'HAQUIRA\r\n', 'haquira\r\n-3', 1, NULL, NULL),
(4, 5, 'MARA\r\n', 'mara\r\n-4', 1, NULL, NULL),
(5, 3, 'COTABAMBAS\r\n', 'cotabambas\r\n-5', 1, NULL, NULL),
(6, 6, 'CHALLHUAHUACHO\r\n', 'challhuahuacho\r\n-6', 1, NULL, NULL),
(7, 1, 'CHALHUANCA\r\n', 'chalhuanca\r\n-7', 2, NULL, NULL),
(8, 3, 'CARAYBAMBA\r\n', 'caraybamba\r\n-8', 2, NULL, NULL),
(9, 4, 'COLCABAMBA\r\n', 'colcabamba\r\n-9', 2, NULL, NULL),
(10, 5, 'COTARUSE\r\n', 'cotaruse\r\n-10', 2, NULL, NULL),
(11, 6, 'CHAPIMARCA\r\n', 'chapimarca\r\n-11', 2, NULL, NULL),
(12, 7, 'IHUAYLLO\r\n', 'ihuayllo\r\n-12', 2, NULL, NULL),
(13, 8, 'LUCRE\r\n', 'lucre\r\n-13', 2, NULL, NULL),
(14, 10, 'SAÑAYCA\r\n', 'sañayca\r\n-14', 2, NULL, NULL),
(15, 11, 'SORAYA\r\n', 'soraya\r\n-15', 2, NULL, NULL),
(16, 12, 'TAPAIRIHUA\r\n', 'tapairihua\r\n-16', 2, NULL, NULL),
(17, 13, 'TINTAY\r\n', 'tintay\r\n-17', 2, NULL, NULL),
(18, 14, 'TORAYA\r\n', 'toraya\r\n-18', 2, NULL, NULL),
(19, 15, 'YANACA\r\n', 'yanaca\r\n-19', 2, NULL, NULL),
(20, 16, 'SAN JUAN DE CHACÑA\r\n', 'san-juan-de-chacña\r\n-20', 2, NULL, NULL),
(21, 2, 'CAPAYA\r\n', 'capaya\r\n-21', 2, NULL, NULL),
(22, 9, 'POCOHUANCA\r\n', 'pocohuanca\r\n-22', 2, NULL, NULL),
(23, 17, 'JUSTO APU SAHUARAURA\r\n', 'justo-apu-sahuaraura\r\n-23', 2, NULL, NULL),
(24, 1, 'CHINCHEROS\r\n', 'chincheros\r\n-24', 3, NULL, NULL),
(25, 2, 'ONGOY\r\n', 'ongoy\r\n-25', 3, NULL, NULL),
(26, 3, 'OCOBAMBA\r\n', 'ocobamba\r\n-26', 3, NULL, NULL),
(27, 4, 'COCHARCAS\r\n', 'cocharcas\r\n-27', 3, NULL, NULL),
(28, 5, 'ANCO HUALLO\r\n', 'anco-huallo\r\n-28', 3, NULL, NULL),
(29, 6, 'HUACCANA\r\n', 'huaccana\r\n-29', 3, NULL, NULL),
(30, 8, 'RANRACANCHA\r\n', 'ranracancha\r\n-30', 3, NULL, NULL),
(31, 7, 'URANMARCA\r\n', 'uranmarca\r\n-31', 3, NULL, NULL),
(32, 1, 'CHUQUIBAMBILLA\r\n', 'chuquibambilla\r\n-32', 4, NULL, NULL),
(33, 2, 'CURPAHUASI\r\n', 'curpahuasi\r\n-33', 4, NULL, NULL),
(34, 3, 'HUAYLLATI\r\n', 'huayllati\r\n-34', 4, NULL, NULL),
(35, 4, 'MAMARA\r\n', 'mamara\r\n-35', 4, NULL, NULL),
(36, 6, 'MICAELA BASTIDAS\r\n', 'micaela-bastidas\r\n-36', 4, NULL, NULL),
(37, 7, 'PROGRESO\r\n', 'progreso\r\n-37', 4, NULL, NULL),
(38, 8, 'PATAYPAMPA\r\n', 'pataypampa\r\n-38', 4, NULL, NULL),
(39, 9, 'SAN ANTONIO\r\n', 'san-antonio\r\n-39', 4, NULL, NULL),
(40, 10, 'TURPAY\r\n', 'turpay\r\n-40', 4, NULL, NULL),
(41, 11, 'VILCABAMBA\r\n', 'vilcabamba\r\n-41', 4, NULL, NULL),
(42, 12, 'VIRUNDO\r\n', 'virundo\r\n-42', 4, NULL, NULL),
(43, 13, 'SANTA ROSA\r\n', 'santa-rosa\r\n-43', 4, NULL, NULL),
(44, 5, 'MARISCAL GAMARRA\r\n', 'mariscal-gamarra\r\n-44', 4, NULL, NULL),
(45, 14, 'CURASCO\r\n', 'curasco\r\n-45', 4, NULL, NULL),
(46, 1, 'ANTABAMBA\r\n', 'antabamba\r\n-46', 5, NULL, NULL),
(47, 2, 'EL ORO\r\n', 'el-oro\r\n-47', 5, NULL, NULL),
(48, 3, 'HUAQUIRCA\r\n', 'huaquirca\r\n-48', 5, NULL, NULL),
(49, 4, 'JUAN ESPINOZA MEDRANO\r\n', 'juan-espinoza-medrano\r\n-49', 5, NULL, NULL),
(50, 5, 'OROPESA\r\n', 'oropesa\r\n-50', 5, NULL, NULL),
(51, 6, 'PACHACONAS\r\n', 'pachaconas\r\n-51', 5, NULL, NULL),
(52, 7, 'SABAINO\r\n', 'sabaino\r\n-52', 5, NULL, NULL),
(53, 1, 'ANDAHUAYLAS\r\n', 'andahuaylas\r\n-53', 6, NULL, NULL),
(54, 2, 'ANDARAPA\r\n', 'andarapa\r\n-54', 6, NULL, NULL),
(55, 3, 'CHIARA\r\n', 'chiara\r\n-55', 6, NULL, NULL),
(56, 4, 'HUANCARAMA\r\n', 'huancarama\r\n-56', 6, NULL, NULL),
(57, 5, 'HUANCARAY\r\n', 'huancaray\r\n-57', 6, NULL, NULL),
(58, 6, 'KISHUARA\r\n', 'kishuara\r\n-58', 6, NULL, NULL),
(59, 7, 'PACOBAMBA\r\n', 'pacobamba\r\n-59', 6, NULL, NULL),
(60, 8, 'PAMPACHIRI\r\n', 'pampachiri\r\n-60', 6, NULL, NULL),
(61, 10, 'SAN JERONIMO\r\n', 'san-jeronimo\r\n-61', 6, NULL, NULL),
(62, 11, 'TALAVERA\r\n', 'talavera\r\n-62', 6, NULL, NULL),
(63, 12, 'TURPO\r\n', 'turpo\r\n-63', 6, NULL, NULL),
(64, 13, 'PACUCHA\r\n', 'pacucha\r\n-64', 6, NULL, NULL),
(65, 14, 'POMACOCHA\r\n', 'pomacocha\r\n-65', 6, NULL, NULL),
(66, 15, 'SANTA MARIA DE CHICMO\r\n', 'santa-maria-de-chicmo\r\n-66', 6, NULL, NULL),
(67, 16, 'TUMAY HUARACA\r\n', 'tumay-huaraca\r\n-67', 6, NULL, NULL),
(68, 17, 'HUAYANA\r\n', 'huayana\r\n-68', 6, NULL, NULL),
(69, 19, 'KAQUIABAMBA\r\n', 'kaquiabamba\r\n-69', 6, NULL, NULL),
(70, 9, 'SAN ANTONIO DE CACHI\r\n', 'san-antonio-de-cachi\r\n-70', 6, NULL, NULL),
(71, 18, 'SAN MIGUEL DE CHACCRAMPA\r\n', 'san-miguel-de-chaccrampa\r\n-71', 6, NULL, NULL),
(72, 1, 'ABANCAY\r\n', 'abancay\r\n-72', 7, NULL, NULL),
(73, 2, 'CIRCA\r\n', 'circa\r\n-73', 7, NULL, NULL),
(74, 3, 'CURAHUASI\r\n', 'curahuasi\r\n-74', 7, NULL, NULL),
(75, 5, 'HUANIPACA\r\n', 'huanipaca\r\n-75', 7, NULL, NULL),
(76, 6, 'LAMBRAMA\r\n', 'lambrama\r\n-76', 7, NULL, NULL),
(77, 7, 'PICHIRHUA\r\n', 'pichirhua\r\n-77', 7, NULL, NULL),
(78, 8, 'SAN PEDRO DE CACHORA\r\n', 'san-pedro-de-cachora\r\n-78', 7, NULL, NULL),
(79, 9, 'TAMBURCO\r\n', 'tamburco\r\n-79', 7, NULL, NULL),
(80, 4, 'CHACOCHE\r\n', 'chacoche\r\n-80', 7, NULL, NULL),
(81, 1, 'MOLLENDO\r\n', 'mollendo\r\n-81', 8, NULL, NULL),
(82, 3, 'DEAN VALDIVIA\r\n', 'dean-valdivia\r\n-82', 8, NULL, NULL),
(83, 4, 'ISLAY\r\n', 'islay\r\n-83', 8, NULL, NULL),
(84, 5, 'MEJIA\r\n', 'mejia\r\n-84', 8, NULL, NULL),
(85, 6, 'PUNTA DE BOMBON\r\n', 'punta-de-bombon\r\n-85', 8, NULL, NULL),
(86, 2, 'COCACHACRA\r\n', 'cocachacra\r\n-86', 8, NULL, NULL),
(87, 1, 'AREQUIPA\r\n', 'arequipa\r\n-87', 9, NULL, NULL),
(88, 2, 'CAYMA\r\n', 'cayma\r\n-88', 9, NULL, NULL),
(89, 3, 'CERRO COLORADO\r\n', 'cerro-colorado\r\n-89', 9, NULL, NULL),
(90, 4, 'CHARACATO\r\n', 'characato\r\n-90', 9, NULL, NULL),
(91, 5, 'CHIGUATA\r\n', 'chiguata\r\n-91', 9, NULL, NULL),
(92, 7, 'MIRAFLORES\r\n', 'miraflores\r\n-92', 9, NULL, NULL),
(93, 8, 'MOLLEBAYA\r\n', 'mollebaya\r\n-93', 9, NULL, NULL),
(94, 9, 'PAUCARPATA\r\n', 'paucarpata\r\n-94', 9, NULL, NULL),
(95, 10, 'POCSI\r\n', 'pocsi\r\n-95', 9, NULL, NULL),
(96, 11, 'POLOBAYA\r\n', 'polobaya\r\n-96', 9, NULL, NULL),
(97, 12, 'QUEQUEÑA\r\n', 'quequeña\r\n-97', 9, NULL, NULL),
(98, 14, 'SACHACA\r\n', 'sachaca\r\n-98', 9, NULL, NULL),
(99, 15, 'SAN JUAN DE SIGUAS\r\n', 'san-juan-de-siguas\r\n-99', 9, NULL, NULL),
(100, 16, 'SAN JUAN DE TARUCANI\r\n', 'san-juan-de-tarucani\r\n-100', 9, NULL, NULL),
(101, 17, 'SANTA ISABEL DE SIGUAS\r\n', 'santa-isabel-de-siguas\r\n-101', 9, NULL, NULL),
(102, 18, 'SANTA RITA DE SIHUAS\r\n', 'santa-rita-de-sihuas\r\n-102', 9, NULL, NULL),
(103, 19, 'SOCABAYA\r\n', 'socabaya\r\n-103', 9, NULL, NULL),
(104, 21, 'UCHUMAYO\r\n', 'uchumayo\r\n-104', 9, NULL, NULL),
(105, 22, 'VITOR\r\n', 'vitor\r\n-105', 9, NULL, NULL),
(106, 23, 'YANAHUARA\r\n', 'yanahuara\r\n-106', 9, NULL, NULL),
(107, 24, 'YARABAMBA\r\n', 'yarabamba\r\n-107', 9, NULL, NULL),
(108, 25, 'YURA\r\n', 'yura\r\n-108', 9, NULL, NULL),
(109, 26, 'MARIANO MELGAR\r\n', 'mariano-melgar\r\n-109', 9, NULL, NULL),
(110, 28, 'ALTO SELVA ALEGRE\r\n', 'alto-selva-alegre\r\n-110', 9, NULL, NULL),
(111, 29, 'JOSE LUIS BUSTAMANTE Y RIVERO\r\n', 'jose-luis-bustamante-y-rivero\r\n-111', 9, NULL, NULL),
(112, 6, 'LA JOYA\r\n', 'la-joya\r\n-112', 9, NULL, NULL),
(113, 13, 'SABANDIA\r\n', 'sabandia\r\n-113', 9, NULL, NULL),
(114, 20, 'TIABAYA\r\n', 'tiabaya\r\n-114', 9, NULL, NULL),
(115, 27, 'JACOBO HUNTER\r\n', 'jacobo-hunter\r\n-115', 9, NULL, NULL),
(116, 1, 'COTAHUASI\r\n', 'cotahuasi\r\n-116', 10, NULL, NULL),
(117, 2, 'ALCA\r\n', 'alca\r\n-117', 10, NULL, NULL),
(118, 3, 'CHARCANA\r\n', 'charcana\r\n-118', 10, NULL, NULL),
(119, 5, 'PAMPAMARCA\r\n', 'pampamarca\r\n-119', 10, NULL, NULL),
(120, 6, 'PUYCA\r\n', 'puyca\r\n-120', 10, NULL, NULL),
(121, 7, 'QUECHUALLA\r\n', 'quechualla\r\n-121', 10, NULL, NULL),
(122, 8, 'SAYLA\r\n', 'sayla\r\n-122', 10, NULL, NULL),
(123, 9, 'TAURIA\r\n', 'tauria\r\n-123', 10, NULL, NULL),
(124, 10, 'TOMEPAMPA\r\n', 'tomepampa\r\n-124', 10, NULL, NULL),
(125, 4, 'HUAYNACOTAS\r\n', 'huaynacotas\r\n-125', 10, NULL, NULL),
(126, 11, 'TORO\r\n', 'toro\r\n-126', 10, NULL, NULL),
(127, 1, 'CHUQUIBAMBA\r\n', 'chuquibamba\r\n-127', 11, NULL, NULL),
(128, 2, 'ANDARAY\r\n', 'andaray\r\n-128', 11, NULL, NULL),
(129, 4, 'CHICHAS\r\n', 'chichas\r\n-129', 11, NULL, NULL),
(130, 5, 'IRAY\r\n', 'iray\r\n-130', 11, NULL, NULL),
(131, 6, 'SALAMANCA\r\n', 'salamanca\r\n-131', 11, NULL, NULL),
(132, 7, 'YANAQUIHUA\r\n', 'yanaquihua\r\n-132', 11, NULL, NULL),
(133, 8, 'RIO GRANDE\r\n', 'rio-grande\r\n-133', 11, NULL, NULL),
(134, 3, 'CAYARANI\r\n', 'cayarani\r\n-134', 11, NULL, NULL),
(135, 1, 'APLAO\r\n', 'aplao\r\n-135', 12, NULL, NULL),
(136, 2, 'ANDAGUA\r\n', 'andagua\r\n-136', 12, NULL, NULL),
(137, 4, 'CHACHAS\r\n', 'chachas\r\n-137', 12, NULL, NULL),
(138, 5, 'CHILCAYMARCA\r\n', 'chilcaymarca\r\n-138', 12, NULL, NULL),
(139, 6, 'CHOCO\r\n', 'choco\r\n-139', 12, NULL, NULL),
(140, 7, 'HUANCARQUI\r\n', 'huancarqui\r\n-140', 12, NULL, NULL),
(141, 8, 'MACHAGUAY\r\n', 'machaguay\r\n-141', 12, NULL, NULL),
(142, 9, 'ORCOPAMPA\r\n', 'orcopampa\r\n-142', 12, NULL, NULL),
(143, 11, 'TIPAN\r\n', 'tipan\r\n-143', 12, NULL, NULL),
(144, 12, 'URACA\r\n', 'uraca\r\n-144', 12, NULL, NULL),
(145, 13, 'UÑON\r\n', 'uñon\r\n-145', 12, NULL, NULL),
(146, 14, 'VIRACO\r\n', 'viraco\r\n-146', 12, NULL, NULL),
(147, 3, 'AYO\r\n', 'ayo\r\n-147', 12, NULL, NULL),
(148, 10, 'PAMPACOLCA\r\n', 'pampacolca\r\n-148', 12, NULL, NULL),
(149, 1, 'CARAVELI\r\n', 'caraveli\r\n-149', 13, NULL, NULL),
(150, 2, 'ACARI\r\n', 'acari\r\n-150', 13, NULL, NULL),
(151, 4, 'ATIQUIPA\r\n', 'atiquipa\r\n-151', 13, NULL, NULL),
(152, 5, 'BELLA UNION\r\n', 'bella-union\r\n-152', 13, NULL, NULL),
(153, 6, 'CAHUACHO\r\n', 'cahuacho\r\n-153', 13, NULL, NULL),
(154, 7, 'CHALA\r\n', 'chala\r\n-154', 13, NULL, NULL),
(155, 8, 'CHAPARRA\r\n', 'chaparra\r\n-155', 13, NULL, NULL),
(156, 9, 'HUANUHUANU\r\n', 'huanuhuanu\r\n-156', 13, NULL, NULL),
(157, 11, 'LOMAS\r\n', 'lomas\r\n-157', 13, NULL, NULL),
(158, 12, 'QUICACHA\r\n', 'quicacha\r\n-158', 13, NULL, NULL),
(159, 13, 'YAUCA\r\n', 'yauca\r\n-159', 13, NULL, NULL),
(160, 3, 'ATICO\r\n', 'atico\r\n-160', 13, NULL, NULL),
(161, 10, 'JAQUI\r\n', 'jaqui\r\n-161', 13, NULL, NULL),
(162, 1, 'CAMANA\r\n', 'camana\r\n-162', 14, NULL, NULL),
(163, 4, 'MARISCAL CACERES\r\n', 'mariscal-caceres\r\n-163', 14, NULL, NULL),
(164, 5, 'NICOLAS DE PIEROLA\r\n', 'nicolas-de-pierola\r\n-164', 14, NULL, NULL),
(165, 6, 'OCOÑA\r\n', 'ocoña\r\n-165', 14, NULL, NULL),
(166, 7, 'QUILCA\r\n', 'quilca\r\n-166', 14, NULL, NULL),
(167, 8, 'SAMUEL PASTOR\r\n', 'samuel-pastor\r\n-167', 14, NULL, NULL),
(168, 2, 'JOSE MARIA QUIMPER\r\n', 'jose-maria-quimper\r\n-168', 14, NULL, NULL),
(169, 3, 'MARIANO NICOLAS VALCARCEL\r\n', 'mariano-nicolas-valcarcel\r\n-169', 14, NULL, NULL),
(170, 1, 'CHIVAY\r\n', 'chivay\r\n-170', 15, NULL, NULL),
(171, 2, 'ACHOMA\r\n', 'achoma\r\n-171', 15, NULL, NULL),
(172, 3, 'CABANACONDE\r\n', 'cabanaconde\r\n-172', 15, NULL, NULL),
(173, 4, 'CAYLLOMA\r\n', 'caylloma\r\n-173', 15, NULL, NULL),
(174, 5, 'CALLALLI\r\n', 'callalli\r\n-174', 15, NULL, NULL),
(175, 7, 'HUAMBO\r\n', 'huambo\r\n-175', 15, NULL, NULL),
(176, 8, 'HUANCA\r\n', 'huanca\r\n-176', 15, NULL, NULL),
(177, 9, 'ICHUPAMPA\r\n', 'ichupampa\r\n-177', 15, NULL, NULL),
(178, 10, 'LARI\r\n', 'lari\r\n-178', 15, NULL, NULL),
(179, 11, 'LLUTA\r\n', 'lluta\r\n-179', 15, NULL, NULL),
(180, 12, 'MACA\r\n', 'maca\r\n-180', 15, NULL, NULL),
(181, 14, 'SAN ANTONIO DE CHUCA\r\n', 'san-antonio-de-chuca\r\n-181', 15, NULL, NULL),
(182, 15, 'SIBAYO\r\n', 'sibayo\r\n-182', 15, NULL, NULL),
(183, 16, 'TAPAY\r\n', 'tapay\r\n-183', 15, NULL, NULL),
(184, 18, 'TUTI\r\n', 'tuti\r\n-184', 15, NULL, NULL),
(185, 19, 'YANQUE\r\n', 'yanque\r\n-185', 15, NULL, NULL),
(186, 20, 'MAJES\r\n', 'majes\r\n-186', 15, NULL, NULL),
(187, 6, 'COPORAQUE\r\n', 'coporaque\r\n-187', 15, NULL, NULL),
(188, 13, 'MADRIGAL\r\n', 'madrigal\r\n-188', 15, NULL, NULL),
(189, 17, 'TISCO\r\n', 'tisco\r\n-189', 15, NULL, NULL),
(190, 2, 'SAN BERNARDINO\r\n', 'san-bernardino\r\n-190', 16, NULL, NULL),
(191, 3, 'SAN LUIS\r\n', 'san-luis\r\n-191', 16, NULL, NULL),
(192, 4, 'TUMBADEN\r\n', 'tumbaden\r\n-192', 16, NULL, NULL),
(193, 1, 'SAN PABLO\r\n', 'san-pablo\r\n-193', 16, NULL, NULL),
(194, 1, 'SAN MIGUEL\r\n', 'san-miguel\r\n-194', 17, NULL, NULL),
(195, 2, 'CALQUIS\r\n', 'calquis\r\n-195', 17, NULL, NULL),
(196, 3, 'LA FLORIDA\r\n', 'la-florida\r\n-196', 17, NULL, NULL),
(197, 4, 'LLAPA\r\n', 'llapa\r\n-197', 17, NULL, NULL),
(198, 6, 'NIEPOS\r\n', 'niepos\r\n-198', 17, NULL, NULL),
(199, 7, 'SAN GREGORIO\r\n', 'san-gregorio\r\n-199', 17, NULL, NULL),
(200, 8, 'SAN SILVESTRE DE COCHAN\r\n', 'san-silvestre-de-cochan\r\n-200', 17, NULL, NULL),
(201, 9, 'EL PRADO\r\n', 'el-prado\r\n-201', 17, NULL, NULL),
(202, 10, 'UNION AGUA BLANCA\r\n', 'union-agua-blanca\r\n-202', 17, NULL, NULL),
(203, 11, 'TONGOD\r\n', 'tongod\r\n-203', 17, NULL, NULL),
(204, 13, 'BOLIVAR\r\n', 'bolivar\r\n-204', 17, NULL, NULL),
(205, 5, 'NANCHOC\r\n', 'nanchoc\r\n-205', 17, NULL, NULL),
(206, 12, 'CATILLUC\r\n', 'catilluc\r\n-206', 17, NULL, NULL),
(207, 1, 'CONTUMAZA\r\n', 'contumaza\r\n-207', 18, NULL, NULL),
(208, 3, 'CHILETE\r\n', 'chilete\r\n-208', 18, NULL, NULL),
(209, 4, 'GUZMANGO\r\n', 'guzmango\r\n-209', 18, NULL, NULL),
(210, 5, 'SAN BENITO\r\n', 'san-benito\r\n-210', 18, NULL, NULL),
(211, 7, 'TANTARICA\r\n', 'tantarica\r\n-211', 18, NULL, NULL),
(212, 8, 'YONAN\r\n', 'yonan\r\n-212', 18, NULL, NULL),
(213, 9, 'SANTA CRUZ DE TOLED\r\n', 'santa-cruz-de-toled\r\n-213', 18, NULL, NULL),
(214, 6, 'CUPISNIQUE\r\n', 'cupisnique\r\n-214', 18, NULL, NULL),
(215, 1, 'CAJAMARCA\r\n', 'cajamarca\r\n-215', 19, NULL, NULL),
(216, 2, 'ASUNCION\r\n', 'asuncion\r\n-216', 19, NULL, NULL),
(217, 3, 'COSPAN\r\n', 'cospan\r\n-217', 19, NULL, NULL),
(218, 5, 'ENCAÑADA\r\n', 'encañada\r\n-218', 19, NULL, NULL),
(219, 6, 'JESUS\r\n', 'jesus\r\n-219', 19, NULL, NULL),
(220, 7, 'LOS BAÑOS DEL INCA\r\n', 'los-baños-del-inca\r\n-220', 19, NULL, NULL),
(221, 8, 'LLACANORA\r\n', 'llacanora\r\n-221', 19, NULL, NULL),
(222, 9, 'MAGDALENA\r\n', 'magdalena\r\n-222', 19, NULL, NULL),
(223, 10, 'MATARA\r\n', 'matara\r\n-223', 19, NULL, NULL),
(224, 12, 'SAN JUAN\r\n', 'san-juan\r\n-224', 19, NULL, NULL),
(225, 4, 'CHETILLA\r\n', 'chetilla\r\n-225', 19, NULL, NULL),
(226, 11, 'NAMORA\r\n', 'namora\r\n-226', 19, NULL, NULL),
(227, 1, 'PEDRO GALVEZ\r\n', 'pedro-galvez\r\n-227', 20, NULL, NULL),
(228, 2, 'ICHOCAN\r\n', 'ichocan\r\n-228', 20, NULL, NULL),
(229, 3, 'GREGORIO PITA\r\n', 'gregorio-pita\r\n-229', 20, NULL, NULL),
(230, 4, 'JOSE MANUEL QUIROZ\r\n', 'jose-manuel-quiroz\r\n-230', 20, NULL, NULL),
(231, 5, 'EDUARDO VILLANUEVA\r\n', 'eduardo-villanueva\r\n-231', 20, NULL, NULL),
(232, 6, 'JOSE SABOGAL\r\n', 'jose-sabogal\r\n-232', 20, NULL, NULL),
(233, 7, 'CHANCAY\r\n', 'chancay\r\n-233', 20, NULL, NULL),
(234, 1, 'SAN IGNACIO\r\n', 'san-ignacio\r\n-234', 21, NULL, NULL),
(235, 2, 'CHIRINOS\r\n', 'chirinos\r\n-235', 21, NULL, NULL),
(236, 3, 'HUARANGO\r\n', 'huarango\r\n-236', 21, NULL, NULL),
(237, 4, 'NAMBALLE\r\n', 'namballe\r\n-237', 21, NULL, NULL),
(238, 5, 'LA COIPA\r\n', 'la-coipa\r\n-238', 21, NULL, NULL),
(239, 7, 'TABACONAS\r\n', 'tabaconas\r\n-239', 21, NULL, NULL),
(240, 6, 'SAN JOSE DE LOURDES\r\n', 'san-jose-de-lourdes\r\n-240', 21, NULL, NULL),
(241, 2, 'CATACHE\r\n', 'catache\r\n-241', 22, NULL, NULL),
(242, 3, 'CHANCAYBAÑOS\r\n', 'chancaybaños\r\n-242', 22, NULL, NULL),
(243, 4, 'LA ESPERANZA\r\n', 'la-esperanza\r\n-243', 22, NULL, NULL),
(244, 5, 'NINABAMBA\r\n', 'ninabamba\r\n-244', 22, NULL, NULL),
(245, 6, 'PULAN\r\n', 'pulan\r\n-245', 22, NULL, NULL),
(246, 7, 'SEXI\r\n', 'sexi\r\n-246', 22, NULL, NULL),
(247, 9, 'YAUYUCAN\r\n', 'yauyucan\r\n-247', 22, NULL, NULL),
(248, 10, 'ANDABAMBA\r\n', 'andabamba\r\n-248', 22, NULL, NULL),
(249, 11, 'SAUCEPAMPA\r\n', 'saucepampa\r\n-249', 22, NULL, NULL),
(250, 1, 'SANTA CRUZ\r\n', 'santa-cruz\r\n-250', 22, NULL, NULL),
(251, 8, 'UTICYACU\r\n', 'uticyacu\r\n-251', 22, NULL, NULL),
(252, 1, 'JAEN\r\n', 'jaen\r\n-252', 23, NULL, NULL),
(253, 2, 'BELLAVISTA\r\n', 'bellavista\r\n-253', 23, NULL, NULL),
(254, 3, 'COLASAY\r\n', 'colasay\r\n-254', 23, NULL, NULL),
(255, 4, 'CHONTALI\r\n', 'chontali\r\n-255', 23, NULL, NULL),
(256, 5, 'POMAHUACA\r\n', 'pomahuaca\r\n-256', 23, NULL, NULL),
(257, 7, 'SALLIQUE\r\n', 'sallique\r\n-257', 23, NULL, NULL),
(258, 8, 'SAN FELIPE\r\n', 'san-felipe\r\n-258', 23, NULL, NULL),
(259, 9, 'SAN JOSE DEL ALTO\r\n', 'san-jose-del-alto\r\n-259', 23, NULL, NULL),
(260, 10, 'SANTA ROSA\r\n', 'santa-rosa\r\n-260', 23, NULL, NULL),
(261, 11, 'LAS PIRIAS\r\n', 'las-pirias\r\n-261', 23, NULL, NULL),
(262, 12, 'HUABAL\r\n', 'huabal\r\n-262', 23, NULL, NULL),
(263, 6, 'PUCARA\r\n', 'pucara\r\n-263', 23, NULL, NULL),
(264, 2, 'CHUGUR\r\n', 'chugur\r\n-264', 24, NULL, NULL),
(265, 3, 'HUALGAYOC\r\n', 'hualgayoc\r\n-265', 24, NULL, NULL),
(266, 1, 'BAMBAMARCA\r\n', 'bambamarca\r\n-266', 24, NULL, NULL),
(267, 1, 'CHOTA\r\n', 'chota\r\n-267', 25, NULL, NULL),
(268, 2, 'ANGUIA\r\n', 'anguia\r\n-268', 25, NULL, NULL),
(269, 3, 'COCHABAMBA\r\n', 'cochabamba\r\n-269', 25, NULL, NULL),
(270, 5, 'CHADIN\r\n', 'chadin\r\n-270', 25, NULL, NULL),
(271, 6, 'CHIGUIRIP\r\n', 'chiguirip\r\n-271', 25, NULL, NULL),
(272, 7, 'CHIMBAN\r\n', 'chimban\r\n-272', 25, NULL, NULL),
(273, 8, 'HUAMBOS\r\n', 'huambos\r\n-273', 25, NULL, NULL),
(274, 10, 'LLAMA\r\n', 'llama\r\n-274', 25, NULL, NULL),
(275, 11, 'MIRACOSTA\r\n', 'miracosta\r\n-275', 25, NULL, NULL),
(276, 13, 'PION\r\n', 'pion\r\n-276', 25, NULL, NULL),
(277, 14, 'QUEROCOTO\r\n', 'querocoto\r\n-277', 25, NULL, NULL),
(278, 16, 'TOCMOCHE\r\n', 'tocmoche\r\n-278', 25, NULL, NULL),
(279, 17, 'SAN JUAN DE LICUPIS\r\n', 'san-juan-de-licupis\r\n-279', 25, NULL, NULL),
(280, 18, 'CHOROPAMPA\r\n', 'choropampa\r\n-280', 25, NULL, NULL),
(281, 19, 'CHALAMARCA\r\n', 'chalamarca\r\n-281', 25, NULL, NULL),
(282, 4, 'CONCHAN\r\n', 'conchan\r\n-282', 25, NULL, NULL),
(283, 12, 'PACCHA\r\n', 'paccha\r\n-283', 25, NULL, NULL),
(284, 9, 'LAJAS\r\n', 'lajas\r\n-284', 25, NULL, NULL),
(285, 15, 'TACABAMBA\r\n', 'tacabamba\r\n-285', 25, NULL, NULL),
(286, 1, 'CUTERVO\r\n', 'cutervo\r\n-286', 26, NULL, NULL),
(287, 2, 'CALLAYUC\r\n', 'callayuc\r\n-287', 26, NULL, NULL),
(288, 3, 'CUJILLO\r\n', 'cujillo\r\n-288', 26, NULL, NULL),
(289, 5, 'LA RAMADA\r\n', 'la-ramada\r\n-289', 26, NULL, NULL),
(290, 6, 'PIMPINGOS\r\n', 'pimpingos\r\n-290', 26, NULL, NULL),
(291, 7, 'QUEROCOTILLO\r\n', 'querocotillo\r\n-291', 26, NULL, NULL),
(292, 8, 'SAN ANDRES DE CUTERVO\r\n', 'san-andres-de-cutervo\r\n-292', 26, NULL, NULL),
(293, 9, 'SAN JUAN DE CUTERVO\r\n', 'san-juan-de-cutervo\r\n-293', 26, NULL, NULL),
(294, 10, 'SAN LUIS DE LUCMA\r\n', 'san-luis-de-lucma\r\n-294', 26, NULL, NULL),
(295, 12, 'SANTO DOMINGO DE LA CAPILLA\r\n', 'santo-domingo-de-la-capilla\r\n-295', 26, NULL, NULL),
(296, 13, 'SANTO TOMAS\r\n', 'santo-tomas\r\n-296', 26, NULL, NULL),
(297, 14, 'SOCOTA\r\n', 'socota\r\n-297', 26, NULL, NULL),
(298, 15, 'TORIBIO CASANOVA\r\n', 'toribio-casanova\r\n-298', 26, NULL, NULL),
(299, 4, 'CHOROS\r\n', 'choros\r\n-299', 26, NULL, NULL),
(300, 11, 'SANTA CRUZ\r\n', 'santa-cruz\r\n-300', 26, NULL, NULL),
(301, 1, 'CELENDIN\r\n', 'celendin\r\n-301', 27, NULL, NULL),
(302, 3, 'CHUMUCH\r\n', 'chumuch\r\n-302', 27, NULL, NULL),
(303, 4, 'HUASMIN\r\n', 'huasmin\r\n-303', 27, NULL, NULL),
(304, 5, 'JORGE CHAVEZ\r\n', 'jorge-chavez\r\n-304', 27, NULL, NULL),
(305, 6, 'JOSE GALVEZ\r\n', 'jose-galvez\r\n-305', 27, NULL, NULL),
(306, 7, 'MIGUEL IGLESIAS\r\n', 'miguel-iglesias\r\n-306', 27, NULL, NULL),
(307, 8, 'OXAMARCA\r\n', 'oxamarca\r\n-307', 27, NULL, NULL),
(308, 10, 'SUCRE\r\n', 'sucre\r\n-308', 27, NULL, NULL),
(309, 11, 'UTCO\r\n', 'utco\r\n-309', 27, NULL, NULL),
(310, 12, 'LA LIBERTAD DE PALLAN\r\n', 'la-libertad-de-pallan\r\n-310', 27, NULL, NULL),
(311, 2, 'CORTEGANA\r\n', 'cortegana\r\n-311', 27, NULL, NULL),
(312, 9, 'SOROCHUCO\r\n', 'sorochuco\r\n-312', 27, NULL, NULL),
(313, 1, 'CAJABAMBA\r\n', 'cajabamba\r\n-313', 28, NULL, NULL),
(314, 2, 'CACHACHI\r\n', 'cachachi\r\n-314', 28, NULL, NULL),
(315, 3, 'CONDEBAMBA\r\n', 'condebamba\r\n-315', 28, NULL, NULL),
(316, 5, 'SITACOCHA\r\n', 'sitacocha\r\n-316', 28, NULL, NULL),
(317, 1, 'URUBAMBA\r\n', 'urubamba\r\n-317', 29, NULL, NULL),
(318, 2, 'CHINCHERO\r\n', 'chinchero\r\n-318', 29, NULL, NULL),
(319, 3, 'HUAYLLABAMBA\r\n', 'huayllabamba\r\n-319', 29, NULL, NULL),
(320, 5, 'MARAS\r\n', 'maras\r\n-320', 29, NULL, NULL),
(321, 6, 'OLLANTAYTAMBO\r\n', 'ollantaytambo\r\n-321', 29, NULL, NULL),
(322, 7, 'YUCAY\r\n', 'yucay\r\n-322', 29, NULL, NULL),
(323, 4, 'MACHUPICCHU\r\n', 'machupicchu\r\n-323', 29, NULL, NULL),
(324, 2, 'ANDAHUAYLILLAS\r\n', 'andahuaylillas\r\n-324', 30, NULL, NULL),
(325, 4, 'CCARHUAYO\r\n', 'ccarhuayo\r\n-325', 30, NULL, NULL),
(326, 5, 'CCATCA\r\n', 'ccatca\r\n-326', 30, NULL, NULL),
(327, 6, 'CUSIPATA\r\n', 'cusipata\r\n-327', 30, NULL, NULL),
(328, 7, 'HUARO\r\n', 'huaro\r\n-328', 30, NULL, NULL),
(329, 8, 'LUCRE\r\n', 'lucre\r\n-329', 30, NULL, NULL),
(330, 10, 'OCONGATE\r\n', 'ocongate\r\n-330', 30, NULL, NULL),
(331, 11, 'OROPESA\r\n', 'oropesa\r\n-331', 30, NULL, NULL),
(332, 12, 'QUIQUIJANA\r\n', 'quiquijana\r\n-332', 30, NULL, NULL),
(333, 3, 'CAMANTI\r\n', 'camanti\r\n-333', 30, NULL, NULL),
(334, 9, 'MARCAPATA\r\n', 'marcapata\r\n-334', 30, NULL, NULL),
(335, 1, 'URCOS\r\n', 'urcos\r\n-335', 30, NULL, NULL),
(336, 2, 'ACCHA\r\n', 'accha\r\n-336', 31, NULL, NULL),
(337, 3, 'CCAPI\r\n', 'ccapi\r\n-337', 31, NULL, NULL),
(338, 4, 'COLCHA\r\n', 'colcha\r\n-338', 31, NULL, NULL),
(339, 5, 'HUANOQUITE\r\n', 'huanoquite\r\n-339', 31, NULL, NULL),
(340, 6, 'OMACHA\r\n', 'omacha\r\n-340', 31, NULL, NULL),
(341, 7, 'YAURISQUE\r\n', 'yaurisque\r\n-341', 31, NULL, NULL),
(342, 1, 'PARURO\r\n', 'paruro\r\n-342', 31, NULL, NULL),
(343, 8, 'PACCARITAMBO\r\n', 'paccaritambo\r\n-343', 31, NULL, NULL),
(344, 9, 'PILLPINTO\r\n', 'pillpinto\r\n-344', 31, NULL, NULL),
(345, 1, 'SANTO TOMAS\r\n', 'santo-tomas\r\n-345', 32, NULL, NULL),
(346, 2, 'CAPACMARCA\r\n', 'capacmarca\r\n-346', 32, NULL, NULL),
(347, 3, 'COLQUEMARCA\r\n', 'colquemarca\r\n-347', 32, NULL, NULL),
(348, 4, 'CHAMACA\r\n', 'chamaca\r\n-348', 32, NULL, NULL),
(349, 6, 'LLUSCO\r\n', 'llusco\r\n-349', 32, NULL, NULL),
(350, 7, 'QUIÑOTA\r\n', 'quiñota\r\n-350', 32, NULL, NULL),
(351, 8, 'VELILLE\r\n', 'velille\r\n-351', 32, NULL, NULL),
(352, 5, 'LIVITACA\r\n', 'livitaca\r\n-352', 32, NULL, NULL),
(353, 1, 'ACOMAYO\r\n', 'acomayo\r\n-353', 33, NULL, NULL),
(354, 2, 'ACOPIA\r\n', 'acopia\r\n-354', 33, NULL, NULL),
(355, 3, 'ACOS\r\n', 'acos\r\n-355', 33, NULL, NULL),
(356, 4, 'POMACANCHI\r\n', 'pomacanchi\r\n-356', 33, NULL, NULL),
(357, 7, 'MOSOC LLACTA\r\n', 'mosoc-llacta\r\n-357', 33, NULL, NULL),
(358, 6, 'SANGARARA\r\n', 'sangarara\r\n-358', 33, NULL, NULL),
(359, 5, 'RONDOCAN\r\n', 'rondocan\r\n-359', 33, NULL, NULL),
(360, 1, 'PAUCARTAMBO\r\n', 'paucartambo\r\n-360', 34, NULL, NULL),
(361, 2, 'CAICAY\r\n', 'caicay\r\n-361', 34, NULL, NULL),
(362, 3, 'COLQUEPATA\r\n', 'colquepata\r\n-362', 34, NULL, NULL),
(363, 4, 'CHALLABAMBA\r\n', 'challabamba\r\n-363', 34, NULL, NULL),
(364, 5, 'KOSÑIPATA\r\n', 'kosñipata\r\n-364', 34, NULL, NULL),
(365, 6, 'HUANCARANI\r\n', 'huancarani\r\n-365', 34, NULL, NULL),
(366, 1, 'SANTA ANA\r\n', 'santa-ana\r\n-366', 35, NULL, NULL),
(367, 2, 'ECHARATI\r\n', 'echarati\r\n-367', 35, NULL, NULL),
(368, 3, 'HUAYOPATA\r\n', 'huayopata\r\n-368', 35, NULL, NULL),
(369, 5, 'OCOBAMBA\r\n', 'ocobamba\r\n-369', 35, NULL, NULL),
(370, 6, 'SANTA TERESA\r\n', 'santa-teresa\r\n-370', 35, NULL, NULL),
(371, 7, 'VILCABAMBA\r\n', 'vilcabamba\r\n-371', 35, NULL, NULL),
(372, 8, 'QUELLOUNO\r\n', 'quellouno\r\n-372', 35, NULL, NULL),
(373, 9, 'KIMBIRI\r\n', 'kimbiri\r\n-373', 35, NULL, NULL),
(374, 10, 'PICHARI\r\n', 'pichari\r\n-374', 35, NULL, NULL),
(375, 4, 'MARANURA\r\n', 'maranura\r\n-375', 35, NULL, NULL),
(376, 1, 'ESPINAR\r\n', 'espinar\r\n-376', 36, NULL, NULL),
(377, 2, 'CONDOROMA\r\n', 'condoroma\r\n-377', 36, NULL, NULL),
(378, 3, 'COPORAQUE\r\n', 'coporaque\r\n-378', 36, NULL, NULL),
(379, 4, 'OCORURO\r\n', 'ocoruro\r\n-379', 36, NULL, NULL),
(380, 6, 'PICHIGUA\r\n', 'pichigua\r\n-380', 36, NULL, NULL),
(381, 7, 'SUYCKUTAMBO\r\n', 'suyckutambo\r\n-381', 36, NULL, NULL),
(382, 8, 'ALTO PICHIGUA\r\n', 'alto-pichigua\r\n-382', 36, NULL, NULL),
(383, 5, 'PALLPATA\r\n', 'pallpata\r\n-383', 36, NULL, NULL),
(384, 1, 'SICUANI\r\n', 'sicuani\r\n-384', 37, NULL, NULL),
(385, 2, 'COMBAPATA\r\n', 'combapata\r\n-385', 37, NULL, NULL),
(386, 3, 'CHECACUPE\r\n', 'checacupe\r\n-386', 37, NULL, NULL),
(387, 4, 'MARANGANI\r\n', 'marangani\r\n-387', 37, NULL, NULL),
(388, 5, 'PITUMARCA\r\n', 'pitumarca\r\n-388', 37, NULL, NULL),
(389, 7, 'SAN PEDRO\r\n', 'san-pedro\r\n-389', 37, NULL, NULL),
(390, 8, 'TINTA\r\n', 'tinta\r\n-390', 37, NULL, NULL),
(391, 6, 'SAN PABLO\r\n', 'san-pablo\r\n-391', 37, NULL, NULL),
(392, 1, 'YANAOCA\r\n', 'yanaoca\r\n-392', 38, NULL, NULL),
(393, 2, 'CHECCA\r\n', 'checca\r\n-393', 38, NULL, NULL),
(394, 3, 'KUNTURKANKI\r\n', 'kunturkanki\r\n-394', 38, NULL, NULL),
(395, 4, 'LANGUI\r\n', 'langui\r\n-395', 38, NULL, NULL),
(396, 5, 'LAYO\r\n', 'layo\r\n-396', 38, NULL, NULL),
(397, 6, 'PAMPAMARCA\r\n', 'pampamarca\r\n-397', 38, NULL, NULL),
(398, 8, 'TUPAC AMARU\r\n', 'tupac-amaru\r\n-398', 38, NULL, NULL),
(399, 7, 'QUEHUE\r\n', 'quehue\r\n-399', 38, NULL, NULL),
(400, 2, 'COYA\r\n', 'coya\r\n-400', 39, NULL, NULL),
(401, 3, 'LAMAY\r\n', 'lamay\r\n-401', 39, NULL, NULL),
(402, 4, 'LARES\r\n', 'lares\r\n-402', 39, NULL, NULL),
(403, 5, 'PISAC\r\n', 'pisac\r\n-403', 39, NULL, NULL),
(404, 6, 'SAN SALVADOR\r\n', 'san-salvador\r\n-404', 39, NULL, NULL),
(405, 7, 'TARAY\r\n', 'taray\r\n-405', 39, NULL, NULL),
(406, 1, 'CALCA\r\n', 'calca\r\n-406', 39, NULL, NULL),
(407, 8, 'YANATILE\r\n', 'yanatile\r\n-407', 39, NULL, NULL),
(408, 1, 'ANTA\r\n', 'anta\r\n-408', 40, NULL, NULL),
(409, 2, 'CHINCHAYPUJIO\r\n', 'chinchaypujio\r\n-409', 40, NULL, NULL),
(410, 4, 'LIMATAMBO\r\n', 'limatambo\r\n-410', 40, NULL, NULL),
(411, 5, 'MOLLEPATA\r\n', 'mollepata\r\n-411', 40, NULL, NULL),
(412, 6, 'PUCYURA\r\n', 'pucyura\r\n-412', 40, NULL, NULL),
(413, 7, 'ZURITE\r\n', 'zurite\r\n-413', 40, NULL, NULL),
(414, 8, 'CACHIMAYO\r\n', 'cachimayo\r\n-414', 40, NULL, NULL),
(415, 9, 'ANCAHUASI\r\n', 'ancahuasi\r\n-415', 40, NULL, NULL),
(416, 3, 'HUAROCONDO\r\n', 'huarocondo\r\n-416', 40, NULL, NULL),
(417, 1, 'CUSCO\r\n', 'cusco\r\n-417', 41, NULL, NULL),
(418, 2, 'CCORCA\r\n', 'ccorca\r\n-418', 41, NULL, NULL),
(419, 3, 'POROY\r\n', 'poroy\r\n-419', 41, NULL, NULL),
(420, 5, 'SAN SEBASTIAN\r\n', 'san-sebastian\r\n-420', 41, NULL, NULL),
(421, 6, 'SANTIAGO\r\n', 'santiago\r\n-421', 41, NULL, NULL),
(422, 8, 'WANCHAQ\r\n', 'wanchaq\r\n-422', 41, NULL, NULL),
(423, 4, 'SAN JERONIMO\r\n', 'san-jeronimo\r\n-423', 41, NULL, NULL),
(424, 7, 'SAYLLA\r\n', 'saylla\r\n-424', 41, NULL, NULL),
(425, 1, 'CASTROVIRREYNA\r\n', 'castrovirreyna\r\n-425', 42, NULL, NULL),
(426, 3, 'AURAHUA\r\n', 'aurahua\r\n-426', 42, NULL, NULL),
(427, 5, 'CAPILLAS\r\n', 'capillas\r\n-427', 42, NULL, NULL),
(428, 6, 'COCAS\r\n', 'cocas\r\n-428', 42, NULL, NULL),
(429, 8, 'CHUPAMARCA\r\n', 'chupamarca\r\n-429', 42, NULL, NULL),
(430, 9, 'HUACHOS\r\n', 'huachos\r\n-430', 42, NULL, NULL),
(431, 10, 'HUAMATAMBO\r\n', 'huamatambo\r\n-431', 42, NULL, NULL),
(432, 22, 'SAN JUAN\r\n', 'san-juan\r\n-432', 42, NULL, NULL),
(433, 27, 'TANTARA\r\n', 'tantara\r\n-433', 42, NULL, NULL),
(434, 28, 'TICRAPO\r\n', 'ticrapo\r\n-434', 42, NULL, NULL),
(435, 29, 'SANTA ANA\r\n', 'santa-ana\r\n-435', 42, NULL, NULL),
(436, 2, 'ARMA\r\n', 'arma\r\n-436', 42, NULL, NULL),
(437, 14, 'MOLLEPAMPA\r\n', 'mollepampa\r\n-437', 42, NULL, NULL),
(438, 1, 'ACOBAMBA\r\n', 'acobamba\r\n-438', 43, NULL, NULL),
(439, 2, 'ANTA\r\n', 'anta\r\n-439', 43, NULL, NULL),
(440, 3, 'ANDABAMBA\r\n', 'andabamba\r\n-440', 43, NULL, NULL),
(441, 4, 'CAJA\r\n', 'caja\r\n-441', 43, NULL, NULL),
(442, 5, 'MARCAS\r\n', 'marcas\r\n-442', 43, NULL, NULL),
(443, 6, 'PAUCARA\r\n', 'paucara\r\n-443', 43, NULL, NULL),
(444, 8, 'ROSARIO\r\n', 'rosario\r\n-444', 43, NULL, NULL),
(445, 7, 'POMACOCHA\r\n', 'pomacocha\r\n-445', 43, NULL, NULL),
(446, 1, 'CHURCAMPA\r\n', 'churcampa\r\n-446', 44, NULL, NULL),
(447, 2, 'ANCO\r\n', 'anco\r\n-447', 44, NULL, NULL),
(448, 3, 'CHINCHIHUASI\r\n', 'chinchihuasi\r\n-448', 44, NULL, NULL),
(449, 4, 'EL CARMEN\r\n', 'el-carmen\r\n-449', 44, NULL, NULL),
(450, 5, 'LA MERCED\r\n', 'la-merced\r\n-450', 44, NULL, NULL),
(451, 7, 'PAUCARBAMBA\r\n', 'paucarbamba\r\n-451', 44, NULL, NULL),
(452, 8, 'SAN MIGUEL DE MAYOCC\r\n', 'san-miguel-de-mayocc\r\n-452', 44, NULL, NULL),
(453, 9, 'SAN PEDRO DE CORIS\r\n', 'san-pedro-de-coris\r\n-453', 44, NULL, NULL),
(454, 10, 'PACHAMARCA\r\n', 'pachamarca\r\n-454', 44, NULL, NULL),
(455, 6, 'LOCROJA\r\n', 'locroja\r\n-455', 44, NULL, NULL),
(456, 1, 'AYAVI\r\n', 'ayavi\r\n-456', 45, NULL, NULL),
(457, 2, 'CORDOVA\r\n', 'cordova\r\n-457', 45, NULL, NULL),
(458, 3, 'HUAYACUNDO ARMA\r\n', 'huayacundo-arma\r\n-458', 45, NULL, NULL),
(459, 4, 'HUAYTARA\r\n', 'huaytara\r\n-459', 45, NULL, NULL),
(460, 5, 'LARAMARCA\r\n', 'laramarca\r\n-460', 45, NULL, NULL),
(461, 7, 'PILPICHACA\r\n', 'pilpichaca\r\n-461', 45, NULL, NULL),
(462, 8, 'QUERCO\r\n', 'querco\r\n-462', 45, NULL, NULL),
(463, 9, 'QUITO ARMA\r\n', 'quito-arma\r\n-463', 45, NULL, NULL),
(464, 10, 'SAN ANTONIO DE CUSICANCHA\r\n', 'san-antonio-de-cusicancha\r\n-464', 45, NULL, NULL),
(465, 11, 'SAN FRANCISCO DE SANGAYAICO\r\n', 'san-francisco-de-sangayaico\r\n-465', 45, NULL, NULL),
(466, 12, 'SAN ISIDRO\r\n', 'san-isidro\r\n-466', 45, NULL, NULL),
(467, 14, 'SANTIAGO DE QUIRAHUARA\r\n', 'santiago-de-quirahuara\r\n-467', 45, NULL, NULL),
(468, 15, 'SANTO DOMINGO DE CAPILLAS\r\n', 'santo-domingo-de-capillas\r\n-468', 45, NULL, NULL),
(469, 16, 'TAMBO\r\n', 'tambo\r\n-469', 45, NULL, NULL),
(470, 6, 'OCOYO\r\n', 'ocoyo\r\n-470', 45, NULL, NULL),
(471, 13, 'SANTIAGO DE CHOCORVOS\r\n', 'santiago-de-chocorvos\r\n-471', 45, NULL, NULL),
(472, 1, 'PAMPAS\r\n', 'pampas\r\n-472', 46, NULL, NULL),
(473, 2, 'ACOSTAMBO\r\n', 'acostambo\r\n-473', 46, NULL, NULL),
(474, 6, 'COLCABAMBA\r\n', 'colcabamba\r\n-474', 46, NULL, NULL),
(475, 9, 'DANIEL HERNANDEZ\r\n', 'daniel-hernandez\r\n-475', 46, NULL, NULL),
(476, 11, 'HUACHOCOLPA\r\n', 'huachocolpa\r\n-476', 46, NULL, NULL),
(477, 12, 'HUARIBAMBA\r\n', 'huaribamba\r\n-477', 46, NULL, NULL),
(478, 15, 'ÑAHUIMPUQUIO\r\n', 'ñahuimpuquio\r\n-478', 46, NULL, NULL),
(479, 18, 'QUISHUAR\r\n', 'quishuar\r\n-479', 46, NULL, NULL),
(480, 19, 'SALCABAMBA\r\n', 'salcabamba\r\n-480', 46, NULL, NULL),
(481, 23, 'SURCABAMBA\r\n', 'surcabamba\r\n-481', 46, NULL, NULL),
(482, 25, 'TINTAY PUNCU\r\n', 'tintay-puncu\r\n-482', 46, NULL, NULL),
(483, 26, 'SALCAHUASI\r\n', 'salcahuasi\r\n-483', 46, NULL, NULL),
(484, 3, 'ACRAQUIA\r\n', 'acraquia\r\n-484', 46, NULL, NULL),
(485, 20, 'SAN MARCOS DE ROCCHAC\r\n', 'san-marcos-de-rocchac\r\n-485', 46, NULL, NULL),
(486, 4, 'AHUAYCHA\r\n', 'ahuaycha\r\n-486', 46, NULL, NULL),
(487, 17, 'PAZOS\r\n', 'pazos\r\n-487', 46, NULL, NULL),
(488, 1, 'LIRCAY\r\n', 'lircay\r\n-488', 47, NULL, NULL),
(489, 2, 'ANCHONGA\r\n', 'anchonga\r\n-489', 47, NULL, NULL),
(490, 3, 'CALLANMARCA\r\n', 'callanmarca\r\n-490', 47, NULL, NULL),
(491, 4, 'CONGALLA\r\n', 'congalla\r\n-491', 47, NULL, NULL),
(492, 5, 'CHINCHO\r\n', 'chincho\r\n-492', 47, NULL, NULL),
(493, 7, 'HUANCA-HUANCA\r\n', 'huanca-huanca\r\n-493', 47, NULL, NULL),
(494, 8, 'JULCAMARCA\r\n', 'julcamarca\r\n-494', 47, NULL, NULL),
(495, 9, 'SAN ANTONIO DE ANTAPARCO\r\n', 'san-antonio-de-antaparco\r\n-495', 47, NULL, NULL),
(496, 10, 'SANTO TOMAS DE PATA\r\n', 'santo-tomas-de-pata\r\n-496', 47, NULL, NULL),
(497, 11, 'SECCLLA\r\n', 'secclla\r\n-497', 47, NULL, NULL),
(498, 12, 'CCOCHACCASA\r\n', 'ccochaccasa\r\n-498', 47, NULL, NULL),
(499, 6, 'HUALLAY-GRANDE\r\n', 'huallay-grande\r\n-499', 47, NULL, NULL),
(500, 1, 'HUANCAVELICA\r\n', 'huancavelica\r\n-500', 48, NULL, NULL),
(501, 2, 'ACOBAMBILLA\r\n', 'acobambilla\r\n-501', 48, NULL, NULL),
(502, 3, 'ACORIA\r\n', 'acoria\r\n-502', 48, NULL, NULL),
(503, 4, 'CONAYCA\r\n', 'conayca\r\n-503', 48, NULL, NULL),
(504, 6, 'HUACHOCOLPA\r\n', 'huachocolpa\r\n-504', 48, NULL, NULL),
(505, 8, 'HUAYLLAHUARA\r\n', 'huayllahuara\r\n-505', 48, NULL, NULL),
(506, 9, 'IZCUCHACA\r\n', 'izcuchaca\r\n-506', 48, NULL, NULL),
(507, 10, 'LARIA\r\n', 'laria\r\n-507', 48, NULL, NULL),
(508, 11, 'MANTA\r\n', 'manta\r\n-508', 48, NULL, NULL),
(509, 12, 'MARISCAL CACERES\r\n', 'mariscal-caceres\r\n-509', 48, NULL, NULL),
(510, 14, 'NUEVO OCCORO\r\n', 'nuevo-occoro\r\n-510', 48, NULL, NULL),
(511, 15, 'PALCA\r\n', 'palca\r\n-511', 48, NULL, NULL),
(512, 16, 'PILCHACA\r\n', 'pilchaca\r\n-512', 48, NULL, NULL),
(513, 17, 'VILCA\r\n', 'vilca\r\n-513', 48, NULL, NULL),
(514, 18, 'YAULI\r\n', 'yauli\r\n-514', 48, NULL, NULL),
(515, 20, 'HUANDO\r\n', 'huando\r\n-515', 48, NULL, NULL),
(516, 5, 'CUENCA\r\n', 'cuenca\r\n-516', 48, NULL, NULL),
(517, 13, 'MOYA\r\n', 'moya\r\n-517', 48, NULL, NULL),
(518, 19, 'ASCENSION\r\n', 'ascension\r\n-518', 48, NULL, NULL),
(519, 1, 'JESUS\r\n', 'jesus\r\n-519', 49, NULL, NULL),
(520, 2, 'BAÑOS\r\n', 'baños\r\n-520', 49, NULL, NULL),
(521, 4, 'QUEROPALCA\r\n', 'queropalca\r\n-521', 49, NULL, NULL),
(522, 5, 'SAN MIGUEL DE CAURI\r\n', 'san-miguel-de-cauri\r\n-522', 49, NULL, NULL),
(523, 6, 'RONDOS\r\n', 'rondos\r\n-523', 49, NULL, NULL),
(524, 7, 'JIVIA\r\n', 'jivia\r\n-524', 49, NULL, NULL),
(525, 3, 'SAN FRANCISCO DE ASIS\r\n', 'san-francisco-de-asis\r\n-525', 49, NULL, NULL),
(526, 1, 'LLATA\r\n', 'llata\r\n-526', 50, NULL, NULL),
(527, 2, 'ARANCAY\r\n', 'arancay\r\n-527', 50, NULL, NULL),
(528, 3, 'CHAVIN DE PARIARCA\r\n', 'chavin-de-pariarca\r\n-528', 50, NULL, NULL),
(529, 4, 'JACAS GRANDE\r\n', 'jacas-grande\r\n-529', 50, NULL, NULL),
(530, 5, 'JIRCAN\r\n', 'jircan\r\n-530', 50, NULL, NULL),
(531, 7, 'MONZON\r\n', 'monzon\r\n-531', 50, NULL, NULL),
(532, 8, 'PUNCHAO\r\n', 'punchao\r\n-532', 50, NULL, NULL),
(533, 9, 'PUÑOS\r\n', 'puños\r\n-533', 50, NULL, NULL),
(534, 10, 'SINGA\r\n', 'singa\r\n-534', 50, NULL, NULL),
(535, 6, 'MIRAFLORES\r\n', 'miraflores\r\n-535', 50, NULL, NULL),
(536, 11, 'TANTAMAYO\r\n', 'tantamayo\r\n-536', 50, NULL, NULL),
(537, 1, 'AMBO\r\n', 'ambo\r\n-537', 51, NULL, NULL),
(538, 2, 'CAYNA\r\n', 'cayna\r\n-538', 51, NULL, NULL),
(539, 3, 'COLPAS\r\n', 'colpas\r\n-539', 51, NULL, NULL),
(540, 4, 'CONCHAMARCA\r\n', 'conchamarca\r\n-540', 51, NULL, NULL),
(541, 5, 'HUACAR\r\n', 'huacar\r\n-541', 51, NULL, NULL),
(542, 6, 'SAN FRANCISCO\r\n', 'san-francisco\r\n-542', 51, NULL, NULL),
(543, 7, 'SAN RAFAEL\r\n', 'san-rafael\r\n-543', 51, NULL, NULL),
(544, 8, 'TOMAY-KICHWA\r\n', 'tomay-kichwa\r\n-544', 51, NULL, NULL),
(545, 1, 'CHAVINILLO\r\n', 'chavinillo\r\n-545', 52, NULL, NULL),
(546, 2, 'APARICIO POMARES\r\n', 'aparicio-pomares\r\n-546', 52, NULL, NULL),
(547, 3, 'CAHUAC\r\n', 'cahuac\r\n-547', 52, NULL, NULL),
(548, 4, 'CHACABAMBA\r\n', 'chacabamba\r\n-548', 52, NULL, NULL),
(549, 6, 'OBAS\r\n', 'obas\r\n-549', 52, NULL, NULL),
(550, 7, 'PAMPAMARCA\r\n', 'pampamarca\r\n-550', 52, NULL, NULL),
(551, 8, 'CHORAS\r\n', 'choras\r\n-551', 52, NULL, NULL),
(552, 5, 'JACAS CHICO\r\n', 'jacas-chico\r\n-552', 52, NULL, NULL),
(553, 1, 'HUACAYBAMBA\r\n', 'huacaybamba\r\n-553', 53, NULL, NULL),
(554, 2, 'PINRA\r\n', 'pinra\r\n-554', 53, NULL, NULL),
(555, 3, 'CANCHABAMBA\r\n', 'canchabamba\r\n-555', 53, NULL, NULL),
(556, 4, 'COCHABAMBA\r\n', 'cochabamba\r\n-556', 53, NULL, NULL),
(557, 1, 'HONORIA\r\n', 'honoria\r\n-557', 54, NULL, NULL),
(558, 2, 'PUERTO INCA\r\n', 'puerto-inca\r\n-558', 54, NULL, NULL),
(559, 3, 'CODO DEL POZUZO\r\n', 'codo-del-pozuzo\r\n-559', 54, NULL, NULL),
(560, 4, 'TOURNAVISTA\r\n', 'tournavista\r\n-560', 54, NULL, NULL),
(561, 5, 'YUYAPICHIS\r\n', 'yuyapichis\r\n-561', 54, NULL, NULL),
(562, 1, 'PANAO\r\n', 'panao\r\n-562', 55, NULL, NULL),
(563, 2, 'CHAGLLA\r\n', 'chaglla\r\n-563', 55, NULL, NULL),
(564, 4, 'MOLINO\r\n', 'molino\r\n-564', 55, NULL, NULL),
(565, 6, 'UMARI\r\n', 'umari\r\n-565', 55, NULL, NULL),
(566, 1, 'RUPA-RUPA\r\n', 'rupa-rupa\r\n-566', 56, NULL, NULL),
(567, 2, 'DANIEL ALOMIA ROBLES\r\n', 'daniel-alomia-robles\r\n-567', 56, NULL, NULL),
(568, 3, 'HERMILIO VALDIZAN\r\n', 'hermilio-valdizan\r\n-568', 56, NULL, NULL),
(569, 4, 'LUYANDO\r\n', 'luyando\r\n-569', 56, NULL, NULL),
(570, 6, 'JOSE CRESPO Y CASTILLO\r\n', 'jose-crespo-y-castillo\r\n-570', 56, NULL, NULL),
(571, 5, 'MARIANO DAMASO BERAUN\r\n', 'mariano-damaso-beraun\r\n-571', 56, NULL, NULL),
(572, 1, 'HUACRACHUCO\r\n', 'huacrachuco\r\n-572', 57, NULL, NULL),
(573, 2, 'CHOLON\r\n', 'cholon\r\n-573', 57, NULL, NULL),
(574, 5, 'SAN BUENAVENTURA\r\n', 'san-buenaventura\r\n-574', 57, NULL, NULL),
(575, 1, 'LA UNION\r\n', 'la-union\r\n-575', 58, NULL, NULL),
(576, 7, 'CHUQUIS\r\n', 'chuquis\r\n-576', 58, NULL, NULL),
(577, 12, 'MARIAS\r\n', 'marias\r\n-577', 58, NULL, NULL),
(578, 14, 'PACHAS\r\n', 'pachas\r\n-578', 58, NULL, NULL),
(579, 16, 'QUIVILLA\r\n', 'quivilla\r\n-579', 58, NULL, NULL),
(580, 17, 'RIPAN\r\n', 'ripan\r\n-580', 58, NULL, NULL),
(581, 21, 'SHUNQUI\r\n', 'shunqui\r\n-581', 58, NULL, NULL),
(582, 23, 'YANAS\r\n', 'yanas\r\n-582', 58, NULL, NULL),
(583, 22, 'SILLAPATA\r\n', 'sillapata\r\n-583', 58, NULL, NULL),
(584, 1, 'HUANUCO\r\n', 'huanuco\r\n-584', 59, NULL, NULL),
(585, 2, 'CHINCHAO\r\n', 'chinchao\r\n-585', 59, NULL, NULL),
(586, 4, 'MARGOS\r\n', 'margos\r\n-586', 59, NULL, NULL),
(587, 5, 'QUISQUI\r\n', 'quisqui\r\n-587', 59, NULL, NULL),
(588, 6, 'SAN FRANCISCO DE CAYRAN\r\n', 'san-francisco-de-cayran\r\n-588', 59, NULL, NULL),
(589, 7, 'SAN PEDRO DE CHAULAN\r\n', 'san-pedro-de-chaulan\r\n-589', 59, NULL, NULL),
(590, 8, 'SANTA MARIA DEL VALLE\r\n', 'santa-maria-del-valle\r\n-590', 59, NULL, NULL),
(591, 9, 'YARUMAYO\r\n', 'yarumayo\r\n-591', 59, NULL, NULL),
(592, 10, 'AMARILIS\r\n', 'amarilis\r\n-592', 59, NULL, NULL),
(593, 3, 'CHURUBAMBA\r\n', 'churubamba\r\n-593', 59, NULL, NULL),
(594, 11, 'PILLCO MARCA\r\n', 'pillco-marca\r\n-594', 59, NULL, NULL),
(595, 2, 'LLIPATA\r\n', 'llipata\r\n-595', 60, NULL, NULL),
(596, 1, 'PALPA\r\n', 'palpa\r\n-596', 60, NULL, NULL),
(597, 4, 'SANTA CRUZ\r\n', 'santa-cruz\r\n-597', 60, NULL, NULL),
(598, 5, 'TIBILLO\r\n', 'tibillo\r\n-598', 60, NULL, NULL),
(599, 3, 'RIO GRANDE\r\n', 'rio-grande\r\n-599', 60, NULL, NULL),
(600, 1, 'NAZCA\r\n', 'nazca\r\n-600', 61, NULL, NULL),
(601, 2, 'CHANGUILLO\r\n', 'changuillo\r\n-601', 61, NULL, NULL),
(602, 3, 'EL INGENIO\r\n', 'el-ingenio\r\n-602', 61, NULL, NULL),
(603, 4, 'MARCONA\r\n', 'marcona\r\n-603', 61, NULL, NULL),
(604, 5, 'VISTA ALEGRE\r\n', 'vista-alegre\r\n-604', 61, NULL, NULL),
(605, 1, 'ICA\r\n', 'ica\r\n-605', 62, NULL, NULL),
(606, 2, 'LA TINGUIÑA\r\n', 'la-tinguiña\r\n-606', 62, NULL, NULL),
(607, 3, 'LOS AQUIJES\r\n', 'los-aquijes\r\n-607', 62, NULL, NULL),
(608, 4, 'PARCONA\r\n', 'parcona\r\n-608', 62, NULL, NULL),
(609, 6, 'SALAS\r\n', 'salas\r\n-609', 62, NULL, NULL),
(610, 7, 'SAN JOSE DE LOS MOLINOS\r\n', 'san-jose-de-los-molinos\r\n-610', 62, NULL, NULL),
(611, 8, 'SAN JUAN BAUTISTA\r\n', 'san-juan-bautista\r\n-611', 62, NULL, NULL),
(612, 9, 'SANTIAGO\r\n', 'santiago\r\n-612', 62, NULL, NULL),
(613, 10, 'SUBTANJALLA\r\n', 'subtanjalla\r\n-613', 62, NULL, NULL),
(614, 11, 'YAUCA DEL ROSARIO\r\n', 'yauca-del-rosario\r\n-614', 62, NULL, NULL),
(615, 12, 'TATE\r\n', 'tate\r\n-615', 62, NULL, NULL),
(616, 14, 'OCUCAJE\r\n', 'ocucaje\r\n-616', 62, NULL, NULL),
(617, 5, 'PUEBLO NUEVO\r\n', 'pueblo-nuevo\r\n-617', 62, NULL, NULL),
(618, 13, 'PACHACUTEC\r\n', 'pachacutec\r\n-618', 62, NULL, NULL),
(619, 1, 'PISCO\r\n', 'pisco\r\n-619', 63, NULL, NULL),
(620, 2, 'HUANCANO\r\n', 'huancano\r\n-620', 63, NULL, NULL),
(621, 3, 'HUMAY\r\n', 'humay\r\n-621', 63, NULL, NULL),
(622, 4, 'INDEPENDENCIA\r\n', 'independencia\r\n-622', 63, NULL, NULL),
(623, 5, 'PARACAS\r\n', 'paracas\r\n-623', 63, NULL, NULL),
(624, 6, 'SAN ANDRES\r\n', 'san-andres\r\n-624', 63, NULL, NULL),
(625, 8, 'TUPAC AMARU INCA\r\n', 'tupac-amaru-inca\r\n-625', 63, NULL, NULL),
(626, 7, 'SAN CLEMENTE\r\n', 'san-clemente\r\n-626', 63, NULL, NULL),
(627, 1, 'CHINCHA ALTA\r\n', 'chincha-alta\r\n-627', 64, NULL, NULL),
(628, 2, 'CHAVIN\r\n', 'chavin\r\n-628', 64, NULL, NULL),
(629, 3, 'CHINCHA BAJA\r\n', 'chincha-baja\r\n-629', 64, NULL, NULL),
(630, 4, 'EL CARMEN\r\n', 'el-carmen\r\n-630', 64, NULL, NULL),
(631, 5, 'GROCIO PRADO\r\n', 'grocio-prado\r\n-631', 64, NULL, NULL),
(632, 7, 'SUNAMPE\r\n', 'sunampe\r\n-632', 64, NULL, NULL),
(633, 8, 'TAMBO DE MORA\r\n', 'tambo-de-mora\r\n-633', 64, NULL, NULL),
(634, 9, 'ALTO LARAN\r\n', 'alto-laran\r\n-634', 64, NULL, NULL),
(635, 10, 'PUEBLO NUEVO\r\n', 'pueblo-nuevo\r\n-635', 64, NULL, NULL),
(636, 11, 'SAN JUAN DE YANAC\r\n', 'san-juan-de-yanac\r\n-636', 64, NULL, NULL),
(637, 6, 'SAN PEDRO DE HUACARPANA\r\n', 'san-pedro-de-huacarpana\r\n-637', 64, NULL, NULL),
(638, 1, 'TAMBOPATA\r\n', 'tambopata\r\n-638', 65, NULL, NULL),
(639, 2, 'INAMBARI\r\n', 'inambari\r\n-639', 65, NULL, NULL),
(640, 4, 'LABERINTO\r\n', 'laberinto\r\n-640', 65, NULL, NULL),
(641, 3, 'LAS PIEDRAS\r\n', 'las-piedras\r\n-641', 65, NULL, NULL),
(642, 1, 'IÑAPARI\r\n', 'iñapari\r\n-642', 66, NULL, NULL),
(643, 3, 'TAHUAMANU\r\n', 'tahuamanu\r\n-643', 66, NULL, NULL),
(644, 2, 'IBERIA\r\n', 'iberia\r\n-644', 66, NULL, NULL),
(645, 1, 'MANU\r\n', 'manu\r\n-645', 67, NULL, NULL),
(646, 2, 'FITZCARRALD\r\n', 'fitzcarrald\r\n-646', 67, NULL, NULL),
(647, 3, 'MADRE DE DIOS\r\n', 'madre-de-dios\r\n-647', 67, NULL, NULL),
(648, 4, 'HUEPETUHE\r\n', 'huepetuhe\r\n-648', 67, NULL, NULL),
(649, 1, 'OXAPAMPA\r\n', 'oxapampa\r\n-649', 68, NULL, NULL),
(650, 3, 'HUANCABAMBA\r\n', 'huancabamba\r\n-650', 68, NULL, NULL),
(651, 4, 'PUERTO BERMUDEZ\r\n', 'puerto-bermudez\r\n-651', 68, NULL, NULL),
(652, 5, 'VILLA RICA\r\n', 'villa-rica\r\n-652', 68, NULL, NULL),
(653, 6, 'POZUZO\r\n', 'pozuzo\r\n-653', 68, NULL, NULL),
(654, 7, 'PALCAZU\r\n', 'palcazu\r\n-654', 68, NULL, NULL),
(655, 2, 'CHONTABAMBA\r\n', 'chontabamba\r\n-655', 68, NULL, NULL),
(656, 3, 'HUACHON\r\n', 'huachon\r\n-656', 69, NULL, NULL),
(657, 4, 'HUARIACA\r\n', 'huariaca\r\n-657', 69, NULL, NULL),
(658, 5, 'HUAYLLAY\r\n', 'huayllay\r\n-658', 69, NULL, NULL),
(659, 6, 'NINACACA\r\n', 'ninacaca\r\n-659', 69, NULL, NULL),
(660, 7, 'PALLANCHACRA\r\n', 'pallanchacra\r\n-660', 69, NULL, NULL),
(661, 8, 'PAUCARTAMBO\r\n', 'paucartambo\r\n-661', 69, NULL, NULL),
(662, 9, 'SAN FRANCISCO DE ASIS DE YARUSYACAN\r\n', 'san-francisco-de-asis-de-yarusyacan\r\n-662', 69, NULL, NULL),
(663, 11, 'TICLACAYAN\r\n', 'ticlacayan\r\n-663', 69, NULL, NULL),
(664, 12, 'TINYAHUARCO\r\n', 'tinyahuarco\r\n-664', 69, NULL, NULL),
(665, 13, 'VICCO\r\n', 'vicco\r\n-665', 69, NULL, NULL),
(666, 14, 'YANACANCHA\r\n', 'yanacancha\r\n-666', 69, NULL, NULL),
(667, 1, 'CHAUPIMARCA\r\n', 'chaupimarca\r\n-667', 69, NULL, NULL),
(668, 10, 'SIMON BOLIVAR\r\n', 'simon-bolivar\r\n-668', 69, NULL, NULL),
(669, 1, 'YANAHUANCA\r\n', 'yanahuanca\r\n-669', 70, NULL, NULL),
(670, 2, 'CHACAYAN\r\n', 'chacayan\r\n-670', 70, NULL, NULL),
(671, 3, 'GOYLLARISQUIZGA\r\n', 'goyllarisquizga\r\n-671', 70, NULL, NULL),
(672, 5, 'SAN PEDRO DE PILLAO\r\n', 'san-pedro-de-pillao\r\n-672', 70, NULL, NULL),
(673, 6, 'SANTA ANA DE TUSI\r\n', 'santa-ana-de-tusi\r\n-673', 70, NULL, NULL),
(674, 7, 'TAPUC\r\n', 'tapuc\r\n-674', 70, NULL, NULL),
(675, 8, 'VILCABAMBA\r\n', 'vilcabamba\r\n-675', 70, NULL, NULL),
(676, 4, 'PAUCAR\r\n', 'paucar\r\n-676', 70, NULL, NULL),
(677, 1, 'SULLANA\r\n', 'sullana\r\n-677', 71, NULL, NULL),
(678, 3, 'LANCONES\r\n', 'lancones\r\n-678', 71, NULL, NULL),
(679, 4, 'MARCAVELICA\r\n', 'marcavelica\r\n-679', 71, NULL, NULL),
(680, 5, 'MIGUEL CHECA\r\n', 'miguel-checa\r\n-680', 71, NULL, NULL),
(681, 6, 'QUERECOTILLO\r\n', 'querecotillo\r\n-681', 71, NULL, NULL),
(682, 7, 'SALITRAL\r\n', 'salitral\r\n-682', 71, NULL, NULL),
(683, 8, 'IGNACIO ESCUDERO\r\n', 'ignacio-escudero\r\n-683', 71, NULL, NULL),
(684, 2, 'BELLAVISTA\r\n', 'bellavista\r\n-684', 71, NULL, NULL),
(685, 1, 'HUANCABAMBA\r\n', 'huancabamba\r\n-685', 72, NULL, NULL),
(686, 2, 'CANCHAQUE\r\n', 'canchaque\r\n-686', 72, NULL, NULL),
(687, 3, 'HUARMACA\r\n', 'huarmaca\r\n-687', 72, NULL, NULL),
(688, 4, 'SONDOR\r\n', 'sondor\r\n-688', 72, NULL, NULL),
(689, 6, 'EL CARMEN DE LA FRONTERA\r\n', 'el-carmen-de-la-frontera\r\n-689', 72, NULL, NULL),
(690, 7, 'SAN MIGUEL DE EL FAIQUE\r\n', 'san-miguel-de-el-faique\r\n-690', 72, NULL, NULL),
(691, 8, 'LALAQUIZ\r\n', 'lalaquiz\r\n-691', 72, NULL, NULL),
(692, 5, 'SONDORILLO\r\n', 'sondorillo\r\n-692', 72, NULL, NULL),
(693, 1, 'SECHURA\r\n', 'sechura\r\n-693', 73, NULL, NULL),
(694, 2, 'VICE\r\n', 'vice\r\n-694', 73, NULL, NULL),
(695, 4, 'BELLAVISTA DE LA UNION\r\n', 'bellavista-de-la-union\r\n-695', 73, NULL, NULL),
(696, 5, 'CRISTO NOS VALGA\r\n', 'cristo-nos-valga\r\n-696', 73, NULL, NULL),
(697, 6, 'RINCONADA-LLICUAR\r\n', 'rinconada-llicuar\r\n-697', 73, NULL, NULL),
(698, 3, 'BERNAL\r\n', 'bernal\r\n-698', 73, NULL, NULL),
(699, 1, 'PARIÑAS\r\n', 'pariñas\r\n-699', 74, NULL, NULL),
(700, 3, 'LA BREA\r\n', 'la-brea\r\n-700', 74, NULL, NULL),
(701, 4, 'LOBITOS\r\n', 'lobitos\r\n-701', 74, NULL, NULL),
(702, 5, 'MANCORA\r\n', 'mancora\r\n-702', 74, NULL, NULL),
(703, 6, 'LOS ORGANOS\r\n', 'los-organos\r\n-703', 74, NULL, NULL),
(704, 2, 'EL ALTO\r\n', 'el-alto\r\n-704', 74, NULL, NULL),
(705, 1, 'PAITA\r\n', 'paita\r\n-705', 75, NULL, NULL),
(706, 3, 'ARENAL\r\n', 'arenal\r\n-706', 75, NULL, NULL),
(707, 4, 'LA HUACA\r\n', 'la-huaca\r\n-707', 75, NULL, NULL),
(708, 5, 'COLAN\r\n', 'colan\r\n-708', 75, NULL, NULL),
(709, 6, 'TAMARINDO\r\n', 'tamarindo\r\n-709', 75, NULL, NULL),
(710, 7, 'VICHAYAL\r\n', 'vichayal\r\n-710', 75, NULL, NULL),
(711, 2, 'AMOTAPE\r\n', 'amotape\r\n-711', 75, NULL, NULL),
(712, 1, 'CHULUCANAS\r\n', 'chulucanas\r\n-712', 76, NULL, NULL),
(713, 2, 'BUENOS AIRES\r\n', 'buenos-aires\r\n-713', 76, NULL, NULL),
(714, 3, 'CHALACO\r\n', 'chalaco\r\n-714', 76, NULL, NULL),
(715, 4, 'MORROPON\r\n', 'morropon\r\n-715', 76, NULL, NULL),
(716, 6, 'SANTA CATALINA DE MOSSA\r\n', 'santa-catalina-de-mossa\r\n-716', 76, NULL, NULL),
(717, 7, 'SANTO DOMINGO\r\n', 'santo-domingo\r\n-717', 76, NULL, NULL),
(718, 8, 'LA MATANZA\r\n', 'la-matanza\r\n-718', 76, NULL, NULL),
(719, 9, 'YAMANGO\r\n', 'yamango\r\n-719', 76, NULL, NULL),
(720, 10, 'SAN JUAN DE BIGOTE\r\n', 'san-juan-de-bigote\r\n-720', 76, NULL, NULL),
(721, 5, 'SALITRAL\r\n', 'salitral\r\n-721', 76, NULL, NULL),
(722, 2, 'FRIAS\r\n', 'frias\r\n-722', 77, NULL, NULL),
(723, 3, 'LAGUNAS\r\n', 'lagunas\r\n-723', 77, NULL, NULL),
(724, 4, 'MONTERO\r\n', 'montero\r\n-724', 77, NULL, NULL),
(725, 5, 'PACAIPAMPA\r\n', 'pacaipampa\r\n-725', 77, NULL, NULL),
(726, 6, 'SAPILLICA\r\n', 'sapillica\r\n-726', 77, NULL, NULL),
(727, 7, 'SICCHEZ\r\n', 'sicchez\r\n-727', 77, NULL, NULL),
(728, 8, 'SUYO\r\n', 'suyo\r\n-728', 77, NULL, NULL),
(729, 10, 'PAIMAS\r\n', 'paimas\r\n-729', 77, NULL, NULL),
(730, 1, 'AYABACA\r\n', 'ayabaca\r\n-730', 77, NULL, NULL),
(731, 9, 'JILILI\r\n', 'jilili\r\n-731', 77, NULL, NULL),
(732, 1, 'PIURA\r\n', 'piura\r\n-732', 78, NULL, NULL),
(733, 3, 'CASTILLA\r\n', 'castilla\r\n-733', 78, NULL, NULL),
(734, 5, 'LA ARENA\r\n', 'la-arena\r\n-734', 78, NULL, NULL),
(735, 6, 'LA UNION\r\n', 'la-union\r\n-735', 78, NULL, NULL),
(736, 7, 'LAS LOMAS\r\n', 'las-lomas\r\n-736', 78, NULL, NULL),
(737, 9, 'TAMBO GRANDE\r\n', 'tambo-grande\r\n-737', 78, NULL, NULL),
(738, 13, 'CURA MORI\r\n', 'cura-mori\r\n-738', 78, NULL, NULL),
(739, 14, 'EL TALLAN\r\n', 'el-tallan\r\n-739', 78, NULL, NULL),
(740, 4, 'CATACAOS\r\n', 'catacaos\r\n-740', 78, NULL, NULL),
(741, 1, 'LOCUMBA\r\n', 'locumba\r\n-741', 79, NULL, NULL),
(742, 2, 'ITE\r\n', 'ite\r\n-742', 79, NULL, NULL),
(743, 3, 'ILABAYA\r\n', 'ilabaya\r\n-743', 79, NULL, NULL),
(744, 1, 'TACNA\r\n', 'tacna\r\n-744', 80, NULL, NULL),
(745, 2, 'CALANA\r\n', 'calana\r\n-745', 80, NULL, NULL),
(746, 4, 'INCLAN\r\n', 'inclan\r\n-746', 80, NULL, NULL),
(747, 7, 'PACHIA\r\n', 'pachia\r\n-747', 80, NULL, NULL),
(748, 9, 'POCOLLAY\r\n', 'pocollay\r\n-748', 80, NULL, NULL),
(749, 10, 'SAMA\r\n', 'sama\r\n-749', 80, NULL, NULL),
(750, 11, 'ALTO DE LA ALIANZA\r\n', 'alto-de-la-alianza\r\n-750', 80, NULL, NULL),
(751, 12, 'CIUDAD NUEVA\r\n', 'ciudad-nueva\r\n-751', 80, NULL, NULL),
(752, 13, 'CORONEL GREGORIO ALBARRACIN LANCHIPA\r\n', 'coronel-gregorio-albarracin-lanchipa\r\n-752', 80, NULL, NULL),
(753, 8, 'PALCA\r\n', 'palca\r\n-753', 80, NULL, NULL),
(754, 1, 'CANDARAVE\r\n', 'candarave\r\n-754', 81, NULL, NULL),
(755, 2, 'CAIRANI\r\n', 'cairani\r\n-755', 81, NULL, NULL),
(756, 3, 'CURIBAYA\r\n', 'curibaya\r\n-756', 81, NULL, NULL),
(757, 5, 'QUILAHUANI\r\n', 'quilahuani\r\n-757', 81, NULL, NULL),
(758, 6, 'CAMILACA\r\n', 'camilaca\r\n-758', 81, NULL, NULL),
(759, 4, 'HUANUARA\r\n', 'huanuara\r\n-759', 81, NULL, NULL),
(760, 5, 'HEROES ALBARRACIN\r\n', 'heroes-albarracin\r\n-760', 82, NULL, NULL),
(761, 6, 'ESTIQUE\r\n', 'estique\r\n-761', 82, NULL, NULL),
(762, 7, 'ESTIQUE PAMPA\r\n', 'estique-pampa\r\n-762', 82, NULL, NULL),
(763, 10, 'SITAJARA\r\n', 'sitajara\r\n-763', 82, NULL, NULL),
(764, 11, 'SUSAPAYA\r\n', 'susapaya\r\n-764', 82, NULL, NULL),
(765, 12, 'TARUCACHI\r\n', 'tarucachi\r\n-765', 82, NULL, NULL),
(766, 1, 'TARATA\r\n', 'tarata\r\n-766', 82, NULL, NULL),
(767, 13, 'TICACO\r\n', 'ticaco\r\n-767', 82, NULL, NULL),
(768, 1, 'TUMBES\r\n', 'tumbes\r\n-768', 83, NULL, NULL),
(769, 2, 'CORRALES\r\n', 'corrales\r\n-769', 83, NULL, NULL),
(770, 3, 'LA CRUZ\r\n', 'la-cruz\r\n-770', 83, NULL, NULL),
(771, 4, 'PAMPAS DE HOSPITAL\r\n', 'pampas-de-hospital\r\n-771', 83, NULL, NULL),
(772, 6, 'SAN JUAN DE LA VIRGEN\r\n', 'san-juan-de-la-virgen\r\n-772', 83, NULL, NULL),
(773, 5, 'SAN JACINTO\r\n', 'san-jacinto\r\n-773', 83, NULL, NULL),
(774, 1, 'ZARUMILLA\r\n', 'zarumilla\r\n-774', 84, NULL, NULL),
(775, 2, 'MATAPALO\r\n', 'matapalo\r\n-775', 84, NULL, NULL),
(776, 3, 'PAPAYAL\r\n', 'papayal\r\n-776', 84, NULL, NULL),
(777, 4, 'AGUAS VERDES\r\n', 'aguas-verdes\r\n-777', 84, NULL, NULL),
(778, 1, 'ZORRITOS\r\n', 'zorritos\r\n-778', 85, NULL, NULL),
(779, 2, 'CASITAS\r\n', 'casitas\r\n-779', 85, NULL, NULL),
(780, 3, 'CANOAS DE PUNTA SAL\r\n', 'canoas-de-punta-sal\r\n-780', 85, NULL, NULL),
(781, 1, 'CHANCHAMAYO\r\n', 'chanchamayo\r\n-781', 86, NULL, NULL),
(782, 2, 'SAN RAMON\r\n', 'san-ramon\r\n-782', 86, NULL, NULL),
(783, 3, 'VITOC\r\n', 'vitoc\r\n-783', 86, NULL, NULL),
(784, 4, 'SAN LUIS DE SHUARO\r\n', 'san-luis-de-shuaro\r\n-784', 86, NULL, NULL),
(785, 5, 'PICHANAQUI\r\n', 'pichanaqui\r\n-785', 86, NULL, NULL),
(786, 6, 'PERENE\r\n', 'perene\r\n-786', 86, NULL, NULL),
(787, 1, 'LA OROYA\r\n', 'la-oroya\r\n-787', 87, NULL, NULL),
(788, 2, 'CHACAPALPA\r\n', 'chacapalpa\r\n-788', 87, NULL, NULL),
(789, 3, 'HUAY HUAY\r\n', 'huay-huay\r\n-789', 87, NULL, NULL),
(790, 4, 'MARCAPOMACOCHA\r\n', 'marcapomacocha\r\n-790', 87, NULL, NULL),
(791, 5, 'MOROCOCHA\r\n', 'morococha\r\n-791', 87, NULL, NULL),
(792, 6, 'PACCHA\r\n', 'paccha\r\n-792', 87, NULL, NULL),
(793, 8, 'SUITUCANCHA\r\n', 'suitucancha\r\n-793', 87, NULL, NULL),
(794, 9, 'YAULI\r\n', 'yauli\r\n-794', 87, NULL, NULL),
(795, 10, 'SANTA ROSA DE SACCO\r\n', 'santa-rosa-de-sacco\r\n-795', 87, NULL, NULL);
INSERT INTO `districts` (`id`, `codigo`, `nombre`, `slug`, `provinces_id`, `created_at`, `updated_at`) VALUES
(796, 7, 'SANTA BARBARA DE CARHUACAYAN\r\n', 'santa-barbara-de-carhuacayan\r\n-796', 87, NULL, NULL),
(797, 21, 'PACCHA\r\n', 'paccha\r\n-797', 88, NULL, NULL),
(798, 27, 'SAN PEDRO DE CHUNAN\r\n', 'san-pedro-de-chunan\r\n-798', 88, NULL, NULL),
(799, 1, 'JAUJA\r\n', 'jauja\r\n-799', 88, NULL, NULL),
(800, 2, 'ACOLLA\r\n', 'acolla\r\n-800', 88, NULL, NULL),
(801, 3, 'APATA\r\n', 'apata\r\n-801', 88, NULL, NULL),
(802, 4, 'ATAURA\r\n', 'ataura\r\n-802', 88, NULL, NULL),
(803, 6, 'EL MANTARO\r\n', 'el-mantaro\r\n-803', 88, NULL, NULL),
(804, 7, 'HUAMALI\r\n', 'huamali\r\n-804', 88, NULL, NULL),
(805, 8, 'HUARIPAMPA\r\n', 'huaripampa\r\n-805', 88, NULL, NULL),
(806, 9, 'HUERTAS\r\n', 'huertas\r\n-806', 88, NULL, NULL),
(807, 10, 'JANJAILLO\r\n', 'janjaillo\r\n-807', 88, NULL, NULL),
(808, 11, 'JULCAN\r\n', 'julcan\r\n-808', 88, NULL, NULL),
(809, 12, 'LEONOR ORDOÑEZ\r\n', 'leonor-ordoñez\r\n-809', 88, NULL, NULL),
(810, 14, 'MARCO\r\n', 'marco\r\n-810', 88, NULL, NULL),
(811, 15, 'MASMA\r\n', 'masma\r\n-811', 88, NULL, NULL),
(812, 16, 'MOLINOS\r\n', 'molinos\r\n-812', 88, NULL, NULL),
(813, 17, 'MONOBAMBA\r\n', 'monobamba\r\n-813', 88, NULL, NULL),
(814, 18, 'MUQUI\r\n', 'muqui\r\n-814', 88, NULL, NULL),
(815, 19, 'MUQUIYAUYO\r\n', 'muquiyauyo\r\n-815', 88, NULL, NULL),
(816, 22, 'PANCAN\r\n', 'pancan\r\n-816', 88, NULL, NULL),
(817, 23, 'PARCO\r\n', 'parco\r\n-817', 88, NULL, NULL),
(818, 24, 'POMACANCHA\r\n', 'pomacancha\r\n-818', 88, NULL, NULL),
(819, 25, 'RICRAN\r\n', 'ricran\r\n-819', 88, NULL, NULL),
(820, 26, 'SAN LORENZO\r\n', 'san-lorenzo\r\n-820', 88, NULL, NULL),
(821, 28, 'SINCOS\r\n', 'sincos\r\n-821', 88, NULL, NULL),
(822, 30, 'YAULI\r\n', 'yauli\r\n-822', 88, NULL, NULL),
(823, 31, 'CURICACA\r\n', 'curicaca\r\n-823', 88, NULL, NULL),
(824, 32, 'MASMA CHICCHE\r\n', 'masma-chicche\r\n-824', 88, NULL, NULL),
(825, 33, 'SAUSA\r\n', 'sausa\r\n-825', 88, NULL, NULL),
(826, 34, 'YAUYOS\r\n', 'yauyos\r\n-826', 88, NULL, NULL),
(827, 5, 'CANCHAYLLO\r\n', 'canchayllo\r\n-827', 88, NULL, NULL),
(828, 13, 'LLOCLLAPAMPA\r\n', 'llocllapampa\r\n-828', 88, NULL, NULL),
(829, 20, 'PACA\r\n', 'paca\r\n-829', 88, NULL, NULL),
(830, 29, 'TUNAN MARCA\r\n', 'tunan-marca\r\n-830', 88, NULL, NULL),
(831, 1, 'HUANCAYO\r\n', 'huancayo\r\n-831', 89, NULL, NULL),
(832, 3, 'CARHUACALLANGA\r\n', 'carhuacallanga\r\n-832', 89, NULL, NULL),
(833, 4, 'COLCA\r\n', 'colca\r\n-833', 89, NULL, NULL),
(834, 5, 'CULLHUAS\r\n', 'cullhuas\r\n-834', 89, NULL, NULL),
(835, 6, 'CHACAPAMPA\r\n', 'chacapampa\r\n-835', 89, NULL, NULL),
(836, 8, 'CHILCA\r\n', 'chilca\r\n-836', 89, NULL, NULL),
(837, 9, 'CHONGOS ALTO\r\n', 'chongos-alto\r\n-837', 89, NULL, NULL),
(838, 12, 'CHUPURO\r\n', 'chupuro\r\n-838', 89, NULL, NULL),
(839, 13, 'EL TAMBO\r\n', 'el-tambo\r\n-839', 89, NULL, NULL),
(840, 14, 'HUACRAPUQUIO\r\n', 'huacrapuquio\r\n-840', 89, NULL, NULL),
(841, 16, 'HUALHUAS\r\n', 'hualhuas\r\n-841', 89, NULL, NULL),
(842, 19, 'HUASICANCHA\r\n', 'huasicancha\r\n-842', 89, NULL, NULL),
(843, 20, 'HUAYUCACHI\r\n', 'huayucachi\r\n-843', 89, NULL, NULL),
(844, 21, 'INGENIO\r\n', 'ingenio\r\n-844', 89, NULL, NULL),
(845, 22, 'PARIAHUANCA\r\n', 'pariahuanca\r\n-845', 89, NULL, NULL),
(846, 23, 'PILCOMAYO\r\n', 'pilcomayo\r\n-846', 89, NULL, NULL),
(847, 24, 'PUCARA\r\n', 'pucara\r\n-847', 89, NULL, NULL),
(848, 26, 'QUILCAS\r\n', 'quilcas\r\n-848', 89, NULL, NULL),
(849, 27, 'SAN AGUSTIN\r\n', 'san-agustin\r\n-849', 89, NULL, NULL),
(850, 28, 'SAN JERONIMO DE TUNAN\r\n', 'san-jeronimo-de-tunan\r\n-850', 89, NULL, NULL),
(851, 31, 'SANTO DOMINGO DE ACOBAMBA\r\n', 'santo-domingo-de-acobamba\r\n-851', 89, NULL, NULL),
(852, 32, 'SAÑO\r\n', 'saño\r\n-852', 89, NULL, NULL),
(853, 33, 'SAPALLANGA\r\n', 'sapallanga\r\n-853', 89, NULL, NULL),
(854, 36, 'VIQUES\r\n', 'viques\r\n-854', 89, NULL, NULL),
(855, 7, 'CHICCHE\r\n', 'chicche\r\n-855', 89, NULL, NULL),
(856, 18, 'HUANCAN\r\n', 'huancan\r\n-856', 89, NULL, NULL),
(857, 25, 'QUICHUAY\r\n', 'quichuay\r\n-857', 89, NULL, NULL),
(858, 34, 'SICAYA\r\n', 'sicaya\r\n-858', 89, NULL, NULL),
(859, 2, 'AHUAC\r\n', 'ahuac\r\n-859', 90, NULL, NULL),
(860, 3, 'CHONGOS BAJO\r\n', 'chongos-bajo\r\n-860', 90, NULL, NULL),
(861, 4, 'HUACHAC\r\n', 'huachac\r\n-861', 90, NULL, NULL),
(862, 5, 'HUAMANCACA CHICO\r\n', 'huamancaca-chico\r\n-862', 90, NULL, NULL),
(863, 6, 'SAN JUAN DE YSCOS\r\n', 'san-juan-de-yscos\r\n-863', 90, NULL, NULL),
(864, 7, 'SAN JUAN DE JARPA\r\n', 'san-juan-de-jarpa\r\n-864', 90, NULL, NULL),
(865, 9, 'YANACANCHA\r\n', 'yanacancha\r\n-865', 90, NULL, NULL),
(866, 1, 'CHUPACA\r\n', 'chupaca\r\n-866', 90, NULL, NULL),
(867, 8, 'TRES DE DICIEMBRE\r\n', 'tres-de-diciembre\r\n-867', 90, NULL, NULL),
(868, 1, 'SATIPO\r\n', 'satipo\r\n-868', 91, NULL, NULL),
(869, 2, 'COVIRIALI\r\n', 'coviriali\r\n-869', 91, NULL, NULL),
(870, 3, 'LLAYLLA\r\n', 'llaylla\r\n-870', 91, NULL, NULL),
(871, 4, 'MAZAMARI\r\n', 'mazamari\r\n-871', 91, NULL, NULL),
(872, 5, 'PAMPA HERMOSA\r\n', 'pampa-hermosa\r\n-872', 91, NULL, NULL),
(873, 6, 'PANGOA\r\n', 'pangoa\r\n-873', 91, NULL, NULL),
(874, 8, 'RIO TAMBO\r\n', 'rio-tambo\r\n-874', 91, NULL, NULL),
(875, 7, 'RIO NEGRO\r\n', 'rio-negro\r\n-875', 91, NULL, NULL),
(876, 1, 'TARMA\r\n', 'tarma\r\n-876', 92, NULL, NULL),
(877, 3, 'HUARICOLCA\r\n', 'huaricolca\r\n-877', 92, NULL, NULL),
(878, 4, 'HUASAHUASI\r\n', 'huasahuasi\r\n-878', 92, NULL, NULL),
(879, 5, 'LA UNION\r\n', 'la-union\r\n-879', 92, NULL, NULL),
(880, 6, 'PALCA\r\n', 'palca\r\n-880', 92, NULL, NULL),
(881, 7, 'PALCAMAYO\r\n', 'palcamayo\r\n-881', 92, NULL, NULL),
(882, 8, 'SAN PEDRO DE CAJAS\r\n', 'san-pedro-de-cajas\r\n-882', 92, NULL, NULL),
(883, 2, 'ACOBAMBA\r\n', 'acobamba\r\n-883', 92, NULL, NULL),
(884, 9, 'TAPO\r\n', 'tapo\r\n-884', 92, NULL, NULL),
(885, 1, 'JUNIN\r\n', 'junin\r\n-885', 93, NULL, NULL),
(886, 2, 'CARHUAMAYO\r\n', 'carhuamayo\r\n-886', 93, NULL, NULL),
(887, 3, 'ONDORES\r\n', 'ondores\r\n-887', 93, NULL, NULL),
(888, 4, 'ULCUMAYO\r\n', 'ulcumayo\r\n-888', 93, NULL, NULL),
(889, 1, 'CONCEPCION\r\n', 'concepcion\r\n-889', 94, NULL, NULL),
(890, 2, 'ACO\r\n', 'aco\r\n-890', 94, NULL, NULL),
(891, 3, 'ANDAMARCA\r\n', 'andamarca\r\n-891', 94, NULL, NULL),
(892, 4, 'COMAS\r\n', 'comas\r\n-892', 94, NULL, NULL),
(893, 5, 'COCHAS\r\n', 'cochas\r\n-893', 94, NULL, NULL),
(894, 7, 'HEROINAS TOLEDO\r\n', 'heroinas-toledo\r\n-894', 94, NULL, NULL),
(895, 8, 'MANZANARES\r\n', 'manzanares\r\n-895', 94, NULL, NULL),
(896, 9, 'MARISCAL CASTILLA\r\n', 'mariscal-castilla\r\n-896', 94, NULL, NULL),
(897, 10, 'MATAHUASI\r\n', 'matahuasi\r\n-897', 94, NULL, NULL),
(898, 11, 'MITO\r\n', 'mito\r\n-898', 94, NULL, NULL),
(899, 12, 'NUEVE DE JULIO\r\n', 'nueve-de-julio\r\n-899', 94, NULL, NULL),
(900, 14, 'SANTA ROSA DE OCOPA\r\n', 'santa-rosa-de-ocopa\r\n-900', 94, NULL, NULL),
(901, 15, 'SAN JOSE DE QUERO\r\n', 'san-jose-de-quero\r\n-901', 94, NULL, NULL),
(902, 6, 'CHAMBARA\r\n', 'chambara\r\n-902', 94, NULL, NULL),
(903, 13, 'ORCOTUNA\r\n', 'orcotuna\r\n-903', 94, NULL, NULL),
(904, 1, 'CASCAS\r\n', 'cascas\r\n-904', 95, NULL, NULL),
(905, 2, 'LUCMA\r\n', 'lucma\r\n-905', 95, NULL, NULL),
(906, 3, 'MARMOT\r\n', 'marmot\r\n-906', 95, NULL, NULL),
(907, 4, 'SAYAPULLO\r\n', 'sayapullo\r\n-907', 95, NULL, NULL),
(908, 1, 'CHEPEN\r\n', 'chepen\r\n-908', 96, NULL, NULL),
(909, 2, 'PACANGA\r\n', 'pacanga\r\n-909', 96, NULL, NULL),
(910, 3, 'PUEBLO NUEVO\r\n', 'pueblo-nuevo\r\n-910', 96, NULL, NULL),
(911, 4, 'HUARANCHAL\r\n', 'huaranchal\r\n-911', 97, NULL, NULL),
(912, 1, 'OTUZCO\r\n', 'otuzco\r\n-912', 97, NULL, NULL),
(913, 2, 'AGALLPAMPA\r\n', 'agallpampa\r\n-913', 97, NULL, NULL),
(914, 3, 'CHARAT\r\n', 'charat\r\n-914', 97, NULL, NULL),
(915, 5, 'LA CUESTA\r\n', 'la-cuesta\r\n-915', 97, NULL, NULL),
(916, 8, 'PARANDAY\r\n', 'paranday\r\n-916', 97, NULL, NULL),
(917, 9, 'SALPO\r\n', 'salpo\r\n-917', 97, NULL, NULL),
(918, 10, 'SINSICAP\r\n', 'sinsicap\r\n-918', 97, NULL, NULL),
(919, 11, 'USQUIL\r\n', 'usquil\r\n-919', 97, NULL, NULL),
(920, 13, 'MACHE\r\n', 'mache\r\n-920', 97, NULL, NULL),
(921, 1, 'TRUJILLO\r\n', 'trujillo\r\n-921', 98, NULL, NULL),
(922, 2, 'HUANCHACO\r\n', 'huanchaco\r\n-922', 98, NULL, NULL),
(923, 3, 'LAREDO\r\n', 'laredo\r\n-923', 98, NULL, NULL),
(924, 4, 'MOCHE\r\n', 'moche\r\n-924', 98, NULL, NULL),
(925, 5, 'SALAVERRY\r\n', 'salaverry\r\n-925', 98, NULL, NULL),
(926, 6, 'SIMBAL\r\n', 'simbal\r\n-926', 98, NULL, NULL),
(927, 7, 'VICTOR LARCO HERRERA\r\n', 'victor-larco-herrera\r\n-927', 98, NULL, NULL),
(928, 10, 'EL PORVENIR\r\n', 'el-porvenir\r\n-928', 98, NULL, NULL),
(929, 11, 'LA ESPERANZA\r\n', 'la-esperanza\r\n-929', 98, NULL, NULL),
(930, 12, 'FLORENCIA DE MORA\r\n', 'florencia-de-mora\r\n-930', 98, NULL, NULL),
(931, 9, 'POROTO\r\n', 'poroto\r\n-931', 98, NULL, NULL),
(932, 1, 'VIRU\r\n', 'viru\r\n-932', 99, NULL, NULL),
(933, 3, 'GUADALUPITO\r\n', 'guadalupito\r\n-933', 99, NULL, NULL),
(934, 2, 'CHAO\r\n', 'chao\r\n-934', 99, NULL, NULL),
(935, 1, 'JULCAN\r\n', 'julcan\r\n-935', 100, NULL, NULL),
(936, 2, 'CARABAMBA\r\n', 'carabamba\r\n-936', 100, NULL, NULL),
(937, 4, 'HUASO\r\n', 'huaso\r\n-937', 100, NULL, NULL),
(938, 3, 'CALAMARCA\r\n', 'calamarca\r\n-938', 100, NULL, NULL),
(939, 1, 'ASCOPE\r\n', 'ascope\r\n-939', 101, NULL, NULL),
(940, 2, 'CHICAMA\r\n', 'chicama\r\n-940', 101, NULL, NULL),
(941, 3, 'CHOCOPE\r\n', 'chocope\r\n-941', 101, NULL, NULL),
(942, 4, 'SANTIAGO DE CAO\r\n', 'santiago-de-cao\r\n-942', 101, NULL, NULL),
(943, 5, 'MAGDALENA DE CAO\r\n', 'magdalena-de-cao\r\n-943', 101, NULL, NULL),
(944, 6, 'PAIJAN\r\n', 'paijan\r\n-944', 101, NULL, NULL),
(945, 8, 'CASA GRANDE\r\n', 'casa-grande\r\n-945', 101, NULL, NULL),
(946, 7, 'RAZURI\r\n', 'razuri\r\n-946', 101, NULL, NULL),
(947, 1, 'SANTIAGO DE CHUCO\r\n', 'santiago-de-chuco\r\n-947', 102, NULL, NULL),
(948, 2, 'CACHICADAN\r\n', 'cachicadan\r\n-948', 102, NULL, NULL),
(949, 3, 'MOLLEBAMBA\r\n', 'mollebamba\r\n-949', 102, NULL, NULL),
(950, 4, 'MOLLEPATA\r\n', 'mollepata\r\n-950', 102, NULL, NULL),
(951, 5, 'QUIRUVILCA\r\n', 'quiruvilca\r\n-951', 102, NULL, NULL),
(952, 7, 'SITABAMBA\r\n', 'sitabamba\r\n-952', 102, NULL, NULL),
(953, 8, 'ANGASMARCA\r\n', 'angasmarca\r\n-953', 102, NULL, NULL),
(954, 6, 'SANTA CRUZ DE CHUCA\r\n', 'santa-cruz-de-chuca\r\n-954', 102, NULL, NULL),
(955, 1, 'TAYABAMBA\r\n', 'tayabamba\r\n-955', 103, NULL, NULL),
(956, 2, 'BULDIBUYO\r\n', 'buldibuyo\r\n-956', 103, NULL, NULL),
(957, 3, 'CHILLIA\r\n', 'chillia\r\n-957', 103, NULL, NULL),
(958, 4, 'HUAYLILLAS\r\n', 'huaylillas\r\n-958', 103, NULL, NULL),
(959, 6, 'HUAYO\r\n', 'huayo\r\n-959', 103, NULL, NULL),
(960, 7, 'ONGON\r\n', 'ongon\r\n-960', 103, NULL, NULL),
(961, 8, 'PARCOY\r\n', 'parcoy\r\n-961', 103, NULL, NULL),
(962, 9, 'PATAZ\r\n', 'pataz\r\n-962', 103, NULL, NULL),
(963, 10, 'PIAS\r\n', 'pias\r\n-963', 103, NULL, NULL),
(964, 11, 'TAURIJA\r\n', 'taurija\r\n-964', 103, NULL, NULL),
(965, 13, 'SANTIAGO DE CHALLAS\r\n', 'santiago-de-challas\r\n-965', 103, NULL, NULL),
(966, 5, 'HUANCASPATA\r\n', 'huancaspata\r\n-966', 103, NULL, NULL),
(967, 12, 'URPAY\r\n', 'urpay\r\n-967', 103, NULL, NULL),
(968, 3, 'GUADALUPE\r\n', 'guadalupe\r\n-968', 104, NULL, NULL),
(969, 4, 'JEQUETEPEQUE\r\n', 'jequetepeque\r\n-969', 104, NULL, NULL),
(970, 6, 'PACASMAYO\r\n', 'pacasmayo\r\n-970', 104, NULL, NULL),
(971, 8, 'SAN JOSE\r\n', 'san-jose\r\n-971', 104, NULL, NULL),
(972, 1, 'SAN PEDRO DE LLOC\r\n', 'san-pedro-de-lloc\r\n-972', 104, NULL, NULL),
(973, 5, 'MARCABAL\r\n', 'marcabal\r\n-973', 105, NULL, NULL),
(974, 1, 'HUAMACHUCO\r\n', 'huamachuco\r\n-974', 105, NULL, NULL),
(975, 2, 'COCHORCO\r\n', 'cochorco\r\n-975', 105, NULL, NULL),
(976, 3, 'CURGOS\r\n', 'curgos\r\n-976', 105, NULL, NULL),
(977, 4, 'CHUGAY\r\n', 'chugay\r\n-977', 105, NULL, NULL),
(978, 7, 'SARIN\r\n', 'sarin\r\n-978', 105, NULL, NULL),
(979, 8, 'SARTIMBAMBA\r\n', 'sartimbamba\r\n-979', 105, NULL, NULL),
(980, 6, 'SANAGORAN\r\n', 'sanagoran\r\n-980', 105, NULL, NULL),
(981, 1, 'BOLIVAR\r\n', 'bolivar\r\n-981', 106, NULL, NULL),
(982, 2, 'BAMBAMARCA\r\n', 'bambamarca\r\n-982', 106, NULL, NULL),
(983, 4, 'LONGOTEA\r\n', 'longotea\r\n-983', 106, NULL, NULL),
(984, 5, 'UCUNCHA\r\n', 'ucuncha\r\n-984', 106, NULL, NULL),
(985, 6, 'UCHUMARCA\r\n', 'uchumarca\r\n-985', 106, NULL, NULL),
(986, 3, 'CONDORMARCA\r\n', 'condormarca\r\n-986', 106, NULL, NULL),
(987, 17, 'PATAPO\r\n', 'patapo\r\n-987', 107, NULL, NULL),
(988, 1, 'CHICLAYO\r\n', 'chiclayo\r\n-988', 107, NULL, NULL),
(989, 2, 'CHONGOYAPE\r\n', 'chongoyape\r\n-989', 107, NULL, NULL),
(990, 3, 'ETEN\r\n', 'eten\r\n-990', 107, NULL, NULL),
(991, 4, 'ETEN PUERTO\r\n', 'eten-puerto\r\n-991', 107, NULL, NULL),
(992, 5, 'LAGUNAS\r\n', 'lagunas\r\n-992', 107, NULL, NULL),
(993, 7, 'NUEVA ARICA\r\n', 'nueva-arica\r\n-993', 107, NULL, NULL),
(994, 8, 'OYOTUN\r\n', 'oyotun\r\n-994', 107, NULL, NULL),
(995, 9, 'PICSI\r\n', 'picsi\r\n-995', 107, NULL, NULL),
(996, 10, 'PIMENTEL\r\n', 'pimentel\r\n-996', 107, NULL, NULL),
(997, 11, 'REQUE\r\n', 'reque\r\n-997', 107, NULL, NULL),
(998, 12, 'JOSE LEONARDO ORTIZ\r\n', 'jose-leonardo-ortiz\r\n-998', 107, NULL, NULL),
(999, 14, 'SAÑA\r\n', 'saña\r\n-999', 107, NULL, NULL),
(1000, 15, 'LA VICTORIA\r\n', 'la-victoria\r\n-1000', 107, NULL, NULL),
(1001, 16, 'CAYALTI\r\n', 'cayalti\r\n-1001', 107, NULL, NULL),
(1002, 18, 'POMALCA\r\n', 'pomalca\r\n-1002', 107, NULL, NULL),
(1003, 19, 'PUCALA\r\n', 'pucala\r\n-1003', 107, NULL, NULL),
(1004, 20, 'TUMAN\r\n', 'tuman\r\n-1004', 107, NULL, NULL),
(1005, 6, 'MONSEFU\r\n', 'monsefu\r\n-1005', 107, NULL, NULL),
(1006, 13, 'SANTA ROSA\r\n', 'santa-rosa\r\n-1006', 107, NULL, NULL),
(1007, 1, 'LAMBAYEQUE\r\n', 'lambayeque\r\n-1007', 108, NULL, NULL),
(1008, 2, 'CHOCHOPE\r\n', 'chochope\r\n-1008', 108, NULL, NULL),
(1009, 3, 'ILLIMO\r\n', 'illimo\r\n-1009', 108, NULL, NULL),
(1010, 5, 'MOCHUMI\r\n', 'mochumi\r\n-1010', 108, NULL, NULL),
(1011, 6, 'MORROPE\r\n', 'morrope\r\n-1011', 108, NULL, NULL),
(1012, 7, 'MOTUPE\r\n', 'motupe\r\n-1012', 108, NULL, NULL),
(1013, 8, 'OLMOS\r\n', 'olmos\r\n-1013', 108, NULL, NULL),
(1014, 9, 'PACORA\r\n', 'pacora\r\n-1014', 108, NULL, NULL),
(1015, 10, 'SALAS\r\n', 'salas\r\n-1015', 108, NULL, NULL),
(1016, 12, 'TUCUME\r\n', 'tucume\r\n-1016', 108, NULL, NULL),
(1017, 4, 'JAYANCA\r\n', 'jayanca\r\n-1017', 108, NULL, NULL),
(1018, 11, 'SAN JOSE\r\n', 'san-jose\r\n-1018', 108, NULL, NULL),
(1019, 2, 'INCAHUASI\r\n', 'incahuasi\r\n-1019', 109, NULL, NULL),
(1020, 4, 'PITIPO\r\n', 'pitipo\r\n-1020', 109, NULL, NULL),
(1021, 5, 'PUEBLO NUEVO\r\n', 'pueblo-nuevo\r\n-1021', 109, NULL, NULL),
(1022, 6, 'MANUEL ANTONIO MESONES MURO\r\n', 'manuel-antonio-mesones-muro\r\n-1022', 109, NULL, NULL),
(1023, 1, 'FERREÑAFE\r\n', 'ferreñafe\r\n-1023', 109, NULL, NULL),
(1024, 3, 'CAÑARIS\r\n', 'cañaris\r\n-1024', 109, NULL, NULL),
(1025, 1, 'HUARAL\r\n', 'huaral\r\n-1025', 110, NULL, NULL),
(1026, 2, 'ATAVILLOS ALTO\r\n', 'atavillos-alto\r\n-1026', 110, NULL, NULL),
(1027, 3, 'ATAVILLOS BAJO\r\n', 'atavillos-bajo\r\n-1027', 110, NULL, NULL),
(1028, 4, 'AUCALLAMA\r\n', 'aucallama\r\n-1028', 110, NULL, NULL),
(1029, 5, 'CHANCAY\r\n', 'chancay\r\n-1029', 110, NULL, NULL),
(1030, 6, 'IHUARI\r\n', 'ihuari\r\n-1030', 110, NULL, NULL),
(1031, 7, 'LAMPIAN\r\n', 'lampian\r\n-1031', 110, NULL, NULL),
(1032, 9, 'SAN MIGUEL DE ACOS\r\n', 'san-miguel-de-acos\r\n-1032', 110, NULL, NULL),
(1033, 10, 'VEINTISIETE DE NOVIEMBRE\r\n', 'veintisiete-de-noviembre\r\n-1033', 110, NULL, NULL),
(1034, 11, 'SANTA CRUZ DE ANDAMARCA\r\n', 'santa-cruz-de-andamarca\r\n-1034', 110, NULL, NULL),
(1035, 12, 'SUMBILCA\r\n', 'sumbilca\r\n-1035', 110, NULL, NULL),
(1036, 8, 'PACARAOS\r\n', 'pacaraos\r\n-1036', 110, NULL, NULL),
(1037, 6, 'SAN BUENAVENTURA\r\n', 'san-buenaventura\r\n-1037', 111, NULL, NULL),
(1038, 1, 'CANTA\r\n', 'canta\r\n-1038', 111, NULL, NULL),
(1039, 2, 'ARAHUAY\r\n', 'arahuay\r\n-1039', 111, NULL, NULL),
(1040, 3, 'HUAMANTANGA\r\n', 'huamantanga\r\n-1040', 111, NULL, NULL),
(1041, 4, 'HUAROS\r\n', 'huaros\r\n-1041', 111, NULL, NULL),
(1042, 7, 'SANTA ROSA DE QUIVES\r\n', 'santa-rosa-de-quives\r\n-1042', 111, NULL, NULL),
(1043, 5, 'LACHAQUI\r\n', 'lachaqui\r\n-1043', 111, NULL, NULL),
(1044, 8, 'MALA\r\n', 'mala\r\n-1044', 112, NULL, NULL),
(1045, 9, 'NUEVO IMPERIAL\r\n', 'nuevo-imperial\r\n-1045', 112, NULL, NULL),
(1046, 10, 'PACARAN\r\n', 'pacaran\r\n-1046', 112, NULL, NULL),
(1047, 11, 'QUILMANA\r\n', 'quilmana\r\n-1047', 112, NULL, NULL),
(1048, 12, 'SAN ANTONIO\r\n', 'san-antonio\r\n-1048', 112, NULL, NULL),
(1049, 13, 'SAN LUIS\r\n', 'san-luis\r\n-1049', 112, NULL, NULL),
(1050, 15, 'ZUÑIGA\r\n', 'zuñiga\r\n-1050', 112, NULL, NULL),
(1051, 16, 'ASIA\r\n', 'asia\r\n-1051', 112, NULL, NULL),
(1052, 1, 'SAN VICENTE DE CAÑETE\r\n', 'san-vicente-de-cañete\r\n-1052', 112, NULL, NULL),
(1053, 2, 'CALANGO\r\n', 'calango\r\n-1053', 112, NULL, NULL),
(1054, 3, 'CERRO AZUL\r\n', 'cerro-azul\r\n-1054', 112, NULL, NULL),
(1055, 4, 'COAYLLO\r\n', 'coayllo\r\n-1055', 112, NULL, NULL),
(1056, 5, 'CHILCA\r\n', 'chilca\r\n-1056', 112, NULL, NULL),
(1057, 7, 'LUNAHUANA\r\n', 'lunahuana\r\n-1057', 112, NULL, NULL),
(1058, 14, 'SANTA CRUZ DE FLORES\r\n', 'santa-cruz-de-flores\r\n-1058', 112, NULL, NULL),
(1059, 6, 'IMPERIAL\r\n', 'imperial\r\n-1059', 112, NULL, NULL),
(1060, 1, 'CAJATAMBO\r\n', 'cajatambo\r\n-1060', 113, NULL, NULL),
(1061, 5, 'COPA\r\n', 'copa\r\n-1061', 113, NULL, NULL),
(1062, 7, 'HUANCAPON\r\n', 'huancapon\r\n-1062', 113, NULL, NULL),
(1063, 8, 'MANAS\r\n', 'manas\r\n-1063', 113, NULL, NULL),
(1064, 6, 'GORGOR\r\n', 'gorgor\r\n-1064', 113, NULL, NULL),
(1065, 1, 'LIMA\r\n', 'lima\r\n-1065', 114, NULL, NULL),
(1066, 2, 'ANCON\r\n', 'ancon\r\n-1066', 114, NULL, NULL),
(1067, 3, 'ATE\r\n', 'ate\r\n-1067', 114, NULL, NULL),
(1068, 4, 'BREÑA\r\n', 'breña\r\n-1068', 114, NULL, NULL),
(1069, 5, 'CARABAYLLO\r\n', 'carabayllo\r\n-1069', 114, NULL, NULL),
(1070, 7, 'CHACLACAYO\r\n', 'chaclacayo\r\n-1070', 114, NULL, NULL),
(1071, 8, 'CHORRILLOS\r\n', 'chorrillos\r\n-1071', 114, NULL, NULL),
(1072, 9, 'LA VICTORIA\r\n', 'la-victoria\r\n-1072', 114, NULL, NULL),
(1073, 10, 'LA MOLINA\r\n', 'la-molina\r\n-1073', 114, NULL, NULL),
(1074, 11, 'LINCE\r\n', 'lince\r\n-1074', 114, NULL, NULL),
(1075, 13, 'LURIN\r\n', 'lurin\r\n-1075', 114, NULL, NULL),
(1076, 14, 'MAGDALENA DEL MAR\r\n', 'magdalena-del-mar\r\n-1076', 114, NULL, NULL),
(1077, 15, 'MIRAFLORES\r\n', 'miraflores\r\n-1077', 114, NULL, NULL),
(1078, 16, 'PACHACAMAC\r\n', 'pachacamac\r\n-1078', 114, NULL, NULL),
(1079, 17, 'PUEBLO LIBRE\r\n', 'pueblo-libre\r\n-1079', 114, NULL, NULL),
(1080, 18, 'PUCUSANA\r\n', 'pucusana\r\n-1080', 114, NULL, NULL),
(1081, 19, 'PUENTE PIEDRA\r\n', 'puente-piedra\r\n-1081', 114, NULL, NULL),
(1082, 21, 'PUNTA NEGRA\r\n', 'punta-negra\r\n-1082', 114, NULL, NULL),
(1083, 22, 'RIMAC\r\n', 'rimac\r\n-1083', 114, NULL, NULL),
(1084, 23, 'SAN BARTOLO\r\n', 'san-bartolo\r\n-1084', 114, NULL, NULL),
(1085, 24, 'SAN ISIDRO\r\n', 'san-isidro\r\n-1085', 114, NULL, NULL),
(1086, 25, 'BARRANCO\r\n', 'barranco\r\n-1086', 114, NULL, NULL),
(1087, 26, 'SAN MARTIN DE PORRES\r\n', 'san-martin-de-porres\r\n-1087', 114, NULL, NULL),
(1088, 27, 'SAN MIGUEL\r\n', 'san-miguel\r\n-1088', 114, NULL, NULL),
(1089, 29, 'SANTA ROSA\r\n', 'santa-rosa\r\n-1089', 114, NULL, NULL),
(1090, 30, 'SANTIAGO DE SURCO\r\n', 'santiago-de-surco\r\n-1090', 114, NULL, NULL),
(1091, 31, 'SURQUILLO\r\n', 'surquillo\r\n-1091', 114, NULL, NULL),
(1092, 32, 'VILLA MARIA DEL TRIUNFO\r\n', 'villa-maria-del-triunfo\r\n-1092', 114, NULL, NULL),
(1093, 33, 'JESUS MARIA\r\n', 'jesus-maria\r\n-1093', 114, NULL, NULL),
(1094, 34, 'INDEPENDENCIA\r\n', 'independencia\r\n-1094', 114, NULL, NULL),
(1095, 35, 'EL AGUSTINO\r\n', 'el-agustino\r\n-1095', 114, NULL, NULL),
(1096, 36, 'SAN JUAN DE MIRAFLORES\r\n', 'san-juan-de-miraflores\r\n-1096', 114, NULL, NULL),
(1097, 38, 'SAN LUIS\r\n', 'san-luis\r\n-1097', 114, NULL, NULL),
(1098, 39, 'CIENEGUILLA\r\n', 'cieneguilla\r\n-1098', 114, NULL, NULL),
(1099, 40, 'SAN BORJA\r\n', 'san-borja\r\n-1099', 114, NULL, NULL),
(1100, 41, 'VILLA EL SALVADOR\r\n', 'villa-el-salvador\r\n-1100', 114, NULL, NULL),
(1101, 42, 'LOS OLIVOS\r\n', 'los-olivos\r\n-1101', 114, NULL, NULL),
(1102, 43, 'SANTA ANITA\r\n', 'santa-anita\r\n-1102', 114, NULL, NULL),
(1103, 6, 'COMAS\r\n', 'comas\r\n-1103', 114, NULL, NULL),
(1104, 12, 'LURIGANCHO\r\n', 'lurigancho\r\n-1104', 114, NULL, NULL),
(1105, 20, 'PUNTA HERMOSA\r\n', 'punta-hermosa\r\n-1105', 114, NULL, NULL),
(1106, 28, 'SANTA MARIA DEL MAR\r\n', 'santa-maria-del-mar\r\n-1106', 114, NULL, NULL),
(1107, 37, 'SAN JUAN DE LURIGANCHO\r\n', 'san-juan-de-lurigancho\r\n-1107', 114, NULL, NULL),
(1108, 1, 'OYON\r\n', 'oyon\r\n-1108', 115, NULL, NULL),
(1109, 2, 'NAVAN\r\n', 'navan\r\n-1109', 115, NULL, NULL),
(1110, 3, 'CAUJUL\r\n', 'caujul\r\n-1110', 115, NULL, NULL),
(1111, 4, 'ANDAJES\r\n', 'andajes\r\n-1111', 115, NULL, NULL),
(1112, 6, 'COCHAMARCA\r\n', 'cochamarca\r\n-1112', 115, NULL, NULL),
(1113, 5, 'PACHANGARA\r\n', 'pachangara\r\n-1113', 115, NULL, NULL),
(1114, 1, 'BARRANCA\r\n', 'barranca\r\n-1114', 116, NULL, NULL),
(1115, 2, 'PARAMONGA\r\n', 'paramonga\r\n-1115', 116, NULL, NULL),
(1116, 4, 'SUPE\r\n', 'supe\r\n-1116', 116, NULL, NULL),
(1117, 5, 'SUPE PUERTO\r\n', 'supe-puerto\r\n-1117', 116, NULL, NULL),
(1118, 3, 'PATIVILCA\r\n', 'pativilca\r\n-1118', 116, NULL, NULL),
(1119, 2, 'ALIS\r\n', 'alis\r\n-1119', 117, NULL, NULL),
(1120, 3, 'AYAUCA\r\n', 'ayauca\r\n-1120', 117, NULL, NULL),
(1121, 4, 'AYAVIRI\r\n', 'ayaviri\r\n-1121', 117, NULL, NULL),
(1122, 5, 'AZANGARO\r\n', 'azangaro\r\n-1122', 117, NULL, NULL),
(1123, 6, 'CACRA\r\n', 'cacra\r\n-1123', 117, NULL, NULL),
(1124, 7, 'CARANIA\r\n', 'carania\r\n-1124', 117, NULL, NULL),
(1125, 9, 'COLONIA\r\n', 'colonia\r\n-1125', 117, NULL, NULL),
(1126, 10, 'CHOCOS\r\n', 'chocos\r\n-1126', 117, NULL, NULL),
(1127, 11, 'HUAMPARA\r\n', 'huampara\r\n-1127', 117, NULL, NULL),
(1128, 12, 'HUANCAYA\r\n', 'huancaya\r\n-1128', 117, NULL, NULL),
(1129, 14, 'HUANTAN\r\n', 'huantan\r\n-1129', 117, NULL, NULL),
(1130, 15, 'HUAÑEC\r\n', 'huañec\r\n-1130', 117, NULL, NULL),
(1131, 17, 'LINCHA\r\n', 'lincha\r\n-1131', 117, NULL, NULL),
(1132, 18, 'MIRAFLORES\r\n', 'miraflores\r\n-1132', 117, NULL, NULL),
(1133, 19, 'OMAS\r\n', 'omas\r\n-1133', 117, NULL, NULL),
(1134, 21, 'QUINOCAY\r\n', 'quinocay\r\n-1134', 117, NULL, NULL),
(1135, 22, 'SAN JOAQUIN\r\n', 'san-joaquin\r\n-1135', 117, NULL, NULL),
(1136, 23, 'SAN PEDRO DE PILAS\r\n', 'san-pedro-de-pilas\r\n-1136', 117, NULL, NULL),
(1137, 25, 'TAURIPAMPA\r\n', 'tauripampa\r\n-1137', 117, NULL, NULL),
(1138, 26, 'TUPE\r\n', 'tupe\r\n-1138', 117, NULL, NULL),
(1139, 28, 'VIÑAC\r\n', 'viñac\r\n-1139', 117, NULL, NULL),
(1140, 29, 'VITIS\r\n', 'vitis\r\n-1140', 117, NULL, NULL),
(1141, 30, 'HONGOS\r\n', 'hongos\r\n-1141', 117, NULL, NULL),
(1142, 31, 'MADEAN\r\n', 'madean\r\n-1142', 117, NULL, NULL),
(1143, 32, 'PUTINZA\r\n', 'putinza\r\n-1143', 117, NULL, NULL),
(1144, 13, 'HUANGASCAR\r\n', 'huangascar\r\n-1144', 117, NULL, NULL),
(1145, 20, 'QUINCHES\r\n', 'quinches\r\n-1145', 117, NULL, NULL),
(1146, 1, 'YAUYOS\r\n', 'yauyos\r\n-1146', 117, NULL, NULL),
(1147, 8, 'COCHAS\r\n', 'cochas\r\n-1147', 117, NULL, NULL),
(1148, 16, 'LARAOS\r\n', 'laraos\r\n-1148', 117, NULL, NULL),
(1149, 24, 'TANTA\r\n', 'tanta\r\n-1149', 117, NULL, NULL),
(1150, 27, 'TOMAS\r\n', 'tomas\r\n-1150', 117, NULL, NULL),
(1151, 33, 'CATAHUASI\r\n', 'catahuasi\r\n-1151', 117, NULL, NULL),
(1152, 1, 'MATUCANA\r\n', 'matucana\r\n-1152', 118, NULL, NULL),
(1153, 2, 'ANTIOQUIA\r\n', 'antioquia\r\n-1153', 118, NULL, NULL),
(1154, 4, 'CARAMPOMA\r\n', 'carampoma\r\n-1154', 118, NULL, NULL),
(1155, 5, 'SAN PEDRO DE CASTA\r\n', 'san-pedro-de-casta\r\n-1155', 118, NULL, NULL),
(1156, 6, 'CUENCA\r\n', 'cuenca\r\n-1156', 118, NULL, NULL),
(1157, 7, 'CHICLA\r\n', 'chicla\r\n-1157', 118, NULL, NULL),
(1158, 8, 'HUANZA\r\n', 'huanza\r\n-1158', 118, NULL, NULL),
(1159, 9, 'HUAROCHIRI\r\n', 'huarochiri\r\n-1159', 118, NULL, NULL),
(1160, 10, 'LAHUAYTAMBO\r\n', 'lahuaytambo\r\n-1160', 118, NULL, NULL),
(1161, 12, 'MARIATANA\r\n', 'mariatana\r\n-1161', 118, NULL, NULL),
(1162, 13, 'RICARDO PALMA\r\n', 'ricardo-palma\r\n-1162', 118, NULL, NULL),
(1163, 14, 'SAN ANDRES DE TUPICOCHA\r\n', 'san-andres-de-tupicocha\r\n-1163', 118, NULL, NULL),
(1164, 15, 'SAN ANTONIO\r\n', 'san-antonio\r\n-1164', 118, NULL, NULL),
(1165, 16, 'SAN BARTOLOME\r\n', 'san-bartolome\r\n-1165', 118, NULL, NULL),
(1166, 17, 'SAN DAMIAN\r\n', 'san-damian\r\n-1166', 118, NULL, NULL),
(1167, 19, 'SAN JUAN DE TANTARANCHE\r\n', 'san-juan-de-tantaranche\r\n-1167', 118, NULL, NULL),
(1168, 20, 'SAN LORENZO DE QUINTI\r\n', 'san-lorenzo-de-quinti\r\n-1168', 118, NULL, NULL),
(1169, 21, 'SAN MATEO\r\n', 'san-mateo\r\n-1169', 118, NULL, NULL),
(1170, 22, 'SAN MATEO DE OTAO\r\n', 'san-mateo-de-otao\r\n-1170', 118, NULL, NULL),
(1171, 23, 'SAN PEDRO DE HUANCAYRE\r\n', 'san-pedro-de-huancayre\r\n-1171', 118, NULL, NULL),
(1172, 24, 'SANTA CRUZ DE COCACHACRA\r\n', 'santa-cruz-de-cocachacra\r\n-1172', 118, NULL, NULL),
(1173, 26, 'SANTIAGO DE ANCHUCAYA\r\n', 'santiago-de-anchucaya\r\n-1173', 118, NULL, NULL),
(1174, 27, 'SANTIAGO DE TUNA\r\n', 'santiago-de-tuna\r\n-1174', 118, NULL, NULL),
(1175, 28, 'SANTO DOMINGO DE LOS OLLEROS\r\n', 'santo-domingo-de-los-olleros\r\n-1175', 118, NULL, NULL),
(1176, 29, 'SURCO\r\n', 'surco\r\n-1176', 118, NULL, NULL),
(1177, 30, 'HUACHUPAMPA\r\n', 'huachupampa\r\n-1177', 118, NULL, NULL),
(1178, 31, 'LARAOS\r\n', 'laraos\r\n-1178', 118, NULL, NULL),
(1179, 32, 'SAN JUAN DE IRIS\r\n', 'san-juan-de-iris\r\n-1179', 118, NULL, NULL),
(1180, 3, 'CALLAHUANCA\r\n', 'callahuanca\r\n-1180', 118, NULL, NULL),
(1181, 11, 'LANGA\r\n', 'langa\r\n-1181', 118, NULL, NULL),
(1182, 18, 'SANGALLAYA\r\n', 'sangallaya\r\n-1182', 118, NULL, NULL),
(1183, 25, 'SANTA EULALIA\r\n', 'santa-eulalia\r\n-1183', 118, NULL, NULL),
(1184, 1, 'HUACHO\r\n', 'huacho\r\n-1184', 119, NULL, NULL),
(1185, 2, 'AMBAR\r\n', 'ambar\r\n-1185', 119, NULL, NULL),
(1186, 4, 'CALETA DE CARQUIN\r\n', 'caleta-de-carquin\r\n-1186', 119, NULL, NULL),
(1187, 5, 'CHECRAS\r\n', 'checras\r\n-1187', 119, NULL, NULL),
(1188, 6, 'HUALMAY\r\n', 'hualmay\r\n-1188', 119, NULL, NULL),
(1189, 7, 'HUAURA\r\n', 'huaura\r\n-1189', 119, NULL, NULL),
(1190, 9, 'PACCHO\r\n', 'paccho\r\n-1190', 119, NULL, NULL),
(1191, 11, 'SANTA LEONOR\r\n', 'santa-leonor\r\n-1191', 119, NULL, NULL),
(1192, 12, 'SANTA MARIA\r\n', 'santa-maria\r\n-1192', 119, NULL, NULL),
(1193, 13, 'SAYAN\r\n', 'sayan\r\n-1193', 119, NULL, NULL),
(1194, 16, 'VEGUETA\r\n', 'vegueta\r\n-1194', 119, NULL, NULL),
(1195, 8, 'LEONCIO PRADO\r\n', 'leoncio-prado\r\n-1195', 119, NULL, NULL),
(1196, 2, 'BELLAVISTA\r\n', 'bellavista\r\n-1196', 120, NULL, NULL),
(1197, 3, 'LA PUNTA\r\n', 'la-punta\r\n-1197', 120, NULL, NULL),
(1198, 4, 'CARMEN DE LA LEGUA-REYNOSO\r\n', 'carmen-de-la-legua-reynoso\r\n-1198', 120, NULL, NULL),
(1199, 5, 'LA PERLA\r\n', 'la-perla\r\n-1199', 120, NULL, NULL),
(1200, 6, 'VENTANILLA\r\n', 'ventanilla\r\n-1200', 120, NULL, NULL),
(1201, 1, 'CALLAO\r\n', 'callao\r\n-1201', 120, NULL, NULL),
(1202, 1, 'RAIMONDI\r\n', 'raimondi\r\n-1202', 121, NULL, NULL),
(1203, 2, 'TAHUANIA\r\n', 'tahuania\r\n-1203', 121, NULL, NULL),
(1204, 3, 'YURUA\r\n', 'yurua\r\n-1204', 121, NULL, NULL),
(1205, 4, 'SEPAHUA\r\n', 'sepahua\r\n-1205', 121, NULL, NULL),
(1206, 1, 'PURUS\r\n', 'purus\r\n-1206', 122, NULL, NULL),
(1207, 2, 'IRAZOLA\r\n', 'irazola\r\n-1207', 123, NULL, NULL),
(1208, 3, 'CURIMANA\r\n', 'curimana\r\n-1208', 123, NULL, NULL),
(1209, 1, 'PADRE ABAD\r\n', 'padre-abad\r\n-1209', 123, NULL, NULL),
(1210, 1, 'CALLERIA\r\n', 'calleria\r\n-1210', 124, NULL, NULL),
(1211, 3, 'MASISEA\r\n', 'masisea\r\n-1211', 124, NULL, NULL),
(1212, 4, 'CAMPOVERDE\r\n', 'campoverde\r\n-1212', 124, NULL, NULL),
(1213, 5, 'IPARIA\r\n', 'iparia\r\n-1213', 124, NULL, NULL),
(1214, 6, 'NUEVA REQUENA\r\n', 'nueva-requena\r\n-1214', 124, NULL, NULL),
(1215, 7, 'MANANTAY\r\n', 'manantay\r\n-1215', 124, NULL, NULL),
(1216, 2, 'YARINACOCHA\r\n', 'yarinacocha\r\n-1216', 124, NULL, NULL),
(1217, 1, 'QUEROBAMBA\r\n', 'querobamba\r\n-1217', 125, NULL, NULL),
(1218, 2, 'BELEN\r\n', 'belen\r\n-1218', 125, NULL, NULL),
(1219, 3, 'CHALCOS\r\n', 'chalcos\r\n-1219', 125, NULL, NULL),
(1220, 4, 'SAN SALVADOR DE QUIJE\r\n', 'san-salvador-de-quije\r\n-1220', 125, NULL, NULL),
(1221, 5, 'PAICO\r\n', 'paico\r\n-1221', 125, NULL, NULL),
(1222, 7, 'SAN PEDRO DE LARCAY\r\n', 'san-pedro-de-larcay\r\n-1222', 125, NULL, NULL),
(1223, 8, 'SORAS\r\n', 'soras\r\n-1223', 125, NULL, NULL),
(1224, 9, 'HUACAÑA\r\n', 'huacaña\r\n-1224', 125, NULL, NULL),
(1225, 10, 'CHILCAYOC\r\n', 'chilcayoc\r\n-1225', 125, NULL, NULL),
(1226, 11, 'MORCOLLA\r\n', 'morcolla\r\n-1226', 125, NULL, NULL),
(1227, 6, 'SANTIAGO DE PAUCARAY\r\n', 'santiago-de-paucaray\r\n-1227', 125, NULL, NULL),
(1228, 1, 'HUANCAPI\r\n', 'huancapi\r\n-1228', 126, NULL, NULL),
(1229, 2, 'ALCAMENCA\r\n', 'alcamenca\r\n-1229', 126, NULL, NULL),
(1230, 4, 'CANARIA\r\n', 'canaria\r\n-1230', 126, NULL, NULL),
(1231, 6, 'CAYARA\r\n', 'cayara\r\n-1231', 126, NULL, NULL),
(1232, 7, 'COLCA\r\n', 'colca\r\n-1232', 126, NULL, NULL),
(1233, 8, 'HUAYA\r\n', 'huaya\r\n-1233', 126, NULL, NULL),
(1234, 9, 'HUAMANQUIQUIA\r\n', 'huamanquiquia\r\n-1234', 126, NULL, NULL),
(1235, 10, 'HUANCARAYLLA\r\n', 'huancaraylla\r\n-1235', 126, NULL, NULL),
(1236, 14, 'VILCANCHOS\r\n', 'vilcanchos\r\n-1236', 126, NULL, NULL),
(1237, 15, 'ASQUIPATA\r\n', 'asquipata\r\n-1237', 126, NULL, NULL),
(1238, 3, 'APONGO\r\n', 'apongo\r\n-1238', 126, NULL, NULL),
(1239, 13, 'SARHUA\r\n', 'sarhua\r\n-1239', 126, NULL, NULL),
(1240, 1, 'HUANTA\r\n', 'huanta\r\n-1240', 127, NULL, NULL),
(1241, 3, 'HUAMANGUILLA\r\n', 'huamanguilla\r\n-1241', 127, NULL, NULL),
(1242, 5, 'LURICOCHA\r\n', 'luricocha\r\n-1242', 127, NULL, NULL),
(1243, 8, 'SIVIA\r\n', 'sivia\r\n-1243', 127, NULL, NULL),
(1244, 9, 'LLOCHEGUA\r\n', 'llochegua\r\n-1244', 127, NULL, NULL),
(1245, 4, 'IGUAIN\r\n', 'iguain\r\n-1245', 127, NULL, NULL),
(1246, 7, 'SANTILLANA\r\n', 'santillana\r\n-1246', 127, NULL, NULL),
(1247, 2, 'AYAHUANCO\r\n', 'ayahuanco\r\n-1247', 127, NULL, NULL),
(1248, 2, 'COLTA\r\n', 'colta\r\n-1248', 128, NULL, NULL),
(1249, 3, 'CORCULLA\r\n', 'corculla\r\n-1249', 128, NULL, NULL),
(1250, 4, 'LAMPA\r\n', 'lampa\r\n-1250', 128, NULL, NULL),
(1251, 5, 'MARCABAMBA\r\n', 'marcabamba\r\n-1251', 128, NULL, NULL),
(1252, 6, 'OYOLO\r\n', 'oyolo\r\n-1252', 128, NULL, NULL),
(1253, 8, 'SAN JAVIER DE ALPABAMBA\r\n', 'san-javier-de-alpabamba\r\n-1253', 128, NULL, NULL),
(1254, 10, 'SARA SARA\r\n', 'sara-sara\r\n-1254', 128, NULL, NULL),
(1255, 1, 'PAUSA\r\n', 'pausa\r\n-1255', 128, NULL, NULL),
(1256, 9, 'SAN JOSE DE USHUA\r\n', 'san-jose-de-ushua\r\n-1256', 128, NULL, NULL),
(1257, 7, 'PARARCA\r\n', 'pararca\r\n-1257', 128, NULL, NULL),
(1258, 2, 'VISCHONGO\r\n', 'vischongo\r\n-1258', 129, NULL, NULL),
(1259, 3, 'ACCOMARCA\r\n', 'accomarca\r\n-1259', 129, NULL, NULL),
(1260, 4, 'CARHUANCA\r\n', 'carhuanca\r\n-1260', 129, NULL, NULL),
(1261, 5, 'CONCEPCION\r\n', 'concepcion\r\n-1261', 129, NULL, NULL),
(1262, 6, 'HUAMBALPA\r\n', 'huambalpa\r\n-1262', 129, NULL, NULL),
(1263, 7, 'SAURAMA\r\n', 'saurama\r\n-1263', 129, NULL, NULL),
(1264, 8, 'INDEPENDENCIA\r\n', 'independencia\r\n-1264', 129, NULL, NULL),
(1265, 1, 'VILCAS HUAMAN\r\n', 'vilcas-huaman\r\n-1265', 129, NULL, NULL),
(1266, 1, 'SANCOS\r\n', 'sancos\r\n-1266', 130, NULL, NULL),
(1267, 2, 'SACSAMARCA\r\n', 'sacsamarca\r\n-1267', 130, NULL, NULL),
(1268, 3, 'SANTIAGO DE LUCANAMARCA\r\n', 'santiago-de-lucanamarca\r\n-1268', 130, NULL, NULL),
(1269, 4, 'CARAPO\r\n', 'carapo\r\n-1269', 130, NULL, NULL),
(1270, 1, 'CORACORA\r\n', 'coracora\r\n-1270', 131, NULL, NULL),
(1271, 4, 'CORONEL CASTAÑEDA\r\n', 'coronel-castañeda\r\n-1271', 131, NULL, NULL),
(1272, 5, 'CHUMPI\r\n', 'chumpi\r\n-1272', 131, NULL, NULL),
(1273, 8, 'PACAPAUSA\r\n', 'pacapausa\r\n-1273', 131, NULL, NULL),
(1274, 12, 'PUYUSCA\r\n', 'puyusca\r\n-1274', 131, NULL, NULL),
(1275, 15, 'SAN FRANCISCO DE RAVACAYCO\r\n', 'san-francisco-de-ravacayco\r\n-1275', 131, NULL, NULL),
(1276, 16, 'UPAHUACHO\r\n', 'upahuacho\r\n-1276', 131, NULL, NULL),
(1277, 11, 'PULLO\r\n', 'pullo\r\n-1277', 131, NULL, NULL),
(1278, 1, 'PUQUIO\r\n', 'puquio\r\n-1278', 132, NULL, NULL),
(1279, 2, 'AUCARA\r\n', 'aucara\r\n-1279', 132, NULL, NULL),
(1280, 3, 'CABANA\r\n', 'cabana\r\n-1280', 132, NULL, NULL),
(1281, 6, 'CHAVIÑA\r\n', 'chaviña\r\n-1281', 132, NULL, NULL),
(1282, 8, 'CHIPAO\r\n', 'chipao\r\n-1282', 132, NULL, NULL),
(1283, 10, 'HUAC-HUAS\r\n', 'huac-huas\r\n-1283', 132, NULL, NULL),
(1284, 11, 'LARAMATE\r\n', 'laramate\r\n-1284', 132, NULL, NULL),
(1285, 12, 'LEONCIO PRADO\r\n', 'leoncio-prado\r\n-1285', 132, NULL, NULL),
(1286, 13, 'LUCANAS\r\n', 'lucanas\r\n-1286', 132, NULL, NULL),
(1287, 14, 'LLAUTA\r\n', 'llauta\r\n-1287', 132, NULL, NULL),
(1288, 17, 'OTOCA\r\n', 'otoca\r\n-1288', 132, NULL, NULL),
(1289, 20, 'SANCOS\r\n', 'sancos\r\n-1289', 132, NULL, NULL),
(1290, 21, 'SAN JUAN\r\n', 'san-juan\r\n-1290', 132, NULL, NULL),
(1291, 22, 'SAN PEDRO\r\n', 'san-pedro\r\n-1291', 132, NULL, NULL),
(1292, 24, 'SANTA ANA DE HUAYCAHUACHO\r\n', 'santa-ana-de-huaycahuacho\r\n-1292', 132, NULL, NULL),
(1293, 25, 'SANTA LUCIA\r\n', 'santa-lucia\r\n-1293', 132, NULL, NULL),
(1294, 31, 'SAN PEDRO DE PALCO\r\n', 'san-pedro-de-palco\r\n-1294', 132, NULL, NULL),
(1295, 32, 'SAN CRISTOBAL\r\n', 'san-cristobal\r\n-1295', 132, NULL, NULL),
(1296, 4, 'CARMEN SALCEDO\r\n', 'carmen-salcedo\r\n-1296', 132, NULL, NULL),
(1297, 16, 'OCAÑA\r\n', 'ocaña\r\n-1297', 132, NULL, NULL),
(1298, 29, 'SAISA\r\n', 'saisa\r\n-1298', 132, NULL, NULL),
(1299, 1, 'SAN MIGUEL\r\n', 'san-miguel\r\n-1299', 133, NULL, NULL),
(1300, 2, 'ANCO\r\n', 'anco\r\n-1300', 133, NULL, NULL),
(1301, 3, 'AYNA\r\n', 'ayna\r\n-1301', 133, NULL, NULL),
(1302, 4, 'CHILCAS\r\n', 'chilcas\r\n-1302', 133, NULL, NULL),
(1303, 6, 'TAMBO\r\n', 'tambo\r\n-1303', 133, NULL, NULL),
(1304, 7, 'LUIS CARRANZA\r\n', 'luis-carranza\r\n-1304', 133, NULL, NULL),
(1305, 8, 'SANTA ROSA\r\n', 'santa-rosa\r\n-1305', 133, NULL, NULL),
(1306, 5, 'CHUNGUI\r\n', 'chungui\r\n-1306', 133, NULL, NULL),
(1307, 1, 'CANGALLO\r\n', 'cangallo\r\n-1307', 134, NULL, NULL),
(1308, 6, 'LOS MOROCHUCOS\r\n', 'los-morochucos\r\n-1308', 134, NULL, NULL),
(1309, 7, 'PARAS\r\n', 'paras\r\n-1309', 134, NULL, NULL),
(1310, 8, 'TOTOS\r\n', 'totos\r\n-1310', 134, NULL, NULL),
(1311, 11, 'MARIA PARADO DE BELLIDO\r\n', 'maria-parado-de-bellido\r\n-1311', 134, NULL, NULL),
(1312, 4, 'CHUSCHI\r\n', 'chuschi\r\n-1312', 134, NULL, NULL),
(1313, 1, 'AYACUCHO\r\n', 'ayacucho\r\n-1313', 135, NULL, NULL),
(1314, 2, 'ACOS VINCHOS\r\n', 'acos-vinchos\r\n-1314', 135, NULL, NULL),
(1315, 3, 'CARMEN ALTO\r\n', 'carmen-alto\r\n-1315', 135, NULL, NULL),
(1316, 4, 'CHIARA\r\n', 'chiara\r\n-1316', 135, NULL, NULL),
(1317, 5, 'QUINUA\r\n', 'quinua\r\n-1317', 135, NULL, NULL),
(1318, 6, 'SAN JOSE DE TICLLAS\r\n', 'san-jose-de-ticllas\r\n-1318', 135, NULL, NULL),
(1319, 8, 'SANTIAGO DE PISCHA\r\n', 'santiago-de-pischa\r\n-1319', 135, NULL, NULL),
(1320, 9, 'VINCHOS\r\n', 'vinchos\r\n-1320', 135, NULL, NULL),
(1321, 10, 'TAMBILLO\r\n', 'tambillo\r\n-1321', 135, NULL, NULL),
(1322, 11, 'ACOCRO\r\n', 'acocro\r\n-1322', 135, NULL, NULL),
(1323, 12, 'SOCOS\r\n', 'socos\r\n-1323', 135, NULL, NULL),
(1324, 13, 'OCROS\r\n', 'ocros\r\n-1324', 135, NULL, NULL),
(1325, 14, 'PACAYCASA\r\n', 'pacaycasa\r\n-1325', 135, NULL, NULL),
(1326, 7, 'SAN JUAN BAUTISTA\r\n', 'san-juan-bautista\r\n-1326', 135, NULL, NULL),
(1327, 15, 'JESUS NAZARENO\r\n', 'jesus-nazareno\r\n-1327', 135, NULL, NULL),
(1328, 1, 'SAN NICOLAS\r\n', 'san-nicolas\r\n-1328', 136, NULL, NULL),
(1329, 2, 'COCHAMAL\r\n', 'cochamal\r\n-1329', 136, NULL, NULL),
(1330, 3, 'CHIRIMOTO\r\n', 'chirimoto\r\n-1330', 136, NULL, NULL),
(1331, 4, 'HUAMBO\r\n', 'huambo\r\n-1331', 136, NULL, NULL),
(1332, 6, 'LONGAR\r\n', 'longar\r\n-1332', 136, NULL, NULL),
(1333, 8, 'MARISCAL BENAVIDES\r\n', 'mariscal-benavides\r\n-1333', 136, NULL, NULL),
(1334, 9, 'OMIA\r\n', 'omia\r\n-1334', 136, NULL, NULL),
(1335, 10, 'SANTA ROSA\r\n', 'santa-rosa\r\n-1335', 136, NULL, NULL),
(1336, 11, 'TOTORA\r\n', 'totora\r\n-1336', 136, NULL, NULL),
(1337, 12, 'VISTA ALEGRE\r\n', 'vista-alegre\r\n-1337', 136, NULL, NULL),
(1338, 5, 'LIMABAMBA\r\n', 'limabamba\r\n-1338', 136, NULL, NULL),
(1339, 7, 'MILPUCC\r\n', 'milpucc\r\n-1339', 136, NULL, NULL),
(1340, 1, 'BAGUA GRANDE\r\n', 'bagua-grande\r\n-1340', 137, NULL, NULL),
(1341, 2, 'CAJARURO\r\n', 'cajaruro\r\n-1341', 137, NULL, NULL),
(1342, 3, 'CUMBA\r\n', 'cumba\r\n-1342', 137, NULL, NULL),
(1343, 4, 'EL MILAGRO\r\n', 'el-milagro\r\n-1343', 137, NULL, NULL),
(1344, 5, 'JAMALCA\r\n', 'jamalca\r\n-1344', 137, NULL, NULL),
(1345, 7, 'YAMON\r\n', 'yamon\r\n-1345', 137, NULL, NULL),
(1346, 6, 'LONYA GRANDE\r\n', 'lonya-grande\r\n-1346', 137, NULL, NULL),
(1347, 3, 'EL CENEPA\r\n', 'el-cenepa\r\n-1347', 138, NULL, NULL),
(1348, 2, 'RIO SANTIAGO\r\n', 'rio-santiago\r\n-1348', 138, NULL, NULL),
(1349, 1, 'NIEVA\r\n', 'nieva\r\n-1349', 138, NULL, NULL),
(1350, 1, 'LAMUD\r\n', 'lamud\r\n-1350', 139, NULL, NULL),
(1351, 2, 'CAMPORREDONDO\r\n', 'camporredondo\r\n-1351', 139, NULL, NULL),
(1352, 3, 'COCABAMBA\r\n', 'cocabamba\r\n-1352', 139, NULL, NULL),
(1353, 4, 'COLCAMAR\r\n', 'colcamar\r\n-1353', 139, NULL, NULL),
(1354, 5, 'CONILA\r\n', 'conila\r\n-1354', 139, NULL, NULL),
(1355, 6, 'INGUILPATA\r\n', 'inguilpata\r\n-1355', 139, NULL, NULL),
(1356, 8, 'LONYA CHICO\r\n', 'lonya-chico\r\n-1356', 139, NULL, NULL),
(1357, 9, 'LUYA\r\n', 'luya\r\n-1357', 139, NULL, NULL),
(1358, 10, 'LUYA VIEJO\r\n', 'luya-viejo\r\n-1358', 139, NULL, NULL),
(1359, 11, 'MARIA\r\n', 'maria\r\n-1359', 139, NULL, NULL),
(1360, 12, 'OCALLI\r\n', 'ocalli\r\n-1360', 139, NULL, NULL),
(1361, 13, 'OCUMAL\r\n', 'ocumal\r\n-1361', 139, NULL, NULL),
(1362, 15, 'SAN CRISTOBAL\r\n', 'san-cristobal\r\n-1362', 139, NULL, NULL),
(1363, 16, 'SAN FRANCISCO DE YESO\r\n', 'san-francisco-de-yeso\r\n-1363', 139, NULL, NULL),
(1364, 17, 'SAN JERONIMO\r\n', 'san-jeronimo\r\n-1364', 139, NULL, NULL),
(1365, 18, 'SAN JUAN DE LOPECANCHA\r\n', 'san-juan-de-lopecancha\r\n-1365', 139, NULL, NULL),
(1366, 19, 'SANTA CATALINA\r\n', 'santa-catalina\r\n-1366', 139, NULL, NULL),
(1367, 20, 'SANTO TOMAS\r\n', 'santo-tomas\r\n-1367', 139, NULL, NULL),
(1368, 22, 'TRITA\r\n', 'trita\r\n-1368', 139, NULL, NULL),
(1369, 23, 'PROVIDENCIA\r\n', 'providencia\r\n-1369', 139, NULL, NULL),
(1370, 7, 'LONGUITA\r\n', 'longuita\r\n-1370', 139, NULL, NULL),
(1371, 14, 'PISUQUIA\r\n', 'pisuquia\r\n-1371', 139, NULL, NULL),
(1372, 21, 'TINGO\r\n', 'tingo\r\n-1372', 139, NULL, NULL),
(1373, 1, 'JUMBILLA\r\n', 'jumbilla\r\n-1373', 140, NULL, NULL),
(1374, 2, 'COROSHA\r\n', 'corosha\r\n-1374', 140, NULL, NULL),
(1375, 3, 'CUISPES\r\n', 'cuispes\r\n-1375', 140, NULL, NULL),
(1376, 4, 'CHISQUILLA\r\n', 'chisquilla\r\n-1376', 140, NULL, NULL),
(1377, 6, 'FLORIDA\r\n', 'florida\r\n-1377', 140, NULL, NULL),
(1378, 7, 'RECTA\r\n', 'recta\r\n-1378', 140, NULL, NULL),
(1379, 8, 'SAN CARLOS\r\n', 'san-carlos\r\n-1379', 140, NULL, NULL),
(1380, 9, 'SHIPASBAMBA\r\n', 'shipasbamba\r\n-1380', 140, NULL, NULL),
(1381, 10, 'VALERA\r\n', 'valera\r\n-1381', 140, NULL, NULL),
(1382, 11, 'YAMBRASBAMBA\r\n', 'yambrasbamba\r\n-1382', 140, NULL, NULL),
(1383, 5, 'CHURUJA\r\n', 'churuja\r\n-1383', 140, NULL, NULL),
(1384, 12, 'JAZAN\r\n', 'jazan\r\n-1384', 140, NULL, NULL),
(1385, 1, 'LA PECA\r\n', 'la-peca\r\n-1385', 141, NULL, NULL),
(1386, 2, 'ARAMANGO\r\n', 'aramango\r\n-1386', 141, NULL, NULL),
(1387, 4, 'EL PARCO\r\n', 'el-parco\r\n-1387', 141, NULL, NULL),
(1388, 6, 'IMAZA\r\n', 'imaza\r\n-1388', 141, NULL, NULL),
(1389, 3, 'COPALLIN\r\n', 'copallin\r\n-1389', 141, NULL, NULL),
(1390, 1, 'CHACHAPOYAS\r\n', 'chachapoyas\r\n-1390', 142, NULL, NULL),
(1391, 2, 'ASUNCION\r\n', 'asuncion\r\n-1391', 142, NULL, NULL),
(1392, 4, 'CHETO\r\n', 'cheto\r\n-1392', 142, NULL, NULL),
(1393, 5, 'CHILIQUIN\r\n', 'chiliquin\r\n-1393', 142, NULL, NULL),
(1394, 6, 'CHUQUIBAMBA\r\n', 'chuquibamba\r\n-1394', 142, NULL, NULL),
(1395, 7, 'GRANADA\r\n', 'granada\r\n-1395', 142, NULL, NULL),
(1396, 8, 'HUANCAS\r\n', 'huancas\r\n-1396', 142, NULL, NULL),
(1397, 10, 'LEYMEBAMBA\r\n', 'leymebamba\r\n-1397', 142, NULL, NULL),
(1398, 11, 'LEVANTO\r\n', 'levanto\r\n-1398', 142, NULL, NULL),
(1399, 12, 'MAGDALENA\r\n', 'magdalena\r\n-1399', 142, NULL, NULL),
(1400, 13, 'MARISCAL CASTILLA\r\n', 'mariscal-castilla\r\n-1400', 142, NULL, NULL),
(1401, 14, 'MOLINOPAMPA\r\n', 'molinopampa\r\n-1401', 142, NULL, NULL),
(1402, 15, 'MONTEVIDEO\r\n', 'montevideo\r\n-1402', 142, NULL, NULL),
(1403, 16, 'OLLEROS\r\n', 'olleros\r\n-1403', 142, NULL, NULL),
(1404, 18, 'SAN FRANCISCO DE DAGUAS\r\n', 'san-francisco-de-daguas\r\n-1404', 142, NULL, NULL),
(1405, 19, 'SAN ISIDRO DE MAINO\r\n', 'san-isidro-de-maino\r\n-1405', 142, NULL, NULL),
(1406, 20, 'SOLOCO\r\n', 'soloco\r\n-1406', 142, NULL, NULL),
(1407, 21, 'SONCHE\r\n', 'sonche\r\n-1407', 142, NULL, NULL),
(1408, 3, 'BALSAS\r\n', 'balsas\r\n-1408', 142, NULL, NULL),
(1409, 9, 'LA JALCA\r\n', 'la-jalca\r\n-1409', 142, NULL, NULL),
(1410, 17, 'QUINJALCA\r\n', 'quinjalca\r\n-1410', 142, NULL, NULL),
(1411, 9, 'PAUCAS\r\n', 'paucas\r\n-1411', 143, NULL, NULL),
(1412, 10, 'PONTO\r\n', 'ponto\r\n-1412', 143, NULL, NULL),
(1413, 11, 'RAHUAPAMPA\r\n', 'rahuapampa\r\n-1413', 143, NULL, NULL),
(1414, 12, 'RAPAYAN\r\n', 'rapayan\r\n-1414', 143, NULL, NULL),
(1415, 14, 'SAN PEDRO DE CHANA\r\n', 'san-pedro-de-chana\r\n-1415', 143, NULL, NULL),
(1416, 15, 'UCO\r\n', 'uco\r\n-1416', 143, NULL, NULL),
(1417, 16, 'ANRA\r\n', 'anra\r\n-1417', 143, NULL, NULL),
(1418, 3, 'CHAVIN DE HUANTAR\r\n', 'chavin-de-huantar\r\n-1418', 143, NULL, NULL),
(1419, 4, 'HUACACHI\r\n', 'huacachi\r\n-1419', 143, NULL, NULL),
(1420, 5, 'HUACHIS\r\n', 'huachis\r\n-1420', 143, NULL, NULL),
(1421, 6, 'HUACCHIS\r\n', 'huacchis\r\n-1421', 143, NULL, NULL),
(1422, 8, 'MASIN\r\n', 'masin\r\n-1422', 143, NULL, NULL),
(1423, 2, 'CAJAY\r\n', 'cajay\r\n-1423', 143, NULL, NULL),
(1424, 7, 'HUANTAR\r\n', 'huantar\r\n-1424', 143, NULL, NULL),
(1425, 13, 'SAN MARCOS\r\n', 'san-marcos\r\n-1425', 143, NULL, NULL),
(1426, 1, 'HUARI\r\n', 'huari\r\n-1426', 143, NULL, NULL),
(1427, 1, 'CORONGO\r\n', 'corongo\r\n-1427', 144, NULL, NULL),
(1428, 2, 'ACO\r\n', 'aco\r\n-1428', 144, NULL, NULL),
(1429, 3, 'BAMBAS\r\n', 'bambas\r\n-1429', 144, NULL, NULL),
(1430, 5, 'LA PAMPA\r\n', 'la-pampa\r\n-1430', 144, NULL, NULL),
(1431, 6, 'YANAC\r\n', 'yanac\r\n-1431', 144, NULL, NULL),
(1432, 7, 'YUPAN\r\n', 'yupan\r\n-1432', 144, NULL, NULL),
(1433, 4, 'CUSCA\r\n', 'cusca\r\n-1433', 144, NULL, NULL),
(1434, 1, 'CHIQUIAN\r\n', 'chiquian\r\n-1434', 145, NULL, NULL),
(1435, 2, 'ABELARDO PARDO LEZAMETA\r\n', 'abelardo-pardo-lezameta\r\n-1435', 145, NULL, NULL),
(1436, 4, 'AQUIA\r\n', 'aquia\r\n-1436', 145, NULL, NULL),
(1437, 5, 'CAJACAY\r\n', 'cajacay\r\n-1437', 145, NULL, NULL),
(1438, 11, 'HUASTA\r\n', 'huasta\r\n-1438', 145, NULL, NULL),
(1439, 13, 'MANGAS\r\n', 'mangas\r\n-1439', 145, NULL, NULL),
(1440, 15, 'PACLLON\r\n', 'pacllon\r\n-1440', 145, NULL, NULL),
(1441, 17, 'SAN MIGUEL DE CORPANQUI\r\n', 'san-miguel-de-corpanqui\r\n-1441', 145, NULL, NULL),
(1442, 20, 'TICLLOS\r\n', 'ticllos\r\n-1442', 145, NULL, NULL),
(1443, 21, 'ANTONIO RAIMONDI\r\n', 'antonio-raimondi\r\n-1443', 145, NULL, NULL),
(1444, 22, 'CANIS\r\n', 'canis\r\n-1444', 145, NULL, NULL),
(1445, 24, 'LA PRIMAVERA\r\n', 'la-primavera\r\n-1445', 145, NULL, NULL),
(1446, 25, 'HUALLANCA\r\n', 'huallanca\r\n-1446', 145, NULL, NULL),
(1447, 10, 'HUAYLLACAYAN\r\n', 'huayllacayan\r\n-1447', 145, NULL, NULL),
(1448, 23, 'COLQUIOC\r\n', 'colquioc\r\n-1448', 145, NULL, NULL),
(1449, 1, 'CHACAS\r\n', 'chacas\r\n-1449', 146, NULL, NULL),
(1450, 2, 'ACOCHACA\r\n', 'acochaca\r\n-1450', 146, NULL, NULL),
(1451, 1, 'LLAMELLIN\r\n', 'llamellin\r\n-1451', 147, NULL, NULL),
(1452, 3, 'CHACCHO\r\n', 'chaccho\r\n-1452', 147, NULL, NULL),
(1453, 4, 'CHINGAS\r\n', 'chingas\r\n-1453', 147, NULL, NULL),
(1454, 6, 'SAN JUAN DE RONTOY\r\n', 'san-juan-de-rontoy\r\n-1454', 147, NULL, NULL),
(1455, 2, 'ACZO\r\n', 'aczo\r\n-1455', 147, NULL, NULL),
(1456, 5, 'MIRGAS\r\n', 'mirgas\r\n-1456', 147, NULL, NULL),
(1457, 1, 'CHIMBOTE\r\n', 'chimbote\r\n-1457', 148, NULL, NULL),
(1458, 2, 'CACERES DEL PERU\r\n', 'caceres-del-peru\r\n-1458', 148, NULL, NULL),
(1459, 4, 'MORO\r\n', 'moro\r\n-1459', 148, NULL, NULL),
(1460, 5, 'NEPEÑA\r\n', 'nepeña\r\n-1460', 148, NULL, NULL),
(1461, 6, 'SAMANCO\r\n', 'samanco\r\n-1461', 148, NULL, NULL),
(1462, 7, 'SANTA\r\n', 'santa\r\n-1462', 148, NULL, NULL),
(1463, 8, 'COISHCO\r\n', 'coishco\r\n-1463', 148, NULL, NULL),
(1464, 9, 'NUEVO CHIMBOTE\r\n', 'nuevo-chimbote\r\n-1464', 148, NULL, NULL),
(1465, 3, 'MACATE\r\n', 'macate\r\n-1465', 148, NULL, NULL),
(1466, 1, 'POMABAMBA\r\n', 'pomabamba\r\n-1466', 149, NULL, NULL),
(1467, 3, 'PAROBAMBA\r\n', 'parobamba\r\n-1467', 149, NULL, NULL),
(1468, 4, 'QUINUABAMBA\r\n', 'quinuabamba\r\n-1468', 149, NULL, NULL),
(1469, 2, 'HUAYLLAN\r\n', 'huayllan\r\n-1469', 149, NULL, NULL),
(1470, 1, 'CARAZ\r\n', 'caraz\r\n-1470', 150, NULL, NULL),
(1471, 2, 'HUALLANCA\r\n', 'huallanca\r\n-1471', 150, NULL, NULL),
(1472, 3, 'HUATA\r\n', 'huata\r\n-1472', 150, NULL, NULL),
(1473, 5, 'MATO\r\n', 'mato\r\n-1473', 150, NULL, NULL),
(1474, 6, 'PAMPAROMAS\r\n', 'pamparomas\r\n-1474', 150, NULL, NULL),
(1475, 7, 'PUEBLO LIBRE\r\n', 'pueblo-libre\r\n-1475', 150, NULL, NULL),
(1476, 8, 'SANTA CRUZ\r\n', 'santa-cruz\r\n-1476', 150, NULL, NULL),
(1477, 9, 'YURACMARCA\r\n', 'yuracmarca\r\n-1477', 150, NULL, NULL),
(1478, 10, 'SANTO TORIBIO\r\n', 'santo-toribio\r\n-1478', 150, NULL, NULL),
(1479, 4, 'HUAYLAS\r\n', 'huaylas\r\n-1479', 150, NULL, NULL),
(1480, 2, 'BUENA VISTA ALTA\r\n', 'buena-vista-alta\r\n-1480', 151, NULL, NULL),
(1481, 3, 'COMANDANTE NOEL\r\n', 'comandante-noel\r\n-1481', 151, NULL, NULL),
(1482, 5, 'YAUTAN\r\n', 'yautan\r\n-1482', 151, NULL, NULL),
(1483, 1, 'CASMA\r\n', 'casma\r\n-1483', 151, NULL, NULL),
(1484, 1, 'CARHUAZ\r\n', 'carhuaz\r\n-1484', 152, NULL, NULL),
(1485, 2, 'ACOPAMPA\r\n', 'acopampa\r\n-1485', 152, NULL, NULL),
(1486, 3, 'AMASHCA\r\n', 'amashca\r\n-1486', 152, NULL, NULL),
(1487, 4, 'ANTA\r\n', 'anta\r\n-1487', 152, NULL, NULL),
(1488, 6, 'MARCARA\r\n', 'marcara\r\n-1488', 152, NULL, NULL),
(1489, 7, 'PARIAHUANCA\r\n', 'pariahuanca\r\n-1489', 152, NULL, NULL),
(1490, 8, 'SAN MIGUEL DE ACO\r\n', 'san-miguel-de-aco\r\n-1490', 152, NULL, NULL),
(1491, 9, 'SHILLA\r\n', 'shilla\r\n-1491', 152, NULL, NULL),
(1492, 10, 'TINCO\r\n', 'tinco\r\n-1492', 152, NULL, NULL),
(1493, 11, 'YUNGAR\r\n', 'yungar\r\n-1493', 152, NULL, NULL),
(1494, 5, 'ATAQUERO\r\n', 'ataquero\r\n-1494', 152, NULL, NULL),
(1495, 1, 'AIJA\r\n', 'aija\r\n-1495', 153, NULL, NULL),
(1496, 3, 'CORIS\r\n', 'coris\r\n-1496', 153, NULL, NULL),
(1497, 6, 'LA MERCED\r\n', 'la-merced\r\n-1497', 153, NULL, NULL),
(1498, 8, 'SUCCHA\r\n', 'succha\r\n-1498', 153, NULL, NULL),
(1499, 5, 'HUACLLAN\r\n', 'huacllan\r\n-1499', 153, NULL, NULL),
(1500, 1, 'HUARAZ\r\n', 'huaraz\r\n-1500', 154, NULL, NULL),
(1501, 2, 'INDEPENDENCIA\r\n', 'independencia\r\n-1501', 154, NULL, NULL),
(1502, 3, 'COCHABAMBA\r\n', 'cochabamba\r\n-1502', 154, NULL, NULL),
(1503, 4, 'COLCABAMBA\r\n', 'colcabamba\r\n-1503', 154, NULL, NULL),
(1504, 5, 'HUANCHAY\r\n', 'huanchay\r\n-1504', 154, NULL, NULL),
(1505, 6, 'JANGAS\r\n', 'jangas\r\n-1505', 154, NULL, NULL),
(1506, 8, 'OLLEROS\r\n', 'olleros\r\n-1506', 154, NULL, NULL),
(1507, 9, 'PAMPAS\r\n', 'pampas\r\n-1507', 154, NULL, NULL),
(1508, 10, 'PARIACOTO\r\n', 'pariacoto\r\n-1508', 154, NULL, NULL),
(1509, 11, 'PIRA\r\n', 'pira\r\n-1509', 154, NULL, NULL),
(1510, 12, 'TARICA\r\n', 'tarica\r\n-1510', 154, NULL, NULL),
(1511, 7, 'LA LIBERTAD\r\n', 'la-libertad\r\n-1511', 154, NULL, NULL),
(1512, 1, 'ACAS\r\n', 'acas\r\n-1512', 155, NULL, NULL),
(1513, 2, 'CAJAMARQUILLA\r\n', 'cajamarquilla\r\n-1513', 155, NULL, NULL),
(1514, 3, 'CARHUAPAMPA\r\n', 'carhuapampa\r\n-1514', 155, NULL, NULL),
(1515, 4, 'COCHAS\r\n', 'cochas\r\n-1515', 155, NULL, NULL),
(1516, 5, 'CONGAS\r\n', 'congas\r\n-1516', 155, NULL, NULL),
(1517, 6, 'LLIPA\r\n', 'llipa\r\n-1517', 155, NULL, NULL),
(1518, 8, 'SAN CRISTOBAL DE RAJAN\r\n', 'san-cristobal-de-rajan\r\n-1518', 155, NULL, NULL),
(1519, 9, 'SAN PEDRO\r\n', 'san-pedro\r\n-1519', 155, NULL, NULL),
(1520, 10, 'SANTIAGO DE CHILCAS\r\n', 'santiago-de-chilcas\r\n-1520', 155, NULL, NULL),
(1521, 7, 'OCROS\r\n', 'ocros\r\n-1521', 155, NULL, NULL),
(1522, 1, 'HUARMEY\r\n', 'huarmey\r\n-1522', 156, NULL, NULL),
(1523, 2, 'COCHAPETI\r\n', 'cochapeti\r\n-1523', 156, NULL, NULL),
(1524, 3, 'HUAYAN\r\n', 'huayan\r\n-1524', 156, NULL, NULL),
(1525, 4, 'MALVAS\r\n', 'malvas\r\n-1525', 156, NULL, NULL),
(1526, 5, 'CULEBRAS\r\n', 'culebras\r\n-1526', 156, NULL, NULL),
(1527, 2, 'YAUYA\r\n', 'yauya\r\n-1527', 157, NULL, NULL),
(1528, 3, 'SAN NICOLAS\r\n', 'san-nicolas\r\n-1528', 157, NULL, NULL),
(1529, 1, 'SAN LUIS\r\n', 'san-luis\r\n-1529', 157, NULL, NULL),
(1530, 1, 'YUNGAY\r\n', 'yungay\r\n-1530', 158, NULL, NULL),
(1531, 2, 'CASCAPARA\r\n', 'cascapara\r\n-1531', 158, NULL, NULL),
(1532, 3, 'MANCOS\r\n', 'mancos\r\n-1532', 158, NULL, NULL),
(1533, 4, 'MATACOTO\r\n', 'matacoto\r\n-1533', 158, NULL, NULL),
(1534, 6, 'RANRAHIRCA\r\n', 'ranrahirca\r\n-1534', 158, NULL, NULL),
(1535, 7, 'SHUPLUY\r\n', 'shupluy\r\n-1535', 158, NULL, NULL),
(1536, 8, 'YANAMA\r\n', 'yanama\r\n-1536', 158, NULL, NULL),
(1537, 5, 'QUILLO\r\n', 'quillo\r\n-1537', 158, NULL, NULL),
(1538, 2, 'ALFONSO UGARTE\r\n', 'alfonso-ugarte\r\n-1538', 159, NULL, NULL),
(1539, 3, 'CHINGALPO\r\n', 'chingalpo\r\n-1539', 159, NULL, NULL),
(1540, 4, 'HUAYLLABAMBA\r\n', 'huayllabamba\r\n-1540', 159, NULL, NULL),
(1541, 5, 'QUICHES\r\n', 'quiches\r\n-1541', 159, NULL, NULL),
(1542, 6, 'SICSIBAMBA\r\n', 'sicsibamba\r\n-1542', 159, NULL, NULL),
(1543, 7, 'ACOBAMBA\r\n', 'acobamba\r\n-1543', 159, NULL, NULL),
(1544, 9, 'RAGASH\r\n', 'ragash\r\n-1544', 159, NULL, NULL),
(1545, 10, 'SAN JUAN\r\n', 'san-juan\r\n-1545', 159, NULL, NULL),
(1546, 1, 'SIHUAS\r\n', 'sihuas\r\n-1546', 159, NULL, NULL),
(1547, 8, 'CASHAPAMPA\r\n', 'cashapampa\r\n-1547', 159, NULL, NULL),
(1548, 1, 'RECUAY\r\n', 'recuay\r\n-1548', 160, NULL, NULL),
(1549, 2, 'COTAPARACO\r\n', 'cotaparaco\r\n-1549', 160, NULL, NULL),
(1550, 3, 'HUAYLLAPAMPA\r\n', 'huayllapampa\r\n-1550', 160, NULL, NULL),
(1551, 4, 'MARCA\r\n', 'marca\r\n-1551', 160, NULL, NULL),
(1552, 6, 'PARARIN\r\n', 'pararin\r\n-1552', 160, NULL, NULL),
(1553, 7, 'TAPACOCHA\r\n', 'tapacocha\r\n-1553', 160, NULL, NULL),
(1554, 8, 'TICAPAMPA\r\n', 'ticapampa\r\n-1554', 160, NULL, NULL),
(1555, 9, 'LLACLLIN\r\n', 'llacllin\r\n-1555', 160, NULL, NULL),
(1556, 10, 'CATAC\r\n', 'catac\r\n-1556', 160, NULL, NULL),
(1557, 5, 'PAMPAS CHICO\r\n', 'pampas-chico\r\n-1557', 160, NULL, NULL),
(1558, 1, 'CABANA\r\n', 'cabana\r\n-1558', 161, NULL, NULL),
(1559, 2, 'BOLOGNESI\r\n', 'bolognesi\r\n-1559', 161, NULL, NULL),
(1560, 3, 'CONCHUCOS\r\n', 'conchucos\r\n-1560', 161, NULL, NULL),
(1561, 4, 'HUACASCHUQUE\r\n', 'huacaschuque\r\n-1561', 161, NULL, NULL),
(1562, 6, 'LACABAMBA\r\n', 'lacabamba\r\n-1562', 161, NULL, NULL),
(1563, 7, 'LLAPO\r\n', 'llapo\r\n-1563', 161, NULL, NULL),
(1564, 8, 'PALLASCA\r\n', 'pallasca\r\n-1564', 161, NULL, NULL);
INSERT INTO `districts` (`id`, `codigo`, `nombre`, `slug`, `provinces_id`, `created_at`, `updated_at`) VALUES
(1565, 9, 'PAMPAS\r\n', 'pampas\r\n-1565', 161, NULL, NULL),
(1566, 10, 'SANTA ROSA\r\n', 'santa-rosa\r\n-1566', 161, NULL, NULL),
(1567, 11, 'TAUCA\r\n', 'tauca\r\n-1567', 161, NULL, NULL),
(1568, 5, 'HUANDOVAL\r\n', 'huandoval\r\n-1568', 161, NULL, NULL),
(1569, 1, 'PISCOBAMBA\r\n', 'piscobamba\r\n-1569', 162, NULL, NULL),
(1570, 2, 'CASCA\r\n', 'casca\r\n-1570', 162, NULL, NULL),
(1571, 3, 'LUCMA\r\n', 'lucma\r\n-1571', 162, NULL, NULL),
(1572, 5, 'LLAMA\r\n', 'llama\r\n-1572', 162, NULL, NULL),
(1573, 6, 'LLUMPA\r\n', 'llumpa\r\n-1573', 162, NULL, NULL),
(1574, 7, 'MUSGA\r\n', 'musga\r\n-1574', 162, NULL, NULL),
(1575, 8, 'ELEAZAR GUZMAN BARRON\r\n', 'eleazar-guzman-barron\r\n-1575', 162, NULL, NULL),
(1576, 4, 'FIDEL OLIVAS ESCUDERO\r\n', 'fidel-olivas-escudero\r\n-1576', 162, NULL, NULL),
(1577, 1, 'RAMON CASTILLA\r\n', 'ramon-castilla\r\n-1577', 163, NULL, NULL),
(1578, 2, 'PEBAS\r\n', 'pebas\r\n-1578', 163, NULL, NULL),
(1579, 3, 'YAVARI\r\n', 'yavari\r\n-1579', 163, NULL, NULL),
(1580, 4, 'SAN PABLO\r\n', 'san-pablo\r\n-1580', 163, NULL, NULL),
(1581, 2, 'BALSAPUERTO\r\n', 'balsapuerto\r\n-1581', 164, NULL, NULL),
(1582, 5, 'JEBEROS\r\n', 'jeberos\r\n-1582', 164, NULL, NULL),
(1583, 6, 'LAGUNAS\r\n', 'lagunas\r\n-1583', 164, NULL, NULL),
(1584, 10, 'SANTA CRUZ\r\n', 'santa-cruz\r\n-1584', 164, NULL, NULL),
(1585, 11, 'TENIENTE CESAR LOPEZ ROJAS\r\n', 'teniente-cesar-lopez-rojas\r\n-1585', 164, NULL, NULL),
(1586, 1, 'YURIMAGUAS\r\n', 'yurimaguas\r\n-1586', 164, NULL, NULL),
(1587, 2, 'ANDOAS\r\n', 'andoas\r\n-1587', 165, NULL, NULL),
(1588, 3, 'CAHUAPANAS\r\n', 'cahuapanas\r\n-1588', 165, NULL, NULL),
(1589, 4, 'MANSERICHE\r\n', 'manseriche\r\n-1589', 165, NULL, NULL),
(1590, 5, 'MORONA\r\n', 'morona\r\n-1590', 165, NULL, NULL),
(1591, 6, 'PASTAZA\r\n', 'pastaza\r\n-1591', 165, NULL, NULL),
(1592, 1, 'BARRANCA\r\n', 'barranca\r\n-1592', 165, NULL, NULL),
(1593, 1, 'CONTAMANA\r\n', 'contamana\r\n-1593', 166, NULL, NULL),
(1594, 3, 'PADRE MARQUEZ\r\n', 'padre-marquez\r\n-1594', 166, NULL, NULL),
(1595, 4, 'PAMPA HERMOSA\r\n', 'pampa-hermosa\r\n-1595', 166, NULL, NULL),
(1596, 6, 'INAHUAYA\r\n', 'inahuaya\r\n-1596', 166, NULL, NULL),
(1597, 5, 'SARAYACU\r\n', 'sarayacu\r\n-1597', 166, NULL, NULL),
(1598, 2, 'VARGAS GUERRA\r\n', 'vargas-guerra\r\n-1598', 166, NULL, NULL),
(1599, 1, 'REQUENA\r\n', 'requena\r\n-1599', 167, NULL, NULL),
(1600, 2, 'ALTO TAPICHE\r\n', 'alto-tapiche\r\n-1600', 167, NULL, NULL),
(1601, 3, 'CAPELO\r\n', 'capelo\r\n-1601', 167, NULL, NULL),
(1602, 5, 'MAQUIA\r\n', 'maquia\r\n-1602', 167, NULL, NULL),
(1603, 6, 'PUINAHUA\r\n', 'puinahua\r\n-1603', 167, NULL, NULL),
(1604, 7, 'SAQUENA\r\n', 'saquena\r\n-1604', 167, NULL, NULL),
(1605, 8, 'SOPLIN\r\n', 'soplin\r\n-1605', 167, NULL, NULL),
(1606, 9, 'TAPICHE\r\n', 'tapiche\r\n-1606', 167, NULL, NULL),
(1607, 10, 'JENARO HERRERA\r\n', 'jenaro-herrera\r\n-1607', 167, NULL, NULL),
(1608, 11, 'YAQUERANA\r\n', 'yaquerana\r\n-1608', 167, NULL, NULL),
(1609, 4, 'EMILIO SAN MARTIN\r\n', 'emilio-san-martin\r\n-1609', 167, NULL, NULL),
(1610, 1, 'NAUTA\r\n', 'nauta\r\n-1610', 168, NULL, NULL),
(1611, 2, 'PARINARI\r\n', 'parinari\r\n-1611', 168, NULL, NULL),
(1612, 4, 'URARINAS\r\n', 'urarinas\r\n-1612', 168, NULL, NULL),
(1613, 5, 'TROMPETEROS\r\n', 'trompeteros\r\n-1613', 168, NULL, NULL),
(1614, 3, 'TIGRE\r\n', 'tigre\r\n-1614', 168, NULL, NULL),
(1615, 1, 'IQUITOS\r\n', 'iquitos\r\n-1615', 169, NULL, NULL),
(1616, 2, 'ALTO NANAY\r\n', 'alto-nanay\r\n-1616', 169, NULL, NULL),
(1617, 3, 'FERNANDO LORES\r\n', 'fernando-lores\r\n-1617', 169, NULL, NULL),
(1618, 4, 'LAS AMAZONAS\r\n', 'las-amazonas\r\n-1618', 169, NULL, NULL),
(1619, 5, 'MAZAN\r\n', 'mazan\r\n-1619', 169, NULL, NULL),
(1620, 6, 'NAPO\r\n', 'napo\r\n-1620', 169, NULL, NULL),
(1621, 8, 'TORRES CAUSANA\r\n', 'torres-causana\r\n-1621', 169, NULL, NULL),
(1622, 10, 'INDIANA\r\n', 'indiana\r\n-1622', 169, NULL, NULL),
(1623, 11, 'PUNCHANA\r\n', 'punchana\r\n-1623', 169, NULL, NULL),
(1624, 12, 'BELEN\r\n', 'belen\r\n-1624', 169, NULL, NULL),
(1625, 13, 'SAN JUAN BAUTISTA\r\n', 'san-juan-bautista\r\n-1625', 169, NULL, NULL),
(1626, 14, 'TNTE MANUEL CLAVERO\r\n', 'tnte-manuel-clavero\r\n-1626', 169, NULL, NULL),
(1627, 7, 'PUTUMAYO\r\n', 'putumayo\r\n-1627', 169, NULL, NULL),
(1628, 1, 'ILO\r\n', 'ilo\r\n-1628', 170, NULL, NULL),
(1629, 2, 'EL ALGARROBAL\r\n', 'el-algarrobal\r\n-1629', 170, NULL, NULL),
(1630, 3, 'PACOCHA\r\n', 'pacocha\r\n-1630', 170, NULL, NULL),
(1631, 1, 'OMATE\r\n', 'omate\r\n-1631', 171, NULL, NULL),
(1632, 2, 'COALAQUE\r\n', 'coalaque\r\n-1632', 171, NULL, NULL),
(1633, 3, 'CHOJATA\r\n', 'chojata\r\n-1633', 171, NULL, NULL),
(1634, 4, 'ICHUÑA\r\n', 'ichuña\r\n-1634', 171, NULL, NULL),
(1635, 5, 'LA CAPILLA\r\n', 'la-capilla\r\n-1635', 171, NULL, NULL),
(1636, 6, 'LLOQUE\r\n', 'lloque\r\n-1636', 171, NULL, NULL),
(1637, 8, 'PUQUINA\r\n', 'puquina\r\n-1637', 171, NULL, NULL),
(1638, 9, 'QUINISTAQUILLAS\r\n', 'quinistaquillas\r\n-1638', 171, NULL, NULL),
(1639, 10, 'UBINAS\r\n', 'ubinas\r\n-1639', 171, NULL, NULL),
(1640, 11, 'YUNGA\r\n', 'yunga\r\n-1640', 171, NULL, NULL),
(1641, 7, 'MATALAQUE\r\n', 'matalaque\r\n-1641', 171, NULL, NULL),
(1642, 1, 'MOQUEGUA\r\n', 'moquegua\r\n-1642', 172, NULL, NULL),
(1643, 2, 'CARUMAS\r\n', 'carumas\r\n-1643', 172, NULL, NULL),
(1644, 3, 'CUCHUMBAYA\r\n', 'cuchumbaya\r\n-1644', 172, NULL, NULL),
(1645, 4, 'SAN CRISTOBAL\r\n', 'san-cristobal\r\n-1645', 172, NULL, NULL),
(1646, 5, 'TORATA\r\n', 'torata\r\n-1646', 172, NULL, NULL),
(1647, 6, 'SAMEGUA\r\n', 'samegua\r\n-1647', 172, NULL, NULL),
(1648, 1, 'YUNGUYO\r\n', 'yunguyo\r\n-1648', 173, NULL, NULL),
(1649, 2, 'UNICACHI\r\n', 'unicachi\r\n-1649', 173, NULL, NULL),
(1650, 3, 'ANAPIA\r\n', 'anapia\r\n-1650', 173, NULL, NULL),
(1651, 6, 'OLLARAYA\r\n', 'ollaraya\r\n-1651', 173, NULL, NULL),
(1652, 7, 'TINICACHI\r\n', 'tinicachi\r\n-1652', 173, NULL, NULL),
(1653, 4, 'COPANI\r\n', 'copani\r\n-1653', 173, NULL, NULL),
(1654, 5, 'CUTURAPI\r\n', 'cuturapi\r\n-1654', 173, NULL, NULL),
(1655, 1, 'SANDIA\r\n', 'sandia\r\n-1655', 174, NULL, NULL),
(1656, 4, 'LIMBANI\r\n', 'limbani\r\n-1656', 174, NULL, NULL),
(1657, 5, 'PHARA\r\n', 'phara\r\n-1657', 174, NULL, NULL),
(1658, 6, 'PATAMBUCO\r\n', 'patambuco\r\n-1658', 174, NULL, NULL),
(1659, 7, 'QUIACA\r\n', 'quiaca\r\n-1659', 174, NULL, NULL),
(1660, 8, 'SAN JUAN DEL ORO\r\n', 'san-juan-del-oro\r\n-1660', 174, NULL, NULL),
(1661, 10, 'YANAHUAYA\r\n', 'yanahuaya\r\n-1661', 174, NULL, NULL),
(1662, 12, 'SAN PEDRO DE PUTINA PUNCO\r\n', 'san-pedro-de-putina-punco\r\n-1662', 174, NULL, NULL),
(1663, 3, 'CUYOCUYO\r\n', 'cuyocuyo\r\n-1663', 174, NULL, NULL),
(1664, 11, 'ALTO INAMBARI\r\n', 'alto-inambari\r\n-1664', 174, NULL, NULL),
(1665, 1, 'LAMPA\r\n', 'lampa\r\n-1665', 175, NULL, NULL),
(1666, 2, 'CABANILLA\r\n', 'cabanilla\r\n-1666', 175, NULL, NULL),
(1667, 3, 'CALAPUJA\r\n', 'calapuja\r\n-1667', 175, NULL, NULL),
(1668, 4, 'NICASIO\r\n', 'nicasio\r\n-1668', 175, NULL, NULL),
(1669, 5, 'OCUVIRI\r\n', 'ocuviri\r\n-1669', 175, NULL, NULL),
(1670, 6, 'PALCA\r\n', 'palca\r\n-1670', 175, NULL, NULL),
(1671, 7, 'PARATIA\r\n', 'paratia\r\n-1671', 175, NULL, NULL),
(1672, 9, 'SANTA LUCIA\r\n', 'santa-lucia\r\n-1672', 175, NULL, NULL),
(1673, 10, 'VILAVILA\r\n', 'vilavila\r\n-1673', 175, NULL, NULL),
(1674, 8, 'PUCARA\r\n', 'pucara\r\n-1674', 175, NULL, NULL),
(1675, 2, 'ACHAYA\r\n', 'achaya\r\n-1675', 176, NULL, NULL),
(1676, 3, 'ARAPA\r\n', 'arapa\r\n-1676', 176, NULL, NULL),
(1677, 4, 'ASILLO\r\n', 'asillo\r\n-1677', 176, NULL, NULL),
(1678, 6, 'CHUPA\r\n', 'chupa\r\n-1678', 176, NULL, NULL),
(1679, 7, 'JOSE DOMINGO CHOQUEHUANCA\r\n', 'jose-domingo-choquehuanca\r\n-1679', 176, NULL, NULL),
(1680, 8, 'MUÑANI\r\n', 'muñani\r\n-1680', 176, NULL, NULL),
(1681, 10, 'POTONI\r\n', 'potoni\r\n-1681', 176, NULL, NULL),
(1682, 12, 'SAMAN\r\n', 'saman\r\n-1682', 176, NULL, NULL),
(1683, 13, 'SAN ANTON\r\n', 'san-anton\r\n-1683', 176, NULL, NULL),
(1684, 15, 'SAN JUAN DE SALINAS\r\n', 'san-juan-de-salinas\r\n-1684', 176, NULL, NULL),
(1685, 16, 'SANTIAGO DE PUPUJA\r\n', 'santiago-de-pupuja\r\n-1685', 176, NULL, NULL),
(1686, 17, 'TIRAPATA\r\n', 'tirapata\r\n-1686', 176, NULL, NULL),
(1687, 1, 'AZANGARO\r\n', 'azangaro\r\n-1687', 176, NULL, NULL),
(1688, 5, 'CAMINACA\r\n', 'caminaca\r\n-1688', 176, NULL, NULL),
(1689, 14, 'SAN JOSE\r\n', 'san-jose\r\n-1689', 176, NULL, NULL),
(1690, 1, 'MOHO\r\n', 'moho\r\n-1690', 177, NULL, NULL),
(1691, 3, 'TILALI\r\n', 'tilali\r\n-1691', 177, NULL, NULL),
(1692, 4, 'HUAYRAPATA\r\n', 'huayrapata\r\n-1692', 177, NULL, NULL),
(1693, 2, 'CONIMA\r\n', 'conima\r\n-1693', 177, NULL, NULL),
(1694, 1, 'ILAVE\r\n', 'ilave\r\n-1694', 178, NULL, NULL),
(1695, 2, 'PILCUYO\r\n', 'pilcuyo\r\n-1695', 178, NULL, NULL),
(1696, 3, 'SANTA ROSA\r\n', 'santa-rosa\r\n-1696', 178, NULL, NULL),
(1697, 4, 'CAPASO\r\n', 'capaso\r\n-1697', 178, NULL, NULL),
(1698, 5, 'CONDURIRI\r\n', 'conduriri\r\n-1698', 178, NULL, NULL),
(1699, 1, 'PUTINA\r\n', 'putina\r\n-1699', 179, NULL, NULL),
(1700, 2, 'PEDRO VILCA APAZA\r\n', 'pedro-vilca-apaza\r\n-1700', 179, NULL, NULL),
(1701, 3, 'QUILCAPUNCU\r\n', 'quilcapuncu\r\n-1701', 179, NULL, NULL),
(1702, 4, 'ANANEA\r\n', 'ananea\r\n-1702', 179, NULL, NULL),
(1703, 5, 'SINA\r\n', 'sina\r\n-1703', 179, NULL, NULL),
(1704, 1, 'JULIACA\r\n', 'juliaca\r\n-1704', 180, NULL, NULL),
(1705, 3, 'CABANILLAS\r\n', 'cabanillas\r\n-1705', 180, NULL, NULL),
(1706, 4, 'CARACOTO\r\n', 'caracoto\r\n-1706', 180, NULL, NULL),
(1707, 2, 'CABANA\r\n', 'cabana\r\n-1707', 180, NULL, NULL),
(1708, 1, 'AYAVIRI\r\n', 'ayaviri\r\n-1708', 181, NULL, NULL),
(1709, 2, 'ANTAUTA\r\n', 'antauta\r\n-1709', 181, NULL, NULL),
(1710, 3, 'CUPI\r\n', 'cupi\r\n-1710', 181, NULL, NULL),
(1711, 5, 'MACARI\r\n', 'macari\r\n-1711', 181, NULL, NULL),
(1712, 6, 'NUÑOA\r\n', 'nuñoa\r\n-1712', 181, NULL, NULL),
(1713, 7, 'ORURILLO\r\n', 'orurillo\r\n-1713', 181, NULL, NULL),
(1714, 8, 'SANTA ROSA\r\n', 'santa-rosa\r\n-1714', 181, NULL, NULL),
(1715, 9, 'UMACHIRI\r\n', 'umachiri\r\n-1715', 181, NULL, NULL),
(1716, 4, 'LLALLI\r\n', 'llalli\r\n-1716', 181, NULL, NULL),
(1717, 2, 'COJATA\r\n', 'cojata\r\n-1717', 182, NULL, NULL),
(1718, 4, 'INCHUPALLA\r\n', 'inchupalla\r\n-1718', 182, NULL, NULL),
(1719, 6, 'PUSI\r\n', 'pusi\r\n-1719', 182, NULL, NULL),
(1720, 7, 'ROSASPATA\r\n', 'rosaspata\r\n-1720', 182, NULL, NULL),
(1721, 8, 'TARACO\r\n', 'taraco\r\n-1721', 182, NULL, NULL),
(1722, 9, 'VILQUE CHICO\r\n', 'vilque-chico\r\n-1722', 182, NULL, NULL),
(1723, 1, 'HUANCANE\r\n', 'huancane\r\n-1723', 182, NULL, NULL),
(1724, 11, 'HUATASANI\r\n', 'huatasani\r\n-1724', 182, NULL, NULL),
(1725, 2, 'DESAGUADERO\r\n', 'desaguadero\r\n-1725', 183, NULL, NULL),
(1726, 3, 'HUACULLANI\r\n', 'huacullani\r\n-1726', 183, NULL, NULL),
(1727, 6, 'PISACOMA\r\n', 'pisacoma\r\n-1727', 183, NULL, NULL),
(1728, 7, 'POMATA\r\n', 'pomata\r\n-1728', 183, NULL, NULL),
(1729, 10, 'ZEPITA\r\n', 'zepita\r\n-1729', 183, NULL, NULL),
(1730, 12, 'KELLUYO\r\n', 'kelluyo\r\n-1730', 183, NULL, NULL),
(1731, 1, 'JULI\r\n', 'juli\r\n-1731', 183, NULL, NULL),
(1732, 1, 'MACUSANI\r\n', 'macusani\r\n-1732', 184, NULL, NULL),
(1733, 2, 'AJOYANI\r\n', 'ajoyani\r\n-1733', 184, NULL, NULL),
(1734, 3, 'AYAPATA\r\n', 'ayapata\r\n-1734', 184, NULL, NULL),
(1735, 5, 'CORANI\r\n', 'corani\r\n-1735', 184, NULL, NULL),
(1736, 6, 'CRUCERO\r\n', 'crucero\r\n-1736', 184, NULL, NULL),
(1737, 7, 'ITUATA\r\n', 'ituata\r\n-1737', 184, NULL, NULL),
(1738, 8, 'OLLACHEA\r\n', 'ollachea\r\n-1738', 184, NULL, NULL),
(1739, 9, 'SAN GABAN\r\n', 'san-gaban\r\n-1739', 184, NULL, NULL),
(1740, 10, 'USICAYOS\r\n', 'usicayos\r\n-1740', 184, NULL, NULL),
(1741, 4, 'COASA\r\n', 'coasa\r\n-1741', 184, NULL, NULL),
(1742, 1, 'PUNO\r\n', 'puno\r\n-1742', 185, NULL, NULL),
(1743, 2, 'ACORA\r\n', 'acora\r\n-1743', 185, NULL, NULL),
(1744, 4, 'CAPACHICA\r\n', 'capachica\r\n-1744', 185, NULL, NULL),
(1745, 5, 'COATA\r\n', 'coata\r\n-1745', 185, NULL, NULL),
(1746, 6, 'CHUCUITO\r\n', 'chucuito\r\n-1746', 185, NULL, NULL),
(1747, 7, 'HUATA\r\n', 'huata\r\n-1747', 185, NULL, NULL),
(1748, 8, 'MAÑAZO\r\n', 'mañazo\r\n-1748', 185, NULL, NULL),
(1749, 10, 'PICHACANI\r\n', 'pichacani\r\n-1749', 185, NULL, NULL),
(1750, 11, 'SAN ANTONIO\r\n', 'san-antonio\r\n-1750', 185, NULL, NULL),
(1751, 13, 'VILQUE\r\n', 'vilque\r\n-1751', 185, NULL, NULL),
(1752, 14, 'PLATERIA\r\n', 'plateria\r\n-1752', 185, NULL, NULL),
(1753, 15, 'AMANTANI\r\n', 'amantani\r\n-1753', 185, NULL, NULL),
(1754, 9, 'PAUCARCOLLA\r\n', 'paucarcolla\r\n-1754', 185, NULL, NULL),
(1755, 3, 'ATUNCOLLA\r\n', 'atuncolla\r\n-1755', 185, NULL, NULL),
(1756, 12, 'TIQUILLACA\r\n', 'tiquillaca\r\n-1756', 185, NULL, NULL),
(1757, 1, 'BELLAVISTA\r\n', 'bellavista\r\n-1757', 186, NULL, NULL),
(1758, 2, 'SAN RAFAEL\r\n', 'san-rafael\r\n-1758', 186, NULL, NULL),
(1759, 4, 'ALTO BIAVO\r\n', 'alto-biavo\r\n-1759', 186, NULL, NULL),
(1760, 5, 'HUALLAGA\r\n', 'huallaga\r\n-1760', 186, NULL, NULL),
(1761, 3, 'SAN PABLO\r\n', 'san-pablo\r\n-1761', 186, NULL, NULL),
(1762, 6, 'BAJO BIAVO\r\n', 'bajo-biavo\r\n-1762', 186, NULL, NULL),
(1763, 1, 'RIOJA\r\n', 'rioja\r\n-1763', 187, NULL, NULL),
(1764, 2, 'POSIC\r\n', 'posic\r\n-1764', 187, NULL, NULL),
(1765, 3, 'YORONGOS\r\n', 'yorongos\r\n-1765', 187, NULL, NULL),
(1766, 4, 'YURACYACU\r\n', 'yuracyacu\r\n-1766', 187, NULL, NULL),
(1767, 6, 'ELIAS SOPLIN\r\n', 'elias-soplin\r\n-1767', 187, NULL, NULL),
(1768, 7, 'SAN FERNANDO\r\n', 'san-fernando\r\n-1768', 187, NULL, NULL),
(1769, 8, 'PARDO MIGUEL\r\n', 'pardo-miguel\r\n-1769', 187, NULL, NULL),
(1770, 9, 'AWAJUN\r\n', 'awajun\r\n-1770', 187, NULL, NULL),
(1771, 5, 'NUEVA CAJAMARCA\r\n', 'nueva-cajamarca\r\n-1771', 187, NULL, NULL),
(1772, 1, 'LAMAS\r\n', 'lamas\r\n-1772', 188, NULL, NULL),
(1773, 3, 'BARRANQUITA\r\n', 'barranquita\r\n-1773', 188, NULL, NULL),
(1774, 4, 'CAYNARACHI\r\n', 'caynarachi\r\n-1774', 188, NULL, NULL),
(1775, 5, 'CUÑUMBUQUI\r\n', 'cuñumbuqui\r\n-1775', 188, NULL, NULL),
(1776, 6, 'PINTO RECODO\r\n', 'pinto-recodo\r\n-1776', 188, NULL, NULL),
(1777, 7, 'RUMISAPA\r\n', 'rumisapa\r\n-1777', 188, NULL, NULL),
(1778, 13, 'TABALOSOS\r\n', 'tabalosos\r\n-1778', 188, NULL, NULL),
(1779, 14, 'ZAPATERO\r\n', 'zapatero\r\n-1779', 188, NULL, NULL),
(1780, 15, 'ALONSO DE ALVARADO\r\n', 'alonso-de-alvarado\r\n-1780', 188, NULL, NULL),
(1781, 16, 'SAN ROQUE DE CUMBAZA\r\n', 'san-roque-de-cumbaza\r\n-1781', 188, NULL, NULL),
(1782, 11, 'SHANAO\r\n', 'shanao\r\n-1782', 188, NULL, NULL),
(1783, 1, 'PICOTA\r\n', 'picota\r\n-1783', 189, NULL, NULL),
(1784, 2, 'BUENOS AIRES\r\n', 'buenos-aires\r\n-1784', 189, NULL, NULL),
(1785, 4, 'PILLUANA\r\n', 'pilluana\r\n-1785', 189, NULL, NULL),
(1786, 5, 'PUCACACA\r\n', 'pucacaca\r\n-1786', 189, NULL, NULL),
(1787, 6, 'SAN CRISTOBAL\r\n', 'san-cristobal\r\n-1787', 189, NULL, NULL),
(1788, 7, 'SAN HILARION\r\n', 'san-hilarion\r\n-1788', 189, NULL, NULL),
(1789, 8, 'TINGO DE PONASA\r\n', 'tingo-de-ponasa\r\n-1789', 189, NULL, NULL),
(1790, 9, 'TRES UNIDOS\r\n', 'tres-unidos\r\n-1790', 189, NULL, NULL),
(1791, 10, 'SHAMBOYACU\r\n', 'shamboyacu\r\n-1791', 189, NULL, NULL),
(1792, 3, 'CASPIZAPA\r\n', 'caspizapa\r\n-1792', 189, NULL, NULL),
(1793, 2, 'AGUA BLANCA\r\n', 'agua-blanca\r\n-1793', 190, NULL, NULL),
(1794, 3, 'SHATOJA\r\n', 'shatoja\r\n-1794', 190, NULL, NULL),
(1795, 4, 'SAN MARTIN\r\n', 'san-martin\r\n-1795', 190, NULL, NULL),
(1796, 5, 'SANTA ROSA\r\n', 'santa-rosa\r\n-1796', 190, NULL, NULL),
(1797, 1, 'SAN JOSE DE SISA\r\n', 'san-jose-de-sisa\r\n-1797', 190, NULL, NULL),
(1798, 1, 'TOCACHE\r\n', 'tocache\r\n-1798', 191, NULL, NULL),
(1799, 2, 'NUEVO PROGRESO\r\n', 'nuevo-progreso\r\n-1799', 191, NULL, NULL),
(1800, 4, 'SHUNTE\r\n', 'shunte\r\n-1800', 191, NULL, NULL),
(1801, 5, 'UCHIZA\r\n', 'uchiza\r\n-1801', 191, NULL, NULL),
(1802, 3, 'POLVORA\r\n', 'polvora\r\n-1802', 191, NULL, NULL),
(1803, 1, 'TARAPOTO\r\n', 'tarapoto\r\n-1803', 192, NULL, NULL),
(1804, 2, 'ALBERTO LEVEAU\r\n', 'alberto-leveau\r\n-1804', 192, NULL, NULL),
(1805, 4, 'CACATACHI\r\n', 'cacatachi\r\n-1805', 192, NULL, NULL),
(1806, 6, 'CHAZUTA\r\n', 'chazuta\r\n-1806', 192, NULL, NULL),
(1807, 8, 'EL PORVENIR\r\n', 'el-porvenir\r\n-1807', 192, NULL, NULL),
(1808, 9, 'HUIMBAYOC\r\n', 'huimbayoc\r\n-1808', 192, NULL, NULL),
(1809, 10, 'JUAN GUERRA\r\n', 'juan-guerra\r\n-1809', 192, NULL, NULL),
(1810, 11, 'MORALES\r\n', 'morales\r\n-1810', 192, NULL, NULL),
(1811, 12, 'PAPAPLAYA\r\n', 'papaplaya\r\n-1811', 192, NULL, NULL),
(1812, 16, 'SAN ANTONIO\r\n', 'san-antonio\r\n-1812', 192, NULL, NULL),
(1813, 20, 'SHAPAJA\r\n', 'shapaja\r\n-1813', 192, NULL, NULL),
(1814, 21, 'LA BANDA DE SHILCAYO\r\n', 'la-banda-de-shilcayo\r\n-1814', 192, NULL, NULL),
(1815, 7, 'CHIPURANA\r\n', 'chipurana\r\n-1815', 192, NULL, NULL),
(1816, 19, 'SAUCE\r\n', 'sauce\r\n-1816', 192, NULL, NULL),
(1817, 1, 'JUANJUI\r\n', 'juanjui\r\n-1817', 193, NULL, NULL),
(1818, 2, 'CAMPANILLA\r\n', 'campanilla\r\n-1818', 193, NULL, NULL),
(1819, 4, 'PACHIZA\r\n', 'pachiza\r\n-1819', 193, NULL, NULL),
(1820, 5, 'PAJARILLO\r\n', 'pajarillo\r\n-1820', 193, NULL, NULL),
(1821, 3, 'HUICUNGO\r\n', 'huicungo\r\n-1821', 193, NULL, NULL),
(1822, 1, 'SAPOSOA\r\n', 'saposoa\r\n-1822', 194, NULL, NULL),
(1823, 2, 'PISCOYACU\r\n', 'piscoyacu\r\n-1823', 194, NULL, NULL),
(1824, 3, 'SACANCHE\r\n', 'sacanche\r\n-1824', 194, NULL, NULL),
(1825, 4, 'TINGO DE SAPOSOA\r\n', 'tingo-de-saposoa\r\n-1825', 194, NULL, NULL),
(1826, 5, 'ALTO SAPOSOA\r\n', 'alto-saposoa\r\n-1826', 194, NULL, NULL),
(1827, 6, 'EL ESLABON\r\n', 'el-eslabon\r\n-1827', 194, NULL, NULL),
(1828, 1, 'MOYOBAMBA\r\n', 'moyobamba\r\n-1828', 195, NULL, NULL),
(1829, 2, 'CALZADA\r\n', 'calzada\r\n-1829', 195, NULL, NULL),
(1830, 3, 'HABANA\r\n', 'habana\r\n-1830', 195, NULL, NULL),
(1831, 4, 'JEPELACIO\r\n', 'jepelacio\r\n-1831', 195, NULL, NULL),
(1832, 6, 'YANTALO\r\n', 'yantalo\r\n-1832', 195, NULL, NULL),
(1833, 5, 'SORITOR\r\n', 'soritor\r\n-1833', 195, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entries`
--

CREATE TABLE `entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `stores_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entries`
--

INSERT INTO `entries` (`id`, `date`, `quantity`, `product_id`, `created_at`, `updated_at`, `users_id`, `stores_id`) VALUES
(1, '2020-06-06', '3.00', 1, '2020-06-06 19:54:40', '2020-06-06 19:54:40', 9, 5),
(2, '2020-06-07', '25.00', 2, '2020-06-07 15:52:39', '2020-06-07 15:52:39', 9, 5),
(3, '2020-06-13', '50.00', 3, '2020-06-13 11:54:26', '2020-06-13 11:54:26', 14, 10),
(4, '2020-06-21', '5.00', 4, '2020-06-21 21:30:28', '2020-06-21 21:30:28', 34, 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `measure_units`
--

CREATE TABLE `measure_units` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `measure_units`
--

INSERT INTO `measure_units` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'KG', 'Kilogramo', '2020-05-30 00:00:00', '2020-05-30 00:00:00'),
(2, 'U', 'Unidad', '2020-05-30 00:00:00', '2020-05-30 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_02_23_162105_update_users_table', 1),
(4, '2020_04_25_180456_create_product_types_table', 1),
(5, '2020_04_25_180832_create_products_table', 1),
(6, '2020_04_25_181300_create_stores_table', 1),
(7, '2020_04_25_181954_create_product_stocks_table', 1),
(8, '2020_04_25_182354_create_payment_types_table', 1),
(9, '2020_04_25_182808_create_orders_table', 1),
(10, '2020_04_25_184138_create_product_sells_table', 1),
(11, '2020_05_03_215953_update_users_table_doc_type_and_doc_number_nullable', 2),
(12, '2020_05_03_220311_update_users_drop_unique_doc_number', 2),
(13, '2020_05_03_193317_create_departments_table', 3),
(14, '2020_05_03_193427_create_provinces_table', 3),
(15, '2020_05_03_193516_create_districts_table', 3),
(16, '2020_05_03_193718_update_stores_table_add_ubigeo_fields', 3),
(17, '2020_05_16_141625_update_products_table_add_store_id', 4),
(18, '2020_05_16_204127_update_product_sells_table_add_extra_fields', 5),
(19, '2020_05_24_162512_update_products_table_add_image_field', 6),
(20, '2020_05_24_174750_add_upload_field_to_payment_types_table', 7),
(21, '2020_05_24_184850_create_stores_payment_types_table', 8),
(22, '2020_05_25_234410_update_orders_table_add_extra_payment_fields', 9),
(23, '2020_05_26_194411_create_steps_table', 10),
(24, '2020_05_26_202332_add_visible_field_on_steps_table', 11),
(25, '2020_05_26_221618_add_extra_fields_orders_table', 11),
(26, '2020_05_26_222508_drop_foreign_key_payments_orders_table', 11),
(27, '2020_05_26_231502_add_description_field_steps_table', 11),
(28, '2020_05_27_184603_add_payment_date_fields_to_orders_table', 12),
(29, '2020_05_27_190025_update_send_time_field_orders_table', 12),
(30, '2020_05_27_191421_create_bank_accounts_table', 12),
(31, '2020_05_27_191906_add_show_banks_boolean_on_payment_types_table', 12),
(33, '2020_05_30_150401_create_measure_units_table', 13),
(34, '2020_05_30_150806_add_measure_units_foreign_key_to_products_table', 13),
(35, '2020_05_30_155744_create_entries_table', 13),
(36, '2020_05_30_155916_add_users_id_on_entries_table', 13),
(37, '2020_05_30_161833_add_stores_id_on_entries_table', 13),
(38, '2020_06_22_215310_add_seller_description_steps_table', 14),
(39, '2020_06_22_221401_add_reject_comment_orders_table', 14),
(40, '2020_06_23_000917_add_estimated_order_arrived_time_orders_table', 14),
(41, '2020_06_28_214907_update_users_table_add_yape_field', 15),
(42, '2020_06_28_215417_update_payment_type_table_add_require_phone_field', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `stores_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `payment_types_id` int(10) UNSIGNED DEFAULT NULL,
  `current_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_qualification` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_qualification` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `amount` decimal(9,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `arrived_date` datetime DEFAULT NULL,
  `cancelled_date` datetime DEFAULT NULL,
  `receiver_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_pat_lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_mat_lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_time` datetime DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_types_image` text COLLATE utf8mb4_unicode_ci,
  `payment_date` datetime DEFAULT NULL,
  `receiver_same_as_seller` tinyint(1) DEFAULT NULL,
  `receiver_doc_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_doc_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `departure_date` datetime DEFAULT NULL,
  `approved_payment_date` datetime DEFAULT NULL,
  `cancelled_payment_date` datetime DEFAULT NULL,
  `reject_comment` text COLLATE utf8mb4_unicode_ci,
  `estimated_arrived_time_comment` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `stores_id`, `users_id`, `payment_types_id`, `current_address`, `order_qualification`, `user_qualification`, `status`, `amount`, `order_date`, `arrived_date`, `cancelled_date`, `receiver_address`, `receiver_name`, `receiver_pat_lastname`, `receiver_mat_lastname`, `receiver_phone`, `send_time`, `latitude`, `longitude`, `department`, `province`, `district`, `created_at`, `updated_at`, `payment_types_image`, `payment_date`, `receiver_same_as_seller`, `receiver_doc_type`, `receiver_doc_number`, `cancelled_by`, `approved_date`, `departure_date`, `approved_payment_date`, `cancelled_payment_date`, `reject_comment`, `estimated_arrived_time_comment`) VALUES
(1, 5, 31, NULL, 'Avenida Alejandro Tirado 683, Cuadra 6, Ur. Santa Beatriz, Lima, 15046', NULL, NULL, 1, '12.00', '2020-06-06 20:05:48', NULL, NULL, 'Avenida Alejandro Tirado 683, Cuadra 6, Ur. Santa Beatriz, Lima, 15046', NULL, NULL, NULL, NULL, NULL, '-12.073357210911631', '-77.03214168548585', 'Lima', 'Lima', 'Lima', '2020-06-06 20:05:48', '2020-06-07 15:45:15', NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-07 15:45:15', NULL, NULL, NULL, NULL, NULL),
(2, 5, 31, NULL, 'Circuito Mágico del Agua', NULL, NULL, 1, '22.50', '2020-06-07 16:53:56', NULL, NULL, 'Circuito Mágico del Agua', NULL, NULL, NULL, NULL, NULL, '-12.071713499999996', '-77.03474849999999', 'Lima', 'Lima', 'Lima', '2020-06-07 16:53:56', '2020-06-07 17:15:24', NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-07 17:15:24', NULL, NULL, NULL, NULL, NULL),
(3, 10, 1, NULL, 'Pasaje Justo Figuerola 168', NULL, NULL, 0, '50.00', '2020-06-13 11:54:57', NULL, NULL, 'Pasaje Justo Figuerola 168', NULL, NULL, NULL, NULL, NULL, '-12.080575999999999', '-77.0368831', 'Lima', 'Lima', 'Lince', '2020-06-13 11:54:57', '2020-06-13 11:54:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 31, NULL, 'Jirón Luis Pardo', NULL, NULL, 0, '4.50', '2020-06-20 15:54:39', NULL, NULL, 'Jirón Luis Pardo', NULL, NULL, NULL, NULL, NULL, '-12.042856467232486', '-77.11679015970891', 'Callao', 'Callao', 'Callao', '2020-06-20 15:54:39', '2020-06-20 15:54:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 10, 1, NULL, 'Pasaje Justo Figuerola 168', NULL, NULL, 0, '5.00', '2020-06-20 19:11:57', NULL, NULL, 'Pasaje Justo Figuerola 168', NULL, NULL, NULL, NULL, NULL, '-12.0805901', '-77.03688', 'Lima', 'Lima', 'Lince', '2020-06-20 19:11:57', '2020-06-20 19:11:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 5, 31, NULL, 'Circuito Mágico del Agua', NULL, NULL, 0, '17.50', '2020-06-20 19:14:48', NULL, NULL, 'Circuito Mágico del Agua', NULL, NULL, NULL, NULL, NULL, '-12.072400970066962', '-77.03423471993818', 'Lima', 'Lima', 'Lima', '2020-06-20 19:14:48', '2020-06-20 19:14:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 5, 31, NULL, 'Circuito Mágico del Agua', NULL, NULL, 0, '4.00', '2020-06-20 21:16:38', NULL, NULL, 'Circuito Mágico del Agua', NULL, NULL, NULL, NULL, NULL, '-12.071713499999996', '-77.03474849999999', 'Lima', 'Lima', 'Lima', '2020-06-20 21:16:38', '2020-06-20 21:16:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_types`
--

CREATE TABLE `payment_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `upload` tinyint(1) DEFAULT NULL,
  `show_banks` tinyint(1) NOT NULL,
  `phone_required` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `payment_types`
--

INSERT INTO `payment_types` (`id`, `name`, `description`, `currency`, `created_at`, `updated_at`, `upload`, `show_banks`, `phone_required`) VALUES
(1, 'Contraentrega', 'Contraentrega', 'SOLES', NULL, '2020-05-27 23:00:42', 0, 0, NULL),
(2, 'yape', 'Pago por yape', 'SOLES', '2020-05-24 23:15:36', '2020-06-28 22:24:21', 1, 0, 1),
(3, 'Depósito bancario', 'Deposita en la cuenta indicada por el vendedor', 'SOLES', '2020-05-27 23:01:10', '2020-05-28 00:49:17', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_types_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stores_id` int(10) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `sku`, `name`, `description`, `product_types_id`, `created_at`, `updated_at`, `stores_id`, `image`) VALUES
(1, 'a', 'leche idea', 'leche idea de 500gr', 1, '2020-06-06 19:54:40', '2020-06-06 19:54:40', 5, 'leche-idea.JPG'),
(2, 'b', 'leche ideal', 'leche ideal de 500gr', 1, '2020-06-07 15:52:38', '2020-06-07 15:52:38', 5, 'leche-ideal.JPG'),
(3, '123', 'Lentejas', 'Lentejas', 2, '2020-06-13 11:54:25', '2020-06-13 11:54:25', 10, 'lentejas.jpg'),
(4, '1234', 'Aceite', 'Aceite vegetal', 1, '2020-06-21 21:30:28', '2020-06-21 21:30:28', 24, 'aceite.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_sells`
--

CREATE TABLE `product_sells` (
  `id` int(10) UNSIGNED NOT NULL,
  `orders_id` int(10) UNSIGNED NOT NULL,
  `product_stocks_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `quantity` decimal(9,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` decimal(9,2) NOT NULL,
  `amount` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_sells`
--

INSERT INTO `product_sells` (`id`, `orders_id`, `product_stocks_id`, `status`, `quantity`, `created_at`, `updated_at`, `price`, `amount`) VALUES
(1, 1, 1, 0, '3.00', '2020-06-06 20:05:49', '2020-06-06 20:05:49', '4.00', '12.00'),
(2, 2, 2, 0, '5.00', '2020-06-07 16:53:56', '2020-06-07 16:53:56', '4.50', '22.50'),
(3, 3, 3, 0, '10.00', '2020-06-13 11:54:57', '2020-06-13 11:54:57', '5.00', '50.00'),
(4, 5, 3, 0, '1.00', '2020-06-20 19:11:58', '2020-06-20 19:11:58', '5.00', '5.00'),
(5, 6, 1, 0, '1.00', '2020-06-20 19:14:49', '2020-06-20 19:14:49', '4.00', '4.00'),
(6, 6, 2, 0, '3.00', '2020-06-20 19:14:50', '2020-06-20 19:14:50', '4.50', '13.50'),
(7, 7, 1, 0, '1.00', '2020-06-20 21:16:39', '2020-06-20 21:16:39', '4.00', '4.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` decimal(9,2) NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `stores_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `measure_units_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `quantity`, `price`, `description`, `products_id`, `stores_id`, `created_at`, `updated_at`, `measure_units_id`) VALUES
(1, '3.00', '4.00', 'leche idea de 500gr', 1, 5, '2020-06-06 19:54:40', '2020-06-06 19:54:40', 2),
(2, '25.00', '4.50', 'leche ideal de 500gr', 2, 5, '2020-06-07 15:52:39', '2020-06-07 15:52:39', 2),
(3, '50.00', '5.00', 'Lentejas', 3, 10, '2020-06-13 11:54:26', '2020-06-13 11:54:26', 2),
(4, '3.00', '3.00', 'Aceite vegetal', 4, 24, '2020-06-21 21:30:28', '2020-06-29 15:38:55', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_types`
--

CREATE TABLE `product_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_types`
--

INSERT INTO `product_types` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Aceite', 'Aceite', '2020-05-16 19:13:09', '2020-05-16 19:13:09'),
(2, 'Leche', 'Leche', '2020-05-16 19:13:09', '2020-05-16 19:13:09'),
(3, 'Arroz', 'Arroz', '2020-05-16 19:13:09', '2020-05-16 19:13:09'),
(4, 'Azucar', 'Azucar', '2020-05-16 19:13:09', '2020-05-16 19:13:09'),
(5, 'papel higiénico', 'papel higiénico', '2020-05-16 19:13:09', '2020-05-16 19:13:09'),
(6, 'Papel Toalla', 'Papel Toalla', '2020-05-16 19:13:09', '2020-05-16 19:13:09'),
(7, 'Yogurt', 'Yogurt', '2020-05-16 19:13:09', '2020-05-16 19:13:09'),
(8, 'Fideos', 'Fideos', '2020-05-16 19:13:09', '2020-05-16 19:13:09'),
(9, 'Huevo', 'Huevo', '2020-05-16 19:13:09', '2020-05-16 19:13:09'),
(10, 'Gaseosa', 'Gaseosa', '2020-05-16 19:13:09', '2020-05-16 19:13:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provinces`
--

CREATE TABLE `provinces` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departments_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `provinces`
--

INSERT INTO `provinces` (`id`, `codigo`, `nombre`, `slug`, `departments_id`, `created_at`, `updated_at`) VALUES
(1, 5, 'COTABAMBAS', 'cotabambas', 1, NULL, NULL),
(2, 2, 'AYMARAES', 'aymaraes', 1, NULL, NULL),
(3, 7, 'CHINCHEROS', 'chincheros', 1, NULL, NULL),
(4, 6, 'GRAU', 'grau', 1, NULL, NULL),
(5, 4, 'ANTABAMBA', 'antabamba', 1, NULL, NULL),
(6, 3, 'ANDAHUAYLAS', 'andahuaylas', 1, NULL, NULL),
(7, 1, 'ABANCAY', 'abancay', 1, NULL, NULL),
(8, 7, 'ISLAY', 'islay', 2, NULL, NULL),
(9, 1, 'AREQUIPA', 'arequipa', 2, NULL, NULL),
(10, 8, 'LA UNION', 'la-union', 2, NULL, NULL),
(11, 6, 'CONDESUYOS', 'condesuyos', 2, NULL, NULL),
(12, 5, 'CASTILLA', 'castilla', 2, NULL, NULL),
(13, 4, 'CARAVELI', 'caraveli', 2, NULL, NULL),
(14, 3, 'CAMANA', 'camana', 2, NULL, NULL),
(15, 2, 'CAYLLOMA', 'caylloma', 2, NULL, NULL),
(16, 13, 'SAN PABLO', 'san-pablo', 3, NULL, NULL),
(17, 10, 'SAN MIGUEL', 'san-miguel', 3, NULL, NULL),
(18, 4, 'CONTUMAZA', 'contumaza', 3, NULL, NULL),
(19, 1, 'CAJAMARCA', 'cajamarca', 3, NULL, NULL),
(20, 12, 'SAN MARCOS', 'san-marcos', 3, NULL, NULL),
(21, 11, 'SAN IGNACIO', 'san-ignacio', 3, NULL, NULL),
(22, 9, 'SANTA CRUZ', 'santa-cruz', 3, NULL, NULL),
(23, 8, 'JAEN', 'jaen', 3, NULL, NULL),
(24, 7, 'HUALGAYOC', 'hualgayoc', 3, NULL, NULL),
(25, 6, 'CHOTA', 'chota', 3, NULL, NULL),
(26, 5, 'CUTERVO', 'cutervo', 3, NULL, NULL),
(27, 3, 'CELENDIN', 'celendin', 3, NULL, NULL),
(28, 2, 'CAJABAMBA', 'cajabamba', 3, NULL, NULL),
(29, 13, 'URUBAMBA', 'urubamba', 4, NULL, NULL),
(30, 12, 'QUISPICANCHI', 'quispicanchi', 4, NULL, NULL),
(31, 10, 'PARURO', 'paruro', 4, NULL, NULL),
(32, 7, 'CHUMBIVILCAS', 'chumbivilcas', 4, NULL, NULL),
(33, 2, 'ACOMAYO', 'acomayo', 4, NULL, NULL),
(34, 11, 'PAUCARTAMBO', 'paucartambo', 4, NULL, NULL),
(35, 9, 'LA CONVENCION', 'la-convencion', 4, NULL, NULL),
(36, 8, 'ESPINAR', 'espinar', 4, NULL, NULL),
(37, 6, 'CANCHIS', 'canchis', 4, NULL, NULL),
(38, 5, 'CANAS', 'canas', 4, NULL, NULL),
(39, 4, 'CALCA', 'calca', 4, NULL, NULL),
(40, 3, 'ANTA', 'anta', 4, NULL, NULL),
(41, 1, 'CUSCO', 'cusco', 4, NULL, NULL),
(42, 4, 'CASTROVIRREYNA', 'castrovirreyna', 5, NULL, NULL),
(43, 2, 'ACOBAMBA', 'acobamba', 5, NULL, NULL),
(44, 7, 'CHURCAMPA', 'churcampa', 5, NULL, NULL),
(45, 6, 'HUAYTARA', 'huaytara', 5, NULL, NULL),
(46, 5, 'TAYACAJA', 'tayacaja', 5, NULL, NULL),
(47, 3, 'ANGARAES', 'angaraes', 5, NULL, NULL),
(48, 1, 'HUANCAVELICA', 'huancavelica', 5, NULL, NULL),
(49, 10, 'LAURICOCHA', 'lauricocha', 6, NULL, NULL),
(50, 4, 'HUAMALIES', 'huamalies', 6, NULL, NULL),
(51, 2, 'AMBO', 'ambo', 6, NULL, NULL),
(52, 11, 'YAROWILCA', 'yarowilca', 6, NULL, NULL),
(53, 9, 'HUACAYBAMBA', 'huacaybamba', 6, NULL, NULL),
(54, 8, 'PUERTO INCA', 'puerto-inca', 6, NULL, NULL),
(55, 7, 'PACHITEA', 'pachitea', 6, NULL, NULL),
(56, 6, 'LEONCIO PRADO', 'leoncio-prado', 6, NULL, NULL),
(57, 5, 'MARAÑON', 'maraNon', 6, NULL, NULL),
(58, 3, 'DOS DE MAYO', 'dos-de-mayo', 6, NULL, NULL),
(59, 1, 'HUANUCO', 'huanuco', 6, NULL, NULL),
(60, 5, 'PALPA', 'palpa', 7, NULL, NULL),
(61, 3, 'NAZCA', 'nazca', 7, NULL, NULL),
(62, 1, 'ICA', 'ica', 7, NULL, NULL),
(63, 4, 'PISCO', 'pisco', 7, NULL, NULL),
(64, 2, 'CHINCHA', 'chincha', 7, NULL, NULL),
(65, 1, 'TAMBOPATA', 'tambopata', 8, NULL, NULL),
(66, 3, 'TAHUAMANU', 'tahuamanu', 8, NULL, NULL),
(67, 2, 'MANU', 'manu', 8, NULL, NULL),
(68, 3, 'OXAPAMPA', 'oxapampa', 9, NULL, NULL),
(69, 1, 'PASCO', 'pasco', 9, NULL, NULL),
(70, 2, 'DANIEL ALCIDES CARRION', 'daniel-alcides-carrion', 9, NULL, NULL),
(71, 6, 'SULLANA', 'sullana', 10, NULL, NULL),
(72, 3, 'HUANCABAMBA', 'huancabamba', 10, NULL, NULL),
(73, 8, 'SECHURA', 'sechura', 10, NULL, NULL),
(74, 7, 'TALARA', 'talara', 10, NULL, NULL),
(75, 5, 'PAITA', 'paita', 10, NULL, NULL),
(76, 4, 'MORROPON', 'morropon', 10, NULL, NULL),
(77, 2, 'AYABACA', 'ayabaca', 10, NULL, NULL),
(78, 1, 'PIURA', 'piura', 10, NULL, NULL),
(79, 3, 'JORGE BASADRE', 'jorge-basadre', 11, NULL, NULL),
(80, 1, 'TACNA', 'tacna', 11, NULL, NULL),
(81, 4, 'CANDARAVE', 'candarave', 11, NULL, NULL),
(82, 2, 'TARATA', 'tarata', 11, NULL, NULL),
(83, 1, 'TUMBES', 'tumbes', 12, NULL, NULL),
(84, 3, 'ZARUMILLA', 'zarumilla', 12, NULL, NULL),
(85, 2, 'CONTRALMIRANTE VILLAR', 'contralmirante-villar', 12, NULL, NULL),
(86, 8, 'CHANCHAMAYO', 'chanchamayo', 13, NULL, NULL),
(87, 6, 'YAULI', 'yauli', 13, NULL, NULL),
(88, 3, 'JAUJA', 'jauja', 13, NULL, NULL),
(89, 1, 'HUANCAYO', 'huancayo', 13, NULL, NULL),
(90, 9, 'CHUPACA', 'chupaca', 13, NULL, NULL),
(91, 7, 'SATIPO', 'satipo', 13, NULL, NULL),
(92, 5, 'TARMA', 'tarma', 13, NULL, NULL),
(93, 4, 'JUNIN', 'junin', 13, NULL, NULL),
(94, 2, 'CONCEPCION', 'concepcion', 13, NULL, NULL),
(95, 11, 'GRAN CHIMU', 'gran-chimu', 14, NULL, NULL),
(96, 9, 'CHEPEN', 'chepen', 14, NULL, NULL),
(97, 4, 'OTUZCO', 'otuzco', 14, NULL, NULL),
(98, 1, 'TRUJILLO', 'trujillo', 14, NULL, NULL),
(99, 12, 'VIRU', 'viru', 14, NULL, NULL),
(100, 10, 'JULCAN', 'julcan', 14, NULL, NULL),
(101, 8, 'ASCOPE', 'ascope', 14, NULL, NULL),
(102, 7, 'SANTIAGO DE CHUCO', 'santiago-de-chuco', 14, NULL, NULL),
(103, 6, 'PATAZ', 'pataz', 14, NULL, NULL),
(104, 5, 'PACASMAYO', 'pacasmayo', 14, NULL, NULL),
(105, 3, 'SANCHEZ CARRION', 'sanchez-carrion', 14, NULL, NULL),
(106, 2, 'BOLIVAR', 'bolivar', 14, NULL, NULL),
(107, 1, 'CHICLAYO', 'chiclayo', 15, NULL, NULL),
(108, 3, 'LAMBAYEQUE', 'lambayeque', 15, NULL, NULL),
(109, 2, 'FERREÑAFE', 'ferreNafe', 15, NULL, NULL),
(110, 8, 'HUARAL', 'huaral', 16, NULL, NULL),
(111, 3, 'CANTA', 'canta', 16, NULL, NULL),
(112, 4, 'CAÑETE', 'caNete', 16, NULL, NULL),
(113, 2, 'CAJATAMBO', 'cajatambo', 16, NULL, NULL),
(114, 1, 'LIMA', 'lima', 16, NULL, NULL),
(115, 10, 'OYON', 'oyon', 16, NULL, NULL),
(116, 9, 'BARRANCA', 'barranca', 16, NULL, NULL),
(117, 7, 'YAUYOS', 'yauyos', 16, NULL, NULL),
(118, 6, 'HUAROCHIRI', 'huarochiri', 16, NULL, NULL),
(119, 5, 'HUAURA', 'huaura', 16, NULL, NULL),
(120, 1, 'CALLAO', 'callao', 17, NULL, NULL),
(121, 3, 'ATALAYA', 'atalaya', 18, NULL, NULL),
(122, 4, 'PURUS', 'purus', 18, NULL, NULL),
(123, 2, 'PADRE ABAD', 'padre-abad', 18, NULL, NULL),
(124, 1, 'CORONEL PORTILLO', 'coronel-portillo', 18, NULL, NULL),
(125, 11, 'SUCRE', 'sucre', 19, NULL, NULL),
(126, 7, 'VICTOR FAJARDO', 'victor-fajardo', 19, NULL, NULL),
(127, 3, 'HUANTA', 'huanta', 19, NULL, NULL),
(128, 10, 'PAUCAR DEL SARA SARA', 'paucar-del-sara-sara', 19, NULL, NULL),
(129, 9, 'VILCAS HUAMAN', 'vilcas-huaman', 19, NULL, NULL),
(130, 8, 'HUANCA SANCOS', 'huanca-sancos', 19, NULL, NULL),
(131, 6, 'PARINACOCHAS', 'parinacochas', 19, NULL, NULL),
(132, 5, 'LUCANAS', 'lucanas', 19, NULL, NULL),
(133, 4, 'LA MAR', 'la-mar', 19, NULL, NULL),
(134, 2, 'CANGALLO', 'cangallo', 19, NULL, NULL),
(135, 1, 'HUAMANGA', 'huamanga', 19, NULL, NULL),
(136, 5, 'RODRIGUEZ DE MENDOZA', 'rodriguez-de-mendoza', 20, NULL, NULL),
(137, 7, 'UTCUBAMBA', 'utcubamba', 20, NULL, NULL),
(138, 6, 'CONDORCANQUI', 'condorcanqui', 20, NULL, NULL),
(139, 4, 'LUYA', 'luya', 20, NULL, NULL),
(140, 3, 'BONGARA', 'bongara', 20, NULL, NULL),
(141, 2, 'BAGUA', 'bagua', 20, NULL, NULL),
(142, 1, 'CHACHAPOYAS', 'chachapoyas', 20, NULL, NULL),
(143, 8, 'HUARI', 'huari', 21, NULL, NULL),
(144, 6, 'CORONGO', 'corongo', 21, NULL, NULL),
(145, 3, 'BOLOGNESI', 'bolognesi', 21, NULL, NULL),
(146, 18, 'ASUNCION', 'asuncion', 21, NULL, NULL),
(147, 16, 'ANTONIO RAIMONDI', 'antonio-raimondi', 21, NULL, NULL),
(148, 13, 'SANTA', 'santa', 21, NULL, NULL),
(149, 11, 'POMABAMBA', 'pomabamba', 21, NULL, NULL),
(150, 7, 'HUAYLAS', 'huaylas', 21, NULL, NULL),
(151, 5, 'CASMA', 'casma', 21, NULL, NULL),
(152, 4, 'CARHUAZ', 'carhuaz', 21, NULL, NULL),
(153, 2, 'AIJA', 'aija', 21, NULL, NULL),
(154, 1, 'HUARAZ', 'huaraz', 21, NULL, NULL),
(155, 20, 'OCROS', 'ocros', 21, NULL, NULL),
(156, 19, 'HUARMEY', 'huarmey', 21, NULL, NULL),
(157, 17, 'CARLOS FERMIN FITZCARRALD', 'carlos-fermin-fitzcarrald', 21, NULL, NULL),
(158, 15, 'YUNGAY', 'yungay', 21, NULL, NULL),
(159, 14, 'SIHUAS', 'sihuas', 21, NULL, NULL),
(160, 12, 'RECUAY', 'recuay', 21, NULL, NULL),
(161, 10, 'PALLASCA', 'pallasca', 21, NULL, NULL),
(162, 9, 'MARISCAL LUZURIAGA', 'mariscal-luzuriaga', 21, NULL, NULL),
(163, 6, 'MARISCAL RAMON CASTILLA', 'mariscal-ramon-castilla', 22, NULL, NULL),
(164, 2, 'ALTO AMAZONAS', 'alto-amazonas', 22, NULL, NULL),
(165, 7, 'DATEM DEL MARAÑON', 'datem-del-maraNon', 22, NULL, NULL),
(166, 5, 'UCAYALI', 'ucayali', 22, NULL, NULL),
(167, 4, 'REQUENA', 'requena', 22, NULL, NULL),
(168, 3, 'LORETO', 'loreto', 22, NULL, NULL),
(169, 1, 'MAYNAS', 'maynas', 22, NULL, NULL),
(170, 3, 'ILO', 'ilo', 23, NULL, NULL),
(171, 2, 'GENERAL SANCHEZ CERRO', 'general-sanchez-cerro', 23, NULL, NULL),
(172, 1, 'MARISCAL NIETO', 'mariscal-nieto', 23, NULL, NULL),
(173, 10, 'YUNGUYO', 'yunguyo', 24, NULL, NULL),
(174, 8, 'SANDIA', 'sandia', 24, NULL, NULL),
(175, 6, 'LAMPA', 'lampa', 24, NULL, NULL),
(176, 2, 'AZANGARO', 'azangaro', 24, NULL, NULL),
(177, 13, 'MOHO', 'moho', 24, NULL, NULL),
(178, 12, 'EL COLLAO', 'el-collao', 24, NULL, NULL),
(179, 11, 'SAN ANTONIO DE PUTINA', 'san-antonio-de-putina', 24, NULL, NULL),
(180, 9, 'SAN ROMAN', 'san-roman', 24, NULL, NULL),
(181, 7, 'MELGAR', 'melgar', 24, NULL, NULL),
(182, 5, 'HUANCANE', 'huancane', 24, NULL, NULL),
(183, 4, 'CHUCUITO', 'chucuito', 24, NULL, NULL),
(184, 3, 'CARABAYA', 'carabaya', 24, NULL, NULL),
(185, 1, 'PUNO', 'puno', 24, NULL, NULL),
(186, 7, 'BELLAVISTA', 'bellavista', 25, NULL, NULL),
(187, 5, 'RIOJA', 'rioja', 25, NULL, NULL),
(188, 3, 'LAMAS', 'lamas', 25, NULL, NULL),
(189, 9, 'PICOTA', 'picota', 25, NULL, NULL),
(190, 10, 'EL DORADO', 'el-dorado', 25, NULL, NULL),
(191, 8, 'TOCACHE', 'tocache', 25, NULL, NULL),
(192, 6, 'SAN MARTIN', 'san-martin', 25, NULL, NULL),
(193, 4, 'MARISCAL CACERES', 'mariscal-caceres', 25, NULL, NULL),
(194, 2, 'HUALLAGA', 'huallaga', 25, NULL, NULL),
(195, 1, 'MOYOBAMBA', 'moyobamba', 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `steps`
--

CREATE TABLE `steps` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `seller_description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `steps`
--

INSERT INTO `steps` (`id`, `code`, `name`, `order`, `type`, `created_at`, `updated_at`, `visible`, `description`, `seller_description`) VALUES
(1, 0, 'Vendedor recibió solicitud', 1, 'Vendedor', '2020-05-27 01:08:46', '2020-06-23 00:36:33', 1, 'Pendiente de atención: Vendedor confirmará atención del pedido vía correo electrónico.', 'Pendiente de atención: Confirme atención del pedido!'),
(2, 1, 'Aprobación del vendedor', 2, 'Vendedor', '2020-05-27 01:09:42', '2020-05-27 04:21:11', 1, 'El vendedor aprobó el pedido y ahora el comprador debe pagarlo.', NULL),
(3, 3, 'Pago del comprador', 4, 'Cliente', '2020-05-27 01:10:13', '2020-06-23 00:37:24', 1, 'Pendiente de pago: Vendedor aceptó el pedido. Por favor realizar el pago.', 'Pendiente de pago: Cliente debe pagar el pedido.'),
(4, 4, 'Cancelación del comprador', 5, 'Cliente', '2020-05-27 01:10:43', '2020-05-27 04:22:31', NULL, 'El comprador canceló la compra antes de pagarla.', NULL),
(5, 2, 'Denegación del vendedor', 3, 'Vendedor', '2020-05-27 01:11:26', '2020-06-24 22:38:13', NULL, 'Cancelado.', 'Cancelado.'),
(6, 7, 'Pedido entregado', 8, 'Vendedor', '2020-05-27 01:12:56', '2020-06-23 00:38:33', 1, 'Pedido entregado.', 'Pedido entregado.'),
(7, 8, 'Pedido cancelado', 9, 'Vendedor', '2020-05-27 01:15:58', '2020-05-27 04:23:51', NULL, 'Pedido cancelado por el vendedor antes de la entrega.', NULL),
(8, 5, 'El vendedor está preparando el pedido', 6, 'Vendedor', '2020-05-27 23:31:54', '2020-06-23 00:38:15', 1, 'Pendiente de entrega: El vendedor está preparando su pedido.', 'Pendiente de entrega.'),
(9, 6, 'Denegación del vendedor', 7, 'Vendedor', '2020-05-27 23:32:20', '2020-05-27 23:32:20', NULL, 'Vendedor denegó el pago enviado por el comprador', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stores`
--

CREATE TABLE `stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_hour` time NOT NULL,
  `to_hour` time NOT NULL,
  `status` tinyint(1) NOT NULL,
  `min_amount` decimal(9,2) NOT NULL,
  `doc_number` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `departments_id` int(10) UNSIGNED NOT NULL,
  `provinces_id` int(10) UNSIGNED NOT NULL,
  `districts_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `stores`
--

INSERT INTO `stores` (`id`, `name`, `address`, `from_hour`, `to_hour`, `status`, `min_amount`, `doc_number`, `latitude`, `longitude`, `users_id`, `department`, `province`, `district`, `created_at`, `updated_at`, `departments_id`, `provinces_id`, `districts_id`) VALUES
(1, 'bodega', 'dir bodega', '00:00:00', '00:00:00', 0, '0.00', '10991991010', '-12', '-76', 4, NULL, NULL, NULL, '2020-05-05 20:22:08', '2020-05-05 20:22:08', 16, 114, 1074),
(4, 'Tienda 0', 'direccion tienda 0', '00:00:00', '00:00:00', 1, '0.00', '1000019920', '-12.042906', '-77.116712', 8, NULL, NULL, NULL, '2020-05-16 03:15:53', '2020-05-16 03:15:53', 16, 114, 1074),
(5, 'Tienda 1', 'direccion tienda 1', '00:00:00', '00:00:00', 1, '0.00', '1000019921', '-12.0745969', '-77.0331055', 9, NULL, NULL, NULL, '2020-05-16 03:15:53', '2020-05-16 03:15:53', 16, 114, 1074),
(6, 'Tienda 2', 'direccion tienda 2', '00:00:00', '00:00:00', 0, '0.00', '1000019922', '-12.0873544', '-77.0409161', 10, NULL, NULL, NULL, '2020-05-16 03:15:53', '2020-05-16 03:15:53', 16, 114, 1074),
(7, 'Tienda 3', 'direccion tienda 3', '00:00:00', '00:00:00', 0, '0.00', '1000019923', '-12.0794571', '-77.0382446', 11, NULL, NULL, NULL, '2020-05-16 03:15:53', '2020-05-16 03:15:53', 16, 114, 1074),
(8, 'Tienda 4', 'direccion tienda 4', '00:00:00', '00:00:00', 0, '0.00', '1000019924', '-12.0825389', '-77.0382446', 12, NULL, NULL, NULL, '2020-05-16 03:15:53', '2020-05-16 03:15:53', 16, 114, 1074),
(9, 'Tienda 5', 'direccion tienda 5', '00:00:00', '00:00:00', 0, '0.00', '1000019925', '-12.0848365', '-77.0345753', 13, NULL, NULL, NULL, '2020-05-16 03:15:53', '2020-05-16 03:15:53', 16, 114, 1074),
(10, 'Tienda 6', 'direccion tienda 6', '09:00:00', '18:00:00', 1, '0.00', '1000019926', '-12.08128', '-77.0386416', 14, NULL, NULL, NULL, '2020-05-16 03:15:53', '2020-06-13 11:52:53', 16, 114, 1074),
(11, 'Tienda 7', 'direccion tienda 7', '00:00:00', '00:00:00', 0, '0.00', '1000019927', '-12.0795278', '-77.0312279', 15, NULL, NULL, NULL, '2020-05-16 03:15:53', '2020-05-16 03:15:53', 16, 114, 1074),
(12, 'Tienda 8', 'direccion tienda 8', '00:00:00', '00:00:00', 0, '0.00', '1000019928', '-12.0837559', '-77.037515', 16, NULL, NULL, NULL, '2020-05-16 03:15:53', '2020-05-16 03:15:53', 16, 114, 1074),
(13, 'Tienda 9', 'direccion tienda 9', '00:00:00', '00:00:00', 0, '0.00', '1000019929', '-12.0809023', '-77.0363778', 17, NULL, NULL, NULL, '2020-05-16 03:15:53', '2020-05-16 03:15:53', 16, 114, 1074),
(14, 'Tienda 10', 'direccion tienda 10', '00:00:00', '00:00:00', 0, '0.00', '10000199210', '-12.0789614', '-77.0370644', 18, NULL, NULL, NULL, '2020-05-16 03:15:53', '2020-05-16 03:15:53', 16, 114, 1074),
(15, 'Tienda 11', 'direccion tienda 11', '00:00:00', '00:00:00', 0, '0.00', '10000199211', '-12.0778808', '-77.0360452', 19, NULL, NULL, NULL, '2020-05-16 03:15:53', '2020-05-16 03:15:53', 16, 114, 1074),
(16, 'Tienda 12', 'direccion tienda 12', '00:00:00', '00:00:00', 0, '0.00', '10000199212', '-12.0816141', '-77.038543', 20, NULL, NULL, NULL, '2020-05-16 03:15:53', '2020-05-16 03:15:53', 16, 114, 1074),
(17, 'Tienda 13', 'direccion tienda 13', '00:00:00', '00:00:00', 0, '0.00', '10000199213', '-12.0821717', '-77.0345216', 21, NULL, NULL, NULL, '2020-05-16 03:15:53', '2020-05-16 03:15:53', 16, 114, 1074),
(18, 'Tienda 14', 'direccion tienda 14', '00:00:00', '00:00:00', 0, '0.00', '10000199214', '-12.0786991', '-77.0342964', 22, NULL, NULL, NULL, '2020-05-16 03:15:53', '2020-05-16 03:15:53', 16, 114, 1074),
(19, 'Tienda 15', 'direccion tienda 15', '00:00:00', '00:00:00', 0, '0.00', '10000199215', '-12.081836', '-77.0367104', 23, NULL, NULL, NULL, '2020-05-16 03:15:53', '2020-05-16 03:15:53', 16, 114, 1074),
(20, 'Tienda 16', 'direccion tienda 16', '00:00:00', '00:00:00', 0, '0.00', '10000199216', '-12.082413', '-77.0359808', 24, NULL, NULL, NULL, '2020-05-16 03:15:53', '2020-05-16 03:15:53', 16, 114, 1074),
(21, 'Tienda 17', 'direccion tienda 17', '00:00:00', '00:00:00', 0, '0.00', '10000199217', '-12.0803253', '-77.0360559', 25, NULL, NULL, NULL, '2020-05-16 03:15:53', '2020-05-16 03:15:53', 16, 114, 1074),
(22, 'Tienda 18', 'direccion tienda 18', '00:00:00', '00:00:00', 0, '0.00', '10000199218', '-12.0826229', '-77.037794', 26, NULL, NULL, NULL, '2020-05-16 03:15:53', '2020-05-16 03:15:53', 16, 114, 1074),
(23, 'Tienda 19', 'direccion tienda 19', '00:00:00', '00:00:00', 0, '0.00', '10000199219', '-12.0784998', '-77.0370215', 27, NULL, NULL, NULL, '2020-05-16 03:15:53', '2020-05-16 03:15:53', 16, 114, 1074),
(24, 'Jimmy Córdova Vargas', 'Callao', '09:00:00', '20:00:00', 1, '3.00', '12345678911', '-12.042409999999961', '-77.11842999999999', 34, NULL, NULL, NULL, '2020-06-21 21:26:11', '2020-06-24 21:47:15', 17, 120, 1201);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stores_payment_types`
--

CREATE TABLE `stores_payment_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `stores_id` int(10) UNSIGNED NOT NULL,
  `payment_types_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `stores_payment_types`
--

INSERT INTO `stores_payment_types` (`id`, `stores_id`, `payment_types_id`, `created_at`, `updated_at`) VALUES
(1, 10, 1, '2020-06-13 11:52:54', '2020-06-13 11:52:54'),
(2, 24, 1, '2020-06-21 22:00:58', '2020-06-21 22:00:58'),
(3, 24, 3, '2020-06-21 22:00:59', '2020-06-21 22:00:59'),
(4, 24, 2, '2020-06-21 22:00:59', '2020-06-21 22:00:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nickname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pat_lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `yape` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `nickname`, `pat_lastname`, `mat_lastname`, `doc_type`, `doc_number`, `phone`, `type`, `birthday`, `address`, `department`, `province`, `district`, `confirmed`, `yape`) VALUES
(1, 'Juan Arturo', 'jbravoaguinaga@gmail.com', '$2y$10$tFDxkGRtziCvqVMPDgWIouac4YTGehj10ouoB/uGqWeixiIOelI8y', 'C6it9N5BELVt8ys8fNj4lUIJAw6Tlp4T7HRSGpDlv24LZadScZv3xABWY1Ls', '2020-05-03 17:07:44', '2020-05-03 17:07:44', NULL, 'Bravo', 'Aguinaga', NULL, NULL, '979814339', 'C', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(4, 'Vendedor', 'pruebados@gmail.com', '$2y$10$WFRsVs3rz5ZTMPAKF5OVcOtIGhRdelSAdn50VBwxxNK6Cy0j2f.PC', 'vZyp3DR0GSV3EQaGJbceE1rrhgPL2beHSYSeN63l6Ta65hBFJetD1txnNFA5', '2020-05-05 20:22:08', '2020-05-05 20:22:08', NULL, 'Ape pat', 'Ape mat', NULL, NULL, '989898989', 'V', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(8, 'Vendedor 0', 'vendedor0@gmail.com', '$2y$10$dA6t0M.fEq5cg6unA3oyPOEi/DCK9tWDyjAha6KprEW64psVVQyVW', NULL, '2020-05-16 03:09:43', '2020-05-16 03:09:43', NULL, 'Apellido paterno vendedor 0', 'Apellido materno vendedor 0', NULL, NULL, '999999999', 'V', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(9, 'Vendedor 1', 'vendedor1@gmail.com', '$2y$10$dA6t0M.fEq5cg6unA3oyPOEi/DCK9tWDyjAha6KprEW64psVVQyVW', 'DDcgNDV7MuczWad6SQeQqbjwMn5leHsBT0srFrE5C0cGPrtROHbjJD22kVC5', '2020-05-16 03:09:43', '2020-05-16 03:09:43', NULL, 'Apellido paterno vendedor 1', 'Apellido materno vendedor 1', NULL, NULL, '999999999', 'V', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(10, 'Vendedor 2', 'vendedor2@gmail.com', '$2y$10$dA6t0M.fEq5cg6unA3oyPOEi/DCK9tWDyjAha6KprEW64psVVQyVW', NULL, '2020-05-16 03:09:43', '2020-05-16 03:09:43', NULL, 'Apellido paterno vendedor 2', 'Apellido materno vendedor 2', NULL, NULL, '999999999', 'V', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(11, 'Vendedor 3', 'vendedor3@gmail.com', '$2y$10$dA6t0M.fEq5cg6unA3oyPOEi/DCK9tWDyjAha6KprEW64psVVQyVW', NULL, '2020-05-16 03:09:43', '2020-05-16 03:09:43', NULL, 'Apellido paterno vendedor 3', 'Apellido materno vendedor 3', NULL, NULL, '999999999', 'V', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(12, 'Vendedor 4', 'vendedor4@gmail.com', '$2y$10$dA6t0M.fEq5cg6unA3oyPOEi/DCK9tWDyjAha6KprEW64psVVQyVW', NULL, '2020-05-16 03:09:43', '2020-05-16 03:09:43', NULL, 'Apellido paterno vendedor 4', 'Apellido materno vendedor 4', NULL, NULL, '999999999', 'V', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(13, 'Vendedor 5', 'vendedor5@gmail.com', '$2y$10$dA6t0M.fEq5cg6unA3oyPOEi/DCK9tWDyjAha6KprEW64psVVQyVW', NULL, '2020-05-16 03:09:43', '2020-05-16 03:09:43', NULL, 'Apellido paterno vendedor 5', 'Apellido materno vendedor 5', NULL, NULL, '999999999', 'V', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(14, 'Vendedor 6', 'vendedor6@gmail.com', '$2y$10$dA6t0M.fEq5cg6unA3oyPOEi/DCK9tWDyjAha6KprEW64psVVQyVW', 'P1SXKU0q2r8dYeYdECsbzyzDDKlYLHH475xNkZi3B69VdRrcpJTdKtjYj6WA', '2020-05-16 03:09:43', '2020-05-16 03:09:43', NULL, 'Apellido paterno vendedor 6', 'Apellido materno vendedor 6', NULL, NULL, '999999999', 'V', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(15, 'Vendedor 7', 'vendedor7@gmail.com', '$2y$10$dA6t0M.fEq5cg6unA3oyPOEi/DCK9tWDyjAha6KprEW64psVVQyVW', NULL, '2020-05-16 03:09:43', '2020-05-16 03:09:43', NULL, 'Apellido paterno vendedor 7', 'Apellido materno vendedor 7', NULL, NULL, '999999999', 'V', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(16, 'Vendedor 8', 'vendedor8@gmail.com', '$2y$10$dA6t0M.fEq5cg6unA3oyPOEi/DCK9tWDyjAha6KprEW64psVVQyVW', NULL, '2020-05-16 03:09:43', '2020-05-16 03:09:43', NULL, 'Apellido paterno vendedor 8', 'Apellido materno vendedor 8', NULL, NULL, '999999999', 'V', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(17, 'Vendedor 9', 'vendedor9@gmail.com', '$2y$10$dA6t0M.fEq5cg6unA3oyPOEi/DCK9tWDyjAha6KprEW64psVVQyVW', NULL, '2020-05-16 03:09:43', '2020-05-16 03:09:43', NULL, 'Apellido paterno vendedor 9', 'Apellido materno vendedor 9', NULL, NULL, '999999999', 'V', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(18, 'Vendedor 10', 'vendedor10@gmail.com', '$2y$10$dA6t0M.fEq5cg6unA3oyPOEi/DCK9tWDyjAha6KprEW64psVVQyVW', NULL, '2020-05-16 03:09:43', '2020-05-16 03:09:43', NULL, 'Apellido paterno vendedor 10', 'Apellido materno vendedor 10', NULL, NULL, '999999999', 'V', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(19, 'Vendedor 11', 'vendedor11@gmail.com', '$2y$10$dA6t0M.fEq5cg6unA3oyPOEi/DCK9tWDyjAha6KprEW64psVVQyVW', NULL, '2020-05-16 03:09:43', '2020-05-16 03:09:43', NULL, 'Apellido paterno vendedor 11', 'Apellido materno vendedor 11', NULL, NULL, '999999999', 'V', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(20, 'Vendedor 12', 'vendedor12@gmail.com', '$2y$10$dA6t0M.fEq5cg6unA3oyPOEi/DCK9tWDyjAha6KprEW64psVVQyVW', NULL, '2020-05-16 03:09:43', '2020-05-16 03:09:43', NULL, 'Apellido paterno vendedor 12', 'Apellido materno vendedor 12', NULL, NULL, '999999999', 'V', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(21, 'Vendedor 13', 'vendedor13@gmail.com', '$2y$10$dA6t0M.fEq5cg6unA3oyPOEi/DCK9tWDyjAha6KprEW64psVVQyVW', NULL, '2020-05-16 03:09:43', '2020-05-16 03:09:43', NULL, 'Apellido paterno vendedor 13', 'Apellido materno vendedor 13', NULL, NULL, '999999999', 'V', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(22, 'Vendedor 14', 'vendedor14@gmail.com', '$2y$10$dA6t0M.fEq5cg6unA3oyPOEi/DCK9tWDyjAha6KprEW64psVVQyVW', NULL, '2020-05-16 03:09:43', '2020-05-16 03:09:43', NULL, 'Apellido paterno vendedor 14', 'Apellido materno vendedor 14', NULL, NULL, '999999999', 'V', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(23, 'Vendedor 15', 'vendedor15@gmail.com', '$2y$10$dA6t0M.fEq5cg6unA3oyPOEi/DCK9tWDyjAha6KprEW64psVVQyVW', NULL, '2020-05-16 03:09:43', '2020-05-16 03:09:43', NULL, 'Apellido paterno vendedor 15', 'Apellido materno vendedor 15', NULL, NULL, '999999999', 'V', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(24, 'Vendedor 16', 'vendedor16@gmail.com', '$2y$10$dA6t0M.fEq5cg6unA3oyPOEi/DCK9tWDyjAha6KprEW64psVVQyVW', NULL, '2020-05-16 03:09:43', '2020-05-16 03:09:43', NULL, 'Apellido paterno vendedor 16', 'Apellido materno vendedor 16', NULL, NULL, '999999999', 'V', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(25, 'Vendedor 17', 'vendedor17@gmail.com', '$2y$10$dA6t0M.fEq5cg6unA3oyPOEi/DCK9tWDyjAha6KprEW64psVVQyVW', NULL, '2020-05-16 03:09:43', '2020-05-16 03:09:43', NULL, 'Apellido paterno vendedor 17', 'Apellido materno vendedor 17', NULL, NULL, '999999999', 'V', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(26, 'Vendedor 18', 'vendedor18@gmail.com', '$2y$10$dA6t0M.fEq5cg6unA3oyPOEi/DCK9tWDyjAha6KprEW64psVVQyVW', NULL, '2020-05-16 03:09:43', '2020-05-16 03:09:43', NULL, 'Apellido paterno vendedor 18', 'Apellido materno vendedor 18', NULL, NULL, '999999999', 'V', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(27, 'Vendedor 19', 'vendedor19@gmail.com', '$2y$10$dA6t0M.fEq5cg6unA3oyPOEi/DCK9tWDyjAha6KprEW64psVVQyVW', NULL, '2020-05-16 03:09:43', '2020-05-16 03:09:43', NULL, 'Apellido paterno vendedor 19', 'Apellido materno vendedor 19', NULL, NULL, '999999999', 'V', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(29, 'fabrizio', 'fabri@gmail.com', '$2y$10$ep7p5pgG8rMkKevvQM4jXuFSTBQgRjYVMxnJGLshRQu0DZUH94Cuu', NULL, '2020-05-23 21:58:23', '2020-05-23 21:58:23', NULL, 'cordova', 'mendoza', NULL, NULL, '998989898', 'C', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(30, 'Administrador', 'servicios@bodegapp.pe', '$2y$10$dA6t0M.fEq5cg6unA3oyPOEi/DCK9tWDyjAha6KprEW64psVVQyVW', 'bubIp16DIJe3FbuMRVCjxCryPAnC5gqtAZnVB0EVlQvfZyWpsxJR0XBSUJh4', '2020-05-24 00:00:00', '2020-06-06 14:12:26', NULL, 'Administrador', 'Administrador', NULL, NULL, '987654300', 'A', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(31, 'Paul Jesus', 'pol962314@gmail.com', '$2y$10$N7/r7IbNPPh.aPGpdW9wUebcAfRVnTYWZIWIc48SFCdsGdElxapXu', 'min6AFDvOBYpXwjsE3lP64hkez97H6FMsv82bwYGRzAsH0IMlj00RMpIiUbI', '2020-06-06 19:38:24', '2020-06-06 19:38:24', NULL, 'Cordova', 'Vargas', NULL, NULL, '987654321', 'C', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(34, 'Jimmy', 'jimmy25661@hotmail.com', '$2y$10$QxpRD/EpnWagn28bP5x3IOC7fpc3PO3pJ.uRA03miHnyVyI4hGy/e', 'ThOPDO7iWOOOyAQ5vT8RCo7YCBd1fxAR22prfT2ttuqdZSQmKPk8hUmO8A7T', '2020-06-21 21:26:11', '2020-06-29 15:28:38', NULL, 'Cordova', 'Vargas', 'DNI', '44695685', '964317890', 'V', '1987-06-08', 'Callao, 2', '17', '120', '1201', 1, '988998989');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_accounts_users_id_foreign` (`users_id`);

--
-- Indices de la tabla `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_provinces_id_foreign` (`provinces_id`);

--
-- Indices de la tabla `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entries_product_id_foreign` (`product_id`),
  ADD KEY `entries_users_id_foreign` (`users_id`),
  ADD KEY `entries_stores_id_foreign` (`stores_id`);

--
-- Indices de la tabla `measure_units`
--
ALTER TABLE `measure_units`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_stores_id_foreign` (`stores_id`),
  ADD KEY `orders_users_id_foreign` (`users_id`),
  ADD KEY `orders_payment_types_id_foreign` (`payment_types_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_product_types_id_foreign` (`product_types_id`),
  ADD KEY `products_stores_id_foreign` (`stores_id`);

--
-- Indices de la tabla `product_sells`
--
ALTER TABLE `product_sells`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_sells_orders_id_foreign` (`orders_id`),
  ADD KEY `product_sells_product_stocks_id_foreign` (`product_stocks_id`);

--
-- Indices de la tabla `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_stocks_products_id_foreign` (`products_id`),
  ADD KEY `product_stocks_stores_id_foreign` (`stores_id`),
  ADD KEY `product_stocks_measure_units_id_foreign` (`measure_units_id`);

--
-- Indices de la tabla `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provinces_departments_id_foreign` (`departments_id`);

--
-- Indices de la tabla `steps`
--
ALTER TABLE `steps`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stores_doc_number_unique` (`doc_number`),
  ADD KEY `stores_users_id_foreign` (`users_id`),
  ADD KEY `stores_departments_id_foreign` (`departments_id`),
  ADD KEY `stores_provinces_id_foreign` (`provinces_id`),
  ADD KEY `stores_districts_id_foreign` (`districts_id`);

--
-- Indices de la tabla `stores_payment_types`
--
ALTER TABLE `stores_payment_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stores_payment_types_stores_id_foreign` (`stores_id`),
  ADD KEY `stores_payment_types_payment_types_id_foreign` (`payment_types_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1834;

--
-- AUTO_INCREMENT de la tabla `entries`
--
ALTER TABLE `entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `measure_units`
--
ALTER TABLE `measure_units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `product_sells`
--
ALTER TABLE `product_sells`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT de la tabla `steps`
--
ALTER TABLE `steps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `stores_payment_types`
--
ALTER TABLE `stores_payment_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD CONSTRAINT `bank_accounts_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_provinces_id_foreign` FOREIGN KEY (`provinces_id`) REFERENCES `provinces` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `entries`
--
ALTER TABLE `entries`
  ADD CONSTRAINT `entries_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entries_stores_id_foreign` FOREIGN KEY (`stores_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entries_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_payment_types_id_foreign` FOREIGN KEY (`payment_types_id`) REFERENCES `payment_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_stores_id_foreign` FOREIGN KEY (`stores_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_product_types_id_foreign` FOREIGN KEY (`product_types_id`) REFERENCES `product_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_stores_id_foreign` FOREIGN KEY (`stores_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_sells`
--
ALTER TABLE `product_sells`
  ADD CONSTRAINT `product_sells_orders_id_foreign` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_sells_product_stocks_id_foreign` FOREIGN KEY (`product_stocks_id`) REFERENCES `product_stocks` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD CONSTRAINT `product_stocks_measure_units_id_foreign` FOREIGN KEY (`measure_units_id`) REFERENCES `measure_units` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_stocks_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_stocks_stores_id_foreign` FOREIGN KEY (`stores_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `provinces`
--
ALTER TABLE `provinces`
  ADD CONSTRAINT `provinces_departments_id_foreign` FOREIGN KEY (`departments_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_departments_id_foreign` FOREIGN KEY (`departments_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stores_districts_id_foreign` FOREIGN KEY (`districts_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stores_provinces_id_foreign` FOREIGN KEY (`provinces_id`) REFERENCES `provinces` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stores_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `stores_payment_types`
--
ALTER TABLE `stores_payment_types`
  ADD CONSTRAINT `stores_payment_types_payment_types_id_foreign` FOREIGN KEY (`payment_types_id`) REFERENCES `payment_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stores_payment_types_stores_id_foreign` FOREIGN KEY (`stores_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
